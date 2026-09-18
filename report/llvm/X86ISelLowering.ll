Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 335
begin_hunk_0_@_ZL36lowerShuffleAsDecomposedShuffleMergeRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
  %i.gv = and i64 %indvars.iv.i358, 1
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %i.gv ; 7 uses
  %i.gx = icmp slt i32 %i.gt, %i.e
  %i.gy = load ptr, ptr %i.gw, align 16, !tbaa !472 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !468
  %i.hb = add i32 %i.ha, -53
  %spec.select.i.i.i359 = icmp ult i32 %i.hb, 2   ; 2 uses
  br i1 %i.gx, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  br i1 %spec.select.i.i.i359, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hc = icmp eq ptr %i.gy, %.sroa.0118.0.copyload
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.he = load i32, ptr %i.hd, align 8
  %i.hf = icmp eq i32 %i.he, %.sroa.2119.0.copyload
  %i.hg = select i1 %i.hc, i1 %i.hf, i1 false
  br i1 %i.hg, label %bb.au, label %_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit.thread

bb.au:                                            ; preds = %bb.at, %bb.as
  store ptr %.sroa.0118.0.copyload, ptr %i.gw, align 16, !tbaa !465
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %.sroa.2119.0.copyload, ptr %.sroa.518.0..sroa_idx.i, align 8, !tbaa !240
  br label %bb.ay

bb.av:                                            ; preds = %bb.ar
  br i1 %spec.select.i.i.i359, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hh = icmp eq ptr %i.gy, %.sroa.0115.0.copyload
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hj = load i32, ptr %i.hi, align 8
  %i.hk = icmp eq i32 %i.hj, %.sroa.2116.0.copyload
  %i.hl = select i1 %i.hh, i1 %i.hk, i1 false
  br i1 %i.hl, label %bb.ax, label %_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit.thread

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store ptr %.sroa.0115.0.copyload, ptr %i.gw, align 16, !tbaa !465
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %.sroa.2116.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !240
  %i.hm = sub nsw i32 %i.gt, %i.e
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  %.0124.i = phi i32 [ %i.gt, %bb.au ], [ %i.hm, %bb.ax ]
  %.0124.fr.i = freeze i32 %.0124.i               ; 5 uses
  %i.hn = icmp eq i32 %.0124.fr.i, -1
  br i1 %i.hn, label %.split.loop.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.ay, %bb.az
  %.0129.i = phi i32 [ %i.hp, %bb.az ], [ 0, %bb.ay ] ; 4 uses
  %.not137.i = icmp eq i32 %.0129.i, %i.e
  br i1 %.not137.i, label %.split.loop.exit.i, label %bb.az

bb.az:                                            ; preds = %.split.i
  %i.ho = add nsw i32 %.0129.i, %i.gn             ; 2 uses
  %i.hp = add nsw i32 %.0129.i, %i.l              ; 2 uses
  %i.hq = icmp sge i32 %.0124.fr.i, %.0129.i
  %i.hr = icmp slt i32 %.0124.fr.i, %i.ho
  %i.hs = and i1 %i.hq, %i.hr                     ; 2 uses
  %i.ht = icmp sge i32 %.0124.fr.i, %i.ho
  %i.hu = icmp slt i32 %.0124.fr.i, %i.hp
  %i.hv = and i1 %i.ht, %i.hu                     ; 2 uses
  %i.hw = select i1 %i.hs, i1 true, i1 %i.hv
  br i1 %i.hw, label %.split.loop.exit45.loopexit.i, label %.split.i, !llvm.loop !4333

.split.loop.exit45.loopexit.i:                    ; preds = %bb.az
  %i.hx = select i1 %i.hs, i8 %.056.i, i8 0
  %i.hy = select i1 %i.hv, i8 %.011655.i, i8 0
  br label %.split.loop.exit.i

