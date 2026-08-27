Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VPlanTransforms?download=true
inline.NumInlined: 28623
inline.NumDeleted: 13159
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoE:bb.a
  %.not40.i.i.i.i.i.i.i.i305.i.i.i.i.i.i = icmp eq ptr %.1.val.val.val.i.i.i.i.i.i.i.i304.i.i.i.i.i.i, %i.b
  br i1 %.not40.i.i.i.i.i.i.i.i305.i.i.i.i.i.i, label %bb.bl, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i"

bb.bl:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i.i298.i.i.i.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i301.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge63.i.i.i.i.i.i.i.i290.i.i.i.i.i.i

._crit_edge._crit_edge63.i.i.i.i.i.i.i.i290.i.i.i.i.i.i: ; preds = %bb.bl, %._crit_edge.i.i.i.i.i.i.i.i287.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i293.i.i.i.i.i.i = phi ptr [ %i.ih, %bb.bl ], [ %.029.lcssa.i.i.i.i.i.i.i.i289.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i287.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i294.i.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i.i.i293.i.i.i.i.i.i, align 8, !tbaa !331
  %i.ii = getelementptr i8, ptr %.2.val.i.i.i.i.i.i.i.i294.i.i.i.i.i.i, i64 40
  %.2.val.val.i.i.i.i.i.i.i.i295.i.i.i.i.i.i = load ptr, ptr %i.ii, align 8, !tbaa !151
  %i.ij = getelementptr i8, ptr %.2.val.val.i.i.i.i.i.i.i.i295.i.i.i.i.i.i, i64 40
  %.2.val.val.val.i.i.i.i.i.i.i.i296.i.i.i.i.i.i = load ptr, ptr %i.ij, align 8, !tbaa !49
  %.not41.i.i.i.i.i.i.i.i297.i.i.i.i.i.i = icmp eq ptr %.2.val.val.val.i.i.i.i.i.i.i.i296.i.i.i.i.i.i, %i.b
  br i1 %.not41.i.i.i.i.i.i.i.i297.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i.loopexit.split.loop.exit": ; preds = %bb.bf
  %i.ik = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i.i265.i.i.i.i.i.i, i64 8
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i.loopexit.split.loop.exit467": ; preds = %bb.bg
  %i.il = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i.i265.i.i.i.i.i.i, i64 16
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i.loopexit.split.loop.exit469": ; preds = %bb.bh
  %i.im = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i.i265.i.i.i.i.i.i, i64 24
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i": ; preds = %bb.be, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i.loopexit.split.loop.exit", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i.loopexit.split.loop.exit467", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i.loopexit.split.loop.exit469", %._crit_edge._crit_edge63.i.i.i.i.i.i.i.i290.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i298.i.i.i.i.i.i, %bb.bj
  %.028.i.i.i.i.i.i.i.i270.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i301.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i298.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i.i.i289.i.i.i.i.i.i, %bb.bj ], [ %.2.i.i.i.i.i.i.i.i293.i.i.i.i.i.i, %._crit_edge._crit_edge63.i.i.i.i.i.i.i.i290.i.i.i.i.i.i ], [ %i.im, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i.loopexit.split.loop.exit469" ], [ %i.il, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i.loopexit.split.loop.exit467" ], [ %i.ik, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i.loopexit.split.loop.exit" ], [ %.02956.i.i.i.i.i.i.i.i265.i.i.i.i.i.i, %bb.be ]
  %.not372.i.i.i.i.i.i = icmp eq ptr %i.hk, %.028.i.i.i.i.i.i.i.i270.i.i.i.i.i.i
  br i1 %.not372.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.thread.i.i.i.i.i.i", label %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i", %._crit_edge._crit_edge63.i.i.i.i.i.i.i.i290.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i287.i.i.i.i.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %bb.bm

bb.bm:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.thread.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.in, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.thread.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.io = getelementptr i8, ptr %.2.val.i.i.i.i.i.i, i64 16
  %.2.val.val.i.i.i.i.i.i = load ptr, ptr %i.io, align 8, !tbaa !12 ; 4 uses
  %i.ip = getelementptr i8, ptr %.2.val.i.i.i.i.i.i, i64 24
  %.2.val.val46.i.i.i.i.i.i = load i32, ptr %i.ip, align 8, !tbaa !14 ; 3 uses
  %i.iq = zext i32 %.2.val.val46.i.i.i.i.i.i to i64 ; 2 uses
  %.idx1.i.i312.i.i.i.i.i.i = shl nuw nsw i64 %i.iq, 3 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.2.val.val.i.i.i.i.i.i, i64 %.idx1.i.i312.i.i.i.i.i.i
  %i.is = lshr i64 %i.iq, 2                       ; 2 uses
  %.not.i.i313.i.i.i.i.i.i = icmp eq i64 %i.is, 0
  br i1 %.not.i.i313.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i340.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i314.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i314.i.i.i.i.i.i:            ; preds = %bb.bm
  %i.it = and i64 %.idx1.i.i312.i.i.i.i.i.i, 34359738336
  %scevgep.i.i.i.i.i.i.i.i316.i.i.i.i.i.i = getelementptr i8, ptr %.2.val.val.i.i.i.i.i.i, i64 %i.it
  br label %bb.bn

bb.bn:                                            ; preds = %bb.br, %.lr.ph.i.i.i.i.i.i.i.i314.i.i.i.i.i.i
  %.057.i.i.i.i.i.i.i.i317.i.i.i.i.i.i = phi i64 [ %i.is, %.lr.ph.i.i.i.i.i.i.i.i314.i.i.i.i.i.i ], [ %i.jg, %bb.br ] ; 2 uses
  %.02956.i.i.i.i.i.i.i.i318.i.i.i.i.i.i = phi ptr [ %.2.val.val.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i314.i.i.i.i.i.i ], [ %i.jf, %bb.br ] ; 9 uses
  %.029.val39.i.i.i.i.i.i.i.i319.i.i.i.i.i.i = load ptr, ptr %.02956.i.i.i.i.i.i.i.i318.i.i.i.i.i.i, align 8, !tbaa !331
  %i.iu = getelementptr i8, ptr %.029.val39.i.i.i.i.i.i.i.i319.i.i.i.i.i.i, i64 40
  %.029.val39.val.i.i.i.i.i.i.i.i320.i.i.i.i.i.i = load ptr, ptr %i.iu, align 8, !tbaa !151
  %i.iv = getelementptr i8, ptr %.029.val39.val.i.i.i.i.i.i.i.i320.i.i.i.i.i.i, i64 40
  %.029.val39.val.val.i.i.i.i.i.i.i.i321.i.i.i.i.i.i = load ptr, ptr %i.iv, align 8, !tbaa !49
  %.not42.i.i.i.i.i.i.i.i322.i.i.i.i.i.i = icmp eq ptr %.029.val39.val.val.i.i.i.i.i.i.i.i321.i.i.i.i.i.i, %i.b
  br i1 %.not42.i.i.i.i.i.i.i.i322.i.i.i.i.i.i, label %bb.bo, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i"

bb.bo:                                            ; preds = %bb.bn
  %i.iw = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i.i318.i.i.i.i.i.i, i64 8
  %.val37.i.i.i.i.i.i.i.i324.i.i.i.i.i.i = load ptr, ptr %i.iw, align 8, !tbaa !331
  %i.ix = getelementptr i8, ptr %.val37.i.i.i.i.i.i.i.i324.i.i.i.i.i.i, i64 40
  %.val37.val.i.i.i.i.i.i.i.i325.i.i.i.i.i.i = load ptr, ptr %i.ix, align 8, !tbaa !151
  %i.iy = getelementptr i8, ptr %.val37.val.i.i.i.i.i.i.i.i325.i.i.i.i.i.i, i64 40
  %.val37.val.val.i.i.i.i.i.i.i.i326.i.i.i.i.i.i = load ptr, ptr %i.iy, align 8, !tbaa !49
  %.not43.i.i.i.i.i.i.i.i327.i.i.i.i.i.i = icmp eq ptr %.val37.val.val.i.i.i.i.i.i.i.i326.i.i.i.i.i.i, %i.b
  br i1 %.not43.i.i.i.i.i.i.i.i327.i.i.i.i.i.i, label %bb.bp, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i.loopexit.split.loop.exit"

bb.bp:                                            ; preds = %bb.bo
  %i.iz = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i.i318.i.i.i.i.i.i, i64 16
  %.val35.i.i.i.i.i.i.i.i329.i.i.i.i.i.i = load ptr, ptr %i.iz, align 8, !tbaa !331
  %i.ja = getelementptr i8, ptr %.val35.i.i.i.i.i.i.i.i329.i.i.i.i.i.i, i64 40
  %.val35.val.i.i.i.i.i.i.i.i330.i.i.i.i.i.i = load ptr, ptr %i.ja, align 8, !tbaa !151
  %i.jb = getelementptr i8, ptr %.val35.val.i.i.i.i.i.i.i.i330.i.i.i.i.i.i, i64 40
  %.val35.val.val.i.i.i.i.i.i.i.i331.i.i.i.i.i.i = load ptr, ptr %i.jb, align 8, !tbaa !49
  %.not44.i.i.i.i.i.i.i.i332.i.i.i.i.i.i = icmp eq ptr %.val35.val.val.i.i.i.i.i.i.i.i331.i.i.i.i.i.i, %i.b
  br i1 %.not44.i.i.i.i.i.i.i.i332.i.i.i.i.i.i, label %bb.bq, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i.loopexit.split.loop.exit475"

bb.bq:                                            ; preds = %bb.bp
  %i.jc = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i.i318.i.i.i.i.i.i, i64 24
  %.val33.i.i.i.i.i.i.i.i334.i.i.i.i.i.i = load ptr, ptr %i.jc, align 8, !tbaa !331
  %i.jd = getelementptr i8, ptr %.val33.i.i.i.i.i.i.i.i334.i.i.i.i.i.i, i64 40
  %.val33.val.i.i.i.i.i.i.i.i335.i.i.i.i.i.i = load ptr, ptr %i.jd, align 8, !tbaa !151
  %i.je = getelementptr i8, ptr %.val33.val.i.i.i.i.i.i.i.i335.i.i.i.i.i.i, i64 40
  %.val33.val.val.i.i.i.i.i.i.i.i336.i.i.i.i.i.i = load ptr, ptr %i.je, align 8, !tbaa !49
  %.not45.i.i.i.i.i.i.i.i337.i.i.i.i.i.i = icmp eq ptr %.val33.val.val.i.i.i.i.i.i.i.i336.i.i.i.i.i.i, %i.b
  br i1 %.not45.i.i.i.i.i.i.i.i337.i.i.i.i.i.i, label %bb.br, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i.loopexit.split.loop.exit477"

bb.br:                                            ; preds = %bb.bq
  %i.jf = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i.i318.i.i.i.i.i.i, i64 32
  %i.jg = add nsw i64 %.057.i.i.i.i.i.i.i.i317.i.i.i.i.i.i, -1
  %i.jh = icmp sgt i64 %.057.i.i.i.i.i.i.i.i317.i.i.i.i.i.i, 1
  br i1 %i.jh, label %bb.bn, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i339.i.i.i.i.i.i, !llvm.loop !2263

._crit_edge.loopexit.i.i.i.i.i.i.i.i339.i.i.i.i.i.i: ; preds = %bb.br
  %i.ji = and i32 %.2.val.val46.i.i.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i.i.i.i.i340.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i340.i.i.i.i.i.i:       ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i339.i.i.i.i.i.i, %bb.bm
  %.pre-phi66.i.i.i.i.i.i.i.i341.i.i.i.i.i.i = phi i32 [ %i.ji, %._crit_edge.loopexit.i.i.i.i.i.i.i.i339.i.i.i.i.i.i ], [ %.2.val.val46.i.i.i.i.i.i, %bb.bm ]
  %.029.lcssa.i.i.i.i.i.i.i.i342.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i316.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i339.i.i.i.i.i.i ], [ %.2.val.val.i.i.i.i.i.i, %bb.bm ] ; 5 uses
  switch i32 %.pre-phi66.i.i.i.i.i.i.i.i341.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.thread" [
    i32 3, label %bb.bs
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i351.i.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge63.i.i.i.i.i.i.i.i343.i.i.i.i.i.i
  ]

