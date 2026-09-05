Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_partition_bitpack?download=true
inline.NumInlined: 87
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@EI_partitionBitpackDynGraph:bb.a
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
  %i.ys = add nuw i64 %.04756.i93.us.i.i.i.i, 1   ; 2 uses
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
  %i.yx = add nuw i64 %.04561.i105.us.i.i.i.i, 1  ; 4 uses
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
  %i.zy = add nuw i64 %i.qn, 1                    ; 2 uses
  %exitcond169.not.i.i.i.i = icmp eq i64 %i.zy, %.sroa.33.1.i.i.i
  %indvar.next.i.i.i = add nuw i64 %indvar.i.i.i, 1
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
  %i.aac = add i64 %.015.i.i.i.i295, 1            ; 4 uses
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
  %indvars.iv142.i.i.i = phi i64 [ %indvars.iv.next143.i.i.i, %._crit_edge124.i.i.i ], [ 1, %.lr.ph123.i.preheader.i.i ] ; 8 uses
  %umin36.i.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv142.i.i.i, i64 %.pre-phi.i)
  %umin37.i.i = tail call i64 @llvm.umin.i64(i64 %umin36.i.i, i64 %i.abd)
  %umax38.i.i = tail call i64 @llvm.umax.i64(i64 %umin37.i.i, i64 1) ; 2 uses
  %i.abg = trunc nuw i64 %indvars.iv142.i.i.i to i32 ; 4 uses
  %i.abh = icmp eq i64 %indvars.iv142.i.i.i, %.pre-phi.i
  %.fr.i.i.i = freeze i1 %i.abh
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %indvars.iv142.i.i.i ; 2 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv142.i.i.i ; 2 uses
  br i1 %.fr.i.i.i, label %.lr.ph.us.i.i.i, label %.lr.ph.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph123.i.i.i, %._crit_edge119.split.us.us.i.i.i
  %indvars.iv139.i.i.i = phi i64 [ %indvars.iv.next140.i.i.i, %._crit_edge119.split.us.us.i.i.i ], [ 1, %.lr.ph123.i.i.i ] ; 4 uses
  %i.abk = add nsw i64 %indvars.iv139.i.i.i, -1   ; 2 uses
  %i.abl = sub nuw nsw i64 %indvars.iv142.i.i.i, %i.abk
  %i.abm = trunc nuw i64 %i.abk to i32
  %i.abn = mul i32 %i.if, %i.abm
  %i.abo = trunc nuw i64 %indvars.iv139.i.i.i to i32
  %i.abp = mul i32 %i.if, %i.abo
  %i.abq = add i32 %i.abp, %i.abg
  %i.abr = zext i32 %i.abq to i64                 ; 2 uses
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.abr ; 2 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.abr
  br label %bb.ap

bb.ap:                                            ; preds = %PB_dpBucketCost.exit.thread.us.us.i.i.i, %.lr.ph.us.i.i.i
  %.096118.us.us.i.i.i = phi i32 [ 1, %.lr.ph.us.i.i.i ], [ %i.acx, %PB_dpBucketCost.exit.thread.us.us.i.i.i ] ; 3 uses
  %i.abu = sub nuw i32 %i.abg, %.096118.us.us.i.i.i ; 3 uses
  %i.abv = load i64, ptr %i.abi, align 8, !tbaa !59, !noalias !57
  %i.abw = zext i32 %i.abu to i64                 ; 2 uses
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.abw
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !59, !noalias !57
  %i.abz = sub i64 %i.abv, %i.aby                 ; 3 uses
  %i.aca = icmp ugt i64 %i.abz, %.sroa.1867.0.i
  br i1 %i.aca, label %._crit_edge119.split.us.us.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.acb = add i32 %i.abu, %i.abn
  %i.acc = zext i32 %i.acb to i64
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.acc
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %i.acf = icmp ne i64 %i.ace, -1
  %i.acg = icmp ne i32 %.096118.us.us.i.i.i, 0
  %or.cond135.i.i.i = and i1 %i.acg, %i.acf
  br i1 %or.cond135.i.i.i, label %PB_dpBucketCost.exit.us.us.i.i.i, label %PB_dpBucketCost.exit.thread.us.us.i.i.i

