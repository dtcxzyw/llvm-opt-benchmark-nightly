Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_partition_bitpack?download=true
inline.NumInlined: 87
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@EI_partitionBitpackDynGraph:bb.a
  %i.fz = tail call i32 @llvm.umax.i32(i32 %i.fy, i32 1)
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !61, !noalias !53
  %i.ga = add nuw nsw i32 %.lcssa293, 1
  br label %bb.n

PB_readValue.exit88.i.i:                          ; preds = %middle.block306, %PB_readValue.exit88.i.i
  %.07694.i.i = phi i64 [ %i.gj, %PB_readValue.exit88.i.i ], [ %n.vec, %middle.block306 ] ; 2 uses
  %.07893.i.i = phi i32 [ %i.gi, %PB_readValue.exit88.i.i ], [ %i.fe, %middle.block306 ]
  %.08092.i.i = phi i32 [ %i.gh, %PB_readValue.exit88.i.i ], [ %i.ff, %middle.block306 ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.07694.i.i
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !61, !noalias !53 ; 3 uses
  %i.gd = icmp ult i32 %i.gc, 65536
  %i.ge = lshr i32 %i.gc, 4
  %i.gf = tail call range(i32 0, 16) i32 @llvm.ctlz.i32(i32 range(i32 65536, 0) %i.gc, i1 true)
  %i.gg = sub nuw nsw i32 4111, %i.gf
  %.0.i89.i.i = select i1 %i.gd, i32 %i.ge, i32 %i.gg ; 2 uses
  %i.gh = tail call i32 @llvm.umin.i32(i32 %.08092.i.i, i32 %.0.i89.i.i) ; 2 uses
  %i.gi = tail call i32 @llvm.umax.i32(i32 %.07893.i.i, i32 %.0.i89.i.i) ; 2 uses
  %i.gj = add nuw i64 %.07694.i.i, 1              ; 2 uses
  %exitcond.not.i54.i = icmp eq i64 %i.gj, %i.k
  br i1 %exitcond.not.i54.i, label %.split96.us.i55.i, label %PB_readValue.exit88.i.i, !llvm.loop !21

bb.n:                                             ; preds = %.split96.us.i55.i, %.split.us.thread.i.i
  %i.gk = phi i32 [ 3, %.split96.us.i55.i ], [ 1, %.split.us.thread.i.i ] ; 5 uses
  %.179.i56.i = phi i32 [ %i.ga, %.split96.us.i55.i ], [ 1, %.split.us.thread.i.i ] ; 3 uses
  %i.gl = zext nneg i32 %.179.i56.i to i64        ; 5 uses
  %xtraiter = and i64 %i.gl, 3                    ; 3 uses
  %i.gm = icmp ult i32 %.179.i56.i, 4
  br i1 %i.gm, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.n
  %unroll_iter = and i64 %i.gl, 2147483644
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.new
  %.07499.i57.i = phi i64 [ 0, %.new ], [ %i.hg, %bb.o ] ; 5 uses
  %.07598.i58.i = phi i32 [ 0, %.new ], [ %i.hf, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.o ]
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.07499.i57.i ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !61, !noalias !53
  %i.gp = mul i32 %i.go, %i.gk
  store i32 %.07598.i58.i, ptr %i.gn, align 4, !tbaa !61, !noalias !53
  %i.gq = add i32 %i.gp, %.07598.i58.i            ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.07499.i57.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !61, !noalias !53
  %i.gu = mul i32 %i.gt, %i.gk
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !61, !noalias !53
  %i.gv = add i32 %i.gu, %i.gq                    ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.07499.i57.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !61, !noalias !53
  %i.gz = mul i32 %i.gy, %i.gk
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !61, !noalias !53
  %i.ha = add i32 %i.gz, %i.gv                    ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.07499.i57.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 12 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !61, !noalias !53
  %i.he = mul i32 %i.hd, %i.gk
  store i32 %i.ha, ptr %i.hc, align 4, !tbaa !61, !noalias !53
  %i.hf = add i32 %i.he, %i.ha                    ; 3 uses
  %i.hg = add nuw nsw i64 %.07499.i57.i, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %PB_buildCumHist.exit61.i.unr-lcssa, label %bb.o, !llvm.loop !17

PB_buildCumHist.exit61.i.unr-lcssa:               ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %PB_buildCumHist.exit61.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %PB_buildCumHist.exit61.i.unr-lcssa, %bb.n
  %.07499.i57.i.epil.init = phi i64 [ 0, %bb.n ], [ %i.hg, %PB_buildCumHist.exit61.i.unr-lcssa ]
  %.07598.i58.i.epil.init = phi i32 [ 0, %bb.n ], [ %i.hf, %PB_buildCumHist.exit61.i.unr-lcssa ]
  %lcmp.mod415 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod415)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %.07499.i57.i.epil = phi i64 [ %.07499.i57.i.epil.init, %.epil.preheader ], [ %i.hl, %bb.p ] ; 2 uses
  %.07598.i58.i.epil = phi i32 [ %.07598.i58.i.epil.init, %.epil.preheader ], [ %i.hk, %bb.p ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.07499.i57.i.epil ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !61, !noalias !53
  %i.hj = mul i32 %i.hi, %i.gk
  store i32 %.07598.i58.i.epil, ptr %i.hh, align 4, !tbaa !61, !noalias !53
  %i.hk = add i32 %i.hj, %.07598.i58.i.epil       ; 2 uses
  %i.hl = add nuw nsw i64 %.07499.i57.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %PB_buildCumHist.exit61.i, label %bb.p, !llvm.loop !22

PB_buildCumHist.exit61.i:                         ; preds = %bb.p, %PB_buildCumHist.exit61.i.unr-lcssa
  %.lcssa406 = phi i32 [ %i.hf, %PB_buildCumHist.exit61.i.unr-lcssa ], [ %i.hk, %bb.p ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.gl
  store i32 %.lcssa406, ptr %i.hm, align 4, !tbaa !61, !noalias !53
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.gl
  br label %bb.q

bb.q:                                             ; preds = %PB_buildCumHist.exit61.i, %PB_buildCumHist.exit.i
  %i.ho = phi i32 [ %.lcssa406, %PB_buildCumHist.exit61.i ], [ %.lcssa399, %PB_buildCumHist.exit.i ]
  %.pre-phi.i = phi i64 [ %i.gl, %PB_buildCumHist.exit61.i ], [ %i.cf, %PB_buildCumHist.exit.i ] ; 7 uses
  %.sroa.12.0.i = phi i32 [ %.179.i56.i, %PB_buildCumHist.exit61.i ], [ %.179.i.i, %PB_buildCumHist.exit.i ] ; 16 uses
  %.sroa.1867.0.i = phi i64 [ 268435456, %PB_buildCumHist.exit61.i ], [ 16384, %PB_buildCumHist.exit.i ] ; 12 uses
  %.sroa.7.0.i = phi ptr [ %i.dk, %PB_buildCumHist.exit61.i ], [ %i.af, %PB_buildCumHist.exit.i ] ; 35 uses
  %.sroa.0.0.i = phi ptr [ %i.di, %PB_buildCumHist.exit61.i ], [ %i.ad, %PB_buildCumHist.exit.i ] ; 28 uses
  %.073.in.in.in.i = phi ptr [ %i.hn, %PB_buildCumHist.exit61.i ], [ %i.dh, %PB_buildCumHist.exit.i ]
  %.073.in.in.i = load i64, ptr %.073.in.in.in.i, align 8, !tbaa !55, !noalias !53
  %.073.i = add i64 %.073.in.in.i, 4294967295
  %i.hp = and i64 %.073.i, 4294967295
  %i.hq = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.hp, i1 false)
  %i.hr = sub nuw nsw i64 64, %i.hq               ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %.pre-phi.i ; 3 uses
  %i.ht = zext i32 %i.ho to i64
  %i.hu = mul nuw nsw i64 %i.hr, %i.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8, !noalias !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8, !noalias !53
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %.pre-phi.i ; 2 uses
  %i.hw = icmp eq i32 %.sroa.12.0.i, 1
  %i.hx = add nsw i64 %.pre-phi.i, -1
  %i.hy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.hx, i1 true)
  %i.hz = trunc nuw nsw i64 %i.hy to i32
  %i.ia = xor i32 %i.hz, 63
  %i.ib = shl nuw i32 1, %i.ia
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.ic
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.ic
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %scevgep126.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.if = add i32 %.sroa.12.0.i, 1                ; 6 uses
  %i.ig = zext i32 %i.if to i64                   ; 3 uses
  %i.ih = icmp ugt i32 %i.if, 1
  br label %bb.r

bb.r:                                             ; preds = %PB_fixedPartitionFastInner.exit.thread.i, %bb.q
  %i.ii = phi i1 [ true, %bb.q ], [ false, %PB_fixedPartitionFastInner.exit.thread.i ]
  %.035110.i = phi i64 [ 0, %bb.q ], [ 1, %PB_fixedPartitionFastInner.exit.thread.i ]
  %.036109.i = phi i64 [ -1, %bb.q ], [ %.2.ph.i, %PB_fixedPartitionFastInner.exit.thread.i ] ; 9 uses
  %.037108.i = phi i64 [ 0, %bb.q ], [ %.239.ph.i, %PB_fixedPartitionFastInner.exit.thread.i ] ; 8 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr @__const.PB_fixedPartition.trialCounts, i64 %.035110.i
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !55, !noalias !53 ; 6 uses
  br i1 %i.aa, label %bb.an, label %PB_isLegalPartition.exit.i.i.i.i.i

