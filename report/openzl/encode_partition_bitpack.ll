Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_partition_bitpack?download=true
inline.NumInlined: 87
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@EI_partitionBitpackDynGraph:bb.a
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  %wide.load345 = load <2 x i64>, ptr %i.yj, align 8, !tbaa !59, !noalias !57
  %wide.load346 = load <2 x i64>, ptr %i.yk, align 8, !tbaa !59, !noalias !57
  %i.yl = add <2 x i64> %wide.load345, %vec.phi343 ; 2 uses
  %i.ym = add <2 x i64> %wide.load346, %vec.phi344 ; 2 uses
  %index.next347 = add nuw i64 %index342, 4       ; 2 uses
  %i.yn = icmp eq i64 %index.next347, %n.vec340
  br i1 %i.yn, label %middle.block348, label %vector.body341, !llvm.loop !29

middle.block348:                                  ; preds = %vector.body341
  %bin.rdx = add <2 x i64> %i.ym, %i.yl
  %i.yo = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n349 = icmp eq i64 %i.yg, %n.vec340
  br i1 %cmp.n349, label %._crit_edge.i96.us.i.i.i.i, label %.lr.ph.i92.us.i.i.i.i.preheader

.lr.ph.i92.us.i.i.i.i.preheader:                  ; preds = %.lr.ph.preheader.i90.us.i.i.i.i, %middle.block348
  %.04756.i93.us.i.i.i.i.ph = phi i64 [ %indvar.i.i.i, %.lr.ph.preheader.i90.us.i.i.i.i ], [ %i.yh, %middle.block348 ]
  %.04855.i94.us.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i90.us.i.i.i.i ], [ %i.yo, %middle.block348 ]
  br label %.lr.ph.i92.us.i.i.i.i

.lr.ph.i92.us.i.i.i.i:                            ; preds = %.lr.ph.i92.us.i.i.i.i.preheader, %.lr.ph.i92.us.i.i.i.i
  %.04756.i93.us.i.i.i.i = phi i64 [ %i.ys, %.lr.ph.i92.us.i.i.i.i ], [ %.04756.i93.us.i.i.i.i.ph, %.lr.ph.i92.us.i.i.i.i.preheader ] ; 2 uses
  %.04855.i94.us.i.i.i.i = phi i64 [ %i.yr, %.lr.ph.i92.us.i.i.i.i ], [ %.04855.i94.us.i.i.i.i.ph, %.lr.ph.i92.us.i.i.i.i.preheader ]
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04756.i93.us.i.i.i.i
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !59, !noalias !57
  %i.yr = add i64 %i.yq, %.04855.i94.us.i.i.i.i   ; 2 uses
  %i.ys = add nuw nsw i64 %.04756.i93.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i95.us.i.i.i.i = icmp eq i64 %i.ys, %.5.i127145.us.i.i.i.i
  br i1 %exitcond.not.i95.us.i.i.i.i, label %._crit_edge.i96.us.i.i.i.i, label %.lr.ph.i92.us.i.i.i.i, !llvm.loop !30

._crit_edge.i96.us.i.i.i.i:                       ; preds = %.lr.ph.i92.us.i.i.i.i, %middle.block348
  %.lcssa286 = phi i64 [ %i.yo, %middle.block348 ], [ %i.yr, %.lr.ph.i92.us.i.i.i.i ] ; 2 uses
  %.not.i97.us.i.i.i.i = icmp ult i64 %spec.select.i8285.i91.us.i.i.i.i, %.lcssa286
  br i1 %.not.i97.us.i.i.i.i, label %.preheader.i98.us.i.i.i.i, label %PB_tryMutation.exit.us.i.i.i.i

.preheader.i98.us.i.i.i.i:                        ; preds = %._crit_edge.i96.us.i.i.i.i
  br i1 %i.wg, label %.lr.ph59.i108.us.i.preheader.i.i.i, label %PB_partitionEnd.exit.i104.us.i.i.i.i.preheader

.lr.ph59.i108.us.i.preheader.i.i.i:               ; preds = %.preheader.i98.us.i.i.i.i
  %i.yt = add i64 %.5.i127145.us.i.i.i.i, %i.qq
  %i.yu = shl nuw i64 %i.yt, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep60.i.i.i, ptr align 4 %scevgep61.i.i.i, i64 %i.yu, i1 false), !tbaa !65, !noalias !57
  br label %PB_partitionEnd.exit.i104.us.i.i.i.i.preheader

PB_partitionEnd.exit.i104.us.i.i.i.i.preheader:   ; preds = %.lr.ph59.i108.us.i.preheader.i.i.i, %.preheader.i98.us.i.i.i.i
  br label %PB_partitionEnd.exit.i104.us.i.i.i.i

