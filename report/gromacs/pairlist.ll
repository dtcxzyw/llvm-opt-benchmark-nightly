Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pairlist?download=true
inline.NumInlined: 3346
inline.NumDeleted: 1578
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3gmx11PairlistSet18constructPairlistsENS_19InteractionLocalityERKNS_7GridSetENS_8ArrayRefINS_14PairsearchWorkEEEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEbiP6t_nrnbPNS_19SearchCycleCountingE:bb.a
.lr.ph284.split.split.new:                        ; preds = %.lr.ph284.split.split
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.bp

._crit_edge285.split.split.unr-lcssa:             ; preds = %bb.bp
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge285.split.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge285.split.split.unr-lcssa, %.lr.ph284.split.split
  %indvars.iv352.epil.init = phi i64 [ 0, %.lr.ph284.split.split ], [ %indvars.iv.next353.3, %._crit_edge285.split.split.unr-lcssa ]
  %.epil.init = phi double [ %.promoted, %.lr.ph284.split.split ], [ %i.uz, %._crit_edge285.split.split.unr-lcssa ]
  %.093279.epil.init = phi i32 [ 0, %.lr.ph284.split.split ], [ %.194.3, %._crit_edge285.split.split.unr-lcssa ]
  %lcmp.mod1066 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1066)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.epil.preheader
  %indvars.iv352.epil = phi i64 [ %indvars.iv352.epil.init, %.epil.preheader ], [ %indvars.iv.next353.epil, %bb.bo ] ; 3 uses
  %i.tn = phi double [ %.epil.init, %.epil.preheader ], [ %i.ts, %bb.bo ]
  %.093279.epil = phi i32 [ %.093279.epil.init, %.epil.preheader ], [ %.194.epil, %bb.bo ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bo ]
  %i.to = getelementptr inbounds nuw [216 x i8], ptr %i.nj, i64 %indvars.iv352.epil
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 112
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !337
  %i.tr = sitofp i32 %i.tq to double
  %i.ts = fadd double %i.tn, %i.tr                ; 2 uses
  %i.tt = getelementptr inbounds nuw [256 x i8], ptr %i.sx, i64 %indvars.iv352.epil
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 176
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !94
  %.194.epil = add i32 %i.tv, %.093279.epil       ; 2 uses
  %indvars.iv.next353.epil = add nuw nsw i64 %indvars.iv352.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge285.split.split, label %bb.bo, !llvm.loop !454

._crit_edge285.split.split:                       ; preds = %bb.bo, %._crit_edge285.split.split.unr-lcssa
  %.lcssa1036 = phi double [ %i.uz, %._crit_edge285.split.split.unr-lcssa ], [ %i.ts, %bb.bo ]
  %.194.lcssa = phi i32 [ %.194.3, %._crit_edge285.split.split.unr-lcssa ], [ %.194.epil, %bb.bo ]
  store double %.lcssa1036, ptr %i.hq, align 8, !tbaa !495
  br label %._crit_edge285.thread463

._crit_edge285:                                   ; preds = %bb.bm
  %.pre372 = trunc nuw i8 %.pre to i1
  br i1 %.pre372, label %._crit_edge285.thread, label %._crit_edge285.thread463

bb.bp:                                            ; preds = %bb.bp, %.lr.ph284.split.split.new
  %indvars.iv352 = phi i64 [ 0, %.lr.ph284.split.split.new ], [ %indvars.iv.next353.3, %bb.bp ] ; 6 uses
  %i.tw = phi double [ %.promoted, %.lr.ph284.split.split.new ], [ %i.uz, %bb.bp ]
  %.093279 = phi i32 [ 0, %.lr.ph284.split.split.new ], [ %.194.3, %bb.bp ]
  %niter = phi i64 [ 0, %.lr.ph284.split.split.new ], [ %niter.next.3, %bb.bp ]
  %i.tx = getelementptr inbounds nuw [216 x i8], ptr %i.nj, i64 %indvars.iv352
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 112
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !337
  %i.ua = sitofp i32 %i.tz to double
  %i.ub = fadd double %i.tw, %i.ua
  %i.uc = getelementptr inbounds nuw [256 x i8], ptr %i.sx, i64 %indvars.iv352
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 176
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !94
  %.194 = add i32 %i.ue, %.093279
  %indvars.iv.next353 = or disjoint i64 %indvars.iv352, 1 ; 2 uses
  %i.uf = getelementptr inbounds nuw [216 x i8], ptr %i.nj, i64 %indvars.iv.next353
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 112
  %i.uh = load i32, ptr %i.ug, align 8, !tbaa !337
  %i.ui = sitofp i32 %i.uh to double
  %i.uj = fadd double %i.ub, %i.ui
  %i.uk = getelementptr inbounds nuw [256 x i8], ptr %i.sx, i64 %indvars.iv.next353
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 176
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !94
  %.194.1 = add i32 %i.um, %.194
  %indvars.iv.next353.1 = or disjoint i64 %indvars.iv352, 2 ; 2 uses
  %i.un = getelementptr inbounds nuw [216 x i8], ptr %i.nj, i64 %indvars.iv.next353.1
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 112
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !337
  %i.uq = sitofp i32 %i.up to double
  %i.ur = fadd double %i.uj, %i.uq
  %i.us = getelementptr inbounds nuw [256 x i8], ptr %i.sx, i64 %indvars.iv.next353.1
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 176
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !94
  %.194.2 = add i32 %i.uu, %.194.1
  %indvars.iv.next353.2 = or disjoint i64 %indvars.iv352, 3 ; 2 uses
  %i.uv = getelementptr inbounds nuw [216 x i8], ptr %i.nj, i64 %indvars.iv.next353.2
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 112
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !337
  %i.uy = sitofp i32 %i.ux to double
  %i.uz = fadd double %i.ur, %i.uy                ; 3 uses
  %i.va = getelementptr inbounds nuw [256 x i8], ptr %i.sx, i64 %indvars.iv.next353.2
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 176
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !94
  %.194.3 = add i32 %i.vc, %.194.2                ; 3 uses
  %indvars.iv.next353.3 = add nuw nsw i64 %indvars.iv352, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge285.split.split.unr-lcssa, label %bb.bp, !llvm.loop !450

._crit_edge285.thread:                            ; preds = %.lr.ph284.split.us.split.us, %middle.block, %vec.epilog.middle.block, %._crit_edge285.split.us.split, %._crit_edge285
  %.090.lcssa460 = phi i32 [ 0, %._crit_edge285 ], [ %.lcssa1042, %._crit_edge285.split.us.split ], [ %i.pj, %vec.epilog.middle.block ], [ %i.ou, %middle.block ], [ %i.qd, %.lr.ph284.split.us.split.us ]
  %.091.lcssa458 = phi i32 [ 0, %._crit_edge285 ], [ %.lcssa1043, %._crit_edge285.split.us.split ], [ %i.pk, %vec.epilog.middle.block ], [ %i.ov, %middle.block ], [ %i.qa, %.lr.ph284.split.us.split.us ]
  %.093.lcssa456 = phi i32 [ 0, %._crit_edge285 ], [ %.194.us.lcssa, %._crit_edge285.split.us.split ], [ %i.pl, %vec.epilog.middle.block ], [ %i.ow, %middle.block ], [ %.194.us.us, %.lr.ph284.split.us.split.us ]
  %i.vd = load ptr, ptr %0, align 8, !tbaa !158   ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 64
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !40
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 68
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !41
  %i.vi = mul nsw i32 %i.vh, %i.vf                ; 2 uses
  %i.vj = mul nsw i32 %i.vi, %.090.lcssa460
  %i.vk = sdiv i32 %i.vj, 2
  br label %bb.bq

._crit_edge285.thread463:                         ; preds = %.lr.ph284.split.split.us, %middle.block633, %vec.epilog.middle.block658, %._crit_edge285.split.split, %._crit_edge285
  %.093.lcssa468 = phi i32 [ 0, %._crit_edge285 ], [ %.194.lcssa, %._crit_edge285.split.split ], [ %i.ti, %vec.epilog.middle.block658 ], [ %i.te, %middle.block633 ], [ %.194.us294, %.lr.ph284.split.split.us ]
  %i.vl = load ptr, ptr %i.hr, align 8, !tbaa !143
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 64
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !90 ; 2 uses
  %i.vo = mul nsw i32 %i.vn, %i.vn
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge285.thread463, %._crit_edge285.thread
  %.090.lcssa459 = phi i32 [ %i.vk, %._crit_edge285.thread ], [ 0, %._crit_edge285.thread463 ] ; 2 uses
  %.091.lcssa457 = phi i32 [ %.091.lcssa458, %._crit_edge285.thread ], [ 0, %._crit_edge285.thread463 ] ; 2 uses
  %.093.lcssa455 = phi i32 [ %.093.lcssa456, %._crit_edge285.thread ], [ %.093.lcssa468, %._crit_edge285.thread463 ]
  %i.vp = phi i32 [ %i.vi, %._crit_edge285.thread ], [ %i.vo, %._crit_edge285.thread463 ] ; 2 uses
  %i.vq = sub nsw i32 %.093.lcssa455, %.091.lcssa457
  %i.vr = mul nsw i32 %i.vp, %i.vq
  %i.vs = sub nsw i32 %i.vr, %.090.lcssa459
  store i32 %i.vs, ptr %i.hs, align 4, !tbaa !496
  %i.vt = mul nsw i32 %i.vp, %.091.lcssa457
  store i32 %i.vt, ptr %i.ht, align 8, !tbaa !497
  store i32 %.090.lcssa459, ptr %i.hu, align 4, !tbaa !498
  %i.vu = load i8, ptr %i.hv, align 8, !tbaa !129, !range !131, !noundef !132
  %i.vv = trunc nuw i8 %i.vu to i1
  %i.vw = icmp sgt i32 %i.ng, 1
  %or.cond5 = and i1 %i.vw, %i.vv
  br i1 %or.cond5, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  br i1 %.not106, label %.critedge, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.vx = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !325 ; 2 uses
  %i.vy = extractvalue { i32, i32 } %i.vx, 0
  %i.vz = extractvalue { i32, i32 } %i.vx, 1
  %i.wa = zext i32 %i.vy to i64
  %i.wb = zext i32 %i.vz to i64
  %i.wc = shl nuw i64 %i.wb, 32
  %i.wd = or disjoint i64 %i.wc, %i.wa
  store i64 %i.wd, ptr %i.hw, align 8, !tbaa !328
  %i.we = load ptr, ptr %i.hr, align 8, !tbaa !143 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 256 ; 2 uses
  %i.wg = load i32, ptr %i.h, align 4, !tbaa !101
  %i.wh = sext i32 %i.wg to i64
  %i.wi = getelementptr [256 x i8], ptr %i.wf, i64 %i.wh
  %i.wj = getelementptr i8, ptr %i.wi, i64 -256
  call fastcc void @_ZN3gmxL15combine_nblistsILNS_12PairlistTypeE3EEEvNS_8ArrayRefIKNS_16NbnxnPairlistGpuEEEPS3_(ptr nonnull %i.wf, ptr nonnull %i.wj, ptr noundef %i.we)
  %i.wk = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !325 ; 2 uses
  %i.wl = extractvalue { i32, i32 } %i.wk, 0
  %i.wm = extractvalue { i32, i32 } %i.wk, 1
  %i.wn = zext i32 %i.wl to i64
  %i.wo = zext i32 %i.wm to i64
  %i.wp = shl nuw i64 %i.wo, 32
  %i.wq = load i64, ptr %i.hw, align 8, !tbaa !328
  %i.wr = load i64, ptr %i.hy, align 8, !tbaa !329
  %i.ws = sub i64 %i.wn, %i.wq
  %i.wt = add i64 %i.ws, %i.wr
  %i.wu = add i64 %i.wt, %i.wp
  store i64 %i.wu, ptr %i.hy, align 8, !tbaa !329
  %i.wv = load i32, ptr %i.hx, align 8, !tbaa !330
  %i.ww = add nsw i32 %i.wv, 1
  store i32 %i.ww, ptr %i.hx, align 8, !tbaa !330
  br label %bb.bt

.critedge:                                        ; preds = %bb.br
  %i.wx = load ptr, ptr %i.hr, align 8, !tbaa !143 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 256 ; 2 uses
  %i.wz = zext nneg i32 %i.ng to i64
  %i.xa = getelementptr [256 x i8], ptr %i.wy, i64 %i.wz
  %i.xb = getelementptr i8, ptr %i.xa, i64 -256
  call fastcc void @_ZN3gmxL15combine_nblistsILNS_12PairlistTypeE3EEEvNS_8ArrayRefIKNS_16NbnxnPairlistGpuEEEPS3_(ptr nonnull %i.wy, ptr nonnull %i.xb, ptr noundef %i.wx)
  br label %bb.bt

bb.bt:                                            ; preds = %.critedge, %bb.bs, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.0241.0311, i64 376 ; 2 uses
  %.not266 = icmp eq ptr %i.xc, %i.mb
  br i1 %.not266, label %._crit_edge313, label %.lr.ph312

bb.bu:                                            ; preds = %bb.ax, %._crit_edge313
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.0246.0315, i64 376 ; 2 uses
  %.not262 = icmp eq ptr %i.xd, %i.hk
  br i1 %.not262, label %._crit_edge317, label %bb.ax

bb.bv:                                            ; preds = %._crit_edge317
  %i.xe = load i32, ptr %i.h, align 4, !tbaa !101
  %i.xf = icmp sgt i32 %i.xe, 1
  br i1 %i.xf, label %bb.bw, label %bb.cd

bb.bw:                                            ; preds = %bb.bv
  %i.xg = load ptr, ptr %0, align 8, !tbaa !158   ; 7 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !133
  %i.xj = ptrtoint ptr %i.xi to i64
  %i.xk = ptrtoint ptr %i.xg to i64
  %i.xl = sub i64 %i.xj, %i.xk                    ; 2 uses
  %i.xm = lshr exact i64 %i.xl, 8                 ; 4 uses
  %i.xn = trunc i64 %i.xm to i32                  ; 2 uses
  %i.xo = icmp sgt i32 %i.xn, 0
  br i1 %i.xo, label %iter.check705, label %._crit_edge.i

iter.check705:                                    ; preds = %bb.bw
  %wide.trip.count.i = and i64 %i.xm, 2147483647  ; 5 uses
  %min.iters.check662 = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check662, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check663

vector.main.loop.iter.check663:                   ; preds = %iter.check705
  %min.iters.check664 = icmp samesign ult i64 %wide.trip.count.i, 32
  br i1 %min.iters.check664, label %vec.epilog.ph709, label %vector.ph665

vector.ph665:                                     ; preds = %vector.main.loop.iter.check663
  %n.vec666 = and i64 %i.xm, 2147483616           ; 4 uses
  br label %vector.body667

vector.body667:                                   ; preds = %vector.body667, %vector.ph665
  %index668 = phi i64 [ 0, %vector.ph665 ], [ %index.next693, %vector.body667 ]
  %vec.ind669 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph665 ], [ %vec.ind.next694, %vector.body667 ] ; 5 uses
  %vec.phi670 = phi <8 x i32> [ zeroinitializer, %vector.ph665 ], [ %i.xt, %vector.body667 ]
  %vec.phi671 = phi <8 x i32> [ zeroinitializer, %vector.ph665 ], [ %i.xu, %vector.body667 ]
  %vec.phi672 = phi <8 x i32> [ zeroinitializer, %vector.ph665 ], [ %i.xv, %vector.body667 ]
  %vec.phi673 = phi <8 x i32> [ zeroinitializer, %vector.ph665 ], [ %i.xw, %vector.body667 ]
  %vec.phi674 = phi <8 x i32> [ zeroinitializer, %vector.ph665 ], [ %i.xp, %vector.body667 ]
  %vec.phi675 = phi <8 x i32> [ zeroinitializer, %vector.ph665 ], [ %i.xq, %vector.body667 ]
  %vec.phi676 = phi <8 x i32> [ zeroinitializer, %vector.ph665 ], [ %i.xr, %vector.body667 ]
  %vec.phi677 = phi <8 x i32> [ zeroinitializer, %vector.ph665 ], [ %i.xs, %vector.body667 ]
  %step.add678 = add nuw <8 x i64> %vec.ind669, splat (i64 8)
  %step.add.2679 = add nuw <8 x i64> %vec.ind669, splat (i64 16)
  %step.add.3680 = add nuw <8 x i64> %vec.ind669, splat (i64 24)
  %wide.gep681 = getelementptr inbounds nuw [256 x i8], ptr %i.xg, <8 x i64> %vec.ind669
  %wide.gep682 = getelementptr inbounds nuw [256 x i8], ptr %i.xg, <8 x i64> %step.add678
  %wide.gep683 = getelementptr inbounds nuw [256 x i8], ptr %i.xg, <8 x i64> %step.add.2679
  %wide.gep684 = getelementptr inbounds nuw [256 x i8], ptr %i.xg, <8 x i64> %step.add.3680
  %wide.gep685 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep681, i64 176
  %wide.gep686 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep682, i64 176
  %wide.gep687 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep683, i64 176
  %wide.gep688 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep684, i64 176
  %wide.masked.gather689 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep685, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !101 ; 2 uses
  %wide.masked.gather690 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep686, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !101 ; 2 uses
  %wide.masked.gather691 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep687, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !101 ; 2 uses
  %wide.masked.gather692 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep688, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !101 ; 2 uses
  %i.xp = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi674, <8 x i32> %wide.masked.gather689) ; 2 uses
  %i.xq = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi675, <8 x i32> %wide.masked.gather690) ; 2 uses
  %i.xr = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi676, <8 x i32> %wide.masked.gather691) ; 2 uses
  %i.xs = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi677, <8 x i32> %wide.masked.gather692) ; 2 uses
  %i.xt = add <8 x i32> %wide.masked.gather689, %vec.phi670 ; 2 uses
  %i.xu = add <8 x i32> %wide.masked.gather690, %vec.phi671 ; 2 uses
  %i.xv = add <8 x i32> %wide.masked.gather691, %vec.phi672 ; 2 uses
  %i.xw = add <8 x i32> %wide.masked.gather692, %vec.phi673 ; 2 uses
  %index.next693 = add nuw i64 %index668, 32      ; 2 uses
  %vec.ind.next694 = add nuw <8 x i64> %vec.ind669, splat (i64 32)
  %i.xx = icmp eq i64 %index.next693, %n.vec666
  br i1 %i.xx, label %middle.block695, label %vector.body667, !llvm.loop !455

middle.block695:                                  ; preds = %vector.body667
  %bin.rdx696 = add <8 x i32> %i.xu, %i.xt
  %bin.rdx697 = add <8 x i32> %i.xv, %bin.rdx696
  %bin.rdx698 = add <8 x i32> %i.xw, %bin.rdx697
  %i.xy = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx698) ; 3 uses
  %rdx.minmax = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.xp, <8 x i32> %i.xq)
  %rdx.minmax699 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.xr)
  %rdx.minmax700 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax699, <8 x i32> %i.xs)
  %i.xz = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax700) ; 3 uses
  %cmp.n701 = icmp eq i64 %wide.trip.count.i, %n.vec666
  br i1 %cmp.n701, label %._crit_edge.i, label %vec.epilog.iter.check707

vec.epilog.iter.check707:                         ; preds = %middle.block695
  %i.ya = and i64 %i.xl, 6144
  %min.epilog.iters.check708 = icmp eq i64 %i.ya, 0
  br i1 %min.epilog.iters.check708, label %.lr.ph.i.preheader, label %vec.epilog.ph709, !prof !338

vec.epilog.ph709:                                 ; preds = %vector.main.loop.iter.check663, %vec.epilog.iter.check707
  %vec.epilog.resume.val702 = phi i64 [ %n.vec666, %vec.epilog.iter.check707 ], [ 0, %vector.main.loop.iter.check663 ] ; 2 uses
  %bc.merge.rdx703 = phi i32 [ %i.xy, %vec.epilog.iter.check707 ], [ 0, %vector.main.loop.iter.check663 ]
  %bc.merge.rdx704 = phi i32 [ %i.xz, %vec.epilog.iter.check707 ], [ 0, %vector.main.loop.iter.check663 ]
  %n.vec710 = and i64 %i.xm, 2147483640           ; 3 uses
  %i.yb = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx703, i64 0
  %broadcast.splatinsert711 = insertelement <8 x i32> poison, i32 %bc.merge.rdx704, i64 0
  %broadcast.splat712 = shufflevector <8 x i32> %broadcast.splatinsert711, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert713 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val702, i64 0
  %broadcast.splat714 = shufflevector <8 x i64> %broadcast.splatinsert713, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction715 = or disjoint <8 x i64> %broadcast.splat714, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body716

vec.epilog.vector.body716:                        ; preds = %vec.epilog.vector.body716, %vec.epilog.ph709
  %index717 = phi i64 [ %vec.epilog.resume.val702, %vec.epilog.ph709 ], [ %index.next724, %vec.epilog.vector.body716 ]
  %vec.ind718 = phi <8 x i64> [ %induction715, %vec.epilog.ph709 ], [ %vec.ind.next725, %vec.epilog.vector.body716 ] ; 2 uses
  %vec.phi719 = phi <8 x i32> [ %i.yb, %vec.epilog.ph709 ], [ %i.yd, %vec.epilog.vector.body716 ]
  %vec.phi720 = phi <8 x i32> [ %broadcast.splat712, %vec.epilog.ph709 ], [ %i.yc, %vec.epilog.vector.body716 ]
  %wide.gep721 = getelementptr inbounds nuw [256 x i8], ptr %i.xg, <8 x i64> %vec.ind718
  %wide.gep722 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep721, i64 176
  %wide.masked.gather723 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep722, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !101 ; 2 uses
  %i.yc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi720, <8 x i32> %wide.masked.gather723) ; 2 uses
  %i.yd = add <8 x i32> %wide.masked.gather723, %vec.phi719 ; 2 uses
  %index.next724 = add nuw i64 %index717, 8       ; 2 uses
  %vec.ind.next725 = add nuw nsw <8 x i64> %vec.ind718, splat (i64 8)
  %i.ye = icmp eq i64 %index.next724, %n.vec710
  br i1 %i.ye, label %vec.epilog.middle.block726, label %vec.epilog.vector.body716, !llvm.loop !456