bb.bs:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i340.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i.i359.i.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i.i.i.i342.i.i.i.i.i.i, align 8, !tbaa !331
  %i.jj = getelementptr i8, ptr %.029.val.i.i.i.i.i.i.i.i359.i.i.i.i.i.i, i64 40
  %.029.val.val.i.i.i.i.i.i.i.i361.i.i.i.i.i.i = load ptr, ptr %i.jj, align 8, !tbaa !151
  %i.jk = getelementptr i8, ptr %.029.val.val.i.i.i.i.i.i.i.i361.i.i.i.i.i.i, i64 40
  %.029.val.val.val.i.i.i.i.i.i.i.i362.i.i.i.i.i.i = load ptr, ptr %i.jk, align 8, !tbaa !49
  %.not.i.i.i.i.i.i.i.i363.i.i.i.i.i.i = icmp eq ptr %.029.val.val.val.i.i.i.i.i.i.i.i362.i.i.i.i.i.i, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i363.i.i.i.i.i.i, label %bb.bt, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i"

bb.bt:                                            ; preds = %bb.bs
  %i.jl = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i342.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i351.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i.i351.i.i.i.i.i.i: ; preds = %bb.bt, %._crit_edge.i.i.i.i.i.i.i.i340.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i354.i.i.i.i.i.i = phi ptr [ %i.jl, %bb.bt ], [ %.029.lcssa.i.i.i.i.i.i.i.i342.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i340.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i355.i.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i.i.i.i354.i.i.i.i.i.i, align 8, !tbaa !331
  %i.jm = getelementptr i8, ptr %.1.val.i.i.i.i.i.i.i.i355.i.i.i.i.i.i, i64 40
  %.1.val.val.i.i.i.i.i.i.i.i356.i.i.i.i.i.i = load ptr, ptr %i.jm, align 8, !tbaa !151
  %i.jn = getelementptr i8, ptr %.1.val.val.i.i.i.i.i.i.i.i356.i.i.i.i.i.i, i64 40
  %.1.val.val.val.i.i.i.i.i.i.i.i357.i.i.i.i.i.i = load ptr, ptr %i.jn, align 8, !tbaa !49
  %.not40.i.i.i.i.i.i.i.i358.i.i.i.i.i.i = icmp eq ptr %.1.val.val.val.i.i.i.i.i.i.i.i357.i.i.i.i.i.i, %i.b
  br i1 %.not40.i.i.i.i.i.i.i.i358.i.i.i.i.i.i, label %bb.bu, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i"

bb.bu:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i.i351.i.i.i.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i354.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge63.i.i.i.i.i.i.i.i343.i.i.i.i.i.i

._crit_edge._crit_edge63.i.i.i.i.i.i.i.i343.i.i.i.i.i.i: ; preds = %bb.bu, %._crit_edge.i.i.i.i.i.i.i.i340.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i346.i.i.i.i.i.i = phi ptr [ %i.jo, %bb.bu ], [ %.029.lcssa.i.i.i.i.i.i.i.i342.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i340.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i347.i.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i.i.i346.i.i.i.i.i.i, align 8, !tbaa !331
  %i.jp = getelementptr i8, ptr %.2.val.i.i.i.i.i.i.i.i347.i.i.i.i.i.i, i64 40
  %.2.val.val.i.i.i.i.i.i.i.i348.i.i.i.i.i.i = load ptr, ptr %i.jp, align 8, !tbaa !151
  %i.jq = getelementptr i8, ptr %.2.val.val.i.i.i.i.i.i.i.i348.i.i.i.i.i.i, i64 40
  %.2.val.val.val.i.i.i.i.i.i.i.i349.i.i.i.i.i.i = load ptr, ptr %i.jq, align 8, !tbaa !49
  %.not41.i.i.i.i.i.i.i.i350.i.i.i.i.i.i = icmp eq ptr %.2.val.val.val.i.i.i.i.i.i.i.i349.i.i.i.i.i.i, %i.b
  br i1 %.not41.i.i.i.i.i.i.i.i350.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i.loopexit.split.loop.exit": ; preds = %bb.bo
  %i.jr = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i.i318.i.i.i.i.i.i, i64 8
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i.loopexit.split.loop.exit475": ; preds = %bb.bp
  %i.js = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i.i318.i.i.i.i.i.i, i64 16
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i.loopexit.split.loop.exit477": ; preds = %bb.bq
  %i.jt = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i.i.i318.i.i.i.i.i.i, i64 24
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i": ; preds = %bb.bn, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i.loopexit.split.loop.exit", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i.loopexit.split.loop.exit475", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i.loopexit.split.loop.exit477", %._crit_edge._crit_edge63.i.i.i.i.i.i.i.i343.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i351.i.i.i.i.i.i, %bb.bs
  %.028.i.i.i.i.i.i.i.i323.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i354.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i351.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i.i.i342.i.i.i.i.i.i, %bb.bs ], [ %.2.i.i.i.i.i.i.i.i346.i.i.i.i.i.i, %._crit_edge._crit_edge63.i.i.i.i.i.i.i.i343.i.i.i.i.i.i ], [ %i.jt, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i.loopexit.split.loop.exit477" ], [ %i.js, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i.loopexit.split.loop.exit475" ], [ %i.jr, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i.loopexit.split.loop.exit" ], [ %.02956.i.i.i.i.i.i.i.i318.i.i.i.i.i.i, %bb.bn ]
  %.not373.i.i.i.i.i.i = icmp eq ptr %i.ir, %.028.i.i.i.i.i.i.i.i323.i.i.i.i.i.i
  br i1 %.not373.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.thread", label %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit99.i.i.i.i.i.i"
  %i.ju = getelementptr inbounds nuw i8, ptr %.029420.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit451": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit152.i.i.i.i.i.i"
  %i.jv = getelementptr inbounds nuw i8, ptr %.029420.i.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit453": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit205.i.i.i.i.i.i"
  %i.jw = getelementptr inbounds nuw i8, ptr %.029420.i.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit.i.i.i.i.i.i", %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit451", %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit453", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit258.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i"
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit311.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit258.i.i.i.i.i.i" ], [ %.2.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i" ], [ %i.jw, %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit453" ], [ %i.jv, %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit451" ], [ %i.ju, %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.029420.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit.i.i.i.i.i.i" ]
  %.not235.a = icmp eq ptr %i.as, %.028.i.i.i.i.i.i
  br i1 %.not235.a, label %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.thread", label %bb.bv

bb.bv:                                            ; preds = %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit"
  store ptr null, ptr %0, align 8, !tbaa !2261
  br label %.thread228

"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.thread": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit364.i.i.i.i.i.i", %._crit_edge._crit_edge63.i.i.i.i.i.i.i.i343.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i340.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i, %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit"
  br i1 %i.af, label %.thread221, label %bb.bw

bb.bw:                                            ; preds = %"_ZN4llvm6any_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZNS_15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  br i1 %.sroa.10.0328, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %.sroa.0176.0.insert.ext = and i64 %.sroa.0184.0327, 1099511627775
  store ptr %i.u, ptr %5, align 8, !tbaa !12
  store i32 6, ptr %i.w, align 4, !tbaa !15
  store i64 %.sroa.0176.0.insert.ext, ptr %i.u, align 8
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %i.jx = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.jy = load i32, ptr %i.t, align 8, !tbaa !14  ; 4 uses
  %i.jz = zext i32 %i.jy to i64                   ; 2 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !12, !alias.scope !2265
  store i32 0, ptr %i.v, align 8, !tbaa !14, !alias.scope !2265
  store i32 6, ptr %i.w, align 4, !tbaa !15, !alias.scope !2265
  %.idx = shl nuw nsw i64 %i.jz, 3
  %i.ka = icmp ugt i32 %i.jy, 6
  br i1 %i.ka, label %_ZN4llvm15SmallVectorImplINS_12ElementCountEE7reserveEm.exit.i.i.i.thread, label %_ZN4llvm15SmallVectorImplINS_12ElementCountEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplINS_12ElementCountEE7reserveEm.exit.i.i.i.thread: ; preds = %bb.by
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.u, i64 noundef %i.jz, i64 noundef 8) #25
  %.pre8.pre.i.i.i = load i32, ptr %i.v, align 8, !tbaa !14, !alias.scope !2265
  %.pre.pre382.pre = load ptr, ptr %5, align 8, !tbaa !12
  %i.kb = zext i32 %.pre8.pre.i.i.i to i64
  br label %bb.bz

_ZN4llvm15SmallVectorImplINS_12ElementCountEE7reserveEm.exit.i.i.i: ; preds = %bb.by
  %.not.i.i.i.i = icmp eq i32 %i.jy, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm9to_vectorINS_14iterator_rangeIPKNS_12ElementCountEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_12ElementCountEE7reserveEm.exit.i.i.i.thread, %_ZN4llvm15SmallVectorImplINS_12ElementCountEE7reserveEm.exit.i.i.i
  %.pre8.i.i.i412 = phi i64 [ %i.kb, %_ZN4llvm15SmallVectorImplINS_12ElementCountEE7reserveEm.exit.i.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplINS_12ElementCountEE7reserveEm.exit.i.i.i ]
  %.pre.pre382411 = phi ptr [ %.pre.pre382.pre, %_ZN4llvm15SmallVectorImplINS_12ElementCountEE7reserveEm.exit.i.i.i.thread ], [ %i.u, %_ZN4llvm15SmallVectorImplINS_12ElementCountEE7reserveEm.exit.i.i.i ]
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %.pre.pre382411, i64 %.pre8.i.i.i412
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kc, ptr align 4 %i.jx, i64 %.idx, i1 false)
  %.pre.i.i.i114 = load i32, ptr %i.v, align 8, !tbaa !14, !alias.scope !2265
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !12
  br label %_ZN4llvm9to_vectorINS_14iterator_rangeIPKNS_12ElementCountEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit

_ZN4llvm9to_vectorINS_14iterator_rangeIPKNS_12ElementCountEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_12ElementCountEE7reserveEm.exit.i.i.i, %bb.bz
  %.pre = phi ptr [ %i.u, %_ZN4llvm15SmallVectorImplINS_12ElementCountEE7reserveEm.exit.i.i.i ], [ %.pre.pre, %bb.bz ]
  %i.kd = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_12ElementCountEE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i114, %bb.bz ]
  %i.ke = add i32 %i.kd, %i.jy
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN4llvm9to_vectorINS_14iterator_rangeIPKNS_12ElementCountEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit, %bb.bx
  %i.kf = phi i32 [ %i.ke, %_ZN4llvm9to_vectorINS_14iterator_rangeIPKNS_12ElementCountEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit ], [ 1, %bb.bx ] ; 3 uses
  %i.kg = phi ptr [ %.pre, %_ZN4llvm9to_vectorINS_14iterator_rangeIPKNS_12ElementCountEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit ], [ %i.u, %bb.bx ] ; 2 uses
  store i32 %i.kf, ptr %i.v, align 8, !tbaa !14
  %i.kh = zext i32 %i.kf to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0181.0329, i64 152 ; 7 uses
  %i.kj = load i8, ptr %i.ki, align 8, !tbaa !1374, !range !213, !noundef !214
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %_ZNK4llvm16VPInterleaveBase7getMaskEv.exit.i, label %_ZNK4llvm16VPInterleaveBase7getMaskEv.exit.thread.i

