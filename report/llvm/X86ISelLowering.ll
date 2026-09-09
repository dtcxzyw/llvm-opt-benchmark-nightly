Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 343
begin_hunk_0_@_ZL36lowerShuffleAsDecomposedShuffleMergeRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %i.ao, ptr %25, align 8, !tbaa !84
  %i.ap = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %25, i64 12 ; 2 uses
  store i32 32, ptr %i.aq, align 4, !tbaa !635
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ao, i8 -1, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !241
  br label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270:     ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit570, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i259.thread
  %.pre = phi ptr [ %.pre590.pre, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit ], [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i259.thread ], [ %i.s, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit570 ] ; 9 uses
  %i.ar = phi ptr [ %i.ad, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit ], [ %i.ak, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i259.thread ], [ %i.aq, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit570 ]
  %i.as = phi ptr [ %i.ac, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit ], [ %i.aj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i259.thread ], [ %i.ap, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit570 ] ; 7 uses
  %i.at = phi ptr [ %i.ab, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit ], [ %i.ai, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i259.thread ], [ %i.ao, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit570 ] ; 2 uses
  %storemerge.i479486 = phi i32 [ %i.e, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit ], [ 0, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i259.thread ], [ %i.e, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit570 ] ; 4 uses
  %i.au = phi ptr [ %i.x, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit ], [ %i.af, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i259.thread ], [ %i.al, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit570 ] ; 2 uses
  %i.av = phi ptr [ %i.y, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit ], [ %i.ag, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i259.thread ], [ %i.am, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit570 ] ; 10 uses
  %i.aw = phi ptr [ %i.z, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit ], [ %i.ah, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i259.thread ], [ %i.an, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270.loopexit570 ]
  store i32 %storemerge.i479486, ptr %i.as, align 8, !tbaa !634
  %i.ax = icmp sgt i32 %i.e, 0
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270
  %i.ay = load ptr, ptr %6, align 8, !tbaa !692
  %i.az = load ptr, ptr %24, align 8
  %i.ba = load ptr, ptr %25, align 8              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bc = and i64 %i.d, 2147483647
  br label %bb.n