PB_isLegalPartition.exit.i.i.i.i.i:               ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8, !noalias !53
  store i32 0, ptr %i.e, align 16, !tbaa !61, !noalias !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8, !noalias !53
  %i.il = load i64, ptr %i.hv, align 8, !tbaa !55, !noalias !53 ; 2 uses
  %i.im = load i64, ptr %.sroa.7.0.i, align 8, !tbaa !55, !noalias !53 ; 2 uses
  %i.in = sub i64 %i.il, %i.im                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.in, %.sroa.1867.0.i ; 2 uses
  %brmerge.i = or i1 %i.hw, %.not.i.i.i.i.i
  %.mux.i = select i1 %.not.i.i.i.i.i, i64 9223372036854775807, i64 -9223372036854775808
  br i1 %brmerge.i, label %.critedge.preheader.i.i.i.i, label %bb.s

.critedge.preheader.i.i.i.i:                      ; preds = %bb.s, %PB_isLegalPartition.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %.mux.i, %PB_isLegalPartition.exit.i.i.i.i.i ], [ %i.jn, %bb.s ]
  store i64 %.0.i.i.i.i.i, ptr %i.b, align 16, !tbaa !55, !noalias !53
  br label %.preheader110.i.i.i.i

bb.s:                                             ; preds = %PB_isLegalPartition.exit.i.i.i.i.i
  %i.io = load i32, ptr %i.hs, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.ip = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.iq = sub i32 %i.io, %i.ip
  %i.ir = icmp ult i64 %i.in, 2
  %i.is = add nsw i64 %i.in, -1
  %i.it = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.is, i1 true)
  %i.iu = sub nuw nsw i64 64, %i.it
  %i.iv = zext i32 %i.iq to i64
  %i.iw = select i1 %i.ir, i64 0, i64 %i.iu
  %i.ix = mul nuw nsw i64 %i.iw, %i.iv
  %i.iy = load i32, ptr %i.id, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.iz = sub i32 %i.iy, %i.ip
  %i.ja = load i64, ptr %i.ie, align 8, !tbaa !55, !noalias !53 ; 2 uses
  %i.jb = sub i64 %i.ja, %i.im                    ; 2 uses
  %i.jc = icmp ult i64 %i.jb, 2
  %i.jd = add i64 %i.jb, -1
  %i.je = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.jd, i1 true)
  %.neg.i.i.i.i.i.i = or disjoint i64 %i.je, -64
  %i.jf = zext i32 %i.iz to i64
  %.neg1.i.i.i.i.i.i = select i1 %i.jc, i64 0, i64 %.neg.i.i.i.i.i.i
  %.neg2.i.i.i.i.i.i = mul nsw i64 %.neg1.i.i.i.i.i.i, %i.jf
  %i.jg = sub i32 %i.io, %i.iy
  %i.jh = sub i64 %i.il, %i.ja                    ; 2 uses
  %i.ji = icmp ult i64 %i.jh, 2
  %i.jj = add i64 %i.jh, -1
  %i.jk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.jj, i1 true)
  %.neg3.i.i.i.i.i.i = or disjoint i64 %i.jk, -64
  %i.jl = zext i32 %i.jg to i64
  %.neg4.i.i.i.i.i.i = select i1 %i.ji, i64 0, i64 %.neg3.i.i.i.i.i.i
  %.neg5.i.i.i.i.i.i = mul nsw i64 %.neg4.i.i.i.i.i.i, %i.jl
  %.neg6.i.i.i.i.i.i = add nsw i64 %i.ix, -24
  %i.jm = add nsw i64 %.neg6.i.i.i.i.i.i, %.neg5.i.i.i.i.i.i
  %i.jn = add nsw i64 %i.jm, %.neg2.i.i.i.i.i.i
  br label %.critedge.preheader.i.i.i.i

.critedge.loopexit.i.i.i.i:                       ; preds = %PB_partitionSplitGain.exit101.i.i.i.i, %PB_partitionSplitGain.exit101.i.i.i.i.1, %.preheader.i.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %i.kp, %i.ik
  br i1 %exitcond.not.i.i.i, label %PB_dividePartitions.exit.i.i.i, label %.preheader110.i.i.i.i

.preheader110.i.i.i.i:                            ; preds = %.critedge.loopexit.i.i.i.i, %.critedge.preheader.i.i.i.i
  %.sroa.33.0.i.i.i = phi i64 [ 1, %.critedge.preheader.i.i.i.i ], [ %i.kp, %.critedge.loopexit.i.i.i.i ] ; 12 uses
  br label %.lr.ph119.i.i.i.i

.lr.ph119.i.i.i.i:                                ; preds = %bb.t, %.preheader110.i.i.i.i
  %.070118.i.i.i.i = phi i64 [ %i.js, %bb.t ], [ 0, %.preheader110.i.i.i.i ] ; 4 uses
  %.071117.i.i.i.i = phi i64 [ %spec.select86.i.i.i.i, %bb.t ], [ -1, %.preheader110.i.i.i.i ]
  %.073116.i.i.i.i = phi i64 [ %spec.select85.i.i.i.i, %bb.t ], [ -9223372036854775808, %.preheader110.i.i.i.i ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.070118.i.i.i.i
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !55, !noalias !53 ; 3 uses
  %i.jq = icmp eq i64 %i.jp, 9223372036854775807
  br i1 %i.jq, label %.thread.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph119.i.i.i.i
  %i.jr = icmp sgt i64 %i.jp, %.073116.i.i.i.i
  %spec.select85.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.jp, i64 %.073116.i.i.i.i)
  %spec.select86.i.i.i.i = select i1 %i.jr, i64 %.070118.i.i.i.i, i64 %.071117.i.i.i.i ; 3 uses
  %i.js = add nuw nsw i64 %.070118.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.js, %.sroa.33.0.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph119.i.i.i.i, !llvm.loop !23

._crit_edge.i.i.i.i:                              ; preds = %bb.t
  %i.jt = icmp eq i64 %spec.select86.i.i.i.i, -1
  br i1 %i.jt, label %PB_dividePartitions.exit.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph119.i.i.i.i, %._crit_edge.i.i.i.i
  %.2103.i.i.i.i = phi i64 [ %spec.select86.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.070118.i.i.i.i, %.lr.ph119.i.i.i.i ] ; 13 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.2103.i.i.i.i
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.jw = add nuw nsw i64 %.2103.i.i.i.i, 1       ; 3 uses
  %i.jx = icmp eq i64 %i.jw, %.sroa.33.0.i.i.i
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jw ; 2 uses
  br i1 %i.jx, label %.thread.i.cont.i.i.i, label %.thread.i.else.i.i.i

.thread.i.else.i.i.i:                             ; preds = %.thread.i.i.i.i
  %.else.val29.i.i.i = load i32, ptr %i.jy, align 4, !tbaa !61, !noalias !53
  br label %.thread.i.cont.i.i.i

.thread.i.cont.i.i.i:                             ; preds = %.thread.i.else.i.i.i, %.thread.i.i.i.i
  %i.jz = phi i32 [ %.sroa.12.0.i, %.thread.i.i.i.i ], [ %.else.val29.i.i.i, %.thread.i.else.i.i.i ]
  %i.ka = sub i32 %i.jz, %i.jv                    ; 2 uses
  %i.kb = icmp ult i32 %i.ka, 2
  br i1 %i.kb, label %PB_dividePartitions.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %.thread.i.cont.i.i.i
  %i.kc = icmp ugt i64 %.sroa.33.0.i.i.i, %i.jw   ; 2 uses
  br i1 %i.kc, label %.lr.ph.preheader.i.i.i.i.i, label %PB_dividePartitionAt.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.u
  %i.kd = shl nuw nsw i64 %.2103.i.i.i.i, 2
  %i.ke = getelementptr i8, ptr %i.e, i64 %i.kd   ; 2 uses
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ke, i64 8
  %scevgep29.i.i.i.i.i = getelementptr i8, ptr %i.ke, i64 4
  %i.kf = xor i64 %.2103.i.i.i.i, -1
  %i.kg = add i64 %.sroa.33.0.i.i.i, %i.kf
  %i.kh = shl nuw i64 %i.kg, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i.i.i.i.i, ptr align 4 %scevgep29.i.i.i.i.i, i64 %i.kh, i1 false), !tbaa !61, !noalias !53
  br label %PB_dividePartitionAt.exit.i.i.i.i

PB_dividePartitionAt.exit.i.i.i.i:                ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.u
  %i.ki = zext i32 %i.ka to i64
  %i.kj = add nsw i64 %i.ki, -1
  %i.kk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.kj, i1 true)
  %i.kl = trunc nuw nsw i64 %i.kk to i32
  %i.km = xor i32 %i.kl, 63
  %i.kn = shl nuw i32 1, %i.km
  %i.ko = add i32 %i.kn, %i.jv
  store i32 %i.ko, ptr %i.jy, align 4, !tbaa !61, !noalias !53
  %i.kp = add nuw i64 %.sroa.33.0.i.i.i, 1        ; 2 uses
  br i1 %i.kc, label %.lr.ph121.preheader.i.i.i.i, label %.preheader.i.i.i.i

