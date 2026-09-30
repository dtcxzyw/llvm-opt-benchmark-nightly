Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aom_film_grain?download=true
inline.NumInlined: 164
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_aom_parse_film_grain_sets:bb.a
  %i.jc = and i32 %spec.select.i348, 7
  %i.jd = lshr exact i32 128, %i.jc
  %i.je = and i32 %i.jd, %i.jb
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.jg = lshr i32 %spec.select.i349, 3
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 1, !tbaa !27
  %i.jk = call i32 @llvm.bswap.i32(i32 %i.jj)
  %i.jl = and i32 %spec.select.i349, 7
  %i.jm = shl i32 %i.jk, %i.jl
  %i.jn = lshr i32 %i.jm, 23
  %i.jo = add i32 %spec.select.i349, 9
  %i.jp = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.jo) ; 3 uses
  %i.jq = add nsw i32 %i.jn, -256                 ; 2 uses
  %i.jr = lshr i32 %i.jp, 3
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 1, !tbaa !27
  %i.jv = call i32 @llvm.bswap.i32(i32 %i.ju)
  %i.jw = and i32 %i.jp, 7
  %i.jx = shl i32 %i.jv, %i.jw
  %i.jy = lshr i32 %i.jx, 23
  %i.jz = add nuw i32 %i.jp, 9
  %i.ka = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.jz) ; 3 uses
  %i.kb = add nsw i32 %i.jy, -256                 ; 2 uses
  %i.kc = lshr i32 %i.ka, 3
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 1, !tbaa !27
  %i.kg = call i32 @llvm.bswap.i32(i32 %i.kf)
  %i.kh = and i32 %i.ka, 7
  %i.ki = shl i32 %i.kg, %i.kh
  %i.kj = lshr i32 %i.ki, 29                      ; 6 uses
  %i.kk = add nuw i32 %i.ka, 3
  %i.kl = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.kk) ; 4 uses
  %.not316 = icmp eq i32 %i.kj, 0
  br i1 %.not316, label %.loopexit562.a, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.km = getelementptr inbounds nuw i8, ptr %.0285619, i64 56
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !27 ; 7 uses
  store i32 %i.kn, ptr %i.bg, align 8, !tbaa !41
  %i.ko = icmp sgt i32 %i.kn, 0                   ; 2 uses
  br i1 %i.ko, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %i.kp = sub nuw nsw i32 32, %i.kj               ; 3 uses
  %wide.trip.count = zext nneg i32 %i.kn to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.kq = icmp eq i32 %i.kn, 1
  br i1 %i.kq, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.v ] ; 3 uses
  %.sroa.62.5572 = phi i32 [ %i.kl, %.lr.ph.new ], [ %i.ll, %bb.v ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.v ]
  %i.kr = lshr i32 %.sroa.62.5572, 3
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 1, !tbaa !27
  %i.kv = call i32 @llvm.bswap.i32(i32 %i.ku)
  %i.kw = and i32 %.sroa.62.5572, 7
  %i.kx = shl i32 %i.kv, %i.kw
  %i.ky = lshr i32 %i.kx, %i.kp
  %i.kz = add i32 %.sroa.62.5572, %i.kj
  %i.la = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.kz) ; 3 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.ky, ptr %i.lb, align 8, !tbaa !29
  %i.lc = lshr i32 %i.la, 3
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 1, !tbaa !27
  %i.lg = call i32 @llvm.bswap.i32(i32 %i.lf)
  %i.lh = and i32 %i.la, 7
  %i.li = shl i32 %i.lg, %i.lh
  %i.lj = lshr i32 %i.li, %i.kp
  %i.lk = add nuw i32 %i.la, %i.kj
  %i.ll = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.lk) ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  store i32 %i.lj, ptr %i.ln, align 4, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.v, !llvm.loop !111

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.62.5572.epil.init = phi i32 [ %i.kl, %.lr.ph ], [ %i.ll, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod766 = trunc i32 %i.kn to i1
  call void @llvm.assume(i1 %lcmp.mod766)
  %i.lo = lshr i32 %.sroa.62.5572.epil.init, 3
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 1, !tbaa !27
  %i.ls = call i32 @llvm.bswap.i32(i32 %i.lr)
  %i.lt = and i32 %.sroa.62.5572.epil.init, 7
  %i.lu = shl i32 %i.ls, %i.lt
  %i.lv = lshr i32 %i.lu, %i.kp
  %i.lw = add i32 %.sroa.62.5572.epil.init, %i.kj
  %i.lx = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.lw)
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  store i32 %i.lv, ptr %i.ly, align 4, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.u
  %.sroa.62.5.lcssa = phi i32 [ %i.kl, %bb.u ], [ %i.ll, %._crit_edge.loopexit.unr-lcssa ], [ %i.lx, %.epil.preheader ] ; 3 uses
  %i.lz = lshr i32 %.sroa.62.5.lcssa, 3
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 1, !tbaa !27
  %i.md = call i32 @llvm.bswap.i32(i32 %i.mc)
  %i.me = and i32 %.sroa.62.5.lcssa, 7
  %i.mf = shl i32 %i.md, %i.me
  %i.mg = lshr i32 %i.mf, 29                      ; 2 uses
  %i.mh = add i32 %.sroa.62.5.lcssa, 3
  %i.mi = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.mh)
  br i1 %i.ko, label %.lr.ph576, label %._crit_edge577

.lr.ph576:                                        ; preds = %._crit_edge
  %i.mj = getelementptr inbounds nuw i8, ptr %.0285619, i64 60 ; 6 uses
  %i.mk = add nsw i32 %i.kj, -1
  %.neg328 = shl nsw i32 -1, %i.mk                ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ay, i64 60 ; 4 uses
  %i.mm = zext nneg i32 %i.kn to i64              ; 5 uses
  %min.iters.check737 = icmp ult i32 %i.kn, 4
  br i1 %min.iters.check737, label %scalar.ph736.preheader, label %vector.memcheck723

vector.memcheck723:                               ; preds = %.lr.ph576
  %scevgep724 = getelementptr i8, ptr %i.ay, i64 60
  %i.mn = shl nuw nsw i64 %i.mm, 1                ; 2 uses
  %scevgep725 = getelementptr i8, ptr %scevgep724, i64 %i.mn ; 2 uses
  %scevgep726 = getelementptr i8, ptr %.0285619, i64 60
  %scevgep727 = getelementptr i8, ptr %scevgep726, i64 %i.mn
  %i.mo = shl nuw nsw i64 %i.mm, 2
  %scevgep728 = getelementptr i8, ptr %i.c, i64 %i.mo
  %bound0729 = icmp ult ptr %i.ml, %scevgep727
  %bound1730 = icmp ult ptr %i.mj, %scevgep725
  %found.conflict731 = and i1 %bound0729, %bound1730
  %bound0732 = icmp ult ptr %i.ml, %scevgep728
  %bound1733 = icmp ult ptr %i.c, %scevgep725
  %found.conflict734 = and i1 %bound0732, %bound1733
  %conflict.rdx735 = or i1 %found.conflict731, %found.conflict734
  br i1 %conflict.rdx735, label %scalar.ph736.preheader, label %vector.ph738

vector.ph738:                                     ; preds = %vector.memcheck723
  %n.vec739 = and i64 %i.mm, 2147483644           ; 3 uses
  %broadcast.splatinsert740 = insertelement <4 x i32> poison, i32 %.neg328, i64 0
  %broadcast.splat741 = shufflevector <4 x i32> %broadcast.splatinsert740, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert742 = insertelement <4 x i32> poison, i32 %i.jq, i64 0
  %broadcast.splat743 = shufflevector <4 x i32> %broadcast.splatinsert742, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert744 = insertelement <4 x i32> poison, i32 %i.mg, i64 0
  %broadcast.splat745 = shufflevector <4 x i32> %broadcast.splatinsert744, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert746 = insertelement <4 x i32> poison, i32 %i.kb, i64 0
  %broadcast.splat747 = shufflevector <4 x i32> %broadcast.splatinsert746, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body748

