inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@ma_channel_map_apply_f32:bb.a
  %.10303.i = phi i64 [ %i.lk, %._crit_edge302.i ], [ 0, %.preheader270.i.preheader ] ; 3 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.10303.i ; 3 uses
  %i.kw = mul i64 %.10303.i, %wide.trip.count382.i
  %i.kx = getelementptr [4 x i8], ptr %0, i64 %i.kw ; 3 uses
  br i1 %i.hd, label %.epil.preheader, label %.preheader270.i.new

.preheader270.i.new:                              ; preds = %.preheader270.i, %bb.o
  %indvars.iv384.i = phi i64 [ %indvars.iv.next385.i.1, %bb.o ], [ 0, %.preheader270.i ] ; 4 uses
  %niter219 = phi i64 [ %niter219.next.1, %bb.o ], [ 0, %.preheader270.i ]
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv384.i
  %i.kz = load i8, ptr %i.ky, align 2, !noalias !629
  %.not247.i = icmp eq i8 %i.kz, 0
  br i1 %.not247.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader270.i.new
  %i.la = load float, ptr %i.kv, align 4, !alias.scope !627, !noalias !624
  %i.lb = getelementptr [4 x i8], ptr %i.kx, i64 %indvars.iv384.i
  store float %i.la, ptr %i.lb, align 4, !alias.scope !624, !noalias !627
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader270.i.new
  %indvars.iv.next385.i = or disjoint i64 %indvars.iv384.i, 1 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next385.i
  %i.ld = load i8, ptr %i.lc, align 1, !noalias !629
  %.not247.i.1 = icmp eq i8 %i.ld, 0
  br i1 %.not247.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.le = load float, ptr %i.kv, align 4, !alias.scope !627, !noalias !624
  %i.lf = getelementptr [4 x i8], ptr %i.kx, i64 %indvars.iv.next385.i
  store float %i.le, ptr %i.lf, align 4, !alias.scope !624, !noalias !627
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next385.i.1 = add nuw nsw i64 %indvars.iv384.i, 2 ; 2 uses
  %niter219.next.1 = add i64 %niter219, 2         ; 2 uses
  %niter219.ncmp.1 = icmp eq i64 %niter219.next.1, %unroll_iter218
  br i1 %niter219.ncmp.1, label %._crit_edge302.i.unr-lcssa, label %.preheader270.i.new

._crit_edge302.i.unr-lcssa:                       ; preds = %bb.o
  br i1 %lcmp.mod216.not, label %._crit_edge302.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge302.i.unr-lcssa, %.preheader270.i
  %indvars.iv384.i.epil.init = phi i64 [ 0, %.preheader270.i ], [ %indvars.iv.next385.i.1, %._crit_edge302.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod217)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv384.i.epil.init
  %i.lh = load i8, ptr %i.lg, align 1, !noalias !629
  %.not247.i.epil = icmp eq i8 %i.lh, 0
  br i1 %.not247.i.epil, label %._crit_edge302.i, label %bb.p

bb.p:                                             ; preds = %.epil.preheader
  %i.li = load float, ptr %i.kv, align 4, !alias.scope !627, !noalias !624
  %i.lj = getelementptr [4 x i8], ptr %i.kx, i64 %indvars.iv384.i.epil.init
  store float %i.li, ptr %i.lj, align 4, !alias.scope !624, !noalias !627
  br label %._crit_edge302.i

._crit_edge302.i:                                 ; preds = %.epil.preheader, %bb.p, %._crit_edge302.i.unr-lcssa
  %i.lk = add nuw i64 %.10303.i, 1                ; 2 uses
  %exitcond389.not.i = icmp eq i64 %i.lk, %6
  br i1 %exitcond389.not.i, label %.loopexit.i, label %.preheader270.i

.loopexit.i.loopexit202.unr-lcssa:                ; preds = %.lr.ph305.i
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod221.not, label %.loopexit.i, label %.lr.ph305.i.epil.preheader

.lr.ph305.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit202.unr-lcssa, %.lr.ph305.i.preheader
  %.6304.i.epil.init = phi i64 [ 0, %.lr.ph305.i.preheader ], [ %i.kk, %.loopexit.i.loopexit202.unr-lcssa ] ; 2 uses
  %lcmp.mod222 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.6304.i.epil.init
  %i.lm = load float, ptr %i.ll, align 4, !alias.scope !627, !noalias !624
  %i.ln = insertelement <4 x float> poison, float %i.lm, i64 0
  %i.lo = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.idx263.i.epil = shl i64 %.6304.i.epil.init, 5
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 %.idx263.i.epil ; 2 uses
  store <4 x float> %i.lo, ptr %i.lp, align 1, !alias.scope !624, !noalias !627
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store <4 x float> %i.lo, ptr %i.lq, align 1, !alias.scope !624, !noalias !627
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge302.i, %.lr.ph305.i.epil.preheader, %.loopexit.i.loopexit202.unr-lcssa, %._crit_edge316.i, %bb.k, %.preheader268.i, %.preheader271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61, !noalias !629
  br label %ma_copy_pcm_frames.exit

.preheader273.i:                                  ; preds = %.preheader273.i.preheader, %.split.i
  %.11277.i = phi i64 [ %i.mg, %.split.i ], [ 0, %.preheader273.i.preheader ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.11277.i ; 3 uses
  %i.ls = mul i64 %.11277.i, %i.fx
  %i.lt = getelementptr [4 x i8], ptr %0, i64 %i.ls ; 3 uses
  br label %ma_channel_map_get_channel.exit250.i

ma_channel_map_get_channel.exit250.i:             ; preds = %ma_channel_map_get_channel.exit250.thread256.i.1, %.preheader273.i
  %indvars.iv.i333 = phi i64 [ 0, %.preheader273.i ], [ %indvars.iv.next.i335.1, %ma_channel_map_get_channel.exit250.thread256.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader273.i ], [ %niter.next.1, %ma_channel_map_get_channel.exit250.thread256.i.1 ]
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i333
  %i.lv = load i8, ptr %i.lu, align 1, !noalias !629
  %.not.i334 = icmp eq i8 %i.lv, 0
  br i1 %.not.i334, label %ma_channel_map_get_channel.exit250.thread256.i, label %ma_channel_map_get_channel.exit250.thread.i

ma_channel_map_get_channel.exit250.thread.i:      ; preds = %ma_channel_map_get_channel.exit250.i
  %i.lw = load float, ptr %i.lr, align 4, !alias.scope !627, !noalias !624
  %i.lx = getelementptr [4 x i8], ptr %i.lt, i64 %indvars.iv.i333
  store float %i.lw, ptr %i.lx, align 4, !alias.scope !624, !noalias !627
  br label %ma_channel_map_get_channel.exit250.thread256.i

ma_channel_map_get_channel.exit250.thread256.i:   ; preds = %ma_channel_map_get_channel.exit250.thread.i, %ma_channel_map_get_channel.exit250.i
  %indvars.iv.next.i335 = or disjoint i64 %indvars.iv.i333, 1 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i335
  %i.lz = load i8, ptr %i.ly, align 1, !noalias !629
  %.not.i334.1 = icmp eq i8 %i.lz, 0
  br i1 %.not.i334.1, label %ma_channel_map_get_channel.exit250.thread256.i.1, label %ma_channel_map_get_channel.exit250.thread.i.1

ma_channel_map_get_channel.exit250.thread.i.1:    ; preds = %ma_channel_map_get_channel.exit250.thread256.i
  %i.ma = load float, ptr %i.lr, align 4, !alias.scope !627, !noalias !624
  %i.mb = getelementptr [4 x i8], ptr %i.lt, i64 %indvars.iv.next.i335
  store float %i.ma, ptr %i.mb, align 4, !alias.scope !624, !noalias !627
  br label %ma_channel_map_get_channel.exit250.thread256.i.1

ma_channel_map_get_channel.exit250.thread256.i.1: ; preds = %ma_channel_map_get_channel.exit250.thread.i.1, %ma_channel_map_get_channel.exit250.thread256.i
  %indvars.iv.next.i335.1 = add nuw nsw i64 %indvars.iv.i333, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split.i.unr-lcssa, label %ma_channel_map_get_channel.exit250.i

.split.i.unr-lcssa:                               ; preds = %ma_channel_map_get_channel.exit250.thread256.i.1
  br i1 %lcmp.mod.not, label %.split.i, label %ma_channel_map_get_channel.exit250.i.epil.preheader

ma_channel_map_get_channel.exit250.i.epil.preheader: ; preds = %.split.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod209)
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i335.1
  %i.md = load i8, ptr %i.mc, align 1, !noalias !629
  %.not.i334.epil = icmp eq i8 %i.md, 0
  br i1 %.not.i334.epil, label %.split.i, label %ma_channel_map_get_channel.exit250.thread.i.epil

ma_channel_map_get_channel.exit250.thread.i.epil: ; preds = %ma_channel_map_get_channel.exit250.i.epil.preheader
  %i.me = load float, ptr %i.lr, align 4, !alias.scope !627, !noalias !624
  %i.mf = getelementptr [4 x i8], ptr %i.lt, i64 %indvars.iv.next.i335.1
  store float %i.me, ptr %i.mf, align 4, !alias.scope !624, !noalias !627
  br label %.split.i

.split.i:                                         ; preds = %ma_channel_map_get_channel.exit250.i.epil.preheader, %ma_channel_map_get_channel.exit250.thread.i.epil, %.split.i.unr-lcssa
  %i.mg = add nuw i64 %.11277.i, 1                ; 2 uses
  %exitcond337.not.i = icmp eq i64 %i.mg, %6
  br i1 %exitcond337.not.i, label %ma_copy_pcm_frames.exit, label %.preheader273.i

bb.q:                                             ; preds = %bb.a
  %i.mh = icmp ult i32 %2, 255
  br i1 %i.mh, label %bb.r, label %bb.af

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  %i.mi = icmp ult i32 %5, 33
  %i.mj = icmp samesign ult i32 %2, 33
  %or.cond = and i1 %i.mj, %i.mi
  br i1 %or.cond, label %.preheader369, label %.preheader371

.preheader371:                                    ; preds = %bb.r
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %.loopexit, label %.preheader370.lr.ph

.preheader370.lr.ph:                              ; preds = %.preheader371
  %.not469 = icmp eq i32 %2, 0
  %i.mk = icmp eq ptr %1, null                    ; 2 uses
  %.not470 = icmp eq i32 %5, 0
  %i.ml = icmp eq ptr %4, null
  %i.mm = icmp ugt i32 %5, 8
  br i1 %.not469, label %.preheader370, label %.preheader370.us.preheader

.preheader370.us.preheader:                       ; preds = %.preheader370.lr.ph
  %wide.trip.count554 = zext nneg i32 %2 to i64   ; 10 uses
  %wide.trip.count = zext i32 %5 to i64
  %wide.trip.count534 = zext i32 %5 to i64
  %exitcond535.peel.not = icmp eq i32 %5, 1
  %wide.trip.count559 = zext nneg i32 %2 to i64
  %wide.trip.count564 = zext nneg i32 %2 to i64
  %i.mn = add nsw i64 %wide.trip.count554, -1     ; 4 uses
  %cond = icmp eq i32 %5, 1
  %spec.select = select i1 %cond, i64 1, i64 2
  %i.mo = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %spec.select ; 5 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 20
  %exitcond535.not.peel323 = icmp eq i32 %5, 5
  %min.iters.check72 = icmp ult i32 %2, 8         ; 2 uses
  %i.mt = trunc nsw i64 %i.mn to i32
  %i.mu = icmp ugt i64 %i.mn, 4294967295
  %n.vec85 = and i64 %wide.trip.count554, 248     ; 3 uses
  %cmp.n90 = icmp eq i64 %n.vec85, %wide.trip.count554
  %xtraiter325 = and i64 %wide.trip.count554, 3   ; 2 uses
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  %i.mv = trunc nsw i64 %i.mn to i32
  %i.mw = icmp ugt i64 %i.mn, 4294967295
  %n.vec74 = and i64 %wide.trip.count554, 248     ; 3 uses
  %cmp.n79 = icmp eq i64 %n.vec74, %wide.trip.count554
  %xtraiter327 = and i64 %wide.trip.count554, 3   ; 2 uses
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  br label %.preheader370.us

.preheader370.us:                                 ; preds = %.preheader370.us.preheader, %._crit_edge397.us
  %.5406.us = phi i32 [ %i.pe, %._crit_edge397.us ], [ 0, %.preheader370.us.preheader ] ; 5 uses
  %7 = mul i32 %2, %.5406.us
  %8 = mul i32 %2, %.5406.us
  %i.mx = mul i32 %.5406.us, %5                   ; 7 uses
  %i.my = mul i32 %.5406.us, %2                   ; 13 uses
  br i1 %.not470, label %.lr.ph396.split.us410, label %.lr.ph396.split.us.us.preheader

.lr.ph396.split.us.us.preheader:                  ; preds = %.preheader370.us
  %i.mz = zext i32 %i.mx to i64
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mz
  %i.nb = add i32 %i.mx, 1
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nc
  %i.ne = add i32 %i.mx, 2
  %i.nf = zext i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nf
  %i.nh = add i32 %i.mx, 3
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ni
  %i.nk = add i32 %i.mx, 4
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nl
  br label %.lr.ph396.split.us.us