_ZNK4llvm16VPInterleaveBase7getMaskEv.exit.i:     ; preds = %bb.ca
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0181.0329, i64 32
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !14
  %i.kn = add i32 %i.km, -1
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0181.0329, i64 24
  %i.kp = zext i32 %i.kn to i64
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !12
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kp
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !111
  %.not.i133 = icmp eq ptr %i.ks, null
  br i1 %.not.i133, label %_ZNK4llvm16VPInterleaveBase7getMaskEv.exit.thread.i, label %_ZL28isConsecutiveInterleaveGroupPN4llvm18VPInterleaveRecipeENS_8ArrayRefINS_12ElementCountEEERKNS_19TargetTransformInfoE.exit.thread

_ZNK4llvm16VPInterleaveBase7getMaskEv.exit.thread.i: ; preds = %_ZNK4llvm16VPInterleaveBase7getMaskEv.exit.i, %bb.ca
  %i.kt = load ptr, ptr %i.y, align 8, !tbaa !113
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 48
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = call noundef i32 %i.kv(ptr noundef nonnull align 8 dereferenceable(170) %i.y) #25, !inline_history !2268 ; 0 uses
  %i.kx = load ptr, ptr %i.y, align 8, !tbaa !113
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = call noundef i32 %i.kz(ptr noundef nonnull align 8 dereferenceable(170) %i.y) #25, !inline_history !2268
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %bb.cb, label %bb.cp

