Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@ma_channel_map_apply_f32:bb.a
vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next51, %vector.body49 ] ; 2 uses
  %i.kq = getelementptr [4 x i8], ptr %i.kp, i64 %index50 ; 2 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 16
  store <4 x float> %broadcast.splat, ptr %i.kq, align 4, !alias.scope !688, !noalias !689
  store <4 x float> %broadcast.splat, ptr %i.kr, align 4, !alias.scope !688, !noalias !689
  %index.next51 = add nuw i64 %index50, 8         ; 2 uses
  %i.ks = icmp eq i64 %index.next51, %n.vec48
  br i1 %i.ks, label %middle.block52, label %vector.body49, !llvm.loop !670

middle.block52:                                   ; preds = %vector.body49
  br i1 %cmp.n53, label %._crit_edge316.i, label %scalar.ph45.preheader

scalar.ph45.preheader:                            ; preds = %.preheader.i, %middle.block52
  %indvars.iv393.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec48, %middle.block52 ]
  br label %scalar.ph45

scalar.ph45:                                      ; preds = %scalar.ph45.preheader, %scalar.ph45
  %indvars.iv393.i = phi i64 [ %indvars.iv.next394.i, %scalar.ph45 ], [ %indvars.iv393.i.ph, %scalar.ph45.preheader ] ; 2 uses
  %i.kt = getelementptr [4 x i8], ptr %i.kp, i64 %indvars.iv393.i
  store float %i.kn, ptr %i.kt, align 4, !alias.scope !688, !noalias !689
  %indvars.iv.next394.i = add nuw nsw i64 %indvars.iv393.i, 1 ; 2 uses
  %exitcond397.not.i = icmp eq i64 %indvars.iv.next394.i, %wide.trip.count382.i
  br i1 %exitcond397.not.i, label %._crit_edge316.i, label %scalar.ph45, !llvm.loop !671

._crit_edge316.i:                                 ; preds = %scalar.ph45, %middle.block52
  %i.ku = add nuw i64 %.9317.i, 1                 ; 2 uses
  %exitcond398.not.i = icmp eq i64 %i.ku, %6
  br i1 %exitcond398.not.i, label %.loopexit.i, label %.preheader.i

.preheader270.i:                                  ; preds = %.preheader270.i.preheader, %._crit_edge302.i
  %.10303.i = phi i64 [ %i.lk, %._crit_edge302.i ], [ 0, %.preheader270.i.preheader ] ; 3 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.10303.i ; 3 uses
  %i.kw = mul i64 %.10303.i, %wide.trip.count382.i
  %i.kx = getelementptr [4 x i8], ptr %0, i64 %i.kw ; 3 uses
  br i1 %i.hd, label %.epil.preheader, label %.preheader270.i.new

.preheader270.i.new:                              ; preds = %.preheader270.i, %bb.o
  %indvars.iv384.i = phi i64 [ %indvars.iv.next385.i.1, %bb.o ], [ 0, %.preheader270.i ] ; 4 uses
  %niter221 = phi i64 [ %niter221.next.1, %bb.o ], [ 0, %.preheader270.i ]
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv384.i
  %i.kz = load i8, ptr %i.ky, align 2, !noalias !690
  %.not247.i = icmp eq i8 %i.kz, 0
  br i1 %.not247.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader270.i.new
  %i.la = load float, ptr %i.kv, align 4, !alias.scope !689, !noalias !688
  %i.lb = getelementptr [4 x i8], ptr %i.kx, i64 %indvars.iv384.i
  store float %i.la, ptr %i.lb, align 4, !alias.scope !688, !noalias !689
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader270.i.new
  %indvars.iv.next385.i = or disjoint i64 %indvars.iv384.i, 1 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next385.i
  %i.ld = load i8, ptr %i.lc, align 1, !noalias !690
  %.not247.i.1 = icmp eq i8 %i.ld, 0
  br i1 %.not247.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.le = load float, ptr %i.kv, align 4, !alias.scope !689, !noalias !688
  %i.lf = getelementptr [4 x i8], ptr %i.kx, i64 %indvars.iv.next385.i
  store float %i.le, ptr %i.lf, align 4, !alias.scope !688, !noalias !689
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next385.i.1 = add nuw nsw i64 %indvars.iv384.i, 2 ; 2 uses
  %niter221.next.1 = add i64 %niter221, 2         ; 2 uses
  %niter221.ncmp.1 = icmp eq i64 %niter221.next.1, %unroll_iter220
  br i1 %niter221.ncmp.1, label %._crit_edge302.i.unr-lcssa, label %.preheader270.i.new

._crit_edge302.i.unr-lcssa:                       ; preds = %bb.o
  br i1 %lcmp.mod218.not, label %._crit_edge302.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge302.i.unr-lcssa, %.preheader270.i
  %indvars.iv384.i.epil.init = phi i64 [ 0, %.preheader270.i ], [ %indvars.iv.next385.i.1, %._crit_edge302.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod219)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv384.i.epil.init
  %i.lh = load i8, ptr %i.lg, align 1, !noalias !690
  %.not247.i.epil = icmp eq i8 %i.lh, 0
  br i1 %.not247.i.epil, label %._crit_edge302.i, label %bb.p

bb.p:                                             ; preds = %.epil.preheader
  %i.li = load float, ptr %i.kv, align 4, !alias.scope !689, !noalias !688
  %i.lj = getelementptr [4 x i8], ptr %i.kx, i64 %indvars.iv384.i.epil.init
  store float %i.li, ptr %i.lj, align 4, !alias.scope !688, !noalias !689
  br label %._crit_edge302.i

._crit_edge302.i:                                 ; preds = %.epil.preheader, %bb.p, %._crit_edge302.i.unr-lcssa
  %i.lk = add nuw i64 %.10303.i, 1                ; 2 uses
  %exitcond389.not.i = icmp eq i64 %i.lk, %6
  br i1 %exitcond389.not.i, label %.loopexit.i, label %.preheader270.i

.loopexit.i.loopexit204.unr-lcssa:                ; preds = %.lr.ph305.i
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.loopexit.i, label %.lr.ph305.i.epil.preheader

.lr.ph305.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit204.unr-lcssa, %.lr.ph305.i.preheader
  %.6304.i.epil.init = phi i64 [ 0, %.lr.ph305.i.preheader ], [ %i.kk, %.loopexit.i.loopexit204.unr-lcssa ] ; 2 uses
  %lcmp.mod224 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.6304.i.epil.init
  %i.lm = load float, ptr %i.ll, align 4, !alias.scope !689, !noalias !688
  %i.ln = insertelement <4 x float> poison, float %i.lm, i64 0
  %i.lo = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.idx263.i.epil = shl i64 %.6304.i.epil.init, 5
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 %.idx263.i.epil ; 2 uses
  store <4 x float> %i.lo, ptr %i.lp, align 1, !alias.scope !688, !noalias !689
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store <4 x float> %i.lo, ptr %i.lq, align 1, !alias.scope !688, !noalias !689
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge302.i, %.lr.ph305.i.epil.preheader, %.loopexit.i.loopexit204.unr-lcssa, %._crit_edge316.i, %bb.k, %.preheader268.i, %.preheader271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61, !noalias !690
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
  %i.lv = load i8, ptr %i.lu, align 1, !noalias !690
  %.not.i334 = icmp eq i8 %i.lv, 0
  br i1 %.not.i334, label %ma_channel_map_get_channel.exit250.thread256.i, label %ma_channel_map_get_channel.exit250.thread.i

ma_channel_map_get_channel.exit250.thread.i:      ; preds = %ma_channel_map_get_channel.exit250.i
  %i.lw = load float, ptr %i.lr, align 4, !alias.scope !689, !noalias !688
  %i.lx = getelementptr [4 x i8], ptr %i.lt, i64 %indvars.iv.i333
  store float %i.lw, ptr %i.lx, align 4, !alias.scope !688, !noalias !689
  br label %ma_channel_map_get_channel.exit250.thread256.i

ma_channel_map_get_channel.exit250.thread256.i:   ; preds = %ma_channel_map_get_channel.exit250.thread.i, %ma_channel_map_get_channel.exit250.i
  %indvars.iv.next.i335 = or disjoint i64 %indvars.iv.i333, 1 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i335
  %i.lz = load i8, ptr %i.ly, align 1, !noalias !690
  %.not.i334.1 = icmp eq i8 %i.lz, 0
  br i1 %.not.i334.1, label %ma_channel_map_get_channel.exit250.thread256.i.1, label %ma_channel_map_get_channel.exit250.thread.i.1

ma_channel_map_get_channel.exit250.thread.i.1:    ; preds = %ma_channel_map_get_channel.exit250.thread256.i
  %i.ma = load float, ptr %i.lr, align 4, !alias.scope !689, !noalias !688
  %i.mb = getelementptr [4 x i8], ptr %i.lt, i64 %indvars.iv.next.i335
  store float %i.ma, ptr %i.mb, align 4, !alias.scope !688, !noalias !689
  br label %ma_channel_map_get_channel.exit250.thread256.i.1

ma_channel_map_get_channel.exit250.thread256.i.1: ; preds = %ma_channel_map_get_channel.exit250.thread.i.1, %ma_channel_map_get_channel.exit250.thread256.i
  %indvars.iv.next.i335.1 = add nuw nsw i64 %indvars.iv.i333, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split.i.unr-lcssa, label %ma_channel_map_get_channel.exit250.i

.split.i.unr-lcssa:                               ; preds = %ma_channel_map_get_channel.exit250.thread256.i.1
  br i1 %lcmp.mod.not, label %.split.i, label %ma_channel_map_get_channel.exit250.i.epil.preheader

ma_channel_map_get_channel.exit250.i.epil.preheader: ; preds = %.split.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod211)
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i335.1
  %i.md = load i8, ptr %i.mc, align 1, !noalias !690
  %.not.i334.epil = icmp eq i8 %i.md, 0
  br i1 %.not.i334.epil, label %.split.i, label %ma_channel_map_get_channel.exit250.thread.i.epil

ma_channel_map_get_channel.exit250.thread.i.epil: ; preds = %ma_channel_map_get_channel.exit250.i.epil.preheader
  %i.me = load float, ptr %i.lr, align 4, !alias.scope !689, !noalias !688
  %i.mf = getelementptr [4 x i8], ptr %i.lt, i64 %indvars.iv.next.i335.1
  store float %i.me, ptr %i.mf, align 4, !alias.scope !688, !noalias !689
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
  %exitcond535.not.peel325 = icmp eq i32 %5, 5
  %min.iters.check72 = icmp ult i32 %2, 8         ; 2 uses
  %i.mt = trunc nsw i64 %i.mn to i32
  %i.mu = icmp ugt i64 %i.mn, 4294967295
  %n.vec85 = and i64 %wide.trip.count554, 248     ; 3 uses
  %cmp.n90 = icmp eq i64 %n.vec85, %wide.trip.count554
  %xtraiter327 = and i64 %wide.trip.count554, 3   ; 2 uses
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  %i.mv = trunc nsw i64 %i.mn to i32
  %i.mw = icmp ugt i64 %i.mn, 4294967295
  %n.vec74 = and i64 %wide.trip.count554, 248     ; 3 uses
  %cmp.n79 = icmp eq i64 %n.vec74, %wide.trip.count554
  %xtraiter329 = and i64 %wide.trip.count554, 3   ; 2 uses
  %lcmp.mod330.not = icmp eq i64 %xtraiter329, 0
  br label %.preheader370.us

.preheader370.us:                                 ; preds = %.preheader370.us.preheader, %._crit_edge397.us
  %.5406.us = phi i32 [ %i.vg, %._crit_edge397.us ], [ 0, %.preheader370.us.preheader ] ; 3 uses
  %i.mx = mul i32 %.5406.us, %5                   ; 7 uses
  %i.my = mul i32 %.5406.us, %2                   ; 15 uses
  br i1 %.not470, label %.lr.ph396.split.us407, label %.lr.ph396.split.us.us.preheader

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

.lr.ph396.split.us407:                            ; preds = %.preheader370.us
  br i1 %i.mk, label %ma_channel_map_get_channel.exit350.us405.us.preheader, label %ma_channel_map_get_channel.exit350.us409.preheader

ma_channel_map_get_channel.exit350.us409.preheader: ; preds = %.lr.ph396.split.us407
  br i1 %min.iters.check72, label %ma_channel_map_get_channel.exit350.us409.preheader189, label %vector.scevcheck81

vector.scevcheck81:                               ; preds = %ma_channel_map_get_channel.exit350.us409.preheader
  %i.nn = xor i32 %i.my, -1
  %i.no = icmp ult i32 %i.nn, %i.mt
  %i.np = or i1 %i.no, %i.mu
  br i1 %i.np, label %ma_channel_map_get_channel.exit350.us409.preheader189, label %vector.body86

vector.body86:                                    ; preds = %vector.scevcheck81, %vector.body86
  %index87 = phi i64 [ %index.next88, %vector.body86 ], [ 0, %vector.scevcheck81 ] ; 2 uses
  %i.nq = trunc nuw nsw i64 %index87 to i32
  %i.nr = add i32 %i.my, %i.nq
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ns ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store <4 x float> zeroinitializer, ptr %i.nt, align 4
  store <4 x float> zeroinitializer, ptr %i.nu, align 4
  %index.next88 = add nuw i64 %index87, 8         ; 2 uses
  %i.nv = icmp eq i64 %index.next88, %n.vec85
  br i1 %i.nv, label %middle.block89, label %vector.body86, !llvm.loop !672

