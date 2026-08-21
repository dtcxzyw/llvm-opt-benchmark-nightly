inline.NumInlined: 23
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@process:bb.a
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.hw
  %i.hz = or disjoint i32 %i.ho, %i.gu
  %i.ia = zext nneg i32 %i.hz to i64              ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.ia
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.ia
  %i.id = or disjoint i32 %i.gw, %i.ho
  %i.ie = xor i32 %i.id, 1
  %i.if = zext nneg i32 %i.ie to i64              ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.if
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.if
  br label %vec.epilog.scalar.ph

vector.memcheck:                                  ; preds = %iter.check
  %bound0392 = icmp ult ptr %3, %scevgep391
  %bound1393 = icmp ult ptr %scevgep389, %scevgep
  %found.conflict394 = and i1 %bound0392, %bound1393
  %conflict.rdx = or i1 %i.hd, %found.conflict394
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check395 = icmp ult i32 %i.fj, 16
  br i1 %min.iters.check395, label %vec.epilog.vector.body.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.main.loop.iter.check
  %i.ii = and i32 %invariant.op, 1
  %i.ij = or disjoint i32 %i.ho, %i.ii
  %i.ik = zext nneg i32 %i.ij to i64              ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.ik ; 2 uses
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 -28
  %i.in = getelementptr inbounds i8, ptr %i.il, i64 -60
  %wide.load397 = load <8 x float>, ptr %i.im, align 4, !tbaa !87, !alias.scope !132
  %wide.load398 = load <8 x float>, ptr %i.in, align 4, !tbaa !87, !alias.scope !132
  %reverse = shufflevector <8 x float> %wide.load397, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse399 = shufflevector <8 x float> %wide.load398, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.ik ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -28
  %i.iq = getelementptr inbounds i8, ptr %i.io, i64 -60
  %wide.load400 = load <8 x float>, ptr %i.ip, align 4, !tbaa !87, !alias.scope !132
  %wide.load401 = load <8 x float>, ptr %i.iq, align 4, !tbaa !87, !alias.scope !132
  %reverse402 = shufflevector <8 x float> %wide.load400, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse403 = shufflevector <8 x float> %wide.load401, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ir = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %reverse402
  %i.is = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %reverse403
  br label %vector.body

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check
  %i.it = and i32 %invariant.op, 1
  %i.iu = or disjoint i32 %i.ho, %i.it
  %i.iv = zext nneg i32 %i.iu to i64              ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.iv
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 -12
  %wide.load407 = load <4 x float>, ptr %i.ix, align 4, !tbaa !87, !alias.scope !132
  %reverse408 = shufflevector <4 x float> %wide.load407, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.iv
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -12
  %wide.load409 = load <4 x float>, ptr %i.iz, align 4, !tbaa !87, !alias.scope !132
  %reverse410 = shufflevector <4 x float> %wide.load409, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ja = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %reverse410
  br label %vec.epilog.vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 3 uses
  %i.jb = getelementptr [4 x i8], ptr %gep, i64 %index ; 2 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 32
  %wide.load = load <8 x float>, ptr %i.jb, align 4, !tbaa !87, !alias.scope !135
  %wide.load396 = load <8 x float>, ptr %i.jc, align 4, !tbaa !87, !alias.scope !135
  %i.jd = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %reverse
  %i.je = fsub reassoc nsz arcp contract afn <8 x float> %wide.load396, %reverse399
  %i.jf = fmul reassoc nsz arcp contract afn <8 x float> %i.jd, %i.ir
  %i.jg = fmul reassoc nsz arcp contract afn <8 x float> %i.je, %i.is
  %i.jh = getelementptr [4 x i8], ptr %i.hp, i64 %index ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 32
  store <8 x float> %i.jf, ptr %i.jh, align 4, !tbaa !87, !alias.scope !137, !noalias !139
  store <8 x float> %i.jg, ptr %i.ji, align 4, !tbaa !87, !alias.scope !137, !noalias !139
  %index.next = add nuw i64 %index, 16
  br label %vector.body, !llvm.loop !140

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index405 = phi i64 [ %index.next411, %vec.epilog.vector.body ], [ 0, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.jj = getelementptr [4 x i8], ptr %gep, i64 %index405
  %wide.load406 = load <4 x float>, ptr %i.jj, align 4, !tbaa !87, !alias.scope !135
  %i.jk = fsub reassoc nsz arcp contract afn <4 x float> %wide.load406, %reverse408
  %i.jl = fmul reassoc nsz arcp contract afn <4 x float> %i.jk, %i.ja
  %i.jm = getelementptr [4 x i8], ptr %i.hp, i64 %index405
  store <4 x float> %i.jl, ptr %i.jm, align 4, !tbaa !87, !alias.scope !137, !noalias !139
  %index.next411 = add nuw i64 %index405, 4
  br label %vec.epilog.vector.body, !llvm.loop !141

._crit_edge.unr-lcssa:                            ; preds = %vec.epilog.scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %vec.epilog.scalar.ph.epil.preheader

vec.epilog.scalar.ph.epil.preheader:              ; preds = %._crit_edge.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod500)
  br label %vec.epilog.scalar.ph.epil