bb.cb:                                            ; preds = %_ZNK4llvm16VPInterleaveBase7getMaskEv.exit.thread.i
  %i.lc = getelementptr inbounds i8, ptr %.sroa.0181.0329, i64 -8 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.lc, align 8 ; 3 uses
  %i.ld = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.le = icmp eq i64 %i.ld, 0
  br i1 %i.le, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lf = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZN4llvm5VPDef10getVPValueEj.exit.i

bb.cd:                                            ; preds = %bb.cb
  %i.lg = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.lh = inttoptr i64 %i.lg to ptr
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !12
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !53
  br label %_ZN4llvm5VPDef10getVPValueEj.exit.i

_ZN4llvm5VPDef10getVPValueEj.exit.i:              ; preds = %bb.cd, %bb.cc
  %.0.i.i.i117 = phi ptr [ %i.lf, %bb.cc ], [ %i.lj, %bb.cd ]
  %i.lk = call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i117) #25 ; 10 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lc, align 8 ; 3 uses
  %i.ll = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.lm = icmp eq i64 %i.ll, 0
  br i1 %i.lm, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZN4llvm5VPDef10getVPValueEj.exit.i
  %i.ln = icmp ugt i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.lo = zext i1 %i.ln to i32
  br label %_ZN4llvm5VPDef13definedValuesEv.exit.i