vector.body748:                                   ; preds = %vector.body748, %vector.ph738
  %index749 = phi i64 [ 0, %vector.ph738 ], [ %index.next752, %vector.body748 ] ; 7 uses
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.mj, i64 %index749 ; 2 uses
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.mj, i64 %index749 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 2
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mj, i64 %index749 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.mj, i64 %index749 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 6
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mq, i64 3
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 5
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mu, i64 7
  %i.na = load i8, ptr %i.mw, align 1, !tbaa !27, !alias.scope !143
  %i.nb = load i8, ptr %i.mx, align 1, !tbaa !27, !alias.scope !143
  %i.nc = load i8, ptr %i.my, align 1, !tbaa !27, !alias.scope !143
  %i.nd = load i8, ptr %i.mz, align 1, !tbaa !27, !alias.scope !143
  %i.ne = insertelement <4 x i8> poison, i8 %i.na, i64 0
  %i.nf = insertelement <4 x i8> %i.ne, i8 %i.nb, i64 1
  %i.ng = insertelement <4 x i8> %i.nf, i8 %i.nc, i64 2
  %i.nh = insertelement <4 x i8> %i.ng, i8 %i.nd, i64 3
  %i.ni = zext <4 x i8> %i.nh to <4 x i32>
  %i.nj = mul nsw <4 x i32> %broadcast.splat743, %i.ni
  %i.nk = add nsw <4 x i32> %i.nj, splat (i32 8)
  %i.nl = ashr <4 x i32> %i.nk, splat (i32 4)
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index749
  %wide.load750 = load <4 x i32>, ptr %i.nm, align 16, !tbaa !29, !alias.scope !144
  %i.nn = add <4 x i32> %wide.load750, %broadcast.splat741
  %i.no = mul nsw <4 x i32> %i.nn, %broadcast.splat745
  %i.np = add <4 x i32> %broadcast.splat747, %i.no
  %i.nq = add <4 x i32> %i.np, %i.nl              ; 3 uses
  %i.nr = load i8, ptr %i.mp, align 2, !tbaa !27, !alias.scope !143
  %i.ns = load i8, ptr %i.mr, align 2, !tbaa !27, !alias.scope !143
  %i.nt = load i8, ptr %i.mt, align 2, !tbaa !27, !alias.scope !143
  %i.nu = load i8, ptr %i.mv, align 2, !tbaa !27, !alias.scope !143
  %i.nv = insertelement <4 x i8> poison, i8 %i.nr, i64 0
  %i.nw = insertelement <4 x i8> %i.nv, i8 %i.ns, i64 1
  %i.nx = insertelement <4 x i8> %i.nw, i8 %i.nt, i64 2
  %i.ny = insertelement <4 x i8> %i.nx, i8 %i.nu, i64 3
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %index749
  %3 = icmp ult <4 x i32> %i.nq, splat (i32 256)
  %4 = icmp sgt <4 x i32> %i.nq, splat (i32 -1)
  %5 = sext <4 x i1> %4 to <4 x i8>
  %i.oa = trunc nuw <4 x i32> %i.nq to <4 x i8>
  %6 = select <4 x i1> %3, <4 x i8> %i.oa, <4 x i8> %5
  %interleaved.vec751 = shufflevector <4 x i8> %i.ny, <4 x i8> %6, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec751, ptr %i.nz, align 1, !tbaa !27, !alias.scope !145, !noalias !146
  %index.next752 = add nuw i64 %index749, 4       ; 2 uses
  %i.ob = icmp eq i64 %index.next752, %n.vec739
  br i1 %i.ob, label %middle.block753, label %vector.body748, !llvm.loop !116

middle.block753:                                  ; preds = %vector.body748
  %cmp.n754 = icmp eq i64 %n.vec739, %i.mm
  br i1 %cmp.n754, label %._crit_edge577, label %scalar.ph736.preheader

scalar.ph736.preheader:                           ; preds = %vector.memcheck723, %.lr.ph576, %middle.block753
  %indvars.iv633.ph = phi i64 [ 0, %vector.memcheck723 ], [ 0, %.lr.ph576 ], [ %n.vec739, %middle.block753 ]
  br label %scalar.ph736

scalar.ph736:                                     ; preds = %scalar.ph736.preheader, %scalar.ph736
  %indvars.iv633 = phi i64 [ %indvars.iv.next634, %scalar.ph736 ], [ %indvars.iv633.ph, %scalar.ph736.preheader ] ; 4 uses
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %i.mj, i64 %indvars.iv633 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 1
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !27
  %i.of = zext i8 %i.oe to i32
  %i.og = mul nsw i32 %i.jq, %i.of
  %i.oh = add nsw i32 %i.og, 8
  %i.oi = ashr i32 %i.oh, 4
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv633
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !29
  %i.ol = add i32 %i.ok, %.neg328
  %i.om = mul nsw i32 %i.ol, %i.mg
  %i.on = add i32 %i.kb, %i.om
  %i.oo = add i32 %i.on, %i.oi                    ; 3 uses
  %i.op = load i8, ptr %i.oc, align 2, !tbaa !27
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %indvars.iv633 ; 2 uses
  store i8 %i.op, ptr %i.oq, align 2, !tbaa !27
  %.not.i335 = icmp ult i32 %i.oo, 256
  %isnotneg.i336 = icmp sgt i32 %i.oo, -1
  %7 = sext i1 %isnotneg.i336 to i8
  %i.or = trunc nuw i32 %i.oo to i8
  %.0.i337 = select i1 %.not.i335, i8 %i.or, i8 %7
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 1
  store i8 %.0.i337, ptr %i.os, align 1, !tbaa !27
  %indvars.iv.next634 = add nuw nsw i64 %indvars.iv633, 1 ; 2 uses
  %i.ot = icmp samesign ult i64 %indvars.iv.next634, %i.mm
  br i1 %i.ot, label %scalar.ph736, label %._crit_edge577, !llvm.loop !117

._crit_edge577:                                   ; preds = %scalar.ph736, %middle.block753, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.loopexit562.a

.critedge:                                        ; preds = %bb.r, %bb.s
  %.sroa.62.6 = phi i32 [ %spec.select.i348, %bb.r ], [ %spec.select.i349, %bb.s ] ; 3 uses
  %i.ou = lshr i32 %.sroa.62.6, 3
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 %i.ov
  %i.ox = load i32, ptr %i.ow, align 1, !tbaa !27
  %i.oy = call i32 @llvm.bswap.i32(i32 %i.ox)
  %i.oz = and i32 %.sroa.62.6, 7
  %i.pa = shl i32 %i.oy, %i.oz
  %i.pb = lshr i32 %i.pa, 28                      ; 3 uses
  %i.pc = add i32 %.sroa.62.6, 4
  %i.pd = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.pc) ; 4 uses
  store i32 %i.pb, ptr %i.bg, align 8, !tbaa !41
  switch i32 %i.pb, label %.lr.ph583 [
    i32 15, label %.thread
    i32 0, label %.loopexit562.a
  ]