middle.block89:                                   ; preds = %vector.body86
  br i1 %cmp.n90, label %._crit_edge397.us, label %ma_channel_map_get_channel.exit350.us409.preheader189

ma_channel_map_get_channel.exit350.us409.preheader189: ; preds = %vector.scevcheck81, %ma_channel_map_get_channel.exit350.us409.preheader, %middle.block89
  %indvars.iv556.ph = phi i64 [ 0, %vector.scevcheck81 ], [ 0, %ma_channel_map_get_channel.exit350.us409.preheader ], [ %n.vec85, %middle.block89 ] ; 3 uses
  br i1 %lcmp.mod328.not, label %ma_channel_map_get_channel.exit350.us409.prol.loopexit, label %ma_channel_map_get_channel.exit350.us409.prol

ma_channel_map_get_channel.exit350.us409.prol:    ; preds = %ma_channel_map_get_channel.exit350.us409.preheader189, %ma_channel_map_get_channel.exit350.us409.prol
  %indvars.iv556.prol = phi i64 [ %indvars.iv.next557.prol, %ma_channel_map_get_channel.exit350.us409.prol ], [ %indvars.iv556.ph, %ma_channel_map_get_channel.exit350.us409.preheader189 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %ma_channel_map_get_channel.exit350.us409.prol ], [ 0, %ma_channel_map_get_channel.exit350.us409.preheader189 ]
  %i.nw = trunc nuw nsw i64 %indvars.iv556.prol to i32
  %i.nx = add i32 %i.my, %i.nw
  %i.ny = zext i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ny
  store float 0.000000e+00, ptr %i.nz, align 4
  %indvars.iv.next557.prol = add nuw nsw i64 %indvars.iv556.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter327
  br i1 %prol.iter.cmp.not, label %ma_channel_map_get_channel.exit350.us409.prol.loopexit, label %ma_channel_map_get_channel.exit350.us409.prol, !llvm.loop !673

ma_channel_map_get_channel.exit350.us409.prol.loopexit: ; preds = %ma_channel_map_get_channel.exit350.us409.prol, %ma_channel_map_get_channel.exit350.us409.preheader189
  %indvars.iv556.unr = phi i64 [ %indvars.iv556.ph, %ma_channel_map_get_channel.exit350.us409.preheader189 ], [ %indvars.iv.next557.prol, %ma_channel_map_get_channel.exit350.us409.prol ]
  %7 = sub nsw i64 %indvars.iv556.ph, %wide.trip.count554
  %8 = icmp ugt i64 %7, -4
  br i1 %8, label %._crit_edge397.us, label %ma_channel_map_get_channel.exit350.us409.preheader189.new

ma_channel_map_get_channel.exit350.us409.preheader189.new: ; preds = %ma_channel_map_get_channel.exit350.us409.prol.loopexit
  %invariant.op = add i32 1, %i.my
  %invariant.op364 = add i32 2, %i.my
  %invariant.op366 = add i32 3, %i.my
  br label %ma_channel_map_get_channel.exit350.us409

ma_channel_map_get_channel.exit350.us405.us.preheader: ; preds = %.lr.ph396.split.us407
  br i1 %min.iters.check72, label %ma_channel_map_get_channel.exit350.us405.us.preheader188, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %ma_channel_map_get_channel.exit350.us405.us.preheader
  %i.oa = xor i32 %i.my, -1
  %i.ob = icmp ult i32 %i.oa, %i.mv
  %i.oc = or i1 %i.ob, %i.mw
  br i1 %i.oc, label %ma_channel_map_get_channel.exit350.us405.us.preheader188, label %vector.body75

vector.body75:                                    ; preds = %vector.scevcheck, %vector.body75
  %index76 = phi i64 [ %index.next77, %vector.body75 ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.od = trunc nuw nsw i64 %index76 to i32
  %i.oe = add i32 %i.my, %i.od
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.of ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  store <4 x float> zeroinitializer, ptr %i.og, align 4
  store <4 x float> zeroinitializer, ptr %i.oh, align 4
  %index.next77 = add nuw i64 %index76, 8         ; 2 uses
  %i.oi = icmp eq i64 %index.next77, %n.vec74
  br i1 %i.oi, label %middle.block78, label %vector.body75, !llvm.loop !674

middle.block78:                                   ; preds = %vector.body75
  br i1 %cmp.n79, label %._crit_edge397.us, label %ma_channel_map_get_channel.exit350.us405.us.preheader188

ma_channel_map_get_channel.exit350.us405.us.preheader188: ; preds = %vector.scevcheck, %ma_channel_map_get_channel.exit350.us405.us.preheader, %middle.block78
  %indvars.iv561.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %ma_channel_map_get_channel.exit350.us405.us.preheader ], [ %n.vec74, %middle.block78 ] ; 3 uses
  br i1 %lcmp.mod330.not, label %ma_channel_map_get_channel.exit350.us405.us.prol.loopexit, label %ma_channel_map_get_channel.exit350.us405.us.prol

ma_channel_map_get_channel.exit350.us405.us.prol: ; preds = %ma_channel_map_get_channel.exit350.us405.us.preheader188, %ma_channel_map_get_channel.exit350.us405.us.prol
  %indvars.iv561.prol = phi i64 [ %indvars.iv.next562.prol, %ma_channel_map_get_channel.exit350.us405.us.prol ], [ %indvars.iv561.ph, %ma_channel_map_get_channel.exit350.us405.us.preheader188 ] ; 2 uses
  %prol.iter331 = phi i64 [ %prol.iter331.next, %ma_channel_map_get_channel.exit350.us405.us.prol ], [ 0, %ma_channel_map_get_channel.exit350.us405.us.preheader188 ]
  %i.oj = trunc nuw nsw i64 %indvars.iv561.prol to i32
  %i.ok = add i32 %i.my, %i.oj
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ol
  store float 0.000000e+00, ptr %i.om, align 4
  %indvars.iv.next562.prol = add nuw nsw i64 %indvars.iv561.prol, 1 ; 2 uses
  %prol.iter331.next = add i64 %prol.iter331, 1   ; 2 uses
  %prol.iter331.cmp.not = icmp eq i64 %prol.iter331.next, %xtraiter329
  br i1 %prol.iter331.cmp.not, label %ma_channel_map_get_channel.exit350.us405.us.prol.loopexit, label %ma_channel_map_get_channel.exit350.us405.us.prol, !llvm.loop !675

ma_channel_map_get_channel.exit350.us405.us.prol.loopexit: ; preds = %ma_channel_map_get_channel.exit350.us405.us.prol, %ma_channel_map_get_channel.exit350.us405.us.preheader188
  %indvars.iv561.unr = phi i64 [ %indvars.iv561.ph, %ma_channel_map_get_channel.exit350.us405.us.preheader188 ], [ %indvars.iv.next562.prol, %ma_channel_map_get_channel.exit350.us405.us.prol ]
  %9 = sub nsw i64 %indvars.iv561.ph, %wide.trip.count554
  %10 = icmp ugt i64 %9, -4
  br i1 %10, label %._crit_edge397.us, label %ma_channel_map_get_channel.exit350.us405.us.preheader188.new

ma_channel_map_get_channel.exit350.us405.us.preheader188.new: ; preds = %ma_channel_map_get_channel.exit350.us405.us.prol.loopexit
  %invariant.op368 = add i32 1, %i.my
  %invariant.op370 = add i32 2, %i.my
  %invariant.op372 = add i32 3, %i.my
  br label %ma_channel_map_get_channel.exit350.us405.us

ma_channel_map_get_channel.exit350.us409:         ; preds = %ma_channel_map_get_channel.exit350.us409, %ma_channel_map_get_channel.exit350.us409.preheader189.new
  %indvars.iv556 = phi i64 [ %indvars.iv556.unr, %ma_channel_map_get_channel.exit350.us409.preheader189.new ], [ %indvars.iv.next557.3, %ma_channel_map_get_channel.exit350.us409 ] ; 5 uses
  %i.on = trunc nuw nsw i64 %indvars.iv556 to i32
  %i.oo = add i32 %i.my, %i.on
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.op
  store float 0.000000e+00, ptr %i.oq, align 4
  %i.or = trunc i64 %indvars.iv556 to i32
  %.reass = add i32 %i.or, %invariant.op
  %i.os = zext i32 %.reass to i64
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.os
  store float 0.000000e+00, ptr %i.ot, align 4
  %i.ou = trunc i64 %indvars.iv556 to i32
  %.reass365 = add i32 %i.ou, %invariant.op364
  %i.ov = zext i32 %.reass365 to i64
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ov
  store float 0.000000e+00, ptr %i.ow, align 4
  %i.ox = trunc i64 %indvars.iv556 to i32
  %.reass367 = add i32 %i.ox, %invariant.op366
  %i.oy = zext i32 %.reass367 to i64
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oy
  store float 0.000000e+00, ptr %i.oz, align 4
  %indvars.iv.next557.3 = add nuw nsw i64 %indvars.iv556, 4 ; 2 uses
  %exitcond560.not.3 = icmp eq i64 %indvars.iv.next557.3, %wide.trip.count559
  br i1 %exitcond560.not.3, label %._crit_edge397.us, label %ma_channel_map_get_channel.exit350.us409, !llvm.loop !676

ma_channel_map_get_channel.exit350.us405.us:      ; preds = %ma_channel_map_get_channel.exit350.us405.us, %ma_channel_map_get_channel.exit350.us405.us.preheader188.new
  %indvars.iv561 = phi i64 [ %indvars.iv561.unr, %ma_channel_map_get_channel.exit350.us405.us.preheader188.new ], [ %indvars.iv.next562.3, %ma_channel_map_get_channel.exit350.us405.us ] ; 5 uses
  %i.pa = trunc nuw nsw i64 %indvars.iv561 to i32
  %i.pb = add i32 %i.my, %i.pa
  %i.pc = zext i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pc
  store float 0.000000e+00, ptr %i.pd, align 4
  %i.pe = trunc i64 %indvars.iv561 to i32
  %.reass369 = add i32 %i.pe, %invariant.op368
  %i.pf = zext i32 %.reass369 to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pf
  store float 0.000000e+00, ptr %i.pg, align 4
  %i.ph = trunc i64 %indvars.iv561 to i32
  %.reass371 = add i32 %i.ph, %invariant.op370
  %i.pi = zext i32 %.reass371 to i64
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pi
  store float 0.000000e+00, ptr %i.pj, align 4
  %i.pk = trunc i64 %indvars.iv561 to i32
  %.reass373 = add i32 %i.pk, %invariant.op372
  %i.pl = zext i32 %.reass373 to i64
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pl
  store float 0.000000e+00, ptr %i.pm, align 4
  %indvars.iv.next562.3 = add nuw nsw i64 %indvars.iv561, 4 ; 2 uses
  %exitcond565.not.3 = icmp eq i64 %indvars.iv.next562.3, %wide.trip.count564
  br i1 %exitcond565.not.3, label %._crit_edge397.us, label %ma_channel_map_get_channel.exit350.us405.us, !llvm.loop !677

.lr.ph396.split.us.us:                            ; preds = %.lr.ph396.split.us.us.preheader, %._crit_edge.us.us
  %indvars.iv551 = phi i64 [ 0, %.lr.ph396.split.us.us.preheader ], [ %indvars.iv.next552, %._crit_edge.us.us ] ; 4 uses
  br i1 %i.mk, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph396.split.us.us
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv551
  %i.po = load i8, ptr %i.pn, align 1
  br label %ma_channel_map_get_channel.exit350.us.us

bb.t:                                             ; preds = %.lr.ph396.split.us.us
  %i.pp = trunc nuw nsw i64 %indvars.iv551 to i32
  %i.pq = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %2, i32 noundef %i.pp)
  br label %ma_channel_map_get_channel.exit350.us.us

ma_channel_map_get_channel.exit350.us.us:         ; preds = %bb.t, %bb.s
  %.0.i349.us.us = phi i8 [ %i.pq, %bb.t ], [ %i.po, %bb.s ]
  %i.pr = zext i8 %.0.i349.us.us to i64
  %i.ps = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.pr ; 5 uses
  %i.pt = load float, ptr %i.ps, align 8          ; 7 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  %i.pv = load float, ptr %i.pu, align 4          ; 7 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.px = load float, ptr %i.pw, align 8          ; 7 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.ps, i64 12
  %i.pz = load float, ptr %i.py, align 4          ; 7 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ps, i64 20
  %i.qb = load float, ptr %i.qa, align 4          ; 7 uses
  br i1 %i.ml, label %.lr.ph.split.us.us.us.preheader, label %ma_channel_map_get_channel.exit353.us399.us