vec.epilog.middle.block726:                       ; preds = %vec.epilog.vector.body716
  %i.yf = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.yd) ; 2 uses
  %i.yg = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.yc) ; 2 uses
  %cmp.n727 = icmp eq i64 %wide.trip.count.i, %n.vec710
  br i1 %cmp.n727, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check705, %vec.epilog.iter.check707, %vec.epilog.middle.block726
  %indvars.iv.i152.ph = phi i64 [ 0, %iter.check705 ], [ %n.vec666, %vec.epilog.iter.check707 ], [ %n.vec710, %vec.epilog.middle.block726 ]
  %.0920.i.ph = phi i32 [ 0, %iter.check705 ], [ %i.xy, %vec.epilog.iter.check707 ], [ %i.yf, %vec.epilog.middle.block726 ]
  %.01819.i.ph = phi i32 [ 0, %iter.check705 ], [ %i.xz, %vec.epilog.iter.check707 ], [ %i.yg, %vec.epilog.middle.block726 ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block695, %vec.epilog.middle.block726, %bb.bw
  %.018.lcssa.i = phi i32 [ 0, %bb.bw ], [ %i.yg, %vec.epilog.middle.block726 ], [ %i.xz, %middle.block695 ], [ %.sroa.speculated.i153, %.lr.ph.i ] ; 2 uses
  %.09.lcssa.i = phi i32 [ 0, %bb.bw ], [ %i.yf, %vec.epilog.middle.block726 ], [ %i.xy, %middle.block695 ], [ %i.yl, %.lr.ph.i ] ; 2 uses
  %i.yh = load ptr, ptr @debug, align 8, !tbaa !232 ; 2 uses
  %.not.i151 = icmp eq ptr %i.yh, null
  br i1 %.not.i151, label %_ZN3gmxL25checkRebalanceSimpleListsENS_8ArrayRefIKNS_16NbnxnPairlistCpuEEE.exit, label %bb.bx

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i152 = phi i64 [ %indvars.iv.next.i154, %.lr.ph.i ], [ %indvars.iv.i152.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0920.i = phi i32 [ %i.yl, %.lr.ph.i ], [ %.0920.i.ph, %.lr.ph.i.preheader ]
  %.01819.i = phi i32 [ %.sroa.speculated.i153, %.lr.ph.i ], [ %.01819.i.ph, %.lr.ph.i.preheader ]
  %i.yi = getelementptr inbounds nuw [256 x i8], ptr %i.xg, i64 %indvars.iv.i152
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 176
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !101 ; 2 uses
  %.sroa.speculated.i153 = call i32 @llvm.smax.i32(i32 %.01819.i, i32 %i.yk) ; 2 uses
  %i.yl = add nsw i32 %i.yk, %.0920.i             ; 2 uses
  %indvars.iv.next.i154 = add nuw nsw i64 %indvars.iv.i152, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i154, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !457

bb.bx:                                            ; preds = %._crit_edge.i
  %i.ym = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.yh, ptr noundef nonnull @.str.33, i32 noundef %.018.lcssa.i, i32 noundef %.09.lcssa.i) #14 ; 0 uses
  br label %_ZN3gmxL25checkRebalanceSimpleListsENS_8ArrayRefIKNS_16NbnxnPairlistCpuEEE.exit

_ZN3gmxL25checkRebalanceSimpleListsENS_8ArrayRefIKNS_16NbnxnPairlistCpuEEE.exit: ; preds = %._crit_edge.i, %bb.bx
  %i.yn = mul nsw i32 %.018.lcssa.i, %i.xn
  %i.yo = sitofp i32 %i.yn to float
  %i.yp = sitofp i32 %.09.lcssa.i to float
  %i.yq = fmul nnan float %i.yp, 1.030000e+00
  %i.yr = fcmp olt float %i.yq, %i.yo
  br i1 %i.yr, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %_ZN3gmxL25checkRebalanceSimpleListsENS_8ArrayRefIKNS_16NbnxnPairlistCpuEEE.exit
  %i.ys = load ptr, ptr %0, align 8, !tbaa !158   ; 9 uses
  %i.yt = load ptr, ptr %i.xh, align 8, !tbaa !133 ; 3 uses
  %i.yu = ptrtoint ptr %i.yt to i64               ; 2 uses
  %i.yv = ptrtoint ptr %i.ys to i64               ; 2 uses
  %i.yw = sub i64 %i.yu, %i.yv                    ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !158 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !133
  %i.zc = ptrtoint ptr %i.zb to i64
  %i.zd = ptrtoint ptr %i.yz to i64
  %i.ze = sub i64 %i.zc, %i.zd
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.ze
  %i.zg = load ptr, ptr %19, align 8, !tbaa !500  ; 3 uses
  %i.zh = load ptr, ptr %i.o, align 8, !tbaa !500
  %i.zi = ptrtoint ptr %i.zh to i64
  %i.zj = ptrtoint ptr %i.zg to i64
  %i.zk = sub i64 %i.zi, %i.zj
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.zk
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store ptr %i.ys, ptr %14, align 8
  %i.zm = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.yx, ptr %i.zm, align 8
  store ptr %i.yz, ptr %15, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.zf, ptr %i.zn, align 8
  store ptr %i.zg, ptr %16, align 8
  %i.zo = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.zl, ptr %i.zo, align 8
  %.not9.i.i = icmp eq ptr %i.ys, %i.yt
  br i1 %.not9.i.i, label %_ZN3gmxL20rebalanceSimpleListsENS_8ArrayRefIKNS_16NbnxnPairlistCpuEEENS0_IS1_EENS0_INS_14PairsearchWorkEEE.exit, label %iter.check762

iter.check762:                                    ; preds = %bb.by
  %i.zp = add i64 %i.yu, -256
  %i.zq = sub i64 %i.zp, %i.yv                    ; 3 uses
  %i.zr = lshr i64 %i.zq, 8
  %i.zs = add nuw nsw i64 %i.zr, 1                ; 5 uses
  %min.iters.check731 = icmp ult i64 %i.zq, 1792
  br i1 %min.iters.check731, label %.lr.ph.i.i155.preheader, label %vector.main.loop.iter.check732

vector.main.loop.iter.check732:                   ; preds = %iter.check762
  %min.iters.check733 = icmp ult i64 %i.zq, 7936
  br i1 %min.iters.check733, label %vec.epilog.ph766, label %vector.ph734

vector.ph734:                                     ; preds = %vector.main.loop.iter.check732
  %i.zt = and i64 %i.zs, 24
  %n.vec735 = and i64 %i.zs, 144115188075855840   ; 4 uses
  %i.zu = shl i64 %n.vec735, 8
  %i.zv = getelementptr i8, ptr %i.ys, i64 %i.zu  ; 2 uses
  br label %vector.body736

vector.body736:                                   ; preds = %vector.body736, %vector.ph734
  %index737 = phi i64 [ 0, %vector.ph734 ], [ %index.next753, %vector.body736 ]
  %vec.phi738 = phi <8 x i32> [ zeroinitializer, %vector.ph734 ], [ %i.zw, %vector.body736 ]
  %vec.phi739 = phi <8 x i32> [ zeroinitializer, %vector.ph734 ], [ %i.zx, %vector.body736 ]
  %vec.phi740 = phi <8 x i32> [ zeroinitializer, %vector.ph734 ], [ %i.zy, %vector.body736 ]
  %vec.phi741 = phi <8 x i32> [ zeroinitializer, %vector.ph734 ], [ %i.zz, %vector.body736 ]
  %pointer.phi = phi ptr [ %i.ys, %vector.ph734 ], [ %ptr.ind, %vector.body736 ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 256, i64 512, i64 768, i64 1024, i64 1280, i64 1536, i64 1792> ; 4 uses
  %wide.gep745 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 176
  %wide.gep746 = getelementptr i8, <8 x ptr> %vector.gep, i64 2224
  %wide.gep747 = getelementptr i8, <8 x ptr> %vector.gep, i64 4272
  %wide.gep748 = getelementptr i8, <8 x ptr> %vector.gep, i64 6320
  %wide.masked.gather749 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep745, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !162
  %wide.masked.gather750 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep746, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !162
  %wide.masked.gather751 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep747, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !162
  %wide.masked.gather752 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep748, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !162
  %i.zw = add <8 x i32> %wide.masked.gather749, %vec.phi738 ; 2 uses
  %i.zx = add <8 x i32> %wide.masked.gather750, %vec.phi739 ; 2 uses
  %i.zy = add <8 x i32> %wide.masked.gather751, %vec.phi740 ; 2 uses
  %i.zz = add <8 x i32> %wide.masked.gather752, %vec.phi741 ; 2 uses
  %index.next753 = add nuw i64 %index737, 32      ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 8192
  %i.aaa = icmp eq i64 %index.next753, %n.vec735
  br i1 %i.aaa, label %middle.block754, label %vector.body736, !llvm.loop !458

middle.block754:                                  ; preds = %vector.body736
  %bin.rdx755 = add <8 x i32> %i.zx, %i.zw
  %bin.rdx756 = add <8 x i32> %i.zy, %bin.rdx755
  %bin.rdx757 = add <8 x i32> %i.zz, %bin.rdx756
  %i.aab = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx757) ; 3 uses
  %cmp.n758 = icmp eq i64 %i.zs, %n.vec735
  br i1 %cmp.n758, label %_ZN3gmxL20rebalanceSimpleListsENS_8ArrayRefIKNS_16NbnxnPairlistCpuEEENS0_IS1_EENS0_INS_14PairsearchWorkEEE.exit, label %vec.epilog.iter.check764

vec.epilog.iter.check764:                         ; preds = %middle.block754
  %min.epilog.iters.check765 = icmp eq i64 %i.zt, 0
  br i1 %min.epilog.iters.check765, label %.lr.ph.i.i155.preheader, label %vec.epilog.ph766, !prof !338

vec.epilog.ph766:                                 ; preds = %vector.main.loop.iter.check732, %vec.epilog.iter.check764
  %vec.epilog.resume.val759 = phi i64 [ %n.vec735, %vec.epilog.iter.check764 ], [ 0, %vector.main.loop.iter.check732 ]
  %bc.merge.rdx760 = phi i32 [ %i.aab, %vec.epilog.iter.check764 ], [ 0, %vector.main.loop.iter.check732 ]
  %bc.resume.val761 = phi ptr [ %i.zv, %vec.epilog.iter.check764 ], [ %i.ys, %vector.main.loop.iter.check732 ]
  %n.vec767 = and i64 %i.zs, 144115188075855864   ; 3 uses
  %i.aac = shl i64 %n.vec767, 8
  %i.aad = getelementptr i8, ptr %i.ys, i64 %i.aac
  %i.aae = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx760, i64 0
  br label %vec.epilog.vector.body768

vec.epilog.vector.body768:                        ; preds = %vec.epilog.vector.body768, %vec.epilog.ph766
  %index769 = phi i64 [ %vec.epilog.resume.val759, %vec.epilog.ph766 ], [ %index.next775, %vec.epilog.vector.body768 ]
  %vec.phi770 = phi <8 x i32> [ %i.aae, %vec.epilog.ph766 ], [ %i.aaf, %vec.epilog.vector.body768 ]
  %pointer.phi771 = phi ptr [ %bc.resume.val761, %vec.epilog.ph766 ], [ %ptr.ind776, %vec.epilog.vector.body768 ] ; 2 uses
  %vector.gep772 = getelementptr i8, ptr %pointer.phi771, <8 x i64> <i64 0, i64 256, i64 512, i64 768, i64 1024, i64 1280, i64 1536, i64 1792>
  %wide.gep773 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep772, i64 176
  %wide.masked.gather774 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep773, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !162
  %i.aaf = add <8 x i32> %wide.masked.gather774, %vec.phi770 ; 2 uses
  %index.next775 = add nuw i64 %index769, 8       ; 2 uses
  %ptr.ind776 = getelementptr i8, ptr %pointer.phi771, i64 2048
  %i.aag = icmp eq i64 %index.next775, %n.vec767
  br i1 %i.aag, label %vec.epilog.middle.block777, label %vec.epilog.vector.body768, !llvm.loop !459

vec.epilog.middle.block777:                       ; preds = %vec.epilog.vector.body768
  %i.aah = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.aaf) ; 2 uses
  %cmp.n778 = icmp eq i64 %i.zs, %n.vec767
  br i1 %cmp.n778, label %_ZN3gmxL20rebalanceSimpleListsENS_8ArrayRefIKNS_16NbnxnPairlistCpuEEENS0_IS1_EENS0_INS_14PairsearchWorkEEE.exit, label %.lr.ph.i.i155.preheader

.lr.ph.i.i155.preheader:                          ; preds = %iter.check762, %vec.epilog.iter.check764, %vec.epilog.middle.block777
  %.011.i.i.ph = phi i32 [ 0, %iter.check762 ], [ %i.aab, %vec.epilog.iter.check764 ], [ %i.aah, %vec.epilog.middle.block777 ]
  %.sroa.0.010.i.i.ph = phi ptr [ %i.ys, %iter.check762 ], [ %i.zv, %vec.epilog.iter.check764 ], [ %i.aad, %vec.epilog.middle.block777 ]
  br label %.lr.ph.i.i155

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155.preheader, %.lr.ph.i.i155
  %.011.i.i = phi i32 [ %i.aak, %.lr.ph.i.i155 ], [ %.011.i.i.ph, %.lr.ph.i.i155.preheader ]
  %.sroa.0.010.i.i = phi ptr [ %i.aal, %.lr.ph.i.i155 ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i155.preheader ] ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 176
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !162
  %i.aak = add nsw i32 %i.aaj, %.011.i.i          ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 256 ; 2 uses
  %.not.i.i156 = icmp eq ptr %i.aal, %i.yt
  br i1 %.not.i.i156, label %_ZN3gmxL20rebalanceSimpleListsENS_8ArrayRefIKNS_16NbnxnPairlistCpuEEENS0_IS1_EENS0_INS_14PairsearchWorkEEE.exit, label %.lr.ph.i.i155, !llvm.loop !460

_ZN3gmxL20rebalanceSimpleListsENS_8ArrayRefIKNS_16NbnxnPairlistCpuEEENS0_IS1_EENS0_INS_14PairsearchWorkEEE.exit: ; preds = %.lr.ph.i.i155, %middle.block754, %vec.epilog.middle.block777, %bb.by
  %.0.lcssa.i.i157 = phi i32 [ 0, %bb.by ], [ %i.aah, %vec.epilog.middle.block777 ], [ %i.aab, %middle.block754 ], [ %i.aak, %.lr.ph.i.i155 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.aam = lshr exact i64 %i.yw, 8
  %i.aan = trunc i64 %i.aam to i32                ; 4 uses
  store i32 %i.aan, ptr %i.c, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.aao = add i32 %i.aan, -1
  %i.aap = add i32 %i.aao, %.0.lcssa.i.i157
  %i.aaq = sdiv i32 %i.aap, %i.aan
  store i32 %i.aaq, ptr %i.d, align 4, !tbaa !101
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.aan)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN3gmxL20rebalanceSimpleListsENS_8ArrayRefIKNS_16NbnxnPairlistCpuEEENS0_IS1_EENS0_INS_14PairsearchWorkEEE.omp_outlined, ptr nonnull %i.d, ptr nonnull %15, ptr nonnull %14, ptr nonnull %16, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !134
  %i.aat = load ptr, ptr %i.yy, align 8, !tbaa !158
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aav = load <2 x ptr>, ptr %0, align 8, !tbaa !501
  store ptr %i.aat, ptr %0, align 8, !tbaa !158
  %i.aaw = load <2 x ptr>, ptr %i.za, align 8, !tbaa !501
  %i.aax = shufflevector <2 x ptr> %i.aaw, <2 x ptr> %i.aav, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %i.aax, ptr %i.xh, align 8, !tbaa !501
  store ptr %i.aas, ptr %i.aau, align 8, !tbaa !134
  br label %bb.cd

bb.bz:                                            ; preds = %._crit_edge317
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aaz = load i8, ptr %i.aay, align 8, !tbaa !129, !range !131, !noundef !132
  %i.aba = trunc nuw i8 %i.aaz to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.aba, label %._crit_edge370, label %bb.ca

._crit_edge370:                                   ; preds = %bb.bz
  %.pre371 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !143
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !135
  %i.abd = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !143 ; 2 uses
  %i.abe = ptrtoint ptr %i.abc to i64
  %i.abf = ptrtoint ptr %i.abd to i64
  %i.abg = sub i64 %i.abe, %i.abf
  %i.abh = icmp eq i64 %i.abg, 256
  br i1 %i.abh, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %._crit_edge370, %bb.ca
  %i.abi = phi ptr [ %.pre371, %._crit_edge370 ], [ %i.abd, %bb.ca ]
  call fastcc void @_ZN3gmxL8sort_sciEPNS_16NbnxnPairlistGpuE(ptr noundef %i.abi)
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.abj = load i32, ptr %i.h, align 4, !tbaa !101
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.abj)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN3gmx11PairlistSet18constructPairlistsENS_19InteractionLocalityERKNS_7GridSetENS_8ArrayRefINS_14PairsearchWorkEEEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEbiP6t_nrnbPNS_19SearchCycleCountingE.omp_outlined.9, ptr nonnull %i.h, ptr nonnull %0)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.bv, %_ZN3gmxL25checkRebalanceSimpleListsENS_8ArrayRefIKNS_16NbnxnPairlistCpuEEE.exit, %_ZN3gmxL20rebalanceSimpleListsENS_8ArrayRefIKNS_16NbnxnPairlistCpuEEENS0_IS1_EENS0_INS_14PairsearchWorkEEE.exit
  %i.abk = load ptr, ptr %i.e, align 8, !tbaa !229 ; 3 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 624
  %i.abm = load i8, ptr %i.abl, align 8, !tbaa !274, !range !131, !noundef !132
  %i.abn = trunc nuw i8 %i.abm to i1
  br i1 %i.abn, label %bb.ce, label %_ZN3gmxL19reduce_buffer_flagsENS_8ArrayRefINS_14PairsearchWorkEEEiNS0_ISt5arrayImLm2EEEE.exit

bb.ce:                                            ; preds = %bb.cd
  %i.abo = load ptr, ptr %19, align 8, !tbaa !500
  %i.abp = load i32, ptr %i.h, align 4, !tbaa !101 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abk, i64 632
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !276 ; 9 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abk, i64 640
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !277 ; 3 uses
  %i.abu = icmp slt i32 %i.abp, 1
  %.not.i158 = icmp eq ptr %i.abt, %i.abr
  %or.cond.i159 = select i1 %i.abu, i1 true, i1 %.not.i158
  br i1 %or.cond.i159, label %_ZN3gmxL19reduce_buffer_flagsENS_8ArrayRefINS_14PairsearchWorkEEEiNS0_ISt5arrayImLm2EEEE.exit, label %.lr.ph.preheader.i160

.lr.ph.preheader.i160:                            ; preds = %bb.ce
  %i.abv = ptrtoint ptr %i.abt to i64
  %i.abw = ptrtoint ptr %i.abr to i64
  %i.abx = sub i64 %i.abv, %i.abw                 ; 2 uses
  %i.aby = ashr exact i64 %i.abx, 4               ; 6 uses
  %wide.trip.count.i161 = zext nneg i32 %i.abp to i64
  %min.iters.check782 = icmp ult i64 %i.aby, 4
  %n.vec784 = and i64 %i.aby, -4                  ; 3 uses
  %cmp.n793 = icmp eq i64 %i.aby, %n.vec784
  %xtraiter1080 = and i64 %i.aby, 3               ; 2 uses
  %lcmp.mod1081.not = icmp eq i64 %xtraiter1080, 0
  br label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %._crit_edge.i167, %.lr.ph.preheader.i160
  %indvars.iv.i163 = phi i64 [ 0, %.lr.ph.preheader.i160 ], [ %indvars.iv.next.i168, %._crit_edge.i167 ] ; 2 uses
  %i.abz = getelementptr inbounds nuw [216 x i8], ptr %i.abo, i64 %indvars.iv.i163
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 88
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !276 ; 8 uses
  br i1 %min.iters.check782, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i162
  %scevgep781 = getelementptr i8, ptr %i.acb, i64 %i.abx
  %bound0 = icmp ult ptr %i.abr, %scevgep781
  %bound1 = icmp ult ptr %i.acb, %i.abt
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body785

vector.body785:                                   ; preds = %vector.memcheck, %vector.body785
  %index786 = phi i64 [ %index.next791, %vector.body785 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.acc = getelementptr inbounds [16 x i8], ptr %i.abr, i64 %index786 ; 2 uses
  %i.acd = getelementptr inbounds [16 x i8], ptr %i.acb, i64 %index786
  %wide.vec = load <8 x i64>, ptr %i.acd, align 8, !alias.scope !502
  %wide.vec788 = load <8 x i64>, ptr %i.acc, align 8, !tbaa !152, !alias.scope !503, !noalias !502
  %interleaved.vec = or <8 x i64> %wide.vec788, %wide.vec
  store <8 x i64> %interleaved.vec, ptr %i.acc, align 8, !tbaa !152, !alias.scope !503, !noalias !502
  %index.next791 = add nuw i64 %index786, 4       ; 2 uses
  %i.ace = icmp eq i64 %index.next791, %n.vec784
  br i1 %i.ace, label %middle.block792, label %vector.body785, !llvm.loop !464

middle.block792:                                  ; preds = %vector.body785
  br i1 %cmp.n793, label %._crit_edge.i167, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i162, %middle.block792
  %.0811.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i162 ], [ %n.vec784, %middle.block792 ] ; 3 uses
  br i1 %lcmp.mod1081.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0811.i.prol = phi i64 [ %i.ack, %scalar.ph.prol ], [ %.0811.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.acf = getelementptr inbounds [16 x i8], ptr %i.abr, i64 %.0811.i.prol ; 2 uses
  %i.acg = getelementptr inbounds [16 x i8], ptr %i.acb, i64 %.0811.i.prol
  %i.ach = load <2 x i64>, ptr %i.acg, align 8
  %i.aci = load <2 x i64>, ptr %i.acf, align 8, !tbaa !152
  %i.acj = or <2 x i64> %i.aci, %i.ach
  store <2 x i64> %i.acj, ptr %i.acf, align 8, !tbaa !152
  %i.ack = add nuw i64 %.0811.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1080
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !465

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0811.i.unr = phi i64 [ %.0811.i.ph, %scalar.ph.preheader ], [ %i.ack, %scalar.ph.prol ]
  %i.acl = sub nsw i64 %.0811.i.ph, %i.aby
  %i.acm = icmp ugt i64 %i.acl, -4
  br i1 %i.acm, label %._crit_edge.i167, label %scalar.ph

._crit_edge.i167:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block792
  %indvars.iv.next.i168 = add nuw nsw i64 %indvars.iv.i163, 1 ; 2 uses
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next.i168, %wide.trip.count.i161
  br i1 %exitcond17.not.i, label %_ZN3gmxL19reduce_buffer_flagsENS_8ArrayRefINS_14PairsearchWorkEEEiNS0_ISt5arrayImLm2EEEE.exit, label %.lr.ph.i162, !llvm.loop !466

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0811.i = phi i64 [ %i.adk, %scalar.ph ], [ %.0811.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.acn = getelementptr inbounds [16 x i8], ptr %i.abr, i64 %.0811.i ; 2 uses
  %i.aco = getelementptr inbounds [16 x i8], ptr %i.acb, i64 %.0811.i
  %i.acp = load <2 x i64>, ptr %i.aco, align 8
  %i.acq = load <2 x i64>, ptr %i.acn, align 8, !tbaa !152
  %i.acr = or <2 x i64> %i.acq, %i.acp
  store <2 x i64> %i.acr, ptr %i.acn, align 8, !tbaa !152
  %i.acs = add nuw i64 %.0811.i, 1                ; 2 uses
  %i.act = getelementptr inbounds [16 x i8], ptr %i.abr, i64 %i.acs ; 2 uses
  %i.acu = getelementptr inbounds [16 x i8], ptr %i.acb, i64 %i.acs
  %i.acv = load <2 x i64>, ptr %i.acu, align 8
  %i.acw = load <2 x i64>, ptr %i.act, align 8, !tbaa !152
  %i.acx = or <2 x i64> %i.acw, %i.acv
  store <2 x i64> %i.acx, ptr %i.act, align 8, !tbaa !152
  %i.acy = add nuw i64 %.0811.i, 2                ; 2 uses
  %i.acz = getelementptr inbounds [16 x i8], ptr %i.abr, i64 %i.acy ; 2 uses
  %i.ada = getelementptr inbounds [16 x i8], ptr %i.acb, i64 %i.acy
  %i.adb = load <2 x i64>, ptr %i.ada, align 8
  %i.adc = load <2 x i64>, ptr %i.acz, align 8, !tbaa !152
  %i.add = or <2 x i64> %i.adc, %i.adb
  store <2 x i64> %i.add, ptr %i.acz, align 8, !tbaa !152
  %i.ade = add nuw i64 %.0811.i, 3                ; 2 uses
  %i.adf = getelementptr inbounds [16 x i8], ptr %i.abr, i64 %i.ade ; 2 uses
  %i.adg = getelementptr inbounds [16 x i8], ptr %i.acb, i64 %i.ade
  %i.adh = load <2 x i64>, ptr %i.adg, align 8
  %i.adi = load <2 x i64>, ptr %i.adf, align 8, !tbaa !152
  %i.adj = or <2 x i64> %i.adi, %i.adh
  store <2 x i64> %i.adj, ptr %i.adf, align 8, !tbaa !152
  %i.adk = add nuw i64 %.0811.i, 4                ; 2 uses
  %exitcond.not.i166.3 = icmp eq i64 %i.adk, %i.aby
  br i1 %exitcond.not.i166.3, label %._crit_edge.i167, label %scalar.ph, !llvm.loop !467

_ZN3gmxL19reduce_buffer_flagsENS_8ArrayRefINS_14PairsearchWorkEEEiNS0_ISt5arrayImLm2EEEE.exit: ; preds = %._crit_edge.i167, %bb.ce, %bb.cd
  %i.adl = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.adm = load i8, ptr %i.adl, align 4, !tbaa !341, !range !131, !noundef !132
  %i.adn = trunc nuw i8 %i.adm to i1
  br i1 %i.adn, label %bb.cf, label %_ZN3gmxL17combine_fep_listsENS_8ArrayRefISt10unique_ptrINS_12AtomPairlistESt14default_deleteIS2_EEEE.exit

bb.cf:                                            ; preds = %_ZN3gmxL19reduce_buffer_flagsENS_8ArrayRefINS_14PairsearchWorkEEEiNS0_ISt5arrayImLm2EEEE.exit
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i32 0, ptr %i.ado, align 8, !tbaa !342
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !343 ; 18 uses
  %i.adr = ptrtoaddr ptr %i.adq to i64            ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !343 ; 6 uses
  %i.adu = ptrtoaddr ptr %i.adt to i64            ; 2 uses
  %.not263318 = icmp eq ptr %i.adq, %i.adt        ; 2 uses
  br i1 %.not263318, label %bb.cg, label %iter.check827

iter.check827:                                    ; preds = %bb.cf
  %i.adv = add i64 %i.adu, -8
  %i.adw = sub i64 %i.adv, %i.adr                 ; 3 uses
  %i.adx = lshr i64 %i.adw, 3
  %i.ady = add nuw nsw i64 %i.adx, 1              ; 5 uses
  %min.iters.check796 = icmp ult i64 %i.adw, 24
  br i1 %min.iters.check796, label %.lr.ph321.preheader, label %vector.main.loop.iter.check797

vector.main.loop.iter.check797:                   ; preds = %iter.check827
  %min.iters.check798 = icmp ult i64 %i.adw, 120
  br i1 %min.iters.check798, label %vec.epilog.ph831, label %vector.ph799

vector.ph799:                                     ; preds = %vector.main.loop.iter.check797
  %i.adz = and i64 %i.ady, 12
  %n.vec800 = and i64 %i.ady, 4611686018427387888 ; 4 uses
  %i.aea = shl i64 %n.vec800, 3
  %i.aeb = getelementptr i8, ptr %i.adq, i64 %i.aea
  br label %vector.body801

vector.body801:                                   ; preds = %vector.body801, %vector.ph799
  %index802 = phi i64 [ 0, %vector.ph799 ], [ %index.next818, %vector.body801 ] ; 2 uses
  %vec.phi803 = phi <4 x i32> [ zeroinitializer, %vector.ph799 ], [ %i.aeg, %vector.body801 ]
  %vec.phi804 = phi <4 x i32> [ zeroinitializer, %vector.ph799 ], [ %i.aeh, %vector.body801 ]
  %vec.phi805 = phi <4 x i32> [ zeroinitializer, %vector.ph799 ], [ %i.aei, %vector.body801 ]
  %vec.phi806 = phi <4 x i32> [ zeroinitializer, %vector.ph799 ], [ %i.aej, %vector.body801 ]
  %i.aec = shl i64 %index802, 3
  %next.gep = getelementptr i8, ptr %i.adq, i64 %i.aec ; 4 uses
  %i.aed = getelementptr i8, ptr %next.gep, i64 32
  %i.aee = getelementptr i8, ptr %next.gep, i64 64
  %i.aef = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !166
  %wide.load807 = load <4 x ptr>, ptr %i.aed, align 8, !tbaa !166
  %wide.load808 = load <4 x ptr>, ptr %i.aee, align 8, !tbaa !166
  %wide.load809 = load <4 x ptr>, ptr %i.aef, align 8, !tbaa !166
  %wide.gep810 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 72
  %wide.gep811 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load807, i64 72
  %wide.gep812 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load808, i64 72
  %wide.gep813 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load809, i64 72
  %wide.masked.gather814 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep810, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !324
  %wide.masked.gather815 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep811, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !324
  %wide.masked.gather816 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep812, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !324
  %wide.masked.gather817 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep813, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !324
  %i.aeg = add <4 x i32> %vec.phi803, %wide.masked.gather814 ; 2 uses
  %i.aeh = add <4 x i32> %vec.phi804, %wide.masked.gather815 ; 2 uses
  %i.aei = add <4 x i32> %vec.phi805, %wide.masked.gather816 ; 2 uses
  %i.aej = add <4 x i32> %vec.phi806, %wide.masked.gather817 ; 2 uses
  %index.next818 = add nuw i64 %index802, 16      ; 2 uses
  %i.aek = icmp eq i64 %index.next818, %n.vec800
  br i1 %i.aek, label %middle.block819, label %vector.body801, !llvm.loop !468

middle.block819:                                  ; preds = %vector.body801
  %bin.rdx820 = add <4 x i32> %i.aeh, %i.aeg
  %bin.rdx821 = add <4 x i32> %i.aei, %bin.rdx820
  %bin.rdx822 = add <4 x i32> %i.aej, %bin.rdx821
  %i.ael = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx822) ; 3 uses
  %cmp.n823 = icmp eq i64 %i.ady, %n.vec800
  br i1 %cmp.n823, label %._crit_edge322, label %vec.epilog.iter.check829

vec.epilog.iter.check829:                         ; preds = %middle.block819
  %min.epilog.iters.check830 = icmp eq i64 %i.adz, 0
  br i1 %min.epilog.iters.check830, label %.lr.ph321.preheader, label %vec.epilog.ph831, !prof !185

vec.epilog.ph831:                                 ; preds = %vector.main.loop.iter.check797, %vec.epilog.iter.check829
  %vec.epilog.resume.val824 = phi i64 [ %n.vec800, %vec.epilog.iter.check829 ], [ 0, %vector.main.loop.iter.check797 ]
  %bc.merge.rdx825 = phi i32 [ %i.ael, %vec.epilog.iter.check829 ], [ 0, %vector.main.loop.iter.check797 ]
  %n.vec832 = and i64 %i.ady, 4611686018427387900 ; 3 uses
  %i.aem = shl i64 %n.vec832, 3
  %i.aen = getelementptr i8, ptr %i.adq, i64 %i.aem
  %i.aeo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx825, i64 0
  br label %vec.epilog.vector.body833

vec.epilog.vector.body833:                        ; preds = %vec.epilog.vector.body833, %vec.epilog.ph831
  %index834 = phi i64 [ %vec.epilog.resume.val824, %vec.epilog.ph831 ], [ %index.next840, %vec.epilog.vector.body833 ] ; 2 uses
  %vec.phi835 = phi <4 x i32> [ %i.aeo, %vec.epilog.ph831 ], [ %i.aeq, %vec.epilog.vector.body833 ]
  %i.aep = shl i64 %index834, 3
  %next.gep836 = getelementptr i8, ptr %i.adq, i64 %i.aep
  %wide.load837 = load <4 x ptr>, ptr %next.gep836, align 8, !tbaa !166
  %wide.gep838 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load837, i64 72
  %wide.masked.gather839 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep838, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !324
  %i.aeq = add <4 x i32> %vec.phi835, %wide.masked.gather839 ; 2 uses
  %index.next840 = add nuw i64 %index834, 4       ; 2 uses
  %i.aer = icmp eq i64 %index.next840, %n.vec832
end_hunk_0
begin_hunk_1_@_ZN3gmx11PairlistSet18constructPairlistsENS_19InteractionLocalityERKNS_7GridSetENS_8ArrayRefINS_14PairsearchWorkEEEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEbiP6t_nrnbPNS_19SearchCycleCountingE:bb.a
  %vec.phi907 = phi <4 x i32> [ %i.aht, %vec.epilog.ph903 ], [ %i.aid, %vec.epilog.vector.body905 ]
  %i.ahu = shl i64 %index906, 3
  %next.gep908 = getelementptr i8, ptr %i.adq, i64 %i.ahu
  %wide.load909 = load <4 x ptr>, ptr %next.gep908, align 8, !tbaa !166 ; 2 uses
  %wide.gep910 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load909, i64 48
  %wide.masked.gather911 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep910, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !169 ; 3 uses
  %wide.gep912 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load909, i64 32
  %wide.masked.gather913 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep912, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !344
  %wide.gep914 = getelementptr inbounds i8, <4 x ptr> %wide.masked.gather913, i64 -4
  %wide.masked.gather915 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep914, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !101
  %i.ahv = sext <4 x i32> %wide.masked.gather915 to <4 x i64>
  %i.ahw = icmp eq <4 x ptr> %wide.masked.gather911, splat (ptr null)
  %wide.gep916 = getelementptr inbounds nuw [8 x i8], <4 x ptr> %wide.masked.gather911, <4 x i64> %i.ahv
  %i.ahx = select <4 x i1> %i.ahw, <4 x ptr> splat (ptr null), <4 x ptr> %wide.gep916
  %i.ahy = ptrtoint <4 x ptr> %i.ahx to <4 x i64>
  %i.ahz = ptrtoint <4 x ptr> %wide.masked.gather911 to <4 x i64>
  %i.aia = sub <4 x i64> %i.ahy, %i.ahz
  %i.aib = lshr exact <4 x i64> %i.aia, splat (i64 3)
  %i.aic = trunc <4 x i64> %i.aib to <4 x i32>
  %i.aid = add <4 x i32> %vec.phi907, %i.aic      ; 2 uses
  %index.next917 = add nuw i64 %index906, 4       ; 2 uses
  %i.aie = icmp eq i64 %index.next917, %n.vec904
  br i1 %i.aie, label %vec.epilog.middle.block918, label %vec.epilog.vector.body905, !llvm.loop !472

vec.epilog.middle.block918:                       ; preds = %vec.epilog.vector.body905
  %i.aif = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aid) ; 2 uses
  %cmp.n919 = icmp eq i64 %i.afx, %n.vec904
  br i1 %cmp.n919, label %._crit_edge.i172, label %.lr.ph.i170.preheader