.lr.ph121.preheader.i.i.i.i:                      ; preds = %PB_dividePartitionAt.exit.i.i.i.i
  %i.kq = shl nuw nsw i64 %.2103.i.i.i.i, 3       ; 2 uses
  %scevgep125.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 %i.kq
  %scevgep127.i.i.i.i = getelementptr i8, ptr %scevgep126.i.i.i.i, i64 %i.kq
  %i.kr = xor i64 %.2103.i.i.i.i, -1
  %i.ks = add i64 %.sroa.33.0.i.i.i, %i.kr
  %i.kt = shl nuw i64 %i.ks, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep125.i.i.i.i, ptr align 8 %scevgep127.i.i.i.i, i64 %i.kt, i1 false), !tbaa !55, !noalias !53
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph121.preheader.i.i.i.i, %PB_dividePartitionAt.exit.i.i.i.i
  %.not113.i.i.i = icmp ugt i64 %.2103.i.i.i.i, %.sroa.33.0.i.i.i
  br i1 %.not113.i.i.i, label %.critedge.loopexit.i.i.i.i, label %PB_partitionEnd.exit89.i.i.i.i

PB_partitionEnd.exit89.i.i.i.i:                   ; preds = %.preheader.i.i.i.i
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.2103.i.i.i.i
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !61, !noalias !53 ; 4 uses
  %i.kw = add nuw nsw i64 %.2103.i.i.i.i, 1       ; 4 uses
  %i.kx = icmp eq i64 %.2103.i.i.i.i, %.sroa.33.0.i.i.i
  br i1 %i.kx, label %PB_partitionEnd.exit89.i.cont.i.i.i, label %PB_partitionEnd.exit89.i.else.i.i.i

PB_partitionEnd.exit89.i.else.i.i.i:              ; preds = %PB_partitionEnd.exit89.i.i.i.i
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.kw
  %.else.val27.i.i.i = load i32, ptr %i.ky, align 4, !tbaa !61, !noalias !53
  br label %PB_partitionEnd.exit89.i.cont.i.i.i

PB_partitionEnd.exit89.i.cont.i.i.i:              ; preds = %PB_partitionEnd.exit89.i.else.i.i.i, %PB_partitionEnd.exit89.i.i.i.i
  %i.kz = phi i32 [ %.sroa.12.0.i, %PB_partitionEnd.exit89.i.i.i.i ], [ %.else.val27.i.i.i, %PB_partitionEnd.exit89.i.else.i.i.i ] ; 3 uses
  %i.la = icmp ult i32 %i.kv, %i.kz
  br i1 %i.la, label %PB_isLegalPartition.exit.i91.i.i.i.i, label %PB_partitionSplitGain.exit101.i.i.i.i

PB_isLegalPartition.exit.i91.i.i.i.i:             ; preds = %PB_partitionEnd.exit89.i.cont.i.i.i
  %i.lb = zext i32 %i.kz to i64                   ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.lb
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !55, !noalias !53 ; 2 uses
  %i.le = zext i32 %i.kv to i64                   ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.le
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !55, !noalias !53 ; 2 uses
  %i.lh = sub i64 %i.ld, %i.lg                    ; 3 uses
  %.not.i92.i.i.i.i = icmp ugt i64 %i.lh, %.sroa.1867.0.i
  br i1 %.not.i92.i.i.i.i, label %PB_partitionSplitGain.exit101.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %PB_isLegalPartition.exit.i91.i.i.i.i
  %i.li = sub nuw i32 %i.kz, %i.kv                ; 2 uses
  %i.lj = icmp ult i32 %i.li, 2
  br i1 %i.lj, label %PB_partitionSplitGain.exit101.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.lb
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.le
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.lo = sub i32 %i.ll, %i.ln
  %i.lp = icmp ult i64 %i.lh, 2
  %i.lq = add nsw i64 %i.lh, -1
  %i.lr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.lq, i1 true)
  %i.ls = sub nuw nsw i64 64, %i.lr
  %i.lt = zext i32 %i.lo to i64
  %i.lu = select i1 %i.lp, i64 0, i64 %i.ls
  %i.lv = mul nuw nsw i64 %i.lu, %i.lt
  %i.lw = zext i32 %i.li to i64
  %i.lx = add nsw i64 %i.lw, -1
  %i.ly = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.lx, i1 true)
  %i.lz = trunc nuw nsw i64 %i.ly to i32
  %i.ma = xor i32 %i.lz, 63
  %i.mb = shl nuw i32 1, %i.ma
  %i.mc = add i32 %i.mb, %i.kv
  %i.md = zext i32 %i.mc to i64                   ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.mg = sub i32 %i.mf, %i.ln
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.md
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !55, !noalias !53 ; 2 uses
  %i.mj = sub i64 %i.mi, %i.lg                    ; 2 uses
  %i.mk = icmp ult i64 %i.mj, 2
  %i.ml = add i64 %i.mj, -1
  %i.mm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.ml, i1 true)
  %.neg.i.i94.i.i.i.i = or disjoint i64 %i.mm, -64
  %i.mn = zext i32 %i.mg to i64
  %.neg1.i.i95.i.i.i.i = select i1 %i.mk, i64 0, i64 %.neg.i.i94.i.i.i.i
  %.neg2.i.i96.i.i.i.i = mul nsw i64 %.neg1.i.i95.i.i.i.i, %i.mn
  %i.mo = sub i32 %i.ll, %i.mf
  %i.mp = sub i64 %i.ld, %i.mi                    ; 2 uses
  %i.mq = icmp ult i64 %i.mp, 2
  %i.mr = add i64 %i.mp, -1
  %i.ms = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.mr, i1 true)
  %.neg3.i.i97.i.i.i.i = or disjoint i64 %i.ms, -64
  %i.mt = zext i32 %i.mo to i64
  %.neg4.i.i98.i.i.i.i = select i1 %i.mq, i64 0, i64 %.neg3.i.i97.i.i.i.i
  %.neg5.i.i99.i.i.i.i = mul nsw i64 %.neg4.i.i98.i.i.i.i, %i.mt
  %.neg6.i.i100.i.i.i.i = add nsw i64 %i.lv, -24
  %i.mu = add nsw i64 %.neg6.i.i100.i.i.i.i, %.neg5.i.i99.i.i.i.i
  %i.mv = add nsw i64 %i.mu, %.neg2.i.i96.i.i.i.i
  br label %PB_partitionSplitGain.exit101.i.i.i.i

PB_partitionSplitGain.exit101.i.i.i.i:            ; preds = %bb.w, %bb.v, %PB_isLegalPartition.exit.i91.i.i.i.i, %PB_partitionEnd.exit89.i.cont.i.i.i
  %.0.i90.i.i.i.i = phi i64 [ 9223372036854775807, %PB_isLegalPartition.exit.i91.i.i.i.i ], [ %i.mv, %bb.w ], [ -9223372036854775808, %bb.v ], [ 9223372036854775807, %PB_partitionEnd.exit89.i.cont.i.i.i ]
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.2103.i.i.i.i
  store i64 %.0.i90.i.i.i.i, ptr %i.mw, align 8, !tbaa !55, !noalias !53
  %i.mx = icmp ult i64 %.2103.i.i.i.i, %.sroa.33.0.i.i.i
  br i1 %i.mx, label %PB_partitionEnd.exit89.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i

PB_partitionEnd.exit89.i.i.i.i.1:                 ; preds = %PB_partitionSplitGain.exit101.i.i.i.i
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.kw
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !61, !noalias !53 ; 4 uses
  %i.na = icmp eq i64 %i.kw, %.sroa.33.0.i.i.i
  br i1 %i.na, label %PB_partitionEnd.exit89.i.cont.i.i.i.1, label %PB_partitionEnd.exit89.i.else.i.i.i.1

PB_partitionEnd.exit89.i.else.i.i.i.1:            ; preds = %PB_partitionEnd.exit89.i.i.i.i.1
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.2103.i.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %.else.val27.i.i.i.1 = load i32, ptr %i.nc, align 4, !tbaa !61, !noalias !53
  br label %PB_partitionEnd.exit89.i.cont.i.i.i.1

PB_partitionEnd.exit89.i.cont.i.i.i.1:            ; preds = %PB_partitionEnd.exit89.i.else.i.i.i.1, %PB_partitionEnd.exit89.i.i.i.i.1
  %i.nd = phi i32 [ %.sroa.12.0.i, %PB_partitionEnd.exit89.i.i.i.i.1 ], [ %.else.val27.i.i.i.1, %PB_partitionEnd.exit89.i.else.i.i.i.1 ] ; 3 uses
  %i.ne = icmp ult i32 %i.mz, %i.nd
  br i1 %i.ne, label %PB_isLegalPartition.exit.i91.i.i.i.i.1, label %PB_partitionSplitGain.exit101.i.i.i.i.1

PB_isLegalPartition.exit.i91.i.i.i.i.1:           ; preds = %PB_partitionEnd.exit89.i.cont.i.i.i.1
  %i.nf = zext i32 %i.nd to i64                   ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.nf
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !55, !noalias !53 ; 2 uses
  %i.ni = zext i32 %i.mz to i64                   ; 2 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.ni
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !55, !noalias !53 ; 2 uses
  %i.nl = sub i64 %i.nh, %i.nk                    ; 3 uses
  %.not.i92.i.i.i.i.1 = icmp ugt i64 %i.nl, %.sroa.1867.0.i
  br i1 %.not.i92.i.i.i.i.1, label %PB_partitionSplitGain.exit101.i.i.i.i.1, label %bb.x