.lr.ph.split.us.us.us.preheader:                  ; preds = %ma_channel_map_get_channel.exit350.us.us
  %i.qc = load float, ptr %i.na, align 4
  %i.qd = load float, ptr %i.mo, align 8
  %i.qe = load float, ptr %i.mp, align 4
  %i.qf = fmul float %i.pv, %i.qe
  %i.qg = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.qd, float %i.qf)
  %i.qh = load float, ptr %i.mq, align 8
  %i.qi = tail call float @llvm.fmuladd.f32(float %i.px, float %i.qh, float %i.qg)
  %i.qj = load float, ptr %i.mr, align 4
  %i.qk = tail call float @llvm.fmuladd.f32(float %i.pz, float %i.qj, float %i.qi)
  %i.ql = fadd float %i.qk, 0.000000e+00
  %i.qm = load float, ptr %i.ms, align 4
  %i.qn = tail call float @llvm.fmuladd.f32(float %i.qb, float %i.qm, float %i.ql)
  %i.qo = tail call float @llvm.fmuladd.f32(float %i.qc, float %i.qn, float 0.000000e+00) ; 2 uses
  br i1 %exitcond535.peel.not, label %._crit_edge.us.us, label %ma_channel_map_get_channel.exit353.us.us.us.peel546

ma_channel_map_get_channel.exit353.us.us.us.peel546: ; preds = %.lr.ph.split.us.us.us.preheader
  %i.qp = load float, ptr %i.nd, align 4
  %i.qq = fmul float %i.pv, 5.000000e-01
  %i.qr = tail call float @llvm.fmuladd.f32(float %i.pt, float 0.000000e+00, float %i.qq)
  %i.qs = tail call float @llvm.fmuladd.f32(float %i.px, float 5.000000e-01, float %i.qr)
  %i.qt = tail call float @llvm.fmuladd.f32(float %i.pz, float 0.000000e+00, float %i.qs)
  %i.qu = fadd float %i.qt, 0.000000e+00
  %i.qv = tail call float @llvm.fmuladd.f32(float %i.qb, float 0.000000e+00, float %i.qu)
  %i.qw = tail call float @llvm.fmuladd.f32(float %i.qp, float %i.qv, float %i.qo) ; 2 uses
  %cond380 = icmp eq i32 %5, 2
  br i1 %cond380, label %._crit_edge.us.us, label %ma_channel_map_get_channel.exit353.us.us.us.peel

ma_channel_map_get_channel.exit353.us.us.us.peel: ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel546
  %i.qx = load float, ptr %i.ng, align 4
  %i.qy = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 4 ; 5 uses
  %i.qz = load float, ptr %i.qy, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  %i.rb = load float, ptr %i.ra, align 4
  %i.rc = fmul float %i.pv, %i.rb
  %i.rd = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.qz, float %i.rc)
  %i.re = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rf = load float, ptr %i.re, align 8
  %i.rg = tail call float @llvm.fmuladd.f32(float %i.px, float %i.rf, float %i.rd)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qy, i64 12
  %i.ri = load float, ptr %i.rh, align 4
  %i.rj = tail call float @llvm.fmuladd.f32(float %i.pz, float %i.ri, float %i.rg)
  %i.rk = fadd float %i.rj, 0.000000e+00
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qy, i64 20
  %i.rm = load float, ptr %i.rl, align 4
  %i.rn = tail call float @llvm.fmuladd.f32(float %i.qb, float %i.rm, float %i.rk)
  %i.ro = tail call float @llvm.fmuladd.f32(float %i.qx, float %i.rn, float %i.qw) ; 2 uses
  switch i32 %5, label %switch.lookup165.peel283 [
    i32 3, label %._crit_edge.us.us
    i32 4, label %switch.lookup156.peel268
    i32 1, label %ma_channel_map_get_channel.exit353.us.us.us.peel287
    i32 5, label %switch.lookup151.peel263
  ]

switch.lookup151.peel263:                         ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel287

switch.lookup156.peel268:                         ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel287

switch.lookup165.peel283:                         ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel287

ma_channel_map_get_channel.exit353.us.us.us.peel287: ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel, %switch.lookup165.peel283, %switch.lookup156.peel268, %switch.lookup151.peel263
  %.0.i352.us.us.us.peel288 = phi i64 [ 10, %switch.lookup156.peel268 ], [ 5, %switch.lookup165.peel283 ], [ 1, %ma_channel_map_get_channel.exit353.us.us.us.peel ], [ 6, %switch.lookup151.peel263 ]
  %i.rp = load float, ptr %i.nj, align 4
  %i.rq = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %.0.i352.us.us.us.peel288 ; 5 uses
  %i.rr = load float, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  %i.rt = load float, ptr %i.rs, align 4
  %i.ru = fmul float %i.pv, %i.rt
  %i.rv = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.rr, float %i.ru)
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rx = load float, ptr %i.rw, align 8
  %i.ry = tail call float @llvm.fmuladd.f32(float %i.px, float %i.rx, float %i.rv)
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rq, i64 12
  %i.sa = load float, ptr %i.rz, align 4
  %i.sb = tail call float @llvm.fmuladd.f32(float %i.pz, float %i.sa, float %i.ry)
  %i.sc = fadd float %i.sb, 0.000000e+00
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rq, i64 20
  %i.se = load float, ptr %i.sd, align 4
  %i.sf = tail call float @llvm.fmuladd.f32(float %i.qb, float %i.se, float %i.sc)
  %i.sg = tail call float @llvm.fmuladd.f32(float %i.rp, float %i.sf, float %i.ro) ; 2 uses
  switch i32 %5, label %switch.lookup165.peel318 [
    i32 4, label %._crit_edge.us.us
    i32 7, label %switch.lookup161.peel311
    i32 1, label %ma_channel_map_get_channel.exit353.us.us.us.peel322
    i32 2, label %.thread.i67.i.us.us.us.peel310
    i32 5, label %switch.lookup151.peel298
    i32 6, label %switch.lookup.peel293
  ]

switch.lookup.peel293:                            ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel287
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel322

switch.lookup151.peel298:                         ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel287
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel322

.thread.i67.i.us.us.us.peel310:                   ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel287
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel322

switch.lookup161.peel311:                         ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel287
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel322

switch.lookup165.peel318:                         ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel287
  br label %ma_channel_map_get_channel.exit353.us.us.us.peel322

ma_channel_map_get_channel.exit353.us.us.us.peel322: ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel287, %switch.lookup165.peel318, %switch.lookup161.peel311, %.thread.i67.i.us.us.us.peel310, %switch.lookup151.peel298, %switch.lookup.peel293
  %.0.i352.us.us.us.peel323 = phi i64 [ 0, %.thread.i67.i.us.us.us.peel310 ], [ 11, %switch.lookup.peel293 ], [ 1, %ma_channel_map_get_channel.exit353.us.us.us.peel287 ], [ 7, %switch.lookup151.peel298 ], [ 6, %switch.lookup165.peel318 ], [ 10, %switch.lookup161.peel311 ]
  %i.sh = load float, ptr %i.nm, align 4
  %i.si = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %.0.i352.us.us.us.peel323 ; 5 uses
  %i.sj = load float, ptr %i.si, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  %i.sl = load float, ptr %i.sk, align 4
  %i.sm = fmul float %i.pv, %i.sl
  %i.sn = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.sj, float %i.sm)
  %i.so = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sp = load float, ptr %i.so, align 8
  %i.sq = tail call float @llvm.fmuladd.f32(float %i.px, float %i.sp, float %i.sn)
  %i.sr = getelementptr inbounds nuw i8, ptr %i.si, i64 12
  %i.ss = load float, ptr %i.sr, align 4
  %i.st = tail call float @llvm.fmuladd.f32(float %i.pz, float %i.ss, float %i.sq)
  %i.su = fadd float %i.st, 0.000000e+00
  %i.sv = getelementptr inbounds nuw i8, ptr %i.si, i64 20
  %i.sw = load float, ptr %i.sv, align 4
  %i.sx = tail call float @llvm.fmuladd.f32(float %i.qb, float %i.sw, float %i.su)
  %i.sy = tail call float @llvm.fmuladd.f32(float %i.sh, float %i.sx, float %i.sg) ; 2 uses
  br i1 %exitcond535.not.peel325, label %._crit_edge.us.us, label %.lr.ph.split.us.us.us

ma_channel_map_get_channel.exit353.us399.us:      ; preds = %ma_channel_map_get_channel.exit350.us.us, %ma_channel_map_get_channel.exit353.us399.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %ma_channel_map_get_channel.exit353.us399.us ], [ 0, %ma_channel_map_get_channel.exit350.us.us ] ; 3 uses
  %.0394.us400.us = phi float [ %i.tx, %ma_channel_map_get_channel.exit353.us399.us ], [ 0.000000e+00, %ma_channel_map_get_channel.exit350.us.us ]
  %i.sz = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.ta = load i8, ptr %i.sz, align 1
  %i.tb = trunc nuw i64 %indvars.iv to i32
  %i.tc = add i32 %i.mx, %i.tb
  %i.td = zext i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.td
  %i.tf = load float, ptr %i.te, align 4
  %i.tg = zext i8 %i.ta to i64
  %i.th = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.tg ; 5 uses
  %i.ti = load float, ptr %i.th, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  %i.tk = load float, ptr %i.tj, align 4
  %i.tl = fmul float %i.pv, %i.tk
  %i.tm = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.ti, float %i.tl)
  %i.tn = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.to = load float, ptr %i.tn, align 8
  %i.tp = tail call float @llvm.fmuladd.f32(float %i.px, float %i.to, float %i.tm)
  %i.tq = getelementptr inbounds nuw i8, ptr %i.th, i64 12
  %i.tr = load float, ptr %i.tq, align 4
  %i.ts = tail call float @llvm.fmuladd.f32(float %i.pz, float %i.tr, float %i.tp)
  %i.tt = fadd float %i.ts, 0.000000e+00
  %i.tu = getelementptr inbounds nuw i8, ptr %i.th, i64 20
  %i.tv = load float, ptr %i.tu, align 4
  %i.tw = tail call float @llvm.fmuladd.f32(float %i.qb, float %i.tv, float %i.tt)
  %i.tx = tail call float @llvm.fmuladd.f32(float %i.tf, float %i.tw, float %.0394.us400.us) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %ma_channel_map_get_channel.exit353.us399.us

.lr.ph.split.us.us.us:                            ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel322, %ma_channel_map_get_channel.exit353.us.us.us
  %indvars.iv530 = phi i64 [ %indvars.iv.next531, %ma_channel_map_get_channel.exit353.us.us.us ], [ 5, %ma_channel_map_get_channel.exit353.us.us.us.peel322 ] ; 11 uses
  %.0394.us.us.us = phi float [ %i.vb, %ma_channel_map_get_channel.exit353.us.us.us ], [ %i.sy, %ma_channel_map_get_channel.exit353.us.us.us.peel322 ]
  switch i32 %5, label %bb.w [
    i32 7, label %bb.v
    i32 1, label %ma_channel_map_get_channel.exit353.us.us.us
    i32 2, label %.thread.i67.i.us.us.us
    i32 3, label %switch.lookup.i68.i.us.us.us
    i32 4, label %.thread.i67.i.us.us.us
    i32 5, label %.thread.i67.i.us.us.us
    i32 6, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph.split.us.us.us
  %i.ty = icmp samesign ult i64 %indvars.iv530, 6
  br i1 %i.ty, label %switch.lookup, label %.thread.i67.i.us.us.us

switch.lookup.i68.i.us.us.us:                     ; preds = %.lr.ph.split.us.us.us
  %switch.offset.i70.i.us.us.us = add nuw nsw i64 %indvars.iv530, 2
  br label %ma_channel_map_get_channel.exit353.us.us.us

bb.v:                                             ; preds = %.lr.ph.split.us.us.us
  %i.tz = icmp samesign ult i64 %indvars.iv530, 7
  br i1 %i.tz, label %switch.lookup161, label %.thread.i67.i.us.us.us

.thread.i67.i.us.us.us:                           ; preds = %.lr.ph.split.us.us.us, %.lr.ph.split.us.us.us, %bb.v, %bb.u, %.lr.ph.split.us.us.us
  br label %ma_channel_map_get_channel.exit353.us.us.us

bb.w:                                             ; preds = %.lr.ph.split.us.us.us
  %i.ua = icmp samesign ult i64 %indvars.iv530, 8
  br i1 %i.ua, label %switch.lookup165, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ub = icmp samesign ult i64 %indvars.iv530, 32
  %or.cond.i73.i.us.us.us = and i1 %i.mm, %i.ub
  %i.uc = add nuw nsw i64 %indvars.iv530, 12
  %spec.select689 = select i1 %or.cond.i73.i.us.us.us, i64 %i.uc, i64 0
  br label %ma_channel_map_get_channel.exit353.us.us.us

switch.lookup:                                    ; preds = %bb.u
  %switch.tableidx = add nuw nsw i64 %indvars.iv530, 4294967295
  %i.ud = and i64 %switch.tableidx, 4294967295
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ma_channel_map_apply_f32, i64 %i.ud
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %ma_channel_map_get_channel.exit353.us.us.us

switch.lookup161:                                 ; preds = %bb.v
  %switch.tableidx160 = add nuw nsw i64 %indvars.iv530, 4294967295
  %i.ue = and i64 %switch.tableidx160, 4294967295
  %switch.gep162 = getelementptr inbounds nuw i8, ptr @switch.table.ma_channel_map_apply_f32.47, i64 %i.ue
  %switch.load163 = load i8, ptr %switch.gep162, align 1
  %switch.ext164 = zext i8 %switch.load163 to i64
  br label %ma_channel_map_get_channel.exit353.us.us.us

switch.lookup165:                                 ; preds = %bb.w
  %switch.gep166 = getelementptr inbounds nuw i8, ptr @switch.table.ma_channel_map_apply_f32.48, i64 %indvars.iv530
  %switch.load167 = load i8, ptr %switch.gep166, align 1
  %switch.ext168 = zext i8 %switch.load167 to i64
  br label %ma_channel_map_get_channel.exit353.us.us.us

ma_channel_map_get_channel.exit353.us.us.us:      ; preds = %switch.lookup165, %switch.lookup161, %switch.lookup, %bb.x, %.thread.i67.i.us.us.us, %switch.lookup.i68.i.us.us.us, %.lr.ph.split.us.us.us
  %.0.i352.us.us.us = phi i64 [ 0, %.thread.i67.i.us.us.us ], [ %switch.offset.i70.i.us.us.us, %switch.lookup.i68.i.us.us.us ], [ 1, %.lr.ph.split.us.us.us ], [ %switch.ext164, %switch.lookup161 ], [ %switch.ext168, %switch.lookup165 ], [ %switch.ext, %switch.lookup ], [ %spec.select689, %bb.x ]
  %i.uf = trunc nuw i64 %indvars.iv530 to i32
  %i.ug = add i32 %i.mx, %i.uf
  %i.uh = zext i32 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.uh
  %i.uj = load float, ptr %i.ui, align 4
  %i.uk = and i64 %.0.i352.us.us.us, 255
  %i.ul = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.uk ; 5 uses
  %i.um = load float, ptr %i.ul, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  %i.uo = load float, ptr %i.un, align 4
  %i.up = fmul float %i.pv, %i.uo
  %i.uq = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.um, float %i.up)
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.us = load float, ptr %i.ur, align 8
  %i.ut = tail call float @llvm.fmuladd.f32(float %i.px, float %i.us, float %i.uq)
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ul, i64 12
  %i.uv = load float, ptr %i.uu, align 4
  %i.uw = tail call float @llvm.fmuladd.f32(float %i.pz, float %i.uv, float %i.ut)
  %i.ux = fadd float %i.uw, 0.000000e+00
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ul, i64 20
  %i.uz = load float, ptr %i.uy, align 4
  %i.va = tail call float @llvm.fmuladd.f32(float %i.qb, float %i.uz, float %i.ux)
  %i.vb = tail call float @llvm.fmuladd.f32(float %i.uj, float %i.va, float %.0394.us.us.us) ; 2 uses
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  %exitcond535.not = icmp eq i64 %indvars.iv.next531, %wide.trip.count534
  br i1 %exitcond535.not, label %._crit_edge.us.us, label %.lr.ph.split.us.us.us, !llvm.loop !678