PB_dpBucketCost.exit.us.us.i.i.i:                 ; preds = %bb.aq
  %i.ach = load i64, ptr %i.abs, align 8, !tbaa !59, !noalias !57
  %i.aci = load i32, ptr %i.abj, align 4, !tbaa !65, !noalias !57
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.abw
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !65, !noalias !57
  %i.acl = sub i32 %i.aci, %i.ack
  %i.acm = zext i32 %i.acl to i64
  %i.acn = icmp ult i64 %i.abz, 2
  %i.aco = add nsw i64 %i.abz, -1
  %i.acp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.aco, i1 true)
  %i.acq = trunc nuw nsw i64 %i.acp to i32
  %i.acr = sub nuw nsw i32 64, %i.acq
  %.0.i.i.us.us.i.i.i = select i1 %i.acn, i32 0, i32 %i.acr
  %i.acs = add nuw nsw i32 %.0.i.i.us.us.i.i.i, %i.aar
  %i.act = zext nneg i32 %i.acs to i64
  %i.acu = mul nuw nsw i64 %i.acm, %i.act
  %i.acv = add i64 %i.acu, %i.ace                 ; 2 uses
  %i.acw = icmp ult i64 %i.acv, %i.ach
  br i1 %i.acw, label %bb.ar, label %PB_dpBucketCost.exit.thread.us.us.i.i.i

bb.ar:                                            ; preds = %PB_dpBucketCost.exit.us.us.i.i.i
  store i64 %i.acv, ptr %i.abs, align 8, !tbaa !59, !noalias !57
  store i32 %i.abu, ptr %i.abt, align 4, !tbaa !65, !noalias !57
  br label %PB_dpBucketCost.exit.thread.us.us.i.i.i

PB_dpBucketCost.exit.thread.us.us.i.i.i:          ; preds = %bb.ar, %PB_dpBucketCost.exit.us.us.i.i.i, %bb.aq
  %i.acx = add i32 %.096118.us.us.i.i.i, 1        ; 2 uses
  %i.acy = zext i32 %i.acx to i64
  %.not114.us.us.i.i.i = icmp samesign ult i64 %i.abl, %i.acy
  br i1 %.not114.us.us.i.i.i, label %._crit_edge119.split.us.us.i.i.i, label %bb.ap, !llvm.loop !33

._crit_edge119.split.us.us.i.i.i:                 ; preds = %PB_dpBucketCost.exit.thread.us.us.i.i.i, %bb.ap
  %indvars.iv.next140.i.i.i = add nuw nsw i64 %indvars.iv139.i.i.i, 1
  %exitcond39.not.i.i = icmp eq i64 %indvars.iv139.i.i.i, %umax38.i.i
  br i1 %exitcond39.not.i.i, label %._crit_edge124.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !34

._crit_edge124.i.i.i:                             ; preds = %._crit_edge.split.i.i.i, %._crit_edge119.split.us.us.i.i.i
  %indvars.iv.next143.i.i.i = add nuw nsw i64 %indvars.iv142.i.i.i, 1 ; 2 uses
  %exitcond.not.i10.i.i = icmp eq i64 %indvars.iv.next143.i.i.i, %i.ig
  br i1 %exitcond.not.i10.i.i, label %._crit_edge.i.i.i, label %.lr.ph123.i.i.i, !llvm.loop !35

.lr.ph.i.i.i:                                     ; preds = %.lr.ph123.i.i.i, %._crit_edge.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %._crit_edge.split.i.i.i ], [ 1, %.lr.ph123.i.i.i ] ; 4 uses
  %i.acz = add nsw i64 %indvars.iv.i.i.i, -1      ; 2 uses
  %i.ada = sub nuw nsw i64 %indvars.iv142.i.i.i, %i.acz
  %i.adb = trunc nuw i64 %i.acz to i32
  %i.adc = mul i32 %i.if, %i.adb
  %i.add = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ade = mul i32 %i.if, %i.add
  %i.adf = add i32 %i.ade, %i.abg
  %i.adg = zext i32 %i.adf to i64                 ; 2 uses
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.adg ; 2 uses
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.adg
  br label %bb.as