._crit_edge.loopexit:                             ; preds = %bb.r
  %i.bd = select i1 %.1221, i1 true, i1 %.1223
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270
  %.0220.lcssa = phi i1 [ true, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270 ], [ %i.bd, %._crit_edge.loopexit ]
  %.0.lcssa = phi i1 [ true, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit270 ], [ %.1, %._crit_edge.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %26, ptr noundef nonnull align 8 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !818
  %i.be = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i16 %1, ptr %i.be, align 8, !tbaa !346
  %i.bf = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr %8, ptr %i.bf, align 8, !tbaa !86
  %i.bg = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %9, ptr %i.bg, align 8, !tbaa !739
  %i.bh = load i32, ptr %i.t, align 8, !tbaa !634 ; 6 uses
  %i.bi = zext i32 %i.bh to i64                   ; 6 uses
  %i.bj = icmp slt i32 %i.bh, 1
  br i1 %i.bj, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.thread493, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bi
  br i1 %exitcond.not.i.i, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.thread493, label %.lr.ph.i.i, !llvm.loop !40

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.d
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.d ], [ 0, %._crit_edge ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.i.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !241 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  %i.bn = zext i32 %i.bl to i64
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.bn
  %or.cond.i.i = or i1 %i.bm, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit.i

_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit.i: ; preds = %.lr.ph.i.i
  %.idx1.i.i.i.i = shl nuw nsw i64 %i.bi, 2       ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx1.i.i.i.i
  %i.bp = lshr i64 %i.bi, 2                       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit.i
  %i.bq = and i64 %.idx1.i.i.i.i, 8589934576
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.pre, i64 %i.bq
  br label %.lr.ph.i.i.i.i.i.i.i.i271

.lr.ph.i.i.i.i.i.i.i.i271:                        ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.063.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %bb.h ], [ %i.bp, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02962.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %bb.h ], [ %.pre, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val39.i.i.i.i.i.i.i.i = load i32, ptr %.02962.i.i.i.i.i.i.i.i, align 4, !tbaa !241
  %.029.val39.i.i.off.i.i.i.i.i.i = add i32 %.029.val39.i.i.i.i.i.i.i.i, -1
  %switch.i.i.i.i.i.i = icmp ult i32 %.029.val39.i.i.off.i.i.i.i.i.i, -2
  br i1 %switch.i.i.i.i.i.i, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i271
  %i.br = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i, i64 4
  %.val37.i.i.i.i.i.i.i.i = load i32, ptr %i.br, align 4, !tbaa !241
  %.val37.i.i.off.i.i.i.i.i.i = add i32 %.val37.i.i.i.i.i.i.i.i, -1
  %switch4.i.i.i.i.i.i = icmp ult i32 %.val37.i.i.off.i.i.i.i.i.i, -2
  br i1 %switch4.i.i.i.i.i.i, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit625, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i, i64 8
  %.val35.i.i.i.i.i.i.i.i = load i32, ptr %i.bs, align 4, !tbaa !241
  %.val35.i.i.off.i.i.i.i.i.i = add i32 %.val35.i.i.i.i.i.i.i.i, -1
  %switch5.i.i.i.i.i.i = icmp ult i32 %.val35.i.i.off.i.i.i.i.i.i, -2
  br i1 %switch5.i.i.i.i.i.i, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit623, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i, i64 12
  %.val33.i.i.i.i.i.i.i.i = load i32, ptr %i.bt, align 4, !tbaa !241
  %.val33.i.i.off.i.i.i.i.i.i = add i32 %.val33.i.i.i.i.i.i.i.i, -1
  %switch6.i.i.i.i.i.i = icmp ult i32 %.val33.i.i.off.i.i.i.i.i.i, -2
  br i1 %switch6.i.i.i.i.i.i, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i, i64 16
  %i.bv = add nsw i64 %.063.i.i.i.i.i.i.i.i, -1
  %i.bw = icmp sgt i64 %.063.i.i.i.i.i.i.i.i, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i.i.i271, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !42

._crit_edge.loopexit.i.i.i.i.i.i.i.i:             ; preds = %bb.h
  %i.bx = and i32 %i.bh, 3
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i, %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit.i
  %.pre-phi69.i.i.i.i.i.i.i.i = phi i32 [ %i.bx, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %i.bh, %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit.i ]
  %.029.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.pre, %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit.i ] ; 5 uses
  switch i32 %.pre-phi69.i.i.i.i.i.i.i.i, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.thread493 [
    i32 3, label %bb.i
    i32 2, label %bb.k
    i32 1, label %bb.m
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i.i.i.i, align 4, !tbaa !241
  %.029.val.i.i.off.i.i.i.i.i.i = add i32 %.029.val.i.i.i.i.i.i.i.i, -1
  %switch7.i.i.i.i.i.i = icmp ult i32 %.029.val.i.i.off.i.i.i.i.i.i, -2
  br i1 %switch7.i.i.i.i.i.i, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %bb.j ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i.i.i.i, align 4, !tbaa !241
  %.1.val.i.i.off.i.i.i.i.i.i = add i32 %.1.val.i.i.i.i.i.i.i.i, -1
  %switch8.i.i.i.i.i.i = icmp ult i32 %.1.val.i.i.off.i.i.i.i.i.i, -2
  br i1 %switch8.i.i.i.i.i.i, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %bb.l ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i.i.i.i, align 4, !tbaa !241
  %.2.val.i.i.off.i.i.i.i.i.i = add i32 %.2.val.i.i.i.i.i.i.i.i, -1
  %switch9.i.i.i.i.i.i = icmp ult i32 %.2.val.i.i.off.i.i.i.i.i.i, -2
  br i1 %switch9.i.i.i.i.i.i, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.thread493

_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit: ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i, i64 12
  br label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit

_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit623: ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i, i64 8
  br label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit

_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit625: ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i, i64 4
  br label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit

_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i271, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit623, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit625, %bb.i, %bb.k, %bb.m
  %.028.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %bb.k ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %bb.i ], [ %.2.i.i.i.i.i.i.i.i, %bb.m ], [ %i.cc, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit625 ], [ %i.cb, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit623 ], [ %i.ca, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit ], [ %.02962.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i271 ]
  %i.cd = icmp eq ptr %i.bo, %.028.i.i.i.i.i.i.i.i
  br i1 %i.cd, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.thread493, label %bb.ac