bb.x:                                             ; preds = %PB_isLegalPartition.exit.i91.i.i.i.i.1
  %i.nm = sub nuw i32 %i.nd, %i.mz                ; 2 uses
  %i.nn = icmp ult i32 %i.nm, 2
  br i1 %i.nn, label %PB_partitionSplitGain.exit101.i.i.i.i.1, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.nf
  %i.np = load i32, ptr %i.no, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.ni
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.ns = sub i32 %i.np, %i.nr
  %i.nt = icmp ult i64 %i.nl, 2
  %i.nu = add nsw i64 %i.nl, -1
  %i.nv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.nu, i1 true)
  %i.nw = sub nuw nsw i64 64, %i.nv
  %i.nx = zext i32 %i.ns to i64
  %i.ny = select i1 %i.nt, i64 0, i64 %i.nw
  %i.nz = mul nuw nsw i64 %i.ny, %i.nx
  %i.oa = zext i32 %i.nm to i64
  %i.ob = add nsw i64 %i.oa, -1
  %i.oc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.ob, i1 true)
  %i.od = trunc nuw nsw i64 %i.oc to i32
  %i.oe = xor i32 %i.od, 63
  %i.of = shl nuw i32 1, %i.oe
  %i.og = add i32 %i.of, %i.mz
  %i.oh = zext i32 %i.og to i64                   ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.ok = sub i32 %i.oj, %i.nr
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.oh
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !55, !noalias !53 ; 2 uses
  %i.on = sub i64 %i.om, %i.nk                    ; 2 uses
  %i.oo = icmp ult i64 %i.on, 2
  %i.op = add i64 %i.on, -1
  %i.oq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.op, i1 true)
  %.neg.i.i94.i.i.i.i.1 = or disjoint i64 %i.oq, -64
  %i.or = zext i32 %i.ok to i64
  %.neg1.i.i95.i.i.i.i.1 = select i1 %i.oo, i64 0, i64 %.neg.i.i94.i.i.i.i.1
  %.neg2.i.i96.i.i.i.i.1 = mul nsw i64 %.neg1.i.i95.i.i.i.i.1, %i.or
  %i.os = sub i32 %i.np, %i.oj
  %i.ot = sub i64 %i.nh, %i.om                    ; 2 uses
  %i.ou = icmp ult i64 %i.ot, 2
  %i.ov = add i64 %i.ot, -1
  %i.ow = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.ov, i1 true)
  %.neg3.i.i97.i.i.i.i.1 = or disjoint i64 %i.ow, -64
  %i.ox = zext i32 %i.os to i64
  %.neg4.i.i98.i.i.i.i.1 = select i1 %i.ou, i64 0, i64 %.neg3.i.i97.i.i.i.i.1
  %.neg5.i.i99.i.i.i.i.1 = mul nsw i64 %.neg4.i.i98.i.i.i.i.1, %i.ox
  %.neg6.i.i100.i.i.i.i.1 = add nsw i64 %i.nz, -24
  %i.oy = add nsw i64 %.neg6.i.i100.i.i.i.i.1, %.neg5.i.i99.i.i.i.i.1
  %i.oz = add nsw i64 %i.oy, %.neg2.i.i96.i.i.i.i.1
  br label %PB_partitionSplitGain.exit101.i.i.i.i.1

PB_partitionSplitGain.exit101.i.i.i.i.1:          ; preds = %bb.y, %bb.x, %PB_isLegalPartition.exit.i91.i.i.i.i.1, %PB_partitionEnd.exit89.i.cont.i.i.i.1
  %.0.i90.i.i.i.i.1 = phi i64 [ 9223372036854775807, %PB_isLegalPartition.exit.i91.i.i.i.i.1 ], [ %i.oz, %bb.y ], [ -9223372036854775808, %bb.x ], [ 9223372036854775807, %PB_partitionEnd.exit89.i.cont.i.i.i.1 ]
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kw
  store i64 %.0.i90.i.i.i.i.1, ptr %i.pa, align 8, !tbaa !55, !noalias !53
  br label %.critedge.loopexit.i.i.i.i

PB_dividePartitions.exit.i.i.i:                   ; preds = %.thread.i.cont.i.i.i, %._crit_edge.i.i.i.i, %.critedge.loopexit.i.i.i.i
  %.sroa.33.1.i.i.i = phi i64 [ %.sroa.33.0.i.i.i, %._crit_edge.i.i.i.i ], [ %.sroa.33.0.i.i.i, %.thread.i.cont.i.i.i ], [ %i.ik, %.critedge.loopexit.i.i.i.i ] ; 19 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8, !noalias !53
  %i.pb = load i32, ptr %i.hs, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.pc = icmp ult i32 %i.pb, 10000
  %i.pd = icmp ult i64 %.sroa.33.1.i.i.i, 2
  %or.cond.i.i.i = or i1 %i.pd, %i.pc
  br i1 %or.cond.i.i.i, label %PB_iterativeImprovement.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %PB_dividePartitions.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8, !noalias !53
  br label %PB_partitionEnd.exit.i11.i.i.i

PB_partitionEnd.exit.i11.i.i.i:                   ; preds = %bb.aa, %bb.z
  %.051157.i.i.i.i = phi i64 [ 0, %bb.z ], [ %i.pg, %bb.aa ] ; 3 uses
  %.052156.i.i.i.i = phi i64 [ 0, %bb.z ], [ %i.qf, %bb.aa ]
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.051157.i.i.i.i
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.pg = add nuw nsw i64 %.051157.i.i.i.i, 1     ; 3 uses
  %.not.i12.i.i.i = icmp eq i64 %i.pg, %.sroa.33.1.i.i.i ; 2 uses
  br i1 %.not.i12.i.i.i, label %PB_partitionEnd.exit.i11.cont.i.i.i, label %PB_partitionEnd.exit.i11.else.i.i.i

PB_partitionEnd.exit.i11.else.i.i.i:              ; preds = %PB_partitionEnd.exit.i11.i.i.i
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.pg
end_hunk_0
begin_hunk_1_@EI_partitionBitpackDynGraph:bb.a
  %i.yg = add i64 %indvar.i.i.i, %n.vec341
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar.i.i.i
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph340
  %index343 = phi i64 [ 0, %vector.ph340 ], [ %index.next348, %vector.body342 ] ; 2 uses
  %vec.phi344 = phi <2 x i64> [ zeroinitializer, %vector.ph340 ], [ %i.yk, %vector.body342 ]
  %vec.phi345 = phi <2 x i64> [ zeroinitializer, %vector.ph340 ], [ %i.yl, %vector.body342 ]
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %index343 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %wide.load346 = load <2 x i64>, ptr %i.yi, align 8, !tbaa !55, !noalias !53
  %wide.load347 = load <2 x i64>, ptr %i.yj, align 8, !tbaa !55, !noalias !53
  %i.yk = add <2 x i64> %wide.load346, %vec.phi344 ; 2 uses
  %i.yl = add <2 x i64> %wide.load347, %vec.phi345 ; 2 uses
  %index.next348 = add nuw i64 %index343, 4       ; 2 uses
  %i.ym = icmp eq i64 %index.next348, %n.vec341
  br i1 %i.ym, label %middle.block349, label %vector.body342, !llvm.loop !29

middle.block349:                                  ; preds = %vector.body342
  %bin.rdx = add <2 x i64> %i.yl, %i.yk
  %i.yn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n350 = icmp eq i64 %i.yf, %n.vec341
  br i1 %cmp.n350, label %._crit_edge.i96.us.i.i.i.i, label %.lr.ph.i92.us.i.i.i.i.preheader

.lr.ph.i92.us.i.i.i.i.preheader:                  ; preds = %.lr.ph.preheader.i90.us.i.i.i.i, %middle.block349
  %.04756.i93.us.i.i.i.i.ph = phi i64 [ %indvar.i.i.i, %.lr.ph.preheader.i90.us.i.i.i.i ], [ %i.yg, %middle.block349 ]
  %.04855.i94.us.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i90.us.i.i.i.i ], [ %i.yn, %middle.block349 ]
  br label %.lr.ph.i92.us.i.i.i.i

.lr.ph.i92.us.i.i.i.i:                            ; preds = %.lr.ph.i92.us.i.i.i.i.preheader, %.lr.ph.i92.us.i.i.i.i
  %.04756.i93.us.i.i.i.i = phi i64 [ %i.yr, %.lr.ph.i92.us.i.i.i.i ], [ %.04756.i93.us.i.i.i.i.ph, %.lr.ph.i92.us.i.i.i.i.preheader ] ; 2 uses
  %.04855.i94.us.i.i.i.i = phi i64 [ %i.yq, %.lr.ph.i92.us.i.i.i.i ], [ %.04855.i94.us.i.i.i.i.ph, %.lr.ph.i92.us.i.i.i.i.preheader ]
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04756.i93.us.i.i.i.i
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !55, !noalias !53
  %i.yq = add i64 %i.yp, %.04855.i94.us.i.i.i.i   ; 2 uses
  %i.yr = add nuw nsw i64 %.04756.i93.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i95.us.i.i.i.i = icmp eq i64 %i.yr, %.5.i127145.us.i.i.i.i
  br i1 %exitcond.not.i95.us.i.i.i.i, label %._crit_edge.i96.us.i.i.i.i, label %.lr.ph.i92.us.i.i.i.i, !llvm.loop !30

._crit_edge.i96.us.i.i.i.i:                       ; preds = %.lr.ph.i92.us.i.i.i.i, %middle.block349
  %.lcssa287 = phi i64 [ %i.yn, %middle.block349 ], [ %i.yq, %.lr.ph.i92.us.i.i.i.i ] ; 2 uses
  %.not.i97.us.i.i.i.i = icmp ult i64 %spec.select.i8285.i91.us.i.i.i.i, %.lcssa287
  br i1 %.not.i97.us.i.i.i.i, label %.preheader.i98.us.i.i.i.i, label %PB_tryMutation.exit.us.i.i.i.i