._crit_edge.us.us:                                ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel546, %ma_channel_map_get_channel.exit353.us399.us, %ma_channel_map_get_channel.exit353.us.us.us.peel322, %ma_channel_map_get_channel.exit353.us.us.us.peel, %ma_channel_map_get_channel.exit353.us.us.us.peel287, %ma_channel_map_get_channel.exit353.us.us.us, %.lr.ph.split.us.us.us.preheader
  %.us-phi.us.us = phi float [ %i.vb, %ma_channel_map_get_channel.exit353.us.us.us ], [ %i.qw, %ma_channel_map_get_channel.exit353.us.us.us.peel546 ], [ %i.qo, %.lr.ph.split.us.us.us.preheader ], [ %i.sy, %ma_channel_map_get_channel.exit353.us.us.us.peel322 ], [ %i.ro, %ma_channel_map_get_channel.exit353.us.us.us.peel ], [ %i.sg, %ma_channel_map_get_channel.exit353.us.us.us.peel287 ], [ %i.tx, %ma_channel_map_get_channel.exit353.us399.us ]
  %i.vc = trunc nuw nsw i64 %indvars.iv551 to i32
  %i.vd = add i32 %i.my, %i.vc
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ve
  store float %.us-phi.us.us, ptr %i.vf, align 4
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %exitcond555.not = icmp eq i64 %indvars.iv.next552, %wide.trip.count554
  br i1 %exitcond555.not, label %._crit_edge397.us, label %.lr.ph396.split.us.us

._crit_edge397.us:                                ; preds = %._crit_edge.us.us, %ma_channel_map_get_channel.exit350.us409.prol.loopexit, %ma_channel_map_get_channel.exit350.us409, %ma_channel_map_get_channel.exit350.us405.us.prol.loopexit, %ma_channel_map_get_channel.exit350.us405.us, %middle.block89, %middle.block78
  %i.vg = add i32 %.5406.us, 1                    ; 2 uses
  %i.vh = zext i32 %i.vg to i64
  %i.vi = icmp ugt i64 %6, %i.vh
  br i1 %i.vi, label %.preheader370.us, label %.loopexit

.preheader369:                                    ; preds = %bb.r
  %.not471 = icmp eq i32 %2, 0
  br i1 %.not471, label %.loopexit362.thread, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader369
  %i.vj = icmp eq ptr %1, null
  %.not472 = icmp eq i32 %5, 0
  %i.vk = icmp eq ptr %4, null
  %wide.trip.count579 = zext nneg i32 %2 to i64   ; 6 uses
  %wide.trip.count569 = zext nneg i32 %5 to i64   ; 3 uses
  %wide.trip.count574 = zext nneg i32 %5 to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph415, %._crit_edge
  %indvars.iv576 = phi i64 [ 0, %.lr.ph415 ], [ %indvars.iv.next577, %._crit_edge ] ; 4 uses
  br i1 %i.vj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.vl = trunc nuw nsw i64 %indvars.iv576 to i32
  %i.vm = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %2, i32 noundef %i.vl)
  br label %ma_channel_map_get_channel.exit

bb.aa:                                            ; preds = %bb.y
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv576
  %i.vo = load i8, ptr %i.vn, align 1
  br label %ma_channel_map_get_channel.exit

ma_channel_map_get_channel.exit:                  ; preds = %bb.z, %bb.aa
  %.0.i344 = phi i8 [ %i.vm, %bb.z ], [ %i.vo, %bb.aa ]
  br i1 %.not472, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ma_channel_map_get_channel.exit
  %i.vp = zext i8 %.0.i344 to i64
  %i.vq = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.vp ; 5 uses
  %i.vr = load float, ptr %i.vq, align 8          ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  %i.vt = load float, ptr %i.vs, align 4          ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.vv = load float, ptr %i.vu, align 8          ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vq, i64 12
  %i.vx = load float, ptr %i.vw, align 4          ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vq, i64 20
  %i.vz = load float, ptr %i.vy, align 4          ; 2 uses
  %i.wa = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv576 ; 2 uses
  br i1 %i.vk, label %ma_channel_map_get_channel.exit347.us, label %ma_channel_map_get_channel.exit347

ma_channel_map_get_channel.exit347.us:            ; preds = %.lr.ph, %ma_channel_map_get_channel.exit347.us
  %indvars.iv571 = phi i64 [ %indvars.iv.next572, %ma_channel_map_get_channel.exit347.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.wb = trunc nuw i64 %indvars.iv571 to i32
  %i.wc = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %5, i32 noundef %i.wb)
  %i.wd = zext nneg i8 %i.wc to i64
  %i.we = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.wd ; 5 uses
  %i.wf = load float, ptr %i.we, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  %i.wh = load float, ptr %i.wg, align 4
  %i.wi = fmul float %i.vt, %i.wh
  %i.wj = tail call float @llvm.fmuladd.f32(float %i.vr, float %i.wf, float %i.wi)
  %i.wk = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %i.wl = load float, ptr %i.wk, align 8
  %i.wm = tail call float @llvm.fmuladd.f32(float %i.vv, float %i.wl, float %i.wj)
  %i.wn = getelementptr inbounds nuw i8, ptr %i.we, i64 12
  %i.wo = load float, ptr %i.wn, align 4
  %i.wp = tail call float @llvm.fmuladd.f32(float %i.vx, float %i.wo, float %i.wm)
  %i.wq = fadd float %i.wp, 0.000000e+00
  %i.wr = getelementptr inbounds nuw i8, ptr %i.we, i64 20
  %i.ws = load float, ptr %i.wr, align 4
  %i.wt = tail call float @llvm.fmuladd.f32(float %i.vz, float %i.ws, float %i.wq)
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %indvars.iv571
  store float %i.wt, ptr %i.wu, align 4
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %exitcond575.not = icmp eq i64 %indvars.iv.next572, %wide.trip.count574
  br i1 %exitcond575.not, label %._crit_edge, label %ma_channel_map_get_channel.exit347.us

ma_channel_map_get_channel.exit347:               ; preds = %.lr.ph, %ma_channel_map_get_channel.exit347
  %indvars.iv566 = phi i64 [ %indvars.iv.next567, %ma_channel_map_get_channel.exit347 ], [ 0, %.lr.ph ] ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv566
  %i.ww = load i8, ptr %i.wv, align 1
  %i.wx = zext i8 %i.ww to i64
  %i.wy = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.wx ; 5 uses
  %i.wz = load float, ptr %i.wy, align 8
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 4
  %i.xb = load float, ptr %i.xa, align 4
  %i.xc = fmul float %i.vt, %i.xb
  %i.xd = tail call float @llvm.fmuladd.f32(float %i.vr, float %i.wz, float %i.xc)
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  %i.xf = load float, ptr %i.xe, align 8
  %i.xg = tail call float @llvm.fmuladd.f32(float %i.vv, float %i.xf, float %i.xd)
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wy, i64 12
  %i.xi = load float, ptr %i.xh, align 4
  %i.xj = tail call float @llvm.fmuladd.f32(float %i.vx, float %i.xi, float %i.xg)
  %i.xk = fadd float %i.xj, 0.000000e+00
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wy, i64 20
  %i.xm = load float, ptr %i.xl, align 4
  %i.xn = tail call float @llvm.fmuladd.f32(float %i.vz, float %i.xm, float %i.xk)
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %indvars.iv566
  store float %i.xn, ptr %i.xo, align 4
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next567, %wide.trip.count569
  br i1 %exitcond570.not, label %._crit_edge, label %ma_channel_map_get_channel.exit347

._crit_edge:                                      ; preds = %ma_channel_map_get_channel.exit347, %ma_channel_map_get_channel.exit347.us, %ma_channel_map_get_channel.exit
  %indvars.iv.next577 = add nuw nsw i64 %indvars.iv576, 1 ; 2 uses
  %exitcond580.not = icmp eq i64 %indvars.iv.next577, %wide.trip.count579
  br i1 %exitcond580.not, label %._crit_edge416, label %bb.y

._crit_edge416:                                   ; preds = %._crit_edge
  switch i32 %2, label %.loopexit362 [
    i32 8, label %bb.ab
    i32 6, label %.preheader367
  ]

.preheader367:                                    ; preds = %._crit_edge416
  %.not473 = icmp eq i64 %6, 0
  br i1 %.not473, label %.loopexit362, label %.preheader366.lr.ph

.preheader366.lr.ph:                              ; preds = %.preheader367
  %.not474 = icmp eq i32 %5, 0
  %i.xp = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.xq = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.xr = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.xs = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.xt = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %wide.trip.count584 = zext nneg i32 %5 to i64
  br label %.preheader366

bb.ab:                                            ; preds = %._crit_edge416
  %i.xu = icmp eq i32 %5, 2
  %.not477 = icmp eq i64 %6, 0                    ; 2 uses
  br i1 %i.xu, label %.preheader361, label %.preheader364

.preheader364:                                    ; preds = %bb.ab
  br i1 %.not477, label %.loopexit362, label %.preheader363.lr.ph

.preheader363.lr.ph:                              ; preds = %.preheader364
  %.not476 = icmp eq i32 %5, 0
  %i.xv = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.xw = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.xx = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.xy = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.xz = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.ya = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.yb = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %wide.trip.count589 = zext nneg i32 %5 to i64
  br label %.preheader363

.preheader361:                                    ; preds = %bb.ab
  br i1 %.not477, label %.loopexit362, label %.lr.ph455

.lr.ph455:                                        ; preds = %.preheader361
  %i.yc = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.yd = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ye = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.yf = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.yg = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.yh = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.yi = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %i.yj = load <2 x float>, ptr %i.b, align 16    ; 4 uses
  %i.yk = load <2 x float>, ptr %i.yc, align 16   ; 4 uses
  %i.yl = load <2 x float>, ptr %i.yd, align 16   ; 3 uses
  %i.ym = load <2 x float>, ptr %i.ye, align 16   ; 3 uses
  %i.yn = load <2 x float>, ptr %i.yf, align 16   ; 4 uses
  %i.yo = load <2 x float>, ptr %i.yg, align 16   ; 4 uses
  %i.yp = load <2 x float>, ptr %i.yh, align 16   ; 3 uses
  %i.yq = load <2 x float>, ptr %i.yi, align 16   ; 3 uses
  %i.yr = trunc i64 %6 to i32                     ; 3 uses
  %min.iters.check96 = icmp ult i32 %i.yr, 4
  %i.ys = add i64 %6, -536870913
  %i.yt = icmp ult i64 %i.ys, -536870912
  %or.cond170 = or i1 %min.iters.check96, %i.yt
  br i1 %or.cond170, label %scalar.ph95.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph455
  %i.yu = shl nuw nsw i64 %6, 5
  %scevgep = getelementptr i8, ptr %0, i64 %i.yu
  %i.yv = shl nuw nsw i64 %6, 3
  %scevgep94 = getelementptr i8, ptr %3, i64 %i.yv
  %bound0 = icmp ult ptr %0, %scevgep94
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph95.preheader, label %vector.ph97