.lr.ph.i170.preheader:                            ; preds = %iter.check899, %vec.epilog.iter.check901, %vec.epilog.middle.block918
  %.01332.i.ph = phi i32 [ 0, %iter.check899 ], [ %i.ahq, %vec.epilog.iter.check901 ], [ %i.aif, %vec.epilog.middle.block918 ]
  %.sroa.027.031.i.ph = phi ptr [ %i.adq, %iter.check899 ], [ %i.aga, %vec.epilog.iter.check901 ], [ %i.ahs, %vec.epilog.middle.block918 ]
  br label %.lr.ph.i170

._crit_edge.i172:                                 ; preds = %.lr.ph.i170, %middle.block891, %vec.epilog.middle.block918, %.preheader.i169
  %.013.lcssa.i = phi i32 [ 0, %.preheader.i169 ], [ %i.aif, %vec.epilog.middle.block918 ], [ %i.ahq, %middle.block891 ], [ %i.akm, %.lr.ph.i170 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.aig = add i32 %i.afs, -1
  %i.aih = add i32 %i.aig, %.013.lcssa.i
  %i.aii = sdiv i32 %i.aih, %i.afs
  store i32 %i.aii, ptr %i.b, align 4, !tbaa !101
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.afs)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN3gmxL17balance_fep_listsENS_8ArrayRefISt10unique_ptrINS_12AtomPairlistESt14default_deleteIS2_EEEENS0_INS_14PairsearchWorkEEE.omp_outlined, ptr nonnull %13, ptr nonnull %i.a, ptr nonnull %12, ptr nonnull %i.b)
  %i.aij = load i32, ptr %i.a, align 4, !tbaa !101 ; 4 uses
  %i.aik = icmp sgt i32 %i.aij, 0
  br i1 %i.aik, label %.lr.ph35.i, label %._crit_edge36.i

.lr.ph35.i:                                       ; preds = %._crit_edge.i172
  %i.ail = load ptr, ptr @debug, align 8, !tbaa !232 ; 2 uses
  %i.aim = icmp eq ptr %i.ail, null
  br i1 %i.aim, label %.lr.ph35.split.us.i, label %.lr.ph35.split.i

.lr.ph35.split.us.i:                              ; preds = %.lr.ph35.i
  %wide.trip.count.i177 = zext nneg i32 %i.aij to i64 ; 2 uses
  %xtraiter1083 = and i64 %wide.trip.count.i177, 3 ; 3 uses
  %i.ain = icmp ult i32 %i.aij, 4
  br i1 %i.ain, label %.epil.preheader1082, label %.lr.ph35.split.us.i.new

.lr.ph35.split.us.i.new:                          ; preds = %.lr.ph35.split.us.i
  %unroll_iter1087 = and i64 %wide.trip.count.i177, 2147483644
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.lr.ph35.split.us.i.new
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph35.split.us.i.new ], [ %indvars.iv.next40.i.3, %bb.cj ] ; 6 uses
  %niter1088 = phi i64 [ 0, %.lr.ph35.split.us.i.new ], [ %niter1088.next.3, %bb.cj ]
  %i.aio = load i64, ptr %12, align 8
  %i.aip = inttoptr i64 %i.aio to ptr
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.aip, i64 %indvars.iv39.i ; 2 uses
  %i.air = load i64, ptr %13, align 8
  %i.ais = inttoptr i64 %i.air to ptr
  %i.ait = getelementptr inbounds nuw [216 x i8], ptr %i.ais, i64 %indvars.iv39.i
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 120 ; 2 uses
  %i.aiv = load ptr, ptr %i.aiq, align 8, !tbaa !166
  %i.aiw = load ptr, ptr %i.aiu, align 8, !tbaa !166
  store ptr %i.aiw, ptr %i.aiq, align 8, !tbaa !166
  store ptr %i.aiv, ptr %i.aiu, align 8, !tbaa !166
  %indvars.iv.next40.i = or disjoint i64 %indvars.iv39.i, 1 ; 2 uses
  %i.aix = load i64, ptr %12, align 8
  %i.aiy = inttoptr i64 %i.aix to ptr
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.aiy, i64 %indvars.iv.next40.i ; 2 uses
  %i.aja = load i64, ptr %13, align 8
  %i.ajb = inttoptr i64 %i.aja to ptr
  %i.ajc = getelementptr inbounds nuw [216 x i8], ptr %i.ajb, i64 %indvars.iv.next40.i
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 120 ; 2 uses
  %i.aje = load ptr, ptr %i.aiz, align 8, !tbaa !166
  %i.ajf = load ptr, ptr %i.ajd, align 8, !tbaa !166
  store ptr %i.ajf, ptr %i.aiz, align 8, !tbaa !166
  store ptr %i.aje, ptr %i.ajd, align 8, !tbaa !166
  %indvars.iv.next40.i.1 = or disjoint i64 %indvars.iv39.i, 2 ; 2 uses
  %i.ajg = load i64, ptr %12, align 8
  %i.ajh = inttoptr i64 %i.ajg to ptr
  %i.aji = getelementptr inbounds nuw [8 x i8], ptr %i.ajh, i64 %indvars.iv.next40.i.1 ; 2 uses
  %i.ajj = load i64, ptr %13, align 8
  %i.ajk = inttoptr i64 %i.ajj to ptr
  %i.ajl = getelementptr inbounds nuw [216 x i8], ptr %i.ajk, i64 %indvars.iv.next40.i.1
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 120 ; 2 uses
  %i.ajn = load ptr, ptr %i.aji, align 8, !tbaa !166
  %i.ajo = load ptr, ptr %i.ajm, align 8, !tbaa !166
  store ptr %i.ajo, ptr %i.aji, align 8, !tbaa !166
  store ptr %i.ajn, ptr %i.ajm, align 8, !tbaa !166
  %indvars.iv.next40.i.2 = or disjoint i64 %indvars.iv39.i, 3 ; 2 uses
  %i.ajp = load i64, ptr %12, align 8
  %i.ajq = inttoptr i64 %i.ajp to ptr
  %i.ajr = getelementptr inbounds nuw [8 x i8], ptr %i.ajq, i64 %indvars.iv.next40.i.2 ; 2 uses
  %i.ajs = load i64, ptr %13, align 8
  %i.ajt = inttoptr i64 %i.ajs to ptr
  %i.aju = getelementptr inbounds nuw [216 x i8], ptr %i.ajt, i64 %indvars.iv.next40.i.2
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 120 ; 2 uses
  %i.ajw = load ptr, ptr %i.ajr, align 8, !tbaa !166
  %i.ajx = load ptr, ptr %i.ajv, align 8, !tbaa !166
  store ptr %i.ajx, ptr %i.ajr, align 8, !tbaa !166
  store ptr %i.ajw, ptr %i.ajv, align 8, !tbaa !166
  %indvars.iv.next40.i.3 = add nuw nsw i64 %indvars.iv39.i, 4 ; 2 uses
  %niter1088.next.3 = add i64 %niter1088, 4       ; 2 uses
  %niter1088.ncmp.3 = icmp eq i64 %niter1088.next.3, %unroll_iter1087
  br i1 %niter1088.ncmp.3, label %._crit_edge36.i.loopexit.unr-lcssa, label %bb.cj, !llvm.loop !473

.lr.ph.i170:                                      ; preds = %.lr.ph.i170.preheader, %.lr.ph.i170
  %.01332.i = phi i32 [ %i.akm, %.lr.ph.i170 ], [ %.01332.i.ph, %.lr.ph.i170.preheader ]
  %.sroa.027.031.i = phi ptr [ %i.akn, %.lr.ph.i170 ], [ %.sroa.027.031.i.ph, %.lr.ph.i170.preheader ] ; 2 uses
  %i.ajy = load ptr, ptr %.sroa.027.031.i, align 8, !tbaa !166 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 48
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !169 ; 3 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajy, i64 32
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !344
  %i.akd = getelementptr inbounds i8, ptr %i.akc, i64 -4
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !101
  %i.akf = sext i32 %i.ake to i64
  %.not.i.i.i171 = icmp eq ptr %i.aka, null
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %i.aka, i64 %i.akf
  %spec.select.i.i.i = select i1 %.not.i.i.i171, ptr null, ptr %i.akg
  %i.akh = ptrtoint ptr %spec.select.i.i.i to i64
  %i.aki = ptrtoint ptr %i.aka to i64
  %i.akj = sub i64 %i.akh, %i.aki
  %i.akk = lshr exact i64 %i.akj, 3
  %i.akl = trunc i64 %i.akk to i32
  %i.akm = add i32 %.01332.i, %i.akl              ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.027.031.i, i64 8 ; 2 uses
  %.not29.i = icmp eq ptr %i.akn, %i.adt
  br i1 %.not29.i, label %._crit_edge.i172, label %.lr.ph.i170, !llvm.loop !474

._crit_edge36.i.loopexit.unr-lcssa:               ; preds = %bb.cj
  %lcmp.mod1085.not = icmp eq i64 %xtraiter1083, 0
  br i1 %lcmp.mod1085.not, label %._crit_edge36.i, label %.epil.preheader1082

.epil.preheader1082:                              ; preds = %._crit_edge36.i.loopexit.unr-lcssa, %.lr.ph35.split.us.i
  %indvars.iv39.i.epil.init = phi i64 [ 0, %.lr.ph35.split.us.i ], [ %indvars.iv.next40.i.3, %._crit_edge36.i.loopexit.unr-lcssa ]
  %lcmp.mod1086 = icmp ne i64 %xtraiter1083, 0
  call void @llvm.assume(i1 %lcmp.mod1086)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.epil.preheader1082
  %indvars.iv39.i.epil = phi i64 [ %indvars.iv.next40.i.epil, %bb.ck ], [ %indvars.iv39.i.epil.init, %.epil.preheader1082 ] ; 3 uses
  %epil.iter1084 = phi i64 [ %epil.iter1084.next, %bb.ck ], [ 0, %.epil.preheader1082 ]
  %i.ako = load i64, ptr %12, align 8
  %i.akp = inttoptr i64 %i.ako to ptr
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.akp, i64 %indvars.iv39.i.epil ; 2 uses
  %i.akr = load i64, ptr %13, align 8
  %i.aks = inttoptr i64 %i.akr to ptr
  %i.akt = getelementptr inbounds nuw [216 x i8], ptr %i.aks, i64 %indvars.iv39.i.epil
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 120 ; 2 uses
  %i.akv = load ptr, ptr %i.akq, align 8, !tbaa !166
  %i.akw = load ptr, ptr %i.aku, align 8, !tbaa !166
  store ptr %i.akw, ptr %i.akq, align 8, !tbaa !166
  store ptr %i.akv, ptr %i.aku, align 8, !tbaa !166
  %indvars.iv.next40.i.epil = add nuw nsw i64 %indvars.iv39.i.epil, 1
  %epil.iter1084.next = add i64 %epil.iter1084, 1 ; 2 uses
  %epil.iter1084.cmp.not = icmp eq i64 %epil.iter1084.next, %xtraiter1083
  br i1 %epil.iter1084.cmp.not, label %._crit_edge36.i, label %bb.ck, !llvm.loop !475

._crit_edge36.i:                                  ; preds = %bb.cm, %._crit_edge36.i.loopexit.unr-lcssa, %bb.ck, %._crit_edge.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN3gmxL17balance_fep_listsENS_8ArrayRefISt10unique_ptrINS_12AtomPairlistESt14default_deleteIS2_EEEENS0_INS_14PairsearchWorkEEE.exit

.lr.ph35.split.i:                                 ; preds = %.lr.ph35.i, %bb.cm
  %i.akx = phi i32 [ %i.amj, %bb.cm ], [ %i.aij, %.lr.ph35.i ]
  %i.aky = phi ptr [ %i.amk, %bb.cm ], [ %i.ail, %.lr.ph35.i ] ; 2 uses
  %indvars.iv.i173 = phi i64 [ %indvars.iv.next.i176, %bb.cm ], [ 0, %.lr.ph35.i ] ; 5 uses
  %i.akz = load i64, ptr %12, align 8
  %i.ala = inttoptr i64 %i.akz to ptr
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.ala, i64 %indvars.iv.i173 ; 2 uses
  %i.alc = load i64, ptr %13, align 8
  %i.ald = inttoptr i64 %i.alc to ptr
  %i.ale = getelementptr inbounds nuw [216 x i8], ptr %i.ald, i64 %indvars.iv.i173
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 120 ; 2 uses
  %i.alg = load ptr, ptr %i.alb, align 8, !tbaa !166
  %i.alh = load ptr, ptr %i.alf, align 8, !tbaa !166
  store ptr %i.alh, ptr %i.alb, align 8, !tbaa !166
  store ptr %i.alg, ptr %i.alf, align 8, !tbaa !166
  %.not.i174 = icmp eq ptr %i.aky, null
  br i1 %.not.i174, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph35.split.i
  %i.ali = load i64, ptr %12, align 8
  %i.alj = inttoptr i64 %i.ali to ptr
  %i.alk = getelementptr inbounds nuw [8 x i8], ptr %i.alj, i64 %indvars.iv.i173
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !166 ; 4 uses
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !173
  %i.aln = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !316
  %i.alp = ptrtoint ptr %i.alo to i64
  %i.alq = ptrtoint ptr %i.alm to i64
  %i.alr = sub i64 %i.alp, %i.alq
  %i.als = sdiv exact i64 %i.alr, 12
  %i.alt = trunc i64 %i.als to i32
  %i.alu = getelementptr inbounds nuw i8, ptr %i.all, i64 48
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !169 ; 3 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.all, i64 32
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !344
  %i.aly = getelementptr inbounds i8, ptr %i.alx, i64 -4
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !101
  %i.ama = sext i32 %i.alz to i64
  %.not.i.i18.i = icmp eq ptr %i.alv, null
  %i.amb = getelementptr inbounds nuw [8 x i8], ptr %i.alv, i64 %i.ama
  %spec.select.i.i19.i = select i1 %.not.i.i18.i, ptr null, ptr %i.amb
  %i.amc = ptrtoint ptr %spec.select.i.i19.i to i64
  %i.amd = ptrtoint ptr %i.alv to i64
  %i.ame = sub i64 %i.amc, %i.amd
  %i.amf = lshr exact i64 %i.ame, 3
  %i.amg = trunc i64 %i.amf to i32
  %i.amh = trunc nuw nsw i64 %indvars.iv.i173 to i32
  %i.ami = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aky, ptr noundef nonnull @.str.34, i32 noundef %i.amh, i32 noundef %i.alt, i32 noundef %i.amg) #14 ; 0 uses
  %.pre.i175 = load ptr, ptr @debug, align 8, !tbaa !232
  %.pre43.i = load i32, ptr %i.a, align 4, !tbaa !101
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph35.split.i
  %i.amj = phi i32 [ %i.akx, %.lr.ph35.split.i ], [ %.pre43.i, %bb.cl ] ; 2 uses
  %i.amk = phi ptr [ null, %.lr.ph35.split.i ], [ %.pre.i175, %bb.cl ]
  %indvars.iv.next.i176 = add nuw nsw i64 %indvars.iv.i173, 1 ; 2 uses
  %i.aml = sext i32 %i.amj to i64
  %i.amm = icmp slt i64 %indvars.iv.next.i176, %i.aml
  br i1 %i.amm, label %.lr.ph35.split.i, label %._crit_edge36.i, !llvm.loop !476

_ZN3gmxL17balance_fep_listsENS_8ArrayRefISt10unique_ptrINS_12AtomPairlistESt14default_deleteIS2_EEEENS0_INS_14PairsearchWorkEEE.exit: ; preds = %bb.ci, %._crit_edge36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZN3gmxL17combine_fep_listsENS_8ArrayRefISt10unique_ptrINS_12AtomPairlistESt14default_deleteIS2_EEEE.exit

bb.cn:                                            ; preds = %bb.ch
  %i.amn = ptrtoint ptr %i.adt to i64
  %i.amo = ptrtoint ptr %i.adq to i64
  %i.amp = sub i64 %i.amn, %i.amo
  %i.amq = lshr exact i64 %i.amp, 3               ; 2 uses
  %i.amr = trunc i64 %i.amq to i32                ; 2 uses
  %i.ams = icmp eq i32 %i.amr, 1
  br i1 %i.ams, label %_ZN3gmxL17combine_fep_listsENS_8ArrayRefISt10unique_ptrINS_12AtomPairlistESt14default_deleteIS2_EEEE.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.amt = load ptr, ptr %i.adq, align 8, !tbaa !166 ; 8 uses
  %i.amu = icmp sgt i32 %i.amr, 1
  br i1 %i.amu, label %.lr.ph71.i, label %._crit_edge72.i

.lr.ph71.i:                                       ; preds = %bb.co
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amt, i64 48
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amt, i64 32 ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amt, i64 72 ; 2 uses
  %wide.trip.count.i180 = and i64 %i.amq, 2147483647
  br label %bb.cp

._crit_edge72.i:                                  ; preds = %_ZN3gmx12AtomPairlist5clearEv.exit.i, %bb.co
  %i.amy = load ptr, ptr @debug, align 8, !tbaa !232 ; 2 uses
  %.not.i179 = icmp eq ptr %i.amy, null
  br i1 %.not.i179, label %.thread259, label %bb.cv

bb.cp:                                            ; preds = %_ZN3gmx12AtomPairlist5clearEv.exit.i, %.lr.ph71.i
  %indvars.iv.i181 = phi i64 [ 1, %.lr.ph71.i ], [ %indvars.iv.next.i182, %_ZN3gmx12AtomPairlist5clearEv.exit.i ] ; 2 uses
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.adq, i64 %indvars.iv.i181
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !166 ; 8 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 8 ; 3 uses
  %i.anc = load ptr, ptr %i.ana, align 8, !tbaa !173 ; 3 uses
  %i.and = load ptr, ptr %i.anb, align 8, !tbaa !316 ; 2 uses
  %i.ane = ptrtoint ptr %i.and to i64
  %i.anf = ptrtoint ptr %i.anc to i64
  %i.ang = sub i64 %i.ane, %i.anf
  %i.anh = icmp sgt i64 %i.ang, 0
  br i1 %i.anh, label %.lr.ph66.i, label %._crit_edge67.i

.lr.ph66.i:                                       ; preds = %bb.cp
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ana, i64 48 ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ana, i64 24 ; 2 uses
  br label %bb.ct

._crit_edge67.i:                                  ; preds = %._crit_edge.i189, %bb.cp
  %.lcssa61.i = phi ptr [ %i.anc, %bb.cp ], [ %i.apb, %._crit_edge.i189 ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.and, %bb.cp ], [ %i.apc, %._crit_edge.i189 ]
  %.not.i.i.i.i = icmp eq ptr %.lcssa.i, %.lcssa61.i
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPN3gmx12AtomPairlist6IEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN3gmx12AtomPairlist6IEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %._crit_edge67.i
  store ptr %.lcssa61.i, ptr %i.anb, align 8, !tbaa !316
  br label %_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i.i

_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPN3gmx12AtomPairlist6IEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %._crit_edge67.i
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ana, i64 24 ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ana, i64 32 ; 2 uses
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !175 ; 3 uses
  %i.ann = load ptr, ptr %i.ank, align 8, !tbaa !107 ; 3 uses
  %i.ano = ptrtoint ptr %i.anm to i64
  %i.anp = ptrtoint ptr %i.ann to i64
  %i.anq = sub i64 %i.ano, %i.anp
  %i.anr = ashr exact i64 %i.anq, 2               ; 2 uses
  %i.ans = icmp eq ptr %i.anm, %i.ann
  br i1 %i.ans, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i.i
  %i.ant = sub nuw nsw i64 1, %i.anr
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ank, i64 noundef %i.ant)
  br label %_ZN3gmx12AtomPairlist5clearEv.exit.i

bb.cr:                                            ; preds = %_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i.i
  %i.anu = icmp ugt i64 %i.anr, 1
  br i1 %i.anu, label %bb.cs, label %_ZN3gmx12AtomPairlist5clearEv.exit.i

bb.cs:                                            ; preds = %bb.cr
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ann, i64 4 ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.anm, %i.anv
  br i1 %.not.i.i1.i.i, label %_ZN3gmx12AtomPairlist5clearEv.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.cs
  store ptr %i.anv, ptr %i.anl, align 8, !tbaa !175
  br label %_ZN3gmx12AtomPairlist5clearEv.exit.i

_ZN3gmx12AtomPairlist5clearEv.exit.i:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.cs, %bb.cr, %bb.cq
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ana, i64 72
  store i32 0, ptr %i.anw, align 8, !tbaa !324
  %indvars.iv.next.i182 = add nuw nsw i64 %indvars.iv.i181, 1 ; 2 uses
  %exitcond.not.i183 = icmp eq i64 %indvars.iv.next.i182, %wide.trip.count.i180
  br i1 %exitcond.not.i183, label %._crit_edge72.i, label %bb.cp, !llvm.loop !477

bb.ct:                                            ; preds = %._crit_edge.i189, %.lr.ph66.i
  %i.anx = phi ptr [ %i.anc, %.lr.ph66.i ], [ %i.apb, %._crit_edge.i189 ]
  %.064.i = phi i64 [ 0, %.lr.ph66.i ], [ %i.apa, %._crit_edge.i189 ] ; 4 uses
  %i.any = load ptr, ptr %i.ani, align 8, !tbaa !169 ; 2 uses
  %i.anz = load ptr, ptr %i.anj, align 8, !tbaa !107
  %i.aoa = getelementptr [4 x i8], ptr %i.anz, i64 %.064.i ; 2 uses
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !101 ; 2 uses
  %i.aoc = sext i32 %i.aob to i64
  %i.aod = getelementptr inbounds [8 x i8], ptr %i.any, i64 %i.aoc ; 2 uses
  %i.aoe = getelementptr i8, ptr %i.aoa, i64 4
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !101
  %i.aog = sub nsw i32 %i.aof, %i.aob
  %i.aoh = sext i32 %i.aog to i64
  %.not.i.i.i184 = icmp eq ptr %i.any, null
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %i.aod, i64 %i.aoh
  %spec.select.i.i.i185 = select i1 %.not.i.i.i184, ptr null, ptr %i.aoi
  %i.aoj = ptrtoint ptr %spec.select.i.i.i185 to i64
  %i.aok = ptrtoint ptr %i.aod to i64
  %i.aol = sub i64 %i.aoj, %i.aok
  %i.aom = lshr exact i64 %i.aol, 3
  %i.aon = trunc i64 %i.aom to i32
  %i.aoo = getelementptr inbounds nuw [12 x i8], ptr %i.anx, i64 %.064.i
  call void @_ZN3gmx12AtomPairlist9addIEntryERKNS0_6IEntryEi(ptr noundef nonnull align 8 dereferenceable(76) %i.amt, ptr noundef nonnull align 4 dereferenceable(12) %i.aoo, i32 noundef %i.aon)
  %i.aop = load ptr, ptr %i.ani, align 8, !tbaa !169 ; 2 uses
  %i.aoq = load ptr, ptr %i.anj, align 8, !tbaa !107
  %i.aor = getelementptr [4 x i8], ptr %i.aoq, i64 %.064.i ; 2 uses
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !101 ; 2 uses
  %i.aot = sext i32 %i.aos to i64
  %i.aou = getelementptr inbounds [8 x i8], ptr %i.aop, i64 %i.aot ; 3 uses
  %i.aov = getelementptr i8, ptr %i.aor, i64 4
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !101
  %i.aox = sub nsw i32 %i.aow, %i.aos
  %i.aoy = sext i32 %i.aox to i64
  %.not.i.i31.i = icmp eq ptr %i.aop, null
  %i.aoz = getelementptr inbounds nuw [8 x i8], ptr %i.aou, i64 %i.aoy
  %spec.select.i.i32.i = select i1 %.not.i.i31.i, ptr null, ptr %i.aoz ; 2 uses
  %.not5962.i = icmp eq ptr %i.aou, %spec.select.i.i32.i
  br i1 %.not5962.i, label %._crit_edge.i189, label %.lr.ph.preheader.i186

.lr.ph.preheader.i186:                            ; preds = %bb.ct
  %.pre.i187 = load ptr, ptr %i.amw, align 8, !tbaa !344
  br label %.lr.ph.i188

._crit_edge.i189:                                 ; preds = %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i, %bb.ct
  %i.apa = add nuw nsw i64 %.064.i, 1             ; 2 uses
  %i.apb = load ptr, ptr %i.ana, align 8, !tbaa !173 ; 3 uses
  %i.apc = load ptr, ptr %i.anb, align 8, !tbaa !316 ; 2 uses
  %i.apd = ptrtoint ptr %i.apc to i64
  %i.ape = ptrtoint ptr %i.apb to i64
  %i.apf = sub i64 %i.apd, %i.ape
  %i.apg = sdiv exact i64 %i.apf, 12
  %i.aph = icmp slt i64 %i.apa, %i.apg
  br i1 %i.aph, label %bb.ct, label %._crit_edge67.i, !llvm.loop !478