vec.epilog.scalar.ph.epil:                        ; preds = %vec.epilog.scalar.ph.epil, %vec.epilog.scalar.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %vec.epilog.scalar.ph.epil ], [ %indvars.iv.epil.init, %vec.epilog.scalar.ph.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %vec.epilog.scalar.ph.epil ], [ 0, %vec.epilog.scalar.ph.epil.preheader ]
  %i.jn = trunc nuw nsw i64 %indvars.iv.epil to i32
  %.reass.epil = add i32 %invariant.op, %i.jn
  %i.jo = and i32 %.reass.epil, 1
  %i.jp = or disjoint i32 %i.ho, %i.jo
  %i.jq = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv.epil
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !87
  %i.js = zext nneg i32 %i.jp to i64              ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.js
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !87
  %i.jv = fsub reassoc nsz arcp contract afn float %i.jr, %i.ju
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.js
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !87
  %i.jy = fdiv reassoc nsz arcp contract afn float %i.jv, %i.jx
  %i.jz = getelementptr [4 x i8], ptr %i.hp, i64 %indvars.iv.epil
  store float %i.jy, ptr %i.jz, align 4, !tbaa !87
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %vec.epilog.scalar.ph.epil, !llvm.loop !142

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.epil, %._crit_edge.unr-lcssa
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %indvars.iv.next318, %wide.trip.count320
  br i1 %exitcond321.not, label %.loopexit275.sink.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph ] ; 6 uses
  %niter = phi i64 [ 0, %vec.epilog.scalar.ph.preheader.new ], [ %niter.next.3, %vec.epilog.scalar.ph ]
  %i.ka = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !87
  %i.kc = load float, ptr %i.hs, align 4, !tbaa !87
  %i.kd = fsub reassoc nsz arcp contract afn float %i.kb, %i.kc
  %i.ke = load float, ptr %i.ht, align 4, !tbaa !87
  %i.kf = fdiv reassoc nsz arcp contract afn float %i.kd, %i.ke
  %i.kg = getelementptr [4 x i8], ptr %i.hp, i64 %indvars.iv
  store float %i.kf, ptr %i.kg, align 4, !tbaa !87
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.kh = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv.next
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !87
  %i.kj = load float, ptr %i.hx, align 4, !tbaa !87
  %i.kk = fsub reassoc nsz arcp contract afn float %i.ki, %i.kj
  %i.kl = load float, ptr %i.hy, align 4, !tbaa !87
  %i.km = fdiv reassoc nsz arcp contract afn float %i.kk, %i.kl
  %i.kn = getelementptr [4 x i8], ptr %i.hp, i64 %indvars.iv.next
  store float %i.km, ptr %i.kn, align 4, !tbaa !87
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ko = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv.next.1
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !87
  %i.kq = load float, ptr %i.ib, align 4, !tbaa !87
  %i.kr = fsub reassoc nsz arcp contract afn float %i.kp, %i.kq
  %i.ks = load float, ptr %i.ic, align 4, !tbaa !87
  %i.kt = fdiv reassoc nsz arcp contract afn float %i.kr, %i.ks
  %i.ku = getelementptr [4 x i8], ptr %i.hp, i64 %indvars.iv.next.1
  store float %i.kt, ptr %i.ku, align 4, !tbaa !87
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.kv = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv.next.2
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !87
  %i.kx = load float, ptr %i.ig, align 4, !tbaa !87
  %i.ky = fsub reassoc nsz arcp contract afn float %i.kw, %i.kx
  %i.kz = load float, ptr %i.ih, align 4, !tbaa !87
  %i.la = fdiv reassoc nsz arcp contract afn float %i.ky, %i.kz
  %i.lb = getelementptr [4 x i8], ptr %i.hp, i64 %indvars.iv.next.2
  store float %i.la, ptr %i.lb, align 4, !tbaa !87
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !143

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !144 ; 5 uses
  %i.le = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !121 ; 2 uses
  %i.lg = icmp sgt i32 %i.lf, 0
  br i1 %i.lg, label %.preheader274.lr.ph, label %.loopexit275

