Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %.not158.i.i = icmp eq ptr %i.iq, null
  br i1 %.not158.i.i, label %_calc_auto_radius.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ir = icmp sgt i32 %i.ih, 0                   ; 3 uses
  br i1 %.not.i.i462, label %.preheader182.i.i, label %bb.au

.preheader182.i.i:                                ; preds = %bb.at
  %i.is = icmp sgt i32 %i.ib, 0
  %or.cond.i.i = and i1 %i.is, %i.ir
  br i1 %or.cond.i.i, label %.preheader.preheader.i.i, label %.loopexit.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader182.i.i
  %wide.trip.count228.i.i = zext nneg i32 %i.ih to i64 ; 2 uses
  %wide.trip.count223.i.i = zext nneg i32 %i.ib to i64 ; 10 uses
  %i.it = add nsw i64 %wide.trip.count223.i.i, -1 ; 2 uses
  %i.iu = add nuw nsw i64 %wide.trip.count228.i.i, 4611686018427387903
  %i.iv = mul i64 %i.iu, %i.im
  %i.iw = add i64 %i.iv, %wide.trip.count223.i.i
  %i.ix = shl i64 %i.iw, 2
  %scevgep1643 = getelementptr i8, ptr %i.iq, i64 %i.ix
  %i.iy = extractelement <2 x i32> %i.hp, i64 1   ; 2 uses
  %i.iz = mul i32 %i.iy, %i.hf
  %i.ja = extractelement <2 x i32> %i.hp, i64 0   ; 2 uses
  %i.jb = add i32 %i.ja, %i.iz
  %i.jc = shl nuw nsw i64 %wide.trip.count223.i.i, 4
  %i.jd = getelementptr i8, ptr %2, i64 %i.jc
  %scevgep1645 = getelementptr i8, ptr %i.jd, i64 -12
  %min.iters.check1651 = icmp ult i32 %i.ib, 5
  %i.je = trunc nsw i64 %i.it to i32
  %i.jf = icmp ugt i64 %i.it, 4294967295
  %min.iters.check1652 = icmp ult i32 %i.ib, 33
  %i.jg = and i64 %wide.trip.count223.i.i, 31     ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 0
  %i.ji = select i1 %i.jh, i64 32, i64 %i.jg      ; 2 uses
  %n.vec1654 = sub nsw i64 %wide.trip.count223.i.i, %i.ji ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.ji, 5
  %i.jj = and i64 %wide.trip.count223.i.i, 3      ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  %i.jl = select i1 %i.jk, i64 4, i64 %i.jj
  %n.vec1665 = sub nsw i64 %wide.trip.count223.i.i, %i.jl ; 2 uses
  br label %iter.check

bb.au:                                            ; preds = %bb.at
  br i1 %i.bd, label %.preheader184.i.i, label %.preheader187.i.i

.preheader187.i.i:                                ; preds = %bb.au
  br i1 %i.ir, label %.preheader186.lr.ph.i.i, label %.loopexit.i.i

.preheader186.lr.ph.i.i:                          ; preds = %.preheader187.i.i
  %i.jm = icmp sgt i32 %i.ib, 0
  %i.jn = sext i32 %i.hf to i64                   ; 3 uses
  %i.jo = extractelement <2 x i32> %i.hp, i64 0
  %i.jp = sext i32 %i.jo to i64                   ; 3 uses
  %invariant.gep191.i.i = getelementptr [4 x i8], ptr %2, i64 %i.jp
  br i1 %i.jm, label %.preheader186.preheader.i.i, label %.loopexit.i.i

.preheader186.preheader.i.i:                      ; preds = %.preheader186.lr.ph.i.i
  %i.jq = extractelement <2 x i32> %i.hp, i64 1
  %i.jr = sext i32 %i.jq to i64                   ; 3 uses
  %wide.trip.count208.i.i = zext nneg i32 %i.ih to i64 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ib to i64 ; 7 uses
  %i.js = add nuw nsw i64 %wide.trip.count208.i.i, 4611686018427387903
  %i.jt = mul i64 %i.js, %i.im
  %i.ju = add i64 %i.jt, %wide.trip.count.i.i
  %i.jv = shl i64 %i.ju, 2
  %scevgep = getelementptr i8, ptr %i.iq, i64 %i.jv
  %i.jw = mul nsw i64 %i.jr, %i.jn
  %i.jx = add i64 %i.jw, %i.jp
  %i.jy = shl i64 %i.jx, 2
  %scevgep1638 = getelementptr i8, ptr %2, i64 %i.jy
  %i.jz = add nsw i64 %i.jr, %wide.trip.count208.i.i
  %i.ka = shl nsw i64 %i.jz, 2
  %i.kb = add nsw i64 %i.ka, -4
  %i.kc = mul i64 %i.kb, %i.jn
  %i.kd = add nsw i64 %i.jp, %wide.trip.count.i.i
  %i.ke = shl nsw i64 %i.kd, 2
  %i.kf = getelementptr i8, ptr %2, i64 %i.ke
  %scevgep1639 = getelementptr i8, ptr %i.kf, i64 %i.kc
  %min.iters.check = icmp ult i32 %i.ib, 8
  %bound0 = icmp ult ptr %i.iq, %scevgep1639
  %bound1 = icmp ult ptr %scevgep1638, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.hf, 0
  %i.kg = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert1640 = insertelement <8 x i32> poison, i32 %.fr1063, i64 0
  %broadcast.splat1641 = shufflevector <8 x i32> %broadcast.splatinsert1640, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader186.i.i

.preheader184.i.i:                                ; preds = %bb.au
  br i1 %i.ir, label %.preheader183.lr.ph.i.i, label %.preheader.i.preheader.i.i

.preheader183.lr.ph.i.i:                          ; preds = %.preheader184.i.i
  %i.kh = icmp sgt i32 %i.ib, 0
  %i.ki = sext i32 %i.hf to i64
  %i.kj = extractelement <2 x i32> %i.hp, i64 0
  %i.kk = sext i32 %i.kj to i64
  %invariant.gep197.i.i = getelementptr [4 x i8], ptr %2, i64 %i.kk
  br i1 %i.kh, label %.preheader183.preheader.i.i, label %.preheader.i.preheader.i.i

.preheader183.preheader.i.i:                      ; preds = %.preheader183.lr.ph.i.i
  %i.kl = extractelement <2 x i32> %i.hp, i64 1
  %i.km = sext i32 %i.kl to i64
  %wide.trip.count218.i.i = zext nneg i32 %i.ih to i64
  %wide.trip.count213.i.i = zext nneg i32 %i.ib to i64 ; 2 uses
  %xtraiter4698 = and i64 %wide.trip.count213.i.i, 1
  %i.kn = icmp eq i32 %i.ib, 1
  %unroll_iter = and i64 %wide.trip.count213.i.i, 2147483646
  %lcmp.mod4699.not = icmp eq i64 %xtraiter4698, 0
  %lcmp.mod4700 = trunc i32 %i.ib to i1
  br label %.preheader183.i.i

.preheader183.i.i:                                ; preds = %._crit_edge194.i.i, %.preheader183.preheader.i.i
  %indvars.iv215.i.i = phi i64 [ 0, %.preheader183.preheader.i.i ], [ %indvars.iv.next216.i.i, %._crit_edge194.i.i ] ; 4 uses
  %i.ko = mul nuw nsw i64 %indvars.iv215.i.i, %i.im
  %i.kp = add nsw i64 %indvars.iv215.i.i, %i.km
  %i.kq = mul nsw i64 %i.kp, %i.ki
  %gep198.i.i = getelementptr [4 x i8], ptr %invariant.gep197.i.i, i64 %i.kq ; 3 uses
  %i.kr = trunc i64 %indvars.iv215.i.i to i32
  %i.ks = add i32 %i.kr, 600
  %i.kt = urem i32 %i.ks, 6
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.ku ; 3 uses
  %i.kw = getelementptr [4 x i8], ptr %i.iq, i64 %i.ko ; 3 uses
  br i1 %i.kn, label %.epil.preheader, label %.preheader183.i.i.new

._crit_edge194.i.i.unr-lcssa:                     ; preds = %.preheader183.i.i.new
  br i1 %lcmp.mod4699.not, label %._crit_edge194.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge194.i.i.unr-lcssa, %.preheader183.i.i
  %indvars.iv210.i.i.epil.init = phi i64 [ 0, %.preheader183.i.i ], [ %indvars.iv.next211.i.i.1, %._crit_edge194.i.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod4700)
  %gep195.i.i.epil = getelementptr [4 x i8], ptr %gep198.i.i, i64 %indvars.iv210.i.i.epil.init
  %i.kx = load float, ptr %gep195.i.i.epil, align 4, !tbaa !22
  %i.ky = trunc i64 %indvars.iv210.i.i.epil.init to i32
  %i.kz = add i32 %i.ky, 600
  %i.la = urem i32 %i.kz, 6
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !169
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.le
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !22
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lg, %i.kx
  %i.li = getelementptr [4 x i8], ptr %i.kw, i64 %indvars.iv210.i.i.epil.init
  store float %i.lh, ptr %i.li, align 4, !tbaa !22
  br label %._crit_edge194.i.i

._crit_edge194.i.i:                               ; preds = %._crit_edge194.i.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next216.i.i = add nuw nsw i64 %indvars.iv215.i.i, 1 ; 2 uses
  %exitcond219.not.i.i = icmp eq i64 %indvars.iv.next216.i.i, %wide.trip.count218.i.i
  br i1 %exitcond219.not.i.i, label %.loopexit.i.i, label %.preheader183.i.i

.preheader183.i.i.new:                            ; preds = %.preheader183.i.i, %.preheader183.i.i.new
  %indvars.iv210.i.i = phi i64 [ %indvars.iv.next211.i.i.1, %.preheader183.i.i.new ], [ 0, %.preheader183.i.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader183.i.i.new ], [ 0, %.preheader183.i.i ]
  %gep195.i.i = getelementptr [4 x i8], ptr %gep198.i.i, i64 %indvars.iv210.i.i
  %i.lj = load float, ptr %gep195.i.i, align 4, !tbaa !22
  %i.lk = trunc i64 %indvars.iv210.i.i to i32
  %i.ll = add i32 %i.lk, 600
  %i.lm = urem i32 %i.ll, 6
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !169
  %i.lq = zext i8 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.lq
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !22
  %i.lt = fmul reassoc nsz arcp contract afn float %i.ls, %i.lj
  %i.lu = getelementptr [4 x i8], ptr %i.kw, i64 %indvars.iv210.i.i
  store float %i.lt, ptr %i.lu, align 4, !tbaa !22
  %indvars.iv.next211.i.i = or disjoint i64 %indvars.iv210.i.i, 1 ; 3 uses
  %gep195.i.i.1 = getelementptr [4 x i8], ptr %gep198.i.i, i64 %indvars.iv.next211.i.i
  %i.lv = load float, ptr %gep195.i.i.1, align 4, !tbaa !22
  %i.lw = trunc i64 %indvars.iv.next211.i.i to i32
  %i.lx = add i32 %i.lw, 600
  %i.ly = urem i32 %i.lx, 6
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.lz
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !169
  %i.mc = zext i8 %i.mb to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.mc
  %i.me = load float, ptr %i.md, align 4, !tbaa !22
  %i.mf = fmul reassoc nsz arcp contract afn float %i.me, %i.lv
  %i.mg = getelementptr [4 x i8], ptr %i.kw, i64 %indvars.iv.next211.i.i
  store float %i.mf, ptr %i.mg, align 4, !tbaa !22
  %indvars.iv.next211.i.i.1 = add nuw nsw i64 %indvars.iv210.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge194.i.i.unr-lcssa, label %.preheader183.i.i.new

.preheader186.i.i:                                ; preds = %._crit_edge.i.i, %.preheader186.preheader.i.i
  %indvars.iv205.i.i = phi i64 [ 0, %.preheader186.preheader.i.i ], [ %indvars.iv.next206.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.mh = mul nuw nsw i64 %indvars.iv205.i.i, %i.im
  %i.mi = add nsw i64 %indvars.iv205.i.i, %i.jr
  %i.mj = mul nsw i64 %i.mi, %i.jn
  %gep192.i.i = getelementptr [4 x i8], ptr %invariant.gep191.i.i, i64 %i.mj ; 6 uses
  %indvars.iv205.tr.i.i = trunc nuw i64 %indvars.iv205.i.i to i32
  %i.mk = shl nuw i32 %indvars.iv205.tr.i.i, 1
  %i.ml = and i32 %i.mk, 14                       ; 6 uses
  %i.mm = getelementptr [4 x i8], ptr %i.iq, i64 %i.mh ; 6 uses
  %brmerge4897 = select i1 %min.iters.check, i1 true, i1 %i.kg
  br i1 %brmerge4897, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader186.i.i
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ml, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.mn = getelementptr [4 x i8], ptr %gep192.i.i, i64 %index
  %wide.load = load <8 x float>, ptr %i.mn, align 4, !tbaa !22, !alias.scope !170
  %i.mo = and <8 x i32> %vec.ind, splat (i32 1)
  %i.mp = or disjoint <8 x i32> %i.mo, %broadcast.splat
  %i.mq = shl nuw nsw <8 x i32> %i.mp, splat (i32 1)
  %i.mr = lshr <8 x i32> %broadcast.splat1641, %i.mq
  %i.ms = and <8 x i32> %i.mr, splat (i32 3)
  %i.mt = zext nneg <8 x i32> %i.ms to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.n, <8 x i64> %i.mt
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.mu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.load
  %i.mv = getelementptr [4 x i8], ptr %i.mm, i64 %index
  store <8 x float> %i.mu, ptr %i.mv, align 4, !tbaa !22, !alias.scope !173, !noalias !170
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.mw = icmp eq i64 %index.next, %n.vec
  br i1 %i.mw, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader186.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader186.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.i.prol = getelementptr [4 x i8], ptr %gep192.i.i, i64 %indvars.iv.i.i.prol
  %i.mx = load float, ptr %gep.i.i.prol, align 4, !tbaa !22
  %i.my = trunc nuw nsw i64 %indvars.iv.i.i.prol to i32
  %i.mz = and i32 %i.my, 1
  %.tr.i.i.i.prol = or disjoint i32 %i.mz, %i.ml
  %i.na = shl nuw nsw i32 %.tr.i.i.i.prol, 1
  %i.nb = lshr i32 %.fr1063, %i.na
  %i.nc = and i32 %i.nb, 3
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.nd
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !22
  %i.ng = fmul reassoc nsz arcp contract afn float %i.nf, %i.mx
  %i.nh = getelementptr [4 x i8], ptr %i.mm, i64 %indvars.iv.i.i.prol
  store float %i.ng, ptr %i.nh, align 4, !tbaa !22
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !178

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ] ; 3 uses
  %i.ni = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.nj = icmp ugt i64 %i.ni, -4
  br i1 %i.nj, label %._crit_edge.i.i, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %i.nk = trunc i64 %indvars.iv.i.i.unr to i32
  %i.nl = trunc i64 %indvars.iv.i.i.unr to i32
  %i.nm = and i32 %i.nl, 1                        ; 2 uses
  %i.nn = and i32 %i.nk, 1
  %i.no = xor i32 %i.nn, 1                        ; 2 uses
  %.tr.i.i.i = or disjoint i32 %i.nm, %i.ml
  %i.np = shl nuw nsw i32 %.tr.i.i.i, 1
  %i.nq = lshr i32 %.fr1063, %i.np
  %i.nr = and i32 %i.nq, 3
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ns
  %.tr.i.i.i.1 = or disjoint i32 %i.no, %i.ml
  %i.nu = shl nuw nsw i32 %.tr.i.i.i.1, 1
  %i.nv = lshr i32 %.fr1063, %i.nu
  %i.nw = and i32 %i.nv, 3
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.nx
  %.tr.i.i.i.2 = or disjoint i32 %i.nm, %i.ml
  %i.nz = shl nuw nsw i32 %.tr.i.i.i.2, 1
  %i.oa = lshr i32 %.fr1063, %i.nz
  %i.ob = and i32 %i.oa, 3
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.oc
  %.tr.i.i.i.3 = or disjoint i32 %i.no, %i.ml
  %i.oe = shl nuw nsw i32 %.tr.i.i.i.3, 1
  %i.of = lshr i32 %.fr1063, %i.oe
  %i.og = and i32 %i.of, 3
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.oh
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next206.i.i = add nuw nsw i64 %indvars.iv205.i.i, 1 ; 2 uses
  %exitcond209.not.i.i = icmp eq i64 %indvars.iv.next206.i.i, %wide.trip.count208.i.i
  br i1 %exitcond209.not.i.i, label %.loopexit.i.i, label %.preheader186.i.i

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i.i.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.i.i.3, %scalar.ph ] ; 6 uses
  %gep.i.i = getelementptr [4 x i8], ptr %gep192.i.i, i64 %indvars.iv.i.i
  %i.oj = load float, ptr %gep.i.i, align 4, !tbaa !22
  %i.ok = load float, ptr %i.nt, align 4, !tbaa !22
  %i.ol = fmul reassoc nsz arcp contract afn float %i.ok, %i.oj
  %i.om = getelementptr [4 x i8], ptr %i.mm, i64 %indvars.iv.i.i
  store float %i.ol, ptr %i.om, align 4, !tbaa !22
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %gep.i.i.1 = getelementptr [4 x i8], ptr %gep192.i.i, i64 %indvars.iv.next.i.i
  %i.on = load float, ptr %gep.i.i.1, align 4, !tbaa !22
  %i.oo = load float, ptr %i.ny, align 4, !tbaa !22
  %i.op = fmul reassoc nsz arcp contract afn float %i.oo, %i.on
  %i.oq = getelementptr [4 x i8], ptr %i.mm, i64 %indvars.iv.next.i.i
  store float %i.op, ptr %i.oq, align 4, !tbaa !22
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %gep.i.i.2 = getelementptr [4 x i8], ptr %gep192.i.i, i64 %indvars.iv.next.i.i.1
  %i.or = load float, ptr %gep.i.i.2, align 4, !tbaa !22
  %i.os = load float, ptr %i.od, align 4, !tbaa !22
  %i.ot = fmul reassoc nsz arcp contract afn float %i.os, %i.or
  %i.ou = getelementptr [4 x i8], ptr %i.mm, i64 %indvars.iv.next.i.i.1
  store float %i.ot, ptr %i.ou, align 4, !tbaa !22
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %gep.i.i.3 = getelementptr [4 x i8], ptr %gep192.i.i, i64 %indvars.iv.next.i.i.2
  %i.ov = load float, ptr %gep.i.i.3, align 4, !tbaa !22
  %i.ow = load float, ptr %i.oi, align 4, !tbaa !22
  %i.ox = fmul reassoc nsz arcp contract afn float %i.ow, %i.ov
  %i.oy = getelementptr [4 x i8], ptr %i.mm, i64 %indvars.iv.next.i.i.2
  store float %i.ox, ptr %i.oy, align 4, !tbaa !22
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !180

iter.check:                                       ; preds = %._crit_edge200.i.i, %.preheader.preheader.i.i
  %indvars.iv225.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next226.i.i, %._crit_edge200.i.i ] ; 4 uses
  %i.oz = trunc i64 %indvars.iv225.i.i to i32
  %i.pa = mul i32 %i.hf, %i.oz
  %i.pb = add i32 %i.pa, %i.jb
  %i.pc = sext i32 %i.pb to i64
  %i.pd = shl nsw i64 %i.pc, 4                    ; 2 uses
  %scevgep1644 = getelementptr i8, ptr %2, i64 %i.pd
  %scevgep1646 = getelementptr i8, ptr %scevgep1645, i64 %i.pd
  %i.pe = mul nuw nsw i64 %indvars.iv225.i.i, %i.im
  %i.pf = trunc i64 %indvars.iv225.i.i to i32
  %i.pg = add i32 %i.iy, %i.pf
  %i.ph = mul i32 %i.pg, %i.hf
  %i.pi = add i32 %i.ph, %i.ja                    ; 12 uses
  %i.pj = getelementptr [4 x i8], ptr %i.iq, i64 %i.pe ; 7 uses
  br i1 %min.iters.check1651, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.pk = add i32 %i.pi, %i.je
  %i.pl = icmp slt i32 %i.pk, %i.pi
  %i.pm = or i1 %i.pl, %i.jf
  br i1 %i.pm, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck1642

vector.memcheck1642:                              ; preds = %vector.scevcheck
  %bound01647 = icmp ult ptr %i.iq, %scevgep1646
  %bound11648 = icmp ult ptr %scevgep1644, %scevgep1643
  %found.conflict1649 = and i1 %bound01647, %bound11648
  br i1 %found.conflict1649, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1642
  br i1 %min.iters.check1652, label %vec.epilog.ph, label %vector.body1655

vector.body1655:                                  ; preds = %vector.main.loop.iter.check, %vector.body1655
  %index1656 = phi i64 [ %index.next1663, %vector.body1655 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.pn = trunc i64 %index1656 to i32             ; 4 uses
  %i.po = or disjoint i32 %i.pn, 8
  %i.pp = or disjoint i32 %i.pn, 16
  %i.pq = or disjoint i32 %i.pn, 24
  %i.pr = add i32 %i.pi, %i.pn
  %i.ps = add i32 %i.pi, %i.po
  %i.pt = add i32 %i.pi, %i.pp
  %i.pu = add i32 %i.pi, %i.pq
  %i.pv = sext i32 %i.pr to i64
  %i.pw = sext i32 %i.ps to i64
  %i.px = sext i32 %i.pt to i64
  %i.py = sext i32 %i.pu to i64
  %i.pz = shl nsw i64 %i.pv, 4
  %i.qa = shl nsw i64 %i.pw, 4
  %i.qb = shl nsw i64 %i.px, 4
  %i.qc = shl nsw i64 %i.py, 4
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 %i.pz
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 %i.qa
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 %i.qb
  %i.qg = getelementptr inbounds nuw i8, ptr %2, i64 %i.qc
  %wide.vec = load <32 x float>, ptr %i.qd, align 4, !tbaa !22, !alias.scope !181
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1657 = load <32 x float>, ptr %i.qe, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1658 = shufflevector <32 x float> %wide.vec1657, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1659 = load <32 x float>, ptr %i.qf, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1660 = shufflevector <32 x float> %wide.vec1659, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1661 = load <32 x float>, ptr %i.qg, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1662 = shufflevector <32 x float> %wide.vec1661, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.qh = getelementptr [4 x i8], ptr %i.pj, i64 %index1656 ; 4 uses
  %i.qi = getelementptr i8, ptr %i.qh, i64 32
end_hunk_0
begin_hunk_1_@process:bb.a
  %indvars.iv.i472.prol = phi i64 [ %indvars.iv.next.i474.prol, %.preheader.i471.prol ], [ %indvars.iv.i472.ph, %.preheader.i471.preheader ] ; 3 uses
  %prol.iter4717 = phi i64 [ %prol.iter4717.next, %.preheader.i471.prol ], [ 0, %.preheader.i471.preheader ]
  %i.blk = add nuw nsw i64 %indvars.iv.i472.prol, %i.blb ; 2 uses
  %i.bll = getelementptr inbounds nuw [4 x i8], ptr %i.axs, i64 %i.blk ; 2 uses
  %.idx23.i.prol = shl i64 %i.blk, 4
  %i.blm = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx23.i.prol ; 3 uses
  %i.bln = load float, ptr %i.bll, align 4, !tbaa !22 ; 2 uses
  store float %i.bln, ptr %i.blm, align 4, !tbaa !22
  %i.blo = getelementptr inbounds nuw i8, ptr %i.blm, i64 4
  store float %i.bln, ptr %i.blo, align 4, !tbaa !22
  %i.blp = load float, ptr %i.bll, align 4, !tbaa !22
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blm, i64 8
  store float %i.blp, ptr %i.blq, align 4, !tbaa !22
  %i.blr = add nuw nsw i64 %indvars.iv.i472.prol, %i.blc
  %.idx.i473.prol = shl i64 %i.blr, 4
  %i.bls = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i473.prol
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bls, i64 12
  store float 0.000000e+00, ptr %i.blt, align 4, !tbaa !22
  %indvars.iv.next.i474.prol = add nuw nsw i64 %indvars.iv.i472.prol, 1 ; 2 uses
  %prol.iter4717.next = add i64 %prol.iter4717, 1 ; 2 uses
  %prol.iter4717.cmp.not = icmp eq i64 %prol.iter4717.next, %xtraiter4715
  br i1 %prol.iter4717.cmp.not, label %.preheader.i471.prol.loopexit, label %.preheader.i471.prol, !llvm.loop !213

.preheader.i471.prol.loopexit:                    ; preds = %.preheader.i471.prol, %.preheader.i471.preheader
  %indvars.iv.i472.unr = phi i64 [ %indvars.iv.i472.ph, %.preheader.i471.preheader ], [ %indvars.iv.next.i474.prol, %.preheader.i471.prol ]
  %i.blu = sub nsw i64 %indvars.iv.i472.ph, %i.aod
  %i.blv = icmp ugt i64 %i.blu, -4
  br i1 %i.blv, label %._crit_edge.i476, label %.preheader.i471

.preheader.i471:                                  ; preds = %.preheader.i471.prol.loopexit, %.preheader.i471
  %indvars.iv.i472 = phi i64 [ %indvars.iv.next.i474.3, %.preheader.i471 ], [ %indvars.iv.i472.unr, %.preheader.i471.prol.loopexit ] ; 6 uses
  %i.blw = add nuw nsw i64 %indvars.iv.i472, %i.blb ; 2 uses
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr %i.axs, i64 %i.blw ; 2 uses
  %.idx23.i = shl i64 %i.blw, 4
  %i.bly = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx23.i ; 3 uses
  %i.blz = load float, ptr %i.blx, align 4, !tbaa !22 ; 2 uses
  store float %i.blz, ptr %i.bly, align 4, !tbaa !22
  %i.bma = getelementptr inbounds nuw i8, ptr %i.bly, i64 4
  store float %i.blz, ptr %i.bma, align 4, !tbaa !22
  %i.bmb = load float, ptr %i.blx, align 4, !tbaa !22
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bly, i64 8
  store float %i.bmb, ptr %i.bmc, align 4, !tbaa !22
  %i.bmd = add nuw nsw i64 %indvars.iv.i472, %i.blc
  %.idx.i473 = shl i64 %i.bmd, 4
  %i.bme = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i473
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bme, i64 12
  store float 0.000000e+00, ptr %i.bmf, align 4, !tbaa !22
  %indvars.iv.next.i474 = add nuw nsw i64 %indvars.iv.i472, 1 ; 2 uses
  %i.bmg = add nuw nsw i64 %indvars.iv.next.i474, %i.blb ; 2 uses
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %i.axs, i64 %i.bmg ; 2 uses
  %.idx23.i.1 = shl i64 %i.bmg, 4
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx23.i.1 ; 3 uses
  %i.bmj = load float, ptr %i.bmh, align 4, !tbaa !22 ; 2 uses
  store float %i.bmj, ptr %i.bmi, align 4, !tbaa !22
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmi, i64 4
  store float %i.bmj, ptr %i.bmk, align 4, !tbaa !22
  %i.bml = load float, ptr %i.bmh, align 4, !tbaa !22
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bmi, i64 8
  store float %i.bml, ptr %i.bmm, align 4, !tbaa !22
  %i.bmn = add nuw nsw i64 %indvars.iv.next.i474, %i.blc
  %.idx.i473.1 = shl i64 %i.bmn, 4
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i473.1
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmo, i64 12
  store float 0.000000e+00, ptr %i.bmp, align 4, !tbaa !22
  %indvars.iv.next.i474.1 = add nuw nsw i64 %indvars.iv.i472, 2 ; 2 uses
  %i.bmq = add nuw nsw i64 %indvars.iv.next.i474.1, %i.blb ; 2 uses
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %i.axs, i64 %i.bmq ; 2 uses
  %.idx23.i.2 = shl i64 %i.bmq, 4
  %i.bms = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx23.i.2 ; 3 uses
  %i.bmt = load float, ptr %i.bmr, align 4, !tbaa !22 ; 2 uses
  store float %i.bmt, ptr %i.bms, align 4, !tbaa !22
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bms, i64 4
  store float %i.bmt, ptr %i.bmu, align 4, !tbaa !22
  %i.bmv = load float, ptr %i.bmr, align 4, !tbaa !22
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bms, i64 8
  store float %i.bmv, ptr %i.bmw, align 4, !tbaa !22
  %i.bmx = add nuw nsw i64 %indvars.iv.next.i474.1, %i.blc
  %.idx.i473.2 = shl i64 %i.bmx, 4
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i473.2
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 12
  store float 0.000000e+00, ptr %i.bmz, align 4, !tbaa !22
  %indvars.iv.next.i474.2 = add nuw nsw i64 %indvars.iv.i472, 3 ; 2 uses
  %i.bna = add nuw nsw i64 %indvars.iv.next.i474.2, %i.blb ; 2 uses
  %i.bnb = getelementptr inbounds nuw [4 x i8], ptr %i.axs, i64 %i.bna ; 2 uses
  %.idx23.i.3 = shl i64 %i.bna, 4
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx23.i.3 ; 3 uses
  %i.bnd = load float, ptr %i.bnb, align 4, !tbaa !22 ; 2 uses
  store float %i.bnd, ptr %i.bnc, align 4, !tbaa !22
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnc, i64 4
  store float %i.bnd, ptr %i.bne, align 4, !tbaa !22
  %i.bnf = load float, ptr %i.bnb, align 4, !tbaa !22
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnc, i64 8
  store float %i.bnf, ptr %i.bng, align 4, !tbaa !22
  %i.bnh = add nuw nsw i64 %indvars.iv.next.i474.2, %i.blc
  %.idx.i473.3 = shl i64 %i.bnh, 4
  %i.bni = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i473.3
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bni, i64 12
  store float 0.000000e+00, ptr %i.bnj, align 4, !tbaa !22
  %indvars.iv.next.i474.3 = add nuw nsw i64 %indvars.iv.i472, 4 ; 2 uses
  %exitcond.not.i475.3 = icmp eq i64 %indvars.iv.next.i474.3, %i.aod
  br i1 %exitcond.not.i475.3, label %._crit_edge.i476, label %.preheader.i471, !llvm.loop !214

._crit_edge.i476:                                 ; preds = %.preheader.i471.prol.loopexit, %.preheader.i471, %middle.block4534
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count34.i
  br i1 %exitcond35.not.i, label %demosaic_box3.exit, label %.preheader24.i

bb.hy:                                            ; preds = %bb.hv
  %i.bnk = icmp slt i32 %i.axi, 1
  %brmerge1056 = select i1 %i.bnk, i1 true, i1 %i.aob
  br i1 %brmerge1056, label %demosaic_box3.exit, label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.i:                         ; preds = %bb.hy
  %wide.trip.count50.i = zext nneg i32 %i.axi to i64 ; 2 uses
  br i1 %i.bd, label %.preheader.us.i, label %.preheader.i477

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.split.i, %._crit_edge.split.us.us.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %._crit_edge.split.us.us.i ], [ 0, %.preheader.lr.ph.split.i ] ; 4 uses
  %i.bnl = mul nuw nsw i64 %indvars.iv47.i, %i.aod
  %invariant.gep.us.i = getelementptr [4 x i8], ptr %i.axs, i64 %i.bnl ; 3 uses
  %i.bnm = mul nuw nsw i64 %indvars.iv47.i, %i.aoc ; 3 uses
  %i.bnn = trunc i64 %indvars.iv47.i to i32
  %i.bno = add i32 %i.bnn, 600
  %i.bnp = urem i32 %i.bno, 6
  %i.bnq = zext nneg i32 %i.bnp to i64
  %i.bnr = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.bnq ; 3 uses
  br i1 %i.avu, label %fcol.exit.us.us.i.epil.preheader, label %fcol.exit.us.us.i

fcol.exit.us.us.i:                                ; preds = %.preheader.us.i, %fcol.exit.us.us.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i.1, %fcol.exit.us.us.i ], [ 0, %.preheader.us.i ] ; 5 uses
  %niter4714 = phi i64 [ %niter4714.next.1, %fcol.exit.us.us.i ], [ 0, %.preheader.us.i ]
  %gep.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.i, i64 %indvars.iv42.i
  %i.bns = load float, ptr %gep.us.us.i, align 4, !tbaa !22
  %i.bnt = add nuw nsw i64 %indvars.iv42.i, %i.bnm
  %i.bnu = trunc i64 %indvars.iv42.i to i32
  %i.bnv = add i32 %i.bnu, 600
  %i.bnw = urem i32 %i.bnv, 6
  %i.bnx = zext nneg i32 %i.bnw to i64
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnr, i64 %i.bnx
  %i.bnz = load i8, ptr %i.bny, align 1, !tbaa !169
  %i.boa = zext i8 %i.bnz to i64
  %.idx.us.us.i = shl i64 %i.bnt, 4
  %i.bob = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.us.us.i ; 2 uses
  %i.boc = getelementptr [4 x i8], ptr %i.bob, i64 %i.boa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bob, i8 0, i64 16, i1 false)
  store float %i.bns, ptr %i.boc, align 4, !tbaa !22
  %indvars.iv.next43.i = or disjoint i64 %indvars.iv42.i, 1 ; 3 uses
  %gep.us.us.i.1 = getelementptr [4 x i8], ptr %invariant.gep.us.i, i64 %indvars.iv.next43.i
  %i.bod = load float, ptr %gep.us.us.i.1, align 4, !tbaa !22
  %i.boe = add nuw nsw i64 %indvars.iv.next43.i, %i.bnm
  %i.bof = trunc i64 %indvars.iv.next43.i to i32
  %i.bog = add i32 %i.bof, 600
  %i.boh = urem i32 %i.bog, 6
  %i.boi = zext nneg i32 %i.boh to i64
  %i.boj = getelementptr inbounds nuw i8, ptr %i.bnr, i64 %i.boi
  %i.bok = load i8, ptr %i.boj, align 1, !tbaa !169
  %i.bol = zext i8 %i.bok to i64
  %.idx.us.us.i.1 = shl i64 %i.boe, 4
  %i.bom = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.us.us.i.1 ; 2 uses
  %i.bon = getelementptr [4 x i8], ptr %i.bom, i64 %i.bol
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bom, i8 0, i64 16, i1 false)
  store float %i.bod, ptr %i.bon, align 4, !tbaa !22
  %indvars.iv.next43.i.1 = add nuw nsw i64 %indvars.iv42.i, 2 ; 2 uses
  %niter4714.next.1 = add i64 %niter4714, 2       ; 2 uses
  %niter4714.ncmp.1 = icmp eq i64 %niter4714.next.1, %unroll_iter4713
  br i1 %niter4714.ncmp.1, label %._crit_edge.split.us.us.i.unr-lcssa, label %fcol.exit.us.us.i

._crit_edge.split.us.us.i.unr-lcssa:              ; preds = %fcol.exit.us.us.i
  br i1 %lcmp.mod4711.not, label %._crit_edge.split.us.us.i, label %fcol.exit.us.us.i.epil.preheader

fcol.exit.us.us.i.epil.preheader:                 ; preds = %._crit_edge.split.us.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv42.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next43.i.1, %._crit_edge.split.us.us.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4712)
  %gep.us.us.i.epil = getelementptr [4 x i8], ptr %invariant.gep.us.i, i64 %indvars.iv42.i.epil.init
  %i.boo = load float, ptr %gep.us.us.i.epil, align 4, !tbaa !22
  %i.bop = add nuw nsw i64 %indvars.iv42.i.epil.init, %i.bnm
  %i.boq = trunc i64 %indvars.iv42.i.epil.init to i32
  %i.bor = add i32 %i.boq, 600
  %i.bos = urem i32 %i.bor, 6
  %i.bot = zext nneg i32 %i.bos to i64
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bnr, i64 %i.bot
  %i.bov = load i8, ptr %i.bou, align 1, !tbaa !169
  %i.bow = zext i8 %i.bov to i64
  %.idx.us.us.i.epil = shl i64 %i.bop, 4
  %i.box = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.us.us.i.epil ; 2 uses
  %i.boy = getelementptr [4 x i8], ptr %i.box, i64 %i.bow
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.box, i8 0, i64 16, i1 false)
  store float %i.boo, ptr %i.boy, align 4, !tbaa !22
  br label %._crit_edge.split.us.us.i

._crit_edge.split.us.us.i:                        ; preds = %._crit_edge.split.us.us.i.unr-lcssa, %fcol.exit.us.us.i.epil.preheader
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count50.i
  br i1 %exitcond51.not.i, label %demosaic_box3.exit, label %.preheader.us.i