ma_channel_map_get_channel.exit350.us407:         ; preds = %ma_channel_map_get_channel.exit350.us407, %ma_channel_map_get_channel.exit350.us407.preheader187.new
  %indvars.iv556 = phi i64 [ %indvars.iv556.unr, %ma_channel_map_get_channel.exit350.us407.preheader187.new ], [ %indvars.iv.next557.3, %ma_channel_map_get_channel.exit350.us407 ] ; 5 uses
  %i.nn = trunc nuw nsw i64 %indvars.iv556 to i32
  %i.no = add i32 %i.my, %i.nn
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.np
  store float 0.000000e+00, ptr %i.nq, align 4
  %i.nr = trunc i64 %indvars.iv556 to i32
  %.reass = add i32 %i.nr, %invariant.op
  %i.ns = zext i32 %.reass to i64
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ns
  store float 0.000000e+00, ptr %i.nt, align 4
  %i.nu = trunc i64 %indvars.iv556 to i32
  %.reass363 = add i32 %i.nu, %invariant.op362
  %i.nv = zext i32 %.reass363 to i64
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.nv
  store float 0.000000e+00, ptr %i.nw, align 4
  %i.nx = trunc i64 %indvars.iv556 to i32
  %.reass365 = add i32 %i.nx, %invariant.op364
  %i.ny = zext i32 %.reass365 to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ny
  store float 0.000000e+00, ptr %i.nz, align 4
  %indvars.iv.next557.3 = add nuw nsw i64 %indvars.iv556, 4 ; 2 uses
  %exitcond560.not.3 = icmp eq i64 %indvars.iv.next557.3, %wide.trip.count559
  br i1 %exitcond560.not.3, label %._crit_edge397.us, label %ma_channel_map_get_channel.exit350.us407, !llvm.loop !634

.lr.ph396.split.us410:                            ; preds = %.preheader370.us
  br i1 %i.mk, label %ma_channel_map_get_channel.exit350.us405.us.preheader, label %ma_channel_map_get_channel.exit350.us407.preheader

ma_channel_map_get_channel.exit350.us407.preheader: ; preds = %.lr.ph396.split.us410
  br i1 %min.iters.check72, label %ma_channel_map_get_channel.exit350.us407.preheader187, label %vector.scevcheck81

vector.scevcheck81:                               ; preds = %ma_channel_map_get_channel.exit350.us407.preheader
  %i.oa = xor i32 %7, -1
  %i.ob = icmp ult i32 %i.oa, %i.mt
  %i.oc = or i1 %i.ob, %i.mu
  br i1 %i.oc, label %ma_channel_map_get_channel.exit350.us407.preheader187, label %vector.body86

vector.body86:                                    ; preds = %vector.scevcheck81, %vector.body86
  %index87 = phi i64 [ %index.next88, %vector.body86 ], [ 0, %vector.scevcheck81 ] ; 2 uses
  %i.od = trunc nuw nsw i64 %index87 to i32
  %i.oe = add i32 %i.my, %i.od
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.of ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  store <4 x float> zeroinitializer, ptr %i.og, align 4
  store <4 x float> zeroinitializer, ptr %i.oh, align 4
  %index.next88 = add nuw i64 %index87, 8         ; 2 uses
  %i.oi = icmp eq i64 %index.next88, %n.vec85
  br i1 %i.oi, label %middle.block89, label %vector.body86, !llvm.loop !635

middle.block89:                                   ; preds = %vector.body86
  br i1 %cmp.n90, label %._crit_edge397.us, label %ma_channel_map_get_channel.exit350.us407.preheader187

ma_channel_map_get_channel.exit350.us407.preheader187: ; preds = %vector.scevcheck81, %ma_channel_map_get_channel.exit350.us407.preheader, %middle.block89
  %indvars.iv556.ph = phi i64 [ 0, %vector.scevcheck81 ], [ 0, %ma_channel_map_get_channel.exit350.us407.preheader ], [ %n.vec85, %middle.block89 ] ; 3 uses
  br i1 %lcmp.mod326.not, label %ma_channel_map_get_channel.exit350.us407.prol.loopexit, label %ma_channel_map_get_channel.exit350.us407.prol

ma_channel_map_get_channel.exit350.us407.prol:    ; preds = %ma_channel_map_get_channel.exit350.us407.preheader187, %ma_channel_map_get_channel.exit350.us407.prol
  %indvars.iv556.prol = phi i64 [ %indvars.iv.next557.prol, %ma_channel_map_get_channel.exit350.us407.prol ], [ %indvars.iv556.ph, %ma_channel_map_get_channel.exit350.us407.preheader187 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %ma_channel_map_get_channel.exit350.us407.prol ], [ 0, %ma_channel_map_get_channel.exit350.us407.preheader187 ]
  %i.oj = trunc nuw nsw i64 %indvars.iv556.prol to i32
  %i.ok = add i32 %i.my, %i.oj
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ol
  store float 0.000000e+00, ptr %i.om, align 4
  %indvars.iv.next557.prol = add nuw nsw i64 %indvars.iv556.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter325
  br i1 %prol.iter.cmp.not, label %ma_channel_map_get_channel.exit350.us407.prol.loopexit, label %ma_channel_map_get_channel.exit350.us407.prol, !llvm.loop !636

ma_channel_map_get_channel.exit350.us407.prol.loopexit: ; preds = %ma_channel_map_get_channel.exit350.us407.prol, %ma_channel_map_get_channel.exit350.us407.preheader187
  %indvars.iv556.unr = phi i64 [ %indvars.iv556.ph, %ma_channel_map_get_channel.exit350.us407.preheader187 ], [ %indvars.iv.next557.prol, %ma_channel_map_get_channel.exit350.us407.prol ]
  %i.on = sub nsw i64 %indvars.iv556.ph, %wide.trip.count554
  %i.oo = icmp ugt i64 %i.on, -4
  br i1 %i.oo, label %._crit_edge397.us, label %ma_channel_map_get_channel.exit350.us407.preheader187.new

ma_channel_map_get_channel.exit350.us407.preheader187.new: ; preds = %ma_channel_map_get_channel.exit350.us407.prol.loopexit
  %invariant.op = add i32 1, %i.my
  %invariant.op362 = add i32 2, %i.my
  %invariant.op364 = add i32 3, %i.my
  br label %ma_channel_map_get_channel.exit350.us407

ma_channel_map_get_channel.exit350.us405.us.preheader: ; preds = %.lr.ph396.split.us410
  br i1 %min.iters.check72, label %ma_channel_map_get_channel.exit350.us405.us.preheader186, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %ma_channel_map_get_channel.exit350.us405.us.preheader
  %i.op = xor i32 %8, -1
  %i.oq = icmp ult i32 %i.op, %i.mv
  %i.or = or i1 %i.oq, %i.mw
  br i1 %i.or, label %ma_channel_map_get_channel.exit350.us405.us.preheader186, label %vector.body75

vector.body75:                                    ; preds = %vector.scevcheck, %vector.body75
  %index76 = phi i64 [ %index.next77, %vector.body75 ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.os = trunc nuw nsw i64 %index76 to i32
  %i.ot = add i32 %i.my, %i.os
  %i.ou = zext i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ou ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  store <4 x float> zeroinitializer, ptr %i.ov, align 4
  store <4 x float> zeroinitializer, ptr %i.ow, align 4
  %index.next77 = add nuw i64 %index76, 8         ; 2 uses
  %i.ox = icmp eq i64 %index.next77, %n.vec74
  br i1 %i.ox, label %middle.block78, label %vector.body75, !llvm.loop !637

middle.block78:                                   ; preds = %vector.body75
  br i1 %cmp.n79, label %._crit_edge397.us, label %ma_channel_map_get_channel.exit350.us405.us.preheader186

ma_channel_map_get_channel.exit350.us405.us.preheader186: ; preds = %vector.scevcheck, %ma_channel_map_get_channel.exit350.us405.us.preheader, %middle.block78
  %indvars.iv561.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %ma_channel_map_get_channel.exit350.us405.us.preheader ], [ %n.vec74, %middle.block78 ] ; 3 uses
  br i1 %lcmp.mod328.not, label %ma_channel_map_get_channel.exit350.us405.us.prol.loopexit, label %ma_channel_map_get_channel.exit350.us405.us.prol

ma_channel_map_get_channel.exit350.us405.us.prol: ; preds = %ma_channel_map_get_channel.exit350.us405.us.preheader186, %ma_channel_map_get_channel.exit350.us405.us.prol
  %indvars.iv561.prol = phi i64 [ %indvars.iv.next562.prol, %ma_channel_map_get_channel.exit350.us405.us.prol ], [ %indvars.iv561.ph, %ma_channel_map_get_channel.exit350.us405.us.preheader186 ] ; 2 uses
  %prol.iter329 = phi i64 [ %prol.iter329.next, %ma_channel_map_get_channel.exit350.us405.us.prol ], [ 0, %ma_channel_map_get_channel.exit350.us405.us.preheader186 ]
  %i.oy = trunc nuw nsw i64 %indvars.iv561.prol to i32
  %i.oz = add i32 %i.my, %i.oy
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pa
  store float 0.000000e+00, ptr %i.pb, align 4
  %indvars.iv.next562.prol = add nuw nsw i64 %indvars.iv561.prol, 1 ; 2 uses
  %prol.iter329.next = add i64 %prol.iter329, 1   ; 2 uses
  %prol.iter329.cmp.not = icmp eq i64 %prol.iter329.next, %xtraiter327
  br i1 %prol.iter329.cmp.not, label %ma_channel_map_get_channel.exit350.us405.us.prol.loopexit, label %ma_channel_map_get_channel.exit350.us405.us.prol, !llvm.loop !638

ma_channel_map_get_channel.exit350.us405.us.prol.loopexit: ; preds = %ma_channel_map_get_channel.exit350.us405.us.prol, %ma_channel_map_get_channel.exit350.us405.us.preheader186
  %indvars.iv561.unr = phi i64 [ %indvars.iv561.ph, %ma_channel_map_get_channel.exit350.us405.us.preheader186 ], [ %indvars.iv.next562.prol, %ma_channel_map_get_channel.exit350.us405.us.prol ]
  %i.pc = sub nsw i64 %indvars.iv561.ph, %wide.trip.count554
  %i.pd = icmp ugt i64 %i.pc, -4
  br i1 %i.pd, label %._crit_edge397.us, label %ma_channel_map_get_channel.exit350.us405.us.preheader186.new

ma_channel_map_get_channel.exit350.us405.us.preheader186.new: ; preds = %ma_channel_map_get_channel.exit350.us405.us.prol.loopexit
  %invariant.op366 = add i32 1, %i.my
  %invariant.op368 = add i32 2, %i.my
  %invariant.op370 = add i32 3, %i.my
  br label %ma_channel_map_get_channel.exit350.us405.us

._crit_edge397.us:                                ; preds = %._crit_edge.us.us, %ma_channel_map_get_channel.exit350.us407.prol.loopexit, %ma_channel_map_get_channel.exit350.us407, %ma_channel_map_get_channel.exit350.us405.us.prol.loopexit, %ma_channel_map_get_channel.exit350.us405.us, %middle.block89, %middle.block78
  %i.pe = add i32 %.5406.us, 1                    ; 2 uses
  %i.pf = zext i32 %i.pe to i64
  %i.pg = icmp ugt i64 %6, %i.pf
  br i1 %i.pg, label %.preheader370.us, label %.loopexit

.lr.ph396.split.us.us:                            ; preds = %.lr.ph396.split.us.us.preheader, %._crit_edge.us.us
  %indvars.iv551 = phi i64 [ 0, %.lr.ph396.split.us.us.preheader ], [ %indvars.iv.next552, %._crit_edge.us.us ] ; 4 uses
  br i1 %i.mk, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph396.split.us.us
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv551
  %i.pi = load i8, ptr %i.ph, align 1
  br label %ma_channel_map_get_channel.exit350.us.us

bb.t:                                             ; preds = %.lr.ph396.split.us.us
  %i.pj = trunc nuw nsw i64 %indvars.iv551 to i32
  %i.pk = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %2, i32 noundef %i.pj)
  br label %ma_channel_map_get_channel.exit350.us.us

ma_channel_map_get_channel.exit350.us.us:         ; preds = %bb.t, %bb.s
  %.0.i349.us.us = phi i8 [ %i.pk, %bb.t ], [ %i.pi, %bb.s ]
  %i.pl = zext i8 %.0.i349.us.us to i64
  %i.pm = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.pl ; 5 uses
  %i.pn = load float, ptr %i.pm, align 8          ; 7 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.pp = load float, ptr %i.po, align 4          ; 7 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.pr = load float, ptr %i.pq, align 8          ; 7 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 12
  %i.pt = load float, ptr %i.ps, align 4          ; 7 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pm, i64 20
  %i.pv = load float, ptr %i.pu, align 4          ; 7 uses
  br i1 %i.ml, label %.lr.ph.split.us.us.us.preheader, label %ma_channel_map_get_channel.exit353.us398.us