.lr.ph583:                                        ; preds = %.critedge
  %i.pe = lshr i32 %i.pd, 3
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 1, !tbaa !27
  %i.pi = call i32 @llvm.bswap.i32(i32 %i.ph)
  %i.pj = and i32 %i.pd, 7
  %i.pk = shl i32 %i.pi, %i.pj
  %i.pl = lshr i32 %i.pk, 29                      ; 2 uses
  %i.pm = add nuw i32 %i.pd, 3
  %i.pn = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.pm) ; 3 uses
  %i.po = add nuw nsw i32 %i.pl, 1
  %i.pp = lshr i32 %i.pn, 3
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 1, !tbaa !27
  %i.pt = call i32 @llvm.bswap.i32(i32 %i.ps)
  %i.pu = and i32 %i.pn, 7
  %i.pv = shl i32 %i.pt, %i.pu
  %i.pw = lshr i32 %i.pv, 30                      ; 2 uses
  %i.px = add nuw i32 %i.pn, 2
  %i.py = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.px)
  %i.pz = add nuw nsw i32 %i.pw, 5
  %i.qa = xor i32 %i.pl, 31
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ay, i64 60
  %i.qc = sub nuw nsw i32 27, %i.pw
  %i.qd = zext nneg i32 %i.pb to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph583, %bb.x
  %indvars.iv636 = phi i64 [ 0, %.lr.ph583 ], [ %indvars.iv.next637, %bb.x ] ; 2 uses
  %.0274581 = phi i32 [ 0, %.lr.ph583 ], [ %i.qm, %bb.x ]
  %.sroa.62.7579 = phi i32 [ %i.py, %.lr.ph583 ], [ %i.rb, %bb.x ] ; 3 uses
  %i.qe = lshr i32 %.sroa.62.7579, 3
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 %i.qf
  %i.qh = load i32, ptr %i.qg, align 1, !tbaa !27
  %i.qi = call i32 @llvm.bswap.i32(i32 %i.qh)
  %i.qj = and i32 %.sroa.62.7579, 7
  %i.qk = shl i32 %i.qi, %i.qj
  %i.ql = lshr i32 %i.qk, %i.qa
  %i.qm = add nuw nsw i32 %i.ql, %.0274581        ; 3 uses
  %i.qn = icmp samesign ugt i32 %i.qm, 255
  br i1 %i.qn, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.qo = add i32 %i.po, %.sroa.62.7579
  %i.qp = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.qo) ; 3 uses
  %i.qq = trunc nuw i32 %i.qm to i8
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %indvars.iv636 ; 2 uses
  store i8 %i.qq, ptr %i.qr, align 2, !tbaa !27
  %i.qs = lshr i32 %i.qp, 3
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 1, !tbaa !27
  %i.qw = call i32 @llvm.bswap.i32(i32 %i.qv)
  %i.qx = and i32 %i.qp, 7
  %i.qy = shl i32 %i.qw, %i.qx
  %i.qz = lshr i32 %i.qy, %i.qc
  %i.ra = add nuw i32 %i.pz, %i.qp
  %i.rb = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.ra) ; 2 uses
  %i.rc = trunc nuw i32 %i.qz to i8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qr, i64 1
  store i8 %i.rc, ptr %i.rd, align 1, !tbaa !27
  %indvars.iv.next637 = add nuw nsw i64 %indvars.iv636, 1 ; 2 uses
  %.not315 = icmp samesign ult i64 %indvars.iv.next637, %i.qd
  br i1 %.not315, label %bb.w, label %.loopexit562.a, !llvm.loop !118

.loopexit562.a:                                   ; preds = %bb.x, %.critedge, %bb.t, %._crit_edge577
  %.sroa.62.9 = phi i32 [ %i.pd, %.critedge ], [ %i.mi, %._crit_edge577 ], [ %i.kl, %bb.t ], [ %i.rb, %bb.x ] ; 5 uses
  br i1 %.not308, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit562.a
  %i.re = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  store i32 0, ptr %i.re, align 8, !tbaa !40
  br label %.loopexit560.sink.split

bb.z:                                             ; preds = %.loopexit562.a
  %i.rf = lshr i32 %.sroa.62.9, 3
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 %i.rg
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !27
  %i.rj = icmp slt i32 %.sroa.62.9, %i.i
  %i.rk = zext i1 %i.rj to i32
  %spec.select.i350 = add i32 %.sroa.62.9, %i.rk  ; 2 uses
  %i.rl = zext i8 %i.ri to i32
  %i.rm = and i32 %.sroa.62.9, 7
  %i.rn = shl nuw nsw i32 %i.rl, %i.rm
  %i.ro = lshr i32 %i.rn, 7
  %i.rp = and i32 %i.ro, 1                        ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  store i32 %i.rp, ptr %i.rq, align 8, !tbaa !40
  %.not317 = icmp eq i32 %i.rp, 0
  br i1 %.not317, label %.preheader, label %.loopexit560.sink.split

.preheader:                                       ; preds = %bb.z
  %i.rr = getelementptr inbounds nuw i8, ptr %.0285619, i64 232
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  %i.rt = getelementptr inbounds nuw i8, ptr %.0285619, i64 240
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %i.rv = getelementptr inbounds nuw i8, ptr %.0285619, i64 248
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ay, i64 248
  %i.rx = getelementptr inbounds nuw i8, ptr %.0285619, i64 92
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ay, i64 92 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.0285619, i64 100
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ay, i64 100 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 100
  %scevgep711 = getelementptr i8, ptr %.0285619, i64 100
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader, %.loopexit558
  %i.sb = phi i1 [ true, %.preheader ], [ false, %.loopexit558 ]
  %indvars.iv650.sroa.phi792 = phi ptr [ %.sroa.0, %.preheader ], [ %.sroa.6, %.loopexit558 ] ; 2 uses
  %indvars.iv650 = phi i64 [ 0, %.preheader ], [ 1, %.loopexit558 ] ; 13 uses
  %.sroa.62.10601 = phi i32 [ %spec.select.i350, %.preheader ], [ %.sroa.62.15, %.loopexit558 ] ; 5 uses
  br i1 %i.it, label %.thread540, label %bb.ab

.thread540:                                       ; preds = %bb.aa
  store i32 0, ptr %indvars.iv650.sroa.phi792, align 4, !tbaa !29
  br label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.sc = lshr i32 %.sroa.62.10601, 3
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 %i.sd
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !27
  %i.sg = icmp slt i32 %.sroa.62.10601, %i.i
  %i.sh = zext i1 %i.sg to i32
  %spec.select.i351 = add i32 %.sroa.62.10601, %i.sh ; 4 uses
  %i.si = zext i8 %i.sf to i32
  %i.sj = and i32 %.sroa.62.10601, 7
  %i.sk = shl nuw nsw i32 %i.si, %i.sj
  %i.sl = lshr i32 %i.sk, 7
  %i.sm = and i32 %i.sl, 1                        ; 2 uses
  store i32 %i.sm, ptr %indvars.iv650.sroa.phi792, align 4, !tbaa !29
  %.not318 = icmp eq i32 %i.sm, 0
  br i1 %.not318, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.sn = lshr i32 %spec.select.i351, 3
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 %i.so
  %i.sq = load i32, ptr %i.sp, align 1, !tbaa !27
  %i.sr = call i32 @llvm.bswap.i32(i32 %i.sq)
  %i.ss = and i32 %spec.select.i351, 7
  %i.st = shl i32 %i.sr, %i.ss
  %i.su = lshr i32 %i.st, 23
  %i.sv = add i32 %spec.select.i351, 9
  %i.sw = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.sv) ; 3 uses
  %i.sx = add nsw i32 %i.su, -256                 ; 2 uses
  %i.sy = lshr i32 %i.sw, 3
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 %i.sz
  %i.tb = load i32, ptr %i.ta, align 1, !tbaa !27
  %i.tc = call i32 @llvm.bswap.i32(i32 %i.tb)
  %i.td = and i32 %i.sw, 7
  %i.te = shl i32 %i.tc, %i.td
  %i.tf = lshr i32 %i.te, 23
  %i.tg = add nuw i32 %i.sw, 9
  %i.th = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.tg) ; 3 uses
  %i.ti = add nsw i32 %i.tf, -256                 ; 2 uses
  %i.tj = lshr i32 %i.th, 3
  %i.tk = zext nneg i32 %i.tj to i64
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 %i.tk
  %i.tm = load i32, ptr %i.tl, align 1, !tbaa !27
  %i.tn = call i32 @llvm.bswap.i32(i32 %i.tm)
  %i.to = and i32 %i.th, 7
  %i.tp = shl i32 %i.tn, %i.to
  %i.tq = lshr i32 %i.tp, 29                      ; 6 uses
  %i.tr = add nuw i32 %i.th, 3
  %i.ts = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.tr) ; 4 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %indvars.iv650
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !27
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %indvars.iv650
  store i32 %i.tu, ptr %i.tv, align 4, !tbaa !29
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv650
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !27
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv650
  store i32 %i.tx, ptr %i.ty, align 4, !tbaa !29
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %indvars.iv650
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !27
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %indvars.iv650
  store i32 %i.ua, ptr %i.ub, align 4, !tbaa !29
  %.not319 = icmp eq i32 %i.tq, 0
  br i1 %.not319, label %.loopexit558, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %indvars.iv650
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !27 ; 7 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %indvars.iv650
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !29
  %i.uf = icmp sgt i32 %i.ud, 0                   ; 2 uses
  br i1 %i.uf, label %.lr.ph588, label %._crit_edge589

.lr.ph588:                                        ; preds = %bb.ad
  %i.ug = sub nuw nsw i32 32, %i.tq               ; 3 uses
  %wide.trip.count642 = zext nneg i32 %i.ud to i64 ; 2 uses
  %xtraiter768 = and i64 %wide.trip.count642, 1
  %i.uh = icmp eq i32 %i.ud, 1
  br i1 %i.uh, label %.epil.preheader767, label %.lr.ph588.new