vector.ph97:                                      ; preds = %vector.memcheck
  %n.vec98 = and i32 %i.yr, 1073741820            ; 4 uses
  %i.yw = shufflevector <2 x float> %i.yj, <2 x float> %i.yk, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.yx = shufflevector <2 x float> %i.yj, <2 x float> %i.yk, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.yy = shufflevector <2 x float> %i.yl, <2 x float> %i.ym, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.yz = shufflevector <2 x float> %i.yl, <2 x float> %i.ym, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.za = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.zb = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.zc = shufflevector <2 x float> %i.yp, <2 x float> %i.yq, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.zd = shufflevector <2 x float> %i.yp, <2 x float> %i.yq, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.ze = shufflevector <8 x float> %i.yw, <8 x float> %i.yy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zf = shufflevector <8 x float> %i.yx, <8 x float> %i.yz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zg = shufflevector <8 x float> %i.za, <8 x float> %i.zc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zh = shufflevector <8 x float> %i.zb, <8 x float> %i.zd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph97
  %index132 = phi i32 [ 0, %vector.ph97 ], [ %index.next134, %vector.body131 ] ; 3 uses
  %i.zi = shl i32 %index132, 1
  %i.zj = zext i32 %i.zi to i64
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zj
  %wide.vec = load <8 x float>, ptr %i.zk, align 4, !alias.scope !692 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %strided.vec133 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 4 uses
  %i.zl = shl i32 %index132, 3
  %i.zm = zext i32 %i.zl to i64
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zm
  %i.zo = shufflevector <4 x float> %strided.vec133, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
end_hunk_0
begin_hunk_1_@ma_channel_map_apply_f32:bb.a
  %interleaved.vec = shufflevector <16 x float> %i.zz, <16 x float> %i.aad, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.zn, align 4, !alias.scope !693, !noalias !692
  %index.next134 = add nuw i32 %index132, 4       ; 2 uses
  %i.aae = icmp eq i32 %index.next134, %n.vec98
  br i1 %i.aae, label %middle.block135, label %vector.body131, !llvm.loop !682

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i32 %n.vec98, %i.yr
  br i1 %cmp.n136, label %.loopexit362, label %scalar.ph95.preheader

scalar.ph95.preheader:                            ; preds = %vector.memcheck, %.lr.ph455, %middle.block135
  %.0314454.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph455 ], [ %n.vec98, %middle.block135 ]
  %i.aaf = shufflevector <2 x float> %i.yj, <2 x float> %i.yk, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aag = shufflevector <2 x float> %i.yl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aah = shufflevector <4 x float> %i.aaf, <4 x float> %i.aag, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aai = shufflevector <2 x float> %i.ym, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aaj = shufflevector <4 x float> %i.aah, <4 x float> %i.aai, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aak = shufflevector <2 x float> %i.yj, <2 x float> %i.yk, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aal = shufflevector <4 x float> %i.aak, <4 x float> %i.aag, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aam = shufflevector <4 x float> %i.aal, <4 x float> %i.aai, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aan = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aao = shufflevector <2 x float> %i.yp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aap = shufflevector <4 x float> %i.aan, <4 x float> %i.aao, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aaq = shufflevector <2 x float> %i.yq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aar = shufflevector <4 x float> %i.aap, <4 x float> %i.aaq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aas = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aat = shufflevector <4 x float> %i.aas, <4 x float> %i.aao, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aau = shufflevector <4 x float> %i.aat, <4 x float> %i.aaq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %scalar.ph95

scalar.ph95:                                      ; preds = %scalar.ph95.preheader, %scalar.ph95
  %.0314454 = phi i32 [ %i.abl, %scalar.ph95 ], [ %.0314454.ph, %scalar.ph95.preheader ] ; 3 uses
  %i.aav = shl i32 %.0314454, 1
  %i.aaw = zext i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aaw
  %i.aay = shl i32 %.0314454, 3                   ; 2 uses
  %i.aaz = zext i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aaz
  %i.abb = load <2 x float>, ptr %i.aax, align 4  ; 2 uses
  %i.abc = shufflevector <2 x float> %i.abb, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abc, <4 x float> %i.aaj, <4 x float> zeroinitializer)
  %i.abe = shufflevector <2 x float> %i.abb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.abf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abe, <4 x float> %i.aam, <4 x float> %i.abd)
  store <4 x float> %i.abf, ptr %i.aba, align 4
  %i.abg = or disjoint i32 %i.aay, 4
  %i.abh = zext i32 %i.abg to i64
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abh
  %i.abj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abc, <4 x float> %i.aar, <4 x float> zeroinitializer)
  %i.abk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abe, <4 x float> %i.aau, <4 x float> %i.abj)
  store <4 x float> %i.abk, ptr %i.abi, align 4
  %i.abl = add i32 %.0314454, 1                   ; 3 uses
  %i.abm = zext i32 %i.abl to i64
  %i.abn = icmp ugt i64 %6, %i.abm
  br i1 %i.abn, label %scalar.ph95, label %.loopexit362, !llvm.loop !683

.preheader363:                                    ; preds = %.preheader363.lr.ph, %._crit_edge443
  %.1315452 = phi i32 [ 0, %.preheader363.lr.ph ], [ %i.adg, %._crit_edge443 ] ; 3 uses
  br i1 %.not476, label %._crit_edge443, label %.lr.ph442

.lr.ph442:                                        ; preds = %.preheader363
  %i.abo = mul i32 %.1315452, %5
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph442, %bb.ac
  %indvars.iv586 = phi i64 [ 0, %.lr.ph442 ], [ %indvars.iv.next587, %bb.ac ] ; 10 uses
  %i.abp = phi <4 x float> [ zeroinitializer, %.lr.ph442 ], [ %i.ack, %bb.ac ]
  %i.abq = phi <4 x float> [ zeroinitializer, %.lr.ph442 ], [ %i.acx, %bb.ac ]
  %i.abr = trunc nuw i64 %indvars.iv586 to i32
  %i.abs = add i32 %i.abo, %i.abr
  %i.abt = zext i32 %i.abs to i64
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abt
  %i.abv = load float, ptr %i.abu, align 4
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv586
  %i.abx = load float, ptr %i.abw, align 4
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %indvars.iv586
  %i.abz = load float, ptr %i.aby, align 4
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %indvars.iv586
  %i.acb = load float, ptr %i.aca, align 4
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv586
  %i.acd = load float, ptr %i.acc, align 4
  %i.ace = insertelement <4 x float> poison, float %i.abv, i64 0
  %i.acf = shufflevector <4 x float> %i.ace, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acg = insertelement <4 x float> poison, float %i.abx, i64 0
  %i.ach = insertelement <4 x float> %i.acg, float %i.abz, i64 1
  %i.aci = insertelement <4 x float> %i.ach, float %i.acb, i64 2
  %i.acj = insertelement <4 x float> %i.aci, float %i.acd, i64 3
  %i.ack = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acf, <4 x float> %i.acj, <4 x float> %i.abp) ; 2 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %indvars.iv586
  %i.acm = load float, ptr %i.acl, align 4
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv586
  %i.aco = load float, ptr %i.acn, align 4
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv586
  %i.acq = load float, ptr %i.acp, align 4
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %indvars.iv586
  %i.acs = load float, ptr %i.acr, align 4
  %i.act = insertelement <4 x float> poison, float %i.acm, i64 0
  %i.acu = insertelement <4 x float> %i.act, float %i.aco, i64 1
  %i.acv = insertelement <4 x float> %i.acu, float %i.acq, i64 2
  %i.acw = insertelement <4 x float> %i.acv, float %i.acs, i64 3
  %i.acx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acf, <4 x float> %i.acw, <4 x float> %i.abq) ; 2 uses
  %indvars.iv.next587 = add nuw nsw i64 %indvars.iv586, 1 ; 2 uses
  %exitcond590.not = icmp eq i64 %indvars.iv.next587, %wide.trip.count589
  br i1 %exitcond590.not, label %._crit_edge443, label %bb.ac

._crit_edge443:                                   ; preds = %bb.ac, %.preheader363
  %i.acy = phi <4 x float> [ zeroinitializer, %.preheader363 ], [ %i.ack, %bb.ac ]
  %i.acz = phi <4 x float> [ zeroinitializer, %.preheader363 ], [ %i.acx, %bb.ac ]
  %i.ada = shl i32 %.1315452, 3                   ; 2 uses
  %i.adb = zext i32 %i.ada to i64
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adb
  store <4 x float> %i.acy, ptr %i.adc, align 4
  %i.add = or disjoint i32 %i.ada, 4
  %i.ade = zext i32 %i.add to i64
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ade
  store <4 x float> %i.acz, ptr %i.adf, align 4
  %i.adg = add i32 %.1315452, 1                   ; 3 uses
  %i.adh = zext i32 %i.adg to i64
  %i.adi = icmp ugt i64 %6, %i.adh
  br i1 %i.adi, label %.preheader363, label %.loopexit362

.preheader366:                                    ; preds = %.preheader366.lr.ph, %._crit_edge425
  %.2431 = phi i32 [ 0, %.preheader366.lr.ph ], [ %i.afb, %._crit_edge425 ] ; 3 uses
  br i1 %.not474, label %._crit_edge425, label %.lr.ph424

.lr.ph424:                                        ; preds = %.preheader366
  %i.adj = mul i32 %.2431, %5
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph424, %bb.ad
  %indvars.iv581 = phi i64 [ 0, %.lr.ph424 ], [ %indvars.iv.next582, %bb.ad ] ; 8 uses
  %i.adk = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aeo, %bb.ad ]
  %i.adl = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aeh, %bb.ad ]
  %i.adm = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aea, %bb.ad ]
  %i.adn = trunc nuw i64 %indvars.iv581 to i32
  %i.ado = add i32 %i.adj, %i.adn
  %i.adp = zext i32 %i.ado to i64
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.adp
  %i.adr = load float, ptr %i.adq, align 4
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv581
  %i.adt = load float, ptr %i.ads, align 4
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %indvars.iv581
  %i.adv = load float, ptr %i.adu, align 4
  %i.adw = insertelement <2 x float> poison, float %i.adr, i64 0
  %i.adx = shufflevector <2 x float> %i.adw, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ady = insertelement <2 x float> poison, float %i.adt, i64 0
  %i.adz = insertelement <2 x float> %i.ady, float %i.adv, i64 1
  %i.aea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adx, <2 x float> %i.adz, <2 x float> %i.adm) ; 2 uses
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %indvars.iv581
  %i.aec = load float, ptr %i.aeb, align 4
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %indvars.iv581
  %i.aee = load float, ptr %i.aed, align 4
  %i.aef = insertelement <2 x float> poison, float %i.aec, i64 0
  %i.aeg = insertelement <2 x float> %i.aef, float %i.aee, i64 1
  %i.aeh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adx, <2 x float> %i.aeg, <2 x float> %i.adl) ; 2 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv581
  %i.aej = load float, ptr %i.aei, align 4
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %indvars.iv581
  %i.ael = load float, ptr %i.aek, align 4
  %i.aem = insertelement <2 x float> poison, float %i.aej, i64 0
  %i.aen = insertelement <2 x float> %i.aem, float %i.ael, i64 1
  %i.aeo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adx, <2 x float> %i.aen, <2 x float> %i.adk) ; 2 uses
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %exitcond585.not = icmp eq i64 %indvars.iv.next582, %wide.trip.count584
  br i1 %exitcond585.not, label %._crit_edge425, label %bb.ad

._crit_edge425:                                   ; preds = %bb.ad, %.preheader366
  %i.aep = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aeo, %bb.ad ]
  %i.aeq = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aeh, %bb.ad ]
  %i.aer = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aea, %bb.ad ]
  %i.aes = mul i32 %.2431, 6                      ; 3 uses
  %i.aet = zext i32 %i.aes to i64
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aet
  store <2 x float> %i.aer, ptr %i.aeu, align 4
  %i.aev = add i32 %i.aes, 2
  %i.aew = zext i32 %i.aev to i64
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aew
  store <2 x float> %i.aeq, ptr %i.aex, align 4
  %i.aey = add i32 %i.aes, 4
  %i.aez = zext i32 %i.aey to i64
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aez
  store <2 x float> %i.aep, ptr %i.afa, align 4
  %i.afb = add i32 %.2431, 1                      ; 3 uses
  %i.afc = zext i32 %i.afb to i64
  %i.afd = icmp ugt i64 %6, %i.afc
  br i1 %i.afd, label %.preheader366, label %.loopexit362

.loopexit362:                                     ; preds = %._crit_edge425, %._crit_edge443, %scalar.ph95, %middle.block135, %.preheader367, %.preheader364, %.preheader361, %._crit_edge416
  %.3 = phi i32 [ 0, %._crit_edge416 ], [ %i.abl, %scalar.ph95 ], [ %i.adg, %._crit_edge443 ], [ 0, %.preheader361 ], [ 0, %.preheader364 ], [ 0, %.preheader367 ], [ %n.vec98, %middle.block135 ], [ %i.afb, %._crit_edge425 ] ; 2 uses
  %i.afe = zext i32 %.3 to i64
  %i.aff = icmp ugt i64 %6, %i.afe
  br i1 %i.aff, label %.preheader360.lr.ph, label %.loopexit