.split.loop.exit.i:                               ; preds = %.split.i, %.split.loop.exit45.loopexit.i, %bb.ay
  %.1128.i = phi i8 [ %.011655.i, %bb.ay ], [ %i.hy, %.split.loop.exit45.loopexit.i ], [ 0, %.split.i ] ; 2 uses
  %.1126.i = phi i8 [ %.056.i, %bb.ay ], [ %i.hx, %.split.loop.exit45.loopexit.i ], [ 0, %.split.i ] ; 2 uses
  %i.hz = icmp ne i8 %.1126.i, 0
  %i.ia = icmp ne i8 %.1128.i, 0
  %or.cond4.i = select i1 %i.hz, i1 true, i1 %i.ia
  br i1 %or.cond4.i, label %bb.ba, label %_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit.thread

bb.ba:                                            ; preds = %.split.loop.exit.i, %bb.aq
  %.2118.i = phi i8 [ %.011655.i, %bb.aq ], [ %.1128.i, %.split.loop.exit.i ]
  %.2.i = phi i8 [ %.056.i, %bb.aq ], [ %.1126.i, %.split.loop.exit.i ] ; 2 uses
  %indvars.iv.next.i362 = add nuw nsw i64 %indvars.iv.i358, 1 ; 2 uses
  %.not.i363 = icmp eq i64 %indvars.iv.next.i362, %i.gr
  br i1 %.not.i363, label %.thread35.loopexit.i, label %bb.aq, !llvm.loop !4334

.thread35.loopexit.i:                             ; preds = %bb.ba
  %i.ib = trunc nuw i8 %.2.i to i1
  %i.ic = select i1 %i.ib, i32 840, i32 839
  br label %.thread35.i