.lr.ph.split.us.us.us.preheader:                  ; preds = %ma_channel_map_get_channel.exit350.us.us
  %i.pw = load float, ptr %i.na, align 4
  %i.px = load float, ptr %i.mo, align 8
  %i.py = load float, ptr %i.mp, align 4
  %i.pz = fmul float %i.pp, %i.py
  %i.qa = tail call float @llvm.fmuladd.f32(float %i.pn, float %i.px, float %i.pz)
  %i.qb = load float, ptr %i.mq, align 8
  %i.qc = tail call float @llvm.fmuladd.f32(float %i.pr, float %i.qb, float %i.qa)
  %i.qd = load float, ptr %i.mr, align 4
  %i.qe = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.qd, float %i.qc)
  %i.qf = fadd float %i.qe, 0.000000e+00
  %i.qg = load float, ptr %i.ms, align 4
  %i.qh = tail call float @llvm.fmuladd.f32(float %i.pv, float %i.qg, float %i.qf)
  %i.qi = tail call float @llvm.fmuladd.f32(float %i.pw, float %i.qh, float 0.000000e+00) ; 2 uses
  br i1 %exitcond535.peel.not, label %._crit_edge.us.us, label %ma_channel_map_get_channel.exit353.us.us.us.peel546

ma_channel_map_get_channel.exit353.us.us.us.peel546: ; preds = %.lr.ph.split.us.us.us.preheader
  %i.qj = load float, ptr %i.nd, align 4
  %i.qk = fmul float %i.pp, 5.000000e-01
  %i.ql = tail call float @llvm.fmuladd.f32(float %i.pn, float 0.000000e+00, float %i.qk)
  %i.qm = tail call float @llvm.fmuladd.f32(float %i.pr, float 5.000000e-01, float %i.ql)
  %i.qn = tail call float @llvm.fmuladd.f32(float %i.pt, float 0.000000e+00, float %i.qm)
  %i.qo = fadd float %i.qn, 0.000000e+00
  %i.qp = tail call float @llvm.fmuladd.f32(float %i.pv, float 0.000000e+00, float %i.qo)
  %i.qq = tail call float @llvm.fmuladd.f32(float %i.qj, float %i.qp, float %i.qi) ; 2 uses
  %cond378 = icmp eq i32 %5, 2
  br i1 %cond378, label %._crit_edge.us.us, label %ma_channel_map_get_channel.exit353.us.us.us.peel

ma_channel_map_get_channel.exit353.us.us.us.peel: ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel546
  %i.qr = load float, ptr %i.ng, align 4
  %i.qs = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 4 ; 5 uses
  %i.qt = load float, ptr %i.qs, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  %i.qv = load float, ptr %i.qu, align 4
  %i.qw = fmul float %i.pp, %i.qv
  %i.qx = tail call float @llvm.fmuladd.f32(float %i.pn, float %i.qt, float %i.qw)
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qz = load float, ptr %i.qy, align 8
  %i.ra = tail call float @llvm.fmuladd.f32(float %i.pr, float %i.qz, float %i.qx)
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qs, i64 12
  %i.rc = load float, ptr %i.rb, align 4
  %i.rd = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.rc, float %i.ra)
  %i.re = fadd float %i.rd, 0.000000e+00
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qs, i64 20
  %i.rg = load float, ptr %i.rf, align 4
  %i.rh = tail call float @llvm.fmuladd.f32(float %i.pv, float %i.rg, float %i.re)
  %i.ri = tail call float @llvm.fmuladd.f32(float %i.qr, float %i.rh, float %i.qq) ; 2 uses
  switch i32 %5, label %switch.lookup165.peel281 [
    i32 3, label %._crit_edge.us.us
    i32 4, label %switch.lookup156.peel266
    i32 1, label %ma_channel_map_get_channel.exit353.us.us.us.peel285
    i32 5, label %switch.lookup151.peel261
  ]

switch.lookup151.peel261:                         ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel285

switch.lookup156.peel266:                         ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel285

switch.lookup165.peel281:                         ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel285

ma_channel_map_get_channel.exit353.us.us.us.peel285: ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel, %switch.lookup165.peel281, %switch.lookup156.peel266, %switch.lookup151.peel261
  %.0.i352.us.us.us.peel286 = phi i64 [ 10, %switch.lookup156.peel266 ], [ 5, %switch.lookup165.peel281 ], [ 1, %ma_channel_map_get_channel.exit353.us.us.us.peel ], [ 6, %switch.lookup151.peel261 ]
  %i.rj = load float, ptr %i.nj, align 4
  %i.rk = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %.0.i352.us.us.us.peel286 ; 5 uses
  %i.rl = load float, ptr %i.rk, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  %i.rn = load float, ptr %i.rm, align 4
  %i.ro = fmul float %i.pp, %i.rn
  %i.rp = tail call float @llvm.fmuladd.f32(float %i.pn, float %i.rl, float %i.ro)
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rr = load float, ptr %i.rq, align 8
  %i.rs = tail call float @llvm.fmuladd.f32(float %i.pr, float %i.rr, float %i.rp)
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rk, i64 12
  %i.ru = load float, ptr %i.rt, align 4
  %i.rv = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.ru, float %i.rs)
  %i.rw = fadd float %i.rv, 0.000000e+00
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rk, i64 20
  %i.ry = load float, ptr %i.rx, align 4
  %i.rz = tail call float @llvm.fmuladd.f32(float %i.pv, float %i.ry, float %i.rw)
  %i.sa = tail call float @llvm.fmuladd.f32(float %i.rj, float %i.rz, float %i.ri) ; 2 uses
  switch i32 %5, label %switch.lookup165.peel316 [
    i32 4, label %._crit_edge.us.us
    i32 7, label %switch.lookup161.peel309
    i32 1, label %ma_channel_map_get_channel.exit353.us.us.us.peel320
    i32 2, label %.thread.i67.i.us.us.us.peel308
    i32 5, label %switch.lookup151.peel296
    i32 6, label %switch.lookup.peel291
  ]

switch.lookup.peel291:                            ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel285
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel320

switch.lookup151.peel296:                         ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel285
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel320

.thread.i67.i.us.us.us.peel308:                   ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel285
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel320

switch.lookup161.peel309:                         ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel285
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel320

switch.lookup165.peel316:                         ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel285
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel320

ma_channel_map_get_channel.exit353.us.us.us.peel320: ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel285, %switch.lookup165.peel316, %switch.lookup161.peel309, %.thread.i67.i.us.us.us.peel308, %switch.lookup151.peel296, %switch.lookup.peel291
  %.0.i352.us.us.us.peel321 = phi i64 [ 0, %.thread.i67.i.us.us.us.peel308 ], [ 11, %switch.lookup.peel291 ], [ 1, %ma_channel_map_get_channel.exit353.us.us.us.peel285 ], [ 7, %switch.lookup151.peel296 ], [ 6, %switch.lookup165.peel316 ], [ 10, %switch.lookup161.peel309 ]
  %i.sb = load float, ptr %i.nm, align 4
  %i.sc = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %.0.i352.us.us.us.peel321 ; 5 uses
  %i.sd = load float, ptr %i.sc, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  %i.sf = load float, ptr %i.se, align 4
  %i.sg = fmul float %i.pp, %i.sf
  %i.sh = tail call float @llvm.fmuladd.f32(float %i.pn, float %i.sd, float %i.sg)
end_hunk_0
begin_hunk_1_@ma_channel_map_apply_f32:bb.a
  %i.aae = shufflevector <8 x float> %i.zw, <8 x float> %i.zy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaf = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aae, <16 x float> %i.zm, <16 x float> zeroinitializer)
  %i.aag = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aad, <16 x float> %i.zl, <16 x float> %i.aaf)
  %i.aah = shufflevector <8 x float> %i.zz, <8 x float> %i.aab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aai = shufflevector <8 x float> %i.aaa, <8 x float> %i.aac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaj = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aai, <16 x float> %i.zo, <16 x float> zeroinitializer)
  %i.aak = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aah, <16 x float> %i.zn, <16 x float> %i.aaj)
  %interleaved.vec = shufflevector <16 x float> %i.aag, <16 x float> %i.aak, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.zu, align 4, !alias.scope !645, !noalias !642
  %index.next134 = add nuw i32 %index132, 4       ; 2 uses
  %i.aal = icmp eq i32 %index.next134, %n.vec98
  br i1 %i.aal, label %middle.block135, label %vector.body131, !llvm.loop !647

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i32 %n.vec98, %i.yv
  br i1 %cmp.n136, label %.loopexit362, label %scalar.ph95.preheader

scalar.ph95.preheader:                            ; preds = %vector.memcheck, %vector.scevcheck92, %.lr.ph455, %middle.block135
  %.0314454.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck92 ], [ 0, %.lr.ph455 ], [ %n.vec98, %middle.block135 ]
  %i.aam = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aan = shufflevector <2 x float> %i.yp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aao = shufflevector <4 x float> %i.aam, <4 x float> %i.aan, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aap = shufflevector <2 x float> %i.yq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aaq = shufflevector <4 x float> %i.aao, <4 x float> %i.aap, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aar = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aas = shufflevector <4 x float> %i.aar, <4 x float> %i.aan, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aat = shufflevector <4 x float> %i.aas, <4 x float> %i.aap, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aau = shufflevector <2 x float> %i.yr, <2 x float> %i.ys, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aav = shufflevector <2 x float> %i.yt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aaw = shufflevector <4 x float> %i.aau, <4 x float> %i.aav, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aax = shufflevector <2 x float> %i.yu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aay = shufflevector <4 x float> %i.aaw, <4 x float> %i.aax, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aaz = shufflevector <2 x float> %i.yr, <2 x float> %i.ys, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aba = shufflevector <4 x float> %i.aaz, <4 x float> %i.aav, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.abb = shufflevector <4 x float> %i.aba, <4 x float> %i.aax, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %scalar.ph95

scalar.ph95:                                      ; preds = %scalar.ph95.preheader, %scalar.ph95
  %.0314454 = phi i32 [ %i.aby, %scalar.ph95 ], [ %.0314454.ph, %scalar.ph95.preheader ] ; 3 uses
  %i.abc = shl i32 %.0314454, 1                   ; 2 uses
  %i.abd = zext i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abd
  %i.abf = load float, ptr %i.abe, align 4
  %i.abg = or disjoint i32 %i.abc, 1
  %i.abh = zext i32 %i.abg to i64
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abh
  %i.abj = load float, ptr %i.abi, align 4
  %i.abk = shl i32 %.0314454, 3                   ; 2 uses
  %i.abl = zext i32 %i.abk to i64
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abl
  %i.abn = insertelement <4 x float> poison, float %i.abf, i64 0
  %i.abo = shufflevector <4 x float> %i.abn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abo, <4 x float> %i.aaq, <4 x float> zeroinitializer)
  %i.abq = insertelement <4 x float> poison, float %i.abj, i64 0
  %i.abr = shufflevector <4 x float> %i.abq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abr, <4 x float> %i.aat, <4 x float> %i.abp)
  store <4 x float> %i.abs, ptr %i.abm, align 4
  %i.abt = or disjoint i32 %i.abk, 4
  %i.abu = zext i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abu
  %i.abw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abo, <4 x float> %i.aay, <4 x float> zeroinitializer)
  %i.abx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abr, <4 x float> %i.abb, <4 x float> %i.abw)
  store <4 x float> %i.abx, ptr %i.abv, align 4
  %i.aby = add i32 %.0314454, 1                   ; 3 uses
  %i.abz = zext i32 %i.aby to i64
  %i.aca = icmp ugt i64 %6, %i.abz
  br i1 %i.aca, label %scalar.ph95, label %.loopexit362, !llvm.loop !648

.preheader363:                                    ; preds = %.preheader363.lr.ph, %._crit_edge443
  %.1315452 = phi i32 [ 0, %.preheader363.lr.ph ], [ %i.adt, %._crit_edge443 ] ; 3 uses
  br i1 %.not476, label %._crit_edge443, label %.lr.ph442

.lr.ph442:                                        ; preds = %.preheader363
  %i.acb = mul i32 %.1315452, %5
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph442, %bb.ac
  %indvars.iv586 = phi i64 [ 0, %.lr.ph442 ], [ %indvars.iv.next587, %bb.ac ] ; 10 uses
  %i.acc = phi <4 x float> [ zeroinitializer, %.lr.ph442 ], [ %i.acx, %bb.ac ]
  %i.acd = phi <4 x float> [ zeroinitializer, %.lr.ph442 ], [ %i.adk, %bb.ac ]
  %i.ace = trunc nuw i64 %indvars.iv586 to i32
  %i.acf = add i32 %i.acb, %i.ace
  %i.acg = zext i32 %i.acf to i64
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.acg
  %i.aci = load float, ptr %i.ach, align 4
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv586
  %i.ack = load float, ptr %i.acj, align 4
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv586
  %i.acm = load float, ptr %i.acl, align 4
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv586
  %i.aco = load float, ptr %i.acn, align 4
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %indvars.iv586
  %i.acq = load float, ptr %i.acp, align 4
  %i.acr = insertelement <4 x float> poison, float %i.aci, i64 0
  %i.acs = shufflevector <4 x float> %i.acr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.act = insertelement <4 x float> poison, float %i.ack, i64 0
  %i.acu = insertelement <4 x float> %i.act, float %i.acm, i64 1
  %i.acv = insertelement <4 x float> %i.acu, float %i.aco, i64 2
  %i.acw = insertelement <4 x float> %i.acv, float %i.acq, i64 3
  %i.acx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acs, <4 x float> %i.acw, <4 x float> %i.acc) ; 2 uses
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv586
  %i.acz = load float, ptr %i.acy, align 4
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv586
  %i.adb = load float, ptr %i.ada, align 4
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv586
  %i.add = load float, ptr %i.adc, align 4
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv586
  %i.adf = load float, ptr %i.ade, align 4
  %i.adg = insertelement <4 x float> poison, float %i.acz, i64 0
  %i.adh = insertelement <4 x float> %i.adg, float %i.adb, i64 1
  %i.adi = insertelement <4 x float> %i.adh, float %i.add, i64 2
  %i.adj = insertelement <4 x float> %i.adi, float %i.adf, i64 3
  %i.adk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acs, <4 x float> %i.adj, <4 x float> %i.acd) ; 2 uses
  %indvars.iv.next587 = add nuw nsw i64 %indvars.iv586, 1 ; 2 uses
  %exitcond590.not = icmp eq i64 %indvars.iv.next587, %wide.trip.count589
  br i1 %exitcond590.not, label %._crit_edge443, label %bb.ac