.preheader274.lr.ph:                              ; preds = %bb.e
  %i.lh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !122 ; 3 uses
  %i.lj = icmp slt i32 %i.li, 1
  %i.lk = icmp slt i32 %i.ld, 1
  %i.ll = sext i32 %i.ld to i64                   ; 5 uses
  %i.lm = getelementptr i8, ptr %i.d, i64 16      ; 8 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 7 uses
  %brmerge = select i1 %i.lj, i1 true, i1 %i.lk
  br i1 %brmerge, label %.loopexit275, label %.preheader274.lr.ph.split.split

.preheader274.lr.ph.split.split:                  ; preds = %.preheader274.lr.ph
  %i.lo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !122 ; 3 uses
  %i.lq = zext nneg i32 %i.li to i64
  %wide.trip.count345 = zext nneg i32 %i.lf to i64
  %wide.trip.count340 = zext nneg i32 %i.li to i64 ; 3 uses
  %wide.trip.count335 = zext nneg i32 %i.ld to i64 ; 10 uses
  %i.lr = mul nuw nsw i64 %i.ll, %wide.trip.count340
  %i.ls = shl nuw i64 %i.lr, 2
  %i.lt = add nuw nsw i64 %wide.trip.count340, 4611686018427387903
  %i.lu = mul i64 %i.lt, %i.ll
  %i.lv = shl nuw nsw i64 %wide.trip.count335, 2  ; 2 uses
  %i.lw = add i64 %i.lu, %wide.trip.count335
  %i.lx = shl i64 %i.lw, 2
  %i.ly = shl nuw nsw i64 %i.ll, 2
  %i.lz = mul i32 %i.lp, %i.s
  %i.ma = add i32 %i.lz, %i.l
  %i.mb = zext i32 %i.ma to i64
  %i.mc = zext i32 %i.lp to i64
  %scevgep441 = getelementptr i8, ptr %2, i64 %i.lv
  %i.md = getelementptr i8, ptr %i.d, i64 %i.lv
  %scevgep443 = getelementptr i8, ptr %i.md, i64 32
  %i.me = getelementptr i8, ptr %3, i64 %i.lx
  %min.iters.check452 = icmp ult i32 %i.ld, 4
  %min.iters.check454 = icmp ult i32 %i.ld, 32
  %i.mf = and i64 %wide.trip.count335, 28
  %n.vec456 = and i64 %wide.trip.count335, 2147483616 ; 4 uses
  %cmp.n473 = icmp eq i64 %n.vec456, %wide.trip.count335
  %min.epilog.iters.check478 = icmp eq i64 %i.mf, 0
  %n.vec480 = and i64 %wide.trip.count335, 2147483644 ; 3 uses
  %cmp.n488 = icmp eq i64 %n.vec480, %wide.trip.count335
  %xtraiter507 = and i64 %wide.trip.count335, 3   ; 2 uses
  %lcmp.mod508.not = icmp eq i64 %xtraiter507, 0
  br label %.preheader274