bb.cf:                                            ; preds = %_ZN4llvm5VPDef10getVPValueEj.exit.i
  %i.lp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -5
  %i.lq = inttoptr i64 %i.lp to ptr               ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !12
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !14
  br label %_ZN4llvm5VPDef13definedValuesEv.exit.i

_ZN4llvm5VPDef13definedValuesEv.exit.i:           ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i2.i.i = phi ptr [ %i.lc, %bb.ce ], [ %i.lr, %bb.cf ] ; 3 uses
  %.0.i.i.i.i = phi i32 [ %i.lo, %bb.ce ], [ %i.lt, %bb.cf ]
  %i.lu = zext i32 %.0.i.i.i.i to i64             ; 3 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i2.i.i, i64 %i.lu ; 2 uses
  %i.lw = ptrtoint ptr %i.lv to i64
  %i.lx = lshr i64 %i.lu, 2                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.lx, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i125, label %.lr.ph.i.i.i.i.i.i118

.lr.ph.i.i.i.i.i.i118:                            ; preds = %_ZN4llvm5VPDef13definedValuesEv.exit.i, %bb.cj
  %.057.i.i.i.i.i.i = phi i64 [ %i.mg, %bb.cj ], [ %i.lx, %_ZN4llvm5VPDef13definedValuesEv.exit.i ] ; 2 uses
  %.02956.i.i.i.i.i.i = phi ptr [ %i.mf, %bb.cj ], [ %.0.i.i.i.i2.i.i, %_ZN4llvm5VPDef13definedValuesEv.exit.i ] ; 9 uses
  %.029.val39.i.i.i.i.i.i119 = load ptr, ptr %.02956.i.i.i.i.i.i, align 8, !tbaa !53
  %i.ly = call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %.029.val39.i.i.i.i.i.i119) #25
  %.not42.i.i.i.i.i.i = icmp eq ptr %i.ly, %i.lk
  br i1 %.not42.i.i.i.i.i.i, label %bb.cg, label %"_ZN4llvm6all_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZL28isConsecutiveInterleaveGroupPNS_18VPInterleaveRecipeENS1_INS_12ElementCountEEERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.i"

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i.i118
  %i.lz = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i, i64 8
  %.val37.i.i.i.i.i.i121 = load ptr, ptr %i.lz, align 8, !tbaa !53
  %i.ma = call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val37.i.i.i.i.i.i121) #25
  %.not43.i.i.i.i.i.i = icmp eq ptr %i.ma, %i.lk
  br i1 %.not43.i.i.i.i.i.i, label %bb.ch, label %"_ZN4llvm6all_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZL28isConsecutiveInterleaveGroupPNS_18VPInterleaveRecipeENS1_INS_12ElementCountEEERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.i.loopexit.split.loop.exit"