.preheader.i477:                                  ; preds = %.preheader.lr.ph.split.i, %._crit_edge.split.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %._crit_edge.split.i ], [ 0, %.preheader.lr.ph.split.i ] ; 4 uses
  %i.boz = mul nuw nsw i64 %indvars.iv37.i, %i.aod
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.axs, i64 %i.boz ; 5 uses
  %i.bpa = mul nuw nsw i64 %indvars.iv37.i, %i.aoc ; 5 uses
  %indvars.iv37.tr.i = trunc nuw i64 %indvars.iv37.i to i32
  %i.bpb = shl nuw i32 %indvars.iv37.tr.i, 1
  %i.bpc = and i32 %i.bpb, 14                     ; 5 uses
  br i1 %i.avt, label %fcol.exit.i.epil.preheader, label %.preheader.i477.new

.preheader.i477.new:                              ; preds = %.preheader.i477
  %i.bpd = shl nuw nsw i32 %i.bpc, 1
  %i.bpe = lshr i32 %.fr1063, %i.bpd
  %i.bpf = and i32 %i.bpe, 3
  %i.bpg = zext nneg i32 %i.bpf to i64
  %.tr.i.i.i479.1 = shl nuw nsw i32 %i.bpc, 1
  %i.bph = or disjoint i32 %.tr.i.i.i479.1, 2
  %i.bpi = lshr i32 %.fr1063, %i.bph
  %i.bpj = and i32 %i.bpi, 3
  %i.bpk = zext nneg i32 %i.bpj to i64
  %i.bpl = shl nuw nsw i32 %i.bpc, 1
  %i.bpm = lshr i32 %.fr1063, %i.bpl
  %i.bpn = and i32 %i.bpm, 3
  %i.bpo = zext nneg i32 %i.bpn to i64
  %.tr.i.i.i479.3 = shl nuw nsw i32 %i.bpc, 1
  %i.bpp = or disjoint i32 %.tr.i.i.i479.3, 2
  %i.bpq = lshr i32 %.fr1063, %i.bpp
  %i.bpr = and i32 %i.bpq, 3
  %i.bps = zext nneg i32 %i.bpr to i64
  br label %fcol.exit.i

._crit_edge.split.i.unr-lcssa:                    ; preds = %fcol.exit.i
  br i1 %lcmp.mod4705.not, label %._crit_edge.split.i, label %fcol.exit.i.epil.preheader

fcol.exit.i.epil.preheader:                       ; preds = %._crit_edge.split.i.unr-lcssa, %.preheader.i477
  %indvars.iv.i478.epil.init = phi i64 [ 0, %.preheader.i477 ], [ %indvars.iv.next.i481.3, %._crit_edge.split.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4706)
  br label %fcol.exit.i.epil

fcol.exit.i.epil:                                 ; preds = %fcol.exit.i.epil, %fcol.exit.i.epil.preheader
  %indvars.iv.i478.epil = phi i64 [ %indvars.iv.i478.epil.init, %fcol.exit.i.epil.preheader ], [ %indvars.iv.next.i481.epil, %fcol.exit.i.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %fcol.exit.i.epil.preheader ], [ %epil.iter.next, %fcol.exit.i.epil ]
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i478.epil
  %i.bpt = load float, ptr %gep.i.epil, align 4, !tbaa !22
  %i.bpu = add nuw nsw i64 %indvars.iv.i478.epil, %i.bpa
  %i.bpv = trunc nuw nsw i64 %indvars.iv.i478.epil to i32
  %i.bpw = and i32 %i.bpv, 1
  %.tr.i.i.i479.epil = or disjoint i32 %i.bpw, %i.bpc
  %i.bpx = shl nuw nsw i32 %.tr.i.i.i479.epil, 1
  %i.bpy = lshr i32 %.fr1063, %i.bpx
  %i.bpz = and i32 %i.bpy, 3
  %i.bqa = zext nneg i32 %i.bpz to i64
  %.idx.i480.epil = shl i64 %i.bpu, 4
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i480.epil ; 2 uses
  %i.bqc = getelementptr [4 x i8], ptr %i.bqb, i64 %i.bqa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bqb, i8 0, i64 16, i1 false)
  store float %i.bpt, ptr %i.bqc, align 4, !tbaa !22
  %indvars.iv.next.i481.epil = add nuw nsw i64 %indvars.iv.i478.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter4704
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.i, label %fcol.exit.i.epil, !llvm.loop !215

._crit_edge.split.i:                              ; preds = %fcol.exit.i.epil, %._crit_edge.split.i.unr-lcssa
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count50.i
  br i1 %exitcond41.not.i, label %demosaic_box3.exit, label %.preheader.i477

fcol.exit.i:                                      ; preds = %fcol.exit.i, %.preheader.i477.new
  %indvars.iv.i478 = phi i64 [ 0, %.preheader.i477.new ], [ %indvars.iv.next.i481.3, %fcol.exit.i ] ; 6 uses
  %niter4708 = phi i64 [ 0, %.preheader.i477.new ], [ %niter4708.next.3, %fcol.exit.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i478
  %i.bqd = load float, ptr %gep.i, align 4, !tbaa !22
  %i.bqe = add nuw nsw i64 %indvars.iv.i478, %i.bpa
  %.idx.i480 = shl i64 %i.bqe, 4
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i480 ; 2 uses
  %i.bqg = getelementptr [4 x i8], ptr %i.bqf, i64 %i.bpg
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bqf, i8 0, i64 16, i1 false)
  store float %i.bqd, ptr %i.bqg, align 4, !tbaa !22
  %indvars.iv.next.i481 = or disjoint i64 %indvars.iv.i478, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i481
  %i.bqh = load float, ptr %gep.i.1, align 4, !tbaa !22
  %i.bqi = add nuw nsw i64 %indvars.iv.next.i481, %i.bpa
  %.idx.i480.1 = shl i64 %i.bqi, 4
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i480.1 ; 2 uses
  %i.bqk = getelementptr [4 x i8], ptr %i.bqj, i64 %i.bpk
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bqj, i8 0, i64 16, i1 false)
  store float %i.bqh, ptr %i.bqk, align 4, !tbaa !22
  %indvars.iv.next.i481.1 = or disjoint i64 %indvars.iv.i478, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i481.1
  %i.bql = load float, ptr %gep.i.2, align 4, !tbaa !22
  %i.bqm = add nuw nsw i64 %indvars.iv.next.i481.1, %i.bpa
  %.idx.i480.2 = shl i64 %i.bqm, 4
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i480.2 ; 2 uses
  %i.bqo = getelementptr [4 x i8], ptr %i.bqn, i64 %i.bpo
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bqn, i8 0, i64 16, i1 false)
  store float %i.bql, ptr %i.bqo, align 4, !tbaa !22
  %indvars.iv.next.i481.2 = or disjoint i64 %indvars.iv.i478, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i481.2
  %i.bqp = load float, ptr %gep.i.3, align 4, !tbaa !22
  %i.bqq = add nuw nsw i64 %indvars.iv.next.i481.2, %i.bpa
  %.idx.i480.3 = shl i64 %i.bqq, 4
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i480.3 ; 2 uses
  %i.bqs = getelementptr [4 x i8], ptr %i.bqr, i64 %i.bps
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bqr, i8 0, i64 16, i1 false)
  store float %i.bqp, ptr %i.bqs, align 4, !tbaa !22
  %indvars.iv.next.i481.3 = add nuw nsw i64 %indvars.iv.i478, 4 ; 2 uses
  %niter4708.next.3 = add i64 %niter4708, 4       ; 2 uses
  %niter4708.ncmp.3 = icmp eq i64 %niter4708.next.3, %unroll_iter4707
  br i1 %niter4708.ncmp.3, label %._crit_edge.split.i.unr-lcssa, label %fcol.exit.i

bb.hz:                                            ; preds = %bb.hv
  br i1 %i.bd, label %bb.ia, label %bb.nu

bb.ia:                                            ; preds = %bb.hz
  br i1 %i.apc, label %bb.ib, label %bb.lh

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.bqt = tail call ptr @dt_alloc_aligned(i64 noundef 1369344) #27 ; 74 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bqt, i64 64) ]
  %.not.i483 = icmp eq ptr %i.bqt, null
  br i1 %.not.i483, label %bb.ic, label %.preheader1276.i

bb.ic:                                            ; preds = %bb.ib
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.208) #27
  br label %xtrans_fdc_interpolate.exit

.preheader1276.i:                                 ; preds = %bb.ib, %bb.id
  %indvars.iv1554.i = phi i64 [ %indvars.iv.next1555.i, %bb.id ], [ 0, %bb.ib ] ; 4 uses
  %.010101293.i = phi i16 [ %.31013.4.fr.i, %bb.id ], [ 0, %bb.ib ]
  %.010161292.i = phi i16 [ %.31019.4.fr.i, %bb.id ], [ 0, %bb.ib ]
  %i.bqu = trunc nsw i64 %indvars.iv1554.i to i32
  %i.bqv = trunc nuw nsw i64 %indvars.iv1554.i to i16
  %i.bqw = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %indvars.iv1554.i
  %i.bqx = insertelement <4 x i32> poison, i32 %i.bqu, i64 0
  %i.bqy = shufflevector <4 x i32> %i.bqx, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bqz = or <4 x i32> %i.bqy, <i32 600, i32 poison, i32 poison, i32 poison>
  %i.bra = add nuw nsw <4 x i32> %i.bqy, <i32 poison, i32 601, i32 600, i32 599>
  %i.brb = shufflevector <4 x i32> %i.bqz, <4 x i32> %i.bra, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.brc = urem <4 x i32> %i.brb, splat (i32 6)
  %i.brd = trunc nuw nsw <4 x i32> %i.brc to <4 x i8> ; 4 uses
  %i.bre = extractelement <4 x i8> %i.brd, i64 0
  %i.brf = zext nneg i8 %i.bre to i64
  %i.brg = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.brf
  %i.brh = extractelement <4 x i8> %i.brd, i64 1
  %i.bri = zext nneg i8 %i.brh to i64
  %i.brj = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.bri
  %i.brk = extractelement <4 x i8> %i.brd, i64 2
  %i.brl = zext nneg i8 %i.brk to i64
  %i.brm = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.brl ; 2 uses
  %i.brn = extractelement <4 x i8> %i.brd, i64 3
  %i.bro = zext nneg i8 %i.brn to i64
  %i.brp = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.bro
  br label %.preheader1275.i

.preheader1271.i:                                 ; preds = %bb.id
  %i.brq = zext i16 %.31013.4.fr.i to i32         ; 4 uses
  %i.brr = urem i16 %.31013.4.fr.i, 3
  %.not1121.i = icmp eq i16 %i.brr, 0
  br i1 %.not1121.i, label %.preheader1269.i, label %bb.iq

.preheader1275.i:                                 ; preds = %.loopexit1274.4.i, %.preheader1276.i
  %indvars.iv.i484 = phi i64 [ 0, %.preheader1276.i ], [ %indvars.iv.next.i485, %.loopexit1274.4.i ] ; 4 uses
  %.110111290.i = phi i16 [ %.010101293.i, %.preheader1276.i ], [ %.31013.4.fr.i, %.loopexit1274.4.i ]
  %.110171289.i = phi i16 [ %.010161292.i, %.preheader1276.i ], [ %.31019.4.fr.i, %.loopexit1274.4.i ]
  %i.brs = trunc nuw nsw i64 %indvars.iv.i484 to i32 ; 4 uses
  %i.brt = trunc nuw nsw i64 %indvars.iv.i484 to i16
  %i.bru = getelementptr inbounds nuw [16 x i8], ptr %i.bqw, i64 %indvars.iv.i484 ; 32 uses
  %i.brv = add nuw nsw i32 %i.brs, 600
  %i.brw = or i32 %i.brs, 600
  %i.brx = insertelement <2 x i32> poison, i32 %i.brw, i64 0
  %i.bry = insertelement <2 x i32> %i.brx, i32 %i.brv, i64 1
  %i.brz = urem <2 x i32> %i.bry, splat (i32 6)   ; 2 uses
  %i.bsa = extractelement <2 x i32> %i.brz, i64 0
  %i.bsb = zext nneg i32 %i.bsa to i64
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.brg, i64 %i.bsb
  %i.bsd = load i8, ptr %i.bsc, align 1, !tbaa !169
  %i.bse = icmp eq i8 %i.bsd, 1                   ; 3 uses
  %i.bsf = select i1 %i.bse, i32 2, i32 1         ; 10 uses
  %i.bsg = zext i1 %i.bse to i64
  %i.bsh = getelementptr inbounds nuw [32 x i8], ptr @xtrans_markesteijn_interpolate.patt, i64 %i.bsg ; 26 uses
  %i.bsi = extractelement <2 x i32> %i.brz, i64 1
  %i.bsj = zext nneg i32 %i.bsi to i64            ; 2 uses
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.brj, i64 %i.bsj
  %i.bsl = load i8, ptr %i.bsk, align 1, !tbaa !169
  %i.bsm = icmp eq i8 %i.bsl, 1                   ; 3 uses
  %.not2138.i = select i1 %i.bse, i1 true, i1 %i.bsm
  br i1 %.not2138.i, label %.loopexit1274.i, label %.preheader1273.i

bb.id:                                            ; preds = %.loopexit1274.4.i
  %indvars.iv.next1555.i = add nuw nsw i64 %indvars.iv1554.i, 1 ; 2 uses
  %exitcond1556.not.i = icmp eq i64 %indvars.iv.next1555.i, 3
  br i1 %exitcond1556.not.i, label %.preheader1271.i, label %.preheader1276.i

.preheader1273.i:                                 ; preds = %.preheader1275.i
  store i16 1, ptr %i.bru, align 16, !tbaa !216
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bsh, i64 6
  %i.bso = load i16, ptr %i.bsn, align 2, !tbaa !216
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bru, i64 2
  store i16 %i.bso, ptr %i.bsp, align 2, !tbaa !216
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsh, i64 8
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bru, i64 4
  %i.bss = call <3 x i16> @llvm.masked.load.v3i16.p0(ptr nonnull align 8 %i.bsq, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i16> poison), !tbaa !216
  %i.bst = shufflevector <3 x i16> %i.bss, <3 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.bsu = mul <2 x i16> %i.bst, splat (i16 122)
  store <2 x i16> %i.bsu, ptr %i.bsr, align 4, !tbaa !216
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bru, i64 8
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.myq = fmul reassoc nsz arcp contract afn <8 x float> %i.mxz, %i.mxz
  %i.myr = fadd reassoc nsz arcp contract afn <8 x float> %i.myp, %i.myq
  %i.mys = fmul reassoc nsz arcp contract afn <8 x float> %i.myb, %i.myb
  %i.myt = fadd reassoc nsz arcp contract afn <8 x float> %i.myr, %i.mys ; 3 uses
  %i.myu = fmul reassoc nsz arcp contract afn <8 x float> %i.mxk, %strided.vec4301
  %i.myv = fmul reassoc nsz arcp contract afn <8 x float> %i.myt, %strided.vec4283
  %i.myw = fadd reassoc nsz arcp contract afn <8 x float> %i.myu, %i.myv
  %i.myx = fadd reassoc nsz arcp contract afn <8 x float> %i.mxk, %i.myt ; 2 uses
  %i.myy = fmul reassoc nsz arcp contract afn <8 x float> %i.mxk, %i.myt
  %i.myz = fdiv reassoc nsz arcp contract afn <8 x float> %i.myy, %i.myx ; 2 uses
  %i.mza = fmul reassoc nsz arcp contract afn <8 x float> %i.myz, %i.mvp
  %i.mzb = fdiv reassoc nsz arcp contract afn <8 x float> %i.mza, %i.mvq
  %i.mzc = fmul reassoc nsz arcp contract afn <8 x float> %i.myw, %i.mvs
  %i.mzd = fdiv reassoc nsz arcp contract afn <8 x float> %i.mzc, %i.myx
  %i.mze = fadd reassoc nsz arcp contract afn <8 x float> %i.mzb, %i.mzd
  %i.mzf = fadd reassoc nsz arcp contract afn <8 x float> %i.myz, %i.mvs
  %i.mzg = fdiv reassoc nsz arcp contract afn <8 x float> %i.mze, %i.mzf
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mzg, <8 x ptr> align 4 %wide.gep4245, <8 x i1> splat (i1 true)), !tbaa !22, !noalias !402
  %index.next4310 = add nuw i64 %index4243, 8     ; 2 uses
  %vec.ind.next4311 = add nuw nsw <8 x i64> %vec.ind4244, splat (i64 16)
  %i.mzh = icmp eq i64 %index.next4310, %n.vec4238
  br i1 %i.mzh, label %scalar.ph4235.preheader, label %vector.body4242, !llvm.loop !418

._crit_edge1057.i:                                ; preds = %scalar.ph4235, %bb.ph
  %indvars.iv.next1246.i = add nuw nsw i64 %indvars.iv1245.i, 1 ; 2 uses
  %exitcond1122.not = icmp eq i64 %indvars.iv.next1246.i, %smax1145
  br i1 %exitcond1122.not, label %._crit_edge1060.i, label %bb.ph

scalar.ph4235:                                    ; preds = %scalar.ph4235.preheader, %scalar.ph4235
  %indvars.iv1242.i = phi i64 [ %indvars.iv.next1243.i, %scalar.ph4235 ], [ %indvars.iv1242.i.ph, %scalar.ph4235.preheader ] ; 7 uses
  %i.mzi = getelementptr inbounds nuw [4 x i8], ptr %i.mrs, i64 %indvars.iv1242.i ; 3 uses
  %i.mzj = getelementptr inbounds nuw [4 x i8], ptr %i.mrt, i64 %indvars.iv1242.i ; 9 uses
  %i.mzk = getelementptr inbounds nuw [4 x i8], ptr %i.mru, i64 %indvars.iv1242.i ; 2 uses
  %i.mzl = getelementptr inbounds nuw [4 x i8], ptr %i.mrv, i64 %indvars.iv1242.i ; 9 uses
  %i.mzm = getelementptr inbounds nuw [4 x i8], ptr %i.mrw, i64 %indvars.iv1242.i
  %i.mzn = getelementptr inbounds i8, ptr %i.mzk, i64 -16
  %i.mzo = getelementptr inbounds nuw i8, ptr %i.mzk, i64 16
  %i.mzp = load float, ptr %i.mzo, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.mzq = load <8 x float>, ptr %i.mzn, align 4, !tbaa !22, !noalias !402 ; 4 uses
  %i.mzr = getelementptr inbounds i8, ptr %i.mzi, i64 -16
  %i.mzs = getelementptr inbounds nuw i8, ptr %i.mzi, i64 16
  %i.mzt = load <8 x float>, ptr %i.mzr, align 4, !tbaa !22, !noalias !402
  %i.mzu = fsub reassoc nsz arcp contract afn <8 x float> %i.mzq, %i.mzt ; 2 uses
  %i.mzv = fmul reassoc nsz arcp contract afn <8 x float> %i.mzu, %i.mzu
  %i.mzw = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.mzv)
  %i.mzx = getelementptr inbounds i8, ptr %i.mzl, i64 -2176
  %i.mzy = load float, ptr %i.mzx, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.mzz = getelementptr inbounds i8, ptr %i.mzl, i64 -1632
  %i.naa = load float, ptr %i.mzz, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.nab = getelementptr inbounds i8, ptr %i.mzl, i64 -1088
  %i.nac = load float, ptr %i.nab, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.nad = getelementptr inbounds i8, ptr %i.mzl, i64 -544
  %i.nae = load float, ptr %i.nad, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.naf = load float, ptr %i.mzl, align 4, !tbaa !22, !noalias !402 ; 4 uses
  %i.nag = getelementptr inbounds nuw i8, ptr %i.mzl, i64 544
  %i.nah = load float, ptr %i.nag, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.nai = getelementptr inbounds nuw i8, ptr %i.mzl, i64 1088
  %i.naj = load float, ptr %i.nai, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.nak = getelementptr inbounds nuw i8, ptr %i.mzl, i64 1632
  %i.nal = load float, ptr %i.nak, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.nam = getelementptr inbounds nuw i8, ptr %i.mzl, i64 2176
  %i.nan = load float, ptr %i.nam, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.nao = fadd reassoc nsz arcp contract afn float %i.naa, %i.mzy
  %i.nap = fadd reassoc nsz arcp contract afn float %i.nao, %i.nac
  %i.naq = fadd reassoc nsz arcp contract afn float %i.nap, %i.nae
  %i.nar = fadd reassoc nsz arcp contract afn float %i.naq, %i.naf
  %i.nas = fadd reassoc nsz arcp contract afn float %i.nar, %i.nah
  %i.nat = fadd reassoc nsz arcp contract afn float %i.nas, %i.naj
  %i.nau = fadd reassoc nsz arcp contract afn float %i.nat, %i.nal
  %i.nav = getelementptr inbounds i8, ptr %i.mzj, i64 -2176
  %i.naw = load float, ptr %i.nav, align 4, !tbaa !22, !noalias !402
  %i.nax = fsub reassoc nsz arcp contract afn float %i.mzy, %i.naw ; 2 uses
  %i.nay = getelementptr inbounds i8, ptr %i.mzj, i64 -1632
  %i.naz = load float, ptr %i.nay, align 4, !tbaa !22, !noalias !402
  %i.nba = fsub reassoc nsz arcp contract afn float %i.naa, %i.naz ; 2 uses
  %i.nbb = getelementptr inbounds i8, ptr %i.mzj, i64 -1088
  %i.nbc = load float, ptr %i.nbb, align 4, !tbaa !22, !noalias !402
  %i.nbd = fsub reassoc nsz arcp contract afn float %i.nac, %i.nbc ; 2 uses
  %i.nbe = getelementptr inbounds i8, ptr %i.mzj, i64 -544
  %i.nbf = load float, ptr %i.nbe, align 4, !tbaa !22, !noalias !402
  %i.nbg = fsub reassoc nsz arcp contract afn float %i.nae, %i.nbf ; 2 uses
  %i.nbh = getelementptr inbounds nuw i8, ptr %i.mzj, i64 544
  %i.nbi = load float, ptr %i.nbh, align 4, !tbaa !22, !noalias !402
  %i.nbj = fsub reassoc nsz arcp contract afn float %i.nah, %i.nbi ; 2 uses
  %i.nbk = getelementptr inbounds nuw i8, ptr %i.mzj, i64 1088
  %i.nbl = load float, ptr %i.nbk, align 4, !tbaa !22, !noalias !402
  %i.nbm = fsub reassoc nsz arcp contract afn float %i.naj, %i.nbl ; 2 uses
  %i.nbn = getelementptr inbounds nuw i8, ptr %i.mzj, i64 1632
  %i.nbo = getelementptr inbounds nuw i8, ptr %i.mzj, i64 2176
  %i.nbp = load float, ptr %i.nbo, align 4, !tbaa !22, !noalias !402
  %i.nbq = fsub reassoc nsz arcp contract afn float %i.nan, %i.nbp ; 2 uses
  %i.nbr = fmul reassoc nsz arcp contract afn float %i.nax, %i.nax
  %i.nbs = fadd reassoc nsz arcp contract afn float %i.nbr, 1.000000e-07
  %i.nbt = fmul reassoc nsz arcp contract afn float %i.nba, %i.nba
  %i.nbu = fadd reassoc nsz arcp contract afn float %i.nbs, %i.nbt
  %i.nbv = fmul reassoc nsz arcp contract afn float %i.nbd, %i.nbd
  %i.nbw = fadd reassoc nsz arcp contract afn float %i.nbu, %i.nbv
  %i.nbx = fmul reassoc nsz arcp contract afn float %i.nbg, %i.nbg
  %i.nby = fadd reassoc nsz arcp contract afn float %i.nbw, %i.nbx
  %i.nbz = fmul reassoc nsz arcp contract afn float %i.nbj, %i.nbj
  %i.nca = fmul reassoc nsz arcp contract afn float %i.nbm, %i.nbm
  %i.ncb = fmul reassoc nsz arcp contract afn float %i.nbq, %i.nbq
  %op.rdx4614 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float %i.mzp, <8 x float> %i.mzq)
  %i.ncc = fadd reassoc nsz arcp contract afn float %i.nau, %i.nan
  %i.ncd = insertelement <2 x float> poison, float %op.rdx4614, i64 0
  %i.nce = insertelement <2 x float> %i.ncd, float %i.ncc, i64 1
  %i.ncf = fmul reassoc nsz arcp contract afn <2 x float> %i.nce, splat (float f0x3DE38E39) ; 3 uses
  %i.ncg = shufflevector <2 x float> %i.ncf, <2 x float> poison, <8 x i32> zeroinitializer
  %i.nch = fsub reassoc nsz arcp contract afn <8 x float> %i.mzq, %i.ncg ; 2 uses
  %i.nci = fmul reassoc nsz arcp contract afn <8 x float> %i.nch, %i.nch
  %i.ncj = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.nci)
  %i.nck = extractelement <2 x float> %i.ncf, i64 1 ; 8 uses
  %i.ncl = fsub reassoc nsz arcp contract afn float %i.mzy, %i.nck ; 2 uses
  %i.ncm = fmul reassoc nsz arcp contract afn float %i.ncl, %i.ncl
  %i.ncn = fadd reassoc nsz arcp contract afn float %i.ncm, 1.000000e-07
  %i.nco = fsub reassoc nsz arcp contract afn float %i.naa, %i.nck ; 2 uses
  %i.ncp = fmul reassoc nsz arcp contract afn float %i.nco, %i.nco
  %i.ncq = fadd reassoc nsz arcp contract afn float %i.ncn, %i.ncp
  %i.ncr = fsub reassoc nsz arcp contract afn float %i.nac, %i.nck ; 2 uses
  %i.ncs = fmul reassoc nsz arcp contract afn float %i.ncr, %i.ncr
  %i.nct = fadd reassoc nsz arcp contract afn float %i.ncq, %i.ncs
  %i.ncu = fsub reassoc nsz arcp contract afn float %i.nae, %i.nck ; 2 uses
  %i.ncv = fmul reassoc nsz arcp contract afn float %i.ncu, %i.ncu
  %i.ncw = fadd reassoc nsz arcp contract afn float %i.nct, %i.ncv
  %i.ncx = fsub reassoc nsz arcp contract afn float %i.naf, %i.nck ; 2 uses
  %i.ncy = fmul reassoc nsz arcp contract afn float %i.ncx, %i.ncx
  %i.ncz = fadd reassoc nsz arcp contract afn float %i.ncw, %i.ncy
  %i.nda = fsub reassoc nsz arcp contract afn float %i.nah, %i.nck ; 2 uses
  %i.ndb = fmul reassoc nsz arcp contract afn float %i.nda, %i.nda
  %i.ndc = fadd reassoc nsz arcp contract afn float %i.ncz, %i.ndb
  %i.ndd = fsub reassoc nsz arcp contract afn float %i.naj, %i.nck ; 2 uses
  %i.nde = fmul reassoc nsz arcp contract afn float %i.ndd, %i.ndd
  %i.ndf = fadd reassoc nsz arcp contract afn float %i.ndc, %i.nde
  %i.ndg = insertelement <2 x float> poison, float %i.mzp, i64 0
  %i.ndh = insertelement <2 x float> %i.ndg, float %i.nal, i64 1
  %i.ndi = fsub reassoc nsz arcp contract afn <2 x float> %i.ndh, %i.ncf ; 2 uses
  %i.ndj = fmul reassoc nsz arcp contract afn <2 x float> %i.ndi, %i.ndi
  %i.ndk = insertelement <2 x float> poison, float %i.ncj, i64 0
  %i.ndl = insertelement <2 x float> %i.ndk, float %i.ndf, i64 1
  %i.ndm = fadd reassoc nsz arcp contract afn <2 x float> %i.ndl, %i.ndj
  %i.ndn = fsub reassoc nsz arcp contract afn float %i.nan, %i.nck ; 2 uses
  %i.ndo = fmul reassoc nsz arcp contract afn float %i.ndn, %i.ndn
  %i.ndp = insertelement <2 x float> <float 1.000000e-07, float poison>, float %i.ndo, i64 1
  %i.ndq = fadd reassoc nsz arcp contract afn <2 x float> %i.ndm, %i.ndp ; 3 uses
  %i.ndr = load float, ptr %i.nbn, align 4, !tbaa !22, !noalias !402
  %i.nds = load float, ptr %i.mzj, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ndt = load float, ptr %i.mzs, align 4, !tbaa !22, !noalias !402
  %i.ndu = load float, ptr %i.mzi, align 4, !tbaa !22, !noalias !402
  %i.ndv = fsub reassoc nsz arcp contract afn float %i.naf, %i.nds ; 2 uses
  %i.ndw = fsub reassoc nsz arcp contract afn float %i.mzp, %i.ndt
  %i.ndx = fsub reassoc nsz arcp contract afn float %i.nal, %i.ndr
  %i.ndy = fmul reassoc nsz arcp contract afn float %i.ndv, %i.ndv
  %i.ndz = fadd reassoc nsz arcp contract afn float %i.nby, %i.ndy
  %i.nea = fadd reassoc nsz arcp contract afn float %i.ndz, %i.nbz
  %i.neb = fadd reassoc nsz arcp contract afn float %i.nea, %i.nca
  %i.nec = insertelement <2 x float> poison, float %i.ndw, i64 0
  %i.ned = insertelement <2 x float> %i.nec, float %i.ndx, i64 1 ; 2 uses
  %i.nee = fmul reassoc nsz arcp contract afn <2 x float> %i.ned, %i.ned
  %i.nef = insertelement <2 x float> poison, float %i.mzw, i64 0
  %i.neg = insertelement <2 x float> %i.nef, float %i.neb, i64 1
  %i.neh = fadd reassoc nsz arcp contract afn <2 x float> %i.neg, %i.nee
  %i.nei = insertelement <2 x float> <float 1.000000e-07, float poison>, float %i.ncb, i64 1
  %i.nej = fadd reassoc nsz arcp contract afn <2 x float> %i.neh, %i.nei ; 3 uses
  %i.nek = insertelement <2 x float> poison, float %i.ndu, i64 0
  %i.nel = insertelement <2 x float> %i.nek, float %i.nds, i64 1
  %i.nem = fmul reassoc nsz arcp contract afn <2 x float> %i.ndq, %i.nel
  %i.nen = shufflevector <8 x float> %i.mzq, <8 x float> poison, <2 x i32> <i32 4, i32 poison>
  %i.neo = insertelement <2 x float> %i.nen, float %i.naf, i64 1
  %i.nep = fmul reassoc nsz arcp contract afn <2 x float> %i.nej, %i.neo
  %i.neq = fadd reassoc nsz arcp contract afn <2 x float> %i.nem, %i.nep
  %i.ner = fadd reassoc nsz arcp contract afn <2 x float> %i.ndq, %i.nej ; 2 uses
  %i.nes = fmul reassoc nsz arcp contract afn <2 x float> %i.ndq, %i.nej
  %i.net = fdiv reassoc nsz arcp contract afn <2 x float> %i.nes, %i.ner ; 3 uses
  %i.neu = shufflevector <2 x float> %i.neq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nev = fmul reassoc nsz arcp contract afn <2 x float> %i.net, %i.neu
  %i.new = shufflevector <2 x float> %i.ner, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nex = fdiv reassoc nsz arcp contract afn <2 x float> %i.nev, %i.new ; 2 uses
  %shift = shufflevector <2 x float> %i.nex, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <2 x float> %shift, %i.nex
  %shift4619 = shufflevector <2 x float> %i.net, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4620 = fadd reassoc nsz arcp contract afn <2 x float> %shift4619, %i.net
  %foldExtExtBinop4622 = fdiv reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %foldExtExtBinop4620
  %i.ney = extractelement <2 x float> %foldExtExtBinop4622, i64 0
  store float %i.ney, ptr %i.mzm, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1243.i = add nuw nsw i64 %indvars.iv1242.i, 2
  %i.nez = icmp slt i64 %indvars.iv1242.i, %i.mmq
  br i1 %i.nez, label %scalar.ph4235, label %._crit_edge1057.i, !llvm.loop !419

.preheader1023.i:                                 ; preds = %._crit_edge1067.i, %.lr.ph1071.i
  br i1 %i.lvp, label %.lr.ph1077.i, label %._crit_edge1085.i

.lr.ph1077.i:                                     ; preds = %.preheader1023.i
  %i.nfa = add nsw i32 %i.lyf, 7                  ; 3 uses
  %i.nfb = sext i32 %i.nfa to i64                 ; 3 uses
  %i.nfc = add nsw i32 %i.lyf, 6
  br label %bb.pq

.lr.ph1066.i:                                     ; preds = %._crit_edge1067.i, %.lr.ph1066.preheader.i
  %indvars.iv1257.i = phi i64 [ 0, %.lr.ph1066.preheader.i ], [ %indvars.iv.next1258.i, %._crit_edge1067.i ] ; 3 uses
  %.09261069.i = phi i32 [ %i.lvn, %.lr.ph1066.preheader.i ], [ %i.nif, %._crit_edge1067.i ] ; 3 uses
  %indvars.iv1257.tr.i = trunc nuw i64 %indvars.iv1257.i to i32
  %i.nfd = shl nuw i32 %indvars.iv1257.tr.i, 1
  %i.nfe = and i32 %i.nfd, 14                     ; 7 uses
  %i.nff = icmp sgt i32 %.09261069.i, -1
  %i.nfg = mul nuw nsw i64 %indvars.iv1257.i, 136 ; 10 uses
  %i.nfh = getelementptr inbounds nuw [4 x i8], ptr %i.lui, i64 %i.nfg ; 7 uses
  %i.nfi = getelementptr inbounds nuw [4 x i8], ptr %i.lul, i64 %i.nfg
  br i1 %i.nff, label %.lr.ph1066.split.us.i, label %.thread982.i.preheader

.thread982.i.preheader:                           ; preds = %.lr.ph1066.i
  br i1 %i.mrh, label %.thread982.i.epil.preheader, label %.thread982.i.preheader.new

.thread982.i.preheader.new:                       ; preds = %.thread982.i.preheader
  %i.nfj = shl nuw nsw i32 %i.nfe, 1
  %i.nfk = lshr i32 %.fr1063, %i.nfj
  %i.nfl = and i32 %i.nfk, 3                      ; 2 uses
  %i.nfm = zext nneg i32 %i.nfl to i64
  %i.nfn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nfm
  %i.nfo = load ptr, ptr %i.nfn, align 8, !tbaa !407, !noalias !408
  %i.nfp = getelementptr inbounds nuw [4 x i8], ptr %i.nfo, i64 %i.nfg
  %.not955983.i = icmp eq i32 %i.nfl, 1
  %.tr.i962.i.1 = shl nuw nsw i32 %i.nfe, 1
  %i.nfq = or disjoint i32 %.tr.i962.i.1, 2
  %i.nfr = lshr i32 %.fr1063, %i.nfq
  %i.nfs = and i32 %i.nfr, 3                      ; 2 uses
  %i.nft = zext nneg i32 %i.nfs to i64
  %i.nfu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nft
  %i.nfv = load ptr, ptr %i.nfu, align 8, !tbaa !407, !noalias !408
  %i.nfw = getelementptr inbounds nuw [4 x i8], ptr %i.nfv, i64 %i.nfg
  %.not955983.i.1 = icmp eq i32 %i.nfs, 1
  br label %.thread982.i

.lr.ph1066.split.us.i:                            ; preds = %.lr.ph1066.i
  %i.nfx = icmp slt i32 %.09261069.i, %i.axi
  br i1 %i.nfx, label %.lr.ph1066.split.us.split.preheader.i, label %.lr.ph1066.split.us.split.us.i.preheader

.lr.ph1066.split.us.split.us.i.preheader:         ; preds = %.lr.ph1066.split.us.i
  br i1 %i.mrj, label %.lr.ph1066.split.us.split.us.i.epil.preheader, label %.lr.ph1066.split.us.split.us.i.preheader.new

.lr.ph1066.split.us.split.us.i.preheader.new:     ; preds = %.lr.ph1066.split.us.split.us.i.preheader
  %i.nfy = shl nuw nsw i32 %i.nfe, 1
  %i.nfz = lshr i32 %.fr1063, %i.nfy
  %i.nga = and i32 %i.nfz, 3                      ; 2 uses
  %i.ngb = zext nneg i32 %i.nga to i64
  %i.ngc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ngb
  %i.ngd = load ptr, ptr %i.ngc, align 8, !tbaa !407, !noalias !408
  %i.nge = getelementptr inbounds nuw [4 x i8], ptr %i.ngd, i64 %i.nfg
  %.not955.us.us.i = icmp eq i32 %i.nga, 1
  %.tr.i962.us.us.i.1 = shl nuw nsw i32 %i.nfe, 1
  %i.ngf = or disjoint i32 %.tr.i962.us.us.i.1, 2
  %i.ngg = lshr i32 %.fr1063, %i.ngf
  %i.ngh = and i32 %i.ngg, 3                      ; 2 uses
  %i.ngi = zext nneg i32 %i.ngh to i64
  %i.ngj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ngi
  %i.ngk = load ptr, ptr %i.ngj, align 8, !tbaa !407, !noalias !408
  %i.ngl = getelementptr inbounds nuw [4 x i8], ptr %i.ngk, i64 %i.nfg
  %.not955.us.us.i.1 = icmp eq i32 %i.ngh, 1
  br label %.lr.ph1066.split.us.split.us.i