.lr.ph588.new:                                    ; preds = %.lr.ph588
  %unroll_iter772 = and i64 %wide.trip.count642, 2147483646
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph588.new
  %indvars.iv639 = phi i64 [ 0, %.lr.ph588.new ], [ %indvars.iv.next640.1, %bb.ae ] ; 3 uses
  %.sroa.62.12585 = phi i32 [ %i.ts, %.lr.ph588.new ], [ %i.vc, %bb.ae ] ; 3 uses
  %niter773 = phi i64 [ 0, %.lr.ph588.new ], [ %niter773.next.1, %bb.ae ]
  %i.ui = lshr i32 %.sroa.62.12585, 3
  %i.uj = zext nneg i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 %i.uj
  %i.ul = load i32, ptr %i.uk, align 1, !tbaa !27
  %i.um = call i32 @llvm.bswap.i32(i32 %i.ul)
  %i.un = and i32 %.sroa.62.12585, 7
  %i.uo = shl i32 %i.um, %i.un
  %i.up = lshr i32 %i.uo, %i.ug
  %i.uq = add i32 %.sroa.62.12585, %i.tq
  %i.ur = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.uq) ; 3 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv639
  store i32 %i.up, ptr %i.us, align 8, !tbaa !29
  %i.ut = lshr i32 %i.ur, 3
  %i.uu = zext nneg i32 %i.ut to i64
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 %i.uu
  %i.uw = load i32, ptr %i.uv, align 1, !tbaa !27
  %i.ux = call i32 @llvm.bswap.i32(i32 %i.uw)
  %i.uy = and i32 %i.ur, 7
  %i.uz = shl i32 %i.ux, %i.uy
  %i.va = lshr i32 %i.uz, %i.ug
  %i.vb = add nuw i32 %i.ur, %i.tq
  %i.vc = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.vb) ; 3 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv639
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 4
  store i32 %i.va, ptr %i.ve, align 4, !tbaa !29
  %indvars.iv.next640.1 = add nuw nsw i64 %indvars.iv639, 2 ; 2 uses
  %niter773.next.1 = add i64 %niter773, 2         ; 2 uses
  %niter773.ncmp.1 = icmp eq i64 %niter773.next.1, %unroll_iter772
  br i1 %niter773.ncmp.1, label %._crit_edge589.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !119

._crit_edge589.loopexit.unr-lcssa:                ; preds = %bb.ae
  %lcmp.mod769.not = icmp eq i64 %xtraiter768, 0
  br i1 %lcmp.mod769.not, label %._crit_edge589, label %.epil.preheader767

.epil.preheader767:                               ; preds = %._crit_edge589.loopexit.unr-lcssa, %.lr.ph588
  %indvars.iv639.epil.init = phi i64 [ 0, %.lr.ph588 ], [ %indvars.iv.next640.1, %._crit_edge589.loopexit.unr-lcssa ]
  %.sroa.62.12585.epil.init = phi i32 [ %i.ts, %.lr.ph588 ], [ %i.vc, %._crit_edge589.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod771 = trunc i32 %i.ud to i1
  call void @llvm.assume(i1 %lcmp.mod771)
  %i.vf = lshr i32 %.sroa.62.12585.epil.init, 3
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 %i.vg
  %i.vi = load i32, ptr %i.vh, align 1, !tbaa !27
  %i.vj = call i32 @llvm.bswap.i32(i32 %i.vi)
  %i.vk = and i32 %.sroa.62.12585.epil.init, 7
  %i.vl = shl i32 %i.vj, %i.vk
  %i.vm = lshr i32 %i.vl, %i.ug
  %i.vn = add i32 %.sroa.62.12585.epil.init, %i.tq
  %i.vo = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.vn)
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv639.epil.init
  store i32 %i.vm, ptr %i.vp, align 4, !tbaa !29
  br label %._crit_edge589

._crit_edge589:                                   ; preds = %.epil.preheader767, %._crit_edge589.loopexit.unr-lcssa, %bb.ad
  %.sroa.62.12.lcssa = phi i32 [ %i.ts, %bb.ad ], [ %i.vc, %._crit_edge589.loopexit.unr-lcssa ], [ %i.vo, %.epil.preheader767 ] ; 3 uses
  %i.vq = lshr i32 %.sroa.62.12.lcssa, 3
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 %i.vr
  %i.vt = load i32, ptr %i.vs, align 1, !tbaa !27
  %i.vu = call i32 @llvm.bswap.i32(i32 %i.vt)
  %i.vv = and i32 %.sroa.62.12.lcssa, 7
  %i.vw = shl i32 %i.vu, %i.vv
  %i.vx = lshr i32 %i.vw, 29                      ; 2 uses
  %i.vy = add i32 %.sroa.62.12.lcssa, 3
  %i.vz = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.vy)
  br i1 %i.uf, label %.lr.ph593, label %._crit_edge594