._crit_edge443:                                   ; preds = %bb.ac, %.preheader363
  %i.adl = phi <4 x float> [ zeroinitializer, %.preheader363 ], [ %i.acx, %bb.ac ]
  %i.adm = phi <4 x float> [ zeroinitializer, %.preheader363 ], [ %i.adk, %bb.ac ]
  %i.adn = shl i32 %.1315452, 3                   ; 2 uses
  %i.ado = zext i32 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ado
  store <4 x float> %i.adl, ptr %i.adp, align 4
  %i.adq = or disjoint i32 %i.adn, 4
  %i.adr = zext i32 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adr
  store <4 x float> %i.adm, ptr %i.ads, align 4
  %i.adt = add i32 %.1315452, 1                   ; 3 uses
  %i.adu = zext i32 %i.adt to i64
  %i.adv = icmp ugt i64 %6, %i.adu
  br i1 %i.adv, label %.preheader363, label %.loopexit362

.preheader366:                                    ; preds = %.preheader366.lr.ph, %._crit_edge425
  %.2431 = phi i32 [ 0, %.preheader366.lr.ph ], [ %i.afo, %._crit_edge425 ] ; 3 uses
  br i1 %.not474, label %._crit_edge425, label %.lr.ph424

.lr.ph424:                                        ; preds = %.preheader366
  %i.adw = mul i32 %.2431, %5
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph424, %bb.ad
  %indvars.iv581 = phi i64 [ 0, %.lr.ph424 ], [ %indvars.iv.next582, %bb.ad ] ; 8 uses
  %i.adx = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.afb, %bb.ad ]
  %i.ady = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aeu, %bb.ad ]
  %i.adz = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aen, %bb.ad ]
  %i.aea = trunc nuw i64 %indvars.iv581 to i32
  %i.aeb = add i32 %i.adw, %i.aea
  %i.aec = zext i32 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aec
  %i.aee = load float, ptr %i.aed, align 4
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv581
  %i.aeg = load float, ptr %i.aef, align 4
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %indvars.iv581
  %i.aei = load float, ptr %i.aeh, align 4
  %i.aej = insertelement <2 x float> poison, float %i.aee, i64 0
  %i.aek = shufflevector <2 x float> %i.aej, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ael = insertelement <2 x float> poison, float %i.aeg, i64 0
  %i.aem = insertelement <2 x float> %i.ael, float %i.aei, i64 1
  %i.aen = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aek, <2 x float> %i.aem, <2 x float> %i.adz) ; 2 uses
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv581
  %i.aep = load float, ptr %i.aeo, align 4
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %indvars.iv581
  %i.aer = load float, ptr %i.aeq, align 4
  %i.aes = insertelement <2 x float> poison, float %i.aep, i64 0
  %i.aet = insertelement <2 x float> %i.aes, float %i.aer, i64 1
  %i.aeu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aek, <2 x float> %i.aet, <2 x float> %i.ady) ; 2 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %indvars.iv581
  %i.aew = load float, ptr %i.aev, align 4
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv581
  %i.aey = load float, ptr %i.aex, align 4
  %i.aez = insertelement <2 x float> poison, float %i.aew, i64 0
  %i.afa = insertelement <2 x float> %i.aez, float %i.aey, i64 1
  %i.afb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aek, <2 x float> %i.afa, <2 x float> %i.adx) ; 2 uses
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %exitcond585.not = icmp eq i64 %indvars.iv.next582, %wide.trip.count584
  br i1 %exitcond585.not, label %._crit_edge425, label %bb.ad

._crit_edge425:                                   ; preds = %bb.ad, %.preheader366
  %i.afc = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.afb, %bb.ad ]
  %i.afd = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aeu, %bb.ad ]
  %i.afe = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aen, %bb.ad ]
  %i.aff = mul i32 %.2431, 6                      ; 3 uses
  %i.afg = zext i32 %i.aff to i64
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afg
  store <2 x float> %i.afe, ptr %i.afh, align 4
  %i.afi = add i32 %i.aff, 2
  %i.afj = zext i32 %i.afi to i64
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afj
  store <2 x float> %i.afd, ptr %i.afk, align 4
  %i.afl = add i32 %i.aff, 4
  %i.afm = zext i32 %i.afl to i64
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afm
  store <2 x float> %i.afc, ptr %i.afn, align 4
  %i.afo = add i32 %.2431, 1                      ; 3 uses
  %i.afp = zext i32 %i.afo to i64
  %i.afq = icmp ugt i64 %6, %i.afp
  br i1 %i.afq, label %.preheader366, label %.loopexit362

.loopexit362:                                     ; preds = %._crit_edge425, %._crit_edge443, %scalar.ph95, %middle.block135, %.preheader367, %.preheader364, %.preheader361, %._crit_edge416
  %.3 = phi i32 [ 0, %._crit_edge416 ], [ %i.aby, %scalar.ph95 ], [ %i.adt, %._crit_edge443 ], [ 0, %.preheader361 ], [ 0, %.preheader364 ], [ 0, %.preheader367 ], [ %n.vec98, %middle.block135 ], [ %i.afo, %._crit_edge425 ] ; 3 uses
  %i.afr = zext i32 %.3 to i64
  %i.afs = icmp ugt i64 %6, %i.afr
  br i1 %i.afs, label %.preheader360.lr.ph, label %.loopexit

.loopexit362.thread:                              ; preds = %.preheader369
  %.not690 = icmp eq i64 %6, 0
  br i1 %.not690, label %.loopexit, label %.preheader360

.preheader360.lr.ph:                              ; preds = %.loopexit362
  %.not479 = icmp eq i32 %5, 0
  %wide.trip.count599 = zext nneg i32 %2 to i64
  %wide.trip.count604 = zext nneg i32 %2 to i64
  %i.aft = add nsw i64 %wide.trip.count579, -1    ; 2 uses
  %xtraiter331 = and i64 %wide.trip.count569, 3   ; 3 uses
  %i.afu = add nsw i32 %5, -1
  %i.afv = icmp ult i32 %i.afu, 3
  %unroll_iter336 = and i64 %wide.trip.count569, 60
  %lcmp.mod333.not = icmp eq i64 %xtraiter331, 0
  %lcmp.mod335 = icmp ne i64 %xtraiter331, 0
  %min.iters.check140 = icmp ult i32 %2, 8
  %i.afw = trunc nsw i64 %i.aft to i32
  %i.afx = icmp ugt i64 %i.aft, 4294967295
  %n.vec142 = and i64 %wide.trip.count579, 56     ; 3 uses
  %cmp.n147 = icmp eq i64 %n.vec142, %wide.trip.count579
  %xtraiter338 = and i64 %wide.trip.count579, 3   ; 2 uses
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br label %.preheader360.us

.preheader360.us:                                 ; preds = %.preheader360.lr.ph, %._crit_edge463.us
  %indvar = phi i32 [ 0, %.preheader360.lr.ph ], [ %indvar.next, %._crit_edge463.us ] ; 2 uses
  %.4464.us = phi i32 [ %.3, %.preheader360.lr.ph ], [ %i.ahc, %._crit_edge463.us ] ; 3 uses
  %9 = add i32 %.3, %indvar
  %10 = mul i32 %9, %2
  %i.afy = mul i32 %.4464.us, %5                  ; 5 uses
  %i.afz = mul i32 %.4464.us, %2                  ; 7 uses
  br i1 %.not479, label %.preheader.us465.preheader, label %.preheader.us.us

.preheader.us465.preheader:                       ; preds = %.preheader360.us
  br i1 %min.iters.check140, label %.preheader.us465.preheader169, label %vector.scevcheck138

vector.scevcheck138:                              ; preds = %.preheader.us465.preheader
  %i.aga = xor i32 %10, -1
  %i.agb = icmp ult i32 %i.aga, %i.afw
  %i.agc = or i1 %i.agb, %i.afx
  br i1 %i.agc, label %.preheader.us465.preheader169, label %vector.body143

vector.body143:                                   ; preds = %vector.scevcheck138, %vector.body143
  %index144 = phi i64 [ %index.next145, %vector.body143 ], [ 0, %vector.scevcheck138 ] ; 2 uses
  %i.agd = trunc nuw nsw i64 %index144 to i32
  %i.age = add i32 %i.afz, %i.agd
  %i.agf = zext i32 %i.age to i64
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agf ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 16
  store <4 x float> zeroinitializer, ptr %i.agg, align 4
  store <4 x float> zeroinitializer, ptr %i.agh, align 4
  %index.next145 = add nuw i64 %index144, 8       ; 2 uses
  %i.agi = icmp eq i64 %index.next145, %n.vec142
  br i1 %i.agi, label %middle.block146, label %vector.body143, !llvm.loop !649

middle.block146:                                  ; preds = %vector.body143
  br i1 %cmp.n147, label %._crit_edge463.us, label %.preheader.us465.preheader169

.preheader.us465.preheader169:                    ; preds = %vector.scevcheck138, %.preheader.us465.preheader, %middle.block146
  %indvars.iv601.ph = phi i64 [ 0, %vector.scevcheck138 ], [ 0, %.preheader.us465.preheader ], [ %n.vec142, %middle.block146 ] ; 3 uses
  br i1 %lcmp.mod339.not, label %.preheader.us465.prol.loopexit, label %.preheader.us465.prol

.preheader.us465.prol:                            ; preds = %.preheader.us465.preheader169, %.preheader.us465.prol
  %indvars.iv601.prol = phi i64 [ %indvars.iv.next602.prol, %.preheader.us465.prol ], [ %indvars.iv601.ph, %.preheader.us465.preheader169 ] ; 2 uses
  %prol.iter340 = phi i64 [ %prol.iter340.next, %.preheader.us465.prol ], [ 0, %.preheader.us465.preheader169 ]
  %i.agj = trunc nuw nsw i64 %indvars.iv601.prol to i32
  %i.agk = add i32 %i.afz, %i.agj
  %i.agl = zext i32 %i.agk to i64
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agl
  store float 0.000000e+00, ptr %i.agm, align 4
  %indvars.iv.next602.prol = add nuw nsw i64 %indvars.iv601.prol, 1 ; 2 uses
  %prol.iter340.next = add i64 %prol.iter340, 1   ; 2 uses
  %prol.iter340.cmp.not = icmp eq i64 %prol.iter340.next, %xtraiter338
  br i1 %prol.iter340.cmp.not, label %.preheader.us465.prol.loopexit, label %.preheader.us465.prol, !llvm.loop !650

.preheader.us465.prol.loopexit:                   ; preds = %.preheader.us465.prol, %.preheader.us465.preheader169
  %indvars.iv601.unr = phi i64 [ %indvars.iv601.ph, %.preheader.us465.preheader169 ], [ %indvars.iv.next602.prol, %.preheader.us465.prol ]
  %i.agn = sub nsw i64 %indvars.iv601.ph, %wide.trip.count579
  %i.ago = icmp ugt i64 %i.agn, -4
  br i1 %i.ago, label %._crit_edge463.us, label %.preheader.us465.preheader169.new

.preheader.us465.preheader169.new:                ; preds = %.preheader.us465.prol.loopexit
  %invariant.op372 = add i32 1, %i.afz
  %invariant.op374 = add i32 2, %i.afz
  %invariant.op376 = add i32 3, %i.afz
  br label %.preheader.us465

.preheader.us465:                                 ; preds = %.preheader.us465, %.preheader.us465.preheader169.new
  %indvars.iv601 = phi i64 [ %indvars.iv601.unr, %.preheader.us465.preheader169.new ], [ %indvars.iv.next602.3, %.preheader.us465 ] ; 5 uses
  %i.agp = trunc nuw nsw i64 %indvars.iv601 to i32
  %i.agq = add i32 %i.afz, %i.agp
  %i.agr = zext i32 %i.agq to i64
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agr
  store float 0.000000e+00, ptr %i.ags, align 4
  %i.agt = trunc i64 %indvars.iv601 to i32
  %.reass373 = add i32 %i.agt, %invariant.op372
  %i.agu = zext i32 %.reass373 to i64
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agu
  store float 0.000000e+00, ptr %i.agv, align 4
  %i.agw = trunc i64 %indvars.iv601 to i32
  %.reass375 = add i32 %i.agw, %invariant.op374
  %i.agx = zext i32 %.reass375 to i64
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agx
  store float 0.000000e+00, ptr %i.agy, align 4
  %i.agz = trunc i64 %indvars.iv601 to i32
  %.reass377 = add i32 %i.agz, %invariant.op376
  %i.aha = zext i32 %.reass377 to i64
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aha
  store float 0.000000e+00, ptr %i.ahb, align 4
  %indvars.iv.next602.3 = add nuw nsw i64 %indvars.iv601, 4 ; 2 uses
  %exitcond605.not.3 = icmp eq i64 %indvars.iv.next602.3, %wide.trip.count604
  br i1 %exitcond605.not.3, label %._crit_edge463.us, label %.preheader.us465, !llvm.loop !651