bb.as:                                            ; preds = %PB_dpBucketCost.exit.thread.i.i.i, %.lr.ph.i.i.i
  %.096118.i.i.i = phi i32 [ 1, %.lr.ph.i.i.i ], [ %i.aem, %PB_dpBucketCost.exit.thread.i.i.i ] ; 3 uses
  %i.adj = sub nuw i32 %i.abg, %.096118.i.i.i     ; 3 uses
  %i.adk = load i64, ptr %i.abi, align 8, !tbaa !59, !noalias !57
  %i.adl = zext i32 %i.adj to i64                 ; 2 uses
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.adl
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !59, !noalias !57
  %i.ado = sub i64 %i.adk, %i.adn                 ; 3 uses
  %i.adp = icmp ugt i64 %i.ado, %.sroa.1867.0.i
  br i1 %i.adp, label %._crit_edge.split.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.adq = add i32 %i.adj, %i.adc
  %i.adr = zext i32 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.adr
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %i.adu = icmp ne i64 %i.adt, -1
  %i.adv = icmp ne i32 %.096118.i.i.i, 0
  %or.cond136.i.i.i = and i1 %i.adv, %i.adu
  br i1 %or.cond136.i.i.i, label %PB_dpBucketCost.exit.i.i.i, label %PB_dpBucketCost.exit.thread.i.i.i

PB_dpBucketCost.exit.i.i.i:                       ; preds = %bb.at
  %i.adw = load i64, ptr %i.adh, align 8, !tbaa !59, !noalias !57
  %i.adx = load i32, ptr %i.abj, align 4, !tbaa !65, !noalias !57
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.adl
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !65, !noalias !57
  %i.aea = sub i32 %i.adx, %i.adz
  %i.aeb = zext i32 %i.aea to i64
  %i.aec = icmp ult i64 %i.ado, 2
  %i.aed = add nsw i64 %i.ado, -1
  %i.aee = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.aed, i1 true)
  %i.aef = trunc nuw nsw i64 %i.aee to i32
  %i.aeg = sub nuw nsw i32 64, %i.aef
  %.0.i.i.i11.i.i = select i1 %i.aec, i32 0, i32 %i.aeg
  %i.aeh = add nuw nsw i32 %.0.i.i.i11.i.i, %i.aar
  %i.aei = zext nneg i32 %i.aeh to i64
  %i.aej = mul nuw nsw i64 %i.aeb, %i.aei
  %i.aek = add i64 %i.aej, %i.adt                 ; 2 uses
  %i.ael = icmp ult i64 %i.aek, %i.adw
  br i1 %i.ael, label %bb.au, label %PB_dpBucketCost.exit.thread.i.i.i

bb.au:                                            ; preds = %PB_dpBucketCost.exit.i.i.i
  store i64 %i.aek, ptr %i.adh, align 8, !tbaa !59, !noalias !57
  store i32 %i.adj, ptr %i.adi, align 4, !tbaa !65, !noalias !57
  br label %PB_dpBucketCost.exit.thread.i.i.i

PB_dpBucketCost.exit.thread.i.i.i:                ; preds = %bb.au, %PB_dpBucketCost.exit.i.i.i, %bb.at
  %i.aem = shl i32 %.096118.i.i.i, 1              ; 2 uses
  %i.aen = zext i32 %i.aem to i64
  %.not114.i.i.i = icmp samesign ult i64 %i.ada, %i.aen
  br i1 %.not114.i.i.i, label %._crit_edge.split.i.i.i, label %bb.as, !llvm.loop !33

._crit_edge.split.i.i.i:                          ; preds = %PB_dpBucketCost.exit.thread.i.i.i, %bb.as
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i.i, %umax38.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge124.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !34