.lr.ph593:                                        ; preds = %._crit_edge589
  %i.wa = getelementptr inbounds nuw [20 x i8], ptr %i.rz, i64 %indvars.iv650 ; 6 uses
  %i.wb = add nsw i32 %i.tq, -1
  %.neg = shl nsw i32 -1, %i.wb                   ; 2 uses
  %i.wc = getelementptr inbounds nuw [20 x i8], ptr %i.sa, i64 %indvars.iv650 ; 4 uses
  %i.wd = zext nneg i32 %i.ud to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ud, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph593
  %i.we = mul nuw nsw i64 %indvars.iv650, 20
  %i.wf = shl nuw nsw i64 %i.wd, 1
  %i.wg = add nuw nsw i64 %i.we, %i.wf            ; 2 uses
  %scevgep710 = getelementptr i8, ptr %scevgep, i64 %i.wg ; 2 uses
  %scevgep712 = getelementptr i8, ptr %scevgep711, i64 %i.wg
  %i.wh = shl nuw nsw i64 %i.wd, 2
  %scevgep713 = getelementptr i8, ptr %i.d, i64 %i.wh
  %bound0 = icmp ult ptr %i.wc, %scevgep712
  %bound1 = icmp ult ptr %i.wa, %scevgep710
  %found.conflict = and i1 %bound0, %bound1
  %bound0714 = icmp ult ptr %i.wc, %scevgep713
  %bound1715 = icmp ult ptr %i.d, %scevgep710
  %found.conflict716 = and i1 %bound0714, %bound1715
  %conflict.rdx = or i1 %found.conflict, %found.conflict716
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.wd, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.neg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert717 = insertelement <4 x i32> poison, i32 %i.sx, i64 0
  %broadcast.splat718 = shufflevector <4 x i32> %broadcast.splatinsert717, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert719 = insertelement <4 x i32> poison, i32 %i.vx, i64 0
  %broadcast.splat720 = shufflevector <4 x i32> %broadcast.splatinsert719, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert721 = insertelement <4 x i32> poison, i32 %i.ti, i64 0
  %broadcast.splat722 = shufflevector <4 x i32> %broadcast.splatinsert721, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %i.wa, i64 %index ; 2 uses
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %i.wa, i64 %index ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 2
  %i.wl = getelementptr inbounds nuw [2 x i8], ptr %i.wa, i64 %index ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 4
  %i.wn = getelementptr inbounds nuw [2 x i8], ptr %i.wa, i64 %index ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 6
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wi, i64 1
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wj, i64 3
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wl, i64 5
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wn, i64 7
  %i.wt = load i8, ptr %i.wp, align 1, !tbaa !27, !alias.scope !147
  %i.wu = load i8, ptr %i.wq, align 1, !tbaa !27, !alias.scope !147
  %i.wv = load i8, ptr %i.wr, align 1, !tbaa !27, !alias.scope !147
  %i.ww = load i8, ptr %i.ws, align 1, !tbaa !27, !alias.scope !147
  %i.wx = insertelement <4 x i8> poison, i8 %i.wt, i64 0
  %i.wy = insertelement <4 x i8> %i.wx, i8 %i.wu, i64 1
  %i.wz = insertelement <4 x i8> %i.wy, i8 %i.wv, i64 2
  %i.xa = insertelement <4 x i8> %i.wz, i8 %i.ww, i64 3
  %i.xb = zext <4 x i8> %i.xa to <4 x i32>
  %i.xc = mul nsw <4 x i32> %broadcast.splat718, %i.xb
  %i.xd = add nsw <4 x i32> %i.xc, splat (i32 8)
  %i.xe = ashr <4 x i32> %i.xd, splat (i32 4)
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index
  %wide.load = load <4 x i32>, ptr %i.xf, align 16, !tbaa !29, !alias.scope !148
  %i.xg = add <4 x i32> %wide.load, %broadcast.splat
  %i.xh = mul nsw <4 x i32> %i.xg, %broadcast.splat720
  %i.xi = add <4 x i32> %broadcast.splat722, %i.xh
  %i.xj = add <4 x i32> %i.xi, %i.xe              ; 3 uses
  %i.xk = load i8, ptr %i.wi, align 2, !tbaa !27, !alias.scope !147
  %i.xl = load i8, ptr %i.wk, align 2, !tbaa !27, !alias.scope !147
  %i.xm = load i8, ptr %i.wm, align 2, !tbaa !27, !alias.scope !147
  %i.xn = load i8, ptr %i.wo, align 2, !tbaa !27, !alias.scope !147
  %i.xo = insertelement <4 x i8> poison, i8 %i.xk, i64 0
  %i.xp = insertelement <4 x i8> %i.xo, i8 %i.xl, i64 1
  %i.xq = insertelement <4 x i8> %i.xp, i8 %i.xm, i64 2
  %i.xr = insertelement <4 x i8> %i.xq, i8 %i.xn, i64 3
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.wc, i64 %index
  %8 = icmp ult <4 x i32> %i.xj, splat (i32 256)
  %9 = icmp sgt <4 x i32> %i.xj, splat (i32 -1)
  %10 = sext <4 x i1> %9 to <4 x i8>
  %i.xt = trunc nuw <4 x i32> %i.xj to <4 x i8>
  %11 = select <4 x i1> %8, <4 x i8> %i.xt, <4 x i8> %10
  %interleaved.vec = shufflevector <4 x i8> %i.xr, <4 x i8> %11, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec, ptr %i.xs, align 1, !tbaa !27, !alias.scope !149, !noalias !150
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.xu = icmp eq i64 %index.next, %n.vec
  br i1 %i.xu, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.wd
  br i1 %cmp.n, label %._crit_edge594, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph593, %middle.block
  %indvars.iv644.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph593 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv644 = phi i64 [ %indvars.iv.next645, %scalar.ph ], [ %indvars.iv644.ph, %scalar.ph.preheader ] ; 4 uses
  %i.xv = getelementptr inbounds nuw [2 x i8], ptr %i.wa, i64 %indvars.iv644 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 1
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !27
  %i.xy = zext i8 %i.xx to i32
  %i.xz = mul nsw i32 %i.sx, %i.xy
  %i.ya = add nsw i32 %i.xz, 8
  %i.yb = ashr i32 %i.ya, 4
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv644
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !29
  %i.ye = add i32 %i.yd, %.neg
  %i.yf = mul nsw i32 %i.ye, %i.vx
  %i.yg = add i32 %i.ti, %i.yf
  %i.yh = add i32 %i.yg, %i.yb                    ; 3 uses
  %i.yi = load i8, ptr %i.xv, align 2, !tbaa !27
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.wc, i64 %indvars.iv644 ; 2 uses
  store i8 %i.yi, ptr %i.yj, align 2, !tbaa !27
  %.not.i = icmp ult i32 %i.yh, 256
  %isnotneg.i = icmp sgt i32 %i.yh, -1
  %12 = sext i1 %isnotneg.i to i8
  %i.yk = trunc nuw i32 %i.yh to i8
  %.0.i = select i1 %.not.i, i8 %i.yk, i8 %12
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yj, i64 1
  store i8 %.0.i, ptr %i.yl, align 1, !tbaa !27
  %indvars.iv.next645 = add nuw nsw i64 %indvars.iv644, 1 ; 2 uses
  %i.ym = icmp samesign ult i64 %indvars.iv.next645, %i.wd
  br i1 %i.ym, label %scalar.ph, label %._crit_edge594, !llvm.loop !125

._crit_edge594:                                   ; preds = %scalar.ph, %middle.block, %._crit_edge589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.loopexit558

bb.af:                                            ; preds = %.thread540, %bb.ab
  %.sroa.62.11543 = phi i32 [ %.sroa.62.10601, %.thread540 ], [ %spec.select.i351, %bb.ab ] ; 3 uses
  %i.yn = lshr i32 %.sroa.62.11543, 3
  %i.yo = zext nneg i32 %i.yn to i64
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 %i.yo
  %i.yq = load i32, ptr %i.yp, align 1, !tbaa !27
  %i.yr = call i32 @llvm.bswap.i32(i32 %i.yq)
  %i.ys = and i32 %.sroa.62.11543, 7
  %i.yt = shl i32 %i.yr, %i.ys                    ; 2 uses
  %i.yu = lshr i32 %i.yt, 28                      ; 3 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %indvars.iv650
  store i32 %i.yu, ptr %i.yv, align 4, !tbaa !29
  %i.yw = icmp ugt i32 %i.yt, -1342177281
  br i1 %i.yw, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.yx = add i32 %.sroa.62.11543, 4
  %i.yy = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.yx) ; 3 uses
  %i.yz = lshr i32 %i.yy, 3
  %i.za = zext nneg i32 %i.yz to i64
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 %i.za
  %i.zc = load i32, ptr %i.zb, align 1, !tbaa !27
  %i.zd = call i32 @llvm.bswap.i32(i32 %i.zc)
  %i.ze = and i32 %i.yy, 7
  %i.zf = shl i32 %i.zd, %i.ze
  %i.zg = lshr i32 %i.zf, 29                      ; 2 uses
  %i.zh = add nuw i32 %i.yy, 3
  %i.zi = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.zh) ; 3 uses
  %i.zj = add nuw nsw i32 %i.zg, 1
  %i.zk = lshr i32 %i.zi, 3
  %i.zl = zext nneg i32 %i.zk to i64
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 %i.zl
  %i.zn = load i32, ptr %i.zm, align 1, !tbaa !27
  %i.zo = call i32 @llvm.bswap.i32(i32 %i.zn)
  %i.zp = and i32 %i.zi, 7
  %i.zq = shl i32 %i.zo, %i.zp
  %i.zr = lshr i32 %i.zq, 30                      ; 2 uses
  %i.zs = add nuw i32 %i.zi, 2
  %i.zt = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.zs) ; 3 uses
  %i.zu = add nuw nsw i32 %i.zr, 5
  %i.zv = lshr i32 %i.zt, 3
  %i.zw = zext nneg i32 %i.zv to i64
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 %i.zw
  %i.zy = load i32, ptr %i.zx, align 1, !tbaa !27
  %i.zz = call i32 @llvm.bswap.i32(i32 %i.zy)
  %i.aaa = and i32 %i.zt, 7
  %i.aab = shl i32 %i.zz, %i.aaa
  %i.aac = lshr i32 %i.aab, 24
  %i.aad = add nuw i32 %i.zt, 8
  %i.aae = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.aad) ; 2 uses
  %.not684 = icmp eq i32 %i.yu, 0
  br i1 %.not684, label %.loopexit558, label %.lr.ph599