.lr.ph.i188:                                      ; preds = %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i, %.lr.ph.preheader.i186
  %i.api = phi ptr [ %i.app, %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i ], [ %.pre.i187, %.lr.ph.preheader.i186 ]
  %.sroa.046.063.i = phi ptr [ %i.apy, %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i ], [ %i.aou, %.lr.ph.preheader.i186 ] ; 3 uses
  %i.apj = getelementptr inbounds i8, ptr %i.api, i64 -4
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !101
  %i.apl = sext i32 %i.apk to i64
  %i.apm = load ptr, ptr %i.amv, align 8, !tbaa !169
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %i.apm, i64 %i.apl
  %i.apo = load i64, ptr %.sroa.046.063.i, align 4
  store i64 %i.apo, ptr %i.apn, align 4
  %i.app = load ptr, ptr %i.amw, align 8, !tbaa !344 ; 2 uses
  %i.apq = getelementptr inbounds i8, ptr %i.app, i64 -4 ; 2 uses
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !101
  %i.aps = add nsw i32 %i.apr, 1
  store i32 %i.aps, ptr %i.apq, align 4, !tbaa !101
  %i.apt = getelementptr inbounds nuw i8, ptr %.sroa.046.063.i, i64 4
  %i.apu = load i8, ptr %i.apt, align 4, !tbaa !347, !range !131, !noundef !132
  %i.apv = trunc nuw i8 %i.apu to i1
  br i1 %i.apv, label %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i188
  %i.apw = load i32, ptr %i.amx, align 8, !tbaa !324
  %i.apx = add nsw i32 %i.apw, 1
  store i32 %i.apx, ptr %i.amx, align 8, !tbaa !324
  br label %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i

_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i: ; preds = %bb.cu, %.lr.ph.i188
  %i.apy = getelementptr inbounds nuw i8, ptr %.sroa.046.063.i, i64 8 ; 2 uses
  %.not59.i = icmp eq ptr %i.apy, %spec.select.i.i32.i
  br i1 %.not59.i, label %._crit_edge.i189, label %.lr.ph.i188

bb.cv:                                            ; preds = %._crit_edge72.i
  %i.apz = load ptr, ptr %i.amt, align 8, !tbaa !173
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !316
  %i.aqc = ptrtoint ptr %i.aqb to i64
  %i.aqd = ptrtoint ptr %i.apz to i64
  %i.aqe = sub i64 %i.aqc, %i.aqd
  %i.aqf = sdiv exact i64 %i.aqe, 12
  %i.aqg = trunc i64 %i.aqf to i32
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.amt, i64 48
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !169 ; 3 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.amt, i64 32
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !344
  %i.aql = getelementptr inbounds i8, ptr %i.aqk, i64 -4
  %i.aqm = load i32, ptr %i.aql, align 4, !tbaa !101
  %i.aqn = sext i32 %i.aqm to i64
  %.not.i.i39.i = icmp eq ptr %i.aqi, null
  %i.aqo = getelementptr inbounds nuw [8 x i8], ptr %i.aqi, i64 %i.aqn
  %spec.select.i.i40.i = select i1 %.not.i.i39.i, ptr null, ptr %i.aqo
  %i.aqp = ptrtoint ptr %spec.select.i.i40.i to i64
  %i.aqq = ptrtoint ptr %i.aqi to i64
  %i.aqr = sub i64 %i.aqp, %i.aqq
  %i.aqs = lshr exact i64 %i.aqr, 3
  %i.aqt = trunc i64 %i.aqs to i32
  %i.aqu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.amy, ptr noundef nonnull @.str.35, i32 noundef %i.aqg, i32 noundef %i.aqt) #14 ; 0 uses
  br label %_ZN3gmxL17combine_fep_listsENS_8ArrayRefISt10unique_ptrINS_12AtomPairlistESt14default_deleteIS2_EEEE.exit

_ZN3gmxL17combine_fep_listsENS_8ArrayRefISt10unique_ptrINS_12AtomPairlistESt14default_deleteIS2_EEEE.exit: ; preds = %bb.cv, %bb.cn, %_ZN3gmxL17balance_fep_listsENS_8ArrayRefISt10unique_ptrINS_12AtomPairlistESt14default_deleteIS2_EEEENS0_INS_14PairsearchWorkEEE.exit, %_ZN3gmxL19reduce_buffer_flagsENS_8ArrayRefINS_14PairsearchWorkEEEiNS0_ISt5arrayImLm2EEEE.exit
  %.pr = load ptr, ptr @debug, align 8, !tbaa !232 ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.thread259, label %bb.cw

bb.cw:                                            ; preds = %_ZN3gmxL17combine_fep_listsENS_8ArrayRefISt10unique_ptrINS_12AtomPairlistESt14default_deleteIS2_EEEE.exit
  %i.aqv = load i8, ptr %i.u, align 1, !tbaa !130, !range !131, !noundef !132
  %i.aqw = trunc nuw i8 %i.aqv to i1
  br i1 %i.aqw, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !133 ; 3 uses
  %i.aqz = load ptr, ptr %0, align 8, !tbaa !158  ; 3 uses
  %i.ara = ptrtoint ptr %i.aqy to i64
  %i.arb = ptrtoint ptr %i.aqz to i64
  %i.arc = sub i64 %i.ara, %i.arb
  %i.ard = icmp ult i64 %i.arc, 257
  %.not264325 = icmp eq ptr %i.aqz, %i.aqy
  %or.cond332 = or i1 %i.ard, %.not264325
  br i1 %or.cond332, label %.thread, label %.lr.ph327

.lr.ph327:                                        ; preds = %bb.cx, %.lr.ph327
  %.sroa.0216.0326 = phi ptr [ %i.arg, %.lr.ph327 ], [ %i.aqz, %bb.cx ] ; 2 uses
  %i.are = load ptr, ptr @debug, align 8, !tbaa !232
  %i.arf = load float, ptr %i.g, align 4, !tbaa !57
  %.val113 = load ptr, ptr %i.gq, align 8, !tbaa !279
  call fastcc void @_ZN3gmxL23print_nblist_statisticsILNS_12PairlistTypeE3EEEvP8_IO_FILERKNS_16NbnxnPairlistCpuERKNS_7GridSetEf(ptr noundef %i.are, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0216.0326, ptr %.val113, float noundef %i.arf)
  %i.arg = getelementptr inbounds nuw i8, ptr %.sroa.0216.0326, i64 256 ; 2 uses
  %.not264 = icmp eq ptr %i.arg, %i.aqy
  br i1 %.not264, label %.thread, label %.lr.ph327

bb.cy:                                            ; preds = %bb.cw
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !135
  %i.ark = load ptr, ptr %i.arh, align 8, !tbaa !143 ; 2 uses
  %i.arl = ptrtoint ptr %i.arj to i64
  %i.arm = ptrtoint ptr %i.ark to i64
  %i.arn = sub i64 %i.arl, %i.arm
  %i.aro = icmp ugt i64 %i.arn, 256
  br i1 %i.aro, label %bb.cz, label %.thread

bb.cz:                                            ; preds = %bb.cy
  %i.arp = load float, ptr %i.g, align 4, !tbaa !57
  %.val114 = load ptr, ptr %i.gq, align 8, !tbaa !279
  call fastcc void @_ZN3gmxL23print_nblist_statisticsILNS_12PairlistTypeE3EEEvP8_IO_FILERKNS_16NbnxnPairlistGpuERKNS_7GridSetEf(ptr noundef nonnull %.pr, ptr noundef nonnull align 8 dereferenceable(256) %i.ark, ptr %.val114, float noundef %i.arp)
  br label %.thread

.thread:                                          ; preds = %.lr.ph327, %bb.cx, %bb.cz, %bb.cy
  %.pr258 = load ptr, ptr @debug, align 8, !tbaa !232 ; 7 uses
  %.not104 = icmp eq ptr %.pr258, null
  br i1 %.not104, label %.thread259, label %bb.da

bb.da:                                            ; preds = %.thread
  %i.arq = load i8, ptr @gmx_debug_at, align 1, !tbaa !230, !range !131, !noundef !132
  %i.arr = trunc nuw i8 %i.arq to i1
  br i1 %i.arr, label %bb.db, label %_ZN3gmxL19print_nblist_sci_cjILNS_12PairlistTypeE3EEEvP8_IO_FILERKNS_16NbnxnPairlistGpuE.exit

bb.db:                                            ; preds = %bb.da
  %i.ars = load i8, ptr %i.u, align 1, !tbaa !130, !range !131, !noundef !132
  %i.art = trunc nuw i8 %i.ars to i1
  br i1 %i.art, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.aru = load ptr, ptr %0, align 8, !tbaa !501  ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !501 ; 2 uses
  %.not265328 = icmp eq ptr %i.aru, %i.arw
  br i1 %.not265328, label %_ZN3gmxL19print_nblist_sci_cjILNS_12PairlistTypeE3EEEvP8_IO_FILERKNS_16NbnxnPairlistGpuE.exit, label %.lr.ph331

.lr.ph331:                                        ; preds = %bb.dc, %_ZN3gmxL18print_nblist_ci_cjEP8_IO_FILERKNS_16NbnxnPairlistCpuE.exit
  %.sroa.0212.0329 = phi ptr [ %i.ata, %_ZN3gmxL18print_nblist_ci_cjEP8_IO_FILERKNS_16NbnxnPairlistCpuE.exit ], [ %i.aru, %bb.dc ] ; 4 uses
  %i.arx = load ptr, ptr @debug, align 8, !tbaa !232 ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %.sroa.0212.0329, i64 80
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !348 ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %.sroa.0212.0329, i64 88
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !348 ; 2 uses
  %.not20.i = icmp eq ptr %i.arz, %i.asb
  br i1 %.not20.i, label %_ZN3gmxL18print_nblist_ci_cjEP8_IO_FILERKNS_16NbnxnPairlistCpuE.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph331
  %i.asc = getelementptr inbounds nuw i8, ptr %.sroa.0212.0329, i64 128
  br label %bb.dd

bb.dd:                                            ; preds = %._crit_edge.i190, %.lr.ph23.i
  %.sroa.016.021.i = phi ptr [ %i.arz, %.lr.ph23.i ], [ %i.asq, %._crit_edge.i190 ] ; 5 uses
  %i.asd = load i32, ptr %.sroa.016.021.i, align 4, !tbaa !350
  %i.ase = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i, i64 4
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !351
  %i.asg = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i, i64 12 ; 3 uses
  %i.ash = load i32, ptr %i.asg, align 4, !tbaa !352
  %i.asi = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i, i64 8 ; 2 uses
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !353
  %i.ask = sub nsw i32 %i.ash, %i.asj
  %i.asl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.arx, ptr noundef nonnull @.str.45, i32 noundef %i.asd, i32 noundef %i.asf, i32 noundef %i.ask) #14 ; 0 uses
  %i.asm = load i32, ptr %i.asi, align 4, !tbaa !353 ; 2 uses
  %i.asn = load i32, ptr %i.asg, align 4, !tbaa !352
  %i.aso = icmp slt i32 %i.asm, %i.asn
  br i1 %i.aso, label %.lr.ph.preheader.i192, label %._crit_edge.i190

.lr.ph.preheader.i192:                            ; preds = %bb.dd
  %i.asp = sext i32 %i.asm to i64
  br label %.lr.ph.i193

._crit_edge.i190:                                 ; preds = %.lr.ph.i193, %bb.dd
  %i.asq = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i, i64 16 ; 2 uses
  %.not.i191 = icmp eq ptr %i.asq, %i.asb
  br i1 %.not.i191, label %_ZN3gmxL18print_nblist_ci_cjEP8_IO_FILERKNS_16NbnxnPairlistCpuE.exit, label %bb.dd

.lr.ph.i193:                                      ; preds = %.lr.ph.i193, %.lr.ph.preheader.i192
  %indvars.iv.i194 = phi i64 [ %i.asp, %.lr.ph.preheader.i192 ], [ %indvars.iv.next.i195, %.lr.ph.i193 ] ; 2 uses
  %i.asr = load ptr, ptr %i.asc, align 8, !tbaa !44
  %i.ass = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %indvars.iv.i194 ; 2 uses
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !355
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ass, i64 4
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !101
  %i.asw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.arx, ptr noundef nonnull @.str.46, i32 noundef %i.ast, i32 noundef %i.asv) #14 ; 0 uses
  %indvars.iv.next.i195 = add nsw i64 %indvars.iv.i194, 1 ; 2 uses
  %i.asx = load i32, ptr %i.asg, align 4, !tbaa !352
  %i.asy = sext i32 %i.asx to i64
  %i.asz = icmp slt i64 %indvars.iv.next.i195, %i.asy
  br i1 %i.asz, label %.lr.ph.i193, label %._crit_edge.i190, !llvm.loop !479

_ZN3gmxL18print_nblist_ci_cjEP8_IO_FILERKNS_16NbnxnPairlistCpuE.exit: ; preds = %._crit_edge.i190, %.lr.ph331
  %i.ata = getelementptr inbounds nuw i8, ptr %.sroa.0212.0329, i64 256 ; 2 uses
  %.not265 = icmp eq ptr %i.ata, %i.arw
  br i1 %.not265, label %_ZN3gmxL19print_nblist_sci_cjILNS_12PairlistTypeE3EEEvP8_IO_FILERKNS_16NbnxnPairlistGpuE.exit, label %.lr.ph331

bb.de:                                            ; preds = %bb.db
  %i.atb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !143 ; 3 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 88
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !137 ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.atc, i64 96
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !137 ; 2 uses
  %.not3644.i = icmp eq ptr %i.ate, %i.atg
  br i1 %.not3644.i, label %_ZN3gmxL19print_nblist_sci_cjILNS_12PairlistTypeE3EEEvP8_IO_FILERKNS_16NbnxnPairlistGpuE.exit, label %.lr.ph.i196

.lr.ph.i196:                                      ; preds = %bb.de
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atc, i64 120 ; 5 uses
  br label %bb.df

bb.df:                                            ; preds = %._crit_edge.i197, %.lr.ph.i196
  %.sroa.033.045.i = phi ptr [ %i.ate, %.lr.ph.i196 ], [ %i.avq, %._crit_edge.i197 ] ; 6 uses
  %i.ati = load i32, ptr %.sroa.033.045.i, align 4, !tbaa !357
  %i.atj = getelementptr inbounds nuw i8, ptr %.sroa.033.045.i, i64 4 ; 2 uses
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !358
  %i.atl = getelementptr inbounds nuw i8, ptr %.sroa.033.045.i, i64 12 ; 3 uses
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !359
  %i.atn = getelementptr inbounds nuw i8, ptr %.sroa.033.045.i, i64 8 ; 3 uses
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !360
  %i.atp = sub nsw i32 %i.atm, %i.ato
  %i.atq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.pr258, ptr noundef nonnull @.str.47, i32 noundef %i.ati, i32 noundef %i.atk, i32 noundef %i.atp) #14 ; 0 uses
  %i.atr = load i32, ptr %i.atn, align 4, !tbaa !360 ; 3 uses
  %i.ats = load i32, ptr %i.atl, align 4, !tbaa !359 ; 2 uses
  %i.att = icmp slt i32 %i.atr, %i.ats
  br i1 %i.att, label %.preheader.preheader.i, label %._crit_edge.i197

.preheader.preheader.i:                           ; preds = %bb.df
  %i.atu = sext i32 %i.atr to i64
  %.pre.i199 = load ptr, ptr %i.ath, align 8, !tbaa !98
  br label %.preheader.i200

.preheader.i200:                                  ; preds = %.preheader.i200, %.preheader.preheader.i
  %i.atv = phi ptr [ %.pre.i199, %.preheader.preheader.i ], [ %i.auw, %.preheader.i200 ]
  %indvars.iv.i201 = phi i64 [ %i.atu, %.preheader.preheader.i ], [ %indvars.iv.next.i202, %.preheader.i200 ] ; 6 uses
  %.03241.i = phi i32 [ 0, %.preheader.preheader.i ], [ %op.rdx, %.preheader.i200 ]
  %i.atw = getelementptr inbounds nuw [32 x i8], ptr %i.atv, i64 %indvars.iv.i201 ; 2 uses
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !101
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atw, i64 16
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !362
  %i.aua = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.pr258, ptr noundef nonnull @.str.48, i32 noundef %i.atx, i32 noundef %i.atz) #14 ; 0 uses
  %i.aub = load ptr, ptr %i.ath, align 8, !tbaa !98
  %i.auc = getelementptr inbounds nuw [32 x i8], ptr %i.aub, i64 %indvars.iv.i201 ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 16
  %i.aue = getelementptr inbounds nuw i8, ptr %i.auc, i64 4
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !101
  %i.aug = load i32, ptr %i.aud, align 4, !tbaa !362 ; 2 uses
  %i.auh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.pr258, ptr noundef nonnull @.str.48, i32 noundef %i.auf, i32 noundef %i.aug) #14 ; 0 uses
  %i.aui = load ptr, ptr %i.ath, align 8, !tbaa !98
  %i.auj = getelementptr inbounds nuw [32 x i8], ptr %i.aui, i64 %indvars.iv.i201 ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 16
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !362 ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.auj, i64 8
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !101
  %i.auo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.pr258, ptr noundef nonnull @.str.48, i32 noundef %i.aun, i32 noundef %i.aul) #14 ; 0 uses
  %i.aup = load ptr, ptr %i.ath, align 8, !tbaa !98
  %i.auq = getelementptr inbounds nuw [32 x i8], ptr %i.aup, i64 %indvars.iv.i201 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 16
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !362 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auq, i64 12
  %i.auu = load i32, ptr %i.aut, align 4, !tbaa !101
  %i.auv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.pr258, ptr noundef nonnull @.str.48, i32 noundef %i.auu, i32 noundef %i.aus) #14 ; 0 uses
  %i.auw = load ptr, ptr %i.ath, align 8, !tbaa !98 ; 2 uses
  %i.aux = getelementptr inbounds nuw [32 x i8], ptr %i.auw, i64 %indvars.iv.i201
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 16
  %i.auz = load i32, ptr %i.auy, align 4, !tbaa !362
  %i.ava = insertelement <32 x i32> poison, i32 %i.aug, i64 0
  %i.avb = insertelement <32 x i32> %i.ava, i32 %i.aul, i64 1
  %i.avc = insertelement <32 x i32> %i.avb, i32 %i.aus, i64 2
  %i.avd = insertelement <32 x i32> %i.avc, i32 %i.auz, i64 3
  %i.ave = shufflevector <32 x i32> %i.avd, <32 x i32> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.avf = lshr <32 x i32> %i.ave, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.avg = and <32 x i32> %i.avf, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 -1>
  %i.avh = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.avg)
  %op.rdx = add i32 %i.avh, %.03241.i             ; 2 uses
  %indvars.iv.next.i202 = add nsw i64 %indvars.iv.i201, 1 ; 2 uses
  %i.avi = load i32, ptr %i.atl, align 4, !tbaa !359 ; 2 uses
  %i.avj = sext i32 %i.avi to i64
  %i.avk = icmp slt i64 %indvars.iv.next.i202, %i.avj
  br i1 %i.avk, label %.preheader.i200, label %._crit_edge.loopexit.i, !llvm.loop !480

._crit_edge.loopexit.i:                           ; preds = %.preheader.i200
  %.pre54.i = load i32, ptr %i.atn, align 4, !tbaa !360
  br label %._crit_edge.i197

._crit_edge.i197:                                 ; preds = %._crit_edge.loopexit.i, %bb.df
  %i.avl = phi i32 [ %i.atr, %bb.df ], [ %.pre54.i, %._crit_edge.loopexit.i ]
  %.032.lcssa.i = phi i32 [ 0, %bb.df ], [ %op.rdx, %._crit_edge.loopexit.i ]
  %.lcssa.i198 = phi i32 [ %i.ats, %bb.df ], [ %i.avi, %._crit_edge.loopexit.i ]
  %i.avm = load i32, ptr %.sroa.033.045.i, align 4, !tbaa !357
  %i.avn = load i32, ptr %i.atj, align 4, !tbaa !358
  %i.avo = sub nsw i32 %.lcssa.i198, %i.avl
  %i.avp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.pr258, ptr noundef nonnull @.str.49, i32 noundef %i.avm, i32 noundef %i.avn, i32 noundef %i.avo, i32 noundef %.032.lcssa.i) #14 ; 0 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %.sroa.033.045.i, i64 16 ; 2 uses
  %.not36.i = icmp eq ptr %i.avq, %i.atg
  br i1 %.not36.i, label %_ZN3gmxL19print_nblist_sci_cjILNS_12PairlistTypeE3EEEvP8_IO_FILERKNS_16NbnxnPairlistGpuE.exit, label %bb.df

_ZN3gmxL19print_nblist_sci_cjILNS_12PairlistTypeE3EEEvP8_IO_FILERKNS_16NbnxnPairlistGpuE.exit: ; preds = %._crit_edge.i197, %_ZN3gmxL18print_nblist_ci_cjEP8_IO_FILERKNS_16NbnxnPairlistCpuE.exit, %bb.dc, %bb.de, %bb.da
  %i.avr = load ptr, ptr %i.e, align 8, !tbaa !229 ; 3 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 624
  %i.avt = load i8, ptr %i.avs, align 8, !tbaa !274, !range !131, !noundef !132
  %i.avu = trunc nuw i8 %i.avt to i1
  br i1 %i.avu, label %bb.dg, label %.thread259

bb.dg:                                            ; preds = %_ZN3gmxL19print_nblist_sci_cjILNS_12PairlistTypeE3EEEvP8_IO_FILERKNS_16NbnxnPairlistGpuE.exit
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avr, i64 632
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !276 ; 11 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avr, i64 640
  %i.avy = load ptr, ptr %i.avx, align 8, !tbaa !277 ; 4 uses
  %20 = ptrtoint ptr %i.avy to i64                ; 2 uses
  %i.avz = ptrtoint ptr %i.avw to i64             ; 2 uses
  %21 = sub i64 %20, %i.avz
  %i.awa = load i32, ptr %i.h, align 4, !tbaa !101 ; 5 uses
  %.not56.i = icmp eq ptr %i.avw, %i.avy
  br i1 %.not56.i, label %_ZN3gmxL20print_reduction_costENS_8ArrayRefIKSt5arrayImLm2EEEEi.exit, label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %bb.dg
  %i.awb = icmp sgt i32 %i.awa, 0
  br i1 %i.awb, label %.lr.ph63.split.us.i.preheader, label %iter.check967

.lr.ph63.split.us.i.preheader:                    ; preds = %.lr.ph63.i
  %xtraiter1089 = and i32 %i.awa, 3               ; 3 uses
  %i.awc = icmp ult i32 %i.awa, 4
  %unroll_iter1094 = and i32 %i.awa, 2147483644
  %lcmp.mod1091.not = icmp eq i32 %xtraiter1089, 0
  %lcmp.mod1093 = icmp ne i32 %xtraiter1089, 0
  br label %.lr.ph63.split.us.i

iter.check967:                                    ; preds = %.lr.ph63.i
  %i.awd = add i64 %20, -16
  %i.awe = sub i64 %i.awd, %i.avz                 ; 3 uses
  %i.awf = lshr i64 %i.awe, 4
  %i.awg = add nuw nsw i64 %i.awf, 1              ; 5 uses
  %min.iters.check923 = icmp ult i64 %i.awe, 48
  br i1 %min.iters.check923, label %.lr.ph63.split.i.preheader, label %vector.main.loop.iter.check924

vector.main.loop.iter.check924:                   ; preds = %iter.check967
  %min.iters.check925 = icmp ult i64 %i.awe, 240
  br i1 %min.iters.check925, label %vec.epilog.ph971, label %vector.ph926

vector.ph926:                                     ; preds = %vector.main.loop.iter.check924
  %i.awh = and i64 %i.awg, 12
  %n.vec927 = and i64 %i.awg, 2305843009213693936 ; 4 uses
  %i.awi = shl i64 %n.vec927, 4
  %i.awj = getelementptr i8, ptr %i.avw, i64 %i.awi
  br label %vector.body928

vector.body928:                                   ; preds = %vector.body928, %vector.ph926
  %index929 = phi i64 [ 0, %vector.ph926 ], [ %index.next954, %vector.body928 ] ; 2 uses
  %vec.phi930 = phi <4 x i32> [ zeroinitializer, %vector.ph926 ], [ %i.axi, %vector.body928 ]
  %vec.phi931 = phi <4 x i32> [ zeroinitializer, %vector.ph926 ], [ %i.axj, %vector.body928 ]
  %vec.phi932 = phi <4 x i32> [ zeroinitializer, %vector.ph926 ], [ %i.axk, %vector.body928 ]
  %vec.phi933 = phi <4 x i32> [ zeroinitializer, %vector.ph926 ], [ %i.axl, %vector.body928 ]
  %vec.phi934 = phi <4 x i32> [ zeroinitializer, %vector.ph926 ], [ %i.axe, %vector.body928 ]
  %vec.phi935 = phi <4 x i32> [ zeroinitializer, %vector.ph926 ], [ %i.axf, %vector.body928 ]
  %vec.phi936 = phi <4 x i32> [ zeroinitializer, %vector.ph926 ], [ %i.axg, %vector.body928 ]
  %vec.phi937 = phi <4 x i32> [ zeroinitializer, %vector.ph926 ], [ %i.axh, %vector.body928 ]
  %i.awk = shl i64 %index929, 4                   ; 4 uses
  %next.gep938 = getelementptr i8, ptr %i.avw, i64 %i.awk
  %i.awl = getelementptr i8, ptr %i.avw, i64 %i.awk
  %next.gep939 = getelementptr i8, ptr %i.awl, i64 64
  %i.awm = getelementptr i8, ptr %i.avw, i64 %i.awk
  %next.gep940 = getelementptr i8, ptr %i.awm, i64 128
  %i.awn = getelementptr i8, ptr %i.avw, i64 %i.awk
  %next.gep941 = getelementptr i8, ptr %i.awn, i64 192
  %wide.vec942 = load <8 x i64>, ptr %next.gep938, align 8 ; 2 uses
  %strided.vec943 = shufflevector <8 x i64> %wide.vec942, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec944 = shufflevector <8 x i64> %wide.vec942, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec945 = load <8 x i64>, ptr %next.gep939, align 8 ; 2 uses
  %strided.vec946 = shufflevector <8 x i64> %wide.vec945, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec947 = shufflevector <8 x i64> %wide.vec945, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec948 = load <8 x i64>, ptr %next.gep940, align 8 ; 2 uses
  %strided.vec949 = shufflevector <8 x i64> %wide.vec948, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec950 = shufflevector <8 x i64> %wide.vec948, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec951 = load <8 x i64>, ptr %next.gep941, align 8 ; 2 uses
  %strided.vec952 = shufflevector <8 x i64> %wide.vec951, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec953 = shufflevector <8 x i64> %wide.vec951, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.awo = icmp eq <4 x i64> %strided.vec943, splat (i64 1)
  %i.awp = icmp eq <4 x i64> %strided.vec946, splat (i64 1)
  %i.awq = icmp eq <4 x i64> %strided.vec949, splat (i64 1)
  %i.awr = icmp eq <4 x i64> %strided.vec952, splat (i64 1)
  %i.aws = icmp eq <4 x i64> %strided.vec944, zeroinitializer
  %i.awt = icmp eq <4 x i64> %strided.vec947, zeroinitializer
  %i.awu = icmp eq <4 x i64> %strided.vec950, zeroinitializer
  %i.awv = icmp eq <4 x i64> %strided.vec953, zeroinitializer
  %i.aww = select <4 x i1> %i.awo, <4 x i1> %i.aws, <4 x i1> zeroinitializer
  %i.awx = select <4 x i1> %i.awp, <4 x i1> %i.awt, <4 x i1> zeroinitializer
  %i.awy = select <4 x i1> %i.awq, <4 x i1> %i.awu, <4 x i1> zeroinitializer
  %i.awz = select <4 x i1> %i.awr, <4 x i1> %i.awv, <4 x i1> zeroinitializer
  %i.axa = zext <4 x i1> %i.aww to <4 x i32>      ; 2 uses
  %i.axb = zext <4 x i1> %i.awx to <4 x i32>      ; 2 uses
  %i.axc = zext <4 x i1> %i.awy to <4 x i32>      ; 2 uses
  %i.axd = zext <4 x i1> %i.awz to <4 x i32>      ; 2 uses
  %i.axe = add <4 x i32> %vec.phi934, %i.axa      ; 2 uses
  %i.axf = add <4 x i32> %vec.phi935, %i.axb      ; 2 uses
  %i.axg = add <4 x i32> %vec.phi936, %i.axc      ; 2 uses
  %i.axh = add <4 x i32> %vec.phi937, %i.axd      ; 2 uses
  %i.axi = add <4 x i32> %vec.phi930, %i.axa      ; 2 uses
  %i.axj = add <4 x i32> %vec.phi931, %i.axb      ; 2 uses
  %i.axk = add <4 x i32> %vec.phi932, %i.axc      ; 2 uses
  %i.axl = add <4 x i32> %vec.phi933, %i.axd      ; 2 uses
  %index.next954 = add nuw i64 %index929, 16      ; 2 uses
  %i.axm = icmp eq i64 %index.next954, %n.vec927
  br i1 %i.axm, label %middle.block955, label %vector.body928, !llvm.loop !481