.lr.ph132.i.i.i:                                  ; preds = %bb.av, %.lr.ph132.i.preheader.i.i
  %.0130.i.i.i = phi i64 [ %i.aes, %bb.av ], [ %i.abf, %.lr.ph132.i.preheader.i.i ] ; 2 uses
  %.095.in129.i.i.i = phi i32 [ %i.aer, %bb.av ], [ %.sroa.12.0.i, %.lr.ph132.i.preheader.i.i ]
  %.095.i.i.i = zext i32 %.095.in129.i.i.i to i64
  %i.aeo = mul i64 %.0130.i.i.i, %i.ig
  %i.aep = getelementptr [4 x i8], ptr %i.aba, i64 %i.aeo
  %i.aeq = getelementptr [4 x i8], ptr %i.aep, i64 %.095.i.i.i
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !65, !noalias !57 ; 4 uses
  %.not112.i.i.i = icmp eq i32 %i.aer, -1
  br i1 %.not112.i.i.i, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph132.i.i.i
  %i.aes = add i64 %.0130.i.i.i, -1               ; 2 uses
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aes
  store i32 %i.aer, ptr %i.aet, align 4, !tbaa !65, !noalias !57
  %.not.i9.i.i = icmp eq i32 %i.aer, 0
  br i1 %.not.i9.i.i, label %PB_fixedPartitionFastInner.exit.i, label %.lr.ph132.i.i.i, !llvm.loop !36

PB_fixedPartitionFastInner.exit.i:                ; preds = %bb.av, %PB_greedyOptimize.exit.i.thread.i
  %.0.i45.i = phi i64 [ %.sroa.33.1.i.i.i, %PB_greedyOptimize.exit.i.thread.i ], [ %i.abf, %bb.av ] ; 5 uses
  %i.aeu = icmp eq i64 %.0.i45.i, 0
  br i1 %i.aeu, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %PB_fixedPartitionFastInner.exit.i
  %i.aev = load i32, ptr %i.hs, align 4, !tbaa !65, !noalias !57
  %i.aew = add i64 %.0.i45.i, -1
  %i.aex = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aew, i1 false)
  %i.aey = sub nuw nsw i64 64, %i.aex
  %i.aez = zext i32 %i.aev to i64
  %i.afa = mul nuw nsw i64 %i.aey, %i.aez
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %.02737.i.i = phi i64 [ 0, %bb.aw ], [ %i.afd, %bb.ay ] ; 2 uses
  %.02836.i.i = phi i64 [ %i.afa, %bb.aw ], [ %i.agc, %bb.ay ]
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.02737.i.i
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.afd = add nuw i64 %.02737.i.i, 1             ; 3 uses
  %i.afe = icmp eq i64 %i.afd, %.0.i45.i          ; 2 uses
  br i1 %i.afe, label %.cont.i, label %.else.i

.else.i:                                          ; preds = %bb.ax
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.afd
  %.else.val.i = load i32, ptr %i.aff, align 4, !tbaa !65, !noalias !57
  br label %.cont.i

.cont.i:                                          ; preds = %.else.i, %bb.ax
  %i.afg = phi i32 [ %.sroa.12.0.i, %bb.ax ], [ %.else.val.i, %.else.i ] ; 2 uses
  %i.afh = icmp ult i32 %i.afc, %i.afg
  br i1 %i.afh, label %PB_isLegalPartition.exit.i.i, label %PB_fixedPartitionFastInner.exit.thread.i

PB_isLegalPartition.exit.i.i:                     ; preds = %.cont.i
  %i.afi = zext i32 %i.afg to i64                 ; 2 uses
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.afi
  %i.afk = load i64, ptr %i.afj, align 8, !tbaa !59, !noalias !57
  %i.afl = zext i32 %i.afc to i64                 ; 2 uses
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.afl
  %i.afn = load i64, ptr %i.afm, align 8, !tbaa !59, !noalias !57
  %i.afo = sub i64 %i.afk, %i.afn                 ; 3 uses
  %.not35.i.i = icmp ugt i64 %i.afo, %.sroa.1867.0.i
  br i1 %.not35.i.i, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %PB_isLegalPartition.exit.i.i
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.afi
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !65, !noalias !57
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.afl
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !65, !noalias !57
  %i.aft = sub i32 %i.afq, %i.afs
  %i.afu = icmp ult i64 %i.afo, 2
  %i.afv = add nsw i64 %i.afo, -1
  %i.afw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.afv, i1 true)
  %i.afx = sub nuw nsw i64 64, %i.afw
  %i.afy = zext i32 %i.aft to i64
  %i.afz = select i1 %i.afu, i64 0, i64 %i.afx
  %i.aga = mul nuw nsw i64 %i.afz, %i.afy
  %i.agb = add i64 %.02836.i.i, 24
  %i.agc = add i64 %i.agb, %i.aga                 ; 5 uses
  br i1 %i.afe, label %PB_fixedBucketCost.exit.i, label %bb.ax