.preheader274:                                    ; preds = %.preheader274.lr.ph.split.split, %._crit_edge296
  %indvars.iv342 = phi i64 [ 0, %.preheader274.lr.ph.split.split ], [ %indvars.iv.next343, %._crit_edge296 ] ; 5 uses
  %i.mg = mul i64 %i.ls, %indvars.iv342           ; 2 uses
  %scevgep438 = getelementptr i8, ptr %3, i64 %i.mg ; 2 uses
  %scevgep439 = getelementptr i8, ptr %i.me, i64 %i.mg ; 2 uses
  %i.mh = mul i64 %indvars.iv342, %i.mc
  %i.mi = add i64 %i.mh, %i.mb
  %i.mj = mul nuw nsw i64 %indvars.iv342, %i.lq
  %i.mk = trunc i64 %indvars.iv342 to i32
  %i.ml = add i32 %i.mk, %i.s
  %i.mm = mul i32 %i.ml, %i.lp
  %invariant.op297 = add i32 %i.mm, %i.l
  %bound0447 = icmp ult ptr %scevgep438, %scevgep443
  %bound1448 = icmp ult ptr %i.lm, %scevgep439
  %found.conflict449 = and i1 %bound0447, %bound1448
  br label %iter.check475

iter.check475:                                    ; preds = %.preheader274, %._crit_edge294
  %indvars.iv337 = phi i64 [ 0, %.preheader274 ], [ %indvars.iv.next338, %._crit_edge294 ] ; 4 uses
  %i.mn = trunc nuw nsw i64 %indvars.iv337 to i32
  %.reass298 = add i32 %invariant.op297, %i.mn
  %i.mo = sext i32 %.reass298 to i64
  %i.mp = mul nsw i64 %i.mo, %i.ll
  %i.mq = add nuw nsw i64 %i.mj, %indvars.iv337
  %i.mr = mul nuw nsw i64 %i.mq, %i.ll
  %i.ms = getelementptr [4 x i8], ptr %2, i64 %i.mp ; 7 uses
  %i.mt = getelementptr [4 x i8], ptr %3, i64 %i.mr ; 7 uses
  br i1 %min.iters.check452, label %vec.epilog.scalar.ph476.preheader, label %vector.memcheck437

vector.memcheck437:                               ; preds = %iter.check475
  %i.mu = add i64 %i.mi, %indvars.iv337
  %sext = shl i64 %i.mu, 32
  %i.mv = ashr exact i64 %sext, 32
  %i.mw = mul i64 %i.ly, %i.mv                    ; 2 uses
  %scevgep442 = getelementptr i8, ptr %scevgep441, i64 %i.mw
  %scevgep440.a = getelementptr i8, ptr %2, i64 %i.mw
  %bound0444 = icmp ult ptr %scevgep438, %scevgep442
  %bound1445 = icmp ult ptr %scevgep440.a, %scevgep439
  %found.conflict446 = and i1 %bound0444, %bound1445
  %conflict.rdx450 = or i1 %found.conflict446, %found.conflict449
  br i1 %conflict.rdx450, label %vec.epilog.scalar.ph476.preheader, label %vector.main.loop.iter.check453

vector.main.loop.iter.check453:                   ; preds = %vector.memcheck437
  br i1 %min.iters.check454, label %vec.epilog.ph479, label %vector.body457