.thread35.i:                                      ; preds = %.thread35.loopexit.i, %_ZNK4llvm8TypeSizecvmEv.exit.i
  %.0.lcssa.i = phi i32 [ 840, %_ZNK4llvm8TypeSizecvmEv.exit.i ], [ %i.ic, %.thread35.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  %i.id = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.id, ptr %17, align 8, !tbaa !83
  %i.ie = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store i32 0, ptr %i.ie, align 8, !tbaa !633
  %i.if = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 32, ptr %i.if, align 4, !tbaa !634
  br i1 %i.v, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit.i: ; preds = %.thread35.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %17, ptr noundef nonnull %i.id, i64 noundef %i.r, i64 noundef 4) #39
  %i.ig = load ptr, ptr %17, align 8, !tbaa !83
  br label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.sink.split.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %.thread35.i
  %.not.i.i364 = icmp eq i64 %sext, 0
  br i1 %.not.i.i364, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.i, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.sink.split.i

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.sink.split.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit.i
  %.sink.i = phi ptr [ %i.ig, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit.i ], [ %i.id, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i ]
  %.idx.i.i.i.i.i.i.i365 = ashr exact i64 %sext, 30
  call void @llvm.memset.p0.i64(ptr align 4 %.sink.i, i8 -1, i64 %.idx.i.i.i.i.i.i.i365, i1 false), !tbaa !240
  br label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.i

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.i:      ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.sink.split.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i
  store i32 %i.e, ptr %i.ie, align 8, !tbaa !633
  br i1 %.not53.i, label %._crit_edge.i367, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.i
  %i.ih = load ptr, ptr %16, align 16             ; 2 uses
  %i.ii = icmp eq ptr %.sroa.0115.0.copyload, %i.ih ; 2 uses
  %i.ij = load ptr, ptr %i.gp, align 16           ; 2 uses
  %i.ik = icmp eq ptr %.sroa.0115.0.copyload, %i.ij ; 2 uses
  %i.il = icmp eq ptr %.sroa.0118.0.copyload, %i.ih ; 2 uses
  %i.im = icmp eq ptr %.sroa.0118.0.copyload, %i.ij ; 2 uses
  %i.in = load ptr, ptr %17, align 8              ; 8 uses
  %i.io = and i64 %i.d, 4294967295                ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.io, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph59.i
  %i.ip = shl nuw nsw i64 %i.io, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.in, i64 %i.ip ; 2 uses
  %scevgep650 = getelementptr i8, ptr %.sroa.0435.0.copyload, i64 %i.ip
  %scevgep651 = getelementptr inbounds nuw i8, ptr %16, i64 28
  %bound0 = icmp ult ptr %i.in, %scevgep650
  %bound1 = icmp ult ptr %.sroa.0435.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0652 = icmp ult ptr %i.in, %scevgep651
  %bound1653 = icmp ult ptr %.sroa.279.0..sroa_idx.i, %scevgep
  %found.conflict654 = and i1 %bound0652, %bound1653
  %conflict.rdx = or i1 %found.conflict, %found.conflict654
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, 4294967292               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.2119.0.copyload, i64 0 ; 2 uses
  %broadcast.splatinsert655 = insertelement <4 x i32> poison, i32 %.sroa.2116.0.copyload, i64 0 ; 2 uses
  %i.iq = load <4 x i32>, ptr %.sroa.279.0..sroa_idx.i, align 8
  %i.ir = shufflevector <4 x i32> %i.iq, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.is = icmp eq <4 x i32> %broadcast.splatinsert655, %i.ir
  %i.it = shufflevector <4 x i1> %i.is, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.iu = select i1 %i.ii, <4 x i1> %i.it, <4 x i1> zeroinitializer ; 2 uses
  %i.iv = xor <4 x i1> %i.iu, splat (i1 true)
  %i.iw = load i32, ptr %.sroa.274.0..sroa_idx.i, align 8, !alias.scope !4343
  %i.ix = insertelement <4 x i32> poison, i32 %i.iw, i64 0
  %i.iy = icmp eq <4 x i32> %broadcast.splatinsert655, %i.ix
  %i.iz = shufflevector <4 x i1> %i.iy, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ja = select i1 %i.ik, <4 x i1> %i.iz, <4 x i1> zeroinitializer
  %i.jb = icmp eq <4 x i32> %broadcast.splatinsert, %i.ir
  %i.jc = shufflevector <4 x i1> %i.jb, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.jd = select i1 %i.il, <4 x i1> %i.jc, <4 x i1> zeroinitializer ; 2 uses
  %i.je = xor <4 x i1> %i.jd, splat (i1 true)
  %i.jf = load i32, ptr %.sroa.274.0..sroa_idx.i, align 8, !alias.scope !4343
  %i.jg = insertelement <4 x i32> poison, i32 %i.jf, i64 0
  %i.jh = icmp eq <4 x i32> %broadcast.splatinsert, %i.jg
  %i.ji = shufflevector <4 x i1> %i.jh, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.jj = select i1 %i.im, <4 x i1> %i.ji, <4 x i1> zeroinitializer
  %broadcast.splatinsert657 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat658 = shufflevector <4 x i32> %broadcast.splatinsert657, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert659 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat660 = shufflevector <4 x i32> %broadcast.splatinsert659, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert661 = insertelement <4 x i32> poison, i32 %i.gn, i64 0
  %broadcast.splat662 = shufflevector <4 x i32> %broadcast.splatinsert661, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue668, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue668 ] ; 6 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0435.0.copyload, i64 %index
  %wide.load = load <4 x i32>, ptr %i.jk, align 4, !tbaa !240, !alias.scope !4344 ; 3 uses
  %i.jl = icmp sgt <4 x i32> %wide.load, splat (i32 -1) ; 4 uses
  %i.jm = icmp slt <4 x i32> %wide.load, %broadcast.splat658 ; 3 uses
  %i.jn = select <4 x i1> %i.jm, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat658
  %i.jo = sub nsw <4 x i32> %wide.load, %i.jn
  %i.jp = freeze <4 x i32> %i.jo                  ; 3 uses
  %i.jq = call <4 x i32> @llvm.masked.srem.v4i32(<4 x i32> %i.jp, <4 x i32> %broadcast.splat660, <4 x i1> %i.jl)
  %i.jr = sub nsw <4 x i32> %i.jp, %i.jq
  %i.js = call <4 x i32> @llvm.masked.srem.v4i32(<4 x i32> %i.jp, <4 x i32> %broadcast.splat662, <4 x i1> %i.jl)
  %i.jt = shl nuw nsw <4 x i32> %i.js, splat (i32 1)
  %i.ju = add nsw <4 x i32> %i.jt, %i.jr
  %i.jv = xor <4 x i1> %i.jm, splat (i1 true)
  %i.jw = select <4 x i1> %i.jl, <4 x i1> %i.jv, <4 x i1> zeroinitializer ; 2 uses
  %i.jx = select <4 x i1> %i.jw, <4 x i1> %i.iv, <4 x i1> zeroinitializer
  %i.jy = select <4 x i1> %i.jl, <4 x i1> %i.jm, <4 x i1> zeroinitializer ; 2 uses
  %i.jz = select <4 x i1> %i.jy, <4 x i1> %i.je, <4 x i1> zeroinitializer
  %i.ka = select <4 x i1> %i.jx, <4 x i1> %i.ja, <4 x i1> zeroinitializer
  %i.kb = select <4 x i1> %i.jz, <4 x i1> %i.jj, <4 x i1> zeroinitializer
  %32 = or <4 x i1> %i.ka, %i.kb                  ; 2 uses
  %i.kc = select <4 x i1> %i.jw, <4 x i1> %i.iu, <4 x i1> zeroinitializer
  %i.kd = select <4 x i1> %i.jy, <4 x i1> %i.jd, <4 x i1> zeroinitializer
  %33 = or <4 x i1> %i.kc, %i.kd
  %i.ke = or <4 x i1> %33, %32                    ; 4 uses
  %i.kf = zext <4 x i1> %32 to <4 x i32>
  %predphi = add nsw <4 x i32> %i.ju, %i.kf       ; 4 uses
  %i.kg = extractelement <4 x i1> %i.ke, i64 0
  br i1 %i.kg, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %index
  %i.ki = extractelement <4 x i32> %predphi, i64 0
  store i32 %i.ki, ptr %i.kh, align 4, !tbaa !240, !alias.scope !4345, !noalias !4346
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.kj = extractelement <4 x i1> %i.ke, i64 1
  br i1 %i.kj, label %pred.store.if663, label %pred.store.continue664