PB_partitionEnd.exit.i104.us.i.i.i.i:             ; preds = %PB_partitionEnd.exit.i104.us.i.i.i.i.preheader, %PB_partitionEnd.exit.i104.us.i.cont.i.i.i
  %.04561.i105.us.i.i.i.i = phi i64 [ %i.yx, %PB_partitionEnd.exit.i104.us.i.cont.i.i.i ], [ %indvar.i.i.i, %PB_partitionEnd.exit.i104.us.i.i.i.i.preheader ] ; 3 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.04561.i105.us.i.i.i.i
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !65, !noalias !57
  %i.yx = add nuw nsw i64 %.04561.i105.us.i.i.i.i, 1 ; 4 uses
  %i.yy = icmp eq i64 %i.yx, %.sroa.33.1.i.i.i
  br i1 %i.yy, label %PB_partitionEnd.exit.i104.us.i.cont.i.i.i, label %PB_partitionEnd.exit.i104.us.i.else.i.i.i

PB_partitionEnd.exit.i104.us.i.else.i.i.i:        ; preds = %PB_partitionEnd.exit.i104.us.i.i.i.i
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.yx
  %.else.val21.i.i.i = load i32, ptr %i.yz, align 4, !tbaa !65, !noalias !57
  %.pre62.i.i.i = zext i32 %.else.val21.i.i.i to i64
  br label %PB_partitionEnd.exit.i104.us.i.cont.i.i.i

PB_partitionEnd.exit.i104.us.i.cont.i.i.i:        ; preds = %PB_partitionEnd.exit.i104.us.i.else.i.i.i, %PB_partitionEnd.exit.i104.us.i.i.i.i
  %.pre-phi63.i.i.i = phi i64 [ %.pre-phi.i, %PB_partitionEnd.exit.i104.us.i.i.i.i ], [ %.pre62.i.i.i, %PB_partitionEnd.exit.i104.us.i.else.i.i.i ] ; 2 uses
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %.pre-phi63.i.i.i
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !65, !noalias !57
  %i.zc = zext i32 %i.yw to i64                   ; 2 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.zc
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !65, !noalias !57
  %i.zf = sub i32 %i.zb, %i.ze
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %.pre-phi63.i.i.i
  %i.zh = load i64, ptr %i.zg, align 8, !tbaa !59, !noalias !57
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.zc
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !59, !noalias !57
  %i.zk = sub i64 %i.zh, %i.zj                    ; 2 uses
  %i.zl = icmp ult i64 %i.zk, 2
  %i.zm = add i64 %i.zk, -1
  %i.zn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.zm, i1 true)
  %i.zo = sub nuw nsw i64 64, %i.zn
  %i.zp = zext i32 %i.zf to i64
  %i.zq = select i1 %i.zl, i64 0, i64 %i.zo
  %i.zr = mul nuw nsw i64 %i.zq, %i.zp
  %i.zs = add nuw nsw i64 %i.zr, 24
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04561.i105.us.i.i.i.i
  store i64 %i.zs, ptr %i.zt, align 8, !tbaa !59, !noalias !57
  %exitcond66.not.i107.us.i.i.i.i = icmp eq i64 %i.yx, %.5.i127145.us.i.i.i.i
  br i1 %exitcond66.not.i107.us.i.i.i.i, label %PB_tryMutation.exit.us.loopexit.i.i.i.i, label %PB_partitionEnd.exit.i104.us.i.i.i.i, !llvm.loop !28

PB_tryMutation.exit.us.loopexit.i.i.i.i:          ; preds = %PB_partitionEnd.exit.i104.us.i.cont.i.i.i
  %i.zu = add i64 %spec.select.i8285.i91.us.i.i.i.i, %.1117158.us.i.i.i.i
  %i.zv = sub i64 %i.zu, %.lcssa286
  br label %PB_tryMutation.exit.us.i.i.i.i

PB_tryMutation.exit.us.loopexit161.i.i.i.i:       ; preds = %PB_partitionEnd.exit.i.us.i.cont.i.i.i
  %i.zw = add i64 %spec.select.i8285.i.us.i.i.i.i, %.1117158.us.i.i.i.i
  %i.zx = sub i64 %i.zw, %.lcssa284
  br label %PB_tryMutation.exit.us.i.i.i.i