.lr.ph599:                                        ; preds = %bb.ag
  %i.aaf = xor i32 %i.zg, 31
  %i.aag = getelementptr inbounds nuw [20 x i8], ptr %i.sa, i64 %indvars.iv650
  %i.aah = sub nuw nsw i32 27, %i.zr
  %i.aai = zext nneg i32 %i.yu to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph599, %bb.ai
  %indvars.iv647 = phi i64 [ 0, %.lr.ph599 ], [ %indvars.iv.next648, %bb.ai ] ; 2 uses
  %.0597 = phi i32 [ 0, %.lr.ph599 ], [ %i.aar, %bb.ai ]
  %.sroa.62.13595 = phi i32 [ %i.aae, %.lr.ph599 ], [ %i.abg, %bb.ai ] ; 3 uses
  %i.aaj = lshr i32 %.sroa.62.13595, 3
  %i.aak = zext nneg i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 %i.aak
  %i.aam = load i32, ptr %i.aal, align 1, !tbaa !27
  %i.aan = call i32 @llvm.bswap.i32(i32 %i.aam)
  %i.aao = and i32 %.sroa.62.13595, 7
  %i.aap = shl i32 %i.aan, %i.aao
  %i.aaq = lshr i32 %i.aap, %i.aaf
  %i.aar = add nuw nsw i32 %i.aaq, %.0597         ; 3 uses
  %i.aas = icmp samesign ugt i32 %i.aar, 255
  br i1 %i.aas, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.aat = add i32 %i.zj, %.sroa.62.13595
  %i.aau = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.aat) ; 3 uses
  %i.aav = trunc nuw i32 %i.aar to i8
  %i.aaw = getelementptr inbounds nuw [2 x i8], ptr %i.aag, i64 %indvars.iv647 ; 2 uses
  store i8 %i.aav, ptr %i.aaw, align 2, !tbaa !27
  %i.aax = lshr i32 %i.aau, 3
  %i.aay = zext nneg i32 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 %i.aay
  %i.aba = load i32, ptr %i.aaz, align 1, !tbaa !27
  %i.abb = call i32 @llvm.bswap.i32(i32 %i.aba)
  %i.abc = and i32 %i.aau, 7
  %i.abd = shl i32 %i.abb, %i.abc
  %i.abe = lshr i32 %i.abd, %i.aah
  %i.abf = add nuw i32 %i.zu, %i.aau
  %i.abg = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.abf) ; 2 uses
  %i.abh = add nuw nsw i32 %i.abe, %i.aac
  %i.abi = trunc i32 %i.abh to i8
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1
  store i8 %i.abi, ptr %i.abj, align 1, !tbaa !27
  %indvars.iv.next648 = add nuw nsw i64 %indvars.iv647, 1 ; 2 uses
  %i.abk = icmp samesign ult i64 %indvars.iv.next648, %i.aai
  br i1 %i.abk, label %bb.ah, label %.loopexit558, !llvm.loop !126

.loopexit558:                                     ; preds = %bb.ai, %bb.ag, %bb.ac, %._crit_edge594
  %.sroa.62.15 = phi i32 [ %i.vz, %._crit_edge594 ], [ %i.ts, %bb.ac ], [ %i.aae, %bb.ag ], [ %i.abg, %bb.ai ] ; 2 uses
  br i1 %i.sb, label %bb.aa, label %.loopexit560, !llvm.loop !127

.loopexit560.sink.split:                          ; preds = %bb.z, %bb.y
  %.sroa.62.16.ph = phi i32 [ %.sroa.62.9, %bb.y ], [ %spec.select.i350, %bb.z ]
  %i.abl = getelementptr inbounds nuw i8, ptr %i.ay, i64 92
  %i.abm = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store i32 0, ptr %i.abm, align 8, !tbaa !29
  store i32 0, ptr %i.abl, align 4, !tbaa !29
  br label %.loopexit560

.loopexit560:                                     ; preds = %.loopexit558, %.loopexit560.sink.split
  %.not324 = phi i1 [ %.not308, %.loopexit560.sink.split ], [ true, %.loopexit558 ] ; 2 uses
  %.sroa.62.16 = phi i32 [ %.sroa.62.16.ph, %.loopexit560.sink.split ], [ %.sroa.62.15, %.loopexit558 ] ; 3 uses
  %i.abn = lshr i32 %.sroa.62.16, 3
  %i.abo = zext nneg i32 %i.abn to i64
  %i.abp = getelementptr inbounds nuw i8, ptr %1, i64 %i.abo
  %i.abq = load i32, ptr %i.abp, align 1, !tbaa !27
  %i.abr = call i32 @llvm.bswap.i32(i32 %i.abq)
  %i.abs = and i32 %.sroa.62.16, 7
  %i.abt = shl i32 %i.abr, %i.abs
  %i.abu = lshr i32 %i.abt, 30
  %i.abv = add i32 %.sroa.62.16, 2
  %i.abw = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.abv) ; 3 uses
  %i.abx = or disjoint i32 %i.abu, 8
  %i.aby = getelementptr inbounds nuw i8, ptr %i.ay, i64 140
  store i32 %i.abx, ptr %i.aby, align 4, !tbaa !47
  %i.abz = lshr i32 %i.abw, 3
  %i.aca = zext nneg i32 %i.abz to i64
  %i.acb = getelementptr inbounds nuw i8, ptr %1, i64 %i.aca
  %i.acc = load i32, ptr %i.acb, align 1, !tbaa !27
  %i.acd = call i32 @llvm.bswap.i32(i32 %i.acc)
  %i.ace = and i32 %i.abw, 7
  %i.acf = shl i32 %i.acd, %i.ace
  %i.acg = lshr i32 %i.acf, 30                    ; 4 uses
  %i.ach = add nuw i32 %i.abw, 2
  %i.aci = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.ach) ; 4 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  store i32 %i.acg, ptr %i.acj, align 8, !tbaa !35
  %i.ack = shl nuw nsw i32 %i.acg, 1
  %i.acl = add nuw nsw i32 %i.acg, 1
  %i.acm = mul nuw nsw i32 %i.ack, %i.acl         ; 5 uses
  %i.acn = load i32, ptr %i.bg, align 8, !tbaa !41 ; 3 uses
  %.not320 = icmp eq i32 %i.acn, 0
  br i1 %.not320, label %.loopexit559, label %bb.aj

bb.aj:                                            ; preds = %.loopexit560
  %i.aco = lshr i32 %i.aci, 3
  %i.acp = zext nneg i32 %i.aco to i64
  %i.acq = getelementptr inbounds nuw i8, ptr %1, i64 %i.acp
  %i.acr = load i32, ptr %i.acq, align 1, !tbaa !27
  %i.acs = call i32 @llvm.bswap.i32(i32 %i.acr)
  %i.act = and i32 %i.aci, 7
  %i.acu = shl i32 %i.acs, %i.act
  %i.acv = lshr i32 %i.acu, 30                    ; 3 uses
  %i.acw = add nuw i32 %i.aci, 2
  %i.acx = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.acw) ; 2 uses
  %i.acy = add nuw nsw i32 %i.acv, 5              ; 2 uses
  %.not621 = icmp eq i32 %i.acg, 0
  br i1 %.not621, label %.loopexit559, label %.lr.ph607

.lr.ph607:                                        ; preds = %bb.aj
  %i.acz = sub nuw nsw i32 27, %i.acv             ; 2 uses
  %.neg327 = shl nsw i32 -16, %i.acv              ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.ay, i64 148 ; 2 uses
  %wide.trip.count656 = zext nneg i32 %i.acm to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph607
  %indvars.iv653 = phi i64 [ 0, %.lr.ph607 ], [ %indvars.iv.next654.1, %bb.ak ] ; 3 uses
  %.sroa.62.17604 = phi i32 [ %i.acx, %.lr.ph607 ], [ %i.adx, %bb.ak ] ; 3 uses
  %i.adb = lshr i32 %.sroa.62.17604, 3
  %i.adc = zext nneg i32 %i.adb to i64
  %i.add = getelementptr inbounds nuw i8, ptr %1, i64 %i.adc
  %i.ade = load i32, ptr %i.add, align 1, !tbaa !27
  %i.adf = call i32 @llvm.bswap.i32(i32 %i.ade)
  %i.adg = and i32 %.sroa.62.17604, 7
  %i.adh = shl i32 %i.adf, %i.adg
  %i.adi = lshr i32 %i.adh, %i.acz
  %i.adj = add i32 %i.acy, %.sroa.62.17604
  %i.adk = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.adj) ; 3 uses
  %i.adl = add nsw i32 %i.adi, %.neg327
  %i.adm = trunc i32 %i.adl to i8
  %i.adn = getelementptr inbounds nuw i8, ptr %i.ada, i64 %indvars.iv653
  store i8 %i.adm, ptr %i.adn, align 1, !tbaa !27
  %i.ado = lshr i32 %i.adk, 3
  %i.adp = zext nneg i32 %i.ado to i64
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 %i.adp
  %i.adr = load i32, ptr %i.adq, align 1, !tbaa !27
  %i.ads = call i32 @llvm.bswap.i32(i32 %i.adr)
  %i.adt = and i32 %i.adk, 7