.lr.ph1066.split.us.split.preheader.i:            ; preds = %.lr.ph1066.split.us.i
  %invariant.gep1376.i = getelementptr inbounds nuw [4 x i8], ptr %i.lum, i64 %i.nfg
  br label %.lr.ph1066.split.us.split.i

.lr.ph1066.split.us.split.us.i:                   ; preds = %bb.pk, %.lr.ph1066.split.us.split.us.i.preheader.new
  %indvars.iv1251.i = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader.new ], [ %indvars.iv.next1252.i.1, %bb.pk ] ; 4 uses
  %niter4741 = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader.new ], [ %niter4741.next.1, %bb.pk ]
  %i.ngm = getelementptr inbounds nuw [4 x i8], ptr %i.nge, i64 %indvars.iv1251.i
  store float 0.000000e+00, ptr %i.ngm, align 4, !tbaa !22, !noalias !402
  br i1 %.not955.us.us.i, label %.lr.ph1066.split.us.split.us.i.1, label %bb.pi

bb.pi:                                            ; preds = %.lr.ph1066.split.us.split.us.i
  %i.ngn = getelementptr inbounds nuw [4 x i8], ptr %i.nfh, i64 %indvars.iv1251.i
  store float 0.000000e+00, ptr %i.ngn, align 8, !tbaa !22, !noalias !402
  br label %.lr.ph1066.split.us.split.us.i.1

.lr.ph1066.split.us.split.us.i.1:                 ; preds = %bb.pi, %.lr.ph1066.split.us.split.us.i
  %indvars.iv.next1252.i = or disjoint i64 %indvars.iv1251.i, 1 ; 2 uses
  %i.ngo = getelementptr inbounds nuw [4 x i8], ptr %i.ngl, i64 %indvars.iv.next1252.i
  store float 0.000000e+00, ptr %i.ngo, align 4, !tbaa !22, !noalias !402
  br i1 %.not955.us.us.i.1, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %.lr.ph1066.split.us.split.us.i.1
  %i.ngp = getelementptr inbounds nuw [4 x i8], ptr %i.nfh, i64 %indvars.iv.next1252.i
  store float 0.000000e+00, ptr %i.ngp, align 4, !tbaa !22, !noalias !402
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %.lr.ph1066.split.us.split.us.i.1
  %indvars.iv.next1252.i.1 = add nuw nsw i64 %indvars.iv1251.i, 2 ; 2 uses
  %niter4741.next.1 = add i64 %niter4741, 2       ; 2 uses
  %niter4741.ncmp.1.not = icmp eq i64 %niter4741.next.1, %unroll_iter4740
  br i1 %niter4741.ncmp.1.not, label %._crit_edge1067.i.loopexit4635.unr-lcssa, label %.lr.ph1066.split.us.split.us.i

.lr.ph1066.split.us.split.i:                      ; preds = %bb.pn, %.lr.ph1066.split.us.split.preheader.i
  %indvars.iv1254.i = phi i64 [ 0, %.lr.ph1066.split.us.split.preheader.i ], [ %indvars.iv.next1255.i, %bb.pn ] ; 6 uses
  %.09241064.us.i = phi i32 [ %i.mre, %.lr.ph1066.split.us.split.preheader.i ], [ %i.nhh, %bb.pn ] ; 2 uses
  %i.ngq = trunc nuw nsw i64 %indvars.iv1254.i to i32
  %i.ngr = and i32 %i.ngq, 1
  %.tr.i962.us.i = or disjoint i32 %i.ngr, %i.nfe
  %i.ngs = shl nuw nsw i32 %.tr.i962.us.i, 1
  %i.ngt = lshr i32 %.fr1063, %i.ngs
  %i.ngu = and i32 %i.ngt, 3                      ; 3 uses
  %i.ngv = icmp ult i32 %.09241064.us.i, %i.bo
  %i.ngw = zext nneg i32 %i.ngu to i64
  %i.ngx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ngw
  %i.ngy = load ptr, ptr %i.ngx, align 8, !tbaa !407, !noalias !408
  %i.ngz = getelementptr inbounds nuw [4 x i8], ptr %i.ngy, i64 %i.nfg
  %i.nha = getelementptr inbounds nuw [4 x i8], ptr %i.ngz, i64 %indvars.iv1254.i ; 2 uses
  br i1 %i.ngv, label %bb.pl, label %.thread.i562

bb.pl:                                            ; preds = %.lr.ph1066.split.us.split.i
  %gep1377.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1376.i, i64 %indvars.iv1254.i
  %i.nhb = load float, ptr %gep1377.i, align 4, !tbaa !22, !noalias !402 ; 2 uses
  store float %i.nhb, ptr %i.nha, align 4, !tbaa !22, !noalias !402
  %.not955.us.i = icmp eq i32 %i.ngu, 1
  br i1 %.not955.us.i, label %bb.pn, label %bb.pm

.thread.i562:                                     ; preds = %.lr.ph1066.split.us.split.i
  store float 0.000000e+00, ptr %i.nha, align 4, !tbaa !22, !noalias !402
  %.not955.us1356.i = icmp eq i32 %i.ngu, 1
  br i1 %.not955.us1356.i, label %bb.pn, label %.thread1357.i

bb.pm:                                            ; preds = %bb.pl
  %i.nhc = getelementptr inbounds nuw [4 x i8], ptr %i.nfi, i64 %indvars.iv1254.i
  %i.nhd = load float, ptr %i.nhc, align 4, !tbaa !22, !noalias !402
  %i.nhe = fadd reassoc nsz arcp contract afn float %i.nhd, %i.nhb
  br label %.thread1357.i

.thread1357.i:                                    ; preds = %bb.pm, %.thread.i562
  %i.nhf = phi reassoc nsz arcp contract afn float [ %i.nhe, %bb.pm ], [ 0.000000e+00, %.thread.i562 ]
  %i.nhg = getelementptr inbounds nuw [4 x i8], ptr %i.nfh, i64 %indvars.iv1254.i
  store float %i.nhf, ptr %i.nhg, align 4, !tbaa !22, !noalias !402
  br label %bb.pn

bb.pn:                                            ; preds = %.thread1357.i, %.thread.i562, %bb.pl
  %indvars.iv.next1255.i = add nuw nsw i64 %indvars.iv1254.i, 1 ; 2 uses
  %i.nhh = add nsw i32 %.09241064.us.i, 1
  %i.nhi = icmp slt i64 %indvars.iv.next1255.i, %i.mrg
  br i1 %i.nhi, label %.lr.ph1066.split.us.split.i, label %._crit_edge1067.i

._crit_edge1067.i.loopexit4635.unr-lcssa:         ; preds = %bb.pk
  br i1 %lcmp.mod4738.not, label %._crit_edge1067.i, label %.lr.ph1066.split.us.split.us.i.epil.preheader

.lr.ph1066.split.us.split.us.i.epil.preheader:    ; preds = %._crit_edge1067.i.loopexit4635.unr-lcssa, %.lr.ph1066.split.us.split.us.i.preheader
  %indvars.iv1251.i.epil.init = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader ], [ %indvars.iv.next1252.i.1, %._crit_edge1067.i.loopexit4635.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4739)
  %i.nhj = trunc nuw nsw i64 %indvars.iv1251.i.epil.init to i32
  %i.nhk = and i32 %i.nhj, 1
  %.tr.i962.us.us.i.epil = or disjoint i32 %i.nhk, %i.nfe
  %i.nhl = shl nuw nsw i32 %.tr.i962.us.us.i.epil, 1
  %i.nhm = lshr i32 %.fr1063, %i.nhl
  %i.nhn = and i32 %i.nhm, 3                      ; 2 uses
  %i.nho = zext nneg i32 %i.nhn to i64
  %i.nhp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nho
  %i.nhq = load ptr, ptr %i.nhp, align 8, !tbaa !407, !noalias !408
  %i.nhr = getelementptr inbounds nuw [4 x i8], ptr %i.nhq, i64 %i.nfg
  %i.nhs = getelementptr inbounds nuw [4 x i8], ptr %i.nhr, i64 %indvars.iv1251.i.epil.init
  store float 0.000000e+00, ptr %i.nhs, align 4, !tbaa !22, !noalias !402
  %.not955.us.us.i.epil = icmp eq i32 %i.nhn, 1
  br i1 %.not955.us.us.i.epil, label %._crit_edge1067.i, label %bb.po

bb.po:                                            ; preds = %.lr.ph1066.split.us.split.us.i.epil.preheader
  %i.nht = getelementptr inbounds nuw [4 x i8], ptr %i.nfh, i64 %indvars.iv1251.i.epil.init
  store float 0.000000e+00, ptr %i.nht, align 4, !tbaa !22, !noalias !402
  br label %._crit_edge1067.i

._crit_edge1067.i.loopexit4636.unr-lcssa:         ; preds = %bb.pp
  br i1 %lcmp.mod4730.not, label %._crit_edge1067.i, label %.thread982.i.epil.preheader

.thread982.i.epil.preheader:                      ; preds = %._crit_edge1067.i.loopexit4636.unr-lcssa, %.thread982.i.preheader
  %indvars.iv1248.i.epil.init = phi i64 [ 0, %.thread982.i.preheader ], [ %indvars.iv.next1249.i.1, %._crit_edge1067.i.loopexit4636.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4731)
  %i.nhu = trunc nuw nsw i64 %indvars.iv1248.i.epil.init to i32
  %i.nhv = and i32 %i.nhu, 1
  %.tr.i962.i.epil = or disjoint i32 %i.nhv, %i.nfe
  %i.nhw = shl nuw nsw i32 %.tr.i962.i.epil, 1
  %i.nhx = lshr i32 %.fr1063, %i.nhw
  %i.nhy = and i32 %i.nhx, 3                      ; 2 uses
  %i.nhz = zext nneg i32 %i.nhy to i64
  %i.nia = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nhz
  %i.nib = load ptr, ptr %i.nia, align 8, !tbaa !407, !noalias !408
  %i.nic = getelementptr inbounds nuw [4 x i8], ptr %i.nib, i64 %i.nfg
  %i.nid = getelementptr inbounds nuw [4 x i8], ptr %i.nic, i64 %indvars.iv1248.i.epil.init
  store float 0.000000e+00, ptr %i.nid, align 4, !tbaa !22, !noalias !402
  %.not955983.i.epil = icmp eq i32 %i.nhy, 1
  br i1 %.not955983.i.epil, label %._crit_edge1067.i, label %.thread984.i.epil

.thread984.i.epil:                                ; preds = %.thread982.i.epil.preheader
  %i.nie = getelementptr inbounds nuw [4 x i8], ptr %i.nfh, i64 %indvars.iv1248.i.epil.init
  store float 0.000000e+00, ptr %i.nie, align 4, !tbaa !22, !noalias !402
  br label %._crit_edge1067.i

._crit_edge1067.i:                                ; preds = %._crit_edge1067.i.loopexit4636.unr-lcssa, %.thread984.i.epil, %.thread982.i.epil.preheader, %._crit_edge1067.i.loopexit4635.unr-lcssa, %bb.po, %.lr.ph1066.split.us.split.us.i.epil.preheader, %bb.pn
  %indvars.iv.next1258.i = add nuw nsw i64 %indvars.iv1257.i, 1 ; 2 uses
  %i.nif = add i32 %.09261069.i, 1
  %exitcond1127.not = icmp eq i64 %indvars.iv.next1258.i, %smax1126
  br i1 %exitcond1127.not, label %.preheader1023.i, label %.lr.ph1066.i

.thread982.i:                                     ; preds = %bb.pp, %.thread982.i.preheader.new
  %indvars.iv1248.i = phi i64 [ 0, %.thread982.i.preheader.new ], [ %indvars.iv.next1249.i.1, %bb.pp ] ; 4 uses
  %niter4733 = phi i64 [ 0, %.thread982.i.preheader.new ], [ %niter4733.next.1, %bb.pp ]
  %i.nig = getelementptr inbounds nuw [4 x i8], ptr %i.nfp, i64 %indvars.iv1248.i
  store float 0.000000e+00, ptr %i.nig, align 4, !tbaa !22, !noalias !402
  br i1 %.not955983.i, label %.thread982.i.1, label %.thread984.i

.thread984.i:                                     ; preds = %.thread982.i
  %i.nih = getelementptr inbounds nuw [4 x i8], ptr %i.nfh, i64 %indvars.iv1248.i
  store float 0.000000e+00, ptr %i.nih, align 8, !tbaa !22, !noalias !402
  br label %.thread982.i.1

.thread982.i.1:                                   ; preds = %.thread984.i, %.thread982.i
  %indvars.iv.next1249.i = or disjoint i64 %indvars.iv1248.i, 1 ; 2 uses
  %i.nii = getelementptr inbounds nuw [4 x i8], ptr %i.nfw, i64 %indvars.iv.next1249.i
  store float 0.000000e+00, ptr %i.nii, align 4, !tbaa !22, !noalias !402
  br i1 %.not955983.i.1, label %bb.pp, label %.thread984.i.1

.thread984.i.1:                                   ; preds = %.thread982.i.1
  %i.nij = getelementptr inbounds nuw [4 x i8], ptr %i.nfh, i64 %indvars.iv.next1249.i
  store float 0.000000e+00, ptr %i.nij, align 4, !tbaa !22, !noalias !402
  br label %bb.pp

bb.pp:                                            ; preds = %.thread984.i.1, %.thread982.i.1
  %indvars.iv.next1249.i.1 = add nuw nsw i64 %indvars.iv1248.i, 2 ; 2 uses
  %niter4733.next.1 = add i64 %niter4733, 2       ; 2 uses
  %niter4733.ncmp.1.not = icmp eq i64 %niter4733.next.1, %unroll_iter4732
  br i1 %niter4733.ncmp.1.not, label %._crit_edge1067.i.loopexit4636.unr-lcssa, label %.thread982.i

.preheader1022.i:                                 ; preds = %._crit_edge1075.i
  %i.nik = zext i32 %i.nfa to i64                 ; 3 uses
  br label %bb.pr

bb.pq:                                            ; preds = %._crit_edge1075.i, %.lr.ph1077.i
  %indvar4179 = phi i64 [ %indvar.next4180, %._crit_edge1075.i ], [ 0, %.lr.ph1077.i ] ; 2 uses
  %indvars.iv1263.i = phi i64 [ %indvars.iv.next1264.i, %._crit_edge1075.i ], [ 1, %.lr.ph1077.i ] ; 3 uses
  %i.nil = mul nuw nsw i64 %indvar4179, 544       ; 6 uses
  %i.nim = getelementptr i8, ptr %i.lug, i64 %i.nil
  %scevgep4186 = getelementptr i8, ptr %i.nim, i64 73988
  %i.nin = getelementptr i8, ptr %i.lug, i64 %i.nil
  %scevgep4188 = getelementptr i8, ptr %i.nin, i64 75080
  %indvars.iv1263.tr.i = trunc nuw i64 %indvars.iv1263.i to i32
  %i.nio = shl nuw i32 %indvars.iv1263.tr.i, 1
  %i.nip = and i32 %i.nio, 14                     ; 2 uses
  %i.niq = shl nuw nsw i32 %i.nip, 1
  %i.nir = lshr i32 %.fr1063, %i.niq              ; 3 uses
  %i.nis = and i32 %i.nir, 1                      ; 3 uses
  %i.nit = icmp slt i32 %i.nis, %i.nfc
  br i1 %i.nit, label %.lr.ph1074.i, label %._crit_edge1075.i

.lr.ph1074.i:                                     ; preds = %bb.pq
  %i.niu = or disjoint i32 %i.nis, %i.nip
  %i.niv = shl nuw nsw i32 %i.niu, 1
  %i.niw = lshr i32 %.fr1063, %i.niv
  %i.nix = and i32 %i.niw, 3                      ; 2 uses
  %i.niy = zext nneg i32 %i.nix to i64
  %i.niz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.niy
  %i.nja = load ptr, ptr %i.niz, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.njb = mul nuw nsw i64 %indvars.iv1263.i, 136 ; 3 uses
  %i.njc = getelementptr inbounds nuw [4 x i8], ptr %i.nja, i64 %i.njb ; 2 uses
  %i.njd = getelementptr inbounds nuw [4 x i8], ptr %i.lui, i64 %i.njb ; 2 uses
  %i.nje = sub nsw i32 2, %i.nix
  %i.njf = sext i32 %i.nje to i64
  %i.njg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.njf
  %i.njh = load ptr, ptr %i.njg, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nji = getelementptr inbounds nuw [4 x i8], ptr %i.njh, i64 %i.njb ; 2 uses
  %narrow1352.i = add nuw nsw i32 %i.nis, 1
  %i.njj = zext nneg i32 %narrow1352.i to i64     ; 5 uses
  %i.njk = and i32 %i.nir, 1
  %i.njl = zext nneg i32 %i.njk to i64            ; 2 uses
  %i.njm = add nuw nsw i64 %i.njl, 3
  %i.njn = call i64 @llvm.smax.i64(i64 %i.nfb, i64 %i.njm)
  %i.njo = add nsw i64 %i.njn, -2
  %i.njp = sub i64 %i.njo, %i.njl                 ; 2 uses
  %i.njq = lshr i64 %i.njp, 1
  %i.njr = add nuw nsw i64 %i.njq, 1              ; 2 uses
  %min.iters.check4202 = icmp ult i64 %i.njp, 16
  br i1 %min.iters.check4202, label %scalar.ph4201.preheader, label %vector.memcheck4178

scalar.ph4201.preheader:                          ; preds = %vector.body4208, %vector.memcheck4178, %.lr.ph1074.i
  %indvars.iv1260.i.ph = phi i64 [ %i.njj, %vector.memcheck4178 ], [ %i.njj, %.lr.ph1074.i ], [ %i.nkp, %vector.body4208 ]
  br label %scalar.ph4201

vector.memcheck4178:                              ; preds = %.lr.ph1074.i
  %i.njs = and i32 %i.nir, 1
  %i.njt = zext nneg i32 %i.njs to i64            ; 3 uses
  %i.nju = shl nuw nsw i64 %i.njt, 2              ; 6 uses
  %i.njv = getelementptr i8, ptr %i.nja, i64 %i.nil
  %i.njw = getelementptr i8, ptr %i.njv, i64 544
  %scevgep4181 = getelementptr i8, ptr %i.njw, i64 %i.nju ; 2 uses
  %i.njx = add nuw nsw i64 %i.njt, 3
  %smax4182 = call i64 @llvm.smax.i64(i64 %i.nfb, i64 %i.njx)
  %i.njy = add nsw i64 %smax4182, -2
  %i.njz = sub i64 %i.njy, %i.njt
  %i.nka = shl nuw nsw i64 %i.njz, 2
  %i.nkb = and i64 %i.nka, 9223372036854775800    ; 3 uses
  %i.nkc = getelementptr i8, ptr %i.nja, i64 %i.nil
  %i.nkd = getelementptr i8, ptr %i.nkc, i64 556
  %i.nke = getelementptr i8, ptr %i.nkd, i64 %i.nkb
  %scevgep4183 = getelementptr i8, ptr %i.nke, i64 %i.nju ; 2 uses
  %i.nkf = getelementptr i8, ptr %i.njh, i64 %i.nil
  %i.nkg = getelementptr i8, ptr %i.nkf, i64 4
  %scevgep4184 = getelementptr i8, ptr %i.nkg, i64 %i.nju ; 2 uses
  %i.nkh = getelementptr i8, ptr %i.njh, i64 %i.nil
  %i.nki = getelementptr i8, ptr %i.nkh, i64 1096
  %i.nkj = getelementptr i8, ptr %i.nki, i64 %i.nkb
  %scevgep4185 = getelementptr i8, ptr %i.nkj, i64 %i.nju ; 2 uses
  %scevgep4187 = getelementptr i8, ptr %scevgep4186, i64 %i.nju ; 2 uses
  %i.nkk = getelementptr i8, ptr %scevgep4188, i64 %i.nkb
  %scevgep4189 = getelementptr i8, ptr %i.nkk, i64 %i.nju ; 2 uses
  %bound04190 = icmp ult ptr %scevgep4181, %scevgep4185
  %bound14191 = icmp ult ptr %scevgep4184, %scevgep4183
  %found.conflict4192 = and i1 %bound04190, %bound14191
  %bound04193 = icmp ult ptr %scevgep4181, %scevgep4189
  %bound14194 = icmp ult ptr %scevgep4187, %scevgep4183
  %found.conflict4195 = and i1 %bound04193, %bound14194
  %conflict.rdx4196 = or i1 %found.conflict4192, %found.conflict4195
  %bound04197 = icmp ult ptr %scevgep4184, %scevgep4189
  %bound14198 = icmp ult ptr %scevgep4187, %scevgep4185
  %found.conflict4199 = and i1 %bound04197, %bound14198
  %conflict.rdx4200 = or i1 %conflict.rdx4196, %found.conflict4199
  br i1 %conflict.rdx4200, label %scalar.ph4201.preheader, label %vector.ph4203

vector.ph4203:                                    ; preds = %vector.memcheck4178
  %i.nkl = and i64 %i.njr, 7                      ; 2 uses
  %i.nkm = icmp eq i64 %i.nkl, 0
  %i.nkn = select i1 %i.nkm, i64 8, i64 %i.nkl
  %n.vec4204 = sub nsw i64 %i.njr, %i.nkn         ; 2 uses
  %i.nko = shl i64 %n.vec4204, 1
  %i.nkp = add i64 %i.nko, %i.njj
  %broadcast.splatinsert4205 = insertelement <8 x i64> poison, i64 %i.njj, i64 0
  %broadcast.splat4206 = shufflevector <8 x i64> %broadcast.splatinsert4205, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4207 = add nuw nsw <8 x i64> %broadcast.splat4206, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4867 = getelementptr [4 x i8], ptr %i.njd, i64 %i.njj
  br label %vector.body4208

vector.body4208:                                  ; preds = %vector.body4208, %vector.ph4203
  %index4209 = phi i64 [ 0, %vector.ph4203 ], [ %index.next4231, %vector.body4208 ] ; 2 uses
  %vec.ind4210 = phi <8 x i64> [ %induction4207, %vector.ph4203 ], [ %vec.ind.next4232, %vector.body4208 ] ; 3 uses
  %wide.gep4211 = getelementptr inbounds nuw [4 x i8], ptr %i.njc, <8 x i64> %vec.ind4210 ; 2 uses
  %i.nkq = extractelement <8 x ptr> %wide.gep4211, i64 0 ; 2 uses
  %.idx4563 = shl nuw i64 %index4209, 3
  %gep4868 = getelementptr i8, ptr %invariant.gep4867, i64 %.idx4563 ; 4 uses
  %i.nkr = getelementptr inbounds i8, ptr %gep4868, i64 -4
  %wide.vec4212 = load <16 x float>, ptr %i.nkr, align 4, !tbaa !22, !alias.scope !420, !noalias !402 ; 2 uses
  %strided.vec4213 = shufflevector <16 x float> %wide.vec4212, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4214 = shufflevector <16 x float> %wide.vec4212, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nks = getelementptr inbounds i8, ptr %i.nkq, i64 -4
  %wide.vec4215 = load <16 x float>, ptr %i.nks, align 4, !tbaa !22, !alias.scope !423, !noalias !402
  %strided.vec4216 = shufflevector <16 x float> %wide.vec4215, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nkt = getelementptr inbounds nuw i8, ptr %i.nkq, i64 4
  %wide.vec4217 = load <16 x float>, ptr %i.nkt, align 4, !tbaa !22, !alias.scope !423, !noalias !402
  %strided.vec4218 = shufflevector <16 x float> %wide.vec4217, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4219 = load <16 x float>, ptr %gep4868, align 4, !tbaa !22, !alias.scope !420, !noalias !402 ; 2 uses
  %strided.vec4220 = shufflevector <16 x float> %wide.vec4219, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4221 = shufflevector <16 x float> %wide.vec4219, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nku = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4216, %strided.vec4218
  %i.nkv = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4213, %strided.vec4221
  %i.nkw = fsub reassoc nsz arcp contract afn <8 x float> %i.nku, %i.nkv
  %i.nkx = fmul reassoc nsz arcp contract afn <8 x float> %i.nkw, splat (float 5.000000e-01)
  %i.nky = fadd reassoc nsz arcp contract afn <8 x float> %i.nkx, %strided.vec4214
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nky, <8 x ptr> align 4 %wide.gep4211, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !423, !noalias !425
  %wide.gep4222 = getelementptr inbounds nuw [4 x i8], ptr %i.nji, <8 x i64> %vec.ind4210 ; 2 uses
  %i.nkz = extractelement <8 x ptr> %wide.gep4222, i64 0 ; 2 uses
  %i.nla = getelementptr inbounds i8, ptr %i.nkz, i64 -544
  %wide.vec4223 = load <16 x float>, ptr %i.nla, align 4, !tbaa !22, !alias.scope !427, !noalias !402
  %strided.vec4224 = shufflevector <16 x float> %wide.vec4223, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nlb = getelementptr inbounds i8, ptr %gep4868, i64 -544
  %wide.vec4225 = load <16 x float>, ptr %i.nlb, align 4, !tbaa !22, !alias.scope !420, !noalias !402
  %strided.vec4226 = shufflevector <16 x float> %wide.vec4225, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nlc = getelementptr inbounds nuw i8, ptr %i.nkz, i64 544
  %wide.vec4227 = load <16 x float>, ptr %i.nlc, align 4, !tbaa !22, !alias.scope !427, !noalias !402
  %strided.vec4228 = shufflevector <16 x float> %wide.vec4227, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nld = getelementptr inbounds nuw i8, ptr %gep4868, i64 544
  %wide.vec4229 = load <16 x float>, ptr %i.nld, align 4, !tbaa !22, !alias.scope !420, !noalias !402
  %strided.vec4230 = shufflevector <16 x float> %wide.vec4229, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nle = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4224, %strided.vec4228
  %i.nlf = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4226, %strided.vec4230
  %i.nlg = fsub reassoc nsz arcp contract afn <8 x float> %i.nle, %i.nlf
  %i.nlh = fmul reassoc nsz arcp contract afn <8 x float> %i.nlg, splat (float 5.000000e-01)
  %i.nli = fadd reassoc nsz arcp contract afn <8 x float> %i.nlh, %strided.vec4220
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nli, <8 x ptr> align 4 %wide.gep4222, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !427, !noalias !428
  %index.next4231 = add nuw i64 %index4209, 8     ; 2 uses
  %vec.ind.next4232 = add nuw nsw <8 x i64> %vec.ind4210, splat (i64 16)
  %i.nlj = icmp eq i64 %index.next4231, %n.vec4204
  br i1 %i.nlj, label %scalar.ph4201.preheader, label %vector.body4208, !llvm.loop !429

._crit_edge1075.i:                                ; preds = %scalar.ph4201, %bb.pq
  %indvars.iv.next1264.i = add nuw nsw i64 %indvars.iv1263.i, 1 ; 2 uses
  %exitcond1132.not = icmp eq i64 %indvars.iv.next1264.i, %smax1137
  %indvar.next4180 = add i64 %indvar4179, 1
  br i1 %exitcond1132.not, label %.preheader1022.i, label %bb.pq

scalar.ph4201:                                    ; preds = %scalar.ph4201.preheader, %scalar.ph4201
  %indvars.iv1260.i = phi i64 [ %indvars.iv.next1261.i, %scalar.ph4201 ], [ %indvars.iv1260.i.ph, %scalar.ph4201.preheader ] ; 4 uses
  %i.nlk = getelementptr inbounds nuw [4 x i8], ptr %i.njc, i64 %indvars.iv1260.i ; 3 uses
  %i.nll = getelementptr inbounds nuw [4 x i8], ptr %i.njd, i64 %indvars.iv1260.i ; 6 uses
  %i.nlm = load float, ptr %i.nll, align 4, !tbaa !22, !noalias !402
  %i.nln = getelementptr inbounds i8, ptr %i.nlk, i64 -4
  %i.nlo = load float, ptr %i.nln, align 4, !tbaa !22, !noalias !402
  %i.nlp = getelementptr inbounds i8, ptr %i.nll, i64 -4
  %i.nlq = load float, ptr %i.nlp, align 4, !tbaa !22, !noalias !402
  %i.nlr = getelementptr inbounds nuw i8, ptr %i.nlk, i64 4
  %i.nls = load float, ptr %i.nlr, align 4, !tbaa !22, !noalias !402
  %i.nlt = getelementptr inbounds nuw i8, ptr %i.nll, i64 4
  %i.nlu = load float, ptr %i.nlt, align 4, !tbaa !22, !noalias !402
  %i.nlv = fadd reassoc nsz arcp contract afn float %i.nlo, %i.nls
  %i.nlw = fadd reassoc nsz arcp contract afn float %i.nlq, %i.nlu
  %i.nlx = fsub reassoc nsz arcp contract afn float %i.nlv, %i.nlw
  %i.nly = fmul reassoc nsz arcp contract afn float %i.nlx, 5.000000e-01
  %i.nlz = fadd reassoc nsz arcp contract afn float %i.nly, %i.nlm
  store float %i.nlz, ptr %i.nlk, align 4, !tbaa !22, !noalias !402
  %i.nma = getelementptr inbounds nuw [4 x i8], ptr %i.nji, i64 %indvars.iv1260.i ; 3 uses
  %i.nmb = load float, ptr %i.nll, align 4, !tbaa !22, !noalias !402
  %i.nmc = getelementptr inbounds i8, ptr %i.nma, i64 -544
  %i.nmd = load float, ptr %i.nmc, align 4, !tbaa !22, !noalias !402
  %i.nme = getelementptr inbounds i8, ptr %i.nll, i64 -544
  %i.nmf = load float, ptr %i.nme, align 4, !tbaa !22, !noalias !402
  %i.nmg = getelementptr inbounds nuw i8, ptr %i.nma, i64 544
  %i.nmh = load float, ptr %i.nmg, align 4, !tbaa !22, !noalias !402
  %i.nmi = getelementptr inbounds nuw i8, ptr %i.nll, i64 544
  %i.nmj = load float, ptr %i.nmi, align 4, !tbaa !22, !noalias !402
  %i.nmk = fadd reassoc nsz arcp contract afn float %i.nmd, %i.nmh
  %i.nml = fadd reassoc nsz arcp contract afn float %i.nmf, %i.nmj
  %i.nmm = fsub reassoc nsz arcp contract afn float %i.nmk, %i.nml
  %i.nmn = fmul reassoc nsz arcp contract afn float %i.nmm, 5.000000e-01
  %i.nmo = fadd reassoc nsz arcp contract afn float %i.nmn, %i.nmb
  store float %i.nmo, ptr %i.nma, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1261.i = add nuw nsw i64 %indvars.iv1260.i, 2 ; 2 uses
  %i.nmp = icmp slt i64 %indvars.iv.next1261.i, %i.nfb
  br i1 %i.nmp, label %scalar.ph4201, label %._crit_edge1075.i, !llvm.loop !430

._crit_edge1085.i:                                ; preds = %._crit_edge1082.i, %.preheader1023.i, %._crit_edge1060.i
  %i.nmq = icmp eq i32 %.08871185.i, 0            ; 2 uses
  %i.nmr = select i1 %i.nmq, i32 6, i32 0         ; 21 uses
  %i.nms = icmp eq i32 %.08871185.i, %i.aoo       ; 2 uses
  %.neg.i554 = select i1 %i.nms, i32 -6, i32 0    ; 10 uses
  %i.nmt = add nsw i32 %i.lyg, %.neg.i554         ; 4 uses
  br i1 %.not1193.i, label %.preheader1021.i, label %.preheader1018.lr.ph.i

.preheader1018.lr.ph.i:                           ; preds = %._crit_edge1085.i
  %i.nmu = icmp slt i32 %i.lye, -5
  %i.nmv = zext nneg i32 %i.nmr to i64            ; 11 uses
  %invariant.gep.i555 = getelementptr inbounds nuw [4 x i8], ptr %i.lug, i64 %i.nmv
  %invariant.gep1131.i = getelementptr inbounds nuw [4 x i8], ptr %i.lui, i64 %i.nmv
  %invariant.gep1133.i = getelementptr inbounds nuw [4 x i8], ptr %i.luj, i64 %i.nmv
  %invariant.gep1135.i = getelementptr inbounds nuw [4 x i8], ptr %i.luk, i64 %i.nmv
  %invariant.gep1137.i = getelementptr inbounds nuw [4 x i8], ptr %i.lul, i64 %i.nmv
  %i.nmw = add nsw i32 %i.nmt, -1                 ; 3 uses
  %i.nmx = icmp slt i32 %i.nmr, %i.nmw            ; 2 uses
  %brmerge.i556 = select i1 %i.lvu, i1 true, i1 %i.nmu
  %i.nmy = add nsw i32 %i.lyf, 6                  ; 3 uses
  %i.nmz = sext i32 %i.nmy to i64                 ; 6 uses
  %i.nna = shl nuw nsw i64 %i.nmv, 2              ; 4 uses
  %scevgep3943 = getelementptr i8, ptr %scevgep3942, i64 %i.nna ; 2 uses
  %i.nnb = add nsw i32 %.neg.i554, 6
  %i.nnc = add i32 %i.nnb, %i.lyf
  %i.nnd = sub i32 %i.nnc, %i.nmr
  %i.nne = lshr i32 %i.nnd, 1
  %i.nnf = zext nneg i32 %i.nne to i64
  %i.nng = shl nuw nsw i64 %i.nnf, 3              ; 2 uses
  %i.nnh = getelementptr i8, ptr %scevgep3945, i64 %i.nng
  %scevgep3946 = getelementptr i8, ptr %i.nnh, i64 %i.nna ; 2 uses
  %.reass = or disjoint i64 %i.nna, %invariant.op
  %i.nni = add nuw nsw i64 %i.lwt, %i.nng
  %i.nnj = add nuw nsw i64 %i.nni, %i.nna
  %i.nnk = add nsw i32 %.neg.i554, 6
  %i.nnl = add i32 %i.nnk, %i.lyf
  %i.nnm = sub i32 %i.nnl, %i.nmr
  %i.nnn = lshr i32 %i.nnm, 1
  %i.nno = zext nneg i32 %i.nnn to i64
  %i.nnp = shl nuw nsw i64 %i.nno, 3              ; 2 uses
  %i.nnq = add nuw nsw i64 %i.lwu, %i.nnp
  %i.nnr = shl nuw nsw i64 %i.nmv, 2              ; 3 uses
  %i.nns = add nuw nsw i64 %i.nnq, %i.nnr
  %scevgep4012 = getelementptr i8, ptr %scevgep4011, i64 %i.nnr ; 2 uses
  %i.nnt = getelementptr i8, ptr %scevgep4014, i64 %i.nnp
  %scevgep4015 = getelementptr i8, ptr %i.nnt, i64 %i.nnr ; 2 uses
  %min.iters.check4106 = icmp ult i32 %i.nmy, 8
  %n.vec4108 = and i64 %i.nmz, -8                 ; 3 uses
  %i.nnu = or disjoint i64 %n.vec4108, 1
  %cmp.n4131 = icmp eq i64 %n.vec4108, %i.nmz
  %min.iters.check4078 = icmp ult i32 %i.nmy, 8
  %n.vec4080 = and i64 %i.nmz, -8                 ; 3 uses
  %i.nnv = or disjoint i64 %n.vec4080, 1
  %cmp.n4103 = icmp eq i64 %n.vec4080, %i.nmz
  %i.nnw = add i32 %.neg.i554, %i.lyf
  %i.nnx = add i32 %i.nnw, 6
  %i.nny = sub i32 %i.nnx, %i.nmr                 ; 2 uses
  %i.nnz = lshr i32 %i.nny, 1
  %narrow = add nuw i32 %i.nnz, 1
  %i.noa = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check4029 = icmp ult i32 %i.nny, 16
  %i.nob = and i64 %i.noa, 7                      ; 2 uses
  %i.noc = icmp eq i64 %i.nob, 0
  %i.nod = select i1 %i.noc, i64 8, i64 %i.nob
  %n.vec4031 = sub nsw i64 %i.noa, %i.nod         ; 3 uses
  %i.noe = trunc i64 %n.vec4031 to i32
  %i.nof = shl i32 %i.noe, 1
  %i.nog = add i32 %i.nmr, %i.nof
  %i.noh = shl nsw i64 %n.vec4031, 3              ; 7 uses
  %i.noi = add i32 %.neg.i554, %i.lyf
  %i.noj = add i32 %i.noi, 6
  %i.nok = sub i32 %i.noj, %i.nmr                 ; 2 uses
  %i.nol = lshr i32 %i.nok, 1
  %narrow4565 = add nuw i32 %i.nol, 1
  %i.nom = zext i32 %narrow4565 to i64            ; 2 uses
  %min.iters.check3965 = icmp ult i32 %i.nok, 16
  %i.non = and i64 %i.nom, 7                      ; 2 uses
  %i.noo = icmp eq i64 %i.non, 0
  %i.nop = select i1 %i.noo, i64 8, i64 %i.non
  %n.vec3967 = sub nsw i64 %i.nom, %i.nop         ; 3 uses
  %i.noq = shl nsw i64 %n.vec3967, 3              ; 7 uses
  %i.nor = trunc i64 %n.vec3967 to i32
  %i.nos = shl i32 %i.nor, 1
  %i.not = add i32 %i.nmr, %i.nos
  br label %.preheader1018.i