vector.body457:                                   ; preds = %vector.main.loop.iter.check453, %vector.body457
  %index458 = phi i64 [ %index.next471, %vector.body457 ], [ 0, %vector.main.loop.iter.check453 ] ; 5 uses
  %i.mx = getelementptr [4 x i8], ptr %i.ms, i64 %index458 ; 4 uses
  %i.my = getelementptr i8, ptr %i.mx, i64 32
  %i.mz = getelementptr i8, ptr %i.mx, i64 64
  %i.na = getelementptr i8, ptr %i.mx, i64 96
  %wide.load459.a = load <8 x float>, ptr %i.mx, align 4, !tbaa !87, !alias.scope !145
  %wide.load460.a = load <8 x float>, ptr %i.my, align 4, !tbaa !87, !alias.scope !145
  %wide.load461.a = load <8 x float>, ptr %i.mz, align 4, !tbaa !87, !alias.scope !145
  %wide.load462.a = load <8 x float>, ptr %i.na, align 4, !tbaa !87, !alias.scope !145
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %index458 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 32
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 96
  %wide.load463.a = load <8 x float>, ptr %i.nb, align 4, !tbaa !87, !alias.scope !148
  %wide.load464.a = load <8 x float>, ptr %i.nc, align 4, !tbaa !87, !alias.scope !148
  %wide.load465.a = load <8 x float>, ptr %i.nd, align 4, !tbaa !87, !alias.scope !148
  %wide.load466.a = load <8 x float>, ptr %i.ne, align 4, !tbaa !87, !alias.scope !148
  %i.nf = fsub reassoc nsz arcp contract afn <8 x float> %wide.load459.a, %wide.load463.a
  %i.ng = fsub reassoc nsz arcp contract afn <8 x float> %wide.load460.a, %wide.load464.a
  %i.nh = fsub reassoc nsz arcp contract afn <8 x float> %wide.load461.a, %wide.load465.a
  %i.ni = fsub reassoc nsz arcp contract afn <8 x float> %wide.load462.a, %wide.load466.a
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %index458 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 96
  %wide.load467.a = load <8 x float>, ptr %i.nj, align 4, !tbaa !87, !alias.scope !148
  %wide.load468.a = load <8 x float>, ptr %i.nk, align 4, !tbaa !87, !alias.scope !148
  %wide.load469.a = load <8 x float>, ptr %i.nl, align 4, !tbaa !87, !alias.scope !148
  %wide.load470 = load <8 x float>, ptr %i.nm, align 4, !tbaa !87, !alias.scope !148
  %i.nn = fdiv reassoc nsz arcp contract afn <8 x float> %i.nf, %wide.load467.a
  %i.no = fdiv reassoc nsz arcp contract afn <8 x float> %i.ng, %wide.load468.a
  %i.np = fdiv reassoc nsz arcp contract afn <8 x float> %i.nh, %wide.load469.a
  %i.nq = fdiv reassoc nsz arcp contract afn <8 x float> %i.ni, %wide.load470
  %i.nr = getelementptr [4 x i8], ptr %i.mt, i64 %index458 ; 4 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 32
  %i.nt = getelementptr i8, ptr %i.nr, i64 64
  %i.nu = getelementptr i8, ptr %i.nr, i64 96
  store <8 x float> %i.nn, ptr %i.nr, align 4, !tbaa !87, !alias.scope !150, !noalias !152
  store <8 x float> %i.no, ptr %i.ns, align 4, !tbaa !87, !alias.scope !150, !noalias !152
  store <8 x float> %i.np, ptr %i.nt, align 4, !tbaa !87, !alias.scope !150, !noalias !152
  store <8 x float> %i.nq, ptr %i.nu, align 4, !tbaa !87, !alias.scope !150, !noalias !152
  %index.next471 = add nuw i64 %index458, 32      ; 2 uses
  %i.nv = icmp eq i64 %index.next471, %n.vec456
  br i1 %i.nv, label %middle.block472, label %vector.body457, !llvm.loop !153

middle.block472:                                  ; preds = %vector.body457
  br i1 %cmp.n473, label %._crit_edge294, label %vec.epilog.iter.check477

vec.epilog.iter.check477:                         ; preds = %middle.block472
  br i1 %min.epilog.iters.check478, label %vec.epilog.scalar.ph476.preheader, label %vec.epilog.ph479, !prof !154

vec.epilog.ph479:                                 ; preds = %vector.main.loop.iter.check453, %vec.epilog.iter.check477
  %vec.epilog.resume.val474 = phi i64 [ %n.vec456, %vec.epilog.iter.check477 ], [ 0, %vector.main.loop.iter.check453 ]
  br label %vec.epilog.vector.body481

vec.epilog.vector.body481:                        ; preds = %vec.epilog.vector.body481, %vec.epilog.ph479
  %index482 = phi i64 [ %vec.epilog.resume.val474, %vec.epilog.ph479 ], [ %index.next486, %vec.epilog.vector.body481 ] ; 5 uses
  %i.nw = getelementptr [4 x i8], ptr %i.ms, i64 %index482
  %wide.load483.a = load <4 x float>, ptr %i.nw, align 4, !tbaa !87, !alias.scope !145
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %index482
  %wide.load484.a = load <4 x float>, ptr %i.nx, align 4, !tbaa !87, !alias.scope !148
  %i.ny = fsub reassoc nsz arcp contract afn <4 x float> %wide.load483.a, %wide.load484.a
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %index482
  %wide.load485 = load <4 x float>, ptr %i.nz, align 4, !tbaa !87, !alias.scope !148
  %i.oa = fdiv reassoc nsz arcp contract afn <4 x float> %i.ny, %wide.load485
  %i.ob = getelementptr [4 x i8], ptr %i.mt, i64 %index482
  store <4 x float> %i.oa, ptr %i.ob, align 4, !tbaa !87, !alias.scope !150, !noalias !152
  %index.next486 = add nuw i64 %index482, 4       ; 2 uses
  %i.oc = icmp eq i64 %index.next486, %n.vec480
  br i1 %i.oc, label %vec.epilog.middle.block487, label %vec.epilog.vector.body481, !llvm.loop !155