bb.ch:                                            ; preds = %bb.cg
  %i.mb = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i, i64 16
  %.val35.i.i.i.i.i.i122 = load ptr, ptr %i.mb, align 8, !tbaa !53
  %i.mc = call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val35.i.i.i.i.i.i122) #25
  %.not44.i.i.i.i.i.i = icmp eq ptr %i.mc, %i.lk
  br i1 %.not44.i.i.i.i.i.i, label %bb.ci, label %"_ZN4llvm6all_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZL28isConsecutiveInterleaveGroupPNS_18VPInterleaveRecipeENS1_INS_12ElementCountEEERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.i.loopexit.split.loop.exit491"

bb.ci:                                            ; preds = %bb.ch
  %i.md = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i, i64 24
  %.val33.i.i.i.i.i.i123 = load ptr, ptr %i.md, align 8, !tbaa !53
  %i.me = call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val33.i.i.i.i.i.i123) #25
  %.not45.i.i.i.i.i.i = icmp eq ptr %i.me, %i.lk
  br i1 %.not45.i.i.i.i.i.i, label %bb.cj, label %"_ZN4llvm6all_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZL28isConsecutiveInterleaveGroupPNS_18VPInterleaveRecipeENS1_INS_12ElementCountEEERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.i.loopexit.split.loop.exit493"

bb.cj:                                            ; preds = %bb.ci
  %i.mf = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i, i64 32 ; 3 uses
  %i.mg = add nsw i64 %.057.i.i.i.i.i.i, -1
  %i.mh = icmp sgt i64 %.057.i.i.i.i.i.i, 1
  br i1 %i.mh, label %.lr.ph.i.i.i.i.i.i118, label %._crit_edge.loopexit.i.i.i.i.i.i124, !llvm.loop !2269