._crit_edge463.us:                                ; preds = %._crit_edge460.us.us, %.preheader.us465.prol.loopexit, %.preheader.us465, %middle.block146
  %i.ahc = add i32 %.4464.us, 1                   ; 2 uses
  %i.ahd = zext i32 %i.ahc to i64
  %i.ahe = icmp ugt i64 %6, %i.ahd
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ahe, label %.preheader360.us, label %.loopexit

.preheader.us.us:                                 ; preds = %.preheader360.us, %._crit_edge460.us.us
  %indvars.iv596 = phi i64 [ %indvars.iv.next597, %._crit_edge460.us.us ], [ 0, %.preheader360.us ] ; 3 uses
  %i.ahf = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv596 ; 5 uses
  br i1 %i.afv, label %.epil.preheader330, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %indvars.iv591 = phi i64 [ %indvars.iv.next592.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 6 uses
  %.0312458.us.us = phi float [ %i.ail, %.preheader.us.us.new ], [ 0.000000e+00, %.preheader.us.us ]
  %niter337 = phi i64 [ %niter337.next.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.ahg = trunc nuw i64 %indvars.iv591 to i32
  %i.ahh = add i32 %i.afy, %i.ahg
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahi
  %i.ahk = load float, ptr %i.ahj, align 4
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %indvars.iv591
  %i.ahm = load float, ptr %i.ahl, align 16
  %i.ahn = tail call float @llvm.fmuladd.f32(float %i.ahk, float %i.ahm, float %.0312458.us.us)
  %indvars.iv.next592 = or disjoint i64 %indvars.iv591, 1 ; 2 uses
  %i.aho = trunc nuw i64 %indvars.iv.next592 to i32
  %i.ahp = add i32 %i.afy, %i.aho
  %i.ahq = zext i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahq
  %i.ahs = load float, ptr %i.ahr, align 4
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %indvars.iv.next592
  %i.ahu = load float, ptr %i.aht, align 4
  %i.ahv = tail call float @llvm.fmuladd.f32(float %i.ahs, float %i.ahu, float %i.ahn)
  %indvars.iv.next592.1 = or disjoint i64 %indvars.iv591, 2 ; 2 uses
  %i.ahw = trunc nuw i64 %indvars.iv.next592.1 to i32
  %i.ahx = add i32 %i.afy, %i.ahw
  %i.ahy = zext i32 %i.ahx to i64
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahy
  %i.aia = load float, ptr %i.ahz, align 4
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %indvars.iv.next592.1
  %i.aic = load float, ptr %i.aib, align 8
  %i.aid = tail call float @llvm.fmuladd.f32(float %i.aia, float %i.aic, float %i.ahv)
  %indvars.iv.next592.2 = or disjoint i64 %indvars.iv591, 3 ; 2 uses
  %i.aie = trunc nuw i64 %indvars.iv.next592.2 to i32
  %i.aif = add i32 %i.afy, %i.aie
  %i.aig = zext i32 %i.aif to i64
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aig
  %i.aii = load float, ptr %i.aih, align 4
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %indvars.iv.next592.2
  %i.aik = load float, ptr %i.aij, align 4
  %i.ail = tail call float @llvm.fmuladd.f32(float %i.aii, float %i.aik, float %i.aid) ; 3 uses
  %indvars.iv.next592.3 = add nuw nsw i64 %indvars.iv591, 4 ; 2 uses
  %niter337.next.3 = add i64 %niter337, 4         ; 2 uses
  %niter337.ncmp.3 = icmp eq i64 %niter337.next.3, %unroll_iter336
  br i1 %niter337.ncmp.3, label %._crit_edge460.us.us.unr-lcssa, label %.preheader.us.us.new

._crit_edge460.us.us.unr-lcssa:                   ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod333.not, label %._crit_edge460.us.us, label %.epil.preheader330

.epil.preheader330:                               ; preds = %._crit_edge460.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv591.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next592.3, %._crit_edge460.us.us.unr-lcssa ]
  %.0312458.us.us.epil.init = phi float [ 0.000000e+00, %.preheader.us.us ], [ %i.ail, %._crit_edge460.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod335)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader330
  %indvars.iv591.epil = phi i64 [ %indvars.iv.next592.epil, %bb.ae ], [ %indvars.iv591.epil.init, %.epil.preheader330 ] ; 3 uses
  %.0312458.us.us.epil = phi float [ %i.ait, %bb.ae ], [ %.0312458.us.us.epil.init, %.epil.preheader330 ]
  %epil.iter332 = phi i64 [ %epil.iter332.next, %bb.ae ], [ 0, %.epil.preheader330 ]
  %i.aim = trunc nuw i64 %indvars.iv591.epil to i32
  %i.ain = add i32 %i.afy, %i.aim
  %i.aio = zext i32 %i.ain to i64
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aio
  %i.aiq = load float, ptr %i.aip, align 4
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %indvars.iv591.epil
  %i.ais = load float, ptr %i.air, align 4
  %i.ait = tail call float @llvm.fmuladd.f32(float %i.aiq, float %i.ais, float %.0312458.us.us.epil) ; 2 uses
  %indvars.iv.next592.epil = add nuw nsw i64 %indvars.iv591.epil, 1
  %epil.iter332.next = add i64 %epil.iter332, 1   ; 2 uses
  %epil.iter332.cmp.not = icmp eq i64 %epil.iter332.next, %xtraiter331
  br i1 %epil.iter332.cmp.not, label %._crit_edge460.us.us, label %bb.ae, !llvm.loop !652

._crit_edge460.us.us:                             ; preds = %bb.ae, %._crit_edge460.us.us.unr-lcssa
  %.lcssa = phi float [ %i.ail, %._crit_edge460.us.us.unr-lcssa ], [ %i.ait, %bb.ae ]
  %i.aiu = trunc nuw nsw i64 %indvars.iv596 to i32
  %i.aiv = add i32 %i.afz, %i.aiu
  %i.aiw = zext i32 %i.aiv to i64
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aiw
  store float %.lcssa, ptr %i.aix, align 4
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1 ; 2 uses
  %exitcond600.not = icmp eq i64 %indvars.iv.next597, %wide.trip.count599
  br i1 %exitcond600.not, label %._crit_edge463.us, label %.preheader.us.us

.preheader360:                                    ; preds = %.loopexit362.thread, %.preheader360
  %.4464 = phi i32 [ %i.aiy, %.preheader360 ], [ 0, %.loopexit362.thread ]
  %i.aiy = add i32 %.4464, 1                      ; 2 uses
  %i.aiz = zext i32 %i.aiy to i64
  %i.aja = icmp ugt i64 %6, %i.aiz
  br i1 %i.aja, label %.preheader360, label %.loopexit

.preheader370:                                    ; preds = %.preheader370.lr.ph, %.preheader370
  %.5406 = phi i32 [ %i.ajb, %.preheader370 ], [ 0, %.preheader370.lr.ph ]
  %i.ajb = add i32 %.5406, 1                      ; 2 uses
  %i.ajc = zext i32 %i.ajb to i64
  %i.ajd = icmp ugt i64 %6, %i.ajc
  br i1 %i.ajd, label %.preheader370, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge397.us, %.preheader370, %._crit_edge463.us, %.preheader360, %.loopexit362.thread, %.preheader371, %.loopexit362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %ma_copy_pcm_frames.exit

bb.af:                                            ; preds = %bb.q
  %i.aje = shl i32 %2, 2
  %i.ajf = zext i32 %i.aje to i64
  %i.ajg = mul i64 %6, %i.ajf                     ; 2 uses
  %.not.i13.i = icmp eq i64 %i.ajg, 0
  br i1 %.not.i13.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %bb.af, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.aji, %ma_zero_memory_default.exit.i.i ], [ %0, %bb.af ] ; 3 uses
  %.08.i14.i = phi i64 [ %i.ajh, %ma_zero_memory_default.exit.i.i ], [ %i.ajg, %bb.af ] ; 2 uses
  %spec.store.select.i.i355 = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  %.not.i356 = icmp eq ptr %.0.i15.i, null
  br i1 %.not.i356, label %ma_zero_memory_default.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i354
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i355, i1 false)
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.ag, %.lr.ph.i354
  %i.ajh = sub i64 %.08.i14.i, %spec.store.select.i.i355 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i355
  %.not.i.i357 = icmp eq i64 %i.ajh, 0
  br i1 %.not.i.i357, label %ma_copy_pcm_frames.exit, label %.lr.ph.i354