vec.epilog.middle.block487:                       ; preds = %vec.epilog.vector.body481
  br i1 %cmp.n488, label %._crit_edge294, label %vec.epilog.scalar.ph476.preheader

vec.epilog.scalar.ph476.preheader:                ; preds = %vector.memcheck437, %iter.check475, %vec.epilog.iter.check477, %vec.epilog.middle.block487
  %indvars.iv332.ph = phi i64 [ 0, %iter.check475 ], [ 0, %vector.memcheck437 ], [ %n.vec456, %vec.epilog.iter.check477 ], [ %n.vec480, %vec.epilog.middle.block487 ] ; 3 uses
  br i1 %lcmp.mod508.not, label %vec.epilog.scalar.ph476.prol.loopexit, label %vec.epilog.scalar.ph476.prol

vec.epilog.scalar.ph476.prol:                     ; preds = %vec.epilog.scalar.ph476.preheader, %vec.epilog.scalar.ph476.prol
  %indvars.iv332.prol = phi i64 [ %indvars.iv.next333.prol, %vec.epilog.scalar.ph476.prol ], [ %indvars.iv332.ph, %vec.epilog.scalar.ph476.preheader ] ; 5 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph476.prol ], [ 0, %vec.epilog.scalar.ph476.preheader ]
  %i.od = getelementptr [4 x i8], ptr %i.ms, i64 %indvars.iv332.prol
  %i.oe = load float, ptr %i.od, align 4, !tbaa !87
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv332.prol
  %i.og = load float, ptr %i.of, align 4, !tbaa !87
  %i.oh = fsub reassoc nsz arcp contract afn float %i.oe, %i.og
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv332.prol
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !87
  %i.ok = fdiv reassoc nsz arcp contract afn float %i.oh, %i.oj
  %i.ol = getelementptr [4 x i8], ptr %i.mt, i64 %indvars.iv332.prol
  store float %i.ok, ptr %i.ol, align 4, !tbaa !87
  %indvars.iv.next333.prol = add nuw nsw i64 %indvars.iv332.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter507
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph476.prol.loopexit, label %vec.epilog.scalar.ph476.prol, !llvm.loop !156

vec.epilog.scalar.ph476.prol.loopexit:            ; preds = %vec.epilog.scalar.ph476.prol, %vec.epilog.scalar.ph476.preheader
  %indvars.iv332.unr = phi i64 [ %indvars.iv332.ph, %vec.epilog.scalar.ph476.preheader ], [ %indvars.iv.next333.prol, %vec.epilog.scalar.ph476.prol ]
  %i.om = sub nsw i64 %indvars.iv332.ph, %wide.trip.count335
  %i.on = icmp ugt i64 %i.om, -4
  br i1 %i.on, label %._crit_edge294, label %vec.epilog.scalar.ph476

._crit_edge296:                                   ; preds = %._crit_edge294
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %exitcond346.not = icmp eq i64 %indvars.iv.next343, %wide.trip.count345
  br i1 %exitcond346.not, label %.loopexit275, label %.preheader274

._crit_edge294:                                   ; preds = %vec.epilog.scalar.ph476.prol.loopexit, %vec.epilog.scalar.ph476, %vec.epilog.middle.block487, %middle.block472
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %exitcond341.not = icmp eq i64 %indvars.iv.next338, %wide.trip.count340
  br i1 %exitcond341.not, label %._crit_edge296, label %iter.check475