.preheader.i98.us.i.i.i.i:                        ; preds = %._crit_edge.i96.us.i.i.i.i
  br i1 %i.wf, label %.lr.ph59.i108.us.i.preheader.i.i.i, label %PB_partitionEnd.exit.i104.us.i.i.i.i.preheader

.lr.ph59.i108.us.i.preheader.i.i.i:               ; preds = %.preheader.i98.us.i.i.i.i
  %i.ys = add i64 %.5.i127145.us.i.i.i.i, %i.qp
  %i.yt = shl nuw i64 %i.ys, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep60.i.i.i, ptr align 4 %scevgep61.i.i.i, i64 %i.yt, i1 false), !tbaa !61, !noalias !53
  br label %PB_partitionEnd.exit.i104.us.i.i.i.i.preheader

PB_partitionEnd.exit.i104.us.i.i.i.i.preheader:   ; preds = %.lr.ph59.i108.us.i.preheader.i.i.i, %.preheader.i98.us.i.i.i.i
  br label %PB_partitionEnd.exit.i104.us.i.i.i.i

PB_partitionEnd.exit.i104.us.i.i.i.i:             ; preds = %PB_partitionEnd.exit.i104.us.i.i.i.i.preheader, %PB_partitionEnd.exit.i104.us.i.cont.i.i.i
  %.04561.i105.us.i.i.i.i = phi i64 [ %i.yw, %PB_partitionEnd.exit.i104.us.i.cont.i.i.i ], [ %indvar.i.i.i, %PB_partitionEnd.exit.i104.us.i.i.i.i.preheader ] ; 3 uses
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.04561.i105.us.i.i.i.i
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !61, !noalias !53
  %i.yw = add nuw nsw i64 %.04561.i105.us.i.i.i.i, 1 ; 4 uses
  %i.yx = icmp eq i64 %i.yw, %.sroa.33.1.i.i.i
  br i1 %i.yx, label %PB_partitionEnd.exit.i104.us.i.cont.i.i.i, label %PB_partitionEnd.exit.i104.us.i.else.i.i.i

PB_partitionEnd.exit.i104.us.i.else.i.i.i:        ; preds = %PB_partitionEnd.exit.i104.us.i.i.i.i
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.yw
  %.else.val21.i.i.i = load i32, ptr %i.yy, align 4, !tbaa !61, !noalias !53
  %.pre62.i.i.i = zext i32 %.else.val21.i.i.i to i64
  br label %PB_partitionEnd.exit.i104.us.i.cont.i.i.i

PB_partitionEnd.exit.i104.us.i.cont.i.i.i:        ; preds = %PB_partitionEnd.exit.i104.us.i.else.i.i.i, %PB_partitionEnd.exit.i104.us.i.i.i.i
  %.pre-phi63.i.i.i = phi i64 [ %.pre-phi.i, %PB_partitionEnd.exit.i104.us.i.i.i.i ], [ %.pre62.i.i.i, %PB_partitionEnd.exit.i104.us.i.else.i.i.i ] ; 2 uses
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %.pre-phi63.i.i.i
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !61, !noalias !53
  %i.zb = zext i32 %i.yv to i64                   ; 2 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.zb
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !61, !noalias !53
  %i.ze = sub i32 %i.za, %i.zd
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %.pre-phi63.i.i.i
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !55, !noalias !53
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.zb
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !55, !noalias !53
  %i.zj = sub i64 %i.zg, %i.zi                    ; 2 uses
  %i.zk = icmp ult i64 %i.zj, 2
  %i.zl = add i64 %i.zj, -1
  %i.zm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.zl, i1 true)
  %i.zn = sub nuw nsw i64 64, %i.zm
  %i.zo = zext i32 %i.ze to i64
  %i.zp = select i1 %i.zk, i64 0, i64 %i.zn
  %i.zq = mul nuw nsw i64 %i.zp, %i.zo
  %i.zr = add nuw nsw i64 %i.zq, 24
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04561.i105.us.i.i.i.i
  store i64 %i.zr, ptr %i.zs, align 8, !tbaa !55, !noalias !53
  %exitcond66.not.i107.us.i.i.i.i = icmp eq i64 %i.yw, %.5.i127145.us.i.i.i.i
  br i1 %exitcond66.not.i107.us.i.i.i.i, label %PB_tryMutation.exit.us.loopexit.i.i.i.i, label %PB_partitionEnd.exit.i104.us.i.i.i.i, !llvm.loop !28

PB_tryMutation.exit.us.loopexit.i.i.i.i:          ; preds = %PB_partitionEnd.exit.i104.us.i.cont.i.i.i
  %i.zt = add i64 %spec.select.i8285.i91.us.i.i.i.i, %.1117158.us.i.i.i.i
  %i.zu = sub i64 %i.zt, %.lcssa287
  br label %PB_tryMutation.exit.us.i.i.i.i

PB_tryMutation.exit.us.loopexit161.i.i.i.i:       ; preds = %PB_partitionEnd.exit.i.us.i.cont.i.i.i
  %i.zv = add i64 %spec.select.i8285.i.us.i.i.i.i, %.1117158.us.i.i.i.i
  %i.zw = sub i64 %i.zv, %.lcssa285
  br label %PB_tryMutation.exit.us.i.i.i.i

PB_tryMutation.exit.us.i.i.i.i:                   ; preds = %PB_isLegalPartition.exit.i.i86.us.i.i.i.i, %bb.ak, %PB_tryMutation.exit.us.loopexit161.i.i.i.i, %PB_tryMutation.exit.us.loopexit.i.i.i.i, %._crit_edge.i96.us.i.i.i.i, %PB_modifiedRangeCost.exit.i89.us.i.i.i.i, %PB_isLegalPartition.exit.peel.i.i75.us.i.i.i.i, %.lr.ph.i.i71.thread142.us.i.i.i.i, %PB_shrinkPartitions.exit.us.i.i.i.i, %.loopexit.us.i.i.i.i
  %.2118.us.i.i.i.i = phi i64 [ %i.zw, %PB_tryMutation.exit.us.loopexit161.i.i.i.i ], [ %.1117158.us.i.i.i.i, %.lr.ph.i.i71.thread142.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %PB_isLegalPartition.exit.peel.i.i75.us.i.i.i.i ], [ %i.zu, %PB_tryMutation.exit.us.loopexit.i.i.i.i ], [ %.1117158.us.i.i.i.i, %._crit_edge.i96.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %.loopexit.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %PB_modifiedRangeCost.exit.i89.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %PB_shrinkPartitions.exit.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %bb.ak ], [ %.1117158.us.i.i.i.i, %PB_isLegalPartition.exit.i.i86.us.i.i.i.i ] ; 3 uses
  %i.zx = add nuw nsw i64 %i.qm, 1                ; 2 uses
  %exitcond169.not.i.i.i.i = icmp eq i64 %i.zx, %.sroa.33.1.i.i.i
  %indvar.next.i.i.i = add nuw nsw i64 %indvar.i.i.i, 1
  br i1 %exitcond169.not.i.i.i.i, label %._crit_edge.us.i.i.i.i, label %bb.ab, !llvm.loop !31

._crit_edge.us.i.i.i.i:                           ; preds = %PB_tryMutation.exit.us.i.i.i.i
  %i.zy = icmp eq i64 %.2118.us.i.i.i.i, %.0116.us.i.i.i.i
  br i1 %i.zy, label %.thread120.i.i.i.i, label %.lr.ph.us.i.i.i.i

.thread120.i.i.i.i:                               ; preds = %PB_isLegalPartition.exit.i.i.i.i, %PB_partitionEnd.exit.i11.cont.i.i.i, %._crit_edge.us.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8, !noalias !53
  br label %PB_iterativeImprovement.exit.i.i.i

PB_iterativeImprovement.exit.i.i.i:               ; preds = %.thread120.i.i.i.i, %PB_dividePartitions.exit.i.i.i
  %exitcond.i.i.i.i295 = icmp eq i64 %.sroa.33.1.i.i.i, 0
  br i1 %exitcond.i.i.i.i295, label %PB_greedyOptimize.exit.i.thread.i, label %PB_partitionEnd.exit.i15.i.i.i

bb.am:                                            ; preds = %PB_isLegalPartition.exit.i17.i.i.i
  %exitcond.i.i.i.i = icmp eq i64 %i.aab, %.sroa.33.1.i.i.i
  br i1 %exitcond.i.i.i.i, label %PB_greedyOptimize.exit.i.thread.i, label %PB_partitionEnd.exit.i15.i.i.i, !llvm.loop !32

PB_greedyOptimize.exit.i.thread.i:                ; preds = %bb.am, %PB_iterativeImprovement.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8, !noalias !53
  br label %PB_fixedPartitionFastInner.exit.i

PB_partitionEnd.exit.i15.i.i.i:                   ; preds = %PB_iterativeImprovement.exit.i.i.i, %bb.am
  %.015.i.i.i.i296 = phi i64 [ %i.aab, %bb.am ], [ 0, %PB_iterativeImprovement.exit.i.i.i ] ; 2 uses
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.015.i.i.i.i296
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.aab = add nuw nsw i64 %.015.i.i.i.i296, 1    ; 4 uses
  %i.aac = icmp eq i64 %i.aab, %.sroa.33.1.i.i.i
  br i1 %i.aac, label %PB_partitionEnd.exit.i15.cont.i.i.i, label %PB_partitionEnd.exit.i15.else.i.i.i

PB_partitionEnd.exit.i15.else.i.i.i:              ; preds = %PB_partitionEnd.exit.i15.i.i.i
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aab
  %.else.val.i.i.i = load i32, ptr %i.aad, align 4, !tbaa !61, !noalias !53
  br label %PB_partitionEnd.exit.i15.cont.i.i.i