bb.pr:                                            ; preds = %._crit_edge1082.i, %.preheader1022.i
  %indvar4134 = phi i64 [ %indvar.next4135, %._crit_edge1082.i ], [ 0, %.preheader1022.i ] ; 2 uses
  %indvars.iv1269.i = phi i64 [ %indvars.iv.next1270.i, %._crit_edge1082.i ], [ 1, %.preheader1022.i ] ; 3 uses
  %i.nou = mul nuw nsw i64 %indvar4134, 544       ; 4 uses
  %i.nov = getelementptr i8, ptr %i.lug, i64 %i.nou
  %scevgep4139 = getelementptr i8, ptr %i.nov, i64 73988
  %i.now = getelementptr i8, ptr %i.lug, i64 %i.nou
  %scevgep4141 = getelementptr i8, ptr %i.now, i64 75080
  %indvars.iv1269.tr.i = trunc nuw i64 %indvars.iv1269.i to i32
  %i.nox = shl nuw i32 %indvars.iv1269.tr.i, 1
  %i.noy = and i32 %i.nox, 14                     ; 2 uses
  %.tr.i965.i = shl nuw nsw i32 %i.noy, 1
  %i.noz = or disjoint i32 %.tr.i965.i, 2
  %i.npa = lshr i32 %.fr1063, %i.noz              ; 3 uses
  %i.npb = and i32 %i.npa, 1
  %i.npc = add nuw nsw i32 %i.npb, 1              ; 3 uses
  %i.npd = icmp slt i32 %i.npc, %i.nfa
  br i1 %i.npd, label %.lr.ph1081.i, label %._crit_edge1082.i

.lr.ph1081.i:                                     ; preds = %bb.pr
  %i.npe = and i32 %i.npc, 1
  %i.npf = or disjoint i32 %i.npe, %i.noy
  %i.npg = shl nuw nsw i32 %i.npf, 1
  %i.nph = lshr i32 %.fr1063, %i.npg
  %i.npi = and i32 %i.nph, 3
  %i.npj = sub nsw i32 2, %i.npi
  %i.npk = sext i32 %i.npj to i64
  %i.npl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.npk
  %i.npm = load ptr, ptr %i.npl, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.npn = mul nuw nsw i64 %indvars.iv1269.i, 136 ; 2 uses
  %i.npo = getelementptr inbounds nuw [4 x i8], ptr %i.npm, i64 %i.npn ; 2 uses
  %i.npp = getelementptr inbounds nuw [4 x i8], ptr %i.lui, i64 %i.npn ; 2 uses
  %i.npq = zext nneg i32 %i.npc to i64            ; 5 uses
  %i.npr = and i32 %i.npa, 1
  %i.nps = zext nneg i32 %i.npr to i64            ; 2 uses
  %i.npt = add nuw nsw i64 %i.nps, 3
  %i.npu = call i64 @llvm.umax.i64(i64 %i.npt, i64 %i.nik)
  %i.npv = add nsw i64 %i.npu, -2
  %i.npw = sub nsw i64 %i.npv, %i.nps             ; 2 uses
  %i.npx = lshr i64 %i.npw, 1
  %i.npy = add nuw nsw i64 %i.npx, 1              ; 2 uses
  %min.iters.check4147 = icmp ult i64 %i.npw, 8
  br i1 %min.iters.check4147, label %scalar.ph4146.preheader, label %vector.memcheck4133

scalar.ph4146.preheader:                          ; preds = %vector.body4153, %vector.memcheck4133, %.lr.ph1081.i
  %indvars.iv1266.i.ph = phi i64 [ %i.npq, %vector.memcheck4133 ], [ %i.npq, %.lr.ph1081.i ], [ %i.nqr, %vector.body4153 ]
  br label %scalar.ph4146

vector.memcheck4133:                              ; preds = %.lr.ph1081.i
  %i.npz = and i32 %i.npa, 1
  %i.nqa = zext nneg i32 %i.npz to i64            ; 3 uses
  %i.nqb = shl nuw nsw i64 %i.nqa, 2              ; 4 uses
  %i.nqc = getelementptr i8, ptr %i.npm, i64 %i.nou
  %i.nqd = getelementptr i8, ptr %i.nqc, i64 4
  %scevgep4136 = getelementptr i8, ptr %i.nqd, i64 %i.nqb
  %i.nqe = add nuw nsw i64 %i.nqa, 3
  %umax4137 = call i64 @llvm.umax.i64(i64 %i.nqe, i64 %i.nik)
  %i.nqf = add nsw i64 %umax4137, -2
  %i.nqg = sub nsw i64 %i.nqf, %i.nqa
  %i.nqh = shl nuw nsw i64 %i.nqg, 2
  %i.nqi = and i64 %i.nqh, 9223372036854775800    ; 2 uses
  %i.nqj = getelementptr i8, ptr %i.npm, i64 %i.nou
  %i.nqk = getelementptr i8, ptr %i.nqj, i64 1096
  %i.nql = getelementptr i8, ptr %i.nqk, i64 %i.nqi
  %scevgep4138 = getelementptr i8, ptr %i.nql, i64 %i.nqb
  %scevgep4140 = getelementptr i8, ptr %scevgep4139, i64 %i.nqb
  %i.nqm = getelementptr i8, ptr %scevgep4141, i64 %i.nqi
  %scevgep4142 = getelementptr i8, ptr %i.nqm, i64 %i.nqb
  %bound04143 = icmp ult ptr %scevgep4136, %scevgep4142
  %bound14144 = icmp ult ptr %scevgep4140, %scevgep4138
  %found.conflict4145 = and i1 %bound04143, %bound14144
  br i1 %found.conflict4145, label %scalar.ph4146.preheader, label %vector.ph4148

vector.ph4148:                                    ; preds = %vector.memcheck4133
  %i.nqn = and i64 %i.npy, 3                      ; 2 uses
  %i.nqo = icmp eq i64 %i.nqn, 0
  %i.nqp = select i1 %i.nqo, i64 4, i64 %i.nqn
  %n.vec4149 = sub nsw i64 %i.npy, %i.nqp         ; 2 uses
  %i.nqq = shl i64 %n.vec4149, 1
  %i.nqr = add i64 %i.nqq, %i.npq
  %broadcast.splatinsert4150 = insertelement <4 x i64> poison, i64 %i.npq, i64 0
  %broadcast.splat4151 = shufflevector <4 x i64> %broadcast.splatinsert4150, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction4152 = add nuw nsw <4 x i64> %broadcast.splat4151, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4869 = getelementptr [4 x i8], ptr %i.npp, i64 %i.npq
  br label %vector.body4153

vector.body4153:                                  ; preds = %vector.body4153, %vector.ph4148
  %index4154 = phi i64 [ 0, %vector.ph4148 ], [ %index.next4174, %vector.body4153 ] ; 2 uses
  %vec.ind4155 = phi <4 x i64> [ %induction4152, %vector.ph4148 ], [ %vec.ind.next4175, %vector.body4153 ] ; 2 uses
  %wide.gep4156 = getelementptr inbounds nuw [4 x i8], ptr %i.npo, <4 x i64> %vec.ind4155 ; 2 uses
  %i.nqs = extractelement <4 x ptr> %wide.gep4156, i64 0 ; 4 uses
  %.idx4564 = shl nuw i64 %index4154, 3
  %gep4870 = getelementptr i8, ptr %invariant.gep4869, i64 %.idx4564 ; 4 uses
  %wide.vec4157 = load <8 x float>, ptr %gep4870, align 4, !tbaa !22, !alias.scope !431, !noalias !402 ; 2 uses
  %strided.vec4158 = shufflevector <8 x float> %wide.vec4157, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec4159 = shufflevector <8 x float> %wide.vec4157, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nqt = getelementptr inbounds i8, ptr %i.nqs, i64 -544
  %wide.vec4160 = load <8 x float>, ptr %i.nqt, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4161 = shufflevector <8 x float> %wide.vec4160, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nqu = getelementptr inbounds i8, ptr %gep4870, i64 -544
  %wide.vec4162 = load <8 x float>, ptr %i.nqu, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4163 = shufflevector <8 x float> %wide.vec4162, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nqv = getelementptr inbounds i8, ptr %i.nqs, i64 -4
  %wide.vec4164 = load <8 x float>, ptr %i.nqv, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4165 = shufflevector <8 x float> %wide.vec4164, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nqw = getelementptr inbounds i8, ptr %gep4870, i64 -4
  %wide.vec4166 = load <8 x float>, ptr %i.nqw, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4167 = shufflevector <8 x float> %wide.vec4166, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nqx = getelementptr inbounds nuw i8, ptr %i.nqs, i64 4
  %wide.vec4168 = load <8 x float>, ptr %i.nqx, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4169 = shufflevector <8 x float> %wide.vec4168, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nqy = getelementptr inbounds nuw i8, ptr %i.nqs, i64 544
  %wide.vec4170 = load <8 x float>, ptr %i.nqy, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4171 = shufflevector <8 x float> %wide.vec4170, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nqz = getelementptr inbounds nuw i8, ptr %gep4870, i64 544
  %wide.vec4172 = load <8 x float>, ptr %i.nqz, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4173 = shufflevector <8 x float> %wide.vec4172, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nra = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4161, %strided.vec4165
  %i.nrb = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4163, %strided.vec4167
  %i.nrc = fadd reassoc nsz arcp contract afn <4 x float> %i.nra, %strided.vec4169
  %i.nrd = fadd reassoc nsz arcp contract afn <4 x float> %i.nrb, %strided.vec4159
  %i.nre = fadd reassoc nsz arcp contract afn <4 x float> %i.nrc, %strided.vec4171
  %i.nrf = fadd reassoc nsz arcp contract afn <4 x float> %i.nrd, %strided.vec4173
  %i.nrg = fsub reassoc nsz arcp contract afn <4 x float> %i.nre, %i.nrf
  %i.nrh = fmul reassoc nsz arcp contract afn <4 x float> %i.nrg, splat (float 2.500000e-01)
  %i.nri = fadd reassoc nsz arcp contract afn <4 x float> %i.nrh, %strided.vec4158
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.nri, <4 x ptr> align 4 %wide.gep4156, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !434, !noalias !436
  %index.next4174 = add nuw i64 %index4154, 4     ; 2 uses
  %vec.ind.next4175 = add nuw nsw <4 x i64> %vec.ind4155, splat (i64 8)
  %i.nrj = icmp eq i64 %index.next4174, %n.vec4149
  br i1 %i.nrj, label %scalar.ph4146.preheader, label %vector.body4153, !llvm.loop !437

._crit_edge1082.i:                                ; preds = %scalar.ph4146, %bb.pr
  %indvars.iv.next1270.i = add nuw nsw i64 %indvars.iv1269.i, 1 ; 2 uses
  %exitcond1135.not = icmp eq i64 %indvars.iv.next1270.i, %smax1137
  %indvar.next4135 = add i64 %indvar4134, 1
  br i1 %exitcond1135.not, label %._crit_edge1085.i, label %bb.pr

scalar.ph4146:                                    ; preds = %scalar.ph4146.preheader, %scalar.ph4146
  %indvars.iv1266.i = phi i64 [ %indvars.iv.next1267.i, %scalar.ph4146 ], [ %indvars.iv1266.i.ph, %scalar.ph4146.preheader ] ; 3 uses
  %i.nrk = getelementptr inbounds nuw [4 x i8], ptr %i.npo, i64 %indvars.iv1266.i ; 5 uses
  %i.nrl = getelementptr inbounds nuw [4 x i8], ptr %i.npp, i64 %indvars.iv1266.i ; 5 uses
  %i.nrm = load float, ptr %i.nrl, align 4, !tbaa !22, !noalias !402
  %i.nrn = getelementptr inbounds i8, ptr %i.nrk, i64 -544
  %i.nro = load float, ptr %i.nrn, align 4, !tbaa !22, !noalias !402
  %i.nrp = getelementptr inbounds i8, ptr %i.nrl, i64 -544
  %i.nrq = load float, ptr %i.nrp, align 4, !tbaa !22, !noalias !402
  %i.nrr = getelementptr inbounds i8, ptr %i.nrk, i64 -4
  %i.nrs = load float, ptr %i.nrr, align 4, !tbaa !22, !noalias !402
  %i.nrt = getelementptr inbounds i8, ptr %i.nrl, i64 -4
  %i.nru = load float, ptr %i.nrt, align 4, !tbaa !22, !noalias !402
  %i.nrv = getelementptr inbounds nuw i8, ptr %i.nrk, i64 4
  %i.nrw = load float, ptr %i.nrv, align 4, !tbaa !22, !noalias !402
  %i.nrx = getelementptr inbounds nuw i8, ptr %i.nrl, i64 4
  %i.nry = load float, ptr %i.nrx, align 4, !tbaa !22, !noalias !402
  %i.nrz = getelementptr inbounds nuw i8, ptr %i.nrk, i64 544
  %i.nsa = load float, ptr %i.nrz, align 4, !tbaa !22, !noalias !402
  %i.nsb = getelementptr inbounds nuw i8, ptr %i.nrl, i64 544
  %i.nsc = load float, ptr %i.nsb, align 4, !tbaa !22, !noalias !402
  %i.nsd = fadd reassoc nsz arcp contract afn float %i.nro, %i.nrs
  %i.nse = fadd reassoc nsz arcp contract afn float %i.nrq, %i.nru
  %i.nsf = fadd reassoc nsz arcp contract afn float %i.nsd, %i.nrw
  %i.nsg = fadd reassoc nsz arcp contract afn float %i.nse, %i.nry
  %i.nsh = fadd reassoc nsz arcp contract afn float %i.nsf, %i.nsa
  %i.nsi = fadd reassoc nsz arcp contract afn float %i.nsg, %i.nsc
  %i.nsj = fsub reassoc nsz arcp contract afn float %i.nsh, %i.nsi
  %i.nsk = fmul reassoc nsz arcp contract afn float %i.nsj, 2.500000e-01
  %i.nsl = fadd reassoc nsz arcp contract afn float %i.nsk, %i.nrm
  store float %i.nsl, ptr %i.nrk, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1267.i = add nuw nsw i64 %indvars.iv1266.i, 2 ; 2 uses
  %i.nsm = icmp samesign ult i64 %indvars.iv.next1267.i, %i.nik
  br i1 %i.nsm, label %scalar.ph4146, label %._crit_edge1082.i, !llvm.loop !438

.preheader1021.i:                                 ; preds = %._crit_edge1130.i, %._crit_edge1085.i
  %i.nsn = icmp sgt i32 %i.lye, 0
  %or.cond1378.i = select i1 %i.lvl, i1 %i.nsn, i1 false
  br i1 %or.cond1378.i, label %.preheader1016.i.preheader, label %.preheader1020.i

.preheader1016.i.preheader:                       ; preds = %.preheader1021.i
  %xtraiter4745 = and i64 %i.lxl, 3               ; 3 uses
  %i.nso = add i32 %smin4744, -1
  %i.nsp = icmp ult i32 %i.nso, 3
  %unroll_iter4749 = and i64 %i.lxl, -4
  %lcmp.mod4747.not = icmp eq i64 %xtraiter4745, 0
  %lcmp.mod4748 = icmp ne i64 %xtraiter4745, 0
  br label %.preheader1016.i

.preheader1018.i:                                 ; preds = %._crit_edge1130.i, %.preheader1018.lr.ph.i
  %.09141139.i = phi i32 [ 0, %.preheader1018.lr.ph.i ], [ %i.ohw, %._crit_edge1130.i ]
  br i1 %brmerge.i556, label %.preheader1017.i, label %.preheader1013.i

.preheader1017.i:                                 ; preds = %._crit_edge1089.1.i, %.preheader1018.i
  br i1 %i.lvw, label %.lr.ph1129.i, label %._crit_edge1130.i

.preheader1013.i:                                 ; preds = %.preheader1018.i, %._crit_edge1089.1.i
  %indvars.iv1279.i = phi i64 [ %indvars.iv.next1280.i, %._crit_edge1089.1.i ], [ 1, %.preheader1018.i ] ; 2 uses
  %i.nsq = mul nuw nsw i64 %indvars.iv1279.i, 136 ; 5 uses
  %i.nsr = getelementptr inbounds nuw [4 x i8], ptr %i.lui, i64 %i.nsq ; 4 uses
  %i.nss = getelementptr inbounds nuw [4 x i8], ptr %i.luk, i64 %i.nsq ; 2 uses
  %i.nst = getelementptr inbounds nuw [4 x i8], ptr %i.lug, i64 %i.nsq ; 2 uses
  br i1 %min.iters.check4106, label %scalar.ph4105.preheader, label %vector.body4109

vector.body4109:                                  ; preds = %.preheader1013.i, %vector.body4109
  %index4110 = phi i64 [ %index.next4129, %vector.body4109 ], [ 0, %.preheader1013.i ] ; 2 uses
  %i.nsu = or disjoint i64 %index4110, 1          ; 3 uses
  %i.nsv = getelementptr inbounds nuw [4 x i8], ptr %i.nss, i64 %i.nsu
  %i.nsw = getelementptr inbounds nuw [4 x i8], ptr %i.nst, i64 %i.nsu ; 9 uses
  %i.nsx = getelementptr inbounds nuw [4 x i8], ptr %i.nsr, i64 %i.nsu ; 9 uses
  %i.nsy = getelementptr inbounds i8, ptr %i.nsw, i64 -548
  %wide.load4111 = load <8 x float>, ptr %i.nsy, align 32, !tbaa !22, !noalias !402
end_hunk_2
begin_hunk_3_@process:bb.a
  %i.obn = insertelement <2 x float> poison, float %i.obj, i64 0
  %i.obo = insertelement <2 x float> %i.obn, float %i.oak, i64 1 ; 2 uses
  %i.obp = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.obg, %i.obo
  %i.obq = select <2 x i1> %i.obp, <2 x float> %i.obg, <2 x float> %i.obo ; 2 uses
  %i.obr = load <2 x float>, ptr %i.oal, align 4, !tbaa !22, !noalias !402
  %i.obs = load <2 x float>, ptr %i.oam, align 4, !tbaa !22, !noalias !402
  %i.obt = fsub reassoc nsz arcp contract afn <2 x float> %i.obr, %i.obs ; 4 uses
  %i.obu = extractelement <2 x float> %i.obt, i64 1 ; 2 uses
  %i.obv = fcmp reassoc nsz arcp contract afn olt float %i.obu, %i.oar
  %i.obw = select reassoc nsz arcp contract afn i1 %i.obv, float %i.obu, float %i.oar ; 3 uses
  %i.obx = extractelement <2 x float> %i.obt, i64 0 ; 2 uses
  %i.oby = fcmp reassoc nsz arcp contract afn olt float %i.obx, %i.obw
  %i.obz = select reassoc nsz arcp contract afn i1 %i.oby, float %i.obx, float %i.obw ; 2 uses
  %i.oca = insertelement <2 x float> poison, float %i.obw, i64 0
  %i.ocb = insertelement <2 x float> %i.oca, float %i.oar, i64 1 ; 2 uses
  %i.occ = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.obt, %i.ocb
  %i.ocd = select <2 x i1> %i.occ, <2 x float> %i.obt, <2 x float> %i.ocb ; 2 uses
  %i.oce = extractelement <2 x float> %i.obd, i64 0 ; 4 uses
  %i.ocf = extractelement <2 x float> %i.obd, i64 1 ; 4 uses
  %i.ocg = fcmp reassoc nsz arcp contract afn olt float %i.oce, %i.ocf
  %i.och = select reassoc nsz arcp contract afn i1 %i.ocg, float %i.oce, float %i.ocf ; 2 uses
  %i.oci = fcmp reassoc nsz arcp contract afn ogt float %i.oce, %i.ocf
  %i.ocj = select reassoc nsz arcp contract afn i1 %i.oci, float %i.oce, float %i.ocf ; 2 uses
  %i.ock = extractelement <2 x float> %i.obq, i64 0 ; 4 uses
  %i.ocl = extractelement <2 x float> %i.obq, i64 1 ; 4 uses
  %i.ocm = fcmp reassoc nsz arcp contract afn olt float %i.ock, %i.ocl
  %i.ocn = select reassoc nsz arcp contract afn i1 %i.ocm, float %i.ock, float %i.ocl ; 4 uses
  %i.oco = fcmp reassoc nsz arcp contract afn ogt float %i.ock, %i.ocl
  %i.ocp = select reassoc nsz arcp contract afn i1 %i.oco, float %i.ock, float %i.ocl ; 2 uses
  %i.ocq = extractelement <2 x float> %i.ocd, i64 0 ; 4 uses
  %i.ocr = extractelement <2 x float> %i.ocd, i64 1 ; 4 uses
  %i.ocs = fcmp reassoc nsz arcp contract afn olt float %i.ocq, %i.ocr
  %i.oct = select reassoc nsz arcp contract afn i1 %i.ocs, float %i.ocq, float %i.ocr ; 4 uses
  %i.ocu = fcmp reassoc nsz arcp contract afn ogt float %i.ocq, %i.ocr
  %i.ocv = select reassoc nsz arcp contract afn i1 %i.ocu, float %i.ocq, float %i.ocr ; 2 uses
  %i.ocw = fcmp reassoc nsz arcp contract afn ogt float %i.oaz, %i.obm
  %i.ocx = select reassoc nsz arcp contract afn i1 %i.ocw, float %i.oaz, float %i.obm ; 2 uses
  %i.ocy = fcmp reassoc nsz arcp contract afn olt float %i.ocp, %i.ocv
  %i.ocz = select reassoc nsz arcp contract afn i1 %i.ocy, float %i.ocp, float %i.ocv ; 2 uses
  %i.oda = fcmp reassoc nsz arcp contract afn ogt float %i.ocn, %i.oct
  %i.odb = select reassoc nsz arcp contract afn i1 %i.oda, float %i.ocn, float %i.oct ; 2 uses
  %i.odc = fcmp reassoc nsz arcp contract afn olt float %i.ocn, %i.oct
  %i.odd = select reassoc nsz arcp contract afn i1 %i.odc, float %i.ocn, float %i.oct ; 2 uses
  %i.ode = fcmp reassoc nsz arcp contract afn ogt float %i.ocx, %i.obz
  %i.odf = select reassoc nsz arcp contract afn i1 %i.ode, float %i.ocx, float %i.obz ; 2 uses
  %i.odg = fcmp reassoc nsz arcp contract afn ogt float %i.och, %i.odd
  %i.odh = select reassoc nsz arcp contract afn i1 %i.odg, float %i.och, float %i.odd ; 2 uses
  %i.odi = fcmp reassoc nsz arcp contract afn olt float %i.ocj, %i.ocz
  %i.odj = select reassoc nsz arcp contract afn i1 %i.odi, float %i.ocj, float %i.ocz ; 4 uses
  %i.odk = fcmp reassoc nsz arcp contract afn olt float %i.odh, %i.odb
  %i.odl = select reassoc nsz arcp contract afn i1 %i.odk, float %i.odh, float %i.odb ; 4 uses
  %i.odm = fcmp reassoc nsz arcp contract afn olt float %i.odl, %i.odj
  %i.odn = select reassoc nsz arcp contract afn i1 %i.odm, float %i.odl, float %i.odj ; 2 uses
  %i.odo = fcmp reassoc nsz arcp contract afn ogt float %i.odl, %i.odj
  %i.odp = select reassoc nsz arcp contract afn i1 %i.odo, float %i.odl, float %i.odj ; 2 uses
  %i.odq = fcmp reassoc nsz arcp contract afn ogt float %i.odf, %i.odn
  %i.odr = select reassoc nsz arcp contract afn i1 %i.odq, float %i.odf, float %i.odn ; 2 uses
  %i.ods = fcmp reassoc nsz arcp contract afn olt float %i.odp, %i.odr
  %i.odt = select reassoc nsz arcp contract afn i1 %i.ods, float %i.odp, float %i.odr
  store float %i.odt, ptr %i.nzu, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1273.1.i = add nuw nsw i64 %indvars.iv1272.1.i, 1
  %i.odu = icmp slt i64 %indvars.iv1272.1.i, %i.nmz
  br i1 %i.odu, label %scalar.ph4077, label %._crit_edge1089.1.i, !llvm.loop !441

._crit_edge1089.1.i:                              ; preds = %scalar.ph4077, %middle.block4102
  %indvars.iv.next1280.i = add nuw nsw i64 %indvars.iv1279.i, 1 ; 2 uses
  %exitcond1138.not = icmp eq i64 %indvars.iv.next1280.i, %smax1137
  br i1 %exitcond1138.not, label %.preheader1017.i, label %.preheader1013.i

scalar.ph4105:                                    ; preds = %scalar.ph4105.preheader, %scalar.ph4105
  %indvars.iv1272.i = phi i64 [ %indvars.iv.next1273.i, %scalar.ph4105 ], [ %indvars.iv1272.i.ph, %scalar.ph4105.preheader ] ; 5 uses
  %i.odv = getelementptr inbounds nuw [4 x i8], ptr %i.nss, i64 %indvars.iv1272.i
  %i.odw = getelementptr inbounds nuw [4 x i8], ptr %i.nst, i64 %indvars.iv1272.i ; 6 uses
  %i.odx = getelementptr inbounds nuw [4 x i8], ptr %i.nsr, i64 %indvars.iv1272.i ; 6 uses
  %i.ody = getelementptr inbounds i8, ptr %i.odw, i64 -548
  %i.odz = getelementptr inbounds i8, ptr %i.odx, i64 -548
  %i.oea = getelementptr inbounds i8, ptr %i.odw, i64 -540
  %i.oeb = load float, ptr %i.oea, align 4, !tbaa !22, !noalias !402
  %i.oec = getelementptr inbounds i8, ptr %i.odx, i64 -540
  %i.oed = load float, ptr %i.oec, align 4, !tbaa !22, !noalias !402
  %i.oee = fsub reassoc nsz arcp contract afn float %i.oeb, %i.oed ; 3 uses
  %i.oef = getelementptr inbounds i8, ptr %i.odw, i64 -4
  %i.oeg = getelementptr inbounds i8, ptr %i.odx, i64 -4
  %i.oeh = getelementptr inbounds nuw i8, ptr %i.odw, i64 4
  %i.oei = load float, ptr %i.oeh, align 4, !tbaa !22, !noalias !402
  %i.oej = getelementptr inbounds nuw i8, ptr %i.odx, i64 4
  %i.oek = load float, ptr %i.oej, align 4, !tbaa !22, !noalias !402
  %i.oel = fsub reassoc nsz arcp contract afn float %i.oei, %i.oek ; 3 uses
  %i.oem = getelementptr inbounds nuw i8, ptr %i.odw, i64 540
  %i.oen = getelementptr inbounds nuw i8, ptr %i.odx, i64 540
  %i.oeo = getelementptr inbounds nuw i8, ptr %i.odw, i64 548
  %i.oep = load float, ptr %i.oeo, align 4, !tbaa !22, !noalias !402
  %i.oeq = getelementptr inbounds nuw i8, ptr %i.odx, i64 548
  %i.oer = load float, ptr %i.oeq, align 4, !tbaa !22, !noalias !402
  %i.oes = fsub reassoc nsz arcp contract afn float %i.oep, %i.oer ; 3 uses
  %i.oet = load <2 x float>, ptr %i.ody, align 4, !tbaa !22, !noalias !402
  %i.oeu = load <2 x float>, ptr %i.odz, align 4, !tbaa !22, !noalias !402
  %i.oev = fsub reassoc nsz arcp contract afn <2 x float> %i.oet, %i.oeu ; 4 uses
  %i.oew = extractelement <2 x float> %i.oev, i64 1 ; 2 uses
  %i.oex = fcmp reassoc nsz arcp contract afn olt float %i.oew, %i.oee
  %..i.i = select reassoc nsz arcp contract afn i1 %i.oex, float %i.oew, float %i.oee ; 3 uses
  %i.oey = extractelement <2 x float> %i.oev, i64 0 ; 2 uses
  %i.oez = fcmp reassoc nsz arcp contract afn olt float %i.oey, %..i.i
  %i.ofa = select reassoc nsz arcp contract afn i1 %i.oez, float %i.oey, float %..i.i ; 2 uses
  %i.ofb = insertelement <2 x float> poison, float %..i.i, i64 0
  %i.ofc = insertelement <2 x float> %i.ofb, float %i.oee, i64 1 ; 2 uses
  %i.ofd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.oev, %i.ofc
  %i.ofe = select <2 x i1> %i.ofd, <2 x float> %i.oev, <2 x float> %i.ofc ; 2 uses
  %i.off = load <2 x float>, ptr %i.oef, align 4, !tbaa !22, !noalias !402
  %i.ofg = load <2 x float>, ptr %i.oeg, align 4, !tbaa !22, !noalias !402
  %i.ofh = fsub reassoc nsz arcp contract afn <2 x float> %i.off, %i.ofg ; 4 uses
  %i.ofi = extractelement <2 x float> %i.ofh, i64 1 ; 2 uses
  %i.ofj = fcmp reassoc nsz arcp contract afn olt float %i.ofi, %i.oel
  %i.ofk = select reassoc nsz arcp contract afn i1 %i.ofj, float %i.ofi, float %i.oel ; 3 uses
  %i.ofl = extractelement <2 x float> %i.ofh, i64 0 ; 2 uses
  %i.ofm = fcmp reassoc nsz arcp contract afn olt float %i.ofl, %i.ofk
  %i.ofn = select reassoc nsz arcp contract afn i1 %i.ofm, float %i.ofl, float %i.ofk ; 2 uses
  %i.ofo = insertelement <2 x float> poison, float %i.ofk, i64 0
  %i.ofp = insertelement <2 x float> %i.ofo, float %i.oel, i64 1 ; 2 uses
  %i.ofq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ofh, %i.ofp
  %i.ofr = select <2 x i1> %i.ofq, <2 x float> %i.ofh, <2 x float> %i.ofp ; 2 uses
  %i.ofs = load <2 x float>, ptr %i.oem, align 4, !tbaa !22, !noalias !402
  %i.oft = load <2 x float>, ptr %i.oen, align 4, !tbaa !22, !noalias !402
  %i.ofu = fsub reassoc nsz arcp contract afn <2 x float> %i.ofs, %i.oft ; 4 uses
  %i.ofv = extractelement <2 x float> %i.ofu, i64 1 ; 2 uses
  %i.ofw = fcmp reassoc nsz arcp contract afn olt float %i.ofv, %i.oes
  %i.ofx = select reassoc nsz arcp contract afn i1 %i.ofw, float %i.ofv, float %i.oes ; 3 uses
  %i.ofy = extractelement <2 x float> %i.ofu, i64 0 ; 2 uses
  %i.ofz = fcmp reassoc nsz arcp contract afn olt float %i.ofy, %i.ofx
  %i.oga = select reassoc nsz arcp contract afn i1 %i.ofz, float %i.ofy, float %i.ofx ; 2 uses
  %i.ogb = insertelement <2 x float> poison, float %i.ofx, i64 0
  %i.ogc = insertelement <2 x float> %i.ogb, float %i.oes, i64 1 ; 2 uses
  %i.ogd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ofu, %i.ogc
  %i.oge = select <2 x i1> %i.ogd, <2 x float> %i.ofu, <2 x float> %i.ogc ; 2 uses
  %i.ogf = extractelement <2 x float> %i.ofe, i64 0 ; 4 uses
  %i.ogg = extractelement <2 x float> %i.ofe, i64 1 ; 4 uses
  %i.ogh = fcmp reassoc nsz arcp contract afn olt float %i.ogf, %i.ogg
  %i.ogi = select reassoc nsz arcp contract afn i1 %i.ogh, float %i.ogf, float %i.ogg ; 2 uses
  %i.ogj = fcmp reassoc nsz arcp contract afn ogt float %i.ogf, %i.ogg
  %i.ogk = select reassoc nsz arcp contract afn i1 %i.ogj, float %i.ogf, float %i.ogg ; 2 uses
  %i.ogl = extractelement <2 x float> %i.ofr, i64 0 ; 4 uses
  %i.ogm = extractelement <2 x float> %i.ofr, i64 1 ; 4 uses
  %i.ogn = fcmp reassoc nsz arcp contract afn olt float %i.ogl, %i.ogm
  %i.ogo = select reassoc nsz arcp contract afn i1 %i.ogn, float %i.ogl, float %i.ogm ; 4 uses
  %i.ogp = fcmp reassoc nsz arcp contract afn ogt float %i.ogl, %i.ogm
  %i.ogq = select reassoc nsz arcp contract afn i1 %i.ogp, float %i.ogl, float %i.ogm ; 2 uses
  %i.ogr = extractelement <2 x float> %i.oge, i64 0 ; 4 uses
  %i.ogs = extractelement <2 x float> %i.oge, i64 1 ; 4 uses
  %i.ogt = fcmp reassoc nsz arcp contract afn olt float %i.ogr, %i.ogs
  %i.ogu = select reassoc nsz arcp contract afn i1 %i.ogt, float %i.ogr, float %i.ogs ; 4 uses
  %i.ogv = fcmp reassoc nsz arcp contract afn ogt float %i.ogr, %i.ogs
  %i.ogw = select reassoc nsz arcp contract afn i1 %i.ogv, float %i.ogr, float %i.ogs ; 2 uses
  %i.ogx = fcmp reassoc nsz arcp contract afn ogt float %i.ofa, %i.ofn
  %i.ogy = select reassoc nsz arcp contract afn i1 %i.ogx, float %i.ofa, float %i.ofn ; 2 uses
  %i.ogz = fcmp reassoc nsz arcp contract afn olt float %i.ogq, %i.ogw
  %i.oha = select reassoc nsz arcp contract afn i1 %i.ogz, float %i.ogq, float %i.ogw ; 2 uses
  %i.ohb = fcmp reassoc nsz arcp contract afn ogt float %i.ogo, %i.ogu
  %i.ohc = select reassoc nsz arcp contract afn i1 %i.ohb, float %i.ogo, float %i.ogu ; 2 uses
  %i.ohd = fcmp reassoc nsz arcp contract afn olt float %i.ogo, %i.ogu
  %i.ohe = select reassoc nsz arcp contract afn i1 %i.ohd, float %i.ogo, float %i.ogu ; 2 uses
  %i.ohf = fcmp reassoc nsz arcp contract afn ogt float %i.ogy, %i.oga
  %i.ohg = select reassoc nsz arcp contract afn i1 %i.ohf, float %i.ogy, float %i.oga ; 2 uses
  %i.ohh = fcmp reassoc nsz arcp contract afn ogt float %i.ogi, %i.ohe
  %i.ohi = select reassoc nsz arcp contract afn i1 %i.ohh, float %i.ogi, float %i.ohe ; 2 uses
  %i.ohj = fcmp reassoc nsz arcp contract afn olt float %i.ogk, %i.oha
  %i.ohk = select reassoc nsz arcp contract afn i1 %i.ohj, float %i.ogk, float %i.oha ; 4 uses
  %i.ohl = fcmp reassoc nsz arcp contract afn olt float %i.ohi, %i.ohc
  %i.ohm = select reassoc nsz arcp contract afn i1 %i.ohl, float %i.ohi, float %i.ohc ; 4 uses
  %i.ohn = fcmp reassoc nsz arcp contract afn olt float %i.ohm, %i.ohk
  %i.oho = select reassoc nsz arcp contract afn i1 %i.ohn, float %i.ohm, float %i.ohk ; 2 uses
  %i.ohp = fcmp reassoc nsz arcp contract afn ogt float %i.ohm, %i.ohk
  %i.ohq = select reassoc nsz arcp contract afn i1 %i.ohp, float %i.ohm, float %i.ohk ; 2 uses
  %i.ohr = fcmp reassoc nsz arcp contract afn ogt float %i.ohg, %i.oho
  %i.ohs = select reassoc nsz arcp contract afn i1 %i.ohr, float %i.ohg, float %i.oho ; 2 uses
  %i.oht = fcmp reassoc nsz arcp contract afn olt float %i.ohq, %i.ohs
  %i.ohu = select reassoc nsz arcp contract afn i1 %i.oht, float %i.ohq, float %i.ohs
  store float %i.ohu, ptr %i.odv, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1273.i = add nuw nsw i64 %indvars.iv1272.i, 1
  %i.ohv = icmp slt i64 %indvars.iv1272.i, %i.nmz
  br i1 %i.ohv, label %scalar.ph4105, label %._crit_edge1089.i, !llvm.loop !442