ma_copy_pcm_frames.exit:                          ; preds = %.split.i, %.split.us.us.i, %._crit_edge.split.us85.i, %._crit_edge.split.us.us.us.i, %.lr.ph.i.i, %.lr.ph.i, %ma_zero_memory_default.exit.i.i, %bb.af, %.loopexit.i, %.preheader274.i, %bb.f, %bb.e, %.preheader64.i, %bb.d, %bb.c, %bb.b, %.loopexit
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define hidden float @ma_spatializer_get_min_distance(ptr nofree noundef captures(address) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: norecurse nounwind uwtable
define hidden float @ma_spatializer_get_max_distance(ptr nofree noundef captures(address) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: norecurse nounwind uwtable
define hidden float @ma_spatializer_get_rolloff(ptr nofree noundef captures(address) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: norecurse nounwind uwtable
define hidden float @ma_spatializer_get_doppler_factor(ptr nofree noundef captures(address) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 1.000000e+00, %bb.a ]
  ret float %.0
end_hunk_1
begin_hunk_2_@drmp3d_synth_granule:bb.a
  store <4 x float> %i.ml, ptr %i.br, align 1
  %i.mm = fadd <4 x float> %i.lo, %i.lm           ; 2 uses
  store <4 x float> %i.gt, ptr %i.cl, align 1
  %i.mn = fadd <4 x float> %i.jx, %i.mm
  store <4 x float> %i.mn, ptr %i.df, align 1
  %i.mo = fadd <4 x float> %i.ik, %i.ii
  store <4 x float> %i.mo, ptr %i.dz, align 1
  %i.mp = fadd <4 x float> %i.jz, %i.mm
  store <4 x float> %i.mp, ptr %i.et, align 1
  %i.mq = fadd <4 x float> %i.lo, %i.lq           ; 2 uses
  store <4 x float> %i.gv, ptr %i.ev, align 1
  %i.mr = fadd <4 x float> %i.jz, %i.mq
  store <4 x float> %i.mr, ptr %i.eb, align 1
  %i.ms = fadd <4 x float> %i.ik, %i.im
  store <4 x float> %i.ms, ptr %i.dh, align 1
  %i.mt = fadd <4 x float> %i.kb, %i.mq
  store <4 x float> %i.mt, ptr %i.cn, align 1
  store <4 x float> %i.gx, ptr %i.bt, align 1
  %i.mu = fadd <4 x float> %i.kb, %i.lq
  store <4 x float> %i.mu, ptr %i.az, align 1
  store <4 x float> %i.im, ptr %i.af, align 1
  store <4 x float> %i.lq, ptr %i.l, align 1
  br label %bb.c

.preheader.preheader.i:                           ; preds = %.preheader165.preheader.i
  %i.mv = shufflevector <4 x float> %i.fv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.mv, ptr %i.f, align 1
  %i.mw = fadd <4 x float> %i.iz, %i.ls
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.mx, ptr %i.z, align 1
  %i.my = fadd <4 x float> %i.hk, %i.ic
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.mz, ptr %i.at, align 1
  %i.na = fadd <4 x float> %i.jr, %i.ls
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nb, ptr %i.bn, align 1
  %i.nc = fadd <4 x float> %i.li, %i.lg           ; 2 uses
  %i.nd = shufflevector <4 x float> %i.gn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nd, ptr %i.ch, align 1
  %i.ne = fadd <4 x float> %i.jr, %i.nc
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nf, ptr %i.db, align 1
  %i.ng = fadd <4 x float> %i.ie, %i.ic
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nh, ptr %i.dv, align 1
  %i.ni = fadd <4 x float> %i.jt, %i.nc
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nj, ptr %i.ep, align 1
  %i.nk = fadd <4 x float> %i.li, %i.lk           ; 2 uses
  %i.nl = shufflevector <4 x float> %i.gp, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nl, ptr %i.er, align 1
  %i.nm = fadd <4 x float> %i.jt, %i.nk
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nn, ptr %i.dx, align 1
  %i.no = fadd <4 x float> %i.ie, %i.ig
  %i.np = shufflevector <4 x float> %i.no, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.np, ptr %i.dd, align 1
  %i.nq = fadd <4 x float> %i.jv, %i.nk
  %i.nr = shufflevector <4 x float> %i.nq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nr, ptr %i.cj, align 1
  %i.ns = fadd <4 x float> %i.kq, %i.lk           ; 2 uses
  %i.nt = shufflevector <4 x float> %i.gr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nt, ptr %i.bp, align 1
  %i.nu = fadd <4 x float> %i.jv, %i.ns
  %i.nv = shufflevector <4 x float> %i.nu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nv, ptr %i.av, align 1
  %i.nw = fadd <4 x float> %i.hm, %i.ig
  %i.nx = shufflevector <4 x float> %i.nw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nx, ptr %i.ab, align 1
  %i.ny = fadd <4 x float> %i.jb, %i.ns
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nz, ptr %i.h, align 1
  %i.oa = fadd <4 x float> %i.kq, %i.lm           ; 2 uses
  %i.ob = shufflevector <4 x float> %i.fx, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ob, ptr %i.j, align 1
  %i.oc = fadd <4 x float> %i.jb, %i.oa
  %i.od = shufflevector <4 x float> %i.oc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.od, ptr %i.ad, align 1
  %i.oe = fadd <4 x float> %i.hm, %i.ii
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.of, ptr %i.ax, align 1
  %i.og = fadd <4 x float> %i.jx, %i.oa
  %i.oh = shufflevector <4 x float> %i.og, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.oh, ptr %i.br, align 1
  %i.oi = fadd <4 x float> %i.lo, %i.lm           ; 2 uses
  %i.oj = shufflevector <4 x float> %i.gt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.oj, ptr %i.cl, align 1
  %i.ok = fadd <4 x float> %i.jx, %i.oi
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ol, ptr %i.df, align 1
  %i.om = fadd <4 x float> %i.ik, %i.ii
  %i.on = shufflevector <4 x float> %i.om, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.on, ptr %i.dz, align 1
  %i.oo = fadd <4 x float> %i.jz, %i.oi
  %i.op = shufflevector <4 x float> %i.oo, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.op, ptr %i.et, align 1
  %i.oq = fadd <4 x float> %i.lo, %i.lq           ; 2 uses
  %i.or = shufflevector <4 x float> %i.gv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.or, ptr %i.ev, align 1
  %i.os = fadd <4 x float> %i.jz, %i.oq
  %i.ot = shufflevector <4 x float> %i.os, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ot, ptr %i.eb, align 1
  %i.ou = fadd <4 x float> %i.ik, %i.im
  %i.ov = shufflevector <4 x float> %i.ou, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ov, ptr %i.dh, align 1
  %i.ow = fadd <4 x float> %i.kb, %i.oq
  %i.ox = shufflevector <4 x float> %i.ow, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ox, ptr %i.cn, align 1
  %i.oy = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.oy, ptr %i.bt, align 1
  %i.oz = fadd <4 x float> %i.kb, %i.lq
  %i.pa = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.pa, ptr %i.az, align 1
  %i.pb = shufflevector <4 x float> %i.im, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.pb, ptr %i.af, align 1
  %i.pc = shufflevector <4 x float> %i.lq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.pc, ptr %i.l, align 1
  br label %bb.c

bb.c:                                             ; preds = %.preheader.preheader.i, %.preheader164.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.pd = icmp samesign ult i64 %indvars.iv.next.i, %i.d
  br i1 %i.pd, label %.preheader165.preheader.i, label %drmp3d_DCT_II.exit

drmp3d_DCT_II.exit:                               ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %drmp3d_DCT_II.exit, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3840) %5, ptr noundef nonnull align 4 dereferenceable(3840) %0, i64 3840, i1 false)
  %i.pe = shl nsw i32 %3, 5
  %i.pf = add nsw i32 %3, -1                      ; 2 uses
  %i.pg = mul nsw i32 %i.pf, 576
  %i.ph = sext i32 %i.pg to i64
  %i.pi = sext i32 %i.pf to i64
  %i.pj = sext i32 %i.pe to i64                   ; 3 uses
  %i.pk = sext i32 %3 to i64                      ; 4 uses
  %i.pl = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %drmp3d_synth.exit
  %indvars.iv37 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next38, %drmp3d_synth.exit ] ; 4 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv37 ; 9 uses
  %i.pn = mul nsw i64 %indvars.iv37, %i.pj
  %i.po = getelementptr inbounds [2 x i8], ptr %4, i64 %i.pn ; 7 uses
  %.idx43 = shl nuw nsw i64 %indvars.iv37, 8
  %i.pp = getelementptr inbounds nuw i8, ptr %5, i64 %.idx43 ; 13 uses
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.ph ; 8 uses
  %i.pr = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.pi ; 6 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 3840
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pm, i64 1152
  %i.pu = load float, ptr %i.pt, align 4
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pp, i64 4080
  store float %i.pu, ptr %i.pv, align 4
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pq, i64 1152
  %i.px = load float, ptr %i.pw, align 4
  %i.py = getelementptr inbounds nuw i8, ptr %i.pp, i64 4084
  store float %i.px, ptr %i.py, align 4
  %i.pz = load float, ptr %i.pm, align 4
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pp, i64 4088
  store float %i.pz, ptr %i.qa, align 4
  %i.qb = load float, ptr %i.pq, align 4
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pp, i64 4092
  store float %i.qb, ptr %i.qc, align 4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pm, i64 1156
  %i.qe = load float, ptr %i.qd, align 4
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pp, i64 4336
  store float %i.qe, ptr %i.qf, align 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pq, i64 1156
  %i.qh = load float, ptr %i.qg, align 4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pp, i64 4340
  store float %i.qh, ptr %i.qi, align 4
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.qk = load float, ptr %i.qj, align 4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pp, i64 4344
  store float %i.qk, ptr %i.ql, align 4
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.qn = load float, ptr %i.qm, align 4
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pp, i64 4348
  store float %i.qn, ptr %i.qo, align 4
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pp, i64 240
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pp, i64 244
  tail call fastcc void @drmp3d_synth_pair(ptr noundef %i.pr, i32 noundef %3, ptr noundef nonnull %i.qq)
  %i.qr = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.pj
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pp, i64 496
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pp, i64 500
  tail call fastcc void @drmp3d_synth_pair(ptr noundef %i.qr, i32 noundef %3, ptr noundef nonnull %i.qt)
  tail call fastcc void @drmp3d_synth_pair(ptr noundef nonnull %i.po, i32 noundef %3, ptr noundef nonnull %i.qp)
  %i.qu = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.pj
  tail call fastcc void @drmp3d_synth_pair(ptr noundef %i.qu, i32 noundef %3, ptr noundef nonnull %i.qs)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i31 = phi i64 [ 14, %bb.d ], [ %indvars.iv.next.i32, %bb.e ] ; 9 uses
  %.0228229.i = phi ptr [ @drmp3d_synth.g_win, %bb.d ], [ %i.xk, %bb.e ] ; 17 uses
  %i.qv = sub nuw nsw i64 31, %indvars.iv.i31
  %i.qw = mul nuw nsw i64 %i.qv, 18               ; 3 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.qw
  %i.qy = load float, ptr %i.qx, align 4
  %.idx.i = shl nuw nsw i64 %indvars.iv.i31, 4
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ps, i64 %.idx.i ; 24 uses
  store float %i.qy, ptr %i.qz, align 4
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.qw
  %i.rb = load float, ptr %i.ra, align 4
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  store float %i.rb, ptr %i.rc, align 4
  %i.rd = or disjoint i64 %i.qw, 1                ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.rd
  %i.rf = load float, ptr %i.re, align 4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  store float %i.rf, ptr %i.rg, align 4
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.rd
  %i.ri = load float, ptr %i.rh, align 4
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qz, i64 12
  store float %i.ri, ptr %i.rj, align 4
  %i.rk = mul nuw nsw i64 %indvars.iv.i31, 18     ; 2 uses
  %i.rl = add nuw nsw i64 %i.rk, 18               ; 2 uses
  %i.rm = add nuw nsw i64 %i.rk, 19               ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.rm
  %i.ro = load float, ptr %i.rn, align 4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qz, i64 256
  store float %i.ro, ptr %i.rp, align 4
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.rm
  %i.rr = load float, ptr %i.rq, align 4
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qz, i64 260
  store float %i.rr, ptr %i.rs, align 4
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.rl
  %i.ru = load float, ptr %i.rt, align 4
  %i.rv = getelementptr i8, ptr %i.qz, i64 -248
  store float %i.ru, ptr %i.rv, align 4
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.rl
  %i.rx = load float, ptr %i.rw, align 4
  %i.ry = getelementptr i8, ptr %i.qz, i64 -244
  store float %i.rx, ptr %i.ry, align 4
  %i.rz = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 4
  %i.sa = load float, ptr %.0228229.i, align 4
  %i.sb = insertelement <4 x float> poison, float %i.sa, i64 0
  %i.sc = shufflevector <4 x float> %i.sb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 8
  %i.se = load float, ptr %i.rz, align 4
  %i.sf = insertelement <4 x float> poison, float %i.se, i64 0
  %i.sg = shufflevector <4 x float> %i.sf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sh = load <4 x float>, ptr %i.qz, align 4    ; 2 uses
  %i.si = getelementptr i8, ptr %i.qz, i64 -3840
  %i.sj = load <4 x float>, ptr %i.si, align 4    ; 2 uses
  %i.sk = fmul <4 x float> %i.sh, %i.sg
  %i.sl = fmul <4 x float> %i.sc, %i.sj
  %i.sm = fadd <4 x float> %i.sk, %i.sl
  %i.sn = fmul <4 x float> %i.sh, %i.sc
  %i.so = fmul <4 x float> %i.sj, %i.sg
  %i.sp = fsub <4 x float> %i.sn, %i.so
  %i.sq = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 12
  %i.sr = load float, ptr %i.sd, align 4
  %i.ss = insertelement <4 x float> poison, float %i.sr, i64 0
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 16
  %i.sv = load float, ptr %i.sq, align 4
  %i.sw = insertelement <4 x float> poison, float %i.sv, i64 0
  %i.sx = shufflevector <4 x float> %i.sw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sy = getelementptr i8, ptr %i.qz, i64 -256
  %i.sz = load <4 x float>, ptr %i.sy, align 4    ; 2 uses
  %i.ta = getelementptr i8, ptr %i.qz, i64 -3584
  %i.tb = load <4 x float>, ptr %i.ta, align 4    ; 2 uses
  %i.tc = fmul <4 x float> %i.sz, %i.sx
  %i.td = fmul <4 x float> %i.st, %i.tb
  %i.te = fadd <4 x float> %i.tc, %i.td
  %i.tf = fadd <4 x float> %i.sm, %i.te
  %i.tg = fmul <4 x float> %i.tb, %i.sx
  %i.th = fmul <4 x float> %i.sz, %i.st
  %i.ti = fsub <4 x float> %i.tg, %i.th
  %i.tj = fadd <4 x float> %i.sp, %i.ti
  %i.tk = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 20
  %i.tl = load float, ptr %i.su, align 4
  %i.tm = insertelement <4 x float> poison, float %i.tl, i64 0
  %i.tn = shufflevector <4 x float> %i.tm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 24
  %i.tp = load float, ptr %i.tk, align 4
  %i.tq = insertelement <4 x float> poison, float %i.tp, i64 0
  %i.tr = shufflevector <4 x float> %i.tq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ts = getelementptr i8, ptr %i.qz, i64 -512
  %i.tt = load <4 x float>, ptr %i.ts, align 4    ; 2 uses
  %i.tu = getelementptr i8, ptr %i.qz, i64 -3328
  %i.tv = load <4 x float>, ptr %i.tu, align 4    ; 2 uses
  %i.tw = fmul <4 x float> %i.tt, %i.tr
  %i.tx = fmul <4 x float> %i.tn, %i.tv
  %i.ty = fadd <4 x float> %i.tw, %i.tx
  %i.tz = fadd <4 x float> %i.tf, %i.ty
  %i.ua = fmul <4 x float> %i.tt, %i.tn
  %i.ub = fmul <4 x float> %i.tv, %i.tr
  %i.uc = fsub <4 x float> %i.ua, %i.ub
  %i.ud = fadd <4 x float> %i.tj, %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 28
  %i.uf = load float, ptr %i.to, align 4
  %i.ug = insertelement <4 x float> poison, float %i.uf, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 32
  %i.uj = load float, ptr %i.ue, align 4
  %i.uk = insertelement <4 x float> poison, float %i.uj, i64 0
  %i.ul = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.um = getelementptr i8, ptr %i.qz, i64 -768
  %i.un = load <4 x float>, ptr %i.um, align 4    ; 2 uses
  %i.uo = getelementptr i8, ptr %i.qz, i64 -3072
  %i.up = load <4 x float>, ptr %i.uo, align 4    ; 2 uses
  %i.uq = fmul <4 x float> %i.un, %i.ul
  %i.ur = fmul <4 x float> %i.uh, %i.up
  %i.us = fadd <4 x float> %i.uq, %i.ur
  %i.ut = fadd <4 x float> %i.tz, %i.us
  %i.uu = fmul <4 x float> %i.up, %i.ul
  %i.uv = fmul <4 x float> %i.un, %i.uh
  %i.uw = fsub <4 x float> %i.uu, %i.uv
  %i.ux = fadd <4 x float> %i.ud, %i.uw
  %i.uy = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 36
  %i.uz = load float, ptr %i.ui, align 4
  %i.va = insertelement <4 x float> poison, float %i.uz, i64 0
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 40
  %i.vd = load float, ptr %i.uy, align 4
  %i.ve = insertelement <4 x float> poison, float %i.vd, i64 0
  %i.vf = shufflevector <4 x float> %i.ve, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vg = getelementptr i8, ptr %i.qz, i64 -1024
  %i.vh = load <4 x float>, ptr %i.vg, align 4    ; 2 uses
  %i.vi = getelementptr i8, ptr %i.qz, i64 -2816
  %i.vj = load <4 x float>, ptr %i.vi, align 4    ; 2 uses
  %i.vk = fmul <4 x float> %i.vh, %i.vf
  %i.vl = fmul <4 x float> %i.vb, %i.vj
  %i.vm = fadd <4 x float> %i.vk, %i.vl
  %i.vn = fadd <4 x float> %i.ut, %i.vm
  %i.vo = fmul <4 x float> %i.vh, %i.vb
  %i.vp = fmul <4 x float> %i.vj, %i.vf
  %i.vq = fsub <4 x float> %i.vo, %i.vp
  %i.vr = fadd <4 x float> %i.ux, %i.vq
  %i.vs = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 44
  %i.vt = load float, ptr %i.vc, align 4
  %i.vu = insertelement <4 x float> poison, float %i.vt, i64 0
  %i.vv = shufflevector <4 x float> %i.vu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 48
  %i.vx = load float, ptr %i.vs, align 4
  %i.vy = insertelement <4 x float> poison, float %i.vx, i64 0
  %i.vz = shufflevector <4 x float> %i.vy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wa = getelementptr i8, ptr %i.qz, i64 -1280
  %i.wb = load <4 x float>, ptr %i.wa, align 4    ; 2 uses
  %i.wc = getelementptr i8, ptr %i.qz, i64 -2560
  %i.wd = load <4 x float>, ptr %i.wc, align 4    ; 2 uses
  %i.we = fmul <4 x float> %i.wb, %i.vz
  %i.wf = fmul <4 x float> %i.vv, %i.wd
  %i.wg = fadd <4 x float> %i.we, %i.wf
  %i.wh = fadd <4 x float> %i.vn, %i.wg
  %i.wi = fmul <4 x float> %i.wd, %i.vz
  %i.wj = fmul <4 x float> %i.wb, %i.vv
  %i.wk = fsub <4 x float> %i.wi, %i.wj
  %i.wl = fadd <4 x float> %i.vr, %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 52
  %i.wn = load float, ptr %i.vw, align 4
  %i.wo = insertelement <4 x float> poison, float %i.wn, i64 0
  %i.wp = shufflevector <4 x float> %i.wo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 56
  %i.wr = load float, ptr %i.wm, align 4
  %i.ws = insertelement <4 x float> poison, float %i.wr, i64 0
  %i.wt = shufflevector <4 x float> %i.ws, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wu = getelementptr i8, ptr %i.qz, i64 -1536
  %i.wv = load <4 x float>, ptr %i.wu, align 4    ; 2 uses
  %i.ww = getelementptr i8, ptr %i.qz, i64 -2304
  %i.wx = load <4 x float>, ptr %i.ww, align 4    ; 2 uses
  %i.wy = fmul <4 x float> %i.wv, %i.wt
  %i.wz = fmul <4 x float> %i.wp, %i.wx
  %i.xa = fadd <4 x float> %i.wy, %i.wz
  %i.xb = fadd <4 x float> %i.wh, %i.xa
  %i.xc = fmul <4 x float> %i.wv, %i.wp
  %i.xd = fmul <4 x float> %i.wx, %i.wt
  %i.xe = fsub <4 x float> %i.xc, %i.xd
  %i.xf = fadd <4 x float> %i.wl, %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 60
  %i.xh = load float, ptr %i.wq, align 4
  %i.xi = insertelement <4 x float> poison, float %i.xh, i64 0
  %i.xj = shufflevector <4 x float> %i.xi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 64
  %i.xl = load float, ptr %i.xg, align 4
  %i.xm = insertelement <4 x float> poison, float %i.xl, i64 0
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xo = getelementptr i8, ptr %i.qz, i64 -1792
  %i.xp = load <4 x float>, ptr %i.xo, align 4    ; 2 uses
  %i.xq = getelementptr i8, ptr %i.qz, i64 -2048
  %i.xr = load <4 x float>, ptr %i.xq, align 4    ; 2 uses
  %i.xs = fmul <4 x float> %i.xp, %i.xn
  %i.xt = fmul <4 x float> %i.xj, %i.xr
  %i.xu = fadd <4 x float> %i.xs, %i.xt
  %i.xv = fadd <4 x float> %i.xb, %i.xu
  %i.xw = fmul <4 x float> %i.xr, %i.xn
  %i.xx = fmul <4 x float> %i.xp, %i.xj
  %i.xy = fsub <4 x float> %i.xw, %i.xx
  %i.xz = fadd <4 x float> %i.xf, %i.xy
  %i.ya = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xz, <4 x float> splat (float 3.276700e+04))
  %i.yb = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ya, <4 x float> splat (float -3.276800e+04))
  %i.yc = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.yb)
  %i.yd = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xv, <4 x float> splat (float 3.276700e+04))
  %i.ye = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.yd, <4 x float> splat (float -3.276800e+04))
  %i.yf = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ye)
  %i.yg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.yc, <4 x i32> %i.yf) ; 8 uses
  %i.yh = extractelement <8 x i16> %i.yg, i64 1
  %i.yi = sub nuw nsw i64 15, %indvars.iv.i31
  %i.yj = mul nsw i64 %i.yi, %i.pk                ; 2 uses
  %i.yk = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.yj
  store i16 %i.yh, ptr %i.yk, align 2
  %i.yl = extractelement <8 x i16> %i.yg, i64 5
  %i.ym = add nuw nsw i64 %indvars.iv.i31, 17
  %i.yn = mul nsw i64 %i.ym, %i.pk                ; 2 uses
  %i.yo = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.yn
  store i16 %i.yl, ptr %i.yo, align 2
  %i.yp = extractelement <8 x i16> %i.yg, i64 0
  %i.yq = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.yj
  store i16 %i.yp, ptr %i.yq, align 2
  %i.yr = extractelement <8 x i16> %i.yg, i64 4
  %i.ys = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.yn
  store i16 %i.yr, ptr %i.ys, align 2
  %i.yt = extractelement <8 x i16> %i.yg, i64 3
  %i.yu = sub nuw nsw i64 47, %indvars.iv.i31