PB_tryMutation.exit.us.i.i.i.i:                   ; preds = %PB_isLegalPartition.exit.i.i86.us.i.i.i.i, %bb.ak, %PB_tryMutation.exit.us.loopexit161.i.i.i.i, %PB_tryMutation.exit.us.loopexit.i.i.i.i, %._crit_edge.i96.us.i.i.i.i, %PB_modifiedRangeCost.exit.i89.us.i.i.i.i, %PB_isLegalPartition.exit.peel.i.i75.us.i.i.i.i, %.lr.ph.i.i71.thread142.us.i.i.i.i, %PB_shrinkPartitions.exit.us.i.i.i.i, %.loopexit.us.i.i.i.i
  %.2118.us.i.i.i.i = phi i64 [ %i.zx, %PB_tryMutation.exit.us.loopexit161.i.i.i.i ], [ %.1117158.us.i.i.i.i, %.lr.ph.i.i71.thread142.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %PB_isLegalPartition.exit.peel.i.i75.us.i.i.i.i ], [ %i.zv, %PB_tryMutation.exit.us.loopexit.i.i.i.i ], [ %.1117158.us.i.i.i.i, %._crit_edge.i96.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %.loopexit.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %PB_modifiedRangeCost.exit.i89.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %PB_shrinkPartitions.exit.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %bb.ak ], [ %.1117158.us.i.i.i.i, %PB_isLegalPartition.exit.i.i86.us.i.i.i.i ] ; 3 uses
  %i.zy = add nuw nsw i64 %i.qn, 1                ; 2 uses
  %exitcond169.not.i.i.i.i = icmp eq i64 %i.zy, %.sroa.33.1.i.i.i
  %indvar.next.i.i.i = add nuw nsw i64 %indvar.i.i.i, 1
  br i1 %exitcond169.not.i.i.i.i, label %._crit_edge.us.i.i.i.i, label %bb.ab, !llvm.loop !31

._crit_edge.us.i.i.i.i:                           ; preds = %PB_tryMutation.exit.us.i.i.i.i
  %i.zz = icmp eq i64 %.2118.us.i.i.i.i, %.0116.us.i.i.i.i
  br i1 %i.zz, label %.thread120.i.i.i.i, label %.lr.ph.us.i.i.i.i

.thread120.i.i.i.i:                               ; preds = %PB_isLegalPartition.exit.i.i.i.i, %PB_partitionEnd.exit.i11.cont.i.i.i, %._crit_edge.us.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8, !noalias !57
  br label %PB_iterativeImprovement.exit.i.i.i

PB_iterativeImprovement.exit.i.i.i:               ; preds = %.thread120.i.i.i.i, %PB_dividePartitions.exit.i.i.i
  %exitcond.i.i.i.i294 = icmp eq i64 %.sroa.33.1.i.i.i, 0
  br i1 %exitcond.i.i.i.i294, label %PB_greedyOptimize.exit.i.thread.i, label %PB_partitionEnd.exit.i15.i.i.i

bb.am:                                            ; preds = %PB_isLegalPartition.exit.i17.i.i.i
  %exitcond.i.i.i.i = icmp eq i64 %i.aac, %.sroa.33.1.i.i.i
  br i1 %exitcond.i.i.i.i, label %PB_greedyOptimize.exit.i.thread.i, label %PB_partitionEnd.exit.i15.i.i.i, !llvm.loop !32

PB_greedyOptimize.exit.i.thread.i:                ; preds = %bb.am, %PB_iterativeImprovement.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8, !noalias !57
  br label %PB_fixedPartitionFastInner.exit.i

PB_partitionEnd.exit.i15.i.i.i:                   ; preds = %PB_iterativeImprovement.exit.i.i.i, %bb.am
  %.015.i.i.i.i295 = phi i64 [ %i.aac, %bb.am ], [ 0, %PB_iterativeImprovement.exit.i.i.i ] ; 2 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.015.i.i.i.i295
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.aac = add nuw nsw i64 %.015.i.i.i.i295, 1    ; 4 uses
  %i.aad = icmp eq i64 %i.aac, %.sroa.33.1.i.i.i
  br i1 %i.aad, label %PB_partitionEnd.exit.i15.cont.i.i.i, label %PB_partitionEnd.exit.i15.else.i.i.i

PB_partitionEnd.exit.i15.else.i.i.i:              ; preds = %PB_partitionEnd.exit.i15.i.i.i
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aac
  %.else.val.i.i.i = load i32, ptr %i.aae, align 4, !tbaa !65, !noalias !57
  br label %PB_partitionEnd.exit.i15.cont.i.i.i

PB_partitionEnd.exit.i15.cont.i.i.i:              ; preds = %PB_partitionEnd.exit.i15.else.i.i.i, %PB_partitionEnd.exit.i15.i.i.i
  %i.aaf = phi i32 [ %.sroa.12.0.i, %PB_partitionEnd.exit.i15.i.i.i ], [ %.else.val.i.i.i, %PB_partitionEnd.exit.i15.else.i.i.i ] ; 2 uses
  %i.aag = icmp ult i32 %i.aab, %i.aaf
  br i1 %i.aag, label %PB_isLegalPartition.exit.i17.i.i.i, label %PB_greedyOptimize.exit.i.i