._crit_edge1130.i:                                ; preds = %bb.pw, %.preheader1017.i
  %i.ohw = add nuw nsw i32 %.09141139.i, 1        ; 2 uses
  %exitcond.not.i557 = icmp eq i32 %i.ohw, %i.luo
  br i1 %exitcond.not.i557, label %.preheader1021.i, label %.preheader1018.i

.lr.ph1129.i:                                     ; preds = %.preheader1017.i, %bb.pw
  %indvar3947 = phi i64 [ %indvar.next3948, %bb.pw ], [ 0, %.preheader1017.i ] ; 3 uses
  %indvars.iv1282.i = phi i64 [ %indvars.iv.next1283.i, %bb.pw ], [ %i.lwe, %.preheader1017.i ] ; 3 uses
  %i.ohx = mul i64 %indvar3947, 544
  %i.ohy = add i64 %i.nns, %i.ohx                 ; 2 uses
  %i.ohz = mul i64 %indvar3947, 544               ; 2 uses
  %i.oia = add i64 %.reass, %i.ohz                ; 2 uses
  %i.oib = add i64 %i.nnj, %i.ohz                 ; 2 uses
  %i.oic = mul i64 %indvars.iv1282.i, 136         ; 9 uses
  %gep.i561 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i555, i64 %i.oic ; 10 uses
  %gep1132.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1131.i, i64 %i.oic ; 10 uses
  %gep1134.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1133.i, i64 %i.oic ; 10 uses
  %gep1136.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1135.i, i64 %i.oic ; 10 uses
  %gep1138.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1137.i, i64 %i.oic ; 10 uses
  %indvars.iv1282.tr.i = trunc nuw i64 %indvars.iv1282.i to i32
  %i.oid = shl i32 %indvars.iv1282.tr.i, 2
  %i.oie = and i32 %i.oid, 28                     ; 2 uses
  %i.oif = lshr i32 %.fr1063, %i.oie
  %i.oig = and i32 %i.oif, 3                      ; 4 uses
  %i.oih = icmp eq i32 %i.oig, 1
  br i1 %i.oih, label %bb.ps, label %bb.pu

bb.ps:                                            ; preds = %.lr.ph1129.i
  br i1 %i.nmx, label %.lr.ph1120.preheader.i, label %._crit_edge1121.i

.lr.ph1120.preheader.i:                           ; preds = %bb.ps
  %i.oii = or disjoint i32 %i.oie, 2
  %i.oij = lshr i32 %.fr1063, %i.oii
  %i.oik = and i32 %i.oij, 3                      ; 3 uses
  %i.oil = icmp ne i32 %i.oik, 2
  %.neg953.i = sext i1 %i.oil to i32
  %reass.sub954.i = sub nsw i32 %.neg953.i, %i.oik
  %i.oim = sext i32 %reass.sub954.i to i64
  %i.oin = getelementptr [8 x i8], ptr %i.b, i64 %i.oim
  %i.oio = getelementptr i8, ptr %i.oin, i64 40
  %i.oip = load ptr, ptr %i.oio, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.oiq = getelementptr inbounds nuw [4 x i8], ptr %i.oip, i64 %i.oic
  %i.oir = getelementptr inbounds nuw [4 x i8], ptr %i.oiq, i64 %i.nmv ; 4 uses
  %i.ois = sub nsw i32 2, %i.oik
  %i.oit = sext i32 %i.ois to i64
  %i.oiu = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.oit
  %i.oiv = load ptr, ptr %i.oiu, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.oiw = getelementptr inbounds nuw [4 x i8], ptr %i.oiv, i64 %i.oic
  %i.oix = getelementptr inbounds nuw [4 x i8], ptr %i.oiw, i64 %i.nmv ; 4 uses
  br i1 %min.iters.check3965, label %.lr.ph1120.i.preheader, label %vector.memcheck3941

vector.memcheck3941:                              ; preds = %.lr.ph1120.preheader.i
  %scevgep3949 = getelementptr i8, ptr %i.oiv, i64 %i.oia ; 2 uses
  %scevgep3950 = getelementptr i8, ptr %i.oiv, i64 %i.oib ; 2 uses
  %scevgep3951 = getelementptr i8, ptr %i.oip, i64 %i.oia ; 2 uses
  %scevgep3952 = getelementptr i8, ptr %i.oip, i64 %i.oib ; 2 uses
  %bound03953 = icmp ult ptr %scevgep3943, %scevgep3950
  %bound13954 = icmp ult ptr %scevgep3949, %scevgep3946
  %found.conflict3955 = and i1 %bound03953, %bound13954
  %bound03956 = icmp ult ptr %scevgep3943, %scevgep3952
  %bound13957 = icmp ult ptr %scevgep3951, %scevgep3946
  %found.conflict3958 = and i1 %bound03956, %bound13957
  %conflict.rdx3959 = or i1 %found.conflict3955, %found.conflict3958
  %bound03960 = icmp ult ptr %scevgep3949, %scevgep3952
  %bound13961 = icmp ult ptr %scevgep3951, %scevgep3950
  %found.conflict3962 = and i1 %bound03960, %bound13961
  %conflict.rdx3963 = or i1 %conflict.rdx3959, %found.conflict3962
  br i1 %conflict.rdx3963, label %.lr.ph1120.i.preheader, label %vector.ph3966

vector.ph3966:                                    ; preds = %vector.memcheck3941
  %i.oiy = getelementptr i8, ptr %i.oir, i64 %i.noq
  %i.oiz = getelementptr i8, ptr %i.oix, i64 %i.noq
  %i.oja = getelementptr i8, ptr %gep1138.i, i64 %i.noq
  %i.ojb = getelementptr i8, ptr %gep1136.i, i64 %i.noq
  %i.ojc = getelementptr i8, ptr %gep1134.i, i64 %i.noq
  %i.ojd = getelementptr i8, ptr %gep1132.i, i64 %i.noq
  %i.oje = getelementptr i8, ptr %gep.i561, i64 %i.noq
  br label %vector.body3968

vector.body3968:                                  ; preds = %vector.body3968, %vector.ph3966
  %index3969 = phi i64 [ 0, %vector.ph3966 ], [ %index.next3996, %vector.body3968 ] ; 2 uses
  %pointer.phi = phi ptr [ %i.oix, %vector.ph3966 ], [ %ptr.ind, %vector.body3968 ] ; 2 uses
  %pointer.phi3970 = phi ptr [ %gep1134.i, %vector.ph3966 ], [ %ptr.ind3997, %vector.body3968 ] ; 2 uses
  %pointer.phi3971 = phi ptr [ %gep1132.i, %vector.ph3966 ], [ %ptr.ind3998, %vector.body3968 ] ; 2 uses
  %pointer.phi3972 = phi ptr [ %gep.i561, %vector.ph3966 ], [ %ptr.ind3999, %vector.body3968 ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi3972, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep3973 = getelementptr i8, ptr %pointer.phi3971, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep3974 = getelementptr i8, ptr %pointer.phi3970, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep3975 = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56>
  %i.ojf = extractelement <8 x ptr> %vector.gep, i64 0
  %i.ojg = extractelement <8 x ptr> %vector.gep3973, i64 0
  %i.ojh = extractelement <8 x ptr> %vector.gep3974, i64 0
  %i.oji = shl i64 %index3969, 3                  ; 3 uses
  %next.gep3976 = getelementptr i8, ptr %i.oir, i64 %i.oji
  %next.gep3977 = getelementptr i8, ptr %gep1138.i, i64 %i.oji
  %next.gep3978 = getelementptr i8, ptr %gep1136.i, i64 %i.oji
  %wide.vec3979 = load <16 x float>, ptr %i.ojg, align 4, !tbaa !22, !alias.scope !443, !noalias !402 ; 2 uses
  %strided.vec3980 = shufflevector <16 x float> %wide.vec3979, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec3981 = shufflevector <16 x float> %wide.vec3979, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec3982 = load <16 x float>, ptr %next.gep3978, align 8, !tbaa !22, !alias.scope !443, !noalias !402 ; 2 uses
  %strided.vec3983 = shufflevector <16 x float> %wide.vec3982, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3984 = shufflevector <16 x float> %wide.vec3982, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ojj = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3983, %strided.vec3980
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ojj, <8 x ptr> align 4 %vector.gep, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !443, !noalias !446
  %wide.vec3985 = load <16 x float>, ptr %next.gep3977, align 8, !tbaa !22, !alias.scope !443, !noalias !402 ; 2 uses
  %strided.vec3986 = shufflevector <16 x float> %wide.vec3985, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3987 = shufflevector <16 x float> %wide.vec3985, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ojk = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3986, %strided.vec3980
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ojk, <8 x ptr> align 4 %vector.gep3974, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !443, !noalias !446
  %i.ojl = getelementptr inbounds nuw i8, ptr %i.ojf, i64 4
  %wide.gep3988 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep3973, i64 4
  %i.ojm = getelementptr inbounds nuw i8, ptr %i.ojh, i64 4
  %wide.gep3989 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep3975, i64 4
  %i.ojn = getelementptr inbounds nuw i8, ptr %next.gep3976, i64 4
  %wide.vec3990 = load <16 x float>, ptr %i.ojn, align 4, !tbaa !22, !alias.scope !449, !noalias !402
  %strided.vec3991 = shufflevector <16 x float> %wide.vec3990, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ojo = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3991, %strided.vec3981
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ojo, <8 x ptr> align 4 %wide.gep3989, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !450, !noalias !451
  %wide.vec3992 = load <16 x float>, ptr %i.ojl, align 4, !tbaa !22, !alias.scope !443, !noalias !402
  %strided.vec3993 = shufflevector <16 x float> %wide.vec3992, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec3994 = load <16 x float>, ptr %i.ojm, align 4, !tbaa !22, !alias.scope !443, !noalias !402
  %strided.vec3995 = shufflevector <16 x float> %wide.vec3994, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ojp = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3993, %strided.vec3995
  %i.ojq = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3984, %strided.vec3987
  %i.ojr = fsub reassoc nsz arcp contract afn <8 x float> %i.ojp, %i.ojq
  %i.ojs = fmul reassoc nsz arcp contract afn <8 x float> %i.ojr, splat (float 5.000000e-01)
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ojs, <8 x ptr> align 4 %wide.gep3988, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !443, !noalias !446
  %index.next3996 = add nuw i64 %index3969, 8     ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 64
  %ptr.ind3997 = getelementptr i8, ptr %pointer.phi3970, i64 64
  %ptr.ind3998 = getelementptr i8, ptr %pointer.phi3971, i64 64
  %ptr.ind3999 = getelementptr i8, ptr %pointer.phi3972, i64 64
  %i.ojt = icmp eq i64 %index.next3996, %n.vec3967
  br i1 %i.ojt, label %.lr.ph1120.i.preheader, label %vector.body3968, !llvm.loop !452

.lr.ph1120.i.preheader:                           ; preds = %vector.body3968, %vector.memcheck3941, %.lr.ph1120.preheader.i
  %.08961118.i.ph = phi ptr [ %i.oir, %vector.memcheck3941 ], [ %i.oir, %.lr.ph1120.preheader.i ], [ %i.oiy, %vector.body3968 ]
  %.08971117.i.ph = phi ptr [ %i.oix, %vector.memcheck3941 ], [ %i.oix, %.lr.ph1120.preheader.i ], [ %i.oiz, %vector.body3968 ]
  %.08981116.i.ph = phi i32 [ %i.nmr, %vector.memcheck3941 ], [ %i.nmr, %.lr.ph1120.preheader.i ], [ %i.not, %vector.body3968 ]
  %.08991115.i.ph = phi ptr [ %gep1138.i, %vector.memcheck3941 ], [ %gep1138.i, %.lr.ph1120.preheader.i ], [ %i.oja, %vector.body3968 ]
  %.09011114.i.ph = phi ptr [ %gep1136.i, %vector.memcheck3941 ], [ %gep1136.i, %.lr.ph1120.preheader.i ], [ %i.ojb, %vector.body3968 ]
  %.09031113.i.ph = phi ptr [ %gep1134.i, %vector.memcheck3941 ], [ %gep1134.i, %.lr.ph1120.preheader.i ], [ %i.ojc, %vector.body3968 ]
  %.09051112.i.ph = phi ptr [ %gep1132.i, %vector.memcheck3941 ], [ %gep1132.i, %.lr.ph1120.preheader.i ], [ %i.ojd, %vector.body3968 ]
  %.09071111.i.ph = phi ptr [ %gep.i561, %vector.memcheck3941 ], [ %gep.i561, %.lr.ph1120.preheader.i ], [ %i.oje, %vector.body3968 ]
  br label %.lr.ph1120.i

.lr.ph1120.i:                                     ; preds = %.lr.ph1120.i.preheader, %.lr.ph1120.i
  %.08961118.i = phi ptr [ %i.okx, %.lr.ph1120.i ], [ %.08961118.i.ph, %.lr.ph1120.i.preheader ] ; 2 uses
  %.08971117.i = phi ptr [ %i.okw, %.lr.ph1120.i ], [ %.08971117.i.ph, %.lr.ph1120.i.preheader ] ; 2 uses
  %.08981116.i = phi i32 [ %i.oky, %.lr.ph1120.i ], [ %.08981116.i.ph, %.lr.ph1120.i.preheader ]
  %.08991115.i = phi ptr [ %i.okv, %.lr.ph1120.i ], [ %.08991115.i.ph, %.lr.ph1120.i.preheader ] ; 3 uses
  %.09011114.i = phi ptr [ %i.oku, %.lr.ph1120.i ], [ %.09011114.i.ph, %.lr.ph1120.i.preheader ] ; 3 uses
  %.09031113.i = phi ptr [ %i.okt, %.lr.ph1120.i ], [ %.09031113.i.ph, %.lr.ph1120.i.preheader ] ; 3 uses
  %.09051112.i = phi ptr [ %i.oks, %.lr.ph1120.i ], [ %.09051112.i.ph, %.lr.ph1120.i.preheader ] ; 3 uses
  %.09071111.i = phi ptr [ %i.okr, %.lr.ph1120.i ], [ %.09071111.i.ph, %.lr.ph1120.i.preheader ] ; 3 uses
  %i.oju = load float, ptr %.09051112.i, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ojv = load float, ptr %.09011114.i, align 4, !tbaa !22, !noalias !402
  %i.ojw = fadd reassoc nsz arcp contract afn float %i.ojv, %i.oju
  store float %i.ojw, ptr %.09071111.i, align 4, !tbaa !22, !noalias !402
  %i.ojx = load float, ptr %.08991115.i, align 4, !tbaa !22, !noalias !402
  %i.ojy = fadd reassoc nsz arcp contract afn float %i.ojx, %i.oju
  store float %i.ojy, ptr %.09031113.i, align 4, !tbaa !22, !noalias !402
  %i.ojz = getelementptr inbounds nuw i8, ptr %.09071111.i, i64 4
  %i.oka = getelementptr inbounds nuw i8, ptr %.09051112.i, i64 4 ; 2 uses
  %i.okb = getelementptr inbounds nuw i8, ptr %.09031113.i, i64 4
  %i.okc = getelementptr inbounds nuw i8, ptr %.09011114.i, i64 4
  %i.okd = getelementptr inbounds nuw i8, ptr %.08991115.i, i64 4
  %i.oke = getelementptr inbounds nuw i8, ptr %.08971117.i, i64 4
  %i.okf = getelementptr inbounds nuw i8, ptr %.08961118.i, i64 4
  %i.okg = load float, ptr %i.oka, align 4, !tbaa !22, !noalias !402
  %i.okh = load float, ptr %i.okf, align 4, !tbaa !22, !noalias !402
  %i.oki = fadd reassoc nsz arcp contract afn float %i.okh, %i.okg
  store float %i.oki, ptr %i.oke, align 4, !tbaa !22, !noalias !402
  %i.okj = load float, ptr %i.ojz, align 4, !tbaa !22, !noalias !402
  %i.okk = load float, ptr %i.okc, align 4, !tbaa !22, !noalias !402
  %i.okl = load float, ptr %i.okb, align 4, !tbaa !22, !noalias !402
  %i.okm = load float, ptr %i.okd, align 4, !tbaa !22, !noalias !402
  %i.okn = fadd reassoc nsz arcp contract afn float %i.okj, %i.okl
  %i.oko = fadd reassoc nsz arcp contract afn float %i.okk, %i.okm
  %i.okp = fsub reassoc nsz arcp contract afn float %i.okn, %i.oko
  %i.okq = fmul reassoc nsz arcp contract afn float %i.okp, 5.000000e-01
  store float %i.okq, ptr %i.oka, align 4, !tbaa !22, !noalias !402
  %i.okr = getelementptr inbounds nuw i8, ptr %.09071111.i, i64 8 ; 2 uses
  %i.oks = getelementptr inbounds nuw i8, ptr %.09051112.i, i64 8 ; 2 uses
  %i.okt = getelementptr inbounds nuw i8, ptr %.09031113.i, i64 8 ; 2 uses
  %i.oku = getelementptr inbounds nuw i8, ptr %.09011114.i, i64 8 ; 2 uses
  %i.okv = getelementptr inbounds nuw i8, ptr %.08991115.i, i64 8 ; 2 uses
  %i.okw = getelementptr inbounds nuw i8, ptr %.08971117.i, i64 8
  %i.okx = getelementptr inbounds nuw i8, ptr %.08961118.i, i64 8
  %i.oky = add nuw nsw i32 %.08981116.i, 2        ; 3 uses
  %i.okz = icmp slt i32 %i.oky, %i.nmw
  br i1 %i.okz, label %.lr.ph1120.i, label %._crit_edge1121.i, !llvm.loop !453

._crit_edge1121.i:                                ; preds = %.lr.ph1120.i, %bb.ps
  %.0907.lcssa.i = phi ptr [ %gep.i561, %bb.ps ], [ %i.okr, %.lr.ph1120.i ]
  %.0905.lcssa.i = phi ptr [ %gep1132.i, %bb.ps ], [ %i.oks, %.lr.ph1120.i ]
  %.0903.lcssa.i = phi ptr [ %gep1134.i, %bb.ps ], [ %i.okt, %.lr.ph1120.i ]
  %.0901.lcssa.i = phi ptr [ %gep1136.i, %bb.ps ], [ %i.oku, %.lr.ph1120.i ]
  %.0899.lcssa.i = phi ptr [ %gep1138.i, %bb.ps ], [ %i.okv, %.lr.ph1120.i ]
  %.0898.lcssa.i = phi i32 [ %i.nmr, %bb.ps ], [ %i.oky, %.lr.ph1120.i ]
  %i.ola = icmp slt i32 %.0898.lcssa.i, %i.nmt
  br i1 %i.ola, label %bb.pt, label %bb.pw

bb.pt:                                            ; preds = %._crit_edge1121.i
  %i.olb = load float, ptr %.0905.lcssa.i, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.olc = load float, ptr %.0901.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.old = fadd reassoc nsz arcp contract afn float %i.olc, %i.olb
  store float %i.old, ptr %.0907.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.ole = load float, ptr %.0899.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.olf = fadd reassoc nsz arcp contract afn float %i.ole, %i.olb
  store float %i.olf, ptr %.0903.lcssa.i, align 4, !tbaa !22, !noalias !402
  br label %bb.pw

bb.pu:                                            ; preds = %.lr.ph1129.i
  %i.olg = sub nsw i32 2, %i.oig
  %i.olh = icmp ne i32 %i.oig, 2
  %.neg952.i = sext i1 %i.olh to i32
  %reass.sub.i = sub nsw i32 %.neg952.i, %i.oig
  %i.oli = sext i32 %i.olg to i64
  %i.olj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.oli
end_hunk_3
begin_hunk_4_@process:bb.a
  %bound14025 = icmp ult ptr %i.ols, %scevgep4015
  %found.conflict4026 = and i1 %bound04024, %bound14025
  %conflict.rdx4027 = or i1 %conflict.rdx4023, %found.conflict4026
  br i1 %conflict.rdx4027, label %.lr.ph1101.i.preheader4629, label %vector.ph4030

vector.ph4030:                                    ; preds = %vector.memcheck4009
  %i.olt = getelementptr i8, ptr %i.ols, i64 %i.noh
  %i.olu = getelementptr i8, ptr %i.olm, i64 %i.noh
  %i.olv = getelementptr i8, ptr %gep1138.i, i64 %i.noh
  %i.olw = getelementptr i8, ptr %gep1136.i, i64 %i.noh
  %i.olx = getelementptr i8, ptr %gep1134.i, i64 %i.noh
  %i.oly = getelementptr i8, ptr %gep1132.i, i64 %i.noh
  %i.olz = getelementptr i8, ptr %gep.i561, i64 %i.noh
  br label %vector.body4032

vector.body4032:                                  ; preds = %vector.body4032, %vector.ph4030
  %index4033 = phi i64 [ 0, %vector.ph4030 ], [ %index.next4063, %vector.body4032 ] ; 2 uses
  %pointer.phi4034 = phi ptr [ %i.olm, %vector.ph4030 ], [ %ptr.ind4064, %vector.body4032 ] ; 2 uses
  %pointer.phi4035 = phi ptr [ %gep1134.i, %vector.ph4030 ], [ %ptr.ind4065, %vector.body4032 ] ; 2 uses
  %pointer.phi4036 = phi ptr [ %gep1132.i, %vector.ph4030 ], [ %ptr.ind4066, %vector.body4032 ] ; 2 uses
  %pointer.phi4037 = phi ptr [ %gep.i561, %vector.ph4030 ], [ %ptr.ind4067, %vector.body4032 ] ; 2 uses
  %vector.gep4038 = getelementptr i8, ptr %pointer.phi4037, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4039 = getelementptr i8, ptr %pointer.phi4036, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4040 = getelementptr i8, ptr %pointer.phi4035, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4041 = getelementptr i8, ptr %pointer.phi4034, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56>
  %i.oma = extractelement <8 x ptr> %vector.gep4038, i64 0
  %i.omb = extractelement <8 x ptr> %vector.gep4039, i64 0
  %i.omc = extractelement <8 x ptr> %vector.gep4040, i64 0
  %i.omd = shl i64 %index4033, 3                  ; 3 uses
  %next.gep4042 = getelementptr i8, ptr %i.ols, i64 %i.omd
  %next.gep4043 = getelementptr i8, ptr %gep1138.i, i64 %i.omd ; 2 uses
  %next.gep4044 = getelementptr i8, ptr %gep1136.i, i64 %i.omd
  %wide.vec4045 = load <16 x float>, ptr %i.omb, align 4, !tbaa !22, !alias.scope !454, !noalias !402 ; 2 uses
  %strided.vec4046 = shufflevector <16 x float> %wide.vec4045, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4047 = shufflevector <16 x float> %wide.vec4045, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec4048 = load <16 x float>, ptr %next.gep4042, align 4, !tbaa !22, !alias.scope !457, !noalias !402
  %strided.vec4049 = shufflevector <16 x float> %wide.vec4048, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ome = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4049, %strided.vec4046
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ome, <8 x ptr> align 4 %vector.gep4041, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !459, !noalias !461
  %wide.vec4050 = load <16 x float>, ptr %i.oma, align 4, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4051 = shufflevector <16 x float> %wide.vec4050, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4052 = load <16 x float>, ptr %next.gep4044, align 8, !tbaa !22, !alias.scope !454, !noalias !402 ; 2 uses
  %strided.vec4053 = shufflevector <16 x float> %wide.vec4052, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4054 = shufflevector <16 x float> %wide.vec4052, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec4055 = load <16 x float>, ptr %i.omc, align 4, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4056 = shufflevector <16 x float> %wide.vec4055, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4057 = load <16 x float>, ptr %next.gep4043, align 8, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4058 = shufflevector <16 x float> %wide.vec4057, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.omf = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4051, %strided.vec4056
  %i.omg = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4053, %strided.vec4058
  %i.omh = fsub reassoc nsz arcp contract afn <8 x float> %i.omf, %i.omg
  %i.omi = fmul reassoc nsz arcp contract afn <8 x float> %i.omh, splat (float 5.000000e-01)
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.omi, <8 x ptr> align 4 %vector.gep4039, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !454, !noalias !462
  %wide.gep4059 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4038, i64 4
  %wide.gep4060 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4040, i64 4
  %i.omj = getelementptr inbounds nuw i8, ptr %next.gep4043, i64 4
  %i.omk = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4054, %strided.vec4047
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.omk, <8 x ptr> align 4 %wide.gep4059, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !454, !noalias !462
  %wide.vec4061 = load <16 x float>, ptr %i.omj, align 4, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4062 = shufflevector <16 x float> %wide.vec4061, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.oml = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4062, %strided.vec4047
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.oml, <8 x ptr> align 4 %wide.gep4060, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !454, !noalias !462
  %index.next4063 = add nuw i64 %index4033, 8     ; 2 uses
  %ptr.ind4064 = getelementptr i8, ptr %pointer.phi4034, i64 64
  %ptr.ind4065 = getelementptr i8, ptr %pointer.phi4035, i64 64
  %ptr.ind4066 = getelementptr i8, ptr %pointer.phi4036, i64 64
  %ptr.ind4067 = getelementptr i8, ptr %pointer.phi4037, i64 64
  %i.omm = icmp eq i64 %index.next4063, %n.vec4031
  br i1 %i.omm, label %.lr.ph1101.i.preheader4629, label %vector.body4032, !llvm.loop !463

.lr.ph1101.i.preheader4629:                       ; preds = %vector.body4032, %vector.memcheck4009, %.lr.ph1101.i.preheader
  %.08931099.i.ph = phi i32 [ %i.nmr, %vector.memcheck4009 ], [ %i.nmr, %.lr.ph1101.i.preheader ], [ %i.nog, %vector.body4032 ]
  %.08941098.i.ph = phi ptr [ %i.ols, %vector.memcheck4009 ], [ %i.ols, %.lr.ph1101.i.preheader ], [ %i.olt, %vector.body4032 ]
  %.08951097.i.ph = phi ptr [ %i.olm, %vector.memcheck4009 ], [ %i.olm, %.lr.ph1101.i.preheader ], [ %i.olu, %vector.body4032 ]
  %.19001096.i.ph = phi ptr [ %gep1138.i, %vector.memcheck4009 ], [ %gep1138.i, %.lr.ph1101.i.preheader ], [ %i.olv, %vector.body4032 ]
  %.19021095.i.ph = phi ptr [ %gep1136.i, %vector.memcheck4009 ], [ %gep1136.i, %.lr.ph1101.i.preheader ], [ %i.olw, %vector.body4032 ]
  %.19041094.i.ph = phi ptr [ %gep1134.i, %vector.memcheck4009 ], [ %gep1134.i, %.lr.ph1101.i.preheader ], [ %i.olx, %vector.body4032 ]
  %.19061093.i.ph = phi ptr [ %gep1132.i, %vector.memcheck4009 ], [ %gep1132.i, %.lr.ph1101.i.preheader ], [ %i.oly, %vector.body4032 ]
  %.19081092.i.ph = phi ptr [ %gep.i561, %vector.memcheck4009 ], [ %gep.i561, %.lr.ph1101.i.preheader ], [ %i.olz, %vector.body4032 ]
  br label %.lr.ph1101.i

.lr.ph1101.i:                                     ; preds = %.lr.ph1101.i.preheader4629, %.lr.ph1101.i
  %.08931099.i = phi i32 [ %i.onp, %.lr.ph1101.i ], [ %.08931099.i.ph, %.lr.ph1101.i.preheader4629 ]
  %.08941098.i = phi ptr [ %i.ono, %.lr.ph1101.i ], [ %.08941098.i.ph, %.lr.ph1101.i.preheader4629 ] ; 2 uses
  %.08951097.i = phi ptr [ %i.onn, %.lr.ph1101.i ], [ %.08951097.i.ph, %.lr.ph1101.i.preheader4629 ] ; 2 uses
  %.19001096.i = phi ptr [ %i.onm, %.lr.ph1101.i ], [ %.19001096.i.ph, %.lr.ph1101.i.preheader4629 ] ; 3 uses
  %.19021095.i = phi ptr [ %i.onl, %.lr.ph1101.i ], [ %.19021095.i.ph, %.lr.ph1101.i.preheader4629 ] ; 3 uses
  %.19041094.i = phi ptr [ %i.onk, %.lr.ph1101.i ], [ %.19041094.i.ph, %.lr.ph1101.i.preheader4629 ] ; 3 uses
  %.19061093.i = phi ptr [ %i.onj, %.lr.ph1101.i ], [ %.19061093.i.ph, %.lr.ph1101.i.preheader4629 ] ; 4 uses
  %.19081092.i = phi ptr [ %i.oni, %.lr.ph1101.i ], [ %.19081092.i.ph, %.lr.ph1101.i.preheader4629 ] ; 3 uses
  %i.omn = load float, ptr %.19061093.i, align 4, !tbaa !22, !noalias !402
  %i.omo = load float, ptr %.08941098.i, align 4, !tbaa !22, !noalias !402
  %i.omp = fadd reassoc nsz arcp contract afn float %i.omo, %i.omn
  store float %i.omp, ptr %.08951097.i, align 4, !tbaa !22, !noalias !402
  %i.omq = load float, ptr %.19081092.i, align 4, !tbaa !22, !noalias !402
  %i.omr = load float, ptr %.19021095.i, align 4, !tbaa !22, !noalias !402
  %i.oms = load float, ptr %.19041094.i, align 4, !tbaa !22, !noalias !402
  %i.omt = load float, ptr %.19001096.i, align 4, !tbaa !22, !noalias !402
  %i.omu = fadd reassoc nsz arcp contract afn float %i.omq, %i.oms
  %i.omv = fadd reassoc nsz arcp contract afn float %i.omr, %i.omt
  %i.omw = fsub reassoc nsz arcp contract afn float %i.omu, %i.omv
  %i.omx = fmul reassoc nsz arcp contract afn float %i.omw, 5.000000e-01
  store float %i.omx, ptr %.19061093.i, align 4, !tbaa !22, !noalias !402
  %i.omy = getelementptr inbounds nuw i8, ptr %.19081092.i, i64 4
  %i.omz = getelementptr inbounds nuw i8, ptr %.19061093.i, i64 4
  %i.ona = getelementptr inbounds nuw i8, ptr %.19041094.i, i64 4
  %i.onb = getelementptr inbounds nuw i8, ptr %.19021095.i, i64 4
  %i.onc = getelementptr inbounds nuw i8, ptr %.19001096.i, i64 4
  %i.ond = load float, ptr %i.omz, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.one = load float, ptr %i.onb, align 4, !tbaa !22, !noalias !402
  %i.onf = fadd reassoc nsz arcp contract afn float %i.one, %i.ond
  store float %i.onf, ptr %i.omy, align 4, !tbaa !22, !noalias !402
  %i.ong = load float, ptr %i.onc, align 4, !tbaa !22, !noalias !402
  %i.onh = fadd reassoc nsz arcp contract afn float %i.ong, %i.ond
  store float %i.onh, ptr %i.ona, align 4, !tbaa !22, !noalias !402
  %i.oni = getelementptr inbounds nuw i8, ptr %.19081092.i, i64 8 ; 2 uses
  %i.onj = getelementptr inbounds nuw i8, ptr %.19061093.i, i64 8 ; 2 uses
  %i.onk = getelementptr inbounds nuw i8, ptr %.19041094.i, i64 8 ; 2 uses
  %i.onl = getelementptr inbounds nuw i8, ptr %.19021095.i, i64 8 ; 2 uses
  %i.onm = getelementptr inbounds nuw i8, ptr %.19001096.i, i64 8 ; 2 uses
  %i.onn = getelementptr inbounds nuw i8, ptr %.08951097.i, i64 8 ; 2 uses
  %i.ono = getelementptr inbounds nuw i8, ptr %.08941098.i, i64 8 ; 2 uses
  %i.onp = add nuw nsw i32 %.08931099.i, 2        ; 3 uses
  %i.onq = icmp slt i32 %i.onp, %i.nmw
  br i1 %i.onq, label %.lr.ph1101.i, label %._crit_edge1102.i, !llvm.loop !464

._crit_edge1102.i:                                ; preds = %.lr.ph1101.i, %bb.pu
  %.1908.lcssa.i = phi ptr [ %gep.i561, %bb.pu ], [ %i.oni, %.lr.ph1101.i ]
  %.1906.lcssa.i = phi ptr [ %gep1132.i, %bb.pu ], [ %i.onj, %.lr.ph1101.i ] ; 2 uses
  %.1904.lcssa.i = phi ptr [ %gep1134.i, %bb.pu ], [ %i.onk, %.lr.ph1101.i ]
  %.1902.lcssa.i = phi ptr [ %gep1136.i, %bb.pu ], [ %i.onl, %.lr.ph1101.i ]
  %.1900.lcssa.i = phi ptr [ %gep1138.i, %bb.pu ], [ %i.onm, %.lr.ph1101.i ]
  %.0895.lcssa.i = phi ptr [ %i.olm, %bb.pu ], [ %i.onn, %.lr.ph1101.i ]
  %.0894.lcssa.i = phi ptr [ %i.ols, %bb.pu ], [ %i.ono, %.lr.ph1101.i ]
  %.0893.lcssa.i = phi i32 [ %i.nmr, %bb.pu ], [ %i.onp, %.lr.ph1101.i ]
  %i.onr = icmp slt i32 %.0893.lcssa.i, %i.nmt
  br i1 %i.onr, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %._crit_edge1102.i
  %i.ons = load float, ptr %.1906.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.ont = load float, ptr %.0894.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.onu = fadd reassoc nsz arcp contract afn float %i.ont, %i.ons
  store float %i.onu, ptr %.0895.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.onv = load float, ptr %.1908.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.onw = load float, ptr %.1902.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.onx = load float, ptr %.1904.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.ony = load float, ptr %.1900.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.onz = fadd reassoc nsz arcp contract afn float %i.onv, %i.onx
  %i.ooa = fadd reassoc nsz arcp contract afn float %i.onw, %i.ony
  %i.oob = fsub reassoc nsz arcp contract afn float %i.onz, %i.ooa
  %i.ooc = fmul reassoc nsz arcp contract afn float %i.oob, 5.000000e-01
  store float %i.ooc, ptr %.1906.lcssa.i, align 4, !tbaa !22, !noalias !402
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %._crit_edge1102.i, %bb.pt, %._crit_edge1121.i
  %indvars.iv.next1283.i = add nuw nsw i64 %indvars.iv1282.i, 1 ; 2 uses
  %exitcond1140.not = icmp eq i64 %indvars.iv.next1283.i, %i.lwk
  %indvar.next3948 = add i64 %indvar3947, 1
  br i1 %exitcond1140.not, label %._crit_edge1130.i, label %.lr.ph1129.i

.preheader1020.i:                                 ; preds = %._crit_edge1142.i, %.preheader1021.i
  br i1 %i.lus, label %.lr.ph1167.i, label %._crit_edge1168.i

.lr.ph1167.i:                                     ; preds = %.preheader1020.i
  %i.ood = add nuw nsw i32 %i.nmr, 2              ; 3 uses
  %i.ooe = add nsw i32 %i.nmt, -2                 ; 4 uses
  %i.oof = sext i32 %i.ooe to i64                 ; 3 uses
  br i1 %i.lvz, label %.lr.ph1150.i.preheader.preheader, label %._crit_edge1168.i

.lr.ph1150.i.preheader.preheader:                 ; preds = %.lr.ph1167.i
  %i.oog = zext nneg i32 %i.nmr to i64            ; 3 uses
  %i.ooh = add nuw nsw i64 %i.oog, 4
  %i.ooi = add nsw i32 %.neg.i554, 6
  %i.ooj = add i32 %i.ooi, %i.lyf                 ; 2 uses
  %i.ook = sext i32 %i.ooj to i64
  %i.ool = zext nneg i32 %i.nmr to i64            ; 3 uses
  %i.oom = add nuw nsw i64 %i.ool, 4
  %i.oon = sext i32 %i.ooj to i64
  %i.ooo = zext nneg i32 %i.nmr to i64            ; 3 uses
  %i.oop = add nuw nsw i64 %i.ooo, 4
  %i.ooq = add nsw i32 %.neg.i554, 6
  %i.oor = add i32 %i.ooq, %i.lyf
  %i.oos = sext i32 %i.oor to i64
  %i.oot = zext nneg i32 %i.nmr to i64            ; 2 uses
  %i.oou = add i32 %.neg.i554, %i.lyf
  %i.oov = add i32 %i.oou, 6
  %i.oow = sext i32 %i.oov to i64
  %i.oox = zext nneg i32 %i.nmr to i64            ; 2 uses
  %i.ooy = add i32 %.neg.i554, %i.lyf
  %i.ooz = add i32 %i.ooy, 6
  %i.opa = sext i32 %i.ooz to i64
  %i.opb = zext nneg i32 %i.nmr to i64            ; 2 uses
  %i.opc = add i32 %.neg.i554, %i.lyf
  %i.opd = add i32 %i.opc, 6
  %i.ope = sext i32 %i.opd to i64
  br label %.lr.ph1150.i.preheader

.preheader1016.i:                                 ; preds = %.preheader1016.i.preheader, %._crit_edge1142.i
  %indvars.iv1288.i = phi i64 [ %indvars.iv.next1289.i, %._crit_edge1142.i ], [ 4, %.preheader1016.i.preheader ] ; 3 uses
  %i.opf = mul nuw nsw i64 %indvars.iv1288.i, 136 ; 5 uses
  %indvars.iv1288.tr.i = trunc nuw i64 %indvars.iv1288.i to i32
  %i.opg = shl nuw i32 %indvars.iv1288.tr.i, 1
  %i.oph = and i32 %i.opg, 14                     ; 5 uses
  br i1 %i.nsp, label %.epil.preheader4742, label %.preheader1016.i.new

.preheader1016.i.new:                             ; preds = %.preheader1016.i
  %i.opi = shl nuw nsw i32 %i.oph, 1
  %i.opj = lshr i32 %.fr1063, %i.opi
  %i.opk = and i32 %i.opj, 3
  %i.opl = zext nneg i32 %i.opk to i64
  %i.opm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.opl
  %i.opn = load ptr, ptr %i.opm, align 8, !tbaa !407, !noalias !408
  %i.opo = shl nuw nsw i32 %i.oph, 1
  %i.opp = or disjoint i32 %i.opo, 2
  %i.opq = lshr i32 %.fr1063, %i.opp
  %i.opr = and i32 %i.opq, 3
  %i.ops = zext nneg i32 %i.opr to i64
  %i.opt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ops
  %i.opu = load ptr, ptr %i.opt, align 8, !tbaa !407, !noalias !408
  %i.opv = shl nuw nsw i32 %i.oph, 1
  %i.opw = lshr i32 %.fr1063, %i.opv
  %i.opx = and i32 %i.opw, 3
  %i.opy = zext nneg i32 %i.opx to i64
  %i.opz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.opy
  %i.oqa = load ptr, ptr %i.opz, align 8, !tbaa !407, !noalias !408
  %i.oqb = shl nuw nsw i32 %i.oph, 1
  %i.oqc = or disjoint i32 %i.oqb, 2
  %i.oqd = lshr i32 %.fr1063, %i.oqc
  %i.oqe = and i32 %i.oqd, 3
  %i.oqf = zext nneg i32 %i.oqe to i64
  %i.oqg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.oqf
  %i.oqh = load ptr, ptr %i.oqg, align 8, !tbaa !407, !noalias !408
  br label %bb.py

._crit_edge1142.i.unr-lcssa:                      ; preds = %bb.py
  br i1 %lcmp.mod4747.not, label %._crit_edge1142.i, label %.epil.preheader4742

.epil.preheader4742:                              ; preds = %._crit_edge1142.i.unr-lcssa, %.preheader1016.i
  %indvars.iv1285.i.epil.init = phi i64 [ 4, %.preheader1016.i ], [ %indvars.iv.next1286.i.3, %._crit_edge1142.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4748)
  br label %bb.px

bb.px:                                            ; preds = %bb.px, %.epil.preheader4742
  %indvars.iv1285.i.epil = phi i64 [ %indvars.iv1285.i.epil.init, %.epil.preheader4742 ], [ %indvars.iv.next1286.i.epil, %bb.px ] ; 3 uses
  %epil.iter4746 = phi i64 [ 0, %.epil.preheader4742 ], [ %epil.iter4746.next, %bb.px ]
  %i.oqi = add nuw nsw i64 %indvars.iv1285.i.epil, %i.opf ; 2 uses
  %i.oqj = trunc nuw nsw i64 %indvars.iv1285.i.epil to i32
  %i.oqk = and i32 %i.oqj, 1
  %i.oql = or disjoint i32 %i.oqk, %i.oph
  %i.oqm = shl nuw nsw i32 %i.oql, 1
  %i.oqn = lshr i32 %.fr1063, %i.oqm
  %i.oqo = and i32 %i.oqn, 3
  %i.oqp = getelementptr inbounds nuw [4 x i8], ptr %i.lum, i64 %i.oqi
  %i.oqq = load float, ptr %i.oqp, align 4, !tbaa !22, !noalias !402
  %i.oqr = zext nneg i32 %i.oqo to i64
  %i.oqs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.oqr
  %i.oqt = load ptr, ptr %i.oqs, align 8, !tbaa !407, !noalias !408
  %i.oqu = getelementptr inbounds nuw [4 x i8], ptr %i.oqt, i64 %i.oqi
  store float %i.oqq, ptr %i.oqu, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1286.i.epil = add nuw nsw i64 %indvars.iv1285.i.epil, 1
  %epil.iter4746.next = add i64 %epil.iter4746, 1 ; 2 uses
  %epil.iter4746.cmp.not = icmp eq i64 %epil.iter4746.next, %xtraiter4745
  br i1 %epil.iter4746.cmp.not, label %._crit_edge1142.i, label %bb.px, !llvm.loop !465

._crit_edge1142.i:                                ; preds = %bb.px, %._crit_edge1142.i.unr-lcssa
  %indvars.iv.next1289.i = add nuw nsw i64 %indvars.iv1288.i, 1 ; 2 uses
  %exitcond1146.not = icmp eq i64 %indvars.iv.next1289.i, %smax1145
  br i1 %exitcond1146.not, label %.preheader1020.i, label %.preheader1016.i

bb.py:                                            ; preds = %bb.py, %.preheader1016.i.new
  %indvars.iv1285.i = phi i64 [ 4, %.preheader1016.i.new ], [ %indvars.iv.next1286.i.3, %bb.py ] ; 5 uses
  %niter4750 = phi i64 [ 0, %.preheader1016.i.new ], [ %niter4750.next.3, %bb.py ]
  %i.oqv = add nuw nsw i64 %indvars.iv1285.i, %i.opf ; 2 uses
  %i.oqw = getelementptr inbounds nuw [4 x i8], ptr %i.lum, i64 %i.oqv
  %i.oqx = load float, ptr %i.oqw, align 16, !tbaa !22, !noalias !402
  %i.oqy = getelementptr inbounds nuw [4 x i8], ptr %i.opn, i64 %i.oqv
  store float %i.oqx, ptr %i.oqy, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1286.i = or disjoint i64 %indvars.iv1285.i, 1
  %i.oqz = add nuw nsw i64 %indvars.iv.next1286.i, %i.opf ; 2 uses
  %i.ora = getelementptr inbounds nuw [4 x i8], ptr %i.lum, i64 %i.oqz
  %i.orb = load float, ptr %i.ora, align 4, !tbaa !22, !noalias !402
  %i.orc = getelementptr inbounds nuw [4 x i8], ptr %i.opu, i64 %i.oqz
  store float %i.orb, ptr %i.orc, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1286.i.1 = or disjoint i64 %indvars.iv1285.i, 2
  %i.ord = add nuw nsw i64 %indvars.iv.next1286.i.1, %i.opf ; 2 uses
  %i.ore = getelementptr inbounds nuw [4 x i8], ptr %i.lum, i64 %i.ord
  %i.orf = load float, ptr %i.ore, align 8, !tbaa !22, !noalias !402
  %i.org = getelementptr inbounds nuw [4 x i8], ptr %i.oqa, i64 %i.ord
  store float %i.orf, ptr %i.org, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1286.i.2 = or disjoint i64 %indvars.iv1285.i, 3
  %i.orh = add nuw nsw i64 %indvars.iv.next1286.i.2, %i.opf ; 2 uses
  %i.ori = getelementptr inbounds nuw [4 x i8], ptr %i.lum, i64 %i.orh
  %i.orj = load float, ptr %i.ori, align 4, !tbaa !22, !noalias !402
  %i.ork = getelementptr inbounds nuw [4 x i8], ptr %i.oqh, i64 %i.orh
  store float %i.orj, ptr %i.ork, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1286.i.3 = add nuw nsw i64 %indvars.iv1285.i, 4 ; 2 uses
  %niter4750.next.3 = add i64 %niter4750, 4       ; 2 uses
  %niter4750.ncmp.3 = icmp eq i64 %niter4750.next.3, %unroll_iter4749
  br i1 %niter4750.ncmp.3, label %._crit_edge1142.i.unr-lcssa, label %bb.py

._crit_edge1168.i:                                ; preds = %._crit_edge1165.i.loopexit, %.lr.ph1167.i, %.preheader1020.i
  %i.orl = select i1 %i.nmq, i32 4, i32 8         ; 3 uses
  %i.orm = or disjoint i32 %i.orl, %i.lyb         ; 7 uses
  %.neg951.i = select i1 %i.nms, i32 -4, i32 -8   ; 2 uses
  %i.orn = add nsw i32 %i.lyd, %.neg951.i         ; 3 uses
  br i1 %i.lwd, label %.lr.ph1182.i, label %._crit_edge1183.split.i

.lr.ph1182.i:                                     ; preds = %._crit_edge1168.i
  %i.oro = icmp slt i32 %i.orm, %i.orn
  %i.orp = load ptr, ptr @lmmse_gamma_out, align 8, !noalias !408 ; 7 uses
  %i.orq = icmp eq ptr %i.orp, null
  br i1 %i.oro, label %.lr.ph1175.i.preheader, label %._crit_edge1183.split.i

.lr.ph1175.i.preheader:                           ; preds = %.lr.ph1182.i
  %reass.sub = sub nsw i32 %i.orm, %i.lyb
  %.reass1178.i = add nsw i32 %reass.sub, 4
  %i.orr = add i32 %.neg951.i, %i.lyd             ; 2 uses
  %i.ors = add i32 %i.orr, %i.lxw
  %i.ort = sub i32 %i.ors, %i.orl                 ; 2 uses
  %i.oru = zext i32 %i.ort to i64
  %i.orv = add nuw nsw i64 %i.oru, 1              ; 2 uses
  %min.iters.check3700 = icmp ult i32 %i.ort, 7
  %n.vec3702 = and i64 %i.orv, 8589934584         ; 5 uses
  %i.orw = trunc i64 %n.vec3702 to i32
  %i.orx = add i32 %i.orm, %i.orw
  %i.ory = shl nuw nsw i64 %n.vec3702, 2          ; 3 uses
  %i.orz = shl nuw nsw i64 %n.vec3702, 4
  %cmp.n3735 = icmp eq i64 %i.orv, %n.vec3702
  %i.osa = add i32 %i.orr, %i.lxx
  %i.osb = sub i32 %i.osa, %i.orl                 ; 2 uses
  %i.osc = zext i32 %i.osb to i64
  %i.osd = add nuw nsw i64 %i.osc, 1              ; 2 uses
  %min.iters.check3677 = icmp ult i32 %i.osb, 7
  %n.vec3679 = and i64 %i.osd, 8589934584         ; 5 uses
  %i.ose = trunc i64 %n.vec3679 to i32
  %i.osf = add i32 %i.orm, %i.ose
  %i.osg = shl nuw nsw i64 %n.vec3679, 2          ; 3 uses
  %i.osh = shl nuw nsw i64 %n.vec3679, 4
  %cmp.n3693 = icmp eq i64 %i.osd, %n.vec3679
  br label %.lr.ph1175.i

.lr.ph1150.i.preheader:                           ; preds = %.lr.ph1150.i.preheader.preheader, %._crit_edge1165.i.loopexit
  %.08901166.i = phi i32 [ %i.pij, %._crit_edge1165.i.loopexit ], [ 0, %.lr.ph1150.i.preheader.preheader ]
  br label %.lr.ph1150.i

.lr.ph1150.i:                                     ; preds = %.lr.ph1150.i.preheader, %._crit_edge1147.i
  %indvar3890 = phi i64 [ 0, %.lr.ph1150.i.preheader ], [ %indvar.next3891, %._crit_edge1147.i ] ; 2 uses
  %indvars.iv1294.i = phi i64 [ %i.lwf, %.lr.ph1150.i.preheader ], [ %indvars.iv.next1295.i, %._crit_edge1147.i ] ; 3 uses
  %i.osi = mul i64 %indvar3890, 544               ; 4 uses
  %scevgep3892 = getelementptr i8, ptr %i.lww, i64 %i.osi
  %scevgep3894 = getelementptr i8, ptr %i.lwy, i64 %i.osi
  %indvars.iv1294.tr.i = trunc nuw i64 %indvars.iv1294.i to i32
  %i.osj = shl nuw i32 %indvars.iv1294.tr.i, 1
  %i.osk = and i32 %i.osj, 14                     ; 2 uses
  %i.osl = shl nuw nsw i32 %i.osk, 1
  %i.osm = lshr i32 %.fr1063, %i.osl              ; 3 uses
  %i.osn = and i32 %i.osm, 1                      ; 2 uses
  %i.oso = or disjoint i32 %i.osn, %i.ood         ; 2 uses
  %i.osp = icmp slt i32 %i.oso, %i.ooe
  br i1 %i.osp, label %.lr.ph1146.i, label %._crit_edge1147.i

.lr.ph1146.i:                                     ; preds = %.lr.ph1150.i
  %i.osq = or disjoint i32 %i.osn, %i.osk
  %i.osr = shl nuw nsw i32 %i.osq, 1
  %i.oss = lshr i32 %.fr1063, %i.osr
  %i.ost = and i32 %i.oss, 3
  %i.osu = mul nuw nsw i64 %indvars.iv1294.i, 136 ; 2 uses
  %i.osv = getelementptr inbounds nuw [4 x i8], ptr %i.lui, i64 %i.osu ; 2 uses
  %i.osw = zext nneg i32 %i.ost to i64
  %i.osx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osw
  %i.osy = load ptr, ptr %i.osx, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.osz = getelementptr inbounds nuw [4 x i8], ptr %i.osy, i64 %i.osu ; 2 uses
  %i.ota = zext nneg i32 %i.oso to i64            ; 5 uses
  %i.otb = and i32 %i.osm, 1
  %i.otc = zext nneg i32 %i.otb to i64            ; 2 uses
  %i.otd = or disjoint i64 %i.oot, %i.otc
  %i.ote = add nuw nsw i64 %i.otd, 4
  %i.otf = call i64 @llvm.smax.i64(i64 %i.ote, i64 %i.oow)
  %i.otg = add nsw i64 %i.otf, -3
  %i.oth = or disjoint i64 %i.oot, %i.otc
  %i.oti = sub i64 %i.otg, %i.oth                 ; 2 uses
  %i.otj = lshr i64 %i.oti, 1
  %i.otk = add nuw i64 %i.otj, 1                  ; 2 uses
  %min.iters.check3903 = icmp ult i64 %i.oti, 8
  br i1 %min.iters.check3903, label %scalar.ph3902.preheader, label %vector.memcheck3889

scalar.ph3902.preheader:                          ; preds = %vector.body3909, %vector.memcheck3889, %.lr.ph1146.i
  %indvars.iv1291.i.ph = phi i64 [ %i.ota, %vector.memcheck3889 ], [ %i.ota, %.lr.ph1146.i ], [ %i.ouh, %vector.body3909 ]
  br label %scalar.ph3902

vector.memcheck3889:                              ; preds = %.lr.ph1146.i
  %i.otl = and i32 %i.osm, 1
  %i.otm = zext nneg i32 %i.otl to i64            ; 3 uses
  %i.otn = or disjoint i64 %i.ooo, %i.otm
  %i.oto = shl nuw nsw i64 %i.otn, 2              ; 4 uses
  %scevgep3893 = getelementptr i8, ptr %scevgep3892, i64 %i.oto
  %i.otp = or disjoint i64 %i.oop, %i.otm
  %smax3895 = call i64 @llvm.smax.i64(i64 %i.otp, i64 %i.oos)
  %i.otq = add nuw i64 %smax3895, 4611686018427387901
  %i.otr = or disjoint i64 %i.ooo, %i.otm
  %i.ots = sub nuw i64 %i.otq, %i.otr
  %i.ott = shl i64 %i.ots, 2
  %i.otu = and i64 %i.ott, -8                     ; 2 uses
  %i.otv = getelementptr i8, ptr %scevgep3894, i64 %i.otu
  %scevgep3896 = getelementptr i8, ptr %i.otv, i64 %i.oto
  %i.otw = getelementptr i8, ptr %i.osy, i64 %i.lwo
  %i.otx = getelementptr i8, ptr %i.otw, i64 8
  %i.oty = getelementptr i8, ptr %i.otx, i64 %i.osi
  %scevgep3897 = getelementptr i8, ptr %i.oty, i64 %i.oto
  %i.otz = getelementptr i8, ptr %i.osy, i64 %i.lwo
  %i.oua = getelementptr i8, ptr %i.otz, i64 2188
  %i.oub = getelementptr i8, ptr %i.oua, i64 %i.osi
  %i.ouc = getelementptr i8, ptr %i.oub, i64 %i.otu
  %scevgep3898 = getelementptr i8, ptr %i.ouc, i64 %i.oto
  %bound03899 = icmp ult ptr %scevgep3893, %scevgep3898
  %bound13900 = icmp ult ptr %scevgep3897, %scevgep3896
  %found.conflict3901 = and i1 %bound03899, %bound13900
  br i1 %found.conflict3901, label %scalar.ph3902.preheader, label %vector.ph3904

vector.ph3904:                                    ; preds = %vector.memcheck3889
  %i.oud = and i64 %i.otk, 3                      ; 2 uses
  %i.oue = icmp eq i64 %i.oud, 0
  %i.ouf = select i1 %i.oue, i64 4, i64 %i.oud
  %n.vec3905 = sub i64 %i.otk, %i.ouf             ; 2 uses
  %i.oug = shl i64 %n.vec3905, 1
  %i.ouh = add i64 %i.oug, %i.ota
  %broadcast.splatinsert3906 = insertelement <4 x i64> poison, i64 %i.ota, i64 0
  %broadcast.splat3907 = shufflevector <4 x i64> %broadcast.splatinsert3906, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3908 = add nuw nsw <4 x i64> %broadcast.splat3907, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4871 = getelementptr [4 x i8], ptr %i.osz, i64 %i.ota
  br label %vector.body3909

vector.body3909:                                  ; preds = %vector.body3909, %vector.ph3904
  %index3910 = phi i64 [ 0, %vector.ph3904 ], [ %index.next3937, %vector.body3909 ] ; 2 uses
  %vec.ind3911 = phi <4 x i64> [ %induction3908, %vector.ph3904 ], [ %vec.ind.next3938, %vector.body3909 ] ; 2 uses
  %wide.gep3912 = getelementptr inbounds nuw [4 x i8], ptr %i.osv, <4 x i64> %vec.ind3911 ; 2 uses
  %i.oui = extractelement <4 x ptr> %wide.gep3912, i64 0 ; 4 uses
  %.idx4567 = shl nuw i64 %index3910, 3
  %gep4872 = getelementptr i8, ptr %invariant.gep4871, i64 %.idx4567 ; 7 uses
  %i.ouj = getelementptr inbounds i8, ptr %gep4872, i64 -8
  %wide.vec3913 = load <8 x float>, ptr %i.ouj, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3914 = shufflevector <8 x float> %wide.vec3913, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ouk = getelementptr inbounds i8, ptr %gep4872, i64 -4
  %wide.vec3915 = load <8 x float>, ptr %i.ouk, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3916 = shufflevector <8 x float> %wide.vec3915, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3917 = shufflevector <8 x float> %wide.vec3915, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.oul = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3914, %strided.vec3917
  %i.oum = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oul)
  %i.oun = getelementptr inbounds nuw i8, ptr %i.oui, i64 4
  %wide.vec3918 = load <8 x float>, ptr %i.oun, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3919 = shufflevector <8 x float> %wide.vec3918, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ouo = getelementptr inbounds i8, ptr %i.oui, i64 -4
  %wide.vec3920 = load <8 x float>, ptr %i.ouo, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3921 = shufflevector <8 x float> %wide.vec3920, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oup = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3919, %strided.vec3921
  %i.ouq = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oup)
  %i.our = fadd reassoc nsz arcp contract afn <4 x float> %i.ouq, splat (float 1.000000e+00) ; 2 uses
  %i.ous = fadd reassoc nsz arcp contract afn <4 x float> %i.our, %i.oum
  %i.out = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ous ; 2 uses
  %i.ouu = getelementptr inbounds nuw i8, ptr %gep4872, i64 4
  %wide.vec3922 = load <8 x float>, ptr %i.ouu, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3923 = shufflevector <8 x float> %wide.vec3922, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3924 = shufflevector <8 x float> %wide.vec3922, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ouv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3924, %strided.vec3917
  %i.ouw = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ouv)
  %i.oux = fadd reassoc nsz arcp contract afn <4 x float> %i.our, %i.ouw
  %i.ouy = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oux ; 2 uses
  %i.ouz = getelementptr inbounds i8, ptr %gep4872, i64 -1088
  %wide.vec3925 = load <8 x float>, ptr %i.ouz, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3926 = shufflevector <8 x float> %wide.vec3925, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ova = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3926, %strided.vec3917
  %i.ovb = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ova)
  %i.ovc = getelementptr inbounds nuw i8, ptr %i.oui, i64 544
  %wide.vec3927 = load <8 x float>, ptr %i.ovc, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3928 = shufflevector <8 x float> %wide.vec3927, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ovd = getelementptr inbounds i8, ptr %i.oui, i64 -544
  %wide.vec3929 = load <8 x float>, ptr %i.ovd, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3930 = shufflevector <8 x float> %wide.vec3929, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ove = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3928, %strided.vec3930
  %i.ovf = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ove)
  %i.ovg = fadd reassoc nsz arcp contract afn <4 x float> %i.ovf, splat (float 1.000000e+00) ; 2 uses
  %i.ovh = fadd reassoc nsz arcp contract afn <4 x float> %i.ovg, %i.ovb
  %i.ovi = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ovh ; 2 uses
  %i.ovj = getelementptr inbounds nuw i8, ptr %gep4872, i64 1088
  %wide.vec3931 = load <8 x float>, ptr %i.ovj, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3932 = shufflevector <8 x float> %wide.vec3931, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ovk = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3932, %strided.vec3917
  %i.ovl = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ovk)
  %i.ovm = fadd reassoc nsz arcp contract afn <4 x float> %i.ovg, %i.ovl
  %i.ovn = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ovm ; 2 uses
  %i.ovo = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3921, %strided.vec3916
  %i.ovp = fmul reassoc nsz arcp contract afn <4 x float> %i.ovo, %i.out
  %i.ovq = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3919, %strided.vec3923
  %i.ovr = fmul reassoc nsz arcp contract afn <4 x float> %i.ovq, %i.ouy
  %i.ovs = fadd reassoc nsz arcp contract afn <4 x float> %i.ovr, %i.ovp
  %i.ovt = getelementptr inbounds i8, ptr %gep4872, i64 -544
  %wide.vec3933 = load <8 x float>, ptr %i.ovt, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3934 = shufflevector <8 x float> %wide.vec3933, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ovu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3930, %strided.vec3934
  %i.ovv = fmul reassoc nsz arcp contract afn <4 x float> %i.ovu, %i.ovi
  %i.ovw = fadd reassoc nsz arcp contract afn <4 x float> %i.ovs, %i.ovv
  %i.ovx = getelementptr inbounds nuw i8, ptr %gep4872, i64 544
  %wide.vec3935 = load <8 x float>, ptr %i.ovx, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3936 = shufflevector <8 x float> %wide.vec3935, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ovy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3928, %strided.vec3936
  %i.ovz = fmul reassoc nsz arcp contract afn <4 x float> %i.ovy, %i.ovn
  %i.owa = fadd reassoc nsz arcp contract afn <4 x float> %i.ovw, %i.ovz
  %i.owb = fadd reassoc nsz arcp contract afn <4 x float> %i.ouy, %i.out
  %i.owc = fadd reassoc nsz arcp contract afn <4 x float> %i.owb, %i.ovi
  %i.owd = fadd reassoc nsz arcp contract afn <4 x float> %i.owc, %i.ovn
  %i.owe = fdiv reassoc nsz arcp contract afn <4 x float> %i.owa, %i.owd
  %i.owf = fadd reassoc nsz arcp contract afn <4 x float> %i.owe, %strided.vec3917
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.owf, <4 x ptr> align 4 %wide.gep3912, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !469, !noalias !471
  %index.next3937 = add nuw i64 %index3910, 4     ; 2 uses
  %vec.ind.next3938 = add nuw nsw <4 x i64> %vec.ind3911, splat (i64 8)
  %i.owg = icmp eq i64 %index.next3937, %n.vec3905
  br i1 %i.owg, label %scalar.ph3902.preheader, label %vector.body3909, !llvm.loop !472