end_hunk_2
begin_hunk_3_@qoa_encode_frame:bb.a
  %i.ez = trunc i64 %i.eb to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ed, i64 7
  store i8 %i.ez, ptr %i.fa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0148)
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %i.j
  br i1 %exitcond263.not, label %._crit_edge.us, label %bb.b

.lr.ph.us.us:                                     ; preds = %bb.b, %bb.f
  %.097201.us.us = phi i32 [ %i.ht, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.098200.us.us = phi i32 [ %.199.us.us, %bb.f ], [ 0, %bb.b ]
  %.0100199.us.us = phi i64 [ %.1101.us.us, %bb.f ], [ 0, %bb.b ]
  %.0102198.us.us = phi i64 [ %.1103.us.us, %bb.f ], [ -1, %bb.b ] ; 3 uses
  %.sroa.4.0197.us.us = phi i32 [ %.sroa.4.1.us.us, %bb.f ], [ undef, %bb.b ]
  %.sroa.5.0196.us.us = phi i32 [ %.sroa.5.1.us.us, %bb.f ], [ undef, %bb.b ]
  %.sroa.6.0195.us.us = phi i32 [ %.sroa.6.1.us.us, %bb.f ], [ undef, %bb.b ]
  %.sroa.7.0194.us.us = phi i32 [ %.sroa.7.1.us.us, %bb.f ], [ undef, %bb.b ]
  %i.fb = add nsw i32 %i.dw, %.097201.us.us
  %i.fc = and i32 %i.fb, 15                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(16) %i.dx, i64 16, i1 false)
  %i.fd = zext nneg i32 %i.fc to i64              ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr @qoa_reciprocal_tab, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr @qoa_dequant_tab, i64 %i.fd
  %.sroa.0.12..sroa.0.12..sroa.0.12..sroa_idx.promoted.us.us = load i32, ptr %.sroa.0.12..sroa_idx, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.us.us
  %.0.i114193.us.us = phi i32 [ %.sroa.0.12..sroa.0.12..sroa.0.12..sroa_idx.promoted.us.us, %.lr.ph.us.us ], [ %.0.i114.us.us, %bb.d ] ; 2 uses
  %.0179.us.us = phi i32 [ %i.dt, %.lr.ph.us.us ], [ %i.hq, %bb.d ] ; 2 uses
  %.094178.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.gz, %bb.d ]
  %.095177.us.us = phi i64 [ %i.fd, %.lr.ph.us.us ], [ %i.hp, %bb.d ] ; 2 uses
  %.sroa.15.0176.us.us = phi i32 [ %.sroa.15.0.copyload.us, %.lr.ph.us.us ], [ %i.he, %bb.d ] ; 5 uses
  %.sroa.19.0175.us.us = phi i32 [ %.sroa.19.0.copyload.us, %.lr.ph.us.us ], [ %i.hh, %bb.d ] ; 5 uses
  %.sroa.23.0174.us.us = phi i32 [ %.sroa.23.0.copyload.us, %.lr.ph.us.us ], [ %i.hk, %bb.d ] ; 5 uses
  %.sroa.27.0173.us.us = phi i32 [ %.sroa.27.0.copyload.us, %.lr.ph.us.us ], [ %i.hn, %bb.d ] ; 5 uses
  %i.fh = sext i32 %.0179.us.us to i64
  %i.fi = getelementptr inbounds [2 x i8], ptr %0, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2
  %i.fk = sext i16 %i.fj to i32                   ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..us.us = load i32, ptr %.sroa.0, align 4 ; 2 uses
  %i.fl = mul nsw i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..us.us, %.sroa.15.0176.us.us
  %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..us.us = load i32, ptr %.sroa.0.4..sroa_idx289, align 4 ; 2 uses
  %i.fm = mul nsw i32 %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..us.us, %.sroa.19.0175.us.us
  %i.fn = add nsw i32 %i.fm, %i.fl
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..us.us = load i32, ptr %.sroa.0.8..sroa_idx, align 4 ; 2 uses
  %i.fo = mul nsw i32 %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..us.us, %.sroa.23.0174.us.us
  %i.fp = add nsw i32 %i.fn, %i.fo
  %i.fq = mul nsw i32 %.0.i114193.us.us, %.sroa.27.0173.us.us
  %i.fr = add nsw i32 %i.fp, %i.fq
  %i.fs = ashr i32 %i.fr, 13                      ; 3 uses
  %i.ft = sub nsw i32 %i.fk, %i.fs
  %i.fu = mul nsw i32 %i.ft, %i.ff
  %i.fv = add nsw i32 %i.fu, 32768                ; 2 uses
  %i.fw = ashr i32 %i.fv, 16                      ; 2 uses
  %i.fx = tail call i32 @llvm.scmp.i32.i32(i32 %i.fk, i32 %i.fs)
  %i.fy = icmp sgt i32 %i.fw, 0
  %.neg.i.us.us = sext i1 %i.fy to i32
  %.lobit.neg.neg.i.us.us = lshr i32 %i.fv, 31
  %.neg9.i.us.us = add nsw i32 %i.fw, %i.fx
  %i.fz = add nsw i32 %.neg9.i.us.us, %.lobit.neg.neg.i.us.us
  %i.ga = add nsw i32 %i.fz, %.neg.i.us.us
  %i.gb = tail call i32 @llvm.smax.i32(i32 %i.ga, i32 -8)
  %.0.i.us.us = tail call i32 @llvm.smin.i32(i32 %i.gb, i32 8)
  %i.gc = sext i32 %.0.i.us.us to i64
  %i.gd = getelementptr [4 x i8], ptr @qoa_quant_tab, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.gd, i64 32
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4            ; 2 uses
  %i.gj = add nsw i32 %i.fs, %i.gi
  %i.gk = tail call i32 @llvm.smax.i32(i32 %i.gj, i32 -32768)
  %.0.i114.us.us = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.gk, i32 32767) ; 3 uses
  %i.gl = mul nsw i32 %.sroa.15.0176.us.us, %.sroa.15.0176.us.us
  %i.gm = mul nsw i32 %.sroa.19.0175.us.us, %.sroa.19.0175.us.us
  %i.gn = mul nsw i32 %.sroa.23.0174.us.us, %.sroa.23.0174.us.us
  %i.go = mul nsw i32 %.sroa.27.0173.us.us, %.sroa.27.0173.us.us
  %i.gp = add nuw nsw i32 %i.gn, %i.go
  %i.gq = add nuw nsw i32 %i.gp, %i.gm
  %i.gr = add nuw nsw i32 %i.gq, %i.gl
  %i.gs = lshr i32 %i.gr, 18
  %spec.store.select.us.us = tail call i32 @llvm.usub.sat.i32(i32 %i.gs, i32 2303) ; 2 uses
  %i.gt = sub nsw i32 %i.fk, %.0.i114.us.us
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %i.gv = mul nsw i64 %i.gu, %i.gu
  %i.gw = mul nuw nsw i32 %spec.store.select.us.us, %spec.store.select.us.us
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = add i64 %.094178.us.us, %i.gx
  %i.gz = add i64 %i.gy, %i.gv                    ; 4 uses
  %.not.us.us = icmp ugt i64 %i.gz, %.0102198.us.us
  br i1 %.not.us.us, label %.thread.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ha = ashr i32 %i.gi, 4                       ; 5 uses
  %i.hb = sub nsw i32 0, %i.ha                    ; 4 uses
  %i.hc = icmp slt i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..us.us, 0
  %i.hd = select i1 %i.hc, i32 %i.hb, i32 %i.ha
  %i.he = add nsw i32 %i.hd, %.sroa.15.0176.us.us ; 2 uses
  %i.hf = icmp slt i32 %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..us.us, 0
  %i.hg = select i1 %i.hf, i32 %i.hb, i32 %i.ha
  %i.hh = add nsw i32 %i.hg, %.sroa.19.0175.us.us ; 2 uses
  %i.hi = icmp slt i32 %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..us.us, 0
  %i.hj = select i1 %i.hi, i32 %i.hb, i32 %i.ha
  %i.hk = add nsw i32 %i.hj, %.sroa.23.0174.us.us ; 2 uses
  %i.hl = icmp slt i32 %.0.i114193.us.us, 0
  %i.hm = select i1 %i.hl, i32 %i.hb, i32 %i.ha
  %i.hn = add nsw i32 %i.hm, %.sroa.27.0173.us.us ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.4..sroa_idx, i64 12, i1 false)
  store i32 %.0.i114.us.us, ptr %.sroa.0.12..sroa_idx290, align 4
  %i.ho = shl i64 %.095177.us.us, 3
  %i.hp = or i64 %i.ho, %i.gg                     ; 2 uses
  %i.hq = add i32 %.0179.us.us, %i.b              ; 2 uses
  %i.hr = icmp slt i32 %i.hq, %i.du
  br i1 %i.hr, label %bb.c, label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.d, %bb.c
  %.sroa.27.0.lcssa.us.us = phi i32 [ %.sroa.27.0173.us.us, %bb.c ], [ %i.hn, %bb.d ]
  %.sroa.23.0.lcssa.us.us = phi i32 [ %.sroa.23.0174.us.us, %bb.c ], [ %i.hk, %bb.d ]
  %.sroa.19.0.lcssa.us.us = phi i32 [ %.sroa.19.0175.us.us, %bb.c ], [ %i.hh, %bb.d ]
  %.sroa.15.0.lcssa.us.us = phi i32 [ %.sroa.15.0176.us.us, %bb.c ], [ %i.he, %bb.d ]
  %.095.lcssa.us.us = phi i64 [ %.095177.us.us, %bb.c ], [ %i.hp, %bb.d ]
  %i.hs = icmp ult i64 %i.gz, %.0102198.us.us
  br i1 %i.hs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread.us.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0148, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.us.us
  %.sroa.7.1.us.us = phi i32 [ %.sroa.27.0.lcssa.us.us, %bb.e ], [ %.sroa.7.0194.us.us, %.thread.us.us ] ; 2 uses
  %.sroa.6.1.us.us = phi i32 [ %.sroa.23.0.lcssa.us.us, %bb.e ], [ %.sroa.6.0195.us.us, %.thread.us.us ] ; 2 uses
  %.sroa.5.1.us.us = phi i32 [ %.sroa.19.0.lcssa.us.us, %bb.e ], [ %.sroa.5.0196.us.us, %.thread.us.us ] ; 2 uses
  %.sroa.4.1.us.us = phi i32 [ %.sroa.15.0.lcssa.us.us, %bb.e ], [ %.sroa.4.0197.us.us, %.thread.us.us ] ; 2 uses
  %.1103.us.us = phi i64 [ %i.gz, %bb.e ], [ %.0102198.us.us, %.thread.us.us ]
  %.1101.us.us = phi i64 [ %.095.lcssa.us.us, %bb.e ], [ %.0100199.us.us, %.thread.us.us ] ; 2 uses
  %.199.us.us = phi i32 [ %i.fc, %bb.e ], [ %.098200.us.us, %.thread.us.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.ht = add nuw nsw i32 %.097201.us.us, 1       ; 2 uses
  %exitcond258.not = icmp eq i32 %i.ht, 16
  br i1 %exitcond258.not, label %.split203.us232, label %.lr.ph.us.us

._crit_edge.us:                                   ; preds = %.split203.us232
  %i.hu = add i32 %.0105213.us, 20                ; 2 uses
  %i.hv = icmp ult i32 %i.hu, %2
  br i1 %i.hv, label %.preheader.us, label %._crit_edge214

.preheader:                                       ; preds = %.preheader166, %.preheader
  %.0105213 = phi i32 [ %i.hw, %.preheader ], [ 0, %.preheader166 ]
  %i.hw = add i32 %.0105213, 20                   ; 2 uses
  %i.hx = icmp ult i32 %i.hw, %2
  br i1 %i.hx, label %.preheader, label %._crit_edge214

._crit_edge214:                                   ; preds = %._crit_edge.us, %.preheader, %.preheader166.thread, %.preheader166
  %.1159.lcssa = phi i32 [ 8, %.preheader166 ], [ %i.cp, %.preheader166.thread ], [ 8, %.preheader ], [ %i.ee, %._crit_edge.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.1159.lcssa
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @qoa_encode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #49 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -16777216
  %or.cond = icmp ult i32 %i.f, -16777215
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 4                ; 2 uses
  %i.h = add i32 %i.g, -9
  %or.cond58 = icmp ult i32 %i.h, -8
  br i1 %or.cond58, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %i.b, 5119
  %i.j = udiv i32 %i.i, 5120                      ; 2 uses
  %i.k = add i32 %i.b, 19
  %i.l = udiv i32 %i.k, 20
  %i.m = shl nuw nsw i32 %i.j, 3
  %i.n = shl nuw nsw i32 %i.j, 4
  %i.o = shl nuw nsw i32 %i.l, 3
  %reass.add = add nuw nsw i32 %i.o, %i.n
  %reass.mul = mul i32 %reass.add, %i.g
  %i.p = add nuw nsw i32 %i.m, 8
  %i.q = add i32 %i.p, %reass.mul
  %i.r = zext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #74 ; 7 uses
  %i.t = load i32, ptr %1, align 4                ; 3 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %wide.trip.count = zext i32 %i.t to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.u = icmp ult i32 %i.t, 4
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvar.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvar.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.epil.preheader ], [ %indvar.next.epil, %bb.e ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %3 = shl nuw nsw i64 %indvar.epil, 5
  %4 = getelementptr i8, ptr %1, i64 %3
  %scevgep.epil = getelementptr i8, ptr %4, i64 12
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvar.epil
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.w, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.epil, i8 0, i64 16, i1 false)
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.e, !llvm.loop !1107

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %bb.d
  %i.x = load i32, ptr %i.a, align 4              ; 6 uses
  store <4 x i8> <i8 113, i8 111, i8 97, i8 102>, ptr %i.s, align 1
  %i.y = lshr i32 %i.x, 24
  %i.z = trunc nuw i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = lshr i32 %i.x, 16
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = lshr i32 %i.x, 8
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = trunc i32 %i.x to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  store i8 %i.ah, ptr %i.ai, align 1
  %.not66 = icmp eq i32 %i.x, 0
  br i1 %.not66, label %._crit_edge65, label %.lr.ph64

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvar = phi i64 [ 0, %.lr.ph.new ], [ %indvar.next.3, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.f ]
  %5 = shl nuw nsw i64 %indvar, 5
  %6 = getelementptr i8, ptr %1, i64 %5
  %scevgep = getelementptr i8, ptr %6, i64 12
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvar
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.ak, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false)
  %indvar.next = or disjoint i64 %indvar, 1       ; 2 uses
  %7 = shl nuw nsw i64 %indvar.next, 5
  %8 = getelementptr i8, ptr %1, i64 %7
  %scevgep.1 = getelementptr i8, ptr %8, i64 12
  %9 = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvar.next
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 28
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.al, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.1, i8 0, i64 16, i1 false)
  %indvar.next.1 = or disjoint i64 %indvar, 2     ; 2 uses
  %10 = shl nuw nsw i64 %indvar.next.1, 5
  %11 = getelementptr i8, ptr %1, i64 %10
  %scevgep.2 = getelementptr i8, ptr %11, i64 12
  %12 = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvar.next.1
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 28
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.am, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.2, i8 0, i64 16, i1 false)
  %indvar.next.2 = or disjoint i64 %indvar, 3     ; 2 uses
  %13 = shl nuw nsw i64 %indvar.next.2, 5
  %14 = getelementptr i8, ptr %1, i64 %13
  %scevgep.3 = getelementptr i8, ptr %14, i64 12
  %15 = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvar.next.2
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 28
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.an, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.3, i8 0, i64 16, i1 false)
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.f