PB_partitionEnd.exit.i15.cont.i.i.i:              ; preds = %PB_partitionEnd.exit.i15.else.i.i.i, %PB_partitionEnd.exit.i15.i.i.i
  %i.aae = phi i32 [ %.sroa.12.0.i, %PB_partitionEnd.exit.i15.i.i.i ], [ %.else.val.i.i.i, %PB_partitionEnd.exit.i15.else.i.i.i ] ; 2 uses
  %i.aaf = icmp ult i32 %i.aaa, %i.aae
  br i1 %i.aaf, label %PB_isLegalPartition.exit.i17.i.i.i, label %PB_greedyOptimize.exit.i.i

PB_isLegalPartition.exit.i17.i.i.i:               ; preds = %PB_partitionEnd.exit.i15.cont.i.i.i
  %i.aag = zext i32 %i.aae to i64
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.aag
  %i.aai = load i64, ptr %i.aah, align 8, !tbaa !55, !noalias !53
  %i.aaj = zext i32 %i.aaa to i64
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.aaj
  %i.aal = load i64, ptr %i.aak, align 8, !tbaa !55, !noalias !53
  %i.aam = sub i64 %i.aai, %i.aal
  %.not.i18.i.i.i = icmp ugt i64 %i.aam, %.sroa.1867.0.i
  br i1 %.not.i18.i.i.i, label %PB_greedyOptimize.exit.i.i, label %bb.am, !llvm.loop !32

PB_greedyOptimize.exit.i.i:                       ; preds = %PB_isLegalPartition.exit.i17.i.i.i, %PB_partitionEnd.exit.i15.cont.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8, !noalias !53
  br label %PB_fixedPartitionFastInner.exit.thread.i

bb.an:                                            ; preds = %bb.r
  %i.aan = add i64 %i.ik, -1
  %i.aao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.aan, i1 true)
  %i.aap = trunc nuw nsw i64 %i.aao to i32
  %i.aaq = sub nuw nsw i32 64, %i.aap             ; 2 uses
  %i.aar = trunc i64 %i.ik to i32                 ; 2 uses
  %i.aas = tail call i32 @llvm.umin.i32(i32 %.sroa.12.0.i, i32 %i.aar) ; 2 uses
  %i.aat = add i32 %i.aas, 1
  %i.aau = zext i32 %i.aat to i64
  %i.aav = mul nuw i64 %i.aau, %i.ig              ; 2 uses
  %i.aaw = shl i64 %i.aav, 3                      ; 2 uses
  %i.aax = shl i64 %i.aav, 2                      ; 2 uses
  %i.aay = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef %i.aaw) #8, !noalias !53 ; 7 uses
  %i.aaz = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef %i.aax) #8, !noalias !53 ; 6 uses
  %i.aba = icmp ne ptr %i.aay, null
  %i.abb = icmp ne ptr %i.aaz, null
  %or.cond.i8.i.i = select i1 %i.aba, i1 %i.abb, i1 false
  br i1 %or.cond.i8.i.i, label %bb.ao, label %PB_fixedPartitionFastInner.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aay, i8 -1, i64 %i.aaw, i1 false), !noalias !53
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aaz, i8 -1, i64 %i.aax, i1 false), !noalias !53
  store i64 0, ptr %i.aay, align 8, !tbaa !55, !noalias !53
  store i32 0, ptr %i.aaz, align 4, !tbaa !61, !noalias !53
  br i1 %i.ih, label %.lr.ph127.i.i.i, label %._crit_edge.i.i.i

.lr.ph127.i.i.i:                                  ; preds = %bb.ao
  %.not113120.i.i.i = icmp eq i32 %i.aar, 0
  br i1 %.not113120.i.i.i, label %.lr.ph132.i.preheader.i.i, label %.lr.ph123.i.preheader.i.i

.lr.ph123.i.preheader.i.i:                        ; preds = %.lr.ph127.i.i.i
  %i.abc = and i64 %i.ik, 4294967295
  br label %.lr.ph123.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge124.i.i.i, %bb.ao
  %i.abd = zext i32 %i.aas to i64
  br label %.lr.ph132.i.preheader.i.i

.lr.ph132.i.preheader.i.i:                        ; preds = %._crit_edge.i.i.i, %.lr.ph127.i.i.i
  %i.abe = phi i64 [ %i.abd, %._crit_edge.i.i.i ], [ 0, %.lr.ph127.i.i.i ] ; 2 uses
  br label %.lr.ph132.i.i.i

.lr.ph123.i.i.i:                                  ; preds = %._crit_edge124.i.i.i, %.lr.ph123.i.preheader.i.i
  %indvars.iv142.i.i.i = phi i64 [ %indvars.iv.next143.i.i.i, %._crit_edge124.i.i.i ], [ 1, %.lr.ph123.i.preheader.i.i ] ; 8 uses
  %umin36.i.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv142.i.i.i, i64 %.pre-phi.i)
  %umin37.i.i = tail call i64 @llvm.umin.i64(i64 %umin36.i.i, i64 %i.abc)
  %umax38.i.i = tail call i64 @llvm.umax.i64(i64 %umin37.i.i, i64 1) ; 2 uses
  %i.abf = trunc nuw i64 %indvars.iv142.i.i.i to i32 ; 4 uses
  %i.abg = icmp eq i64 %indvars.iv142.i.i.i, %.pre-phi.i
  %.fr.i.i.i = freeze i1 %i.abg
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %indvars.iv142.i.i.i ; 2 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv142.i.i.i ; 2 uses
  br i1 %.fr.i.i.i, label %.lr.ph.us.i.i.i, label %.lr.ph.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph123.i.i.i, %._crit_edge119.split.us.us.i.i.i.a
  %indvars.iv139.i.i.i = phi i64 [ %indvars.iv.next140.i.i.i.a, %._crit_edge119.split.us.us.i.i.i.a ], [ 1, %.lr.ph123.i.i.i ] ; 4 uses
  %7 = add nsw i64 %indvars.iv139.i.i.i, -1       ; 2 uses
  %8 = sub nuw nsw i64 %indvars.iv142.i.i.i, %7
  %i.abj = trunc nuw i64 %7 to i32
  %i.abk = mul i32 %i.if, %i.abj
  %i.abl = trunc nuw i64 %indvars.iv139.i.i.i to i32
  %i.abm = mul i32 %i.if, %i.abl
  %i.abn = add i32 %i.abm, %i.abf
  %i.abo = zext i32 %i.abn to i64                 ; 2 uses
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.aay, i64 %i.abo ; 2 uses
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %i.abo
  br label %bb.ap

bb.ap:                                            ; preds = %PB_dpBucketCost.exit.thread.us.us.i.i.i, %.lr.ph.us.i.i.i
  %.096118.us.us.i.i.i = phi i32 [ 1, %.lr.ph.us.i.i.i ], [ %i.acu, %PB_dpBucketCost.exit.thread.us.us.i.i.i ] ; 3 uses
  %i.abr = sub nuw i32 %i.abf, %.096118.us.us.i.i.i ; 3 uses
  %i.abs = load i64, ptr %i.abh, align 8, !tbaa !55, !noalias !53
  %i.abt = zext i32 %i.abr to i64                 ; 2 uses
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.abt
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !55, !noalias !53
  %i.abw = sub i64 %i.abs, %i.abv                 ; 3 uses
  %i.abx = icmp ugt i64 %i.abw, %.sroa.1867.0.i
  br i1 %i.abx, label %._crit_edge119.split.us.us.i.i.i.a, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.aby = add i32 %i.abr, %i.abk
  %i.abz = zext i32 %i.aby to i64
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.aay, i64 %i.abz
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !55, !noalias !53 ; 2 uses
  %i.acc = icmp ne i64 %i.acb, -1
  %i.acd = icmp ne i32 %.096118.us.us.i.i.i, 0
  %or.cond135.i.i.i = and i1 %i.acd, %i.acc
  br i1 %or.cond135.i.i.i, label %PB_dpBucketCost.exit.us.us.i.i.i, label %PB_dpBucketCost.exit.thread.us.us.i.i.i

PB_dpBucketCost.exit.us.us.i.i.i:                 ; preds = %bb.aq
  %i.ace = load i64, ptr %i.abp, align 8, !tbaa !55, !noalias !53
  %i.acf = load i32, ptr %i.abi, align 4, !tbaa !61, !noalias !53
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.abt
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !61, !noalias !53
  %i.aci = sub i32 %i.acf, %i.ach
  %i.acj = zext i32 %i.aci to i64
  %i.ack = icmp ult i64 %i.abw, 2
  %i.acl = add nsw i64 %i.abw, -1
  %i.acm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.acl, i1 true)
  %i.acn = trunc nuw nsw i64 %i.acm to i32
  %i.aco = sub nuw nsw i32 64, %i.acn
  %.0.i.i.us.us.i.i.i = select i1 %i.ack, i32 0, i32 %i.aco
  %i.acp = add nuw nsw i32 %.0.i.i.us.us.i.i.i, %i.aaq
  %i.acq = zext nneg i32 %i.acp to i64
  %i.acr = mul nuw nsw i64 %i.acj, %i.acq
  %i.acs = add i64 %i.acr, %i.acb                 ; 2 uses
  %i.act = icmp ult i64 %i.acs, %i.ace
  br i1 %i.act, label %bb.ar, label %PB_dpBucketCost.exit.thread.us.us.i.i.i