._crit_edge1147.i:                                ; preds = %scalar.ph3902, %.lr.ph1150.i
  %indvars.iv.next1295.i = add nuw nsw i64 %indvars.iv1294.i, 1 ; 2 uses
  %exitcond1150.not = icmp eq i64 %indvars.iv.next1295.i, %i.lwm
  %indvar.next3891 = add i64 %indvar3890, 1
  br i1 %exitcond1150.not, label %.lr.ph1158.i, label %.lr.ph1150.i

scalar.ph3902:                                    ; preds = %scalar.ph3902.preheader, %scalar.ph3902
  %indvars.iv1291.i = phi i64 [ %indvars.iv.next1292.i, %scalar.ph3902 ], [ %indvars.iv1291.i.ph, %scalar.ph3902.preheader ] ; 3 uses
  %i.owh = getelementptr inbounds nuw [4 x i8], ptr %i.osv, i64 %indvars.iv1291.i ; 5 uses
  %i.owi = getelementptr inbounds nuw [4 x i8], ptr %i.osz, i64 %indvars.iv1291.i ; 9 uses
  %i.owj = getelementptr inbounds i8, ptr %i.owi, i64 -4
  %i.owk = getelementptr inbounds nuw i8, ptr %i.owi, i64 4
  %i.owl = getelementptr inbounds nuw i8, ptr %i.owh, i64 544
  %i.owm = getelementptr inbounds i8, ptr %i.owh, i64 -544
  %i.own = getelementptr inbounds i8, ptr %i.owh, i64 -4
  %i.owo = getelementptr inbounds nuw i8, ptr %i.owh, i64 4
  %i.owp = load float, ptr %i.owl, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.owq = load float, ptr %i.owm, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.owr = load float, ptr %i.own, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ows = load float, ptr %i.owo, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.owt = fsub reassoc nsz arcp contract afn float %i.owp, %i.owq
  %i.owu = fsub reassoc nsz arcp contract afn float %i.ows, %i.owr
  %i.owv = insertelement <2 x float> poison, float %i.owu, i64 0
  %i.oww = insertelement <2 x float> %i.owv, float %i.owt, i64 1
  %i.owx = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.oww)
  %i.owy = shufflevector <2 x float> %i.owx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.owz = fadd reassoc nsz arcp contract afn <4 x float> %i.owy, splat (float 1.000000e+00)
  %i.oxa = getelementptr inbounds nuw i8, ptr %i.owi, i64 544
  %i.oxb = getelementptr inbounds i8, ptr %i.owi, i64 -544
  %i.oxc = load float, ptr %i.owk, align 4, !tbaa !22, !noalias !402
  %i.oxd = load float, ptr %i.owi, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.oxe = load float, ptr %i.owj, align 4, !tbaa !22, !noalias !402
  %i.oxf = load float, ptr %i.oxa, align 4, !tbaa !22, !noalias !402
  %i.oxg = load float, ptr %i.oxb, align 4, !tbaa !22, !noalias !402
  %i.oxh = getelementptr inbounds nuw i8, ptr %i.owi, i64 1088
  %i.oxi = getelementptr inbounds i8, ptr %i.owi, i64 -1088
  %i.oxj = getelementptr inbounds i8, ptr %i.owi, i64 -8
  %i.oxk = getelementptr inbounds nuw i8, ptr %i.owi, i64 8
  %i.oxl = load float, ptr %i.oxh, align 4, !tbaa !22, !noalias !402
  %i.oxm = load float, ptr %i.oxi, align 4, !tbaa !22, !noalias !402
  %i.oxn = load float, ptr %i.oxj, align 4, !tbaa !22, !noalias !402
  %i.oxo = load float, ptr %i.oxk, align 4, !tbaa !22, !noalias !402
  %i.oxp = insertelement <4 x float> poison, float %i.oxo, i64 0
  %i.oxq = insertelement <4 x float> %i.oxp, float %i.oxn, i64 1
  %i.oxr = insertelement <4 x float> %i.oxq, float %i.oxm, i64 2
  %i.oxs = insertelement <4 x float> %i.oxr, float %i.oxl, i64 3
  %i.oxt = insertelement <4 x float> poison, float %i.oxd, i64 0
  %i.oxu = shufflevector <4 x float> %i.oxt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oxv = fsub reassoc nsz arcp contract afn <4 x float> %i.oxs, %i.oxu
  %i.oxw = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxv)
  %i.oxx = fadd reassoc nsz arcp contract afn <4 x float> %i.owz, %i.oxw
  %i.oxy = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxx ; 2 uses
  %i.oxz = fsub reassoc nsz arcp contract afn float %i.owp, %i.oxf
  %i.oya = fsub reassoc nsz arcp contract afn float %i.owq, %i.oxg
  %i.oyb = fsub reassoc nsz arcp contract afn float %i.owr, %i.oxe
  %i.oyc = fsub reassoc nsz arcp contract afn float %i.ows, %i.oxc
  %i.oyd = insertelement <4 x float> poison, float %i.oyc, i64 0
  %i.oye = insertelement <4 x float> %i.oyd, float %i.oyb, i64 1
  %i.oyf = insertelement <4 x float> %i.oye, float %i.oya, i64 2
  %i.oyg = insertelement <4 x float> %i.oyf, float %i.oxz, i64 3
  %i.oyh = fmul reassoc nsz arcp contract afn <4 x float> %i.oyg, %i.oxy
  %i.oyi = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.oyh)
  %i.oyj = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.oxy)
  %i.oyk = fdiv reassoc nsz arcp contract afn float %i.oyi, %i.oyj
  %i.oyl = fadd reassoc nsz arcp contract afn float %i.oyk, %i.oxd
  store float %i.oyl, ptr %i.owh, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1292.i = add nuw nsw i64 %indvars.iv1291.i, 2 ; 2 uses
  %i.oym = icmp slt i64 %indvars.iv.next1292.i, %i.oof
  br i1 %i.oym, label %scalar.ph3902, label %._crit_edge1147.i, !llvm.loop !473

.lr.ph1158.i:                                     ; preds = %._crit_edge1147.i, %._crit_edge1156.i
  %indvar3803 = phi i64 [ %indvar.next3804, %._crit_edge1156.i ], [ 0, %._crit_edge1147.i ] ; 2 uses
  %indvars.iv1300.i = phi i64 [ %indvars.iv.next1301.i, %._crit_edge1156.i ], [ %i.lwf, %._crit_edge1147.i ] ; 3 uses
  %i.oyn = mul i64 %indvar3803, 544               ; 4 uses
  %i.oyo = add i64 %i.lwp, %i.oyn
  %i.oyp = add i64 %i.lwq, %i.oyn
  %scevgep3810 = getelementptr i8, ptr %i.lxa, i64 %i.oyn
  %scevgep3812 = getelementptr i8, ptr %i.lxc, i64 %i.oyn
  %indvars.iv1300.tr.i = trunc nuw i64 %indvars.iv1300.i to i32
  %i.oyq = shl nuw i32 %indvars.iv1300.tr.i, 1
  %i.oyr = and i32 %i.oyq, 14                     ; 2 uses
  %.tr.i972.i = shl nuw nsw i32 %i.oyr, 1
  %i.oys = or disjoint i32 %.tr.i972.i, 2
  %i.oyt = lshr i32 %.fr1063, %i.oys              ; 3 uses
  %i.oyu = and i32 %i.oyt, 1                      ; 2 uses
  %i.oyv = or disjoint i32 %i.oyu, %i.ood         ; 2 uses
  %i.oyw = icmp slt i32 %i.oyv, %i.ooe
  br i1 %i.oyw, label %.preheader.lr.ph.i559, label %._crit_edge1156.i

.preheader.lr.ph.i559:                            ; preds = %.lr.ph1158.i
  %i.oyx = or disjoint i32 %i.oyu, %i.oyr
  %i.oyy = shl nuw nsw i32 %i.oyx, 1
  %i.oyz = xor i32 %i.oyy, 2
  %i.oza = lshr i32 %.fr1063, %i.oyz
  %i.ozb = and i32 %i.oza, 3                      ; 2 uses
  %i.ozc = mul nuw nsw i64 %indvars.iv1300.i, 136 ; 3 uses
  %i.ozd = getelementptr inbounds nuw [4 x i8], ptr %i.lui, i64 %i.ozc ; 2 uses
  %i.oze = zext nneg i32 %i.ozb to i64
  %i.ozf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.oze
  %i.ozg = zext nneg i32 %i.oyv to i64            ; 5 uses
  %i.ozh = load ptr, ptr %i.ozf, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.ozi = getelementptr inbounds nuw [4 x i8], ptr %i.ozh, i64 %i.ozc ; 2 uses
  %i.ozj = sub nsw i32 2, %i.ozb
  %i.ozk = sext i32 %i.ozj to i64
  %i.ozl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ozk
  %i.ozm = load ptr, ptr %i.ozl, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.ozn = getelementptr inbounds nuw [4 x i8], ptr %i.ozm, i64 %i.ozc ; 2 uses
  %i.ozo = and i32 %i.oyt, 1
  %i.ozp = zext nneg i32 %i.ozo to i64            ; 2 uses
  %i.ozq = or disjoint i64 %i.oox, %i.ozp
  %i.ozr = add nuw nsw i64 %i.ozq, 4
  %i.ozs = call i64 @llvm.smax.i64(i64 %i.ozr, i64 %i.opa)
  %i.ozt = add nsw i64 %i.ozs, -3
  %i.ozu = or disjoint i64 %i.oox, %i.ozp
  %i.ozv = sub i64 %i.ozt, %i.ozu                 ; 2 uses
  %i.ozw = lshr i64 %i.ozv, 1
  %i.ozx = add nuw i64 %i.ozw, 1                  ; 2 uses
  %min.iters.check3826 = icmp ult i64 %i.ozv, 8
  br i1 %min.iters.check3826, label %.preheader.i560.preheader, label %vector.memcheck3802