PB_isLegalPartition.exit.i17.i.i.i:               ; preds = %PB_partitionEnd.exit.i15.cont.i.i.i
  %i.aah = zext i32 %i.aaf to i64
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.aah
  %i.aaj = load i64, ptr %i.aai, align 8, !tbaa !59, !noalias !57
  %i.aak = zext i32 %i.aab to i64
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.aak
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !59, !noalias !57
  %i.aan = sub i64 %i.aaj, %i.aam
  %.not.i18.i.i.i = icmp ugt i64 %i.aan, %.sroa.1867.0.i
  br i1 %.not.i18.i.i.i, label %PB_greedyOptimize.exit.i.i, label %bb.am, !llvm.loop !32

PB_greedyOptimize.exit.i.i:                       ; preds = %PB_isLegalPartition.exit.i17.i.i.i, %PB_partitionEnd.exit.i15.cont.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8, !noalias !57
  br label %PB_fixedPartitionFastInner.exit.thread.i

bb.an:                                            ; preds = %bb.r
  %i.aao = add i64 %i.ik, -1
  %i.aap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.aao, i1 true)
  %i.aaq = trunc nuw nsw i64 %i.aap to i32
  %i.aar = sub nuw nsw i32 64, %i.aaq             ; 2 uses
  %i.aas = trunc i64 %i.ik to i32                 ; 2 uses
  %i.aat = tail call i32 @llvm.umin.i32(i32 %.sroa.12.0.i, i32 %i.aas) ; 2 uses
  %i.aau = add i32 %i.aat, 1
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = mul nuw i64 %i.aav, %i.ig              ; 2 uses
  %i.aax = shl i64 %i.aaw, 3                      ; 2 uses
  %i.aay = shl i64 %i.aaw, 2                      ; 2 uses
  %i.aaz = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef %i.aax) #8, !noalias !57 ; 7 uses
  %i.aba = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef %i.aay) #8, !noalias !57 ; 6 uses
  %i.abb = icmp ne ptr %i.aaz, null
  %i.abc = icmp ne ptr %i.aba, null
  %or.cond.i8.i.i = select i1 %i.abb, i1 %i.abc, i1 false
  br i1 %or.cond.i8.i.i, label %bb.ao, label %PB_fixedPartitionFastInner.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aaz, i8 -1, i64 %i.aax, i1 false), !noalias !57
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aba, i8 -1, i64 %i.aay, i1 false), !noalias !57
  store i64 0, ptr %i.aaz, align 8, !tbaa !59, !noalias !57
  store i32 0, ptr %i.aba, align 4, !tbaa !65, !noalias !57
  br i1 %i.ih, label %.lr.ph127.i.i.i, label %._crit_edge.i.i.i

.lr.ph127.i.i.i:                                  ; preds = %bb.ao
  %.not113120.i.i.i = icmp eq i32 %i.aas, 0
  br i1 %.not113120.i.i.i, label %.lr.ph132.i.preheader.i.i, label %.lr.ph123.i.preheader.i.i

.lr.ph123.i.preheader.i.i:                        ; preds = %.lr.ph127.i.i.i
  %i.abd = and i64 %i.ik, 4294967295
  br label %.lr.ph123.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge124.i.i.i, %bb.ao
  %i.abe = zext i32 %i.aat to i64
  br label %.lr.ph132.i.preheader.i.i

.lr.ph132.i.preheader.i.i:                        ; preds = %._crit_edge.i.i.i, %.lr.ph127.i.i.i
  %i.abf = phi i64 [ %i.abe, %._crit_edge.i.i.i ], [ 0, %.lr.ph127.i.i.i ] ; 2 uses
  br label %.lr.ph132.i.i.i