pred.store.if663:                                 ; preds = %pred.store.continue
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %index
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.km = extractelement <4 x i32> %predphi, i64 1
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !240, !alias.scope !4345, !noalias !4346
  br label %pred.store.continue664

pred.store.continue664:                           ; preds = %pred.store.if663, %pred.store.continue
  %i.kn = extractelement <4 x i1> %i.ke, i64 2
  br i1 %i.kn, label %pred.store.if665, label %pred.store.continue666

pred.store.if665:                                 ; preds = %pred.store.continue664
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %index
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = extractelement <4 x i32> %predphi, i64 2
  store i32 %i.kq, ptr %i.kp, align 4, !tbaa !240, !alias.scope !4345, !noalias !4346
  br label %pred.store.continue666

pred.store.continue666:                           ; preds = %pred.store.if665, %pred.store.continue664
  %i.kr = extractelement <4 x i1> %i.ke, i64 3
  br i1 %i.kr, label %pred.store.if667, label %pred.store.continue668

pred.store.if667:                                 ; preds = %pred.store.continue666
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %index
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 12
  %i.ku = extractelement <4 x i32> %predphi, i64 3
  store i32 %i.ku, ptr %i.kt, align 4, !tbaa !240, !alias.scope !4345, !noalias !4346
  br label %pred.store.continue668

pred.store.continue668:                           ; preds = %pred.store.if667, %pred.store.continue666
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kv = icmp eq i64 %index.next, %n.vec
  br i1 %i.kv, label %middle.block, label %vector.body, !llvm.loop !4339