vector.memcheck3802:                              ; preds = %.preheader.lr.ph.i559
  %i.ozy = and i32 %i.oyt, 1
  %i.ozz = zext nneg i32 %i.ozy to i64            ; 3 uses
  %i.paa = or disjoint i64 %i.ool, %i.ozz
  %i.pab = shl nuw nsw i64 %i.paa, 2              ; 4 uses
  %i.pac = add i64 %i.oyo, %i.pab                 ; 2 uses
  %scevgep3805 = getelementptr i8, ptr %i.ozh, i64 %i.pac ; 2 uses
  %i.pad = or disjoint i64 %i.oom, %i.ozz
  %smax3806 = call i64 @llvm.smax.i64(i64 %i.pad, i64 %i.oon)
  %i.pae = add nuw i64 %smax3806, 4611686018427387901
  %i.paf = or disjoint i64 %i.ool, %i.ozz
  %i.pag = sub nuw i64 %i.pae, %i.paf
  %i.pah = shl i64 %i.pag, 2
  %i.pai = and i64 %i.pah, -8                     ; 2 uses
  %i.paj = add i64 %i.oyp, %i.pai
  %i.pak = add i64 %i.paj, %i.pab                 ; 2 uses
  %scevgep3807 = getelementptr i8, ptr %i.ozh, i64 %i.pak ; 2 uses
  %scevgep3808 = getelementptr i8, ptr %i.ozm, i64 %i.pac ; 2 uses
  %scevgep3809 = getelementptr i8, ptr %i.ozm, i64 %i.pak ; 2 uses
  %scevgep3811 = getelementptr i8, ptr %scevgep3810, i64 %i.pab ; 2 uses
  %i.pal = getelementptr i8, ptr %scevgep3812, i64 %i.pai
  %scevgep3813 = getelementptr i8, ptr %i.pal, i64 %i.pab ; 2 uses
  %bound03814 = icmp ult ptr %scevgep3805, %scevgep3809
  %bound13815 = icmp ult ptr %scevgep3808, %scevgep3807
  %found.conflict3816 = and i1 %bound03814, %bound13815
  %bound03817 = icmp ult ptr %scevgep3805, %scevgep3813
  %bound13818 = icmp ult ptr %scevgep3811, %scevgep3807
  %found.conflict3819 = and i1 %bound03817, %bound13818
  %conflict.rdx3820 = or i1 %found.conflict3816, %found.conflict3819
  %bound03821 = icmp ult ptr %scevgep3808, %scevgep3813
  %bound13822 = icmp ult ptr %scevgep3811, %scevgep3809
  %found.conflict3823 = and i1 %bound03821, %bound13822
  %conflict.rdx3824 = or i1 %conflict.rdx3820, %found.conflict3823
  br i1 %conflict.rdx3824, label %.preheader.i560.preheader, label %vector.ph3827

vector.ph3827:                                    ; preds = %vector.memcheck3802
  %i.pam = and i64 %i.ozx, 3                      ; 2 uses
  %i.pan = icmp eq i64 %i.pam, 0
  %i.pao = select i1 %i.pan, i64 4, i64 %i.pam
  %n.vec3828 = sub i64 %i.ozx, %i.pao             ; 2 uses
  %i.pap = shl i64 %n.vec3828, 1
  %i.paq = add i64 %i.pap, %i.ozg
  %broadcast.splatinsert3829 = insertelement <4 x i64> poison, i64 %i.ozg, i64 0
  %broadcast.splat3830 = shufflevector <4 x i64> %broadcast.splatinsert3829, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3831 = add nuw nsw <4 x i64> %broadcast.splat3830, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4873 = getelementptr [4 x i8], ptr %i.ozd, i64 %i.ozg
  br label %vector.body3832

vector.body3832:                                  ; preds = %vector.body3832, %vector.ph3827
  %index3833 = phi i64 [ 0, %vector.ph3827 ], [ %index.next3885, %vector.body3832 ] ; 2 uses
  %vec.ind3834 = phi <4 x i64> [ %induction3831, %vector.ph3827 ], [ %vec.ind.next3886, %vector.body3832 ] ; 3 uses
  %.idx4569 = shl nuw i64 %index3833, 3
  %gep4874 = getelementptr i8, ptr %invariant.gep4873, i64 %.idx4569 ; 8 uses
  %i.par = getelementptr inbounds i8, ptr %gep4874, i64 -8 ; 2 uses
  %i.pas = getelementptr inbounds i8, ptr %gep4874, i64 -1088 ; 2 uses
  %i.pat = getelementptr inbounds nuw i8, ptr %gep4874, i64 1088 ; 2 uses
  %i.pau = getelementptr inbounds i8, ptr %gep4874, i64 -4
  %i.pav = getelementptr inbounds nuw i8, ptr %gep4874, i64 4 ; 2 uses
  %i.paw = getelementptr inbounds i8, ptr %gep4874, i64 -544 ; 2 uses
  %i.pax = getelementptr inbounds nuw i8, ptr %gep4874, i64 544 ; 2 uses
  %wide.gep3835 = getelementptr inbounds nuw [4 x i8], ptr %i.ozi, <4 x i64> %vec.ind3834 ; 2 uses
  %i.pay = extractelement <4 x ptr> %wide.gep3835, i64 0 ; 4 uses
  %wide.vec3836 = load <8 x float>, ptr %i.par, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3837 = shufflevector <8 x float> %wide.vec3836, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3838 = load <8 x float>, ptr %gep4874, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3839 = shufflevector <8 x float> %wide.vec3838, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 5 uses
  %i.paz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3837, %strided.vec3839
  %i.pba = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.paz)
  %i.pbb = getelementptr inbounds nuw i8, ptr %i.pay, i64 4
  %wide.vec3840 = load <8 x float>, ptr %i.pbb, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3841 = shufflevector <8 x float> %wide.vec3840, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pbc = getelementptr inbounds i8, ptr %i.pay, i64 -4
  %wide.vec3842 = load <8 x float>, ptr %i.pbc, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3843 = shufflevector <8 x float> %wide.vec3842, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pbd = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3841, %strided.vec3843
  %i.pbe = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pbd)
  %i.pbf = fadd reassoc nsz arcp contract afn <4 x float> %i.pbe, splat (float 1.000000e+00) ; 2 uses
  %i.pbg = fadd reassoc nsz arcp contract afn <4 x float> %i.pbf, %i.pba
  %i.pbh = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pbg ; 2 uses
  %wide.vec3844 = load <8 x float>, ptr %i.pav, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3845 = shufflevector <8 x float> %wide.vec3844, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3846 = shufflevector <8 x float> %wide.vec3844, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pbi = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3846, %strided.vec3839
  %i.pbj = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pbi)
  %i.pbk = fadd reassoc nsz arcp contract afn <4 x float> %i.pbf, %i.pbj
  %i.pbl = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pbk ; 2 uses
  %wide.vec3847 = load <8 x float>, ptr %i.pas, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3848 = shufflevector <8 x float> %wide.vec3847, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pbm = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3848, %strided.vec3839
  %i.pbn = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pbm)
  %i.pbo = getelementptr inbounds nuw i8, ptr %i.pay, i64 544
  %wide.vec3849 = load <8 x float>, ptr %i.pbo, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3850 = shufflevector <8 x float> %wide.vec3849, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pbp = getelementptr inbounds i8, ptr %i.pay, i64 -544
  %wide.vec3851 = load <8 x float>, ptr %i.pbp, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3852 = shufflevector <8 x float> %wide.vec3851, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pbq = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3850, %strided.vec3852
  %i.pbr = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pbq)
  %i.pbs = fadd reassoc nsz arcp contract afn <4 x float> %i.pbr, splat (float 1.000000e+00) ; 2 uses
  %i.pbt = fadd reassoc nsz arcp contract afn <4 x float> %i.pbs, %i.pbn
  %i.pbu = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pbt ; 2 uses
  %wide.vec3853 = load <8 x float>, ptr %i.pat, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3854 = shufflevector <8 x float> %wide.vec3853, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pbv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3854, %strided.vec3839
  %i.pbw = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pbv)
  %i.pbx = fadd reassoc nsz arcp contract afn <4 x float> %i.pbs, %i.pbw
  %i.pby = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pbx ; 2 uses
  %wide.vec3855 = load <8 x float>, ptr %i.par, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3856 = shufflevector <8 x float> %wide.vec3855, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3857 = shufflevector <8 x float> %wide.vec3855, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pbz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3857, %strided.vec3843
  %i.pca = fmul reassoc nsz arcp contract afn <4 x float> %i.pbz, %i.pbh
  %i.pcb = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3845, %strided.vec3841
  %i.pcc = fmul reassoc nsz arcp contract afn <4 x float> %i.pcb, %i.pbl
  %i.pcd = fadd reassoc nsz arcp contract afn <4 x float> %i.pcc, %i.pca
  %wide.vec3858 = load <8 x float>, ptr %i.paw, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3859 = shufflevector <8 x float> %wide.vec3858, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pce = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3859, %strided.vec3852
  %i.pcf = fmul reassoc nsz arcp contract afn <4 x float> %i.pce, %i.pbu
  %i.pcg = fadd reassoc nsz arcp contract afn <4 x float> %i.pcd, %i.pcf
  %wide.vec3860 = load <8 x float>, ptr %i.pax, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3861 = shufflevector <8 x float> %wide.vec3860, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pch = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3861, %strided.vec3850
  %i.pci = fmul reassoc nsz arcp contract afn <4 x float> %i.pch, %i.pby
  %i.pcj = fadd reassoc nsz arcp contract afn <4 x float> %i.pcg, %i.pci
  %i.pck = fadd reassoc nsz arcp contract afn <4 x float> %i.pbl, %i.pbh
  %i.pcl = fadd reassoc nsz arcp contract afn <4 x float> %i.pck, %i.pbu
  %i.pcm = fadd reassoc nsz arcp contract afn <4 x float> %i.pcl, %i.pby
  %i.pcn = fdiv reassoc nsz arcp contract afn <4 x float> %i.pcj, %i.pcm
  %i.pco = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3839, %i.pcn
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pco, <4 x ptr> align 4 %wide.gep3835, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !477, !noalias !479
  %wide.gep3862 = getelementptr inbounds nuw [4 x i8], ptr %i.ozn, <4 x i64> %vec.ind3834 ; 2 uses
  %i.pcp = extractelement <4 x ptr> %wide.gep3862, i64 0 ; 4 uses
  %wide.vec3863 = load <8 x float>, ptr %i.pau, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3864 = shufflevector <8 x float> %wide.vec3863, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3865 = shufflevector <8 x float> %wide.vec3863, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.pcq = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3856, %strided.vec3865
  %i.pcr = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pcq)
  %i.pcs = getelementptr inbounds nuw i8, ptr %i.pcp, i64 4
  %wide.vec3866 = load <8 x float>, ptr %i.pcs, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3867 = shufflevector <8 x float> %wide.vec3866, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pct = getelementptr inbounds i8, ptr %i.pcp, i64 -4
  %wide.vec3868 = load <8 x float>, ptr %i.pct, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3869 = shufflevector <8 x float> %wide.vec3868, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pcu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3867, %strided.vec3869
  %i.pcv = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pcu)
  %i.pcw = fadd reassoc nsz arcp contract afn <4 x float> %i.pcv, splat (float 1.000000e+00) ; 2 uses
  %i.pcx = fadd reassoc nsz arcp contract afn <4 x float> %i.pcw, %i.pcr
  %i.pcy = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pcx ; 2 uses
  %wide.vec3870 = load <8 x float>, ptr %i.pav, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3871 = shufflevector <8 x float> %wide.vec3870, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3872 = shufflevector <8 x float> %wide.vec3870, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pcz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3872, %strided.vec3865
  %i.pda = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pcz)
  %i.pdb = fadd reassoc nsz arcp contract afn <4 x float> %i.pcw, %i.pda
  %i.pdc = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pdb ; 2 uses
  %wide.vec3873 = load <8 x float>, ptr %i.pas, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3874 = shufflevector <8 x float> %wide.vec3873, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pdd = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3874, %strided.vec3865
  %i.pde = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pdd)
  %i.pdf = getelementptr inbounds nuw i8, ptr %i.pcp, i64 544
  %wide.vec3875 = load <8 x float>, ptr %i.pdf, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3876 = shufflevector <8 x float> %wide.vec3875, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pdg = getelementptr inbounds i8, ptr %i.pcp, i64 -544
  %wide.vec3877 = load <8 x float>, ptr %i.pdg, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3878 = shufflevector <8 x float> %wide.vec3877, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pdh = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3876, %strided.vec3878
  %i.pdi = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pdh)
  %i.pdj = fadd reassoc nsz arcp contract afn <4 x float> %i.pdi, splat (float 1.000000e+00) ; 2 uses
  %i.pdk = fadd reassoc nsz arcp contract afn <4 x float> %i.pdj, %i.pde
  %i.pdl = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pdk ; 2 uses
  %wide.vec3879 = load <8 x float>, ptr %i.pat, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3880 = shufflevector <8 x float> %wide.vec3879, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pdm = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3880, %strided.vec3865
  %i.pdn = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pdm)
  %i.pdo = fadd reassoc nsz arcp contract afn <4 x float> %i.pdj, %i.pdn
  %i.pdp = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pdo ; 2 uses
  %i.pdq = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3864, %strided.vec3869
  %i.pdr = fmul reassoc nsz arcp contract afn <4 x float> %i.pdq, %i.pcy
  %i.pds = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3871, %strided.vec3867
  %i.pdt = fmul reassoc nsz arcp contract afn <4 x float> %i.pds, %i.pdc
  %i.pdu = fadd reassoc nsz arcp contract afn <4 x float> %i.pdt, %i.pdr
  %wide.vec3881 = load <8 x float>, ptr %i.paw, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3882 = shufflevector <8 x float> %wide.vec3881, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pdv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3882, %strided.vec3878
  %i.pdw = fmul reassoc nsz arcp contract afn <4 x float> %i.pdv, %i.pdl
  %i.pdx = fadd reassoc nsz arcp contract afn <4 x float> %i.pdu, %i.pdw
  %wide.vec3883 = load <8 x float>, ptr %i.pax, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3884 = shufflevector <8 x float> %wide.vec3883, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pdy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3884, %strided.vec3876
  %i.pdz = fmul reassoc nsz arcp contract afn <4 x float> %i.pdy, %i.pdp
  %i.pea = fadd reassoc nsz arcp contract afn <4 x float> %i.pdx, %i.pdz
  %i.peb = fadd reassoc nsz arcp contract afn <4 x float> %i.pdc, %i.pcy
  %i.pec = fadd reassoc nsz arcp contract afn <4 x float> %i.peb, %i.pdl
  %i.ped = fadd reassoc nsz arcp contract afn <4 x float> %i.pec, %i.pdp
  %i.pee = fdiv reassoc nsz arcp contract afn <4 x float> %i.pea, %i.ped
  %i.pef = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3865, %i.pee
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pef, <4 x ptr> align 4 %wide.gep3862, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !481, !noalias !482
  %index.next3885 = add nuw i64 %index3833, 4     ; 2 uses
  %vec.ind.next3886 = add nuw nsw <4 x i64> %vec.ind3834, splat (i64 8)
  %i.peg = icmp eq i64 %index.next3885, %n.vec3828
  br i1 %i.peg, label %.preheader.i560.preheader, label %vector.body3832, !llvm.loop !483

.preheader.i560.preheader:                        ; preds = %vector.body3832, %vector.memcheck3802, %.preheader.lr.ph.i559
  %indvars.iv1297.i.ph = phi i64 [ %i.ozg, %vector.memcheck3802 ], [ %i.ozg, %.preheader.lr.ph.i559 ], [ %i.paq, %vector.body3832 ]
  br label %.preheader.i560

.preheader.i560:                                  ; preds = %.preheader.i560.preheader, %.preheader.i560
  %indvars.iv1297.i = phi i64 [ %indvars.iv.next1298.i, %.preheader.i560 ], [ %indvars.iv1297.i.ph, %.preheader.i560.preheader ] ; 4 uses
  %i.peh = getelementptr inbounds nuw [4 x i8], ptr %i.ozd, i64 %indvars.iv1297.i ; 10 uses
  %i.pei = getelementptr inbounds i8, ptr %i.peh, i64 -4 ; 2 uses
  %i.pej = getelementptr inbounds nuw i8, ptr %i.peh, i64 4 ; 2 uses
  %i.pek = getelementptr inbounds nuw [4 x i8], ptr %i.ozi, i64 %indvars.iv1297.i ; 5 uses
  %i.pel = getelementptr inbounds nuw i8, ptr %i.pek, i64 544
  %i.pem = getelementptr inbounds i8, ptr %i.pek, i64 -544
  %i.pen = getelementptr inbounds i8, ptr %i.pek, i64 -4
  %i.peo = getelementptr inbounds nuw i8, ptr %i.pek, i64 4
  %i.pep = load float, ptr %i.pel, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.peq = load float, ptr %i.pem, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.per = load float, ptr %i.pen, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pes = load float, ptr %i.peo, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pet = fsub reassoc nsz arcp contract afn float %i.pep, %i.peq
  %i.peu = fsub reassoc nsz arcp contract afn float %i.pes, %i.per
  %i.pev = insertelement <2 x float> poison, float %i.peu, i64 0
  %i.pew = insertelement <2 x float> %i.pev, float %i.pet, i64 1
  %i.pex = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pew)
  %i.pey = shufflevector <2 x float> %i.pex, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pez = fadd reassoc nsz arcp contract afn <4 x float> %i.pey, splat (float 1.000000e+00)
  %i.pfa = load float, ptr %i.pej, align 4, !tbaa !22, !noalias !402
  %i.pfb = load float, ptr %i.peh, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pfc = load float, ptr %i.pei, align 4, !tbaa !22, !noalias !402
  %i.pfd = insertelement <4 x float> poison, float %i.pfb, i64 0
  %i.pfe = shufflevector <4 x float> %i.pfd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pff = fsub reassoc nsz arcp contract afn float %i.pfc, %i.per
  %i.pfg = fsub reassoc nsz arcp contract afn float %i.pfa, %i.pes
  %i.pfh = insertelement <4 x float> poison, float %i.pfg, i64 0
  %i.pfi = insertelement <4 x float> %i.pfh, float %i.pff, i64 1
  %i.pfj = getelementptr inbounds nuw [4 x i8], ptr %i.ozn, i64 %indvars.iv1297.i ; 5 uses
  %i.pfk = getelementptr inbounds nuw i8, ptr %i.peh, i64 544 ; 2 uses
  %i.pfl = getelementptr inbounds i8, ptr %i.peh, i64 -544 ; 2 uses
  %i.pfm = load float, ptr %i.pfk, align 4, !tbaa !22, !noalias !402
  %i.pfn = load float, ptr %i.pfl, align 4, !tbaa !22, !noalias !402
  %i.pfo = fsub reassoc nsz arcp contract afn float %i.pfm, %i.pep
  %i.pfp = fsub reassoc nsz arcp contract afn float %i.pfn, %i.peq
  %i.pfq = insertelement <4 x float> %i.pfi, float %i.pfp, i64 2
  %i.pfr = insertelement <4 x float> %i.pfq, float %i.pfo, i64 3
  %i.pfs = getelementptr inbounds nuw i8, ptr %i.pfj, i64 544
  %i.pft = getelementptr inbounds i8, ptr %i.pfj, i64 -544
  %i.pfu = getelementptr inbounds i8, ptr %i.pfj, i64 -4
  %i.pfv = getelementptr inbounds nuw i8, ptr %i.pfj, i64 4
  %i.pfw = getelementptr inbounds nuw i8, ptr %i.peh, i64 1088 ; 2 uses
  %i.pfx = getelementptr inbounds i8, ptr %i.peh, i64 -1088 ; 2 uses
  %i.pfy = getelementptr inbounds i8, ptr %i.peh, i64 -8 ; 2 uses
  %i.pfz = getelementptr inbounds nuw i8, ptr %i.peh, i64 8 ; 2 uses
  %i.pga = load float, ptr %i.pfw, align 4, !tbaa !22, !noalias !402
  %i.pgb = load float, ptr %i.pfy, align 4, !tbaa !22, !noalias !402
  %i.pgc = load float, ptr %i.pfx, align 4, !tbaa !22, !noalias !402
  %i.pgd = load float, ptr %i.pfz, align 4, !tbaa !22, !noalias !402
  %i.pge = insertelement <4 x float> poison, float %i.pgd, i64 0
  %i.pgf = insertelement <4 x float> %i.pge, float %i.pgb, i64 1
  %i.pgg = insertelement <4 x float> %i.pgf, float %i.pgc, i64 2
  %i.pgh = insertelement <4 x float> %i.pgg, float %i.pga, i64 3
  %i.pgi = fsub reassoc nsz arcp contract afn <4 x float> %i.pgh, %i.pfe
  %i.pgj = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pgi)
  %i.pgk = fadd reassoc nsz arcp contract afn <4 x float> %i.pez, %i.pgj
  %i.pgl = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pgk ; 2 uses
  %i.pgm = fmul reassoc nsz arcp contract afn <4 x float> %i.pfr, %i.pgl
  %i.pgn = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pgm)
  %i.pgo = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pgl)
  %i.pgp = fdiv reassoc nsz arcp contract afn float %i.pgn, %i.pgo
  %i.pgq = fsub reassoc nsz arcp contract afn float %i.pfb, %i.pgp
  store float %i.pgq, ptr %i.pek, align 4, !tbaa !22, !noalias !402
  %i.pgr = load float, ptr %i.pfs, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pgs = load float, ptr %i.pft, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pgt = load float, ptr %i.pfu, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pgu = load float, ptr %i.pfv, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pgv = fsub reassoc nsz arcp contract afn float %i.pgr, %i.pgs
  %i.pgw = fsub reassoc nsz arcp contract afn float %i.pgu, %i.pgt
  %i.pgx = insertelement <2 x float> poison, float %i.pgw, i64 0
  %i.pgy = insertelement <2 x float> %i.pgx, float %i.pgv, i64 1
  %i.pgz = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pgy)
  %i.pha = shufflevector <2 x float> %i.pgz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.phb = fadd reassoc nsz arcp contract afn <4 x float> %i.pha, splat (float 1.000000e+00)
  %i.phc = load float, ptr %i.pej, align 4, !tbaa !22, !noalias !402
  %i.phd = load float, ptr %i.peh, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.phe = load float, ptr %i.pei, align 4, !tbaa !22, !noalias !402
  %i.phf = load float, ptr %i.pfk, align 4, !tbaa !22, !noalias !402
  %i.phg = load float, ptr %i.pfl, align 4, !tbaa !22, !noalias !402
  %i.phh = load float, ptr %i.pfw, align 4, !tbaa !22, !noalias !402
  %i.phi = load float, ptr %i.pfx, align 4, !tbaa !22, !noalias !402
  %i.phj = load float, ptr %i.pfy, align 4, !tbaa !22, !noalias !402
  %i.phk = load float, ptr %i.pfz, align 4, !tbaa !22, !noalias !402
  %i.phl = insertelement <4 x float> poison, float %i.phk, i64 0
  %i.phm = insertelement <4 x float> %i.phl, float %i.phj, i64 1
  %i.phn = insertelement <4 x float> %i.phm, float %i.phi, i64 2
  %i.pho = insertelement <4 x float> %i.phn, float %i.phh, i64 3
  %i.php = insertelement <4 x float> poison, float %i.phd, i64 0
  %i.phq = shufflevector <4 x float> %i.php, <4 x float> poison, <4 x i32> zeroinitializer
  %i.phr = fsub reassoc nsz arcp contract afn <4 x float> %i.pho, %i.phq
  %i.phs = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.phr)
  %i.pht = fadd reassoc nsz arcp contract afn <4 x float> %i.phb, %i.phs
  %i.phu = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pht ; 2 uses
  %i.phv = fsub reassoc nsz arcp contract afn float %i.phf, %i.pgr
  %i.phw = fsub reassoc nsz arcp contract afn float %i.phg, %i.pgs
  %i.phx = fsub reassoc nsz arcp contract afn float %i.phe, %i.pgt
  %i.phy = fsub reassoc nsz arcp contract afn float %i.phc, %i.pgu
  %i.phz = insertelement <4 x float> poison, float %i.phy, i64 0
  %i.pia = insertelement <4 x float> %i.phz, float %i.phx, i64 1
  %i.pib = insertelement <4 x float> %i.pia, float %i.phw, i64 2
  %i.pic = insertelement <4 x float> %i.pib, float %i.phv, i64 3
  %i.pid = fmul reassoc nsz arcp contract afn <4 x float> %i.pic, %i.phu
  %i.pie = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pid)
  %i.pif = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.phu)
  %i.pig = fdiv reassoc nsz arcp contract afn float %i.pie, %i.pif
  %i.pih = fsub reassoc nsz arcp contract afn float %i.phd, %i.pig
  store float %i.pih, ptr %i.pfj, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1298.i = add nuw nsw i64 %indvars.iv1297.i, 2 ; 2 uses
  %i.pii = icmp slt i64 %indvars.iv.next1298.i, %i.oof
  br i1 %i.pii, label %.preheader.i560, label %._crit_edge1156.i, !llvm.loop !484

._crit_edge1156.i:                                ; preds = %.preheader.i560, %.lr.ph1158.i
  %indvars.iv.next1301.i = add nuw nsw i64 %indvars.iv1300.i, 1 ; 2 uses
  %exitcond1152.not = icmp eq i64 %indvars.iv.next1301.i, %i.lwm
  %indvar.next3804 = add i64 %indvar3803, 1
  br i1 %exitcond1152.not, label %.lr.ph1164.i, label %.lr.ph1158.i

._crit_edge1165.i.loopexit:                       ; preds = %._crit_edge1162.i
  %i.pij = add nuw nsw i32 %.08901166.i, 1        ; 2 uses
  %i.pik = icmp slt i32 %i.pij, %i.lup
  br i1 %i.pik, label %.lr.ph1150.i.preheader, label %._crit_edge1168.i

.lr.ph1164.i:                                     ; preds = %._crit_edge1156.i, %._crit_edge1162.i
  %indvar3742 = phi i64 [ %indvar.next3743, %._crit_edge1162.i ], [ 0, %._crit_edge1156.i ] ; 2 uses
  %indvars.iv1306.i = phi i64 [ %indvars.iv.next1307.i, %._crit_edge1162.i ], [ %i.lwf, %._crit_edge1156.i ] ; 3 uses
  %i.pil = mul i64 %indvar3742, 544               ; 6 uses
  %scevgep3749 = getelementptr i8, ptr %i.lxe, i64 %i.pil
  %scevgep3751 = getelementptr i8, ptr %i.lxg, i64 %i.pil
  %indvars.iv1306.tr.i = trunc nuw i64 %indvars.iv1306.i to i32
  %i.pim = shl nuw i32 %indvars.iv1306.tr.i, 1
  %i.pin = and i32 %i.pim, 14                     ; 2 uses
  %i.pio = shl nuw nsw i32 %i.pin, 1
  %i.pip = lshr i32 %.fr1063, %i.pio              ; 3 uses
  %i.piq = and i32 %i.pip, 1                      ; 2 uses
  %i.pir = or disjoint i32 %i.piq, %i.ood         ; 2 uses
  %i.pis = icmp slt i32 %i.pir, %i.ooe
  br i1 %i.pis, label %.lr.ph1161.i, label %._crit_edge1162.i

.lr.ph1161.i:                                     ; preds = %.lr.ph1164.i
  %i.pit = or disjoint i32 %i.piq, %i.pin
  %i.piu = shl nuw nsw i32 %i.pit, 1
  %i.piv = lshr i32 %.fr1063, %i.piu
  %i.piw = and i32 %i.piv, 3                      ; 2 uses
  %i.pix = sub nsw i32 2, %i.piw
  %i.piy = mul nuw nsw i64 %indvars.iv1306.i, 136 ; 3 uses
  %i.piz = getelementptr inbounds nuw [4 x i8], ptr %i.lui, i64 %i.piy ; 2 uses
  %i.pja = sext i32 %i.pix to i64
  %i.pjb = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.pja
  %i.pjc = load ptr, ptr %i.pjb, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pjd = getelementptr inbounds nuw [4 x i8], ptr %i.pjc, i64 %i.piy ; 2 uses
  %i.pje = zext nneg i32 %i.piw to i64
  %i.pjf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pje
  %i.pjg = load ptr, ptr %i.pjf, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pjh = getelementptr inbounds nuw [4 x i8], ptr %i.pjg, i64 %i.piy ; 2 uses
  %i.pji = zext nneg i32 %i.pir to i64            ; 5 uses
  %i.pjj = and i32 %i.pip, 1
  %i.pjk = zext nneg i32 %i.pjj to i64            ; 2 uses
  %i.pjl = or disjoint i64 %i.opb, %i.pjk
  %i.pjm = add nuw nsw i64 %i.pjl, 4
  %i.pjn = call i64 @llvm.smax.i64(i64 %i.pjm, i64 %i.ope)
  %i.pjo = add nsw i64 %i.pjn, -3
  %i.pjp = or disjoint i64 %i.opb, %i.pjk
  %i.pjq = sub i64 %i.pjo, %i.pjp                 ; 2 uses
  %i.pjr = lshr i64 %i.pjq, 1
  %i.pjs = add nuw i64 %i.pjr, 1                  ; 2 uses
  %min.iters.check3761 = icmp ult i64 %i.pjq, 8
  br i1 %min.iters.check3761, label %scalar.ph3760.preheader, label %vector.memcheck3741

scalar.ph3760.preheader:                          ; preds = %vector.body3767, %vector.memcheck3741, %.lr.ph1161.i
  %indvars.iv1303.i.ph = phi i64 [ %i.pji, %vector.memcheck3741 ], [ %i.pji, %.lr.ph1161.i ], [ %i.pkw, %vector.body3767 ]
  br label %scalar.ph3760

vector.memcheck3741:                              ; preds = %.lr.ph1161.i
  %i.pjt = and i32 %i.pip, 1
  %i.pju = zext nneg i32 %i.pjt to i64            ; 3 uses
  %i.pjv = or disjoint i64 %i.oog, %i.pju
  %i.pjw = shl nuw nsw i64 %i.pjv, 2              ; 6 uses
  %i.pjx = getelementptr i8, ptr %i.pjc, i64 %i.lwn
  %i.pjy = getelementptr i8, ptr %i.pjx, i64 552
  %i.pjz = getelementptr i8, ptr %i.pjy, i64 %i.pil
  %scevgep3744 = getelementptr i8, ptr %i.pjz, i64 %i.pjw ; 2 uses
  %i.pka = or disjoint i64 %i.ooh, %i.pju
  %smax3745 = call i64 @llvm.smax.i64(i64 %i.pka, i64 %i.ook)
  %i.pkb = add nuw i64 %smax3745, 4611686018427387901
  %i.pkc = or disjoint i64 %i.oog, %i.pju
  %i.pkd = sub nuw i64 %i.pkb, %i.pkc
  %i.pke = shl i64 %i.pkd, 2
  %i.pkf = and i64 %i.pke, -8                     ; 3 uses
  %i.pkg = getelementptr i8, ptr %i.pjc, i64 %i.lwn
  %i.pkh = getelementptr i8, ptr %i.pkg, i64 1644
  %i.pki = getelementptr i8, ptr %i.pkh, i64 %i.pil
  %i.pkj = getelementptr i8, ptr %i.pki, i64 %i.pkf
  %scevgep3746 = getelementptr i8, ptr %i.pkj, i64 %i.pjw ; 2 uses
  %i.pkk = getelementptr i8, ptr %i.pjg, i64 %i.lwn
  %i.pkl = getelementptr i8, ptr %i.pkk, i64 8
  %i.pkm = getelementptr i8, ptr %i.pkl, i64 %i.pil
  %scevgep3747 = getelementptr i8, ptr %i.pkm, i64 %i.pjw
  %i.pkn = getelementptr i8, ptr %i.pjg, i64 %i.lwn
  %i.pko = getelementptr i8, ptr %i.pkn, i64 2188
  %i.pkp = getelementptr i8, ptr %i.pko, i64 %i.pil
  %i.pkq = getelementptr i8, ptr %i.pkp, i64 %i.pkf
  %scevgep3748 = getelementptr i8, ptr %i.pkq, i64 %i.pjw
  %scevgep3750 = getelementptr i8, ptr %scevgep3749, i64 %i.pjw
  %i.pkr = getelementptr i8, ptr %scevgep3751, i64 %i.pkf
  %scevgep3752 = getelementptr i8, ptr %i.pkr, i64 %i.pjw
  %bound03753 = icmp ult ptr %scevgep3744, %scevgep3748
  %bound13754 = icmp ult ptr %scevgep3747, %scevgep3746
  %found.conflict3755 = and i1 %bound03753, %bound13754
  %bound03756 = icmp ult ptr %scevgep3744, %scevgep3752
  %bound13757 = icmp ult ptr %scevgep3750, %scevgep3746
  %found.conflict3758 = and i1 %bound03756, %bound13757
  %conflict.rdx3759 = or i1 %found.conflict3755, %found.conflict3758
  br i1 %conflict.rdx3759, label %scalar.ph3760.preheader, label %vector.ph3762

vector.ph3762:                                    ; preds = %vector.memcheck3741
  %i.pks = and i64 %i.pjs, 3                      ; 2 uses
  %i.pkt = icmp eq i64 %i.pks, 0
  %i.pku = select i1 %i.pkt, i64 4, i64 %i.pks
  %n.vec3763 = sub i64 %i.pjs, %i.pku             ; 2 uses
  %i.pkv = shl i64 %n.vec3763, 1
  %i.pkw = add i64 %i.pkv, %i.pji
  %broadcast.splatinsert3764 = insertelement <4 x i64> poison, i64 %i.pji, i64 0
  %broadcast.splat3765 = shufflevector <4 x i64> %broadcast.splatinsert3764, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3766 = add nuw nsw <4 x i64> %broadcast.splat3765, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body3767

vector.body3767:                                  ; preds = %vector.body3767, %vector.ph3762
  %index3768 = phi i64 [ 0, %vector.ph3762 ], [ %index.next3798, %vector.body3767 ] ; 2 uses
  %vec.ind3769 = phi <4 x i64> [ %induction3766, %vector.ph3762 ], [ %vec.ind.next3799, %vector.body3767 ] ; 2 uses
  %i.pkx = shl nuw i64 %index3768, 1
  %i.pky = add nuw i64 %i.pkx, %i.pji             ; 2 uses
  %i.pkz = getelementptr inbounds nuw [4 x i8], ptr %i.piz, i64 %i.pky ; 4 uses
  %wide.gep3770 = getelementptr inbounds nuw [4 x i8], ptr %i.pjd, <4 x i64> %vec.ind3769 ; 2 uses
  %i.pla = extractelement <4 x ptr> %wide.gep3770, i64 0 ; 4 uses
  %i.plb = getelementptr inbounds nuw [4 x i8], ptr %i.pjh, i64 %i.pky ; 5 uses
  %i.plc = getelementptr inbounds i8, ptr %i.plb, i64 -8
  %wide.vec3771 = load <8 x float>, ptr %i.plc, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3772 = shufflevector <8 x float> %wide.vec3771, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3773 = load <8 x float>, ptr %i.plb, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3774 = shufflevector <8 x float> %wide.vec3773, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %i.pld = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3772, %strided.vec3774
  %i.ple = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pld)
  %i.plf = getelementptr inbounds nuw i8, ptr %i.pkz, i64 4
  %wide.vec3775 = load <8 x float>, ptr %i.plf, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3776 = shufflevector <8 x float> %wide.vec3775, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.plg = getelementptr inbounds i8, ptr %i.pkz, i64 -4
  %wide.vec3777 = load <8 x float>, ptr %i.plg, align 4, !tbaa !22, !alias.scope !488, !noalias !402 ; 2 uses
  %strided.vec3778 = shufflevector <8 x float> %wide.vec3777, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec3779 = shufflevector <8 x float> %wide.vec3777, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.plh = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3776, %strided.vec3778
  %i.pli = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.plh)
  %i.plj = fadd reassoc nsz arcp contract afn <4 x float> %i.pli, splat (float 1.000000e+00) ; 2 uses
  %i.plk = fadd reassoc nsz arcp contract afn <4 x float> %i.plj, %i.ple
  %i.pll = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.plk ; 2 uses
  %i.plm = getelementptr inbounds nuw i8, ptr %i.plb, i64 8
  %wide.vec3780 = load <8 x float>, ptr %i.plm, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3781 = shufflevector <8 x float> %wide.vec3780, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pln = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3781, %strided.vec3774
  %i.plo = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pln)
  %i.plp = fadd reassoc nsz arcp contract afn <4 x float> %i.plj, %i.plo
  %i.plq = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.plp ; 2 uses
  %i.plr = getelementptr inbounds i8, ptr %i.plb, i64 -1088
  %wide.vec3782 = load <8 x float>, ptr %i.plr, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3783 = shufflevector <8 x float> %wide.vec3782, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pls = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3783, %strided.vec3774
  %i.plt = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pls)
  %i.plu = getelementptr inbounds nuw i8, ptr %i.pkz, i64 544
  %wide.vec3784 = load <8 x float>, ptr %i.plu, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3785 = shufflevector <8 x float> %wide.vec3784, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.plv = getelementptr inbounds i8, ptr %i.pkz, i64 -544
  %wide.vec3786 = load <8 x float>, ptr %i.plv, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3787 = shufflevector <8 x float> %wide.vec3786, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.plw = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3785, %strided.vec3787
  %i.plx = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.plw)
  %i.ply = fadd reassoc nsz arcp contract afn <4 x float> %i.plx, splat (float 1.000000e+00) ; 2 uses
  %i.plz = fadd reassoc nsz arcp contract afn <4 x float> %i.ply, %i.plt
  %i.pma = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.plz ; 2 uses
  %i.pmb = getelementptr inbounds nuw i8, ptr %i.plb, i64 1088
  %wide.vec3788 = load <8 x float>, ptr %i.pmb, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3789 = shufflevector <8 x float> %wide.vec3788, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pmc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3789, %strided.vec3774
  %i.pmd = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pmc)
  %i.pme = fadd reassoc nsz arcp contract afn <4 x float> %i.ply, %i.pmd
  %i.pmf = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pme ; 2 uses
  %i.pmg = getelementptr inbounds i8, ptr %i.pla, i64 -4
  %wide.vec3790 = load <8 x float>, ptr %i.pmg, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3791 = shufflevector <8 x float> %wide.vec3790, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pmh = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3778, %strided.vec3791
  %i.pmi = fmul reassoc nsz arcp contract afn <4 x float> %i.pmh, %i.pll
  %i.pmj = getelementptr inbounds nuw i8, ptr %i.pla, i64 4
  %wide.vec3792 = load <8 x float>, ptr %i.pmj, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3793 = shufflevector <8 x float> %wide.vec3792, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pmk = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3776, %strided.vec3793
  %i.pml = fmul reassoc nsz arcp contract afn <4 x float> %i.pmk, %i.plq
  %i.pmm = fadd reassoc nsz arcp contract afn <4 x float> %i.pml, %i.pmi
  %i.pmn = getelementptr inbounds i8, ptr %i.pla, i64 -544
  %wide.vec3794 = load <8 x float>, ptr %i.pmn, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3795 = shufflevector <8 x float> %wide.vec3794, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pmo = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3787, %strided.vec3795
  %i.pmp = fmul reassoc nsz arcp contract afn <4 x float> %i.pmo, %i.pma
  %i.pmq = fadd reassoc nsz arcp contract afn <4 x float> %i.pmm, %i.pmp
  %i.pmr = getelementptr inbounds nuw i8, ptr %i.pla, i64 544
  %wide.vec3796 = load <8 x float>, ptr %i.pmr, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3797 = shufflevector <8 x float> %wide.vec3796, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pms = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3785, %strided.vec3797
  %i.pmt = fmul reassoc nsz arcp contract afn <4 x float> %i.pms, %i.pmf
  %i.pmu = fadd reassoc nsz arcp contract afn <4 x float> %i.pmq, %i.pmt
  %i.pmv = fadd reassoc nsz arcp contract afn <4 x float> %i.plq, %i.pll
  %i.pmw = fadd reassoc nsz arcp contract afn <4 x float> %i.pmv, %i.pma
  %i.pmx = fadd reassoc nsz arcp contract afn <4 x float> %i.pmw, %i.pmf
  %i.pmy = fdiv reassoc nsz arcp contract afn <4 x float> %i.pmu, %i.pmx
  %i.pmz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3779, %i.pmy
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pmz, <4 x ptr> align 4 %wide.gep3770, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !490, !noalias !492
  %index.next3798 = add nuw i64 %index3768, 4     ; 2 uses
  %vec.ind.next3799 = add nuw nsw <4 x i64> %vec.ind3769, splat (i64 8)
  %i.pna = icmp eq i64 %index.next3798, %n.vec3763
  br i1 %i.pna, label %scalar.ph3760.preheader, label %vector.body3767, !llvm.loop !493