end_hunk_0
begin_hunk_1_@fguv_32x32xn_c_16:bb.a
bb.t:                                             ; preds = %bb.s
  %i.nl = load i32, ptr %i.at, align 4, !tbaa !29
  %i.nm = mul nsw i32 %i.nl, %i.nk
  %i.nn = zext i16 %.pre507 to i32                ; 2 uses
  %i.no = load i32, ptr %i.av, align 4, !tbaa !29
  %i.np = mul nsw i32 %i.no, %i.nn
  %i.nq = add nsw i32 %i.np, %i.nm
  %i.nr = ashr i32 %i.nq, 6
  %i.ns = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.nt = shl nsw i32 %i.ns, %i.h
  %i.nu = add nsw i32 %i.nr, %i.nt                ; 2 uses
  %i.nv = icmp slt i32 %i.nu, 0
  %..i396 = tail call i32 @llvm.smin.i32(i32 %i.nu, i32 %i.ay)
  %.0.i397 = select i1 %i.nv, i32 0, i32 %..i396
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge510, %bb.t
  %.pre-phi517 = phi i32 [ %.pre516, %._crit_edge510 ], [ %i.nn, %bb.t ]
  %.2362 = phi i32 [ %i.nk, %._crit_edge510 ], [ %.0.i397, %bb.t ]
  %i.nw = sext i32 %.2362 to i64
  %i.nx = getelementptr inbounds i8, ptr %5, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !27
  %i.nz = zext i8 %i.ny to i32
  %i.oa = mul nsw i32 %.0.i399, %i.nz
  %i.ob = add nsw i32 %i.li, %i.oa
  %i.oc = ashr i32 %i.ob, %i.lg
  %i.od = add nsw i32 %i.oc, %.pre-phi517         ; 2 uses
  %i.oe = icmp slt i32 %i.od, %.0367
  %..i394 = tail call i32 @llvm.smin.i32(i32 %i.od, i32 %.0366)
  %.0.i395 = select i1 %i.oe, i32 %.0367, i32 %..i394
  %i.of = trunc nsw i32 %.0.i395 to i16
  store i16 %i.of, ptr %i.nj, align 2, !tbaa !39
  %indvars.iv.next491 = add nsw i64 %indvars.iv490, 1 ; 2 uses
  %i.og = icmp slt i64 %indvars.iv.next491, %i.fw
  br i1 %i.og, label %bb.q, label %.preheader, !llvm.loop !206

._crit_edge452:                                   ; preds = %bb.z, %.preheader
  %indvars.iv.next499 = add nuw nsw i64 %indvars.iv498, 1 ; 2 uses
  %exitcond505.not = icmp eq i64 %indvars.iv.next499, %wide.trip.count504
  br i1 %exitcond505.not, label %._crit_edge454, label %.preheader410, !llvm.loop !207

bb.v:                                             ; preds = %.lr.ph451, %bb.z
  %indvars.iv493 = phi i64 [ 0, %.lr.ph451 ], [ %indvars.iv.next494, %bb.z ] ; 7 uses
  %i.oh = trunc i64 %indvars.iv493 to i32
  %i.oi = add i32 %i.oh, 3                        ; 2 uses
  %i.oj = add i32 %i.fc, %i.oi
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [2 x i8], ptr %gep536, i64 %i.ok
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !39
  %i.on = sext i16 %i.om to i32
  %i.oo = trunc i64 %indvars.iv493 to i32
  %i.op = add i32 %i.ba, %i.oo                    ; 2 uses
  %i.oq = add i32 %i.fk, %i.op
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [2 x i8], ptr %gep538, i64 %i.or
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !39
  %i.ou = sext i16 %i.ot to i32
  %i.ov = add i32 %i.ev, %i.oi
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds [2 x i8], ptr %gep540, i64 %i.ow
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !39
  %i.oz = sext i16 %i.oy to i32
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv493 ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !29 ; 2 uses
  %i.pc = mul nsw i32 %i.pb, %i.ou
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !29 ; 2 uses
  %i.pf = mul nsw i32 %i.pe, %i.on
  %i.pg = add i32 %i.pc, 16
  %i.ph = add i32 %i.pg, %i.pf
  %i.pi = ashr i32 %i.ph, 5                       ; 2 uses
  %i.pj = icmp slt i32 %i.pi, %i.j
  %..i392 = tail call i32 @llvm.smin.i32(i32 %i.pi, i32 %i.k)
  %.0.i393 = select i1 %i.pj, i32 %i.j, i32 %..i392
  %i.pk = add i32 %i.fr, %i.op
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [2 x i8], ptr %gep542, i64 %i.pl
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !39
  %i.po = sext i16 %i.pn to i32
  %i.pp = mul nsw i32 %i.pb, %i.po
  %i.pq = mul nsw i32 %i.pe, %i.oz
  %i.pr = add i32 %i.pq, 16
  %i.ps = add i32 %i.pr, %i.pp
  %i.pt = ashr i32 %i.ps, 5                       ; 2 uses
  %i.pu = icmp slt i32 %i.pt, %i.j
  %..i390 = tail call i32 @llvm.smin.i32(i32 %i.pt, i32 %i.k)
  %.0.i391 = select i1 %i.pu, i32 %i.j, i32 %..i390
  %i.pv = mul nsw i32 %.0.i393, %i.lp
  %i.pw = mul nsw i32 %.0.i391, %i.lr
  %i.px = add i32 %i.pv, 16
  %i.py = add i32 %i.px, %i.pw
  %i.pz = ashr i32 %i.py, 5                       ; 2 uses
  %i.qa = icmp slt i32 %i.pz, %i.j
  %..i388 = tail call i32 @llvm.smin.i32(i32 %i.pz, i32 %i.k)
  %.0.i389 = select i1 %i.qa, i32 %i.j, i32 %..i388
  %i.qb = trunc nuw nsw i64 %indvars.iv493 to i32
  %i.qc = add i32 %.0364461, %i.qb
  %i.qd = shl i32 %i.qc, %13
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [2 x i8], ptr %i.lw, i64 %i.qe ; 2 uses
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !39 ; 2 uses
  br i1 %.not383, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.qh = zext i16 %i.qg to i32
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 2
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !39
  %i.qk = zext i16 %i.qj to i32
  %i.ql = add nuw nsw i32 %i.qh, 1
  %i.qm = add nuw nsw i32 %i.ql, %i.qk
  %i.qn = lshr i32 %i.qm, 1
  %i.qo = trunc nuw i32 %i.qn to i16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3 = phi i16 [ %i.qo, %bb.w ], [ %i.qg, %bb.v ]
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %gep447, i64 %indvars.iv493
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %gep449, i64 %indvars.iv493
  %i.qr = zext i16 %.3 to i32                     ; 2 uses
  %.pre508 = load i16, ptr %i.qp, align 2, !tbaa !39 ; 2 uses
  br i1 %.not375, label %bb.y, label %._crit_edge509