middle.block:                                     ; preds = %pred.store.continue668
  %cmp.n = icmp eq i64 %i.io, %n.vec
  br i1 %cmp.n, label %._crit_edge.i367, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph59.i, %middle.block
  %indvars.iv62.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph59.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i367:                                 ; preds = %bb.bf, %middle.block, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.i
  store ptr %16, ptr %18, align 8, !tbaa !688
  %i.kw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 2, ptr %i.kw, align 8, !tbaa !689
  %i.kx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef %.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %18) #39 ; 2 uses
  %.fca.0.extract13.i = extractvalue { ptr, i32 } %i.kx, 0
  %.fca.1.extract14.i = extractvalue { ptr, i32 } %i.kx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.ky = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %1, ptr null) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  %.fca.0.extract5.i = extractvalue { ptr, i32 } %i.ky, 0
  %.fca.1.extract6.i = extractvalue { ptr, i32 } %i.ky, 1
  store ptr %.fca.0.extract5.i, ptr %19, align 8
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract6.i, ptr %.sroa.28.0..sroa_idx.i, align 8
  %i.kz = load ptr, ptr %17, align 8, !tbaa !83
  store ptr %i.kz, ptr %20, align 8, !tbaa !691
  %i.la = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.lb = load i32, ptr %i.ie, align 8, !tbaa !633
  %i.lc = zext i32 %i.lb to i64
  store i64 %i.lc, ptr %i.la, align 8, !tbaa !692
  %i.ld = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %1, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %.fca.0.extract13.i, i32 %.fca.1.extract14.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %20) #39 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ld, 0 ; 2 uses
  %i.le = load ptr, ptr %17, align 8, !tbaa !83   ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.id
  br i1 %i.lf, label %_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i367
  call void @free(ptr noundef %i.le) #39
  br label %_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.bf
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %bb.bf ], [ %indvars.iv62.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0435.0.copyload, i64 %indvars.iv62.i
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !240 ; 3 uses
  %i.li = icmp slt i32 %i.lh, 0
  br i1 %i.li, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %scalar.ph
  %.not141.i = icmp slt i32 %i.lh, %i.e           ; 2 uses
  %i.lj = select i1 %.not141.i, i32 0, i32 %i.e
  %spec.select.i366 = sub nsw i32 %i.lh, %i.lj
  %spec.select.fr.i = freeze i32 %spec.select.i366 ; 3 uses
  %i.lk = srem i32 %spec.select.fr.i, %i.l
  %i.ll = sub nsw i32 %spec.select.fr.i, %i.lk
  %i.lm = srem i32 %spec.select.fr.i, %i.gn
  %i.ln = shl nuw nsw i32 %i.lm, 1
  %i.lo = add nsw i32 %i.ln, %i.ll                ; 3 uses
  %i.lp = load i32, ptr %.sroa.279.0..sroa_idx.i, align 8 ; 2 uses
  br i1 %.not141.i, label %bb.bd, label %.critedge.i

bb.bd:                                            ; preds = %bb.bc
  %i.lq = icmp eq i32 %.sroa.2119.0.copyload, %i.lp
  %i.lr = select i1 %i.il, i1 %i.lq, i1 false
  br i1 %i.lr, label %.sink.split.i, label %.critedge143.i

.critedge.i:                                      ; preds = %bb.bc
  %i.ls = icmp eq i32 %.sroa.2116.0.copyload, %i.lp
  %i.lt = select i1 %i.ii, i1 %i.ls, i1 false
  br i1 %i.lt, label %.sink.split.i, label %.critedge145.i

.critedge143.i:                                   ; preds = %bb.bd
  %i.lu = load i32, ptr %.sroa.274.0..sroa_idx.i, align 8
  %i.lv = icmp eq i32 %.sroa.2119.0.copyload, %i.lu
  %i.lw = select i1 %i.im, i1 %i.lv, i1 false
  br i1 %i.lw, label %bb.be, label %bb.bf

.critedge145.i:                                   ; preds = %.critedge.i
  %i.lx = load i32, ptr %.sroa.274.0..sroa_idx.i, align 8
  %i.ly = icmp eq i32 %.sroa.2116.0.copyload, %i.lx
  %i.lz = select i1 %i.ik, i1 %i.ly, i1 false
  br i1 %i.lz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.critedge145.i, %.critedge143.i
  %i.ma = add nsw i32 %i.lo, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.be, %.critedge.i, %bb.bd
  %.sink70.i = phi i32 [ %i.ma, %bb.be ], [ %i.lo, %.critedge.i ], [ %i.lo, %bb.bd ]
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv62.i
  store i32 %.sink70.i, ptr %i.mb, align 4, !tbaa !240
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split.i, %.critedge145.i, %.critedge143.i, %scalar.ph
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %.not140.i = icmp eq i64 %indvars.iv.next63.i, %i.io
  br i1 %.not140.i, label %._crit_edge.i367, label %scalar.ph, !llvm.loop !4340

_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit.thread: ; preds = %bb.aw, %bb.at, %.split.loop.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %bb.bg

_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit: ; preds = %._crit_edge.i367, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %.not528 = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not528, label %bb.bg, label %bb.bw

bb.bg:                                            ; preds = %_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit.thread, %_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit, %_ZL27isSingleElementRepeatedMaskN4llvm8ArrayRefIiEE.exit355, %_ZL27isSingleElementRepeatedMaskN4llvm8ArrayRefIiEE.exit, %bb.ai
  %.val245 = load i32, ptr %i.fg, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %8, i64 395
  %.val246 = load i8, ptr %i.mc, align 1
  %i.md = call fastcc { ptr, i32 } @_ZL34lowerShuffleAsByteRotateAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %1, ptr %.sroa.0118.0.copyload, i32 %.sroa.2119.0.copyload, ptr %.sroa.0115.0.copyload, i32 %.sroa.2116.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %6, i32 %.val245, i8 %.val246, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract89 = extractvalue { ptr, i32 } %i.md, 0 ; 2 uses
  %.not529 = icmp eq ptr %.fca.0.extract89, null
  br i1 %.not529, label %bb.bh, label %bb.bw

bb.bh:                                            ; preds = %bb.bg
  %i.me = call fastcc { ptr, i32 } @_ZL29lowerShuffleAsBlendAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGEb(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %1, ptr %.sroa.0118.0.copyload, i32 %.sroa.2119.0.copyload, ptr %.sroa.0115.0.copyload, i32 %.sroa.2116.0.copyload, ptr %.sroa.0435.0.copyload, i64 %i.d, ptr noundef nonnull align 8 dereferenceable(920) %9, i1 noundef zeroext false) ; 2 uses
  %.fca.0.extract78 = extractvalue { ptr, i32 } %i.me, 0 ; 2 uses
  %.not530 = icmp eq ptr %.fca.0.extract78, null
  br i1 %.not530, label %bb.bi, label %bb.bw

bb.bi:                                            ; preds = %bb.bh
  %i.mf = icmp sgt i32 %i.q, 31
  br i1 %i.mf, label %bb.bj, label %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit332.thread.thread

bb.bj:                                            ; preds = %bb.bi
  %i.mg = call fastcc { ptr, i32 } @_ZL30lowerShuffleAsPermuteAndUnpackRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %1, ptr %.sroa.0118.0.copyload, i32 %.sroa.2119.0.copyload, ptr %.sroa.0115.0.copyload, i32 %.sroa.2116.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %6, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract67 = extractvalue { ptr, i32 } %i.mg, 0 ; 2 uses
  %.not531 = icmp eq ptr %.fca.0.extract67, null
  br i1 %.not531, label %.thread520, label %bb.bw

_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit332.thread: ; preds = %bb.ad, %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit, %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit332
  %.not640 = icmp eq i32 %i.q, 16
  br i1 %.not640, label %bb.bk, label %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit332.thread.thread

bb.bk:                                            ; preds = %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit332.thread
  %i.mh = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !342
  %i.mj = icmp sgt i32 %i.mi, 4
  br i1 %i.mj, label %bb.bl, label %_ZL17isNoopShuffleMaskN4llvm8ArrayRefIiEE.exit332.thread.thread

bb.bl:                                            ; preds = %bb.bk
  %i.mk = load ptr, ptr %25, align 8, !tbaa !83
  %i.ml = load i32, ptr %i.as, align 8, !tbaa !633
  %i.mm = zext i32 %i.ml to i64
end_hunk_0