._crit_edge1162.i:                                ; preds = %scalar.ph3760, %.lr.ph1164.i
  %indvars.iv.next1307.i = add nuw nsw i64 %indvars.iv1306.i, 1 ; 2 uses
  %exitcond1154.not = icmp eq i64 %indvars.iv.next1307.i, %i.lwm
  %indvar.next3743 = add i64 %indvar3742, 1
  br i1 %exitcond1154.not, label %._crit_edge1165.i.loopexit, label %.lr.ph1164.i

scalar.ph3760:                                    ; preds = %scalar.ph3760.preheader, %scalar.ph3760
  %indvars.iv1303.i = phi i64 [ %indvars.iv.next1304.i, %scalar.ph3760 ], [ %indvars.iv1303.i.ph, %scalar.ph3760.preheader ] ; 4 uses
  %i.pnb = getelementptr inbounds nuw [4 x i8], ptr %i.piz, i64 %indvars.iv1303.i ; 5 uses
  %i.pnc = getelementptr inbounds nuw [4 x i8], ptr %i.pjd, i64 %indvars.iv1303.i ; 5 uses
  %i.pnd = getelementptr inbounds nuw [4 x i8], ptr %i.pjh, i64 %indvars.iv1303.i ; 5 uses
  %i.pne = load float, ptr %i.pnb, align 4, !tbaa !22, !noalias !402
end_hunk_4
begin_hunk_5_@vng_interpolate:bb.a
  br label %.backedge

.thread518:                                       ; preds = %fcol.exit312
  %i.qa = add nuw nsw i32 %.0278375, 1            ; 2 uses
  %exitcond.not520 = icmp eq i32 %i.qa, 64
  br i1 %exitcond.not520, label %.thread521, label %.backedge.backedge

.thread521:                                       ; preds = %.thread518
  %i.qb = getelementptr inbounds nuw i8, ptr %.2372.ph, i64 4
  store i32 2147483647, ptr %.2372.ph, align 4, !tbaa !32
  br label %fcol.exit324.us.preheader

.thread:                                          ; preds = %fcol.exit312.thread
  %i.qc = add nuw nsw i32 %.0278375, 1            ; 2 uses
  %exitcond.not513 = icmp eq i32 %i.qc, 64
  br i1 %exitcond.not513, label %.thread515, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.thread, %.thread518
  %.0278375.be = phi i32 [ %i.qc, %.thread ], [ %i.qa, %.thread518 ]
  br label %.backedge

.thread515:                                       ; preds = %.thread
  %i.qd = getelementptr inbounds nuw i8, ptr %.2372.ph, i64 4
  store i32 2147483647, ptr %.2372.ph, align 4, !tbaa !32
  br label %fcol.exit324.thread.preheader

.split380.us:                                     ; preds = %fcol.exit324.thread.7, %.split380.us.loopexit
  %indvars.iv.next.pre-phi = phi i64 [ %i.qt, %fcol.exit324.thread.7 ], [ %.pre470, %.split380.us.loopexit ] ; 2 uses
  %.us-phi = phi ptr [ %.8.7, %fcol.exit324.thread.7 ], [ %.8.us.7, %.split380.us.loopexit ] ; 2 uses
  %exitcond415.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond415.not, label %bb.h, label %bb.i

fcol.exit327:                                     ; preds = %fcol.exit324.thread.preheader
  %.tr.i.i325 = or disjoint i32 %i.cc, %i.dp
  %i.qe = shl nuw nsw i32 %.tr.i.i325, 1
  %i.qf = lshr i32 %.0286, %i.qe
  %i.qg = and i32 %i.qf, 3
  %i.qh = icmp eq i32 %i.qg, %i.ej
  %i.qi = or disjoint i32 %i.ej, %i.y
  %spec.select = select i1 %i.qh, i32 %i.qi, i32 0
  br label %fcol.exit324.thread.1

fcol.exit324.thread.1:                            ; preds = %fcol.exit327, %fcol.exit324.thread.preheader
  %storemerge = phi i32 [ 0, %fcol.exit324.thread.preheader ], [ %spec.select, %fcol.exit327 ]
  %.8 = getelementptr inbounds nuw i8, ptr %.6514517, i64 12
  store i32 %storemerge, ptr %i.ek, align 4, !tbaa !32
  %i.qj = getelementptr inbounds nuw i8, ptr %.6514517, i64 16
  store i32 %i.z, ptr %.8, align 4, !tbaa !32
  %.tr.i.i322.1 = or disjoint i32 %i.bz, %i.dp
  %i.qk = shl nuw nsw i32 %.tr.i.i322.1, 1
  %i.ql = lshr i32 %.0286, %i.qk
  %i.qm = and i32 %i.ql, 3
  %.not306357.1 = icmp eq i32 %i.qm, %i.ej
  br i1 %.not306357.1, label %fcol.exit324.thread.2, label %fcol.exit327.1

fcol.exit327.1:                                   ; preds = %fcol.exit324.thread.1
  %.tr.i.i325.1 = or disjoint i32 %i.cf, %i.dp
  %i.qn = shl nuw nsw i32 %.tr.i.i325.1, 1
  %i.qo = lshr i32 %.0286, %i.qn
  %i.qp = and i32 %i.qo, 3
  %i.qq = icmp eq i32 %i.qp, %i.ej
  %i.qr = or disjoint i32 %i.ej, %i.aa
  %spec.select582 = select i1 %i.qq, i32 %i.qr, i32 0
  br label %fcol.exit324.thread.2

fcol.exit324.thread.2:                            ; preds = %fcol.exit327.1, %fcol.exit324.thread.1
  %storemerge.1 = phi i32 [ 0, %fcol.exit324.thread.1 ], [ %spec.select582, %fcol.exit327.1 ]
  %.8.1 = getelementptr inbounds nuw i8, ptr %.6514517, i64 20
  store i32 %storemerge.1, ptr %i.qj, align 4, !tbaa !32
  %i.qs = getelementptr inbounds nuw i8, ptr %.6514517, i64 24
  store i32 %i.ac, ptr %.8.1, align 4, !tbaa !32
  %i.qt = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.qu = trunc nuw nsw i64 %i.qt to i32
  %i.qv = and i32 %i.qu, 1                        ; 3 uses
  %.tr.i.i322.2 = or disjoint i32 %i.bz, %i.qv
  %i.qw = shl nuw nsw i32 %.tr.i.i322.2, 1
  %i.qx = lshr i32 %.0286, %i.qw
  %i.qy = and i32 %i.qx, 3
  %.not306357.2 = icmp eq i32 %i.qy, %i.ej
  br i1 %.not306357.2, label %fcol.exit324.thread.3, label %fcol.exit327.2

fcol.exit327.2:                                   ; preds = %fcol.exit324.thread.2
  %.tr.i.i325.2 = or disjoint i32 %i.ci, %i.dp
  %i.qz = shl nuw nsw i32 %.tr.i.i325.2, 1
  %i.ra = lshr i32 %.0286, %i.qz
  %i.rb = and i32 %i.ra, 3
  %i.rc = icmp eq i32 %i.rb, %i.ej
  %i.rd = or disjoint i32 %i.ej, %i.ad
  %spec.select583 = select i1 %i.rc, i32 %i.rd, i32 0
  br label %fcol.exit324.thread.3

fcol.exit324.thread.3:                            ; preds = %fcol.exit327.2, %fcol.exit324.thread.2
  %storemerge.2 = phi i32 [ 0, %fcol.exit324.thread.2 ], [ %spec.select583, %fcol.exit327.2 ]
  %.8.2 = getelementptr inbounds nuw i8, ptr %.6514517, i64 28
  store i32 %storemerge.2, ptr %i.qs, align 4, !tbaa !32
  %i.re = getelementptr inbounds nuw i8, ptr %.6514517, i64 32
  store i32 4, ptr %.8.2, align 4, !tbaa !32
  %.tr.i.i322.3 = or disjoint i32 %i.bi, %i.qv
  %i.rf = shl nuw nsw i32 %.tr.i.i322.3, 1
  %i.rg = lshr i32 %.0286, %i.rf
  %i.rh = and i32 %i.rg, 3
  %.not306357.3 = icmp eq i32 %i.rh, %i.ej
  %i.ri = or disjoint i32 %i.ej, 8
  %spec.select584 = select i1 %.not306357.3, i32 0, i32 %i.ri
  %.8.3 = getelementptr inbounds nuw i8, ptr %.6514517, i64 36
  store i32 %spec.select584, ptr %i.re, align 4, !tbaa !32
  %i.rj = getelementptr inbounds nuw i8, ptr %.6514517, i64 40
  store i32 %i.af, ptr %.8.3, align 4, !tbaa !32
  %.tr.i.i322.4 = or disjoint i32 %i.cl, %i.qv
  %i.rk = shl nuw nsw i32 %.tr.i.i322.4, 1
  %i.rl = lshr i32 %.0286, %i.rk
  %i.rm = and i32 %i.rl, 3
  %.not306357.4 = icmp eq i32 %i.rm, %i.ej
  br i1 %.not306357.4, label %fcol.exit324.thread.5, label %fcol.exit327.4

fcol.exit327.4:                                   ; preds = %fcol.exit324.thread.3
  %.tr.i.i325.4 = or disjoint i32 %i.co, %i.dp
  %i.rn = shl nuw nsw i32 %.tr.i.i325.4, 1
  %i.ro = lshr i32 %.0286, %i.rn
  %i.rp = and i32 %i.ro, 3
  %i.rq = icmp eq i32 %i.rp, %i.ej
  %i.rr = or disjoint i32 %i.ej, %i.ag
  %spec.select585 = select i1 %i.rq, i32 %i.rr, i32 0
  br label %fcol.exit324.thread.5

fcol.exit324.thread.5:                            ; preds = %fcol.exit327.4, %fcol.exit324.thread.3
  %storemerge.4 = phi i32 [ 0, %fcol.exit324.thread.3 ], [ %spec.select585, %fcol.exit327.4 ]
  %.8.4 = getelementptr inbounds nuw i8, ptr %.6514517, i64 44
  store i32 %storemerge.4, ptr %i.rj, align 4, !tbaa !32
  %i.rs = getelementptr inbounds nuw i8, ptr %.6514517, i64 48
  store i32 %i.ah, ptr %.8.4, align 4, !tbaa !32
  %.tr.i.i322.5 = or disjoint i32 %i.cl, %i.dp
  %i.rt = shl nuw nsw i32 %.tr.i.i322.5, 1
  %i.ru = lshr i32 %.0286, %i.rt
  %i.rv = and i32 %i.ru, 3
  %.not306357.5 = icmp eq i32 %i.rv, %i.ej
  br i1 %.not306357.5, label %fcol.exit324.thread.6, label %fcol.exit327.5

fcol.exit327.5:                                   ; preds = %fcol.exit324.thread.5
  %.tr.i.i325.5 = or disjoint i32 %i.cr, %i.dp
  %i.rw = shl nuw nsw i32 %.tr.i.i325.5, 1
  %i.rx = lshr i32 %.0286, %i.rw
  %i.ry = and i32 %i.rx, 3
  %i.rz = icmp eq i32 %i.ry, %i.ej
  %i.sa = or disjoint i32 %i.ej, %i.ai
  %spec.select586 = select i1 %i.rz, i32 %i.sa, i32 0
  br label %fcol.exit324.thread.6

fcol.exit324.thread.6:                            ; preds = %fcol.exit327.5, %fcol.exit324.thread.5
  %storemerge.5 = phi i32 [ 0, %fcol.exit324.thread.5 ], [ %spec.select586, %fcol.exit327.5 ]
  %.8.5 = getelementptr inbounds nuw i8, ptr %.6514517, i64 52
  store i32 %storemerge.5, ptr %i.rs, align 4, !tbaa !32
  %i.sb = getelementptr inbounds nuw i8, ptr %.6514517, i64 56
  store i32 %i.ak, ptr %.8.5, align 4, !tbaa !32
  %.tr.i.i322.6 = or disjoint i32 %i.cl, %i.en
  %i.sc = shl nuw nsw i32 %.tr.i.i322.6, 1
  %i.sd = lshr i32 %.0286, %i.sc
  %i.se = and i32 %i.sd, 3
  %.not306357.6 = icmp eq i32 %i.se, %i.ej
  br i1 %.not306357.6, label %fcol.exit324.thread.7, label %fcol.exit327.6

fcol.exit327.6:                                   ; preds = %fcol.exit324.thread.6
  %.tr.i.i325.6 = or disjoint i32 %i.cu, %i.dp
  %i.sf = shl nuw nsw i32 %.tr.i.i325.6, 1
  %i.sg = lshr i32 %.0286, %i.sf
  %i.sh = and i32 %i.sg, 3
  %i.si = icmp eq i32 %i.sh, %i.ej
  %i.sj = or disjoint i32 %i.ej, %i.al
  %spec.select587 = select i1 %i.si, i32 %i.sj, i32 0
  br label %fcol.exit324.thread.7

fcol.exit324.thread.7:                            ; preds = %fcol.exit327.6, %fcol.exit324.thread.6
  %storemerge.6 = phi i32 [ 0, %fcol.exit324.thread.6 ], [ %spec.select587, %fcol.exit327.6 ]
  %.8.6 = getelementptr inbounds nuw i8, ptr %.6514517, i64 60
  store i32 %storemerge.6, ptr %i.sb, align 4, !tbaa !32
  %i.sk = getelementptr inbounds nuw i8, ptr %.6514517, i64 64
  store i32 -4, ptr %.8.6, align 4, !tbaa !32
  %.tr.i.i322.7 = or disjoint i32 %i.bi, %i.en
  %i.sl = shl nuw nsw i32 %.tr.i.i322.7, 1
  %i.sm = lshr i32 %.0286, %i.sl
  %i.sn = and i32 %i.sm, 3
  %.not306357.7 = icmp eq i32 %i.sn, %i.ej
  %i.so = or disjoint i32 %i.ej, -8
  %spec.select588 = select i1 %.not306357.7, i32 0, i32 %i.so
  %.8.7 = getelementptr inbounds nuw i8, ptr %.6514517, i64 68
  store i32 %spec.select588, ptr %i.sk, align 4, !tbaa !32
  br label %.split380.us

.preheader365:                                    ; preds = %.preheader365.lr.ph, %bb.ex
  %.sroa.11.0 = phi ptr [ %i.s, %.preheader365.lr.ph ], [ %.sroa.0.0, %bb.ex ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %i.r, %.preheader365.lr.ph ], [ %.sroa.11.0, %bb.ex ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.q, %.preheader365.lr.ph ], [ %.sroa.7.0, %bb.ex ] ; 2 uses
  %indvars.iv448 = phi i64 [ 2, %.preheader365.lr.ph ], [ %indvars.iv.next449, %bb.ex ] ; 7 uses
  br i1 %i.cz, label %.lr.ph399, label %._crit_edge400

.lr.ph399:                                        ; preds = %.preheader365
  %i.sp = trunc nuw nsw i64 %indvars.iv448 to i32
  %i.sq = urem i32 %i.sp, %i.l
  %i.sr = zext nneg i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [128 x i8], ptr %i.a, i64 %i.sr
  %indvars.iv448.tr = trunc nuw i64 %indvars.iv448 to i32
  %i.st = shl nuw i32 %indvars.iv448.tr, 1
  %i.su = and i32 %i.st, 14
  %i.sv = trunc i64 %indvars.iv448 to i32
  %i.sw = add i32 %i.sv, 600
  %i.sx = urem i32 %i.sw, 6
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = getelementptr inbounds nuw [6 x i8], ptr %5, i64 %i.sy
  %i.ta = trunc i64 %indvars.iv448 to i32
  %i.tb = mul i32 %2, %i.ta
  br label %bb.an

._crit_edge403:                                   ; preds = %bb.ex, %.preheader366.._crit_edge403_crit_edge
  %.pre-phi476 = phi i64 [ %.pre475, %.preheader366.._crit_edge403_crit_edge ], [ %i.dc, %bb.ex ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre472, %.preheader366.._crit_edge403_crit_edge ], [ %i.da, %bb.ex ] ; 2 uses
  %.sroa.7.1 = phi ptr [ %i.r, %.preheader366.._crit_edge403_crit_edge ], [ %.sroa.11.0, %bb.ex ]
  %.sroa.0.1 = phi ptr [ %i.q, %.preheader366.._crit_edge403_crit_edge ], [ %.sroa.7.0, %bb.ex ]
  %i.tc = add i32 %3, 1073741820
  %i.td = mul i32 %.pre-phi, %i.tc
  %i.te = add i32 %i.td, 8
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 32
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.tg, ptr noundef nonnull %i.th, i64 noundef %.pre-phi476) #27
  %i.ti = add i32 %3, 1073741821
  %i.tj = mul i32 %.pre-phi, %i.ti
  %i.tk = add i32 %i.tj, 8
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.tl
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.7.1, i64 32
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.tm, ptr noundef nonnull %i.tn, i64 noundef %.pre-phi476) #27
  tail call void @free(ptr noundef %i.q) #27
  br label %._crit_edge471

._crit_edge400:                                   ; preds = %bb.ev, %.preheader365
  %i.to = icmp samesign ugt i64 %indvars.iv448, 3
  br i1 %i.to, label %bb.ew, label %bb.ex

bb.an:                                            ; preds = %.lr.ph399, %bb.ev
  %indvars.iv439 = phi i64 [ 2, %.lr.ph399 ], [ %indvars.iv.next440, %bb.ev ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.tp = trunc i64 %indvars.iv439 to i32
  %i.tq = add i32 %i.tb, %i.tp
  %i.tr = shl nsw i32 %i.tq, 2
  %i.ts = zext nneg i32 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ts ; 60 uses
  %i.tu = trunc nuw nsw i64 %indvars.iv439 to i32 ; 2 uses
  %i.tv = urem i32 %i.tu, %i.k
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.tw
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !600 ; 3 uses
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !32 ; 2 uses
  %.not302386 = icmp eq i32 %i.tz, 2147483647
  br i1 %.not302386, label %._crit_edge, label %.lr.ph388

.lr.ph388:                                        ; preds = %bb.an, %.loopexit363
  %i.ua = phi i32 [ %i.vn, %.loopexit363 ], [ %i.tz, %bb.an ]
  %.9387 = phi ptr [ %.11, %.loopexit363 ], [ %i.ty, %bb.an ] ; 6 uses
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.ub
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !22
  %i.ue = getelementptr inbounds nuw i8, ptr %.9387, i64 4
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !32
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.ug
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !22
  %i.uj = fsub reassoc nsz arcp contract afn float %i.ud, %i.ui
  %i.uk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.uj)
  %i.ul = getelementptr inbounds nuw i8, ptr %.9387, i64 8
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !32
  %i.un = sitofp reassoc nsz arcp contract afn i32 %i.um to float
  %i.uo = fmul reassoc nsz arcp contract afn float %i.uk, %i.un ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.9387, i64 12
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !32
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ur ; 2 uses
  %i.ut = load float, ptr %i.us, align 4, !tbaa !22
  %i.uu = fadd reassoc nsz arcp contract afn float %i.ut, %i.uo
  store float %i.uu, ptr %i.us, align 4, !tbaa !22
  %i.uv = getelementptr inbounds nuw i8, ptr %.9387, i64 20 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.9387, i64 16
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !32 ; 2 uses
  %i.uy = icmp eq i32 %i.ux, -1
  br i1 %i.uy, label %.loopexit363, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph388
  %i.uz = sext i32 %i.ux to i64
  %i.va = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.uz ; 2 uses
  %i.vb = load float, ptr %i.va, align 4, !tbaa !22
  %i.vc = fadd reassoc nsz arcp contract afn float %i.vb, %i.uo
  store float %i.vc, ptr %i.va, align 4, !tbaa !22
  %i.vd = getelementptr inbounds nuw i8, ptr %.9387, i64 24 ; 2 uses
  %i.ve = load i32, ptr %i.uv, align 4, !tbaa !32 ; 2 uses
  %.not305385 = icmp eq i32 %i.ve, -1
  br i1 %.not305385, label %.loopexit363, label %.lr.ph

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
  br i1 %.not305, label %.loopexit363, label %.lr.ph

.loopexit363:                                     ; preds = %.lr.ph, %bb.ao, %.lr.ph388
  %.11 = phi ptr [ %i.uv, %.lr.ph388 ], [ %i.vd, %bb.ao ], [ %i.vl, %.lr.ph ] ; 3 uses
  %i.vn = load i32, ptr %.11, align 4, !tbaa !32  ; 2 uses
  %.not302 = icmp eq i32 %i.vn, 2147483647
  br i1 %.not302, label %._crit_edge.loopexit, label %.lr.ph388

._crit_edge.loopexit:                             ; preds = %.loopexit363
  %.pre = load float, ptr %i.b, align 16, !tbaa !22
  %.pre457 = load float, ptr %.phi.trans.insert, align 4, !tbaa !22
  %.pre459 = load float, ptr %.phi.trans.insert458, align 8, !tbaa !22
  %.pre461 = load float, ptr %.phi.trans.insert460, align 4, !tbaa !22
  %.pre463 = load float, ptr %.phi.trans.insert462, align 16, !tbaa !22
  %.pre465 = load float, ptr %.phi.trans.insert464, align 4, !tbaa !22
  %.pre467 = load float, ptr %.phi.trans.insert466, align 8, !tbaa !22
  %.pre469 = load float, ptr %.phi.trans.insert468, align 4, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.an
  %i.vo = phi float [ 0.000000e+00, %bb.an ], [ %.pre469, %._crit_edge.loopexit ] ; 5 uses
  %i.vp = phi float [ 0.000000e+00, %bb.an ], [ %.pre467, %._crit_edge.loopexit ] ; 5 uses
  %i.vq = phi float [ 0.000000e+00, %bb.an ], [ %.pre465, %._crit_edge.loopexit ] ; 5 uses
  %i.vr = phi float [ 0.000000e+00, %bb.an ], [ %.pre463, %._crit_edge.loopexit ] ; 5 uses
  %i.vs = phi float [ 0.000000e+00, %bb.an ], [ %.pre461, %._crit_edge.loopexit ] ; 5 uses
  %i.vt = phi float [ 0.000000e+00, %bb.an ], [ %.pre459, %._crit_edge.loopexit ] ; 5 uses
  %i.vu = phi float [ 0.000000e+00, %bb.an ], [ %.pre457, %._crit_edge.loopexit ] ; 5 uses
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
  %i.wf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.11.0, i64 %indvars.iv439
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.wf, ptr noundef nonnull align 4 dereferenceable(16) %i.tt, i64 16, i1 false)
  br label %bb.ev

bb.aq:                                            ; preds = %._crit_edge
  %i.wg = fcmp reassoc nsz arcp contract afn ogt float %i.vv, %i.vu
  %spec.select309 = select nsz i1 %i.wg, float %i.vu, float %i.vv ; 2 uses
  %i.wh = fcmp reassoc nsz arcp contract afn ogt float %spec.select309, %i.vt
  %spec.select309.1 = select nsz i1 %i.wh, float %i.vt, float %spec.select309 ; 2 uses
  %i.wi = fcmp reassoc nsz arcp contract afn ogt float %spec.select309.1, %i.vs
  %spec.select309.2 = select nsz i1 %i.wi, float %i.vs, float %spec.select309.1 ; 2 uses
  %i.wj = fcmp reassoc nsz arcp contract afn ogt float %spec.select309.2, %i.vr
  %spec.select309.3 = select nsz i1 %i.wj, float %i.vr, float %spec.select309.2 ; 2 uses
  %i.wk = fcmp reassoc nsz arcp contract afn ogt float %spec.select309.3, %i.vq
  %spec.select309.4 = select nsz i1 %i.wk, float %i.vq, float %spec.select309.3 ; 2 uses
  %i.wl = fcmp reassoc nsz arcp contract afn ogt float %spec.select309.4, %i.vp
  %spec.select309.5 = select nsz i1 %i.wl, float %i.vp, float %spec.select309.4 ; 2 uses
  %i.wm = fcmp reassoc nsz arcp contract afn ogt float %spec.select309.5, %i.vo
  %spec.select309.6 = select nsz i1 %i.wm, float %i.vo, float %spec.select309.5
  %i.wn = fmul reassoc nsz arcp contract afn float %.1269.6, 5.000000e-01
  %i.wo = fadd reassoc nsz arcp contract afn float %i.wn, %spec.select309.6 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %i.u, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.wp = trunc i64 %indvars.iv439 to i32
  %i.wq = add i32 %i.wp, 600
  %i.wr = urem i32 %i.wq, 6
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !169
  %i.wv = zext i8 %i.wu to i32
  br label %fcol.exit330

bb.as:                                            ; preds = %bb.aq
  %i.ww = and i32 %i.tu, 1
  %.tr.i.i328 = or disjoint i32 %i.ww, %i.su
  %i.wx = shl nuw nsw i32 %.tr.i.i328, 1
  %i.wy = lshr i32 %.0286, %i.wx
  %i.wz = and i32 %i.wy, 3
  br label %fcol.exit330

fcol.exit330:                                     ; preds = %bb.ar, %bb.as
  %.0.i329 = phi i32 [ %i.wv, %bb.ar ], [ %i.wz, %bb.as ]
  %i.xa = zext nneg i32 %.0.i329 to i64           ; 47 uses
end_hunk_5
begin_hunk_6_@vng_interpolate:bb.a
.lr.ph406.split.us:                               ; preds = %.lr.ph406.split.us, %.lr.ph406.split.us.preheader.new
  %.0404.us = phi i64 [ 0, %.lr.ph406.split.us.preheader.new ], [ %i.auh, %.lr.ph406.split.us ] ; 5 uses
  %niter751 = phi i64 [ 0, %.lr.ph406.split.us.preheader.new ], [ %niter751.next.3, %.lr.ph406.split.us ]
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404.us ; 4 uses
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
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404.us ; 3 uses
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
  %i.atp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404.us ; 3 uses
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
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404.us ; 3 uses
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
  %i.auh = add nuw i64 %.0404.us, 16              ; 2 uses
  %niter751.next.3 = add nuw i64 %niter751, 4     ; 2 uses
  %niter751.ncmp.3.not = icmp eq i64 %niter751.next.3, %unroll_iter750
  br i1 %niter751.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph406.split.us

.lr.ph406.split:                                  ; preds = %.lr.ph406.split, %.lr.ph406.split.preheader.new
  %.0404 = phi i64 [ 0, %.lr.ph406.split.preheader.new ], [ %i.avf, %.lr.ph406.split ] ; 9 uses
  %niter745 = phi i64 [ 0, %.lr.ph406.split.preheader.new ], [ %niter745.next.7, %.lr.ph406.split ]
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404 ; 2 uses
  %.val.i = load <4 x float>, ptr %i.aui, align 16, !tbaa !169
  %i.auj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i, <4 x float> zeroinitializer)
  store <4 x float> %i.auj, ptr %i.aui, align 16, !tbaa !169
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 16 ; 2 uses
  %.val.i.1 = load <4 x float>, ptr %i.aul, align 16, !tbaa !169
  %i.aum = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.1, <4 x float> zeroinitializer)
  store <4 x float> %i.aum, ptr %i.aul, align 16, !tbaa !169
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 32 ; 2 uses
  %.val.i.2 = load <4 x float>, ptr %i.auo, align 16, !tbaa !169
  %i.aup = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.2, <4 x float> zeroinitializer)
  store <4 x float> %i.aup, ptr %i.auo, align 16, !tbaa !169
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 48 ; 2 uses
  %.val.i.3 = load <4 x float>, ptr %i.aur, align 16, !tbaa !169
  %i.aus = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.3, <4 x float> zeroinitializer)
  store <4 x float> %i.aus, ptr %i.aur, align 16, !tbaa !169
  %i.aut = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 64 ; 2 uses
  %.val.i.4 = load <4 x float>, ptr %i.auu, align 16, !tbaa !169
  %i.auv = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.4, <4 x float> zeroinitializer)
  store <4 x float> %i.auv, ptr %i.auu, align 16, !tbaa !169
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 80 ; 2 uses
  %.val.i.5 = load <4 x float>, ptr %i.aux, align 16, !tbaa !169
  %i.auy = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.5, <4 x float> zeroinitializer)
  store <4 x float> %i.auy, ptr %i.aux, align 16, !tbaa !169
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 96 ; 2 uses
  %.val.i.6 = load <4 x float>, ptr %i.ava, align 16, !tbaa !169
  %i.avb = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.6, <4 x float> zeroinitializer)
  store <4 x float> %i.avb, ptr %i.ava, align 16, !tbaa !169
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 112 ; 2 uses
  %.val.i.7 = load <4 x float>, ptr %i.avd, align 16, !tbaa !169
  %i.ave = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.7, <4 x float> zeroinitializer)
  store <4 x float> %i.ave, ptr %i.avd, align 16, !tbaa !169
  %i.avf = add nuw i64 %.0404, 32                 ; 2 uses
  %niter745.next.7 = add i64 %niter745, 8         ; 2 uses
  %niter745.ncmp.7.not = icmp eq i64 %niter745.next.7, %unroll_iter744
  br i1 %niter745.ncmp.7.not, label %.loopexit.loopexit639.unr-lcssa, label %.lr.ph406.split

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph406.split.us
  %lcmp.mod748.not = icmp eq i64 %xtraiter746, 0
  br i1 %lcmp.mod748.not, label %.loopexit, label %.lr.ph406.split.us.epil.preheader

.lr.ph406.split.us.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph406.split.us.preheader
  %.0404.us.epil.init = phi i64 [ 0, %.lr.ph406.split.us.preheader ], [ %i.auh, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod749 = icmp ne i64 %xtraiter746, 0
  tail call void @llvm.assume(i1 %lcmp.mod749)
  br label %.lr.ph406.split.us.epil

.lr.ph406.split.us.epil:                          ; preds = %.lr.ph406.split.us.epil, %.lr.ph406.split.us.epil.preheader
  %.0404.us.epil = phi i64 [ %i.avo, %.lr.ph406.split.us.epil ], [ %.0404.us.epil.init, %.lr.ph406.split.us.epil.preheader ] ; 2 uses
  %epil.iter747 = phi i64 [ %epil.iter747.next, %.lr.ph406.split.us.epil ], [ 0, %.lr.ph406.split.us.epil.preheader ]
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404.us.epil ; 4 uses
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
  %i.avo = add nuw i64 %.0404.us.epil, 4
  %epil.iter747.next = add i64 %epil.iter747, 1   ; 2 uses
  %epil.iter747.cmp.not = icmp eq i64 %epil.iter747.next, %xtraiter746
  br i1 %epil.iter747.cmp.not, label %.loopexit, label %.lr.ph406.split.us.epil, !llvm.loop !602

.loopexit.loopexit639.unr-lcssa:                  ; preds = %.lr.ph406.split
  %lcmp.mod742.not = icmp eq i64 %xtraiter740, 0
  br i1 %lcmp.mod742.not, label %.loopexit, label %.lr.ph406.split.epil.preheader

.lr.ph406.split.epil.preheader:                   ; preds = %.loopexit.loopexit639.unr-lcssa, %.lr.ph406.split.preheader
  %.0404.epil.init = phi i64 [ 0, %.lr.ph406.split.preheader ], [ %i.avf, %.loopexit.loopexit639.unr-lcssa ]
  %lcmp.mod743 = icmp ne i64 %xtraiter740, 0
  tail call void @llvm.assume(i1 %lcmp.mod743)
  br label %.lr.ph406.split.epil

.lr.ph406.split.epil:                             ; preds = %.lr.ph406.split.epil, %.lr.ph406.split.epil.preheader
  %.0404.epil = phi i64 [ %i.avr, %.lr.ph406.split.epil ], [ %.0404.epil.init, %.lr.ph406.split.epil.preheader ] ; 2 uses
  %epil.iter741 = phi i64 [ %epil.iter741.next, %.lr.ph406.split.epil ], [ 0, %.lr.ph406.split.epil.preheader ]
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404.epil ; 2 uses
  %.val.i.epil = load <4 x float>, ptr %i.avp, align 16, !tbaa !169
  %i.avq = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.epil, <4 x float> zeroinitializer)
  store <4 x float> %i.avq, ptr %i.avp, align 16, !tbaa !169
  %i.avr = add nuw i64 %.0404.epil, 4
  %epil.iter741.next = add i64 %epil.iter741, 1   ; 2 uses
  %epil.iter741.cmp.not = icmp eq i64 %epil.iter741.next, %xtraiter740
  br i1 %epil.iter741.cmp.not, label %.loopexit, label %.lr.ph406.split.epil, !llvm.loop !603

.loopexit:                                        ; preds = %.loopexit.loopexit639.unr-lcssa, %.lr.ph406.split.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph406.split.us.epil, %._crit_edge471, %bb.g
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
  %indvars.iv452.tr = trunc nuw i64 %indvars.iv452 to i32
  %i.t = shl nuw i32 %indvars.iv452.tr, 1
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
  %.tr = trunc nuw i64 %i.ae to i32
  %i.ag = shl nuw i32 %.tr, 1
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
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.pv = shl nuw i32 %indvars.iv.tr, 1
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
  %indvars.iv327.tr = trunc nuw nsw i64 %indvars.iv327 to i32
  %i.nj = shl nuw nsw i32 %indvars.iv327.tr, 1
  %i.nk = and i32 %i.nj, 14                       ; 3 uses
  %indvars.iv327.tr403 = trunc i64 %indvars.iv327 to i32
  %i.nl = shl i32 %indvars.iv327.tr403, 1
  %i.nm = add i32 %i.nl, 14
  %i.nn = and i32 %i.nm, 14                       ; 3 uses
  %i.no = add nuw nsw i64 %indvars.iv327, 1       ; 3 uses
  %.tr = trunc nuw nsw i64 %i.no to i32
  %i.np = shl nuw nsw i32 %.tr, 1
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