._crit_edge509:                                   ; preds = %bb.x
  %.pre518 = zext i16 %.pre508 to i32
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.qs = load i32, ptr %i.at, align 4, !tbaa !29
  %i.qt = mul nsw i32 %i.qs, %i.qr
  %i.qu = zext i16 %.pre508 to i32                ; 2 uses
  %i.qv = load i32, ptr %i.av, align 4, !tbaa !29
  %i.qw = mul nsw i32 %i.qv, %i.qu
  %i.qx = add nsw i32 %i.qw, %i.qt
  %i.qy = ashr i32 %i.qx, 6
  %i.qz = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.ra = shl nsw i32 %i.qz, %i.h
  %i.rb = add nsw i32 %i.qy, %i.ra                ; 2 uses
  %i.rc = icmp slt i32 %i.rb, 0
  %..i386 = tail call i32 @llvm.smin.i32(i32 %i.rb, i32 %i.ay)
  %.0.i387 = select i1 %i.rc, i32 0, i32 %..i386
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge509, %bb.y
  %.pre-phi519 = phi i32 [ %.pre518, %._crit_edge509 ], [ %i.qu, %bb.y ]
  %.3363 = phi i32 [ %i.qr, %._crit_edge509 ], [ %.0.i387, %bb.y ]
  %i.rd = sext i32 %.3363 to i64
  %i.re = getelementptr inbounds i8, ptr %5, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !27
  %i.rg = zext i8 %i.rf to i32
  %i.rh = mul nsw i32 %.0.i389, %i.rg
  %i.ri = add nsw i32 %i.mb, %i.rh
  %i.rj = ashr i32 %i.ri, %i.lz
  %i.rk = add nsw i32 %i.rj, %.pre-phi519         ; 2 uses
  %i.rl = icmp slt i32 %i.rk, %.0367
  %..i = tail call i32 @llvm.smin.i32(i32 %i.rk, i32 %.0366)
  %.0.i = select i1 %i.rl, i32 %.0367, i32 %..i
  %i.rm = trunc nsw i32 %.0.i to i16
  store i16 %i.rm, ptr %i.qq, align 2, !tbaa !39
  %indvars.iv.next494 = add nuw nsw i64 %indvars.iv493, 1 ; 2 uses
  %exitcond497.not = icmp eq i64 %indvars.iv.next494, %wide.trip.count496
  br i1 %exitcond497.not, label %._crit_edge452, label %bb.v, !llvm.loop !208
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"any p2 pointer", !9, i64 0}
!11 = !{!"p2 omnipotent char", !10, i64 0}
!12 = !{!"AVRational", !6, i64 0, !6, i64 4}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p2 _ZTS11AVBufferRef", !10, i64 0}
!15 = !{!"p2 _ZTS15AVFrameSideData", !10, i64 0}
!16 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"AVFrame", !5, i64 0, !5, i64 64, !11, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !12, i64 124, !13, i64 136, !13, i64 144, !12, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !14, i64 248, !6, i64 256, !15, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !16, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!20 = !{!19, !6, i64 116}
!21 = !{!"p1 omnipotent char", !9, i64 0}
!22 = !{!"AVPixFmtDescriptor", !21, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !13, i64 16, !5, i64 24, !21, i64 104}
!23 = !{!22, !5, i64 9}
!24 = !{!22, !5, i64 10}
!25 = !{!"AVFilmGrainParams", !6, i64 0, !13, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !5, i64 56}
!26 = !{!25, !6, i64 0}
!27 = !{!5, !5, i64 0}
!28 = !{!21, !21, i64 0}
!29 = !{!6, !6, i64 0}
!30 = !{!19, !6, i64 104}
!31 = !{!19, !6, i64 108}
!32 = !{!25, !13, i64 8}
!33 = !{!"AVFilmGrainAOMParams", !6, i64 0, !5, i64 4, !6, i64 32, !5, i64 36, !5, i64 44, !6, i64 84, !6, i64 88, !5, i64 92, !5, i64 116, !6, i64 168, !6, i64 172, !5, i64 176, !5, i64 184, !5, i64 192, !6, i64 200, !6, i64 204}
!34 = !{!33, !6, i64 172}
!35 = !{!33, !6, i64 88}
!36 = !{!33, !6, i64 168}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"short", !5, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!33, !6, i64 32}
!41 = !{!33, !6, i64 0}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!19, !6, i64 292}
!45 = !{!33, !6, i64 200}
!46 = !{!33, !6, i64 204}
!47 = !{!33, !6, i64 84}
!48 = !{!"AVFilmGrainAFGS1Params", !6, i64 0, !5, i64 8}
!49 = !{!48, !6, i64 0}
!50 = !{!17, !17, i64 0}
!51 = distinct !{!51, !37}
!52 = distinct !{!52, !37}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !37, !42, !43}
!59 = distinct !{!59, !37, !43, !42}
!60 = distinct !{!60, !37, !42, !43}
!61 = distinct !{!61, !37, !43, !42}
!62 = distinct !{!62, !37, !42, !43}
!63 = distinct !{!63, !37, !43, !42}
!64 = distinct !{!64, !37, !42, !43}
!65 = distinct !{!65, !37, !43, !42}
!66 = distinct !{!66, !37, !42, !43}
!67 = distinct !{!67, !37, !43, !42}
!68 = distinct !{!68, !37, !42, !43}
!69 = distinct !{!69, !37, !43, !42}
!70 = distinct !{!70, !37}
!71 = distinct !{!71, !37}
!72 = distinct !{!72, !"LVerDomain"}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !72}
!76 = distinct !{!76, !37, !42, !43}
!77 = distinct !{!77, !37}
!78 = distinct !{!78, !37, !42}
!79 = distinct !{!79, !37}
!80 = distinct !{!80, !37}
!81 = distinct !{!81, !37}
!82 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!83 = !{!82, !6, i64 4}
!84 = !{!"branch_weights", i32 4, i32 28}
!85 = !{!73}
!86 = !{!74}
!87 = !{!75}
!88 = !{!74, !73}
!89 = distinct !{!89, !37}
!90 = distinct !{!90, !37}
!91 = distinct !{!91, !37}
!92 = distinct !{!92, !37}
!93 = distinct !{!93, !37}
!94 = distinct !{!94, !37}
!95 = distinct !{!95, !37, !42, !43}
!96 = distinct !{!96, !37, !43, !42}
!97 = distinct !{!97, !37, !42, !43}
!98 = distinct !{!98, !37, !43, !42}
!99 = distinct !{!99, !37, !42, !43}
!100 = distinct !{!100, !37, !43, !42}
!101 = distinct !{!101, !37}
!102 = distinct !{!102, !37}
!103 = distinct !{!103, !37, !42, !43}
!104 = distinct !{!104, !37}
!105 = distinct !{!105, !37, !42}
!106 = distinct !{!106, !37}
!107 = distinct !{!107, !37}
!108 = distinct !{!108, !110}
!109 = distinct !{!109, !37}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = distinct !{!111, !37}
!112 = distinct !{!112, !"LVerDomain"}
!113 = distinct !{!113, !112}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !112}
!116 = distinct !{!116, !37, !42, !43}
!117 = distinct !{!117, !37, !42}
!118 = distinct !{!118, !37}
!119 = distinct !{!119, !37}
!120 = distinct !{!120, !"LVerDomain"}
!121 = distinct !{!121, !120}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !120}
!124 = distinct !{!124, !37, !42, !43}
!125 = distinct !{!125, !37, !42}
!126 = distinct !{!126, !37}
!127 = distinct !{!127, !37}
!128 = distinct !{!128, !37}
!129 = distinct !{!129, !37}
!130 = distinct !{!130, !37}
!131 = !{!"p1 _ZTS17AVFilmGrainParams", !9, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!25, !6, i64 16}
!134 = !{!25, !6, i64 20}
!135 = !{!25, !6, i64 24}
!136 = !{!25, !6, i64 28}
!137 = !{!25, !6, i64 52}
!138 = !{!25, !6, i64 48}
!139 = !{!25, !6, i64 36}
!140 = !{!25, !6, i64 40}
!141 = !{!25, !6, i64 44}
!142 = !{!25, !6, i64 32}
!143 = !{!113}
!144 = !{!114}
!145 = !{!115}
!146 = !{!113, !114}
!147 = !{!121}
!148 = !{!122}
!149 = !{!123}
!150 = !{!121, !122}
!151 = !{!13, !13, i64 0}
!152 = distinct !{!152, !37}
!153 = distinct !{!153, !37, !42, !43}
!154 = distinct !{!154, !37, !43, !42}
!155 = distinct !{!155, !37}
!156 = distinct !{!156, !37}
!157 = distinct !{!157, !37}
!158 = distinct !{!158, !37}
!159 = distinct !{!159, !"LVerDomain"}
!160 = distinct !{!160, !159}
!161 = distinct !{!161, !159}
!162 = distinct !{!162, !37, !42, !43}
!163 = distinct !{!163, !37, !42}
!164 = distinct !{!164, !37}
!165 = distinct !{!165, !37}
!166 = !{!160}
!167 = !{!161}
!168 = distinct !{!168, !37}
!169 = distinct !{!169, !37, !42, !43}
!170 = distinct !{!170, !37, !43, !42}
!171 = distinct !{!171, !37, !42, !43}
!172 = distinct !{!172, !37, !43, !42}
!173 = distinct !{!173, !37}
!174 = distinct !{!174, !37}
!175 = distinct !{!175, !37}
!176 = distinct !{!176, !37}
!177 = distinct !{!177, !37}
!178 = distinct !{!178, !37}
!179 = distinct !{!179, !37}
!180 = distinct !{!180, !37}
!181 = distinct !{!181, !37, !42, !43}
!182 = distinct !{!182, !37, !43, !42}
end_hunk_1