bb.ar:                                            ; preds = %PB_dpBucketCost.exit.us.us.i.i.i
  store i64 %i.acs, ptr %i.abp, align 8, !tbaa !55, !noalias !53
  store i32 %i.abr, ptr %i.abq, align 4, !tbaa !61, !noalias !53
  br label %PB_dpBucketCost.exit.thread.us.us.i.i.i

PB_dpBucketCost.exit.thread.us.us.i.i.i:          ; preds = %bb.ar, %PB_dpBucketCost.exit.us.us.i.i.i, %bb.aq
  %i.acu = add i32 %.096118.us.us.i.i.i, 1        ; 2 uses
  %i.acv = zext i32 %i.acu to i64
  %.not114.us.us.i.i.i = icmp samesign ult i64 %8, %i.acv
  br i1 %.not114.us.us.i.i.i, label %._crit_edge119.split.us.us.i.i.i.a, label %bb.ap, !llvm.loop !33

._crit_edge119.split.us.us.i.i.i.a:               ; preds = %PB_dpBucketCost.exit.thread.us.us.i.i.i, %bb.ap
  %indvars.iv.next140.i.i.i.a = add nuw nsw i64 %indvars.iv139.i.i.i, 1
  %exitcond39.not.i.i = icmp eq i64 %indvars.iv139.i.i.i, %umax38.i.i
  br i1 %exitcond39.not.i.i, label %._crit_edge124.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !34

._crit_edge124.i.i.i:                             ; preds = %._crit_edge.split.i.i.i, %._crit_edge119.split.us.us.i.i.i.a
  %indvars.iv.next143.i.i.i = add nuw nsw i64 %indvars.iv142.i.i.i, 1 ; 2 uses
  %exitcond.not.i10.i.i = icmp eq i64 %indvars.iv.next143.i.i.i, %i.ig
  br i1 %exitcond.not.i10.i.i, label %._crit_edge.i.i.i, label %.lr.ph123.i.i.i, !llvm.loop !35

.lr.ph.i.i.i:                                     ; preds = %.lr.ph123.i.i.i, %._crit_edge.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %._crit_edge.split.i.i.i ], [ 1, %.lr.ph123.i.i.i ] ; 4 uses
  %9 = add nsw i64 %indvars.iv.i.i.i, -1          ; 2 uses
  %10 = sub nuw nsw i64 %indvars.iv142.i.i.i, %9
  %i.acw = trunc nuw i64 %9 to i32
  %i.acx = mul i32 %i.if, %i.acw
  %i.acy = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.acz = mul i32 %i.if, %i.acy
  %i.ada = add i32 %i.acz, %i.abf
  %i.adb = zext i32 %i.ada to i64                 ; 2 uses
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.aay, i64 %i.adb ; 2 uses
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %i.adb
  br label %bb.as

bb.as:                                            ; preds = %PB_dpBucketCost.exit.thread.i.i.i, %.lr.ph.i.i.i
  %.096118.i.i.i = phi i32 [ 1, %.lr.ph.i.i.i ], [ %i.aeh, %PB_dpBucketCost.exit.thread.i.i.i ] ; 3 uses
  %i.ade = sub nuw i32 %i.abf, %.096118.i.i.i     ; 3 uses
  %i.adf = load i64, ptr %i.abh, align 8, !tbaa !55, !noalias !53
  %i.adg = zext i32 %i.ade to i64                 ; 2 uses
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.adg
  %i.adi = load i64, ptr %i.adh, align 8, !tbaa !55, !noalias !53
  %i.adj = sub i64 %i.adf, %i.adi                 ; 3 uses
  %i.adk = icmp ugt i64 %i.adj, %.sroa.1867.0.i
  br i1 %i.adk, label %._crit_edge.split.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.adl = add i32 %i.ade, %i.acx
  %i.adm = zext i32 %i.adl to i64
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.aay, i64 %i.adm
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !55, !noalias !53 ; 2 uses
  %i.adp = icmp ne i64 %i.ado, -1
  %i.adq = icmp ne i32 %.096118.i.i.i, 0
  %or.cond136.i.i.i = and i1 %i.adq, %i.adp
  br i1 %or.cond136.i.i.i, label %PB_dpBucketCost.exit.i.i.i, label %PB_dpBucketCost.exit.thread.i.i.i

PB_dpBucketCost.exit.i.i.i:                       ; preds = %bb.at
  %i.adr = load i64, ptr %i.adc, align 8, !tbaa !55, !noalias !53
  %i.ads = load i32, ptr %i.abi, align 4, !tbaa !61, !noalias !53
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.adg
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !61, !noalias !53
  %i.adv = sub i32 %i.ads, %i.adu
  %i.adw = zext i32 %i.adv to i64
  %i.adx = icmp ult i64 %i.adj, 2
  %i.ady = add nsw i64 %i.adj, -1
  %i.adz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.ady, i1 true)
  %i.aea = trunc nuw nsw i64 %i.adz to i32
  %i.aeb = sub nuw nsw i32 64, %i.aea
  %.0.i.i.i11.i.i = select i1 %i.adx, i32 0, i32 %i.aeb
  %i.aec = add nuw nsw i32 %.0.i.i.i11.i.i, %i.aaq
  %i.aed = zext nneg i32 %i.aec to i64
  %i.aee = mul nuw nsw i64 %i.adw, %i.aed
  %i.aef = add i64 %i.aee, %i.ado                 ; 2 uses
  %i.aeg = icmp ult i64 %i.aef, %i.adr
  br i1 %i.aeg, label %bb.au, label %PB_dpBucketCost.exit.thread.i.i.i

bb.au:                                            ; preds = %PB_dpBucketCost.exit.i.i.i
  store i64 %i.aef, ptr %i.adc, align 8, !tbaa !55, !noalias !53
  store i32 %i.ade, ptr %i.add, align 4, !tbaa !61, !noalias !53
  br label %PB_dpBucketCost.exit.thread.i.i.i

PB_dpBucketCost.exit.thread.i.i.i:                ; preds = %bb.au, %PB_dpBucketCost.exit.i.i.i, %bb.at
  %i.aeh = shl i32 %.096118.i.i.i, 1              ; 2 uses
  %i.aei = zext i32 %i.aeh to i64
  %.not114.i.i.i = icmp samesign ult i64 %10, %i.aei
  br i1 %.not114.i.i.i, label %._crit_edge.split.i.i.i, label %bb.as, !llvm.loop !33

._crit_edge.split.i.i.i:                          ; preds = %PB_dpBucketCost.exit.thread.i.i.i, %bb.as
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i.i, %umax38.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge124.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !34

.lr.ph132.i.i.i:                                  ; preds = %bb.av, %.lr.ph132.i.preheader.i.i
  %.0130.i.i.i = phi i64 [ %i.aen, %bb.av ], [ %i.abe, %.lr.ph132.i.preheader.i.i ] ; 2 uses
  %.095.in129.i.i.i = phi i32 [ %i.aem, %bb.av ], [ %.sroa.12.0.i, %.lr.ph132.i.preheader.i.i ]
  %.095.i.i.i = zext i32 %.095.in129.i.i.i to i64
  %i.aej = mul i64 %.0130.i.i.i, %i.ig
  %i.aek = getelementptr [4 x i8], ptr %i.aaz, i64 %i.aej
  %i.ael = getelementptr [4 x i8], ptr %i.aek, i64 %.095.i.i.i
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !61, !noalias !53 ; 4 uses
  %.not112.i.i.i = icmp eq i32 %i.aem, -1
  br i1 %.not112.i.i.i, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph132.i.i.i
  %i.aen = add i64 %.0130.i.i.i, -1               ; 2 uses
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aen
  store i32 %i.aem, ptr %i.aeo, align 4, !tbaa !61, !noalias !53
  %.not.i9.i.i = icmp eq i32 %i.aem, 0
  br i1 %.not.i9.i.i, label %PB_fixedPartitionFastInner.exit.i, label %.lr.ph132.i.i.i, !llvm.loop !36

PB_fixedPartitionFastInner.exit.i:                ; preds = %bb.av, %PB_greedyOptimize.exit.i.thread.i
  %.0.i45.i = phi i64 [ %.sroa.33.1.i.i.i, %PB_greedyOptimize.exit.i.thread.i ], [ %i.abe, %bb.av ] ; 5 uses
  %i.aep = icmp eq i64 %.0.i45.i, 0
  br i1 %i.aep, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %PB_fixedPartitionFastInner.exit.i
  %i.aeq = load i32, ptr %i.hs, align 4, !tbaa !61, !noalias !53
  %i.aer = add i64 %.0.i45.i, -1
  %i.aes = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aer, i1 false)
  %i.aet = sub nuw nsw i64 64, %i.aes
  %i.aeu = zext i32 %i.aeq to i64
  %i.aev = mul nuw nsw i64 %i.aet, %i.aeu
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %.02737.i.i = phi i64 [ 0, %bb.aw ], [ %i.aey, %bb.ay ] ; 2 uses
  %.02836.i.i = phi i64 [ %i.aev, %bb.aw ], [ %i.afw, %bb.ay ]
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.02737.i.i
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !61, !noalias !53 ; 2 uses
  %i.aey = add nuw nsw i64 %.02737.i.i, 1         ; 3 uses
  %.not.i.i = icmp eq i64 %i.aey, %.0.i45.i       ; 2 uses
  br i1 %.not.i.i, label %.cont.i, label %.else.i

.else.i:                                          ; preds = %bb.ax
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aey
  %.else.val.i = load i32, ptr %i.aez, align 4, !tbaa !61, !noalias !53
  br label %.cont.i