middle.block955:                                  ; preds = %vector.body928
  %bin.rdx956 = add <4 x i32> %i.axj, %i.axi
  %bin.rdx957 = add <4 x i32> %i.axk, %bin.rdx956
  %bin.rdx958 = add <4 x i32> %i.axl, %bin.rdx957
  %i.axn = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx958) ; 3 uses
  %bin.rdx959 = add <4 x i32> %i.axf, %i.axe
  %bin.rdx960 = add <4 x i32> %i.axg, %bin.rdx959
  %bin.rdx961 = add <4 x i32> %i.axh, %bin.rdx960
  %i.axo = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx961) ; 3 uses
  %cmp.n962 = icmp eq i64 %i.awg, %n.vec927
  br i1 %cmp.n962, label %_ZN3gmxL20print_reduction_costENS_8ArrayRefIKSt5arrayImLm2EEEEi.exit, label %vec.epilog.iter.check969

vec.epilog.iter.check969:                         ; preds = %middle.block955
  %min.epilog.iters.check970 = icmp eq i64 %i.awh, 0
  br i1 %min.epilog.iters.check970, label %.lr.ph63.split.i.preheader, label %vec.epilog.ph971, !prof !185

vec.epilog.ph971:                                 ; preds = %vector.main.loop.iter.check924, %vec.epilog.iter.check969
  %vec.epilog.resume.val963 = phi i64 [ %n.vec927, %vec.epilog.iter.check969 ], [ 0, %vector.main.loop.iter.check924 ]
  %bc.merge.rdx964 = phi i32 [ %i.axn, %vec.epilog.iter.check969 ], [ 0, %vector.main.loop.iter.check924 ]
  %bc.merge.rdx965 = phi i32 [ %i.axo, %vec.epilog.iter.check969 ], [ 0, %vector.main.loop.iter.check924 ]
  %n.vec972 = and i64 %i.awg, 2305843009213693948 ; 3 uses
  %i.axp = shl i64 %n.vec972, 4
  %i.axq = getelementptr i8, ptr %i.avw, i64 %i.axp
  %i.axr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx964, i64 0
  %i.axs = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx965, i64 0
  br label %vec.epilog.vector.body973

vec.epilog.vector.body973:                        ; preds = %vec.epilog.vector.body973, %vec.epilog.ph971
  %index974 = phi i64 [ %vec.epilog.resume.val963, %vec.epilog.ph971 ], [ %index.next981, %vec.epilog.vector.body973 ] ; 2 uses
  %vec.phi975 = phi <4 x i32> [ %i.axr, %vec.epilog.ph971 ], [ %i.axz, %vec.epilog.vector.body973 ]
  %vec.phi976 = phi <4 x i32> [ %i.axs, %vec.epilog.ph971 ], [ %i.axy, %vec.epilog.vector.body973 ]
  %i.axt = shl i64 %index974, 4
  %next.gep977 = getelementptr i8, ptr %i.avw, i64 %i.axt
  %wide.vec978 = load <8 x i64>, ptr %next.gep977, align 8 ; 2 uses
  %strided.vec979 = shufflevector <8 x i64> %wide.vec978, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec980 = shufflevector <8 x i64> %wide.vec978, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.axu = icmp eq <4 x i64> %strided.vec979, splat (i64 1)
  %i.axv = icmp eq <4 x i64> %strided.vec980, zeroinitializer
  %i.axw = select <4 x i1> %i.axu, <4 x i1> %i.axv, <4 x i1> zeroinitializer
  %i.axx = zext <4 x i1> %i.axw to <4 x i32>      ; 2 uses
  %i.axy = add <4 x i32> %vec.phi976, %i.axx      ; 2 uses
  %i.axz = add <4 x i32> %vec.phi975, %i.axx      ; 2 uses
  %index.next981 = add nuw i64 %index974, 4       ; 2 uses
  %i.aya = icmp eq i64 %index.next981, %n.vec972
  br i1 %i.aya, label %vec.epilog.middle.block982, label %vec.epilog.vector.body973, !llvm.loop !482

vec.epilog.middle.block982:                       ; preds = %vec.epilog.vector.body973
  %i.ayb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.axz) ; 2 uses
  %i.ayc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.axy) ; 2 uses
  %cmp.n983 = icmp eq i64 %i.awg, %n.vec972
  br i1 %cmp.n983, label %_ZN3gmxL20print_reduction_costENS_8ArrayRefIKSt5arrayImLm2EEEEi.exit, label %.lr.ph63.split.i.preheader

.lr.ph63.split.i.preheader:                       ; preds = %iter.check967, %vec.epilog.iter.check969, %vec.epilog.middle.block982
  %.061.i.ph = phi i32 [ 0, %iter.check967 ], [ %i.axn, %vec.epilog.iter.check969 ], [ %i.ayb, %vec.epilog.middle.block982 ]
  %.03560.i.ph = phi i32 [ 0, %iter.check967 ], [ %i.axo, %vec.epilog.iter.check969 ], [ %i.ayc, %vec.epilog.middle.block982 ]
  %.sroa.0.057.i.ph = phi ptr [ %i.avw, %iter.check967 ], [ %i.awj, %vec.epilog.iter.check969 ], [ %i.axq, %vec.epilog.middle.block982 ]
  br label %.lr.ph63.split.i

.lr.ph63.split.us.i:                              ; preds = %.lr.ph63.split.us.i.preheader, %bb.dj
  %.061.us.i = phi i32 [ %.1.us.i, %bb.dj ], [ 0, %.lr.ph63.split.us.i.preheader ] ; 3 uses
  %.03560.us.i = phi i32 [ %.136.us.i, %bb.dj ], [ 0, %.lr.ph63.split.us.i.preheader ] ; 3 uses
  %.sroa.0.057.us.i = phi ptr [ %i.bab, %bb.dj ], [ %i.avw, %.lr.ph63.split.us.i.preheader ] ; 2 uses
  %i.ayd = phi <2 x i32> [ %i.baa, %bb.dj ], [ zeroinitializer, %.lr.ph63.split.us.i.preheader ] ; 3 uses
  %i.aye = load <2 x i64>, ptr %.sroa.0.057.us.i, align 8 ; 7 uses
  %i.ayf = extractelement <2 x i64> %i.aye, i64 0 ; 2 uses
  %i.ayg = icmp eq i64 %i.ayf, 1
  %i.ayh = extractelement <2 x i64> %i.aye, i64 1
  %i.ayi = icmp eq i64 %i.ayh, 0                  ; 2 uses
  %spec.select.i.us.i = select i1 %i.ayg, i1 %i.ayi, i1 false
  br i1 %spec.select.i.us.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph63.split.us.i
  %i.ayj = icmp eq i64 %i.ayf, 0
  %spec.select.i48.us.i = select i1 %i.ayj, i1 %i.ayi, i1 false
  br i1 %spec.select.i48.us.i, label %bb.dj, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %bb.dh
  br i1 %i.awc, label %.preheader.us.i.epil.preheader, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %.preheader.us.i
  %.03955.us.i = phi i32 [ %i.azx, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ] ; 9 uses
  %.04054.us.i = phi i32 [ %spec.select.us.i.3, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ]
  %niter1095 = phi i32 [ %niter1095.next.3, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store <2 x i64> %i.aye, ptr %11, align 16
  %i.ayk = lshr i32 %.03955.us.i, 6
  %i.ayl = zext nneg i32 %i.ayk to i64
  %i.aym = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ayl
  %i.ayn = load i64, ptr %i.aym, align 8, !tbaa !152
  %i.ayo = and i32 %.03955.us.i, 60
  %i.ayp = zext nneg i32 %i.ayo to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.ayq = lshr i64 %i.ayn, %i.ayp
  %i.ayr = trunc i64 %i.ayq to i32
  %i.ays = and i32 %i.ayr, 1
  %spec.select.us.i = add nuw nsw i32 %i.ays, %.04054.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store <2 x i64> %i.aye, ptr %11, align 16
  %i.ayt = lshr i32 %.03955.us.i, 6
  %i.ayu = zext nneg i32 %i.ayt to i64
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ayu
  %i.ayw = load i64, ptr %i.ayv, align 8, !tbaa !152
  %i.ayx = and i32 %.03955.us.i, 60
  %i.ayy = or disjoint i32 %i.ayx, 1
  %i.ayz = zext nneg i32 %i.ayy to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.aza = lshr i64 %i.ayw, %i.ayz
  %i.azb = trunc i64 %i.aza to i32
  %i.azc = and i32 %i.azb, 1
  %spec.select.us.i.1 = add nuw nsw i32 %i.azc, %spec.select.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store <2 x i64> %i.aye, ptr %11, align 16
  %i.azd = lshr i32 %.03955.us.i, 6
  %i.aze = zext nneg i32 %i.azd to i64
  %i.azf = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.aze
  %i.azg = load i64, ptr %i.azf, align 8, !tbaa !152
  %i.azh = and i32 %.03955.us.i, 60
  %i.azi = or disjoint i32 %i.azh, 2
  %i.azj = zext nneg i32 %i.azi to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.azk = lshr i64 %i.azg, %i.azj
  %i.azl = trunc i64 %i.azk to i32
  %i.azm = and i32 %i.azl, 1
  %spec.select.us.i.2 = add nuw nsw i32 %i.azm, %spec.select.us.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store <2 x i64> %i.aye, ptr %11, align 16
  %i.azn = lshr i32 %.03955.us.i, 6
  %i.azo = zext nneg i32 %i.azn to i64
  %i.azp = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.azo
  %i.azq = load i64, ptr %i.azp, align 8, !tbaa !152
  %i.azr = and i32 %.03955.us.i, 60
  %i.azs = or disjoint i32 %i.azr, 3
  %i.azt = zext nneg i32 %i.azs to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.azu = lshr i64 %i.azq, %i.azt
  %i.azv = trunc i64 %i.azu to i32
  %i.azw = and i32 %i.azv, 1
  %spec.select.us.i.3 = add nuw nsw i32 %i.azw, %spec.select.us.i.2 ; 3 uses
  %i.azx = add nuw nsw i32 %.03955.us.i, 4        ; 2 uses
  %niter1095.next.3 = add nuw nsw i32 %niter1095, 4 ; 2 uses
  %niter1095.ncmp.3 = icmp eq i32 %niter1095.next.3, %unroll_iter1094
  br i1 %niter1095.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i, !llvm.loop !483

bb.di:                                            ; preds = %.lr.ph63.split.us.i
  %i.azy = add nsw i32 %.061.us.i, 1
  %i.azz = add nsw i32 %.03560.us.i, 1
  br label %bb.dj

bb.dj:                                            ; preds = %._crit_edge.us.i, %bb.di, %bb.dh
  %.136.us.i = phi i32 [ %i.azz, %bb.di ], [ %.03560.us.i, %bb.dh ], [ %.03560.us.i, %._crit_edge.us.i ] ; 2 uses
  %.1.us.i = phi i32 [ %i.azy, %bb.di ], [ %.061.us.i, %bb.dh ], [ %i.bam, %._crit_edge.us.i ] ; 2 uses
  %i.baa = phi <2 x i32> [ %i.ayd, %bb.di ], [ %i.ayd, %bb.dh ], [ %i.bas, %._crit_edge.us.i ] ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %.sroa.0.057.us.i, i64 16 ; 2 uses
  %.not.us.i = icmp eq ptr %i.bab, %i.avy
  br i1 %.not.us.i, label %._crit_edge64.loopexit.i, label %.lr.ph63.split.us.i

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i
  br i1 %lcmp.mod1091.not, label %._crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.preheader
  %.03955.us.i.epil.init = phi i32 [ 0, %.preheader.us.i.preheader ], [ %i.azx, %._crit_edge.us.i.unr-lcssa ]
  %.04054.us.i.epil.init = phi i32 [ 0, %.preheader.us.i.preheader ], [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1093)
  br label %.preheader.us.i.epil

.preheader.us.i.epil:                             ; preds = %.preheader.us.i.epil, %.preheader.us.i.epil.preheader
  %.03955.us.i.epil = phi i32 [ %i.bal, %.preheader.us.i.epil ], [ %.03955.us.i.epil.init, %.preheader.us.i.epil.preheader ] ; 3 uses
  %.04054.us.i.epil = phi i32 [ %spec.select.us.i.epil, %.preheader.us.i.epil ], [ %.04054.us.i.epil.init, %.preheader.us.i.epil.preheader ]
  %epil.iter1090 = phi i32 [ %epil.iter1090.next, %.preheader.us.i.epil ], [ 0, %.preheader.us.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store <2 x i64> %i.aye, ptr %11, align 16
  %i.bac = lshr i32 %.03955.us.i.epil, 6
  %i.bad = zext nneg i32 %i.bac to i64
  %i.bae = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.bad
  %i.baf = load i64, ptr %i.bae, align 8, !tbaa !152
  %i.bag = and i32 %.03955.us.i.epil, 63
  %i.bah = zext nneg i32 %i.bag to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.bai = lshr i64 %i.baf, %i.bah
  %i.baj = trunc i64 %i.bai to i32
  %i.bak = and i32 %i.baj, 1
  %spec.select.us.i.epil = add nuw nsw i32 %i.bak, %.04054.us.i.epil ; 2 uses
  %i.bal = add nuw nsw i32 %.03955.us.i.epil, 1
  %epil.iter1090.next = add i32 %epil.iter1090, 1 ; 2 uses
  %epil.iter1090.cmp.not = icmp eq i32 %epil.iter1090.next, %xtraiter1089
  br i1 %epil.iter1090.cmp.not, label %._crit_edge.us.i, label %.preheader.us.i.epil, !llvm.loop !484

._crit_edge.us.i:                                 ; preds = %.preheader.us.i.epil, %._crit_edge.us.i.unr-lcssa
  %spec.select.us.i.lcssa = phi i32 [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ], [ %spec.select.us.i.epil, %.preheader.us.i.epil ] ; 3 uses
  %i.bam = add nsw i32 %spec.select.us.i.lcssa, %.061.us.i
  %i.ban = icmp eq i32 %spec.select.us.i.lcssa, 1 ; 2 uses
  %i.bao = select i1 %i.ban, i32 0, i32 %spec.select.us.i.lcssa
  %i.bap = zext i1 %i.ban to i32
  %i.baq = insertelement <2 x i32> poison, i32 %i.bap, i64 0
  %i.bar = insertelement <2 x i32> %i.baq, i32 %i.bao, i64 1
  %i.bas = add nsw <2 x i32> %i.ayd, %i.bar
  br label %bb.dj

._crit_edge64.loopexit.i:                         ; preds = %bb.dj
  %i.bat = sitofp <2 x i32> %i.baa to <2 x double>
  br label %_ZN3gmxL20print_reduction_costENS_8ArrayRefIKSt5arrayImLm2EEEEi.exit

.lr.ph63.split.i:                                 ; preds = %.lr.ph63.split.i.preheader, %.lr.ph63.split.i
  %.061.i = phi i32 [ %.1.i, %.lr.ph63.split.i ], [ %.061.i.ph, %.lr.ph63.split.i.preheader ]
  %.03560.i = phi i32 [ %.136.i, %.lr.ph63.split.i ], [ %.03560.i.ph, %.lr.ph63.split.i.preheader ]
  %.sroa.0.057.i = phi ptr [ %i.bax, %.lr.ph63.split.i ], [ %.sroa.0.057.i.ph, %.lr.ph63.split.i.preheader ] ; 3 uses
  %.sroa.014.0.copyload.i = load i64, ptr %.sroa.0.057.i, align 8
  %.sroa.215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.057.i, i64 8
  %.sroa.215.0.copyload.i = load i64, ptr %.sroa.215.0..sroa_idx.i, align 8, !tbaa !102
  %i.bau = icmp eq i64 %.sroa.014.0.copyload.i, 1
  %i.bav = icmp eq i64 %.sroa.215.0.copyload.i, 0
  %spec.select.i.i203 = select i1 %i.bau, i1 %i.bav, i1 false
  %i.baw = zext i1 %spec.select.i.i203 to i32     ; 2 uses
  %.136.i = add nuw nsw i32 %.03560.i, %i.baw     ; 2 uses
  %.1.i = add nuw nsw i32 %.061.i, %i.baw         ; 2 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %.sroa.0.057.i, i64 16 ; 2 uses
  %.not.i204 = icmp eq ptr %i.bax, %i.avy
  br i1 %.not.i204, label %_ZN3gmxL20print_reduction_costENS_8ArrayRefIKSt5arrayImLm2EEEEi.exit, label %.lr.ph63.split.i, !llvm.loop !485

_ZN3gmxL20print_reduction_costENS_8ArrayRefIKSt5arrayImLm2EEEEi.exit: ; preds = %.lr.ph63.split.i, %middle.block955, %vec.epilog.middle.block982, %bb.dg, %._crit_edge64.loopexit.i
  %.035.lcssa.i = phi i32 [ 0, %bb.dg ], [ %.136.us.i, %._crit_edge64.loopexit.i ], [ %i.ayc, %vec.epilog.middle.block982 ], [ %i.axo, %middle.block955 ], [ %.136.i, %.lr.ph63.split.i ]
  %.0.lcssa.i = phi i32 [ 0, %bb.dg ], [ %.1.us.i, %._crit_edge64.loopexit.i ], [ %i.ayb, %vec.epilog.middle.block982 ], [ %i.axn, %middle.block955 ], [ %.1.i, %.lr.ph63.split.i ]
  %i.bay = phi <2 x double> [ zeroinitializer, %bb.dg ], [ %i.bat, %._crit_edge64.loopexit.i ], [ zeroinitializer, %vec.epilog.middle.block982 ], [ zeroinitializer, %middle.block955 ], [ zeroinitializer, %.lr.ph63.split.i ]
  %i.baz = ashr exact i64 %21, 4                  ; 2 uses
  %i.bba = uitofp i64 %i.baz to double
  %i.bbb = load ptr, ptr @debug, align 8, !tbaa !232
  %i.bbc = insertelement <2 x i32> poison, i32 %.0.lcssa.i, i64 0
  %i.bbd = insertelement <2 x i32> %i.bbc, i32 %.035.lcssa.i, i64 1
  %i.bbe = sitofp <2 x i32> %i.bbd to <2 x double>
  %i.bbf = insertelement <2 x double> poison, double %i.bba, i64 0
  %i.bbg = shufflevector <2 x double> %i.bbf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bbh = fdiv <2 x double> %i.bbe, %i.bbg       ; 2 uses
  %i.bbi = fdiv <2 x double> %i.bay, %i.bbg       ; 2 uses
  %i.bbj = extractelement <2 x double> %i.bbh, i64 0
  %i.bbk = extractelement <2 x double> %i.bbh, i64 1
  %i.bbl = extractelement <2 x double> %i.bbi, i64 0
  %i.bbm = extractelement <2 x double> %i.bbi, i64 1
  %i.bbn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bbb, ptr noundef nonnull @.str.50, i64 noundef %i.baz, i32 noundef %i.awa, double noundef %i.bbj, double noundef %i.bbk, double noundef %i.bbl, double noundef %i.bbm) #14 ; 0 uses
  br label %.thread259

.thread259:                                       ; preds = %._crit_edge72.i, %_ZN3gmxL17combine_fep_listsENS_8ArrayRefISt10unique_ptrINS_12AtomPairlistESt14default_deleteIS2_EEEE.exit, %_ZN3gmxL19print_nblist_sci_cjILNS_12PairlistTypeE3EEEvP8_IO_FILERKNS_16NbnxnPairlistGpuE.exit, %_ZN3gmxL20print_reduction_costENS_8ArrayRefIKSt5arrayImLm2EEEEi.exit, %.thread
  %i.bbo = load ptr, ptr %i.q, align 8, !tbaa !145, !nonnull !132, !align !146
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 17
  %i.bbq = load i8, ptr %i.bbp, align 1, !tbaa !505, !range !131, !noundef !132
  %i.bbr = trunc nuw i8 %i.bbq to i1
  br i1 %i.bbr, label %bb.dk, label %_ZN3gmxL29prepareListsForDynamicPruningENS_8ArrayRefINS_16NbnxnPairlistCpuEEE.exit

bb.dk:                                            ; preds = %.thread259
  %i.bbs = load i8, ptr %i.u, align 1, !tbaa !130, !range !131, !noundef !132
  %i.bbt = trunc nuw i8 %i.bbs to i1
  br i1 %i.bbt, label %bb.dl, label %_ZN3gmxL29prepareListsForDynamicPruningENS_8ArrayRefINS_16NbnxnPairlistCpuEEE.exit

bb.dl:                                            ; preds = %bb.dk
  %i.bbu = load ptr, ptr %0, align 8, !tbaa !158  ; 2 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bbw = load ptr, ptr %i.bbv, align 8, !tbaa !133 ; 2 uses
  %.not14.i = icmp eq ptr %i.bbu, %i.bbw
  br i1 %.not14.i, label %_ZN3gmxL29prepareListsForDynamicPruningENS_8ArrayRefINS_16NbnxnPairlistCpuEEE.exit, label %.lr.ph.i206

.lr.ph.i206:                                      ; preds = %bb.dl, %bb.do
  %.sroa.011.015.i = phi ptr [ %i.bcv, %bb.do ], [ %i.bbu, %bb.dl ] ; 13 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 104 ; 2 uses
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !348 ; 2 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 112
  %i.bca = load ptr, ptr %i.bbz, align 8, !tbaa !348 ; 2 uses
  %i.bcb = icmp eq ptr %i.bby, %i.bca
  br i1 %i.bcb, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.lr.ph.i206
  %i.bcc = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 152 ; 2 uses
  %i.bcd = load ptr, ptr %i.bcc, align 8, !tbaa !161 ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 160
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !161 ; 2 uses
  %i.bcg = icmp eq ptr %i.bcd, %i.bcf
  br i1 %i.bcg, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.lr.ph.i206
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmxL29prepareListsForDynamicPruningENS_8ArrayRefINS_16NbnxnPairlistCpuEEEENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 4115) #33
  unreachable

bb.do:                                            ; preds = %bb.dm
  %i.bch = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 80 ; 2 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 88
  %i.bcj = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 96 ; 2 uses
  %i.bck = load ptr, ptr %i.bcj, align 8, !tbaa !47
  %i.bcl = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 120 ; 2 uses
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !47
  store ptr %i.bcm, ptr %i.bcj, align 8, !tbaa !47
  %i.bcn = load <2 x ptr>, ptr %i.bch, align 8, !tbaa !348
  store ptr %i.bby, ptr %i.bch, align 8, !tbaa !46
  store ptr %i.bca, ptr %i.bci, align 8, !tbaa !159
  store <2 x ptr> %i.bcn, ptr %i.bbx, align 8, !tbaa !348
  store ptr %i.bck, ptr %i.bcl, align 8, !tbaa !47
  %i.bco = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 128 ; 2 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 136
  %i.bcq = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 144 ; 2 uses
  %i.bcr = load ptr, ptr %i.bcq, align 8, !tbaa !45
  %i.bcs = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 168 ; 2 uses
  %i.bct = load ptr, ptr %i.bcs, align 8, !tbaa !45
  store ptr %i.bct, ptr %i.bcq, align 8, !tbaa !45
  %i.bcu = load <2 x ptr>, ptr %i.bco, align 8, !tbaa !161
  store ptr %i.bcd, ptr %i.bco, align 8, !tbaa !44
  store ptr %i.bcf, ptr %i.bcp, align 8, !tbaa !160
  store <2 x ptr> %i.bcu, ptr %i.bcc, align 8, !tbaa !161
  store ptr %i.bcr, ptr %i.bcs, align 8, !tbaa !45
  %i.bcv = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 256 ; 2 uses
  %.not.i207 = icmp eq ptr %i.bcv, %i.bbw
  br i1 %.not.i207, label %_ZN3gmxL29prepareListsForDynamicPruningENS_8ArrayRefINS_16NbnxnPairlistCpuEEE.exit, label %.lr.ph.i206

_ZN3gmxL29prepareListsForDynamicPruningENS_8ArrayRefINS_16NbnxnPairlistCpuEEE.exit: ; preds = %bb.do, %bb.dl, %bb.dk, %.thread259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #20

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx11PairlistSet18constructPairlistsENS_19InteractionLocalityERKNS_7GridSetENS_8ArrayRefINS_14PairsearchWorkEEEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEbiP6t_nrnbPNS_19SearchCycleCountingE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %8, ptr noundef nonnull align 8 dereferenceable(372) %9, ptr noundef nonnull align 8 dereferenceable(372) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %11, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %17 = alloca %"struct.gmx::AtomPairlist::IEntry", align 4 ; 4 uses
  %18 = alloca %"struct.gmx::AtomPairlist::IEntry", align 4 ; 6 uses
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.63", align 1 ; 3 uses
  %22 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = alloca [3 x [3 x float]], align 16       ; 11 uses
  %23 = alloca %"class.gmx::ThreadedCellIndexer", align 8 ; 10 uses
  %24 = alloca %"struct.gmx::AtomPairlist::IEntry", align 4 ; 4 uses
  %25 = alloca %"struct.gmx::AtomPairlist::IEntry", align 4 ; 5 uses
  %26 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %27 = alloca %"struct.gmx::AtomPairlist::IEntry", align 4 ; 6 uses
  %28 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::allocator.63", align 1 ; 3 uses
  %31 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = alloca [3 x [3 x float]], align 16       ; 11 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  %32 = alloca %"class.gmx::ThreadedCellIndexer", align 8 ; 10 uses
  %33 = alloca %"class.gmx::BasicVector", align 4 ; 7 uses
  %34 = alloca %"struct.std::array.183", align 8  ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !101    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.pb

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i32 %i.j, ptr %i.e, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i32 1, ptr %i.f, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i32 0, ptr %i.g, align 4, !tbaa !101
  %i.k = load i32, ptr %0, align 4, !tbaa !101    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !101
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !101
  %i.n = load i32, ptr %i.d, align 4, !tbaa !101  ; 2 uses
  %.not334 = icmp sgt i32 %i.n, %i.m
  br i1 %.not334, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 81
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 132 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 164 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 124 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 76 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 76 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 28 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 68 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 68 ; 8 uses
  %.sroa.12.0..sroa_idx.i178 = getelementptr inbounds nuw i8, ptr %8, i64 6 ; 2 uses
  %.sroa.13.0..sroa_idx828.i = getelementptr inbounds nuw i8, ptr %8, i64 7 ; 2 uses
  %.sroa.14.0..sroa_idx834.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ak = icmp eq ptr %9, %10                     ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 100 ; 5 uses
  %.sroa.3.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %8, i64 5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 92 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %23, i64 12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %23, i64 28 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 152 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 92 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 288
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 152 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 176 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 100 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 176
end_hunk_1
begin_hunk_2_@_ZN3gmx11PairlistSet18constructPairlistsENS_19InteractionLocalityERKNS_7GridSetENS_8ArrayRefINS_14PairsearchWorkEEEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEbiP6t_nrnbPNS_19SearchCycleCountingE.omp_outlined:bb.a
  store ptr %i.bmv, ptr %i.lx, align 8, !tbaa !175
  br label %_ZN3gmx12AtomPairlist18popIEntryWhenEmptyEv.exit.i.i