.lr.ph123.i.i.i:                                  ; preds = %._crit_edge124.i.i.i, %.lr.ph123.i.preheader.i.i
  %indvars.iv142.i.i.i = phi i64 [ %indvars.iv.next143.i.i.i, %._crit_edge124.i.i.i ], [ 1, %.lr.ph123.i.preheader.i.i ] ; 9 uses
  %umin36.i.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv142.i.i.i, i64 %.pre-phi.i)
  %umin37.i.i = tail call i64 @llvm.umin.i64(i64 %umin36.i.i, i64 %i.abd)
  %umax38.i.i = tail call i64 @llvm.umax.i64(i64 %umin37.i.i, i64 1) ; 2 uses
  %i.abg = trunc nuw i64 %indvars.iv142.i.i.i to i32 ; 3 uses
  %i.abh = icmp eq i64 %indvars.iv142.i.i.i, %.pre-phi.i
  %.fr.i.i.i = freeze i1 %i.abh
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %indvars.iv142.i.i.i ; 2 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv142.i.i.i ; 2 uses
  br i1 %.fr.i.i.i, label %.lr.ph.us.i.i.i, label %.lr.ph.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph123.i.i.i, %._crit_edge119.split.us.us.i.i.i
  %indvars.iv139.i.i.i = phi i64 [ %indvars.iv.next140.i.i.i, %._crit_edge119.split.us.us.i.i.i ], [ %indvars.iv142.i.i.i, %.lr.ph123.i.i.i ] ; 2 uses
  %indvars.iv143.i.i.i = phi i64 [ %indvars.iv.next144.i.i.i, %._crit_edge119.split.us.us.i.i.i ], [ 1, %.lr.ph123.i.i.i ] ; 3 uses
  %umax36.i.i = tail call i64 @llvm.umax.i64(i64 %indvars.iv139.i.i.i, i64 1)
  %i.abk = trunc i64 %indvars.iv143.i.i.i to i32  ; 2 uses
  %7 = add i32 %i.abk, -1
  %8 = mul i32 %7, %i.if
  %i.abl = mul i32 %i.if, %i.abk
  %i.abm = add i32 %i.abl, %i.abg
  %i.abn = zext i32 %i.abm to i64                 ; 2 uses
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.abn ; 2 uses
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.abn
  br label %bb.ap

bb.ap:                                            ; preds = %PB_dpBucketCost.exit.thread.us.us.i.i.i, %.lr.ph.us.i.i.i
  %indvars.iv140.i.i.i = phi i64 [ %indvars.iv.next141.i.i.i, %PB_dpBucketCost.exit.thread.us.us.i.i.i ], [ 1, %.lr.ph.us.i.i.i ] ; 3 uses
  %9 = sub nuw nsw i64 %indvars.iv142.i.i.i, %indvars.iv140.i.i.i ; 3 uses
  %i.abq = load i64, ptr %i.abi, align 8, !tbaa !59, !noalias !57
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %9
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !59, !noalias !57
  %i.abt = sub i64 %i.abq, %i.abs                 ; 3 uses
  %i.abu = icmp ugt i64 %i.abt, %.sroa.1867.0.i
  br i1 %i.abu, label %._crit_edge119.split.us.us.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %10 = trunc nuw i64 %9 to i32                   ; 2 uses
  %i.abv = add i32 %8, %10
  %i.abw = zext i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.abw
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %.not137.i.i.i = icmp eq i64 %i.aby, -1
  br i1 %.not137.i.i.i, label %PB_dpBucketCost.exit.thread.us.us.i.i.i, label %PB_dpBucketCost.exit.us.us.i.i.i

PB_dpBucketCost.exit.us.us.i.i.i:                 ; preds = %bb.aq
  %i.abz = load i64, ptr %i.abo, align 8, !tbaa !59, !noalias !57
  %i.aca = load i32, ptr %i.abj, align 4, !tbaa !65, !noalias !57
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %9
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !65, !noalias !57
  %i.acd = sub i32 %i.aca, %i.acc
  %i.ace = zext i32 %i.acd to i64
  %i.acf = icmp ult i64 %i.abt, 2
  %i.acg = add nsw i64 %i.abt, -1
  %i.ach = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.acg, i1 true)
  %i.aci = trunc nuw nsw i64 %i.ach to i32
  %i.acj = sub nuw nsw i32 64, %i.aci
  %.0.i.i.us.us.i.i.i = select i1 %i.acf, i32 0, i32 %i.acj
  %i.ack = add nuw nsw i32 %.0.i.i.us.us.i.i.i, %i.aar
  %i.acl = zext nneg i32 %i.ack to i64
  %i.acm = mul nuw nsw i64 %i.ace, %i.acl
  %i.acn = add i64 %i.acm, %i.aby                 ; 2 uses
  %i.aco = icmp ult i64 %i.acn, %i.abz
  br i1 %i.aco, label %bb.ar, label %PB_dpBucketCost.exit.thread.us.us.i.i.i

bb.ar:                                            ; preds = %PB_dpBucketCost.exit.us.us.i.i.i
  store i64 %i.acn, ptr %i.abo, align 8, !tbaa !59, !noalias !57
  store i32 %10, ptr %i.abp, align 4, !tbaa !65, !noalias !57
  br label %PB_dpBucketCost.exit.thread.us.us.i.i.i

PB_dpBucketCost.exit.thread.us.us.i.i.i:          ; preds = %bb.ar, %PB_dpBucketCost.exit.us.us.i.i.i, %bb.aq
  %indvars.iv.next141.i.i.i = add nuw i64 %indvars.iv140.i.i.i, 1
  %exitcond37.not.i.i = icmp eq i64 %indvars.iv140.i.i.i, %umax36.i.i
  br i1 %exitcond37.not.i.i, label %._crit_edge119.split.us.us.i.i.i, label %bb.ap, !llvm.loop !33