PB_fixedBucketCost.exit.i:                        ; preds = %bb.ay
  %i.agd = icmp eq i64 %i.agc, -1
  br i1 %i.agd, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.az

bb.az:                                            ; preds = %PB_fixedBucketCost.exit.i
  %i.age = lshr i64 %i.agc, 6
  %i.agf = add i64 %i.age, %i.agc
  %i.agg = icmp ult i64 %i.agf, %.036109.i
  br i1 %i.agg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.agh = shl nuw i64 %.0.i45.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 16 %i.e, i64 %i.agh, i1 false), !noalias !57
  br label %PB_fixedPartitionFastInner.exit.thread.i

PB_fixedPartitionFastInner.exit.thread.i:         ; preds = %.lr.ph132.i.i.i, %PB_isLegalPartition.exit.i.i, %.cont.i, %bb.ba, %PB_fixedBucketCost.exit.i, %PB_fixedPartitionFastInner.exit.i, %bb.an, %PB_greedyOptimize.exit.i.i
  %.239.ph.i = phi i64 [ %.037108.i, %PB_greedyOptimize.exit.i.i ], [ %.037108.i, %PB_fixedPartitionFastInner.exit.i ], [ %.0.i45.i, %bb.ba ], [ %.037108.i, %PB_fixedBucketCost.exit.i ], [ %.037108.i, %bb.an ], [ %.037108.i, %PB_isLegalPartition.exit.i.i ], [ %.037108.i, %.cont.i ], [ %.037108.i, %.lr.ph132.i.i.i ] ; 2 uses
  %.2.ph.i = phi i64 [ %.036109.i, %PB_greedyOptimize.exit.i.i ], [ %.036109.i, %PB_fixedPartitionFastInner.exit.i ], [ %i.agc, %bb.ba ], [ %.036109.i, %PB_fixedBucketCost.exit.i ], [ %.036109.i, %bb.an ], [ %.036109.i, %PB_isLegalPartition.exit.i.i ], [ %.036109.i, %.cont.i ], [ %.036109.i, %.lr.ph132.i.i.i ] ; 2 uses
  br i1 %i.ii, label %bb.r, label %bb.bb, !llvm.loop !37