._crit_edge.loopexit.i.i.i.i.i.i124:              ; preds = %bb.cj
  %.pre.i.i.i.i.i.i = ptrtoint ptr %i.mf to i64
  %.pre62.i.i.i.i.i.i = sub i64 %i.lw, %.pre.i.i.i.i.i.i
  %i.mi = ashr exact i64 %.pre62.i.i.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i.i.i125

._crit_edge.i.i.i.i.i.i125:                       ; preds = %._crit_edge.loopexit.i.i.i.i.i.i124, %_ZN4llvm5VPDef13definedValuesEv.exit.i
  %.pre-phi63.i.i.i.i.i.i = phi i64 [ %i.mi, %._crit_edge.loopexit.i.i.i.i.i.i124 ], [ %i.lu, %_ZN4llvm5VPDef13definedValuesEv.exit.i ]
  %.029.lcssa.i.i.i.i.i.i126 = phi ptr [ %i.mf, %._crit_edge.loopexit.i.i.i.i.i.i124 ], [ %.0.i.i.i.i2.i.i, %_ZN4llvm5VPDef13definedValuesEv.exit.i ] ; 5 uses
  switch i64 %.pre-phi63.i.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZL28isConsecutiveInterleaveGroupPNS_18VPInterleaveRecipeENS1_INS_12ElementCountEEERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.thread.i" [
    i64 3, label %bb.ck
    i64 2, label %bb.cm
    i64 1, label %bb.co
  ]

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i.i.i125
  %.029.val.i.i.i.i.i.i131 = load ptr, ptr %.029.lcssa.i.i.i.i.i.i126, align 8, !tbaa !53
  %i.mj = call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %.029.val.i.i.i.i.i.i131) #25
  %.not.i.i.i.i.i.i132 = icmp eq ptr %i.mj, %i.lk
  br i1 %.not.i.i.i.i.i.i132, label %bb.cl, label %"_ZN4llvm6all_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZL28isConsecutiveInterleaveGroupPNS_18VPInterleaveRecipeENS1_INS_12ElementCountEEERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.i"

bb.cl:                                            ; preds = %bb.ck
  %i.mk = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i126, i64 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %._crit_edge.i.i.i.i.i.i125
  %.1.i.i.i.i.i.i129 = phi ptr [ %i.mk, %bb.cl ], [ %.029.lcssa.i.i.i.i.i.i126, %._crit_edge.i.i.i.i.i.i125 ] ; 3 uses
  %.1.val.i.i.i.i.i.i130 = load ptr, ptr %.1.i.i.i.i.i.i129, align 8, !tbaa !53
  %i.ml = call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %.1.val.i.i.i.i.i.i130) #25
  %.not40.i.i.i.i.i.i = icmp eq ptr %i.ml, %i.lk
  br i1 %.not40.i.i.i.i.i.i, label %bb.cn, label %"_ZN4llvm6all_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZL28isConsecutiveInterleaveGroupPNS_18VPInterleaveRecipeENS1_INS_12ElementCountEEERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.i"

bb.cn:                                            ; preds = %bb.cm
  %i.mm = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i129, i64 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %._crit_edge.i.i.i.i.i.i125
  %.2.i.i.i.i.i.i127 = phi ptr [ %i.mm, %bb.cn ], [ %.029.lcssa.i.i.i.i.i.i126, %._crit_edge.i.i.i.i.i.i125 ] ; 2 uses
  %.2.val.i.i.i.i.i.i128 = load ptr, ptr %.2.i.i.i.i.i.i127, align 8, !tbaa !53
  %i.mn = call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %.2.val.i.i.i.i.i.i128) #25
  %.not41.i.i.i.i.i.i = icmp eq ptr %i.mn, %i.lk
  br i1 %.not41.i.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZL28isConsecutiveInterleaveGroupPNS_18VPInterleaveRecipeENS1_INS_12ElementCountEEERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.thread.i", label %"_ZN4llvm6all_ofINS_8ArrayRefIPNS_13VPRecipeValueEEEZL28isConsecutiveInterleaveGroupPNS_18VPInterleaveRecipeENS1_INS_12ElementCountEEERKNS_19TargetTransformInfoEE3$_0EEbOT_T0_.exit.i"

end_hunk_0