bb.gq:                                            ; preds = %.loopexit.i442.i, %.lr.ph235.i.i
  %i.bnj = phi ptr [ %.pre.i440.i, %.lr.ph235.i.i ], [ %i.buc, %.loopexit.i442.i ] ; 4 uses
  %indvars.iv.i441.i = phi i64 [ %i.bkn, %.lr.ph235.i.i ], [ %indvars.iv.next.i443.i, %.loopexit.i442.i ] ; 4 uses
  %i.bnk = getelementptr inbounds nuw [8 x i8], ptr %i.bnj, i64 %indvars.iv.i441.i
  %i.bnl = load i32, ptr %i.bnk, align 4, !tbaa !355 ; 8 uses
  %i.bnm = load i32, ptr %i.bi, align 4, !tbaa !607 ; 3 uses
  br i1 %i.bkj, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.bnn = sub nsw i32 %i.bnl, %i.bnm
  %i.bno = sext i32 %i.bnn to i64
  %i.bnp = load ptr, ptr %i.bu, align 8, !tbaa !634
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %i.bnp, i64 %i.bno
  %i.bnr = load i32, ptr %i.bnq, align 4, !tbaa !101
  br label %bb.gv

bb.gs:                                            ; preds = %bb.gq
  %i.bns = load ptr, ptr %i.bu, align 8, !tbaa !634 ; 2 uses
  br i1 %i.bkk, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.bnt = shl nsw i32 %i.bnm, 1
  %i.bnu = sub nsw i32 %i.bnl, %i.bnt
  %i.bnv = ashr i32 %i.bnu, 1
  %i.bnw = sext i32 %i.bnv to i64
  %i.bnx = getelementptr inbounds nuw [4 x i8], ptr %i.bns, i64 %i.bnw
  %i.bny = load i32, ptr %i.bnx, align 4, !tbaa !101
  %i.bnz = trunc i32 %i.bnl to i1
  %i.boa = select i1 %i.bnz, i32 %.val184.i.i, i32 0
  %i.bob = lshr i32 %i.bny, %i.boa
  %i.boc = and i32 %i.bob, %i.bkl
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gs
  %i.bod = ashr i32 %i.bnm, 1
  %i.boe = sub nsw i32 %i.bnl, %i.bod
  %i.bof = shl nsw i32 %i.boe, 1
  %i.bog = sext i32 %i.bof to i64
  %i.boh = getelementptr [4 x i8], ptr %i.bns, i64 %i.bog ; 2 uses
  %i.boi = load i32, ptr %i.boh, align 4, !tbaa !101
  %i.boj = getelementptr i8, ptr %i.boh, i64 4
  %i.bok = load i32, ptr %i.boj, align 4, !tbaa !101
  %i.bol = load i32, ptr %i.cm, align 4, !tbaa !280
  %i.bom = shl i32 %i.bok, %i.bol
  %i.bon = add i32 %i.bom, %i.boi
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gr
  %.0169.i.i = phi i32 [ %i.bnr, %bb.gr ], [ %i.boc, %bb.gt ], [ %i.bon, %bb.gu ] ; 2 uses
  %i.boo = icmp ne i32 %.0169.i.i, 0
  %or.cond.i.i = select i1 %i.bmg, i1 true, i1 %i.boo
  br i1 %or.cond.i.i, label %.preheader.i446.i, label %.loopexit.i442.i

.preheader.i446.i:                                ; preds = %bb.gv
  %i.bop = load i32, ptr %i.gp, align 4, !tbaa !41 ; 2 uses
  %i.boq = icmp sgt i32 %i.bop, 0
  br i1 %i.boq, label %.lr.ph.i447.i, label %.loopexit.i442.i

.lr.ph.i447.i:                                    ; preds = %.preheader.i446.i
  %i.bor = shl i32 %i.bnl, 1                      ; 2 uses
  %i.bos = ashr i32 %i.bnl, 1
  %i.bot = and i32 %i.bor, 2
  %i.bou = sext i32 %i.bos to i64
  %i.bov = sext i32 %i.bnl to i64
  br label %bb.gw

bb.gw:                                            ; preds = %bb.hp, %.lr.ph.i447.i
  %i.bow = phi i32 [ %i.bop, %.lr.ph.i447.i ], [ %i.bty, %bb.hp ] ; 3 uses
  %i.box = phi ptr [ %i.bnj, %.lr.ph.i447.i ], [ %i.btz, %bb.hp ] ; 2 uses
  %.0167231.i.i = phi i32 [ 0, %.lr.ph.i447.i ], [ %i.bua, %bb.hp ] ; 9 uses
  %i.boy = mul nsw i32 %i.bow, %i.bnl
  %i.boz = add nsw i32 %.0167231.i.i, %i.boy      ; 8 uses
  %i.bpa = sext i32 %i.boz to i64
  %i.bpb = getelementptr inbounds [4 x i8], ptr %i.bjl, i64 %i.bpa
  %i.bpc = load i32, ptr %i.bpb, align 4, !tbaa !101 ; 2 uses
  %i.bpd = icmp slt i32 %i.bpc, 0                 ; 2 uses
  %brmerge.i.i = or i1 %i.bmg, %i.bpd
  %i.bpe = shl nuw i32 1, %.0167231.i.i
  %i.bpf = and i32 %i.bpe, %.0169.i.i
  %i.bpg = icmp eq i32 %i.bpf, 0
  %.not.i448.i = select i1 %brmerge.i.i, i1 %i.bpd, i1 %i.bpg
  %i.bph = icmp slt i32 %i.boz, %i.bkv
  %i.bpi = and i1 %i.sp, %i.bph
  %or.cond3.i.i = or i1 %i.bpi, %.not.i448.i
  br i1 %or.cond3.i.i, label %bb.hp, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.bpj = load i32, ptr %i.hl, align 8, !tbaa !629
  switch i32 %i.bpj, label %_ZN3gmxL13getCoordinateERKNS_16nbnxn_atomdata_tEi.exit199.i.i [
    i32 1, label %bb.gy
    i32 0, label %bb.gz
    i32 2, label %bb.ha
    i32 3, label %bb.hb
  ]

bb.gy:                                            ; preds = %bb.gx
  %i.bpk = shl nsw i32 %i.boz, 2
  br label %.sink.split.i187.i.i

bb.gz:                                            ; preds = %bb.gx
  %i.bpl = mul nsw i32 %i.boz, 3
  br label %.sink.split.i187.i.i

bb.ha:                                            ; preds = %bb.gx
  %i.bpm = and i32 %i.boz, -4
  %i.bpn = mul nsw i32 %i.bpm, 3
  %i.bpo = and i32 %i.boz, 3
  %i.bpp = or disjoint i32 %i.bpn, %i.bpo
  br label %.sink.split.i187.i.i

bb.hb:                                            ; preds = %bb.gx
  %i.bpq = and i32 %i.boz, -8
  %i.bpr = mul nsw i32 %i.bpq, 3
  %i.bps = and i32 %i.boz, 7
  %i.bpt = or disjoint i32 %i.bpr, %i.bps
  br label %.sink.split.i187.i.i

.sink.split.i187.i.i:                             ; preds = %bb.hb, %bb.ha, %bb.gz, %bb.gy
  %.sink.i188.i.i = phi i32 [ %i.bpt, %bb.hb ], [ %i.bpp, %bb.ha ], [ %i.bpl, %bb.gz ], [ %i.bpk, %bb.gy ]
  %.sink87.i189.i.i = phi i64 [ 32, %bb.hb ], [ 16, %bb.ha ], [ 4, %bb.gz ], [ 4, %bb.gy ]
  %.sink85.i190.i.i = phi i64 [ 64, %bb.hb ], [ 32, %bb.ha ], [ 8, %bb.gz ], [ 8, %bb.gy ]
  %.sink90.i192.i.i = load ptr, ptr %i.lj, align 8, !tbaa !620
  %i.bpu = sext i32 %.sink.i188.i.i to i64
  %i.bpv = getelementptr [4 x i8], ptr %.sink90.i192.i.i, i64 %i.bpu ; 3 uses
  %i.bpw = load float, ptr %i.bpv, align 4, !tbaa !57
  %.sroa.070.0.vec.insert77.i193.i.i = insertelement <2 x float> poison, float %i.bpw, i64 0
  %i.bpx = getelementptr i8, ptr %i.bpv, i64 %.sink87.i189.i.i
  %i.bpy = load float, ptr %i.bpx, align 4, !tbaa !57
  %.sroa.070.4.vec.insert83.i194.i.i = insertelement <2 x float> %.sroa.070.0.vec.insert77.i193.i.i, float %i.bpy, i64 1
  %i.bpz = getelementptr i8, ptr %i.bpv, i64 %.sink85.i190.i.i
  %i.bqa = load float, ptr %i.bpz, align 4, !tbaa !57
  br label %_ZN3gmxL13getCoordinateERKNS_16nbnxn_atomdata_tEi.exit199.i.i

_ZN3gmxL13getCoordinateERKNS_16nbnxn_atomdata_tEi.exit199.i.i: ; preds = %.sink.split.i187.i.i, %bb.gx
  %.sroa.070.0.i195.i.i = phi <2 x float> [ undef, %bb.gx ], [ %.sroa.070.4.vec.insert83.i194.i.i, %.sink.split.i187.i.i ] ; 2 uses
  %.sroa.9.0.i196.i.i = phi float [ undef, %bb.gx ], [ %i.bqa, %.sink.split.i187.i.i ]
  %foldExtExtBinop1108 = fsub <2 x float> %.sroa.070.0.i.i.i, %.sroa.070.0.i195.i.i
  %i.bqb = extractelement <2 x float> %foldExtExtBinop1108, i64 0 ; 2 uses
  %foldExtExtBinop1110 = fsub <2 x float> %.sroa.070.0.i.i.i, %.sroa.070.0.i195.i.i ; 2 uses
  %i.bqc = fsub float %.sroa.9.0.i.i.i, %.sroa.9.0.i196.i.i ; 2 uses
  %foldExtExtBinop1112 = fmul <2 x float> %foldExtExtBinop1110, %foldExtExtBinop1110
  %i.bqd = extractelement <2 x float> %foldExtExtBinop1112, i64 1
  %i.bqe = call float @llvm.fmuladd.f32(float %i.bqb, float %i.bqb, float %i.bqd)
  %i.bqf = call noundef float @llvm.fmuladd.f32(float %i.bqc, float %i.bqc, float %i.bqe)
  %i.bqg = fcmp olt float %i.bqf, %.0330.i
  br i1 %i.bqg, label %bb.hc, label %bb.hp

bb.hc:                                            ; preds = %_ZN3gmxL13getCoordinateERKNS_16nbnxn_atomdata_tEi.exit199.i.i
  br i1 %i.bkg, label %bb.hd, label %bb.hl

bb.hd:                                            ; preds = %bb.hc
  %i.bqh = load ptr, ptr %i.lt, align 8, !tbaa !635 ; 5 uses
  br i1 %i.bkj, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8
  %i.bqj = load ptr, ptr %i.bqi, align 8, !tbaa !637
  %i.bqk = getelementptr inbounds nuw [4 x i8], ptr %i.bqj, i64 %i.bov
  br label %bb.hi

bb.hf:                                            ; preds = %bb.hd
  br i1 %i.bkk, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.bql = add nuw nsw i32 %.0167231.i.i, %i.bot
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8
  %i.bqn = load ptr, ptr %i.bqm, align 8, !tbaa !637
  %i.bqo = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %i.bou
  br label %bb.hi

bb.hh:                                            ; preds = %bb.hf
  %i.bqp = sdiv i32 %.0167231.i.i, %.val.i437.i
  %i.bqq = add nsw i32 %i.bqp, %i.bor
  %i.bqr = and i32 %.0167231.i.i, %i.bkm
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8
  %i.bqt = sext i32 %i.bqq to i64
  %i.bqu = load ptr, ptr %i.bqs, align 8, !tbaa !637
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %i.bqu, i64 %i.bqt
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.he
  %.sink261.i.i = phi i32 [ %i.bql, %bb.hg ], [ %i.bqr, %bb.hh ], [ %.0167231.i.i, %bb.he ]
  %.sink259.in.i.i = phi ptr [ %i.bqo, %bb.hg ], [ %i.bqv, %bb.hh ], [ %i.bqk, %bb.he ]
  %.sink259.i.i = load i32, ptr %.sink259.in.i.i, align 4, !tbaa !101
  %i.bqw = load i32, ptr %i.bqh, align 8, !tbaa !642
  %i.bqx = mul nsw i32 %i.bqw, %.sink261.i.i
  %i.bqy = ashr i32 %.sink259.i.i, %i.bqx
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqh, i64 32
  %i.bra = load i32, ptr %i.bqz, align 8, !tbaa !643
  %i.brb = and i32 %i.bqy, %i.bra                 ; 3 uses
  %i.brc = icmp slt i32 %.0171.i.i, %i.brb
  %i.brd = add nsw i32 %i.brb, %i.bmt
  %i.bre = mul nsw i32 %i.brb, %i.bjz
  %i.brf = add nsw i32 %i.bre, %.0171.i.i
  %i.brg = select i1 %i.brc, i32 %i.brd, i32 %i.brf ; 3 uses
  %i.brh = load ptr, ptr %i.fo, align 8, !tbaa !173 ; 3 uses
  %i.bri = load ptr, ptr %i.lu, align 8, !tbaa !316
  %i.brj = ptrtoint ptr %i.bri to i64
  %i.brk = ptrtoint ptr %i.brh to i64
  %i.brl = sub i64 %i.brj, %i.brk                 ; 2 uses
  %i.brm = sdiv exact i64 %i.brl, 12
  %i.brn = shl i64 %i.brm, 32
  %sext.i.i = add i64 %i.brn, -4294967296
  %i.bro = ashr exact i64 %sext.i.i, 32
  %i.brp = getelementptr inbounds [12 x i8], ptr %i.brh, i64 %i.bro
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brp, i64 8
  %i.brr = load i32, ptr %i.brq, align 4, !tbaa !633
  %.not182.i.i = icmp eq i32 %i.brr, %i.brg
  br i1 %.not182.i.i, label %bb.hl, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brh, i64 %i.brl
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  %i.brt = getelementptr inbounds i8, ptr %i.brs, i64 -12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %25, ptr noundef nonnull align 4 dereferenceable(12) %i.brt, i64 12, i1 false), !tbaa.struct !365
  %i.bru = icmp sgt i32 %i.brg, -1
  br i1 %i.bru, label %bb.hk, label %_ZN3gmxL21fep_list_new_nri_copyEPNS_12AtomPairlistEi.exit.i.i

bb.hk:                                            ; preds = %bb.hj
  store i32 %i.brg, ptr %i.cq, align 4, !tbaa !633
  br label %_ZN3gmxL21fep_list_new_nri_copyEPNS_12AtomPairlistEi.exit.i.i

_ZN3gmxL21fep_list_new_nri_copyEPNS_12AtomPairlistEi.exit.i.i: ; preds = %bb.hk, %bb.hj
  invoke void @_ZN3gmx12AtomPairlist9addIEntryERKNS0_6IEntryEi(ptr noundef nonnull align 8 dereferenceable(76) %i.fo, ptr noundef nonnull align 4 dereferenceable(12) %25, i32 noundef 0)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit

.noexc81:                                         ; preds = %_ZN3gmxL21fep_list_new_nri_copyEPNS_12AtomPairlistEi.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  br label %bb.hl

bb.hl:                                            ; preds = %.noexc81, %bb.hi, %bb.hc
  %i.brv = load ptr, ptr %i.fo, align 8, !tbaa !173 ; 2 uses
  %i.brw = load ptr, ptr %i.lu, align 8, !tbaa !316
  %i.brx = ptrtoint ptr %i.brw to i64
  %i.bry = ptrtoint ptr %i.brv to i64
  %i.brz = sub i64 %i.brx, %i.bry                 ; 2 uses
  %i.bsa = load ptr, ptr %i.lv, align 8, !tbaa !169 ; 3 uses
  %i.bsb = load ptr, ptr %i.lw, align 8, !tbaa !107
  %i.bsc = sdiv exact i64 %i.brz, 3
  %i.bsd = getelementptr i8, ptr %i.bsb, i64 %i.bsc ; 2 uses
  %i.bse = getelementptr i8, ptr %i.bsd, i64 -4
  %i.bsf = load i32, ptr %i.bse, align 4, !tbaa !101 ; 2 uses
  %i.bsg = sext i32 %i.bsf to i64
  %i.bsh = getelementptr inbounds [8 x i8], ptr %i.bsa, i64 %i.bsg ; 2 uses
  %i.bsi = load i32, ptr %i.bsd, align 4, !tbaa !101
  %i.bsj = sub nsw i32 %i.bsi, %i.bsf
  %i.bsk = sext i32 %i.bsj to i64
  %.not.i.i.i449.i = icmp eq ptr %i.bsa, null
  %i.bsl = getelementptr inbounds nuw [8 x i8], ptr %i.bsh, i64 %i.bsk
  %spec.select.i.i.i450.i = select i1 %.not.i.i.i449.i, ptr null, ptr %i.bsl
  %i.bsm = ptrtoint ptr %spec.select.i.i.i450.i to i64
  %i.bsn = ptrtoint ptr %i.bsh to i64
  %i.bso = sub i64 %i.bsm, %i.bsn
  %i.bsp = icmp sgt i64 %i.bso, 312
  br i1 %i.bsp, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.brv, i64 %i.brz
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  %i.bsr = getelementptr inbounds i8, ptr %i.bsq, i64 -12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %24, ptr noundef nonnull align 4 dereferenceable(12) %i.bsr, i64 12, i1 false), !tbaa.struct !365
  invoke void @_ZN3gmx12AtomPairlist9addIEntryERKNS0_6IEntryEi(ptr noundef nonnull align 8 dereferenceable(76) %i.fo, ptr noundef nonnull align 4 dereferenceable(12) %24, i32 noundef 0)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit

.noexc82:                                         ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  %.pre242.i.i = load ptr, ptr %i.lv, align 8, !tbaa !169
  br label %bb.hn

bb.hn:                                            ; preds = %.noexc82, %bb.hl
  %i.bss = phi ptr [ %.pre242.i.i, %.noexc82 ], [ %i.bsa, %bb.hl ]
  %i.bst = load ptr, ptr %i.lc, align 8, !tbaa !44
  %i.bsu = getelementptr inbounds nuw [8 x i8], ptr %i.bst, i64 %indvars.iv.i441.i
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsu, i64 4
  %i.bsw = load i32, ptr %i.bsv, align 4, !tbaa !101
  %i.bsx = load i32, ptr %i.gp, align 4, !tbaa !41
  %i.bsy = mul nsw i32 %i.bsx, %.0172236.i.i
  %i.bsz = add nsw i32 %i.bsy, %.0167231.i.i
  %i.bta = lshr i32 %i.bsw, %i.bsz                ; 2 uses
  %i.btb = and i32 %i.bta, 1
  %.sroa.4.0.insert.ext.i.i = zext nneg i32 %i.btb to i64
  %i.btc = load ptr, ptr %i.lx, align 8, !tbaa !344
  %i.btd = getelementptr inbounds i8, ptr %i.btc, i64 -4
  %i.bte = load i32, ptr %i.btd, align 4, !tbaa !101
  %i.btf = sext i32 %i.bte to i64
  %i.btg = getelementptr inbounds nuw [8 x i8], ptr %i.bss, i64 %i.btf
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bpc to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.btg, align 4
  %i.bth = load ptr, ptr %i.lx, align 8, !tbaa !344
  %i.bti = getelementptr inbounds i8, ptr %i.bth, i64 -4 ; 2 uses
  %i.btj = load i32, ptr %i.bti, align 4, !tbaa !101
  %i.btk = add nsw i32 %i.btj, 1
  store i32 %i.btk, ptr %i.bti, align 4, !tbaa !101
  %i.btl = trunc i32 %i.bta to i1
  br i1 %i.btl, label %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.btm = load i32, ptr %i.ly, align 8, !tbaa !324
  %i.btn = add nsw i32 %i.btm, 1
  store i32 %i.btn, ptr %i.ly, align 8, !tbaa !324
  br label %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i.i

_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i.i: ; preds = %bb.ho, %bb.hn
  %i.bto = load i32, ptr %i.gp, align 4, !tbaa !41
  %i.btp = mul nsw i32 %i.bto, %.0172236.i.i
  %i.btq = add nsw i32 %i.btp, %.0167231.i.i
  %i.btr = shl nuw i32 1, %i.btq
  %i.bts = xor i32 %i.btr, -1
  %i.btt = load ptr, ptr %i.lc, align 8, !tbaa !44 ; 2 uses
  %i.btu = getelementptr inbounds nuw [8 x i8], ptr %i.btt, i64 %indvars.iv.i441.i
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btu, i64 4 ; 2 uses
  %i.btw = load i32, ptr %i.btv, align 4, !tbaa !101
  %i.btx = and i32 %i.btw, %i.bts
  store i32 %i.btx, ptr %i.btv, align 4, !tbaa !101
  %.pre243.i.i = load i32, ptr %i.gp, align 4, !tbaa !41
  br label %bb.hp

bb.hp:                                            ; preds = %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i.i, %_ZN3gmxL13getCoordinateERKNS_16nbnxn_atomdata_tEi.exit199.i.i, %bb.gw
  %i.bty = phi i32 [ %i.bow, %_ZN3gmxL13getCoordinateERKNS_16nbnxn_atomdata_tEi.exit199.i.i ], [ %.pre243.i.i, %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i.i ], [ %i.bow, %bb.gw ] ; 2 uses
  %i.btz = phi ptr [ %i.box, %_ZN3gmxL13getCoordinateERKNS_16nbnxn_atomdata_tEi.exit199.i.i ], [ %i.btt, %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i.i ], [ %i.box, %bb.gw ] ; 2 uses
  %i.bua = add nuw nsw i32 %.0167231.i.i, 1       ; 2 uses
  %i.bub = icmp slt i32 %i.bua, %i.bty
  br i1 %i.bub, label %bb.gw, label %.loopexit.i442.i, !llvm.loop !539

.loopexit.i442.i:                                 ; preds = %bb.hp, %.preheader.i446.i, %bb.gv
  %i.buc = phi ptr [ %i.bnj, %bb.gv ], [ %i.bnj, %.preheader.i446.i ], [ %i.btz, %bb.hp ]
  %indvars.iv.next.i443.i = add nsw i64 %indvars.iv.i441.i, 1 ; 2 uses
  %lftr.wideiv.i444.i = trunc i64 %indvars.iv.next.i443.i to i32
  %exitcond.not.i445.i = icmp eq i32 %i.bjt, %lftr.wideiv.i444.i
  br i1 %exitcond.not.i445.i, label %._crit_edge.i.i, label %bb.gq, !llvm.loop !540

_ZN3gmx12AtomPairlist18popIEntryWhenEmptyEv.exit.i.i: ; preds = %bb.gp, %._crit_edge.i.i, %bb.gh
  %.1.i.i = phi i1 [ %.0168238.i.i, %bb.gh ], [ %i.bmh, %._crit_edge.i.i ], [ %i.bmh, %bb.gp ] ; 2 uses
  %i.bud = add nuw nsw i32 %.0172236.i.i, 1       ; 2 uses
  %i.bue = load i32, ptr %i.lr, align 8, !tbaa !40 ; 2 uses
  %i.buf = icmp slt i32 %i.bud, %i.bue
  br i1 %i.buf, label %bb.gh, label %._crit_edge240.i.i, !llvm.loop !541

.critedge.i439.i:                                 ; preds = %._crit_edge240..critedge_crit_edge.i.i, %.preheader230.i.i
  %i.bug = phi ptr [ %.pre244.i.i, %._crit_edge240..critedge_crit_edge.i.i ], [ %i.bjr, %.preheader230.i.i ]
  %i.buh = getelementptr inbounds i8, ptr %i.bug, i64 -4
  store i32 %i.bjv, ptr %i.buh, align 4, !tbaa !352
  %.neg.i.i = sub i32 %i.bjv, %i.bjt
  %i.bui = load i32, ptr %i.lq, align 8, !tbaa !162
  %i.buj = add i32 %.neg.i.i, %i.bui
  store i32 %i.buj, ptr %i.lq, align 8, !tbaa !162
  br label %_ZN3gmxL13make_fep_listILNS_12PairlistTypeE3EEEvNS_8ArrayRefIKiEEPKNS_16nbnxn_atomdata_tEPNS_16NbnxnPairlistCpuEbffffRKNS_4GridESC_PNS_12AtomPairlistE.exit.i

_ZN3gmxL13make_fep_listILNS_12PairlistTypeE3EEEvNS_8ArrayRefIKiEEPKNS_16nbnxn_atomdata_tEPNS_16NbnxnPairlistCpuEbffffRKNS_4GridESC_PNS_12AtomPairlistE.exit.i: ; preds = %.critedge.i439.i, %._crit_edge240.i.i, %_ZN3gmxL18layoutClusterRatioERKNS_4Grid8GeometryE.exit.i.i, %_ZN3gmxL22setExclusionsForIEntryILNS_12PairlistTypeE3EEEvRKNS_7GridSetEPNS_16NbnxnPairlistCpuEbiRKNS_11ListOfListsIiEE.exit.i
  %i.buk = load ptr, ptr %i.lf, align 8, !tbaa !348 ; 4 uses
  %i.bul = getelementptr inbounds i8, ptr %i.buk, i64 -4
  %i.bum = load i32, ptr %i.bul, align 4, !tbaa !352
  %i.bun = getelementptr inbounds i8, ptr %i.buk, i64 -8
  %i.buo = load i32, ptr %i.bun, align 4, !tbaa !353 ; 2 uses
  %i.bup = sub nsw i32 %i.bum, %i.buo             ; 7 uses
  %i.buq = icmp sgt i32 %i.bup, 0
  br i1 %i.buq, label %bb.hq, label %bb.iu

bb.hq:                                            ; preds = %_ZN3gmxL13make_fep_listILNS_12PairlistTypeE3EEEvNS_8ArrayRefIKiEEPKNS_16nbnxn_atomdata_tEPNS_16NbnxnPairlistCpuEbffffRKNS_4GridESC_PNS_12AtomPairlistE.exit.i
  %i.bur = load ptr, ptr %i.lc, align 8, !tbaa !44
  %i.bus = sext i32 %i.buo to i64
  %i.but = getelementptr inbounds [8 x i8], ptr %i.bur, i64 %i.bus ; 20 uses
  %i.buu = load ptr, ptr %i.lh, align 8, !tbaa !43 ; 3 uses
  %i.buv = getelementptr inbounds nuw i8, ptr %i.buu, i64 136 ; 21 uses
  %i.buw = zext nneg i32 %i.bup to i64            ; 12 uses
  %i.bux = getelementptr inbounds nuw i8, ptr %i.buu, i64 144 ; 4 uses
  %i.buy = load ptr, ptr %i.bux, align 8, !tbaa !644 ; 7 uses
  %i.buz = load ptr, ptr %i.buv, align 8, !tbaa !180 ; 5 uses
  %i.bva = ptrtoint ptr %i.buy to i64             ; 2 uses
  %i.bvb = ptrtoint ptr %i.buz to i64             ; 2 uses
  %i.bvc = sub i64 %i.bva, %i.bvb                 ; 6 uses
  %i.bvd = ashr exact i64 %i.bvc, 3               ; 6 uses
  %i.bve = icmp ult i64 %i.bvd, %i.buw
  br i1 %i.bve, label %bb.hr, label %bb.hv