._crit_edge119.split.us.us.i.i.i:                 ; preds = %PB_dpBucketCost.exit.thread.us.us.i.i.i, %bb.ap
  %indvars.iv.next144.i.i.i = add nuw nsw i64 %indvars.iv143.i.i.i, 1
  %indvars.iv.next140.i.i.i = add nsw i64 %indvars.iv139.i.i.i, -1
  %exitcond39.not.i.i = icmp eq i64 %indvars.iv143.i.i.i, %umax38.i.i
  br i1 %exitcond39.not.i.i, label %._crit_edge124.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !34

._crit_edge124.i.i.i:                             ; preds = %._crit_edge.split.i.i.i, %._crit_edge119.split.us.us.i.i.i
  %indvars.iv.next143.i.i.i = add nuw nsw i64 %indvars.iv142.i.i.i, 1 ; 2 uses
  %exitcond.not.i10.i.i = icmp eq i64 %indvars.iv.next143.i.i.i, %i.ig
  br i1 %exitcond.not.i10.i.i, label %._crit_edge.i.i.i, label %.lr.ph123.i.i.i, !llvm.loop !35

.lr.ph.i.i.i:                                     ; preds = %.lr.ph123.i.i.i, %._crit_edge.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %._crit_edge.split.i.i.i ], [ 1, %.lr.ph123.i.i.i ] ; 4 uses
  %i.acp = add nsw i64 %indvars.iv.i.i.i, -1      ; 2 uses
  %i.acq = sub nuw nsw i64 %indvars.iv142.i.i.i, %i.acp
  %i.acr = trunc nuw i64 %i.acp to i32
  %i.acs = mul i32 %i.if, %i.acr
  %i.act = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.acu = mul i32 %i.if, %i.act
  %i.acv = add i32 %i.acu, %i.abg
  %i.acw = zext i32 %i.acv to i64                 ; 2 uses
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.acw ; 2 uses
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.acw
  br label %bb.as

bb.as:                                            ; preds = %PB_dpBucketCost.exit.thread.i.i.i, %.lr.ph.i.i.i
  %.096118.i.i.i = phi i32 [ 1, %.lr.ph.i.i.i ], [ %i.aec, %PB_dpBucketCost.exit.thread.i.i.i ] ; 3 uses
  %i.acz = sub nuw i32 %i.abg, %.096118.i.i.i     ; 3 uses
  %i.ada = load i64, ptr %i.abi, align 8, !tbaa !59, !noalias !57
  %i.adb = zext i32 %i.acz to i64                 ; 2 uses
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.adb
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !59, !noalias !57
  %i.ade = sub i64 %i.ada, %i.add                 ; 3 uses
  %i.adf = icmp ugt i64 %i.ade, %.sroa.1867.0.i
  br i1 %i.adf, label %._crit_edge.split.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.adg = add i32 %i.acz, %i.acs
  %i.adh = zext i32 %i.adg to i64
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.adh
  %i.adj = load i64, ptr %i.adi, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %i.adk = icmp ne i64 %i.adj, -1
  %i.adl = icmp ne i32 %.096118.i.i.i, 0
  %or.cond136.i.i.i = and i1 %i.adl, %i.adk
  br i1 %or.cond136.i.i.i, label %PB_dpBucketCost.exit.i.i.i, label %PB_dpBucketCost.exit.thread.i.i.i

PB_dpBucketCost.exit.i.i.i:                       ; preds = %bb.at
  %i.adm = load i64, ptr %i.acx, align 8, !tbaa !59, !noalias !57
  %i.adn = load i32, ptr %i.abj, align 4, !tbaa !65, !noalias !57
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.adb
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !65, !noalias !57
  %i.adq = sub i32 %i.adn, %i.adp
  %i.adr = zext i32 %i.adq to i64
  %i.ads = icmp ult i64 %i.ade, 2
  %i.adt = add nsw i64 %i.ade, -1
  %i.adu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.adt, i1 true)
  %i.adv = trunc nuw nsw i64 %i.adu to i32
  %i.adw = sub nuw nsw i32 64, %i.adv
  %.0.i.i.i11.i.i = select i1 %i.ads, i32 0, i32 %i.adw
  %i.adx = add nuw nsw i32 %.0.i.i.i11.i.i, %i.aar
  %i.ady = zext nneg i32 %i.adx to i64
  %i.adz = mul nuw nsw i64 %i.adr, %i.ady
  %i.aea = add i64 %i.adz, %i.adj                 ; 2 uses
  %i.aeb = icmp ult i64 %i.aea, %i.adm
  br i1 %i.aeb, label %bb.au, label %PB_dpBucketCost.exit.thread.i.i.i