.loopexit362.thread:                              ; preds = %.preheader369
  %.not690 = icmp eq i64 %6, 0
  br i1 %.not690, label %.loopexit, label %.preheader360

.preheader360.lr.ph:                              ; preds = %.loopexit362
  %.not479 = icmp eq i32 %5, 0
  %wide.trip.count599 = zext nneg i32 %2 to i64
  %wide.trip.count604 = zext nneg i32 %2 to i64
  %i.afg = add nsw i64 %wide.trip.count579, -1    ; 2 uses
  %xtraiter333 = and i64 %wide.trip.count569, 3   ; 3 uses
  %i.afh = add nsw i32 %5, -1
  %i.afi = icmp ult i32 %i.afh, 3
  %unroll_iter338 = and i64 %wide.trip.count569, 60
  %lcmp.mod335.not = icmp eq i64 %xtraiter333, 0
  %lcmp.mod337 = icmp ne i64 %xtraiter333, 0
  %min.iters.check140 = icmp ult i32 %2, 8
  %i.afj = trunc nsw i64 %i.afg to i32
  %i.afk = icmp ugt i64 %i.afg, 4294967295
  %n.vec142 = and i64 %wide.trip.count579, 56     ; 3 uses
  %cmp.n147 = icmp eq i64 %n.vec142, %wide.trip.count579
  %xtraiter340 = and i64 %wide.trip.count579, 3   ; 2 uses
  %lcmp.mod341.not = icmp eq i64 %xtraiter340, 0
  br label %.preheader360.us

.preheader360.us:                                 ; preds = %.preheader360.lr.ph, %._crit_edge463.us
  %.4464.us = phi i32 [ %i.aig, %._crit_edge463.us ], [ %.3, %.preheader360.lr.ph ] ; 3 uses
  %i.afl = mul i32 %.4464.us, %5                  ; 5 uses
  %i.afm = mul i32 %.4464.us, %2                  ; 8 uses
  br i1 %.not479, label %.preheader.us466.preheader, label %.preheader.us.us

.preheader.us466.preheader:                       ; preds = %.preheader360.us
  br i1 %min.iters.check140, label %.preheader.us466.preheader171, label %vector.scevcheck138

vector.scevcheck138:                              ; preds = %.preheader.us466.preheader
  %i.afn = xor i32 %i.afm, -1
  %i.afo = icmp ult i32 %i.afn, %i.afj
  %i.afp = or i1 %i.afo, %i.afk
  br i1 %i.afp, label %.preheader.us466.preheader171, label %vector.body143

vector.body143:                                   ; preds = %vector.scevcheck138, %vector.body143
  %index144 = phi i64 [ %index.next145, %vector.body143 ], [ 0, %vector.scevcheck138 ] ; 2 uses
  %i.afq = trunc nuw nsw i64 %index144 to i32
  %i.afr = add i32 %i.afm, %i.afq
  %i.afs = zext i32 %i.afr to i64
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afs ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 16
  store <4 x float> zeroinitializer, ptr %i.aft, align 4
  store <4 x float> zeroinitializer, ptr %i.afu, align 4
  %index.next145 = add nuw i64 %index144, 8       ; 2 uses
  %i.afv = icmp eq i64 %index.next145, %n.vec142
  br i1 %i.afv, label %middle.block146, label %vector.body143, !llvm.loop !684

middle.block146:                                  ; preds = %vector.body143
  br i1 %cmp.n147, label %._crit_edge463.us, label %.preheader.us466.preheader171

.preheader.us466.preheader171:                    ; preds = %vector.scevcheck138, %.preheader.us466.preheader, %middle.block146
  %indvars.iv601.ph = phi i64 [ 0, %vector.scevcheck138 ], [ 0, %.preheader.us466.preheader ], [ %n.vec142, %middle.block146 ] ; 3 uses
  br i1 %lcmp.mod341.not, label %.preheader.us466.prol.loopexit, label %.preheader.us466.prol

.preheader.us466.prol:                            ; preds = %.preheader.us466.preheader171, %.preheader.us466.prol
  %indvars.iv601.prol = phi i64 [ %indvars.iv.next602.prol, %.preheader.us466.prol ], [ %indvars.iv601.ph, %.preheader.us466.preheader171 ] ; 2 uses
  %prol.iter342 = phi i64 [ %prol.iter342.next, %.preheader.us466.prol ], [ 0, %.preheader.us466.preheader171 ]
  %i.afw = trunc nuw nsw i64 %indvars.iv601.prol to i32
  %i.afx = add i32 %i.afm, %i.afw
  %i.afy = zext i32 %i.afx to i64
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afy
  store float 0.000000e+00, ptr %i.afz, align 4
  %indvars.iv.next602.prol = add nuw nsw i64 %indvars.iv601.prol, 1 ; 2 uses
  %prol.iter342.next = add i64 %prol.iter342, 1   ; 2 uses
  %prol.iter342.cmp.not = icmp eq i64 %prol.iter342.next, %xtraiter340
  br i1 %prol.iter342.cmp.not, label %.preheader.us466.prol.loopexit, label %.preheader.us466.prol, !llvm.loop !685

.preheader.us466.prol.loopexit:                   ; preds = %.preheader.us466.prol, %.preheader.us466.preheader171
  %indvars.iv601.unr = phi i64 [ %indvars.iv601.ph, %.preheader.us466.preheader171 ], [ %indvars.iv.next602.prol, %.preheader.us466.prol ]
  %11 = sub nsw i64 %indvars.iv601.ph, %wide.trip.count579
  %12 = icmp ugt i64 %11, -4
  br i1 %12, label %._crit_edge463.us, label %.preheader.us466.preheader171.new

.preheader.us466.preheader171.new:                ; preds = %.preheader.us466.prol.loopexit
  %invariant.op374 = add i32 1, %i.afm
  %invariant.op376 = add i32 2, %i.afm
  %invariant.op378 = add i32 3, %i.afm
  br label %.preheader.us466

.preheader.us466:                                 ; preds = %.preheader.us466, %.preheader.us466.preheader171.new
  %indvars.iv601 = phi i64 [ %indvars.iv601.unr, %.preheader.us466.preheader171.new ], [ %indvars.iv.next602.3, %.preheader.us466 ] ; 5 uses
  %i.aga = trunc nuw nsw i64 %indvars.iv601 to i32
  %i.agb = add i32 %i.afm, %i.aga
  %i.agc = zext i32 %i.agb to i64
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agc
  store float 0.000000e+00, ptr %i.agd, align 4
  %i.age = trunc i64 %indvars.iv601 to i32
  %.reass375 = add i32 %i.age, %invariant.op374
  %i.agf = zext i32 %.reass375 to i64
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agf
  store float 0.000000e+00, ptr %i.agg, align 4
  %i.agh = trunc i64 %indvars.iv601 to i32
  %.reass377 = add i32 %i.agh, %invariant.op376
  %i.agi = zext i32 %.reass377 to i64
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agi
  store float 0.000000e+00, ptr %i.agj, align 4
  %i.agk = trunc i64 %indvars.iv601 to i32
  %.reass379 = add i32 %i.agk, %invariant.op378
  %i.agl = zext i32 %.reass379 to i64
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agl
  store float 0.000000e+00, ptr %i.agm, align 4
  %indvars.iv.next602.3 = add nuw nsw i64 %indvars.iv601, 4 ; 2 uses
  %exitcond605.not.3 = icmp eq i64 %indvars.iv.next602.3, %wide.trip.count604
  br i1 %exitcond605.not.3, label %._crit_edge463.us, label %.preheader.us466, !llvm.loop !686

.preheader.us.us:                                 ; preds = %.preheader360.us, %._crit_edge460.us.us
  %indvars.iv596 = phi i64 [ %indvars.iv.next597, %._crit_edge460.us.us ], [ 0, %.preheader360.us ] ; 3 uses
  %i.agn = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv596 ; 5 uses
  br i1 %i.afi, label %.epil.preheader332, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %indvars.iv591 = phi i64 [ %indvars.iv.next592.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 6 uses
  %.0312458.us.us = phi float [ %i.aht, %.preheader.us.us.new ], [ 0.000000e+00, %.preheader.us.us ]
  %niter339 = phi i64 [ %niter339.next.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.ago = trunc nuw i64 %indvars.iv591 to i32
  %i.agp = add i32 %i.afl, %i.ago
  %i.agq = zext i32 %i.agp to i64
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.agq
  %i.ags = load float, ptr %i.agr, align 4
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv591
  %i.agu = load float, ptr %i.agt, align 16
  %i.agv = tail call float @llvm.fmuladd.f32(float %i.ags, float %i.agu, float %.0312458.us.us)
  %indvars.iv.next592 = or disjoint i64 %indvars.iv591, 1 ; 2 uses
  %i.agw = trunc nuw i64 %indvars.iv.next592 to i32
  %i.agx = add i32 %i.afl, %i.agw
  %i.agy = zext i32 %i.agx to i64
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.agy
  %i.aha = load float, ptr %i.agz, align 4
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv.next592
  %i.ahc = load float, ptr %i.ahb, align 4
  %i.ahd = tail call float @llvm.fmuladd.f32(float %i.aha, float %i.ahc, float %i.agv)
  %indvars.iv.next592.1 = or disjoint i64 %indvars.iv591, 2 ; 2 uses
  %i.ahe = trunc nuw i64 %indvars.iv.next592.1 to i32
  %i.ahf = add i32 %i.afl, %i.ahe
  %i.ahg = zext i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahg
  %i.ahi = load float, ptr %i.ahh, align 4
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv.next592.1
  %i.ahk = load float, ptr %i.ahj, align 8
  %i.ahl = tail call float @llvm.fmuladd.f32(float %i.ahi, float %i.ahk, float %i.ahd)
  %indvars.iv.next592.2 = or disjoint i64 %indvars.iv591, 3 ; 2 uses
  %i.ahm = trunc nuw i64 %indvars.iv.next592.2 to i32
  %i.ahn = add i32 %i.afl, %i.ahm
  %i.aho = zext i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aho
  %i.ahq = load float, ptr %i.ahp, align 4
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv.next592.2
  %i.ahs = load float, ptr %i.ahr, align 4
  %i.aht = tail call float @llvm.fmuladd.f32(float %i.ahq, float %i.ahs, float %i.ahl) ; 3 uses
  %indvars.iv.next592.3 = add nuw nsw i64 %indvars.iv591, 4 ; 2 uses
  %niter339.next.3 = add i64 %niter339, 4         ; 2 uses
  %niter339.ncmp.3 = icmp eq i64 %niter339.next.3, %unroll_iter338
  br i1 %niter339.ncmp.3, label %._crit_edge460.us.us.unr-lcssa, label %.preheader.us.us.new

._crit_edge460.us.us.unr-lcssa:                   ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod335.not, label %._crit_edge460.us.us, label %.epil.preheader332

.epil.preheader332:                               ; preds = %._crit_edge460.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv591.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next592.3, %._crit_edge460.us.us.unr-lcssa ]
  %.0312458.us.us.epil.init = phi float [ 0.000000e+00, %.preheader.us.us ], [ %i.aht, %._crit_edge460.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod337)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader332
  %indvars.iv591.epil = phi i64 [ %indvars.iv.next592.epil, %bb.ae ], [ %indvars.iv591.epil.init, %.epil.preheader332 ] ; 3 uses
  %.0312458.us.us.epil = phi float [ %i.aib, %bb.ae ], [ %.0312458.us.us.epil.init, %.epil.preheader332 ]
  %epil.iter334 = phi i64 [ %epil.iter334.next, %bb.ae ], [ 0, %.epil.preheader332 ]
  %i.ahu = trunc nuw i64 %indvars.iv591.epil to i32
  %i.ahv = add i32 %i.afl, %i.ahu
  %i.ahw = zext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahw
  %i.ahy = load float, ptr %i.ahx, align 4
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %indvars.iv591.epil
  %i.aia = load float, ptr %i.ahz, align 4
  %i.aib = tail call float @llvm.fmuladd.f32(float %i.ahy, float %i.aia, float %.0312458.us.us.epil) ; 2 uses
  %indvars.iv.next592.epil = add nuw nsw i64 %indvars.iv591.epil, 1
  %epil.iter334.next = add i64 %epil.iter334, 1   ; 2 uses
  %epil.iter334.cmp.not = icmp eq i64 %epil.iter334.next, %xtraiter333
  br i1 %epil.iter334.cmp.not, label %._crit_edge460.us.us, label %bb.ae, !llvm.loop !687

._crit_edge460.us.us:                             ; preds = %bb.ae, %._crit_edge460.us.us.unr-lcssa
  %.lcssa = phi float [ %i.aht, %._crit_edge460.us.us.unr-lcssa ], [ %i.aib, %bb.ae ]
  %i.aic = trunc nuw nsw i64 %indvars.iv596 to i32
  %i.aid = add i32 %i.afm, %i.aic
  %i.aie = zext i32 %i.aid to i64
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aie
  store float %.lcssa, ptr %i.aif, align 4
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1 ; 2 uses
  %exitcond600.not = icmp eq i64 %indvars.iv.next597, %wide.trip.count599
  br i1 %exitcond600.not, label %._crit_edge463.us, label %.preheader.us.us

._crit_edge463.us:                                ; preds = %._crit_edge460.us.us, %.preheader.us466.prol.loopexit, %.preheader.us466, %middle.block146
  %i.aig = add i32 %.4464.us, 1                   ; 2 uses
  %i.aih = zext i32 %i.aig to i64
  %i.aii = icmp ugt i64 %6, %i.aih
  br i1 %i.aii, label %.preheader360.us, label %.loopexit

.preheader360:                                    ; preds = %.loopexit362.thread, %.preheader360
  %.4464 = phi i32 [ %i.aij, %.preheader360 ], [ 0, %.loopexit362.thread ]
  %i.aij = add i32 %.4464, 1                      ; 2 uses
  %i.aik = zext i32 %i.aij to i64
  %i.ail = icmp ugt i64 %6, %i.aik
  br i1 %i.ail, label %.preheader360, label %.loopexit

.preheader370:                                    ; preds = %.preheader370.lr.ph, %.preheader370
  %.5406 = phi i32 [ %i.aim, %.preheader370 ], [ 0, %.preheader370.lr.ph ]
  %i.aim = add i32 %.5406, 1                      ; 2 uses
  %i.ain = zext i32 %i.aim to i64
  %i.aio = icmp ugt i64 %6, %i.ain
  br i1 %i.aio, label %.preheader370, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge397.us, %.preheader370, %._crit_edge463.us, %.preheader360, %.loopexit362.thread, %.preheader371, %.loopexit362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %ma_copy_pcm_frames.exit

bb.af:                                            ; preds = %bb.q
  %i.aip = shl i32 %2, 2
  %i.aiq = zext i32 %i.aip to i64
  %i.air = mul i64 %6, %i.aiq                     ; 2 uses
  %.not.i13.i = icmp eq i64 %i.air, 0
  br i1 %.not.i13.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %bb.af, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.ait, %ma_zero_memory_default.exit.i.i ], [ %0, %bb.af ] ; 3 uses
  %.08.i14.i = phi i64 [ %i.ais, %ma_zero_memory_default.exit.i.i ], [ %i.air, %bb.af ] ; 2 uses
  %spec.store.select.i.i355 = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  %.not.i356 = icmp eq ptr %.0.i15.i, null
  br i1 %.not.i356, label %ma_zero_memory_default.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i354
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i355, i1 false)
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.ag, %.lr.ph.i354
  %i.ais = sub nuw i64 %.08.i14.i, %spec.store.select.i.i355 ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i355
  %.not.i.i357 = icmp eq i64 %i.ais, 0
  br i1 %.not.i.i357, label %ma_copy_pcm_frames.exit, label %.lr.ph.i354