vec.epilog.scalar.ph476:                          ; preds = %vec.epilog.scalar.ph476.prol.loopexit, %vec.epilog.scalar.ph476
  %indvars.iv332 = phi i64 [ %indvars.iv.next333.3, %vec.epilog.scalar.ph476 ], [ %indvars.iv332.unr, %vec.epilog.scalar.ph476.prol.loopexit ] ; 8 uses
  %i.oo = getelementptr [4 x i8], ptr %i.ms, i64 %indvars.iv332
  %i.op = load float, ptr %i.oo, align 4, !tbaa !87
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv332
  %i.or = load float, ptr %i.oq, align 4, !tbaa !87
  %i.os = fsub reassoc nsz arcp contract afn float %i.op, %i.or
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv332
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !87
  %i.ov = fdiv reassoc nsz arcp contract afn float %i.os, %i.ou
  %i.ow = getelementptr [4 x i8], ptr %i.mt, i64 %indvars.iv332
  store float %i.ov, ptr %i.ow, align 4, !tbaa !87
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 4 uses
  %i.ox = getelementptr [4 x i8], ptr %i.ms, i64 %indvars.iv.next333
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !87
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.next333
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !87
  %i.pb = fsub reassoc nsz arcp contract afn float %i.oy, %i.pa
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv.next333
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !87
  %i.pe = fdiv reassoc nsz arcp contract afn float %i.pb, %i.pd
  %i.pf = getelementptr [4 x i8], ptr %i.mt, i64 %indvars.iv.next333
  store float %i.pe, ptr %i.pf, align 4, !tbaa !87
  %indvars.iv.next333.1 = add nuw nsw i64 %indvars.iv332, 2 ; 4 uses
  %i.pg = getelementptr [4 x i8], ptr %i.ms, i64 %indvars.iv.next333.1
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !87
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.next333.1
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !87
  %i.pk = fsub reassoc nsz arcp contract afn float %i.ph, %i.pj
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv.next333.1
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !87
  %i.pn = fdiv reassoc nsz arcp contract afn float %i.pk, %i.pm
  %i.po = getelementptr [4 x i8], ptr %i.mt, i64 %indvars.iv.next333.1
  store float %i.pn, ptr %i.po, align 4, !tbaa !87
  %indvars.iv.next333.2 = add nuw nsw i64 %indvars.iv332, 3 ; 4 uses
  %i.pp = getelementptr [4 x i8], ptr %i.ms, i64 %indvars.iv.next333.2
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !87
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.next333.2
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !87
  %i.pt = fsub reassoc nsz arcp contract afn float %i.pq, %i.ps
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv.next333.2
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !87
  %i.pw = fdiv reassoc nsz arcp contract afn float %i.pt, %i.pv
  %i.px = getelementptr [4 x i8], ptr %i.mt, i64 %indvars.iv.next333.2
  store float %i.pw, ptr %i.px, align 4, !tbaa !87
  %indvars.iv.next333.3 = add nuw nsw i64 %indvars.iv332, 4 ; 2 uses
  %exitcond336.not.3 = icmp eq i64 %indvars.iv.next333.3, %wide.trip.count335
  br i1 %exitcond336.not.3, label %._crit_edge294, label %vec.epilog.scalar.ph476, !llvm.loop !157

.loopexit275.sink.split:                          ; preds = %._crit_edge, %._crit_edge286, %.preheader279, %.preheader278.lr.ph, %.preheader277, %.preheader276.lr.ph
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !158
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 1608
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !166
  %i.qc = tail call i32 @dt_rawspeed_crop_dcraw_filters(i32 noundef %i.qb, i32 noundef %i.l, i32 noundef %i.s) #21
  %i.qd = load ptr, ptr %i.t, align 8, !tbaa !105 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 184
  store i32 %i.qc, ptr %i.qe, align 8, !tbaa !106
  tail call fastcc void @_adjust_xtrans_filters(ptr noundef %i.qd, i32 noundef %i.l, i32 noundef %i.s)
  br label %.loopexit275

.loopexit275:                                     ; preds = %._crit_edge296, %.loopexit275.sink.split, %.preheader274.lr.ph, %bb.e
  %i.qf = load ptr, ptr %i.t, align 8, !tbaa !105 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 184
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !106
  %.not254 = icmp eq i32 %i.qh, 0
  br i1 %.not254, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.loopexit275
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.qj = load i32, ptr %i.qi, align 16, !tbaa !119
  %i.qk = icmp eq i32 %i.qj, 1
  br i1 %i.qk, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ql = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !183
  %.not255 = icmp eq i32 %i.qm, 0
  br i1 %.not255, label %.loopexit, label %bb.h

end_hunk_0