bb.au:                                            ; preds = %PB_dpBucketCost.exit.i.i.i
  store i64 %i.aea, ptr %i.acx, align 8, !tbaa !59, !noalias !57
  store i32 %i.acz, ptr %i.acy, align 4, !tbaa !65, !noalias !57
  br label %PB_dpBucketCost.exit.thread.i.i.i

PB_dpBucketCost.exit.thread.i.i.i:                ; preds = %bb.au, %PB_dpBucketCost.exit.i.i.i, %bb.at
  %i.aec = shl i32 %.096118.i.i.i, 1              ; 2 uses
  %i.aed = zext i32 %i.aec to i64
  %.not114.i.i.i = icmp samesign ult i64 %i.acq, %i.aed
  br i1 %.not114.i.i.i, label %._crit_edge.split.i.i.i, label %bb.as, !llvm.loop !33

._crit_edge.split.i.i.i:                          ; preds = %PB_dpBucketCost.exit.thread.i.i.i, %bb.as
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i.i, %umax38.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge124.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !34

.lr.ph132.i.i.i:                                  ; preds = %bb.av, %.lr.ph132.i.preheader.i.i
  %.0130.i.i.i = phi i64 [ %i.aei, %bb.av ], [ %i.abf, %.lr.ph132.i.preheader.i.i ] ; 2 uses
  %.095.in129.i.i.i = phi i32 [ %i.aeh, %bb.av ], [ %.sroa.12.0.i, %.lr.ph132.i.preheader.i.i ]
  %.095.i.i.i = zext i32 %.095.in129.i.i.i to i64
  %i.aee = mul i64 %.0130.i.i.i, %i.ig
  %i.aef = getelementptr [4 x i8], ptr %i.aba, i64 %i.aee
  %i.aeg = getelementptr [4 x i8], ptr %i.aef, i64 %.095.i.i.i
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !65, !noalias !57 ; 4 uses
  %.not112.i.i.i = icmp eq i32 %i.aeh, -1
  br i1 %.not112.i.i.i, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph132.i.i.i
  %i.aei = add i64 %.0130.i.i.i, -1               ; 2 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aei
  store i32 %i.aeh, ptr %i.aej, align 4, !tbaa !65, !noalias !57
  %.not.i9.i.i = icmp eq i32 %i.aeh, 0
  br i1 %.not.i9.i.i, label %PB_fixedPartitionFastInner.exit.i, label %.lr.ph132.i.i.i, !llvm.loop !36

PB_fixedPartitionFastInner.exit.i:                ; preds = %bb.av, %PB_greedyOptimize.exit.i.thread.i
  %.0.i45.i = phi i64 [ %.sroa.33.1.i.i.i, %PB_greedyOptimize.exit.i.thread.i ], [ %i.abf, %bb.av ] ; 5 uses
  %i.aek = icmp eq i64 %.0.i45.i, 0
  br i1 %i.aek, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %PB_fixedPartitionFastInner.exit.i
  %i.ael = load i32, ptr %i.hs, align 4, !tbaa !65, !noalias !57
  %i.aem = add i64 %.0.i45.i, -1
  %i.aen = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aem, i1 false)
  %i.aeo = sub nuw nsw i64 64, %i.aen
  %i.aep = zext i32 %i.ael to i64
  %i.aeq = mul nuw nsw i64 %i.aeo, %i.aep
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %.02737.i.i = phi i64 [ 0, %bb.aw ], [ %i.aet, %bb.ay ] ; 2 uses
  %.02836.i.i = phi i64 [ %i.aeq, %bb.aw ], [ %i.afs, %bb.ay ]
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.02737.i.i
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.aet = add nuw nsw i64 %.02737.i.i, 1         ; 3 uses
  %i.aeu = icmp eq i64 %i.aet, %.0.i45.i          ; 2 uses
  br i1 %i.aeu, label %.cont.i, label %.else.i

.else.i:                                          ; preds = %bb.ax
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aet
  %.else.val.i = load i32, ptr %i.aev, align 4, !tbaa !65, !noalias !57
  br label %.cont.i

.cont.i:                                          ; preds = %.else.i, %bb.ax
  %i.aew = phi i32 [ %.sroa.12.0.i, %bb.ax ], [ %.else.val.i, %.else.i ] ; 2 uses
  %i.aex = icmp ult i32 %i.aes, %i.aew
  br i1 %i.aex, label %PB_isLegalPartition.exit.i.i, label %PB_fixedPartitionFastInner.exit.thread.i