bb.n:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 14 uses
  %.0542 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.r ] ; 3 uses
  %.0220541 = phi i1 [ true, %.lr.ph ], [ %.1221, %bb.r ] ; 3 uses
  %.0222540 = phi i1 [ true, %.lr.ph ], [ %.1223, %bb.r ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !241 ; 4 uses
  %or.cond237 = icmp ult i32 %i.cf, %i.e
  br i1 %or.cond237, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !241
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.ci = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !241
  %i.cj = and i64 %indvars.iv, 63
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = load i32, ptr %i.bb, align 8, !tbaa !644
  %i.cm = icmp ult i32 %i.cl, 65
  %i.cn = load ptr, ptr %7, align 8
  %i.co = lshr i64 %indvars.iv, 6
  %i.cp = and i64 %i.co, 67108863
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cp
  %.in.i.i = select i1 %i.cm, ptr %7, ptr %i.cq
  %i.cr = load i64, ptr %.in.i.i, align 8, !tbaa !358
  %i.cs = and i64 %i.cr, %i.ck
  %.not533 = icmp ne i64 %i.cs, 0
  %i.ct = select i1 %.not533, i1 %.0220541, i1 false
  %i.cu = trunc i64 %indvars.iv to i1
  %i.cv = xor i1 %i.cu, true
  %32 = select i1 %i.cv, i1 %.0542, i1 false
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.cw = icmp slt i32 %i.cf, %i.e
  br i1 %i.cw, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = sub nuw nsw i32 %i.cf, %i.e
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !241
  %i.cz = add i64 %indvars.iv, %i.d
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.db = trunc i64 %i.cz to i32
  store i32 %i.db, ptr %i.da, align 4, !tbaa !241
  %i.dc = and i64 %indvars.iv, 63
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = load i32, ptr %i.bb, align 8, !tbaa !644
  %i.df = icmp ult i32 %i.de, 65
  %i.dg = load ptr, ptr %7, align 8
  %i.dh = lshr i64 %indvars.iv, 6
  %i.di = and i64 %i.dh, 67108863
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.di
  %.in.i.i272 = select i1 %i.df, ptr %7, ptr %i.dj
  %i.dk = load i64, ptr %.in.i.i272, align 8, !tbaa !358
  %i.dl = and i64 %i.dk, %i.dd
  %.not532 = icmp ne i64 %i.dl, 0
  %i.dm = select i1 %.not532, i1 %.0222540, i1 false
  %i.dn = trunc i64 %indvars.iv to i1
  %i.do = and i1 %.0542, %i.dn
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.1223 = phi i1 [ %.0222540, %bb.o ], [ %i.dm, %bb.q ], [ %.0222540, %bb.p ] ; 2 uses
  %.1221 = phi i1 [ %i.ct, %bb.o ], [ %.0220541, %bb.q ], [ %.0220541, %bb.p ] ; 2 uses
  %.1 = phi i1 [ %32, %bb.o ], [ %i.do, %bb.q ], [ %.0542, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bc
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.n, !llvm.loop !4339

_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.thread493: ; preds = %bb.d, %._crit_edge, %bb.m, %._crit_edge.i.i.i.i.i.i.i.i, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit
  %i.dp = load ptr, ptr %24, align 8, !tbaa !84   ; 5 uses
  %i.dq = load i32, ptr %i.av, align 8, !tbaa !634 ; 4 uses
  %i.dr = zext i32 %i.dq to i64                   ; 3 uses
  %i.ds = icmp slt i32 %i.dq, 1
  br i1 %i.ds, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.thread495, label %.lr.ph.i.i275

bb.s:                                             ; preds = %.lr.ph.i.i275
  %indvars.iv.next.i.i319 = add nuw nsw i64 %indvars.iv.i.i276, 1 ; 2 uses
  %exitcond.not.i.i320 = icmp eq i64 %indvars.iv.next.i.i319, %i.dr
  br i1 %exitcond.not.i.i320, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.thread495, label %.lr.ph.i.i275, !llvm.loop !40

.lr.ph.i.i275:                                    ; preds = %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.thread493, %bb.s
  %indvars.iv.i.i276 = phi i64 [ %indvars.iv.next.i.i319, %bb.s ], [ 0, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.thread493 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i.i276
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !241 ; 2 uses
  %i.dv = icmp slt i32 %i.du, 0
  %i.dw = zext i32 %i.du to i64
  %.not.i.i277 = icmp eq i64 %indvars.iv.i.i276, %i.dw
  %or.cond.i.i278 = or i1 %i.dv, %.not.i.i277
  br i1 %or.cond.i.i278, label %bb.s, label %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit.i279

_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit.i279: ; preds = %.lr.ph.i.i275
  %.idx1.i.i.i.i280 = shl nuw nsw i64 %i.dr, 2    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx1.i.i.i.i280
  %i.dy = lshr i64 %i.dr, 2                       ; 2 uses
  %.not.i.i.i.i281 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i.i281, label %._crit_edge.i.i.i.i.i.i.i.i300, label %.lr.ph.preheader.i.i.i.i.i.i.i.i282

.lr.ph.preheader.i.i.i.i.i.i.i.i282:              ; preds = %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit.i279
  %i.dz = and i64 %.idx1.i.i.i.i280, 8589934576
  %scevgep.i.i.i.i.i.i.i.i283 = getelementptr i8, ptr %i.dp, i64 %i.dz
  br label %.lr.ph.i.i.i.i.i.i.i.i284

.lr.ph.i.i.i.i.i.i.i.i284:                        ; preds = %bb.w, %.lr.ph.preheader.i.i.i.i.i.i.i.i282
  %.063.i.i.i.i.i.i.i.i285 = phi i64 [ %i.ee, %bb.w ], [ %i.dy, %.lr.ph.preheader.i.i.i.i.i.i.i.i282 ] ; 2 uses
  %.02962.i.i.i.i.i.i.i.i286 = phi ptr [ %i.ed, %bb.w ], [ %i.dp, %.lr.ph.preheader.i.i.i.i.i.i.i.i282 ] ; 9 uses
  %.029.val39.i.i.i.i.i.i.i.i287 = load i32, ptr %.02962.i.i.i.i.i.i.i.i286, align 4, !tbaa !241
  %.029.val39.i.i.off.i.i.i.i.i.i288 = add i32 %.029.val39.i.i.i.i.i.i.i.i287, -1
  %switch.i.i.i.i.i.i289 = icmp ult i32 %.029.val39.i.i.off.i.i.i.i.i.i288, -2
  br i1 %switch.i.i.i.i.i.i289, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i284
  %i.ea = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i286, i64 4
  %.val37.i.i.i.i.i.i.i.i290 = load i32, ptr %i.ea, align 4, !tbaa !241
  %.val37.i.i.off.i.i.i.i.i.i291 = add i32 %.val37.i.i.i.i.i.i.i.i290, -1
  %switch4.i.i.i.i.i.i292 = icmp ult i32 %.val37.i.i.off.i.i.i.i.i.i291, -2
  br i1 %switch4.i.i.i.i.i.i292, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.loopexit.split.loop.exit633, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i286, i64 8
  %.val35.i.i.i.i.i.i.i.i293 = load i32, ptr %i.eb, align 4, !tbaa !241
  %.val35.i.i.off.i.i.i.i.i.i294 = add i32 %.val35.i.i.i.i.i.i.i.i293, -1
  %switch5.i.i.i.i.i.i295 = icmp ult i32 %.val35.i.i.off.i.i.i.i.i.i294, -2
  br i1 %switch5.i.i.i.i.i.i295, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.loopexit.split.loop.exit631, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ec = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i286, i64 12
  %.val33.i.i.i.i.i.i.i.i296 = load i32, ptr %i.ec, align 4, !tbaa !241
  %.val33.i.i.off.i.i.i.i.i.i297 = add i32 %.val33.i.i.i.i.i.i.i.i296, -1
  %switch6.i.i.i.i.i.i298 = icmp ult i32 %.val33.i.i.off.i.i.i.i.i.i297, -2
  br i1 %switch6.i.i.i.i.i.i298, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.loopexit.split.loop.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i286, i64 16
  %i.ee = add nsw i64 %.063.i.i.i.i.i.i.i.i285, -1
  %i.ef = icmp sgt i64 %.063.i.i.i.i.i.i.i.i285, 1
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i.i.i284, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i299, !llvm.loop !42

._crit_edge.loopexit.i.i.i.i.i.i.i.i299:          ; preds = %bb.w
  %i.eg = and i32 %i.dq, 3
  br label %._crit_edge.i.i.i.i.i.i.i.i300

._crit_edge.i.i.i.i.i.i.i.i300:                   ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i299, %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit.i279
  %.pre-phi69.i.i.i.i.i.i.i.i301 = phi i32 [ %i.eg, %._crit_edge.loopexit.i.i.i.i.i.i.i.i299 ], [ %i.dq, %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit.i279 ]
  %.029.lcssa.i.i.i.i.i.i.i.i302 = phi ptr [ %scevgep.i.i.i.i.i.i.i.i283, %._crit_edge.loopexit.i.i.i.i.i.i.i.i299 ], [ %i.dp, %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit.i279 ] ; 5 uses
  switch i32 %.pre-phi69.i.i.i.i.i.i.i.i301, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.thread495 [
    i32 3, label %bb.x
    i32 2, label %bb.z
    i32 1, label %bb.ab
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i300
  %.029.val.i.i.i.i.i.i.i.i313 = load i32, ptr %.029.lcssa.i.i.i.i.i.i.i.i302, align 4, !tbaa !241
  %.029.val.i.i.off.i.i.i.i.i.i314 = add i32 %.029.val.i.i.i.i.i.i.i.i313, -1
  %switch7.i.i.i.i.i.i315 = icmp ult i32 %.029.val.i.i.off.i.i.i.i.i.i314, -2
  br i1 %switch7.i.i.i.i.i.i315, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i302, i64 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i.i.i.i.i300
  %.1.i.i.i.i.i.i.i.i309 = phi ptr [ %i.eh, %bb.y ], [ %.029.lcssa.i.i.i.i.i.i.i.i302, %._crit_edge.i.i.i.i.i.i.i.i300 ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i310 = load i32, ptr %.1.i.i.i.i.i.i.i.i309, align 4, !tbaa !241
  %.1.val.i.i.off.i.i.i.i.i.i311 = add i32 %.1.val.i.i.i.i.i.i.i.i310, -1
  %switch8.i.i.i.i.i.i312 = icmp ult i32 %.1.val.i.i.off.i.i.i.i.i.i311, -2
  br i1 %switch8.i.i.i.i.i.i312, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i309, i64 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i.i.i.i.i.i.i.i300
  %.2.i.i.i.i.i.i.i.i303 = phi ptr [ %i.ei, %bb.aa ], [ %.029.lcssa.i.i.i.i.i.i.i.i302, %._crit_edge.i.i.i.i.i.i.i.i300 ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i304 = load i32, ptr %.2.i.i.i.i.i.i.i.i303, align 4, !tbaa !241
  %.2.val.i.i.off.i.i.i.i.i.i305 = add i32 %.2.val.i.i.i.i.i.i.i.i304, -1
  %switch9.i.i.i.i.i.i306 = icmp ult i32 %.2.val.i.i.off.i.i.i.i.i.i305, -2
  br i1 %switch9.i.i.i.i.i.i306, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.thread495

_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.loopexit.split.loop.exit: ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i286, i64 12
  br label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321

_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.loopexit.split.loop.exit631: ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i286, i64 8
  br label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321

_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.loopexit.split.loop.exit633: ; preds = %bb.t
  %i.el = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i286, i64 4
  br label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321

_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321: ; preds = %.lr.ph.i.i.i.i.i.i.i.i284, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.loopexit.split.loop.exit, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.loopexit.split.loop.exit631, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.loopexit.split.loop.exit633, %bb.x, %bb.z, %bb.ab
  %.028.i.i.i.i.i.i.i.i308 = phi ptr [ %.1.i.i.i.i.i.i.i.i309, %bb.z ], [ %.029.lcssa.i.i.i.i.i.i.i.i302, %bb.x ], [ %.2.i.i.i.i.i.i.i.i303, %bb.ab ], [ %i.el, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.loopexit.split.loop.exit633 ], [ %i.ek, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.loopexit.split.loop.exit631 ], [ %i.ej, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.loopexit.split.loop.exit ], [ %.02962.i.i.i.i.i.i.i.i286, %.lr.ph.i.i.i.i.i.i.i.i284 ]
  %i.em = icmp eq ptr %i.dx, %.028.i.i.i.i.i.i.i.i308
  br i1 %i.em, label %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.thread495, label %bb.ac

_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.thread495: ; preds = %bb.s, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit.thread493, %bb.ab, %._crit_edge.i.i.i.i.i.i.i.i300, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321
  call fastcc void @"_ZZL36lowerShuffleAsDecomposedShuffleMergeRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clERS4_NS_15MutableArrayRefIiEE"(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 8 dereferenceable(12) %21, ptr %.pre, i64 %i.bi)
  %i.en = load ptr, ptr %24, align 8, !tbaa !84
  %i.eo = load i32, ptr %i.av, align 8, !tbaa !634
  %i.ep = zext i32 %i.eo to i64
  call fastcc void @"_ZZL36lowerShuffleAsDecomposedShuffleMergeRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_0clERS4_NS_15MutableArrayRefIiEE"(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 8 dereferenceable(12) %22, ptr %i.en, i64 %i.ep)
  %.pre591 = load ptr, ptr %23, align 8, !tbaa !84
  %.pre592 = load i32, ptr %i.t, align 8, !tbaa !634 ; 2 uses
  %.pre594 = zext i32 %.pre592 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.thread495, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit
  %.pre-phi595 = phi i64 [ %.pre594, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.thread495 ], [ %i.bi, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321 ], [ %i.bi, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit ] ; 2 uses
  %i.eq = phi i32 [ %.pre592, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.thread495 ], [ %i.bh, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321 ], [ %i.bh, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit ]
  %i.er = phi ptr [ %.pre591, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321.thread495 ], [ %.pre, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit321 ], [ %.pre, %_ZL28isNoopOrBroadcastShuffleMaskN4llvm8ArrayRefIiEE.exit ] ; 2 uses
  %i.es = icmp slt i32 %i.eq, 1
  br i1 %i.es, label %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ac, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.ac ] ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !241 ; 2 uses
  %i.ev = icmp slt i32 %i.eu, 0
  %i.ew = zext i32 %i.eu to i64
  %.not.i322 = icmp eq i64 %indvars.iv.i, %i.ew
  %or.cond.i = or i1 %i.ev, %.not.i322            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %.pre-phi595
  %or.cond.not = select i1 %or.cond.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit, !llvm.loop !40

_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit:   ; preds = %.lr.ph.i, %bb.ac
  %.lcssa.i = phi i1 [ true, %bb.ac ], [ %or.cond.i, %.lr.ph.i ]
  %i.ex = load ptr, ptr %24, align 8, !tbaa !84
end_hunk_0