.cont.i:                                          ; preds = %.else.i, %bb.ax
  %i.afa = phi i32 [ %.sroa.12.0.i, %bb.ax ], [ %.else.val.i, %.else.i ] ; 2 uses
  %i.afb = icmp ult i32 %i.aex, %i.afa
  br i1 %i.afb, label %PB_isLegalPartition.exit.i.i, label %PB_fixedPartitionFastInner.exit.thread.i

PB_isLegalPartition.exit.i.i:                     ; preds = %.cont.i
  %i.afc = zext i32 %i.afa to i64                 ; 2 uses
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.afc
  %i.afe = load i64, ptr %i.afd, align 8, !tbaa !55, !noalias !53
  %i.aff = zext i32 %i.aex to i64                 ; 2 uses
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.aff
  %i.afh = load i64, ptr %i.afg, align 8, !tbaa !55, !noalias !53
  %i.afi = sub i64 %i.afe, %i.afh                 ; 3 uses
  %.not35.i.i = icmp ugt i64 %i.afi, %.sroa.1867.0.i
  br i1 %.not35.i.i, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %PB_isLegalPartition.exit.i.i
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.afc
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !61, !noalias !53
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.aff
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !61, !noalias !53
  %i.afn = sub i32 %i.afk, %i.afm
  %i.afo = icmp ult i64 %i.afi, 2
  %i.afp = add nsw i64 %i.afi, -1
  %i.afq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.afp, i1 true)
  %i.afr = sub nuw nsw i64 64, %i.afq
  %i.afs = zext i32 %i.afn to i64
  %i.aft = select i1 %i.afo, i64 0, i64 %i.afr
  %i.afu = mul nuw nsw i64 %i.aft, %i.afs
  %i.afv = add i64 %.02836.i.i, 24
  %i.afw = add i64 %i.afv, %i.afu                 ; 5 uses
  br i1 %.not.i.i, label %PB_fixedBucketCost.exit.i, label %bb.ax

PB_fixedBucketCost.exit.i:                        ; preds = %bb.ay
  %i.afx = icmp eq i64 %i.afw, -1
  br i1 %i.afx, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.az

bb.az:                                            ; preds = %PB_fixedBucketCost.exit.i
  %i.afy = lshr i64 %i.afw, 6
  %i.afz = add i64 %i.afy, %i.afw
  %i.aga = icmp ult i64 %i.afz, %.036109.i
  br i1 %i.aga, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.agb = shl nuw nsw i64 %.0.i45.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 16 %i.e, i64 %i.agb, i1 false), !noalias !53
  br label %PB_fixedPartitionFastInner.exit.thread.i

PB_fixedPartitionFastInner.exit.thread.i:         ; preds = %.lr.ph132.i.i.i, %PB_isLegalPartition.exit.i.i, %.cont.i, %bb.ba, %PB_fixedBucketCost.exit.i, %PB_fixedPartitionFastInner.exit.i, %bb.an, %PB_greedyOptimize.exit.i.i
  %.239.ph.i = phi i64 [ %.037108.i, %PB_greedyOptimize.exit.i.i ], [ %.037108.i, %PB_fixedPartitionFastInner.exit.i ], [ %.0.i45.i, %bb.ba ], [ %.037108.i, %PB_fixedBucketCost.exit.i ], [ %.037108.i, %bb.an ], [ %.037108.i, %PB_isLegalPartition.exit.i.i ], [ %.037108.i, %.cont.i ], [ %.037108.i, %.lr.ph132.i.i.i ] ; 2 uses
  %.2.ph.i = phi i64 [ %.036109.i, %PB_greedyOptimize.exit.i.i ], [ %.036109.i, %PB_fixedPartitionFastInner.exit.i ], [ %i.afw, %bb.ba ], [ %.036109.i, %PB_fixedBucketCost.exit.i ], [ %.036109.i, %bb.an ], [ %.036109.i, %PB_isLegalPartition.exit.i.i ], [ %.036109.i, %.cont.i ], [ %.036109.i, %.lr.ph132.i.i.i ] ; 2 uses
  br i1 %i.ii, label %bb.r, label %bb.bb, !llvm.loop !37

bb.bb:                                            ; preds = %PB_fixedPartitionFastInner.exit.thread.i, %bb.az
  %.037.lcssa.i = phi i64 [ %.037108.i, %bb.az ], [ %.239.ph.i, %PB_fixedPartitionFastInner.exit.thread.i ] ; 10 uses
  %.036.lcssa.i = phi i64 [ %.036109.i, %bb.az ], [ %.2.ph.i, %PB_fixedPartitionFastInner.exit.thread.i ] ; 2 uses
  %i.agc = icmp eq i64 %.037.lcssa.i, 0
  br i1 %i.agc, label %PB_fixedPartition.exit.thread141, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.agd = shl i64 %.037.lcssa.i, 3               ; 2 uses
  %i.age = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef %i.agd) #8, !noalias !53 ; 13 uses
  %.not.i = icmp eq ptr %i.age, null
  br i1 %.not.i, label %PB_fixedPartition.exit.thread141, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.bc
  %xtraiter426 = and i64 %.037.lcssa.i, 3         ; 3 uses
  %i.agf = icmp ult i64 %.037.lcssa.i, 4
  br i1 %i.agf, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter430 = and i64 %.037.lcssa.i, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.0111.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ahh, %.preheader.i ] ; 6 uses
  %niter431 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter431.next.3, %.preheader.i ]
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0111.i
  %i.agh = load i32, ptr %i.agg, align 16, !tbaa !61, !noalias !53
  %i.agi = zext i32 %i.agh to i64
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.agi
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !55, !noalias !53
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %.0111.i
  store i64 %i.agk, ptr %i.agl, align 8, !tbaa !55, !noalias !53
  %i.agm = or disjoint i64 %.0111.i, 1            ; 2 uses
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.agm
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !61, !noalias !53
  %i.agp = zext i32 %i.ago to i64
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.agp
  %i.agr = load i64, ptr %i.agq, align 8, !tbaa !55, !noalias !53
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.agm
  store i64 %i.agr, ptr %i.ags, align 8, !tbaa !55, !noalias !53
  %i.agt = or disjoint i64 %.0111.i, 2            ; 2 uses
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.agt
  %i.agv = load i32, ptr %i.agu, align 8, !tbaa !61, !noalias !53
  %i.agw = zext i32 %i.agv to i64
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.agw
  %i.agy = load i64, ptr %i.agx, align 8, !tbaa !55, !noalias !53
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.agt
  store i64 %i.agy, ptr %i.agz, align 8, !tbaa !55, !noalias !53
  %i.aha = or disjoint i64 %.0111.i, 3            ; 2 uses
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aha
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !61, !noalias !53
  %i.ahd = zext i32 %i.ahc to i64
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.ahd
  %i.ahf = load i64, ptr %i.ahe, align 8, !tbaa !55, !noalias !53
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.aha
  store i64 %i.ahf, ptr %i.ahg, align 8, !tbaa !55, !noalias !53
  %i.ahh = add nuw nsw i64 %.0111.i, 4            ; 2 uses
  %niter431.next.3 = add nuw i64 %niter431, 4     ; 2 uses
  %niter431.ncmp.3 = icmp eq i64 %niter431.next.3, %unroll_iter430
  br i1 %niter431.ncmp.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !38

PB_fixedPartition.exit.thread141:                 ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8, !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8, !noalias !53
  br label %PB_fixedPartition.exit.thread

PB_fixedPartition.exit.thread:                    ; preds = %bb.m, %bb.l, %bb.h, %bb.g, %PB_fixedPartition.exit.thread141
  %i.ahi = tail call { i32, i64 } @ZL_Edge_setDestination(ptr noundef %i.i, i32 2) #8 ; 2 uses
  %i.ahj = extractvalue { i32, i64 } %i.ahi, 0    ; 2 uses
  %.not128 = icmp eq i32 %i.ahj, 0
  br i1 %.not128, label %bb.bq, label %bb.bd, !prof !52

bb.bd:                                            ; preds = %PB_fixedPartition.exit.thread
  %i.ahk = extractvalue { i32, i64 } %i.ahi, 1
  %i.ahl = inttoptr i64 %i.ahk to ptr
  %i.ahm = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.ahj, ptr %i.ahl, ptr nonnull @EI_partitionBitpackDynGraph.__zl_static_error_info.10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 949, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8 ; 2 uses
  %i.ahn = extractvalue { i32, ptr } %i.ahm, 0
  %i.aho = extractvalue { i32, ptr } %i.ahm, 1
  %i.ahp = ptrtoint ptr %i.aho to i64
  br label %bb.bq

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod428.not = icmp eq i64 %xtraiter426, 0
  br i1 %lcmp.mod428.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.0111.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ahh, %.unr-lcssa ]
  %lcmp.mod429 = icmp ne i64 %xtraiter426, 0
  tail call void @llvm.assume(i1 %lcmp.mod429)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.0111.i.epil = phi i64 [ %i.ahw, %.preheader.i.epil ], [ %.0111.i.epil.init, %.preheader.i.epil.preheader ] ; 3 uses
  %epil.iter427 = phi i64 [ %epil.iter427.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0111.i.epil
  %i.ahr = load i32, ptr %i.ahq, align 4, !tbaa !61, !noalias !53
  %i.ahs = zext i32 %i.ahr to i64
  %i.aht = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.ahs
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !55, !noalias !53
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %.0111.i.epil
  store i64 %i.ahu, ptr %i.ahv, align 8, !tbaa !55, !noalias !53
end_hunk_1