PB_isLegalPartition.exit.i.i:                     ; preds = %.cont.i
  %i.aey = zext i32 %i.aew to i64                 ; 2 uses
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.aey
  %i.afa = load i64, ptr %i.aez, align 8, !tbaa !59, !noalias !57
  %i.afb = zext i32 %i.aes to i64                 ; 2 uses
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.afb
  %i.afd = load i64, ptr %i.afc, align 8, !tbaa !59, !noalias !57
  %i.afe = sub i64 %i.afa, %i.afd                 ; 3 uses
  %.not35.i.i = icmp ugt i64 %i.afe, %.sroa.1867.0.i
  br i1 %.not35.i.i, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %PB_isLegalPartition.exit.i.i
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.aey
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !65, !noalias !57
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.afb
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !65, !noalias !57
  %i.afj = sub i32 %i.afg, %i.afi
  %i.afk = icmp ult i64 %i.afe, 2
  %i.afl = add nsw i64 %i.afe, -1
  %i.afm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.afl, i1 true)
  %i.afn = sub nuw nsw i64 64, %i.afm
  %i.afo = zext i32 %i.afj to i64
  %i.afp = select i1 %i.afk, i64 0, i64 %i.afn
  %i.afq = mul nuw nsw i64 %i.afp, %i.afo
  %i.afr = add i64 %.02836.i.i, 24
  %i.afs = add i64 %i.afr, %i.afq                 ; 5 uses
  br i1 %i.aeu, label %PB_fixedBucketCost.exit.i, label %bb.ax

PB_fixedBucketCost.exit.i:                        ; preds = %bb.ay
  %i.aft = icmp eq i64 %i.afs, -1
  br i1 %i.aft, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.az

bb.az:                                            ; preds = %PB_fixedBucketCost.exit.i
  %i.afu = lshr i64 %i.afs, 6
  %i.afv = add i64 %i.afu, %i.afs
  %i.afw = icmp ult i64 %i.afv, %.036109.i
  br i1 %i.afw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.afx = shl nuw nsw i64 %.0.i45.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 16 %i.e, i64 %i.afx, i1 false), !noalias !57
  br label %PB_fixedPartitionFastInner.exit.thread.i

PB_fixedPartitionFastInner.exit.thread.i:         ; preds = %.lr.ph132.i.i.i, %PB_isLegalPartition.exit.i.i, %.cont.i, %bb.ba, %PB_fixedBucketCost.exit.i, %PB_fixedPartitionFastInner.exit.i, %bb.an, %PB_greedyOptimize.exit.i.i
  %.239.ph.i = phi i64 [ %.037108.i, %PB_greedyOptimize.exit.i.i ], [ %.037108.i, %PB_fixedPartitionFastInner.exit.i ], [ %.0.i45.i, %bb.ba ], [ %.037108.i, %PB_fixedBucketCost.exit.i ], [ %.037108.i, %bb.an ], [ %.037108.i, %PB_isLegalPartition.exit.i.i ], [ %.037108.i, %.cont.i ], [ %.037108.i, %.lr.ph132.i.i.i ] ; 2 uses
  %.2.ph.i = phi i64 [ %.036109.i, %PB_greedyOptimize.exit.i.i ], [ %.036109.i, %PB_fixedPartitionFastInner.exit.i ], [ %i.afs, %bb.ba ], [ %.036109.i, %PB_fixedBucketCost.exit.i ], [ %.036109.i, %bb.an ], [ %.036109.i, %PB_isLegalPartition.exit.i.i ], [ %.036109.i, %.cont.i ], [ %.036109.i, %.lr.ph132.i.i.i ] ; 2 uses
  br i1 %i.ii, label %bb.r, label %bb.bb, !llvm.loop !37

bb.bb:                                            ; preds = %PB_fixedPartitionFastInner.exit.thread.i, %bb.az
  %.037.lcssa.i = phi i64 [ %.037108.i, %bb.az ], [ %.239.ph.i, %PB_fixedPartitionFastInner.exit.thread.i ] ; 13 uses
  %.036.lcssa.i = phi i64 [ %.036109.i, %bb.az ], [ %.2.ph.i, %PB_fixedPartitionFastInner.exit.thread.i ] ; 2 uses
  %i.afy = icmp eq i64 %.037.lcssa.i, 0
  br i1 %i.afy, label %PB_fixedPartition.exit.thread141, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.afz = shl i64 %.037.lcssa.i, 3               ; 2 uses
  %i.aga = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef %i.afz) #8, !noalias !57 ; 23 uses
  %.not.i = icmp eq ptr %i.aga, null
  br i1 %.not.i, label %PB_fixedPartition.exit.thread141, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.bc
  %xtraiter427 = and i64 %.037.lcssa.i, 3         ; 3 uses
  %i.agb = icmp ult i64 %.037.lcssa.i, 4
  br i1 %i.agb, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter431 = and i64 %.037.lcssa.i, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.0111.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ahd, %.preheader.i ] ; 6 uses
end_hunk_0