bb.bb:                                            ; preds = %PB_fixedPartitionFastInner.exit.thread.i, %bb.az
  %.037.lcssa.i = phi i64 [ %.037108.i, %bb.az ], [ %.239.ph.i, %PB_fixedPartitionFastInner.exit.thread.i ] ; 13 uses
  %.036.lcssa.i = phi i64 [ %.036109.i, %bb.az ], [ %.2.ph.i, %PB_fixedPartitionFastInner.exit.thread.i ] ; 2 uses
  %i.agi = icmp eq i64 %.037.lcssa.i, 0
  br i1 %i.agi, label %PB_fixedPartition.exit.thread141, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.agj = shl i64 %.037.lcssa.i, 3               ; 2 uses
  %i.agk = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef %i.agj) #8, !noalias !57 ; 23 uses
  %.not.i = icmp eq ptr %i.agk, null
  br i1 %.not.i, label %PB_fixedPartition.exit.thread141, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.bc
  %xtraiter427 = and i64 %.037.lcssa.i, 3         ; 3 uses
  %i.agl = icmp ult i64 %.037.lcssa.i, 4
  br i1 %i.agl, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter431 = and i64 %.037.lcssa.i, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.0111.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ahn, %.preheader.i ] ; 6 uses
  %niter432 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter432.next.3, %.preheader.i ]
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0111.i
  %i.agn = load i32, ptr %i.agm, align 16, !tbaa !65, !noalias !57
  %i.ago = zext i32 %i.agn to i64
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.ago
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !59, !noalias !57
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %.0111.i
  store i64 %i.agq, ptr %i.agr, align 8, !tbaa !59, !noalias !57
  %i.ags = or disjoint i64 %.0111.i, 1            ; 2 uses
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ags
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !65, !noalias !57
  %i.agv = zext i32 %i.agu to i64
  %i.agw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.agv
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !59, !noalias !57
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.ags
  store i64 %i.agx, ptr %i.agy, align 8, !tbaa !59, !noalias !57
  %i.agz = or disjoint i64 %.0111.i, 2            ; 2 uses
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.agz
  %i.ahb = load i32, ptr %i.aha, align 8, !tbaa !65, !noalias !57
  %i.ahc = zext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.ahc
  %i.ahe = load i64, ptr %i.ahd, align 8, !tbaa !59, !noalias !57
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.agz
  store i64 %i.ahe, ptr %i.ahf, align 8, !tbaa !59, !noalias !57
  %i.ahg = or disjoint i64 %.0111.i, 3            ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ahg
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !65, !noalias !57
  %i.ahj = zext i32 %i.ahi to i64
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.ahj
  %i.ahl = load i64, ptr %i.ahk, align 8, !tbaa !59, !noalias !57
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.ahg
  store i64 %i.ahl, ptr %i.ahm, align 8, !tbaa !59, !noalias !57
  %i.ahn = add nuw i64 %.0111.i, 4                ; 2 uses
  %niter432.next.3 = add nuw i64 %niter432, 4     ; 2 uses
  %niter432.ncmp.3 = icmp eq i64 %niter432.next.3, %unroll_iter431
  br i1 %niter432.ncmp.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !38

PB_fixedPartition.exit.thread141:                 ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8, !noalias !57
  br label %PB_fixedPartition.exit.thread

PB_fixedPartition.exit.thread:                    ; preds = %bb.m, %bb.l, %bb.h, %bb.g, %PB_fixedPartition.exit.thread141
  %i.aho = tail call { i32, i64 } @ZL_Edge_setDestination(ptr noundef %i.i, i32 2) #8 ; 2 uses
  %i.ahp = extractvalue { i32, i64 } %i.aho, 0    ; 2 uses
  %.not128 = icmp eq i32 %i.ahp, 0
  br i1 %.not128, label %bb.bq, label %bb.bd, !prof !56

bb.bd:                                            ; preds = %PB_fixedPartition.exit.thread
  %i.ahq = extractvalue { i32, i64 } %i.aho, 1
  %i.ahr = inttoptr i64 %i.ahq to ptr
  %i.ahs = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.ahp, ptr %i.ahr, ptr nonnull @EI_partitionBitpackDynGraph.__zl_static_error_info.10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 949, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8 ; 2 uses
  %i.aht = extractvalue { i32, ptr } %i.ahs, 0
  %i.ahu = extractvalue { i32, ptr } %i.ahs, 1
  %i.ahv = ptrtoint ptr %i.ahu to i64
  br label %bb.bq

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod429.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod429.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.0111.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ahn, %.unr-lcssa ]
  %lcmp.mod430 = icmp ne i64 %xtraiter427, 0
  tail call void @llvm.assume(i1 %lcmp.mod430)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.0111.i.epil = phi i64 [ %i.aic, %.preheader.i.epil ], [ %.0111.i.epil.init, %.preheader.i.epil.preheader ] ; 3 uses
  %epil.iter428 = phi i64 [ %epil.iter428.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0111.i.epil
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !65, !noalias !57
  %i.ahy = zext i32 %i.ahx to i64
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.ahy
  %i.aia = load i64, ptr %i.ahz, align 8, !tbaa !59, !noalias !57
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %.0111.i.epil
  store i64 %i.aia, ptr %i.aib, align 8, !tbaa !59, !noalias !57
end_hunk_0