ma_copy_pcm_frames.exit:                          ; preds = %.split.i, %.split.us.us.i, %._crit_edge.split.us86.i, %._crit_edge.split.us.us.us.i, %.lr.ph.i.i, %.lr.ph.i, %ma_zero_memory_default.exit.i.i, %bb.af, %.loopexit.i, %.preheader274.i, %bb.f, %bb.e, %.preheader64.i, %bb.d, %bb.c, %bb.b, %.loopexit
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
end_hunk_1
begin_hunk_2_@stb_vorbis_decode_filename:bb.a
  %i.u = call i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef nonnull %i.j, i32 noundef %i.t, ptr noundef nonnull %i.r, i32 noundef %i.n) ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  call fastcc void @vorbis_deinit(ptr noundef nonnull %i.j)
  %i.w = getelementptr i8, ptr %i.j, i64 128
  %.val.i = load ptr, ptr %i.w, align 8
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %stb_vorbis_close.exit.sink.split, label %stb_vorbis_close.exit

.lr.ph:                                           ; preds = %.preheader, %stb_vorbis_close.exit61
  %i.x = phi i32 [ %i.an, %stb_vorbis_close.exit61 ], [ %i.u, %.preheader ] ; 2 uses
  %.04085 = phi ptr [ %.3, %stb_vorbis_close.exit61 ], [ %i.r, %.preheader ] ; 3 uses
  %.04284 = phi i32 [ %.244, %stb_vorbis_close.exit61 ], [ %i.n, %.preheader ] ; 3 uses
  %.04583 = phi i32 [ %i.ab, %stb_vorbis_close.exit61 ], [ 0, %.preheader ]
  %.04782 = phi i32 [ %i.y, %stb_vorbis_close.exit61 ], [ 0, %.preheader ]
  %i.y = add nsw i32 %i.x, %.04782                ; 2 uses
  %i.z = load i32, ptr %i.l, align 4              ; 2 uses
  %i.aa = mul nsw i32 %i.z, %i.x
  %i.ab = add nsw i32 %i.aa, %.04583              ; 4 uses
  %i.ac = add nsw i32 %i.ab, %i.n
  %i.ad = icmp sgt i32 %i.ac, %.04284
  br i1 %i.ad, label %bb.f, label %stb_vorbis_close.exit61

bb.f:                                             ; preds = %.lr.ph
  %i.ae = shl nsw i32 %.04284, 1                  ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 1
  %i.ah = call ptr @realloc(ptr noundef %.04085, i64 noundef %i.ag) #76 ; 2 uses
  %.not58 = icmp eq ptr %i.ah, null
  br i1 %.not58, label %bb.g, label %.stb_vorbis_close.exit61_crit_edge

.stb_vorbis_close.exit61_crit_edge:               ; preds = %bb.f
  %.pre = load i32, ptr %i.l, align 4
  br label %stb_vorbis_close.exit61

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.04085) #61
  call fastcc void @vorbis_deinit(ptr noundef nonnull %i.j)
  %i.ai = getelementptr i8, ptr %i.j, i64 128
  %.val.i59 = load ptr, ptr %i.ai, align 8
  %.not.i.i60 = icmp eq ptr %.val.i59, null
  br i1 %.not.i.i60, label %stb_vorbis_close.exit.sink.split, label %stb_vorbis_close.exit

stb_vorbis_close.exit61:                          ; preds = %.stb_vorbis_close.exit61_crit_edge, %.lr.ph
  %i.aj = phi i32 [ %i.z, %.lr.ph ], [ %.pre, %.stb_vorbis_close.exit61_crit_edge ]
  %.244 = phi i32 [ %.04284, %.lr.ph ], [ %i.ae, %.stb_vorbis_close.exit61_crit_edge ] ; 2 uses
  %.3 = phi ptr [ %.04085, %.lr.ph ], [ %i.ah, %.stb_vorbis_close.exit61_crit_edge ] ; 3 uses
  %i.ak = sext i32 %i.ab to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %.3, i64 %i.ak
  %i.am = sub nsw i32 %.244, %i.ab
  %i.an = call i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef nonnull %i.j, i32 noundef %i.aj, ptr noundef %i.al, i32 noundef %i.am) ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %stb_vorbis_close.exit61, %.preheader
  %.047.lcssa = phi i32 [ 0, %.preheader ], [ %i.y, %stb_vorbis_close.exit61 ] ; 2 uses
  %.040.lcssa = phi ptr [ %i.r, %.preheader ], [ %.3, %stb_vorbis_close.exit61 ]
  store ptr %.040.lcssa, ptr %3, align 8
  call fastcc void @vorbis_deinit(ptr noundef nonnull %i.j)
  %i.ap = getelementptr i8, ptr %i.j, i64 128
  %.val.i62 = load ptr, ptr %i.ap, align 8
  %.not.i.i63 = icmp eq ptr %.val.i62, null
  br i1 %.not.i.i63, label %stb_vorbis_close.exit.sink.split, label %stb_vorbis_close.exit

stb_vorbis_close.exit.sink.split:                 ; preds = %._crit_edge, %bb.g, %bb.e
  %.4.ph = phi i32 [ -2, %bb.g ], [ -2, %bb.e ], [ %.047.lcssa, %._crit_edge ]
  call void @free(ptr noundef nonnull %i.j) #61
  br label %stb_vorbis_close.exit

stb_vorbis_close.exit:                            ; preds = %stb_vorbis_close.exit.sink.split, %bb.a, %bb.g, %._crit_edge, %bb.e, %stb_vorbis_open_filename.exit
  %.4 = phi i32 [ %.047.lcssa, %._crit_edge ], [ -2, %bb.g ], [ -1, %bb.a ], [ -1, %stb_vorbis_open_filename.exit ], [ -2, %bb.e ], [ %.4.ph, %stb_vorbis_close.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.4
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #45

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #46

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #47

; Function Attrs: nounwind uwtable
define hidden i32 @stb_vorbis_decode_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.b = call ptr @stb_vorbis_open_memory(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef null) ; 12 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %stb_vorbis_close.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = shl nsw i32 %i.e, 12                     ; 4 uses
  store i32 %i.e, ptr %2, align 4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.b, align 8
  store i32 %i.g, ptr %3, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = sext i32 %i.f to i64
  %i.i = shl nsw i64 %i.h, 1
  %i.j = call noalias ptr @malloc(i64 noundef %i.i) #74 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.l = load i32, ptr %i.d, align 4
  %i.m = call i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef nonnull %i.b, i32 noundef %i.l, ptr noundef nonnull %i.j, i32 noundef %i.f) ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  call fastcc void @vorbis_deinit(ptr noundef nonnull %i.b)
  %i.o = getelementptr i8, ptr %i.b, i64 128
  %.val.i = load ptr, ptr %i.o, align 8
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %stb_vorbis_close.exit.sink.split, label %stb_vorbis_close.exit

.lr.ph:                                           ; preds = %.preheader, %stb_vorbis_close.exit62
  %i.p = phi i32 [ %i.af, %stb_vorbis_close.exit62 ], [ %i.m, %.preheader ] ; 2 uses
  %.04185 = phi ptr [ %.3, %stb_vorbis_close.exit62 ], [ %i.j, %.preheader ] ; 3 uses
  %.04384 = phi i32 [ %.245, %stb_vorbis_close.exit62 ], [ %i.f, %.preheader ] ; 3 uses
  %.04683 = phi i32 [ %i.t, %stb_vorbis_close.exit62 ], [ 0, %.preheader ]
  %.04882 = phi i32 [ %i.q, %stb_vorbis_close.exit62 ], [ 0, %.preheader ]
  %i.q = add nsw i32 %i.p, %.04882                ; 2 uses
  %i.r = load i32, ptr %i.d, align 4              ; 2 uses
  %i.s = mul nsw i32 %i.r, %i.p
  %i.t = add nsw i32 %i.s, %.04683                ; 4 uses
  %i.u = add nsw i32 %i.t, %i.f
  %i.v = icmp sgt i32 %i.u, %.04384
  br i1 %i.v, label %bb.f, label %stb_vorbis_close.exit62

bb.f:                                             ; preds = %.lr.ph
  %i.w = shl nsw i32 %.04384, 1                   ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 1
  %i.z = call ptr @realloc(ptr noundef %.04185, i64 noundef %i.y) #76 ; 2 uses
  %.not59 = icmp eq ptr %i.z, null
  br i1 %.not59, label %bb.g, label %.stb_vorbis_close.exit62_crit_edge

.stb_vorbis_close.exit62_crit_edge:               ; preds = %bb.f
  %.pre = load i32, ptr %i.d, align 4
  br label %stb_vorbis_close.exit62

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.04185) #61
  call fastcc void @vorbis_deinit(ptr noundef nonnull %i.b)
  %i.aa = getelementptr i8, ptr %i.b, i64 128
  %.val.i60 = load ptr, ptr %i.aa, align 8
  %.not.i.i61 = icmp eq ptr %.val.i60, null
  br i1 %.not.i.i61, label %stb_vorbis_close.exit.sink.split, label %stb_vorbis_close.exit

stb_vorbis_close.exit62:                          ; preds = %.stb_vorbis_close.exit62_crit_edge, %.lr.ph
  %i.ab = phi i32 [ %i.r, %.lr.ph ], [ %.pre, %.stb_vorbis_close.exit62_crit_edge ]
  %.245 = phi i32 [ %.04384, %.lr.ph ], [ %i.w, %.stb_vorbis_close.exit62_crit_edge ] ; 2 uses
  %.3 = phi ptr [ %.04185, %.lr.ph ], [ %i.z, %.stb_vorbis_close.exit62_crit_edge ] ; 3 uses
  %i.ac = sext i32 %i.t to i64
  %i.ad = getelementptr inbounds [2 x i8], ptr %.3, i64 %i.ac
  %i.ae = sub nsw i32 %.245, %i.t
  %i.af = call i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef nonnull %i.b, i32 noundef %i.ab, ptr noundef %i.ad, i32 noundef %i.ae) ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %stb_vorbis_close.exit62, %.preheader
  %.048.lcssa = phi i32 [ 0, %.preheader ], [ %i.q, %stb_vorbis_close.exit62 ] ; 2 uses
  %.041.lcssa = phi ptr [ %i.j, %.preheader ], [ %.3, %stb_vorbis_close.exit62 ]
  store ptr %.041.lcssa, ptr %4, align 8
  call fastcc void @vorbis_deinit(ptr noundef nonnull %i.b)
  %i.ah = getelementptr i8, ptr %i.b, i64 128
  %.val.i63 = load ptr, ptr %i.ah, align 8
  %.not.i.i64 = icmp eq ptr %.val.i63, null
  br i1 %.not.i.i64, label %stb_vorbis_close.exit.sink.split, label %stb_vorbis_close.exit