bb.hr:                                            ; preds = %bb.hq
  %i.bvf = sub nuw nsw i64 %i.buw, %i.bvd         ; 5 uses
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.buu, i64 152 ; 3 uses
  %i.bvh = load ptr, ptr %i.bvg, align 8, !tbaa !181
  %i.bvi = ptrtoint ptr %i.bvh to i64
  %i.bvj = sub i64 %i.bvi, %i.bva
  %i.bvk = ashr exact i64 %i.bvj, 3               ; 2 uses
  %i.bvl = xor i64 %i.bvd, 1152921504606846975
  %i.bvm = icmp ule i64 %i.bvk, %i.bvl
  call void @llvm.assume(i1 %i.bvm)
  %.not28.i.i = icmp ult i64 %i.bvk, %i.bvf
  br i1 %.not28.i.i, label %_ZNKSt6vectorIN3gmx10nbnxn_cj_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  store i64 0, ptr %i.buy, align 4
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.buy, i64 8 ; 7 uses
  %i.bvo = add nsw i64 %i.bvf, -1                 ; 2 uses
  %i.bvp = icmp eq i64 %i.bvo, 0
  br i1 %i.bvp, label %_ZSt27__uninitialized_default_n_aIPN3gmx10nbnxn_cj_tEmS1_ET_S3_T0_RSaIT1_E.exit.i.i, label %iter.check882

iter.check882:                                    ; preds = %bb.hs
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bvo, 3
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvn, i64 %.idx.i.i.i.i.i.i.i ; 4 uses
  %i.bvr = shl nuw nsw i64 %i.buw, 3
  %i.bvs = add nsw i64 %i.bvr, -16
  %i.bvt = sub i64 %i.bvs, %i.bvc                 ; 3 uses
  %i.bvu = lshr i64 %i.bvt, 3
  %i.bvv = add nuw nsw i64 %i.bvu, 1              ; 5 uses
  %min.iters.check868 = icmp ult i64 %i.bvt, 24
  br i1 %min.iters.check868, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check869

vector.main.loop.iter.check869:                   ; preds = %iter.check882
  %min.iters.check870 = icmp ult i64 %i.bvt, 120
  br i1 %min.iters.check870, label %vec.epilog.ph886, label %vector.ph871

vector.ph871:                                     ; preds = %vector.main.loop.iter.check869
  %i.bvw = and i64 %i.bvv, 12
  %n.vec872 = and i64 %i.bvv, 4611686018427387888 ; 4 uses
  %i.bvx = shl i64 %n.vec872, 3
  %i.bvy = getelementptr i8, ptr %i.bvn, i64 %i.bvx
  br label %vector.body873

vector.body873:                                   ; preds = %vector.body873, %vector.ph871
  %index874 = phi i64 [ 0, %vector.ph871 ], [ %index.next878, %vector.body873 ] ; 2 uses
  %i.bvz = shl i64 %index874, 3
  %next.gep875 = getelementptr i8, ptr %i.bvn, i64 %i.bvz ; 4 uses
  %i.bwa = load i64, ptr %i.buy, align 4
  %broadcast.splatinsert876 = insertelement <4 x i64> poison, i64 %i.bwa, i64 0
  %broadcast.splat877 = shufflevector <4 x i64> %broadcast.splatinsert876, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bwb = getelementptr i8, ptr %next.gep875, i64 32
  %i.bwc = getelementptr i8, ptr %next.gep875, i64 64
  %i.bwd = getelementptr i8, ptr %next.gep875, i64 96
  store <4 x i64> %broadcast.splat877, ptr %next.gep875, align 4
  store <4 x i64> %broadcast.splat877, ptr %i.bwb, align 4
  store <4 x i64> %broadcast.splat877, ptr %i.bwc, align 4
  store <4 x i64> %broadcast.splat877, ptr %i.bwd, align 4
  %index.next878 = add nuw i64 %index874, 16      ; 2 uses
  %i.bwe = icmp eq i64 %index.next878, %n.vec872
  br i1 %i.bwe, label %middle.block879, label %vector.body873, !llvm.loop !542
end_hunk_2
begin_hunk_3_@_ZN3gmx11PairlistSet18constructPairlistsENS_19InteractionLocalityERKNS_7GridSetENS_8ArrayRefINS_14PairsearchWorkEEEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEbiP6t_nrnbPNS_19SearchCycleCountingE.omp_outlined:bb.a
bb.nr:                                            ; preds = %.loopexit.i445.i, %.lr.ph161.i.i
  %indvars.iv.i444.i = phi i64 [ 0, %.lr.ph161.i.i ], [ %indvars.iv.next.i446.i, %.loopexit.i445.i ] ; 3 uses
  %i.eie = load i32, ptr %i.eid, align 4, !tbaa !362
  %i.eif = shl nuw nsw i64 %indvars.iv.i444.i, 3
  %i.eig = add nuw nsw i64 %i.eif, %indvars.iv174.i.i
  %i.eih = trunc nuw nsw i64 %i.eig to i32        ; 2 uses
  %i.eii = shl nuw i32 1, %i.eih                  ; 2 uses
  %i.eij = and i32 %i.eii, %i.eie
  %i.eik = icmp eq i32 %i.eij, 0
  br i1 %i.eik, label %.loopexit.i445.i, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.eil = getelementptr inbounds nuw [4 x i8], ptr %i.eic, i64 %indvars.iv.i444.i
  %i.eim = load i32, ptr %i.eil, align 4, !tbaa !101
  %i.ein = load i32, ptr %i.bi, align 4, !tbaa !607
  %i.eio = shl nsw i32 %i.ein, 3
  %i.eip = sub nsw i32 %i.eim, %i.eio             ; 3 uses
  br i1 %.not154.i.i, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %bb.ns
  %i.eiq = sext i32 %i.eip to i64
  %i.eir = load ptr, ptr %i.bu, align 8, !tbaa !634
  %i.eis = getelementptr inbounds nuw [4 x i8], ptr %i.eir, i64 %i.eiq
  %i.eit = load i32, ptr %i.eis, align 4, !tbaa !101
  %.not155.i.i = icmp eq i32 %i.eit, 0
  br i1 %.not155.i.i, label %.loopexit.i445.i, label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.ns
  %i.eiu = load i32, ptr %i.cgk, align 4, !tbaa !91 ; 2 uses
  %i.eiv = icmp sgt i32 %i.eiu, 0
  br i1 %i.eiv, label %.lr.ph.i448.i, label %.loopexit.i445.i

.lr.ph.i448.i:                                    ; preds = %bb.nu
  %i.eiw = sext i32 %i.eip to i64
  %i.eix = xor i32 %i.eii, -1
  br label %bb.nv

bb.nv:                                            ; preds = %bb.ok, %.lr.ph.i448.i
  %i.eiy = phi i32 [ %i.eiu, %.lr.ph.i448.i ], [ %i.enl, %bb.ok ] ; 4 uses
  %.0158.i.i = phi i32 [ 0, %.lr.ph.i448.i ], [ %i.enm, %bb.ok ] ; 5 uses
  %i.eiz = load i32, ptr %i.bi, align 4, !tbaa !607
  %i.eja = shl nsw i32 %i.eiz, 3
  %i.ejb = add nsw i32 %i.eja, %i.eip
  %i.ejc = mul nsw i32 %i.ejb, %i.eiy
  %i.ejd = add nsw i32 %i.ejc, %.0158.i.i         ; 4 uses
  %i.eje = sext i32 %i.ejd to i64
  %i.ejf = getelementptr inbounds [4 x i8], ptr %i.efl, i64 %i.eje
  %i.ejg = load i32, ptr %i.ejf, align 4, !tbaa !101 ; 2 uses
  %i.ejh = icmp sgt i32 %i.ejg, -1
  br i1 %i.ejh, label %bb.nw, label %bb.ok

bb.nw:                                            ; preds = %bb.nv
  br i1 %.not154.i.i, label %bb.nx, label %bb.ny

bb.nx:                                            ; preds = %bb.nw
  %i.eji = load ptr, ptr %i.bu, align 8, !tbaa !634
  %i.ejj = getelementptr inbounds nuw [4 x i8], ptr %i.eji, i64 %i.eiw
  %i.ejk = load i32, ptr %i.ejj, align 4, !tbaa !101
  %i.ejl = shl nuw i32 1, %.0158.i.i
  %i.ejm = and i32 %i.ejk, %i.ejl
  %.not156.i.i = icmp eq i32 %i.ejm, 0
  %.not.i461.i = icmp slt i32 %i.ejd, %i.egi
  %or.cond.i462.i = and i1 %i.csw, %.not.i461.i
  %or.cond122.i.i = or i1 %or.cond.i462.i, %.not156.i.i
  br i1 %or.cond122.i.i, label %bb.ok, label %bb.nz

bb.ny:                                            ; preds = %bb.nw
  %.not.old.i.i = icmp slt i32 %i.ejd, %i.egi
  %or.cond.old.i.i = and i1 %i.csw, %.not.old.i.i
  br i1 %or.cond.old.i.i, label %bb.ok, label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  %i.ejn = lshr i32 %.0158.i.i, 2
  %i.ejo = load ptr, ptr %i.cfw, align 8, !tbaa !98 ; 3 uses
  %i.ejp = getelementptr inbounds nuw [32 x i8], ptr %i.ejo, i64 %indvars.iv170.i.i
  %i.ejq = zext nneg i32 %i.ejn to i64            ; 2 uses
  %i.ejr = getelementptr [8 x i8], ptr %i.ejp, i64 %i.ejq
  %i.ejs = getelementptr i8, ptr %i.ejr, i64 20
  %i.ejt = load i32, ptr %i.ejs, align 4, !tbaa !367 ; 2 uses
  %i.eju = icmp eq i32 %i.ejt, 0
  %.pre.i449.i = load ptr, ptr %i.ckq, align 8, !tbaa !97 ; 9 uses
  br i1 %i.eju, label %bb.oa, label %_ZN3gmxL18get_exclusion_maskEPNS_16NbnxnPairlistGpuEii.exit.i450.i

bb.oa:                                            ; preds = %bb.nz
  %i.ejv = load ptr, ptr %i.ckr, align 8, !tbaa !96 ; 6 uses
  %i.ejw = ptrtoint ptr %i.ejv to i64
  %i.ejx = ptrtoint ptr %.pre.i449.i to i64
  %i.ejy = sub i64 %i.ejw, %i.ejx                 ; 5 uses
  %i.ejz = lshr exact i64 %i.ejy, 7
  %.not.i.i451.i = icmp eq i64 %i.ejy, -128
  br i1 %.not.i.i451.i, label %bb.of, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.eka = ashr exact i64 %i.ejy, 7               ; 3 uses
  %i.ekb = load ptr, ptr %i.ckv, align 8, !tbaa !100
  %i.ekc = icmp ult i64 %i.eka, 72057594037927936
  call void @llvm.assume(i1 %i.ekc)
  %.not28.i.i.i = icmp eq ptr %i.ekb, %i.ejv
  br i1 %.not28.i.i.i, label %bb.oc, label %_ZSt27__uninitialized_default_n_aIPN3gmx12nbnxn_excl_tEmNS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEET_S6_T0_RT1_.exit.i.i.i

_ZSt27__uninitialized_default_n_aIPN3gmx12nbnxn_excl_tEmNS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEET_S6_T0_RT1_.exit.i.i.i: ; preds = %bb.ob
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.ejv, i8 -1, i64 128, i1 false), !tbaa !101
  %scevgep.i.i.i452.i = getelementptr i8, ptr %i.ejv, i64 128
  store ptr %scevgep.i.i.i452.i, ptr %i.ckr, align 8, !tbaa !96
  br label %_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i453.i

bb.oc:                                            ; preds = %bb.ob
  %i.ekd = icmp eq i64 %i.ejy, 9223372036854775680
  br i1 %i.ekd, label %.invoke748, label %_ZNKSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.oc
  %.sroa.speculated.i.i.i454.i = call i64 @llvm.umax.i64(i64 %i.eka, i64 1)
  %i.eke = add nuw nsw i64 %.sroa.speculated.i.i.i454.i, %i.eka
  %i.ekf = call i64 @llvm.umin.i64(i64 %i.eke, i64 72057594037927935) ; 2 uses
  %i.ekg = shl nuw nsw i64 %i.ekf, 7
  %i.ekh = call noundef ptr @_ZNK3gmx20HostAllocationPolicy6mallocEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cks, i64 noundef %i.ekg) #14 ; 6 uses
  %i.eki = icmp eq ptr %i.ekh, null
  br i1 %i.eki, label %.invoke750, label %bb.od

bb.od:                                            ; preds = %_ZNKSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ekj = getelementptr inbounds nuw i8, ptr %i.ekh, i64 %i.ejy ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.ekj, i8 -1, i64 128, i1 false), !tbaa !101
  %.not10.i.i.i.i.i455.i = icmp eq ptr %.pre.i449.i, %i.ejv
  br i1 %.not10.i.i.i.i.i455.i, label %_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS1_S6_S6_RS4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i456.i

.lr.ph.i.i.i.i.i456.i:                            ; preds = %bb.od, %.lr.ph.i.i.i.i.i456.i
  %.012.i.i.i.i.i457.i = phi ptr [ %i.ekl, %.lr.ph.i.i.i.i.i456.i ], [ %i.ekh, %bb.od ] ; 2 uses
  %.0911.i.i.i.i.i458.i = phi ptr [ %i.ekk, %.lr.ph.i.i.i.i.i456.i ], [ %.pre.i449.i, %bb.od ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %.012.i.i.i.i.i457.i, ptr noundef nonnull align 4 dereferenceable(128) %.0911.i.i.i.i.i458.i, i64 128, i1 false), !tbaa.struct !103, !alias.scope !654
  %i.ekk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i458.i, i64 128 ; 2 uses
  %i.ekl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i457.i, i64 128
  %.not.i.i.i.i.i459.i = icmp eq ptr %i.ekk, %i.ejv
  br i1 %.not.i.i.i.i.i459.i, label %_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS1_S6_S6_RS4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i456.i, !llvm.loop !0

_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS1_S6_S6_RS4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i456.i, %bb.od
  %.not.i35.i.i.i = icmp eq ptr %.pre.i449.i, null
  br i1 %.not.i35.i.i.i, label %_ZNSt12_Vector_baseIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS1_m.exit36.i.i.i, label %bb.oe

bb.oe:                                            ; preds = %_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS1_S6_S6_RS4_.exit.i.i.i
  call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %i.cks, ptr noundef nonnull %.pre.i449.i) #14
  br label %_ZNSt12_Vector_baseIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS1_m.exit36.i.i.i

_ZNSt12_Vector_baseIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS1_m.exit36.i.i.i: ; preds = %bb.oe, %_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE11_S_relocateEPS1_S6_S6_RS4_.exit.i.i.i
  store ptr %i.ekh, ptr %i.ckq, align 8, !tbaa !97
  %i.ekm = getelementptr inbounds nuw i8, ptr %i.ekj, i64 128
  store ptr %i.ekm, ptr %i.ckr, align 8, !tbaa !96
  %i.ekn = getelementptr inbounds nuw [128 x i8], ptr %i.ekh, i64 %i.ekf
  store ptr %i.ekn, ptr %i.ckv, align 8, !tbaa !100
  %.pre.i.pre.i460.i = load ptr, ptr %i.cfw, align 8, !tbaa !98
  br label %_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i453.i

bb.of:                                            ; preds = %bb.oa
  store ptr %.pre.i449.i, ptr %i.ckr, align 8, !tbaa !96
  br label %_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i453.i

_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i453.i: ; preds = %bb.of, %_ZNSt12_Vector_baseIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS1_m.exit36.i.i.i, %_ZSt27__uninitialized_default_n_aIPN3gmx12nbnxn_excl_tEmNS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEET_S6_T0_RT1_.exit.i.i.i
  %i.eko = phi ptr [ %.pre.i449.i, %bb.of ], [ %.pre.i449.i, %_ZSt27__uninitialized_default_n_aIPN3gmx12nbnxn_excl_tEmNS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEET_S6_T0_RT1_.exit.i.i.i ], [ %i.ekh, %_ZNSt12_Vector_baseIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS1_m.exit36.i.i.i ]
  %i.ekp = phi ptr [ %i.ejo, %bb.of ], [ %i.ejo, %_ZSt27__uninitialized_default_n_aIPN3gmx12nbnxn_excl_tEmNS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEET_S6_T0_RT1_.exit.i.i.i ], [ %.pre.i.pre.i460.i, %_ZNSt12_Vector_baseIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE13_M_deallocateEPS1_m.exit36.i.i.i ]
  %i.ekq = trunc i64 %i.ejz to i32                ; 2 uses
  %i.ekr = getelementptr inbounds nuw [32 x i8], ptr %i.ekp, i64 %indvars.iv170.i.i
  %i.eks = getelementptr [8 x i8], ptr %i.ekr, i64 %i.ejq
  %i.ekt = getelementptr i8, ptr %i.eks, i64 20
  store i32 %i.ekq, ptr %i.ekt, align 4, !tbaa !367
  br label %_ZN3gmxL18get_exclusion_maskEPNS_16NbnxnPairlistGpuEii.exit.i450.i

_ZN3gmxL18get_exclusion_maskEPNS_16NbnxnPairlistGpuEii.exit.i450.i: ; preds = %_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i453.i, %bb.nz
  %i.eku = phi ptr [ %i.eko, %_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i453.i ], [ %.pre.i449.i, %bb.nz ]
  %i.ekv = phi i32 [ %i.ekq, %_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i453.i ], [ %i.ejt, %bb.nz ]
  %i.ekw = sext i32 %i.ekv to i64
  %i.ekx = getelementptr inbounds nuw [128 x i8], ptr %i.eku, i64 %i.ekw ; 2 uses
  %i.eky = and i32 %.0158.i.i, 3
  %i.ekz = load i32, ptr %i.ckx, align 8, !tbaa !90
  %i.ela = mul nsw i32 %i.ekz, %i.eky
  %i.elb = add nsw i32 %i.ela, %.0115162.i.i      ; 2 uses
  %i.elc = load ptr, ptr %i.ckl, align 8, !tbaa !620
  %i.eld = load i32, ptr %i.ckk, align 8, !tbaa !619
  %i.ele = mul nsw i32 %i.eld, %i.ejd
  %i.elf = sext i32 %i.ele to i64
  %i.elg = getelementptr [4 x i8], ptr %i.elc, i64 %i.elf ; 3 uses
  %i.elh = load float, ptr %i.elg, align 4, !tbaa !57
  %i.eli = fsub float %i.elh, %i.ehg              ; 2 uses
  %i.elj = getelementptr i8, ptr %i.elg, i64 4
  %i.elk = load float, ptr %i.elj, align 4, !tbaa !57
  %i.ell = fsub float %i.elk, %i.ehk              ; 2 uses
  %i.elm = getelementptr i8, ptr %i.elg, i64 8
  %i.eln = load float, ptr %i.elm, align 4, !tbaa !57
  %i.elo = fsub float %i.eln, %i.ehl              ; 2 uses
  %i.elp = fmul float %i.ell, %i.ell
  %i.elq = call float @llvm.fmuladd.f32(float %i.eli, float %i.eli, float %i.elp)
  %i.elr = call float @llvm.fmuladd.f32(float %i.elo, float %i.elo, float %i.elq)
  %i.els = fcmp olt float %i.elr, %.0337.i
  br i1 %i.els, label %bb.og, label %_ZN3gmxL18get_exclusion_maskEPNS_16NbnxnPairlistGpuEii.exit._ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit_crit_edge.i.i

_ZN3gmxL18get_exclusion_maskEPNS_16NbnxnPairlistGpuEii.exit._ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit_crit_edge.i.i: ; preds = %_ZN3gmxL18get_exclusion_maskEPNS_16NbnxnPairlistGpuEii.exit.i450.i
  %.pre181.i.i = sext i32 %i.elb to i64
  br label %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i.i144

bb.og:                                            ; preds = %_ZN3gmxL18get_exclusion_maskEPNS_16NbnxnPairlistGpuEii.exit.i450.i
  %i.elt = load ptr, ptr %i.fo, align 8, !tbaa !173 ; 2 uses
  %i.elu = load ptr, ptr %i.cky, align 8, !tbaa !316
  %i.elv = ptrtoint ptr %i.elu to i64
  %i.elw = ptrtoint ptr %i.elt to i64
  %i.elx = sub i64 %i.elv, %i.elw                 ; 2 uses
  %i.ely = load ptr, ptr %i.ckz, align 8, !tbaa !169 ; 3 uses
  %i.elz = load ptr, ptr %i.cla, align 8, !tbaa !107
  %i.ema = sdiv exact i64 %i.elx, 3
  %i.emb = getelementptr i8, ptr %i.elz, i64 %i.ema ; 2 uses
  %i.emc = getelementptr i8, ptr %i.emb, i64 -4
  %i.emd = load i32, ptr %i.emc, align 4, !tbaa !101 ; 2 uses
  %i.eme = sext i32 %i.emd to i64
  %i.emf = getelementptr inbounds [8 x i8], ptr %i.ely, i64 %i.eme ; 2 uses
  %i.emg = load i32, ptr %i.emb, align 4, !tbaa !101
  %i.emh = sub nsw i32 %i.emg, %i.emd
  %i.emi = sext i32 %i.emh to i64
  %.not.i.i.i.i145 = icmp eq ptr %i.ely, null
  %i.emj = getelementptr inbounds nuw [8 x i8], ptr %i.emf, i64 %i.emi
  %spec.select.i.i.i.i146 = select i1 %.not.i.i.i.i145, ptr null, ptr %i.emj
  %i.emk = ptrtoint ptr %spec.select.i.i.i.i146 to i64
  %i.eml = ptrtoint ptr %i.emf to i64
  %i.emm = sub i64 %i.emk, %i.eml
  %i.emn = icmp sgt i64 %i.emm, 312
  br i1 %i.emn, label %bb.oh, label %bb.oi

bb.oh:                                            ; preds = %bb.og
  %i.emo = getelementptr inbounds nuw i8, ptr %i.elt, i64 %i.elx
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.emp = getelementptr inbounds i8, ptr %i.emo, i64 -12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %17, ptr noundef nonnull align 4 dereferenceable(12) %i.emp, i64 12, i1 false), !tbaa.struct !365
  invoke void @_ZN3gmx12AtomPairlist9addIEntryERKNS0_6IEntryEi(ptr noundef nonnull align 8 dereferenceable(76) %i.fo, ptr noundef nonnull align 4 dereferenceable(12) %17, i32 noundef 0)
          to label %.noexc219 unwind label %.loopexit

.noexc219:                                        ; preds = %bb.oh
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %.pre179.i.i = load ptr, ptr %i.ckz, align 8, !tbaa !169
  br label %bb.oi

bb.oi:                                            ; preds = %.noexc219, %bb.og
  %i.emq = phi ptr [ %.pre179.i.i, %.noexc219 ], [ %i.ely, %bb.og ]
  %i.emr = sext i32 %i.elb to i64                 ; 3 uses
  %i.ems = getelementptr inbounds [4 x i8], ptr %i.ekx, i64 %i.emr
  %i.emt = load i32, ptr %i.ems, align 4, !tbaa !101
  %i.emu = lshr i32 %i.emt, %i.eih                ; 2 uses
  %i.emv = and i32 %i.emu, 1
  %.sroa.4.0.insert.ext.i.i147 = zext nneg i32 %i.emv to i64
  %i.emw = load ptr, ptr %i.clb, align 8, !tbaa !344
  %i.emx = getelementptr inbounds i8, ptr %i.emw, i64 -4
  %i.emy = load i32, ptr %i.emx, align 4, !tbaa !101
  %i.emz = sext i32 %i.emy to i64
  %i.ena = getelementptr inbounds nuw [8 x i8], ptr %i.emq, i64 %i.emz
  %.sroa.4.0.insert.shift.i.i148 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i147, 32
  %.sroa.0.0.insert.ext.i.i149 = zext nneg i32 %i.ejg to i64
  %.sroa.0.0.insert.insert.i.i150 = or disjoint i64 %.sroa.4.0.insert.shift.i.i148, %.sroa.0.0.insert.ext.i.i149
  store i64 %.sroa.0.0.insert.insert.i.i150, ptr %i.ena, align 4
  %i.enb = load ptr, ptr %i.clb, align 8, !tbaa !344
  %i.enc = getelementptr inbounds i8, ptr %i.enb, i64 -4 ; 2 uses
  %i.end = load i32, ptr %i.enc, align 4, !tbaa !101
  %i.ene = add nsw i32 %i.end, 1
  store i32 %i.ene, ptr %i.enc, align 4, !tbaa !101
  %i.enf = trunc i32 %i.emu to i1
  br i1 %i.enf, label %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i.i144, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.eng = load i32, ptr %i.clc, align 8, !tbaa !324
  %i.enh = add nsw i32 %i.eng, 1
  store i32 %i.enh, ptr %i.clc, align 8, !tbaa !324
  br label %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i.i144

_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i.i144: ; preds = %bb.oj, %bb.oi, %_ZN3gmxL18get_exclusion_maskEPNS_16NbnxnPairlistGpuEii.exit._ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre181.i.i, %_ZN3gmxL18get_exclusion_maskEPNS_16NbnxnPairlistGpuEii.exit._ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit_crit_edge.i.i ], [ %i.emr, %bb.oj ], [ %i.emr, %bb.oi ]
  %i.eni = getelementptr inbounds [4 x i8], ptr %i.ekx, i64 %.pre-phi.i.i ; 2 uses
  %i.enj = load i32, ptr %i.eni, align 4, !tbaa !101
  %i.enk = and i32 %i.enj, %i.eix
  store i32 %i.enk, ptr %i.eni, align 4, !tbaa !101
  %.pre180.i.i = load i32, ptr %i.cgk, align 4, !tbaa !91
  br label %bb.ok

bb.ok:                                            ; preds = %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i.i144, %bb.ny, %bb.nx, %bb.nv
  %i.enl = phi i32 [ %i.eiy, %bb.ny ], [ %.pre180.i.i, %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit.i.i144 ], [ %i.eiy, %bb.nx ], [ %i.eiy, %bb.nv ] ; 2 uses
  %i.enm = add nuw nsw i32 %.0158.i.i, 1          ; 2 uses
  %i.enn = icmp slt i32 %i.enm, %i.enl
  br i1 %i.enn, label %bb.nv, label %.loopexit.i445.i, !llvm.loop !593

.loopexit.i445.i:                                 ; preds = %bb.ok, %bb.nu, %bb.nt, %bb.nr
  %indvars.iv.next.i446.i = add nuw nsw i64 %indvars.iv.i444.i, 1 ; 2 uses
  %exitcond.not.i447.i = icmp eq i64 %indvars.iv.next.i446.i, 4
  br i1 %exitcond.not.i447.i, label %bb.nq, label %bb.nr, !llvm.loop !594