._crit_edge65:                                    ; preds = %.lr.ph64, %._crit_edge
  %.051.lcssa = phi i32 [ 8, %._crit_edge ], [ %i.ax, %.lr.ph64 ]
  store i32 %.051.lcssa, ptr %2, align 4
  br label %bb.g

.lr.ph64:                                         ; preds = %._crit_edge, %.lr.ph64
  %i.ao = phi i32 [ %i.az, %.lr.ph64 ], [ %i.x, %._crit_edge ]
  %.05062 = phi i32 [ %i.ay, %.lr.ph64 ], [ 0, %._crit_edge ] ; 3 uses
  %.05161 = phi i32 [ %i.ax, %.lr.ph64 ], [ 8, %._crit_edge ] ; 2 uses
  %i.ap = sub nuw i32 %i.ao, %.05062
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 5120) ; 2 uses
  %i.aq = load i32, ptr %1, align 4
  %i.ar = mul i32 %i.aq, %.05062
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.as
  %i.au = zext i32 %.05161 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.au
  %i.aw = tail call i32 @qoa_encode_frame(ptr noundef %i.at, ptr noundef nonnull %1, i32 noundef %..i, ptr noundef nonnull %i.av)
  %i.ax = add i32 %i.aw, %.05161                  ; 2 uses
  %i.ay = add i32 %..i, %.05062                   ; 2 uses
  %i.az = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ba = icmp ult i32 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph64, label %._crit_edge65

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge65
  %.0 = phi ptr [ %i.s, %._crit_edge65 ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @qoa_max_frame_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = shl i32 %i.a, 4
  %i.c = or disjoint i32 %i.b, 8
  %i.d = shl i32 %i.a, 11
  %i.e = add i32 %i.c, %i.d
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 0, 9) i32 @qoa_decode_header(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp slt i32 %1, 16
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw i64 %i.c, 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 48
  %i.i = or disjoint i64 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 40
  %i.n = or disjoint i64 %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 32
  %i.s = or disjoint i64 %i.n, %i.r
  %.not = icmp eq i64 %i.s, 8173858939415298048
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 1              ; 2 uses
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.v, ptr %i.w, align 4
  %.not14 = icmp eq i32 %i.u, 0
  br i1 %.not14, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ac, %i.aj
  %i.al = or disjoint i32 %i.ak, %i.ag            ; 2 uses
  %i.am = zext i8 %i.y to i32
  store i32 %i.am, ptr %2, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.al, ptr %i.an, align 4
  %i.ao = icmp eq i8 %i.y, 0
  br i1 %i.ao, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp eq i32 %i.al, 0
  %spec.select = select i1 %i.ap, i32 0, i32 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %spec.select, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @qoa_decode_frame(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #20 {
bb.a:
  store i32 0, ptr %4, align 4
  %i.a = load i32, ptr %2, align 4                ; 7 uses
  %i.b = shl i32 %i.a, 4                          ; 2 uses
  %i.c = or disjoint i32 %i.b, 8
  %i.d = icmp ult i32 %1, %i.c
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l               ; 5 uses
  %i.n = zext i8 %i.e to i32
  %.not = icmp eq i32 %i.a, %i.n
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = or disjoint i32 %i.u, %i.q               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 16
  %i.ai = or disjoint i32 %i.ad, %i.ah
  %reass.sub = sub nsw i32 %i.v, %i.b
  %i.aj = add nsw i32 %reass.sub, -8
  %i.ak = lshr i32 %i.aj, 3
  %i.al = mul i32 %i.ak, 20
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i32, ptr %i.am, align 4
  %.not88 = icmp ne i32 %i.ai, %i.an
  %i.ao = icmp ugt i32 %i.v, %1
  %or.cond = or i1 %i.ao, %.not88
  %i.ap = mul nuw nsw i32 %i.m, %i.a
  %i.aq = icmp ugt i32 %i.ap, %i.al
  %or.cond90 = select i1 %or.cond, i1 true, i1 %i.aq
  br i1 %or.cond90, label %bb.g, label %.preheader97

.preheader97:                                     ; preds = %bb.c
  %.not116 = icmp eq i8 %i.e, 0
  br i1 %.not116, label %._crit_edge113, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader97
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.f

.preheader96.thread:                              ; preds = %bb.f
  %i.as = trunc nuw nsw i64 %indvars.iv.next123 to i32 ; 2 uses
  %.not117144 = icmp eq i32 %i.m, 0
  br i1 %.not117144, label %._crit_edge113, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader96.thread
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = zext nneg i32 %i.m to i64
  %i.av = zext nneg i32 %i.a to i64               ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge109.us
  %indvars.iv132 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next133, %._crit_edge109.us ] ; 2 uses
  %.195111.us = phi i32 [ %i.as, %.preheader.us.preheader ], [ %i.bb, %._crit_edge109.us ]
end_hunk_3
