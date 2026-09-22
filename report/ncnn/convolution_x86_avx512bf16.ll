Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %i.bcm, label %.preheader1560.lr.ph.i, label %.preheader1564.i

.preheader1565.thread.i:                          ; preds = %.preheader1561.lr.ph.i
  %scevgep2316.i = getelementptr i8, ptr %i.bao, i64 %i.aot ; 2 uses
  %scevgep2319.i = getelementptr i8, ptr %scevgep2316.i, i64 %i.bal ; 2 uses
  %scevgep2322.i = getelementptr i8, ptr %scevgep2316.i, i64 %i.ban ; 2 uses
  br i1 %i.apd, label %.preheader1560.preheader.i, label %.preheader1564.i

.preheader1560.lr.ph.i:                           ; preds = %.preheader1565.i
  br i1 %i.aoe, label %.preheader1560.us.i, label %.preheader1560.preheader.i

.preheader1560.preheader.i:                       ; preds = %.preheader1560.lr.ph.i, %.preheader1565.thread.i
  %.01151.lcssa25602571.i = phi ptr [ %.01151.lcssa.i, %.preheader1560.lr.ph.i ], [ %scevgep2319.i, %.preheader1565.thread.i ]
  %.01147.lcssa25612570.i = phi ptr [ %.01147.lcssa.i, %.preheader1560.lr.ph.i ], [ %scevgep2322.i, %.preheader1565.thread.i ]
  %.01136.lcssa25622569.i = phi ptr [ %.01136.lcssa.i, %.preheader1560.lr.ph.i ], [ %i.bbh, %.preheader1565.thread.i ]
  %.01131.lcssa25632568.i = phi i32 [ %.01131.lcssa.i, %.preheader1560.lr.ph.i ], [ %i.aoy, %.preheader1565.thread.i ] ; 2 uses
  %i.bcn = sub i32 %i.aoz, %.01131.lcssa25632568.i ; 2 uses
  %i.bco = lshr i32 %i.bcn, 1
  %i.bcp = and i32 %i.bco, 2147483644
  %narrow2436.i = add nuw i32 %i.bcp, 4
  %i.bcq = zext i32 %narrow2436.i to i64
  %i.bcr = mul nsw i64 %i.bcq, %i.aoi             ; 2 uses
  %scevgep2328.i = getelementptr i8, ptr %.01151.lcssa25602571.i, i64 %i.bcr
  %scevgep2329.i = getelementptr i8, ptr %.01147.lcssa25612570.i, i64 %i.bcr
  %i.bcs = add i32 %.01131.lcssa25632568.i, 8
  %i.bct = and i32 %i.bcn, -8
  %i.bcu = add i32 %i.bcs, %i.bct
  br label %.preheader1564.i

.preheader1560.us.i:                              ; preds = %.preheader1560.lr.ph.i, %._crit_edge1874.us.i
  %.111321879.us.i = phi i32 [ %i.bdv, %._crit_edge1874.us.i ], [ %.01131.lcssa.i, %.preheader1560.lr.ph.i ]
  %.211381878.us.i = phi ptr [ %.lcssa461, %._crit_edge1874.us.i ], [ %.01136.lcssa.i, %.preheader1560.lr.ph.i ] ; 2 uses
  %.111481877.us.i = phi ptr [ %i.bdu, %._crit_edge1874.us.i ], [ %.01147.lcssa.i, %.preheader1560.lr.ph.i ] ; 4 uses
  %.111521876.us.i = phi ptr [ %i.bdt, %._crit_edge1874.us.i ], [ %.01151.lcssa.i, %.preheader1560.lr.ph.i ] ; 4 uses
  br i1 %i.apg, label %.epil.preheader587, label %.preheader1560.us.i.new

.preheader1560.us.i.new:                          ; preds = %.preheader1560.us.i, %.preheader1560.us.i.new
  %indvars.iv2330.i = phi i64 [ %indvars.iv.next2331.i.1, %.preheader1560.us.i.new ], [ 0, %.preheader1560.us.i ] ; 4 uses
  %.311391872.us.i = phi ptr [ %i.bdk, %.preheader1560.us.i.new ], [ %.211381878.us.i, %.preheader1560.us.i ] ; 5 uses
  %niter594 = phi i64 [ %niter594.next.1, %.preheader1560.us.i.new ], [ 0, %.preheader1560.us.i ]
  %i.bcv = getelementptr inbounds nuw [4 x i8], ptr %.111521876.us.i, i64 %indvars.iv2330.i
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %.111481877.us.i, i64 %indvars.iv2330.i
  %i.bcx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bcv, <8 x i32> %i.anz, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bcy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bcw, <8 x i32> %i.anz, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bcz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bcx)
  store <8 x bfloat> %i.bcz, ptr %.311391872.us.i, align 1, !tbaa !18
  %i.bda = getelementptr inbounds nuw i8, ptr %.311391872.us.i, i64 16
  %i.bdb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bcy)
  store <8 x bfloat> %i.bdb, ptr %i.bda, align 1, !tbaa !18
  %i.bdc = getelementptr inbounds nuw i8, ptr %.311391872.us.i, i64 32
  %indvars.iv.next2331.i = or disjoint i64 %indvars.iv2330.i, 1 ; 2 uses
  %i.bdd = getelementptr inbounds nuw [4 x i8], ptr %.111521876.us.i, i64 %indvars.iv.next2331.i
  %i.bde = getelementptr inbounds nuw [4 x i8], ptr %.111481877.us.i, i64 %indvars.iv.next2331.i
  %i.bdf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bdd, <8 x i32> %i.anz, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bde, <8 x i32> %i.anz, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bdf)
  store <8 x bfloat> %i.bdh, ptr %i.bdc, align 1, !tbaa !18
  %i.bdi = getelementptr inbounds nuw i8, ptr %.311391872.us.i, i64 48
  %i.bdj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bdg)
  store <8 x bfloat> %i.bdj, ptr %i.bdi, align 1, !tbaa !18
  %i.bdk = getelementptr inbounds nuw i8, ptr %.311391872.us.i, i64 64 ; 3 uses
  %indvars.iv.next2331.i.1 = add nuw nsw i64 %indvars.iv2330.i, 2 ; 2 uses
  %niter594.next.1 = add i64 %niter594, 2         ; 2 uses
  %niter594.ncmp.1 = icmp eq i64 %niter594.next.1, %unroll_iter593
  br i1 %niter594.ncmp.1, label %._crit_edge1874.us.i.unr-lcssa, label %.preheader1560.us.i.new, !llvm.loop !98

._crit_edge1874.us.i.unr-lcssa:                   ; preds = %.preheader1560.us.i.new
  br i1 %lcmp.mod590.not, label %._crit_edge1874.us.i, label %.epil.preheader587

.epil.preheader587:                               ; preds = %._crit_edge1874.us.i.unr-lcssa, %.preheader1560.us.i
  %indvars.iv2330.i.epil.init = phi i64 [ 0, %.preheader1560.us.i ], [ %indvars.iv.next2331.i.1, %._crit_edge1874.us.i.unr-lcssa ] ; 2 uses
  %.311391872.us.i.epil.init = phi ptr [ %.211381878.us.i, %.preheader1560.us.i ], [ %i.bdk, %._crit_edge1874.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod592)
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %.111521876.us.i, i64 %indvars.iv2330.i.epil.init
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %.111481877.us.i, i64 %indvars.iv2330.i.epil.init
  %i.bdn = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bdl, <8 x i32> %i.anz, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdo = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bdm, <8 x i32> %i.anz, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bdn)
  store <8 x bfloat> %i.bdp, ptr %.311391872.us.i.epil.init, align 1, !tbaa !18
  %i.bdq = getelementptr inbounds nuw i8, ptr %.311391872.us.i.epil.init, i64 16
  %i.bdr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bdo)
  store <8 x bfloat> %i.bdr, ptr %i.bdq, align 1, !tbaa !18
  %i.bds = getelementptr inbounds nuw i8, ptr %.311391872.us.i.epil.init, i64 32
  br label %._crit_edge1874.us.i

._crit_edge1874.us.i:                             ; preds = %._crit_edge1874.us.i.unr-lcssa, %.epil.preheader587
  %.lcssa461 = phi ptr [ %i.bdk, %._crit_edge1874.us.i.unr-lcssa ], [ %i.bds, %.epil.preheader587 ] ; 2 uses
  %i.bdt = getelementptr inbounds nuw [4 x i8], ptr %.111521876.us.i, i64 %i.aoi ; 2 uses
  %i.bdu = getelementptr inbounds nuw [4 x i8], ptr %.111481877.us.i, i64 %i.aoi ; 2 uses
  %i.bdv = add nuw nsw i32 %.111321879.us.i, 8    ; 3 uses
  %i.bdw = or disjoint i32 %i.bdv, 7
  %i.bdx = icmp slt i32 %i.bdw, %2
  br i1 %i.bdx, label %.preheader1560.us.i, label %.preheader1564.i, !llvm.loop !99

.preheader1564.i:                                 ; preds = %._crit_edge1874.us.i, %.preheader1560.preheader.i, %.preheader1565.thread.i, %.preheader1565.i
  %.11152.lcssa.i = phi ptr [ %.01151.lcssa.i, %.preheader1565.i ], [ %scevgep2319.i, %.preheader1565.thread.i ], [ %scevgep2328.i, %.preheader1560.preheader.i ], [ %i.bdt, %._crit_edge1874.us.i ] ; 2 uses
  %.11148.lcssa.i = phi ptr [ %.01147.lcssa.i, %.preheader1565.i ], [ %scevgep2322.i, %.preheader1565.thread.i ], [ %scevgep2329.i, %.preheader1560.preheader.i ], [ %i.bdu, %._crit_edge1874.us.i ] ; 2 uses
  %.21138.lcssa.i = phi ptr [ %.01136.lcssa.i, %.preheader1565.i ], [ %i.bbh, %.preheader1565.thread.i ], [ %.01136.lcssa25622569.i, %.preheader1560.preheader.i ], [ %.lcssa461, %._crit_edge1874.us.i ] ; 2 uses
  %.11132.lcssa.i = phi i32 [ %.01131.lcssa.i, %.preheader1565.i ], [ %i.aoy, %.preheader1565.thread.i ], [ %i.bcu, %.preheader1560.preheader.i ], [ %i.bdv, %._crit_edge1874.us.i ] ; 3 uses
  %i.bdy = or disjoint i32 %.11132.lcssa.i, 3
  %i.bdz = icmp slt i32 %i.bdy, %2
  br i1 %i.bdz, label %.preheader1559.lr.ph.i, label %.preheader1563.i

.preheader1559.lr.ph.i:                           ; preds = %.preheader1564.i
  br i1 %i.aoe, label %.preheader1559.us.i, label %._crit_edge1930.split.i

.preheader1559.us.i:                              ; preds = %.preheader1559.lr.ph.i, %._crit_edge1890.us.i
  %.211331895.us.i = phi i32 [ %i.bfg, %._crit_edge1890.us.i ], [ %.11132.lcssa.i, %.preheader1559.lr.ph.i ]
  %.411401894.us.i = phi ptr [ %.lcssa465, %._crit_edge1890.us.i ], [ %.21138.lcssa.i, %.preheader1559.lr.ph.i ] ; 2 uses
  %.211491893.us.i = phi ptr [ %i.bff, %._crit_edge1890.us.i ], [ %.11148.lcssa.i, %.preheader1559.lr.ph.i ] ; 4 uses
  %.211531892.us.i = phi ptr [ %i.bfe, %._crit_edge1890.us.i ], [ %.11152.lcssa.i, %.preheader1559.lr.ph.i ] ; 4 uses
  br i1 %i.aph, label %.epil.preheader595, label %.preheader1559.us.i.new

.preheader1559.us.i.new:                          ; preds = %.preheader1559.us.i, %.preheader1559.us.i.new
  %indvars.iv2337.i = phi i64 [ %indvars.iv.next2338.i.1, %.preheader1559.us.i.new ], [ 0, %.preheader1559.us.i ] ; 4 uses
  %.511411888.us.i = phi ptr [ %i.bet, %.preheader1559.us.i.new ], [ %.411401894.us.i, %.preheader1559.us.i ] ; 3 uses
  %niter602 = phi i64 [ %niter602.next.1, %.preheader1559.us.i.new ], [ 0, %.preheader1559.us.i ]
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %.211531892.us.i, i64 %indvars.iv2337.i
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %.211491893.us.i, i64 %indvars.iv2337.i
  %i.bec = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bea, <4 x i32> %i.anw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bed = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.beb, <4 x i32> %i.anw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bee = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bec)
  %i.bef = bitcast <8 x bfloat> %i.bee to <2 x i64>
  %i.beg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bed)
  %i.beh = bitcast <8 x bfloat> %i.beg to <2 x i64>
  %i.bei = shufflevector <2 x i64> %i.bef, <2 x i64> %i.beh, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bei, ptr %.511411888.us.i, align 1, !tbaa !18
  %i.bej = getelementptr inbounds nuw i8, ptr %.511411888.us.i, i64 16
  %indvars.iv.next2338.i = or disjoint i64 %indvars.iv2337.i, 1 ; 2 uses
  %i.bek = getelementptr inbounds nuw [4 x i8], ptr %.211531892.us.i, i64 %indvars.iv.next2338.i
  %i.bel = getelementptr inbounds nuw [4 x i8], ptr %.211491893.us.i, i64 %indvars.iv.next2338.i
  %i.bem = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bek, <4 x i32> %i.anw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ben = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bel, <4 x i32> %i.anw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.beo = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bem)
  %i.bep = bitcast <8 x bfloat> %i.beo to <2 x i64>
  %i.beq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.ben)
  %i.ber = bitcast <8 x bfloat> %i.beq to <2 x i64>
  %i.bes = shufflevector <2 x i64> %i.bep, <2 x i64> %i.ber, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bes, ptr %i.bej, align 1, !tbaa !18
  %i.bet = getelementptr inbounds nuw i8, ptr %.511411888.us.i, i64 32 ; 3 uses
  %indvars.iv.next2338.i.1 = add nuw nsw i64 %indvars.iv2337.i, 2 ; 2 uses
  %niter602.next.1 = add i64 %niter602, 2         ; 2 uses
  %niter602.ncmp.1 = icmp eq i64 %niter602.next.1, %unroll_iter601
  br i1 %niter602.ncmp.1, label %._crit_edge1890.us.i.unr-lcssa, label %.preheader1559.us.i.new, !llvm.loop !100

._crit_edge1890.us.i.unr-lcssa:                   ; preds = %.preheader1559.us.i.new
  br i1 %lcmp.mod598.not, label %._crit_edge1890.us.i, label %.epil.preheader595

.epil.preheader595:                               ; preds = %._crit_edge1890.us.i.unr-lcssa, %.preheader1559.us.i
  %indvars.iv2337.i.epil.init = phi i64 [ 0, %.preheader1559.us.i ], [ %indvars.iv.next2338.i.1, %._crit_edge1890.us.i.unr-lcssa ] ; 2 uses
  %.511411888.us.i.epil.init = phi ptr [ %.411401894.us.i, %.preheader1559.us.i ], [ %i.bet, %._crit_edge1890.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod600)
  %i.beu = getelementptr inbounds nuw [4 x i8], ptr %.211531892.us.i, i64 %indvars.iv2337.i.epil.init
  %i.bev = getelementptr inbounds nuw [4 x i8], ptr %.211491893.us.i, i64 %indvars.iv2337.i.epil.init
  %i.bew = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.beu, <4 x i32> %i.anw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bex = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bev, <4 x i32> %i.anw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bey = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bew)
  %i.bez = bitcast <8 x bfloat> %i.bey to <2 x i64>
  %i.bfa = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bex)
  %i.bfb = bitcast <8 x bfloat> %i.bfa to <2 x i64>
  %i.bfc = shufflevector <2 x i64> %i.bez, <2 x i64> %i.bfb, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bfc, ptr %.511411888.us.i.epil.init, align 1, !tbaa !18
  %i.bfd = getelementptr inbounds nuw i8, ptr %.511411888.us.i.epil.init, i64 16
  br label %._crit_edge1890.us.i

._crit_edge1890.us.i:                             ; preds = %._crit_edge1890.us.i.unr-lcssa, %.epil.preheader595
  %.lcssa465 = phi ptr [ %i.bet, %._crit_edge1890.us.i.unr-lcssa ], [ %i.bfd, %.epil.preheader595 ] ; 2 uses
  %i.bfe = getelementptr inbounds nuw [4 x i8], ptr %.211531892.us.i, i64 %i.aok ; 2 uses
  %i.bff = getelementptr inbounds nuw [4 x i8], ptr %.211491893.us.i, i64 %i.aok ; 2 uses
  %i.bfg = add nuw nsw i32 %.211331895.us.i, 4    ; 3 uses
  %i.bfh = or disjoint i32 %i.bfg, 3
  %i.bfi = icmp slt i32 %i.bfh, %2
  br i1 %i.bfi, label %.preheader1559.us.i, label %.preheader1563.i, !llvm.loop !101

.preheader1563.i:                                 ; preds = %._crit_edge1890.us.i, %.preheader1564.i
  %.21153.lcssa.i = phi ptr [ %.11152.lcssa.i, %.preheader1564.i ], [ %i.bfe, %._crit_edge1890.us.i ] ; 2 uses
  %.21149.lcssa.i = phi ptr [ %.11148.lcssa.i, %.preheader1564.i ], [ %i.bff, %._crit_edge1890.us.i ] ; 2 uses
  %.41140.lcssa.i = phi ptr [ %.21138.lcssa.i, %.preheader1564.i ], [ %.lcssa465, %._crit_edge1890.us.i ] ; 2 uses
  %.21133.lcssa.i = phi i32 [ %.11132.lcssa.i, %.preheader1564.i ], [ %i.bfg, %._crit_edge1890.us.i ] ; 3 uses
  %i.bfj = or disjoint i32 %.21133.lcssa.i, 1
  %i.bfk = icmp slt i32 %i.bfj, %2
  br i1 %i.bfk, label %.preheader1558.lr.ph.i, label %.preheader1562.i

.preheader1558.lr.ph.i:                           ; preds = %.preheader1563.i
  br i1 %i.aoe, label %iter.check351, label %._crit_edge1930.split.i

iter.check351:                                    ; preds = %.preheader1558.lr.ph.i, %._crit_edge1910.us.i
  %.311341915.us.i = phi i32 [ %i.bha, %._crit_edge1910.us.i ], [ %.21133.lcssa.i, %.preheader1558.lr.ph.i ]
  %.611421914.us.i = phi ptr [ %.lcssa268, %._crit_edge1910.us.i ], [ %.41140.lcssa.i, %.preheader1558.lr.ph.i ] ; 5 uses
  %.311501913.us.i = phi ptr [ %i.bgz, %._crit_edge1910.us.i ], [ %.21149.lcssa.i, %.preheader1558.lr.ph.i ] ; 4 uses
  %.311541912.us.i = phi ptr [ %i.bgy, %._crit_edge1910.us.i ], [ %.21153.lcssa.i, %.preheader1558.lr.ph.i ] ; 4 uses
  br i1 %min.iters.check334, label %vec.epilog.scalar.ph352.preheader, label %vector.main.loop.iter.check335

vector.main.loop.iter.check335:                   ; preds = %iter.check351
  br i1 %min.iters.check336, label %vec.epilog.ph355, label %vector.ph337

vector.ph337:                                     ; preds = %vector.main.loop.iter.check335
  %i.bfl = getelementptr i8, ptr %.611421914.us.i, i64 %i.apj ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.ph337, %vector.body339
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next347, %vector.body339 ] ; 4 uses
  %i.bfm = shl i64 %index340, 3
  %next.gep341 = getelementptr i8, ptr %.611421914.us.i, i64 %i.bfm
  %i.bfn = getelementptr inbounds nuw [4 x i8], ptr %.311541912.us.i, i64 %index340 ; 2 uses
  %i.bfo = getelementptr inbounds nuw [4 x i8], ptr %.311501913.us.i, i64 %index340 ; 2 uses
  %wide.load342 = load <16 x i32>, ptr %i.bfn, align 4, !tbaa !22
  %wide.load343 = load <16 x i32>, ptr %i.bfo, align 4, !tbaa !22
  %i.bfp = getelementptr inbounds nuw [4 x i8], ptr %i.bfn, i64 %i.aol
  %i.bfq = getelementptr inbounds nuw [4 x i8], ptr %i.bfo, i64 %i.aol
  %wide.load344 = load <16 x i32>, ptr %i.bfp, align 4, !tbaa !22
  %wide.load345 = load <16 x i32>, ptr %i.bfq, align 4, !tbaa !22
  %i.bfr = shufflevector <16 x i32> %wide.load342, <16 x i32> %wide.load343, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bfs = lshr <32 x i32> %i.bfr, splat (i32 16)
  %i.bft = trunc nuw <32 x i32> %i.bfs to <32 x i16>
  %i.bfu = shufflevector <16 x i32> %wide.load344, <16 x i32> %wide.load345, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bfv = lshr <32 x i32> %i.bfu, splat (i32 16)
  %i.bfw = trunc nuw <32 x i32> %i.bfv to <32 x i16>
  %interleaved.vec346 = shufflevector <32 x i16> %i.bft, <32 x i16> %i.bfw, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec346, ptr %next.gep341, align 2, !tbaa !24
  %index.next347 = add nuw i64 %index340, 16      ; 2 uses
  %i.bfx = icmp eq i64 %index.next347, %n.vec338
  br i1 %i.bfx, label %middle.block348, label %vector.body339, !llvm.loop !102

middle.block348:                                  ; preds = %vector.body339
  br i1 %cmp.n349, label %._crit_edge1910.us.i, label %vec.epilog.iter.check353

vec.epilog.iter.check353:                         ; preds = %middle.block348
  br i1 %min.epilog.iters.check354, label %vec.epilog.scalar.ph352.preheader, label %vec.epilog.ph355, !prof !27

vec.epilog.ph355:                                 ; preds = %vector.main.loop.iter.check335, %vec.epilog.iter.check353
  %vec.epilog.resume.val350 = phi i64 [ %n.vec338, %vec.epilog.iter.check353 ], [ 0, %vector.main.loop.iter.check335 ]
  %i.bfy = getelementptr i8, ptr %.611421914.us.i, i64 %i.apk ; 2 uses
  br label %vec.epilog.vector.body357

vec.epilog.vector.body357:                        ; preds = %vec.epilog.vector.body357, %vec.epilog.ph355
  %index358 = phi i64 [ %vec.epilog.resume.val350, %vec.epilog.ph355 ], [ %index.next365, %vec.epilog.vector.body357 ] ; 4 uses
  %i.bfz = shl i64 %index358, 3
  %next.gep359 = getelementptr i8, ptr %.611421914.us.i, i64 %i.bfz
  %i.bga = getelementptr inbounds nuw [4 x i8], ptr %.311541912.us.i, i64 %index358 ; 2 uses
  %i.bgb = getelementptr inbounds nuw [4 x i8], ptr %.311501913.us.i, i64 %index358 ; 2 uses
  %wide.load360 = load <4 x i32>, ptr %i.bga, align 4, !tbaa !22
  %wide.load361 = load <4 x i32>, ptr %i.bgb, align 4, !tbaa !22
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.bga, i64 %i.aol
  %i.bgd = getelementptr inbounds nuw [4 x i8], ptr %i.bgb, i64 %i.aol
  %wide.load362 = load <4 x i32>, ptr %i.bgc, align 4, !tbaa !22
  %wide.load363 = load <4 x i32>, ptr %i.bgd, align 4, !tbaa !22
  %i.bge = shufflevector <4 x i32> %wide.load360, <4 x i32> %wide.load361, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bgf = shufflevector <4 x i32> %wide.load362, <4 x i32> %wide.load363, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bgg = shufflevector <8 x i32> %i.bge, <8 x i32> %i.bgf, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.bgh = lshr <16 x i32> %i.bgg, splat (i32 16)
  %interleaved.vec364 = trunc nuw <16 x i32> %i.bgh to <16 x i16>
  store <16 x i16> %interleaved.vec364, ptr %next.gep359, align 2, !tbaa !24
  %index.next365 = add nuw i64 %index358, 4       ; 2 uses
  %i.bgi = icmp eq i64 %index.next365, %n.vec356
  br i1 %i.bgi, label %vec.epilog.middle.block366, label %vec.epilog.vector.body357, !llvm.loop !103

vec.epilog.middle.block366:                       ; preds = %vec.epilog.vector.body357
  br i1 %cmp.n367, label %._crit_edge1910.us.i, label %vec.epilog.scalar.ph352.preheader

vec.epilog.scalar.ph352.preheader:                ; preds = %iter.check351, %vec.epilog.iter.check353, %vec.epilog.middle.block366
  %indvars.iv2344.i.ph = phi i64 [ 0, %iter.check351 ], [ %n.vec338, %vec.epilog.iter.check353 ], [ %n.vec356, %vec.epilog.middle.block366 ]
  %.711431908.us.i.ph = phi ptr [ %.611421914.us.i, %iter.check351 ], [ %i.bfl, %vec.epilog.iter.check353 ], [ %i.bfy, %vec.epilog.middle.block366 ]
  br label %vec.epilog.scalar.ph352

vec.epilog.scalar.ph352:                          ; preds = %vec.epilog.scalar.ph352.preheader, %vec.epilog.scalar.ph352
  %indvars.iv2344.i = phi i64 [ %indvars.iv.next2345.i, %vec.epilog.scalar.ph352 ], [ %indvars.iv2344.i.ph, %vec.epilog.scalar.ph352.preheader ] ; 3 uses
  %.711431908.us.i = phi ptr [ %i.bgx, %vec.epilog.scalar.ph352 ], [ %.711431908.us.i.ph, %vec.epilog.scalar.ph352.preheader ] ; 2 uses
  %i.bgj = getelementptr inbounds nuw [4 x i8], ptr %.311541912.us.i, i64 %indvars.iv2344.i ; 2 uses
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %.311501913.us.i, i64 %indvars.iv2344.i ; 2 uses
  %i.bgl = load i32, ptr %i.bgj, align 4, !tbaa !22
  %i.bgm = load i32, ptr %i.bgk, align 4, !tbaa !22
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.bgj, i64 %i.aol
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.aol
  %i.bgp = load i32, ptr %i.bgn, align 4, !tbaa !22
  %i.bgq = load i32, ptr %i.bgo, align 4, !tbaa !22
  %i.bgr = insertelement <4 x i32> poison, i32 %i.bgl, i64 0
  %i.bgs = insertelement <4 x i32> %i.bgr, i32 %i.bgm, i64 1
  %i.bgt = insertelement <4 x i32> %i.bgs, i32 %i.bgp, i64 2
  %i.bgu = insertelement <4 x i32> %i.bgt, i32 %i.bgq, i64 3
  %i.bgv = lshr <4 x i32> %i.bgu, splat (i32 16)
  %i.bgw = trunc nuw <4 x i32> %i.bgv to <4 x i16>
  store <4 x i16> %i.bgw, ptr %.711431908.us.i, align 2, !tbaa !24
  %i.bgx = getelementptr inbounds nuw i8, ptr %.711431908.us.i, i64 8 ; 2 uses
  %indvars.iv.next2345.i = add nuw nsw i64 %indvars.iv2344.i, 1 ; 2 uses
  %exitcond2348.not.i = icmp eq i64 %indvars.iv.next2345.i, %wide.trip.count2326.i
  br i1 %exitcond2348.not.i, label %._crit_edge1910.us.i, label %vec.epilog.scalar.ph352, !llvm.loop !104

._crit_edge1910.us.i:                             ; preds = %vec.epilog.scalar.ph352, %vec.epilog.middle.block366, %middle.block348
  %.lcssa268 = phi ptr [ %i.bfy, %vec.epilog.middle.block366 ], [ %i.bfl, %middle.block348 ], [ %i.bgx, %vec.epilog.scalar.ph352 ] ; 2 uses
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %.311541912.us.i, i64 %i.aon ; 2 uses
  %i.bgz = getelementptr inbounds nuw [4 x i8], ptr %.311501913.us.i, i64 %i.aon ; 2 uses
  %i.bha = add nuw nsw i32 %.311341915.us.i, 2    ; 3 uses
  %i.bhb = or disjoint i32 %i.bha, 1
  %i.bhc = icmp slt i32 %i.bhb, %2
  br i1 %i.bhc, label %iter.check351, label %.preheader1562.i, !llvm.loop !105

.preheader1562.i:                                 ; preds = %._crit_edge1910.us.i, %.preheader1563.i
  %.31154.lcssa.i = phi ptr [ %.21153.lcssa.i, %.preheader1563.i ], [ %i.bgy, %._crit_edge1910.us.i ] ; 3 uses
  %.31150.lcssa.i = phi ptr [ %.21149.lcssa.i, %.preheader1563.i ], [ %i.bgz, %._crit_edge1910.us.i ] ; 3 uses
  %.61142.lcssa.i = phi ptr [ %.41140.lcssa.i, %.preheader1563.i ], [ %.lcssa268, %._crit_edge1910.us.i ]
  %.31134.lcssa.i = phi i32 [ %.21133.lcssa.i, %.preheader1563.i ], [ %i.bha, %._crit_edge1910.us.i ] ; 2 uses
  %i.bhd = icmp sge i32 %.31134.lcssa.i, %2
  %brmerge2006.i = or i1 %i.aoo, %i.bhd
  br i1 %brmerge2006.i, label %._crit_edge1930.split.i, label %iter.check

iter.check:                                       ; preds = %.preheader1562.i, %._crit_edge1926.i
  %.411351929.i = phi i32 [ %i.bhs, %._crit_edge1926.i ], [ %.31134.lcssa.i, %.preheader1562.i ]
  %.911451928.i = phi ptr [ %.lcssa272, %._crit_edge1926.i ], [ %.61142.lcssa.i, %.preheader1562.i ] ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check322, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bhe = getelementptr i8, ptr %.911451928.i, i64 %i.apm ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bhf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.911451928.i, i64 %i.bhf
  %i.bhg = getelementptr inbounds nuw [4 x i8], ptr %.31154.lcssa.i, i64 %index
  %i.bhh = getelementptr inbounds nuw [4 x i8], ptr %.31150.lcssa.i, i64 %index
  %wide.load = load <16 x i32>, ptr %i.bhg, align 4, !tbaa !22
  %wide.load323 = load <16 x i32>, ptr %i.bhh, align 4, !tbaa !22
  %i.bhi = shufflevector <16 x i32> %wide.load, <16 x i32> %wide.load323, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bhj = lshr <32 x i32> %i.bhi, splat (i32 16)
  %interleaved.vec = trunc nuw <32 x i32> %i.bhj to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bhk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bhk, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge1926.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bhl = getelementptr i8, ptr %.911451928.i, i64 %i.apn ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index325 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next330, %vec.epilog.vector.body ] ; 4 uses
  %i.bhm = shl i64 %index325, 2
  %next.gep326 = getelementptr i8, ptr %.911451928.i, i64 %i.bhm
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %.31154.lcssa.i, i64 %index325
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %.31150.lcssa.i, i64 %index325
  %wide.load327 = load <4 x i32>, ptr %i.bhn, align 4, !tbaa !22
  %wide.load328 = load <4 x i32>, ptr %i.bho, align 4, !tbaa !22
  %i.bhp = shufflevector <4 x i32> %wide.load327, <4 x i32> %wide.load328, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bhq = lshr <8 x i32> %i.bhp, splat (i32 16)
  %interleaved.vec329 = trunc nuw <8 x i32> %i.bhq to <8 x i16>
  store <8 x i16> %interleaved.vec329, ptr %next.gep326, align 2, !tbaa !24
  %index.next330 = add nuw i64 %index325, 4       ; 2 uses
  %i.bhr = icmp eq i64 %index.next330, %n.vec324
  br i1 %i.bhr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !107

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n331, label %._crit_edge1926.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv2349.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec324, %vec.epilog.middle.block ]
  %.1011461924.i.ph = phi ptr [ %.911451928.i, %iter.check ], [ %i.bhe, %vec.epilog.iter.check ], [ %i.bhl, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge1926.i:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa272 = phi ptr [ %i.bhl, %vec.epilog.middle.block ], [ %i.bhe, %middle.block ], [ %i.bic, %vec.epilog.scalar.ph ]
  %i.bhs = add nuw nsw i32 %.411351929.i, 1       ; 2 uses
  %exitcond2354.not.i = icmp eq i32 %i.bhs, %2
  br i1 %exitcond2354.not.i, label %._crit_edge1930.split.i, label %iter.check, !llvm.loop !108

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv2349.i = phi i64 [ %indvars.iv.next2350.i, %vec.epilog.scalar.ph ], [ %indvars.iv2349.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.1011461924.i = phi ptr [ %i.bic, %vec.epilog.scalar.ph ], [ %.1011461924.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %.31154.lcssa.i, i64 %indvars.iv2349.i
  %i.bhu = getelementptr inbounds nuw [4 x i8], ptr %.31150.lcssa.i, i64 %indvars.iv2349.i
  %i.bhv = load i32, ptr %i.bht, align 4, !tbaa !22
  %i.bhw = lshr i32 %i.bhv, 16
  %i.bhx = trunc nuw i32 %i.bhw to i16
  store i16 %i.bhx, ptr %.1011461924.i, align 2, !tbaa !24
  %i.bhy = load i32, ptr %i.bhu, align 4, !tbaa !22
  %i.bhz = lshr i32 %i.bhy, 16
  %i.bia = trunc nuw i32 %i.bhz to i16
  %i.bib = getelementptr inbounds nuw i8, ptr %.1011461924.i, i64 2
  store i16 %i.bia, ptr %i.bib, align 2, !tbaa !24
  %i.bic = getelementptr inbounds nuw i8, ptr %.1011461924.i, i64 4 ; 2 uses
  %indvars.iv.next2350.i = add nuw nsw i64 %indvars.iv2349.i, 1 ; 2 uses
  %exitcond2353.not.i = icmp eq i64 %indvars.iv.next2350.i, %wide.trip.count2326.i
  br i1 %exitcond2353.not.i, label %._crit_edge1926.i, label %vec.epilog.scalar.ph, !llvm.loop !109

._crit_edge1930.split.i:                          ; preds = %._crit_edge1926.i, %.preheader1562.i, %.preheader1558.lr.ph.i, %.preheader1559.lr.ph.i
  %indvars.iv.next2356.i = add nuw nsw i64 %indvars.iv2355.i, 2 ; 3 uses
  %i.bid = or disjoint i64 %indvars.iv.next2356.i, 1 ; 2 uses
  %i.bie = icmp slt i64 %i.bid, %i.apb
  %indvars.iv.next2318.i = add i32 %indvars.iv2317.i, %i.aov
  %indvars.iv.next2321.i = add i32 %indvars.iv2320.i, %i.aov
  %i.bif = trunc nsw i64 %i.bid to i32
  br i1 %i.bie, label %_ZN4ncnn3MatD2Ev.exit1301.i, label %.preheader1556.loopexit.i, !llvm.loop !110

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge1994.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %indvars.iv2391.i = phi i64 [ %i.azw, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next2392.i, %._crit_edge1994.split.i ] ; 2 uses
  %indvars.iv2359.i = phi i32 [ %i.azs, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next2360.i, %._crit_edge1994.split.i ] ; 2 uses
  %i.big = sext i32 %indvars.iv2359.i to i64
  %i.bih = shl nsw i64 %i.big, 2
  %i.bii = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.bij = trunc nsw i64 %indvars.iv2391.i to i32 ; 3 uses
  %i.bik = mul i32 %i.ayp, %i.bij
  %i.bil = sext i32 %i.bik to i64
  %i.bim = getelementptr inbounds [4 x i8], ptr %i.bii, i64 %i.bil ; 2 uses
  %i.bin = lshr i32 %i.bij, 4
  %i.bio = insertelement <4 x i32> poison, i32 %i.bij, i64 0
  %i.bip = shufflevector <4 x i32> %i.bio, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.biq = lshr <4 x i32> %i.bip, <i32 0, i32 3, i32 2, i32 1>
  %i.bir = and <4 x i32> %i.biq, splat (i32 1)
  %i.bis = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bir)
  %op.rdx = add nuw nsw i32 %i.bis, %i.bin
  %i.bit = load ptr, ptr %1, align 8, !tbaa !15, !noalias !135
  %i.biu = load i64, ptr %i.ayq, align 8, !tbaa !16, !noalias !135
  %i.biv = zext nneg i32 %op.rdx to i64
  %i.biw = load i64, ptr %i.ayr, align 8, !tbaa !17, !noalias !135
  %i.bix = mul i64 %i.biw, %i.biu
  %i.biy = mul i64 %i.bix, %i.biv
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bit, i64 %i.biy ; 4 uses
  br i1 %i.azb, label %.preheader1551.lr.ph.i, label %.preheader1555.i

.preheader1551.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.azc, label %.preheader1551.us.i, label %.preheader1555.thread.i

.preheader1551.us.i:                              ; preds = %.preheader1551.lr.ph.i, %._crit_edge1935.us.i
  %.011011939.us.i = phi i32 [ %i.bjy, %._crit_edge1935.us.i ], [ 0, %.preheader1551.lr.ph.i ]
  %.011061938.us.i = phi ptr [ %.lcssa, %._crit_edge1935.us.i ], [ %i.biz, %.preheader1551.lr.ph.i ] ; 2 uses
  %.011111937.us.i = phi ptr [ %i.bjx, %._crit_edge1935.us.i ], [ %i.bim, %.preheader1551.lr.ph.i ] ; 6 uses
  br i1 %i.baa, label %.epil.preheader603, label %.preheader1551.us.i.new

.preheader1551.us.i.new:                          ; preds = %.preheader1551.us.i, %.preheader1551.us.i.new
  %indvars.iv2362.i = phi i64 [ %indvars.iv.next2363.i.3, %.preheader1551.us.i.new ], [ 0, %.preheader1551.us.i ] ; 5 uses
  %.111071933.us.i = phi ptr [ %i.bjs, %.preheader1551.us.i.new ], [ %.011061938.us.i, %.preheader1551.us.i ] ; 5 uses
  %niter610 = phi i64 [ %niter610.next.3, %.preheader1551.us.i.new ], [ 0, %.preheader1551.us.i ]
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %.011111937.us.i, i64 %indvars.iv2362.i
  %i.bjb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bja, <16 x i32> %i.aza, <16 x i1> splat (i1 true), i32 4)
  %i.bjc = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bjb)
  store <16 x bfloat> %i.bjc, ptr %.111071933.us.i, align 1, !tbaa !18
  %i.bjd = getelementptr inbounds nuw i8, ptr %.111071933.us.i, i64 32
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %.011111937.us.i, i64 %indvars.iv2362.i
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 4
  %i.bjg = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bjf, <16 x i32> %i.aza, <16 x i1> splat (i1 true), i32 4)
  %i.bjh = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bjg)
  store <16 x bfloat> %i.bjh, ptr %i.bjd, align 1, !tbaa !18
  %i.bji = getelementptr inbounds nuw i8, ptr %.111071933.us.i, i64 64
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %.011111937.us.i, i64 %indvars.iv2362.i
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 8
  %i.bjl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bjk, <16 x i32> %i.aza, <16 x i1> splat (i1 true), i32 4)
  %i.bjm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bjl)
  store <16 x bfloat> %i.bjm, ptr %i.bji, align 1, !tbaa !18
  %i.bjn = getelementptr inbounds nuw i8, ptr %.111071933.us.i, i64 96
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %.011111937.us.i, i64 %indvars.iv2362.i
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 12
  %i.bjq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bjp, <16 x i32> %i.aza, <16 x i1> splat (i1 true), i32 4)
  %i.bjr = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bjq)
  store <16 x bfloat> %i.bjr, ptr %i.bjn, align 1, !tbaa !18
  %i.bjs = getelementptr inbounds nuw i8, ptr %.111071933.us.i, i64 128 ; 3 uses
  %indvars.iv.next2363.i.3 = add nuw nsw i64 %indvars.iv2362.i, 4 ; 2 uses
  %niter610.next.3 = add i64 %niter610, 4         ; 2 uses
  %niter610.ncmp.3 = icmp eq i64 %niter610.next.3, %unroll_iter609
  br i1 %niter610.ncmp.3, label %._crit_edge1935.us.i.unr-lcssa, label %.preheader1551.us.i.new, !llvm.loop !113

._crit_edge1935.us.i.unr-lcssa:                   ; preds = %.preheader1551.us.i.new
  br i1 %lcmp.mod606.not, label %._crit_edge1935.us.i, label %.epil.preheader603

.epil.preheader603:                               ; preds = %._crit_edge1935.us.i.unr-lcssa, %.preheader1551.us.i
  %indvars.iv2362.i.epil.init = phi i64 [ 0, %.preheader1551.us.i ], [ %indvars.iv.next2363.i.3, %._crit_edge1935.us.i.unr-lcssa ]
  %.111071933.us.i.epil.init = phi ptr [ %.011061938.us.i, %.preheader1551.us.i ], [ %i.bjs, %._crit_edge1935.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod608)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader603
  %indvars.iv2362.i.epil = phi i64 [ %indvars.iv2362.i.epil.init, %.epil.preheader603 ], [ %indvars.iv.next2363.i.epil, %bb.bh ] ; 2 uses
  %.111071933.us.i.epil = phi ptr [ %.111071933.us.i.epil.init, %.epil.preheader603 ], [ %i.bjw, %bb.bh ] ; 2 uses
  %epil.iter605 = phi i64 [ 0, %.epil.preheader603 ], [ %epil.iter605.next, %bb.bh ]
  %i.bjt = getelementptr inbounds nuw [4 x i8], ptr %.011111937.us.i, i64 %indvars.iv2362.i.epil
  %i.bju = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bjt, <16 x i32> %i.aza, <16 x i1> splat (i1 true), i32 4)
  %i.bjv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bju)
  store <16 x bfloat> %i.bjv, ptr %.111071933.us.i.epil, align 1, !tbaa !18
  %i.bjw = getelementptr inbounds nuw i8, ptr %.111071933.us.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2363.i.epil = add nuw nsw i64 %indvars.iv2362.i.epil, 1
  %epil.iter605.next = add i64 %epil.iter605, 1   ; 2 uses
  %epil.iter605.cmp.not = icmp eq i64 %epil.iter605.next, %xtraiter604
  br i1 %epil.iter605.cmp.not, label %._crit_edge1935.us.i, label %bb.bh, !llvm.loop !114

._crit_edge1935.us.i:                             ; preds = %bb.bh, %._crit_edge1935.us.i.unr-lcssa
  %.lcssa = phi ptr [ %i.bjs, %._crit_edge1935.us.i.unr-lcssa ], [ %i.bjw, %bb.bh ] ; 2 uses
  %i.bjx = getelementptr inbounds nuw [4 x i8], ptr %.011111937.us.i, i64 %i.aze ; 2 uses
  %i.bjy = add nuw nsw i32 %.011011939.us.i, 16   ; 2 uses
  %i.bjz = or disjoint i32 %i.bjy, 15
  %i.bka = icmp slt i32 %i.bjz, %2
  br i1 %i.bka, label %.preheader1551.us.i, label %.preheader1555.i, !llvm.loop !115

.preheader1555.i:                                 ; preds = %._crit_edge1935.us.i, %_ZN4ncnn3MatD2Ev.exit.i
  %.01111.lcssa.i = phi ptr [ %i.bim, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.bjx, %._crit_edge1935.us.i ] ; 3 uses
  %.01106.lcssa.i = phi ptr [ %i.biz, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa, %._crit_edge1935.us.i ] ; 3 uses
  %.01101.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.azu, %._crit_edge1935.us.i ] ; 4 uses
  %i.bkb = or disjoint i32 %.01101.lcssa.i, 7
  %i.bkc = icmp slt i32 %i.bkb, %2
  br i1 %i.bkc, label %.preheader1550.lr.ph.i, label %.preheader1554.i

.preheader1555.thread.i:                          ; preds = %.preheader1551.lr.ph.i
  %scevgep2358.i = getelementptr i8, ptr %i.bii, i64 %i.azr
  %scevgep2361.i = getelementptr i8, ptr %scevgep2358.i, i64 %i.bih ; 2 uses
  br i1 %i.azy, label %.preheader1550.preheader.i, label %.preheader1554.i

.preheader1550.lr.ph.i:                           ; preds = %.preheader1555.i
  br i1 %i.azc, label %.preheader1550.us.i, label %.preheader1550.preheader.i

.preheader1550.preheader.i:                       ; preds = %.preheader1550.lr.ph.i, %.preheader1555.thread.i
  %.01111.lcssa25962604.i = phi ptr [ %.01111.lcssa.i, %.preheader1550.lr.ph.i ], [ %scevgep2361.i, %.preheader1555.thread.i ]
  %.01106.lcssa25972603.i = phi ptr [ %.01106.lcssa.i, %.preheader1550.lr.ph.i ], [ %i.biz, %.preheader1555.thread.i ]
  %.01101.lcssa25982602.i = phi i32 [ %.01101.lcssa.i, %.preheader1550.lr.ph.i ], [ %i.azu, %.preheader1555.thread.i ] ; 2 uses
  %i.bkd = sub i32 %i.azv, %.01101.lcssa25982602.i ; 2 uses
  %i.bke = lshr i32 %i.bkd, 1
  %i.bkf = and i32 %i.bke, 2147483644
  %narrow2438.i = add nuw i32 %i.bkf, 4
  %i.bkg = zext i32 %narrow2438.i to i64
  %i.bkh = mul nsw i64 %i.bkg, %i.azg
  %scevgep2367.i = getelementptr i8, ptr %.01111.lcssa25962604.i, i64 %i.bkh
  %i.bki = add i32 %.01101.lcssa25982602.i, 8
  %i.bkj = and i32 %i.bkd, -8
  %i.bkk = add i32 %i.bki, %i.bkj
  br label %.preheader1554.i

.preheader1550.us.i:                              ; preds = %.preheader1550.lr.ph.i, %._crit_edge1948.us.i
  %.111021952.us.i = phi i32 [ %i.blj, %._crit_edge1948.us.i ], [ %.01101.lcssa.i, %.preheader1550.lr.ph.i ]
  %.211081951.us.i = phi ptr [ %.lcssa448, %._crit_edge1948.us.i ], [ %.01106.lcssa.i, %.preheader1550.lr.ph.i ] ; 2 uses
  %.111121950.us.i = phi ptr [ %i.bli, %._crit_edge1948.us.i ], [ %.01111.lcssa.i, %.preheader1550.lr.ph.i ] ; 6 uses
  br i1 %i.bab, label %.epil.preheader611, label %.preheader1550.us.i.new

.preheader1550.us.i.new:                          ; preds = %.preheader1550.us.i, %.preheader1550.us.i.new
  %indvars.iv2368.i = phi i64 [ %indvars.iv.next2369.i.3, %.preheader1550.us.i.new ], [ 0, %.preheader1550.us.i ] ; 5 uses
  %.311091946.us.i = phi ptr [ %i.bld, %.preheader1550.us.i.new ], [ %.211081951.us.i, %.preheader1550.us.i ] ; 5 uses
  %niter618 = phi i64 [ %niter618.next.3, %.preheader1550.us.i.new ], [ 0, %.preheader1550.us.i ]
  %i.bkl = getelementptr inbounds nuw [4 x i8], ptr %.111121950.us.i, i64 %indvars.iv2368.i
  %i.bkm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bkl, <8 x i32> %i.ayx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bkn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bkm)
  store <8 x bfloat> %i.bkn, ptr %.311091946.us.i, align 1, !tbaa !18
  %i.bko = getelementptr inbounds nuw i8, ptr %.311091946.us.i, i64 16
  %i.bkp = getelementptr inbounds nuw [4 x i8], ptr %.111121950.us.i, i64 %indvars.iv2368.i
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 4
  %i.bkr = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bkq, <8 x i32> %i.ayx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bks = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bkr)
  store <8 x bfloat> %i.bks, ptr %i.bko, align 1, !tbaa !18
  %i.bkt = getelementptr inbounds nuw i8, ptr %.311091946.us.i, i64 32
  %i.bku = getelementptr inbounds nuw [4 x i8], ptr %.111121950.us.i, i64 %indvars.iv2368.i
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 8
  %i.bkw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bkv, <8 x i32> %i.ayx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bkx = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bkw)
  store <8 x bfloat> %i.bkx, ptr %i.bkt, align 1, !tbaa !18
  %i.bky = getelementptr inbounds nuw i8, ptr %.311091946.us.i, i64 48
  %i.bkz = getelementptr inbounds nuw [4 x i8], ptr %.111121950.us.i, i64 %indvars.iv2368.i
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkz, i64 12
  %i.blb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bla, <8 x i32> %i.ayx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.blb)
  store <8 x bfloat> %i.blc, ptr %i.bky, align 1, !tbaa !18
  %i.bld = getelementptr inbounds nuw i8, ptr %.311091946.us.i, i64 64 ; 3 uses
  %indvars.iv.next2369.i.3 = add nuw nsw i64 %indvars.iv2368.i, 4 ; 2 uses
  %niter618.next.3 = add i64 %niter618, 4         ; 2 uses
  %niter618.ncmp.3 = icmp eq i64 %niter618.next.3, %unroll_iter617
  br i1 %niter618.ncmp.3, label %._crit_edge1948.us.i.unr-lcssa, label %.preheader1550.us.i.new, !llvm.loop !116

._crit_edge1948.us.i.unr-lcssa:                   ; preds = %.preheader1550.us.i.new
  br i1 %lcmp.mod614.not, label %._crit_edge1948.us.i, label %.epil.preheader611

.epil.preheader611:                               ; preds = %._crit_edge1948.us.i.unr-lcssa, %.preheader1550.us.i
  %indvars.iv2368.i.epil.init = phi i64 [ 0, %.preheader1550.us.i ], [ %indvars.iv.next2369.i.3, %._crit_edge1948.us.i.unr-lcssa ]
  %.311091946.us.i.epil.init = phi ptr [ %.211081951.us.i, %.preheader1550.us.i ], [ %i.bld, %._crit_edge1948.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod616)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.epil.preheader611
  %indvars.iv2368.i.epil = phi i64 [ %indvars.iv2368.i.epil.init, %.epil.preheader611 ], [ %indvars.iv.next2369.i.epil, %bb.bi ] ; 2 uses
  %.311091946.us.i.epil = phi ptr [ %.311091946.us.i.epil.init, %.epil.preheader611 ], [ %i.blh, %bb.bi ] ; 2 uses
  %epil.iter613 = phi i64 [ 0, %.epil.preheader611 ], [ %epil.iter613.next, %bb.bi ]
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %.111121950.us.i, i64 %indvars.iv2368.i.epil
  %i.blf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ble, <8 x i32> %i.ayx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.blf)
  store <8 x bfloat> %i.blg, ptr %.311091946.us.i.epil, align 1, !tbaa !18
  %i.blh = getelementptr inbounds nuw i8, ptr %.311091946.us.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2369.i.epil = add nuw nsw i64 %indvars.iv2368.i.epil, 1
  %epil.iter613.next = add i64 %epil.iter613, 1   ; 2 uses
  %epil.iter613.cmp.not = icmp eq i64 %epil.iter613.next, %xtraiter612
  br i1 %epil.iter613.cmp.not, label %._crit_edge1948.us.i, label %bb.bi, !llvm.loop !117

._crit_edge1948.us.i:                             ; preds = %bb.bi, %._crit_edge1948.us.i.unr-lcssa
  %.lcssa448 = phi ptr [ %i.bld, %._crit_edge1948.us.i.unr-lcssa ], [ %i.blh, %bb.bi ] ; 2 uses
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %.111121950.us.i, i64 %i.azg ; 2 uses
  %i.blj = add nuw nsw i32 %.111021952.us.i, 8    ; 3 uses
  %i.blk = or disjoint i32 %i.blj, 7
  %i.bll = icmp slt i32 %i.blk, %2
  br i1 %i.bll, label %.preheader1550.us.i, label %.preheader1554.i, !llvm.loop !118

.preheader1554.i:                                 ; preds = %._crit_edge1948.us.i, %.preheader1550.preheader.i, %.preheader1555.thread.i, %.preheader1555.i
  %.11112.lcssa.i = phi ptr [ %.01111.lcssa.i, %.preheader1555.i ], [ %scevgep2361.i, %.preheader1555.thread.i ], [ %scevgep2367.i, %.preheader1550.preheader.i ], [ %i.bli, %._crit_edge1948.us.i ] ; 2 uses
  %.21108.lcssa.i = phi ptr [ %.01106.lcssa.i, %.preheader1555.i ], [ %i.biz, %.preheader1555.thread.i ], [ %.01106.lcssa25972603.i, %.preheader1550.preheader.i ], [ %.lcssa448, %._crit_edge1948.us.i ] ; 2 uses
  %.11102.lcssa.i = phi i32 [ %.01101.lcssa.i, %.preheader1555.i ], [ %i.azu, %.preheader1555.thread.i ], [ %i.bkk, %.preheader1550.preheader.i ], [ %i.blj, %._crit_edge1948.us.i ] ; 3 uses
  %i.blm = or disjoint i32 %.11102.lcssa.i, 3
  %i.bln = icmp slt i32 %i.blm, %2
  br i1 %i.bln, label %.preheader1549.lr.ph.i, label %.preheader1553.i

.preheader1549.lr.ph.i:                           ; preds = %.preheader1554.i
  br i1 %i.azc, label %.preheader1549.us.i, label %._crit_edge1994.split.i

.preheader1549.us.i:                              ; preds = %.preheader1549.lr.ph.i, %._crit_edge1961.us.i
  %.211031965.us.i = phi i32 [ %i.bmw, %._crit_edge1961.us.i ], [ %.11102.lcssa.i, %.preheader1549.lr.ph.i ]
  %.411101964.us.i = phi ptr [ %.lcssa451, %._crit_edge1961.us.i ], [ %.21108.lcssa.i, %.preheader1549.lr.ph.i ] ; 2 uses
  %.211131963.us.i = phi ptr [ %i.bmv, %._crit_edge1961.us.i ], [ %.11112.lcssa.i, %.preheader1549.lr.ph.i ] ; 6 uses
  br i1 %i.bac, label %.epil.preheader619, label %.preheader1549.us.i.new

.preheader1549.us.i.new:                          ; preds = %.preheader1549.us.i, %.preheader1549.us.i.new
  %indvars.iv2374.i = phi i64 [ %indvars.iv.next2375.i.3, %.preheader1549.us.i.new ], [ 0, %.preheader1549.us.i ] ; 5 uses
  %.51959.us.i = phi ptr [ %i.bmo, %.preheader1549.us.i.new ], [ %.411101964.us.i, %.preheader1549.us.i ] ; 5 uses
  %niter626 = phi i64 [ %niter626.next.3, %.preheader1549.us.i.new ], [ 0, %.preheader1549.us.i ]
  %i.blo = getelementptr inbounds nuw [4 x i8], ptr %.211131963.us.i, i64 %indvars.iv2374.i
  %i.blp = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.blo, <4 x i32> %i.ayu, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.blp)
  %i.blr = bitcast <8 x bfloat> %i.blq to <2 x i64>
  %i.bls = extractelement <2 x i64> %i.blr, i64 0
  store i64 %i.bls, ptr %.51959.us.i, align 1, !tbaa !18
  %i.blt = getelementptr inbounds nuw i8, ptr %.51959.us.i, i64 8
  %i.blu = getelementptr inbounds nuw [4 x i8], ptr %.211131963.us.i, i64 %indvars.iv2374.i
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blu, i64 4
  %i.blw = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.blv, <4 x i32> %i.ayu, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blx = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.blw)
  %i.bly = bitcast <8 x bfloat> %i.blx to <2 x i64>
  %i.blz = extractelement <2 x i64> %i.bly, i64 0
  store i64 %i.blz, ptr %i.blt, align 1, !tbaa !18
  %i.bma = getelementptr inbounds nuw i8, ptr %.51959.us.i, i64 16
  %i.bmb = getelementptr inbounds nuw [4 x i8], ptr %.211131963.us.i, i64 %indvars.iv2374.i
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bmb, i64 8
  %i.bmd = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bmc, <4 x i32> %i.ayu, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bme = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bmd)
  %i.bmf = bitcast <8 x bfloat> %i.bme to <2 x i64>
  %i.bmg = extractelement <2 x i64> %i.bmf, i64 0
  store i64 %i.bmg, ptr %i.bma, align 1, !tbaa !18
  %i.bmh = getelementptr inbounds nuw i8, ptr %.51959.us.i, i64 24
  %i.bmi = getelementptr inbounds nuw [4 x i8], ptr %.211131963.us.i, i64 %indvars.iv2374.i
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmi, i64 12
  %i.bmk = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bmj, <4 x i32> %i.ayu, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bml = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bmk)
  %i.bmm = bitcast <8 x bfloat> %i.bml to <2 x i64>
  %i.bmn = extractelement <2 x i64> %i.bmm, i64 0
  store i64 %i.bmn, ptr %i.bmh, align 1, !tbaa !18
  %i.bmo = getelementptr inbounds nuw i8, ptr %.51959.us.i, i64 32 ; 3 uses
  %indvars.iv.next2375.i.3 = add nuw nsw i64 %indvars.iv2374.i, 4 ; 2 uses
  %niter626.next.3 = add i64 %niter626, 4         ; 2 uses
  %niter626.ncmp.3 = icmp eq i64 %niter626.next.3, %unroll_iter625
  br i1 %niter626.ncmp.3, label %._crit_edge1961.us.i.unr-lcssa, label %.preheader1549.us.i.new, !llvm.loop !119

._crit_edge1961.us.i.unr-lcssa:                   ; preds = %.preheader1549.us.i.new
  br i1 %lcmp.mod622.not, label %._crit_edge1961.us.i, label %.epil.preheader619

.epil.preheader619:                               ; preds = %._crit_edge1961.us.i.unr-lcssa, %.preheader1549.us.i
  %indvars.iv2374.i.epil.init = phi i64 [ 0, %.preheader1549.us.i ], [ %indvars.iv.next2375.i.3, %._crit_edge1961.us.i.unr-lcssa ]
  %.51959.us.i.epil.init = phi ptr [ %.411101964.us.i, %.preheader1549.us.i ], [ %i.bmo, %._crit_edge1961.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod624)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.epil.preheader619
  %indvars.iv2374.i.epil = phi i64 [ %indvars.iv2374.i.epil.init, %.epil.preheader619 ], [ %indvars.iv.next2375.i.epil, %bb.bj ] ; 2 uses
  %.51959.us.i.epil = phi ptr [ %.51959.us.i.epil.init, %.epil.preheader619 ], [ %i.bmu, %bb.bj ] ; 2 uses
  %epil.iter621 = phi i64 [ 0, %.epil.preheader619 ], [ %epil.iter621.next, %bb.bj ]
  %i.bmp = getelementptr inbounds nuw [4 x i8], ptr %.211131963.us.i, i64 %indvars.iv2374.i.epil
  %i.bmq = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bmp, <4 x i32> %i.ayu, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bmq)
  %i.bms = bitcast <8 x bfloat> %i.bmr to <2 x i64>
  %i.bmt = extractelement <2 x i64> %i.bms, i64 0
  store i64 %i.bmt, ptr %.51959.us.i.epil, align 1, !tbaa !18
  %i.bmu = getelementptr inbounds nuw i8, ptr %.51959.us.i.epil, i64 8 ; 2 uses
  %indvars.iv.next2375.i.epil = add nuw nsw i64 %indvars.iv2374.i.epil, 1
  %epil.iter621.next = add i64 %epil.iter621, 1   ; 2 uses
  %epil.iter621.cmp.not = icmp eq i64 %epil.iter621.next, %xtraiter620
  br i1 %epil.iter621.cmp.not, label %._crit_edge1961.us.i, label %bb.bj, !llvm.loop !120

._crit_edge1961.us.i:                             ; preds = %bb.bj, %._crit_edge1961.us.i.unr-lcssa
  %.lcssa451 = phi ptr [ %i.bmo, %._crit_edge1961.us.i.unr-lcssa ], [ %i.bmu, %bb.bj ] ; 2 uses
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %.211131963.us.i, i64 %i.azi ; 2 uses
  %i.bmw = add nuw nsw i32 %.211031965.us.i, 4    ; 3 uses
  %i.bmx = or disjoint i32 %i.bmw, 3
  %i.bmy = icmp slt i32 %i.bmx, %2
  br i1 %i.bmy, label %.preheader1549.us.i, label %.preheader1553.i, !llvm.loop !121

.preheader1553.i:                                 ; preds = %._crit_edge1961.us.i, %.preheader1554.i
  %.21113.lcssa.i = phi ptr [ %.11112.lcssa.i, %.preheader1554.i ], [ %i.bmv, %._crit_edge1961.us.i ] ; 2 uses
  %.41110.lcssa.i = phi ptr [ %.21108.lcssa.i, %.preheader1554.i ], [ %.lcssa451, %._crit_edge1961.us.i ] ; 2 uses
  %.21103.lcssa.i = phi i32 [ %.11102.lcssa.i, %.preheader1554.i ], [ %i.bmw, %._crit_edge1961.us.i ] ; 3 uses
  %i.bmz = or disjoint i32 %.21103.lcssa.i, 1
  %i.bna = icmp slt i32 %i.bmz, %2
  br i1 %i.bna, label %.preheader1548.lr.ph.i, label %.preheader1552.i

.preheader1548.lr.ph.i:                           ; preds = %.preheader1553.i
  br i1 %i.azc, label %iter.check420, label %._crit_edge1994.split.i

iter.check420:                                    ; preds = %.preheader1548.lr.ph.i, %._crit_edge1977.us.i
  %.311041981.us.i = phi i32 [ %i.bof, %._crit_edge1977.us.i ], [ %.21103.lcssa.i, %.preheader1548.lr.ph.i ]
  %.61980.us.i = phi ptr [ %.lcssa253, %._crit_edge1977.us.i ], [ %.41110.lcssa.i, %.preheader1548.lr.ph.i ] ; 6 uses
  %.311141979.us.i = phi ptr [ %i.boe, %._crit_edge1977.us.i ], [ %.21113.lcssa.i, %.preheader1548.lr.ph.i ] ; 4 uses
  br i1 %min.iters.check401, label %vec.epilog.scalar.ph421.preheader, label %vector.main.loop.iter.check402

vector.main.loop.iter.check402:                   ; preds = %iter.check420
  br i1 %min.iters.check403, label %vec.epilog.ph424, label %vector.ph404

vector.ph404:                                     ; preds = %vector.main.loop.iter.check402
  %i.bnb = getelementptr i8, ptr %.61980.us.i, i64 %i.bae ; 2 uses
  br label %vector.body406

vector.body406:                                   ; preds = %vector.ph404, %vector.body406
  %index407 = phi i64 [ 0, %vector.ph404 ], [ %index.next416, %vector.body406 ] ; 3 uses
  %i.bnc = shl i64 %index407, 2                   ; 2 uses
  %next.gep408 = getelementptr i8, ptr %.61980.us.i, i64 %i.bnc
  %i.bnd = getelementptr i8, ptr %.61980.us.i, i64 %i.bnc
  %next.gep409 = getelementptr i8, ptr %i.bnd, i64 64
  %i.bne = getelementptr inbounds nuw [4 x i8], ptr %.311141979.us.i, i64 %index407 ; 3 uses
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bne, i64 64
  %wide.load410 = load <16 x i32>, ptr %i.bne, align 4, !tbaa !22
  %wide.load411 = load <16 x i32>, ptr %i.bnf, align 4, !tbaa !22
  %i.bng = getelementptr inbounds nuw [4 x i8], ptr %i.bne, i64 %i.azj ; 2 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 64
  %wide.load412 = load <16 x i32>, ptr %i.bng, align 4, !tbaa !22
  %wide.load413 = load <16 x i32>, ptr %i.bnh, align 4, !tbaa !22
  %i.bni = shufflevector <16 x i32> %wide.load410, <16 x i32> %wide.load412, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bnj = lshr <32 x i32> %i.bni, splat (i32 16)
  %interleaved.vec414 = trunc nuw <32 x i32> %i.bnj to <32 x i16>
  store <32 x i16> %interleaved.vec414, ptr %next.gep408, align 2, !tbaa !24
  %i.bnk = shufflevector <16 x i32> %wide.load411, <16 x i32> %wide.load413, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bnl = lshr <32 x i32> %i.bnk, splat (i32 16)
  %interleaved.vec415 = trunc nuw <32 x i32> %i.bnl to <32 x i16>
  store <32 x i16> %interleaved.vec415, ptr %next.gep409, align 2, !tbaa !24
  %index.next416 = add nuw i64 %index407, 32      ; 2 uses
  %i.bnm = icmp eq i64 %index.next416, %n.vec405
  br i1 %i.bnm, label %middle.block417, label %vector.body406, !llvm.loop !122

middle.block417:                                  ; preds = %vector.body406
  br i1 %cmp.n418, label %._crit_edge1977.us.i, label %vec.epilog.iter.check422

vec.epilog.iter.check422:                         ; preds = %middle.block417
  br i1 %min.epilog.iters.check423, label %vec.epilog.scalar.ph421.preheader, label %vec.epilog.ph424, !prof !28

vec.epilog.ph424:                                 ; preds = %vector.main.loop.iter.check402, %vec.epilog.iter.check422
  %vec.epilog.resume.val419 = phi i64 [ %n.vec405, %vec.epilog.iter.check422 ], [ 0, %vector.main.loop.iter.check402 ]
  %i.bnn = getelementptr i8, ptr %.61980.us.i, i64 %i.baf ; 2 uses
  br label %vec.epilog.vector.body426

vec.epilog.vector.body426:                        ; preds = %vec.epilog.vector.body426, %vec.epilog.ph424
  %index427 = phi i64 [ %vec.epilog.resume.val419, %vec.epilog.ph424 ], [ %index.next432, %vec.epilog.vector.body426 ] ; 3 uses
  %i.bno = shl i64 %index427, 2
  %next.gep428 = getelementptr i8, ptr %.61980.us.i, i64 %i.bno
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %.311141979.us.i, i64 %index427 ; 2 uses
  %wide.load429 = load <8 x i32>, ptr %i.bnp, align 4, !tbaa !22
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %i.bnp, i64 %i.azj
  %wide.load430 = load <8 x i32>, ptr %i.bnq, align 4, !tbaa !22
  %i.bnr = shufflevector <8 x i32> %wide.load429, <8 x i32> %wide.load430, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bns = lshr <16 x i32> %i.bnr, splat (i32 16)
  %interleaved.vec431 = trunc nuw <16 x i32> %i.bns to <16 x i16>
  store <16 x i16> %interleaved.vec431, ptr %next.gep428, align 2, !tbaa !24
  %index.next432 = add nuw i64 %index427, 8       ; 2 uses
  %i.bnt = icmp eq i64 %index.next432, %n.vec425
  br i1 %i.bnt, label %vec.epilog.middle.block433, label %vec.epilog.vector.body426, !llvm.loop !123

vec.epilog.middle.block433:                       ; preds = %vec.epilog.vector.body426
  br i1 %cmp.n434, label %._crit_edge1977.us.i, label %vec.epilog.scalar.ph421.preheader

vec.epilog.scalar.ph421.preheader:                ; preds = %iter.check420, %vec.epilog.iter.check422, %vec.epilog.middle.block433
  %indvars.iv2380.i.ph = phi i64 [ 0, %iter.check420 ], [ %n.vec405, %vec.epilog.iter.check422 ], [ %n.vec425, %vec.epilog.middle.block433 ]
  %.71975.us.i.ph = phi ptr [ %.61980.us.i, %iter.check420 ], [ %i.bnb, %vec.epilog.iter.check422 ], [ %i.bnn, %vec.epilog.middle.block433 ]
  br label %vec.epilog.scalar.ph421

vec.epilog.scalar.ph421:                          ; preds = %vec.epilog.scalar.ph421.preheader, %vec.epilog.scalar.ph421
  %indvars.iv2380.i = phi i64 [ %indvars.iv.next2381.i, %vec.epilog.scalar.ph421 ], [ %indvars.iv2380.i.ph, %vec.epilog.scalar.ph421.preheader ] ; 2 uses
  %.71975.us.i = phi ptr [ %i.bod, %vec.epilog.scalar.ph421 ], [ %.71975.us.i.ph, %vec.epilog.scalar.ph421.preheader ] ; 3 uses
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %.311141979.us.i, i64 %indvars.iv2380.i ; 2 uses
  %i.bnv = load i32, ptr %i.bnu, align 4, !tbaa !22
  %i.bnw = lshr i32 %i.bnv, 16
  %i.bnx = trunc nuw i32 %i.bnw to i16
  store i16 %i.bnx, ptr %.71975.us.i, align 2, !tbaa !24
  %i.bny = getelementptr inbounds nuw [4 x i8], ptr %i.bnu, i64 %i.azj
  %i.bnz = getelementptr inbounds nuw i8, ptr %.71975.us.i, i64 2
  %i.boa = load i32, ptr %i.bny, align 4, !tbaa !22
  %i.bob = lshr i32 %i.boa, 16
  %i.boc = trunc nuw i32 %i.bob to i16
  store i16 %i.boc, ptr %i.bnz, align 2, !tbaa !24
  %i.bod = getelementptr inbounds nuw i8, ptr %.71975.us.i, i64 4 ; 2 uses
  %indvars.iv.next2381.i = add nuw nsw i64 %indvars.iv2380.i, 1 ; 2 uses
  %exitcond2384.not.i = icmp eq i64 %indvars.iv.next2381.i, %wide.trip.count2365.i
  br i1 %exitcond2384.not.i, label %._crit_edge1977.us.i, label %vec.epilog.scalar.ph421, !llvm.loop !124

._crit_edge1977.us.i:                             ; preds = %vec.epilog.scalar.ph421, %vec.epilog.middle.block433, %middle.block417
  %.lcssa253 = phi ptr [ %i.bnn, %vec.epilog.middle.block433 ], [ %i.bnb, %middle.block417 ], [ %i.bod, %vec.epilog.scalar.ph421 ] ; 2 uses
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %.311141979.us.i, i64 %i.azl ; 2 uses
  %i.bof = add nuw nsw i32 %.311041981.us.i, 2    ; 3 uses
  %i.bog = or disjoint i32 %i.bof, 1
  %i.boh = icmp slt i32 %i.bog, %2
  br i1 %i.boh, label %iter.check420, label %.preheader1552.i, !llvm.loop !125

.preheader1552.i:                                 ; preds = %._crit_edge1977.us.i, %.preheader1553.i
  %.31114.lcssa.i = phi ptr [ %.21113.lcssa.i, %.preheader1553.i ], [ %i.boe, %._crit_edge1977.us.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.41110.lcssa.i, %.preheader1553.i ], [ %.lcssa253, %._crit_edge1977.us.i ]
  %.31104.lcssa.i = phi i32 [ %.21103.lcssa.i, %.preheader1553.i ], [ %i.bof, %._crit_edge1977.us.i ] ; 2 uses
  %i.boi = icmp sge i32 %.31104.lcssa.i, %2
  %brmerge2009.i = or i1 %i.azm, %i.boi
  br i1 %brmerge2009.i, label %._crit_edge1994.split.i, label %iter.check386

iter.check386:                                    ; preds = %.preheader1552.i, %._crit_edge1990.i
  %.411051993.i = phi i32 [ %i.bph, %._crit_edge1990.i ], [ %.31104.lcssa.i, %.preheader1552.i ]
  %.91992.i = phi ptr [ %.lcssa256, %._crit_edge1990.i ], [ %.6.lcssa.i, %.preheader1552.i ] ; 5 uses
  br i1 %min.iters.check370, label %vec.epilog.scalar.ph387.preheader, label %vector.main.loop.iter.check371

vector.main.loop.iter.check371:                   ; preds = %iter.check386
  br i1 %min.iters.check372, label %vec.epilog.ph390, label %vector.ph373

vector.ph373:                                     ; preds = %vector.main.loop.iter.check371
  %i.boj = getelementptr i8, ptr %.91992.i, i64 %i.bah ; 2 uses
  br label %vector.body375

vector.body375:                                   ; preds = %vector.ph373, %vector.body375
  %index376 = phi i64 [ 0, %vector.ph373 ], [ %index.next382, %vector.body375 ] ; 3 uses
  %i.bok = shl i64 %index376, 1
  %next.gep377 = getelementptr i8, ptr %.91992.i, i64 %i.bok ; 4 uses
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %.31114.lcssa.i, i64 %index376 ; 4 uses
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bol, i64 64
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bol, i64 128
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bol, i64 192
  %wide.load378 = load <16 x i32>, ptr %i.bol, align 4, !tbaa !22
  %wide.load379 = load <16 x i32>, ptr %i.bom, align 4, !tbaa !22
  %wide.load380 = load <16 x i32>, ptr %i.bon, align 4, !tbaa !22
  %wide.load381 = load <16 x i32>, ptr %i.boo, align 4, !tbaa !22
  %i.bop = lshr <16 x i32> %wide.load378, splat (i32 16)
  %i.boq = lshr <16 x i32> %wide.load379, splat (i32 16)
  %i.bor = lshr <16 x i32> %wide.load380, splat (i32 16)
  %i.bos = lshr <16 x i32> %wide.load381, splat (i32 16)
  %i.bot = trunc nuw <16 x i32> %i.bop to <16 x i16>
  %i.bou = trunc nuw <16 x i32> %i.boq to <16 x i16>
  %i.bov = trunc nuw <16 x i32> %i.bor to <16 x i16>
  %i.bow = trunc nuw <16 x i32> %i.bos to <16 x i16>
  %i.box = getelementptr i8, ptr %next.gep377, i64 32
  %i.boy = getelementptr i8, ptr %next.gep377, i64 64
  %i.boz = getelementptr i8, ptr %next.gep377, i64 96
  store <16 x i16> %i.bot, ptr %next.gep377, align 2, !tbaa !24
  store <16 x i16> %i.bou, ptr %i.box, align 2, !tbaa !24
  store <16 x i16> %i.bov, ptr %i.boy, align 2, !tbaa !24
  store <16 x i16> %i.bow, ptr %i.boz, align 2, !tbaa !24
  %index.next382 = add nuw i64 %index376, 64      ; 2 uses
  %i.bpa = icmp eq i64 %index.next382, %n.vec374
  br i1 %i.bpa, label %middle.block383, label %vector.body375, !llvm.loop !126

middle.block383:                                  ; preds = %vector.body375
  br i1 %cmp.n384, label %._crit_edge1990.i, label %vec.epilog.iter.check388

vec.epilog.iter.check388:                         ; preds = %middle.block383
  br i1 %min.epilog.iters.check389, label %vec.epilog.scalar.ph387.preheader, label %vec.epilog.ph390, !prof !29

vec.epilog.ph390:                                 ; preds = %vector.main.loop.iter.check371, %vec.epilog.iter.check388
  %vec.epilog.resume.val385 = phi i64 [ %n.vec374, %vec.epilog.iter.check388 ], [ 0, %vector.main.loop.iter.check371 ]
  %i.bpb = getelementptr i8, ptr %.91992.i, i64 %i.bai ; 2 uses
  br label %vec.epilog.vector.body392

vec.epilog.vector.body392:                        ; preds = %vec.epilog.vector.body392, %vec.epilog.ph390
  %index393 = phi i64 [ %vec.epilog.resume.val385, %vec.epilog.ph390 ], [ %index.next396, %vec.epilog.vector.body392 ] ; 3 uses
  %i.bpc = shl i64 %index393, 1
  %next.gep394 = getelementptr i8, ptr %.91992.i, i64 %i.bpc
  %i.bpd = getelementptr inbounds nuw [4 x i8], ptr %.31114.lcssa.i, i64 %index393
  %wide.load395 = load <8 x i32>, ptr %i.bpd, align 4, !tbaa !22
  %i.bpe = lshr <8 x i32> %wide.load395, splat (i32 16)
  %i.bpf = trunc nuw <8 x i32> %i.bpe to <8 x i16>
  store <8 x i16> %i.bpf, ptr %next.gep394, align 2, !tbaa !24
  %index.next396 = add nuw i64 %index393, 8       ; 2 uses
  %i.bpg = icmp eq i64 %index.next396, %n.vec391
  br i1 %i.bpg, label %vec.epilog.middle.block397, label %vec.epilog.vector.body392, !llvm.loop !127

vec.epilog.middle.block397:                       ; preds = %vec.epilog.vector.body392
  br i1 %cmp.n398, label %._crit_edge1990.i, label %vec.epilog.scalar.ph387.preheader

vec.epilog.scalar.ph387.preheader:                ; preds = %iter.check386, %vec.epilog.iter.check388, %vec.epilog.middle.block397
  %indvars.iv2385.i.ph = phi i64 [ 0, %iter.check386 ], [ %n.vec374, %vec.epilog.iter.check388 ], [ %n.vec391, %vec.epilog.middle.block397 ]
  %.101988.i.ph = phi ptr [ %.91992.i, %iter.check386 ], [ %i.boj, %vec.epilog.iter.check388 ], [ %i.bpb, %vec.epilog.middle.block397 ]
  br label %vec.epilog.scalar.ph387

._crit_edge1990.i:                                ; preds = %vec.epilog.scalar.ph387, %vec.epilog.middle.block397, %middle.block383
  %.lcssa256 = phi ptr [ %i.bpb, %vec.epilog.middle.block397 ], [ %i.boj, %middle.block383 ], [ %i.bpm, %vec.epilog.scalar.ph387 ]
  %i.bph = add nuw nsw i32 %.411051993.i, 1       ; 2 uses
  %exitcond2390.not.i = icmp eq i32 %i.bph, %2
  br i1 %exitcond2390.not.i, label %._crit_edge1994.split.i, label %iter.check386, !llvm.loop !128

vec.epilog.scalar.ph387:                          ; preds = %vec.epilog.scalar.ph387.preheader, %vec.epilog.scalar.ph387
  %indvars.iv2385.i = phi i64 [ %indvars.iv.next2386.i, %vec.epilog.scalar.ph387 ], [ %indvars.iv2385.i.ph, %vec.epilog.scalar.ph387.preheader ] ; 2 uses
  %.101988.i = phi ptr [ %i.bpm, %vec.epilog.scalar.ph387 ], [ %.101988.i.ph, %vec.epilog.scalar.ph387.preheader ] ; 2 uses
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %.31114.lcssa.i, i64 %indvars.iv2385.i
  %i.bpj = load i32, ptr %i.bpi, align 4, !tbaa !22
  %i.bpk = lshr i32 %i.bpj, 16
  %i.bpl = trunc nuw i32 %i.bpk to i16
  store i16 %i.bpl, ptr %.101988.i, align 2, !tbaa !24
  %i.bpm = getelementptr inbounds nuw i8, ptr %.101988.i, i64 2 ; 2 uses
  %indvars.iv.next2386.i = add nuw nsw i64 %indvars.iv2385.i, 1 ; 2 uses
  %exitcond2389.not.i = icmp eq i64 %indvars.iv.next2386.i, %wide.trip.count2365.i
  br i1 %exitcond2389.not.i, label %._crit_edge1990.i, label %vec.epilog.scalar.ph387, !llvm.loop !129

._crit_edge1994.split.i:                          ; preds = %._crit_edge1990.i, %.preheader1552.i, %.preheader1548.lr.ph.i, %.preheader1549.lr.ph.i
  %indvars.iv.next2392.i = add nuw nsw i64 %indvars.iv2391.i, 1 ; 2 uses
  %indvars.iv.next2360.i = add i32 %indvars.iv2359.i, %i.ayp
  %exitcond2395.not.i = icmp eq i64 %indvars.iv.next2392.i, %wide.trip.count2394.i
  br i1 %exitcond2395.not.i, label %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i, !llvm.loop !130

_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge1994.split.i, %.preheader1556.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float>, ptr, <4 x i32>, <4 x float>, i8 immarg) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float>) #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn35convolution_packed_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %12) local_unnamed_addr #8 {
bb.a:
  tail call fastcc void @_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(64) %12)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %12) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 20 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 20 uses
  %i.g = alloca ptr, align 8                      ; 24 uses
  %i.h = alloca ptr, align 8                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 8 uses
  %i.j = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %8, ptr %i.a, align 4, !tbaa !30
  store i32 %9, ptr %i.b, align 4, !tbaa !30
  store i32 %10, ptr %i.c, align 4, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 21 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32   ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !33
  %i.q = mul i32 %i.p, %i.n                       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 21 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16
  %i.t = sext i32 %i.n to i64
  %i.u = mul i64 %i.s, %i.t
  store i64 %i.u, ptr %i.d, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !35   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !32  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !33
  %i.ad = mul i32 %i.ac, %i.aa                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = sext i32 %i.aa to i64
  %i.ah = mul i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.e, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.ai = mul nsw i32 %5, %4                      ; 4 uses
  store i32 %i.ai, ptr %i.f, align 4, !tbaa !30
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = icmp slt i32 %i.ai, 0
  br i1 %i.ak, label %.noexc2592, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc2592:                                       ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc2593

.noexc2593:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.al = shl nuw nsw i64 %i.aj, 2
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #28 ; 5 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aj ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !30
  %i.ao = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc2593
  %i.aq = getelementptr i8, ptr %i.am, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aq, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !30
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc2593, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi ptr [ %i.an, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.an, %.noexc2593 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.03778.0 = phi ptr [ %i.am, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.am, %.noexc2593 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  store ptr %.sroa.03778.0, ptr %i.g, align 8, !tbaa !36
  %i.ar = mul nsw i32 %i.l, %7
  %i.as = mul nsw i32 %6, %4
  %i.at = sub i32 %i.ar, %i.as
  %i.au = icmp sgt i32 %5, 0
  %i.av = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.au, %i.av
  br i1 %or.cond, label %.preheader4403.preheader, label %._crit_edge4413.split

.preheader4403.preheader:                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.aw = zext nneg i32 %4 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  %min.iters.check6230 = icmp ult i32 %4, 64
  %i.ax = and i64 %i.aw, 56
  %n.vec = and i64 %i.aw, 2147483584              ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ay = trunc nuw nsw i64 %n.vec to i32
  %i.az = mul i32 %6, %i.ay
  %i.ba = shl <16 x i32> %broadcast.splat, splat (i32 4) ; 5 uses
  %broadcast.splatinsert6231 = insertelement <16 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat6232 = shufflevector <16 x i32> %broadcast.splatinsert6231, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.bb = mul nsw <16 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %invariant.op = add <16 x i32> %i.ba, %i.ba     ; 2 uses
  %invariant.op6864 = add <16 x i32> %invariant.op, %i.ba ; 2 uses
  %invariant.op6866 = add <16 x i32> %invariant.op6864, %i.ba
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  %n.vec6236 = and i64 %i.aw, 2147483640          ; 4 uses
  %i.bc = trunc nuw nsw i64 %n.vec6236 to i32
  %i.bd = mul i32 %6, %i.bc
  %broadcast.splatinsert6237 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat6238 = shufflevector <8 x i32> %broadcast.splatinsert6237, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert6241 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat6242 = shufflevector <8 x i32> %broadcast.splatinsert6241, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.be = mul nsw <8 x i32> %broadcast.splat6242, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bf = shl nsw i32 %6, 3
  %broadcast.splatinsert6244 = insertelement <8 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat6245 = shufflevector <8 x i32> %broadcast.splatinsert6244, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n6250 = icmp eq i64 %n.vec6236, %i.aw
  br label %iter.check

iter.check:                                       ; preds = %.preheader4403.preheader, %._crit_edge
  %.016314412 = phi i32 [ %i.cl, %._crit_edge ], [ 0, %.preheader4403.preheader ]
  %.016324411 = phi i32 [ %i.ck, %._crit_edge ], [ 0, %.preheader4403.preheader ] ; 5 uses
  %.016344410 = phi i32 [ %i.bh, %._crit_edge ], [ 0, %.preheader4403.preheader ] ; 2 uses
  %i.bg = sext i32 %.016344410 to i64             ; 5 uses
  %i.bh = add i32 %4, %.016344410                 ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check6230, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = add nsw i64 %n.vec, %i.bg
  %i.bj = add i32 %.016324411, %i.az              ; 3 uses
  %broadcast.splatinsert6233 = insertelement <16 x i32> poison, i32 %.016324411, i64 0
  %broadcast.splat6234 = shufflevector <16 x i32> %broadcast.splatinsert6233, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat6234, %i.bb
  %invariant.gep6865 = getelementptr [4 x i8], ptr %.sroa.03778.0, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 5 uses
  %step.add = add nsw <16 x i32> %vec.ind, %i.ba
  %step.add.2.reass = add <16 x i32> %vec.ind, %invariant.op
  %step.add.3.reass = add <16 x i32> %vec.ind, %invariant.op6864
  %i.bk = mul nsw <16 x i32> %vec.ind, %broadcast.splat6232
  %i.bl = mul nsw <16 x i32> %step.add, %broadcast.splat6232
  %i.bm = mul nsw <16 x i32> %step.add.2.reass, %broadcast.splat6232
  %i.bn = mul nsw <16 x i32> %step.add.3.reass, %broadcast.splat6232
  %gep = getelementptr [4 x i8], ptr %invariant.gep6865, i64 %index ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %gep, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %gep, i64 192
  store <16 x i32> %i.bk, ptr %gep, align 4, !tbaa !30
  store <16 x i32> %i.bl, ptr %i.bo, align 4, !tbaa !30
  store <16 x i32> %i.bm, ptr %i.bp, align 4, !tbaa !30
  store <16 x i32> %i.bn, ptr %i.bq, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next.reass = add <16 x i32> %vec.ind, %invariant.op6866
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val6235 = phi i32 [ %i.bj, %vec.epilog.iter.check ], [ %.016324411, %vector.main.loop.iter.check ]
  %i.bs = add nsw i64 %n.vec6236, %i.bg
  %i.bt = add i32 %.016324411, %i.bd              ; 2 uses
  %broadcast.splatinsert6239 = insertelement <8 x i32> poison, i32 %bc.resume.val6235, i64 0
  %broadcast.splat6240 = shufflevector <8 x i32> %broadcast.splatinsert6239, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction6243 = add nsw <8 x i32> %broadcast.splat6240, %i.be
  %invariant.gep6867 = getelementptr [4 x i8], ptr %.sroa.03778.0, i64 %i.bg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6246 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next6248, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind6247 = phi <8 x i32> [ %induction6243, %vec.epilog.ph ], [ %vec.ind.next6249, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = mul nsw <8 x i32> %vec.ind6247, %broadcast.splat6238
  %gep6868 = getelementptr [4 x i8], ptr %invariant.gep6867, i64 %index6246
  store <8 x i32> %i.bu, ptr %gep6868, align 4, !tbaa !30
  %index.next6248 = add nuw i64 %index6246, 8     ; 2 uses
  %vec.ind.next6249 = add nsw <8 x i32> %vec.ind6247, %broadcast.splat6245
  %i.bv = icmp eq i64 %index.next6248, %n.vec6236
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !137

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n6250, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.bg, %iter.check ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  %.116334407.ph = phi i32 [ %.016324411, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge4413.split:                            ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.bw = load ptr, ptr %3, align 8, !tbaa !15
  store ptr %i.bw, ptr %i.h, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.bx = sdiv i32 %i.ad, 16
  store i32 %i.bx, ptr %i.i, align 4, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !41
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.bz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.i, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.h, ptr nonnull %2, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %11, ptr nonnull %i.e)
  %i.ca = load i32, ptr %i.i, align 4, !tbaa !30
  %i.cb = shl nsw i32 %i.ca, 4                    ; 3 uses
  %i.cc = sub nsw i32 %i.ad, %i.cb                ; 2 uses
  %i.cd = sdiv i32 %i.cc, 8                       ; 3 uses
  store i32 %i.cd, ptr %i.i, align 4, !tbaa !30
  %i.ce = icmp sgt i32 %i.cc, 7
  br i1 %i.ce, label %.noexc2330.lr.ph, label %._crit_edge4630

.noexc2330.lr.ph:                                 ; preds = %._crit_edge4413.split
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cj = sext i32 %i.cb to i64
  %wide.trip.count5522 = zext nneg i32 %i.cd to i64
  br label %.noexc2330

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa6229 = phi i32 [ %i.bt, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %i.co, %vec.epilog.scalar.ph ]
  %i.ck = add nsw i32 %i.at, %.lcssa6229
  %i.cl = add nuw nsw i32 %.016314412, 1          ; 2 uses
  %exitcond5431.not = icmp eq i32 %i.cl, %5
  br i1 %exitcond5431.not, label %._crit_edge4413.split, label %iter.check, !llvm.loop !138

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.116334407 = phi i32 [ %i.co, %vec.epilog.scalar.ph ], [ %.116334407.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cm = mul nsw i32 %.116334407, %i.n
  %i.cn = getelementptr inbounds [4 x i8], ptr %.sroa.03778.0, i64 %indvars.iv
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !30
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.co = add nsw i32 %.116334407, %6             ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bh, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !139

._crit_edge4630:                                  ; preds = %._crit_edge4628.split, %._crit_edge4413.split
  %i.cp = shl nsw i32 %i.cd, 3
  %i.cq = add nsw i32 %i.cp, %i.cb                ; 3 uses
  %i.cr = sub nsw i32 %i.ad, %i.cq                ; 2 uses
  %i.cs = sdiv i32 %i.cr, 4                       ; 3 uses
  store i32 %i.cs, ptr %i.i, align 4, !tbaa !30
  %i.ct = icmp sgt i32 %i.cr, 3
  br i1 %i.ct, label %.noexc2328.lr.ph, label %._crit_edge4853

.noexc2328.lr.ph:                                 ; preds = %._crit_edge4630
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cy = sext i32 %i.cq to i64
  %wide.trip.count5616 = zext nneg i32 %i.cs to i64
  br label %.noexc2328

.noexc2330:                                       ; preds = %.noexc2330.lr.ph, %._crit_edge4628.split
  %indvars.iv5519 = phi i64 [ 0, %.noexc2330.lr.ph ], [ %indvars.iv.next5520, %._crit_edge4628.split ] ; 2 uses
  %i.cz = load i32, ptr %i.m, align 8, !tbaa !32  ; 9 uses
  %i.da = load i32, ptr %i.o, align 8, !tbaa !33
  %i.db = mul i32 %i.da, %i.cz                    ; 12 uses
  %i.dc = load i32, ptr %i.v, align 4, !tbaa !31  ; 2 uses
  %i.dd = load i32, ptr %i.x, align 8, !tbaa !35  ; 2 uses
  %i.de = load i32, ptr %i.z, align 8, !tbaa !32  ; 2 uses
  %i.df = icmp sgt i32 %i.dd, 0
  br i1 %i.df, label %.preheader4402.lr.ph, label %._crit_edge4628.split

.preheader4402.lr.ph:                             ; preds = %.noexc2330
  %i.dg = shl nuw nsw i64 %indvars.iv5519, 3
  %i.dh = add nsw i64 %i.dg, %i.cj                ; 2 uses
  %i.di = trunc nsw i64 %i.dh to i32              ; 3 uses
  %i.dj = icmp sgt i32 %i.dc, 0
  %i.dk = sdiv i32 %i.di, 16
  %i.dl = srem i32 %i.di, 16
  %i.dm = ashr exact i32 %i.dl, 3
  %i.dn = add nsw i32 %i.dm, %i.dk
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp sgt i32 %i.db, 15
  %i.dq = icmp eq i32 %i.cz, 16
  %i.dr = icmp eq i32 %i.cz, 8                    ; 2 uses
  %i.ds = icmp eq i32 %i.cz, 4                    ; 3 uses
  %i.dt = icmp eq i32 %i.cz, 1                    ; 3 uses
  %i.du = load i32, ptr %i.c, align 4
  br i1 %i.dj, label %.preheader4402.preheader, label %._crit_edge4628.split

.preheader4402.preheader:                         ; preds = %.preheader4402.lr.ph
  %i.dv = load ptr, ptr %1, align 8, !tbaa !15, !noalias !280
  %i.dw = load i64, ptr %i.ae, align 8, !tbaa !16, !noalias !280
  %i.dx = sdiv i32 %i.di, %i.de
  %i.dy = sext i32 %i.dx to i64
  %i.dz = mul i64 %i.dw, %i.dy
  %i.ea = load i64, ptr %i.cf, align 8, !tbaa !17, !noalias !280
  %i.eb = mul i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eb
  %i.ed = and i32 %i.db, -16
  %i.ee = add i32 %i.db, -2
  %wide.trip.count5516 = zext nneg i32 %i.dc to i64
  br label %.preheader4402

.preheader4402:                                   ; preds = %.preheader4402.preheader, %._crit_edge4618
  %.016234627 = phi i32 [ %i.er, %._crit_edge4618 ], [ 0, %.preheader4402.preheader ] ; 2 uses
  %.016244626 = phi ptr [ %.41628, %._crit_edge4618 ], [ %i.ec, %.preheader4402.preheader ]
  %i.ef = load i32, ptr %i.b, align 4
  %i.eg = mul nsw i32 %i.ef, %.016234627
  %i.eh = sext i32 %i.eg to i64                   ; 5 uses
  %i.ei = load i32, ptr %i.a, align 4             ; 2 uses
  %factor.op.mul4620 = mul i32 %i.cz, %i.ei       ; 3 uses
  %i.ej = load i32, ptr %i.f, align 4             ; 5 uses
  %i.ek = icmp sgt i32 %i.ej, 0                   ; 2 uses
  %i.el = add i32 %i.ej, -1
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = shl nuw nsw i64 %i.em, 5
  %i.eo = shl nuw nsw i64 %i.em, 4
  %i.ep = sext i32 %i.ei to i64                   ; 2 uses
  %wide.trip.count5498 = zext i32 %i.ej to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count5498, 1
  %i.eq = icmp eq i32 %i.ej, 1
  %unroll_iter = and i64 %wide.trip.count5498, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod6638 = trunc i32 %i.ej to i1
  br label %bb.b

._crit_edge4628.split:                            ; preds = %._crit_edge4618, %.preheader4402.lr.ph, %.noexc2330
  %indvars.iv.next5520 = add nuw nsw i64 %indvars.iv5519, 1 ; 2 uses
  %exitcond5523.not = icmp eq i64 %indvars.iv.next5520, %wide.trip.count5522
  br i1 %exitcond5523.not, label %._crit_edge4630, label %.noexc2330, !llvm.loop !142

._crit_edge4618:                                  ; preds = %.thread4292
  %i.er = add nuw nsw i32 %.016234627, 1          ; 2 uses
  %exitcond5518.not = icmp eq i32 %i.er, %i.dd
  br i1 %exitcond5518.not, label %._crit_edge4628.split, label %.preheader4402, !llvm.loop !143

bb.b:                                             ; preds = %.preheader4402, %.thread4292
end_hunk_0
begin_hunk_1_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.dzj = insertelement <2 x i64> poison, i64 %i.dzi, i64 0
  %i.dzk = bitcast <2 x i64> %i.dzj to <8 x i16>
  %i.dzl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dzk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzm = bitcast <8 x i16> %i.dzl to <4 x float>
  %i.dzn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dzb, <4 x float> nofpclass(nan inf) %i.dzg, <4 x float> nofpclass(nan inf) %i.dyp) ; 3 uses
  %i.dzo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dzb, <4 x float> nofpclass(nan inf) %i.dzm, <4 x float> nofpclass(nan inf) %i.dyq) ; 3 uses
  %i.dzp = getelementptr inbounds nuw i8, ptr %.1715084944, i64 32 ; 2 uses
  %indvars.iv.next5668.1 = add nuw nsw i64 %indvars.iv5667, 2 ; 2 uses
  %niter6673.next.1 = add i64 %niter6673, 2       ; 2 uses
  %niter6673.ncmp.1 = icmp eq i64 %niter6673.next.1, %unroll_iter6672
  br i1 %niter6673.ncmp.1, label %.loopexit4349.thread.unr-lcssa, label %.lr.ph4946, !llvm.loop !231

.loopexit4349.thread.unr-lcssa:                   ; preds = %.lr.ph4946
  br i1 %lcmp.mod6668.not, label %.loopexit4349.thread, label %.lr.ph4946.epil.preheader

.lr.ph4946.epil.preheader:                        ; preds = %.loopexit4349.thread.unr-lcssa, %.lr.ph4946.preheader
  %indvars.iv5667.epil.init = phi i64 [ 0, %.lr.ph4946.preheader ], [ %indvars.iv.next5668.1, %.loopexit4349.thread.unr-lcssa ]
  %.1715084944.epil.init = phi ptr [ %.1615074960, %.lr.ph4946.preheader ], [ %i.dzp, %.loopexit4349.thread.unr-lcssa ] ; 2 uses
  %.140634943.epil.init = phi <4 x float> [ %.040624959, %.lr.ph4946.preheader ], [ %i.dzo, %.loopexit4349.thread.unr-lcssa ]
  %.140684942.epil.init = phi <4 x float> [ %.040674958, %.lr.ph4946.preheader ], [ %i.dzn, %.loopexit4349.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod6671)
  %i.dzq = getelementptr inbounds nuw [4 x i8], ptr %i.dxn, i64 %indvars.iv5667.epil.init
  %i.dzr = load i32, ptr %i.dzq, align 4, !tbaa !30
  %i.dzs = sext i32 %i.dzr to i64
  %i.dzt = getelementptr inbounds [2 x i8], ptr %gep4971, i64 %i.dzs
  %i.dzu = load i64, ptr %i.dzt, align 1, !tbaa !18
  %i.dzv = insertelement <2 x i64> poison, i64 %i.dzu, i64 0
  %i.dzw = bitcast <2 x i64> %i.dzv to <8 x i16>
  %i.dzx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dzw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzy = bitcast <8 x i16> %i.dzx to <4 x float> ; 2 uses
  %i.dzz = load i64, ptr %.1715084944.epil.init, align 1, !tbaa !18
  %i.eaa = insertelement <2 x i64> poison, i64 %i.dzz, i64 0
  %i.eab = bitcast <2 x i64> %i.eaa to <8 x i16>
  %i.eac = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eab, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ead = bitcast <8 x i16> %i.eac to <4 x float>
  %i.eae = getelementptr inbounds nuw i8, ptr %.1715084944.epil.init, i64 8
  %i.eaf = load i64, ptr %i.eae, align 1, !tbaa !18
  %i.eag = insertelement <2 x i64> poison, i64 %i.eaf, i64 0
  %i.eah = bitcast <2 x i64> %i.eag to <8 x i16>
  %i.eai = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eah, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eaj = bitcast <8 x i16> %i.eai to <4 x float>
  %i.eak = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dzy, <4 x float> nofpclass(nan inf) %i.ead, <4 x float> nofpclass(nan inf) %.140684942.epil.init)
  %i.eal = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dzy, <4 x float> nofpclass(nan inf) %i.eaj, <4 x float> nofpclass(nan inf) %.140634943.epil.init)
  br label %.loopexit4349.thread

.loopexit4349.thread:                             ; preds = %.loopexit4349.thread.unr-lcssa, %.lr.ph4946.epil.preheader
  %.lcssa6528 = phi <4 x float> [ %i.dzn, %.loopexit4349.thread.unr-lcssa ], [ %i.eak, %.lr.ph4946.epil.preheader ]
  %.lcssa6527 = phi <4 x float> [ %i.dzo, %.loopexit4349.thread.unr-lcssa ], [ %i.eal, %.lr.ph4946.epil.preheader ]
  %scevgep5669 = getelementptr i8, ptr %.1615074960, i64 16
  %scevgep5670 = getelementptr i8, ptr %scevgep5669, i64 %i.dxr
  br label %.loopexit4347

.loopexit4349:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit2340
  br i1 %brmerge5224, label %.loopexit4347, label %.lr.ph4954

.lr.ph4954:                                       ; preds = %.loopexit4349
  %i.eam = getelementptr i8, ptr %gep4971, i64 %.idx1974
  %i.ean = getelementptr i8, ptr %gep4971, i64 %.idx1975
  %i.eao = getelementptr [2 x i8], ptr %gep4971, i64 %i.dxo
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph4954, %bb.aj
  %indvars.iv5674 = phi i64 [ 0, %.lr.ph4954 ], [ %indvars.iv.next5675, %bb.aj ] ; 2 uses
  %.1915104952 = phi ptr [ %.1615074960, %.lr.ph4954 ], [ %i.ebx, %bb.aj ] ; 3 uses
  %.340654951 = phi <4 x float> [ %.040624959, %.lr.ph4954 ], [ %i.ebw, %bb.aj ]
  %.340704950 = phi <4 x float> [ %.040674958, %.lr.ph4954 ], [ %i.ebv, %bb.aj ]
  %i.eap = getelementptr inbounds nuw [4 x i8], ptr %i.dxn, i64 %indvars.iv5674
  %i.eaq = load i32, ptr %i.eap, align 4, !tbaa !30
  %i.ear = sext i32 %i.eaq to i64                 ; 4 uses
  %i.eas = getelementptr [2 x i8], ptr %i.eam, i64 %i.ear
  %i.eat = load i16, ptr %i.eas, align 2, !tbaa !24
  %i.eau = getelementptr [2 x i8], ptr %i.ean, i64 %i.ear
  %i.eav = load i16, ptr %i.eau, align 2, !tbaa !24
  %i.eaw = getelementptr [2 x i8], ptr %i.eao, i64 %i.ear
  %i.eax = load i16, ptr %i.eaw, align 2, !tbaa !24
  %i.eay = getelementptr inbounds [2 x i8], ptr %gep4971, i64 %i.ear
  %i.eaz = load i16, ptr %i.eay, align 2, !tbaa !24
  %i.eba = zext i16 %i.eat to i32
  %i.ebb = zext i16 %i.eav to i32
  %i.ebc = zext i16 %i.eax to i32
  %i.ebd = zext i16 %i.eaz to i32
  %i.ebe = insertelement <4 x i32> poison, i32 %i.ebd, i64 0
  %i.ebf = insertelement <4 x i32> %i.ebe, i32 %i.ebc, i64 1
  %i.ebg = insertelement <4 x i32> %i.ebf, i32 %i.ebb, i64 2
  %i.ebh = insertelement <4 x i32> %i.ebg, i32 %i.eba, i64 3
  %i.ebi = shl nuw <4 x i32> %i.ebh, splat (i32 16)
  %i.ebj = bitcast <4 x i32> %i.ebi to <4 x float> ; 2 uses
  %i.ebk = load i64, ptr %.1915104952, align 1, !tbaa !18
  %i.ebl = insertelement <2 x i64> poison, i64 %i.ebk, i64 0
  %i.ebm = bitcast <2 x i64> %i.ebl to <8 x i16>
  %i.ebn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ebm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ebo = bitcast <8 x i16> %i.ebn to <4 x float>
  %i.ebp = getelementptr inbounds nuw i8, ptr %.1915104952, i64 8
  %i.ebq = load i64, ptr %i.ebp, align 1, !tbaa !18
  %i.ebr = insertelement <2 x i64> poison, i64 %i.ebq, i64 0
  %i.ebs = bitcast <2 x i64> %i.ebr to <8 x i16>
  %i.ebt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ebs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ebu = bitcast <8 x i16> %i.ebt to <4 x float>
  %i.ebv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebj, <4 x float> nofpclass(nan inf) %i.ebo, <4 x float> nofpclass(nan inf) %.340704950) ; 2 uses
  %i.ebw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebj, <4 x float> nofpclass(nan inf) %i.ebu, <4 x float> nofpclass(nan inf) %.340654951) ; 2 uses
  %i.ebx = getelementptr inbounds nuw i8, ptr %.1915104952, i64 16
  %indvars.iv.next5675 = add nuw nsw i64 %indvars.iv5674, 1 ; 2 uses
  %exitcond5680.not = icmp eq i64 %indvars.iv.next5675, %wide.trip.count5679
  br i1 %exitcond5680.not, label %.loopexit4347.loopexit, label %bb.aj, !llvm.loop !232

.loopexit4347.loopexit:                           ; preds = %bb.aj
  %scevgep5676 = getelementptr i8, ptr %.1615074960, i64 16
  %scevgep5677 = getelementptr i8, ptr %scevgep5676, i64 %i.dxr
  br label %.loopexit4347

.loopexit4347:                                    ; preds = %.loopexit4349.thread, %.loopexit4347.loopexit, %.loopexit4349
  %.44071 = phi nsz <4 x float> [ %.040674958, %.loopexit4349 ], [ %i.ebv, %.loopexit4347.loopexit ], [ %.lcssa6528, %.loopexit4349.thread ] ; 2 uses
  %.44066 = phi nsz <4 x float> [ %.040624959, %.loopexit4349 ], [ %i.ebw, %.loopexit4347.loopexit ], [ %.lcssa6527, %.loopexit4349.thread ] ; 2 uses
  %.201511 = phi ptr [ %.1615074960, %.loopexit4349 ], [ %scevgep5677, %.loopexit4347.loopexit ], [ %scevgep5670, %.loopexit4349.thread ] ; 2 uses
  %i.eby = add nuw nsw i32 %.214884961, 4         ; 3 uses
  %i.ebz = or disjoint i32 %i.eby, 3
  %i.eca = icmp slt i32 %i.ebz, %i.axv
  br i1 %i.eca, label %_ZN4ncnn3MatD2Ev.exit2340, label %._crit_edge4962, !llvm.loop !233

._crit_edge4962:                                  ; preds = %.loopexit4347, %._crit_edge4932
  %.04067.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge4932 ], [ %.44071, %.loopexit4347 ] ; 4 uses
  %.04062.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge4932 ], [ %.44066, %.loopexit4347 ] ; 4 uses
  %.161507.lcssa = phi ptr [ %.91500.lcssa, %._crit_edge4932 ], [ %.201511, %.loopexit4347 ] ; 3 uses
  %.21488.lcssa = phi i32 [ %.11487.lcssa, %._crit_edge4932 ], [ %i.eby, %.loopexit4347 ] ; 5 uses
  %i.ecb = shufflevector <4 x float> %i.dre, <4 x float> %i.drk, <2 x i32> <i32 3, i32 7>
  %i.ecc = shufflevector <4 x float> %i.dre, <4 x float> %i.drk, <2 x i32> <i32 1, i32 5>
  %i.ecd = fadd fast <2 x float> %i.ecb, %i.ecc
  %i.ece = fadd fast <2 x float> %i.ecd, %i.dhm
  %i.ecf = shufflevector <4 x float> %i.dre, <4 x float> %i.drk, <2 x i32> <i32 2, i32 6>
  %i.ecg = shufflevector <4 x float> %i.dre, <4 x float> %i.drk, <2 x i32> <i32 0, i32 4>
  %i.ech = fadd fast <2 x float> %i.ecf, %i.ecg
  %i.eci = fadd fast <2 x float> %i.ece, %i.ech
  %i.ecj = shufflevector <4 x float> %i.dww, <4 x float> %i.dwz, <2 x i32> <i32 3, i32 7>
  %i.eck = shufflevector <4 x float> %i.dww, <4 x float> %i.dwz, <2 x i32> <i32 1, i32 5>
  %i.ecl = fadd fast <2 x float> %i.ecj, %i.eck
  %i.ecm = fadd fast <2 x float> %i.eci, %i.ecl
  %i.ecn = shufflevector <4 x float> %i.dww, <4 x float> %i.dwz, <2 x i32> <i32 2, i32 6>
  %i.eco = shufflevector <4 x float> %i.dww, <4 x float> %i.dwz, <2 x i32> <i32 0, i32 4>
  %i.ecp = fadd fast <2 x float> %i.ecn, %i.eco
  %i.ecq = fadd fast <2 x float> %i.ecm, %i.ecp
  %i.ecr = shufflevector <4 x float> %.04067.lcssa, <4 x float> %.04062.lcssa, <2 x i32> <i32 3, i32 7>
  %i.ecs = shufflevector <4 x float> %.04067.lcssa, <4 x float> %.04062.lcssa, <2 x i32> <i32 1, i32 5>
  %i.ect = fadd fast <2 x float> %i.ecr, %i.ecs
  %i.ecu = fadd fast <2 x float> %i.ecq, %i.ect
  %i.ecv = shufflevector <4 x float> %.04067.lcssa, <4 x float> %.04062.lcssa, <2 x i32> <i32 2, i32 6>
  %i.ecw = shufflevector <4 x float> %.04067.lcssa, <4 x float> %.04062.lcssa, <2 x i32> <i32 0, i32 4>
  %i.ecx = fadd fast <2 x float> %i.ecv, %i.ecw
  %i.ecy = fadd fast <2 x float> %i.ecu, %i.ecx   ; 3 uses
  %i.ecz = or disjoint i32 %.21488.lcssa, 1
  %i.eda = icmp slt i32 %i.ecz, %i.axv
  br i1 %i.eda, label %_ZN4ncnn3MatD2Ev.exit2339.lr.ph, label %.preheader4361

_ZN4ncnn3MatD2Ev.exit2339.lr.ph:                  ; preds = %._crit_edge4962
  %i.edb = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !301
  %i.edc = load ptr, ptr %0, align 8, !tbaa !15, !noalias !301
  %i.edd = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !301
  %i.ede = load i64, ptr %i.ayf, align 8, !tbaa !17, !noalias !301 ; 2 uses
  %factor.op.mul4989 = mul i64 %i.edd, %i.ede
  %i.edf = sext i32 %i.edb to i64
  %i.edg = mul i64 %i.ede, %i.edf
  %i.edh = mul i64 %i.edg, %i.dgv
  %invariant.gep4991 = getelementptr i8, ptr %i.edc, i64 %i.edh
  %i.edi = mul nsw i64 %indvars.iv5701, %i.dhd
  %invariant.gep4992 = getelementptr [2 x i8], ptr %invariant.gep4991, i64 %i.edi
  %i.edj = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.edk = load i64, ptr %i.d, align 8
  br i1 %i.dgy, label %_ZN4ncnn3MatD2Ev.exit2339.us.preheader, label %_ZN4ncnn3MatD2Ev.exit2339.preheader

_ZN4ncnn3MatD2Ev.exit2339.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit2339.lr.ph
  %i.edl = add i32 %.21488.lcssa, 2
  %i.edm = sub i32 %i.ays, %.21488.lcssa
  %i.edn = and i32 %i.edm, -2
  %i.edo = add i32 %i.edl, %i.edn
  br label %.preheader4361

_ZN4ncnn3MatD2Ev.exit2339.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2339.lr.ph
  %i.edp = zext i32 %.21488.lcssa to i64
  br label %iter.check6348

iter.check6348:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2339.us.preheader, %._crit_edge4977.us
  %indvars.iv5688 = phi i64 [ %i.edp, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %indvars.iv.next5689, %._crit_edge4977.us ] ; 2 uses
  %.2115124983.us = phi ptr [ %.161507.lcssa, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %scevgep5684, %._crit_edge4977.us ] ; 7 uses
  %i.edq = phi <2 x float> [ %i.ecy, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %i.etu, %._crit_edge4977.us ] ; 4 uses
  %.reass4990.us = mul i64 %factor.op.mul4989, %indvars.iv5688
  %gep4993.us = getelementptr i8, ptr %invariant.gep4992, i64 %.reass4990.us ; 42 uses
  %i.edr = getelementptr [2 x i8], ptr %gep4993.us, i64 %i.edk ; 41 uses
  br i1 %min.iters.check6315, label %vec.epilog.scalar.ph6349.preheader, label %vector.main.loop.iter.check6316

vector.main.loop.iter.check6316:                  ; preds = %iter.check6348
  %i.eds = extractelement <2 x float> %i.edq, i64 0
  %i.edt = extractelement <2 x float> %i.edq, i64 1
  br i1 %min.iters.check6317, label %vec.epilog.ph6352, label %vector.ph6318

vector.ph6318:                                    ; preds = %vector.main.loop.iter.check6316
  %i.edu = getelementptr i8, ptr %.2115124983.us, i64 %i.dhf
  %i.edv = shufflevector <2 x float> %i.edq, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.edw = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.edv, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.edx = shufflevector <16 x float> %i.edv, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body6320

vector.body6320:                                  ; preds = %vector.ph6318, %vector.body6320
  %index6321 = phi i64 [ 0, %vector.ph6318 ], [ %index.next6340, %vector.body6320 ] ; 3 uses
  %vec.phi6322 = phi <16 x float> [ %i.edw, %vector.ph6318 ], [ %i.eos, %vector.body6320 ]
  %vec.phi6323 = phi <16 x float> [ zeroinitializer, %vector.ph6318 ], [ %i.eot, %vector.body6320 ]
  %vec.phi6324 = phi <16 x float> [ %i.edx, %vector.ph6318 ], [ %i.eoi, %vector.body6320 ]
  %vec.phi6325 = phi <16 x float> [ zeroinitializer, %vector.ph6318 ], [ %i.eoj, %vector.body6320 ]
  %i.edy = shl i64 %index6321, 3                  ; 2 uses
  %next.gep6326 = getelementptr i8, ptr %.2115124983.us, i64 %i.edy
  %i.edz = getelementptr i8, ptr %.2115124983.us, i64 %i.edy
  %next.gep6327 = getelementptr i8, ptr %i.edz, i64 128
  %i.eea = getelementptr inbounds nuw [4 x i8], ptr %i.edj, i64 %index6321 ; 2 uses
  %i.eeb = getelementptr inbounds nuw i8, ptr %i.eea, i64 64
  %wide.load6328 = load <16 x i32>, ptr %i.eea, align 4, !tbaa !30
  %wide.load6329 = load <16 x i32>, ptr %i.eeb, align 4, !tbaa !30
  %i.eec = sext <16 x i32> %wide.load6328 to <16 x i64> ; 16 uses
  %i.eed = sext <16 x i32> %wide.load6329 to <16 x i64> ; 16 uses
  %i.eee = extractelement <16 x i64> %i.eec, i64 0 ; 2 uses
  %i.eef = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eee
  %i.eeg = extractelement <16 x i64> %i.eec, i64 1 ; 2 uses
  %i.eeh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeg
  %i.eei = extractelement <16 x i64> %i.eec, i64 2 ; 2 uses
  %i.eej = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eei
  %i.eek = extractelement <16 x i64> %i.eec, i64 3 ; 2 uses
  %i.eel = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eek
  %i.eem = extractelement <16 x i64> %i.eec, i64 4 ; 2 uses
  %i.een = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eem
  %i.eeo = extractelement <16 x i64> %i.eec, i64 5 ; 2 uses
  %i.eep = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeo
  %i.eeq = extractelement <16 x i64> %i.eec, i64 6 ; 2 uses
  %i.eer = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeq
  %i.ees = extractelement <16 x i64> %i.eec, i64 7 ; 2 uses
  %i.eet = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ees
  %i.eeu = extractelement <16 x i64> %i.eec, i64 8 ; 2 uses
  %i.eev = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeu
  %i.eew = extractelement <16 x i64> %i.eec, i64 9 ; 2 uses
  %i.eex = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eew
  %i.eey = extractelement <16 x i64> %i.eec, i64 10 ; 2 uses
  %i.eez = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eey
  %i.efa = extractelement <16 x i64> %i.eec, i64 11 ; 2 uses
  %i.efb = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efa
  %i.efc = extractelement <16 x i64> %i.eec, i64 12 ; 2 uses
  %i.efd = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efc
  %i.efe = extractelement <16 x i64> %i.eec, i64 13 ; 2 uses
  %i.eff = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efe
  %i.efg = extractelement <16 x i64> %i.eec, i64 14 ; 2 uses
  %i.efh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efg
  %i.efi = extractelement <16 x i64> %i.eec, i64 15 ; 2 uses
  %i.efj = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efi
  %i.efk = extractelement <16 x i64> %i.eed, i64 0 ; 2 uses
  %i.efl = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efk
  %i.efm = extractelement <16 x i64> %i.eed, i64 1 ; 2 uses
  %i.efn = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efm
  %i.efo = extractelement <16 x i64> %i.eed, i64 2 ; 2 uses
  %i.efp = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efo
  %i.efq = extractelement <16 x i64> %i.eed, i64 3 ; 2 uses
  %i.efr = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efq
  %i.efs = extractelement <16 x i64> %i.eed, i64 4 ; 2 uses
  %i.eft = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efs
  %i.efu = extractelement <16 x i64> %i.eed, i64 5 ; 2 uses
  %i.efv = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efu
  %i.efw = extractelement <16 x i64> %i.eed, i64 6 ; 2 uses
  %i.efx = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efw
  %i.efy = extractelement <16 x i64> %i.eed, i64 7 ; 2 uses
  %i.efz = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efy
  %i.ega = extractelement <16 x i64> %i.eed, i64 8 ; 2 uses
  %i.egb = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ega
  %i.egc = extractelement <16 x i64> %i.eed, i64 9 ; 2 uses
  %i.egd = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egc
  %i.ege = extractelement <16 x i64> %i.eed, i64 10 ; 2 uses
  %i.egf = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ege
  %i.egg = extractelement <16 x i64> %i.eed, i64 11 ; 2 uses
  %i.egh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egg
  %i.egi = extractelement <16 x i64> %i.eed, i64 12 ; 2 uses
  %i.egj = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egi
  %i.egk = extractelement <16 x i64> %i.eed, i64 13 ; 2 uses
  %i.egl = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egk
  %i.egm = extractelement <16 x i64> %i.eed, i64 14 ; 2 uses
  %i.egn = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egm
  %i.ego = extractelement <16 x i64> %i.eed, i64 15 ; 2 uses
  %i.egp = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ego
  %i.egq = load i16, ptr %i.eef, align 2, !tbaa !24
  %i.egr = load i16, ptr %i.eeh, align 2, !tbaa !24
  %i.egs = load i16, ptr %i.eej, align 2, !tbaa !24
  %i.egt = load i16, ptr %i.eel, align 2, !tbaa !24
  %i.egu = load i16, ptr %i.een, align 2, !tbaa !24
  %i.egv = load i16, ptr %i.eep, align 2, !tbaa !24
  %i.egw = load i16, ptr %i.eer, align 2, !tbaa !24
  %i.egx = load i16, ptr %i.eet, align 2, !tbaa !24
  %i.egy = load i16, ptr %i.eev, align 2, !tbaa !24
  %i.egz = load i16, ptr %i.eex, align 2, !tbaa !24
  %i.eha = load i16, ptr %i.eez, align 2, !tbaa !24
  %i.ehb = load i16, ptr %i.efb, align 2, !tbaa !24
  %i.ehc = load i16, ptr %i.efd, align 2, !tbaa !24
  %i.ehd = load i16, ptr %i.eff, align 2, !tbaa !24
  %i.ehe = load i16, ptr %i.efh, align 2, !tbaa !24
  %i.ehf = load i16, ptr %i.efj, align 2, !tbaa !24
  %i.ehg = insertelement <16 x i16> poison, i16 %i.egq, i64 0
  %i.ehh = insertelement <16 x i16> %i.ehg, i16 %i.egr, i64 1
  %i.ehi = insertelement <16 x i16> %i.ehh, i16 %i.egs, i64 2
  %i.ehj = insertelement <16 x i16> %i.ehi, i16 %i.egt, i64 3
  %i.ehk = insertelement <16 x i16> %i.ehj, i16 %i.egu, i64 4
  %i.ehl = insertelement <16 x i16> %i.ehk, i16 %i.egv, i64 5
  %i.ehm = insertelement <16 x i16> %i.ehl, i16 %i.egw, i64 6
  %i.ehn = insertelement <16 x i16> %i.ehm, i16 %i.egx, i64 7
  %i.eho = insertelement <16 x i16> %i.ehn, i16 %i.egy, i64 8
  %i.ehp = insertelement <16 x i16> %i.eho, i16 %i.egz, i64 9
  %i.ehq = insertelement <16 x i16> %i.ehp, i16 %i.eha, i64 10
  %i.ehr = insertelement <16 x i16> %i.ehq, i16 %i.ehb, i64 11
  %i.ehs = insertelement <16 x i16> %i.ehr, i16 %i.ehc, i64 12
  %i.eht = insertelement <16 x i16> %i.ehs, i16 %i.ehd, i64 13
  %i.ehu = insertelement <16 x i16> %i.eht, i16 %i.ehe, i64 14
  %i.ehv = insertelement <16 x i16> %i.ehu, i16 %i.ehf, i64 15
  %i.ehw = load i16, ptr %i.efl, align 2, !tbaa !24
  %i.ehx = load i16, ptr %i.efn, align 2, !tbaa !24
  %i.ehy = load i16, ptr %i.efp, align 2, !tbaa !24
  %i.ehz = load i16, ptr %i.efr, align 2, !tbaa !24
  %i.eia = load i16, ptr %i.eft, align 2, !tbaa !24
  %i.eib = load i16, ptr %i.efv, align 2, !tbaa !24
  %i.eic = load i16, ptr %i.efx, align 2, !tbaa !24
  %i.eid = load i16, ptr %i.efz, align 2, !tbaa !24
  %i.eie = load i16, ptr %i.egb, align 2, !tbaa !24
  %i.eif = load i16, ptr %i.egd, align 2, !tbaa !24
  %i.eig = load i16, ptr %i.egf, align 2, !tbaa !24
  %i.eih = load i16, ptr %i.egh, align 2, !tbaa !24
  %i.eii = load i16, ptr %i.egj, align 2, !tbaa !24
  %i.eij = load i16, ptr %i.egl, align 2, !tbaa !24
  %i.eik = load i16, ptr %i.egn, align 2, !tbaa !24
  %i.eil = load i16, ptr %i.egp, align 2, !tbaa !24
  %i.eim = insertelement <16 x i16> poison, i16 %i.ehw, i64 0
  %i.ein = insertelement <16 x i16> %i.eim, i16 %i.ehx, i64 1
  %i.eio = insertelement <16 x i16> %i.ein, i16 %i.ehy, i64 2
  %i.eip = insertelement <16 x i16> %i.eio, i16 %i.ehz, i64 3
  %i.eiq = insertelement <16 x i16> %i.eip, i16 %i.eia, i64 4
  %i.eir = insertelement <16 x i16> %i.eiq, i16 %i.eib, i64 5
  %i.eis = insertelement <16 x i16> %i.eir, i16 %i.eic, i64 6
  %i.eit = insertelement <16 x i16> %i.eis, i16 %i.eid, i64 7
  %i.eiu = insertelement <16 x i16> %i.eit, i16 %i.eie, i64 8
  %i.eiv = insertelement <16 x i16> %i.eiu, i16 %i.eif, i64 9
  %i.eiw = insertelement <16 x i16> %i.eiv, i16 %i.eig, i64 10
  %i.eix = insertelement <16 x i16> %i.eiw, i16 %i.eih, i64 11
  %i.eiy = insertelement <16 x i16> %i.eix, i16 %i.eii, i64 12
  %i.eiz = insertelement <16 x i16> %i.eiy, i16 %i.eij, i64 13
  %i.eja = insertelement <16 x i16> %i.eiz, i16 %i.eik, i64 14
  %i.ejb = insertelement <16 x i16> %i.eja, i16 %i.eil, i64 15
  %i.ejc = zext <16 x i16> %i.ehv to <16 x i32>
  %i.ejd = zext <16 x i16> %i.ejb to <16 x i32>
  %i.eje = shl nuw <16 x i32> %i.ejc, splat (i32 16)
  %i.ejf = shl nuw <16 x i32> %i.ejd, splat (i32 16)
  %i.ejg = bitcast <16 x i32> %i.eje to <16 x float> ; 2 uses
  %i.ejh = bitcast <16 x i32> %i.ejf to <16 x float> ; 2 uses
  %wide.vec6330 = load <64 x i16>, ptr %next.gep6326, align 2, !tbaa !24 ; 4 uses
  %strided.vec6331 = shufflevector <64 x i16> %wide.vec6330, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec6332 = shufflevector <64 x i16> %wide.vec6330, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec6333 = shufflevector <64 x i16> %wide.vec6330, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec6334 = shufflevector <64 x i16> %wide.vec6330, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec6335 = load <64 x i16>, ptr %next.gep6327, align 2, !tbaa !24 ; 4 uses
  %strided.vec6336 = shufflevector <64 x i16> %wide.vec6335, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec6337 = shufflevector <64 x i16> %wide.vec6335, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec6338 = shufflevector <64 x i16> %wide.vec6335, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec6339 = shufflevector <64 x i16> %wide.vec6335, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.eji = zext <16 x i16> %strided.vec6331 to <16 x i32>
  %i.ejj = zext <16 x i16> %strided.vec6336 to <16 x i32>
  %i.ejk = shl nuw <16 x i32> %i.eji, splat (i32 16)
  %i.ejl = shl nuw <16 x i32> %i.ejj, splat (i32 16)
  %i.ejm = bitcast <16 x i32> %i.ejk to <16 x float>
  %i.ejn = bitcast <16 x i32> %i.ejl to <16 x float>
  %i.ejo = fmul fast <16 x float> %i.ejm, %i.ejg
  %i.ejp = fmul fast <16 x float> %i.ejn, %i.ejh
  %i.ejq = fadd fast <16 x float> %vec.phi6324, %i.ejo
  %i.ejr = fadd fast <16 x float> %vec.phi6325, %i.ejp
  %i.ejs = zext <16 x i16> %strided.vec6332 to <16 x i32>
  %i.ejt = zext <16 x i16> %strided.vec6337 to <16 x i32>
  %i.eju = shl nuw <16 x i32> %i.ejs, splat (i32 16)
  %i.ejv = shl nuw <16 x i32> %i.ejt, splat (i32 16)
  %i.ejw = bitcast <16 x i32> %i.eju to <16 x float>
  %i.ejx = bitcast <16 x i32> %i.ejv to <16 x float>
  %i.ejy = fmul fast <16 x float> %i.ejw, %i.ejg
  %i.ejz = fmul fast <16 x float> %i.ejx, %i.ejh
  %i.eka = fadd fast <16 x float> %vec.phi6322, %i.ejy
  %i.ekb = fadd fast <16 x float> %vec.phi6323, %i.ejz
  %i.ekc = getelementptr [2 x i8], ptr %i.edr, i64 %i.eee
  %i.ekd = getelementptr [2 x i8], ptr %i.edr, i64 %i.eeg
  %i.eke = getelementptr [2 x i8], ptr %i.edr, i64 %i.eei
  %i.ekf = getelementptr [2 x i8], ptr %i.edr, i64 %i.eek
  %i.ekg = getelementptr [2 x i8], ptr %i.edr, i64 %i.eem
  %i.ekh = getelementptr [2 x i8], ptr %i.edr, i64 %i.eeo
  %i.eki = getelementptr [2 x i8], ptr %i.edr, i64 %i.eeq
  %i.ekj = getelementptr [2 x i8], ptr %i.edr, i64 %i.ees
  %i.ekk = getelementptr [2 x i8], ptr %i.edr, i64 %i.eeu
  %i.ekl = getelementptr [2 x i8], ptr %i.edr, i64 %i.eew
  %i.ekm = getelementptr [2 x i8], ptr %i.edr, i64 %i.eey
  %i.ekn = getelementptr [2 x i8], ptr %i.edr, i64 %i.efa
  %i.eko = getelementptr [2 x i8], ptr %i.edr, i64 %i.efc
  %i.ekp = getelementptr [2 x i8], ptr %i.edr, i64 %i.efe
  %i.ekq = getelementptr [2 x i8], ptr %i.edr, i64 %i.efg
  %i.ekr = getelementptr [2 x i8], ptr %i.edr, i64 %i.efi
  %i.eks = getelementptr [2 x i8], ptr %i.edr, i64 %i.efk
  %i.ekt = getelementptr [2 x i8], ptr %i.edr, i64 %i.efm
  %i.eku = getelementptr [2 x i8], ptr %i.edr, i64 %i.efo
  %i.ekv = getelementptr [2 x i8], ptr %i.edr, i64 %i.efq
  %i.ekw = getelementptr [2 x i8], ptr %i.edr, i64 %i.efs
end_hunk_1
begin_hunk_2_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.epi = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eph
  %i.epj = extractelement <8 x i64> %i.epe, i64 2 ; 2 uses
  %i.epk = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.epj
  %i.epl = extractelement <8 x i64> %i.epe, i64 3 ; 2 uses
  %i.epm = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.epl
  %i.epn = extractelement <8 x i64> %i.epe, i64 4 ; 2 uses
  %i.epo = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.epn
  %i.epp = extractelement <8 x i64> %i.epe, i64 5 ; 2 uses
  %i.epq = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.epp
  %i.epr = extractelement <8 x i64> %i.epe, i64 6 ; 2 uses
  %i.eps = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.epr
  %i.ept = extractelement <8 x i64> %i.epe, i64 7 ; 2 uses
  %i.epu = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ept
  %i.epv = load i16, ptr %i.epg, align 2, !tbaa !24
  %i.epw = load i16, ptr %i.epi, align 2, !tbaa !24
  %i.epx = load i16, ptr %i.epk, align 2, !tbaa !24
  %i.epy = load i16, ptr %i.epm, align 2, !tbaa !24
  %i.epz = load i16, ptr %i.epo, align 2, !tbaa !24
  %i.eqa = load i16, ptr %i.epq, align 2, !tbaa !24
  %i.eqb = load i16, ptr %i.eps, align 2, !tbaa !24
  %i.eqc = load i16, ptr %i.epu, align 2, !tbaa !24
  %i.eqd = insertelement <8 x i16> poison, i16 %i.epv, i64 0
  %i.eqe = insertelement <8 x i16> %i.eqd, i16 %i.epw, i64 1
  %i.eqf = insertelement <8 x i16> %i.eqe, i16 %i.epx, i64 2
  %i.eqg = insertelement <8 x i16> %i.eqf, i16 %i.epy, i64 3
  %i.eqh = insertelement <8 x i16> %i.eqg, i16 %i.epz, i64 4
  %i.eqi = insertelement <8 x i16> %i.eqh, i16 %i.eqa, i64 5
  %i.eqj = insertelement <8 x i16> %i.eqi, i16 %i.eqb, i64 6
  %i.eqk = insertelement <8 x i16> %i.eqj, i16 %i.eqc, i64 7
  %i.eql = zext <8 x i16> %i.eqk to <8 x i32>
  %i.eqm = shl nuw <8 x i32> %i.eql, splat (i32 16)
  %i.eqn = bitcast <8 x i32> %i.eqm to <8 x float> ; 2 uses
  %wide.vec6360 = load <32 x i16>, ptr %next.gep6358, align 2, !tbaa !24 ; 4 uses
  %strided.vec6361 = shufflevector <32 x i16> %wide.vec6360, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec6362 = shufflevector <32 x i16> %wide.vec6360, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec6363 = shufflevector <32 x i16> %wide.vec6360, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec6364 = shufflevector <32 x i16> %wide.vec6360, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.eqo = zext <8 x i16> %strided.vec6361 to <8 x i32>
  %i.eqp = shl nuw <8 x i32> %i.eqo, splat (i32 16)
  %i.eqq = bitcast <8 x i32> %i.eqp to <8 x float>
  %i.eqr = fmul fast <8 x float> %i.eqq, %i.eqn
  %i.eqs = fadd fast <8 x float> %vec.phi6357, %i.eqr
  %i.eqt = zext <8 x i16> %strided.vec6362 to <8 x i32>
  %i.equ = shl nuw <8 x i32> %i.eqt, splat (i32 16)
  %i.eqv = bitcast <8 x i32> %i.equ to <8 x float>
  %i.eqw = fmul fast <8 x float> %i.eqv, %i.eqn
  %i.eqx = fadd fast <8 x float> %vec.phi6356, %i.eqw
  %i.eqy = getelementptr [2 x i8], ptr %i.edr, i64 %i.epf
  %i.eqz = getelementptr [2 x i8], ptr %i.edr, i64 %i.eph
  %i.era = getelementptr [2 x i8], ptr %i.edr, i64 %i.epj
  %i.erb = getelementptr [2 x i8], ptr %i.edr, i64 %i.epl
  %i.erc = getelementptr [2 x i8], ptr %i.edr, i64 %i.epn
  %i.erd = getelementptr [2 x i8], ptr %i.edr, i64 %i.epp
  %i.ere = getelementptr [2 x i8], ptr %i.edr, i64 %i.epr
  %i.erf = getelementptr [2 x i8], ptr %i.edr, i64 %i.ept
  %i.erg = load i16, ptr %i.eqy, align 2, !tbaa !24
  %i.erh = load i16, ptr %i.eqz, align 2, !tbaa !24
  %i.eri = load i16, ptr %i.era, align 2, !tbaa !24
  %i.erj = load i16, ptr %i.erb, align 2, !tbaa !24
  %i.erk = load i16, ptr %i.erc, align 2, !tbaa !24
  %i.erl = load i16, ptr %i.erd, align 2, !tbaa !24
  %i.erm = load i16, ptr %i.ere, align 2, !tbaa !24
  %i.ern = load i16, ptr %i.erf, align 2, !tbaa !24
  %i.ero = insertelement <8 x i16> poison, i16 %i.erg, i64 0
  %i.erp = insertelement <8 x i16> %i.ero, i16 %i.erh, i64 1
  %i.erq = insertelement <8 x i16> %i.erp, i16 %i.eri, i64 2
  %i.err = insertelement <8 x i16> %i.erq, i16 %i.erj, i64 3
  %i.ers = insertelement <8 x i16> %i.err, i16 %i.erk, i64 4
  %i.ert = insertelement <8 x i16> %i.ers, i16 %i.erl, i64 5
  %i.eru = insertelement <8 x i16> %i.ert, i16 %i.erm, i64 6
  %i.erv = insertelement <8 x i16> %i.eru, i16 %i.ern, i64 7
  %i.erw = zext <8 x i16> %i.erv to <8 x i32>
  %i.erx = shl nuw <8 x i32> %i.erw, splat (i32 16)
  %i.ery = bitcast <8 x i32> %i.erx to <8 x float> ; 2 uses
  %i.erz = zext <8 x i16> %strided.vec6363 to <8 x i32>
  %i.esa = shl nuw <8 x i32> %i.erz, splat (i32 16)
  %i.esb = bitcast <8 x i32> %i.esa to <8 x float>
  %i.esc = fmul fast <8 x float> %i.esb, %i.ery
  %i.esd = fadd fast <8 x float> %i.esc, %i.eqs   ; 2 uses
  %i.ese = zext <8 x i16> %strided.vec6364 to <8 x i32>
  %i.esf = shl nuw <8 x i32> %i.ese, splat (i32 16)
  %i.esg = bitcast <8 x i32> %i.esf to <8 x float>
  %i.esh = fmul fast <8 x float> %i.esg, %i.ery
  %i.esi = fadd fast <8 x float> %i.esh, %i.eqx   ; 2 uses
  %index.next6365 = add nuw i64 %index6355, 8     ; 2 uses
  %i.esj = icmp eq i64 %index.next6365, %n.vec6353
  br i1 %i.esj, label %vec.epilog.middle.block6366, label %vec.epilog.vector.body6354, !llvm.loop !237

vec.epilog.middle.block6366:                      ; preds = %vec.epilog.vector.body6354
  %i.esk = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.esi)
  %i.esl = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.esd)
  %i.esm = insertelement <2 x float> poison, float %i.esl, i64 0
  %i.esn = insertelement <2 x float> %i.esm, float %i.esk, i64 1 ; 2 uses
  br i1 %cmp.n6367, label %._crit_edge4977.us, label %vec.epilog.scalar.ph6349.preheader

vec.epilog.scalar.ph6349.preheader:               ; preds = %iter.check6348, %vec.epilog.iter.check6350, %vec.epilog.middle.block6366
  %indvars.iv5681.ph = phi i64 [ 0, %iter.check6348 ], [ %n.vec6319, %vec.epilog.iter.check6350 ], [ %n.vec6353, %vec.epilog.middle.block6366 ]
  %.2215134974.us.ph = phi ptr [ %.2115124983.us, %iter.check6348 ], [ %i.edu, %vec.epilog.iter.check6350 ], [ %i.eoz, %vec.epilog.middle.block6366 ]
  %.ph6511 = phi <2 x float> [ %i.edq, %iter.check6348 ], [ %i.eoy, %vec.epilog.iter.check6350 ], [ %i.esn, %vec.epilog.middle.block6366 ]
  br label %vec.epilog.scalar.ph6349

vec.epilog.scalar.ph6349:                         ; preds = %vec.epilog.scalar.ph6349.preheader, %vec.epilog.scalar.ph6349
  %indvars.iv5681 = phi i64 [ %indvars.iv.next5682, %vec.epilog.scalar.ph6349 ], [ %indvars.iv5681.ph, %vec.epilog.scalar.ph6349.preheader ] ; 2 uses
  %.2215134974.us = phi ptr [ %i.ett, %vec.epilog.scalar.ph6349 ], [ %.2215134974.us.ph, %vec.epilog.scalar.ph6349.preheader ] ; 3 uses
  %i.eso = phi <2 x float> [ %i.ets, %vec.epilog.scalar.ph6349 ], [ %.ph6511, %vec.epilog.scalar.ph6349.preheader ]
  %i.esp = getelementptr inbounds nuw [4 x i8], ptr %i.edj, i64 %indvars.iv5681
  %i.esq = load i32, ptr %i.esp, align 4, !tbaa !30
  %i.esr = sext i32 %i.esq to i64                 ; 2 uses
  %i.ess = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.esr
  %i.est = load i16, ptr %i.ess, align 2, !tbaa !24
  %i.esu = getelementptr [2 x i8], ptr %i.edr, i64 %i.esr
  %i.esv = load i16, ptr %i.esu, align 2, !tbaa !24
  %i.esw = getelementptr inbounds nuw i8, ptr %.2215134974.us, i64 4
  %i.esx = load <2 x i16>, ptr %.2215134974.us, align 2, !tbaa !24
  %i.esy = zext <2 x i16> %i.esx to <2 x i32>
  %i.esz = shl nuw <2 x i32> %i.esy, splat (i32 16)
  %i.eta = bitcast <2 x i32> %i.esz to <2 x float>
  %i.etb = zext i16 %i.est to i32
  %i.etc = zext i16 %i.esv to i32
  %i.etd = shl nuw i32 %i.etb, 16
  %i.ete = shl nuw i32 %i.etc, 16
  %i.etf = insertelement <2 x i32> poison, i32 %i.etd, i64 0
  %i.etg = bitcast <2 x i32> %i.etf to <2 x float>
  %i.eth = shufflevector <2 x float> %i.etg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eti = fmul fast <2 x float> %i.eth, %i.eta
  %i.etj = fadd fast <2 x float> %i.eso, %i.eti
  %i.etk = load <2 x i16>, ptr %i.esw, align 2, !tbaa !24
  %i.etl = zext <2 x i16> %i.etk to <2 x i32>
  %i.etm = shl nuw <2 x i32> %i.etl, splat (i32 16)
  %i.etn = bitcast <2 x i32> %i.etm to <2 x float>
  %i.eto = insertelement <2 x i32> poison, i32 %i.ete, i64 0
  %i.etp = bitcast <2 x i32> %i.eto to <2 x float>
  %i.etq = shufflevector <2 x float> %i.etp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.etr = fmul fast <2 x float> %i.etq, %i.etn
  %i.ets = fadd fast <2 x float> %i.etr, %i.etj   ; 2 uses
  %i.ett = getelementptr inbounds nuw i8, ptr %.2215134974.us, i64 8
  %indvars.iv.next5682 = add nuw nsw i64 %indvars.iv5681, 1 ; 2 uses
  %exitcond5687.not = icmp eq i64 %indvars.iv.next5682, %wide.trip.count5686
  br i1 %exitcond5687.not, label %._crit_edge4977.us, label %vec.epilog.scalar.ph6349, !llvm.loop !238

._crit_edge4977.us:                               ; preds = %vec.epilog.scalar.ph6349, %vec.epilog.middle.block6366, %middle.block6341
  %i.etu = phi <2 x float> [ %i.esn, %vec.epilog.middle.block6366 ], [ %i.eoy, %middle.block6341 ], [ %i.ets, %vec.epilog.scalar.ph6349 ] ; 2 uses
  %scevgep5683 = getelementptr i8, ptr %.2115124983.us, i64 8
  %scevgep5684 = getelementptr i8, ptr %scevgep5683, i64 %i.dhb ; 2 uses
  %indvars.iv.next5689 = add nuw nsw i64 %indvars.iv5688, 2 ; 3 uses
  %i.etv = trunc i64 %indvars.iv.next5689 to i32
  %i.etw = or i32 %i.etv, 1
  %i.etx = icmp slt i32 %i.etw, %i.axv
  br i1 %i.etx, label %iter.check6348, label %.preheader4361.loopexit, !llvm.loop !239

.preheader4361.loopexit:                          ; preds = %._crit_edge4977.us
  %i.ety = trunc nuw i64 %indvars.iv.next5689 to i32
  br label %.preheader4361

.preheader4361:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2339.preheader, %.preheader4361.loopexit, %._crit_edge4962
  %.211512.lcssa = phi ptr [ %.161507.lcssa, %._crit_edge4962 ], [ %scevgep5684, %.preheader4361.loopexit ], [ %.161507.lcssa, %_ZN4ncnn3MatD2Ev.exit2339.preheader ]
  %.31489.lcssa = phi i32 [ %.21488.lcssa, %._crit_edge4962 ], [ %i.ety, %.preheader4361.loopexit ], [ %i.edo, %_ZN4ncnn3MatD2Ev.exit2339.preheader ] ; 2 uses
  %i.etz = phi <2 x float> [ %i.ecy, %._crit_edge4962 ], [ %i.etu, %.preheader4361.loopexit ], [ %i.ecy, %_ZN4ncnn3MatD2Ev.exit2339.preheader ] ; 3 uses
  %i.eua = icmp slt i32 %.31489.lcssa, %i.axv
  br i1 %i.eua, label %_ZN4ncnn3MatD2Ev.exit2338.lr.ph, label %._crit_edge5011

_ZN4ncnn3MatD2Ev.exit2338.lr.ph:                  ; preds = %.preheader4361
  %i.eub = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !302
  %i.euc = load ptr, ptr %0, align 8, !tbaa !15, !noalias !302
  %i.eud = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !302
  %i.eue = load i64, ptr %i.ayf, align 8, !tbaa !17, !noalias !302 ; 2 uses
  %factor.op.mul5014 = mul i64 %i.eud, %i.eue
  %i.euf = sext i32 %i.eub to i64
  %i.eug = mul i64 %i.eue, %i.euf
  %i.euh = mul i64 %i.eug, %i.dgv
  %invariant.gep5016 = getelementptr i8, ptr %i.euc, i64 %i.euh
  %i.eui = mul nsw i64 %indvars.iv5701, %i.dhd
  %invariant.gep5017 = getelementptr [2 x i8], ptr %invariant.gep5016, i64 %i.eui
  %i.euj = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.dgy, label %_ZN4ncnn3MatD2Ev.exit2338.us.preheader, label %._crit_edge5011

_ZN4ncnn3MatD2Ev.exit2338.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2338.lr.ph
  %i.euk = zext i32 %.31489.lcssa to i64
  br label %iter.check6293

iter.check6293:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2338.us.preheader, %._crit_edge5003.us
  %indvars.iv5698 = phi i64 [ %i.euk, %_ZN4ncnn3MatD2Ev.exit2338.us.preheader ], [ %indvars.iv.next5699, %._crit_edge5003.us ] ; 2 uses
  %.2315145009.us = phi ptr [ %.211512.lcssa, %_ZN4ncnn3MatD2Ev.exit2338.us.preheader ], [ %scevgep5694, %._crit_edge5003.us ] ; 9 uses
  %i.eul = phi <2 x float> [ %i.etz, %_ZN4ncnn3MatD2Ev.exit2338.us.preheader ], [ %i.fkg, %._crit_edge5003.us ] ; 4 uses
  %.reass5015.us = mul i64 %factor.op.mul5014, %indvars.iv5698
  %gep5018.us = getelementptr i8, ptr %invariant.gep5017, i64 %.reass5015.us ; 73 uses
  br i1 %min.iters.check6253, label %vec.epilog.scalar.ph6294.preheader, label %vector.main.loop.iter.check6254

vector.main.loop.iter.check6254:                  ; preds = %iter.check6293
  %i.eum = extractelement <2 x float> %i.eul, i64 0
  %i.eun = extractelement <2 x float> %i.eul, i64 1
  br i1 %min.iters.check6255, label %vec.epilog.ph6297, label %vector.ph6256

vector.ph6256:                                    ; preds = %vector.main.loop.iter.check6254
  %i.euo = getelementptr i8, ptr %.2315145009.us, i64 %i.dhi
  %i.eup = shufflevector <2 x float> %i.eul, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.euq = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.eup, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eur = shufflevector <16 x float> %i.eup, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body6258

vector.body6258:                                  ; preds = %vector.ph6256, %vector.body6258
  %index6259 = phi i64 [ 0, %vector.ph6256 ], [ %index.next6283, %vector.body6258 ] ; 3 uses
  %vec.phi = phi <16 x float> [ %i.euq, %vector.ph6256 ], [ %i.fha, %vector.body6258 ]
  %vec.phi6260 = phi <16 x float> [ zeroinitializer, %vector.ph6256 ], [ %i.fhb, %vector.body6258 ]
  %vec.phi6261 = phi <16 x float> [ zeroinitializer, %vector.ph6256 ], [ %i.fhc, %vector.body6258 ]
  %vec.phi6262 = phi <16 x float> [ zeroinitializer, %vector.ph6256 ], [ %i.fhd, %vector.body6258 ]
  %vec.phi6263 = phi <16 x float> [ %i.eur, %vector.ph6256 ], [ %i.fgo, %vector.body6258 ]
  %vec.phi6264 = phi <16 x float> [ zeroinitializer, %vector.ph6256 ], [ %i.fgp, %vector.body6258 ]
  %vec.phi6265 = phi <16 x float> [ zeroinitializer, %vector.ph6256 ], [ %i.fgq, %vector.body6258 ]
  %vec.phi6266 = phi <16 x float> [ zeroinitializer, %vector.ph6256 ], [ %i.fgr, %vector.body6258 ]
  %i.eus = shl i64 %index6259, 2                  ; 4 uses
  %next.gep = getelementptr i8, ptr %.2315145009.us, i64 %i.eus
  %i.eut = getelementptr i8, ptr %.2315145009.us, i64 %i.eus
  %next.gep6267 = getelementptr i8, ptr %i.eut, i64 64
  %i.euu = getelementptr i8, ptr %.2315145009.us, i64 %i.eus
  %next.gep6268 = getelementptr i8, ptr %i.euu, i64 128
  %i.euv = getelementptr i8, ptr %.2315145009.us, i64 %i.eus
  %next.gep6269 = getelementptr i8, ptr %i.euv, i64 192
  %i.euw = getelementptr inbounds nuw [4 x i8], ptr %i.euj, i64 %index6259 ; 4 uses
  %i.eux = getelementptr inbounds nuw i8, ptr %i.euw, i64 64
  %i.euy = getelementptr inbounds nuw i8, ptr %i.euw, i64 128
  %i.euz = getelementptr inbounds nuw i8, ptr %i.euw, i64 192
  %wide.load = load <16 x i32>, ptr %i.euw, align 4, !tbaa !30
  %wide.load6270 = load <16 x i32>, ptr %i.eux, align 4, !tbaa !30
  %wide.load6271 = load <16 x i32>, ptr %i.euy, align 4, !tbaa !30
  %wide.load6272 = load <16 x i32>, ptr %i.euz, align 4, !tbaa !30
  %i.eva = sext <16 x i32> %wide.load to <16 x i64> ; 16 uses
  %i.evb = sext <16 x i32> %wide.load6270 to <16 x i64> ; 16 uses
  %i.evc = sext <16 x i32> %wide.load6271 to <16 x i64> ; 16 uses
  %i.evd = sext <16 x i32> %wide.load6272 to <16 x i64> ; 16 uses
  %i.eve = extractelement <16 x i64> %i.eva, i64 0
  %i.evf = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eve
  %i.evg = extractelement <16 x i64> %i.eva, i64 1
  %i.evh = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evg
  %i.evi = extractelement <16 x i64> %i.eva, i64 2
  %i.evj = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evi
  %i.evk = extractelement <16 x i64> %i.eva, i64 3
  %i.evl = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evk
  %i.evm = extractelement <16 x i64> %i.eva, i64 4
  %i.evn = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evm
  %i.evo = extractelement <16 x i64> %i.eva, i64 5
  %i.evp = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evo
  %i.evq = extractelement <16 x i64> %i.eva, i64 6
  %i.evr = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evq
  %i.evs = extractelement <16 x i64> %i.eva, i64 7
  %i.evt = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evs
  %i.evu = extractelement <16 x i64> %i.eva, i64 8
  %i.evv = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evu
  %i.evw = extractelement <16 x i64> %i.eva, i64 9
  %i.evx = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evw
  %i.evy = extractelement <16 x i64> %i.eva, i64 10
  %i.evz = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evy
  %i.ewa = extractelement <16 x i64> %i.eva, i64 11
  %i.ewb = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewa
  %i.ewc = extractelement <16 x i64> %i.eva, i64 12
  %i.ewd = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewc
  %i.ewe = extractelement <16 x i64> %i.eva, i64 13
  %i.ewf = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewe
  %i.ewg = extractelement <16 x i64> %i.eva, i64 14
  %i.ewh = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewg
  %i.ewi = extractelement <16 x i64> %i.eva, i64 15
  %i.ewj = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewi
  %i.ewk = extractelement <16 x i64> %i.evb, i64 0
  %i.ewl = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewk
  %i.ewm = extractelement <16 x i64> %i.evb, i64 1
  %i.ewn = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewm
  %i.ewo = extractelement <16 x i64> %i.evb, i64 2
  %i.ewp = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewo
  %i.ewq = extractelement <16 x i64> %i.evb, i64 3
  %i.ewr = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewq
  %i.ews = extractelement <16 x i64> %i.evb, i64 4
  %i.ewt = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ews
  %i.ewu = extractelement <16 x i64> %i.evb, i64 5
  %i.ewv = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewu
  %i.eww = extractelement <16 x i64> %i.evb, i64 6
  %i.ewx = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eww
  %i.ewy = extractelement <16 x i64> %i.evb, i64 7
  %i.ewz = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewy
  %i.exa = extractelement <16 x i64> %i.evb, i64 8
  %i.exb = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exa
  %i.exc = extractelement <16 x i64> %i.evb, i64 9
  %i.exd = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exc
  %i.exe = extractelement <16 x i64> %i.evb, i64 10
  %i.exf = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exe
  %i.exg = extractelement <16 x i64> %i.evb, i64 11
  %i.exh = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exg
  %i.exi = extractelement <16 x i64> %i.evb, i64 12
  %i.exj = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exi
  %i.exk = extractelement <16 x i64> %i.evb, i64 13
  %i.exl = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exk
  %i.exm = extractelement <16 x i64> %i.evb, i64 14
  %i.exn = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exm
  %i.exo = extractelement <16 x i64> %i.evb, i64 15
  %i.exp = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exo
  %i.exq = extractelement <16 x i64> %i.evc, i64 0
  %i.exr = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exq
  %i.exs = extractelement <16 x i64> %i.evc, i64 1
  %i.ext = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exs
  %i.exu = extractelement <16 x i64> %i.evc, i64 2
  %i.exv = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exu
  %i.exw = extractelement <16 x i64> %i.evc, i64 3
  %i.exx = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exw
  %i.exy = extractelement <16 x i64> %i.evc, i64 4
  %i.exz = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exy
  %i.eya = extractelement <16 x i64> %i.evc, i64 5
  %i.eyb = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eya
  %i.eyc = extractelement <16 x i64> %i.evc, i64 6
  %i.eyd = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyc
  %i.eye = extractelement <16 x i64> %i.evc, i64 7
  %i.eyf = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eye
  %i.eyg = extractelement <16 x i64> %i.evc, i64 8
  %i.eyh = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyg
  %i.eyi = extractelement <16 x i64> %i.evc, i64 9
  %i.eyj = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyi
  %i.eyk = extractelement <16 x i64> %i.evc, i64 10
  %i.eyl = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyk
  %i.eym = extractelement <16 x i64> %i.evc, i64 11
  %i.eyn = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eym
  %i.eyo = extractelement <16 x i64> %i.evc, i64 12
  %i.eyp = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyo
  %i.eyq = extractelement <16 x i64> %i.evc, i64 13
  %i.eyr = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyq
  %i.eys = extractelement <16 x i64> %i.evc, i64 14
  %i.eyt = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eys
  %i.eyu = extractelement <16 x i64> %i.evc, i64 15
  %i.eyv = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyu
  %i.eyw = extractelement <16 x i64> %i.evd, i64 0
  %i.eyx = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyw
  %i.eyy = extractelement <16 x i64> %i.evd, i64 1
  %i.eyz = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyy
  %i.eza = extractelement <16 x i64> %i.evd, i64 2
  %i.ezb = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eza
  %i.ezc = extractelement <16 x i64> %i.evd, i64 3
  %i.ezd = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ezc
  %i.eze = extractelement <16 x i64> %i.evd, i64 4
  %i.ezf = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eze
  %i.ezg = extractelement <16 x i64> %i.evd, i64 5
  %i.ezh = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ezg
  %i.ezi = extractelement <16 x i64> %i.evd, i64 6
  %i.ezj = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ezi
  %i.ezk = extractelement <16 x i64> %i.evd, i64 7
  %i.ezl = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ezk
  %i.ezm = extractelement <16 x i64> %i.evd, i64 8
  %i.ezn = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ezm
  %i.ezo = extractelement <16 x i64> %i.evd, i64 9
  %i.ezp = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ezo
  %i.ezq = extractelement <16 x i64> %i.evd, i64 10
  %i.ezr = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ezq
  %i.ezs = extractelement <16 x i64> %i.evd, i64 11
  %i.ezt = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ezs
  %i.ezu = extractelement <16 x i64> %i.evd, i64 12
  %i.ezv = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ezu
  %i.ezw = extractelement <16 x i64> %i.evd, i64 13
  %i.ezx = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ezw
  %i.ezy = extractelement <16 x i64> %i.evd, i64 14
  %i.ezz = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ezy
  %i.faa = extractelement <16 x i64> %i.evd, i64 15
  %i.fab = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.faa
  %i.fac = load i16, ptr %i.evf, align 2, !tbaa !24
  %i.fad = load i16, ptr %i.evh, align 2, !tbaa !24
  %i.fae = load i16, ptr %i.evj, align 2, !tbaa !24
  %i.faf = load i16, ptr %i.evl, align 2, !tbaa !24
  %i.fag = load i16, ptr %i.evn, align 2, !tbaa !24
  %i.fah = load i16, ptr %i.evp, align 2, !tbaa !24
  %i.fai = load i16, ptr %i.evr, align 2, !tbaa !24
  %i.faj = load i16, ptr %i.evt, align 2, !tbaa !24
  %i.fak = load i16, ptr %i.evv, align 2, !tbaa !24
  %i.fal = load i16, ptr %i.evx, align 2, !tbaa !24
  %i.fam = load i16, ptr %i.evz, align 2, !tbaa !24
  %i.fan = load i16, ptr %i.ewb, align 2, !tbaa !24
  %i.fao = load i16, ptr %i.ewd, align 2, !tbaa !24
  %i.fap = load i16, ptr %i.ewf, align 2, !tbaa !24
  %i.faq = load i16, ptr %i.ewh, align 2, !tbaa !24
  %i.far = load i16, ptr %i.ewj, align 2, !tbaa !24
  %i.fas = insertelement <16 x i16> poison, i16 %i.fac, i64 0
  %i.fat = insertelement <16 x i16> %i.fas, i16 %i.fad, i64 1
  %i.fau = insertelement <16 x i16> %i.fat, i16 %i.fae, i64 2
  %i.fav = insertelement <16 x i16> %i.fau, i16 %i.faf, i64 3
  %i.faw = insertelement <16 x i16> %i.fav, i16 %i.fag, i64 4
  %i.fax = insertelement <16 x i16> %i.faw, i16 %i.fah, i64 5
  %i.fay = insertelement <16 x i16> %i.fax, i16 %i.fai, i64 6
  %i.faz = insertelement <16 x i16> %i.fay, i16 %i.faj, i64 7
  %i.fba = insertelement <16 x i16> %i.faz, i16 %i.fak, i64 8
  %i.fbb = insertelement <16 x i16> %i.fba, i16 %i.fal, i64 9
  %i.fbc = insertelement <16 x i16> %i.fbb, i16 %i.fam, i64 10
  %i.fbd = insertelement <16 x i16> %i.fbc, i16 %i.fan, i64 11
  %i.fbe = insertelement <16 x i16> %i.fbd, i16 %i.fao, i64 12
  %i.fbf = insertelement <16 x i16> %i.fbe, i16 %i.fap, i64 13
  %i.fbg = insertelement <16 x i16> %i.fbf, i16 %i.faq, i64 14
  %i.fbh = insertelement <16 x i16> %i.fbg, i16 %i.far, i64 15
  %i.fbi = load i16, ptr %i.ewl, align 2, !tbaa !24
  %i.fbj = load i16, ptr %i.ewn, align 2, !tbaa !24
  %i.fbk = load i16, ptr %i.ewp, align 2, !tbaa !24
  %i.fbl = load i16, ptr %i.ewr, align 2, !tbaa !24
  %i.fbm = load i16, ptr %i.ewt, align 2, !tbaa !24
  %i.fbn = load i16, ptr %i.ewv, align 2, !tbaa !24
  %i.fbo = load i16, ptr %i.ewx, align 2, !tbaa !24
  %i.fbp = load i16, ptr %i.ewz, align 2, !tbaa !24
  %i.fbq = load i16, ptr %i.exb, align 2, !tbaa !24
  %i.fbr = load i16, ptr %i.exd, align 2, !tbaa !24
  %i.fbs = load i16, ptr %i.exf, align 2, !tbaa !24
end_hunk_2
begin_hunk_3_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.fex = insertelement <16 x i16> %i.few, i16 %i.feh, i64 13
  %i.fey = insertelement <16 x i16> %i.fex, i16 %i.fei, i64 14
  %i.fez = insertelement <16 x i16> %i.fey, i16 %i.fej, i64 15
  %i.ffa = zext <16 x i16> %i.fbh to <16 x i32>
  %i.ffb = zext <16 x i16> %i.fcn to <16 x i32>
  %i.ffc = zext <16 x i16> %i.fdt to <16 x i32>
  %i.ffd = zext <16 x i16> %i.fez to <16 x i32>
  %i.ffe = shl nuw <16 x i32> %i.ffa, splat (i32 16)
  %i.fff = shl nuw <16 x i32> %i.ffb, splat (i32 16)
  %i.ffg = shl nuw <16 x i32> %i.ffc, splat (i32 16)
  %i.ffh = shl nuw <16 x i32> %i.ffd, splat (i32 16)
  %i.ffi = bitcast <16 x i32> %i.ffe to <16 x float> ; 2 uses
  %i.ffj = bitcast <16 x i32> %i.fff to <16 x float> ; 2 uses
  %i.ffk = bitcast <16 x i32> %i.ffg to <16 x float> ; 2 uses
  %i.ffl = bitcast <16 x i32> %i.ffh to <16 x float> ; 2 uses
  %wide.vec = load <32 x i16>, ptr %next.gep, align 2, !tbaa !24
  %i.ffm = freeze <32 x i16> %wide.vec            ; 2 uses
  %i.ffn = bitcast <32 x i16> %i.ffm to <16 x i32>
  %i.ffo = bitcast <32 x i16> %i.ffm to <16 x i32>
  %i.ffp = and <16 x i32> %i.ffo, splat (i32 -65536)
  %wide.vec6274 = load <32 x i16>, ptr %next.gep6267, align 2, !tbaa !24
  %i.ffq = freeze <32 x i16> %wide.vec6274        ; 2 uses
  %i.ffr = bitcast <32 x i16> %i.ffq to <16 x i32>
  %i.ffs = bitcast <32 x i16> %i.ffq to <16 x i32>
  %i.fft = and <16 x i32> %i.ffs, splat (i32 -65536)
  %wide.vec6277 = load <32 x i16>, ptr %next.gep6268, align 2, !tbaa !24
  %i.ffu = freeze <32 x i16> %wide.vec6277        ; 2 uses
  %i.ffv = bitcast <32 x i16> %i.ffu to <16 x i32>
  %i.ffw = bitcast <32 x i16> %i.ffu to <16 x i32>
  %i.ffx = and <16 x i32> %i.ffw, splat (i32 -65536)
  %wide.vec6280 = load <32 x i16>, ptr %next.gep6269, align 2, !tbaa !24
  %i.ffy = freeze <32 x i16> %wide.vec6280        ; 2 uses
  %i.ffz = bitcast <32 x i16> %i.ffy to <16 x i32>
  %i.fga = bitcast <32 x i16> %i.ffy to <16 x i32>
  %i.fgb = and <16 x i32> %i.fga, splat (i32 -65536)
  %i.fgc = shl <16 x i32> %i.ffn, splat (i32 16)
  %i.fgd = shl <16 x i32> %i.ffr, splat (i32 16)
  %i.fge = shl <16 x i32> %i.ffv, splat (i32 16)
  %i.fgf = shl <16 x i32> %i.ffz, splat (i32 16)
  %i.fgg = bitcast <16 x i32> %i.fgc to <16 x float>
  %i.fgh = bitcast <16 x i32> %i.fgd to <16 x float>
  %i.fgi = bitcast <16 x i32> %i.fge to <16 x float>
  %i.fgj = bitcast <16 x i32> %i.fgf to <16 x float>
  %i.fgk = fmul fast <16 x float> %i.fgg, %i.ffi
  %i.fgl = fmul fast <16 x float> %i.fgh, %i.ffj
  %i.fgm = fmul fast <16 x float> %i.fgi, %i.ffk
  %i.fgn = fmul fast <16 x float> %i.fgj, %i.ffl
  %i.fgo = fadd fast <16 x float> %i.fgk, %vec.phi6263 ; 2 uses
  %i.fgp = fadd fast <16 x float> %i.fgl, %vec.phi6264 ; 2 uses
  %i.fgq = fadd fast <16 x float> %i.fgm, %vec.phi6265 ; 2 uses
  %i.fgr = fadd fast <16 x float> %i.fgn, %vec.phi6266 ; 2 uses
  %i.fgs = bitcast <16 x i32> %i.ffp to <16 x float>
  %i.fgt = bitcast <16 x i32> %i.fft to <16 x float>
  %i.fgu = bitcast <16 x i32> %i.ffx to <16 x float>
  %i.fgv = bitcast <16 x i32> %i.fgb to <16 x float>
  %i.fgw = fmul fast <16 x float> %i.fgs, %i.ffi
  %i.fgx = fmul fast <16 x float> %i.fgt, %i.ffj
  %i.fgy = fmul fast <16 x float> %i.fgu, %i.ffk
  %i.fgz = fmul fast <16 x float> %i.fgv, %i.ffl
  %i.fha = fadd fast <16 x float> %i.fgw, %vec.phi ; 2 uses
  %i.fhb = fadd fast <16 x float> %i.fgx, %vec.phi6260 ; 2 uses
  %i.fhc = fadd fast <16 x float> %i.fgy, %vec.phi6261 ; 2 uses
  %i.fhd = fadd fast <16 x float> %i.fgz, %vec.phi6262 ; 2 uses
  %index.next6283 = add nuw i64 %index6259, 64    ; 2 uses
  %i.fhe = icmp eq i64 %index.next6283, %n.vec6257
  br i1 %i.fhe, label %middle.block6284, label %vector.body6258, !llvm.loop !242

middle.block6284:                                 ; preds = %vector.body6258
  %bin.rdx = fadd fast <16 x float> %i.fhb, %i.fha
  %bin.rdx6285 = fadd fast <16 x float> %i.fhc, %bin.rdx
  %bin.rdx6286 = fadd fast <16 x float> %i.fhd, %bin.rdx6285
  %i.fhf = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx6286) ; 2 uses
  %bin.rdx6287 = fadd fast <16 x float> %i.fgp, %i.fgo
  %bin.rdx6288 = fadd fast <16 x float> %i.fgq, %bin.rdx6287
  %bin.rdx6289 = fadd fast <16 x float> %i.fgr, %bin.rdx6288
  %i.fhg = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx6289) ; 2 uses
  %i.fhh = insertelement <2 x float> poison, float %i.fhg, i64 0
  %i.fhi = insertelement <2 x float> %i.fhh, float %i.fhf, i64 1 ; 2 uses
  br i1 %cmp.n6290, label %._crit_edge5003.us, label %vec.epilog.iter.check6295

vec.epilog.iter.check6295:                        ; preds = %middle.block6284
  br i1 %min.epilog.iters.check6296, label %vec.epilog.scalar.ph6294.preheader, label %vec.epilog.ph6297, !prof !29

vec.epilog.ph6297:                                ; preds = %vector.main.loop.iter.check6254, %vec.epilog.iter.check6295
  %vec.epilog.resume.val6291 = phi i64 [ %n.vec6257, %vec.epilog.iter.check6295 ], [ 0, %vector.main.loop.iter.check6254 ]
  %bc.merge.rdx = phi float [ %i.fhf, %vec.epilog.iter.check6295 ], [ %i.eun, %vector.main.loop.iter.check6254 ]
  %bc.merge.rdx6292 = phi float [ %i.fhg, %vec.epilog.iter.check6295 ], [ %i.eum, %vector.main.loop.iter.check6254 ]
  %i.fhj = getelementptr i8, ptr %.2315145009.us, i64 %i.dhj
  %i.fhk = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.fhl = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx6292, i64 0
  br label %vec.epilog.vector.body6299

vec.epilog.vector.body6299:                       ; preds = %vec.epilog.vector.body6299, %vec.epilog.ph6297
  %index6300 = phi i64 [ %vec.epilog.resume.val6291, %vec.epilog.ph6297 ], [ %index.next6308, %vec.epilog.vector.body6299 ] ; 3 uses
  %vec.phi6301 = phi <8 x float> [ %i.fhk, %vec.epilog.ph6297 ], [ %i.fji, %vec.epilog.vector.body6299 ]
  %vec.phi6302 = phi <8 x float> [ %i.fhl, %vec.epilog.ph6297 ], [ %i.fjf, %vec.epilog.vector.body6299 ]
  %i.fhm = shl i64 %index6300, 2
  %next.gep6303 = getelementptr i8, ptr %.2315145009.us, i64 %i.fhm
  %i.fhn = getelementptr inbounds nuw [4 x i8], ptr %i.euj, i64 %index6300
  %wide.load6304 = load <8 x i32>, ptr %i.fhn, align 4, !tbaa !30
  %i.fho = sext <8 x i32> %wide.load6304 to <8 x i64> ; 8 uses
  %i.fhp = extractelement <8 x i64> %i.fho, i64 0
  %i.fhq = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.fhp
  %i.fhr = extractelement <8 x i64> %i.fho, i64 1
  %i.fhs = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.fhr
  %i.fht = extractelement <8 x i64> %i.fho, i64 2
  %i.fhu = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.fht
  %i.fhv = extractelement <8 x i64> %i.fho, i64 3
  %i.fhw = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.fhv
  %i.fhx = extractelement <8 x i64> %i.fho, i64 4
  %i.fhy = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.fhx
  %i.fhz = extractelement <8 x i64> %i.fho, i64 5
  %i.fia = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.fhz
  %i.fib = extractelement <8 x i64> %i.fho, i64 6
  %i.fic = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.fib
  %i.fid = extractelement <8 x i64> %i.fho, i64 7
  %i.fie = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.fid
  %i.fif = load i16, ptr %i.fhq, align 2, !tbaa !24
  %i.fig = load i16, ptr %i.fhs, align 2, !tbaa !24
  %i.fih = load i16, ptr %i.fhu, align 2, !tbaa !24
  %i.fii = load i16, ptr %i.fhw, align 2, !tbaa !24
  %i.fij = load i16, ptr %i.fhy, align 2, !tbaa !24
  %i.fik = load i16, ptr %i.fia, align 2, !tbaa !24
  %i.fil = load i16, ptr %i.fic, align 2, !tbaa !24
  %i.fim = load i16, ptr %i.fie, align 2, !tbaa !24
  %i.fin = insertelement <8 x i16> poison, i16 %i.fif, i64 0
  %i.fio = insertelement <8 x i16> %i.fin, i16 %i.fig, i64 1
  %i.fip = insertelement <8 x i16> %i.fio, i16 %i.fih, i64 2
  %i.fiq = insertelement <8 x i16> %i.fip, i16 %i.fii, i64 3
  %i.fir = insertelement <8 x i16> %i.fiq, i16 %i.fij, i64 4
  %i.fis = insertelement <8 x i16> %i.fir, i16 %i.fik, i64 5
  %i.fit = insertelement <8 x i16> %i.fis, i16 %i.fil, i64 6
  %i.fiu = insertelement <8 x i16> %i.fit, i16 %i.fim, i64 7
  %i.fiv = zext <8 x i16> %i.fiu to <8 x i32>
  %i.fiw = shl nuw <8 x i32> %i.fiv, splat (i32 16)
  %i.fix = bitcast <8 x i32> %i.fiw to <8 x float> ; 2 uses
  %wide.vec6305 = load <16 x i16>, ptr %next.gep6303, align 2, !tbaa !24
  %i.fiy = freeze <16 x i16> %wide.vec6305        ; 2 uses
  %i.fiz = bitcast <16 x i16> %i.fiy to <8 x i32>
  %i.fja = bitcast <16 x i16> %i.fiy to <8 x i32>
  %i.fjb = and <8 x i32> %i.fja, splat (i32 -65536)
  %i.fjc = shl <8 x i32> %i.fiz, splat (i32 16)
  %i.fjd = bitcast <8 x i32> %i.fjc to <8 x float>
  %i.fje = fmul fast <8 x float> %i.fjd, %i.fix
  %i.fjf = fadd fast <8 x float> %i.fje, %vec.phi6302 ; 2 uses
  %i.fjg = bitcast <8 x i32> %i.fjb to <8 x float>
  %i.fjh = fmul fast <8 x float> %i.fjg, %i.fix
  %i.fji = fadd fast <8 x float> %i.fjh, %vec.phi6301 ; 2 uses
  %index.next6308 = add nuw i64 %index6300, 8     ; 2 uses
  %i.fjj = icmp eq i64 %index.next6308, %n.vec6298
  br i1 %i.fjj, label %vec.epilog.middle.block6309, label %vec.epilog.vector.body6299, !llvm.loop !243

vec.epilog.middle.block6309:                      ; preds = %vec.epilog.vector.body6299
  %i.fjk = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.fji)
  %i.fjl = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.fjf)
  %i.fjm = insertelement <2 x float> poison, float %i.fjl, i64 0
  %i.fjn = insertelement <2 x float> %i.fjm, float %i.fjk, i64 1 ; 2 uses
  br i1 %cmp.n6310, label %._crit_edge5003.us, label %vec.epilog.scalar.ph6294.preheader

vec.epilog.scalar.ph6294.preheader:               ; preds = %iter.check6293, %vec.epilog.iter.check6295, %vec.epilog.middle.block6309
  %indvars.iv5691.ph = phi i64 [ 0, %iter.check6293 ], [ %n.vec6257, %vec.epilog.iter.check6295 ], [ %n.vec6298, %vec.epilog.middle.block6309 ]
  %.2415155000.us.ph = phi ptr [ %.2315145009.us, %iter.check6293 ], [ %i.euo, %vec.epilog.iter.check6295 ], [ %i.fhj, %vec.epilog.middle.block6309 ]
  %.ph = phi <2 x float> [ %i.eul, %iter.check6293 ], [ %i.fhi, %vec.epilog.iter.check6295 ], [ %i.fjn, %vec.epilog.middle.block6309 ]
  br label %vec.epilog.scalar.ph6294

vec.epilog.scalar.ph6294:                         ; preds = %vec.epilog.scalar.ph6294.preheader, %vec.epilog.scalar.ph6294
  %indvars.iv5691 = phi i64 [ %indvars.iv.next5692, %vec.epilog.scalar.ph6294 ], [ %indvars.iv5691.ph, %vec.epilog.scalar.ph6294.preheader ] ; 2 uses
  %.2415155000.us = phi ptr [ %i.fkf, %vec.epilog.scalar.ph6294 ], [ %.2415155000.us.ph, %vec.epilog.scalar.ph6294.preheader ] ; 2 uses
  %i.fjo = phi <2 x float> [ %i.fke, %vec.epilog.scalar.ph6294 ], [ %.ph, %vec.epilog.scalar.ph6294.preheader ]
  %i.fjp = getelementptr inbounds nuw [4 x i8], ptr %i.euj, i64 %indvars.iv5691
  %i.fjq = load i32, ptr %i.fjp, align 4, !tbaa !30
  %i.fjr = sext i32 %i.fjq to i64
  %i.fjs = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.fjr
  %i.fjt = load i16, ptr %i.fjs, align 2, !tbaa !24
  %i.fju = zext i16 %i.fjt to i32
  %i.fjv = shl nuw i32 %i.fju, 16
  %i.fjw = load <2 x i16>, ptr %.2415155000.us, align 2, !tbaa !24
  %i.fjx = zext <2 x i16> %i.fjw to <2 x i32>
  %i.fjy = shl nuw <2 x i32> %i.fjx, splat (i32 16)
  %i.fjz = bitcast <2 x i32> %i.fjy to <2 x float>
  %i.fka = insertelement <2 x i32> poison, i32 %i.fjv, i64 0
  %i.fkb = bitcast <2 x i32> %i.fka to <2 x float>
  %i.fkc = shufflevector <2 x float> %i.fkb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fkd = fmul fast <2 x float> %i.fkc, %i.fjz
  %i.fke = fadd fast <2 x float> %i.fkd, %i.fjo   ; 2 uses
  %i.fkf = getelementptr inbounds nuw i8, ptr %.2415155000.us, i64 4
  %indvars.iv.next5692 = add nuw nsw i64 %indvars.iv5691, 1 ; 2 uses
  %exitcond5697.not = icmp eq i64 %indvars.iv.next5692, %wide.trip.count5696
  br i1 %exitcond5697.not, label %._crit_edge5003.us, label %vec.epilog.scalar.ph6294, !llvm.loop !244

._crit_edge5003.us:                               ; preds = %vec.epilog.scalar.ph6294, %vec.epilog.middle.block6309, %middle.block6284
  %i.fkg = phi <2 x float> [ %i.fjn, %vec.epilog.middle.block6309 ], [ %i.fhi, %middle.block6284 ], [ %i.fke, %vec.epilog.scalar.ph6294 ] ; 2 uses
  %scevgep5693 = getelementptr i8, ptr %.2315145009.us, i64 4
  %scevgep5694 = getelementptr i8, ptr %scevgep5693, i64 %i.dhc
  %indvars.iv.next5699 = add nuw nsw i64 %indvars.iv5698, 1 ; 2 uses
  %i.fkh = trunc nuw i64 %indvars.iv.next5699 to i32
  %i.fki = icmp sgt i32 %i.axv, %i.fkh
  br i1 %i.fki, label %iter.check6293, label %._crit_edge5011, !llvm.loop !245

._crit_edge5011:                                  ; preds = %._crit_edge5003.us, %_ZN4ncnn3MatD2Ev.exit2338.lr.ph, %.preheader4361
  %i.fkj = phi <2 x float> [ %i.etz, %.preheader4361 ], [ %i.etz, %_ZN4ncnn3MatD2Ev.exit2338.lr.ph ], [ %i.fkg, %._crit_edge5003.us ] ; 13 uses
  switch i32 %i.dgr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4304
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4307
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4301
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4310
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4313
    i32 6, label %bb.ak
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4304: ; preds = %._crit_edge5011
  %i.fkk = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fkj, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566

_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4307: ; preds = %._crit_edge5011
  %i.fkl = load ptr, ptr %11, align 8, !tbaa !15
  %i.fkm = load float, ptr %i.fkl, align 4, !tbaa !22
  %i.fkn = fcmp fast ogt <2 x float> %i.fkj, zeroinitializer
  %i.fko = insertelement <2 x float> poison, float %i.fkm, i64 0
  %i.fkp = shufflevector <2 x float> %i.fko, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fkq = select <2 x i1> %i.fkn, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fkp
  %i.fkr = fmul fast <2 x float> %i.fkq, %i.fkj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566

_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4301: ; preds = %._crit_edge5011
  %i.fks = load ptr, ptr %11, align 8, !tbaa !15  ; 2 uses
  %i.fkt = load float, ptr %i.fks, align 4, !tbaa !22 ; 2 uses
  %i.fku = getelementptr inbounds nuw i8, ptr %i.fks, i64 4
  %i.fkv = load float, ptr %i.fku, align 4, !tbaa !22 ; 3 uses
  %i.fkw = extractelement <2 x float> %i.fkj, i64 0
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fkw, float %i.fkt) ; 2 uses
  %i.fkx = fcmp fast ogt float %spec.select, %i.fkv
  %.141054303 = select i1 %i.fkx, float %i.fkv, float %spec.select
  %i.fky = extractelement <2 x float> %i.fkj, i64 1
  %.04106 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fky, float %i.fkt)
  %spec.select4328 = call nnan ninf nsz float @llvm.minnum.f32(float %.04106, float %i.fkv)
  %i.fkz = insertelement <2 x float> poison, float %.141054303, i64 0
  %i.fla = insertelement <2 x float> %i.fkz, float %spec.select4328, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566

_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4310: ; preds = %._crit_edge5011
  %i.flb = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fkj, <2 x float> splat (float f0x42B0C0A5))
  %i.flc = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.flb, <2 x float> splat (float f0xC2B0C0A5))
  %i.fld = fneg fast <2 x float> %i.flc
  %i.fle = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fld)
  %i.flf = fadd fast <2 x float> %i.fle, splat (float 1.000000e+00)
  %i.flg = fdiv fast <2 x float> splat (float 1.000000e+00), %i.flf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566

_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4313: ; preds = %._crit_edge5011
  %13 = extractelement <2 x float> %i.fkj, i64 0
  %14 = call fast float @llvm.exp.f32(float nofpclass(nan inf) %13)
  %15 = extractelement <2 x float> %i.fkj, i64 1
  %16 = call fast float @llvm.exp.f32(float nofpclass(nan inf) %15)
  %17 = fadd fast float %16, 1.000000e+00
  %18 = fadd fast float %14, 1.000000e+00
  %19 = call fast float @llvm.log.f32(float %17)
  %20 = call fast float @llvm.log.f32(float %18)
  %21 = call fast float @llvm.tanh.f32(float %19)
  %22 = call fast float @llvm.tanh.f32(float %20)
  %23 = insertelement <2 x float> poison, float %22, i64 0
  %24 = insertelement <2 x float> %23, float %21, i64 1
  %i.flh = fmul fast <2 x float> %24, %i.fkj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566

bb.ak:                                            ; preds = %._crit_edge5011
  %i.fli = load ptr, ptr %11, align 8, !tbaa !15  ; 2 uses
  %i.flj = load float, ptr %i.fli, align 4, !tbaa !22 ; 5 uses
  %i.flk = getelementptr inbounds nuw i8, ptr %i.fli, i64 4
  %i.fll = load float, ptr %i.flk, align 4, !tbaa !22 ; 3 uses
  %i.flm = fneg fast float %i.fll
  %i.fln = fdiv fast float %i.flm, %i.flj         ; 4 uses
  %i.flo = extractelement <2 x float> %i.fkj, i64 0 ; 5 uses
  %i.flp = fcmp fast olt float %i.flo, %i.fln
  br i1 %i.flp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.flq = fdiv fast float 1.000000e+00, %i.flj
  %i.flr = fadd fast float %i.fln, %i.flq
  %i.fls = fcmp fast ogt float %i.flo, %i.flr
  br i1 %i.fls, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.flt = fmul fast float %i.flj, %i.flo
  %i.flu = fadd fast float %i.flt, %i.fll
  %i.flv = fmul fast float %i.flu, %i.flo
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread: ; preds = %bb.ak, %bb.al, %bb.am
  %.141054297 = phi float [ %i.flv, %bb.am ], [ 0.000000e+00, %bb.ak ], [ %i.flo, %bb.al ] ; 2 uses
  %i.flw = extractelement <2 x float> %i.fkj, i64 1 ; 4 uses
  %i.flx = fcmp fast olt float %i.flw, %i.fln
  %i.fly = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.141054297, i64 0 ; 2 uses
  br i1 %i.flx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566, label %bb.an

bb.an:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread
  %i.flz = fdiv fast float 1.000000e+00, %i.flj
  %i.fma = fadd fast float %i.fln, %i.flz
  %i.fmb = fcmp fast ogt float %i.flw, %i.fma
  %i.fmc = insertelement <2 x float> %i.fkj, float %.141054297, i64 0
  br i1 %i.fmb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fmd = fmul fast float %i.flj, %i.flw
  %i.fme = fadd fast float %i.fmd, %i.fll
  %i.fmf = fmul fast float %i.fme, %i.flw
  %i.fmg = insertelement <2 x float> %i.fly, float %i.fmf, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566

_ZL13activation_ssfiRKN4ncnn3MatE.exit2566:       ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4301, %._crit_edge5011, %bb.ao, %bb.an, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4313, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4310, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4307, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4304, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread
  %i.fmh = phi <2 x float> [ %i.fly, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread ], [ %i.fkk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4304 ], [ %i.fkr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4307 ], [ %i.fkj, %._crit_edge5011 ], [ %i.fla, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4301 ], [ %i.flg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4310 ], [ %i.flh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4313 ], [ %i.fmg, %bb.ao ], [ %i.fmc, %bb.an ]
  %i.fmi = bitcast <2 x float> %i.fmh to <2 x i32>
  %i.fmj = lshr <2 x i32> %i.fmi, splat (i32 16)
  %i.fmk = trunc nuw <2 x i32> %i.fmj to <2 x i16> ; 2 uses
  %i.fml = extractelement <2 x i16> %i.fmk, i64 0
  store i16 %i.fml, ptr %.115315021, align 2, !tbaa !24
  %i.fmm = extractelement <2 x i16> %i.fmk, i64 1
  store i16 %i.fmm, ptr %.115295022, align 2, !tbaa !24
  %i.fmn = getelementptr inbounds nuw i8, ptr %.115315021, i64 2 ; 2 uses
  %i.fmo = getelementptr inbounds nuw i8, ptr %.115295022, i64 2 ; 2 uses
  %indvars.iv.next5702 = add nuw nsw i64 %indvars.iv5701, 1 ; 2 uses
  %exitcond5705.not = icmp eq i64 %indvars.iv.next5702, %wide.trip.count5704
  br i1 %exitcond5705.not, label %._crit_edge5025, label %bb.ac, !llvm.loop !246

._crit_edge5196.split:                            ; preds = %._crit_edge5194, %.noexc.lr.ph, %._crit_edge5039.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %.not.i.i.i = icmp eq ptr %.sroa.03778.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge5196.split
  %i.fmp = ptrtoint ptr %.sroa.10.0 to i64
  %i.fmq = ptrtoint ptr %.sroa.03778.0 to i64
  %i.fmr = sub i64 %i.fmp, %i.fmq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03778.0, i64 noundef %i.fmr) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge5196.split, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  ret void

.noexc:                                           ; preds = %.noexc.lr.ph.split.split, %._crit_edge5194
  %indvars.iv5801 = phi i64 [ %i.dfu, %.noexc.lr.ph.split.split ], [ %indvars.iv.next5802, %._crit_edge5194 ] ; 4 uses
  %.reass5198 = mul i64 %factor.op.mul5197, %indvars.iv5801
  %i.fms = getelementptr inbounds nuw i8, ptr %i.dez, i64 %.reass5198
  %i.fmt = load ptr, ptr %i.h, align 8            ; 2 uses
  %.not = icmp eq ptr %i.fmt, null
  %i.fmu = getelementptr inbounds [4 x i8], ptr %i.fmt, i64 %indvars.iv5801
  %i.fmv = trunc nsw i64 %indvars.iv5801 to i32   ; 2 uses
  %i.fmw = sdiv i32 %i.fmv, 16
  %i.fmx = insertelement <4 x i32> poison, i32 %i.fmv, i64 0
  %i.fmy = shufflevector <4 x i32> %i.fmx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fmz = srem <4 x i32> %i.fmy, <i32 16, i32 8, i32 4, i32 2> ; 4 uses
  %i.fna = bitcast <4 x i32> %i.fmz to <16 x i8>
  %.lhs.trunc4320 = extractelement <16 x i8> %i.fna, i64 0
  %i.fnb = sdiv i8 %.lhs.trunc4320, 8
  %.sext4321 = sext i8 %i.fnb to i32
  %i.fnc = bitcast <4 x i32> %i.fmz to <16 x i8>
  %.lhs.trunc4322 = extractelement <16 x i8> %i.fnc, i64 4
  %i.fnd = sdiv i8 %.lhs.trunc4322, 4
  %.sext4323 = sext i8 %i.fnd to i32
  %i.fne = bitcast <4 x i32> %i.fmz to <16 x i8>
  %.lhs.trunc4324 = extractelement <16 x i8> %i.fne, i64 8
  %i.fnf = sdiv i8 %.lhs.trunc4324, 2
  %.sext4325 = sext i8 %i.fnf to i32
  %i.fng = extractelement <4 x i32> %i.fmz, i64 3
  %i.fnh = add nsw i32 %i.fng, %i.fmw
  %i.fni = add nsw i32 %i.fnh, %.sext4321
  %i.fnj = add nsw i32 %i.fni, %.sext4323
  %i.fnk = add nsw i32 %i.fnj, %.sext4325
  %i.fnl = sext i32 %i.fnk to i64
  %i.fnm = load i32, ptr %i.c, align 4
  %.reass5201 = mul i64 %factor.op.mul5200, %i.fnl
  %i.fnn = getelementptr inbounds nuw i8, ptr %i.dfp, i64 %.reass5201 ; 2 uses
  br label %.preheader4345

.preheader4345:                                   ; preds = %.noexc, %._crit_edge5184
  %.014715193 = phi i32 [ 0, %.noexc ], [ %i.fof, %._crit_edge5184 ] ; 2 uses
  %.014725192 = phi ptr [ %i.fms, %.noexc ], [ %i.hwo, %._crit_edge5184 ]
  %i.fno = load i32, ptr %i.b, align 4
  %i.fnp = mul nsw i32 %i.fno, %.014715193
  %i.fnq = sext i32 %i.fnp to i64                 ; 5 uses
  %i.fnr = load i32, ptr %i.a, align 4            ; 2 uses
  %factor.op.mul5186 = mul i32 %i.n, %i.fnr       ; 3 uses
  %i.fns = load i32, ptr %i.f, align 4            ; 8 uses
  %i.fnt = icmp sgt i32 %i.fns, 0                 ; 2 uses
  %i.fnu = add i32 %i.fns, -1
  %i.fnv = zext i32 %i.fnu to i64                 ; 2 uses
  %i.fnw = shl nuw nsw i64 %i.fnv, 2
  %i.fnx = shl nuw nsw i64 %i.fnv, 1
  %i.fny = sext i32 %i.fnr to i64                 ; 2 uses
  %wide.trip.count5780 = zext i32 %i.fns to i64   ; 11 uses
  %wide.trip.count5790 = zext nneg i32 %i.fns to i64
  %min.iters.check6418 = icmp ult i32 %i.fns, 8
  %min.iters.check6420 = icmp ult i32 %i.fns, 64
  %i.fnz = and i64 %wide.trip.count5780, 56
  %n.vec6422 = and i64 %wide.trip.count5780, 2147483584 ; 5 uses
  %i.foa = shl nuw nsw i64 %n.vec6422, 2
  %cmp.n6454 = icmp eq i64 %n.vec6422, %wide.trip.count5780
  %min.epilog.iters.check6460 = icmp eq i64 %i.fnz, 0
  %n.vec6462 = and i64 %wide.trip.count5780, 2147483640 ; 4 uses
  %i.fob = shl nuw nsw i64 %n.vec6462, 2
  %cmp.n6473 = icmp eq i64 %n.vec6462, %wide.trip.count5780
  %min.iters.check6372 = icmp ult i32 %i.fns, 8
  %min.iters.check6374 = icmp ult i32 %i.fns, 64
  %i.foc = and i64 %wide.trip.count5780, 56
  %n.vec6376 = and i64 %wide.trip.count5780, 2147483584 ; 5 uses
  %i.fod = shl nuw nsw i64 %n.vec6376, 1
  %cmp.n6397 = icmp eq i64 %n.vec6376, %wide.trip.count5780
  %min.epilog.iters.check6403 = icmp eq i64 %i.foc, 0
  %n.vec6405 = and i64 %wide.trip.count5780, 2147483640 ; 4 uses
  %i.foe = shl nuw nsw i64 %n.vec6405, 1
  %cmp.n6414 = icmp eq i64 %n.vec6405, %wide.trip.count5780
  br label %bb.aq

._crit_edge5194:                                  ; preds = %._crit_edge5184
  %indvars.iv.next5802 = add nsw i64 %indvars.iv5801, 1 ; 2 uses
  %exitcond5805.not = icmp eq i64 %indvars.iv.next5802, %wide.trip.count5804
  br i1 %exitcond5805.not, label %._crit_edge5196.split, label %.noexc, !llvm.loop !247

._crit_edge5184:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %i.fof = add nuw nsw i32 %.014715193, 1         ; 2 uses
  %exitcond5800.not = icmp eq i32 %i.fof, %i.y
  br i1 %exitcond5800.not, label %._crit_edge5194, label %.preheader4345, !llvm.loop !248

bb.aq:                                            ; preds = %.preheader4345, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv5795 = phi i64 [ 0, %.preheader4345 ], [ %indvars.iv.next5796, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 6 uses
  %.114735181 = phi ptr [ %.014725192, %.preheader4345 ], [ %i.hwo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %.not, label %_ZN4ncnn3MatD2Ev.exit2336, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fog = load float, ptr %i.fmu, align 4, !tbaa !22
  br label %_ZN4ncnn3MatD2Ev.exit2336

_ZN4ncnn3MatD2Ev.exit2336:                        ; preds = %bb.ar, %bb.aq
  %.01465 = phi nsz float [ %i.fog, %bb.ar ], [ 0.000000e+00, %bb.aq ]
  br i1 %i.dff, label %_ZN4ncnn3MatD2Ev.exit2335.lr.ph, label %._crit_edge5078

_ZN4ncnn3MatD2Ev.exit2335.lr.ph:                  ; preds = %_ZN4ncnn3MatD2Ev.exit2336
  %i.foh = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !303
  %i.foi = load ptr, ptr %0, align 8, !tbaa !15, !noalias !303
  %i.foj = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !303
  %i.fok = load i64, ptr %i.dfg, align 8, !tbaa !17, !noalias !303 ; 2 uses
  %factor.op.mul5082 = mul i64 %i.foj, %i.fok
  %i.fol = sext i32 %i.foh to i64
  %i.fom = mul i64 %i.fok, %i.fol
  %i.fon = mul i64 %i.fom, %i.fnq
  %invariant.gep5084 = getelementptr i8, ptr %i.foi, i64 %i.fon
  %i.foo = trunc nuw nsw i64 %indvars.iv5795 to i32
  %.reass5187 = mul i32 %factor.op.mul5186, %i.foo
  %i.fop = sext i32 %.reass5187 to i64
  %invariant.gep5085 = getelementptr [2 x i8], ptr %invariant.gep5084, i64 %i.fop
  %i.foq = load i32, ptr %i.f, align 4            ; 8 uses
  %i.for = icmp slt i32 %i.foq, 1                 ; 2 uses
  %i.fos = load ptr, ptr %i.g, align 8            ; 8 uses
  %i.fot = load i64, ptr %i.d, align 8            ; 17 uses
  %i.fou = icmp sgt i32 %i.foq, 0                 ; 2 uses
  %.idx1941 = shl i64 %i.fot, 2                   ; 2 uses
  %.idx1942 = mul i64 %i.fot, 6                   ; 2 uses
  %.idx1943 = mul i64 %i.fot, 30
end_hunk_3
begin_hunk_4_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %.040415130 = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2333.lr.ph ], [ %.44045, %.loopexit ] ; 4 uses
  %i.gdw = sdiv i32 %.25132, %i.n
  %i.gdx = sext i32 %i.gdw to i64
  %.reass5138 = mul i64 %factor.op.mul5137, %i.gdx
  %gep5141 = getelementptr i8, ptr %invariant.gep5140, i64 %.reass5138 ; 7 uses
  br i1 %brmerge5239, label %.loopexit4332, label %.lr.ph5121.preheader

.lr.ph5121.preheader:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2333
  br i1 %i.gdv, label %.lr.ph5121.epil.preheader, label %.lr.ph5121

.lr.ph5121:                                       ; preds = %.lr.ph5121.preheader, %.lr.ph5121
  %indvars.iv5761 = phi i64 [ %indvars.iv.next5762.1, %.lr.ph5121 ], [ 0, %.lr.ph5121.preheader ] ; 3 uses
  %.175119 = phi ptr [ %i.gfe, %.lr.ph5121 ], [ %.165131, %.lr.ph5121.preheader ] ; 3 uses
  %.140425118 = phi <4 x float> [ %i.gfd, %.lr.ph5121 ], [ %.040415130, %.lr.ph5121.preheader ]
  %niter6703 = phi i64 [ %niter6703.next.1, %.lr.ph5121 ], [ 0, %.lr.ph5121.preheader ]
  %i.gdy = getelementptr inbounds nuw [4 x i8], ptr %i.gdq, i64 %indvars.iv5761
  %i.gdz = load i32, ptr %i.gdy, align 4, !tbaa !30
  %i.gea = sext i32 %i.gdz to i64
  %i.geb = getelementptr inbounds [2 x i8], ptr %gep5141, i64 %i.gea
  %i.gec = load i64, ptr %i.geb, align 1, !tbaa !18
  %i.ged = insertelement <2 x i64> poison, i64 %i.gec, i64 0
  %i.gee = bitcast <2 x i64> %i.ged to <8 x i16>
  %i.gef = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gee, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.geg = bitcast <8 x i16> %i.gef to <4 x float>
  %i.geh = load i64, ptr %.175119, align 1, !tbaa !18
  %i.gei = insertelement <2 x i64> poison, i64 %i.geh, i64 0
  %i.gej = bitcast <2 x i64> %i.gei to <8 x i16>
  %i.gek = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gej, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gel = bitcast <8 x i16> %i.gek to <4 x float>
  %i.gem = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.geg, <4 x float> nofpclass(nan inf) %i.gel, <4 x float> nofpclass(nan inf) %.140425118)
  %i.gen = getelementptr inbounds nuw i8, ptr %.175119, i64 8
  %i.geo = getelementptr inbounds nuw [4 x i8], ptr %i.gdq, i64 %indvars.iv5761
  %i.gep = getelementptr inbounds nuw i8, ptr %i.geo, i64 4
  %i.geq = load i32, ptr %i.gep, align 4, !tbaa !30
  %i.ger = sext i32 %i.geq to i64
  %i.ges = getelementptr inbounds [2 x i8], ptr %gep5141, i64 %i.ger
  %i.get = load i64, ptr %i.ges, align 1, !tbaa !18
  %i.geu = insertelement <2 x i64> poison, i64 %i.get, i64 0
  %i.gev = bitcast <2 x i64> %i.geu to <8 x i16>
  %i.gew = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gev, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gex = bitcast <8 x i16> %i.gew to <4 x float>
  %i.gey = load i64, ptr %i.gen, align 1, !tbaa !18
  %i.gez = insertelement <2 x i64> poison, i64 %i.gey, i64 0
  %i.gfa = bitcast <2 x i64> %i.gez to <8 x i16>
  %i.gfb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gfa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gfc = bitcast <8 x i16> %i.gfb to <4 x float>
  %i.gfd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gex, <4 x float> nofpclass(nan inf) %i.gfc, <4 x float> nofpclass(nan inf) %i.gem) ; 3 uses
  %i.gfe = getelementptr inbounds nuw i8, ptr %.175119, i64 16 ; 2 uses
  %indvars.iv.next5762.1 = add nuw nsw i64 %indvars.iv5761, 2 ; 2 uses
  %niter6703.next.1 = add i64 %niter6703, 2       ; 2 uses
  %niter6703.ncmp.1 = icmp eq i64 %niter6703.next.1, %unroll_iter6702
  br i1 %niter6703.ncmp.1, label %.loopexit4332.thread.unr-lcssa, label %.lr.ph5121, !llvm.loop !264

.loopexit4332.thread.unr-lcssa:                   ; preds = %.lr.ph5121
  br i1 %lcmp.mod6699.not, label %.loopexit4332.thread, label %.lr.ph5121.epil.preheader

.lr.ph5121.epil.preheader:                        ; preds = %.loopexit4332.thread.unr-lcssa, %.lr.ph5121.preheader
  %indvars.iv5761.epil.init = phi i64 [ 0, %.lr.ph5121.preheader ], [ %indvars.iv.next5762.1, %.loopexit4332.thread.unr-lcssa ]
  %.175119.epil.init = phi ptr [ %.165131, %.lr.ph5121.preheader ], [ %i.gfe, %.loopexit4332.thread.unr-lcssa ]
  %.140425118.epil.init = phi <4 x float> [ %.040415130, %.lr.ph5121.preheader ], [ %i.gfd, %.loopexit4332.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod6701)
  %i.gff = getelementptr inbounds nuw [4 x i8], ptr %i.gdq, i64 %indvars.iv5761.epil.init
  %i.gfg = load i32, ptr %i.gff, align 4, !tbaa !30
  %i.gfh = sext i32 %i.gfg to i64
  %i.gfi = getelementptr inbounds [2 x i8], ptr %gep5141, i64 %i.gfh
  %i.gfj = load i64, ptr %i.gfi, align 1, !tbaa !18
  %i.gfk = insertelement <2 x i64> poison, i64 %i.gfj, i64 0
  %i.gfl = bitcast <2 x i64> %i.gfk to <8 x i16>
  %i.gfm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gfl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gfn = bitcast <8 x i16> %i.gfm to <4 x float>
  %i.gfo = load i64, ptr %.175119.epil.init, align 1, !tbaa !18
  %i.gfp = insertelement <2 x i64> poison, i64 %i.gfo, i64 0
  %i.gfq = bitcast <2 x i64> %i.gfp to <8 x i16>
  %i.gfr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gfq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gfs = bitcast <8 x i16> %i.gfr to <4 x float>
  %i.gft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gfn, <4 x float> nofpclass(nan inf) %i.gfs, <4 x float> nofpclass(nan inf) %.140425118.epil.init)
  br label %.loopexit4332.thread

.loopexit4332.thread:                             ; preds = %.loopexit4332.thread.unr-lcssa, %.lr.ph5121.epil.preheader
  %.lcssa6495 = phi <4 x float> [ %i.gfd, %.loopexit4332.thread.unr-lcssa ], [ %i.gft, %.lr.ph5121.epil.preheader ]
  %scevgep5763 = getelementptr i8, ptr %.165131, i64 8
  %scevgep5764 = getelementptr i8, ptr %scevgep5763, i64 %i.gdu
  br label %.loopexit

.loopexit4332:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit2333
  br i1 %brmerge5242, label %.loopexit, label %.lr.ph5127

.lr.ph5127:                                       ; preds = %.loopexit4332
  %i.gfu = getelementptr i8, ptr %gep5141, i64 %.idx
  %i.gfv = getelementptr i8, ptr %gep5141, i64 %.idx1923
  %i.gfw = getelementptr [2 x i8], ptr %gep5141, i64 %i.gdr
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph5127, %bb.ax
  %indvars.iv5768 = phi i64 [ 0, %.lr.ph5127 ], [ %indvars.iv.next5769, %bb.ax ] ; 2 uses
  %.195125 = phi ptr [ %.165131, %.lr.ph5127 ], [ %i.ggy, %bb.ax ] ; 2 uses
  %.340445124 = phi <4 x float> [ %.040415130, %.lr.ph5127 ], [ %i.ggx, %bb.ax ]
  %i.gfx = getelementptr inbounds nuw [4 x i8], ptr %i.gdq, i64 %indvars.iv5768
  %i.gfy = load i32, ptr %i.gfx, align 4, !tbaa !30
  %i.gfz = sext i32 %i.gfy to i64                 ; 4 uses
  %i.gga = getelementptr [2 x i8], ptr %i.gfu, i64 %i.gfz
  %i.ggb = load i16, ptr %i.gga, align 2, !tbaa !24
  %i.ggc = getelementptr [2 x i8], ptr %i.gfv, i64 %i.gfz
  %i.ggd = load i16, ptr %i.ggc, align 2, !tbaa !24
  %i.gge = getelementptr [2 x i8], ptr %i.gfw, i64 %i.gfz
  %i.ggf = load i16, ptr %i.gge, align 2, !tbaa !24
  %i.ggg = getelementptr inbounds [2 x i8], ptr %gep5141, i64 %i.gfz
  %i.ggh = load i16, ptr %i.ggg, align 2, !tbaa !24
  %i.ggi = zext i16 %i.ggb to i32
  %i.ggj = zext i16 %i.ggd to i32
  %i.ggk = zext i16 %i.ggf to i32
  %i.ggl = zext i16 %i.ggh to i32
  %i.ggm = insertelement <4 x i32> poison, i32 %i.ggl, i64 0
  %i.ggn = insertelement <4 x i32> %i.ggm, i32 %i.ggk, i64 1
  %i.ggo = insertelement <4 x i32> %i.ggn, i32 %i.ggj, i64 2
  %i.ggp = insertelement <4 x i32> %i.ggo, i32 %i.ggi, i64 3
  %i.ggq = shl nuw <4 x i32> %i.ggp, splat (i32 16)
  %i.ggr = bitcast <4 x i32> %i.ggq to <4 x float>
  %i.ggs = load i64, ptr %.195125, align 1, !tbaa !18
  %i.ggt = insertelement <2 x i64> poison, i64 %i.ggs, i64 0
  %i.ggu = bitcast <2 x i64> %i.ggt to <8 x i16>
  %i.ggv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ggu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ggw = bitcast <8 x i16> %i.ggv to <4 x float>
  %i.ggx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ggr, <4 x float> nofpclass(nan inf) %i.ggw, <4 x float> nofpclass(nan inf) %.340445124) ; 2 uses
  %i.ggy = getelementptr inbounds nuw i8, ptr %.195125, i64 8
  %indvars.iv.next5769 = add nuw nsw i64 %indvars.iv5768, 1 ; 2 uses
  %exitcond5774.not = icmp eq i64 %indvars.iv.next5769, %wide.trip.count5773
  br i1 %exitcond5774.not, label %.loopexit.loopexit, label %bb.ax, !llvm.loop !265

.loopexit.loopexit:                               ; preds = %bb.ax
  %scevgep5770 = getelementptr i8, ptr %.165131, i64 8
  %scevgep5771 = getelementptr i8, ptr %scevgep5770, i64 %i.gdu
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit4332.thread, %.loopexit.loopexit, %.loopexit4332
  %.44045 = phi nsz <4 x float> [ %.040415130, %.loopexit4332 ], [ %i.ggx, %.loopexit.loopexit ], [ %.lcssa6495, %.loopexit4332.thread ] ; 2 uses
  %.20 = phi ptr [ %.165131, %.loopexit4332 ], [ %scevgep5771, %.loopexit.loopexit ], [ %scevgep5764, %.loopexit4332.thread ] ; 2 uses
  %i.ggz = add nuw nsw i32 %.25132, 4             ; 3 uses
  %i.gha = or disjoint i32 %i.ggz, 3
  %i.ghb = icmp slt i32 %i.gha, %i.q
  br i1 %i.ghb, label %_ZN4ncnn3MatD2Ev.exit2333, label %._crit_edge5133, !llvm.loop !266

._crit_edge5133:                                  ; preds = %.loopexit, %._crit_edge5109
  %.04041.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge5109 ], [ %.44045, %.loopexit ] ; 2 uses
  %.16.lcssa = phi ptr [ %.9.lcssa, %._crit_edge5109 ], [ %.20, %.loopexit ] ; 3 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge5109 ], [ %i.ggz, %.loopexit ] ; 5 uses
  %i.ghc = shufflevector <4 x float> %.04041.lcssa, <4 x float> %i.gdc, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ghd = shufflevector <4 x float> %.04041.lcssa, <4 x float> %i.gdc, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ghe = fadd fast <4 x float> %i.ghc, %i.ghd
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.fwv, <4 x float> %i.ghe)
  %op.rdx6477 = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01465, <8 x float> %i.fww)
  %op.rdx6478 = fadd fast float %op.rdx, %op.rdx6477 ; 3 uses
  %i.ghf = or disjoint i32 %.2.lcssa, 1
  %i.ghg = icmp slt i32 %i.ghf, %i.q
  br i1 %i.ghg, label %_ZN4ncnn3MatD2Ev.exit2332.lr.ph, label %.preheader4344

_ZN4ncnn3MatD2Ev.exit2332.lr.ph:                  ; preds = %._crit_edge5133
  %i.ghh = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !306
  %i.ghi = load ptr, ptr %0, align 8, !tbaa !15, !noalias !306
  %i.ghj = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !306
  %i.ghk = load i64, ptr %i.dfg, align 8, !tbaa !17, !noalias !306 ; 2 uses
  %factor.op.mul5155 = mul i64 %i.ghj, %i.ghk
  %i.ghl = sext i32 %i.ghh to i64
  %i.ghm = mul i64 %i.ghk, %i.ghl
  %i.ghn = mul i64 %i.ghm, %i.fnq
  %invariant.gep5157 = getelementptr i8, ptr %i.ghi, i64 %i.ghn
  %i.gho = mul nsw i64 %indvars.iv5795, %i.fny
  %invariant.gep5158 = getelementptr [2 x i8], ptr %invariant.gep5157, i64 %i.gho
  %i.ghp = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.ghq = load i64, ptr %i.d, align 8
  br i1 %i.fnt, label %_ZN4ncnn3MatD2Ev.exit2332.us.preheader, label %_ZN4ncnn3MatD2Ev.exit2332.preheader

_ZN4ncnn3MatD2Ev.exit2332.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit2332.lr.ph
  %i.ghr = add i32 %.2.lcssa, 2
  %i.ghs = sub i32 %i.dft, %.2.lcssa
  %i.ght = and i32 %i.ghs, -2
  %i.ghu = add i32 %i.ghr, %i.ght
  br label %.preheader4344

_ZN4ncnn3MatD2Ev.exit2332.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2332.lr.ph
  %i.ghv = zext i32 %.2.lcssa to i64
  br label %iter.check6457

iter.check6457:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2332.us.preheader, %._crit_edge5146.us
  %indvars.iv5782 = phi i64 [ %i.ghv, %_ZN4ncnn3MatD2Ev.exit2332.us.preheader ], [ %indvars.iv.next5783, %._crit_edge5146.us ] ; 2 uses
  %.215150.us = phi ptr [ %.16.lcssa, %_ZN4ncnn3MatD2Ev.exit2332.us.preheader ], [ %scevgep5778, %._crit_edge5146.us ] ; 9 uses
  %.114665149.us = phi float [ %op.rdx6478, %_ZN4ncnn3MatD2Ev.exit2332.us.preheader ], [ %.lcssa6118, %._crit_edge5146.us ] ; 3 uses
  %.reass5156.us = mul i64 %factor.op.mul5155, %indvars.iv5782
  %gep5159.us = getelementptr i8, ptr %invariant.gep5158, i64 %.reass5156.us ; 74 uses
  %i.ghw = getelementptr [2 x i8], ptr %gep5159.us, i64 %i.ghq ; 73 uses
  br i1 %min.iters.check6418, label %vec.epilog.scalar.ph6458.preheader, label %vector.main.loop.iter.check6419

vector.main.loop.iter.check6419:                  ; preds = %iter.check6457
  br i1 %min.iters.check6420, label %vec.epilog.ph6461, label %vector.ph6421

vector.ph6421:                                    ; preds = %vector.main.loop.iter.check6419
  %i.ghx = getelementptr i8, ptr %.215150.us, i64 %i.foa
  %i.ghy = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.114665149.us, i64 0
  br label %vector.body6423

vector.body6423:                                  ; preds = %vector.ph6421, %vector.body6423
  %index6424 = phi i64 [ 0, %vector.ph6421 ], [ %index.next6449, %vector.body6423 ] ; 3 uses
  %vec.phi6425 = phi <16 x float> [ %i.ghy, %vector.ph6421 ], [ %i.hcd, %vector.body6423 ]
  %vec.phi6426 = phi <16 x float> [ zeroinitializer, %vector.ph6421 ], [ %i.hce, %vector.body6423 ]
  %vec.phi6427 = phi <16 x float> [ zeroinitializer, %vector.ph6421 ], [ %i.hcf, %vector.body6423 ]
  %vec.phi6428 = phi <16 x float> [ zeroinitializer, %vector.ph6421 ], [ %i.hcg, %vector.body6423 ]
  %i.ghz = shl i64 %index6424, 2                  ; 4 uses
  %next.gep6429 = getelementptr i8, ptr %.215150.us, i64 %i.ghz
  %i.gia = getelementptr i8, ptr %.215150.us, i64 %i.ghz
  %next.gep6430 = getelementptr i8, ptr %i.gia, i64 64
  %i.gib = getelementptr i8, ptr %.215150.us, i64 %i.ghz
  %next.gep6431 = getelementptr i8, ptr %i.gib, i64 128
  %i.gic = getelementptr i8, ptr %.215150.us, i64 %i.ghz
  %next.gep6432 = getelementptr i8, ptr %i.gic, i64 192
  %i.gid = getelementptr inbounds nuw [4 x i8], ptr %i.ghp, i64 %index6424 ; 4 uses
  %i.gie = getelementptr inbounds nuw i8, ptr %i.gid, i64 64
  %i.gif = getelementptr inbounds nuw i8, ptr %i.gid, i64 128
  %i.gig = getelementptr inbounds nuw i8, ptr %i.gid, i64 192
  %wide.load6433 = load <16 x i32>, ptr %i.gid, align 4, !tbaa !30
  %wide.load6434 = load <16 x i32>, ptr %i.gie, align 4, !tbaa !30
  %wide.load6435 = load <16 x i32>, ptr %i.gif, align 4, !tbaa !30
  %wide.load6436 = load <16 x i32>, ptr %i.gig, align 4, !tbaa !30
  %i.gih = sext <16 x i32> %wide.load6433 to <16 x i64> ; 16 uses
  %i.gii = sext <16 x i32> %wide.load6434 to <16 x i64> ; 16 uses
  %i.gij = sext <16 x i32> %wide.load6435 to <16 x i64> ; 16 uses
  %i.gik = sext <16 x i32> %wide.load6436 to <16 x i64> ; 16 uses
  %i.gil = extractelement <16 x i64> %i.gih, i64 0 ; 2 uses
  %i.gim = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gil
  %i.gin = extractelement <16 x i64> %i.gih, i64 1 ; 2 uses
  %i.gio = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gin
  %i.gip = extractelement <16 x i64> %i.gih, i64 2 ; 2 uses
  %i.giq = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gip
  %i.gir = extractelement <16 x i64> %i.gih, i64 3 ; 2 uses
  %i.gis = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gir
  %i.git = extractelement <16 x i64> %i.gih, i64 4 ; 2 uses
  %i.giu = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.git
  %i.giv = extractelement <16 x i64> %i.gih, i64 5 ; 2 uses
  %i.giw = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.giv
  %i.gix = extractelement <16 x i64> %i.gih, i64 6 ; 2 uses
  %i.giy = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gix
  %i.giz = extractelement <16 x i64> %i.gih, i64 7 ; 2 uses
  %i.gja = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.giz
  %i.gjb = extractelement <16 x i64> %i.gih, i64 8 ; 2 uses
  %i.gjc = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjb
  %i.gjd = extractelement <16 x i64> %i.gih, i64 9 ; 2 uses
  %i.gje = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjd
  %i.gjf = extractelement <16 x i64> %i.gih, i64 10 ; 2 uses
  %i.gjg = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjf
  %i.gjh = extractelement <16 x i64> %i.gih, i64 11 ; 2 uses
  %i.gji = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjh
  %i.gjj = extractelement <16 x i64> %i.gih, i64 12 ; 2 uses
  %i.gjk = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjj
  %i.gjl = extractelement <16 x i64> %i.gih, i64 13 ; 2 uses
  %i.gjm = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjl
  %i.gjn = extractelement <16 x i64> %i.gih, i64 14 ; 2 uses
  %i.gjo = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjn
  %i.gjp = extractelement <16 x i64> %i.gih, i64 15 ; 2 uses
  %i.gjq = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjp
  %i.gjr = extractelement <16 x i64> %i.gii, i64 0 ; 2 uses
  %i.gjs = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjr
  %i.gjt = extractelement <16 x i64> %i.gii, i64 1 ; 2 uses
  %i.gju = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjt
  %i.gjv = extractelement <16 x i64> %i.gii, i64 2 ; 2 uses
  %i.gjw = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjv
  %i.gjx = extractelement <16 x i64> %i.gii, i64 3 ; 2 uses
  %i.gjy = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjx
  %i.gjz = extractelement <16 x i64> %i.gii, i64 4 ; 2 uses
  %i.gka = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gjz
  %i.gkb = extractelement <16 x i64> %i.gii, i64 5 ; 2 uses
  %i.gkc = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkb
  %i.gkd = extractelement <16 x i64> %i.gii, i64 6 ; 2 uses
  %i.gke = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkd
  %i.gkf = extractelement <16 x i64> %i.gii, i64 7 ; 2 uses
  %i.gkg = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkf
  %i.gkh = extractelement <16 x i64> %i.gii, i64 8 ; 2 uses
  %i.gki = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkh
  %i.gkj = extractelement <16 x i64> %i.gii, i64 9 ; 2 uses
  %i.gkk = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkj
  %i.gkl = extractelement <16 x i64> %i.gii, i64 10 ; 2 uses
  %i.gkm = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkl
  %i.gkn = extractelement <16 x i64> %i.gii, i64 11 ; 2 uses
  %i.gko = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkn
  %i.gkp = extractelement <16 x i64> %i.gii, i64 12 ; 2 uses
  %i.gkq = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkp
  %i.gkr = extractelement <16 x i64> %i.gii, i64 13 ; 2 uses
  %i.gks = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkr
  %i.gkt = extractelement <16 x i64> %i.gii, i64 14 ; 2 uses
  %i.gku = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkt
  %i.gkv = extractelement <16 x i64> %i.gii, i64 15 ; 2 uses
  %i.gkw = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkv
  %i.gkx = extractelement <16 x i64> %i.gij, i64 0 ; 2 uses
  %i.gky = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkx
  %i.gkz = extractelement <16 x i64> %i.gij, i64 1 ; 2 uses
  %i.gla = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gkz
  %i.glb = extractelement <16 x i64> %i.gij, i64 2 ; 2 uses
  %i.glc = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glb
  %i.gld = extractelement <16 x i64> %i.gij, i64 3 ; 2 uses
  %i.gle = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gld
  %i.glf = extractelement <16 x i64> %i.gij, i64 4 ; 2 uses
  %i.glg = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glf
  %i.glh = extractelement <16 x i64> %i.gij, i64 5 ; 2 uses
  %i.gli = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glh
  %i.glj = extractelement <16 x i64> %i.gij, i64 6 ; 2 uses
  %i.glk = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glj
  %i.gll = extractelement <16 x i64> %i.gij, i64 7 ; 2 uses
  %i.glm = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gll
  %i.gln = extractelement <16 x i64> %i.gij, i64 8 ; 2 uses
  %i.glo = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gln
  %i.glp = extractelement <16 x i64> %i.gij, i64 9 ; 2 uses
  %i.glq = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glp
  %i.glr = extractelement <16 x i64> %i.gij, i64 10 ; 2 uses
  %i.gls = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glr
  %i.glt = extractelement <16 x i64> %i.gij, i64 11 ; 2 uses
  %i.glu = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glt
  %i.glv = extractelement <16 x i64> %i.gij, i64 12 ; 2 uses
  %i.glw = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glv
  %i.glx = extractelement <16 x i64> %i.gij, i64 13 ; 2 uses
  %i.gly = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glx
  %i.glz = extractelement <16 x i64> %i.gij, i64 14 ; 2 uses
  %i.gma = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.glz
  %i.gmb = extractelement <16 x i64> %i.gij, i64 15 ; 2 uses
  %i.gmc = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmb
  %i.gmd = extractelement <16 x i64> %i.gik, i64 0 ; 2 uses
  %i.gme = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmd
  %i.gmf = extractelement <16 x i64> %i.gik, i64 1 ; 2 uses
  %i.gmg = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmf
  %i.gmh = extractelement <16 x i64> %i.gik, i64 2 ; 2 uses
  %i.gmi = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmh
  %i.gmj = extractelement <16 x i64> %i.gik, i64 3 ; 2 uses
  %i.gmk = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmj
  %i.gml = extractelement <16 x i64> %i.gik, i64 4 ; 2 uses
  %i.gmm = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gml
  %i.gmn = extractelement <16 x i64> %i.gik, i64 5 ; 2 uses
  %i.gmo = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmn
  %i.gmp = extractelement <16 x i64> %i.gik, i64 6 ; 2 uses
  %i.gmq = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmp
  %i.gmr = extractelement <16 x i64> %i.gik, i64 7 ; 2 uses
  %i.gms = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmr
  %i.gmt = extractelement <16 x i64> %i.gik, i64 8 ; 2 uses
  %i.gmu = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmt
  %i.gmv = extractelement <16 x i64> %i.gik, i64 9 ; 2 uses
  %i.gmw = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmv
  %i.gmx = extractelement <16 x i64> %i.gik, i64 10 ; 2 uses
  %i.gmy = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmx
  %i.gmz = extractelement <16 x i64> %i.gik, i64 11 ; 2 uses
  %i.gna = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmz
  %i.gnb = extractelement <16 x i64> %i.gik, i64 12 ; 2 uses
  %i.gnc = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnb
  %i.gnd = extractelement <16 x i64> %i.gik, i64 13 ; 2 uses
  %i.gne = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnd
  %i.gnf = extractelement <16 x i64> %i.gik, i64 14 ; 2 uses
  %i.gng = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnf
  %i.gnh = extractelement <16 x i64> %i.gik, i64 15 ; 2 uses
  %i.gni = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnh
  %i.gnj = load i16, ptr %i.gim, align 2, !tbaa !24
  %i.gnk = load i16, ptr %i.gio, align 2, !tbaa !24
  %i.gnl = load i16, ptr %i.giq, align 2, !tbaa !24
  %i.gnm = load i16, ptr %i.gis, align 2, !tbaa !24
  %i.gnn = load i16, ptr %i.giu, align 2, !tbaa !24
  %i.gno = load i16, ptr %i.giw, align 2, !tbaa !24
  %i.gnp = load i16, ptr %i.giy, align 2, !tbaa !24
  %i.gnq = load i16, ptr %i.gja, align 2, !tbaa !24
  %i.gnr = load i16, ptr %i.gjc, align 2, !tbaa !24
  %i.gns = load i16, ptr %i.gje, align 2, !tbaa !24
  %i.gnt = load i16, ptr %i.gjg, align 2, !tbaa !24
  %i.gnu = load i16, ptr %i.gji, align 2, !tbaa !24
  %i.gnv = load i16, ptr %i.gjk, align 2, !tbaa !24
  %i.gnw = load i16, ptr %i.gjm, align 2, !tbaa !24
  %i.gnx = load i16, ptr %i.gjo, align 2, !tbaa !24
  %i.gny = load i16, ptr %i.gjq, align 2, !tbaa !24
  %i.gnz = insertelement <16 x i16> poison, i16 %i.gnj, i64 0
  %i.goa = insertelement <16 x i16> %i.gnz, i16 %i.gnk, i64 1
  %i.gob = insertelement <16 x i16> %i.goa, i16 %i.gnl, i64 2
  %i.goc = insertelement <16 x i16> %i.gob, i16 %i.gnm, i64 3
  %i.god = insertelement <16 x i16> %i.goc, i16 %i.gnn, i64 4
  %i.goe = insertelement <16 x i16> %i.god, i16 %i.gno, i64 5
  %i.gof = insertelement <16 x i16> %i.goe, i16 %i.gnp, i64 6
  %i.gog = insertelement <16 x i16> %i.gof, i16 %i.gnq, i64 7
  %i.goh = insertelement <16 x i16> %i.gog, i16 %i.gnr, i64 8
  %i.goi = insertelement <16 x i16> %i.goh, i16 %i.gns, i64 9
  %i.goj = insertelement <16 x i16> %i.goi, i16 %i.gnt, i64 10
  %i.gok = insertelement <16 x i16> %i.goj, i16 %i.gnu, i64 11
  %i.gol = insertelement <16 x i16> %i.gok, i16 %i.gnv, i64 12
  %i.gom = insertelement <16 x i16> %i.gol, i16 %i.gnw, i64 13
  %i.gon = insertelement <16 x i16> %i.gom, i16 %i.gnx, i64 14
  %i.goo = insertelement <16 x i16> %i.gon, i16 %i.gny, i64 15
  %i.gop = load i16, ptr %i.gjs, align 2, !tbaa !24
  %i.goq = load i16, ptr %i.gju, align 2, !tbaa !24
  %i.gor = load i16, ptr %i.gjw, align 2, !tbaa !24
  %i.gos = load i16, ptr %i.gjy, align 2, !tbaa !24
  %i.got = load i16, ptr %i.gka, align 2, !tbaa !24
  %i.gou = load i16, ptr %i.gkc, align 2, !tbaa !24
  %i.gov = load i16, ptr %i.gke, align 2, !tbaa !24
  %i.gow = load i16, ptr %i.gkg, align 2, !tbaa !24
  %i.gox = load i16, ptr %i.gki, align 2, !tbaa !24
  %i.goy = load i16, ptr %i.gkk, align 2, !tbaa !24
  %i.goz = load i16, ptr %i.gkm, align 2, !tbaa !24
  %i.gpa = load i16, ptr %i.gko, align 2, !tbaa !24
  %i.gpb = load i16, ptr %i.gkq, align 2, !tbaa !24
  %i.gpc = load i16, ptr %i.gks, align 2, !tbaa !24
  %i.gpd = load i16, ptr %i.gku, align 2, !tbaa !24
end_hunk_4
begin_hunk_5_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.hci = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx6453) ; 3 uses
  br i1 %cmp.n6454, label %._crit_edge5146.us, label %vec.epilog.iter.check6459

vec.epilog.iter.check6459:                        ; preds = %middle.block6450
  br i1 %min.epilog.iters.check6460, label %vec.epilog.scalar.ph6458.preheader, label %vec.epilog.ph6461, !prof !29

vec.epilog.ph6461:                                ; preds = %vector.main.loop.iter.check6419, %vec.epilog.iter.check6459
  %vec.epilog.resume.val6455 = phi i64 [ %n.vec6422, %vec.epilog.iter.check6459 ], [ 0, %vector.main.loop.iter.check6419 ]
  %bc.merge.rdx6456 = phi float [ %i.hci, %vec.epilog.iter.check6459 ], [ %.114665149.us, %vector.main.loop.iter.check6419 ]
  %i.hcj = getelementptr i8, ptr %.215150.us, i64 %i.fob
  %i.hck = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx6456, i64 0
  br label %vec.epilog.vector.body6463

vec.epilog.vector.body6463:                       ; preds = %vec.epilog.vector.body6463, %vec.epilog.ph6461
  %index6464 = phi i64 [ %vec.epilog.resume.val6455, %vec.epilog.ph6461 ], [ %index.next6471, %vec.epilog.vector.body6463 ] ; 3 uses
  %vec.phi6465 = phi <8 x float> [ %i.hck, %vec.epilog.ph6461 ], [ %i.hfi, %vec.epilog.vector.body6463 ]
  %i.hcl = shl i64 %index6464, 2
  %next.gep6466 = getelementptr i8, ptr %.215150.us, i64 %i.hcl
  %i.hcm = getelementptr inbounds nuw [4 x i8], ptr %i.ghp, i64 %index6464
  %wide.load6467 = load <8 x i32>, ptr %i.hcm, align 4, !tbaa !30
  %i.hcn = sext <8 x i32> %wide.load6467 to <8 x i64> ; 8 uses
  %i.hco = extractelement <8 x i64> %i.hcn, i64 0 ; 2 uses
  %i.hcp = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hco
  %i.hcq = extractelement <8 x i64> %i.hcn, i64 1 ; 2 uses
  %i.hcr = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hcq
  %i.hcs = extractelement <8 x i64> %i.hcn, i64 2 ; 2 uses
  %i.hct = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hcs
  %i.hcu = extractelement <8 x i64> %i.hcn, i64 3 ; 2 uses
  %i.hcv = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hcu
  %i.hcw = extractelement <8 x i64> %i.hcn, i64 4 ; 2 uses
  %i.hcx = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hcw
  %i.hcy = extractelement <8 x i64> %i.hcn, i64 5 ; 2 uses
  %i.hcz = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hcy
  %i.hda = extractelement <8 x i64> %i.hcn, i64 6 ; 2 uses
  %i.hdb = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hda
  %i.hdc = extractelement <8 x i64> %i.hcn, i64 7 ; 2 uses
  %i.hdd = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hdc
  %i.hde = load i16, ptr %i.hcp, align 2, !tbaa !24
  %i.hdf = load i16, ptr %i.hcr, align 2, !tbaa !24
  %i.hdg = load i16, ptr %i.hct, align 2, !tbaa !24
  %i.hdh = load i16, ptr %i.hcv, align 2, !tbaa !24
  %i.hdi = load i16, ptr %i.hcx, align 2, !tbaa !24
  %i.hdj = load i16, ptr %i.hcz, align 2, !tbaa !24
  %i.hdk = load i16, ptr %i.hdb, align 2, !tbaa !24
  %i.hdl = load i16, ptr %i.hdd, align 2, !tbaa !24
  %i.hdm = insertelement <8 x i16> poison, i16 %i.hde, i64 0
  %i.hdn = insertelement <8 x i16> %i.hdm, i16 %i.hdf, i64 1
  %i.hdo = insertelement <8 x i16> %i.hdn, i16 %i.hdg, i64 2
  %i.hdp = insertelement <8 x i16> %i.hdo, i16 %i.hdh, i64 3
  %i.hdq = insertelement <8 x i16> %i.hdp, i16 %i.hdi, i64 4
  %i.hdr = insertelement <8 x i16> %i.hdq, i16 %i.hdj, i64 5
  %i.hds = insertelement <8 x i16> %i.hdr, i16 %i.hdk, i64 6
  %i.hdt = insertelement <8 x i16> %i.hds, i16 %i.hdl, i64 7
  %i.hdu = zext <8 x i16> %i.hdt to <8 x i32>
  %i.hdv = shl nuw <8 x i32> %i.hdu, splat (i32 16)
  %i.hdw = bitcast <8 x i32> %i.hdv to <8 x float>
  %wide.vec6468 = load <16 x i16>, ptr %next.gep6466, align 2, !tbaa !24
  %i.hdx = freeze <16 x i16> %wide.vec6468        ; 2 uses
  %i.hdy = bitcast <16 x i16> %i.hdx to <8 x i32>
  %i.hdz = bitcast <16 x i16> %i.hdx to <8 x i32>
  %i.hea = and <8 x i32> %i.hdz, splat (i32 -65536)
  %i.heb = shl <8 x i32> %i.hdy, splat (i32 16)
  %i.hec = bitcast <8 x i32> %i.heb to <8 x float>
  %i.hed = fmul fast <8 x float> %i.hec, %i.hdw
  %i.hee = fadd fast <8 x float> %vec.phi6465, %i.hed
  %i.hef = getelementptr [2 x i8], ptr %i.ghw, i64 %i.hco
  %i.heg = getelementptr [2 x i8], ptr %i.ghw, i64 %i.hcq
  %i.heh = getelementptr [2 x i8], ptr %i.ghw, i64 %i.hcs
  %i.hei = getelementptr [2 x i8], ptr %i.ghw, i64 %i.hcu
  %i.hej = getelementptr [2 x i8], ptr %i.ghw, i64 %i.hcw
  %i.hek = getelementptr [2 x i8], ptr %i.ghw, i64 %i.hcy
  %i.hel = getelementptr [2 x i8], ptr %i.ghw, i64 %i.hda
  %i.hem = getelementptr [2 x i8], ptr %i.ghw, i64 %i.hdc
  %i.hen = load i16, ptr %i.hef, align 2, !tbaa !24
  %i.heo = load i16, ptr %i.heg, align 2, !tbaa !24
  %i.hep = load i16, ptr %i.heh, align 2, !tbaa !24
  %i.heq = load i16, ptr %i.hei, align 2, !tbaa !24
  %i.her = load i16, ptr %i.hej, align 2, !tbaa !24
  %i.hes = load i16, ptr %i.hek, align 2, !tbaa !24
  %i.het = load i16, ptr %i.hel, align 2, !tbaa !24
  %i.heu = load i16, ptr %i.hem, align 2, !tbaa !24
  %i.hev = insertelement <8 x i16> poison, i16 %i.hen, i64 0
  %i.hew = insertelement <8 x i16> %i.hev, i16 %i.heo, i64 1
  %i.hex = insertelement <8 x i16> %i.hew, i16 %i.hep, i64 2
  %i.hey = insertelement <8 x i16> %i.hex, i16 %i.heq, i64 3
  %i.hez = insertelement <8 x i16> %i.hey, i16 %i.her, i64 4
  %i.hfa = insertelement <8 x i16> %i.hez, i16 %i.hes, i64 5
  %i.hfb = insertelement <8 x i16> %i.hfa, i16 %i.het, i64 6
  %i.hfc = insertelement <8 x i16> %i.hfb, i16 %i.heu, i64 7
  %i.hfd = zext <8 x i16> %i.hfc to <8 x i32>
  %i.hfe = shl nuw <8 x i32> %i.hfd, splat (i32 16)
  %i.hff = bitcast <8 x i32> %i.hfe to <8 x float>
  %i.hfg = bitcast <8 x i32> %i.hea to <8 x float>
  %i.hfh = fmul fast <8 x float> %i.hfg, %i.hff
  %i.hfi = fadd fast <8 x float> %i.hfh, %i.hee   ; 2 uses
  %index.next6471 = add nuw i64 %index6464, 8     ; 2 uses
  %i.hfj = icmp eq i64 %index.next6471, %n.vec6462
  br i1 %i.hfj, label %vec.epilog.middle.block6472, label %vec.epilog.vector.body6463, !llvm.loop !270

vec.epilog.middle.block6472:                      ; preds = %vec.epilog.vector.body6463
  %i.hfk = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.hfi) ; 2 uses
  br i1 %cmp.n6473, label %._crit_edge5146.us, label %vec.epilog.scalar.ph6458.preheader

vec.epilog.scalar.ph6458.preheader:               ; preds = %iter.check6457, %vec.epilog.iter.check6459, %vec.epilog.middle.block6472
  %indvars.iv5775.ph = phi i64 [ 0, %iter.check6457 ], [ %n.vec6422, %vec.epilog.iter.check6459 ], [ %n.vec6462, %vec.epilog.middle.block6472 ]
  %.225143.us.ph = phi ptr [ %.215150.us, %iter.check6457 ], [ %i.ghx, %vec.epilog.iter.check6459 ], [ %i.hcj, %vec.epilog.middle.block6472 ]
  %.214675142.us.ph = phi float [ %.114665149.us, %iter.check6457 ], [ %i.hci, %vec.epilog.iter.check6459 ], [ %i.hfk, %vec.epilog.middle.block6472 ]
  br label %vec.epilog.scalar.ph6458

vec.epilog.scalar.ph6458:                         ; preds = %vec.epilog.scalar.ph6458.preheader, %vec.epilog.scalar.ph6458
  %indvars.iv5775 = phi i64 [ %indvars.iv.next5776, %vec.epilog.scalar.ph6458 ], [ %indvars.iv5775.ph, %vec.epilog.scalar.ph6458.preheader ] ; 2 uses
  %.225143.us = phi ptr [ %i.hgl, %vec.epilog.scalar.ph6458 ], [ %.225143.us.ph, %vec.epilog.scalar.ph6458.preheader ] ; 3 uses
  %.214675142.us = phi float [ %i.hgk, %vec.epilog.scalar.ph6458 ], [ %.214675142.us.ph, %vec.epilog.scalar.ph6458.preheader ]
  %i.hfl = getelementptr inbounds nuw [4 x i8], ptr %i.ghp, i64 %indvars.iv5775
  %i.hfm = load i32, ptr %i.hfl, align 4, !tbaa !30
  %i.hfn = sext i32 %i.hfm to i64                 ; 2 uses
  %i.hfo = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hfn
  %i.hfp = load i16, ptr %i.hfo, align 2, !tbaa !24
  %i.hfq = zext i16 %i.hfp to i32
  %i.hfr = shl nuw i32 %i.hfq, 16
  %i.hfs = bitcast i32 %i.hfr to float
  %i.hft = load i16, ptr %.225143.us, align 2, !tbaa !24
  %i.hfu = zext i16 %i.hft to i32
  %i.hfv = shl nuw i32 %i.hfu, 16
  %i.hfw = bitcast i32 %i.hfv to float
  %i.hfx = fmul fast float %i.hfw, %i.hfs
  %i.hfy = fadd fast float %.214675142.us, %i.hfx
  %i.hfz = getelementptr [2 x i8], ptr %i.ghw, i64 %i.hfn
  %i.hga = load i16, ptr %i.hfz, align 2, !tbaa !24
  %i.hgb = zext i16 %i.hga to i32
  %i.hgc = shl nuw i32 %i.hgb, 16
  %i.hgd = bitcast i32 %i.hgc to float
  %i.hge = getelementptr inbounds nuw i8, ptr %.225143.us, i64 2
  %i.hgf = load i16, ptr %i.hge, align 2, !tbaa !24
  %i.hgg = zext i16 %i.hgf to i32
  %i.hgh = shl nuw i32 %i.hgg, 16
  %i.hgi = bitcast i32 %i.hgh to float
  %i.hgj = fmul fast float %i.hgi, %i.hgd
  %i.hgk = fadd fast float %i.hgj, %i.hfy         ; 2 uses
  %i.hgl = getelementptr inbounds nuw i8, ptr %.225143.us, i64 4
  %indvars.iv.next5776 = add nuw nsw i64 %indvars.iv5775, 1 ; 2 uses
  %exitcond5781.not = icmp eq i64 %indvars.iv.next5776, %wide.trip.count5780
  br i1 %exitcond5781.not, label %._crit_edge5146.us, label %vec.epilog.scalar.ph6458, !llvm.loop !271

._crit_edge5146.us:                               ; preds = %vec.epilog.scalar.ph6458, %vec.epilog.middle.block6472, %middle.block6450
  %.lcssa6118 = phi float [ %i.hfk, %vec.epilog.middle.block6472 ], [ %i.hci, %middle.block6450 ], [ %i.hgk, %vec.epilog.scalar.ph6458 ] ; 2 uses
  %scevgep5777 = getelementptr i8, ptr %.215150.us, i64 4
  %scevgep5778 = getelementptr i8, ptr %scevgep5777, i64 %i.fnw ; 2 uses
  %indvars.iv.next5783 = add nuw nsw i64 %indvars.iv5782, 2 ; 3 uses
  %i.hgm = trunc i64 %indvars.iv.next5783 to i32
  %i.hgn = or i32 %i.hgm, 1
  %i.hgo = icmp slt i32 %i.hgn, %i.q
  br i1 %i.hgo, label %iter.check6457, label %.preheader4344.loopexit, !llvm.loop !272

.preheader4344.loopexit:                          ; preds = %._crit_edge5146.us
  %i.hgp = trunc nuw i64 %indvars.iv.next5783 to i32
  br label %.preheader4344

.preheader4344:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2332.preheader, %.preheader4344.loopexit, %._crit_edge5133
  %.11466.lcssa = phi float [ %op.rdx6478, %._crit_edge5133 ], [ %.lcssa6118, %.preheader4344.loopexit ], [ %op.rdx6478, %_ZN4ncnn3MatD2Ev.exit2332.preheader ] ; 3 uses
  %.21.lcssa = phi ptr [ %.16.lcssa, %._crit_edge5133 ], [ %scevgep5778, %.preheader4344.loopexit ], [ %.16.lcssa, %_ZN4ncnn3MatD2Ev.exit2332.preheader ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %._crit_edge5133 ], [ %i.hgp, %.preheader4344.loopexit ], [ %i.ghu, %_ZN4ncnn3MatD2Ev.exit2332.preheader ] ; 2 uses
  %i.hgq = icmp slt i32 %.3.lcssa, %i.q
  br i1 %i.hgq, label %_ZN4ncnn3MatD2Ev.exit.lr.ph, label %._crit_edge5173

_ZN4ncnn3MatD2Ev.exit.lr.ph:                      ; preds = %.preheader4344
  %i.hgr = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !307
  %i.hgs = load ptr, ptr %0, align 8, !tbaa !15, !noalias !307
  %i.hgt = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !307
  %i.hgu = load i64, ptr %i.dfg, align 8, !tbaa !17, !noalias !307 ; 2 uses
  %factor.op.mul5175 = mul i64 %i.hgt, %i.hgu
  %i.hgv = sext i32 %i.hgr to i64
  %i.hgw = mul i64 %i.hgu, %i.hgv
  %i.hgx = mul i64 %i.hgw, %i.fnq
  %invariant.gep5177 = getelementptr i8, ptr %i.hgs, i64 %i.hgx
  %i.hgy = mul nsw i64 %indvars.iv5795, %i.fny
  %invariant.gep5178 = getelementptr [2 x i8], ptr %invariant.gep5177, i64 %i.hgy
  %i.hgz = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.fnt, label %_ZN4ncnn3MatD2Ev.exit.us.preheader, label %._crit_edge5173

_ZN4ncnn3MatD2Ev.exit.us.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph
  %i.hha = zext i32 %.3.lcssa to i64
  br label %iter.check6400

iter.check6400:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit.us.preheader, %._crit_edge5167.us
  %indvars.iv5792 = phi i64 [ %i.hha, %_ZN4ncnn3MatD2Ev.exit.us.preheader ], [ %indvars.iv.next5793, %._crit_edge5167.us ] ; 2 uses
  %.235171.us = phi ptr [ %.21.lcssa, %_ZN4ncnn3MatD2Ev.exit.us.preheader ], [ %scevgep5788, %._crit_edge5167.us ] ; 6 uses
  %.314685170.us = phi float [ %.11466.lcssa, %_ZN4ncnn3MatD2Ev.exit.us.preheader ], [ %.lcssa6119, %._crit_edge5167.us ] ; 3 uses
  %.reass5176.us = mul i64 %factor.op.mul5175, %indvars.iv5792
  %gep5179.us = getelementptr i8, ptr %invariant.gep5178, i64 %.reass5176.us ; 73 uses
  br i1 %min.iters.check6372, label %vec.epilog.scalar.ph6401.preheader, label %vector.main.loop.iter.check6373

vector.main.loop.iter.check6373:                  ; preds = %iter.check6400
  br i1 %min.iters.check6374, label %vec.epilog.ph6404, label %vector.ph6375

vector.ph6375:                                    ; preds = %vector.main.loop.iter.check6373
  %i.hhb = getelementptr i8, ptr %.235171.us, i64 %i.fod
  %i.hhc = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.314685170.us, i64 0
  br label %vector.body6377

vector.body6377:                                  ; preds = %vector.ph6375, %vector.body6377
  %index6378 = phi i64 [ 0, %vector.ph6375 ], [ %index.next6392, %vector.body6377 ] ; 3 uses
  %vec.phi6379 = phi <16 x float> [ %i.hhc, %vector.ph6375 ], [ %i.hsn, %vector.body6377 ]
  %vec.phi6380 = phi <16 x float> [ zeroinitializer, %vector.ph6375 ], [ %i.hso, %vector.body6377 ]
  %vec.phi6381 = phi <16 x float> [ zeroinitializer, %vector.ph6375 ], [ %i.hsp, %vector.body6377 ]
  %vec.phi6382 = phi <16 x float> [ zeroinitializer, %vector.ph6375 ], [ %i.hsq, %vector.body6377 ]
  %i.hhd = shl i64 %index6378, 1
  %next.gep6383 = getelementptr i8, ptr %.235171.us, i64 %i.hhd ; 4 uses
  %i.hhe = getelementptr inbounds nuw [4 x i8], ptr %i.hgz, i64 %index6378 ; 4 uses
  %i.hhf = getelementptr inbounds nuw i8, ptr %i.hhe, i64 64
  %i.hhg = getelementptr inbounds nuw i8, ptr %i.hhe, i64 128
  %i.hhh = getelementptr inbounds nuw i8, ptr %i.hhe, i64 192
  %wide.load6384 = load <16 x i32>, ptr %i.hhe, align 4, !tbaa !30
  %wide.load6385 = load <16 x i32>, ptr %i.hhf, align 4, !tbaa !30
  %wide.load6386 = load <16 x i32>, ptr %i.hhg, align 4, !tbaa !30
  %wide.load6387 = load <16 x i32>, ptr %i.hhh, align 4, !tbaa !30
  %i.hhi = sext <16 x i32> %wide.load6384 to <16 x i64> ; 16 uses
  %i.hhj = sext <16 x i32> %wide.load6385 to <16 x i64> ; 16 uses
  %i.hhk = sext <16 x i32> %wide.load6386 to <16 x i64> ; 16 uses
  %i.hhl = sext <16 x i32> %wide.load6387 to <16 x i64> ; 16 uses
  %i.hhm = extractelement <16 x i64> %i.hhi, i64 0
  %i.hhn = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hhm
  %i.hho = extractelement <16 x i64> %i.hhi, i64 1
  %i.hhp = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hho
  %i.hhq = extractelement <16 x i64> %i.hhi, i64 2
  %i.hhr = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hhq
  %i.hhs = extractelement <16 x i64> %i.hhi, i64 3
  %i.hht = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hhs
  %i.hhu = extractelement <16 x i64> %i.hhi, i64 4
  %i.hhv = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hhu
  %i.hhw = extractelement <16 x i64> %i.hhi, i64 5
  %i.hhx = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hhw
  %i.hhy = extractelement <16 x i64> %i.hhi, i64 6
  %i.hhz = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hhy
  %i.hia = extractelement <16 x i64> %i.hhi, i64 7
  %i.hib = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hia
  %i.hic = extractelement <16 x i64> %i.hhi, i64 8
  %i.hid = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hic
  %i.hie = extractelement <16 x i64> %i.hhi, i64 9
  %i.hif = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hie
  %i.hig = extractelement <16 x i64> %i.hhi, i64 10
  %i.hih = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hig
  %i.hii = extractelement <16 x i64> %i.hhi, i64 11
  %i.hij = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hii
  %i.hik = extractelement <16 x i64> %i.hhi, i64 12
  %i.hil = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hik
  %i.him = extractelement <16 x i64> %i.hhi, i64 13
  %i.hin = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.him
  %i.hio = extractelement <16 x i64> %i.hhi, i64 14
  %i.hip = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hio
  %i.hiq = extractelement <16 x i64> %i.hhi, i64 15
  %i.hir = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hiq
  %i.his = extractelement <16 x i64> %i.hhj, i64 0
  %i.hit = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.his
  %i.hiu = extractelement <16 x i64> %i.hhj, i64 1
  %i.hiv = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hiu
  %i.hiw = extractelement <16 x i64> %i.hhj, i64 2
  %i.hix = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hiw
  %i.hiy = extractelement <16 x i64> %i.hhj, i64 3
  %i.hiz = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hiy
  %i.hja = extractelement <16 x i64> %i.hhj, i64 4
  %i.hjb = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hja
  %i.hjc = extractelement <16 x i64> %i.hhj, i64 5
  %i.hjd = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjc
  %i.hje = extractelement <16 x i64> %i.hhj, i64 6
  %i.hjf = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hje
  %i.hjg = extractelement <16 x i64> %i.hhj, i64 7
  %i.hjh = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjg
  %i.hji = extractelement <16 x i64> %i.hhj, i64 8
  %i.hjj = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hji
  %i.hjk = extractelement <16 x i64> %i.hhj, i64 9
  %i.hjl = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjk
  %i.hjm = extractelement <16 x i64> %i.hhj, i64 10
  %i.hjn = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjm
  %i.hjo = extractelement <16 x i64> %i.hhj, i64 11
  %i.hjp = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjo
  %i.hjq = extractelement <16 x i64> %i.hhj, i64 12
  %i.hjr = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjq
  %i.hjs = extractelement <16 x i64> %i.hhj, i64 13
  %i.hjt = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjs
  %i.hju = extractelement <16 x i64> %i.hhj, i64 14
  %i.hjv = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hju
  %i.hjw = extractelement <16 x i64> %i.hhj, i64 15
  %i.hjx = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjw
  %i.hjy = extractelement <16 x i64> %i.hhk, i64 0
  %i.hjz = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjy
  %i.hka = extractelement <16 x i64> %i.hhk, i64 1
  %i.hkb = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hka
  %i.hkc = extractelement <16 x i64> %i.hhk, i64 2
  %i.hkd = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hkc
  %i.hke = extractelement <16 x i64> %i.hhk, i64 3
  %i.hkf = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hke
  %i.hkg = extractelement <16 x i64> %i.hhk, i64 4
  %i.hkh = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hkg
  %i.hki = extractelement <16 x i64> %i.hhk, i64 5
  %i.hkj = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hki
  %i.hkk = extractelement <16 x i64> %i.hhk, i64 6
  %i.hkl = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hkk
  %i.hkm = extractelement <16 x i64> %i.hhk, i64 7
  %i.hkn = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hkm
  %i.hko = extractelement <16 x i64> %i.hhk, i64 8
  %i.hkp = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hko
  %i.hkq = extractelement <16 x i64> %i.hhk, i64 9
  %i.hkr = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hkq
  %i.hks = extractelement <16 x i64> %i.hhk, i64 10
  %i.hkt = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hks
  %i.hku = extractelement <16 x i64> %i.hhk, i64 11
  %i.hkv = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hku
  %i.hkw = extractelement <16 x i64> %i.hhk, i64 12
  %i.hkx = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hkw
  %i.hky = extractelement <16 x i64> %i.hhk, i64 13
  %i.hkz = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hky
  %i.hla = extractelement <16 x i64> %i.hhk, i64 14
  %i.hlb = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hla
  %i.hlc = extractelement <16 x i64> %i.hhk, i64 15
  %i.hld = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlc
  %i.hle = extractelement <16 x i64> %i.hhl, i64 0
  %i.hlf = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hle
  %i.hlg = extractelement <16 x i64> %i.hhl, i64 1
  %i.hlh = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlg
  %i.hli = extractelement <16 x i64> %i.hhl, i64 2
  %i.hlj = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hli
  %i.hlk = extractelement <16 x i64> %i.hhl, i64 3
  %i.hll = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlk
  %i.hlm = extractelement <16 x i64> %i.hhl, i64 4
  %i.hln = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlm
  %i.hlo = extractelement <16 x i64> %i.hhl, i64 5
  %i.hlp = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlo
  %i.hlq = extractelement <16 x i64> %i.hhl, i64 6
  %i.hlr = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlq
  %i.hls = extractelement <16 x i64> %i.hhl, i64 7
  %i.hlt = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hls
  %i.hlu = extractelement <16 x i64> %i.hhl, i64 8
  %i.hlv = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlu
  %i.hlw = extractelement <16 x i64> %i.hhl, i64 9
  %i.hlx = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlw
  %i.hly = extractelement <16 x i64> %i.hhl, i64 10
  %i.hlz = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hly
  %i.hma = extractelement <16 x i64> %i.hhl, i64 11
  %i.hmb = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hma
  %i.hmc = extractelement <16 x i64> %i.hhl, i64 12
  %i.hmd = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hmc
  %i.hme = extractelement <16 x i64> %i.hhl, i64 13
  %i.hmf = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hme
  %i.hmg = extractelement <16 x i64> %i.hhl, i64 14
  %i.hmh = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hmg
  %i.hmi = extractelement <16 x i64> %i.hhl, i64 15
  %i.hmj = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hmi
  %i.hmk = load i16, ptr %i.hhn, align 2, !tbaa !24
  %i.hml = load i16, ptr %i.hhp, align 2, !tbaa !24
  %i.hmm = load i16, ptr %i.hhr, align 2, !tbaa !24
  %i.hmn = load i16, ptr %i.hht, align 2, !tbaa !24
  %i.hmo = load i16, ptr %i.hhv, align 2, !tbaa !24
  %i.hmp = load i16, ptr %i.hhx, align 2, !tbaa !24
  %i.hmq = load i16, ptr %i.hhz, align 2, !tbaa !24
  %i.hmr = load i16, ptr %i.hib, align 2, !tbaa !24
  %i.hms = load i16, ptr %i.hid, align 2, !tbaa !24
  %i.hmt = load i16, ptr %i.hif, align 2, !tbaa !24
  %i.hmu = load i16, ptr %i.hih, align 2, !tbaa !24
  %i.hmv = load i16, ptr %i.hij, align 2, !tbaa !24
  %i.hmw = load i16, ptr %i.hil, align 2, !tbaa !24
  %i.hmx = load i16, ptr %i.hin, align 2, !tbaa !24
  %i.hmy = load i16, ptr %i.hip, align 2, !tbaa !24
  %i.hmz = load i16, ptr %i.hir, align 2, !tbaa !24
  %i.hna = insertelement <16 x i16> poison, i16 %i.hmk, i64 0
  %i.hnb = insertelement <16 x i16> %i.hna, i16 %i.hml, i64 1
  %i.hnc = insertelement <16 x i16> %i.hnb, i16 %i.hmm, i64 2
  %i.hnd = insertelement <16 x i16> %i.hnc, i16 %i.hmn, i64 3
  %i.hne = insertelement <16 x i16> %i.hnd, i16 %i.hmo, i64 4
  %i.hnf = insertelement <16 x i16> %i.hne, i16 %i.hmp, i64 5
  %i.hng = insertelement <16 x i16> %i.hnf, i16 %i.hmq, i64 6
  %i.hnh = insertelement <16 x i16> %i.hng, i16 %i.hmr, i64 7
  %i.hni = insertelement <16 x i16> %i.hnh, i16 %i.hms, i64 8
  %i.hnj = insertelement <16 x i16> %i.hni, i16 %i.hmt, i64 9
  %i.hnk = insertelement <16 x i16> %i.hnj, i16 %i.hmu, i64 10
  %i.hnl = insertelement <16 x i16> %i.hnk, i16 %i.hmv, i64 11
  %i.hnm = insertelement <16 x i16> %i.hnl, i16 %i.hmw, i64 12
  %i.hnn = insertelement <16 x i16> %i.hnm, i16 %i.hmx, i64 13
  %i.hno = insertelement <16 x i16> %i.hnn, i16 %i.hmy, i64 14
  %i.hnp = insertelement <16 x i16> %i.hno, i16 %i.hmz, i64 15
  %i.hnq = load i16, ptr %i.hit, align 2, !tbaa !24
  %i.hnr = load i16, ptr %i.hiv, align 2, !tbaa !24
  %i.hns = load i16, ptr %i.hix, align 2, !tbaa !24
  %i.hnt = load i16, ptr %i.hiz, align 2, !tbaa !24
  %i.hnu = load i16, ptr %i.hjb, align 2, !tbaa !24
  %i.hnv = load i16, ptr %i.hjd, align 2, !tbaa !24
  %i.hnw = load i16, ptr %i.hjf, align 2, !tbaa !24
  %i.hnx = load i16, ptr %i.hjh, align 2, !tbaa !24
  %i.hny = load i16, ptr %i.hjj, align 2, !tbaa !24
  %i.hnz = load i16, ptr %i.hjl, align 2, !tbaa !24
  %i.hoa = load i16, ptr %i.hjn, align 2, !tbaa !24
  %i.hob = load i16, ptr %i.hjp, align 2, !tbaa !24
  %i.hoc = load i16, ptr %i.hjr, align 2, !tbaa !24
  %i.hod = load i16, ptr %i.hjt, align 2, !tbaa !24
  %i.hoe = load i16, ptr %i.hjv, align 2, !tbaa !24
  %i.hof = load i16, ptr %i.hjx, align 2, !tbaa !24
  %i.hog = insertelement <16 x i16> poison, i16 %i.hnq, i64 0
  %i.hoh = insertelement <16 x i16> %i.hog, i16 %i.hnr, i64 1
  %i.hoi = insertelement <16 x i16> %i.hoh, i16 %i.hns, i64 2
  %i.hoj = insertelement <16 x i16> %i.hoi, i16 %i.hnt, i64 3
  %i.hok = insertelement <16 x i16> %i.hoj, i16 %i.hnu, i64 4
end_hunk_5
begin_hunk_6_@_ZN4ncnn57convolution_im2col_gemm_transform_kernel_bf16s_avx512bf16ERKNS_3MatERS0_iiiiRKNS_6OptionE:bb.a
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef %i.cs)
          to label %_ZN4ncnn3MatD2Ev.exit72.i unwind label %bb.x, !inline_history !0

bb.v:                                             ; preds = %bb.t
  %.not.i109.i = icmp eq ptr %i.cs, null
  br i1 %.not.i109.i, label %_ZN4ncnn3MatD2Ev.exit72.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.cs) #10
  br label %_ZN4ncnn3MatD2Ev.exit72.i

bb.x:                                             ; preds = %bb.u
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit72.i:                        ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.aw

bb.y:                                             ; preds = %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit71.i

bb.z:                                             ; preds = %bb.o
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.da = load ptr, ptr %i.bq, align 8, !tbaa !45 ; 2 uses
  %.not.i74.i = icmp eq ptr %i.da, null
  br i1 %.not.i74.i, label %_ZN4ncnn3MatD2Ev.exit71.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = atomicrmw add ptr %i.da, i32 -1 acq_rel, align 4
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.ab, label %_ZN4ncnn3MatD2Ev.exit71.i

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.de = load ptr, ptr %i.dd, align 16, !tbaa !46 ; 3 uses
  %.not3.i75.i = icmp eq ptr %i.de, null
  %i.df = load ptr, ptr %8, align 16, !tbaa !15   ; 3 uses
  br i1 %.not3.i75.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit71.i unwind label %bb.af, !inline_history !0

bb.ad:                                            ; preds = %bb.ab
  %.not.i107.i = icmp eq ptr %i.df, null
  br i1 %.not.i107.i, label %_ZN4ncnn3MatD2Ev.exit71.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.df) #10
  br label %_ZN4ncnn3MatD2Ev.exit71.i

bb.af:                                            ; preds = %bb.ac
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit71.i:                        ; preds = %bb.z, %bb.aa, %bb.ac, %bb.ad, %bb.ae, %bb.y
  %.pn63.i = phi { ptr, i32 } [ %i.cy, %bb.y ], [ %i.cz, %bb.ae ], [ %i.cz, %bb.ad ], [ %i.cz, %bb.ac ], [ %i.cz, %bb.aa ], [ %i.cz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.bf

bb.ag:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.g, i32 noundef %2, i32 noundef %3, ptr noundef null)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef %i.h, i32 noundef %3, i64 noundef 4, ptr noundef null)
          to label %.preheader121.i unwind label %bb.ap

.preheader121.i:                                  ; preds = %bb.ah
  %i.dl = icmp sgt i32 %3, 0
  br i1 %i.dl, label %.lr.ph.i, label %._crit_edge.split.i

.lr.ph.i:                                         ; preds = %.preheader121.i
  %i.dm = load ptr, ptr %7, align 16, !tbaa !15
  %i.dn = load i32, ptr %i.bm, align 4, !tbaa !31
  %i.do = sext i32 %i.dn to i64
  %i.dp = load i64, ptr %i.bi, align 16, !tbaa !17
  %factor.op.mul130.i = mul i64 %i.dp, %i.do
  %.not.i = icmp sle i32 %.059.i, %2
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dt = icmp sgt i32 %i.g, 0
  %or.cond.i = and i1 %i.dt, %.not.i
  br i1 %or.cond.i, label %.preheader120.lr.ph.us.preheader.i, label %._crit_edge.split.i

.preheader120.lr.ph.us.preheader.i:               ; preds = %.lr.ph.i
  %i.du = add nsw i32 %.059.i, -1
  %i.dv = zext nneg i32 %.059.i to i64            ; 9 uses
  %i.dw = zext nneg i32 %i.du to i64
  %i.dx = zext nneg i32 %2 to i64
  %wide.trip.count147.i = zext nneg i32 %3 to i64
  %wide.trip.count139.i = zext nneg i32 %i.g to i64
  %i.dy = add nsw i64 %i.dv, -1                   ; 2 uses
  %i.dz = shl nuw nsw i64 %i.dv, 2
  %min.iters.check = icmp samesign ult i32 %.059.i, 4
  %min.iters.check36 = icmp samesign ult i32 %.059.i, 16
  %n.vec = and i64 %i.dv, 16                      ; 2 uses
  %i.ea = shl nuw nsw i64 %n.vec, 2
  %n.vec39 = and i64 %i.dv, 12                    ; 3 uses
  %i.eb = shl nuw nsw i64 %n.vec39, 2
  %i.ec = icmp eq i64 %n.vec39, 4
  %i.ed = icmp eq i64 %n.vec39, 8
  %xtraiter = and i64 %i.dv, 1
  %i.ee = icmp samesign ult i32 %.059.i, 4
  %unroll_iter = and i64 %i.dv, 28
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod60 = trunc i32 %.059.i to i1
  br label %.preheader120.lr.ph.us.i

.preheader120.lr.ph.us.i:                         ; preds = %._crit_edge128.split.us.us.i, %.preheader120.lr.ph.us.preheader.i
  %indvars.iv144.i = phi i64 [ 0, %.preheader120.lr.ph.us.preheader.i ], [ %indvars.iv.next145.i, %._crit_edge128.split.us.us.i ] ; 4 uses
  %.reass.us131.i = mul i64 %factor.op.mul130.i, %indvars.iv144.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.reass.us131.i
  %i.eg = load i32, ptr %i.dq, align 4
  %i.eh = load ptr, ptr %9, align 8               ; 4 uses
  %i.ei = load i64, ptr %i.dr, align 8            ; 2 uses
  %i.ej = mul i64 %i.ei, %indvars.iv144.i
  %i.ek = load i64, ptr %i.ds, align 8            ; 6 uses
  %i.el = mul i64 %i.ej, %i.ek                    ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.el
  %i.en = sext i32 %i.eg to i64                   ; 5 uses
  %factor.op.mul.us.i = mul i64 %i.ek, %i.en      ; 9 uses
  %i.eo = mul i64 %i.ek, %i.en
  %i.ep = sub i64 0, %i.eo
  %i.eq = mul i64 %i.ek, %i.dv
  %i.er = mul i64 %i.eq, %i.en
  %i.es = mul i64 %i.ek, %i.dv
  %i.et = mul i64 %i.es, %i.en
  %i.eu = mul i64 %i.ei, %indvars.iv144.i
  %i.ev = mul nsw i64 %i.dy, %i.en
  %i.ew = add i64 %i.eu, %i.ev
  %i.ex = mul i64 %i.ek, %i.ew
  %i.ey = getelementptr i8, ptr %i.eh, i64 %i.el
  %i.ez = getelementptr i8, ptr %i.eh, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.eh, i64 %i.el
  %i.fb = icmp slt i64 %factor.op.mul.us.i, 0     ; 2 uses
  %i.fc = select i1 %i.fb, i64 %i.ep, i64 %factor.op.mul.us.i
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fc, i64 %i.dy) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.fd = sub i64 0, %mul.result
  %broadcast.splatinsert37 = insertelement <16 x i64> poison, i64 %factor.op.mul.us.i, i64 0
  %broadcast.splat38 = shufflevector <16 x i64> %broadcast.splatinsert37, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert42 = insertelement <4 x i64> poison, i64 %factor.op.mul.us.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i64> %broadcast.splatinsert42, <4 x i64> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %.preheader120.us.us.i

.preheader120.us.us.i:                            ; preds = %._crit_edge.us.us.i, %.preheader120.lr.ph.us.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.us.i ], [ 0, %.preheader120.lr.ph.us.i ] ; 3 uses
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %._crit_edge.us.us.i ], [ 0, %.preheader120.lr.ph.us.i ] ; 8 uses
  %.050126.us.us.i = phi ptr [ %.lcssa, %._crit_edge.us.us.i ], [ %i.ef, %.preheader120.lr.ph.us.i ]
  %i.fe = mul i64 %i.et, %indvar                  ; 2 uses
  %i.ff = mul i64 %i.er, %indvar
  %i.fg = getelementptr i8, ptr %i.ey, i64 %i.fe
  %i.fh = getelementptr i8, ptr %i.ez, i64 %i.fe
  %i.fi = getelementptr i8, ptr %i.fa, i64 %i.ff
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %indvars.iv141.i, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <4 x i64> poison, i64 %indvars.iv141.i, i64 0
  %broadcast.splat41 = shufflevector <4 x i64> %broadcast.splatinsert40, <4 x i64> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.fj = add nuw nsw <4 x i64> %broadcast.splat41, <i64 0, i64 1, i64 2, i64 3>
  %i.fk = mul <4 x i64> %broadcast.splat43, %i.fj
  %i.fl = add nuw nsw <4 x i64> %broadcast.splat41, <i64 4, i64 5, i64 6, i64 7>
  %i.fm = mul <4 x i64> %broadcast.splat43, %i.fl
  %i.fn = add nuw nsw <4 x i64> %broadcast.splat41, <i64 8, i64 9, i64 10, i64 11>
  %i.fo = mul <4 x i64> %broadcast.splat43, %i.fn
  br label %iter.check

iter.check:                                       ; preds = %middle.block, %.preheader120.us.us.i
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i, %middle.block ], [ 0, %.preheader120.us.us.i ] ; 4 uses
  %.1124.us.us.i = phi ptr [ %.lcssa, %middle.block ], [ %.050126.us.us.i, %.preheader120.us.us.i ] ; 10 uses
  %i.fp = shl nuw nsw i64 %indvars.iv136.i, 2     ; 2 uses
  %scevgep33 = getelementptr i8, ptr %i.fg, i64 %i.fp ; 4 uses
  %scevgep34 = getelementptr i8, ptr %i.fh, i64 %i.fp ; 4 uses
  %i.fq = icmp ult ptr %scevgep33, %scevgep34
  %umin = select i1 %i.fq, ptr %scevgep33, ptr %scevgep34
  %i.fr = icmp ugt ptr %scevgep33, %scevgep34
  %umax = select i1 %i.fr, ptr %scevgep33, ptr %scevgep34
  %scevgep35 = getelementptr i8, ptr %umax, i64 4
  %invariant.gep.us.us.i = getelementptr [4 x i8], ptr %i.em, i64 %indvars.iv136.i ; 9 uses
  br i1 %min.iters.check, label %.noexc.us.us.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.fs = shl nuw nsw i64 %indvars.iv136.i, 2
  %scevgep = getelementptr i8, ptr %i.fi, i64 %i.fs ; 4 uses
  %i.ft = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.fu = getelementptr i8, ptr %scevgep, i64 %i.fd
  %i.fv = icmp ult ptr %i.ft, %scevgep
  %i.fw = icmp ugt ptr %i.fu, %scevgep
  %i.fx = select i1 %i.fb, i1 %i.fw, i1 %i.fv
  %i.fy = or i1 %i.fx, %mul.overflow
  br i1 %i.fy, label %.noexc.us.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep32 = getelementptr i8, ptr %.1124.us.us.i, i64 %i.dz
  %bound0 = icmp ult ptr %.1124.us.us.i, %scevgep35
  %bound1 = icmp ult ptr %umin, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.noexc.us.us.i.preheader, label %vector.main.loop.iter.check

.noexc.us.us.i.preheader:                         ; preds = %iter.check, %vector.scevcheck, %vector.memcheck
  br i1 %i.ee, label %.noexc.us.us.i.epil.preheader, label %.noexc.us.us.i

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fz = getelementptr i8, ptr %.1124.us.us.i, i64 %i.ea
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ga = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1124.us.us.i, i64 %i.ga
  %i.gb = add nuw nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.gc = mul <16 x i64> %broadcast.splat38, %i.gb
  %wide.gep = getelementptr i8, ptr %invariant.gep.us.us.i, <16 x i64> %i.gc
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !22, !alias.scope !362
  store <16 x float> %wide.masked.gather, ptr %next.gep, align 4, !tbaa !22, !alias.scope !363, !noalias !362
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.gd = icmp eq i64 %index.next, %n.vec
  br i1 %i.gd, label %middle.block, label %vector.body, !llvm.loop !352

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %i.ge = getelementptr i8, ptr %.1124.us.us.i, i64 %i.eb ; 3 uses
  %wide.gep49 = getelementptr i8, ptr %invariant.gep.us.us.i, <4 x i64> %i.fk
  %wide.masked.gather50 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep49, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !22, !alias.scope !362
  store <4 x float> %wide.masked.gather50, ptr %.1124.us.us.i, align 4, !tbaa !22, !alias.scope !363, !noalias !362
  br i1 %i.ec, label %middle.block, label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph
  %next.gep48.1 = getelementptr i8, ptr %.1124.us.us.i, i64 16
  %wide.gep49.1 = getelementptr i8, ptr %invariant.gep.us.us.i, <4 x i64> %i.fm
  %wide.masked.gather50.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep49.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !22, !alias.scope !362
  store <4 x float> %wide.masked.gather50.1, ptr %next.gep48.1, align 4, !tbaa !22, !alias.scope !363, !noalias !362
  br i1 %i.ed, label %middle.block, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %next.gep48.2 = getelementptr i8, ptr %.1124.us.us.i, i64 32
  %wide.gep49.2 = getelementptr i8, ptr %invariant.gep.us.us.i, <4 x i64> %i.fo
  %wide.masked.gather50.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep49.2, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !22, !alias.scope !362
  store <4 x float> %wide.masked.gather50.2, ptr %next.gep48.2, align 4, !tbaa !22, !alias.scope !363, !noalias !362
  br label %middle.block

.noexc.us.us.i:                                   ; preds = %.noexc.us.us.i.preheader, %.noexc.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.noexc.us.us.i ], [ 0, %.noexc.us.us.i.preheader ] ; 5 uses
  %.2122.us.us.i = phi ptr [ %i.gq, %.noexc.us.us.i ], [ %.1124.us.us.i, %.noexc.us.us.i.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.noexc.us.us.i ], [ 0, %.noexc.us.us.i.preheader ]
  %i.gf = add nuw nsw i64 %indvars.iv.i, %indvars.iv141.i
  %.reass.us.us.i = mul i64 %factor.op.mul.us.i, %i.gf
  %gep.us.us.i = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i
  %i.gg = load float, ptr %gep.us.us.i, align 4, !tbaa !22
  store float %i.gg, ptr %.2122.us.us.i, align 4, !tbaa !22
  %i.gh = getelementptr inbounds nuw i8, ptr %.2122.us.us.i, i64 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.gi = add nuw nsw i64 %indvars.iv.next.i, %indvars.iv141.i
  %.reass.us.us.i.1 = mul i64 %factor.op.mul.us.i, %i.gi
  %gep.us.us.i.1 = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.1
  %i.gj = load float, ptr %gep.us.us.i.1, align 4, !tbaa !22
  store float %i.gj, ptr %i.gh, align 4, !tbaa !22
  %i.gk = getelementptr inbounds nuw i8, ptr %.2122.us.us.i, i64 8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.gl = add nuw nsw i64 %indvars.iv.next.i.1, %indvars.iv141.i
  %.reass.us.us.i.2 = mul i64 %factor.op.mul.us.i, %i.gl
  %gep.us.us.i.2 = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.2
  %i.gm = load float, ptr %gep.us.us.i.2, align 4, !tbaa !22
  store float %i.gm, ptr %i.gk, align 4, !tbaa !22
  %i.gn = getelementptr inbounds nuw i8, ptr %.2122.us.us.i, i64 12
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.go = add nuw nsw i64 %indvars.iv.next.i.2, %indvars.iv141.i
  %.reass.us.us.i.3 = mul i64 %factor.op.mul.us.i, %i.go
  %gep.us.us.i.3 = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.3
  %i.gp = load float, ptr %gep.us.us.i.3, align 4, !tbaa !22
  store float %i.gp, ptr %i.gn, align 4, !tbaa !22
  %i.gq = getelementptr inbounds nuw i8, ptr %.2122.us.us.i, i64 16 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.loopexit.unr-lcssa, label %.noexc.us.us.i, !llvm.loop !353

middle.block.loopexit.unr-lcssa:                  ; preds = %.noexc.us.us.i
  br i1 %lcmp.mod.not, label %middle.block, label %.noexc.us.us.i.epil.preheader

.noexc.us.us.i.epil.preheader:                    ; preds = %middle.block.loopexit.unr-lcssa, %.noexc.us.us.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.noexc.us.us.i.preheader ], [ %indvars.iv.next.i.3, %middle.block.loopexit.unr-lcssa ]
  %.2122.us.us.i.epil.init = phi ptr [ %.1124.us.us.i, %.noexc.us.us.i.preheader ], [ %i.gq, %middle.block.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod60)
  br label %.noexc.us.us.i.epil

.noexc.us.us.i.epil:                              ; preds = %.noexc.us.us.i.epil, %.noexc.us.us.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.noexc.us.us.i.epil ], [ %indvars.iv.i.epil.init, %.noexc.us.us.i.epil.preheader ] ; 2 uses
  %.2122.us.us.i.epil = phi ptr [ %i.gt, %.noexc.us.us.i.epil ], [ %.2122.us.us.i.epil.init, %.noexc.us.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.noexc.us.us.i.epil ], [ 0, %.noexc.us.us.i.epil.preheader ] ; 2 uses
  %i.gr = add nuw nsw i64 %indvars.iv.i.epil, %indvars.iv141.i
  %.reass.us.us.i.epil = mul i64 %factor.op.mul.us.i, %i.gr
  %gep.us.us.i.epil = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.epil
  %i.gs = load float, ptr %gep.us.us.i.epil, align 4, !tbaa !22
  store float %i.gs, ptr %.2122.us.us.i.epil, align 4, !tbaa !22
  %i.gt = getelementptr inbounds nuw i8, ptr %.2122.us.us.i.epil, i64 4 ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %middle.block, label %.noexc.us.us.i.epil, !llvm.loop !354

middle.block:                                     ; preds = %vector.body, %vec.epilog.ph, %vec.epilog.vector.body.1, %vec.epilog.vector.body.2, %middle.block.loopexit.unr-lcssa, %.noexc.us.us.i.epil
  %.lcssa = phi ptr [ %i.gt, %.noexc.us.us.i.epil ], [ %i.ge, %vec.epilog.ph ], [ %i.gq, %middle.block.loopexit.unr-lcssa ], [ %i.ge, %vec.epilog.vector.body.2 ], [ %i.ge, %vec.epilog.vector.body.1 ], [ %i.fz, %vector.body ] ; 2 uses
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next137.i, %wide.trip.count139.i
  br i1 %exitcond140.not.i, label %._crit_edge.us.us.i, label %iter.check, !llvm.loop !355

._crit_edge.us.us.i:                              ; preds = %middle.block
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, %i.dv ; 2 uses
  %i.gu = add nuw nsw i64 %indvars.iv.next142.i, %i.dw
  %i.gv = icmp samesign ult i64 %i.gu, %i.dx
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gv, label %.preheader120.us.us.i, label %._crit_edge128.split.us.us.i, !llvm.loop !356

._crit_edge128.split.us.us.i:                     ; preds = %._crit_edge.us.us.i
  %indvars.iv.next145.i = add nuw nsw i64 %indvars.iv144.i, 1 ; 2 uses
  %exitcond148.not.i = icmp eq i64 %indvars.iv.next145.i, %wide.trip.count147.i
  br i1 %exitcond148.not.i, label %._crit_edge.split.i, label %.preheader120.lr.ph.us.i, !llvm.loop !357

._crit_edge.split.i:                              ; preds = %._crit_edge128.split.us.us.i, %.lr.ph.i, %.preheader121.i
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !45 ; 2 uses
  %.not.i82.i = icmp eq ptr %i.gx, null
  br i1 %.not.i82.i, label %_ZN4ncnn3MatD2Ev.exit69.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.split.i
  %i.gy = atomicrmw add ptr %i.gx, i32 -1 acq_rel, align 4
  %i.gz = icmp eq i32 %i.gy, 1
  br i1 %i.gz, label %bb.aj, label %_ZN4ncnn3MatD2Ev.exit69.i

bb.aj:                                            ; preds = %bb.ai
  %i.ha = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !46 ; 3 uses
  %.not3.i83.i = icmp eq ptr %i.hb, null
  %i.hc = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i83.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hd = load ptr, ptr %i.hb, align 8, !tbaa !48
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  invoke void %i.hf(ptr noundef nonnull align 8 dereferenceable(8) %i.hb, ptr noundef %i.hc)
          to label %_ZN4ncnn3MatD2Ev.exit69.i unwind label %bb.an, !inline_history !0

bb.al:                                            ; preds = %bb.aj
  %.not.i103.i = icmp eq ptr %i.hc, null
  br i1 %.not.i103.i, label %_ZN4ncnn3MatD2Ev.exit69.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.hc) #10
  br label %_ZN4ncnn3MatD2Ev.exit69.i

bb.an:                                            ; preds = %bb.ak
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit69.i:                        ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai, %._crit_edge.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.aw

bb.ao:                                            ; preds = %bb.ag
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit68.i

bb.ap:                                            ; preds = %bb.ah
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !45 ; 2 uses
  %.not.i86.i = icmp eq ptr %i.hl, null
  br i1 %.not.i86.i, label %_ZN4ncnn3MatD2Ev.exit68.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hm = atomicrmw add ptr %i.hl, i32 -1 acq_rel, align 4
  %i.hn = icmp eq i32 %i.hm, 1
  br i1 %i.hn, label %bb.ar, label %_ZN4ncnn3MatD2Ev.exit68.i

bb.ar:                                            ; preds = %bb.aq
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !46 ; 3 uses
  %.not3.i87.i = icmp eq ptr %i.hp, null
  %i.hq = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i87.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hr = load ptr, ptr %i.hp, align 8, !tbaa !48
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  invoke void %i.ht(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef %i.hq)
          to label %_ZN4ncnn3MatD2Ev.exit68.i unwind label %bb.av, !inline_history !0

bb.at:                                            ; preds = %bb.ar
  %.not.i101.i = icmp eq ptr %i.hq, null
  br i1 %.not.i101.i, label %_ZN4ncnn3MatD2Ev.exit68.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.hq) #10
  br label %_ZN4ncnn3MatD2Ev.exit68.i

bb.av:                                            ; preds = %bb.as
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
end_hunk_6
begin_hunk_7_@_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %.050722.i, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.050523.i, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.050324.i, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.050125.i, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.049926.i, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.049727.i, i64 8 ; 2 uses
  %i.fv = add nuw nsw i32 %.049528.i, 2           ; 2 uses
  %i.fw = or disjoint i32 %i.fv, 1
  %i.fx = icmp slt i32 %i.fw, %.sroa.speculated
  br i1 %i.fx, label %.lr.ph.i, label %.preheader10.i, !llvm.loop !366

.lr.ph64.i:                                       ; preds = %.preheader10.i, %.lr.ph64.i
  %.149663.i = phi i32 [ %i.hx, %.lr.ph64.i ], [ %.0495.lcssa.i, %.preheader10.i ]
  %.149862.i = phi ptr [ %i.hw, %.lr.ph64.i ], [ %.0497.lcssa.i, %.preheader10.i ] ; 2 uses
  %.150061.i = phi ptr [ %i.hv, %.lr.ph64.i ], [ %.0499.lcssa.i, %.preheader10.i ] ; 2 uses
  %.150260.i = phi ptr [ %i.hu, %.lr.ph64.i ], [ %.0501.lcssa.i, %.preheader10.i ] ; 2 uses
  %.150459.i = phi ptr [ %i.ht, %.lr.ph64.i ], [ %.0503.lcssa.i, %.preheader10.i ] ; 2 uses
  %.150658.i = phi ptr [ %i.hs, %.lr.ph64.i ], [ %.0505.lcssa.i, %.preheader10.i ] ; 2 uses
  %.150857.i = phi ptr [ %i.hr, %.lr.ph64.i ], [ %.0507.lcssa.i, %.preheader10.i ] ; 2 uses
  %.151056.i = phi ptr [ %i.hq, %.lr.ph64.i ], [ %.0509.lcssa.i, %.preheader10.i ] ; 2 uses
  %.151255.i = phi ptr [ %i.hp, %.lr.ph64.i ], [ %.0511.lcssa.i, %.preheader10.i ] ; 2 uses
  %.151454.i = phi ptr [ %i.ho, %.lr.ph64.i ], [ %.0513.lcssa.i, %.preheader10.i ] ; 2 uses
  %.151653.i = phi ptr [ %i.hn, %.lr.ph64.i ], [ %.0515.lcssa.i, %.preheader10.i ] ; 2 uses
  %.151852.i = phi ptr [ %i.hm, %.lr.ph64.i ], [ %.0517.lcssa.i, %.preheader10.i ] ; 2 uses
  %.152051.i = phi ptr [ %i.hl, %.lr.ph64.i ], [ %.0519.lcssa.i, %.preheader10.i ] ; 2 uses
  %.152250.i = phi ptr [ %i.hk, %.lr.ph64.i ], [ %.0521.lcssa.i, %.preheader10.i ] ; 2 uses
  %.152449.i = phi ptr [ %i.hj, %.lr.ph64.i ], [ %.0523.lcssa.i, %.preheader10.i ] ; 2 uses
  %.152648.i = phi ptr [ %i.hi, %.lr.ph64.i ], [ %.0525.lcssa.i, %.preheader10.i ] ; 2 uses
  %.152847.i = phi ptr [ %i.hh, %.lr.ph64.i ], [ %.0527.lcssa.i, %.preheader10.i ] ; 2 uses
  %.253346.i = phi ptr [ %i.hg, %.lr.ph64.i ], [ %.1532.lcssa.i, %.preheader10.i ] ; 2 uses
  %i.fy = load i32, ptr %.152847.i, align 4, !tbaa !22
  %i.fz = load i32, ptr %.152648.i, align 4, !tbaa !22
  %i.ga = load i32, ptr %.152449.i, align 4, !tbaa !22
  %i.gb = load i32, ptr %.152250.i, align 4, !tbaa !22
  %i.gc = load i32, ptr %.152051.i, align 4, !tbaa !22
  %i.gd = load i32, ptr %.151852.i, align 4, !tbaa !22
  %i.ge = load i32, ptr %.151653.i, align 4, !tbaa !22
  %i.gf = load i32, ptr %.151454.i, align 4, !tbaa !22
  %i.gg = load i32, ptr %.151255.i, align 4, !tbaa !22
  %i.gh = load i32, ptr %.151056.i, align 4, !tbaa !22
  %i.gi = load i32, ptr %.150857.i, align 4, !tbaa !22
  %i.gj = load i32, ptr %.150658.i, align 4, !tbaa !22
  %i.gk = load i32, ptr %.150459.i, align 4, !tbaa !22
  %i.gl = load i32, ptr %.150260.i, align 4, !tbaa !22
  %i.gm = load i32, ptr %.150061.i, align 4, !tbaa !22
  %i.gn = load i32, ptr %.149862.i, align 4, !tbaa !22
  %i.go = insertelement <16 x i32> poison, i32 %i.fy, i64 0
  %i.gp = insertelement <16 x i32> %i.go, i32 %i.fz, i64 1
  %i.gq = insertelement <16 x i32> %i.gp, i32 %i.ga, i64 2
  %i.gr = insertelement <16 x i32> %i.gq, i32 %i.gb, i64 3
  %i.gs = insertelement <16 x i32> %i.gr, i32 %i.gc, i64 4
  %i.gt = insertelement <16 x i32> %i.gs, i32 %i.gd, i64 5
  %i.gu = insertelement <16 x i32> %i.gt, i32 %i.ge, i64 6
  %i.gv = insertelement <16 x i32> %i.gu, i32 %i.gf, i64 7
  %i.gw = insertelement <16 x i32> %i.gv, i32 %i.gg, i64 8
  %i.gx = insertelement <16 x i32> %i.gw, i32 %i.gh, i64 9
  %i.gy = insertelement <16 x i32> %i.gx, i32 %i.gi, i64 10
  %i.gz = insertelement <16 x i32> %i.gy, i32 %i.gj, i64 11
  %i.ha = insertelement <16 x i32> %i.gz, i32 %i.gk, i64 12
  %i.hb = insertelement <16 x i32> %i.ha, i32 %i.gl, i64 13
  %i.hc = insertelement <16 x i32> %i.hb, i32 %i.gm, i64 14
  %i.hd = insertelement <16 x i32> %i.hc, i32 %i.gn, i64 15
  %i.he = lshr <16 x i32> %i.hd, splat (i32 16)
  %i.hf = trunc nuw <16 x i32> %i.he to <16 x i16>
  store <16 x i16> %i.hf, ptr %.253346.i, align 2, !tbaa !24
  %i.hg = getelementptr inbounds nuw i8, ptr %.253346.i, i64 32 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.152847.i, i64 4
  %i.hi = getelementptr inbounds nuw i8, ptr %.152648.i, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %.152449.i, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %.152250.i, i64 4
  %i.hl = getelementptr inbounds nuw i8, ptr %.152051.i, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %.151852.i, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %.151653.i, i64 4
  %i.ho = getelementptr inbounds nuw i8, ptr %.151454.i, i64 4
  %i.hp = getelementptr inbounds nuw i8, ptr %.151255.i, i64 4
  %i.hq = getelementptr inbounds nuw i8, ptr %.151056.i, i64 4
  %i.hr = getelementptr inbounds nuw i8, ptr %.150857.i, i64 4
  %i.hs = getelementptr inbounds nuw i8, ptr %.150658.i, i64 4
  %i.ht = getelementptr inbounds nuw i8, ptr %.150459.i, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %.150260.i, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %.150061.i, i64 4
  %i.hw = getelementptr inbounds nuw i8, ptr %.149862.i, i64 4
  %i.hx = add nuw nsw i32 %.149663.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hx, %.sroa.speculated
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph64.i, !llvm.loop !367

._crit_edge.i:                                    ; preds = %.lr.ph64.i, %.preheader10.i
  %.2533.lcssa.i = phi ptr [ %.1532.lcssa.i, %.preheader10.i ], [ %i.hg, %.lr.ph64.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16 ; 3 uses
  %i.hy = or disjoint i64 %indvars.iv.next.i, 15
  %i.hz = icmp samesign ult i64 %i.hy, %i.ao
  br i1 %i.hz, label %bb.c, label %.preheader9.loopexit.i, !llvm.loop !368

.preheader7.loopexit.i:                           ; preds = %._crit_edge135.i
  %i.ia = trunc nuw nsw i64 %indvars.iv.next315.i to i32
  br label %.preheader7.i

.preheader7.i:                                    ; preds = %.preheader7.loopexit.i, %.preheader9.i
  %.3534.lcssa.i = phi ptr [ %.0531.lcssa.i, %.preheader9.i ], [ %.5.lcssa.i, %.preheader7.loopexit.i ] ; 2 uses
  %.1530.lcssa.i = phi i32 [ %.0529.lcssa.i, %.preheader9.i ], [ %i.ia, %.preheader7.loopexit.i ] ; 3 uses
  %i.ib = or disjoint i32 %.1530.lcssa.i, 3
  %i.ic = icmp slt i32 %i.ib, %.sroa.speculated60
  br i1 %i.ic, label %.lr.ph183.i, label %.preheader5.i

.lr.ph183.i:                                      ; preds = %.preheader7.i
  %invariant.gep186.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv ; 4 uses
  %i.id = icmp sgt i32 %.sroa.speculated, 1
  %i.ie = and i32 %.sroa.speculated, -2           ; 3 uses
  %i.if = zext nneg i32 %.1530.lcssa.i to i64
  %min.iters.check475 = icmp ult i32 %i.at, 6
  %min.iters.check477 = icmp ult i32 %i.at, 30
  %i.ig = and i64 %i.av, 12
  %n.vec479 = and i64 %i.av, 4294967280           ; 6 uses
  %i.ih = trunc nuw i64 %n.vec479 to i32
  %i.ii = shl i32 %i.ih, 1
  %i.ij = shl nuw nsw i64 %n.vec479, 3            ; 4 uses
  %i.ik = shl nuw nsw i64 %n.vec479, 4
  %cmp.n502 = icmp eq i64 %n.vec479, %i.av
  %min.epilog.iters.check512 = icmp eq i64 %i.ig, 0
  %n.vec514 = and i64 %i.av, 4294967292           ; 5 uses
  %i.il = trunc nuw i64 %n.vec514 to i32
  %i.im = shl i32 %i.il, 1
  %i.in = shl nuw nsw i64 %n.vec514, 3            ; 4 uses
  %i.io = shl nuw nsw i64 %n.vec514, 4
  %cmp.n537 = icmp eq i64 %n.vec514, %i.av
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge135.i, %.lr.ph139.i
  %indvars.iv314.i = phi i64 [ %i.cb, %.lr.ph139.i ], [ %indvars.iv.next315.i, %._crit_edge135.i ] ; 2 uses
  %.3534137.i = phi ptr [ %.0531.lcssa.i, %.lr.ph139.i ], [ %.5.lcssa.i, %._crit_edge135.i ] ; 2 uses
  %i.ip = add nsw i64 %indvars.iv314.i, %i.ag     ; 8 uses
  %i.iq = mul nsw i64 %i.ip, %i.aa
  %gep143.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.iq ; 2 uses
  %i.ir = add nsw i64 %i.ip, 1
  %i.is = mul nsw i64 %i.ir, %i.aa
  %gep145.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.is ; 2 uses
  %i.it = add nsw i64 %i.ip, 2
  %i.iu = mul nsw i64 %i.it, %i.aa
  %gep147.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.iu ; 2 uses
  %i.iv = add nsw i64 %i.ip, 3
  %i.iw = mul nsw i64 %i.iv, %i.aa
  %gep149.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.iw ; 2 uses
  %i.ix = add nsw i64 %i.ip, 4
  %i.iy = mul nsw i64 %i.ix, %i.aa
  %gep151.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.iy ; 2 uses
  %i.iz = add nsw i64 %i.ip, 5
  %i.ja = mul nsw i64 %i.iz, %i.aa
  %gep153.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.ja ; 2 uses
  %i.jb = add nsw i64 %i.ip, 6
  %i.jc = mul nsw i64 %i.jb, %i.aa
  %gep155.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.jc ; 2 uses
  %i.jd = add nsw i64 %i.ip, 7
  %i.je = mul nsw i64 %i.jd, %i.aa
  %gep157.i = getelementptr [4 x i8], ptr %invariant.gep142.i, i64 %i.je ; 2 uses
  br i1 %i.bz, label %.lr.ph113.i, label %.preheader8.i

.preheader8.i:                                    ; preds = %.lr.ph113.i, %bb.d
  %.4535.lcssa.i = phi ptr [ %.3534137.i, %bb.d ], [ %i.mg, %.lr.ph113.i ] ; 6 uses
  %.0493.lcssa.i = phi ptr [ %gep143.i, %bb.d ], [ %i.mh, %.lr.ph113.i ] ; 5 uses
  %.0491.lcssa.i = phi ptr [ %gep145.i, %bb.d ], [ %i.mi, %.lr.ph113.i ] ; 5 uses
  %.0489.lcssa.i = phi ptr [ %gep147.i, %bb.d ], [ %i.mj, %.lr.ph113.i ] ; 5 uses
  %.0487.lcssa.i = phi ptr [ %gep149.i, %bb.d ], [ %i.mk, %.lr.ph113.i ] ; 5 uses
  %.0485.lcssa.i = phi ptr [ %gep151.i, %bb.d ], [ %i.ml, %.lr.ph113.i ] ; 5 uses
  %.0483.lcssa.i = phi ptr [ %gep153.i, %bb.d ], [ %i.mm, %.lr.ph113.i ] ; 5 uses
  %.0481.lcssa.i = phi ptr [ %gep155.i, %bb.d ], [ %i.mn, %.lr.ph113.i ] ; 5 uses
  %.0479.lcssa.i = phi ptr [ %gep157.i, %bb.d ], [ %i.mo, %.lr.ph113.i ] ; 5 uses
  %.0477.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.ca, %.lr.ph113.i ] ; 5 uses
  %i.jf = icmp slt i32 %.0477.lcssa.i, %.sroa.speculated
  br i1 %i.jf, label %iter.check582, label %._crit_edge135.i

iter.check582:                                    ; preds = %.preheader8.i
  %i.jg = xor i32 %.0477.lcssa.i, -1
  %i.jh = add i32 %.sroa.speculated, %i.jg        ; 3 uses
  %i.ji = zext i32 %i.jh to i64
  %i.jj = add nuw nsw i64 %i.ji, 1                ; 5 uses
  %min.iters.check544 = icmp ult i32 %i.jh, 3
  br i1 %min.iters.check544, label %.lr.ph134.i.preheader, label %vector.main.loop.iter.check545

vector.main.loop.iter.check545:                   ; preds = %iter.check582
  %min.iters.check546 = icmp ult i32 %i.jh, 15
  br i1 %min.iters.check546, label %vec.epilog.ph586, label %vector.ph547

vector.ph547:                                     ; preds = %vector.main.loop.iter.check545
  %i.jk = and i64 %i.jj, 12
  %n.vec548 = and i64 %i.jj, 8589934576           ; 6 uses
  %i.jl = trunc i64 %n.vec548 to i32
  %i.jm = add i32 %.0477.lcssa.i, %i.jl
  %i.jn = shl nuw nsw i64 %n.vec548, 2            ; 8 uses
  %i.jo = getelementptr i8, ptr %.0479.lcssa.i, i64 %i.jn
  %i.jp = getelementptr i8, ptr %.0481.lcssa.i, i64 %i.jn
  %i.jq = getelementptr i8, ptr %.0483.lcssa.i, i64 %i.jn
  %i.jr = getelementptr i8, ptr %.0485.lcssa.i, i64 %i.jn
  %i.js = getelementptr i8, ptr %.0487.lcssa.i, i64 %i.jn
  %i.jt = getelementptr i8, ptr %.0489.lcssa.i, i64 %i.jn
  %i.ju = getelementptr i8, ptr %.0491.lcssa.i, i64 %i.jn
  %i.jv = getelementptr i8, ptr %.0493.lcssa.i, i64 %i.jn
  %i.jw = shl nuw nsw i64 %n.vec548, 4
  %i.jx = getelementptr i8, ptr %.4535.lcssa.i, i64 %i.jw ; 2 uses
  br label %vector.body549

vector.body549:                                   ; preds = %vector.ph547, %vector.body549
  %index550 = phi i64 [ 0, %vector.ph547 ], [ %index.next569, %vector.body549 ] ; 3 uses
  %i.jy = shl i64 %index550, 2                    ; 8 uses
  %next.gep551 = getelementptr i8, ptr %.0479.lcssa.i, i64 %i.jy
  %next.gep552 = getelementptr i8, ptr %.0481.lcssa.i, i64 %i.jy
  %next.gep553 = getelementptr i8, ptr %.0483.lcssa.i, i64 %i.jy
  %next.gep554 = getelementptr i8, ptr %.0485.lcssa.i, i64 %i.jy
  %next.gep555 = getelementptr i8, ptr %.0487.lcssa.i, i64 %i.jy
  %next.gep556 = getelementptr i8, ptr %.0489.lcssa.i, i64 %i.jy
  %next.gep557 = getelementptr i8, ptr %.0491.lcssa.i, i64 %i.jy
  %next.gep558 = getelementptr i8, ptr %.0493.lcssa.i, i64 %i.jy
  %i.jz = shl i64 %index550, 4
  %next.gep559 = getelementptr i8, ptr %.4535.lcssa.i, i64 %i.jz
  %wide.load560 = load <16 x i32>, ptr %next.gep558, align 4, !tbaa !22
  %wide.load561 = load <16 x i32>, ptr %next.gep557, align 4, !tbaa !22
  %wide.load562 = load <16 x i32>, ptr %next.gep556, align 4, !tbaa !22
  %wide.load563 = load <16 x i32>, ptr %next.gep555, align 4, !tbaa !22
  %wide.load564 = load <16 x i32>, ptr %next.gep554, align 4, !tbaa !22
  %wide.load565 = load <16 x i32>, ptr %next.gep553, align 4, !tbaa !22
  %wide.load566 = load <16 x i32>, ptr %next.gep552, align 4, !tbaa !22
  %wide.load567 = load <16 x i32>, ptr %next.gep551, align 4, !tbaa !22
  %i.ka = shufflevector <16 x i32> %wide.load560, <16 x i32> %wide.load561, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.kb = shufflevector <16 x i32> %wide.load562, <16 x i32> %wide.load563, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.kc = shufflevector <32 x i32> %i.ka, <32 x i32> %i.kb, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.kd = lshr <64 x i32> %i.kc, splat (i32 16)
  %i.ke = trunc nuw <64 x i32> %i.kd to <64 x i16>
  %i.kf = shufflevector <16 x i32> %wide.load564, <16 x i32> %wide.load565, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.kg = shufflevector <16 x i32> %wide.load566, <16 x i32> %wide.load567, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.kh = shufflevector <32 x i32> %i.kf, <32 x i32> %i.kg, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ki = lshr <64 x i32> %i.kh, splat (i32 16)
  %i.kj = trunc nuw <64 x i32> %i.ki to <64 x i16>
  %interleaved.vec568 = shufflevector <64 x i16> %i.ke, <64 x i16> %i.kj, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec568, ptr %next.gep559, align 2, !tbaa !24
  %index.next569 = add nuw i64 %index550, 16      ; 2 uses
  %i.kk = icmp eq i64 %index.next569, %n.vec548
  br i1 %i.kk, label %middle.block570, label %vector.body549, !llvm.loop !369

middle.block570:                                  ; preds = %vector.body549
  %cmp.n571 = icmp eq i64 %i.jj, %n.vec548
  br i1 %cmp.n571, label %._crit_edge135.i, label %vec.epilog.iter.check584

vec.epilog.iter.check584:                         ; preds = %middle.block570
  %min.epilog.iters.check585 = icmp eq i64 %i.jk, 0
  br i1 %min.epilog.iters.check585, label %.lr.ph134.i.preheader, label %vec.epilog.ph586, !prof !27

vec.epilog.ph586:                                 ; preds = %vector.main.loop.iter.check545, %vec.epilog.iter.check584
  %vec.epilog.resume.val572 = phi i64 [ %n.vec548, %vec.epilog.iter.check584 ], [ 0, %vector.main.loop.iter.check545 ]
  %n.vec587 = and i64 %i.jj, 8589934588           ; 5 uses
  %i.kl = trunc i64 %n.vec587 to i32
  %i.km = add i32 %.0477.lcssa.i, %i.kl
  %i.kn = shl nuw nsw i64 %n.vec587, 2            ; 8 uses
  %i.ko = getelementptr i8, ptr %.0479.lcssa.i, i64 %i.kn
  %i.kp = getelementptr i8, ptr %.0481.lcssa.i, i64 %i.kn
  %i.kq = getelementptr i8, ptr %.0483.lcssa.i, i64 %i.kn
  %i.kr = getelementptr i8, ptr %.0485.lcssa.i, i64 %i.kn
  %i.ks = getelementptr i8, ptr %.0487.lcssa.i, i64 %i.kn
  %i.kt = getelementptr i8, ptr %.0489.lcssa.i, i64 %i.kn
  %i.ku = getelementptr i8, ptr %.0491.lcssa.i, i64 %i.kn
  %i.kv = getelementptr i8, ptr %.0493.lcssa.i, i64 %i.kn
  %i.kw = shl nuw nsw i64 %n.vec587, 4
  %i.kx = getelementptr i8, ptr %.4535.lcssa.i, i64 %i.kw ; 2 uses
  br label %vec.epilog.vector.body588

vec.epilog.vector.body588:                        ; preds = %vec.epilog.vector.body588, %vec.epilog.ph586
  %index589 = phi i64 [ %vec.epilog.resume.val572, %vec.epilog.ph586 ], [ %index.next608, %vec.epilog.vector.body588 ] ; 3 uses
  %i.ky = shl i64 %index589, 2                    ; 8 uses
  %next.gep590 = getelementptr i8, ptr %.0479.lcssa.i, i64 %i.ky
  %next.gep591 = getelementptr i8, ptr %.0481.lcssa.i, i64 %i.ky
  %next.gep592 = getelementptr i8, ptr %.0483.lcssa.i, i64 %i.ky
  %next.gep593 = getelementptr i8, ptr %.0485.lcssa.i, i64 %i.ky
  %next.gep594 = getelementptr i8, ptr %.0487.lcssa.i, i64 %i.ky
  %next.gep595 = getelementptr i8, ptr %.0489.lcssa.i, i64 %i.ky
  %next.gep596 = getelementptr i8, ptr %.0491.lcssa.i, i64 %i.ky
  %next.gep597 = getelementptr i8, ptr %.0493.lcssa.i, i64 %i.ky
  %i.kz = shl i64 %index589, 4
  %next.gep598 = getelementptr i8, ptr %.4535.lcssa.i, i64 %i.kz
  %wide.load599 = load <4 x i32>, ptr %next.gep597, align 4, !tbaa !22
  %wide.load600 = load <4 x i32>, ptr %next.gep596, align 4, !tbaa !22
  %wide.load601 = load <4 x i32>, ptr %next.gep595, align 4, !tbaa !22
  %wide.load602 = load <4 x i32>, ptr %next.gep594, align 4, !tbaa !22
  %wide.load603 = load <4 x i32>, ptr %next.gep593, align 4, !tbaa !22
  %wide.load604 = load <4 x i32>, ptr %next.gep592, align 4, !tbaa !22
  %wide.load605 = load <4 x i32>, ptr %next.gep591, align 4, !tbaa !22
  %wide.load606 = load <4 x i32>, ptr %next.gep590, align 4, !tbaa !22
  %i.la = shufflevector <4 x i32> %wide.load599, <4 x i32> %wide.load600, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lb = shufflevector <4 x i32> %wide.load601, <4 x i32> %wide.load602, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lc = shufflevector <4 x i32> %wide.load603, <4 x i32> %wide.load604, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ld = shufflevector <4 x i32> %wide.load605, <4 x i32> %wide.load606, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.le = shufflevector <8 x i32> %i.la, <8 x i32> %i.lb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lf = shufflevector <8 x i32> %i.lc, <8 x i32> %i.ld, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lg = shufflevector <16 x i32> %i.le, <16 x i32> %i.lf, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.lh = lshr <32 x i32> %i.lg, splat (i32 16)
  %interleaved.vec607 = trunc nuw <32 x i32> %i.lh to <32 x i16>
  store <32 x i16> %interleaved.vec607, ptr %next.gep598, align 2, !tbaa !24
  %index.next608 = add nuw i64 %index589, 4       ; 2 uses
  %i.li = icmp eq i64 %index.next608, %n.vec587
  br i1 %i.li, label %vec.epilog.middle.block609, label %vec.epilog.vector.body588, !llvm.loop !370

vec.epilog.middle.block609:                       ; preds = %vec.epilog.vector.body588
  %cmp.n610 = icmp eq i64 %i.jj, %n.vec587
  br i1 %cmp.n610, label %._crit_edge135.i, label %.lr.ph134.i.preheader

.lr.ph134.i.preheader:                            ; preds = %iter.check582, %vec.epilog.iter.check584, %vec.epilog.middle.block609
  %.1478133.i.ph = phi i32 [ %.0477.lcssa.i, %iter.check582 ], [ %i.jm, %vec.epilog.iter.check584 ], [ %i.km, %vec.epilog.middle.block609 ]
  %.1480132.i.ph = phi ptr [ %.0479.lcssa.i, %iter.check582 ], [ %i.jo, %vec.epilog.iter.check584 ], [ %i.ko, %vec.epilog.middle.block609 ]
  %.1482131.i.ph = phi ptr [ %.0481.lcssa.i, %iter.check582 ], [ %i.jp, %vec.epilog.iter.check584 ], [ %i.kp, %vec.epilog.middle.block609 ]
  %.1484130.i.ph = phi ptr [ %.0483.lcssa.i, %iter.check582 ], [ %i.jq, %vec.epilog.iter.check584 ], [ %i.kq, %vec.epilog.middle.block609 ]
  %.1486129.i.ph = phi ptr [ %.0485.lcssa.i, %iter.check582 ], [ %i.jr, %vec.epilog.iter.check584 ], [ %i.kr, %vec.epilog.middle.block609 ]
  %.1488128.i.ph = phi ptr [ %.0487.lcssa.i, %iter.check582 ], [ %i.js, %vec.epilog.iter.check584 ], [ %i.ks, %vec.epilog.middle.block609 ]
  %.1490127.i.ph = phi ptr [ %.0489.lcssa.i, %iter.check582 ], [ %i.jt, %vec.epilog.iter.check584 ], [ %i.kt, %vec.epilog.middle.block609 ]
  %.1492126.i.ph = phi ptr [ %.0491.lcssa.i, %iter.check582 ], [ %i.ju, %vec.epilog.iter.check584 ], [ %i.ku, %vec.epilog.middle.block609 ]
  %.1494125.i.ph = phi ptr [ %.0493.lcssa.i, %iter.check582 ], [ %i.jv, %vec.epilog.iter.check584 ], [ %i.kv, %vec.epilog.middle.block609 ]
  %.5124.i.ph = phi ptr [ %.4535.lcssa.i, %iter.check582 ], [ %i.jx, %vec.epilog.iter.check584 ], [ %i.kx, %vec.epilog.middle.block609 ]
  br label %.lr.ph134.i

.lr.ph113.i:                                      ; preds = %bb.d, %.lr.ph113.i
  %.0477111.i = phi i32 [ %i.mp, %.lr.ph113.i ], [ 0, %bb.d ]
  %.0479110.i = phi ptr [ %i.mo, %.lr.ph113.i ], [ %gep157.i, %bb.d ] ; 2 uses
  %.0481109.i = phi ptr [ %i.mn, %.lr.ph113.i ], [ %gep155.i, %bb.d ] ; 2 uses
  %.0483108.i = phi ptr [ %i.mm, %.lr.ph113.i ], [ %gep153.i, %bb.d ] ; 2 uses
  %.0485107.i = phi ptr [ %i.ml, %.lr.ph113.i ], [ %gep151.i, %bb.d ] ; 2 uses
  %.0487106.i = phi ptr [ %i.mk, %.lr.ph113.i ], [ %gep149.i, %bb.d ] ; 2 uses
  %.0489105.i = phi ptr [ %i.mj, %.lr.ph113.i ], [ %gep147.i, %bb.d ] ; 2 uses
  %.0491104.i = phi ptr [ %i.mi, %.lr.ph113.i ], [ %gep145.i, %bb.d ] ; 2 uses
  %.0493103.i = phi ptr [ %i.mh, %.lr.ph113.i ], [ %gep143.i, %bb.d ] ; 2 uses
  %.4535102.i = phi ptr [ %i.mg, %.lr.ph113.i ], [ %.3534137.i, %bb.d ] ; 2 uses
  %i.lj = load <2 x i32>, ptr %.0493103.i, align 4, !tbaa !22
  %i.lk = load <2 x i32>, ptr %.0491104.i, align 4, !tbaa !22
  %i.ll = load <2 x i32>, ptr %.0489105.i, align 4, !tbaa !22
  %i.lm = load <2 x i32>, ptr %.0487106.i, align 4, !tbaa !22
  %i.ln = load <2 x i32>, ptr %.0485107.i, align 4, !tbaa !22
  %i.lo = load <2 x i32>, ptr %.0483108.i, align 4, !tbaa !22
  %i.lp = load <2 x i32>, ptr %.0481109.i, align 4, !tbaa !22
  %i.lq = load <2 x i32>, ptr %.0479110.i, align 4, !tbaa !22
  %i.lr = shufflevector <2 x i32> %i.lj, <2 x i32> %i.lk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ls = shufflevector <2 x i32> %i.ll, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lt = shufflevector <16 x i32> %i.lr, <16 x i32> %i.ls, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lu = shufflevector <2 x i32> %i.lm, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lv = shufflevector <16 x i32> %i.lt, <16 x i32> %i.lu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lw = shufflevector <2 x i32> %i.ln, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lx = shufflevector <16 x i32> %i.lv, <16 x i32> %i.lw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ly = shufflevector <2 x i32> %i.lo, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lz = shufflevector <16 x i32> %i.lx, <16 x i32> %i.ly, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ma = shufflevector <2 x i32> %i.lp, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mb = shufflevector <16 x i32> %i.lz, <16 x i32> %i.ma, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 poison, i32 poison>
  %i.mc = shufflevector <2 x i32> %i.lq, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.md = shufflevector <16 x i32> %i.mb, <16 x i32> %i.mc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.me = lshr <16 x i32> %i.md, splat (i32 16)
  %i.mf = trunc nuw <16 x i32> %i.me to <16 x i16>
  store <16 x i16> %i.mf, ptr %.4535102.i, align 2, !tbaa !24
  %i.mg = getelementptr inbounds nuw i8, ptr %.4535102.i, i64 32 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0493103.i, i64 8 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.0491104.i, i64 8 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.0489105.i, i64 8 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0487106.i, i64 8 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.0485107.i, i64 8 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.0483108.i, i64 8 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.0481109.i, i64 8 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.0479110.i, i64 8 ; 2 uses
  %i.mp = add nuw nsw i32 %.0477111.i, 2          ; 2 uses
  %i.mq = or disjoint i32 %i.mp, 1
  %i.mr = icmp slt i32 %i.mq, %.sroa.speculated
  br i1 %i.mr, label %.lr.ph113.i, label %.preheader8.i, !llvm.loop !371

.lr.ph134.i:                                      ; preds = %.lr.ph134.i.preheader, %.lr.ph134.i
  %.1478133.i = phi i32 [ %i.nt, %.lr.ph134.i ], [ %.1478133.i.ph, %.lr.ph134.i.preheader ]
  %.1480132.i = phi ptr [ %i.ns, %.lr.ph134.i ], [ %.1480132.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1482131.i = phi ptr [ %i.nr, %.lr.ph134.i ], [ %.1482131.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1484130.i = phi ptr [ %i.nq, %.lr.ph134.i ], [ %.1484130.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1486129.i = phi ptr [ %i.np, %.lr.ph134.i ], [ %.1486129.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1488128.i = phi ptr [ %i.no, %.lr.ph134.i ], [ %.1488128.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1490127.i = phi ptr [ %i.nn, %.lr.ph134.i ], [ %.1490127.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1492126.i = phi ptr [ %i.nm, %.lr.ph134.i ], [ %.1492126.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1494125.i = phi ptr [ %i.nl, %.lr.ph134.i ], [ %.1494125.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.5124.i = phi ptr [ %i.nk, %.lr.ph134.i ], [ %.5124.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %i.ms = load i32, ptr %.1494125.i, align 4, !tbaa !22
  %i.mt = load i32, ptr %.1492126.i, align 4, !tbaa !22
  %i.mu = load i32, ptr %.1490127.i, align 4, !tbaa !22
  %i.mv = load i32, ptr %.1488128.i, align 4, !tbaa !22
  %i.mw = load i32, ptr %.1486129.i, align 4, !tbaa !22
  %i.mx = load i32, ptr %.1484130.i, align 4, !tbaa !22
  %i.my = load i32, ptr %.1482131.i, align 4, !tbaa !22
  %i.mz = load i32, ptr %.1480132.i, align 4, !tbaa !22
  %i.na = insertelement <8 x i32> poison, i32 %i.ms, i64 0
  %i.nb = insertelement <8 x i32> %i.na, i32 %i.mt, i64 1
  %i.nc = insertelement <8 x i32> %i.nb, i32 %i.mu, i64 2
  %i.nd = insertelement <8 x i32> %i.nc, i32 %i.mv, i64 3
  %i.ne = insertelement <8 x i32> %i.nd, i32 %i.mw, i64 4
  %i.nf = insertelement <8 x i32> %i.ne, i32 %i.mx, i64 5
  %i.ng = insertelement <8 x i32> %i.nf, i32 %i.my, i64 6
  %i.nh = insertelement <8 x i32> %i.ng, i32 %i.mz, i64 7
  %i.ni = lshr <8 x i32> %i.nh, splat (i32 16)
  %i.nj = trunc nuw <8 x i32> %i.ni to <8 x i16>
  store <8 x i16> %i.nj, ptr %.5124.i, align 2, !tbaa !24
  %i.nk = getelementptr inbounds nuw i8, ptr %.5124.i, i64 16 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.1494125.i, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %.1492126.i, i64 4
  %i.nn = getelementptr inbounds nuw i8, ptr %.1490127.i, i64 4
  %i.no = getelementptr inbounds nuw i8, ptr %.1488128.i, i64 4
  %i.np = getelementptr inbounds nuw i8, ptr %.1486129.i, i64 4
  %i.nq = getelementptr inbounds nuw i8, ptr %.1484130.i, i64 4
  %i.nr = getelementptr inbounds nuw i8, ptr %.1482131.i, i64 4
  %i.ns = getelementptr inbounds nuw i8, ptr %.1480132.i, i64 4
  %i.nt = add nuw nsw i32 %.1478133.i, 1          ; 2 uses
  %exitcond313.not.i = icmp eq i32 %i.nt, %.sroa.speculated
  br i1 %exitcond313.not.i, label %._crit_edge135.i, label %.lr.ph134.i, !llvm.loop !372

._crit_edge135.i:                                 ; preds = %.lr.ph134.i, %middle.block570, %vec.epilog.middle.block609, %.preheader8.i
  %.5.lcssa.i = phi ptr [ %.4535.lcssa.i, %.preheader8.i ], [ %i.kx, %vec.epilog.middle.block609 ], [ %i.jx, %middle.block570 ], [ %i.nk, %.lr.ph134.i ] ; 2 uses
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 8 ; 3 uses
  %i.nu = icmp slt i64 %indvars.iv.next315.i, %invariant.op.i
  br i1 %i.nu, label %bb.d, label %.preheader7.loopexit.i, !llvm.loop !373

.preheader5.loopexit.i:                           ; preds = %._crit_edge179.i
  %i.nv = trunc nuw nsw i64 %indvars.iv.next319.i to i32
  br label %.preheader5.i

.preheader5.i:                                    ; preds = %.preheader5.loopexit.i, %.preheader7.i
  %.6.lcssa.i = phi ptr [ %.3534.lcssa.i, %.preheader7.i ], [ %.8.lcssa.i, %.preheader5.loopexit.i ] ; 8 uses
  %.2.lcssa.i = phi i32 [ %.1530.lcssa.i, %.preheader7.i ], [ %i.nv, %.preheader5.loopexit.i ] ; 6 uses
  %i.nw = or disjoint i32 %.2.lcssa.i, 1
  %i.nx = icmp slt i32 %i.nw, %.sroa.speculated60
  br i1 %i.nx, label %.lr.ph213.i, label %.preheader3.i

.lr.ph213.i:                                      ; preds = %.preheader5.i
  %invariant.gep216.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv ; 6 uses
  %i.ny = icmp sgt i32 %.sroa.speculated, 1
  br i1 %i.ny, label %.lr.ph199.us.preheader.i, label %.lr.ph213.split.i

.lr.ph199.us.preheader.i:                         ; preds = %.lr.ph213.i
  %i.nz = and i32 %.sroa.speculated, 2147483646   ; 4 uses
  %i.oa = sext i32 %.2.lcssa.i to i64
  %.not63 = icmp eq i32 %i.nz, %.sroa.speculated
  %min.iters.check337 = icmp ult i32 %i.ay, 6
  %min.iters.check339 = icmp ult i32 %i.ay, 30
  %i.ob = and i64 %i.ba, 12
  %n.vec341 = and i64 %i.ba, 4294967280           ; 5 uses
  %i.oc = trunc nuw i64 %n.vec341 to i32
  %i.od = shl i32 %i.oc, 1
  %i.oe = shl nuw nsw i64 %n.vec341, 3            ; 3 uses
  %cmp.n356 = icmp eq i64 %n.vec341, %i.ba
  %min.epilog.iters.check364 = icmp eq i64 %i.ob, 0
  %n.vec366 = and i64 %i.ba, 4294967292           ; 4 uses
  %i.of = trunc nuw i64 %n.vec366 to i32
  %i.og = shl i32 %i.of, 1
  %i.oh = shl nuw nsw i64 %n.vec366, 3            ; 3 uses
  %cmp.n381 = icmp eq i64 %n.vec366, %i.ba
  %min.iters.check295 = icmp ult i32 %i.bf, 3
  %min.iters.check297 = icmp ult i32 %i.bf, 15
  %i.oi = and i64 %i.bh, 12
  %n.vec299 = and i64 %i.bh, 8589934576           ; 5 uses
  %i.oj = trunc i64 %n.vec299 to i32
  %i.ok = add i32 %i.nz, %i.oj
  %i.ol = shl nuw nsw i64 %n.vec299, 2            ; 3 uses
  %cmp.n310 = icmp eq i64 %i.bh, %n.vec299
  %min.epilog.iters.check318 = icmp eq i64 %i.oi, 0
  %n.vec320 = and i64 %i.bh, 8589934588           ; 4 uses
  %i.om = trunc i64 %n.vec320 to i32
  %i.on = add i32 %i.nz, %i.om
  %i.oo = shl nuw nsw i64 %n.vec320, 2            ; 3 uses
  %cmp.n331 = icmp eq i64 %i.bh, %n.vec320
  br label %iter.check361

iter.check361:                                    ; preds = %._crit_edge209.us.i, %.lr.ph199.us.preheader.i
  %indvars.iv325.i = phi i64 [ %i.oa, %.lr.ph199.us.preheader.i ], [ %indvars.iv.next326.i, %._crit_edge209.us.i ] ; 2 uses
  %.9211.us.i = phi ptr [ %.6.lcssa.i, %.lr.ph199.us.preheader.i ], [ %.11.lcssa.us.i, %._crit_edge209.us.i ] ; 5 uses
  %i.op = add nsw i64 %indvars.iv325.i, %i.ag     ; 2 uses
  %i.oq = mul nsw i64 %i.op, %i.aa
  %gep217.us.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.oq ; 5 uses
  %i.or = add nsw i64 %i.op, 1
  %i.os = mul nsw i64 %i.or, %i.aa
  %gep219.us.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.os ; 5 uses
  br i1 %min.iters.check337, label %vec.epilog.scalar.ph362.preheader, label %vector.main.loop.iter.check338

vector.main.loop.iter.check338:                   ; preds = %iter.check361
  br i1 %min.iters.check339, label %vec.epilog.ph365, label %vector.ph340

vector.ph340:                                     ; preds = %vector.main.loop.iter.check338
  %i.ot = getelementptr i8, ptr %gep219.us.i, i64 %i.oe ; 2 uses
  %i.ou = getelementptr i8, ptr %gep217.us.i, i64 %i.oe ; 2 uses
  %i.ov = getelementptr i8, ptr %.9211.us.i, i64 %i.oe ; 2 uses
  br label %vector.body342

vector.body342:                                   ; preds = %vector.ph340, %vector.body342
  %index343 = phi i64 [ 0, %vector.ph340 ], [ %index.next354, %vector.body342 ] ; 2 uses
  %i.ow = shl i64 %index343, 3                    ; 3 uses
  %next.gep344 = getelementptr i8, ptr %gep219.us.i, i64 %i.ow
  %next.gep345 = getelementptr i8, ptr %gep217.us.i, i64 %i.ow
  %next.gep346 = getelementptr i8, ptr %.9211.us.i, i64 %i.ow
  %wide.vec347 = load <32 x i32>, ptr %next.gep345, align 4, !tbaa !22
  %wide.vec350 = load <32 x i32>, ptr %next.gep344, align 4, !tbaa !22
  %i.ox = lshr <32 x i32> %wide.vec347, splat (i32 16)
  %i.oy = shufflevector <32 x i32> %i.ox, <32 x i32> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.oz = trunc nuw <32 x i32> %i.oy to <32 x i16>
  %i.pa = lshr <32 x i32> %wide.vec350, splat (i32 16)
  %i.pb = shufflevector <32 x i32> %i.pa, <32 x i32> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.pc = trunc nuw <32 x i32> %i.pb to <32 x i16>
  %interleaved.vec353 = shufflevector <32 x i16> %i.oz, <32 x i16> %i.pc, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec353, ptr %next.gep346, align 2, !tbaa !24
  %index.next354 = add nuw i64 %index343, 16      ; 2 uses
  %i.pd = icmp eq i64 %index.next354, %n.vec341
  br i1 %i.pd, label %middle.block355, label %vector.body342, !llvm.loop !374

middle.block355:                                  ; preds = %vector.body342
  br i1 %cmp.n356, label %..preheader4_crit_edge.us.i, label %vec.epilog.iter.check363

vec.epilog.iter.check363:                         ; preds = %middle.block355
  br i1 %min.epilog.iters.check364, label %vec.epilog.scalar.ph362.preheader, label %vec.epilog.ph365, !prof !27

vec.epilog.ph365:                                 ; preds = %vector.main.loop.iter.check338, %vec.epilog.iter.check363
  %vec.epilog.resume.val357 = phi i64 [ %n.vec341, %vec.epilog.iter.check363 ], [ 0, %vector.main.loop.iter.check338 ]
  %i.pe = getelementptr i8, ptr %gep219.us.i, i64 %i.oh ; 2 uses
  %i.pf = getelementptr i8, ptr %gep217.us.i, i64 %i.oh ; 2 uses
  %i.pg = getelementptr i8, ptr %.9211.us.i, i64 %i.oh ; 2 uses
  br label %vec.epilog.vector.body367

vec.epilog.vector.body367:                        ; preds = %vec.epilog.vector.body367, %vec.epilog.ph365
  %index368 = phi i64 [ %vec.epilog.resume.val357, %vec.epilog.ph365 ], [ %index.next379, %vec.epilog.vector.body367 ] ; 2 uses
  %i.ph = shl i64 %index368, 3                    ; 3 uses
  %next.gep369 = getelementptr i8, ptr %gep219.us.i, i64 %i.ph
  %next.gep370 = getelementptr i8, ptr %gep217.us.i, i64 %i.ph
  %next.gep371 = getelementptr i8, ptr %.9211.us.i, i64 %i.ph
  %wide.vec372 = load <8 x i32>, ptr %next.gep370, align 4, !tbaa !22
  %wide.vec375 = load <8 x i32>, ptr %next.gep369, align 4, !tbaa !22
  %i.pi = shufflevector <8 x i32> %wide.vec372, <8 x i32> %wide.vec375, <16 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11, i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.pj = lshr <16 x i32> %i.pi, splat (i32 16)
  %interleaved.vec378 = trunc nuw <16 x i32> %i.pj to <16 x i16>
  store <16 x i16> %interleaved.vec378, ptr %next.gep371, align 2, !tbaa !24
  %index.next379 = add nuw i64 %index368, 4       ; 2 uses
  %i.pk = icmp eq i64 %index.next379, %n.vec366
  br i1 %i.pk, label %vec.epilog.middle.block380, label %vec.epilog.vector.body367, !llvm.loop !375

vec.epilog.middle.block380:                       ; preds = %vec.epilog.vector.body367
  br i1 %cmp.n381, label %..preheader4_crit_edge.us.i, label %vec.epilog.scalar.ph362.preheader

vec.epilog.scalar.ph362.preheader:                ; preds = %iter.check361, %vec.epilog.iter.check363, %vec.epilog.middle.block380
  %.0461197.us.i.ph = phi i32 [ 0, %iter.check361 ], [ %i.od, %vec.epilog.iter.check363 ], [ %i.og, %vec.epilog.middle.block380 ]
  %.0463196.us.i.ph = phi ptr [ %gep219.us.i, %iter.check361 ], [ %i.ot, %vec.epilog.iter.check363 ], [ %i.pe, %vec.epilog.middle.block380 ]
  %.0465195.us.i.ph = phi ptr [ %gep217.us.i, %iter.check361 ], [ %i.ou, %vec.epilog.iter.check363 ], [ %i.pf, %vec.epilog.middle.block380 ]
  %.10194.us.i.ph = phi ptr [ %.9211.us.i, %iter.check361 ], [ %i.ov, %vec.epilog.iter.check363 ], [ %i.pg, %vec.epilog.middle.block380 ]
  br label %vec.epilog.scalar.ph362

vec.epilog.scalar.ph362:                          ; preds = %vec.epilog.scalar.ph362.preheader, %vec.epilog.scalar.ph362
  %.0461197.us.i = phi i32 [ %i.pt, %vec.epilog.scalar.ph362 ], [ %.0461197.us.i.ph, %vec.epilog.scalar.ph362.preheader ]
  %.0463196.us.i = phi ptr [ %i.ps, %vec.epilog.scalar.ph362 ], [ %.0463196.us.i.ph, %vec.epilog.scalar.ph362.preheader ] ; 2 uses
  %.0465195.us.i = phi ptr [ %i.pr, %vec.epilog.scalar.ph362 ], [ %.0465195.us.i.ph, %vec.epilog.scalar.ph362.preheader ] ; 2 uses
  %.10194.us.i = phi ptr [ %i.pq, %vec.epilog.scalar.ph362 ], [ %.10194.us.i.ph, %vec.epilog.scalar.ph362.preheader ] ; 2 uses
  %i.pl = load <2 x i32>, ptr %.0465195.us.i, align 4, !tbaa !22
  %i.pm = load <2 x i32>, ptr %.0463196.us.i, align 4, !tbaa !22
  %i.pn = shufflevector <2 x i32> %i.pl, <2 x i32> %i.pm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.po = lshr <4 x i32> %i.pn, splat (i32 16)
  %i.pp = trunc nuw <4 x i32> %i.po to <4 x i16>
  store <4 x i16> %i.pp, ptr %.10194.us.i, align 2, !tbaa !24
  %i.pq = getelementptr inbounds nuw i8, ptr %.10194.us.i, i64 8 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.0465195.us.i, i64 8 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.0463196.us.i, i64 8 ; 2 uses
  %i.pt = add nuw nsw i32 %.0461197.us.i, 2       ; 2 uses
  %i.pu = or disjoint i32 %i.pt, 1
  %i.pv = icmp slt i32 %i.pu, %.sroa.speculated
  br i1 %i.pv, label %vec.epilog.scalar.ph362, label %..preheader4_crit_edge.us.i, !llvm.loop !376

.lr.ph208.us.i:                                   ; preds = %.lr.ph208.us.i.preheader, %.lr.ph208.us.i
  %.1462207.us.i = phi i32 [ %i.qg, %.lr.ph208.us.i ], [ %.1462207.us.i.ph, %.lr.ph208.us.i.preheader ]
  %.1464206.us.i = phi ptr [ %i.qf, %.lr.ph208.us.i ], [ %.1464206.us.i.ph, %.lr.ph208.us.i.preheader ] ; 2 uses
  %.1466205.us.i = phi ptr [ %i.qe, %.lr.ph208.us.i ], [ %.1466205.us.i.ph, %.lr.ph208.us.i.preheader ] ; 2 uses
  %.11204.us.i = phi ptr [ %i.qd, %.lr.ph208.us.i ], [ %.11204.us.i.ph, %.lr.ph208.us.i.preheader ] ; 3 uses
  %i.pw = load i32, ptr %.1466205.us.i, align 4, !tbaa !22
  %i.px = lshr i32 %i.pw, 16
  %i.py = trunc nuw i32 %i.px to i16
  store i16 %i.py, ptr %.11204.us.i, align 2, !tbaa !24
  %i.pz = load i32, ptr %.1464206.us.i, align 4, !tbaa !22
  %i.qa = lshr i32 %i.pz, 16
  %i.qb = trunc nuw i32 %i.qa to i16
  %i.qc = getelementptr inbounds nuw i8, ptr %.11204.us.i, i64 2
  store i16 %i.qb, ptr %i.qc, align 2, !tbaa !24
  %i.qd = getelementptr inbounds nuw i8, ptr %.11204.us.i, i64 4 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.1466205.us.i, i64 4
  %i.qf = getelementptr inbounds nuw i8, ptr %.1464206.us.i, i64 4
  %i.qg = add nuw nsw i32 %.1462207.us.i, 1       ; 2 uses
  %exitcond324.not.i = icmp eq i32 %i.qg, %.sroa.speculated
  br i1 %exitcond324.not.i, label %._crit_edge209.us.i, label %.lr.ph208.us.i, !llvm.loop !377

._crit_edge209.us.i:                              ; preds = %.lr.ph208.us.i, %middle.block309, %vec.epilog.middle.block330, %..preheader4_crit_edge.us.i
  %.11.lcssa.us.i = phi ptr [ %.lcssa236, %..preheader4_crit_edge.us.i ], [ %i.qr, %vec.epilog.middle.block330 ], [ %i.qk, %middle.block309 ], [ %i.qd, %.lr.ph208.us.i ] ; 2 uses
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 2 ; 3 uses
  %i.qh = icmp slt i64 %indvars.iv.next326.i, %invariant.op383.i
  br i1 %i.qh, label %iter.check361, label %.preheader3.loopexit.i, !llvm.loop !378

..preheader4_crit_edge.us.i:                      ; preds = %vec.epilog.scalar.ph362, %vec.epilog.middle.block380, %middle.block355
  %.lcssa236 = phi ptr [ %i.pg, %vec.epilog.middle.block380 ], [ %i.ov, %middle.block355 ], [ %i.pq, %vec.epilog.scalar.ph362 ] ; 6 uses
  %.lcssa235 = phi ptr [ %i.pf, %vec.epilog.middle.block380 ], [ %i.ou, %middle.block355 ], [ %i.pr, %vec.epilog.scalar.ph362 ] ; 5 uses
  %.lcssa234 = phi ptr [ %i.pe, %vec.epilog.middle.block380 ], [ %i.ot, %middle.block355 ], [ %i.ps, %vec.epilog.scalar.ph362 ] ; 5 uses
  br i1 %.not63, label %._crit_edge209.us.i, label %iter.check315

iter.check315:                                    ; preds = %..preheader4_crit_edge.us.i
  br i1 %min.iters.check295, label %.lr.ph208.us.i.preheader, label %vector.main.loop.iter.check296

vector.main.loop.iter.check296:                   ; preds = %iter.check315
  br i1 %min.iters.check297, label %vec.epilog.ph319, label %vector.ph298

vector.ph298:                                     ; preds = %vector.main.loop.iter.check296
  %i.qi = getelementptr i8, ptr %.lcssa234, i64 %i.ol
  %i.qj = getelementptr i8, ptr %.lcssa235, i64 %i.ol
  %i.qk = getelementptr i8, ptr %.lcssa236, i64 %i.ol ; 2 uses
  br label %vector.body300

vector.body300:                                   ; preds = %vector.ph298, %vector.body300
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next308, %vector.body300 ] ; 2 uses
  %i.ql = shl i64 %index301, 2                    ; 3 uses
  %next.gep302 = getelementptr i8, ptr %.lcssa234, i64 %i.ql
  %next.gep303 = getelementptr i8, ptr %.lcssa235, i64 %i.ql
  %next.gep304 = getelementptr i8, ptr %.lcssa236, i64 %i.ql
  %wide.load305 = load <16 x i32>, ptr %next.gep303, align 4, !tbaa !22
  %wide.load306 = load <16 x i32>, ptr %next.gep302, align 4, !tbaa !22
  %i.qm = shufflevector <16 x i32> %wide.load305, <16 x i32> %wide.load306, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.qn = lshr <32 x i32> %i.qm, splat (i32 16)
  %interleaved.vec307 = trunc nuw <32 x i32> %i.qn to <32 x i16>
  store <32 x i16> %interleaved.vec307, ptr %next.gep304, align 2, !tbaa !24
  %index.next308 = add nuw i64 %index301, 16      ; 2 uses
  %i.qo = icmp eq i64 %index.next308, %n.vec299
  br i1 %i.qo, label %middle.block309, label %vector.body300, !llvm.loop !379

middle.block309:                                  ; preds = %vector.body300
  br i1 %cmp.n310, label %._crit_edge209.us.i, label %vec.epilog.iter.check317

vec.epilog.iter.check317:                         ; preds = %middle.block309
  br i1 %min.epilog.iters.check318, label %.lr.ph208.us.i.preheader, label %vec.epilog.ph319, !prof !27

vec.epilog.ph319:                                 ; preds = %vector.main.loop.iter.check296, %vec.epilog.iter.check317
  %vec.epilog.resume.val311 = phi i64 [ %n.vec299, %vec.epilog.iter.check317 ], [ 0, %vector.main.loop.iter.check296 ]
  %i.qp = getelementptr i8, ptr %.lcssa234, i64 %i.oo
  %i.qq = getelementptr i8, ptr %.lcssa235, i64 %i.oo
  %i.qr = getelementptr i8, ptr %.lcssa236, i64 %i.oo ; 2 uses
  br label %vec.epilog.vector.body321

vec.epilog.vector.body321:                        ; preds = %vec.epilog.vector.body321, %vec.epilog.ph319
  %index322 = phi i64 [ %vec.epilog.resume.val311, %vec.epilog.ph319 ], [ %index.next329, %vec.epilog.vector.body321 ] ; 2 uses
  %i.qs = shl i64 %index322, 2                    ; 3 uses
  %next.gep323 = getelementptr i8, ptr %.lcssa234, i64 %i.qs
  %next.gep324 = getelementptr i8, ptr %.lcssa235, i64 %i.qs
  %next.gep325 = getelementptr i8, ptr %.lcssa236, i64 %i.qs
  %wide.load326 = load <4 x i32>, ptr %next.gep324, align 4, !tbaa !22
  %wide.load327 = load <4 x i32>, ptr %next.gep323, align 4, !tbaa !22
  %i.qt = shufflevector <4 x i32> %wide.load326, <4 x i32> %wide.load327, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.qu = lshr <8 x i32> %i.qt, splat (i32 16)
  %interleaved.vec328 = trunc nuw <8 x i32> %i.qu to <8 x i16>
  store <8 x i16> %interleaved.vec328, ptr %next.gep325, align 2, !tbaa !24
  %index.next329 = add nuw i64 %index322, 4       ; 2 uses
  %i.qv = icmp eq i64 %index.next329, %n.vec320
  br i1 %i.qv, label %vec.epilog.middle.block330, label %vec.epilog.vector.body321, !llvm.loop !380

vec.epilog.middle.block330:                       ; preds = %vec.epilog.vector.body321
  br i1 %cmp.n331, label %._crit_edge209.us.i, label %.lr.ph208.us.i.preheader

.lr.ph208.us.i.preheader:                         ; preds = %iter.check315, %vec.epilog.iter.check317, %vec.epilog.middle.block330
  %.1462207.us.i.ph = phi i32 [ %i.nz, %iter.check315 ], [ %i.ok, %vec.epilog.iter.check317 ], [ %i.on, %vec.epilog.middle.block330 ]
  %.1464206.us.i.ph = phi ptr [ %.lcssa234, %iter.check315 ], [ %i.qi, %vec.epilog.iter.check317 ], [ %i.qp, %vec.epilog.middle.block330 ]
  %.1466205.us.i.ph = phi ptr [ %.lcssa235, %iter.check315 ], [ %i.qj, %vec.epilog.iter.check317 ], [ %i.qq, %vec.epilog.middle.block330 ]
  %.11204.us.i.ph = phi ptr [ %.lcssa236, %iter.check315 ], [ %i.qk, %vec.epilog.iter.check317 ], [ %i.qr, %vec.epilog.middle.block330 ]
  br label %.lr.ph208.us.i

.lr.ph213.split.i:                                ; preds = %.lr.ph213.i
  %i.qw = icmp eq i32 %.sroa.speculated, 1
  br i1 %i.qw, label %iter.check403, label %.preheader4.preheader.i

.preheader4.preheader.i:                          ; preds = %.lr.ph213.split.i
  %i.qx = sub i32 %i.aq, %.2.lcssa.i
  %i.qy = and i32 %i.qx, -2
  %i.qz = add i32 %.2.lcssa.i, 2
  %i.ra = add i32 %i.qz, %i.qy
  br label %.preheader3.i

iter.check403:                                    ; preds = %.lr.ph213.split.i
  %i.rb = sext i32 %.2.lcssa.i to i64             ; 7 uses
  %i.rc = add nsw i64 %i.rb, 2
  %smax = call i64 @llvm.smax.i64(i64 %invariant.op383.i, i64 %i.rc)
  %i.rd = xor i64 %i.rb, -1
  %i.re = add i64 %smax, %i.rd                    ; 3 uses
  %i.rf = lshr i64 %i.re, 1
  %i.rg = add nuw i64 %i.rf, 1                    ; 5 uses
  %min.iters.check386 = icmp ugt i64 %i.re, 5
  %or.cond = select i1 %min.iters.check386, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.main.loop.iter.check387, label %._crit_edge209.us231.i.preheader

vector.main.loop.iter.check387:                   ; preds = %iter.check403
  %min.iters.check388 = icmp ult i64 %i.re, 30
  br i1 %min.iters.check388, label %vec.epilog.ph407, label %vector.ph389

vector.ph389:                                     ; preds = %vector.main.loop.iter.check387
  %i.rh = and i64 %i.rg, 12
  %n.vec390 = and i64 %i.rg, -16                  ; 5 uses
  %i.ri = shl i64 %n.vec390, 1
  %i.rj = add i64 %i.ri, %i.rb                    ; 2 uses
  %i.rk = shl i64 %n.vec390, 2
  %i.rl = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rk ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.rb
  %invariant.gep708 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ag
  br label %vector.body391

vector.body391:                                   ; preds = %vector.ph389, %vector.body391
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next398, %vector.body391 ] ; 3 uses
  %i.rm = shl i64 %index392, 2
  %next.gep393 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rm
  %.idx = shl i64 %index392, 3
  %gep709 = getelementptr i8, ptr %invariant.gep708, i64 %.idx
  %wide.vec394 = load <32 x i32>, ptr %gep709, align 4, !tbaa !22
  %i.rn = lshr <32 x i32> %wide.vec394, splat (i32 16)
  %interleaved.vec397 = trunc nuw <32 x i32> %i.rn to <32 x i16>
  store <32 x i16> %interleaved.vec397, ptr %next.gep393, align 2, !tbaa !24
  %index.next398 = add nuw i64 %index392, 16      ; 2 uses
  %i.ro = icmp eq i64 %index.next398, %n.vec390
  br i1 %i.ro, label %middle.block399, label %vector.body391, !llvm.loop !381

middle.block399:                                  ; preds = %vector.body391
  %cmp.n400 = icmp eq i64 %i.rg, %n.vec390
  br i1 %cmp.n400, label %.preheader3.loopexit258.i, label %vec.epilog.iter.check405

vec.epilog.iter.check405:                         ; preds = %middle.block399
  %min.epilog.iters.check406 = icmp eq i64 %i.rh, 0
  br i1 %min.epilog.iters.check406, label %._crit_edge209.us231.i.preheader, label %vec.epilog.ph407, !prof !27

vec.epilog.ph407:                                 ; preds = %vector.main.loop.iter.check387, %vec.epilog.iter.check405
  %vec.epilog.resume.val401 = phi i64 [ %n.vec390, %vec.epilog.iter.check405 ], [ 0, %vector.main.loop.iter.check387 ]
  %n.vec408 = and i64 %i.rg, -4                   ; 4 uses
  %i.rp = shl i64 %n.vec408, 1
  %i.rq = add i64 %i.rp, %i.rb                    ; 2 uses
  %i.rr = shl i64 %n.vec408, 2
  %i.rs = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rr ; 2 uses
  %invariant.gep710 = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.rb
  %invariant.gep711 = getelementptr [4 x i8], ptr %invariant.gep710, i64 %i.ag
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph407
  %index410 = phi i64 [ %vec.epilog.resume.val401, %vec.epilog.ph407 ], [ %index.next416, %vec.epilog.vector.body409 ] ; 3 uses
  %i.rt = shl i64 %index410, 2
  %next.gep411 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.rt
  %.idx623 = shl i64 %index410, 3
  %gep712 = getelementptr i8, ptr %invariant.gep711, i64 %.idx623
  %wide.vec412 = load <8 x i32>, ptr %gep712, align 4, !tbaa !22
  %i.ru = lshr <8 x i32> %wide.vec412, splat (i32 16)
  %interleaved.vec415 = trunc nuw <8 x i32> %i.ru to <8 x i16>
  store <8 x i16> %interleaved.vec415, ptr %next.gep411, align 2, !tbaa !24
  %index.next416 = add nuw i64 %index410, 4       ; 2 uses
  %i.rv = icmp eq i64 %index.next416, %n.vec408
  br i1 %i.rv, label %vec.epilog.middle.block417, label %vec.epilog.vector.body409, !llvm.loop !382

vec.epilog.middle.block417:                       ; preds = %vec.epilog.vector.body409
  %cmp.n418 = icmp eq i64 %i.rg, %n.vec408
  br i1 %cmp.n418, label %.preheader3.loopexit258.i, label %._crit_edge209.us231.i.preheader

._crit_edge209.us231.i.preheader:                 ; preds = %iter.check403, %vec.epilog.iter.check405, %vec.epilog.middle.block417
  %indvars.iv321.i.ph = phi i64 [ %i.rb, %iter.check403 ], [ %i.rj, %vec.epilog.iter.check405 ], [ %i.rq, %vec.epilog.middle.block417 ]
  %.9211.us223.i.ph = phi ptr [ %.6.lcssa.i, %iter.check403 ], [ %i.rl, %vec.epilog.iter.check405 ], [ %i.rs, %vec.epilog.middle.block417 ]
  br label %._crit_edge209.us231.i

._crit_edge209.us231.i:                           ; preds = %._crit_edge209.us231.i.preheader, %._crit_edge209.us231.i
  %indvars.iv321.i = phi i64 [ %indvars.iv.next322.i, %._crit_edge209.us231.i ], [ %indvars.iv321.i.ph, %._crit_edge209.us231.i.preheader ] ; 2 uses
  %.9211.us223.i = phi ptr [ %i.rw, %._crit_edge209.us231.i ], [ %.9211.us223.i.ph, %._crit_edge209.us231.i.preheader ] ; 3 uses
  %i.rw = getelementptr i8, ptr %.9211.us223.i, i64 4 ; 2 uses
  %i.rx = add nsw i64 %indvars.iv321.i, %i.ag     ; 2 uses
  %i.ry = add nsw i64 %i.rx, 1
  %i.rz = mul nsw i64 %i.ry, %i.aa
  %gep219.us225.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.rz
  %.pre333.i = load i32, ptr %gep219.us225.i, align 4, !tbaa !22
  %i.sa = mul nsw i64 %i.rx, %i.aa
  %gep217.us224.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %i.sa
  %.pre.i = load i32, ptr %gep217.us224.i, align 4, !tbaa !22
  %i.sb = lshr i32 %.pre.i, 16
  %i.sc = trunc nuw i32 %i.sb to i16
  store i16 %i.sc, ptr %.9211.us223.i, align 2, !tbaa !24
  %i.sd = lshr i32 %.pre333.i, 16
  %i.se = trunc nuw i32 %i.sd to i16
  %i.sf = getelementptr inbounds nuw i8, ptr %.9211.us223.i, i64 2
  store i16 %i.se, ptr %i.sf, align 2, !tbaa !24
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 2 ; 3 uses
  %i.sg = icmp slt i64 %indvars.iv.next322.i, %invariant.op383.i
  br i1 %i.sg, label %._crit_edge209.us231.i, label %.preheader3.loopexit258.i, !llvm.loop !383

bb.e:                                             ; preds = %._crit_edge179.i, %.lr.ph183.i
  %indvars.iv318.i = phi i64 [ %i.if, %.lr.ph183.i ], [ %indvars.iv.next319.i, %._crit_edge179.i ] ; 2 uses
  %.6181.i = phi ptr [ %.3534.lcssa.i, %.lr.ph183.i ], [ %.8.lcssa.i, %._crit_edge179.i ] ; 6 uses
  %i.sh = add nsw i64 %indvars.iv318.i, %i.ag     ; 4 uses
  %i.si = mul nsw i64 %i.sh, %i.aa
  %gep187.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.si ; 6 uses
  %i.sj = add nsw i64 %i.sh, 1
  %i.sk = mul nsw i64 %i.sj, %i.aa
  %gep189.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.sk ; 6 uses
  %i.sl = add nsw i64 %i.sh, 2
  %i.sm = mul nsw i64 %i.sl, %i.aa
  %gep191.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.sm ; 6 uses
  %i.sn = add nsw i64 %i.sh, 3
  %i.so = mul nsw i64 %i.sn, %i.aa
  %gep193.i = getelementptr [4 x i8], ptr %invariant.gep186.i, i64 %i.so ; 6 uses
  br i1 %i.id, label %iter.check509, label %.preheader6.i

iter.check509:                                    ; preds = %bb.e
  br i1 %min.iters.check475, label %.lr.ph165.i.preheader, label %vector.main.loop.iter.check476

vector.main.loop.iter.check476:                   ; preds = %iter.check509
  br i1 %min.iters.check477, label %vec.epilog.ph513, label %vector.ph478

vector.ph478:                                     ; preds = %vector.main.loop.iter.check476
  %i.sp = getelementptr i8, ptr %gep193.i, i64 %i.ij ; 2 uses
  %i.sq = getelementptr i8, ptr %gep191.i, i64 %i.ij ; 2 uses
  %i.sr = getelementptr i8, ptr %gep189.i, i64 %i.ij ; 2 uses
  %i.ss = getelementptr i8, ptr %gep187.i, i64 %i.ij ; 2 uses
  %i.st = getelementptr i8, ptr %.6181.i, i64 %i.ik ; 2 uses
  br label %vector.body480

vector.body480:                                   ; preds = %vector.ph478, %vector.body480
  %index481 = phi i64 [ 0, %vector.ph478 ], [ %index.next500, %vector.body480 ] ; 3 uses
  %i.su = shl i64 %index481, 3                    ; 4 uses
  %next.gep482 = getelementptr i8, ptr %gep193.i, i64 %i.su
  %next.gep483 = getelementptr i8, ptr %gep191.i, i64 %i.su
  %next.gep484 = getelementptr i8, ptr %gep189.i, i64 %i.su
  %next.gep485 = getelementptr i8, ptr %gep187.i, i64 %i.su
  %i.sv = shl i64 %index481, 4
  %next.gep486 = getelementptr i8, ptr %.6181.i, i64 %i.sv
  %wide.vec487 = load <32 x i32>, ptr %next.gep485, align 4, !tbaa !22
  %wide.vec490 = load <32 x i32>, ptr %next.gep484, align 4, !tbaa !22
  %wide.vec493 = load <32 x i32>, ptr %next.gep483, align 4, !tbaa !22
  %wide.vec496 = load <32 x i32>, ptr %next.gep482, align 4, !tbaa !22
  %i.sw = shufflevector <32 x i32> %wide.vec487, <32 x i32> %wide.vec490, <64 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %i.sx = lshr <64 x i32> %i.sw, splat (i32 16)
  %i.sy = trunc nuw <64 x i32> %i.sx to <64 x i16>
  %i.sz = shufflevector <32 x i32> %wide.vec493, <32 x i32> %wide.vec496, <64 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %i.ta = lshr <64 x i32> %i.sz, splat (i32 16)
  %i.tb = trunc nuw <64 x i32> %i.ta to <64 x i16>
  %interleaved.vec499 = shufflevector <64 x i16> %i.sy, <64 x i16> %i.tb, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec499, ptr %next.gep486, align 2, !tbaa !24
  %index.next500 = add nuw i64 %index481, 16      ; 2 uses
  %i.tc = icmp eq i64 %index.next500, %n.vec479
  br i1 %i.tc, label %middle.block501, label %vector.body480, !llvm.loop !384

middle.block501:                                  ; preds = %vector.body480
  br i1 %cmp.n502, label %.preheader6.i, label %vec.epilog.iter.check511

vec.epilog.iter.check511:                         ; preds = %middle.block501
  br i1 %min.epilog.iters.check512, label %.lr.ph165.i.preheader, label %vec.epilog.ph513, !prof !27

vec.epilog.ph513:                                 ; preds = %vector.main.loop.iter.check476, %vec.epilog.iter.check511
  %vec.epilog.resume.val503 = phi i64 [ %n.vec479, %vec.epilog.iter.check511 ], [ 0, %vector.main.loop.iter.check476 ]
  %i.td = getelementptr i8, ptr %gep193.i, i64 %i.in ; 2 uses
  %i.te = getelementptr i8, ptr %gep191.i, i64 %i.in ; 2 uses
  %i.tf = getelementptr i8, ptr %gep189.i, i64 %i.in ; 2 uses
  %i.tg = getelementptr i8, ptr %gep187.i, i64 %i.in ; 2 uses
  %i.th = getelementptr i8, ptr %.6181.i, i64 %i.io ; 2 uses
  br label %vec.epilog.vector.body515

vec.epilog.vector.body515:                        ; preds = %vec.epilog.vector.body515, %vec.epilog.ph513
  %index516 = phi i64 [ %vec.epilog.resume.val503, %vec.epilog.ph513 ], [ %index.next535, %vec.epilog.vector.body515 ] ; 3 uses
  %i.ti = shl i64 %index516, 3                    ; 4 uses
  %next.gep517 = getelementptr i8, ptr %gep193.i, i64 %i.ti
  %next.gep518 = getelementptr i8, ptr %gep191.i, i64 %i.ti
  %next.gep519 = getelementptr i8, ptr %gep189.i, i64 %i.ti
  %next.gep520 = getelementptr i8, ptr %gep187.i, i64 %i.ti
  %i.tj = shl i64 %index516, 4
  %next.gep521 = getelementptr i8, ptr %.6181.i, i64 %i.tj
  %wide.vec522 = load <8 x i32>, ptr %next.gep520, align 4, !tbaa !22
  %wide.vec525 = load <8 x i32>, ptr %next.gep519, align 4, !tbaa !22
  %wide.vec528 = load <8 x i32>, ptr %next.gep518, align 4, !tbaa !22
  %wide.vec531 = load <8 x i32>, ptr %next.gep517, align 4, !tbaa !22
  %i.tk = shufflevector <8 x i32> %wide.vec522, <8 x i32> %wide.vec525, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7, i32 8, i32 10, i32 12, i32 14, i32 9, i32 11, i32 13, i32 15>
  %i.tl = shufflevector <8 x i32> %wide.vec528, <8 x i32> %wide.vec531, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7, i32 8, i32 10, i32 12, i32 14, i32 9, i32 11, i32 13, i32 15>
  %i.tm = shufflevector <16 x i32> %i.tk, <16 x i32> %i.tl, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.tn = lshr <32 x i32> %i.tm, splat (i32 16)
  %interleaved.vec534 = trunc nuw <32 x i32> %i.tn to <32 x i16>
  store <32 x i16> %interleaved.vec534, ptr %next.gep521, align 2, !tbaa !24
  %index.next535 = add nuw i64 %index516, 4       ; 2 uses
  %i.to = icmp eq i64 %index.next535, %n.vec514
  br i1 %i.to, label %vec.epilog.middle.block536, label %vec.epilog.vector.body515, !llvm.loop !385

vec.epilog.middle.block536:                       ; preds = %vec.epilog.vector.body515
  br i1 %cmp.n537, label %.preheader6.i, label %.lr.ph165.i.preheader

.lr.ph165.i.preheader:                            ; preds = %iter.check509, %vec.epilog.iter.check511, %vec.epilog.middle.block536
  %.0467163.i.ph = phi i32 [ 0, %iter.check509 ], [ %i.ii, %vec.epilog.iter.check511 ], [ %i.im, %vec.epilog.middle.block536 ]
  %.0469162.i.ph = phi ptr [ %gep193.i, %iter.check509 ], [ %i.sp, %vec.epilog.iter.check511 ], [ %i.td, %vec.epilog.middle.block536 ]
  %.0471161.i.ph = phi ptr [ %gep191.i, %iter.check509 ], [ %i.sq, %vec.epilog.iter.check511 ], [ %i.te, %vec.epilog.middle.block536 ]
  %.0473160.i.ph = phi ptr [ %gep189.i, %iter.check509 ], [ %i.sr, %vec.epilog.iter.check511 ], [ %i.tf, %vec.epilog.middle.block536 ]
  %.0475159.i.ph = phi ptr [ %gep187.i, %iter.check509 ], [ %i.ss, %vec.epilog.iter.check511 ], [ %i.tg, %vec.epilog.middle.block536 ]
  %.7158.i.ph = phi ptr [ %.6181.i, %iter.check509 ], [ %i.st, %vec.epilog.iter.check511 ], [ %i.th, %vec.epilog.middle.block536 ]
  br label %.lr.ph165.i

.preheader6.i:                                    ; preds = %.lr.ph165.i, %middle.block501, %vec.epilog.middle.block536, %bb.e
  %.7.lcssa.i = phi ptr [ %.6181.i, %bb.e ], [ %i.th, %vec.epilog.middle.block536 ], [ %i.st, %middle.block501 ], [ %i.vo, %.lr.ph165.i ] ; 6 uses
  %.0475.lcssa.i = phi ptr [ %gep187.i, %bb.e ], [ %i.tg, %vec.epilog.middle.block536 ], [ %i.ss, %middle.block501 ], [ %i.vp, %.lr.ph165.i ] ; 5 uses
  %.0473.lcssa.i = phi ptr [ %gep189.i, %bb.e ], [ %i.tf, %vec.epilog.middle.block536 ], [ %i.sr, %middle.block501 ], [ %i.vq, %.lr.ph165.i ] ; 5 uses
  %.0471.lcssa.i = phi ptr [ %gep191.i, %bb.e ], [ %i.te, %vec.epilog.middle.block536 ], [ %i.sq, %middle.block501 ], [ %i.vr, %.lr.ph165.i ] ; 5 uses
  %.0469.lcssa.i = phi ptr [ %gep193.i, %bb.e ], [ %i.td, %vec.epilog.middle.block536 ], [ %i.sp, %middle.block501 ], [ %i.vs, %.lr.ph165.i ] ; 5 uses
  %.0467.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.ie, %vec.epilog.middle.block536 ], [ %i.ie, %middle.block501 ], [ %i.ie, %.lr.ph165.i ] ; 5 uses
  %i.tp = icmp slt i32 %.0467.lcssa.i, %.sroa.speculated
  br i1 %i.tp, label %iter.check447, label %._crit_edge179.i

iter.check447:                                    ; preds = %.preheader6.i
  %i.tq = xor i32 %.0467.lcssa.i, -1
  %i.tr = add i32 %.sroa.speculated, %i.tq        ; 3 uses
  %i.ts = zext i32 %i.tr to i64
  %i.tt = add nuw nsw i64 %i.ts, 1                ; 5 uses
  %min.iters.check421 = icmp ult i32 %i.tr, 3
  br i1 %min.iters.check421, label %.lr.ph178.i.preheader, label %vector.main.loop.iter.check422

vector.main.loop.iter.check422:                   ; preds = %iter.check447
  %min.iters.check423 = icmp ult i32 %i.tr, 15
  br i1 %min.iters.check423, label %vec.epilog.ph451, label %vector.ph424

vector.ph424:                                     ; preds = %vector.main.loop.iter.check422
  %i.tu = and i64 %i.tt, 12
  %n.vec425 = and i64 %i.tt, 8589934576           ; 6 uses
  %i.tv = trunc i64 %n.vec425 to i32
  %i.tw = add i32 %.0467.lcssa.i, %i.tv
  %i.tx = shl nuw nsw i64 %n.vec425, 2            ; 4 uses
  %i.ty = getelementptr i8, ptr %.0469.lcssa.i, i64 %i.tx
  %i.tz = getelementptr i8, ptr %.0471.lcssa.i, i64 %i.tx
  %i.ua = getelementptr i8, ptr %.0473.lcssa.i, i64 %i.tx
  %i.ub = getelementptr i8, ptr %.0475.lcssa.i, i64 %i.tx
  %i.uc = shl nuw nsw i64 %n.vec425, 3
  %i.ud = getelementptr i8, ptr %.7.lcssa.i, i64 %i.uc ; 2 uses
  br label %vector.body426

vector.body426:                                   ; preds = %vector.ph424, %vector.body426
  %index427 = phi i64 [ 0, %vector.ph424 ], [ %index.next438, %vector.body426 ] ; 3 uses
  %i.ue = shl i64 %index427, 2                    ; 4 uses
  %next.gep428 = getelementptr i8, ptr %.0469.lcssa.i, i64 %i.ue
  %next.gep429 = getelementptr i8, ptr %.0471.lcssa.i, i64 %i.ue
  %next.gep430 = getelementptr i8, ptr %.0473.lcssa.i, i64 %i.ue
  %next.gep431 = getelementptr i8, ptr %.0475.lcssa.i, i64 %i.ue
  %i.uf = shl i64 %index427, 3
  %next.gep432 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.uf
  %wide.load433 = load <16 x i32>, ptr %next.gep431, align 4, !tbaa !22
  %wide.load434 = load <16 x i32>, ptr %next.gep430, align 4, !tbaa !22
  %wide.load435 = load <16 x i32>, ptr %next.gep429, align 4, !tbaa !22
  %wide.load436 = load <16 x i32>, ptr %next.gep428, align 4, !tbaa !22
  %i.ug = shufflevector <16 x i32> %wide.load433, <16 x i32> %wide.load434, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.uh = lshr <32 x i32> %i.ug, splat (i32 16)
  %i.ui = trunc nuw <32 x i32> %i.uh to <32 x i16>
  %i.uj = shufflevector <16 x i32> %wide.load435, <16 x i32> %wide.load436, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.uk = lshr <32 x i32> %i.uj, splat (i32 16)
  %i.ul = trunc nuw <32 x i32> %i.uk to <32 x i16>
  %interleaved.vec437 = shufflevector <32 x i16> %i.ui, <32 x i16> %i.ul, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec437, ptr %next.gep432, align 2, !tbaa !24
  %index.next438 = add nuw i64 %index427, 16      ; 2 uses
  %i.um = icmp eq i64 %index.next438, %n.vec425
  br i1 %i.um, label %middle.block439, label %vector.body426, !llvm.loop !386

middle.block439:                                  ; preds = %vector.body426
  %cmp.n440 = icmp eq i64 %i.tt, %n.vec425
  br i1 %cmp.n440, label %._crit_edge179.i, label %vec.epilog.iter.check449

vec.epilog.iter.check449:                         ; preds = %middle.block439
  %min.epilog.iters.check450 = icmp eq i64 %i.tu, 0
  br i1 %min.epilog.iters.check450, label %.lr.ph178.i.preheader, label %vec.epilog.ph451, !prof !27

vec.epilog.ph451:                                 ; preds = %vector.main.loop.iter.check422, %vec.epilog.iter.check449
  %vec.epilog.resume.val441 = phi i64 [ %n.vec425, %vec.epilog.iter.check449 ], [ 0, %vector.main.loop.iter.check422 ]
  %n.vec452 = and i64 %i.tt, 8589934588           ; 5 uses
  %i.un = trunc i64 %n.vec452 to i32
  %i.uo = add i32 %.0467.lcssa.i, %i.un
  %i.up = shl nuw nsw i64 %n.vec452, 2            ; 4 uses
  %i.uq = getelementptr i8, ptr %.0469.lcssa.i, i64 %i.up
  %i.ur = getelementptr i8, ptr %.0471.lcssa.i, i64 %i.up
  %i.us = getelementptr i8, ptr %.0473.lcssa.i, i64 %i.up
  %i.ut = getelementptr i8, ptr %.0475.lcssa.i, i64 %i.up
  %i.uu = shl nuw nsw i64 %n.vec452, 3
  %i.uv = getelementptr i8, ptr %.7.lcssa.i, i64 %i.uu ; 2 uses
  br label %vec.epilog.vector.body453

vec.epilog.vector.body453:                        ; preds = %vec.epilog.vector.body453, %vec.epilog.ph451
  %index454 = phi i64 [ %vec.epilog.resume.val441, %vec.epilog.ph451 ], [ %index.next465, %vec.epilog.vector.body453 ] ; 3 uses
  %i.uw = shl i64 %index454, 2                    ; 4 uses
  %next.gep455 = getelementptr i8, ptr %.0469.lcssa.i, i64 %i.uw
  %next.gep456 = getelementptr i8, ptr %.0471.lcssa.i, i64 %i.uw
  %next.gep457 = getelementptr i8, ptr %.0473.lcssa.i, i64 %i.uw
  %next.gep458 = getelementptr i8, ptr %.0475.lcssa.i, i64 %i.uw
  %i.ux = shl i64 %index454, 3
  %next.gep459 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.ux
  %wide.load460 = load <4 x i32>, ptr %next.gep458, align 4, !tbaa !22
  %wide.load461 = load <4 x i32>, ptr %next.gep457, align 4, !tbaa !22
  %wide.load462 = load <4 x i32>, ptr %next.gep456, align 4, !tbaa !22
  %wide.load463 = load <4 x i32>, ptr %next.gep455, align 4, !tbaa !22
  %i.uy = shufflevector <4 x i32> %wide.load460, <4 x i32> %wide.load461, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uz = shufflevector <4 x i32> %wide.load462, <4 x i32> %wide.load463, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.va = shufflevector <8 x i32> %i.uy, <8 x i32> %i.uz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.vb = lshr <16 x i32> %i.va, splat (i32 16)
  %interleaved.vec464 = trunc nuw <16 x i32> %i.vb to <16 x i16>
  store <16 x i16> %interleaved.vec464, ptr %next.gep459, align 2, !tbaa !24
  %index.next465 = add nuw i64 %index454, 4       ; 2 uses
  %i.vc = icmp eq i64 %index.next465, %n.vec452
  br i1 %i.vc, label %vec.epilog.middle.block466, label %vec.epilog.vector.body453, !llvm.loop !387

vec.epilog.middle.block466:                       ; preds = %vec.epilog.vector.body453
  %cmp.n467 = icmp eq i64 %i.tt, %n.vec452
  br i1 %cmp.n467, label %._crit_edge179.i, label %.lr.ph178.i.preheader

.lr.ph178.i.preheader:                            ; preds = %iter.check447, %vec.epilog.iter.check449, %vec.epilog.middle.block466
  %.1468177.i.ph = phi i32 [ %.0467.lcssa.i, %iter.check447 ], [ %i.tw, %vec.epilog.iter.check449 ], [ %i.uo, %vec.epilog.middle.block466 ]
  %.1470176.i.ph = phi ptr [ %.0469.lcssa.i, %iter.check447 ], [ %i.ty, %vec.epilog.iter.check449 ], [ %i.uq, %vec.epilog.middle.block466 ]
  %.1472175.i.ph = phi ptr [ %.0471.lcssa.i, %iter.check447 ], [ %i.tz, %vec.epilog.iter.check449 ], [ %i.ur, %vec.epilog.middle.block466 ]
  %.1474174.i.ph = phi ptr [ %.0473.lcssa.i, %iter.check447 ], [ %i.ua, %vec.epilog.iter.check449 ], [ %i.us, %vec.epilog.middle.block466 ]
  %.1476173.i.ph = phi ptr [ %.0475.lcssa.i, %iter.check447 ], [ %i.ub, %vec.epilog.iter.check449 ], [ %i.ut, %vec.epilog.middle.block466 ]
  %.8172.i.ph = phi ptr [ %.7.lcssa.i, %iter.check447 ], [ %i.ud, %vec.epilog.iter.check449 ], [ %i.uv, %vec.epilog.middle.block466 ]
  br label %.lr.ph178.i

.lr.ph165.i:                                      ; preds = %.lr.ph165.i.preheader, %.lr.ph165.i
  %.0467163.i = phi i32 [ %i.vt, %.lr.ph165.i ], [ %.0467163.i.ph, %.lr.ph165.i.preheader ]
  %.0469162.i = phi ptr [ %i.vs, %.lr.ph165.i ], [ %.0469162.i.ph, %.lr.ph165.i.preheader ] ; 2 uses
  %.0471161.i = phi ptr [ %i.vr, %.lr.ph165.i ], [ %.0471161.i.ph, %.lr.ph165.i.preheader ] ; 2 uses
  %.0473160.i = phi ptr [ %i.vq, %.lr.ph165.i ], [ %.0473160.i.ph, %.lr.ph165.i.preheader ] ; 2 uses
  %.0475159.i = phi ptr [ %i.vp, %.lr.ph165.i ], [ %.0475159.i.ph, %.lr.ph165.i.preheader ] ; 2 uses
  %.7158.i = phi ptr [ %i.vo, %.lr.ph165.i ], [ %.7158.i.ph, %.lr.ph165.i.preheader ] ; 2 uses
  %i.vd = load <2 x i32>, ptr %.0475159.i, align 4, !tbaa !22
  %i.ve = load <2 x i32>, ptr %.0473160.i, align 4, !tbaa !22
  %i.vf = load <2 x i32>, ptr %.0471161.i, align 4, !tbaa !22
  %i.vg = load <2 x i32>, ptr %.0469162.i, align 4, !tbaa !22
  %i.vh = shufflevector <2 x i32> %i.vd, <2 x i32> %i.ve, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vi = shufflevector <2 x i32> %i.vf, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vj = shufflevector <8 x i32> %i.vh, <8 x i32> %i.vi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.vk = shufflevector <2 x i32> %i.vg, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vl = shufflevector <8 x i32> %i.vj, <8 x i32> %i.vk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.vm = lshr <8 x i32> %i.vl, splat (i32 16)
  %i.vn = trunc nuw <8 x i32> %i.vm to <8 x i16>
  store <8 x i16> %i.vn, ptr %.7158.i, align 2, !tbaa !24
  %i.vo = getelementptr inbounds nuw i8, ptr %.7158.i, i64 16 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.0475159.i, i64 8 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.0473160.i, i64 8 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.0471161.i, i64 8 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.0469162.i, i64 8 ; 2 uses
  %i.vt = add nuw nsw i32 %.0467163.i, 2          ; 2 uses
  %i.vu = or disjoint i32 %i.vt, 1
  %i.vv = icmp slt i32 %i.vu, %.sroa.speculated
  br i1 %i.vv, label %.lr.ph165.i, label %.preheader6.i, !llvm.loop !388

.lr.ph178.i:                                      ; preds = %.lr.ph178.i.preheader, %.lr.ph178.i
  %.1468177.i = phi i32 [ %i.wl, %.lr.ph178.i ], [ %.1468177.i.ph, %.lr.ph178.i.preheader ]
  %.1470176.i = phi ptr [ %i.wk, %.lr.ph178.i ], [ %.1470176.i.ph, %.lr.ph178.i.preheader ] ; 2 uses
  %.1472175.i = phi ptr [ %i.wj, %.lr.ph178.i ], [ %.1472175.i.ph, %.lr.ph178.i.preheader ] ; 2 uses
  %.1474174.i = phi ptr [ %i.wi, %.lr.ph178.i ], [ %.1474174.i.ph, %.lr.ph178.i.preheader ] ; 2 uses
  %.1476173.i = phi ptr [ %i.wh, %.lr.ph178.i ], [ %.1476173.i.ph, %.lr.ph178.i.preheader ] ; 2 uses
  %.8172.i = phi ptr [ %i.wg, %.lr.ph178.i ], [ %.8172.i.ph, %.lr.ph178.i.preheader ] ; 2 uses
  %i.vw = load i32, ptr %.1476173.i, align 4, !tbaa !22
  %i.vx = load i32, ptr %.1474174.i, align 4, !tbaa !22
  %i.vy = load i32, ptr %.1472175.i, align 4, !tbaa !22
  %i.vz = load i32, ptr %.1470176.i, align 4, !tbaa !22
  %i.wa = insertelement <4 x i32> poison, i32 %i.vw, i64 0
  %i.wb = insertelement <4 x i32> %i.wa, i32 %i.vx, i64 1
  %i.wc = insertelement <4 x i32> %i.wb, i32 %i.vy, i64 2
  %i.wd = insertelement <4 x i32> %i.wc, i32 %i.vz, i64 3
  %i.we = lshr <4 x i32> %i.wd, splat (i32 16)
  %i.wf = trunc nuw <4 x i32> %i.we to <4 x i16>
  store <4 x i16> %i.wf, ptr %.8172.i, align 2, !tbaa !24
  %i.wg = getelementptr inbounds nuw i8, ptr %.8172.i, i64 8 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.1476173.i, i64 4
  %i.wi = getelementptr inbounds nuw i8, ptr %.1474174.i, i64 4
  %i.wj = getelementptr inbounds nuw i8, ptr %.1472175.i, i64 4
  %i.wk = getelementptr inbounds nuw i8, ptr %.1470176.i, i64 4
  %i.wl = add nuw nsw i32 %.1468177.i, 1          ; 2 uses
  %exitcond317.not.i = icmp eq i32 %i.wl, %.sroa.speculated
  br i1 %exitcond317.not.i, label %._crit_edge179.i, label %.lr.ph178.i, !llvm.loop !389

._crit_edge179.i:                                 ; preds = %.lr.ph178.i, %middle.block439, %vec.epilog.middle.block466, %.preheader6.i
  %.8.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader6.i ], [ %i.uv, %vec.epilog.middle.block466 ], [ %i.ud, %middle.block439 ], [ %i.wg, %.lr.ph178.i ] ; 2 uses
  %indvars.iv.next319.i = add nuw nsw i64 %indvars.iv318.i, 4 ; 3 uses
  %i.wm = icmp slt i64 %indvars.iv.next319.i, %invariant.op382.i
  br i1 %i.wm, label %bb.e, label %.preheader5.loopexit.i, !llvm.loop !390

.preheader3.loopexit.i:                           ; preds = %._crit_edge209.us.i
  %i.wn = trunc nsw i64 %indvars.iv.next326.i to i32
  br label %.preheader3.i

.preheader3.loopexit258.i:                        ; preds = %._crit_edge209.us231.i, %vec.epilog.middle.block417, %middle.block399
  %.lcssa233 = phi ptr [ %i.rs, %vec.epilog.middle.block417 ], [ %i.rl, %middle.block399 ], [ %i.rw, %._crit_edge209.us231.i ]
  %indvars.iv.next322.i.lcssa = phi i64 [ %i.rq, %vec.epilog.middle.block417 ], [ %i.rj, %middle.block399 ], [ %indvars.iv.next322.i, %._crit_edge209.us231.i ]
  %i.wo = trunc nsw i64 %indvars.iv.next322.i.lcssa to i32
  br label %.preheader3.i

.preheader3.i:                                    ; preds = %.preheader3.loopexit258.i, %.preheader3.loopexit.i, %.preheader4.preheader.i, %.preheader5.i
  %.9.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader5.i ], [ %.lcssa233, %.preheader3.loopexit258.i ], [ %.11.lcssa.us.i, %.preheader3.loopexit.i ], [ %.6.lcssa.i, %.preheader4.preheader.i ]
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader5.i ], [ %i.wo, %.preheader3.loopexit258.i ], [ %i.wn, %.preheader3.loopexit.i ], [ %i.ra, %.preheader4.preheader.i ] ; 2 uses
  %i.wp = icmp slt i32 %.3.lcssa.i, %.sroa.speculated60
  br i1 %i.wp, label %.lr.ph254.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph254.i:                                      ; preds = %.preheader3.i
  %invariant.gep256.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv
  %i.wq = icmp sgt i32 %.sroa.speculated, 1
  %i.wr = and i32 %.sroa.speculated, -2           ; 3 uses
  %i.ws = sext i32 %.3.lcssa.i to i64
  %min.iters.check258 = icmp ult i32 %i.bk, 6
  %min.iters.check260 = icmp ult i32 %i.bk, 30
  %i.wt = and i64 %i.bm, 12
  %n.vec262 = and i64 %i.bm, 4294967280           ; 6 uses
  %i.wu = trunc nuw i64 %n.vec262 to i32
  %i.wv = shl i32 %i.wu, 1
  %i.ww = shl nuw nsw i64 %n.vec262, 3
  %i.wx = shl nuw nsw i64 %n.vec262, 2
  %cmp.n270 = icmp eq i64 %n.vec262, %i.bm
  %min.epilog.iters.check277 = icmp eq i64 %i.wt, 0
  %n.vec279 = and i64 %i.bm, 4294967292           ; 5 uses
  %i.wy = trunc nuw i64 %n.vec279 to i32
  %i.wz = shl i32 %i.wy, 1
  %i.xa = shl nuw nsw i64 %n.vec279, 3
  %i.xb = shl nuw nsw i64 %n.vec279, 2
  %cmp.n290 = icmp eq i64 %n.vec279, %i.bm
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge250.i, %.lr.ph254.i
  %indvars.iv329.i = phi i64 [ %i.ws, %.lr.ph254.i ], [ %indvars.iv.next330.i, %._crit_edge250.i ] ; 2 uses
  %.12252.i = phi ptr [ %.9.lcssa.i, %.lr.ph254.i ], [ %.14.lcssa.i, %._crit_edge250.i ] ; 6 uses
  %i.xc = add nsw i64 %indvars.iv329.i, %i.ag
  %i.xd = mul nsw i64 %i.xc, %i.aa
  %gep257.i = getelementptr [4 x i8], ptr %invariant.gep256.i, i64 %i.xd ; 6 uses
  br i1 %i.wq, label %iter.check274, label %.preheader.i

iter.check274:                                    ; preds = %bb.f
  br i1 %min.iters.check258, label %.lr.ph242.i.preheader, label %vector.main.loop.iter.check259

vector.main.loop.iter.check259:                   ; preds = %iter.check274
  br i1 %min.iters.check260, label %vec.epilog.ph278, label %vector.ph261

vector.ph261:                                     ; preds = %vector.main.loop.iter.check259
  %i.xe = getelementptr i8, ptr %gep257.i, i64 %i.ww ; 2 uses
  %i.xf = getelementptr i8, ptr %.12252.i, i64 %i.wx ; 2 uses
  br label %vector.body263

vector.body263:                                   ; preds = %vector.ph261, %vector.body263
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next268, %vector.body263 ] ; 3 uses
  %i.xg = shl i64 %index264, 3
  %next.gep265 = getelementptr i8, ptr %gep257.i, i64 %i.xg
  %i.xh = shl i64 %index264, 2
  %next.gep266 = getelementptr i8, ptr %.12252.i, i64 %i.xh
  %wide.vec = load <32 x i32>, ptr %next.gep265, align 4, !tbaa !22
  %i.xi = lshr <32 x i32> %wide.vec, splat (i32 16)
  %interleaved.vec = trunc nuw <32 x i32> %i.xi to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %next.gep266, align 2, !tbaa !24
  %index.next268 = add nuw i64 %index264, 16      ; 2 uses
  %i.xj = icmp eq i64 %index.next268, %n.vec262
  br i1 %i.xj, label %middle.block269, label %vector.body263, !llvm.loop !391

middle.block269:                                  ; preds = %vector.body263
  br i1 %cmp.n270, label %.preheader.i, label %vec.epilog.iter.check276

vec.epilog.iter.check276:                         ; preds = %middle.block269
  br i1 %min.epilog.iters.check277, label %.lr.ph242.i.preheader, label %vec.epilog.ph278, !prof !27

vec.epilog.ph278:                                 ; preds = %vector.main.loop.iter.check259, %vec.epilog.iter.check276
  %vec.epilog.resume.val271 = phi i64 [ %n.vec262, %vec.epilog.iter.check276 ], [ 0, %vector.main.loop.iter.check259 ]
  %i.xk = getelementptr i8, ptr %gep257.i, i64 %i.xa ; 2 uses
  %i.xl = getelementptr i8, ptr %.12252.i, i64 %i.xb ; 2 uses
  br label %vec.epilog.vector.body280

vec.epilog.vector.body280:                        ; preds = %vec.epilog.vector.body280, %vec.epilog.ph278
  %index281 = phi i64 [ %vec.epilog.resume.val271, %vec.epilog.ph278 ], [ %index.next288, %vec.epilog.vector.body280 ] ; 3 uses
  %i.xm = shl i64 %index281, 3
  %next.gep282 = getelementptr i8, ptr %gep257.i, i64 %i.xm
  %i.xn = shl i64 %index281, 2
  %next.gep283 = getelementptr i8, ptr %.12252.i, i64 %i.xn
  %wide.vec284 = load <8 x i32>, ptr %next.gep282, align 4, !tbaa !22
  %i.xo = lshr <8 x i32> %wide.vec284, splat (i32 16)
  %interleaved.vec287 = trunc nuw <8 x i32> %i.xo to <8 x i16>
  store <8 x i16> %interleaved.vec287, ptr %next.gep283, align 2, !tbaa !24
  %index.next288 = add nuw i64 %index281, 4       ; 2 uses
  %i.xp = icmp eq i64 %index.next288, %n.vec279
  br i1 %i.xp, label %vec.epilog.middle.block289, label %vec.epilog.vector.body280, !llvm.loop !392

vec.epilog.middle.block289:                       ; preds = %vec.epilog.vector.body280
  br i1 %cmp.n290, label %.preheader.i, label %.lr.ph242.i.preheader

.lr.ph242.i.preheader:                            ; preds = %iter.check274, %vec.epilog.iter.check276, %vec.epilog.middle.block289
  %.0240.i.ph = phi i32 [ 0, %iter.check274 ], [ %i.wv, %vec.epilog.iter.check276 ], [ %i.wz, %vec.epilog.middle.block289 ]
  %.0459239.i.ph = phi ptr [ %gep257.i, %iter.check274 ], [ %i.xe, %vec.epilog.iter.check276 ], [ %i.xk, %vec.epilog.middle.block289 ]
  %.13238.i.ph = phi ptr [ %.12252.i, %iter.check274 ], [ %i.xf, %vec.epilog.iter.check276 ], [ %i.xl, %vec.epilog.middle.block289 ]
  br label %.lr.ph242.i

.preheader.i:                                     ; preds = %.lr.ph242.i, %middle.block269, %vec.epilog.middle.block289, %bb.f
  %.13.lcssa.i = phi ptr [ %.12252.i, %bb.f ], [ %i.xl, %vec.epilog.middle.block289 ], [ %i.xf, %middle.block269 ], [ %i.zh, %.lr.ph242.i ] ; 6 uses
  %.0459.lcssa.i = phi ptr [ %gep257.i, %bb.f ], [ %i.xk, %vec.epilog.middle.block289 ], [ %i.xe, %middle.block269 ], [ %i.zi, %.lr.ph242.i ] ; 5 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.wr, %vec.epilog.middle.block289 ], [ %i.wr, %middle.block269 ], [ %i.wr, %.lr.ph242.i ] ; 5 uses
  %i.xq = icmp slt i32 %.0.lcssa.i, %.sroa.speculated
  br i1 %i.xq, label %iter.check, label %._crit_edge250.i

iter.check:                                       ; preds = %.preheader.i
  %i.xr = xor i32 %.0.lcssa.i, -1
  %i.xs = add i32 %.sroa.speculated, %i.xr        ; 3 uses
  %i.xt = zext i32 %i.xs to i64
  %i.xu = add nuw nsw i64 %i.xt, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.xs, 7
  br i1 %min.iters.check, label %.lr.ph249.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check241 = icmp ult i32 %i.xs, 63
  br i1 %min.iters.check241, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.xv = and i64 %i.xu, 56
  %n.vec = and i64 %i.xu, 8589934528              ; 6 uses
  %i.xw = trunc i64 %n.vec to i32
  %i.xx = add i32 %.0.lcssa.i, %i.xw
  %i.xy = shl nuw nsw i64 %n.vec, 2
  %i.xz = getelementptr i8, ptr %.0459.lcssa.i, i64 %i.xy
  %i.ya = shl nuw nsw i64 %n.vec, 1
  %i.yb = getelementptr i8, ptr %.13.lcssa.i, i64 %i.ya ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.yc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0459.lcssa.i, i64 %i.yc ; 4 uses
  %i.yd = shl i64 %index, 1
  %next.gep242 = getelementptr i8, ptr %.13.lcssa.i, i64 %i.yd ; 4 uses
  %i.ye = getelementptr i8, ptr %next.gep, i64 64
  %i.yf = getelementptr i8, ptr %next.gep, i64 128
  %i.yg = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x i32>, ptr %next.gep, align 4, !tbaa !22
  %wide.load243 = load <16 x i32>, ptr %i.ye, align 4, !tbaa !22
  %wide.load244 = load <16 x i32>, ptr %i.yf, align 4, !tbaa !22
  %wide.load245 = load <16 x i32>, ptr %i.yg, align 4, !tbaa !22
  %i.yh = lshr <16 x i32> %wide.load, splat (i32 16)
  %i.yi = lshr <16 x i32> %wide.load243, splat (i32 16)
  %i.yj = lshr <16 x i32> %wide.load244, splat (i32 16)
  %i.yk = lshr <16 x i32> %wide.load245, splat (i32 16)
  %i.yl = trunc nuw <16 x i32> %i.yh to <16 x i16>
  %i.ym = trunc nuw <16 x i32> %i.yi to <16 x i16>
  %i.yn = trunc nuw <16 x i32> %i.yj to <16 x i16>
  %i.yo = trunc nuw <16 x i32> %i.yk to <16 x i16>
  %i.yp = getelementptr i8, ptr %next.gep242, i64 32
  %i.yq = getelementptr i8, ptr %next.gep242, i64 64
  %i.yr = getelementptr i8, ptr %next.gep242, i64 96
  store <16 x i16> %i.yl, ptr %next.gep242, align 2, !tbaa !24
  store <16 x i16> %i.ym, ptr %i.yp, align 2, !tbaa !24
  store <16 x i16> %i.yn, ptr %i.yq, align 2, !tbaa !24
  store <16 x i16> %i.yo, ptr %i.yr, align 2, !tbaa !24
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ys = icmp eq i64 %index.next, %n.vec
  br i1 %i.ys, label %middle.block, label %vector.body, !llvm.loop !393

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.xu, %n.vec
  br i1 %cmp.n, label %._crit_edge250.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.xv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph249.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec248 = and i64 %i.xu, 8589934584           ; 5 uses
  %i.yt = trunc i64 %n.vec248 to i32
  %i.yu = add i32 %.0.lcssa.i, %i.yt
  %i.yv = shl nuw nsw i64 %n.vec248, 2
  %i.yw = getelementptr i8, ptr %.0459.lcssa.i, i64 %i.yv
  %i.yx = shl nuw nsw i64 %n.vec248, 1
  %i.yy = getelementptr i8, ptr %.13.lcssa.i, i64 %i.yx ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index249 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next253, %vec.epilog.vector.body ] ; 3 uses
  %i.yz = shl i64 %index249, 2
  %next.gep250 = getelementptr i8, ptr %.0459.lcssa.i, i64 %i.yz
  %i.za = shl i64 %index249, 1
  %next.gep251 = getelementptr i8, ptr %.13.lcssa.i, i64 %i.za
  %wide.load252 = load <8 x i32>, ptr %next.gep250, align 4, !tbaa !22
  %i.zb = lshr <8 x i32> %wide.load252, splat (i32 16)
  %i.zc = trunc nuw <8 x i32> %i.zb to <8 x i16>
  store <8 x i16> %i.zc, ptr %next.gep251, align 2, !tbaa !24
  %index.next253 = add nuw i64 %index249, 8       ; 2 uses
  %i.zd = icmp eq i64 %index.next253, %n.vec248
  br i1 %i.zd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !394

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n254 = icmp eq i64 %i.xu, %n.vec248
  br i1 %cmp.n254, label %._crit_edge250.i, label %.lr.ph249.i.preheader

.lr.ph249.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1248.i.ph = phi i32 [ %.0.lcssa.i, %iter.check ], [ %i.xx, %vec.epilog.iter.check ], [ %i.yu, %vec.epilog.middle.block ]
  %.1460247.i.ph = phi ptr [ %.0459.lcssa.i, %iter.check ], [ %i.xz, %vec.epilog.iter.check ], [ %i.yw, %vec.epilog.middle.block ]
  %.14246.i.ph = phi ptr [ %.13.lcssa.i, %iter.check ], [ %i.yb, %vec.epilog.iter.check ], [ %i.yy, %vec.epilog.middle.block ]
  br label %.lr.ph249.i

.lr.ph242.i:                                      ; preds = %.lr.ph242.i.preheader, %.lr.ph242.i
  %.0240.i = phi i32 [ %i.zj, %.lr.ph242.i ], [ %.0240.i.ph, %.lr.ph242.i.preheader ]
  %.0459239.i = phi ptr [ %i.zi, %.lr.ph242.i ], [ %.0459239.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %.13238.i = phi ptr [ %i.zh, %.lr.ph242.i ], [ %.13238.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %i.ze = load <2 x i32>, ptr %.0459239.i, align 4, !tbaa !22
  %i.zf = lshr <2 x i32> %i.ze, splat (i32 16)
  %i.zg = trunc nuw <2 x i32> %i.zf to <2 x i16>
  store <2 x i16> %i.zg, ptr %.13238.i, align 2, !tbaa !24
  %i.zh = getelementptr inbounds nuw i8, ptr %.13238.i, i64 4 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.0459239.i, i64 8 ; 2 uses
  %i.zj = add nuw nsw i32 %.0240.i, 2             ; 2 uses
  %i.zk = or disjoint i32 %i.zj, 1
  %i.zl = icmp slt i32 %i.zk, %.sroa.speculated
  br i1 %i.zl, label %.lr.ph242.i, label %.preheader.i, !llvm.loop !395

.lr.ph249.i:                                      ; preds = %.lr.ph249.i.preheader, %.lr.ph249.i
  %.1248.i = phi i32 [ %i.zr, %.lr.ph249.i ], [ %.1248.i.ph, %.lr.ph249.i.preheader ]
  %.1460247.i = phi ptr [ %i.zq, %.lr.ph249.i ], [ %.1460247.i.ph, %.lr.ph249.i.preheader ] ; 2 uses
  %.14246.i = phi ptr [ %i.zp, %.lr.ph249.i ], [ %.14246.i.ph, %.lr.ph249.i.preheader ] ; 2 uses
  %i.zm = load i32, ptr %.1460247.i, align 4, !tbaa !22
  %i.zn = lshr i32 %i.zm, 16
  %i.zo = trunc nuw i32 %i.zn to i16
  store i16 %i.zo, ptr %.14246.i, align 2, !tbaa !24
  %i.zp = getelementptr inbounds nuw i8, ptr %.14246.i, i64 2 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.1460247.i, i64 4
  %i.zr = add nuw nsw i32 %.1248.i, 1             ; 2 uses
  %exitcond328.not.i = icmp eq i32 %i.zr, %.sroa.speculated
  br i1 %exitcond328.not.i, label %._crit_edge250.i, label %.lr.ph249.i, !llvm.loop !396

._crit_edge250.i:                                 ; preds = %.lr.ph249.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader.i ], [ %i.yy, %vec.epilog.middle.block ], [ %i.yb, %middle.block ], [ %i.zp, %.lr.ph249.i ]
  %indvars.iv.next330.i = add nuw nsw i64 %indvars.iv329.i, 1 ; 2 uses
  %exitcond332.not.i = icmp eq i64 %indvars.iv.next330.i, %i.ap
  br i1 %exitcond332.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f, !llvm.loop !397

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge250.i, %.preheader3.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ab ; 2 uses
  %i.zs = icmp slt i64 %indvars.iv.next, %i.ac
  %indvar.next = add i32 %indvar, 1
  br i1 %i.zs, label %.noexc, label %._crit_edge, !llvm.loop !398

._crit_edge109.split:                             ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge109.split, %bb.a
  ret void
}

declare noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv() local_unnamed_addr #2

declare noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv() local_unnamed_addr #2

declare noundef i32 @_ZN4ncnn22get_physical_cpu_countEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZN4ncnn40convolution_im2col_gemm_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %13) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.q = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !30
  store i32 %5, ptr %i.b, align 4, !tbaa !30
  store i32 %6, ptr %i.c, align 4, !tbaa !30
  store i32 %7, ptr %i.d, align 4, !tbaa !30
  store i32 %8, ptr %i.e, align 4, !tbaa !30
  store i32 %9, ptr %i.f, align 4, !tbaa !30
  store i32 %10, ptr %i.g, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !35
  %i.z = mul nsw i32 %i.y, %i.w                   ; 3 uses
  store i32 %i.z, ptr %i.i, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !32
  %i.ae = mul i32 %5, %4
  %i.af = mul i32 %i.ae, %i.ab
  %i.ag = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.ah = insertelement <2 x i32> %i.ag, i32 %i.af, i64 1
  %i.ai = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.ad, i64 1
  %i.ak = mul <2 x i32> %i.ah, %i.aj              ; 3 uses
  %i.al = extractelement <2 x i32> %i.ak, i64 0   ; 2 uses
  store i32 %i.al, ptr %i.h, align 4, !tbaa !30
  %i.am = extractelement <2 x i32> %i.ak, i64 1   ; 2 uses
  store i32 %i.am, ptr %i.j, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
end_hunk_7
begin_hunk_8_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  %i.qrj = sitofp fast <4 x i32> %i.qri to <4 x float> ; 2 uses
  %i.qrk = fcmp fast olt <4 x float> %i.qrh, %i.qrj
  %i.qrl = select <4 x i1> %i.qrk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qrm = fsub fast <4 x float> %i.qrj, %i.qrl   ; 2 uses
  %i.qrn = fneg fast <4 x float> %i.qrm           ; 2 uses
  %i.qro = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.qrn, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.qrf)
  %i.qrp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.qrn, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.qro) ; 8 uses
  %i.qrq = fmul fast <4 x float> %i.qrp, %i.qrp
  %i.qrr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qrp, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.qrs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qrr, <4 x float> nofpclass(nan inf) %i.qrp, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.qrt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qrs, <4 x float> nofpclass(nan inf) %i.qrp, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.qru = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qrt, <4 x float> nofpclass(nan inf) %i.qrp, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.qrv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qru, <4 x float> nofpclass(nan inf) %i.qrp, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.qrw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qrv, <4 x float> nofpclass(nan inf) %i.qrq, <4 x float> nofpclass(nan inf) %i.qrp)
  %i.qrx = fadd fast <4 x float> %i.qrw, splat (float 1.000000e+00)
  %i.qry = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qrm)
  %i.qrz = shl <4 x i32> %i.qry, splat (i32 23)
  %i.qsa = add <4 x i32> %i.qrz, splat (i32 1065353216)
  %i.qsb = bitcast <4 x i32> %i.qsa to <4 x float>
  %i.qsc = fmul fast <4 x float> %i.qrx, %i.qsb
  %i.qsd = fadd fast <4 x float> %i.qsc, splat (float 1.000000e+00)
  %i.qse = fdiv fast <4 x float> splat (float 2.000000e+00), %i.qsd
  %i.qsf = fadd fast <4 x float> %i.qse, splat (float -1.000000e+00)
  %i.qsg = fmul fast <4 x float> %i.qsf, %.35022
  %i.qsh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.25018, <4 x float> splat (float f0x42B0C0A5))
  %i.qsi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qsh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.qsj = fmul fast <4 x float> %i.qsi, splat (float f0x3FB8AA3B)
  %i.qsk = fadd fast <4 x float> %i.qsj, splat (float 5.000000e-01) ; 2 uses
  %i.qsl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qsk)
  %i.qsm = sitofp fast <4 x i32> %i.qsl to <4 x float> ; 2 uses
  %i.qsn = fcmp fast olt <4 x float> %i.qsk, %i.qsm
  %i.qso = select <4 x i1> %i.qsn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qsp = fsub fast <4 x float> %i.qsm, %i.qso   ; 2 uses
  %i.qsq = fneg fast <4 x float> %i.qsp           ; 2 uses
  %i.qsr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.qsq, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.qsi)
  %i.qss = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.qsq, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.qsr) ; 8 uses
  %i.qst = fmul fast <4 x float> %i.qss, %i.qss
  %i.qsu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qss, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.qsv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qsu, <4 x float> nofpclass(nan inf) %i.qss, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.qsw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qsv, <4 x float> nofpclass(nan inf) %i.qss, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.qsx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qsw, <4 x float> nofpclass(nan inf) %i.qss, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.qsy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qsx, <4 x float> nofpclass(nan inf) %i.qss, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.qsz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qsy, <4 x float> nofpclass(nan inf) %i.qst, <4 x float> nofpclass(nan inf) %i.qss)
  %i.qta = fadd fast <4 x float> %i.qsz, splat (float 1.000000e+00)
  %i.qtb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qsp)
  %i.qtc = shl <4 x i32> %i.qtb, splat (i32 23)
  %i.qtd = add <4 x i32> %i.qtc, splat (i32 1065353216)
  %i.qte = bitcast <4 x i32> %i.qtd to <4 x float>
  %i.qtf = fmul fast <4 x float> %i.qta, %i.qte
  %i.qtg = fadd fast <4 x float> %i.qtf, splat (float 1.000000e+00) ; 2 uses
  %i.qth = fcmp fast ole <4 x float> %i.qtg, zeroinitializer
  %i.qti = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qtg, <4 x float> splat (float f0x00800000))
  %i.qtj = bitcast <4 x float> %i.qti to <4 x i32> ; 2 uses
  %i.qtk = lshr <4 x i32> %i.qtj, splat (i32 23)
  %i.qtl = and <4 x i32> %i.qtj, splat (i32 -2139095041)
  %i.qtm = or disjoint <4 x i32> %i.qtl, splat (i32 1056964608)
  %i.qtn = bitcast <4 x i32> %i.qtm to <4 x float> ; 3 uses
  %i.qto = add nsw <4 x i32> %i.qtk, splat (i32 -127)
  %i.qtp = sitofp fast <4 x i32> %i.qto to <4 x float> ; 2 uses
  %i.qtq = fadd fast <4 x float> %i.qtp, splat (float 1.000000e+00)
  %i.qtr = fcmp fast olt <4 x float> %i.qtn, splat (float f0x3F3504F3) ; 2 uses
  %i.qts = select <4 x i1> %i.qtr, <4 x float> %i.qtn, <4 x float> zeroinitializer
  %i.qtt = fadd fast <4 x float> %i.qtn, splat (float -1.000000e+00)
  %i.qtu = select fast <4 x i1> %i.qtr, <4 x float> %i.qtp, <4 x float> %i.qtq ; 2 uses
  %i.qtv = fadd fast <4 x float> %i.qtt, %i.qts   ; 12 uses
  %i.qtw = fmul fast <4 x float> %i.qtv, %i.qtv   ; 2 uses
  %i.qtx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qtv, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.qty = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qtx, <4 x float> nofpclass(nan inf) %i.qtv, <4 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.qtz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qty, <4 x float> nofpclass(nan inf) %i.qtv, <4 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.qua = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qtz, <4 x float> nofpclass(nan inf) %i.qtv, <4 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.qub = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qua, <4 x float> nofpclass(nan inf) %i.qtv, <4 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.quc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qub, <4 x float> nofpclass(nan inf) %i.qtv, <4 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.qud = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.quc, <4 x float> nofpclass(nan inf) %i.qtv, <4 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.que = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qud, <4 x float> nofpclass(nan inf) %i.qtv, <4 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.quf = fmul fast <4 x float> %i.qtw, %i.qtv
  %i.qug = fmul fast <4 x float> %i.quf, %i.que
  %i.quh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qtu, <4 x float> nofpclass(nan inf) splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.qug)
  %i.qui = fneg fast <4 x float> %i.qtw
  %i.quj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.qui, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.quh)
  %i.quk = fadd fast <4 x float> %i.quj, %i.qtv
  %i.qul = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qtu, <4 x float> nofpclass(nan inf) splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.quk)
  %.neg8814 = fmul fast <4 x float> %i.qul, splat (float -2.000000e+00)
  %i.qum = select fast <4 x i1> %i.qth, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg8814
  %i.qun = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qum, <4 x float> splat (float f0x42B0C0A5))
  %i.quo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qun, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.qup = fmul fast <4 x float> %i.quo, splat (float f0x3FB8AA3B)
  %i.quq = fadd fast <4 x float> %i.qup, splat (float 5.000000e-01) ; 2 uses
  %i.qur = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.quq)
  %i.qus = sitofp fast <4 x i32> %i.qur to <4 x float> ; 2 uses
  %i.qut = fcmp fast olt <4 x float> %i.quq, %i.qus
  %i.quu = select <4 x i1> %i.qut, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.quv = fsub fast <4 x float> %i.qus, %i.quu   ; 2 uses
  %i.quw = fneg fast <4 x float> %i.quv           ; 2 uses
  %i.qux = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.quw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.quo)
  %i.quy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.quw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.qux) ; 8 uses
  %i.quz = fmul fast <4 x float> %i.quy, %i.quy
  %i.qva = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.quy, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.qvb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qva, <4 x float> nofpclass(nan inf) %i.quy, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.qvc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qvb, <4 x float> nofpclass(nan inf) %i.quy, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.qvd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qvc, <4 x float> nofpclass(nan inf) %i.quy, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.qve = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qvd, <4 x float> nofpclass(nan inf) %i.quy, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.qvf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qve, <4 x float> nofpclass(nan inf) %i.quz, <4 x float> nofpclass(nan inf) %i.quy)
  %i.qvg = fadd fast <4 x float> %i.qvf, splat (float 1.000000e+00)
  %i.qvh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.quv)
  %i.qvi = shl <4 x i32> %i.qvh, splat (i32 23)
  %i.qvj = add <4 x i32> %i.qvi, splat (i32 1065353216)
  %i.qvk = bitcast <4 x i32> %i.qvj to <4 x float>
  %i.qvl = fmul fast <4 x float> %i.qvg, %i.qvk
  %i.qvm = fadd fast <4 x float> %i.qvl, splat (float 1.000000e+00)
  %i.qvn = fdiv fast <4 x float> splat (float 2.000000e+00), %i.qvm
  %i.qvo = fadd fast <4 x float> %i.qvn, splat (float -1.000000e+00)
  %i.qvp = fmul fast <4 x float> %i.qvo, %.25018
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2837

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8785: ; preds = %bb.fa
  %i.qvq = load ptr, ptr %10, align 8, !tbaa !15  ; 2 uses
  %i.qvr = load float, ptr %i.qvq, align 4, !tbaa !22
  %i.qvs = insertelement <4 x float> poison, float %i.qvr, i64 0
  %i.qvt = shufflevector <4 x float> %i.qvs, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qvu = getelementptr inbounds nuw i8, ptr %i.qvq, i64 4
  %i.qvv = load float, ptr %i.qvu, align 4, !tbaa !22
  %i.qvw = insertelement <4 x float> poison, float %i.qvv, i64 0
  %i.qvx = shufflevector <4 x float> %i.qvw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qvy = fmul fast <4 x float> %i.qvt, %.35022
  %i.qvz = fadd fast <4 x float> %i.qvy, %i.qvx
  %i.qwa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qvz, <4 x float> zeroinitializer)
  %i.qwb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qwa, <4 x float> splat (float 1.000000e+00))
  %i.qwc = fmul fast <4 x float> %i.qwb, %.35022
  %i.qwd = fmul fast <4 x float> %i.qvt, %.25018
  %i.qwe = fadd fast <4 x float> %i.qwd, %i.qvx
  %i.qwf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qwe, <4 x float> zeroinitializer)
  %i.qwg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qwf, <4 x float> splat (float 1.000000e+00))
  %i.qwh = fmul fast <4 x float> %i.qwg, %.25018
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2837

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2837:  ; preds = %bb.fa, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8773, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8776, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8779, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8782, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8785
  %.0.i28388772 = phi <4 x float> [ %i.qwc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8785 ], [ %i.qlu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread ], [ %i.qmd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8773 ], [ %i.qmr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8776 ], [ %i.qnv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8779 ], [ %i.qsg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8782 ], [ %.35022, %bb.fa ]
  %.0.i2836 = phi nsz <4 x float> [ %i.qwh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8785 ], [ %i.qlv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread ], [ %i.qmh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8773 ], [ %i.qmt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8776 ], [ %i.qox, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8779 ], [ %i.qvp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2839.thread8782 ], [ %.25018, %bb.fa ]
  %i.qwi = shufflevector <4 x float> %.0.i28388772, <4 x float> %.0.i2836, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qwj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qwi) ; 2 uses
  %i.qwk = bitcast <8 x bfloat> %i.qwj to <2 x i64>
  %i.qwl = extractelement <2 x i64> %i.qwk, i64 0
  store i64 %i.qwl, ptr %.424829556, align 1, !tbaa !18
  %i.qwm = getelementptr inbounds i8, ptr %.424829556, i64 %i.lei
  %i.qwn = bitcast <8 x bfloat> %i.qwj to <2 x i64>
  %i.qwo = extractelement <2 x i64> %i.qwn, i64 1
  store i64 %i.qwo, ptr %i.qwm, align 1, !tbaa !18
  %i.qwp = getelementptr inbounds nuw i8, ptr %.424829556, i64 8
  br label %bb.fc

bb.fb:                                            ; preds = %._crit_edge9552
  store <4 x float> %.25021.lcssa, ptr %.189559, align 16, !tbaa !18
  %i.qwq = getelementptr inbounds nuw i8, ptr %.189559, i64 16
  store <4 x float> %.15017.lcssa, ptr %i.qwq, align 16, !tbaa !18
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2837
  %.52483 = phi ptr [ %i.qwp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit2837 ], [ %.424829556, %bb.fb ] ; 2 uses
  %i.qwr = getelementptr inbounds nuw i8, ptr %.189559, i64 32 ; 2 uses
  %i.qws = add nuw nsw i32 %.224649558, 4         ; 3 uses
  %i.qwt = or disjoint i32 %i.qws, 3
  %i.qwu = icmp slt i32 %i.qwt, %5
  br i1 %i.qwu, label %bb.ev, label %.preheader8895, !llvm.loop !542

bb.fd:                                            ; preds = %.lr.ph9591, %bb.fp
  %.199590 = phi ptr [ %.18.lcssa, %.lr.ph9591 ], [ %i.rlp, %bb.fp ] ; 4 uses
  %.324659589 = phi i32 [ %.22464.lcssa, %.lr.ph9591 ], [ %i.rlq, %bb.fp ]
  %.924759588 = phi ptr [ %.62472.lcssa, %.lr.ph9591 ], [ %.112477.lcssa, %bb.fp ] ; 10 uses
  %.624849587 = phi ptr [ %.42482.lcssa, %.lr.ph9591 ], [ %.72485, %bb.fp ] ; 4 uses
  br i1 %i.leg, label %bb.fe, label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  br i1 %.not2599, label %bb.fh, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.qwv = load <2 x float>, ptr %i.ouq, align 4, !tbaa !22
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fd
  %i.qww = load <2 x float>, ptr %.199590, align 4, !tbaa !22
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fe, %bb.ff, %bb.fg
  %i.qwx = phi <2 x float> [ %i.qwv, %bb.ff ], [ %i.qww, %bb.fg ], [ zeroinitializer, %bb.fe ] ; 4 uses
  %i.qwy = extractelement <2 x float> %i.qwx, i64 1 ; 3 uses
  %i.qwz = extractelement <2 x float> %i.qwx, i64 0 ; 3 uses
  br i1 %i.leh, label %iter.check10658, label %.preheader8891

iter.check10658:                                  ; preds = %bb.fh
  br i1 %min.iters.check10589, label %.lr.ph9571.preheader, label %vector.main.loop.iter.check10590

vector.main.loop.iter.check10590:                 ; preds = %iter.check10658
  br i1 %min.iters.check10591, label %vec.epilog.ph10662, label %vector.ph10592

vector.ph10592:                                   ; preds = %vector.main.loop.iter.check10590
  %i.qxa = getelementptr i8, ptr %.924759588, i64 %i.lfl
  %i.qxb = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.qwy, i64 0
  %i.qxc = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.qwz, i64 0
  br label %vector.body10594

vector.body10594:                                 ; preds = %vector.ph10592, %vector.body10594
  %index10595 = phi i64 [ 0, %vector.ph10592 ], [ %index.next10644, %vector.body10594 ] ; 3 uses
  %vec.phi10596 = phi <16 x float> [ %i.qxb, %vector.ph10592 ], [ %i.rbl, %vector.body10594 ]
  %vec.phi10597 = phi <16 x float> [ zeroinitializer, %vector.ph10592 ], [ %i.rbm, %vector.body10594 ]
  %vec.phi10598 = phi <16 x float> [ zeroinitializer, %vector.ph10592 ], [ %i.rbn, %vector.body10594 ]
  %vec.phi10599 = phi <16 x float> [ zeroinitializer, %vector.ph10592 ], [ %i.rbo, %vector.body10594 ]
  %vec.phi10600 = phi <16 x float> [ %i.qxc, %vector.ph10592 ], [ %i.rav, %vector.body10594 ]
  %vec.phi10601 = phi <16 x float> [ zeroinitializer, %vector.ph10592 ], [ %i.raw, %vector.body10594 ]
  %vec.phi10602 = phi <16 x float> [ zeroinitializer, %vector.ph10592 ], [ %i.rax, %vector.body10594 ]
  %vec.phi10603 = phi <16 x float> [ zeroinitializer, %vector.ph10592 ], [ %i.ray, %vector.body10594 ]
  %i.qxd = shl i64 %index10595, 3                 ; 4 uses
  %next.gep10604 = getelementptr i8, ptr %.39597, i64 %i.qxd
  %i.qxe = getelementptr i8, ptr %.39597, i64 %i.qxd
  %next.gep10605 = getelementptr i8, ptr %i.qxe, i64 128
  %i.qxf = getelementptr i8, ptr %.39597, i64 %i.qxd
  %next.gep10606 = getelementptr i8, ptr %i.qxf, i64 256
  %i.qxg = getelementptr i8, ptr %.39597, i64 %i.qxd
  %next.gep10607 = getelementptr i8, ptr %i.qxg, i64 384
  %i.qxh = shl i64 %index10595, 2                 ; 4 uses
  %next.gep10608 = getelementptr i8, ptr %.924759588, i64 %i.qxh
  %i.qxi = getelementptr i8, ptr %.924759588, i64 %i.qxh
  %next.gep10609 = getelementptr i8, ptr %i.qxi, i64 64
  %i.qxj = getelementptr i8, ptr %.924759588, i64 %i.qxh
  %next.gep10610 = getelementptr i8, ptr %i.qxj, i64 128
  %i.qxk = getelementptr i8, ptr %.924759588, i64 %i.qxh
  %next.gep10611 = getelementptr i8, ptr %i.qxk, i64 192
  %wide.vec10612 = load <64 x i16>, ptr %next.gep10604, align 2, !tbaa !24 ; 4 uses
  %strided.vec10613 = shufflevector <64 x i16> %wide.vec10612, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec10614 = shufflevector <64 x i16> %wide.vec10612, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec10615 = shufflevector <64 x i16> %wide.vec10612, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec10616 = shufflevector <64 x i16> %wide.vec10612, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec10617 = load <64 x i16>, ptr %next.gep10605, align 2, !tbaa !24 ; 4 uses
  %strided.vec10618 = shufflevector <64 x i16> %wide.vec10617, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec10619 = shufflevector <64 x i16> %wide.vec10617, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec10620 = shufflevector <64 x i16> %wide.vec10617, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec10621 = shufflevector <64 x i16> %wide.vec10617, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec10622 = load <64 x i16>, ptr %next.gep10606, align 2, !tbaa !24 ; 4 uses
  %strided.vec10623 = shufflevector <64 x i16> %wide.vec10622, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec10624 = shufflevector <64 x i16> %wide.vec10622, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec10625 = shufflevector <64 x i16> %wide.vec10622, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec10626 = shufflevector <64 x i16> %wide.vec10622, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec10627 = load <64 x i16>, ptr %next.gep10607, align 2, !tbaa !24 ; 4 uses
  %strided.vec10628 = shufflevector <64 x i16> %wide.vec10627, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec10629 = shufflevector <64 x i16> %wide.vec10627, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec10630 = shufflevector <64 x i16> %wide.vec10627, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec10631 = shufflevector <64 x i16> %wide.vec10627, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.qxl = zext <16 x i16> %strided.vec10613 to <16 x i32>
  %i.qxm = zext <16 x i16> %strided.vec10618 to <16 x i32>
  %i.qxn = zext <16 x i16> %strided.vec10623 to <16 x i32>
  %i.qxo = zext <16 x i16> %strided.vec10628 to <16 x i32>
  %i.qxp = shl nuw <16 x i32> %i.qxl, splat (i32 16)
  %i.qxq = shl nuw <16 x i32> %i.qxm, splat (i32 16)
  %i.qxr = shl nuw <16 x i32> %i.qxn, splat (i32 16)
  %i.qxs = shl nuw <16 x i32> %i.qxo, splat (i32 16)
  %i.qxt = bitcast <16 x i32> %i.qxp to <16 x float>
  %i.qxu = bitcast <16 x i32> %i.qxq to <16 x float>
  %i.qxv = bitcast <16 x i32> %i.qxr to <16 x float>
  %i.qxw = bitcast <16 x i32> %i.qxs to <16 x float>
  %i.qxx = zext <16 x i16> %strided.vec10614 to <16 x i32>
  %i.qxy = zext <16 x i16> %strided.vec10619 to <16 x i32>
  %i.qxz = zext <16 x i16> %strided.vec10624 to <16 x i32>
  %i.qya = zext <16 x i16> %strided.vec10629 to <16 x i32>
  %i.qyb = shl nuw <16 x i32> %i.qxx, splat (i32 16)
  %i.qyc = shl nuw <16 x i32> %i.qxy, splat (i32 16)
  %i.qyd = shl nuw <16 x i32> %i.qxz, splat (i32 16)
  %i.qye = shl nuw <16 x i32> %i.qya, splat (i32 16)
  %i.qyf = bitcast <16 x i32> %i.qyb to <16 x float>
  %i.qyg = bitcast <16 x i32> %i.qyc to <16 x float>
  %i.qyh = bitcast <16 x i32> %i.qyd to <16 x float>
  %i.qyi = bitcast <16 x i32> %i.qye to <16 x float>
  %i.qyj = zext <16 x i16> %strided.vec10615 to <16 x i32>
  %i.qyk = zext <16 x i16> %strided.vec10620 to <16 x i32>
  %i.qyl = zext <16 x i16> %strided.vec10625 to <16 x i32>
  %i.qym = zext <16 x i16> %strided.vec10630 to <16 x i32>
  %i.qyn = shl nuw <16 x i32> %i.qyj, splat (i32 16)
  %i.qyo = shl nuw <16 x i32> %i.qyk, splat (i32 16)
  %i.qyp = shl nuw <16 x i32> %i.qyl, splat (i32 16)
  %i.qyq = shl nuw <16 x i32> %i.qym, splat (i32 16)
  %i.qyr = bitcast <16 x i32> %i.qyn to <16 x float>
  %i.qys = bitcast <16 x i32> %i.qyo to <16 x float>
  %i.qyt = bitcast <16 x i32> %i.qyp to <16 x float>
  %i.qyu = bitcast <16 x i32> %i.qyq to <16 x float>
  %i.qyv = zext <16 x i16> %strided.vec10616 to <16 x i32>
  %i.qyw = zext <16 x i16> %strided.vec10621 to <16 x i32>
  %i.qyx = zext <16 x i16> %strided.vec10626 to <16 x i32>
  %i.qyy = zext <16 x i16> %strided.vec10631 to <16 x i32>
  %i.qyz = shl nuw <16 x i32> %i.qyv, splat (i32 16)
  %i.qza = shl nuw <16 x i32> %i.qyw, splat (i32 16)
  %i.qzb = shl nuw <16 x i32> %i.qyx, splat (i32 16)
  %i.qzc = shl nuw <16 x i32> %i.qyy, splat (i32 16)
  %i.qzd = bitcast <16 x i32> %i.qyz to <16 x float>
  %i.qze = bitcast <16 x i32> %i.qza to <16 x float>
  %i.qzf = bitcast <16 x i32> %i.qzb to <16 x float>
  %i.qzg = bitcast <16 x i32> %i.qzc to <16 x float>
  %wide.vec10632 = load <32 x i16>, ptr %next.gep10608, align 2, !tbaa !24
  %i.qzh = freeze <32 x i16> %wide.vec10632       ; 2 uses
  %i.qzi = bitcast <32 x i16> %i.qzh to <16 x i32>
  %i.qzj = bitcast <32 x i16> %i.qzh to <16 x i32>
  %i.qzk = and <16 x i32> %i.qzj, splat (i32 -65536)
  %wide.vec10635 = load <32 x i16>, ptr %next.gep10609, align 2, !tbaa !24
  %i.qzl = freeze <32 x i16> %wide.vec10635       ; 2 uses
  %i.qzm = bitcast <32 x i16> %i.qzl to <16 x i32>
  %i.qzn = bitcast <32 x i16> %i.qzl to <16 x i32>
  %i.qzo = and <16 x i32> %i.qzn, splat (i32 -65536)
  %wide.vec10638 = load <32 x i16>, ptr %next.gep10610, align 2, !tbaa !24
  %i.qzp = freeze <32 x i16> %wide.vec10638       ; 2 uses
  %i.qzq = bitcast <32 x i16> %i.qzp to <16 x i32>
  %i.qzr = bitcast <32 x i16> %i.qzp to <16 x i32>
  %i.qzs = and <16 x i32> %i.qzr, splat (i32 -65536)
  %wide.vec10641 = load <32 x i16>, ptr %next.gep10611, align 2, !tbaa !24
  %i.qzt = freeze <32 x i16> %wide.vec10641       ; 2 uses
  %i.qzu = bitcast <32 x i16> %i.qzt to <16 x i32>
  %i.qzv = bitcast <32 x i16> %i.qzt to <16 x i32>
  %i.qzw = and <16 x i32> %i.qzv, splat (i32 -65536)
  %i.qzx = shl <16 x i32> %i.qzi, splat (i32 16)
  %i.qzy = shl <16 x i32> %i.qzm, splat (i32 16)
  %i.qzz = shl <16 x i32> %i.qzq, splat (i32 16)
  %i.raa = shl <16 x i32> %i.qzu, splat (i32 16)
  %i.rab = bitcast <16 x i32> %i.qzx to <16 x float> ; 2 uses
  %i.rac = bitcast <16 x i32> %i.qzy to <16 x float> ; 2 uses
  %i.rad = bitcast <16 x i32> %i.qzz to <16 x float> ; 2 uses
  %i.rae = bitcast <16 x i32> %i.raa to <16 x float> ; 2 uses
  %i.raf = bitcast <16 x i32> %i.qzk to <16 x float> ; 2 uses
  %i.rag = bitcast <16 x i32> %i.qzo to <16 x float> ; 2 uses
  %i.rah = bitcast <16 x i32> %i.qzs to <16 x float> ; 2 uses
  %i.rai = bitcast <16 x i32> %i.qzw to <16 x float> ; 2 uses
  %i.raj = fmul fast <16 x float> %i.rab, %i.qxt
  %i.rak = fmul fast <16 x float> %i.rac, %i.qxu
  %i.ral = fmul fast <16 x float> %i.rad, %i.qxv
  %i.ram = fmul fast <16 x float> %i.rae, %i.qxw
  %i.ran = fmul fast <16 x float> %i.raf, %i.qyf
  %i.rao = fmul fast <16 x float> %i.rag, %i.qyg
  %i.rap = fmul fast <16 x float> %i.rah, %i.qyh
  %i.raq = fmul fast <16 x float> %i.rai, %i.qyi
  %i.rar = fadd fast <16 x float> %i.raj, %vec.phi10600
  %i.ras = fadd fast <16 x float> %i.rak, %vec.phi10601
  %i.rat = fadd fast <16 x float> %i.ral, %vec.phi10602
  %i.rau = fadd fast <16 x float> %i.ram, %vec.phi10603
  %i.rav = fadd fast <16 x float> %i.rar, %i.ran  ; 2 uses
  %i.raw = fadd fast <16 x float> %i.ras, %i.rao  ; 2 uses
  %i.rax = fadd fast <16 x float> %i.rat, %i.rap  ; 2 uses
  %i.ray = fadd fast <16 x float> %i.rau, %i.raq  ; 2 uses
  %i.raz = fmul fast <16 x float> %i.rab, %i.qyr
  %i.rba = fmul fast <16 x float> %i.rac, %i.qys
  %i.rbb = fmul fast <16 x float> %i.rad, %i.qyt
  %i.rbc = fmul fast <16 x float> %i.rae, %i.qyu
  %i.rbd = fmul fast <16 x float> %i.raf, %i.qzd
  %i.rbe = fmul fast <16 x float> %i.rag, %i.qze
  %i.rbf = fmul fast <16 x float> %i.rah, %i.qzf
  %i.rbg = fmul fast <16 x float> %i.rai, %i.qzg
  %i.rbh = fadd fast <16 x float> %i.raz, %vec.phi10596
  %i.rbi = fadd fast <16 x float> %i.rba, %vec.phi10597
  %i.rbj = fadd fast <16 x float> %i.rbb, %vec.phi10598
  %i.rbk = fadd fast <16 x float> %i.rbc, %vec.phi10599
  %i.rbl = fadd fast <16 x float> %i.rbh, %i.rbd  ; 2 uses
  %i.rbm = fadd fast <16 x float> %i.rbi, %i.rbe  ; 2 uses
  %i.rbn = fadd fast <16 x float> %i.rbj, %i.rbf  ; 2 uses
  %i.rbo = fadd fast <16 x float> %i.rbk, %i.rbg  ; 2 uses
  %index.next10644 = add nuw i64 %index10595, 64  ; 2 uses
  %i.rbp = icmp eq i64 %index.next10644, %n.vec10593
  br i1 %i.rbp, label %middle.block10645, label %vector.body10594, !llvm.loop !543

middle.block10645:                                ; preds = %vector.body10594
  %bin.rdx10646 = fadd fast <16 x float> %i.rbm, %i.rbl
  %bin.rdx10647 = fadd fast <16 x float> %i.rbn, %bin.rdx10646
  %bin.rdx10648 = fadd fast <16 x float> %i.rbo, %bin.rdx10647
  %i.rbq = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx10648) ; 2 uses
  %bin.rdx10649 = fadd fast <16 x float> %i.raw, %i.rav
  %bin.rdx10650 = fadd fast <16 x float> %i.rax, %bin.rdx10649
  %bin.rdx10651 = fadd fast <16 x float> %i.ray, %bin.rdx10650
  %i.rbr = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx10651) ; 2 uses
  %i.rbs = insertelement <2 x float> poison, float %i.rbr, i64 0
  %i.rbt = insertelement <2 x float> %i.rbs, float %i.rbq, i64 1 ; 2 uses
  br i1 %cmp.n10652, label %.preheader8891.loopexit, label %vec.epilog.iter.check10660

vec.epilog.iter.check10660:                       ; preds = %middle.block10645
  br i1 %min.epilog.iters.check10661, label %.lr.ph9571.preheader, label %vec.epilog.ph10662, !prof !29

vec.epilog.ph10662:                               ; preds = %vector.main.loop.iter.check10590, %vec.epilog.iter.check10660
  %vec.epilog.resume.val10653 = phi i64 [ %n.vec10593, %vec.epilog.iter.check10660 ], [ 0, %vector.main.loop.iter.check10590 ]
  %bc.merge.rdx10655 = phi float [ %i.rbq, %vec.epilog.iter.check10660 ], [ %i.qwy, %vector.main.loop.iter.check10590 ]
  %bc.merge.rdx10656 = phi float [ %i.rbr, %vec.epilog.iter.check10660 ], [ %i.qwz, %vector.main.loop.iter.check10590 ]
  %i.rbu = getelementptr i8, ptr %.924759588, i64 %i.lfp
  %i.rbv = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx10655, i64 0
  %i.rbw = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx10656, i64 0
  br label %vec.epilog.vector.body10664

vec.epilog.vector.body10664:                      ; preds = %vec.epilog.vector.body10664, %vec.epilog.ph10662
  %index10665 = phi i64 [ %vec.epilog.resume.val10653, %vec.epilog.ph10662 ], [ %index.next10678, %vec.epilog.vector.body10664 ] ; 3 uses
  %vec.phi10666 = phi <8 x float> [ %i.rbv, %vec.epilog.ph10662 ], [ %i.rcz, %vec.epilog.vector.body10664 ]
  %vec.phi10667 = phi <8 x float> [ %i.rbw, %vec.epilog.ph10662 ], [ %i.rcv, %vec.epilog.vector.body10664 ]
  %i.rbx = shl i64 %index10665, 3
  %next.gep10668 = getelementptr i8, ptr %.39597, i64 %i.rbx
  %i.rby = shl i64 %index10665, 2
  %next.gep10669 = getelementptr i8, ptr %.924759588, i64 %i.rby
  %wide.vec10670 = load <32 x i16>, ptr %next.gep10668, align 2, !tbaa !24 ; 4 uses
  %strided.vec10671 = shufflevector <32 x i16> %wide.vec10670, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec10672 = shufflevector <32 x i16> %wide.vec10670, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec10673 = shufflevector <32 x i16> %wide.vec10670, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec10674 = shufflevector <32 x i16> %wide.vec10670, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.rbz = zext <8 x i16> %strided.vec10671 to <8 x i32>
  %i.rca = shl nuw <8 x i32> %i.rbz, splat (i32 16)
  %i.rcb = bitcast <8 x i32> %i.rca to <8 x float>
  %i.rcc = zext <8 x i16> %strided.vec10672 to <8 x i32>
  %i.rcd = shl nuw <8 x i32> %i.rcc, splat (i32 16)
  %i.rce = bitcast <8 x i32> %i.rcd to <8 x float>
  %i.rcf = zext <8 x i16> %strided.vec10673 to <8 x i32>
  %i.rcg = shl nuw <8 x i32> %i.rcf, splat (i32 16)
  %i.rch = bitcast <8 x i32> %i.rcg to <8 x float>
  %i.rci = zext <8 x i16> %strided.vec10674 to <8 x i32>
  %i.rcj = shl nuw <8 x i32> %i.rci, splat (i32 16)
  %i.rck = bitcast <8 x i32> %i.rcj to <8 x float>
  %wide.vec10675 = load <16 x i16>, ptr %next.gep10669, align 2, !tbaa !24
  %i.rcl = freeze <16 x i16> %wide.vec10675       ; 2 uses
  %i.rcm = bitcast <16 x i16> %i.rcl to <8 x i32>
  %i.rcn = bitcast <16 x i16> %i.rcl to <8 x i32>
  %i.rco = and <8 x i32> %i.rcn, splat (i32 -65536)
  %i.rcp = shl <8 x i32> %i.rcm, splat (i32 16)
  %i.rcq = bitcast <8 x i32> %i.rcp to <8 x float> ; 2 uses
  %i.rcr = bitcast <8 x i32> %i.rco to <8 x float> ; 2 uses
  %i.rcs = fmul fast <8 x float> %i.rcq, %i.rcb
  %i.rct = fmul fast <8 x float> %i.rcr, %i.rce
  %i.rcu = fadd fast <8 x float> %i.rcs, %vec.phi10667
  %i.rcv = fadd fast <8 x float> %i.rcu, %i.rct   ; 2 uses
  %i.rcw = fmul fast <8 x float> %i.rcq, %i.rch
  %i.rcx = fmul fast <8 x float> %i.rcr, %i.rck
  %i.rcy = fadd fast <8 x float> %i.rcw, %vec.phi10666
  %i.rcz = fadd fast <8 x float> %i.rcy, %i.rcx   ; 2 uses
  %index.next10678 = add nuw i64 %index10665, 8   ; 2 uses
  %i.rda = icmp eq i64 %index.next10678, %n.vec10663
  br i1 %i.rda, label %vec.epilog.middle.block10679, label %vec.epilog.vector.body10664, !llvm.loop !544

vec.epilog.middle.block10679:                     ; preds = %vec.epilog.vector.body10664
  %i.rdb = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.rcz)
  %i.rdc = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.rcv)
  %i.rdd = insertelement <2 x float> poison, float %i.rdc, i64 0
  %i.rde = insertelement <2 x float> %i.rdd, float %i.rdb, i64 1 ; 2 uses
  br i1 %cmp.n10680, label %.preheader8891.loopexit, label %.lr.ph9571.preheader

.lr.ph9571.preheader:                             ; preds = %iter.check10658, %vec.epilog.iter.check10660, %vec.epilog.middle.block10679
  %.024369569.ph = phi i32 [ 0, %iter.check10658 ], [ %i.lfj, %vec.epilog.iter.check10660 ], [ %i.lfn, %vec.epilog.middle.block10679 ]
  %.024389568.ph = phi ptr [ %.39597, %iter.check10658 ], [ %i.qhr, %vec.epilog.iter.check10660 ], [ %i.qhs, %vec.epilog.middle.block10679 ]
  %.1024769565.ph = phi ptr [ %.924759588, %iter.check10658 ], [ %i.qxa, %vec.epilog.iter.check10660 ], [ %i.rbu, %vec.epilog.middle.block10679 ]
  %.ph10865 = phi <2 x float> [ %i.qwx, %iter.check10658 ], [ %i.rbt, %vec.epilog.iter.check10660 ], [ %i.rde, %vec.epilog.middle.block10679 ]
  br label %.lr.ph9571

.preheader8891.loopexit:                          ; preds = %.lr.ph9571, %vec.epilog.middle.block10679, %middle.block10645
  %.lcssa10360 = phi ptr [ %i.qhs, %vec.epilog.middle.block10679 ], [ %i.qhr, %middle.block10645 ], [ %i.rin, %.lr.ph9571 ]
  %i.rdf = phi <2 x float> [ %i.rde, %vec.epilog.middle.block10679 ], [ %i.rbt, %middle.block10645 ], [ %i.rim, %.lr.ph9571 ] ; 3 uses
  %i.rdg = extractelement <2 x float> %i.rdf, i64 1
  %i.rdh = extractelement <2 x float> %i.rdf, i64 0
  %i.rdi = getelementptr i8, ptr %.924759588, i64 %i.let
  %scevgep10028 = getelementptr i8, ptr %i.rdi, i64 4
  br label %.preheader8891

.preheader8891:                                   ; preds = %.preheader8891.loopexit, %bb.fh
  %.102476.lcssa = phi ptr [ %.924759588, %bb.fh ], [ %scevgep10028, %.preheader8891.loopexit ] ; 6 uses
  %.12444.lcssa = phi float [ %i.qwz, %bb.fh ], [ %i.rdh, %.preheader8891.loopexit ]
  %.12441.lcssa = phi float [ %i.qwy, %bb.fh ], [ %i.rdg, %.preheader8891.loopexit ]
  %.02438.lcssa = phi ptr [ %.39597, %bb.fh ], [ %.lcssa10360, %.preheader8891.loopexit ] ; 8 uses
  %.02436.lcssa = phi i32 [ 0, %bb.fh ], [ %i.len, %.preheader8891.loopexit ] ; 5 uses
  %i.rdj = phi <2 x float> [ %i.qwx, %bb.fh ], [ %i.rdf, %.preheader8891.loopexit ] ; 3 uses
  %i.rdk = icmp slt i32 %.02436.lcssa, %7
  br i1 %i.rdk, label %iter.check, label %._crit_edge9583

iter.check:                                       ; preds = %.preheader8891
  %i.rdl = xor i32 %.02436.lcssa, -1
  %i.rdm = add i32 %7, %i.rdl                     ; 3 uses
  %i.rdn = zext i32 %i.rdm to i64
  %i.rdo = add nuw nsw i64 %i.rdn, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.rdm, 7
  br i1 %min.iters.check, label %.lr.ph9582.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10539 = icmp ult i32 %i.rdm, 63
  br i1 %min.iters.check10539, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.rdp = and i64 %i.rdo, 56
  %n.vec = and i64 %i.rdo, 8589934528             ; 6 uses
  %i.rdq = trunc i64 %n.vec to i32
  %i.rdr = add i32 %.02436.lcssa, %i.rdq
  %i.rds = shl nuw nsw i64 %n.vec, 2
  %i.rdt = getelementptr i8, ptr %.02438.lcssa, i64 %i.rds
  %i.rdu = shl nuw nsw i64 %n.vec, 1
  %i.rdv = getelementptr i8, ptr %.102476.lcssa, i64 %i.rdu ; 2 uses
  %i.rdw = shufflevector <2 x float> %i.rdj, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.rdx = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.rdw, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rdy = shufflevector <16 x float> %i.rdw, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <16 x float> [ %i.rdx, %vector.ph ], [ %i.rgh, %vector.body ]
  %vec.phi10540 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.rgi, %vector.body ]
  %vec.phi10541 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.rgj, %vector.body ]
  %vec.phi10542 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.rgk, %vector.body ]
  %vec.phi10543 = phi <16 x float> [ %i.rdy, %vector.ph ], [ %i.rfv, %vector.body ]
  %vec.phi10544 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.rfw, %vector.body ]
  %vec.phi10545 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.rfx, %vector.body ]
  %vec.phi10546 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.rfy, %vector.body ]
  %i.rdz = shl i64 %index, 2                      ; 4 uses
  %next.gep = getelementptr i8, ptr %.02438.lcssa, i64 %i.rdz
  %i.rea = getelementptr i8, ptr %.02438.lcssa, i64 %i.rdz
  %next.gep10547 = getelementptr i8, ptr %i.rea, i64 64
  %i.reb = getelementptr i8, ptr %.02438.lcssa, i64 %i.rdz
  %next.gep10548 = getelementptr i8, ptr %i.reb, i64 128
  %i.rec = getelementptr i8, ptr %.02438.lcssa, i64 %i.rdz
  %next.gep10549 = getelementptr i8, ptr %i.rec, i64 192
  %i.red = shl i64 %index, 1
  %next.gep10550 = getelementptr i8, ptr %.102476.lcssa, i64 %i.red ; 4 uses
  %wide.vec = load <32 x i16>, ptr %next.gep, align 2, !tbaa !24
  %i.ree = freeze <32 x i16> %wide.vec            ; 2 uses
  %i.ref = bitcast <32 x i16> %i.ree to <16 x i32>
  %i.reg = bitcast <32 x i16> %i.ree to <16 x i32>
  %i.reh = and <16 x i32> %i.reg, splat (i32 -65536)
  %wide.vec10552 = load <32 x i16>, ptr %next.gep10547, align 2, !tbaa !24
  %i.rei = freeze <32 x i16> %wide.vec10552       ; 2 uses
  %i.rej = bitcast <32 x i16> %i.rei to <16 x i32>
  %i.rek = bitcast <32 x i16> %i.rei to <16 x i32>
  %i.rel = and <16 x i32> %i.rek, splat (i32 -65536)
  %wide.vec10555 = load <32 x i16>, ptr %next.gep10548, align 2, !tbaa !24
  %i.rem = freeze <32 x i16> %wide.vec10555       ; 2 uses
  %i.ren = bitcast <32 x i16> %i.rem to <16 x i32>
  %i.reo = bitcast <32 x i16> %i.rem to <16 x i32>
  %i.rep = and <16 x i32> %i.reo, splat (i32 -65536)
  %wide.vec10558 = load <32 x i16>, ptr %next.gep10549, align 2, !tbaa !24
  %i.req = freeze <32 x i16> %wide.vec10558       ; 2 uses
  %i.rer = bitcast <32 x i16> %i.req to <16 x i32>
  %i.res = bitcast <32 x i16> %i.req to <16 x i32>
  %i.ret = and <16 x i32> %i.res, splat (i32 -65536)
  %i.reu = shl <16 x i32> %i.ref, splat (i32 16)
  %i.rev = shl <16 x i32> %i.rej, splat (i32 16)
  %i.rew = shl <16 x i32> %i.ren, splat (i32 16)
  %i.rex = shl <16 x i32> %i.rer, splat (i32 16)
  %i.rey = bitcast <16 x i32> %i.reu to <16 x float>
  %i.rez = bitcast <16 x i32> %i.rev to <16 x float>
  %i.rfa = bitcast <16 x i32> %i.rew to <16 x float>
  %i.rfb = bitcast <16 x i32> %i.rex to <16 x float>
  %i.rfc = getelementptr i8, ptr %next.gep10550, i64 32
  %i.rfd = getelementptr i8, ptr %next.gep10550, i64 64
  %i.rfe = getelementptr i8, ptr %next.gep10550, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep10550, align 2, !tbaa !24
  %wide.load10561 = load <16 x i16>, ptr %i.rfc, align 2, !tbaa !24
  %wide.load10562 = load <16 x i16>, ptr %i.rfd, align 2, !tbaa !24
  %wide.load10563 = load <16 x i16>, ptr %i.rfe, align 2, !tbaa !24
  %i.rff = zext <16 x i16> %wide.load to <16 x i32>
  %i.rfg = zext <16 x i16> %wide.load10561 to <16 x i32>
  %i.rfh = zext <16 x i16> %wide.load10562 to <16 x i32>
  %i.rfi = zext <16 x i16> %wide.load10563 to <16 x i32>
  %i.rfj = shl nuw <16 x i32> %i.rff, splat (i32 16)
  %i.rfk = shl nuw <16 x i32> %i.rfg, splat (i32 16)
  %i.rfl = shl nuw <16 x i32> %i.rfh, splat (i32 16)
  %i.rfm = shl nuw <16 x i32> %i.rfi, splat (i32 16)
  %i.rfn = bitcast <16 x i32> %i.rfj to <16 x float> ; 2 uses
  %i.rfo = bitcast <16 x i32> %i.rfk to <16 x float> ; 2 uses
  %i.rfp = bitcast <16 x i32> %i.rfl to <16 x float> ; 2 uses
  %i.rfq = bitcast <16 x i32> %i.rfm to <16 x float> ; 2 uses
  %i.rfr = fmul fast <16 x float> %i.rfn, %i.rey
  %i.rfs = fmul fast <16 x float> %i.rfo, %i.rez
  %i.rft = fmul fast <16 x float> %i.rfp, %i.rfa
  %i.rfu = fmul fast <16 x float> %i.rfq, %i.rfb
  %i.rfv = fadd fast <16 x float> %i.rfr, %vec.phi10543 ; 2 uses
  %i.rfw = fadd fast <16 x float> %i.rfs, %vec.phi10544 ; 2 uses
  %i.rfx = fadd fast <16 x float> %i.rft, %vec.phi10545 ; 2 uses
  %i.rfy = fadd fast <16 x float> %i.rfu, %vec.phi10546 ; 2 uses
  %i.rfz = bitcast <16 x i32> %i.reh to <16 x float>
  %i.rga = bitcast <16 x i32> %i.rel to <16 x float>
  %i.rgb = bitcast <16 x i32> %i.rep to <16 x float>
  %i.rgc = bitcast <16 x i32> %i.ret to <16 x float>
  %i.rgd = fmul fast <16 x float> %i.rfz, %i.rfn
  %i.rge = fmul fast <16 x float> %i.rga, %i.rfo
  %i.rgf = fmul fast <16 x float> %i.rgb, %i.rfp
  %i.rgg = fmul fast <16 x float> %i.rgc, %i.rfq
  %i.rgh = fadd fast <16 x float> %i.rgd, %vec.phi ; 2 uses
  %i.rgi = fadd fast <16 x float> %i.rge, %vec.phi10540 ; 2 uses
  %i.rgj = fadd fast <16 x float> %i.rgf, %vec.phi10541 ; 2 uses
  %i.rgk = fadd fast <16 x float> %i.rgg, %vec.phi10542 ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.rgl = icmp eq i64 %index.next, %n.vec
  br i1 %i.rgl, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <16 x float> %i.rgi, %i.rgh
  %bin.rdx10564 = fadd fast <16 x float> %i.rgj, %bin.rdx
  %bin.rdx10565 = fadd fast <16 x float> %i.rgk, %bin.rdx10564
  %i.rgm = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx10565) ; 2 uses
  %bin.rdx10566 = fadd fast <16 x float> %i.rfw, %i.rfv
  %bin.rdx10567 = fadd fast <16 x float> %i.rfx, %bin.rdx10566
  %bin.rdx10568 = fadd fast <16 x float> %i.rfy, %bin.rdx10567
  %i.rgn = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx10568) ; 2 uses
  %cmp.n = icmp eq i64 %i.rdo, %n.vec
  br i1 %cmp.n, label %._crit_edge9583, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.rdp, 0
  %i.rgo = insertelement <2 x float> poison, float %i.rgn, i64 0
  %i.rgp = insertelement <2 x float> %i.rgo, float %i.rgm, i64 1 ; 2 uses
  br i1 %min.epilog.iters.check, label %.lr.ph9582.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.rgq = phi <2 x float> [ %i.rgp, %vec.epilog.iter.check ], [ %i.rdj, %vector.main.loop.iter.check ]
  %n.vec10572 = and i64 %i.rdo, 8589934584        ; 5 uses
  %i.rgr = trunc i64 %n.vec10572 to i32
  %i.rgs = add i32 %.02436.lcssa, %i.rgr
  %i.rgt = shl nuw nsw i64 %n.vec10572, 2
  %i.rgu = getelementptr i8, ptr %.02438.lcssa, i64 %i.rgt
  %i.rgv = shl nuw nsw i64 %n.vec10572, 1
  %i.rgw = getelementptr i8, ptr %.102476.lcssa, i64 %i.rgv ; 2 uses
  %i.rgx = shufflevector <2 x float> %i.rgq, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.rgy = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.rgx, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.rgz = shufflevector <8 x float> %i.rgx, <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10573 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next10582, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi10574 = phi <8 x float> [ %i.rgy, %vec.epilog.ph ], [ %i.rhp, %vec.epilog.vector.body ]
  %vec.phi10575 = phi <8 x float> [ %i.rgz, %vec.epilog.ph ], [ %i.rhm, %vec.epilog.vector.body ]
  %i.rha = shl i64 %index10573, 2
  %next.gep10576 = getelementptr i8, ptr %.02438.lcssa, i64 %i.rha
  %i.rhb = shl i64 %index10573, 1
  %next.gep10577 = getelementptr i8, ptr %.102476.lcssa, i64 %i.rhb
  %wide.vec10578 = load <16 x i16>, ptr %next.gep10576, align 2, !tbaa !24
  %i.rhc = freeze <16 x i16> %wide.vec10578       ; 2 uses
  %i.rhd = bitcast <16 x i16> %i.rhc to <8 x i32>
  %i.rhe = bitcast <16 x i16> %i.rhc to <8 x i32>
  %i.rhf = and <8 x i32> %i.rhe, splat (i32 -65536)
  %i.rhg = shl <8 x i32> %i.rhd, splat (i32 16)
  %i.rhh = bitcast <8 x i32> %i.rhg to <8 x float>
  %wide.load10581 = load <8 x i16>, ptr %next.gep10577, align 2, !tbaa !24
  %i.rhi = zext <8 x i16> %wide.load10581 to <8 x i32>
  %i.rhj = shl nuw <8 x i32> %i.rhi, splat (i32 16)
  %i.rhk = bitcast <8 x i32> %i.rhj to <8 x float> ; 2 uses
  %i.rhl = fmul fast <8 x float> %i.rhk, %i.rhh
  %i.rhm = fadd fast <8 x float> %i.rhl, %vec.phi10575 ; 2 uses
  %i.rhn = bitcast <8 x i32> %i.rhf to <8 x float>
  %i.rho = fmul fast <8 x float> %i.rhn, %i.rhk
  %i.rhp = fadd fast <8 x float> %i.rho, %vec.phi10574 ; 2 uses
  %index.next10582 = add nuw i64 %index10573, 8   ; 2 uses
  %i.rhq = icmp eq i64 %index.next10582, %n.vec10572
  br i1 %i.rhq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !546

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.rhr = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.rhp) ; 2 uses
  %i.rhs = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.rhm) ; 2 uses
  %cmp.n10583 = icmp eq i64 %i.rdo, %n.vec10572
  %i.rht = insertelement <2 x float> poison, float %i.rhs, i64 0
  %i.rhu = insertelement <2 x float> %i.rht, float %i.rhr, i64 1
  br i1 %cmp.n10583, label %._crit_edge9583, label %.lr.ph9582.preheader

.lr.ph9582.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.124379581.ph = phi i32 [ %.02436.lcssa, %iter.check ], [ %i.rdr, %vec.epilog.iter.check ], [ %i.rgs, %vec.epilog.middle.block ]
  %.124399580.ph = phi ptr [ %.02438.lcssa, %iter.check ], [ %i.rdt, %vec.epilog.iter.check ], [ %i.rgu, %vec.epilog.middle.block ]
  %.1124779577.ph = phi ptr [ %.102476.lcssa, %iter.check ], [ %i.rdv, %vec.epilog.iter.check ], [ %i.rgw, %vec.epilog.middle.block ]
  %.ph = phi <2 x float> [ %i.rdj, %iter.check ], [ %i.rgp, %vec.epilog.iter.check ], [ %i.rhu, %vec.epilog.middle.block ]
  br label %.lr.ph9582

.lr.ph9571:                                       ; preds = %.lr.ph9571.preheader, %.lr.ph9571
  %.024369569 = phi i32 [ %i.rip, %.lr.ph9571 ], [ %.024369569.ph, %.lr.ph9571.preheader ]
  %.024389568 = phi ptr [ %i.rin, %.lr.ph9571 ], [ %.024389568.ph, %.lr.ph9571.preheader ] ; 2 uses
  %.1024769565 = phi ptr [ %i.rio, %.lr.ph9571 ], [ %.1024769565.ph, %.lr.ph9571.preheader ] ; 2 uses
  %i.rhv = phi <2 x float> [ %i.rim, %.lr.ph9571 ], [ %.ph10865, %.lr.ph9571.preheader ]
  %i.rhw = load <4 x i16>, ptr %.024389568, align 2, !tbaa !24
  %i.rhx = freeze <4 x i16> %i.rhw
  %i.rhy = bitcast <4 x i16> %i.rhx to <2 x i32>  ; 2 uses
  %i.rhz = and <2 x i32> %i.rhy, splat (i32 -65536)
  %i.ria = shl <2 x i32> %i.rhy, splat (i32 16)
  %i.rib = bitcast <2 x i32> %i.ria to <2 x float>
  %i.ric = bitcast <2 x i32> %i.rhz to <2 x float>
  %i.rid = load <2 x i16>, ptr %.1024769565, align 2, !tbaa !24
  %i.rie = zext <2 x i16> %i.rid to <2 x i32>
  %i.rif = shl nuw <2 x i32> %i.rie, splat (i32 16)
  %i.rig = bitcast <2 x i32> %i.rif to <2 x float> ; 2 uses
  %i.rih = shufflevector <2 x float> %i.rig, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rii = fmul fast <2 x float> %i.rih, %i.rib
  %i.rij = shufflevector <2 x float> %i.rig, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rik = fmul fast <2 x float> %i.rij, %i.ric
  %i.ril = fadd fast <2 x float> %i.rii, %i.rhv
  %i.rim = fadd fast <2 x float> %i.ril, %i.rik   ; 2 uses
  %i.rin = getelementptr inbounds nuw i8, ptr %.024389568, i64 8 ; 2 uses
  %i.rio = getelementptr inbounds nuw i8, ptr %.1024769565, i64 4
  %i.rip = add nuw nsw i32 %.024369569, 2         ; 2 uses
  %i.riq = or disjoint i32 %i.rip, 1
  %i.rir = icmp slt i32 %i.riq, %7
  br i1 %i.rir, label %.lr.ph9571, label %.preheader8891.loopexit, !llvm.loop !547

.lr.ph9582:                                       ; preds = %.lr.ph9582.preheader, %.lr.ph9582
  %.124379581 = phi i32 [ %i.rjh, %.lr.ph9582 ], [ %.124379581.ph, %.lr.ph9582.preheader ]
  %.124399580 = phi ptr [ %i.rjf, %.lr.ph9582 ], [ %.124399580.ph, %.lr.ph9582.preheader ] ; 2 uses
  %.1124779577 = phi ptr [ %i.rjg, %.lr.ph9582 ], [ %.1124779577.ph, %.lr.ph9582.preheader ] ; 2 uses
  %i.ris = phi <2 x float> [ %i.rje, %.lr.ph9582 ], [ %.ph, %.lr.ph9582.preheader ]
end_hunk_8
begin_hunk_9_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a

bb.hb:                                            ; preds = %bb.gy
  %i.sib = load ptr, ptr %10, align 8, !tbaa !15  ; 2 uses
  %i.sic = load float, ptr %i.sib, align 4, !tbaa !22
  %i.sid = insertelement <4 x float> poison, float %i.sic, i64 0
  %i.sie = shufflevector <4 x float> %i.sid, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sif = getelementptr inbounds nuw i8, ptr %i.sib, i64 4
  %i.sig = load float, ptr %i.sif, align 4, !tbaa !22
  %i.sih = insertelement <4 x float> poison, float %i.sig, i64 0
  %i.sii = shufflevector <4 x float> %i.sih, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sij = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.24954, <4 x float> nofpclass(nan inf) %i.sie)
  %i.sik = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.sij, <4 x float> nofpclass(nan inf) %i.sii)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.hc:                                            ; preds = %bb.gy
  %i.sil = fneg fast <4 x float> %.24954
  %i.sim = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.sil, <4 x float> splat (float f0x42B0C0A5))
  %i.sin = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sim, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.sio = fmul fast <4 x float> %i.sin, splat (float f0x3FB8AA3B)
  %i.sip = fadd fast <4 x float> %i.sio, splat (float 5.000000e-01) ; 2 uses
  %i.siq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sip)
  %i.sir = sitofp fast <4 x i32> %i.siq to <4 x float> ; 2 uses
  %i.sis = fcmp fast olt <4 x float> %i.sip, %i.sir
  %i.sit = select <4 x i1> %i.sis, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.siu = fsub fast <4 x float> %i.sir, %i.sit   ; 2 uses
  %i.siv = fneg fast <4 x float> %i.siu           ; 2 uses
  %i.siw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.siv, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.sin)
  %i.six = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.siv, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.siw) ; 8 uses
  %i.siy = fmul fast <4 x float> %i.six, %i.six
  %i.siz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.six, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.sja = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.siz, <4 x float> nofpclass(nan inf) %i.six, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.sjb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sja, <4 x float> nofpclass(nan inf) %i.six, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.sjc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sjb, <4 x float> nofpclass(nan inf) %i.six, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.sjd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sjc, <4 x float> nofpclass(nan inf) %i.six, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.sje = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sjd, <4 x float> nofpclass(nan inf) %i.siy, <4 x float> nofpclass(nan inf) %i.six)
  %i.sjf = fadd fast <4 x float> %i.sje, splat (float 1.000000e+00)
  %i.sjg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.siu)
  %i.sjh = shl <4 x i32> %i.sjg, splat (i32 23)
  %i.sji = add <4 x i32> %i.sjh, splat (i32 1065353216)
  %i.sjj = bitcast <4 x i32> %i.sji to <4 x float>
  %i.sjk = fmul fast <4 x float> %i.sjf, %i.sjj
  %i.sjl = fadd fast <4 x float> %i.sjk, splat (float 1.000000e+00)
  %i.sjm = fdiv fast <4 x float> splat (float 1.000000e+00), %i.sjl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.hd:                                            ; preds = %bb.gy
  %i.sjn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.24954, <4 x float> splat (float f0x42B0C0A5))
  %i.sjo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sjn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.sjp = fmul fast <4 x float> %i.sjo, splat (float f0x3FB8AA3B)
  %i.sjq = fadd fast <4 x float> %i.sjp, splat (float 5.000000e-01) ; 2 uses
  %i.sjr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sjq)
  %i.sjs = sitofp fast <4 x i32> %i.sjr to <4 x float> ; 2 uses
  %i.sjt = fcmp fast olt <4 x float> %i.sjq, %i.sjs
  %i.sju = select <4 x i1> %i.sjt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.sjv = fsub fast <4 x float> %i.sjs, %i.sju   ; 2 uses
  %i.sjw = fneg fast <4 x float> %i.sjv           ; 2 uses
  %i.sjx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.sjw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.sjo)
  %i.sjy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.sjw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.sjx) ; 8 uses
  %i.sjz = fmul fast <4 x float> %i.sjy, %i.sjy
  %i.ska = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sjy, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.skb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ska, <4 x float> nofpclass(nan inf) %i.sjy, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.skc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.skb, <4 x float> nofpclass(nan inf) %i.sjy, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.skd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.skc, <4 x float> nofpclass(nan inf) %i.sjy, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.ske = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.skd, <4 x float> nofpclass(nan inf) %i.sjy, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.skf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ske, <4 x float> nofpclass(nan inf) %i.sjz, <4 x float> nofpclass(nan inf) %i.sjy)
  %i.skg = fadd fast <4 x float> %i.skf, splat (float 1.000000e+00)
  %i.skh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sjv)
  %i.ski = shl <4 x i32> %i.skh, splat (i32 23)
  %i.skj = add <4 x i32> %i.ski, splat (i32 1065353216)
  %i.skk = bitcast <4 x i32> %i.skj to <4 x float>
  %i.skl = fmul fast <4 x float> %i.skg, %i.skk
  %i.skm = fadd fast <4 x float> %i.skl, splat (float 1.000000e+00) ; 2 uses
  %i.skn = fcmp fast ole <4 x float> %i.skm, zeroinitializer
  %i.sko = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.skm, <4 x float> splat (float f0x00800000))
  %i.skp = bitcast <4 x float> %i.sko to <4 x i32> ; 2 uses
  %i.skq = lshr <4 x i32> %i.skp, splat (i32 23)
  %i.skr = and <4 x i32> %i.skp, splat (i32 -2139095041)
  %i.sks = or disjoint <4 x i32> %i.skr, splat (i32 1056964608)
  %i.skt = bitcast <4 x i32> %i.sks to <4 x float> ; 3 uses
  %i.sku = add nsw <4 x i32> %i.skq, splat (i32 -127)
  %i.skv = sitofp fast <4 x i32> %i.sku to <4 x float> ; 2 uses
  %i.skw = fadd fast <4 x float> %i.skv, splat (float 1.000000e+00)
  %i.skx = fcmp fast olt <4 x float> %i.skt, splat (float f0x3F3504F3) ; 2 uses
  %i.sky = select <4 x i1> %i.skx, <4 x float> %i.skt, <4 x float> zeroinitializer
  %i.skz = fadd fast <4 x float> %i.skt, splat (float -1.000000e+00)
  %i.sla = select fast <4 x i1> %i.skx, <4 x float> %i.skv, <4 x float> %i.skw ; 2 uses
  %i.slb = fadd fast <4 x float> %i.skz, %i.sky   ; 12 uses
  %i.slc = fmul fast <4 x float> %i.slb, %i.slb   ; 2 uses
  %i.sld = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.slb, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.sle = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sld, <4 x float> nofpclass(nan inf) %i.slb, <4 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.slf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sle, <4 x float> nofpclass(nan inf) %i.slb, <4 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.slg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.slf, <4 x float> nofpclass(nan inf) %i.slb, <4 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.slh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.slg, <4 x float> nofpclass(nan inf) %i.slb, <4 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.sli = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.slh, <4 x float> nofpclass(nan inf) %i.slb, <4 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.slj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sli, <4 x float> nofpclass(nan inf) %i.slb, <4 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.slk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.slj, <4 x float> nofpclass(nan inf) %i.slb, <4 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.sll = fmul fast <4 x float> %i.slc, %i.slb
  %i.slm = fmul fast <4 x float> %i.sll, %i.slk
  %i.sln = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sla, <4 x float> nofpclass(nan inf) splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.slm)
  %i.slo = fneg fast <4 x float> %i.slc
  %i.slp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.slo, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.sln)
  %i.slq = fadd fast <4 x float> %i.slp, %i.slb
  %i.slr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sla, <4 x float> nofpclass(nan inf) splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.slq)
  %.neg = fmul fast <4 x float> %i.slr, splat (float -2.000000e+00)
  %i.sls = select fast <4 x i1> %i.skn, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.slt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.sls, <4 x float> splat (float f0x42B0C0A5))
  %i.slu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.slt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.slv = fmul fast <4 x float> %i.slu, splat (float f0x3FB8AA3B)
  %i.slw = fadd fast <4 x float> %i.slv, splat (float 5.000000e-01) ; 2 uses
  %i.slx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.slw)
  %i.sly = sitofp fast <4 x i32> %i.slx to <4 x float> ; 2 uses
  %i.slz = fcmp fast olt <4 x float> %i.slw, %i.sly
  %i.sma = select <4 x i1> %i.slz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.smb = fsub fast <4 x float> %i.sly, %i.sma   ; 2 uses
  %i.smc = fneg fast <4 x float> %i.smb           ; 2 uses
  %i.smd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.smc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.slu)
  %i.sme = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.smc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.smd) ; 8 uses
  %i.smf = fmul fast <4 x float> %i.sme, %i.sme
  %i.smg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sme, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.smh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.smg, <4 x float> nofpclass(nan inf) %i.sme, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.smi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.smh, <4 x float> nofpclass(nan inf) %i.sme, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.smj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.smi, <4 x float> nofpclass(nan inf) %i.sme, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.smk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.smj, <4 x float> nofpclass(nan inf) %i.sme, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.sml = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.smk, <4 x float> nofpclass(nan inf) %i.smf, <4 x float> nofpclass(nan inf) %i.sme)
  %i.smm = fadd fast <4 x float> %i.sml, splat (float 1.000000e+00)
  %i.smn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.smb)
  %i.smo = shl <4 x i32> %i.smn, splat (i32 23)
  %i.smp = add <4 x i32> %i.smo, splat (i32 1065353216)
  %i.smq = bitcast <4 x i32> %i.smp to <4 x float>
  %i.smr = fmul fast <4 x float> %i.smm, %i.smq
  %i.sms = fadd fast <4 x float> %i.smr, splat (float 1.000000e+00)
  %i.smt = fdiv fast <4 x float> splat (float 2.000000e+00), %i.sms
  %i.smu = fadd fast <4 x float> %i.smt, splat (float -1.000000e+00)
  %i.smv = fmul fast <4 x float> %i.smu, %.24954
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.he:                                            ; preds = %bb.gy
  %i.smw = load ptr, ptr %10, align 8, !tbaa !15  ; 2 uses
  %i.smx = load float, ptr %i.smw, align 4, !tbaa !22
  %i.smy = insertelement <4 x float> poison, float %i.smx, i64 0
  %i.smz = shufflevector <4 x float> %i.smy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sna = getelementptr inbounds nuw i8, ptr %i.smw, i64 4
  %i.snb = load float, ptr %i.sna, align 4, !tbaa !22
  %i.snc = insertelement <4 x float> poison, float %i.snb, i64 0
  %i.snd = shufflevector <4 x float> %i.snc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sne = fmul fast <4 x float> %i.smz, %.24954
  %i.snf = fadd fast <4 x float> %i.sne, %i.snd
  %i.sng = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.snf, <4 x float> zeroinitializer)
  %i.snh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.sng, <4 x float> splat (float 1.000000e+00))
  %i.sni = fmul fast <4 x float> %i.snh, %.24954
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %bb.hd, %bb.he
  %.0.i2835 = phi nsz <4 x float> [ %i.sni, %bb.he ], [ %i.shs, %bb.gz ], [ %i.sia, %bb.ha ], [ %i.sik, %bb.hb ], [ %i.sjm, %bb.hc ], [ %i.smv, %bb.hd ], [ %.24954, %bb.gy ]
  %i.snj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %.0.i2835)
  %i.snk = bitcast <8 x bfloat> %i.snj to <2 x i64>
  %i.snl = extractelement <2 x i64> %i.snk, i64 0
  store i64 %i.snl, ptr %.424329676, align 1, !tbaa !18
  %i.snm = getelementptr inbounds nuw i8, ptr %.424329676, i64 8
  br label %bb.hg

bb.hf:                                            ; preds = %._crit_edge9673
  store <4 x float> %.14953.lcssa, ptr %.239679, align 1, !tbaa !18
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.52433 = phi ptr [ %i.snm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.424329676, %bb.hf ] ; 2 uses
  %i.snn = getelementptr inbounds nuw i8, ptr %.239679, i64 16 ; 2 uses
  %i.sno = add nuw nsw i32 %.224149678, 4         ; 3 uses
  %i.snp = or disjoint i32 %i.sno, 3
  %i.snq = icmp slt i32 %i.snp, %5
  br i1 %i.snq, label %bb.gt, label %.preheader8887, !llvm.loop !562

bb.hh:                                            ; preds = %.lr.ph9707, %bb.ht
  %.249706 = phi ptr [ %.23.lcssa, %.lr.ph9707 ], [ %i.swu, %bb.ht ] ; 3 uses
  %.324159705 = phi i32 [ %.22414.lcssa, %.lr.ph9707 ], [ %i.swv, %bb.ht ]
  %.924259704 = phi ptr [ %.62422.lcssa, %.lr.ph9707 ], [ %.112427.lcssa, %bb.ht ] ; 10 uses
  %.624349703 = phi ptr [ %.42432.lcssa, %.lr.ph9707 ], [ %.72435, %bb.ht ] ; 3 uses
  br i1 %brmerge, label %.sink.split, label %bb.hi

.sink.split:                                      ; preds = %bb.hh
  %.249706.mux = select i1 %i.oth, ptr %.249706, ptr %.9
  %i.snr = load float, ptr %.249706.mux, align 4, !tbaa !22
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %.sink.split
  %.02334 = phi nsz float [ 0.000000e+00, %bb.hh ], [ %i.snr, %.sink.split ] ; 4 uses
  br i1 %i.oti, label %iter.check10790, label %.preheader

iter.check10790:                                  ; preds = %bb.hi
  br i1 %min.iters.check10737, label %.lr.ph9690.preheader, label %vector.main.loop.iter.check10738

vector.main.loop.iter.check10738:                 ; preds = %iter.check10790
  br i1 %min.iters.check10739, label %vec.epilog.ph10794, label %vector.ph10740

vector.ph10740:                                   ; preds = %vector.main.loop.iter.check10738
  %i.sns = getelementptr i8, ptr %.924259704, i64 %i.ouf
  %i.snt = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.02334, i64 0
  br label %vector.body10742

vector.body10742:                                 ; preds = %vector.ph10740, %vector.body10742
  %index10743 = phi i64 [ 0, %vector.ph10740 ], [ %index.next10780, %vector.body10742 ] ; 2 uses
  %vec.phi10744 = phi <16 x float> [ %i.snt, %vector.ph10740 ], [ %i.sqo, %vector.body10742 ]
  %vec.phi10745 = phi <16 x float> [ zeroinitializer, %vector.ph10740 ], [ %i.sqp, %vector.body10742 ]
  %vec.phi10746 = phi <16 x float> [ zeroinitializer, %vector.ph10740 ], [ %i.sqq, %vector.body10742 ]
  %vec.phi10747 = phi <16 x float> [ zeroinitializer, %vector.ph10740 ], [ %i.sqr, %vector.body10742 ]
  %i.snu = shl i64 %index10743, 2                 ; 5 uses
  %i.snv = or disjoint i64 %i.snu, 64             ; 2 uses
  %i.snw = or disjoint i64 %i.snu, 128            ; 2 uses
  %i.snx = or disjoint i64 %i.snu, 192            ; 2 uses
  %next.gep10748 = getelementptr i8, ptr %.49713, i64 %i.snu
  %next.gep10749 = getelementptr i8, ptr %.49713, i64 %i.snv
  %next.gep10750 = getelementptr i8, ptr %.49713, i64 %i.snw
  %next.gep10751 = getelementptr i8, ptr %.49713, i64 %i.snx
  %next.gep10752 = getelementptr i8, ptr %.924259704, i64 %i.snu
  %next.gep10753 = getelementptr i8, ptr %.924259704, i64 %i.snv
  %next.gep10754 = getelementptr i8, ptr %.924259704, i64 %i.snw
  %next.gep10755 = getelementptr i8, ptr %.924259704, i64 %i.snx
  %wide.vec10756 = load <32 x i16>, ptr %next.gep10748, align 2, !tbaa !24
  %i.sny = freeze <32 x i16> %wide.vec10756       ; 2 uses
  %i.snz = bitcast <32 x i16> %i.sny to <16 x i32>
  %i.soa = bitcast <32 x i16> %i.sny to <16 x i32>
  %i.sob = and <16 x i32> %i.soa, splat (i32 -65536)
  %wide.vec10759 = load <32 x i16>, ptr %next.gep10749, align 2, !tbaa !24
  %i.soc = freeze <32 x i16> %wide.vec10759       ; 2 uses
  %i.sod = bitcast <32 x i16> %i.soc to <16 x i32>
  %i.soe = bitcast <32 x i16> %i.soc to <16 x i32>
  %i.sof = and <16 x i32> %i.soe, splat (i32 -65536)
  %wide.vec10762 = load <32 x i16>, ptr %next.gep10750, align 2, !tbaa !24
  %i.sog = freeze <32 x i16> %wide.vec10762       ; 2 uses
  %i.soh = bitcast <32 x i16> %i.sog to <16 x i32>
  %i.soi = bitcast <32 x i16> %i.sog to <16 x i32>
  %i.soj = and <16 x i32> %i.soi, splat (i32 -65536)
  %wide.vec10765 = load <32 x i16>, ptr %next.gep10751, align 2, !tbaa !24
  %i.sok = freeze <32 x i16> %wide.vec10765       ; 2 uses
  %i.sol = bitcast <32 x i16> %i.sok to <16 x i32>
  %i.som = bitcast <32 x i16> %i.sok to <16 x i32>
  %i.son = and <16 x i32> %i.som, splat (i32 -65536)
  %i.soo = shl <16 x i32> %i.snz, splat (i32 16)
  %i.sop = shl <16 x i32> %i.sod, splat (i32 16)
  %i.soq = shl <16 x i32> %i.soh, splat (i32 16)
  %i.sor = shl <16 x i32> %i.sol, splat (i32 16)
  %i.sos = bitcast <16 x i32> %i.soo to <16 x float>
  %i.sot = bitcast <16 x i32> %i.sop to <16 x float>
  %i.sou = bitcast <16 x i32> %i.soq to <16 x float>
  %i.sov = bitcast <16 x i32> %i.sor to <16 x float>
  %i.sow = bitcast <16 x i32> %i.sob to <16 x float>
  %i.sox = bitcast <16 x i32> %i.sof to <16 x float>
  %i.soy = bitcast <16 x i32> %i.soj to <16 x float>
  %i.soz = bitcast <16 x i32> %i.son to <16 x float>
  %wide.vec10768 = load <32 x i16>, ptr %next.gep10752, align 2, !tbaa !24
  %i.spa = freeze <32 x i16> %wide.vec10768       ; 2 uses
  %i.spb = bitcast <32 x i16> %i.spa to <16 x i32>
  %i.spc = bitcast <32 x i16> %i.spa to <16 x i32>
  %i.spd = and <16 x i32> %i.spc, splat (i32 -65536)
  %wide.vec10771 = load <32 x i16>, ptr %next.gep10753, align 2, !tbaa !24
  %i.spe = freeze <32 x i16> %wide.vec10771       ; 2 uses
  %i.spf = bitcast <32 x i16> %i.spe to <16 x i32>
  %i.spg = bitcast <32 x i16> %i.spe to <16 x i32>
  %i.sph = and <16 x i32> %i.spg, splat (i32 -65536)
  %wide.vec10774 = load <32 x i16>, ptr %next.gep10754, align 2, !tbaa !24
  %i.spi = freeze <32 x i16> %wide.vec10774       ; 2 uses
  %i.spj = bitcast <32 x i16> %i.spi to <16 x i32>
  %i.spk = bitcast <32 x i16> %i.spi to <16 x i32>
  %i.spl = and <16 x i32> %i.spk, splat (i32 -65536)
  %wide.vec10777 = load <32 x i16>, ptr %next.gep10755, align 2, !tbaa !24
  %i.spm = freeze <32 x i16> %wide.vec10777       ; 2 uses
  %i.spn = bitcast <32 x i16> %i.spm to <16 x i32>
  %i.spo = bitcast <32 x i16> %i.spm to <16 x i32>
  %i.spp = and <16 x i32> %i.spo, splat (i32 -65536)
  %i.spq = shl <16 x i32> %i.spb, splat (i32 16)
  %i.spr = shl <16 x i32> %i.spf, splat (i32 16)
  %i.sps = shl <16 x i32> %i.spj, splat (i32 16)
  %i.spt = shl <16 x i32> %i.spn, splat (i32 16)
  %i.spu = bitcast <16 x i32> %i.spq to <16 x float>
  %i.spv = bitcast <16 x i32> %i.spr to <16 x float>
  %i.spw = bitcast <16 x i32> %i.sps to <16 x float>
  %i.spx = bitcast <16 x i32> %i.spt to <16 x float>
  %i.spy = bitcast <16 x i32> %i.spd to <16 x float>
  %i.spz = bitcast <16 x i32> %i.sph to <16 x float>
  %i.sqa = bitcast <16 x i32> %i.spl to <16 x float>
  %i.sqb = bitcast <16 x i32> %i.spp to <16 x float>
  %i.sqc = fmul fast <16 x float> %i.spu, %i.sos
  %i.sqd = fmul fast <16 x float> %i.spv, %i.sot
  %i.sqe = fmul fast <16 x float> %i.spw, %i.sou
  %i.sqf = fmul fast <16 x float> %i.spx, %i.sov
  %i.sqg = fmul fast <16 x float> %i.spy, %i.sow
  %i.sqh = fmul fast <16 x float> %i.spz, %i.sox
  %i.sqi = fmul fast <16 x float> %i.sqa, %i.soy
  %i.sqj = fmul fast <16 x float> %i.sqb, %i.soz
  %i.sqk = fadd fast <16 x float> %i.sqc, %vec.phi10744
  %i.sql = fadd fast <16 x float> %i.sqd, %vec.phi10745
  %i.sqm = fadd fast <16 x float> %i.sqe, %vec.phi10746
  %i.sqn = fadd fast <16 x float> %i.sqf, %vec.phi10747
  %i.sqo = fadd fast <16 x float> %i.sqk, %i.sqg  ; 2 uses
  %i.sqp = fadd fast <16 x float> %i.sql, %i.sqh  ; 2 uses
  %i.sqq = fadd fast <16 x float> %i.sqm, %i.sqi  ; 2 uses
  %i.sqr = fadd fast <16 x float> %i.sqn, %i.sqj  ; 2 uses
  %index.next10780 = add nuw i64 %index10743, 64  ; 2 uses
  %i.sqs = icmp eq i64 %index.next10780, %n.vec10741
  br i1 %i.sqs, label %middle.block10781, label %vector.body10742, !llvm.loop !563

middle.block10781:                                ; preds = %vector.body10742
  %bin.rdx10782 = fadd fast <16 x float> %i.sqp, %i.sqo
  %bin.rdx10783 = fadd fast <16 x float> %i.sqq, %bin.rdx10782
  %bin.rdx10784 = fadd fast <16 x float> %i.sqr, %bin.rdx10783
  %i.sqt = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx10784) ; 3 uses
  br i1 %cmp.n10785, label %.preheader.loopexit, label %vec.epilog.iter.check10792

vec.epilog.iter.check10792:                       ; preds = %middle.block10781
  br i1 %min.epilog.iters.check10793, label %.lr.ph9690.preheader, label %vec.epilog.ph10794, !prof !29

vec.epilog.ph10794:                               ; preds = %vector.main.loop.iter.check10738, %vec.epilog.iter.check10792
  %vec.epilog.resume.val10786 = phi i64 [ %n.vec10741, %vec.epilog.iter.check10792 ], [ 0, %vector.main.loop.iter.check10738 ]
  %bc.merge.rdx10788 = phi float [ %i.sqt, %vec.epilog.iter.check10792 ], [ %.02334, %vector.main.loop.iter.check10738 ]
  %i.squ = getelementptr i8, ptr %.924259704, i64 %i.oui
  %i.sqv = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx10788, i64 0
  br label %vec.epilog.vector.body10796

vec.epilog.vector.body10796:                      ; preds = %vec.epilog.vector.body10796, %vec.epilog.ph10794
  %index10797 = phi i64 [ %vec.epilog.resume.val10786, %vec.epilog.ph10794 ], [ %index.next10807, %vec.epilog.vector.body10796 ] ; 2 uses
  %vec.phi10798 = phi <8 x float> [ %i.sqv, %vec.epilog.ph10794 ], [ %i.sro, %vec.epilog.vector.body10796 ]
  %i.sqw = shl i64 %index10797, 2                 ; 2 uses
  %next.gep10799 = getelementptr i8, ptr %.49713, i64 %i.sqw
  %next.gep10800 = getelementptr i8, ptr %.924259704, i64 %i.sqw
  %wide.vec10801 = load <16 x i16>, ptr %next.gep10799, align 2, !tbaa !24
  %i.sqx = freeze <16 x i16> %wide.vec10801       ; 2 uses
  %i.sqy = bitcast <16 x i16> %i.sqx to <8 x i32>
  %i.sqz = bitcast <16 x i16> %i.sqx to <8 x i32>
  %i.sra = and <8 x i32> %i.sqz, splat (i32 -65536)
  %i.srb = shl <8 x i32> %i.sqy, splat (i32 16)
  %i.src = bitcast <8 x i32> %i.srb to <8 x float>
  %i.srd = bitcast <8 x i32> %i.sra to <8 x float>
  %wide.vec10804 = load <16 x i16>, ptr %next.gep10800, align 2, !tbaa !24
  %i.sre = freeze <16 x i16> %wide.vec10804       ; 2 uses
  %i.srf = bitcast <16 x i16> %i.sre to <8 x i32>
  %i.srg = bitcast <16 x i16> %i.sre to <8 x i32>
  %i.srh = and <8 x i32> %i.srg, splat (i32 -65536)
  %i.sri = shl <8 x i32> %i.srf, splat (i32 16)
  %i.srj = bitcast <8 x i32> %i.sri to <8 x float>
  %i.srk = bitcast <8 x i32> %i.srh to <8 x float>
  %i.srl = fmul fast <8 x float> %i.srj, %i.src
  %i.srm = fmul fast <8 x float> %i.srk, %i.srd
  %i.srn = fadd fast <8 x float> %i.srl, %vec.phi10798
  %i.sro = fadd fast <8 x float> %i.srn, %i.srm   ; 2 uses
  %index.next10807 = add nuw i64 %index10797, 8   ; 2 uses
  %i.srp = icmp eq i64 %index.next10807, %n.vec10795
  br i1 %i.srp, label %vec.epilog.middle.block10808, label %vec.epilog.vector.body10796, !llvm.loop !564

vec.epilog.middle.block10808:                     ; preds = %vec.epilog.vector.body10796
  %i.srq = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.sro) ; 2 uses
  br i1 %cmp.n10809, label %.preheader.loopexit, label %.lr.ph9690.preheader

.lr.ph9690.preheader:                             ; preds = %iter.check10790, %vec.epilog.iter.check10792, %vec.epilog.middle.block10808
  %.023309688.ph = phi i32 [ 0, %iter.check10790 ], [ %i.oue, %vec.epilog.iter.check10792 ], [ %i.ouh, %vec.epilog.middle.block10808 ]
  %.023329687.ph = phi ptr [ %.49713, %iter.check10790 ], [ %i.sdw, %vec.epilog.iter.check10792 ], [ %i.sdx, %vec.epilog.middle.block10808 ]
  %.123359686.ph = phi float [ %.02334, %iter.check10790 ], [ %i.sqt, %vec.epilog.iter.check10792 ], [ %i.srq, %vec.epilog.middle.block10808 ]
  %.1024269685.ph = phi ptr [ %.924259704, %iter.check10790 ], [ %i.sns, %vec.epilog.iter.check10792 ], [ %i.squ, %vec.epilog.middle.block10808 ]
  br label %.lr.ph9690

.preheader.loopexit:                              ; preds = %.lr.ph9690, %vec.epilog.middle.block10808, %middle.block10781
  %.lcssa10332 = phi float [ %i.srq, %vec.epilog.middle.block10808 ], [ %i.sqt, %middle.block10781 ], [ %i.suw, %.lr.ph9690 ]
  %.lcssa10331 = phi ptr [ %i.sdx, %vec.epilog.middle.block10808 ], [ %i.sdw, %middle.block10781 ], [ %i.sux, %.lr.ph9690 ]
  %i.srr = getelementptr i8, ptr %.924259704, i64 %i.ots
  %scevgep10039 = getelementptr i8, ptr %i.srr, i64 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.hi
  %.102426.lcssa = phi ptr [ %.924259704, %bb.hi ], [ %scevgep10039, %.preheader.loopexit ] ; 6 uses
  %.12335.lcssa = phi float [ %.02334, %bb.hi ], [ %.lcssa10332, %.preheader.loopexit ] ; 4 uses
  %.02332.lcssa = phi ptr [ %.49713, %bb.hi ], [ %.lcssa10331, %.preheader.loopexit ] ; 5 uses
  %.02330.lcssa = phi i32 [ 0, %bb.hi ], [ %i.otm, %.preheader.loopexit ] ; 5 uses
  %i.srs = icmp slt i32 %.02330.lcssa, %7
  br i1 %i.srs, label %iter.check10717, label %._crit_edge9700

iter.check10717:                                  ; preds = %.preheader
  %i.srt = xor i32 %.02330.lcssa, -1
  %i.sru = add i32 %7, %i.srt                     ; 3 uses
  %i.srv = zext i32 %i.sru to i64
  %i.srw = add nuw nsw i64 %i.srv, 1              ; 5 uses
  %min.iters.check10686 = icmp ult i32 %i.sru, 7
  br i1 %min.iters.check10686, label %.lr.ph9699.preheader, label %vector.main.loop.iter.check10687

vector.main.loop.iter.check10687:                 ; preds = %iter.check10717
  %min.iters.check10688 = icmp ult i32 %i.sru, 63
  br i1 %min.iters.check10688, label %vec.epilog.ph10721, label %vector.ph10689

vector.ph10689:                                   ; preds = %vector.main.loop.iter.check10687
  %i.srx = and i64 %i.srw, 56
  %n.vec10690 = and i64 %i.srw, 8589934528        ; 5 uses
  %i.sry = trunc i64 %n.vec10690 to i32
  %i.srz = add i32 %.02330.lcssa, %i.sry
  %i.ssa = shl nuw nsw i64 %n.vec10690, 1         ; 2 uses
  %i.ssb = getelementptr i8, ptr %.02332.lcssa, i64 %i.ssa
  %i.ssc = getelementptr i8, ptr %.102426.lcssa, i64 %i.ssa ; 2 uses
  %i.ssd = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.12335.lcssa, i64 0
  br label %vector.body10691

vector.body10691:                                 ; preds = %vector.ph10689, %vector.body10691
  %index10692 = phi i64 [ 0, %vector.ph10689 ], [ %index.next10707, %vector.body10691 ] ; 2 uses
  %vec.phi10693 = phi <16 x float> [ %i.ssd, %vector.ph10689 ], [ %i.stn, %vector.body10691 ]
  %vec.phi10694 = phi <16 x float> [ zeroinitializer, %vector.ph10689 ], [ %i.sto, %vector.body10691 ]
  %vec.phi10695 = phi <16 x float> [ zeroinitializer, %vector.ph10689 ], [ %i.stp, %vector.body10691 ]
  %vec.phi10696 = phi <16 x float> [ zeroinitializer, %vector.ph10689 ], [ %i.stq, %vector.body10691 ]
  %i.sse = shl i64 %index10692, 1                 ; 2 uses
  %next.gep10697 = getelementptr i8, ptr %.02332.lcssa, i64 %i.sse ; 4 uses
  %next.gep10698 = getelementptr i8, ptr %.102426.lcssa, i64 %i.sse ; 4 uses
  %i.ssf = getelementptr i8, ptr %next.gep10697, i64 32
  %i.ssg = getelementptr i8, ptr %next.gep10697, i64 64
  %i.ssh = getelementptr i8, ptr %next.gep10697, i64 96
  %wide.load10699 = load <16 x i16>, ptr %next.gep10697, align 2, !tbaa !24
  %wide.load10700 = load <16 x i16>, ptr %i.ssf, align 2, !tbaa !24
  %wide.load10701 = load <16 x i16>, ptr %i.ssg, align 2, !tbaa !24
  %wide.load10702 = load <16 x i16>, ptr %i.ssh, align 2, !tbaa !24
  %i.ssi = zext <16 x i16> %wide.load10699 to <16 x i32>
  %i.ssj = zext <16 x i16> %wide.load10700 to <16 x i32>
  %i.ssk = zext <16 x i16> %wide.load10701 to <16 x i32>
  %i.ssl = zext <16 x i16> %wide.load10702 to <16 x i32>
  %i.ssm = shl nuw <16 x i32> %i.ssi, splat (i32 16)
  %i.ssn = shl nuw <16 x i32> %i.ssj, splat (i32 16)
  %i.sso = shl nuw <16 x i32> %i.ssk, splat (i32 16)
  %i.ssp = shl nuw <16 x i32> %i.ssl, splat (i32 16)
  %i.ssq = bitcast <16 x i32> %i.ssm to <16 x float>
  %i.ssr = bitcast <16 x i32> %i.ssn to <16 x float>
  %i.sss = bitcast <16 x i32> %i.sso to <16 x float>
  %i.sst = bitcast <16 x i32> %i.ssp to <16 x float>
  %i.ssu = getelementptr i8, ptr %next.gep10698, i64 32
  %i.ssv = getelementptr i8, ptr %next.gep10698, i64 64
  %i.ssw = getelementptr i8, ptr %next.gep10698, i64 96
  %wide.load10703 = load <16 x i16>, ptr %next.gep10698, align 2, !tbaa !24
  %wide.load10704 = load <16 x i16>, ptr %i.ssu, align 2, !tbaa !24
  %wide.load10705 = load <16 x i16>, ptr %i.ssv, align 2, !tbaa !24
  %wide.load10706 = load <16 x i16>, ptr %i.ssw, align 2, !tbaa !24
  %i.ssx = zext <16 x i16> %wide.load10703 to <16 x i32>
  %i.ssy = zext <16 x i16> %wide.load10704 to <16 x i32>
  %i.ssz = zext <16 x i16> %wide.load10705 to <16 x i32>
  %i.sta = zext <16 x i16> %wide.load10706 to <16 x i32>
  %i.stb = shl nuw <16 x i32> %i.ssx, splat (i32 16)
  %i.stc = shl nuw <16 x i32> %i.ssy, splat (i32 16)
  %i.std = shl nuw <16 x i32> %i.ssz, splat (i32 16)
  %i.ste = shl nuw <16 x i32> %i.sta, splat (i32 16)
  %i.stf = bitcast <16 x i32> %i.stb to <16 x float>
  %i.stg = bitcast <16 x i32> %i.stc to <16 x float>
  %i.sth = bitcast <16 x i32> %i.std to <16 x float>
  %i.sti = bitcast <16 x i32> %i.ste to <16 x float>
  %i.stj = fmul fast <16 x float> %i.stf, %i.ssq
  %i.stk = fmul fast <16 x float> %i.stg, %i.ssr
  %i.stl = fmul fast <16 x float> %i.sth, %i.sss
  %i.stm = fmul fast <16 x float> %i.sti, %i.sst
  %i.stn = fadd fast <16 x float> %i.stj, %vec.phi10693 ; 2 uses
  %i.sto = fadd fast <16 x float> %i.stk, %vec.phi10694 ; 2 uses
  %i.stp = fadd fast <16 x float> %i.stl, %vec.phi10695 ; 2 uses
  %i.stq = fadd fast <16 x float> %i.stm, %vec.phi10696 ; 2 uses
  %index.next10707 = add nuw i64 %index10692, 64  ; 2 uses
  %i.str = icmp eq i64 %index.next10707, %n.vec10690
  br i1 %i.str, label %middle.block10708, label %vector.body10691, !llvm.loop !565

middle.block10708:                                ; preds = %vector.body10691
  %bin.rdx10709 = fadd fast <16 x float> %i.sto, %i.stn
  %bin.rdx10710 = fadd fast <16 x float> %i.stp, %bin.rdx10709
  %bin.rdx10711 = fadd fast <16 x float> %i.stq, %bin.rdx10710
  %i.sts = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx10711) ; 3 uses
  %cmp.n10712 = icmp eq i64 %i.srw, %n.vec10690
  br i1 %cmp.n10712, label %._crit_edge9700, label %vec.epilog.iter.check10719

vec.epilog.iter.check10719:                       ; preds = %middle.block10708
  %min.epilog.iters.check10720 = icmp eq i64 %i.srx, 0
  br i1 %min.epilog.iters.check10720, label %.lr.ph9699.preheader, label %vec.epilog.ph10721, !prof !29

vec.epilog.ph10721:                               ; preds = %vector.main.loop.iter.check10687, %vec.epilog.iter.check10719
  %vec.epilog.resume.val10713 = phi i64 [ %n.vec10690, %vec.epilog.iter.check10719 ], [ 0, %vector.main.loop.iter.check10687 ]
  %bc.merge.rdx10715 = phi float [ %i.sts, %vec.epilog.iter.check10719 ], [ %.12335.lcssa, %vector.main.loop.iter.check10687 ]
  %n.vec10722 = and i64 %i.srw, 8589934584        ; 4 uses
  %i.stt = trunc i64 %n.vec10722 to i32
  %i.stu = add i32 %.02330.lcssa, %i.stt
  %i.stv = shl nuw nsw i64 %n.vec10722, 1         ; 2 uses
  %i.stw = getelementptr i8, ptr %.02332.lcssa, i64 %i.stv
  %i.stx = getelementptr i8, ptr %.102426.lcssa, i64 %i.stv ; 2 uses
  %i.sty = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx10715, i64 0
  br label %vec.epilog.vector.body10723

vec.epilog.vector.body10723:                      ; preds = %vec.epilog.vector.body10723, %vec.epilog.ph10721
  %index10724 = phi i64 [ %vec.epilog.resume.val10713, %vec.epilog.ph10721 ], [ %index.next10730, %vec.epilog.vector.body10723 ] ; 2 uses
  %vec.phi10725 = phi <8 x float> [ %i.sty, %vec.epilog.ph10721 ], [ %i.suh, %vec.epilog.vector.body10723 ]
  %i.stz = shl i64 %index10724, 1                 ; 2 uses
  %next.gep10726 = getelementptr i8, ptr %.02332.lcssa, i64 %i.stz
  %next.gep10727 = getelementptr i8, ptr %.102426.lcssa, i64 %i.stz
  %wide.load10728 = load <8 x i16>, ptr %next.gep10726, align 2, !tbaa !24
  %i.sua = zext <8 x i16> %wide.load10728 to <8 x i32>
  %i.sub = shl nuw <8 x i32> %i.sua, splat (i32 16)
  %i.suc = bitcast <8 x i32> %i.sub to <8 x float>
  %wide.load10729 = load <8 x i16>, ptr %next.gep10727, align 2, !tbaa !24
  %i.sud = zext <8 x i16> %wide.load10729 to <8 x i32>
  %i.sue = shl nuw <8 x i32> %i.sud, splat (i32 16)
  %i.suf = bitcast <8 x i32> %i.sue to <8 x float>
  %i.sug = fmul fast <8 x float> %i.suf, %i.suc
  %i.suh = fadd fast <8 x float> %i.sug, %vec.phi10725 ; 2 uses
  %index.next10730 = add nuw i64 %index10724, 8   ; 2 uses
  %i.sui = icmp eq i64 %index.next10730, %n.vec10722
  br i1 %i.sui, label %vec.epilog.middle.block10731, label %vec.epilog.vector.body10723, !llvm.loop !566

vec.epilog.middle.block10731:                     ; preds = %vec.epilog.vector.body10723
  %i.suj = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.suh) ; 2 uses
  %cmp.n10732 = icmp eq i64 %i.srw, %n.vec10722
  br i1 %cmp.n10732, label %._crit_edge9700, label %.lr.ph9699.preheader

.lr.ph9699.preheader:                             ; preds = %iter.check10717, %vec.epilog.iter.check10719, %vec.epilog.middle.block10731
  %.123319698.ph = phi i32 [ %.02330.lcssa, %iter.check10717 ], [ %i.srz, %vec.epilog.iter.check10719 ], [ %i.stu, %vec.epilog.middle.block10731 ]
  %.123339697.ph = phi ptr [ %.02332.lcssa, %iter.check10717 ], [ %i.ssb, %vec.epilog.iter.check10719 ], [ %i.stw, %vec.epilog.middle.block10731 ]
  %.223369696.ph = phi float [ %.12335.lcssa, %iter.check10717 ], [ %i.sts, %vec.epilog.iter.check10719 ], [ %i.suj, %vec.epilog.middle.block10731 ]
  %.1124279695.ph = phi ptr [ %.102426.lcssa, %iter.check10717 ], [ %i.ssc, %vec.epilog.iter.check10719 ], [ %i.stx, %vec.epilog.middle.block10731 ]
  br label %.lr.ph9699

.lr.ph9690:                                       ; preds = %.lr.ph9690.preheader, %.lr.ph9690
  %.023309688 = phi i32 [ %i.suz, %.lr.ph9690 ], [ %.023309688.ph, %.lr.ph9690.preheader ]
  %.023329687 = phi ptr [ %i.sux, %.lr.ph9690 ], [ %.023329687.ph, %.lr.ph9690.preheader ] ; 2 uses
  %.123359686 = phi float [ %i.suw, %.lr.ph9690 ], [ %.123359686.ph, %.lr.ph9690.preheader ]
  %.1024269685 = phi ptr [ %i.suy, %.lr.ph9690 ], [ %.1024269685.ph, %.lr.ph9690.preheader ] ; 2 uses
  %i.suk = load <2 x i16>, ptr %.023329687, align 2, !tbaa !24
  %i.sul = zext <2 x i16> %i.suk to <2 x i32>
  %i.sum = shl nuw <2 x i32> %i.sul, splat (i32 16)
  %i.sun = bitcast <2 x i32> %i.sum to <2 x float>
  %i.suo = load <2 x i16>, ptr %.1024269685, align 2, !tbaa !24
  %i.sup = zext <2 x i16> %i.suo to <2 x i32>
  %i.suq = shl nuw <2 x i32> %i.sup, splat (i32 16)
  %i.sur = bitcast <2 x i32> %i.suq to <2 x float>
  %i.sus = fmul fast <2 x float> %i.sur, %i.sun   ; 2 uses
  %i.sut = extractelement <2 x float> %i.sus, i64 0
  %i.suu = fadd fast float %i.sut, %.123359686
  %i.suv = extractelement <2 x float> %i.sus, i64 1
  %i.suw = fadd fast float %i.suu, %i.suv         ; 2 uses
  %i.sux = getelementptr inbounds nuw i8, ptr %.023329687, i64 4 ; 2 uses
  %i.suy = getelementptr inbounds nuw i8, ptr %.1024269685, i64 4
  %i.suz = add nuw nsw i32 %.023309688, 2         ; 2 uses
  %i.sva = or disjoint i32 %i.suz, 1
  %i.svb = icmp slt i32 %i.sva, %7
  br i1 %i.svb, label %.lr.ph9690, label %.preheader.loopexit, !llvm.loop !567

.lr.ph9699:                                       ; preds = %.lr.ph9699.preheader, %.lr.ph9699
  %.123319698 = phi i32 [ %i.svo, %.lr.ph9699 ], [ %.123319698.ph, %.lr.ph9699.preheader ]
  %.123339697 = phi ptr [ %i.svm, %.lr.ph9699 ], [ %.123339697.ph, %.lr.ph9699.preheader ] ; 2 uses
  %.223369696 = phi float [ %i.svl, %.lr.ph9699 ], [ %.223369696.ph, %.lr.ph9699.preheader ]
  %.1124279695 = phi ptr [ %i.svn, %.lr.ph9699 ], [ %.1124279695.ph, %.lr.ph9699.preheader ] ; 2 uses
  %i.svc = load i16, ptr %.123339697, align 2, !tbaa !24
  %i.svd = zext i16 %i.svc to i32
  %i.sve = shl nuw i32 %i.svd, 16
  %i.svf = bitcast i32 %i.sve to float
  %i.svg = load i16, ptr %.1124279695, align 2, !tbaa !24
  %i.svh = zext i16 %i.svg to i32
  %i.svi = shl nuw i32 %i.svh, 16
  %i.svj = bitcast i32 %i.svi to float
  %i.svk = fmul fast float %i.svj, %i.svf
  %i.svl = fadd fast float %i.svk, %.223369696    ; 2 uses
  %i.svm = getelementptr inbounds nuw i8, ptr %.123339697, i64 2
  %i.svn = getelementptr inbounds nuw i8, ptr %.1124279695, i64 2 ; 2 uses
  %i.svo = add nuw nsw i32 %.123319698, 1         ; 2 uses
  %exitcond10040.not = icmp eq i32 %i.svo, %7
  br i1 %exitcond10040.not, label %._crit_edge9700, label %.lr.ph9699, !llvm.loop !568

._crit_edge9700:                                  ; preds = %.lr.ph9699, %middle.block10708, %vec.epilog.middle.block10731, %.preheader
  %.112427.lcssa = phi ptr [ %.102426.lcssa, %.preheader ], [ %i.stx, %vec.epilog.middle.block10731 ], [ %i.ssc, %middle.block10708 ], [ %i.svn, %.lr.ph9699 ]
  %.22336.lcssa = phi float [ %.12335.lcssa, %.preheader ], [ %i.suj, %vec.epilog.middle.block10731 ], [ %i.sts, %middle.block10708 ], [ %i.svl, %.lr.ph9699 ] ; 14 uses
  br i1 %8, label %bb.hj, label %bb.hs

bb.hj:                                            ; preds = %._crit_edge9700
  switch i32 %9, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.hk
    i32 2, label %bb.hl
    i32 3, label %bb.hm
    i32 4, label %bb.hn
    i32 5, label %bb.ho
    i32 6, label %bb.hp
  ]

bb.hk:                                            ; preds = %bb.hj
  %i.svp = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.22336.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hl:                                            ; preds = %bb.hj
  %i.svq = load float, ptr %i.sec, align 4, !tbaa !22
  %i.svr = fcmp fast ogt float %.22336.lcssa, 0.000000e+00
  %i.svs = select fast i1 %i.svr, float 1.000000e+00, float %i.svq
  %i.svt = fmul fast float %i.svs, %.22336.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hm:                                            ; preds = %bb.hj
  %i.svu = load float, ptr %i.sea, align 4, !tbaa !22
  %i.svv = load float, ptr %i.seb, align 4, !tbaa !22
  %spec.select8808 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.22336.lcssa, float %i.svu)
  %spec.select8809 = tail call nnan ninf nsz float @llvm.minnum.f32(float %spec.select8808, float %i.svv)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hn:                                            ; preds = %bb.hj
  %.sroa.speculated1473 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.22336.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated1473, float f0xC2B0C0A5)
  %i.svw = fneg fast float %.sroa.speculated
  %i.svx = tail call fast float @llvm.exp.f32(float %i.svw)
  %i.svy = fadd fast float %i.svx, 1.000000e+00
  %i.svz = fdiv fast float 1.000000e+00, %i.svy
end_hunk_9
begin_hunk_10_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  %i.ayy = load <4 x float>, ptr %i.ayx, align 16, !tbaa !18 ; 2 uses
  %i.ayz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ayr, <4 x float> nofpclass(nan inf) %i.ayw, <4 x float> nofpclass(nan inf) %.1399982.epil.init)
  %i.aza = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ayr, <4 x float> nofpclass(nan inf) %i.ayy, <4 x float> nofpclass(nan inf) %.1397983.epil.init)
  %i.azb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ayv, <4 x float> nofpclass(nan inf) %i.ayw, <4 x float> nofpclass(nan inf) %.1395984.epil.init)
  %i.azc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ayv, <4 x float> nofpclass(nan inf) %i.ayy, <4 x float> nofpclass(nan inf) %.0393985.epil.init)
  br label %._crit_edge991.loopexit

._crit_edge991.loopexit:                          ; preds = %._crit_edge991.loopexit.unr-lcssa, %.lr.ph990.epil.preheader
  %.lcssa2151 = phi <4 x float> [ %i.ayj, %._crit_edge991.loopexit.unr-lcssa ], [ %i.ayz, %.lr.ph990.epil.preheader ]
  %.lcssa2150 = phi <4 x float> [ %i.ayk, %._crit_edge991.loopexit.unr-lcssa ], [ %i.aza, %.lr.ph990.epil.preheader ]
  %.lcssa2149 = phi <4 x float> [ %i.ayl, %._crit_edge991.loopexit.unr-lcssa ], [ %i.azb, %.lr.ph990.epil.preheader ]
  %.lcssa2148 = phi <4 x float> [ %i.aym, %._crit_edge991.loopexit.unr-lcssa ], [ %i.azc, %.lr.ph990.epil.preheader ]
  %i.azd = getelementptr i8, ptr %.21007997, i64 %i.adr
  %scevgep1454 = getelementptr i8, ptr %i.azd, i64 32
  br label %._crit_edge991

._crit_edge991:                                   ; preds = %._crit_edge991.loopexit, %bb.an
  %.1399.lcssa = phi <4 x float> [ %.0398, %bb.an ], [ %.lcssa2151, %._crit_edge991.loopexit ] ; 2 uses
  %.1397.lcssa = phi <4 x float> [ %.0396, %bb.an ], [ %.lcssa2150, %._crit_edge991.loopexit ] ; 2 uses
  %.1395.lcssa = phi <4 x float> [ %.0394, %bb.an ], [ %.lcssa2149, %._crit_edge991.loopexit ] ; 2 uses
  %.0393.lcssa = phi <4 x float> [ %storemerge1102, %bb.an ], [ %.lcssa2148, %._crit_edge991.loopexit ] ; 2 uses
  %.31008.lcssa = phi ptr [ %.21007997, %bb.an ], [ %scevgep1454, %._crit_edge991.loopexit ] ; 2 uses
  %i.aze = shufflevector <4 x float> %.1399.lcssa, <4 x float> %.1395.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.azf = shufflevector <4 x float> %.1399.lcssa, <4 x float> %.1395.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.azg = shufflevector <4 x float> %.1397.lcssa, <4 x float> %.0393.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.azh = shufflevector <4 x float> %.1397.lcssa, <4 x float> %.0393.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.aze, ptr %.24999, align 1, !tbaa !18
  %i.azi = getelementptr inbounds nuw i8, ptr %.24999, i64 16
  store <4 x float> %i.azf, ptr %i.azi, align 1, !tbaa !18
  %i.azj = getelementptr inbounds nuw i8, ptr %.24999, i64 32
  store <4 x float> %i.azg, ptr %i.azj, align 1, !tbaa !18
  %i.azk = getelementptr inbounds nuw i8, ptr %.24999, i64 48
  store <4 x float> %i.azh, ptr %i.azk, align 1, !tbaa !18
  %i.azl = getelementptr inbounds nuw i8, ptr %.24999, i64 64 ; 2 uses
  %i.azm = add nuw nsw i32 %.11001998, 8          ; 3 uses
  %i.azn = or disjoint i32 %i.azm, 7
  %i.azo = icmp slt i32 %i.azn, %4
  br i1 %i.azo, label %.lr.ph1000, label %.preheader503, !llvm.loop !752

.preheader502:                                    ; preds = %._crit_edge1011, %.preheader503
  %.41009.lcssa = phi ptr [ %.21007.lcssa, %.preheader503 ], [ %.51010.lcssa, %._crit_edge1011 ] ; 2 uses
  %.21002.lcssa = phi i32 [ %.11001.lcssa, %.preheader503 ], [ %i.bbl, %._crit_edge1011 ] ; 3 uses
  %.25.lcssa = phi ptr [ %.24.lcssa, %.preheader503 ], [ %i.bbk, %._crit_edge1011 ] ; 2 uses
  %i.azp = or disjoint i32 %.21002.lcssa, 1
  %i.azq = icmp slt i32 %i.azp, %4
  br i1 %i.azq, label %.lr.ph1040.preheader, label %.preheader501

.lr.ph1040.preheader:                             ; preds = %.preheader502
  %i.azr = getelementptr i8, ptr %i.atw, i64 %i.aed
  %i.azs = getelementptr i8, ptr %i.atw, i64 %i.aef
  br label %.lr.ph1040

.lr.ph1018:                                       ; preds = %.preheader503, %._crit_edge1011
  %.251017 = phi ptr [ %i.bbk, %._crit_edge1011 ], [ %.24.lcssa, %.preheader503 ] ; 5 uses
  %.210021016 = phi i32 [ %i.bbl, %._crit_edge1011 ], [ %.11001.lcssa, %.preheader503 ]
  %.410091015 = phi ptr [ %.51010.lcssa, %._crit_edge1011 ], [ %.21007.lcssa, %.preheader503 ] ; 4 uses
  br i1 %i.adl, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph1018
  %i.azt = load <4 x float>, ptr %.251017, align 1, !tbaa !18 ; 2 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %.251017, i64 16
  %i.azv = load <4 x float>, ptr %i.azu, align 1, !tbaa !18 ; 2 uses
  %i.azw = shufflevector <4 x float> %i.azt, <4 x float> %i.azv, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.azx = shufflevector <4 x float> %i.azt, <4 x float> %i.azv, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph1018, %bb.ao
  %.0384 = phi nsz <4 x float> [ %i.azw, %bb.ao ], [ zeroinitializer, %.lr.ph1018 ] ; 3 uses
  %storemerge1101 = phi <4 x float> [ %i.azx, %bb.ao ], [ zeroinitializer, %.lr.ph1018 ] ; 3 uses
  br i1 %i.adm, label %.lr.ph1010.preheader, label %._crit_edge1011

.lr.ph1010.preheader:                             ; preds = %bb.ap
  br i1 %i.aea, label %.lr.ph1010.epil.preheader, label %.lr.ph1010

.lr.ph1010:                                       ; preds = %.lr.ph1010.preheader, %.lr.ph1010
  %.09391007 = phi ptr [ %i.bau, %.lr.ph1010 ], [ %i.atw, %.lr.ph1010.preheader ] ; 5 uses
  %.510101006 = phi ptr [ %i.bav, %.lr.ph1010 ], [ %.410091015, %.lr.ph1010.preheader ] ; 3 uses
  %.03831005 = phi <4 x float> [ %i.bat, %.lr.ph1010 ], [ %storemerge1101, %.lr.ph1010.preheader ]
  %.13851004 = phi <4 x float> [ %i.bao, %.lr.ph1010 ], [ %.0384, %.lr.ph1010.preheader ]
  %niter2362 = phi i32 [ %niter2362.next.1, %.lr.ph1010 ], [ 0, %.lr.ph1010.preheader ]
  %i.azy = load <4 x float>, ptr %.510101006, align 16, !tbaa !18 ; 2 uses
  %i.azz = load float, ptr %.09391007, align 4, !tbaa !22
  %i.baa = insertelement <4 x float> poison, float %i.azz, i64 0
  %i.bab = shufflevector <4 x float> %i.baa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bac = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bab, <4 x float> nofpclass(nan inf) %i.azy, <4 x float> nofpclass(nan inf) %.13851004)
  %i.bad = getelementptr inbounds nuw i8, ptr %.09391007, i64 4
  %i.bae = load float, ptr %i.bad, align 4, !tbaa !22
  %i.baf = insertelement <4 x float> poison, float %i.bae, i64 0
  %i.bag = shufflevector <4 x float> %i.baf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bah = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bag, <4 x float> nofpclass(nan inf) %i.azy, <4 x float> nofpclass(nan inf) %.03831005)
  %i.bai = getelementptr inbounds nuw i8, ptr %.09391007, i64 8
  %i.baj = getelementptr inbounds nuw i8, ptr %.510101006, i64 16
  %i.bak = load <4 x float>, ptr %i.baj, align 16, !tbaa !18 ; 2 uses
  %i.bal = load float, ptr %i.bai, align 4, !tbaa !22
  %i.bam = insertelement <4 x float> poison, float %i.bal, i64 0
  %i.ban = shufflevector <4 x float> %i.bam, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bao = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ban, <4 x float> nofpclass(nan inf) %i.bak, <4 x float> nofpclass(nan inf) %i.bac) ; 3 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %.09391007, i64 12
  %i.baq = load float, ptr %i.bap, align 4, !tbaa !22
  %i.bar = insertelement <4 x float> poison, float %i.baq, i64 0
  %i.bas = shufflevector <4 x float> %i.bar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bat = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bas, <4 x float> nofpclass(nan inf) %i.bak, <4 x float> nofpclass(nan inf) %i.bah) ; 3 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %.09391007, i64 16 ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %.510101006, i64 32 ; 2 uses
  %niter2362.next.1 = add nuw nsw i32 %niter2362, 2 ; 2 uses
  %niter2362.ncmp.1 = icmp eq i32 %niter2362.next.1, %unroll_iter2361
  br i1 %niter2362.ncmp.1, label %._crit_edge1011.loopexit.unr-lcssa, label %.lr.ph1010, !llvm.loop !753

._crit_edge1011.loopexit.unr-lcssa:               ; preds = %.lr.ph1010
  br i1 %lcmp.mod2357.not, label %._crit_edge1011.loopexit, label %.lr.ph1010.epil.preheader

.lr.ph1010.epil.preheader:                        ; preds = %._crit_edge1011.loopexit.unr-lcssa, %.lr.ph1010.preheader
  %.09391007.epil.init = phi ptr [ %i.atw, %.lr.ph1010.preheader ], [ %i.bau, %._crit_edge1011.loopexit.unr-lcssa ] ; 2 uses
  %.510101006.epil.init = phi ptr [ %.410091015, %.lr.ph1010.preheader ], [ %i.bav, %._crit_edge1011.loopexit.unr-lcssa ]
  %.03831005.epil.init = phi <4 x float> [ %storemerge1101, %.lr.ph1010.preheader ], [ %i.bat, %._crit_edge1011.loopexit.unr-lcssa ]
  %.13851004.epil.init = phi <4 x float> [ %.0384, %.lr.ph1010.preheader ], [ %i.bao, %._crit_edge1011.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2360)
  %i.baw = load <4 x float>, ptr %.510101006.epil.init, align 16, !tbaa !18 ; 2 uses
  %i.bax = load float, ptr %.09391007.epil.init, align 4, !tbaa !22
  %i.bay = insertelement <4 x float> poison, float %i.bax, i64 0
  %i.baz = shufflevector <4 x float> %i.bay, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.baz, <4 x float> nofpclass(nan inf) %i.baw, <4 x float> nofpclass(nan inf) %.13851004.epil.init)
  %i.bbb = getelementptr inbounds nuw i8, ptr %.09391007.epil.init, i64 4
  %i.bbc = load float, ptr %i.bbb, align 4, !tbaa !22
  %i.bbd = insertelement <4 x float> poison, float %i.bbc, i64 0
  %i.bbe = shufflevector <4 x float> %i.bbd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bbf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbe, <4 x float> nofpclass(nan inf) %i.baw, <4 x float> nofpclass(nan inf) %.03831005.epil.init)
  br label %._crit_edge1011.loopexit

._crit_edge1011.loopexit:                         ; preds = %._crit_edge1011.loopexit.unr-lcssa, %.lr.ph1010.epil.preheader
  %.lcssa2155 = phi <4 x float> [ %i.bao, %._crit_edge1011.loopexit.unr-lcssa ], [ %i.bba, %.lr.ph1010.epil.preheader ]
  %.lcssa2154 = phi <4 x float> [ %i.bat, %._crit_edge1011.loopexit.unr-lcssa ], [ %i.bbf, %.lr.ph1010.epil.preheader ]
  %i.bbg = getelementptr i8, ptr %.410091015, i64 %i.ads
  %scevgep1456 = getelementptr i8, ptr %i.bbg, i64 16
  br label %._crit_edge1011

._crit_edge1011:                                  ; preds = %._crit_edge1011.loopexit, %bb.ap
  %.1385.lcssa = phi <4 x float> [ %.0384, %bb.ap ], [ %.lcssa2155, %._crit_edge1011.loopexit ] ; 2 uses
  %.0383.lcssa = phi <4 x float> [ %storemerge1101, %bb.ap ], [ %.lcssa2154, %._crit_edge1011.loopexit ] ; 2 uses
  %.51010.lcssa = phi ptr [ %.410091015, %bb.ap ], [ %scevgep1456, %._crit_edge1011.loopexit ] ; 2 uses
  %i.bbh = shufflevector <4 x float> %.1385.lcssa, <4 x float> %.0383.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bbi = shufflevector <4 x float> %.1385.lcssa, <4 x float> %.0383.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.bbh, ptr %.251017, align 1, !tbaa !18
  %i.bbj = getelementptr inbounds nuw i8, ptr %.251017, i64 16
  store <4 x float> %i.bbi, ptr %i.bbj, align 1, !tbaa !18
  %i.bbk = getelementptr inbounds nuw i8, ptr %.251017, i64 32 ; 2 uses
  %i.bbl = add nuw nsw i32 %.210021016, 4         ; 3 uses
  %i.bbm = or disjoint i32 %i.bbl, 3
  %i.bbn = icmp slt i32 %i.bbm, %4
  br i1 %i.bbn, label %.lr.ph1018, label %.preheader502, !llvm.loop !754

.preheader501:                                    ; preds = %._crit_edge1031, %.preheader502
  %.61011.lcssa = phi ptr [ %.41009.lcssa, %.preheader502 ], [ %.71012.lcssa, %._crit_edge1031 ]
  %.31003.lcssa = phi i32 [ %.21002.lcssa, %.preheader502 ], [ %i.bep, %._crit_edge1031 ] ; 2 uses
  %.26.lcssa = phi ptr [ %.25.lcssa, %.preheader502 ], [ %i.beo, %._crit_edge1031 ] ; 2 uses
  %i.bbo = icmp slt i32 %.31003.lcssa, %4
  br i1 %i.bbo, label %.lr.ph1058.preheader, label %._crit_edge1059

.lr.ph1058.preheader:                             ; preds = %.preheader501
  %i.bbp = getelementptr i8, ptr %i.atw, i64 %i.aei
  %i.bbq = getelementptr i8, ptr %i.atw, i64 %i.ael
  br label %.lr.ph1058

.lr.ph1040:                                       ; preds = %.lr.ph1040.preheader, %._crit_edge1031
  %.261039 = phi ptr [ %i.beo, %._crit_edge1031 ], [ %.25.lcssa, %.lr.ph1040.preheader ] ; 9 uses
  %.310031038 = phi i32 [ %i.bep, %._crit_edge1031 ], [ %.21002.lcssa, %.lr.ph1040.preheader ]
  %.610111037 = phi ptr [ %.71012.lcssa, %._crit_edge1031 ], [ %.41009.lcssa, %.lr.ph1040.preheader ] ; 8 uses
  br i1 %i.adl, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph1040
  %i.bbr = load float, ptr %.261039, align 4, !tbaa !22
  %i.bbs = getelementptr inbounds nuw i8, ptr %.261039, i64 4
  %i.bbt = load float, ptr %i.bbs, align 4, !tbaa !22
  %i.bbu = getelementptr inbounds nuw i8, ptr %.261039, i64 8
  %i.bbv = load float, ptr %i.bbu, align 4, !tbaa !22
  %i.bbw = getelementptr inbounds nuw i8, ptr %.261039, i64 12
  %i.bbx = load float, ptr %i.bbw, align 4, !tbaa !22
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph1040, %bb.aq
  %.0919 = phi nsz float [ %i.bbr, %bb.aq ], [ 0.000000e+00, %.lr.ph1040 ] ; 4 uses
  %.0917 = phi nsz float [ %i.bbt, %bb.aq ], [ 0.000000e+00, %.lr.ph1040 ] ; 4 uses
  %.0915 = phi nsz float [ %i.bbv, %bb.aq ], [ 0.000000e+00, %.lr.ph1040 ] ; 4 uses
  %.0913 = phi nsz float [ %i.bbx, %bb.aq ], [ 0.000000e+00, %.lr.ph1040 ] ; 4 uses
  br i1 %i.adm, label %iter.check1952, label %._crit_edge1031

iter.check1952:                                   ; preds = %bb.ar
  br i1 %min.iters.check1907, label %.lr.ph1030.preheader, label %vector.main.loop.iter.check1908

vector.main.loop.iter.check1908:                  ; preds = %iter.check1952
  br i1 %min.iters.check1909, label %vec.epilog.ph1956, label %vector.ph1910

vector.ph1910:                                    ; preds = %vector.main.loop.iter.check1908
  %i.bby = getelementptr i8, ptr %.610111037, i64 %i.aed
  %i.bbz = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0913, i64 0
  %i.bca = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0915, i64 0
  %i.bcb = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0917, i64 0
  %i.bcc = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0919, i64 0
  br label %vector.body1912

vector.body1912:                                  ; preds = %vector.ph1910, %vector.body1912
  %index1913 = phi i64 [ 0, %vector.ph1910 ], [ %index.next1938, %vector.body1912 ] ; 2 uses
  %vec.phi1914 = phi <16 x float> [ %i.bbz, %vector.ph1910 ], [ %i.bct, %vector.body1912 ]
  %vec.phi1915 = phi <16 x float> [ zeroinitializer, %vector.ph1910 ], [ %i.bcu, %vector.body1912 ]
  %vec.phi1916 = phi <16 x float> [ %i.bca, %vector.ph1910 ], [ %i.bcp, %vector.body1912 ]
  %vec.phi1917 = phi <16 x float> [ zeroinitializer, %vector.ph1910 ], [ %i.bcq, %vector.body1912 ]
  %vec.phi1918 = phi <16 x float> [ %i.bcb, %vector.ph1910 ], [ %i.bcl, %vector.body1912 ]
  %vec.phi1919 = phi <16 x float> [ zeroinitializer, %vector.ph1910 ], [ %i.bcm, %vector.body1912 ]
  %vec.phi1920 = phi <16 x float> [ %i.bcc, %vector.ph1910 ], [ %i.bch, %vector.body1912 ]
  %vec.phi1921 = phi <16 x float> [ zeroinitializer, %vector.ph1910 ], [ %i.bci, %vector.body1912 ]
  %i.bcd = shl i64 %index1913, 3                  ; 3 uses
  %i.bce = or disjoint i64 %i.bcd, 128            ; 2 uses
  %next.gep1922 = getelementptr i8, ptr %i.atw, i64 %i.bcd
  %next.gep1923 = getelementptr i8, ptr %i.atw, i64 %i.bce
  %next.gep1924 = getelementptr i8, ptr %.610111037, i64 %i.bcd
  %next.gep1925 = getelementptr i8, ptr %.610111037, i64 %i.bce
  %wide.vec1926 = load <32 x float>, ptr %next.gep1922, align 4, !tbaa !22 ; 2 uses
  %strided.vec1927 = shufflevector <32 x float> %wide.vec1926, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %strided.vec1928 = shufflevector <32 x float> %wide.vec1926, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %wide.vec1929 = load <32 x float>, ptr %next.gep1923, align 4, !tbaa !22 ; 2 uses
  %strided.vec1930 = shufflevector <32 x float> %wide.vec1929, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %strided.vec1931 = shufflevector <32 x float> %wide.vec1929, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %wide.vec1932 = load <32 x float>, ptr %next.gep1924, align 4, !tbaa !22 ; 2 uses
  %strided.vec1933 = shufflevector <32 x float> %wide.vec1932, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %strided.vec1934 = shufflevector <32 x float> %wide.vec1932, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %wide.vec1935 = load <32 x float>, ptr %next.gep1925, align 4, !tbaa !22 ; 2 uses
  %strided.vec1936 = shufflevector <32 x float> %wide.vec1935, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %strided.vec1937 = shufflevector <32 x float> %wide.vec1935, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.bcf = fmul fast <16 x float> %strided.vec1933, %strided.vec1927
  %i.bcg = fmul fast <16 x float> %strided.vec1936, %strided.vec1930
  %i.bch = fadd fast <16 x float> %i.bcf, %vec.phi1920 ; 2 uses
  %i.bci = fadd fast <16 x float> %i.bcg, %vec.phi1921 ; 2 uses
  %i.bcj = fmul fast <16 x float> %strided.vec1928, %strided.vec1933
  %i.bck = fmul fast <16 x float> %strided.vec1931, %strided.vec1936
  %i.bcl = fadd fast <16 x float> %i.bcj, %vec.phi1918 ; 2 uses
  %i.bcm = fadd fast <16 x float> %i.bck, %vec.phi1919 ; 2 uses
  %i.bcn = fmul fast <16 x float> %strided.vec1934, %strided.vec1927
  %i.bco = fmul fast <16 x float> %strided.vec1937, %strided.vec1930
  %i.bcp = fadd fast <16 x float> %i.bcn, %vec.phi1916 ; 2 uses
  %i.bcq = fadd fast <16 x float> %i.bco, %vec.phi1917 ; 2 uses
  %i.bcr = fmul fast <16 x float> %strided.vec1934, %strided.vec1928
  %i.bcs = fmul fast <16 x float> %strided.vec1937, %strided.vec1931
  %i.bct = fadd fast <16 x float> %i.bcr, %vec.phi1914 ; 2 uses
  %i.bcu = fadd fast <16 x float> %i.bcs, %vec.phi1915 ; 2 uses
  %index.next1938 = add nuw i64 %index1913, 32    ; 2 uses
  %i.bcv = icmp eq i64 %index.next1938, %n.vec1911
  br i1 %i.bcv, label %middle.block1939, label %vector.body1912, !llvm.loop !755

middle.block1939:                                 ; preds = %vector.body1912
  %bin.rdx1940 = fadd fast <16 x float> %i.bcu, %i.bct
  %i.bcw = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1940) ; 3 uses
  %bin.rdx1941 = fadd fast <16 x float> %i.bcq, %i.bcp
  %i.bcx = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1941) ; 3 uses
  %bin.rdx1942 = fadd fast <16 x float> %i.bcm, %i.bcl
  %i.bcy = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1942) ; 3 uses
  %bin.rdx1943 = fadd fast <16 x float> %i.bci, %i.bch
  %i.bcz = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1943) ; 3 uses
  br i1 %cmp.n1944, label %._crit_edge1031.loopexit, label %vec.epilog.iter.check1954

vec.epilog.iter.check1954:                        ; preds = %middle.block1939
  br i1 %min.epilog.iters.check1955, label %.lr.ph1030.preheader, label %vec.epilog.ph1956, !prof !28

vec.epilog.ph1956:                                ; preds = %vector.main.loop.iter.check1908, %vec.epilog.iter.check1954
  %vec.epilog.resume.val1945 = phi i64 [ %n.vec1911, %vec.epilog.iter.check1954 ], [ 0, %vector.main.loop.iter.check1908 ]
  %bc.merge.rdx1946 = phi float [ %i.bcw, %vec.epilog.iter.check1954 ], [ %.0913, %vector.main.loop.iter.check1908 ]
  %bc.merge.rdx1947 = phi float [ %i.bcx, %vec.epilog.iter.check1954 ], [ %.0915, %vector.main.loop.iter.check1908 ]
  %bc.merge.rdx1948 = phi float [ %i.bcy, %vec.epilog.iter.check1954 ], [ %.0917, %vector.main.loop.iter.check1908 ]
  %bc.merge.rdx1949 = phi float [ %i.bcz, %vec.epilog.iter.check1954 ], [ %.0919, %vector.main.loop.iter.check1908 ]
  %i.bda = getelementptr i8, ptr %.610111037, i64 %i.aef
  %i.bdb = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1946, i64 0
  %i.bdc = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1947, i64 0
  %i.bdd = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1948, i64 0
  %i.bde = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1949, i64 0
  br label %vec.epilog.vector.body1958

vec.epilog.vector.body1958:                       ; preds = %vec.epilog.vector.body1958, %vec.epilog.ph1956
  %index1959 = phi i64 [ %vec.epilog.resume.val1945, %vec.epilog.ph1956 ], [ %index.next1972, %vec.epilog.vector.body1958 ] ; 2 uses
  %vec.phi1960 = phi <8 x float> [ %i.bdb, %vec.epilog.ph1956 ], [ %i.bdn, %vec.epilog.vector.body1958 ]
  %vec.phi1961 = phi <8 x float> [ %i.bdc, %vec.epilog.ph1956 ], [ %i.bdl, %vec.epilog.vector.body1958 ]
  %vec.phi1962 = phi <8 x float> [ %i.bdd, %vec.epilog.ph1956 ], [ %i.bdj, %vec.epilog.vector.body1958 ]
  %vec.phi1963 = phi <8 x float> [ %i.bde, %vec.epilog.ph1956 ], [ %i.bdh, %vec.epilog.vector.body1958 ]
  %i.bdf = shl i64 %index1959, 3                  ; 2 uses
  %next.gep1964 = getelementptr i8, ptr %i.atw, i64 %i.bdf
  %next.gep1965 = getelementptr i8, ptr %.610111037, i64 %i.bdf
  %wide.vec1966 = load <16 x float>, ptr %next.gep1964, align 4, !tbaa !22 ; 2 uses
  %strided.vec1967 = shufflevector <16 x float> %wide.vec1966, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec1968 = shufflevector <16 x float> %wide.vec1966, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec1969 = load <16 x float>, ptr %next.gep1965, align 4, !tbaa !22 ; 2 uses
  %strided.vec1970 = shufflevector <16 x float> %wide.vec1969, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec1971 = shufflevector <16 x float> %wide.vec1969, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.bdg = fmul fast <8 x float> %strided.vec1970, %strided.vec1967
  %i.bdh = fadd fast <8 x float> %i.bdg, %vec.phi1963 ; 2 uses
  %i.bdi = fmul fast <8 x float> %strided.vec1968, %strided.vec1970
  %i.bdj = fadd fast <8 x float> %i.bdi, %vec.phi1962 ; 2 uses
  %i.bdk = fmul fast <8 x float> %strided.vec1971, %strided.vec1967
  %i.bdl = fadd fast <8 x float> %i.bdk, %vec.phi1961 ; 2 uses
  %i.bdm = fmul fast <8 x float> %strided.vec1971, %strided.vec1968
  %i.bdn = fadd fast <8 x float> %i.bdm, %vec.phi1960 ; 2 uses
  %index.next1972 = add nuw i64 %index1959, 8     ; 2 uses
  %i.bdo = icmp eq i64 %index.next1972, %n.vec1957
  br i1 %i.bdo, label %vec.epilog.middle.block1973, label %vec.epilog.vector.body1958, !llvm.loop !756

vec.epilog.middle.block1973:                      ; preds = %vec.epilog.vector.body1958
  %i.bdp = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bdn) ; 2 uses
  %i.bdq = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bdl) ; 2 uses
  %i.bdr = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bdj) ; 2 uses
  %i.bds = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bdh) ; 2 uses
  br i1 %cmp.n1974, label %._crit_edge1031.loopexit, label %.lr.ph1030.preheader

.lr.ph1030.preheader:                             ; preds = %iter.check1952, %vec.epilog.iter.check1954, %vec.epilog.middle.block1973
  %.09121028.ph = phi i32 [ 0, %iter.check1952 ], [ %i.aec, %vec.epilog.iter.check1954 ], [ %i.aee, %vec.epilog.middle.block1973 ]
  %.19141027.ph = phi float [ %.0913, %iter.check1952 ], [ %i.bcw, %vec.epilog.iter.check1954 ], [ %i.bdp, %vec.epilog.middle.block1973 ]
  %.19161026.ph = phi float [ %.0915, %iter.check1952 ], [ %i.bcx, %vec.epilog.iter.check1954 ], [ %i.bdq, %vec.epilog.middle.block1973 ]
  %.19181025.ph = phi float [ %.0917, %iter.check1952 ], [ %i.bcy, %vec.epilog.iter.check1954 ], [ %i.bdr, %vec.epilog.middle.block1973 ]
  %.19201024.ph = phi float [ %.0919, %iter.check1952 ], [ %i.bcz, %vec.epilog.iter.check1954 ], [ %i.bds, %vec.epilog.middle.block1973 ]
  %.09211023.ph = phi ptr [ %i.atw, %iter.check1952 ], [ %i.azr, %vec.epilog.iter.check1954 ], [ %i.azs, %vec.epilog.middle.block1973 ]
  %.710121022.ph = phi ptr [ %.610111037, %iter.check1952 ], [ %i.bby, %vec.epilog.iter.check1954 ], [ %i.bda, %vec.epilog.middle.block1973 ]
  br label %.lr.ph1030

.lr.ph1030:                                       ; preds = %.lr.ph1030.preheader, %.lr.ph1030
  %.09121028 = phi i32 [ %i.bej, %.lr.ph1030 ], [ %.09121028.ph, %.lr.ph1030.preheader ]
  %.19141027 = phi float [ %i.beg, %.lr.ph1030 ], [ %.19141027.ph, %.lr.ph1030.preheader ]
  %.19161026 = phi float [ %i.bee, %.lr.ph1030 ], [ %.19161026.ph, %.lr.ph1030.preheader ]
  %.19181025 = phi float [ %i.bea, %.lr.ph1030 ], [ %.19181025.ph, %.lr.ph1030.preheader ]
  %.19201024 = phi float [ %i.bdw, %.lr.ph1030 ], [ %.19201024.ph, %.lr.ph1030.preheader ]
  %.09211023 = phi ptr [ %i.beh, %.lr.ph1030 ], [ %.09211023.ph, %.lr.ph1030.preheader ] ; 3 uses
  %.710121022 = phi ptr [ %i.bei, %.lr.ph1030 ], [ %.710121022.ph, %.lr.ph1030.preheader ] ; 3 uses
  %i.bdt = load float, ptr %.09211023, align 4, !tbaa !22 ; 2 uses
  %i.bdu = load float, ptr %.710121022, align 4, !tbaa !22 ; 2 uses
  %i.bdv = fmul fast float %i.bdu, %i.bdt
  %i.bdw = fadd fast float %i.bdv, %.19201024     ; 2 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %.09211023, i64 4
  %i.bdy = load float, ptr %i.bdx, align 4, !tbaa !22 ; 2 uses
  %i.bdz = fmul fast float %i.bdy, %i.bdu
  %i.bea = fadd fast float %i.bdz, %.19181025     ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %.710121022, i64 4
  %i.bec = load float, ptr %i.beb, align 4, !tbaa !22 ; 2 uses
  %i.bed = fmul fast float %i.bec, %i.bdt
  %i.bee = fadd fast float %i.bed, %.19161026     ; 2 uses
  %i.bef = fmul fast float %i.bec, %i.bdy
  %i.beg = fadd fast float %i.bef, %.19141027     ; 2 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %.09211023, i64 8
  %i.bei = getelementptr inbounds nuw i8, ptr %.710121022, i64 8
  %i.bej = add nuw nsw i32 %.09121028, 1          ; 2 uses
  %exitcond1459.not = icmp eq i32 %i.bej, %6
  br i1 %exitcond1459.not, label %._crit_edge1031.loopexit, label %.lr.ph1030, !llvm.loop !757

._crit_edge1031.loopexit:                         ; preds = %.lr.ph1030, %vec.epilog.middle.block1973, %middle.block1939
  %.lcssa1734 = phi float [ %i.bds, %vec.epilog.middle.block1973 ], [ %i.bcz, %middle.block1939 ], [ %i.bdw, %.lr.ph1030 ]
  %.lcssa1733 = phi float [ %i.bdr, %vec.epilog.middle.block1973 ], [ %i.bcy, %middle.block1939 ], [ %i.bea, %.lr.ph1030 ]
  %.lcssa1732 = phi float [ %i.bdq, %vec.epilog.middle.block1973 ], [ %i.bcx, %middle.block1939 ], [ %i.bee, %.lr.ph1030 ]
  %.lcssa1731 = phi float [ %i.bdp, %vec.epilog.middle.block1973 ], [ %i.bcw, %middle.block1939 ], [ %i.beg, %.lr.ph1030 ]
  %i.bek = getelementptr i8, ptr %.610111037, i64 %i.adt
  %scevgep1458 = getelementptr i8, ptr %i.bek, i64 8
  br label %._crit_edge1031

._crit_edge1031:                                  ; preds = %._crit_edge1031.loopexit, %bb.ar
  %.71012.lcssa = phi ptr [ %.610111037, %bb.ar ], [ %scevgep1458, %._crit_edge1031.loopexit ] ; 2 uses
  %.1920.lcssa = phi float [ %.0919, %bb.ar ], [ %.lcssa1734, %._crit_edge1031.loopexit ]
  %.1918.lcssa = phi float [ %.0917, %bb.ar ], [ %.lcssa1733, %._crit_edge1031.loopexit ]
  %.1916.lcssa = phi float [ %.0915, %bb.ar ], [ %.lcssa1732, %._crit_edge1031.loopexit ]
  %.1914.lcssa = phi float [ %.0913, %bb.ar ], [ %.lcssa1731, %._crit_edge1031.loopexit ]
  store float %.1920.lcssa, ptr %.261039, align 4, !tbaa !22
  %i.bel = getelementptr inbounds nuw i8, ptr %.261039, i64 4
  store float %.1918.lcssa, ptr %i.bel, align 4, !tbaa !22
  %i.bem = getelementptr inbounds nuw i8, ptr %.261039, i64 8
  store float %.1916.lcssa, ptr %i.bem, align 4, !tbaa !22
  %i.ben = getelementptr inbounds nuw i8, ptr %.261039, i64 12
  store float %.1914.lcssa, ptr %i.ben, align 4, !tbaa !22
  %i.beo = getelementptr inbounds nuw i8, ptr %.261039, i64 16 ; 2 uses
  %i.bep = add nuw nsw i32 %.310031038, 2         ; 3 uses
  %i.beq = or disjoint i32 %i.bep, 1
  %i.ber = icmp slt i32 %i.beq, %4
  br i1 %i.ber, label %.lr.ph1040, label %.preheader501, !llvm.loop !758

.lr.ph1058:                                       ; preds = %.lr.ph1058.preheader, %._crit_edge1051
  %.271057 = phi ptr [ %i.bgy, %._crit_edge1051 ], [ %.26.lcssa, %.lr.ph1058.preheader ] ; 5 uses
  %.410041056 = phi i32 [ %i.bgz, %._crit_edge1051 ], [ %.31003.lcssa, %.lr.ph1058.preheader ]
  %.810131055 = phi ptr [ %.91014.lcssa, %._crit_edge1051 ], [ %.61011.lcssa, %.lr.ph1058.preheader ] ; 7 uses
  br i1 %i.adl, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph1058
  %i.bes = load float, ptr %.271057, align 4, !tbaa !22
  %i.bet = getelementptr inbounds nuw i8, ptr %.271057, i64 4
  %i.beu = load float, ptr %i.bet, align 4, !tbaa !22
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph1058, %bb.as
  %.0909 = phi nsz float [ %i.bes, %bb.as ], [ 0.000000e+00, %.lr.ph1058 ] ; 4 uses
  %.0907 = phi nsz float [ %i.beu, %bb.as ], [ 0.000000e+00, %.lr.ph1058 ] ; 4 uses
  br i1 %i.adm, label %iter.check, label %._crit_edge1051

iter.check:                                       ; preds = %bb.at
  br i1 %min.iters.check, label %.lr.ph1050.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1857, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bev = getelementptr i8, ptr %.810131055, i64 %i.aej
  %i.bew = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0907, i64 0
  %i.bex = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0909, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <16 x float> [ %i.bew, %vector.ph ], [ %i.bfs, %vector.body ]
  %vec.phi1858 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bft, %vector.body ]
  %vec.phi1859 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfu, %vector.body ]
  %vec.phi1860 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfv, %vector.body ]
  %vec.phi1861 = phi <16 x float> [ %i.bex, %vector.ph ], [ %i.bfk, %vector.body ]
  %vec.phi1862 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfl, %vector.body ]
  %vec.phi1863 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfm, %vector.body ]
  %vec.phi1864 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfn, %vector.body ]
  %i.bey = shl i64 %index, 3                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.atw, i64 %i.bey
  %i.bez = getelementptr i8, ptr %i.atw, i64 %i.bey
  %next.gep1865 = getelementptr i8, ptr %i.bez, i64 128
  %i.bfa = getelementptr i8, ptr %i.atw, i64 %i.bey
  %next.gep1866 = getelementptr i8, ptr %i.bfa, i64 256
  %i.bfb = getelementptr i8, ptr %i.atw, i64 %i.bey
  %next.gep1867 = getelementptr i8, ptr %i.bfb, i64 384
  %i.bfc = shl i64 %index, 2
  %next.gep1868 = getelementptr i8, ptr %.810131055, i64 %i.bfc ; 4 uses
  %wide.vec = load <32 x float>, ptr %next.gep, align 4, !tbaa !22 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec1869 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec1870 = load <32 x float>, ptr %next.gep1865, align 4, !tbaa !22 ; 2 uses
  %strided.vec1871 = shufflevector <32 x float> %wide.vec1870, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec1872 = shufflevector <32 x float> %wide.vec1870, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec1873 = load <32 x float>, ptr %next.gep1866, align 4, !tbaa !22 ; 2 uses
  %strided.vec1874 = shufflevector <32 x float> %wide.vec1873, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec1875 = shufflevector <32 x float> %wide.vec1873, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec1876 = load <32 x float>, ptr %next.gep1867, align 4, !tbaa !22 ; 2 uses
  %strided.vec1877 = shufflevector <32 x float> %wide.vec1876, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec1878 = shufflevector <32 x float> %wide.vec1876, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.bfd = getelementptr i8, ptr %next.gep1868, i64 64
  %i.bfe = getelementptr i8, ptr %next.gep1868, i64 128
  %i.bff = getelementptr i8, ptr %next.gep1868, i64 192
  %wide.load = load <16 x float>, ptr %next.gep1868, align 4, !tbaa !22 ; 2 uses
  %wide.load1879 = load <16 x float>, ptr %i.bfd, align 4, !tbaa !22 ; 2 uses
  %wide.load1880 = load <16 x float>, ptr %i.bfe, align 4, !tbaa !22 ; 2 uses
  %wide.load1881 = load <16 x float>, ptr %i.bff, align 4, !tbaa !22 ; 2 uses
  %i.bfg = fmul fast <16 x float> %wide.load, %strided.vec
  %i.bfh = fmul fast <16 x float> %wide.load1879, %strided.vec1871
  %i.bfi = fmul fast <16 x float> %wide.load1880, %strided.vec1874
  %i.bfj = fmul fast <16 x float> %wide.load1881, %strided.vec1877
  %i.bfk = fadd fast <16 x float> %i.bfg, %vec.phi1861 ; 2 uses
  %i.bfl = fadd fast <16 x float> %i.bfh, %vec.phi1862 ; 2 uses
  %i.bfm = fadd fast <16 x float> %i.bfi, %vec.phi1863 ; 2 uses
  %i.bfn = fadd fast <16 x float> %i.bfj, %vec.phi1864 ; 2 uses
  %i.bfo = fmul fast <16 x float> %strided.vec1869, %wide.load
  %i.bfp = fmul fast <16 x float> %strided.vec1872, %wide.load1879
  %i.bfq = fmul fast <16 x float> %strided.vec1875, %wide.load1880
  %i.bfr = fmul fast <16 x float> %strided.vec1878, %wide.load1881
  %i.bfs = fadd fast <16 x float> %i.bfo, %vec.phi ; 2 uses
  %i.bft = fadd fast <16 x float> %i.bfp, %vec.phi1858 ; 2 uses
  %i.bfu = fadd fast <16 x float> %i.bfq, %vec.phi1859 ; 2 uses
  %i.bfv = fadd fast <16 x float> %i.bfr, %vec.phi1860 ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bfw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bfw, label %middle.block, label %vector.body, !llvm.loop !759

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <16 x float> %i.bft, %i.bfs
  %bin.rdx1882 = fadd fast <16 x float> %i.bfu, %bin.rdx
  %bin.rdx1883 = fadd fast <16 x float> %i.bfv, %bin.rdx1882
  %i.bfx = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1883) ; 3 uses
  %bin.rdx1884 = fadd fast <16 x float> %i.bfl, %i.bfk
  %bin.rdx1885 = fadd fast <16 x float> %i.bfm, %bin.rdx1884
  %bin.rdx1886 = fadd fast <16 x float> %i.bfn, %bin.rdx1885
  %i.bfy = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1886) ; 3 uses
  br i1 %cmp.n, label %._crit_edge1051.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph1050.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.bfx, %vec.epilog.iter.check ], [ %.0907, %vector.main.loop.iter.check ]
  %bc.merge.rdx1887 = phi float [ %i.bfy, %vec.epilog.iter.check ], [ %.0909, %vector.main.loop.iter.check ]
  %i.bfz = getelementptr i8, ptr %.810131055, i64 %i.aem
  %i.bga = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.bgb = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1887, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1891 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1900, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi1892 = phi <8 x float> [ %i.bga, %vec.epilog.ph ], [ %i.bgh, %vec.epilog.vector.body ]
  %vec.phi1893 = phi <8 x float> [ %i.bgb, %vec.epilog.ph ], [ %i.bgf, %vec.epilog.vector.body ]
  %i.bgc = shl i64 %index1891, 3
  %next.gep1894 = getelementptr i8, ptr %i.atw, i64 %i.bgc
  %i.bgd = shl i64 %index1891, 2
  %next.gep1895 = getelementptr i8, ptr %.810131055, i64 %i.bgd
  %wide.vec1896 = load <16 x float>, ptr %next.gep1894, align 4, !tbaa !22 ; 2 uses
  %strided.vec1897 = shufflevector <16 x float> %wide.vec1896, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1898 = shufflevector <16 x float> %wide.vec1896, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.load1899 = load <8 x float>, ptr %next.gep1895, align 4, !tbaa !22 ; 2 uses
  %i.bge = fmul fast <8 x float> %wide.load1899, %strided.vec1897
  %i.bgf = fadd fast <8 x float> %i.bge, %vec.phi1893 ; 2 uses
  %i.bgg = fmul fast <8 x float> %strided.vec1898, %wide.load1899
  %i.bgh = fadd fast <8 x float> %i.bgg, %vec.phi1892 ; 2 uses
  %index.next1900 = add nuw i64 %index1891, 8     ; 2 uses
  %i.bgi = icmp eq i64 %index.next1900, %n.vec1890
  br i1 %i.bgi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !760

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bgj = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bgh) ; 2 uses
  %i.bgk = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bgf) ; 2 uses
  br i1 %cmp.n1901, label %._crit_edge1051.loopexit, label %.lr.ph1050.preheader

.lr.ph1050.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09061048.ph = phi i32 [ 0, %iter.check ], [ %i.aeh, %vec.epilog.iter.check ], [ %i.aek, %vec.epilog.middle.block ]
  %.19081047.ph = phi float [ %.0907, %iter.check ], [ %i.bfx, %vec.epilog.iter.check ], [ %i.bgj, %vec.epilog.middle.block ]
  %.19101046.ph = phi float [ %.0909, %iter.check ], [ %i.bfy, %vec.epilog.iter.check ], [ %i.bgk, %vec.epilog.middle.block ]
  %.09111045.ph = phi ptr [ %i.atw, %iter.check ], [ %i.bbp, %vec.epilog.iter.check ], [ %i.bbq, %vec.epilog.middle.block ]
  %.910141044.ph = phi ptr [ %.810131055, %iter.check ], [ %i.bev, %vec.epilog.iter.check ], [ %i.bfz, %vec.epilog.middle.block ]
  br label %.lr.ph1050

.lr.ph1050:                                       ; preds = %.lr.ph1050.preheader, %.lr.ph1050
  %.09061048 = phi i32 [ %i.bgv, %.lr.ph1050 ], [ %.09061048.ph, %.lr.ph1050.preheader ]
  %.19081047 = phi float [ %i.bgs, %.lr.ph1050 ], [ %.19081047.ph, %.lr.ph1050.preheader ]
  %.19101046 = phi float [ %i.bgo, %.lr.ph1050 ], [ %.19101046.ph, %.lr.ph1050.preheader ]
  %.09111045 = phi ptr [ %i.bgt, %.lr.ph1050 ], [ %.09111045.ph, %.lr.ph1050.preheader ] ; 3 uses
  %.910141044 = phi ptr [ %i.bgu, %.lr.ph1050 ], [ %.910141044.ph, %.lr.ph1050.preheader ] ; 2 uses
  %i.bgl = load float, ptr %.09111045, align 4, !tbaa !22
  %i.bgm = load float, ptr %.910141044, align 4, !tbaa !22 ; 2 uses
  %i.bgn = fmul fast float %i.bgm, %i.bgl
  %i.bgo = fadd fast float %i.bgn, %.19101046     ; 2 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %.09111045, i64 4
  %i.bgq = load float, ptr %i.bgp, align 4, !tbaa !22
  %i.bgr = fmul fast float %i.bgq, %i.bgm
  %i.bgs = fadd fast float %i.bgr, %.19081047     ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %.09111045, i64 8
  %i.bgu = getelementptr inbounds nuw i8, ptr %.910141044, i64 4
  %i.bgv = add nuw nsw i32 %.09061048, 1          ; 2 uses
  %exitcond1461.not = icmp eq i32 %i.bgv, %6
  br i1 %exitcond1461.not, label %._crit_edge1051.loopexit, label %.lr.ph1050, !llvm.loop !761

._crit_edge1051.loopexit:                         ; preds = %.lr.ph1050, %vec.epilog.middle.block, %middle.block
  %.lcssa1738 = phi float [ %i.bgk, %vec.epilog.middle.block ], [ %i.bfy, %middle.block ], [ %i.bgo, %.lr.ph1050 ]
  %.lcssa1737 = phi float [ %i.bgj, %vec.epilog.middle.block ], [ %i.bfx, %middle.block ], [ %i.bgs, %.lr.ph1050 ]
  %i.bgw = getelementptr i8, ptr %.810131055, i64 %i.adu
  %scevgep1460 = getelementptr i8, ptr %i.bgw, i64 4
  br label %._crit_edge1051

._crit_edge1051:                                  ; preds = %._crit_edge1051.loopexit, %bb.at
  %.91014.lcssa = phi ptr [ %.810131055, %bb.at ], [ %scevgep1460, %._crit_edge1051.loopexit ]
  %.1910.lcssa = phi float [ %.0909, %bb.at ], [ %.lcssa1738, %._crit_edge1051.loopexit ]
  %.1908.lcssa = phi float [ %.0907, %bb.at ], [ %.lcssa1737, %._crit_edge1051.loopexit ]
  store float %.1910.lcssa, ptr %.271057, align 4, !tbaa !22
  %i.bgx = getelementptr inbounds nuw i8, ptr %.271057, i64 4
  store float %.1908.lcssa, ptr %i.bgx, align 4, !tbaa !22
  %i.bgy = getelementptr inbounds nuw i8, ptr %.271057, i64 8 ; 2 uses
  %i.bgz = add nuw nsw i32 %.410041056, 1         ; 2 uses
  %exitcond1462.not = icmp eq i32 %i.bgz, %4
  br i1 %exitcond1462.not, label %._crit_edge1059, label %.lr.ph1058, !llvm.loop !762

._crit_edge1059:                                  ; preds = %._crit_edge1051, %.preheader501
  %.27.lcssa = phi ptr [ %.26.lcssa, %.preheader501 ], [ %i.bgy, %._crit_edge1051 ] ; 3 uses
  %indvars.iv.next1464 = add nuw nsw i64 %indvars.iv1463, 1 ; 2 uses
  %exitcond1467.not = icmp eq i64 %indvars.iv.next1464, %wide.trip.count1466
  br i1 %exitcond1467.not, label %bb.ai, label %bb.aj, !llvm.loop !763

.preheader499:                                    ; preds = %.preheader499.lr.ph, %bb.au
  %indvars.iv1491 = phi i64 [ %i.asw, %.preheader499.lr.ph ], [ %indvars.iv.next1492, %bb.au ] ; 2 uses
  %.281172 = phi ptr [ %.21.lcssa, %.preheader499.lr.ph ], [ %.34.lcssa, %bb.au ]
  %i.bha = mul nsw i64 %indvars.iv1491, %i.asx
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge1167
  %indvars.iv.next1492 = add nuw nsw i64 %indvars.iv1491, 1 ; 2 uses
  %exitcond1495.not = icmp eq i64 %indvars.iv.next1492, %wide.trip.count1494
  br i1 %exitcond1495.not, label %._crit_edge1173, label %.preheader499, !llvm.loop !764

bb.av:                                            ; preds = %.preheader499, %._crit_edge1167
  %indvars.iv1486 = phi i64 [ 0, %.preheader499 ], [ %indvars.iv.next1487, %._crit_edge1167 ] ; 3 uses
  %.291169 = phi ptr [ %.281172, %.preheader499 ], [ %.34.lcssa, %._crit_edge1167 ] ; 2 uses
  %i.bhb = load ptr, ptr %0, align 8, !tbaa !15
  %i.bhc = load i32, ptr %i.asg, align 4, !tbaa !31
  %i.bhd = sext i32 %i.bhc to i64
  %i.bhe = mul nsw i64 %indvars.iv1486, %i.bhd
  %i.bhf = load i64, ptr %i.ash, align 8, !tbaa !17
  %i.bhg = mul i64 %i.bhe, %i.bhf
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhb, i64 %i.bhg
  %i.bhi = getelementptr inbounds [4 x i8], ptr %i.bhh, i64 %i.bha ; 16 uses
  %i.bhj = load ptr, ptr %1, align 8, !tbaa !15
  %i.bhk = load i32, ptr %i.asi, align 4, !tbaa !31
  %i.bhl = sext i32 %i.bhk to i64
  %i.bhm = mul nsw i64 %indvars.iv1486, %i.bhl
  %i.bhn = load i64, ptr %i.asj, align 8, !tbaa !17
  %i.bho = mul i64 %i.bhm, %i.bhn
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bhj, i64 %i.bho ; 2 uses
  br i1 %i.ask, label %.lr.ph1086, label %.preheader498

.preheader498:                                    ; preds = %._crit_edge1076, %bb.av
  %.30.lcssa = phi ptr [ %.291169, %bb.av ], [ %i.bjx, %._crit_edge1076 ] ; 2 uses
  %.0900.lcssa = phi ptr [ %i.bhp, %bb.av ], [ %.1901.lcssa, %._crit_edge1076 ] ; 2 uses
  %.0898.lcssa = phi i32 [ 0, %bb.av ], [ %i.asq, %._crit_edge1076 ] ; 3 uses
  %i.bhq = or disjoint i32 %.0898.lcssa, 7
  %i.bhr = icmp slt i32 %i.bhq, %4
  br i1 %i.bhr, label %.lr.ph1104, label %.preheader497

.lr.ph1086:                                       ; preds = %bb.av, %._crit_edge1076
  %.08981084 = phi i32 [ %i.bjy, %._crit_edge1076 ], [ 0, %bb.av ]
end_hunk_10
begin_hunk_11_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a

.lr.ph1113.us.epil:                               ; preds = %.lr.ph1113.us.epil, %.lr.ph1113.us.epil.preheader
  %.08931110.us.epil = phi ptr [ %i.bll, %.lr.ph1113.us.epil ], [ %.08931110.us.epil.init, %.lr.ph1113.us.epil.preheader ] ; 2 uses
  %.51109.us.epil = phi ptr [ %i.blm, %.lr.ph1113.us.epil ], [ %.51109.us.epil.init, %.lr.ph1113.us.epil.preheader ] ; 2 uses
  %.03501108.us.epil = phi <4 x float> [ %i.blk, %.lr.ph1113.us.epil ], [ %.03501108.us.epil.init, %.lr.ph1113.us.epil.preheader ]
  %epil.iter2382 = phi i32 [ %epil.iter2382.next, %.lr.ph1113.us.epil ], [ 0, %.lr.ph1113.us.epil.preheader ]
  %i.blg = load float, ptr %.08931110.us.epil, align 4, !tbaa !22
  %i.blh = insertelement <4 x float> poison, float %i.blg, i64 0
  %i.bli = shufflevector <4 x float> %i.blh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.blj = load <4 x float>, ptr %.51109.us.epil, align 16, !tbaa !18
  %i.blk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bli, <4 x float> nofpclass(nan inf) %i.blj, <4 x float> nofpclass(nan inf) %.03501108.us.epil) ; 2 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %.08931110.us.epil, i64 4
  %i.blm = getelementptr inbounds nuw i8, ptr %.51109.us.epil, i64 16
  %epil.iter2382.next = add i32 %epil.iter2382, 1 ; 2 uses
  %epil.iter2382.cmp.not = icmp eq i32 %epil.iter2382.next, %xtraiter2381
  br i1 %epil.iter2382.cmp.not, label %._crit_edge1114.us, label %.lr.ph1113.us.epil, !llvm.loop !768

._crit_edge1114.us:                               ; preds = %.lr.ph1113.us.epil, %._crit_edge1114.us.unr-lcssa
  %.lcssa2115 = phi <4 x float> [ %i.bld, %._crit_edge1114.us.unr-lcssa ], [ %i.blk, %.lr.ph1113.us.epil ]
  %i.bln = getelementptr i8, ptr %.49041118.us, i64 %i.ast
  %scevgep1479 = getelementptr i8, ptr %i.bln, i64 16 ; 2 uses
  store <4 x float> %.lcssa2115, ptr %.321117.us, align 1, !tbaa !18
  %i.blo = getelementptr inbounds nuw i8, ptr %.321117.us, i64 16 ; 2 uses
  %i.blp = add nuw nsw i32 %.21119.us, 4          ; 3 uses
  %i.blq = or disjoint i32 %i.blp, 3
  %i.blr = icmp slt i32 %i.blq, %4
  br i1 %i.blr, label %.lr.ph1120.split.us, label %.preheader496, !llvm.loop !769

.lr.ph1120.split:                                 ; preds = %.lr.ph1120
  br i1 %i.asl, label %.lr.ph1120.split.split.us.preheader, label %.lr.ph1120.split.split.preheader

.lr.ph1120.split.split.preheader:                 ; preds = %.lr.ph1120.split
  %scevgep1475 = getelementptr i8, ptr %.31.lcssa, i64 16
  %i.bls = sub i32 %i.ass, %.1899.lcssa           ; 2 uses
  %i.blt = lshr i32 %i.bls, 2
  %i.blu = zext nneg i32 %i.blt to i64
  %i.blv = shl nuw nsw i64 %i.blu, 4
  %scevgep1476 = getelementptr i8, ptr %scevgep1475, i64 %i.blv
  %i.blw = add i32 %.1899.lcssa, 4
  %i.blx = and i32 %i.bls, -4
  %i.bly = add i32 %i.blw, %i.blx
  br label %.preheader496

.lr.ph1120.split.split.us.preheader:              ; preds = %.lr.ph1120.split
  %i.blz = sub i32 %i.ass, %.1899.lcssa           ; 2 uses
  %i.bma = lshr i32 %i.blz, 2
  %i.bmb = zext nneg i32 %i.bma to i64
  %i.bmc = shl nuw nsw i64 %i.bmb, 4              ; 2 uses
  %i.bmd = add nuw nsw i64 %i.bmc, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.31.lcssa, i8 0, i64 %i.bmd, i1 false), !tbaa !18
  %scevgep1477 = getelementptr i8, ptr %.31.lcssa, i64 16
  %scevgep1478 = getelementptr i8, ptr %scevgep1477, i64 %i.bmc
  %i.bme = add i32 %.1899.lcssa, 4
  %i.bmf = and i32 %i.blz, -4
  %i.bmg = add i32 %i.bme, %i.bmf
  br label %.preheader496

.lr.ph1104:                                       ; preds = %.preheader498, %._crit_edge1097
  %.18991103 = phi i32 [ %i.bnp, %._crit_edge1097 ], [ %.0898.lcssa, %.preheader498 ]
  %.29021102 = phi ptr [ %.3903.lcssa, %._crit_edge1097 ], [ %.0900.lcssa, %.preheader498 ] ; 4 uses
  %.311101 = phi ptr [ %i.bno, %._crit_edge1097 ], [ %.30.lcssa, %.preheader498 ] ; 5 uses
  br i1 %i.asl, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph1104
  %i.bmh = load <4 x float>, ptr %.311101, align 1, !tbaa !18
  %i.bmi = getelementptr inbounds nuw i8, ptr %.311101, i64 16
  %i.bmj = load <4 x float>, ptr %i.bmi, align 1, !tbaa !18
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph1104, %bb.az
  %.0358 = phi nsz <4 x float> [ %i.bmh, %bb.az ], [ zeroinitializer, %.lr.ph1104 ] ; 3 uses
  %storemerge1099 = phi <4 x float> [ %i.bmj, %bb.az ], [ zeroinitializer, %.lr.ph1104 ] ; 3 uses
  br i1 %i.asm, label %.lr.ph1096.preheader, label %._crit_edge1097

.lr.ph1096.preheader:                             ; preds = %bb.ba
  br i1 %i.ata, label %.lr.ph1096.epil.preheader, label %.lr.ph1096

.lr.ph1096:                                       ; preds = %.lr.ph1096.preheader, %.lr.ph1096
  %.08951093 = phi ptr [ %i.bnc, %.lr.ph1096 ], [ %i.bhi, %.lr.ph1096.preheader ] ; 3 uses
  %.39031092 = phi ptr [ %i.bnd, %.lr.ph1096 ], [ %.29021102, %.lr.ph1096.preheader ] ; 5 uses
  %.03571091 = phi <4 x float> [ %i.bnb, %.lr.ph1096 ], [ %storemerge1099, %.lr.ph1096.preheader ]
  %.13591090 = phi <4 x float> [ %i.bna, %.lr.ph1096 ], [ %.0358, %.lr.ph1096.preheader ]
  %niter2380 = phi i32 [ %niter2380.next.1, %.lr.ph1096 ], [ 0, %.lr.ph1096.preheader ]
  %i.bmk = load float, ptr %.08951093, align 4, !tbaa !22
  %i.bml = insertelement <4 x float> poison, float %i.bmk, i64 0
  %i.bmm = shufflevector <4 x float> %i.bml, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bmn = load <4 x float>, ptr %.39031092, align 16, !tbaa !18
  %i.bmo = getelementptr inbounds nuw i8, ptr %.39031092, i64 16
  %i.bmp = load <4 x float>, ptr %i.bmo, align 16, !tbaa !18
  %i.bmq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bmm, <4 x float> nofpclass(nan inf) %i.bmn, <4 x float> nofpclass(nan inf) %.13591090)
  %i.bmr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bmm, <4 x float> nofpclass(nan inf) %i.bmp, <4 x float> nofpclass(nan inf) %.03571091)
  %i.bms = getelementptr inbounds nuw i8, ptr %.08951093, i64 4
  %i.bmt = getelementptr inbounds nuw i8, ptr %.39031092, i64 32
  %i.bmu = load float, ptr %i.bms, align 4, !tbaa !22
  %i.bmv = insertelement <4 x float> poison, float %i.bmu, i64 0
  %i.bmw = shufflevector <4 x float> %i.bmv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bmx = load <4 x float>, ptr %i.bmt, align 16, !tbaa !18
  %i.bmy = getelementptr inbounds nuw i8, ptr %.39031092, i64 48
  %i.bmz = load <4 x float>, ptr %i.bmy, align 16, !tbaa !18
  %i.bna = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bmw, <4 x float> nofpclass(nan inf) %i.bmx, <4 x float> nofpclass(nan inf) %i.bmq) ; 3 uses
  %i.bnb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bmw, <4 x float> nofpclass(nan inf) %i.bmz, <4 x float> nofpclass(nan inf) %i.bmr) ; 3 uses
  %i.bnc = getelementptr inbounds nuw i8, ptr %.08951093, i64 8 ; 2 uses
  %i.bnd = getelementptr inbounds nuw i8, ptr %.39031092, i64 64 ; 2 uses
  %niter2380.next.1 = add nuw nsw i32 %niter2380, 2 ; 2 uses
  %niter2380.ncmp.1 = icmp eq i32 %niter2380.next.1, %unroll_iter2379
  br i1 %niter2380.ncmp.1, label %._crit_edge1097.loopexit.unr-lcssa, label %.lr.ph1096, !llvm.loop !770

._crit_edge1097.loopexit.unr-lcssa:               ; preds = %.lr.ph1096
  br i1 %lcmp.mod2375.not, label %._crit_edge1097.loopexit, label %.lr.ph1096.epil.preheader

.lr.ph1096.epil.preheader:                        ; preds = %._crit_edge1097.loopexit.unr-lcssa, %.lr.ph1096.preheader
  %.08951093.epil.init = phi ptr [ %i.bhi, %.lr.ph1096.preheader ], [ %i.bnc, %._crit_edge1097.loopexit.unr-lcssa ]
  %.39031092.epil.init = phi ptr [ %.29021102, %.lr.ph1096.preheader ], [ %i.bnd, %._crit_edge1097.loopexit.unr-lcssa ] ; 2 uses
  %.03571091.epil.init = phi <4 x float> [ %storemerge1099, %.lr.ph1096.preheader ], [ %i.bnb, %._crit_edge1097.loopexit.unr-lcssa ]
  %.13591090.epil.init = phi <4 x float> [ %.0358, %.lr.ph1096.preheader ], [ %i.bna, %._crit_edge1097.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2378)
  %i.bne = load float, ptr %.08951093.epil.init, align 4, !tbaa !22
  %i.bnf = insertelement <4 x float> poison, float %i.bne, i64 0
  %i.bng = shufflevector <4 x float> %i.bnf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bnh = load <4 x float>, ptr %.39031092.epil.init, align 16, !tbaa !18
  %i.bni = getelementptr inbounds nuw i8, ptr %.39031092.epil.init, i64 16
  %i.bnj = load <4 x float>, ptr %i.bni, align 16, !tbaa !18
  %i.bnk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bng, <4 x float> nofpclass(nan inf) %i.bnh, <4 x float> nofpclass(nan inf) %.13591090.epil.init)
  %i.bnl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bng, <4 x float> nofpclass(nan inf) %i.bnj, <4 x float> nofpclass(nan inf) %.03571091.epil.init)
  br label %._crit_edge1097.loopexit

._crit_edge1097.loopexit:                         ; preds = %._crit_edge1097.loopexit.unr-lcssa, %.lr.ph1096.epil.preheader
  %.lcssa2112 = phi <4 x float> [ %i.bna, %._crit_edge1097.loopexit.unr-lcssa ], [ %i.bnk, %.lr.ph1096.epil.preheader ]
  %.lcssa2111 = phi <4 x float> [ %i.bnb, %._crit_edge1097.loopexit.unr-lcssa ], [ %i.bnl, %.lr.ph1096.epil.preheader ]
  %i.bnm = getelementptr i8, ptr %.29021102, i64 %i.asr
  %scevgep1473 = getelementptr i8, ptr %i.bnm, i64 32
  br label %._crit_edge1097

._crit_edge1097:                                  ; preds = %._crit_edge1097.loopexit, %bb.ba
  %.1359.lcssa = phi <4 x float> [ %.0358, %bb.ba ], [ %.lcssa2112, %._crit_edge1097.loopexit ]
  %.0357.lcssa = phi <4 x float> [ %storemerge1099, %bb.ba ], [ %.lcssa2111, %._crit_edge1097.loopexit ]
  %.3903.lcssa = phi ptr [ %.29021102, %bb.ba ], [ %scevgep1473, %._crit_edge1097.loopexit ] ; 2 uses
  store <4 x float> %.1359.lcssa, ptr %.311101, align 1, !tbaa !18
  %i.bnn = getelementptr inbounds nuw i8, ptr %.311101, i64 16
  store <4 x float> %.0357.lcssa, ptr %i.bnn, align 1, !tbaa !18
  %i.bno = getelementptr inbounds nuw i8, ptr %.311101, i64 32 ; 2 uses
  %i.bnp = add nuw nsw i32 %.18991103, 8          ; 3 uses
  %i.bnq = or disjoint i32 %i.bnp, 7
  %i.bnr = icmp slt i32 %i.bnq, %4
  br i1 %i.bnr, label %.lr.ph1104, label %.preheader497, !llvm.loop !771

.preheader496:                                    ; preds = %._crit_edge1114.us, %.lr.ph1120.split.split.preheader, %.lr.ph1120.split.split.us.preheader, %.preheader497
  %.32.lcssa = phi ptr [ %.31.lcssa, %.preheader497 ], [ %scevgep1478, %.lr.ph1120.split.split.us.preheader ], [ %scevgep1476, %.lr.ph1120.split.split.preheader ], [ %i.blo, %._crit_edge1114.us ] ; 2 uses
  %.4904.lcssa = phi ptr [ %.2902.lcssa, %.preheader497 ], [ %.2902.lcssa, %.lr.ph1120.split.split.us.preheader ], [ %.2902.lcssa, %.lr.ph1120.split.split.preheader ], [ %scevgep1479, %._crit_edge1114.us ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1899.lcssa, %.preheader497 ], [ %i.bmg, %.lr.ph1120.split.split.us.preheader ], [ %i.bly, %.lr.ph1120.split.split.preheader ], [ %i.blp, %._crit_edge1114.us ] ; 3 uses
  %i.bns = or disjoint i32 %.2.lcssa, 1
  %i.bnt = icmp slt i32 %i.bns, %4
  br i1 %i.bnt, label %.lr.ph1150.preheader, label %.preheader

.lr.ph1150.preheader:                             ; preds = %.preheader496
  %i.bnu = getelementptr i8, ptr %i.bhi, i64 %i.ate
  %i.bnv = getelementptr i8, ptr %i.bhi, i64 %i.ath
  br label %.lr.ph1150

.preheader:                                       ; preds = %._crit_edge1143, %.preheader496
  %.33.lcssa = phi ptr [ %.32.lcssa, %.preheader496 ], [ %i.bqf, %._crit_edge1143 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.4904.lcssa, %.preheader496 ], [ %.7.lcssa, %._crit_edge1143 ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader496 ], [ %i.bqg, %._crit_edge1143 ] ; 2 uses
  %i.bnw = icmp slt i32 %.3.lcssa, %4
  br i1 %i.bnw, label %.lr.ph1166.preheader, label %._crit_edge1167

.lr.ph1166.preheader:                             ; preds = %.preheader
  %i.bnx = getelementptr i8, ptr %i.bhi, i64 %i.atl
  %i.bny = getelementptr i8, ptr %i.bhi, i64 %i.atn
  br label %.lr.ph1166

.lr.ph1150:                                       ; preds = %.lr.ph1150.preheader, %._crit_edge1143
  %.31149 = phi i32 [ %i.bqg, %._crit_edge1143 ], [ %.2.lcssa, %.lr.ph1150.preheader ]
  %.61148 = phi ptr [ %.7.lcssa, %._crit_edge1143 ], [ %.4904.lcssa, %.lr.ph1150.preheader ] ; 10 uses
  %.331147 = phi ptr [ %i.bqf, %._crit_edge1143 ], [ %.32.lcssa, %.lr.ph1150.preheader ] ; 5 uses
  br i1 %i.asl, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph1150
  %i.bnz = load float, ptr %.331147, align 4, !tbaa !22
  %i.boa = getelementptr inbounds nuw i8, ptr %.331147, i64 4
  %i.bob = load float, ptr %i.boa, align 4, !tbaa !22
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph1150, %bb.bb
  %.0889 = phi nsz float [ %i.bnz, %bb.bb ], [ 0.000000e+00, %.lr.ph1150 ] ; 4 uses
  %.0887 = phi nsz float [ %i.bob, %bb.bb ], [ 0.000000e+00, %.lr.ph1150 ] ; 4 uses
  br i1 %i.asm, label %iter.check2083, label %._crit_edge1143

iter.check2083:                                   ; preds = %bb.bc
  br i1 %min.iters.check2033, label %.lr.ph1142.preheader, label %vector.main.loop.iter.check2034

vector.main.loop.iter.check2034:                  ; preds = %iter.check2083
  br i1 %min.iters.check2035, label %vec.epilog.ph2087, label %vector.ph2036

vector.ph2036:                                    ; preds = %vector.main.loop.iter.check2034
  %i.boc = getelementptr i8, ptr %.61148, i64 %i.atf
  %i.bod = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0887, i64 0
  %i.boe = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0889, i64 0
  br label %vector.body2038

vector.body2038:                                  ; preds = %vector.ph2036, %vector.body2038
  %index2039 = phi i64 [ 0, %vector.ph2036 ], [ %index.next2069, %vector.body2038 ] ; 3 uses
  %vec.phi2040 = phi <16 x float> [ %i.bod, %vector.ph2036 ], [ %i.boz, %vector.body2038 ]
  %vec.phi2041 = phi <16 x float> [ zeroinitializer, %vector.ph2036 ], [ %i.bpa, %vector.body2038 ]
  %vec.phi2042 = phi <16 x float> [ zeroinitializer, %vector.ph2036 ], [ %i.bpb, %vector.body2038 ]
  %vec.phi2043 = phi <16 x float> [ zeroinitializer, %vector.ph2036 ], [ %i.bpc, %vector.body2038 ]
  %vec.phi2044 = phi <16 x float> [ %i.boe, %vector.ph2036 ], [ %i.bor, %vector.body2038 ]
  %vec.phi2045 = phi <16 x float> [ zeroinitializer, %vector.ph2036 ], [ %i.bos, %vector.body2038 ]
  %vec.phi2046 = phi <16 x float> [ zeroinitializer, %vector.ph2036 ], [ %i.bot, %vector.body2038 ]
  %vec.phi2047 = phi <16 x float> [ zeroinitializer, %vector.ph2036 ], [ %i.bou, %vector.body2038 ]
  %i.bof = shl i64 %index2039, 2
  %next.gep2048 = getelementptr i8, ptr %i.bhi, i64 %i.bof ; 4 uses
  %i.bog = shl i64 %index2039, 3                  ; 4 uses
  %next.gep2049 = getelementptr i8, ptr %.61148, i64 %i.bog
  %i.boh = getelementptr i8, ptr %.61148, i64 %i.bog
  %next.gep2050 = getelementptr i8, ptr %i.boh, i64 128
  %i.boi = getelementptr i8, ptr %.61148, i64 %i.bog
  %next.gep2051 = getelementptr i8, ptr %i.boi, i64 256
  %i.boj = getelementptr i8, ptr %.61148, i64 %i.bog
  %next.gep2052 = getelementptr i8, ptr %i.boj, i64 384
  %i.bok = getelementptr i8, ptr %next.gep2048, i64 64
  %i.bol = getelementptr i8, ptr %next.gep2048, i64 128
  %i.bom = getelementptr i8, ptr %next.gep2048, i64 192
  %wide.load2053 = load <16 x float>, ptr %next.gep2048, align 4, !tbaa !22 ; 2 uses
  %wide.load2054 = load <16 x float>, ptr %i.bok, align 4, !tbaa !22 ; 2 uses
  %wide.load2055 = load <16 x float>, ptr %i.bol, align 4, !tbaa !22 ; 2 uses
  %wide.load2056 = load <16 x float>, ptr %i.bom, align 4, !tbaa !22 ; 2 uses
  %wide.vec2057 = load <32 x float>, ptr %next.gep2049, align 4, !tbaa !22 ; 2 uses
  %strided.vec2058 = shufflevector <32 x float> %wide.vec2057, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2059 = shufflevector <32 x float> %wide.vec2057, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2060 = load <32 x float>, ptr %next.gep2050, align 4, !tbaa !22 ; 2 uses
  %strided.vec2061 = shufflevector <32 x float> %wide.vec2060, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2062 = shufflevector <32 x float> %wide.vec2060, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2063 = load <32 x float>, ptr %next.gep2051, align 4, !tbaa !22 ; 2 uses
  %strided.vec2064 = shufflevector <32 x float> %wide.vec2063, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2065 = shufflevector <32 x float> %wide.vec2063, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2066 = load <32 x float>, ptr %next.gep2052, align 4, !tbaa !22 ; 2 uses
  %strided.vec2067 = shufflevector <32 x float> %wide.vec2066, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2068 = shufflevector <32 x float> %wide.vec2066, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.bon = fmul fast <16 x float> %strided.vec2058, %wide.load2053
  %i.boo = fmul fast <16 x float> %strided.vec2061, %wide.load2054
  %i.bop = fmul fast <16 x float> %strided.vec2064, %wide.load2055
  %i.boq = fmul fast <16 x float> %strided.vec2067, %wide.load2056
  %i.bor = fadd fast <16 x float> %i.bon, %vec.phi2044 ; 2 uses
  %i.bos = fadd fast <16 x float> %i.boo, %vec.phi2045 ; 2 uses
  %i.bot = fadd fast <16 x float> %i.bop, %vec.phi2046 ; 2 uses
  %i.bou = fadd fast <16 x float> %i.boq, %vec.phi2047 ; 2 uses
  %i.bov = fmul fast <16 x float> %strided.vec2059, %wide.load2053
  %i.bow = fmul fast <16 x float> %strided.vec2062, %wide.load2054
  %i.box = fmul fast <16 x float> %strided.vec2065, %wide.load2055
  %i.boy = fmul fast <16 x float> %strided.vec2068, %wide.load2056
  %i.boz = fadd fast <16 x float> %i.bov, %vec.phi2040 ; 2 uses
  %i.bpa = fadd fast <16 x float> %i.bow, %vec.phi2041 ; 2 uses
  %i.bpb = fadd fast <16 x float> %i.box, %vec.phi2042 ; 2 uses
  %i.bpc = fadd fast <16 x float> %i.boy, %vec.phi2043 ; 2 uses
  %index.next2069 = add nuw i64 %index2039, 64    ; 2 uses
  %i.bpd = icmp eq i64 %index.next2069, %n.vec2037
  br i1 %i.bpd, label %middle.block2070, label %vector.body2038, !llvm.loop !772

middle.block2070:                                 ; preds = %vector.body2038
  %bin.rdx2071 = fadd fast <16 x float> %i.bpa, %i.boz
  %bin.rdx2072 = fadd fast <16 x float> %i.bpb, %bin.rdx2071
  %bin.rdx2073 = fadd fast <16 x float> %i.bpc, %bin.rdx2072
  %i.bpe = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx2073) ; 3 uses
  %bin.rdx2074 = fadd fast <16 x float> %i.bos, %i.bor
  %bin.rdx2075 = fadd fast <16 x float> %i.bot, %bin.rdx2074
  %bin.rdx2076 = fadd fast <16 x float> %i.bou, %bin.rdx2075
  %i.bpf = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx2076) ; 3 uses
  br i1 %cmp.n2077, label %._crit_edge1143.loopexit, label %vec.epilog.iter.check2085

vec.epilog.iter.check2085:                        ; preds = %middle.block2070
  br i1 %min.epilog.iters.check2086, label %.lr.ph1142.preheader, label %vec.epilog.ph2087, !prof !29

vec.epilog.ph2087:                                ; preds = %vector.main.loop.iter.check2034, %vec.epilog.iter.check2085
  %vec.epilog.resume.val2078 = phi i64 [ %n.vec2037, %vec.epilog.iter.check2085 ], [ 0, %vector.main.loop.iter.check2034 ]
  %bc.merge.rdx2079 = phi float [ %i.bpe, %vec.epilog.iter.check2085 ], [ %.0887, %vector.main.loop.iter.check2034 ]
  %bc.merge.rdx2080 = phi float [ %i.bpf, %vec.epilog.iter.check2085 ], [ %.0889, %vector.main.loop.iter.check2034 ]
  %i.bpg = getelementptr i8, ptr %.61148, i64 %i.ati
  %i.bph = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx2079, i64 0
  %i.bpi = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx2080, i64 0
  br label %vec.epilog.vector.body2089

vec.epilog.vector.body2089:                       ; preds = %vec.epilog.vector.body2089, %vec.epilog.ph2087
  %index2090 = phi i64 [ %vec.epilog.resume.val2078, %vec.epilog.ph2087 ], [ %index.next2099, %vec.epilog.vector.body2089 ] ; 3 uses
  %vec.phi2091 = phi <8 x float> [ %i.bph, %vec.epilog.ph2087 ], [ %i.bpo, %vec.epilog.vector.body2089 ]
  %vec.phi2092 = phi <8 x float> [ %i.bpi, %vec.epilog.ph2087 ], [ %i.bpm, %vec.epilog.vector.body2089 ]
  %i.bpj = shl i64 %index2090, 2
  %next.gep2093 = getelementptr i8, ptr %i.bhi, i64 %i.bpj
  %i.bpk = shl i64 %index2090, 3
  %next.gep2094 = getelementptr i8, ptr %.61148, i64 %i.bpk
  %wide.load2095 = load <8 x float>, ptr %next.gep2093, align 4, !tbaa !22 ; 2 uses
  %wide.vec2096 = load <16 x float>, ptr %next.gep2094, align 4, !tbaa !22 ; 2 uses
  %strided.vec2097 = shufflevector <16 x float> %wide.vec2096, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec2098 = shufflevector <16 x float> %wide.vec2096, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bpl = fmul fast <8 x float> %strided.vec2097, %wide.load2095
  %i.bpm = fadd fast <8 x float> %i.bpl, %vec.phi2092 ; 2 uses
  %i.bpn = fmul fast <8 x float> %strided.vec2098, %wide.load2095
  %i.bpo = fadd fast <8 x float> %i.bpn, %vec.phi2091 ; 2 uses
  %index.next2099 = add nuw i64 %index2090, 8     ; 2 uses
  %i.bpp = icmp eq i64 %index.next2099, %n.vec2088
  br i1 %i.bpp, label %vec.epilog.middle.block2100, label %vec.epilog.vector.body2089, !llvm.loop !773

vec.epilog.middle.block2100:                      ; preds = %vec.epilog.vector.body2089
  %i.bpq = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bpo) ; 2 uses
  %i.bpr = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bpm) ; 2 uses
  br i1 %cmp.n2101, label %._crit_edge1143.loopexit, label %.lr.ph1142.preheader

.lr.ph1142.preheader:                             ; preds = %iter.check2083, %vec.epilog.iter.check2085, %vec.epilog.middle.block2100
  %.08861140.ph = phi i32 [ 0, %iter.check2083 ], [ %i.atd, %vec.epilog.iter.check2085 ], [ %i.atg, %vec.epilog.middle.block2100 ]
  %.18881139.ph = phi float [ %.0887, %iter.check2083 ], [ %i.bpe, %vec.epilog.iter.check2085 ], [ %i.bpq, %vec.epilog.middle.block2100 ]
  %.18901138.ph = phi float [ %.0889, %iter.check2083 ], [ %i.bpf, %vec.epilog.iter.check2085 ], [ %i.bpr, %vec.epilog.middle.block2100 ]
  %.08911137.ph = phi ptr [ %i.bhi, %iter.check2083 ], [ %i.bnu, %vec.epilog.iter.check2085 ], [ %i.bnv, %vec.epilog.middle.block2100 ]
  %.71136.ph = phi ptr [ %.61148, %iter.check2083 ], [ %i.boc, %vec.epilog.iter.check2085 ], [ %i.bpg, %vec.epilog.middle.block2100 ]
  br label %.lr.ph1142

.lr.ph1142:                                       ; preds = %.lr.ph1142.preheader, %.lr.ph1142
  %.08861140 = phi i32 [ %i.bqc, %.lr.ph1142 ], [ %.08861140.ph, %.lr.ph1142.preheader ]
  %.18881139 = phi float [ %i.bpz, %.lr.ph1142 ], [ %.18881139.ph, %.lr.ph1142.preheader ]
  %.18901138 = phi float [ %i.bpv, %.lr.ph1142 ], [ %.18901138.ph, %.lr.ph1142.preheader ]
  %.08911137 = phi ptr [ %i.bqa, %.lr.ph1142 ], [ %.08911137.ph, %.lr.ph1142.preheader ] ; 2 uses
  %.71136 = phi ptr [ %i.bqb, %.lr.ph1142 ], [ %.71136.ph, %.lr.ph1142.preheader ] ; 3 uses
  %i.bps = load float, ptr %.08911137, align 4, !tbaa !22 ; 2 uses
  %i.bpt = load float, ptr %.71136, align 4, !tbaa !22
  %i.bpu = fmul fast float %i.bpt, %i.bps
  %i.bpv = fadd fast float %i.bpu, %.18901138     ; 2 uses
  %i.bpw = getelementptr inbounds nuw i8, ptr %.71136, i64 4
  %i.bpx = load float, ptr %i.bpw, align 4, !tbaa !22
  %i.bpy = fmul fast float %i.bpx, %i.bps
  %i.bpz = fadd fast float %i.bpy, %.18881139     ; 2 uses
  %i.bqa = getelementptr inbounds nuw i8, ptr %.08911137, i64 4
  %i.bqb = getelementptr inbounds nuw i8, ptr %.71136, i64 8
  %i.bqc = add nuw nsw i32 %.08861140, 1          ; 2 uses
  %exitcond1482.not = icmp eq i32 %i.bqc, %6
  br i1 %exitcond1482.not, label %._crit_edge1143.loopexit, label %.lr.ph1142, !llvm.loop !774

._crit_edge1143.loopexit:                         ; preds = %.lr.ph1142, %vec.epilog.middle.block2100, %middle.block2070
  %.lcssa1707 = phi float [ %i.bpr, %vec.epilog.middle.block2100 ], [ %i.bpf, %middle.block2070 ], [ %i.bpv, %.lr.ph1142 ]
  %.lcssa1706 = phi float [ %i.bpq, %vec.epilog.middle.block2100 ], [ %i.bpe, %middle.block2070 ], [ %i.bpz, %.lr.ph1142 ]
  %i.bqd = getelementptr i8, ptr %.61148, i64 %i.asu
  %scevgep1481 = getelementptr i8, ptr %i.bqd, i64 8
  br label %._crit_edge1143

._crit_edge1143:                                  ; preds = %._crit_edge1143.loopexit, %bb.bc
  %.7.lcssa = phi ptr [ %.61148, %bb.bc ], [ %scevgep1481, %._crit_edge1143.loopexit ] ; 2 uses
  %.1890.lcssa = phi float [ %.0889, %bb.bc ], [ %.lcssa1707, %._crit_edge1143.loopexit ]
  %.1888.lcssa = phi float [ %.0887, %bb.bc ], [ %.lcssa1706, %._crit_edge1143.loopexit ]
  store float %.1890.lcssa, ptr %.331147, align 4, !tbaa !22
  %i.bqe = getelementptr inbounds nuw i8, ptr %.331147, i64 4
  store float %.1888.lcssa, ptr %i.bqe, align 4, !tbaa !22
  %i.bqf = getelementptr inbounds nuw i8, ptr %.331147, i64 8 ; 2 uses
  %i.bqg = add nuw nsw i32 %.31149, 2             ; 3 uses
  %i.bqh = or disjoint i32 %i.bqg, 1
  %i.bqi = icmp slt i32 %i.bqh, %4
  br i1 %i.bqi, label %.lr.ph1150, label %.preheader, !llvm.loop !775

.lr.ph1166:                                       ; preds = %.lr.ph1166.preheader, %._crit_edge1160
  %.41165 = phi i32 [ %i.brt, %._crit_edge1160 ], [ %.3.lcssa, %.lr.ph1166.preheader ]
  %.81164 = phi ptr [ %.9.lcssa, %._crit_edge1160 ], [ %.6.lcssa, %.lr.ph1166.preheader ] ; 7 uses
  %.341163 = phi ptr [ %i.brs, %._crit_edge1160 ], [ %.33.lcssa, %.lr.ph1166.preheader ] ; 3 uses
  br i1 %i.asl, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph1166
  %i.bqj = load float, ptr %.341163, align 4, !tbaa !22
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph1166, %bb.bd
  %.0884 = phi nsz float [ %i.bqj, %bb.bd ], [ 0.000000e+00, %.lr.ph1166 ] ; 4 uses
  br i1 %i.asm, label %iter.check2013, label %._crit_edge1160

iter.check2013:                                   ; preds = %bb.be
  br i1 %min.iters.check1982, label %.lr.ph1159.preheader, label %vector.main.loop.iter.check1983

vector.main.loop.iter.check1983:                  ; preds = %iter.check2013
  br i1 %min.iters.check1984, label %vec.epilog.ph2017, label %vector.ph1985

vector.ph1985:                                    ; preds = %vector.main.loop.iter.check1983
  %i.bqk = getelementptr i8, ptr %.81164, i64 %i.atl
  %i.bql = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0884, i64 0
  br label %vector.body1987

vector.body1987:                                  ; preds = %vector.ph1985, %vector.body1987
  %index1988 = phi i64 [ 0, %vector.ph1985 ], [ %index.next2003, %vector.body1987 ] ; 2 uses
  %vec.phi1989 = phi <16 x float> [ %i.bql, %vector.ph1985 ], [ %i.bqx, %vector.body1987 ]
  %vec.phi1990 = phi <16 x float> [ zeroinitializer, %vector.ph1985 ], [ %i.bqy, %vector.body1987 ]
  %vec.phi1991 = phi <16 x float> [ zeroinitializer, %vector.ph1985 ], [ %i.bqz, %vector.body1987 ]
  %vec.phi1992 = phi <16 x float> [ zeroinitializer, %vector.ph1985 ], [ %i.bra, %vector.body1987 ]
  %i.bqm = shl i64 %index1988, 2                  ; 2 uses
  %next.gep1993 = getelementptr i8, ptr %i.bhi, i64 %i.bqm ; 4 uses
  %next.gep1994 = getelementptr i8, ptr %.81164, i64 %i.bqm ; 4 uses
  %i.bqn = getelementptr i8, ptr %next.gep1993, i64 64
  %i.bqo = getelementptr i8, ptr %next.gep1993, i64 128
  %i.bqp = getelementptr i8, ptr %next.gep1993, i64 192
  %wide.load1995 = load <16 x float>, ptr %next.gep1993, align 4, !tbaa !22
  %wide.load1996 = load <16 x float>, ptr %i.bqn, align 4, !tbaa !22
  %wide.load1997 = load <16 x float>, ptr %i.bqo, align 4, !tbaa !22
  %wide.load1998 = load <16 x float>, ptr %i.bqp, align 4, !tbaa !22
  %i.bqq = getelementptr i8, ptr %next.gep1994, i64 64
  %i.bqr = getelementptr i8, ptr %next.gep1994, i64 128
  %i.bqs = getelementptr i8, ptr %next.gep1994, i64 192
  %wide.load1999 = load <16 x float>, ptr %next.gep1994, align 4, !tbaa !22
  %wide.load2000 = load <16 x float>, ptr %i.bqq, align 4, !tbaa !22
  %wide.load2001 = load <16 x float>, ptr %i.bqr, align 4, !tbaa !22
  %wide.load2002 = load <16 x float>, ptr %i.bqs, align 4, !tbaa !22
  %i.bqt = fmul fast <16 x float> %wide.load1999, %wide.load1995
  %i.bqu = fmul fast <16 x float> %wide.load2000, %wide.load1996
  %i.bqv = fmul fast <16 x float> %wide.load2001, %wide.load1997
  %i.bqw = fmul fast <16 x float> %wide.load2002, %wide.load1998
  %i.bqx = fadd fast <16 x float> %i.bqt, %vec.phi1989 ; 2 uses
  %i.bqy = fadd fast <16 x float> %i.bqu, %vec.phi1990 ; 2 uses
  %i.bqz = fadd fast <16 x float> %i.bqv, %vec.phi1991 ; 2 uses
  %i.bra = fadd fast <16 x float> %i.bqw, %vec.phi1992 ; 2 uses
  %index.next2003 = add nuw i64 %index1988, 64    ; 2 uses
  %i.brb = icmp eq i64 %index.next2003, %n.vec1986
  br i1 %i.brb, label %middle.block2004, label %vector.body1987, !llvm.loop !776

middle.block2004:                                 ; preds = %vector.body1987
  %bin.rdx2005 = fadd fast <16 x float> %i.bqy, %i.bqx
  %bin.rdx2006 = fadd fast <16 x float> %i.bqz, %bin.rdx2005
  %bin.rdx2007 = fadd fast <16 x float> %i.bra, %bin.rdx2006
  %i.brc = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx2007) ; 3 uses
  br i1 %cmp.n2008, label %._crit_edge1160.loopexit, label %vec.epilog.iter.check2015

vec.epilog.iter.check2015:                        ; preds = %middle.block2004
  br i1 %min.epilog.iters.check2016, label %.lr.ph1159.preheader, label %vec.epilog.ph2017, !prof !29

vec.epilog.ph2017:                                ; preds = %vector.main.loop.iter.check1983, %vec.epilog.iter.check2015
  %vec.epilog.resume.val2009 = phi i64 [ %n.vec1986, %vec.epilog.iter.check2015 ], [ 0, %vector.main.loop.iter.check1983 ]
  %bc.merge.rdx2010 = phi float [ %i.brc, %vec.epilog.iter.check2015 ], [ %.0884, %vector.main.loop.iter.check1983 ]
  %i.brd = getelementptr i8, ptr %.81164, i64 %i.atn
  %i.bre = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx2010, i64 0
  br label %vec.epilog.vector.body2019

vec.epilog.vector.body2019:                       ; preds = %vec.epilog.vector.body2019, %vec.epilog.ph2017
  %index2020 = phi i64 [ %vec.epilog.resume.val2009, %vec.epilog.ph2017 ], [ %index.next2026, %vec.epilog.vector.body2019 ] ; 2 uses
  %vec.phi2021 = phi <8 x float> [ %i.bre, %vec.epilog.ph2017 ], [ %i.brh, %vec.epilog.vector.body2019 ]
  %i.brf = shl i64 %index2020, 2                  ; 2 uses
  %next.gep2022 = getelementptr i8, ptr %i.bhi, i64 %i.brf
  %next.gep2023 = getelementptr i8, ptr %.81164, i64 %i.brf
  %wide.load2024 = load <8 x float>, ptr %next.gep2022, align 4, !tbaa !22
  %wide.load2025 = load <8 x float>, ptr %next.gep2023, align 4, !tbaa !22
  %i.brg = fmul fast <8 x float> %wide.load2025, %wide.load2024
  %i.brh = fadd fast <8 x float> %i.brg, %vec.phi2021 ; 2 uses
  %index.next2026 = add nuw i64 %index2020, 8     ; 2 uses
  %i.bri = icmp eq i64 %index.next2026, %n.vec2018
  br i1 %i.bri, label %vec.epilog.middle.block2027, label %vec.epilog.vector.body2019, !llvm.loop !777

vec.epilog.middle.block2027:                      ; preds = %vec.epilog.vector.body2019
  %i.brj = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.brh) ; 2 uses
  br i1 %cmp.n2028, label %._crit_edge1160.loopexit, label %.lr.ph1159.preheader

.lr.ph1159.preheader:                             ; preds = %iter.check2013, %vec.epilog.iter.check2015, %vec.epilog.middle.block2027
  %.01157.ph = phi i32 [ 0, %iter.check2013 ], [ %i.atk, %vec.epilog.iter.check2015 ], [ %i.atm, %vec.epilog.middle.block2027 ]
  %.11156.ph = phi float [ %.0884, %iter.check2013 ], [ %i.brc, %vec.epilog.iter.check2015 ], [ %i.brj, %vec.epilog.middle.block2027 ]
  %.08851155.ph = phi ptr [ %i.bhi, %iter.check2013 ], [ %i.bnx, %vec.epilog.iter.check2015 ], [ %i.bny, %vec.epilog.middle.block2027 ]
  %.91154.ph = phi ptr [ %.81164, %iter.check2013 ], [ %i.bqk, %vec.epilog.iter.check2015 ], [ %i.brd, %vec.epilog.middle.block2027 ]
  br label %.lr.ph1159

.lr.ph1159:                                       ; preds = %.lr.ph1159.preheader, %.lr.ph1159
  %.01157 = phi i32 [ %i.brq, %.lr.ph1159 ], [ %.01157.ph, %.lr.ph1159.preheader ]
  %.11156 = phi float [ %i.brn, %.lr.ph1159 ], [ %.11156.ph, %.lr.ph1159.preheader ]
  %.08851155 = phi ptr [ %i.bro, %.lr.ph1159 ], [ %.08851155.ph, %.lr.ph1159.preheader ] ; 2 uses
  %.91154 = phi ptr [ %i.brp, %.lr.ph1159 ], [ %.91154.ph, %.lr.ph1159.preheader ] ; 2 uses
  %i.brk = load float, ptr %.08851155, align 4, !tbaa !22
  %i.brl = load float, ptr %.91154, align 4, !tbaa !22
  %i.brm = fmul fast float %i.brl, %i.brk
  %i.brn = fadd fast float %i.brm, %.11156        ; 2 uses
  %i.bro = getelementptr inbounds nuw i8, ptr %.08851155, i64 4
  %i.brp = getelementptr inbounds nuw i8, ptr %.91154, i64 4
  %i.brq = add nuw nsw i32 %.01157, 1             ; 2 uses
  %exitcond1484.not = icmp eq i32 %i.brq, %6
  br i1 %exitcond1484.not, label %._crit_edge1160.loopexit, label %.lr.ph1159, !llvm.loop !778

._crit_edge1160.loopexit:                         ; preds = %.lr.ph1159, %vec.epilog.middle.block2027, %middle.block2004
  %.lcssa1710 = phi float [ %i.brj, %vec.epilog.middle.block2027 ], [ %i.brc, %middle.block2004 ], [ %i.brn, %.lr.ph1159 ]
  %i.brr = getelementptr i8, ptr %.81164, i64 %i.asv
  %scevgep1483 = getelementptr i8, ptr %i.brr, i64 4
  br label %._crit_edge1160

._crit_edge1160:                                  ; preds = %._crit_edge1160.loopexit, %bb.be
  %.9.lcssa = phi ptr [ %.81164, %bb.be ], [ %scevgep1483, %._crit_edge1160.loopexit ]
  %.1.lcssa = phi float [ %.0884, %bb.be ], [ %.lcssa1710, %._crit_edge1160.loopexit ]
  store float %.1.lcssa, ptr %.341163, align 4, !tbaa !22
  %i.brs = getelementptr inbounds nuw i8, ptr %.341163, i64 4 ; 2 uses
  %i.brt = add nuw nsw i32 %.41165, 1             ; 2 uses
  %exitcond1485.not = icmp eq i32 %i.brt, %4
  br i1 %exitcond1485.not, label %._crit_edge1167, label %.lr.ph1166, !llvm.loop !779

._crit_edge1167:                                  ; preds = %._crit_edge1160, %.preheader
  %.34.lcssa = phi ptr [ %.33.lcssa, %.preheader ], [ %i.brs, %._crit_edge1160 ] ; 2 uses
  %indvars.iv.next1487 = add nuw nsw i64 %indvars.iv1486, 1 ; 2 uses
  %exitcond1490.not = icmp eq i64 %indvars.iv.next1487, %wide.trip.count1489
  br i1 %exitcond1490.not, label %bb.au, label %bb.av, !llvm.loop !780

._crit_edge1173:                                  ; preds = %bb.au, %.preheader500
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

declare void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !30     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !30
  %i.h = load i32, ptr %0, align 4, !tbaa !30     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !30
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !30
  %i.k = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not1270 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1270, label %._crit_edge1274, label %.lr.ph1273

.lr.ph1273:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !30    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph1273, %._crit_edge1269
  %i.o = phi i32 [ %.pre, %.lr.ph1273 ], [ %i.azw, %._crit_edge1269 ]
  %i.p = phi i32 [ %.pre, %.lr.ph1273 ], [ %i.azx, %._crit_edge1269 ] ; 3 uses
  %indvars.iv = phi i64 [ %i.n, %.lr.ph1273 ], [ %indvars.iv.next, %._crit_edge1269 ] ; 8 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !15
  %i.r = load i32, ptr %i.l, align 4, !tbaa !31
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %indvars.iv, %i.s
  %i.u = load i64, ptr %i.m, align 8, !tbaa !17
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 2 uses
  %i.x = icmp sgt i32 %i.p, 15
  br i1 %i.x, label %.lr.ph1072.preheader, label %.preheader1024

.lr.ph1072.preheader:                             ; preds = %bb.c
  %i.y = trunc nsw i64 %indvars.iv to i32         ; 4 uses
  br label %.lr.ph1072

.preheader1024:                                   ; preds = %._crit_edge1067, %bb.c
  %i.z = phi i32 [ %i.o, %bb.c ], [ %i.tw, %._crit_edge1067 ] ; 2 uses
  %i.aa = phi i32 [ %i.p, %bb.c ], [ %i.tw, %._crit_edge1067 ] ; 5 uses
  %.0798.lcssa = phi i32 [ 0, %bb.c ], [ %i.tu, %._crit_edge1067 ] ; 3 uses
  %.0793.lcssa = phi ptr [ %i.w, %bb.c ], [ %.5.lcssa, %._crit_edge1067 ] ; 2 uses
  %i.ab = or disjoint i32 %.0798.lcssa, 7
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %.lr.ph1121.preheader, label %.preheader1023

.lr.ph1121.preheader:                             ; preds = %.preheader1024
  %.pre1354 = load i32, ptr %6, align 4, !tbaa !30
  %i.ad = trunc nsw i64 %indvars.iv to i32        ; 4 uses
  br label %.lr.ph1121

.lr.ph1072:                                       ; preds = %.lr.ph1072.preheader, %._crit_edge1067
  %i.ae = phi i32 [ %i.tw, %._crit_edge1067 ], [ %i.p, %.lr.ph1072.preheader ] ; 2 uses
  %.07931070 = phi ptr [ %.5.lcssa, %._crit_edge1067 ], [ %i.w, %.lr.ph1072.preheader ] ; 2 uses
  %.07981069 = phi i32 [ %i.tu, %._crit_edge1067 ], [ 0, %.lr.ph1072.preheader ] ; 5 uses
  %i.af = load ptr, ptr %5, align 8, !tbaa !15
  %i.ag = mul nsw i32 %i.ae, %i.y
  %i.ah = add nsw i32 %i.ag, %.07981069           ; 2 uses
  %i.ai = shl nsw i32 %i.ah, 4
end_hunk_11
begin_hunk_12_@_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.4:bb.a
_ZN4ncnn3Mat7channelEi.exit50:                    ; preds = %bb.d, %.noexc49
  %i.cc = load i32, ptr %5, align 4, !tbaa !30
  %i.cd = sub nsw i32 %i.cc, %i.be
  %i.ce = load i32, ptr %3, align 4, !tbaa !30
  %.sroa.speculated123 = call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.cd) ; 2 uses
  %i.cf = load i32, ptr %6, align 4, !tbaa !30    ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit50
  %.pre = load i32, ptr %7, align 4, !tbaa !30
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %_ZN4ncnn3Mat7channelEi.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  %i.ch = add nsw i32 %.048129, 1
  %i.ci = load i32, ptr %i.b, align 4, !tbaa !30
  %.not.not = icmp slt i32 %.048129, %i.ci
  br i1 %.not.not, label %bb.c, label %._crit_edge132

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %i.cj = phi i32 [ %i.cp, %._crit_edge ], [ %.pre, %.lr.ph.preheader ]
  %i.ck = phi i32 [ %i.cr, %._crit_edge ], [ %i.cf, %.lr.ph.preheader ]
  %.047127 = phi i32 [ %i.cq, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.cl = sub nsw i32 %i.ck, %.047127
  %.sroa.speculated119 = call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.cl) ; 2 uses
  %i.cm = load i32, ptr %8, align 4, !tbaa !30    ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.lr.ph
  %.pre133 = load i32, ptr %9, align 4, !tbaa !30
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %.lr.ph
  %i.co = load i32, ptr %14, align 4, !tbaa !30
  %.val81 = load ptr, ptr %13, align 8, !tbaa !15
  call fastcc void @_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.val81, i32 noundef %i.be, i32 noundef %.sroa.speculated123, i32 noundef %.047127, i32 noundef %.sroa.speculated119, i32 noundef %i.co, ptr noundef nonnull align 8 dereferenceable(72) %15)
  %i.cp = load i32, ptr %7, align 4, !tbaa !30    ; 2 uses
  %i.cq = add nsw i32 %i.cp, %.047127             ; 2 uses
  %i.cr = load i32, ptr %6, align 4, !tbaa !30    ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !970

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.ct = phi i32 [ %i.eq, %.noexc ], [ %.pre133, %.noexc.preheader ] ; 2 uses
  %i.cu = phi i32 [ %i.es, %.noexc ], [ %i.cm, %.noexc.preheader ]
  %.0126 = phi i32 [ %i.er, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.cv = sub nsw i32 %i.cu, %.0126
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ct, i32 %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  %i.cw = load i32, ptr %3, align 4, !tbaa !30
  %i.cx = sdiv i32 %i.be, %i.cw
  %i.cy = load ptr, ptr %10, align 8, !tbaa !15, !noalias !981
  %i.cz = load i64, ptr %i.af, align 8, !tbaa !16, !noalias !981
  %i.da = sext i32 %i.cx to i64
  %i.db = mul i64 %i.cz, %i.da
  %i.dc = load i64, ptr %i.ag, align 8, !tbaa !17, !noalias !981 ; 3 uses
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dd
  %i.df = load i32, ptr %i.ah, align 8, !tbaa !32, !noalias !981
  %i.dg = load ptr, ptr %i.ai, align 8, !tbaa !46, !noalias !981
  %i.dh = sdiv i32 %.0126, %i.ct
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !45, !alias.scope !982
  store i64 %i.dc, ptr %i.ak, align 8, !tbaa !17, !alias.scope !982
  store i32 %i.df, ptr %i.al, align 8, !tbaa !32, !alias.scope !982
  store ptr %i.dg, ptr %i.am, align 8, !tbaa !46, !alias.scope !982
  %i.dj = load <2 x i32>, ptr %i.ad, align 4, !tbaa !30, !noalias !981
  %i.dk = load i32, ptr %i.ae, align 8, !tbaa !35, !noalias !981
  %i.dl = load i32, ptr %i.ad, align 4, !tbaa !31, !noalias !981
  %i.dm = sext i32 %i.dl to i64
  %i.dn = sext i32 %i.dk to i64
  %i.do = mul nsw i64 %i.dn, %i.dm                ; 2 uses
  %i.dp = mul i64 %i.dc, %i.do
  %i.dq = mul i64 %i.dp, %i.di
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dq
  store ptr %i.dr, ptr %17, align 8, !tbaa !15, !alias.scope !982
  %i.ds = shufflevector <2 x i32> %i.dj, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.dt = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.ds, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.dt, ptr %i.an, align 8, !tbaa !30, !alias.scope !982
  store i32 1, ptr %i.ao, align 8, !tbaa !33, !alias.scope !982
  store i64 %i.do, ptr %i.ap, align 8, !tbaa !16, !alias.scope !982
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  %i.du = load i32, ptr %7, align 4, !tbaa !30
  %i.dv = sdiv i32 %.047127, %i.du
  %i.dw = load ptr, ptr %11, align 8, !tbaa !15, !noalias !983
  %i.dx = load i64, ptr %i.as, align 8, !tbaa !16, !noalias !983
  %i.dy = sext i32 %i.dv to i64
  %i.dz = mul i64 %i.dx, %i.dy
  %i.ea = load i64, ptr %i.at, align 8, !tbaa !17, !noalias !983 ; 3 uses
  %i.eb = mul i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.eb
  %i.ed = load i32, ptr %i.au, align 8, !tbaa !32, !noalias !983
  %i.ee = load ptr, ptr %i.av, align 8, !tbaa !46, !noalias !983
  store ptr null, ptr %i.aw, align 8, !tbaa !45, !alias.scope !984
  store i64 %i.ea, ptr %i.ax, align 8, !tbaa !17, !alias.scope !984
  store i32 %i.ed, ptr %i.ay, align 8, !tbaa !32, !alias.scope !984
  store ptr %i.ee, ptr %i.az, align 8, !tbaa !46, !alias.scope !984
  %i.ef = load <2 x i32>, ptr %i.aq, align 4, !tbaa !30, !noalias !983
  %i.eg = load i32, ptr %i.ar, align 8, !tbaa !35, !noalias !983
  %i.eh = load i32, ptr %i.aq, align 4, !tbaa !31, !noalias !983
  %i.ei = sext i32 %i.eh to i64
  %i.ej = sext i32 %i.eg to i64
  %i.ek = mul nsw i64 %i.ej, %i.ei                ; 2 uses
  %i.el = mul i64 %i.ea, %i.ek
  %i.em = mul i64 %i.el, %i.di
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.em
  store ptr %i.en, ptr %18, align 8, !tbaa !15, !alias.scope !984
  %i.eo = shufflevector <2 x i32> %i.ef, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ep = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.eo, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.ep, ptr %i.ba, align 8, !tbaa !30, !alias.scope !984
  store i32 1, ptr %i.bb, align 8, !tbaa !33, !alias.scope !984
  store i64 %i.ek, ptr %i.bc, align 8, !tbaa !16, !alias.scope !984
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(72) %18, ptr %i.bp, i32 noundef 64, i32 noundef %.sroa.speculated123, i32 noundef %.sroa.speculated119, i32 noundef %.0126, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  %i.eq = load i32, ptr %9, align 4, !tbaa !30    ; 2 uses
  %i.er = add nsw i32 %i.eq, %.0126               ; 2 uses
  %i.es = load i32, ptr %8, align 4, !tbaa !30    ; 2 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.noexc, label %._crit_edge, !llvm.loop !979

._crit_edge132:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge132, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #26
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr>, <16 x i1>, <16 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!14 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !11, i64 8, !12, i64 16, !7, i64 24, !13, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !12, i64 64}
!15 = !{!14, !10, i64 0}
!16 = !{!14, !12, i64 64}
!17 = !{!14, !12, i64 16}
!18 = !{!6, !6, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!"float", !6, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"short", !6, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = !{!"branch_weights", i32 8, i32 24}
!29 = !{!"branch_weights", i32 8, i32 56}
!30 = !{!7, !7, i64 0}
!31 = !{!14, !7, i64 44}
!32 = !{!14, !7, i64 24}
!33 = !{!14, !7, i64 56}
!34 = !{!12, !12, i64 0}
!35 = !{!14, !7, i64 48}
!36 = !{!11, !11, i64 0}
!37 = !{!"p1 float", !10, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"bool", !6, i64 0}
!40 = !{!"_ZTSN4ncnn6OptionE", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3, !7, i64 4, !13, i64 8, !13, i64 16, !7, i64 24, !39, i64 28, !39, i64 29, !39, i64 30, !39, i64 31, !39, i64 32, !39, i64 33, !39, i64 34, !39, i64 35, !39, i64 36, !39, i64 37, !39, i64 38, !39, i64 39, !7, i64 40, !39, i64 44, !39, i64 45, !39, i64 46, !39, i64 47, !6, i64 48, !39, i64 49, !39, i64 50, !39, i64 51, !39, i64 52, !39, i64 53, !39, i64 54, !39, i64 55, !39, i64 56, !39, i64 57, !39, i64 58, !39, i64 59, !39, i64 60, !39, i64 61, !39, i64 62, !39, i64 63}
!41 = !{!40, !7, i64 4}
!42 = !{!"llvm.loop.unswitch.partial.disable"}
!43 = !{i64 2, i64 -1, i64 -1, i1 true}
!44 = !{!43}
!45 = !{!14, !11, i64 8}
!46 = !{!14, !13, i64 32}
!47 = !{!"vtable pointer", !5, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!40, !13, i64 16}
!50 = !{!14, !7, i64 52}
!51 = !{!14, !7, i64 40}
!52 = distinct !{!52, !"_ZN4ncnn3Mat7channelEi"}
!53 = distinct !{!53, !52, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !"_ZN4ncnn3Mat7channelEi"}
!67 = distinct !{!67, !66, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !20}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !"_ZN4ncnn3Mat7channelEi"}
!81 = distinct !{!81, !80, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !20}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, !"_ZN4ncnn3Mat7channelEi"}
!95 = distinct !{!95, !94, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !19, !25, !26}
!103 = distinct !{!103, !19, !25, !26}
!104 = distinct !{!104, !19, !26, !25}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !19, !25, !26}
!107 = distinct !{!107, !19, !25, !26}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19, !26, !25}
!110 = distinct !{!110, !19}
!111 = distinct !{!111, !"_ZN4ncnn3Mat7channelEi"}
!112 = distinct !{!112, !111, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !20}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !20}
!118 = distinct !{!118, !19}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !20}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19, !25, !26}
!123 = distinct !{!123, !19, !25, !26}
!124 = distinct !{!124, !19, !26, !25}
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19, !25, !26}
!127 = distinct !{!127, !19, !25, !26}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !19, !26, !25}
!130 = distinct !{!130, !19}
!131 = !{!53}
!132 = !{!67}
!133 = !{!81}
!134 = !{!95}
!135 = !{!112}
!136 = distinct !{!136, !19, !25, !26}
!137 = distinct !{!137, !19, !25, !26}
!138 = distinct !{!138, !19}
!139 = distinct !{!139, !19, !26, !25}
!140 = distinct !{!140, !"_ZN4ncnn3Mat7channelEi"}
!141 = distinct !{!141, !140, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!142 = distinct !{!142, !19}
!143 = distinct !{!143, !19}
!144 = distinct !{!144, !"_ZNK4ncnn3Mat7channelEi"}
!145 = distinct !{!145, !144, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!146 = distinct !{!146, !"_ZNK4ncnn3Mat7channelEi"}
!147 = distinct !{!147, !146, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!148 = distinct !{!148, !"_ZNK4ncnn3Mat7channelEi"}
!149 = distinct !{!149, !148, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!150 = distinct !{!150, !19}
!151 = distinct !{!151, !19}
!152 = distinct !{!152, !19}
!153 = distinct !{!153, !19}
!154 = distinct !{!154, !19}
!155 = distinct !{!155, !"_ZNK4ncnn3Mat7channelEi"}
!156 = distinct !{!156, !155, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!157 = distinct !{!157, !19}
!158 = distinct !{!158, !19}
!159 = distinct !{!159, !19}
!160 = distinct !{!160, !19}
!161 = distinct !{!161, !"_ZNK4ncnn3Mat7channelEi"}
!162 = distinct !{!162, !161, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!163 = distinct !{!163, !19}
!164 = distinct !{!164, !19}
end_hunk_12