stb_vorbis_close.exit.sink.split:                 ; preds = %._crit_edge, %bb.g, %bb.e
  %.4.ph = phi i32 [ -2, %bb.e ], [ -2, %bb.g ], [ %.048.lcssa, %._crit_edge ]
  call void @free(ptr noundef nonnull %i.b) #61
  br label %stb_vorbis_close.exit

stb_vorbis_close.exit:                            ; preds = %stb_vorbis_close.exit.sink.split, %bb.g, %._crit_edge, %bb.e, %bb.a
  %.4 = phi i32 [ %.048.lcssa, %._crit_edge ], [ -1, %bb.a ], [ -2, %bb.g ], [ -2, %bb.e ], [ %.4.ph, %stb_vorbis_close.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.4
}

; Function Attrs: nofree nounwind uwtable
define hidden i32 @stb_vorbis_get_samples_float_interleaved(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = sdiv i32 %3, %1                          ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %1) ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1892 ; 8 uses
  %i.i = icmp sgt i32 %spec.select, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 5 uses
  %i.k = icmp sgt i32 %1, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.n = zext nneg i32 %1 to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = add i32 %1, -1
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add i32 %spec.select, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 %i.t)
  %i.u = xor i32 %spec.select, -1
  %i.v = add i32 %smax, %i.u
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 4
  %i.z = add i32 %spec.select, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.w, %i.aa
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %wide.trip.count = zext i32 %spec.select to i64 ; 2 uses
  %i.ad = icmp slt i32 %i.f, %1
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ae = icmp eq i32 %spec.select, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod104 = trunc i32 %spec.select to i1
  br label %bb.b

bb.b:                                             ; preds = %stb_vorbis_get_frame_float.exit, %bb.a
  %.044 = phi ptr [ %2, %bb.a ], [ %.145.lcssa, %stb_vorbis_get_frame_float.exit ] ; 5 uses
  %.042 = phi i32 [ 0, %bb.a ], [ %i.bt, %stb_vorbis_get_frame_float.exit ] ; 6 uses
  %i.af = icmp slt i32 %.042, %i.d
  br i1 %i.af, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ag = load i32, ptr %i.g, align 8
  %i.ah = load i32, ptr %i.h, align 4
  %i.ai = sub nsw i32 %i.ag, %i.ah                ; 2 uses
  %i.aj = add nsw i32 %i.ai, %.042                ; 2 uses
  %.not = icmp slt i32 %i.aj, %i.d
  %i.ak = sub nsw i32 %i.d, %.042
  %spec.select50 = select i1 %.not, i32 %i.ai, i32 %i.ak ; 5 uses
  %i.al = icmp sgt i32 %spec.select50, 0
  br i1 %i.al, label %.preheader55.lr.ph, label %._crit_edge70

.preheader55.lr.ph:                               ; preds = %bb.c
  br i1 %i.i, label %.preheader55.us, label %.preheader55.lr.ph.split

.preheader55.us:                                  ; preds = %.preheader55.lr.ph, %._crit_edge.us
  %.03969.us = phi i32 [ %i.bd, %._crit_edge.us ], [ 0, %.preheader55.lr.ph ] ; 4 uses
  %.14568.us = phi ptr [ %.3.lcssa.us, %._crit_edge.us ], [ %.044, %.preheader55.lr.ph ] ; 3 uses
  br i1 %i.ae, label %.epil.preheader, label %.preheader55.us.new

.preheader55.us.new:                              ; preds = %.preheader55.us, %.preheader55.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader55.us.new ], [ 0, %.preheader55.us ] ; 3 uses
  %.261.us = phi ptr [ %i.bc, %.preheader55.us.new ], [ %.14568.us, %.preheader55.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader55.us.new ], [ 0, %.preheader55.us ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load i32, ptr %i.h, align 4
  %i.ap = add nsw i32 %i.ao, %.03969.us
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4
  %i.at = getelementptr i8, ptr %.261.us, i64 4
  store float %i.as, ptr %.261.us, align 4
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load i32, ptr %i.h, align 4
  %i.ay = add nsw i32 %i.ax, %.03969.us
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = getelementptr i8, ptr %.261.us, i64 8   ; 3 uses
  store float %i.bb, ptr %i.at, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.us.unr-lcssa, label %.preheader55.us.new

._crit_edge.us:                                   ; preds = %.lr.ph66.us.preheader, %..preheader_crit_edge.us
  %.3.lcssa.us = phi ptr [ %.lcssa, %..preheader_crit_edge.us ], [ %scevgep, %.lr.ph66.us.preheader ] ; 2 uses
  %i.bd = add nuw nsw i32 %.03969.us, 1           ; 2 uses
  %i.be = icmp slt i32 %i.bd, %spec.select50
  br i1 %i.be, label %.preheader55.us, label %._crit_edge70

..preheader_crit_edge.us.unr-lcssa:               ; preds = %.preheader55.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.unr-lcssa, %.preheader55.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader55.us ], [ %indvars.iv.next.1, %..preheader_crit_edge.us.unr-lcssa ]
  %.261.us.epil.init = phi ptr [ %.14568.us, %.preheader55.us ], [ %i.bc, %..preheader_crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load i32, ptr %i.h, align 4
  %i.bi = add nsw i32 %i.bh, %.03969.us
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = getelementptr i8, ptr %.261.us.epil.init, i64 4
  store float %i.bl, ptr %.261.us.epil.init, align 4
  br label %..preheader_crit_edge.us

..preheader_crit_edge.us:                         ; preds = %..preheader_crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi ptr [ %i.bc, %..preheader_crit_edge.us.unr-lcssa ], [ %i.bm, %.epil.preheader ] ; 2 uses
  br i1 %i.ad, label %.lr.ph66.us.preheader, label %._crit_edge.us

.lr.ph66.us.preheader:                            ; preds = %..preheader_crit_edge.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.lcssa, i8 0, i64 %i.y, i1 false)
  %i.bn = getelementptr i8, ptr %.14568.us, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.bn, i64 8
  br label %._crit_edge.us

.preheader55.lr.ph.split:                         ; preds = %.preheader55.lr.ph
  br i1 %i.k, label %.preheader55.us72.preheader, label %._crit_edge70

.preheader55.us72.preheader:                      ; preds = %.preheader55.lr.ph.split
  %i.bo = zext nneg i32 %spec.select50 to i64
  %i.bp = mul nuw i64 %i.o, %i.bo
  tail call void @llvm.memset.p0.i64(ptr align 4 %.044, i8 0, i64 %i.bp, i1 false)
  %scevgep90 = getelementptr i8, ptr %.044, i64 %i.s
  %smin = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.aj)
  %4 = xor i32 %.042, -1
  %i.bq = add i32 %smin, %4
  %i.br = zext i32 %i.bq to i64
  %i.bs = mul i64 %i.s, %i.br
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.bs
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %._crit_edge.us, %.preheader55.lr.ph.split, %.preheader55.us72.preheader, %bb.c
  %.145.lcssa = phi ptr [ %.044, %bb.c ], [ %scevgep91, %.preheader55.us72.preheader ], [ %.044, %.preheader55.lr.ph.split ], [ %.3.lcssa.us, %._crit_edge.us ]
  %i.bt = add nsw i32 %spec.select50, %.042       ; 4 uses
  %i.bu = load i32, ptr %i.h, align 4
  %i.bv = add nsw i32 %i.bu, %spec.select50
  store i32 %i.bv, ptr %i.h, align 4
  %i.bw = icmp eq i32 %i.bt, %i.d
  br i1 %i.bw, label %.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.bx = load i8, ptr %i.l, align 4
  %.not.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 2, ptr %i.by, align 4
  br label %stb_vorbis_get_frame_float.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.bz = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b)
  %.not24.i = icmp eq i32 %i.bz, 0
  br i1 %.not24.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.g, align 8
  store i32 0, ptr %i.h, align 4
  br label %stb_vorbis_get_frame_float.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ca = load i32, ptr %i.a, align 4
  %i.cb = load i32, ptr %i.c, align 4             ; 4 uses
  %i.cc = load i32, ptr %i.b, align 4
  %i.cd = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %i.ca, i32 noundef %i.cb, i32 noundef %i.cc)
  %.fr = freeze i32 %i.cd                         ; 2 uses
  %i.ce = load i32, ptr %i.e, align 4             ; 3 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i, label %stb_vorbis_get_frame_float.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = sext i32 %i.cb to i64                   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ce to i64 ; 3 uses
  %min.iters.check = icmp eq i32 %i.ce, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index
  %wide.load = load <2 x ptr>, ptr %i.ch, align 8
  %wide.gep = getelementptr inbounds [4 x i8], <2 x ptr> %wide.load, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index
  store <2 x ptr> %wide.gep, ptr %i.ci, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !1079

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %stb_vorbis_get_frame_float.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cg
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  store ptr %i.cm, ptr %i.cn, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stb_vorbis_get_frame_float.exit, label %scalar.ph, !llvm.loop !1080

stb_vorbis_get_frame_float.exit.thread:           ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %.thread

stb_vorbis_get_frame_float.exit:                  ; preds = %scalar.ph, %middle.block, %bb.h
  store i32 %i.cb, ptr %i.h, align 4
  %i.co = add nsw i32 %.fr, %i.cb
  store i32 %i.co, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %.not49 = icmp eq i32 %.fr, 0
  br i1 %.not49, label %.thread, label %bb.b

.thread:                                          ; preds = %stb_vorbis_get_frame_float.exit, %._crit_edge70, %bb.b, %stb_vorbis_get_frame_float.exit.thread
  %.143 = phi i32 [ %i.bt, %stb_vorbis_get_frame_float.exit.thread ], [ %i.bt, %stb_vorbis_get_frame_float.exit ], [ %i.d, %._crit_edge70 ], [ %.042, %bb.b ]
  ret i32 %.143
}

; Function Attrs: nofree nounwind uwtable
define hidden i32 @stb_vorbis_get_samples_float(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %1) ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1892 ; 8 uses
  %i.h = icmp sgt i32 %spec.select, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %wide.trip.count = zext i32 %spec.select to i64 ; 2 uses
  %wide.trip.count69 = zext i32 %1 to i64         ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 0)
  %i.l = zext nneg i32 %smax to i64               ; 2 uses
  %i.m = sub nsw i64 %wide.trip.count69, %i.l
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %spec.select, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod77 = trunc i32 %spec.select to i1
  %xtraiter78 = and i64 %i.m, 7                   ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  %i.o = sub nsw i64 %i.l, %wide.trip.count69
  %i.p = icmp ugt i64 %i.o, -8
  br label %bb.b

bb.b:                                             ; preds = %stb_vorbis_get_frame_float.exit, %bb.a
  %.042 = phi i32 [ 0, %bb.a ], [ %i.ck, %stb_vorbis_get_frame_float.exit ] ; 7 uses
  %i.q = icmp slt i32 %.042, %3
  br i1 %i.q, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.f, align 8
  %i.s = load i32, ptr %i.g, align 4
  %i.t = sub nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = add nsw i32 %i.t, %.042
  %.not = icmp slt i32 %i.u, %3
  %i.v = sub nsw i32 %3, %.042
  %spec.select49 = select i1 %.not, i32 %i.t, i32 %i.v ; 5 uses
  %.not47 = icmp eq i32 %spec.select49, 0
  br i1 %.not47, label %.loopexit, label %.preheader54

.preheader54:                                     ; preds = %bb.c
  br i1 %i.h, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader54
  %i.w = sext i32 %.042 to i64                    ; 3 uses
  %i.x = sext i32 %spec.select49 to i64
  %i.y = shl nsw i64 %i.x, 2                      ; 3 uses
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.w
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load i32, ptr %i.g, align 4
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr align 4 %i.ag, i64 %i.y, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader54
  %.040.lcssa = phi i32 [ 0, %.preheader54 ], [ %spec.select, %.preheader.loopexit.unr-lcssa ], [ %spec.select, %.epil.preheader ] ; 2 uses
  %i.ah = icmp slt i32 %.040.lcssa, %1
  br i1 %i.ah, label %.lr.ph62, label %.loopexit

.lr.ph62:                                         ; preds = %.preheader
  %i.ai = sext i32 %.042 to i64                   ; 9 uses
  %i.aj = sext i32 %spec.select49 to i64
  %i.ak = shl nsw i64 %i.aj, 2                    ; 9 uses
  %i.al = zext nneg i32 %.040.lcssa to i64        ; 2 uses
  br i1 %lcmp.mod79.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph62, %.prol.preheader
  %indvars.iv66.prol = phi i64 [ %indvars.iv.next67.prol, %.prol.preheader ], [ %i.al, %.lr.ph62 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph62 ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv66.prol
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ai
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 0, i64 %i.ak, i1 false)
  %indvars.iv.next67.prol = add nuw nsw i64 %indvars.iv66.prol, 1 ; 2 uses
end_hunk_2