_ZN3gmx12AtomPairlist18popIEntryWhenEmptyEv.exit.i.i142: ; preds = %bb.np, %._crit_edge.i.i143, %.lr.ph165.i.i
  %i.eno = add nuw nsw i32 %.0115162.i.i, 1       ; 2 uses
  %i.enp = load i32, ptr %i.ckx, align 8, !tbaa !90 ; 3 uses
  %i.enq = icmp slt i32 %i.eno, %i.enp
  br i1 %i.enq, label %.lr.ph165.i.i, label %._crit_edge166.i.i, !llvm.loop !595

_ZN3gmxL13make_fep_listILNS_12PairlistTypeE3EEEvNS_8ArrayRefIKiEEPKNS_16nbnxn_atomdata_tEPNS_16NbnxnPairlistGpuEbffffRKNS_4GridESC_PNS_12AtomPairlistE.exit.loopexit.i: ; preds = %._crit_edge166.i.i
  %.pre.i141 = load ptr, ptr %i.ckg, align 8, !tbaa !137
  br label %_ZN3gmxL13make_fep_listILNS_12PairlistTypeE3EEEvNS_8ArrayRefIKiEEPKNS_16nbnxn_atomdata_tEPNS_16NbnxnPairlistGpuEbffffRKNS_4GridESC_PNS_12AtomPairlistE.exit.i

_ZN3gmxL13make_fep_listILNS_12PairlistTypeE3EEEvNS_8ArrayRefIKiEEPKNS_16nbnxn_atomdata_tEPNS_16NbnxnPairlistGpuEbffffRKNS_4GridESC_PNS_12AtomPairlistE.exit.i: ; preds = %_ZN3gmxL13make_fep_listILNS_12PairlistTypeE3EEEvNS_8ArrayRefIKiEEPKNS_16nbnxn_atomdata_tEPNS_16NbnxnPairlistGpuEbffffRKNS_4GridESC_PNS_12AtomPairlistE.exit.loopexit.i, %bb.nn, %bb.nm, %_ZN3gmxL22setExclusionsForIEntryILNS_12PairlistTypeE3EEEvRKNS_7GridSetEPNS_16NbnxnPairlistGpuEbiRKNS_11ListOfListsIiEE.exit.i
  %i.enr = phi ptr [ %.pre.i141, %_ZN3gmxL13make_fep_listILNS_12PairlistTypeE3EEEvNS_8ArrayRefIKiEEPKNS_16nbnxn_atomdata_tEPNS_16NbnxnPairlistGpuEbffffRKNS_4GridESC_PNS_12AtomPairlistE.exit.loopexit.i ], [ %.pre850.i, %bb.nn ], [ %.pre850.i, %bb.nm ], [ %.pre850.i, %_ZN3gmxL22setExclusionsForIEntryILNS_12PairlistTypeE3EEEvRKNS_7GridSetEPNS_16NbnxnPairlistGpuEbiRKNS_11ListOfListsIiEE.exit.i ] ; 3 uses
  %i.ens = getelementptr inbounds i8, ptr %i.enr, i64 -4
  %i.ent = load i32, ptr %i.ens, align 4, !tbaa !359 ; 4 uses
  %i.enu = getelementptr inbounds i8, ptr %i.enr, i64 -8
  %i.env = load i32, ptr %i.enu, align 4, !tbaa !360 ; 3 uses
  %i.enw = icmp sgt i32 %i.ent, %i.env
  br i1 %i.enw, label %bb.ol, label %bb.ov

bb.ol:                                            ; preds = %_ZN3gmxL13make_fep_listILNS_12PairlistTypeE3EEEvNS_8ArrayRefIKiEEPKNS_16nbnxn_atomdata_tEPNS_16NbnxnPairlistGpuEbffffRKNS_4GridESC_PNS_12AtomPairlistE.exit.i
  %i.enx = load ptr, ptr %i.cge, align 8, !tbaa !95
  %i.eny = getelementptr inbounds nuw i8, ptr %i.enx, i64 160 ; 2 uses
  %i.enz = load i32, ptr %i.eny, align 8, !tbaa !648
  %i.eoa = add i32 %i.enz, 3
  %i.eob = sdiv i32 %i.eoa, 4
  %i.eoc = shl nsw i32 %i.eob, 2
  store i32 %i.eoc, ptr %i.eny, align 8, !tbaa !648
  br i1 %i.cld, label %bb.om, label %_ZN3gmxL11closeIEntryILNS_12PairlistTypeE3EEEvPNS_16NbnxnPairlistGpuEibfii.exit.i

bb.om:                                            ; preds = %bb.ol
  br i1 %i.cfi, label %bb.on, label %bb.oo

bb.on:                                            ; preds = %bb.om
  %i.eod = load i32, ptr %i.ckt, align 8, !tbaa !94
  %i.eoe = sitofp i32 %i.eod to float
  %i.eof = fadd float %i.clh, %i.eoe
  %i.eog = fadd float %i.cfj, %i.eof
  %i.eoh = fpext float %i.eog to double
  %i.eoi = fdiv double %i.clk, %i.eoh
  %i.eoj = fmul double %i.eoi, %i.cli
  %i.eok = fptosi double %i.eoj to i32
  br label %bb.oo

bb.oo:                                            ; preds = %bb.on, %bb.om
  %.061.i.i.i = phi i32 [ %i.eok, %bb.on ], [ %i.cfg, %bb.om ] ; 3 uses
  %i.eol = sub nsw i32 %i.ent, %i.env             ; 2 uses
  %i.eom = icmp sgt i32 %i.eol, 1
  %i.eon = shl nuw nsw i32 %i.eol, 5
  %i.eoo = icmp sgt i32 %i.eon, %.061.i.i.i
  %or.cond.i.i463.i = select i1 %i.eom, i1 %i.eoo, i1 false
  br i1 %or.cond.i.i463.i, label %.preheader.lr.ph.i.i.i, label %_ZN3gmxL11closeIEntryILNS_12PairlistTypeE3EEEvPNS_16NbnxnPairlistGpuEibfii.exit.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.oo
  %i.eop = sext i32 %i.env to i64
  br label %.preheader.i.i.i139

.preheader.i.i.i139:                              ; preds = %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE9push_backERKS1_.exit.i.i.i, %.preheader.lr.ph.i.i.i
  %indvars.iv.i.i464.i = phi i64 [ %i.eop, %.preheader.lr.ph.i.i.i ], [ %indvars.iv.next.i.i465.i, %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE9push_backERKS1_.exit.i.i.i ] ; 3 uses
  %.05471.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i ], [ %i.eoy, %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE9push_backERKS1_.exit.i.i.i ] ; 2 uses
  %.05570.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i ], [ %.156.i.i.i, %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE9push_backERKS1_.exit.i.i.i ] ; 2 uses
  %.05769.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i ], [ %.158.i.i.i, %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE9push_backERKS1_.exit.i.i.i ] ; 2 uses
  %.05968.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i ], [ %i.eqi, %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE9push_backERKS1_.exit.i.i.i ] ; 7 uses
  %i.eoq = load ptr, ptr %i.cfw, align 8, !tbaa !98
  %i.eor = getelementptr inbounds nuw [32 x i8], ptr %i.eoq, i64 %indvars.iv.i.i464.i
  %i.eos = getelementptr inbounds nuw i8, ptr %i.eor, i64 16
  %i.eot = load i32, ptr %i.eos, align 4, !tbaa !362
  %i.eou = insertelement <32 x i32> poison, i32 %i.eot, i64 0
  %i.eov = shufflevector <32 x i32> %i.eou, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.eow = lshr <32 x i32> %i.eov, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.eox = and <32 x i32> %i.eow, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 -1>
  %i.eoy = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.eox) ; 3 uses
  %i.eoz = icmp sgt i32 %.05968.i.i.i, 0
  br i1 %i.eoz, label %bb.op, label %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE9push_backERKS1_.exit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE9push_backERKS1_.exit.i.i.i
  %.pre.i.i466.i = load ptr, ptr %i.ckg, align 8, !tbaa !137 ; 2 uses
  %i.epa = getelementptr inbounds i8, ptr %.pre.i.i466.i, i64 -4
  store i32 %i.ent, ptr %i.epa, align 4, !tbaa !359
  %i.epb = sub nsw i32 %.158.i.i.i, %.156.i.i.i
  %i.epc = add nsw i32 %.156.i.i.i, %i.eqi
  %.not.i.i467.i = icmp slt i32 %i.epb, %i.epc
  br i1 %.not.i.i467.i, label %_ZN3gmxL11closeIEntryILNS_12PairlistTypeE3EEEvPNS_16NbnxnPairlistGpuEibfii.exit.i, label %bb.ou

bb.op:                                            ; preds = %.preheader.i.i.i139
  %i.epd = sub nsw i32 %.061.i.i.i, %.05968.i.i.i
  %i.epe = sub i32 %.05968.i.i.i, %.061.i.i.i
  %i.epf = add i32 %i.epe, %i.eoy
  %i.epg = icmp slt i32 %i.epd, %i.epf
  br i1 %i.epg, label %bb.oq, label %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE9push_backERKS1_.exit.i.i.i

bb.oq:                                            ; preds = %bb.op
  %i.eph = load ptr, ptr %i.ckg, align 8, !tbaa !137 ; 11 uses
  %i.epi = getelementptr inbounds i8, ptr %i.eph, i64 -16
  %i.epj = getelementptr inbounds i8, ptr %i.eph, i64 -4
  %i.epk = trunc nsw i64 %indvars.iv.i.i464.i to i32 ; 3 uses
  store i32 %i.epk, ptr %i.epj, align 4, !tbaa !359
  %i.epl = load i32, ptr %i.epi, align 4, !tbaa !357 ; 2 uses
  %i.epm = getelementptr inbounds i8, ptr %i.eph, i64 -12
  %i.epn = load i32, ptr %i.epm, align 4, !tbaa !358 ; 2 uses
  %i.epo = load ptr, ptr %i.ckh, align 8, !tbaa !138
  %.not.i.i.i468.i = icmp eq ptr %i.eph, %i.epo
  br i1 %.not.i.i.i468.i, label %bb.os, label %bb.or

bb.or:                                            ; preds = %bb.oq
  store i32 %i.epl, ptr %i.eph, align 4, !tbaa !101
  %.sroa.5651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eph, i64 4
  store i32 %i.epn, ptr %.sroa.5651.0..sroa_idx.i, align 4, !tbaa !101
  %.sroa.6654.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eph, i64 8
  store i32 %i.epk, ptr %.sroa.6654.0..sroa_idx.i, align 4, !tbaa !101
  %i.epp = getelementptr inbounds nuw i8, ptr %i.eph, i64 16
  store ptr %i.epp, ptr %i.ckg, align 8, !tbaa !314
  br label %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE9push_backERKS1_.exit.i.i.i

bb.os:                                            ; preds = %bb.oq
  %i.epq = load ptr, ptr %i.ckj, align 8, !tbaa !99 ; 5 uses
  %i.epr = ptrtoint ptr %i.eph to i64
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a
  %i.dh = shl i64 %n.vec183, 2
  %i.di = getelementptr i8, ptr %i.da, i64 %i.dh
  %broadcast.splatinsert184 = insertelement <8 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat185 = shufflevector <8 x i32> %broadcast.splatinsert184, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph182
  %index187 = phi i64 [ 0, %vector.ph182 ], [ %index.next189, %vector.body186 ] ; 2 uses
  %i.dj = shl i64 %index187, 2
  %next.gep188 = getelementptr i8, ptr %i.da, i64 %i.dj ; 4 uses
  %i.dk = getelementptr i8, ptr %next.gep188, i64 32
  %i.dl = getelementptr i8, ptr %next.gep188, i64 64
  %i.dm = getelementptr i8, ptr %next.gep188, i64 96
  store <8 x i32> %broadcast.splat185, ptr %next.gep188, align 4, !tbaa !101
  store <8 x i32> %broadcast.splat185, ptr %i.dk, align 4, !tbaa !101
  store <8 x i32> %broadcast.splat185, ptr %i.dl, align 4, !tbaa !101
  store <8 x i32> %broadcast.splat185, ptr %i.dm, align 4, !tbaa !101
  %index.next189 = add nuw i64 %index187, 32      ; 2 uses
  %i.dn = icmp eq i64 %index.next189, %n.vec183
  br i1 %i.dn, label %middle.block190, label %vector.body186, !llvm.loop !741

middle.block190:                                  ; preds = %vector.body186
  %cmp.n191 = icmp eq i64 %i.df, %n.vec183
  br i1 %cmp.n191, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %vec.epilog.iter.check195

vec.epilog.iter.check195:                         ; preds = %middle.block190
  %min.epilog.iters.check196 = icmp eq i64 %i.dg, 0
  br i1 %min.epilog.iters.check196, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vec.epilog.ph197, !prof !338

vec.epilog.ph197:                                 ; preds = %vector.main.loop.iter.check180, %vec.epilog.iter.check195
  %vec.epilog.resume.val192 = phi i64 [ %n.vec183, %vec.epilog.iter.check195 ], [ 0, %vector.main.loop.iter.check180 ]
  %n.vec198 = and i64 %i.df, 9223372036854775800  ; 3 uses
  %i.do = shl i64 %n.vec198, 2
  %i.dp = getelementptr i8, ptr %i.da, i64 %i.do
  %broadcast.splatinsert199 = insertelement <8 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat200 = shufflevector <8 x i32> %broadcast.splatinsert199, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body201

vec.epilog.vector.body201:                        ; preds = %vec.epilog.vector.body201, %vec.epilog.ph197
  %index202 = phi i64 [ %vec.epilog.resume.val192, %vec.epilog.ph197 ], [ %index.next204, %vec.epilog.vector.body201 ] ; 2 uses
  %i.dq = shl i64 %index202, 2
  %next.gep203 = getelementptr i8, ptr %i.da, i64 %i.dq
  store <8 x i32> %broadcast.splat200, ptr %next.gep203, align 4, !tbaa !101
  %index.next204 = add nuw i64 %index202, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next204, %n.vec198
  br i1 %i.dr, label %vec.epilog.middle.block205, label %vec.epilog.vector.body201, !llvm.loop !742

vec.epilog.middle.block205:                       ; preds = %vec.epilog.vector.body201
  %cmp.n206 = icmp eq i64 %i.df, %n.vec198
  br i1 %cmp.n206, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %iter.check193, %vec.epilog.iter.check195, %vec.epilog.middle.block205
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.da, %iter.check193 ], [ %i.di, %vec.epilog.iter.check195 ], [ %i.dp, %vec.epilog.middle.block205 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.dc, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !101
  %i.ds = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ds, %i.db
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !743

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %vec.epilog.middle.block205, %middle.block190
  %i.dt = icmp sgt i64 %i.cw, 4
  br i1 %i.dt, label %bb.r, label %bb.s, !prof !368

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cz, ptr align 4 %i.cl, i64 %i.cw, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.du = icmp eq i64 %i.cw, 4
  br i1 %i.du, label %bb.t, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.dv = load i32, ptr %i.cl, align 4, !tbaa !101
  store i32 %i.dv, ptr %i.cz, align 4, !tbaa !101
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %2 ; 3 uses
  %i.dx = sub i64 %i.f, %i.cv                     ; 4 uses
  %i.dy = icmp sgt i64 %i.dx, 4
  br i1 %i.dy, label %bb.u, label %bb.v, !prof !368

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dw, ptr align 4 %1, i64 %i.dx, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.dz = icmp eq i64 %i.dx, 4
  br i1 %i.dz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ea = load i32, ptr %1, align 4, !tbaa !101
  store i32 %i.ea, ptr %i.dw, align 4, !tbaa !101
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.eb = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  %.not.i82 = icmp eq ptr %i.cl, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ee) #32
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !107
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !175
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cu
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block132, %vec.epilog.middle.block147, %middle.block161, %vec.epilog.middle.block176, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmxL17balance_fep_listsENS_8ArrayRefISt10unique_ptrINS_12AtomPairlistESt14default_deleteIS2_EEEENS0_INS_14PairsearchWorkEEE.omp_outlined(ptr noalias nofree readnone captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef i32 @_Z22gmx_omp_get_thread_numv()
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %i.a to i64
  %i.c = load i64, ptr %2, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds [216 x i8], ptr %i.d, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !166  ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !173  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !316
  %.not.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN3gmx12AtomPairlist6IEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3gmx12AtomPairlist6IEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.i, align 8, !tbaa !316
  br label %_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN3gmx12AtomPairlist6IEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !175  ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !107  ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = icmp eq ptr %i.m, %i.n
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i
  %i.t = sub nuw nsw i64 1, %i.r
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.t)
          to label %_ZN3gmx12AtomPairlist5clearEv.exit unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %_ZNSt6vectorIN3gmx12AtomPairlist6IEntryESaIS2_EE5clearEv.exit.i
  %i.u = icmp ugt i64 %i.r, 1
  br i1 %i.u, label %bb.e, label %_ZN3gmx12AtomPairlist5clearEv.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.m, %i.v
  br i1 %.not.i.i1.i, label %_ZN3gmx12AtomPairlist5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.e
  store ptr %i.v, ptr %i.l, align 8, !tbaa !175
  br label %_ZN3gmx12AtomPairlist5clearEv.exit

_ZN3gmx12AtomPairlist5clearEv.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !324
  %i.x = load i32, ptr %3, align 4, !tbaa !101    ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %_ZN3gmx12AtomPairlist5clearEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  br label %bb.f

._crit_edge73:                                    ; preds = %._crit_edge, %_ZN3gmx12AtomPairlist5clearEv.exit
  ret void

bb.f:                                             ; preds = %.lr.ph72, %._crit_edge
  %i.aa = phi i32 [ %i.x, %.lr.ph72 ], [ %i.ao, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.071 = phi i32 [ 0, %.lr.ph72 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.03869 = phi i32 [ 0, %.lr.ph72 ], [ %.139.lcssa, %._crit_edge ] ; 2 uses
  %i.ab = load i64, ptr %4, align 8
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !166 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !173 ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !316
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph67, label %._crit_edge

.lr.ph67:                                         ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre = load i32, ptr %3, align 4, !tbaa !101
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.ao = phi i32 [ %i.aa, %bb.f ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.139.lcssa = phi i32 [ %.03869, %bb.f ], [ %i.cv, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.071, %bb.f ], [ %.2, %._crit_edge.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %bb.f, label %._crit_edge73, !llvm.loop !744

bb.g:                                             ; preds = %.lr.ph67, %.loopexit
  %i.ar = phi ptr [ %i.ag, %.lr.ph67 ], [ %i.cx, %.loopexit ]
  %.166 = phi i32 [ %.071, %.lr.ph67 ], [ %.2, %.loopexit ] ; 3 uses
  %.03665 = phi i64 [ 0, %.lr.ph67 ], [ %i.cw, %.loopexit ] ; 4 uses
  %.13964 = phi i32 [ %.03869, %.lr.ph67 ], [ %i.cv, %.loopexit ] ; 5 uses
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !169 ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !107
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %.03665 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !101 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.au, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !101
  %i.ba = sub nsw i32 %i.az, %i.av
  %i.bb = sext i32 %i.ba to i64
  %.not.i.i = icmp eq ptr %i.as, null
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bb
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.bc
  %i.bd = ptrtoint ptr %spec.select.i.i to i64
  %i.be = ptrtoint ptr %i.ax to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr exact i64 %i.bf, 3
  %i.bh = trunc i64 %i.bg to i32                  ; 3 uses
  %i.bi = add nsw i32 %.166, 1                    ; 2 uses
  %i.bj = load i32, ptr %3, align 4, !tbaa !101
  %i.bk = icmp slt i32 %i.bi, %i.bj
  %i.bl = icmp sgt i32 %.13964, 0
  %or.cond = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = add nsw i32 %.13964, %i.bh
  %i.bn = load i32, ptr %5, align 4, !tbaa !101   ; 2 uses
  %i.bo = sub i32 %i.bm, %i.bn
  %i.bp = sub nsw i32 %i.bn, %.13964
  %i.bq = icmp sgt i32 %i.bo, %i.bp               ; 2 uses
  %spec.select = select i1 %i.bq, i32 0, i32 %.13964
  %spec.select42 = select i1 %i.bq, i32 %i.bi, i32 %.166
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.240 = phi i32 [ %.13964, %bb.g ], [ %spec.select, %bb.h ]
  %.2 = phi i32 [ %.166, %bb.g ], [ %spec.select42, %bb.h ] ; 3 uses
  %i.br = icmp eq i32 %.2, %i.a
  br i1 %i.br, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %.03665
  invoke void @_ZN3gmx12AtomPairlist9addIEntryERKNS0_6IEntryEi(ptr noundef nonnull align 8 dereferenceable(76) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.bs, i32 noundef %i.bh)
          to label %bb.k unwind label %.loopexit59

bb.k:                                             ; preds = %bb.j
  %i.bt = load ptr, ptr %i.am, align 8, !tbaa !169 ; 2 uses
  %i.bu = load ptr, ptr %i.an, align 8, !tbaa !107
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %.03665 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !101 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bx ; 3 uses
  %i.bz = getelementptr i8, ptr %i.bv, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !101
  %i.cb = sub nsw i32 %i.ca, %i.bw
  %i.cc = sext i32 %i.cb to i64
  %.not.i.i45 = icmp eq ptr %i.bt, null
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cc
  %spec.select.i.i46 = select i1 %.not.i.i45, ptr null, ptr %i.cd ; 2 uses
  %.not62 = icmp eq ptr %i.by, %spec.select.i.i46
  br i1 %.not62, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit
  %.sroa.0.063 = phi ptr [ %i.cu, %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit ], [ %i.by, %bb.k ] ; 3 uses
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !344
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !101
  %i.ch = sext i32 %i.cg to i64
  %i.ci = load ptr, ptr %i.z, align 8, !tbaa !169
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load i64, ptr %.sroa.0.063, align 4
  store i64 %i.ck, ptr %i.cj, align 4
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !344
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !101
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !101
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 4
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !347, !range !131, !noundef !132
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.cs = load i32, ptr %i.w, align 8, !tbaa !324
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.w, align 8, !tbaa !324
  br label %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit

_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit: ; preds = %.lr.ph, %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cu, %spec.select.i.i46
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN3gmx12AtomPairlist9addJEntryERKNS0_6JEntryE.exit, %bb.k, %bb.i
  %i.cv = add nsw i32 %.240, %i.bh                ; 2 uses
  %i.cw = add nuw nsw i64 %.03665, 1              ; 2 uses
  %i.cx = load ptr, ptr %i.ae, align 8, !tbaa !173 ; 2 uses
  %i.cy = load ptr, ptr %i.af, align 8, !tbaa !316
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = sdiv exact i64 %i.db, 12
  %i.dd = icmp slt i64 %i.cw, %i.dc
  br i1 %i.dd, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !745

.loopexit59:                                      ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.a, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit59
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit59 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.de = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.de) #34
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx12PairlistSets9constructENS_19InteractionLocalityEPNS_10PairSearchEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEblP6t_nrnb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) initializes((56, 57)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext %5, i64 noundef %6, ptr nofree noundef captures(address_is_null) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %5 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.a, ptr %i.b, align 8, !tbaa !760
  %.sroa.339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.339.0.copyload = load ptr, ptr %.sroa.339.0..sroa_idx, align 8, !tbaa !282 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.e = load ptr, ptr %4, align 8, !tbaa !107
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp eq i64 %i.h, 4
  %i.j = icmp eq ptr %.sroa.339.0.copyload, null
  %or.cond.not = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.339.0.copyload, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !303
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr [4 x i8], ptr %.sroa.339.0.copyload, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 132
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101
  %i.q = getelementptr i8, ptr %i.n, i64 136
  %i.r = load i32, ptr %i.q, align 4, !tbaa !101  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.p, %i.r
  br i1 %.not.i.i, label %bb.c, label %_ZNK3gmx11DomdecZones9atomRangeEi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.15, i32 noundef 111) #33
  unreachable

_ZNK3gmx11DomdecZones9atomRangeEi.exit:           ; preds = %bb.b
  %i.s = ashr exact i64 %i.h, 2
  %i.t = add nsw i64 %i.s, -1
  %i.u = sext i32 %i.r to i64
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK3gmx11DomdecZones9atomRangeEi.exit
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12PairlistSets9constructENS_19InteractionLocalityEPNS_10PairSearchEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEblP6t_nrnbENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 4027) #33
  unreachable

bb.e:                                             ; preds = %bb.a, %_ZNK3gmx11DomdecZones9atomRangeEi.exit
  %i.w = icmp eq i32 %1, 0                        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %.0.i = select i1 %i.w, ptr %i.y, ptr %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !762 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !763
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !764
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  tail call void @_ZN3gmx11PairlistSet18constructPairlistsENS_19InteractionLocalityERKNS_7GridSetENS_8ArrayRefINS_14PairsearchWorkEEEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEbiP6t_nrnbPNS_19SearchCycleCountingE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(232) %2, ptr %i.ac, ptr %i.ai, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext %5, i32 noundef %i.ak, ptr noundef %7, ptr noundef nonnull %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.w, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  store i64 %6, ptr %i.am, align 8, !tbaa !765
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 260 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !771
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !771
  br label %.thread40

bb.f:                                             ; preds = %bb.e
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !765
  %i.ar = icmp eq i64 %i.aq, %6
  br i1 %i.ar, label %.thread40, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12PairlistSets9constructENS_19InteractionLocalityEPNS_10PairSearchEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEblP6t_nrnbENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 4046) #33
  unreachable

.thread40:                                        ; preds = %bb.f, %.thread
  %i.as = load i8, ptr %i.al, align 8, !tbaa !772, !range !131, !noundef !132
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.thread40
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 5
  %.sroa.3.0.copyload.i = load i8, ptr %.sroa.3.0..sroa_idx.i, align 1, !tbaa !230
  %i.au = trunc nuw i8 %.sroa.3.0.copyload.i to i1
  %i.av = icmp ne i32 %1, 1
  %.not41 = and i1 %i.av, %i.au
  br i1 %.not41, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !771
  %i.ay = srem i32 %i.ax, 100
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !232
  %i.bb = load ptr, ptr %i.ab, align 8, !tbaa !762 ; 3 uses
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !763
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bf
  tail call void @_ZNK3gmx19SearchCycleCounting11printCyclesEP8_IO_FILENS_8ArrayRefIKNS_14PairsearchWorkEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.al, ptr noundef %i.ba, ptr %i.bb, ptr %i.bg)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %.thread40
  ret void
}

declare void @_ZNK3gmx19SearchCycleCounting11printCyclesEP8_IO_FILENS_8ArrayRefIKNS_14PairsearchWorkEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx18nonbonded_verlet_t17constructPairlistENS_19InteractionLocalityERKNS_11ListOfListsIiEEblP6t_nrnb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, i64 noundef %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !774
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !776
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !229
  tail call void @_ZN3gmx12PairlistSets9constructENS_19InteractionLocalityEPNS_10PairSearchEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEblP6t_nrnb(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i32 noundef %1, ptr noundef %i.c, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, i64 noundef %4, ptr noundef %5)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !776  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  %i.h = load i8, ptr %i.g, align 4, !tbaa !341, !range !131, !noundef !132
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !778  ; 2 uses
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %.sroa.3.0.copyload.i = load i8, ptr %.sroa.3.0..sroa_idx.i, align 1, !tbaa !230
  %i.l = trunc nuw i8 %.sroa.3.0.copyload.i to i1 ; 2 uses
  %i.m = icmp ne i32 %1, 1
  %.not20 = and i1 %i.m, %i.l
  br i1 %.not20, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !774    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.r = load i32, ptr %i.q, align 8, !tbaa !342  ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !342
  %i.w = add nsw i32 %i.v, %i.r
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.w, %bb.e ], [ %i.r, %bb.d ]
  tail call void @_ZN16ExclusionChecker25scheduleCheckOfExclusionsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %.0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b, %bb.a
  ret void
}

end_hunk_4
