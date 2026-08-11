inline.NumInlined: 1559
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau7CodeGen27markDeadStoresInBlockChainsERNS0_9IrBuilderE:bb.a
  br label %.body.i

bb.bv:                                            ; preds = %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit.i.i, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i.i
  %i.ur = phi i32 [ %.pre6.i.i, %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit.i.i ], [ 0, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i.i ]
  store i32 %i.ur, ptr %i.sp, align 8, !tbaa !78
  %i.us = getelementptr inbounds nuw i8, ptr %i.sl, i64 48
  %i.ut = getelementptr inbounds nuw i8, ptr %.0159721.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.us, ptr noundef nonnull align 8 dereferenceable(11) %i.ut, i64 11, i1 false)
  %i.uu = load i32, ptr %i.mq, align 8, !tbaa !101
  %i.uv = add i32 %i.uu, 1
  store i32 %i.uv, ptr %i.mq, align 8, !tbaa !101
  %i.uw = load i8, ptr %i.pv, align 8, !tbaa !68
  switch i8 %i.uw, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i [
    i8 -84, label %"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit"
    i8 -85, label %"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit"
    i8 0, label %"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit"
    i8 -83, label %"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit"
  ]

_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i:     ; preds = %bb.bv
  %i.ux = load ptr, ptr %i.so, align 8, !tbaa !77 ; 2 uses
  %i.uy = load i32, ptr %i.ss, align 8, !tbaa !78 ; 2 uses
  %i.uz = zext i32 %i.uy to i64
  %.idx.i = shl nuw nsw i64 %i.uz, 2
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 %.idx.i
  %.not9.i = icmp eq i32 %i.uy, 0
  br i1 %.not9.i, label %"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit", label %.lr.ph.i78.preheader

.lr.ph.i78.preheader:                             ; preds = %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i
  %.promoted = load ptr, ptr %14, align 8
  %.promoted598 = load ptr, ptr %i.mx, align 8
  %.promoted599 = load ptr, ptr %i.nq, align 8
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader, %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i"
  %i.vb = phi ptr [ %i.xl, %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i" ], [ %.promoted599, %.lr.ph.i78.preheader ] ; 7 uses
  %i.vc = phi ptr [ %i.xm, %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i" ], [ %.promoted598, %.lr.ph.i78.preheader ] ; 9 uses
  %i.vd = phi ptr [ %i.xn, %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i" ], [ %.promoted, %.lr.ph.i78.preheader ] ; 13 uses
  %.010.i = phi ptr [ %i.xo, %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i" ], [ %i.ux, %.lr.ph.i78.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i79 = load i32, ptr %.010.i, align 4, !tbaa !79 ; 10 uses
  %i.ve = and i32 %.sroa.0.0.copyload.i79, 15
  %i.vf = icmp eq i32 %i.ve, 4
  br i1 %i.vf, label %bb.bw, label %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i"

bb.bw:                                            ; preds = %.lr.ph.i78
  %i.vg = ptrtoint ptr %i.vc to i64               ; 2 uses
  %i.vh = ptrtoint ptr %i.vd to i64               ; 3 uses
  %i.vi = sub i64 %i.vg, %i.vh                    ; 7 uses
  %i.vj = ashr i64 %i.vi, 5                       ; 2 uses
  %i.vk = icmp sgt i64 %i.vj, 0
  br i1 %i.vk, label %.lr.ph.i.i.i.i.i88, label %._crit_edge.i.i.i.i.i81

.lr.ph.i.i.i.i.i88:                               ; preds = %bb.bw
  %i.vl = and i64 %i.vi, -32
  %scevgep.i.i.i.i.i89 = getelementptr i8, ptr %i.vd, i64 %i.vl ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cb, %.lr.ph.i.i.i.i.i88
  %.058.i.i.i.i.i = phi i64 [ %i.vj, %.lr.ph.i.i.i.i.i88 ], [ %i.vu, %bb.cb ] ; 2 uses
  %.sroa.038.057.i.i.i.i.i = phi ptr [ %i.vd, %.lr.ph.i.i.i.i.i88 ], [ %i.vt, %bb.cb ] ; 9 uses
  %.val1.i.i.i.i.i.i = load i32, ptr %.sroa.038.057.i.i.i.i.i, align 4
  %i.vm = icmp eq i32 %.val1.i.i.i.i.i.i, %.sroa.0.0.copyload.i79
  br i1 %i.vm, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i", label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 8
  %.val1.i22.i.i.i.i.i = load i32, ptr %i.vn, align 4
  %i.vo = icmp eq i32 %.val1.i22.i.i.i.i.i, %.sroa.0.0.copyload.i79
  br i1 %i.vo, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit", label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 16
  %.val1.i23.i.i.i.i.i = load i32, ptr %i.vp, align 4
  %i.vq = icmp eq i32 %.val1.i23.i.i.i.i.i, %.sroa.0.0.copyload.i79
  br i1 %i.vq, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit1232", label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.vr = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 24
  %.val1.i24.i.i.i.i.i = load i32, ptr %i.vr, align 4
  %i.vs = icmp eq i32 %.val1.i24.i.i.i.i.i, %.sroa.0.0.copyload.i79
  br i1 %i.vs, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit1234", label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 32
  %i.vu = add nsw i64 %.058.i.i.i.i.i, -1
  %i.vv = icmp sgt i64 %.058.i.i.i.i.i, 1
  br i1 %i.vv, label %bb.bx, label %._crit_edge.loopexit.i.i.i.i.i90, !llvm.loop !118

._crit_edge.loopexit.i.i.i.i.i90:                 ; preds = %bb.cb
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i89 to i64
  %.pre66.i.i.i.i.i = sub i64 %i.vg, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i81

._crit_edge.i.i.i.i.i81:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i90, %bb.bw
  %.pre-phi67.i.i.i.i.i = phi i64 [ %.pre66.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i90 ], [ %i.vi, %bb.bw ]
  %.sroa.038.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i89, %._crit_edge.loopexit.i.i.i.i.i90 ], [ %i.vd, %bb.bw ] ; 5 uses
  %i.vw = ashr exact i64 %.pre-phi67.i.i.i.i.i, 3
  switch i64 %i.vw, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.thread.i.i" [
    i64 3, label %bb.cc
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i87
    i64 1, label %._crit_edge._crit_edge64.i.i.i.i.i
  ]

bb.cc:                                            ; preds = %._crit_edge.i.i.i.i.i81
  %.val1.i25.i.i.i.i.i = load i32, ptr %.sroa.038.0.lcssa.i.i.i.i.i, align 4
  %i.vx = icmp eq i32 %.val1.i25.i.i.i.i.i, %.sroa.0.0.copyload.i79
  br i1 %i.vx, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i", label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i87

._crit_edge._crit_edge.i.i.i.i.i87:               ; preds = %bb.cd, %._crit_edge.i.i.i.i.i81
  %.sroa.038.1.i.i.i.i.i = phi ptr [ %i.vy, %bb.cd ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i81 ] ; 3 uses
  %.val1.i26.i.i.i.i.i = load i32, ptr %.sroa.038.1.i.i.i.i.i, align 4
  %i.vz = icmp eq i32 %.val1.i26.i.i.i.i.i, %.sroa.0.0.copyload.i79
  br i1 %i.vz, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i", label %bb.ce

bb.ce:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i87
  %i.wa = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge64.i.i.i.i.i

._crit_edge._crit_edge64.i.i.i.i.i:               ; preds = %bb.ce, %._crit_edge.i.i.i.i.i81
  %.sroa.038.2.i.i.i.i.i = phi ptr [ %i.wa, %bb.ce ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i81 ] ; 2 uses
  %.val1.i27.i.i.i.i.i = load i32, ptr %.sroa.038.2.i.i.i.i.i, align 4
  %i.wb = icmp eq i32 %.val1.i27.i.i.i.i.i, %.sroa.0.0.copyload.i79
  %spec.select.i.i.i.i.i = select i1 %i.wb, ptr %.sroa.038.2.i.i.i.i.i, ptr %i.vc
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit": ; preds = %bb.by
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 8
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit1232": ; preds = %bb.bz
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit1234": ; preds = %bb.ca
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 24
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i": ; preds = %bb.bx, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit1232", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit1234", %._crit_edge._crit_edge64.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i87, %bb.cc
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.038.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i87 ], [ %spec.select.i.i.i.i.i, %._crit_edge._crit_edge64.i.i.i.i.i ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %bb.cc ], [ %i.we, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit1234" ], [ %i.wd, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit1232" ], [ %i.wc, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit" ], [ %.sroa.038.057.i.i.i.i.i, %bb.bx ] ; 2 uses
  %.not.i.i82 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %i.vc
  br i1 %.not.i.i82, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.thread.i.i", label %bb.cf

bb.cf:                                            ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i"
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, i64 4 ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !119
  %i.wh = add i32 %i.wg, 1
  store i32 %i.wh, ptr %i.wf, align 4, !tbaa !119
  br label %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.thread.i.i": ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.i", %._crit_edge.i.i.i.i.i81
  %.not.i.i.i83 = icmp eq ptr %i.vc, %i.vb
  br i1 %.not.i.i.i83, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.thread.i.i"
  store i32 %.sroa.0.0.copyload.i79, ptr %i.vc, align 4, !tbaa !79
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vc, i64 4
  store i32 1, ptr %i.wi, align 4, !tbaa !119
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vc, i64 8 ; 2 uses
  store ptr %i.wj, ptr %i.mx, align 8, !tbaa !105
  br label %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i"

bb.ch:                                            ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.thread.i.i"
  %i.wk = icmp eq i64 %i.vi, 9223372036854775800
  br i1 %i.wk, label %bb.ci, label %_ZNKSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc91:                                         ; preds = %bb.ci
  unreachable

_ZNKSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ch
  %i.wl = ashr exact i64 %i.vi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.wl, i64 1)
  %i.wm = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.wl ; 2 uses
  %i.wn = icmp ult i64 %i.wm, %i.wl
  %i.wo = call i64 @llvm.umin.i64(i64 %i.wm, i64 1152921504606846975)
  %i.wp = select i1 %i.wn, i64 1152921504606846975, i64 %i.wo ; 3 uses
  %.not.i.i.i.i.i84 = icmp ne i64 %i.wp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i84)
  %i.wq = shl nuw nsw i64 %i.wp, 3
  %i.wr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wq) #22
          to label %.noexc92 unwind label %.loopexit ; 9 uses

.noexc92:                                         ; preds = %_ZNKSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.vi ; 2 uses
  store i32 %.sroa.0.0.copyload.i79, ptr %i.ws, align 4, !tbaa !79
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 4
  store i32 1, ptr %i.wt, align 4, !tbaa !119
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.vd, %i.vb
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i85.preheader

.lr.ph.i.i.i.i.i.i.i85.preheader:                 ; preds = %.noexc92
  %i.wu = ptrtoaddr ptr %i.wr to i64
  %i.wv = ptrtoaddr ptr %i.vb to i64
  %19 = add i64 %i.wv, -8
  %20 = sub i64 %19, %i.vh                        ; 2 uses
  %i.ww = lshr i64 %20, 3
  %i.wx = add nuw nsw i64 %i.ww, 1                ; 2 uses
  %min.iters.check1652 = icmp ult i64 %20, 24
  %i.wy = sub i64 %i.vh, %i.wu
  %diff.check1650 = icmp ugt i64 %i.wy, -32
  %or.cond1722 = or i1 %min.iters.check1652, %diff.check1650
  br i1 %or.cond1722, label %.lr.ph.i.i.i.i.i.i.i85.preheader1734, label %vector.ph1653

vector.ph1653:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i85.preheader
  %n.vec1654 = and i64 %i.wx, 4611686018427387900 ; 3 uses
  %i.wz = shl i64 %n.vec1654, 3                   ; 2 uses
  %i.xa = getelementptr i8, ptr %i.wr, i64 %i.wz  ; 2 uses
  %i.xb = getelementptr i8, ptr %i.vd, i64 %i.wz
  br label %vector.body1655

vector.body1655:                                  ; preds = %vector.body1655, %vector.ph1653
  %index1656 = phi i64 [ 0, %vector.ph1653 ], [ %index.next1661, %vector.body1655 ] ; 2 uses
  %i.xc = shl i64 %index1656, 3                   ; 2 uses
  %next.gep1657 = getelementptr i8, ptr %i.wr, i64 %i.xc ; 2 uses
  %next.gep1658 = getelementptr i8, ptr %i.vd, i64 %i.xc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.xd = getelementptr i8, ptr %next.gep1658, i64 16
  %wide.load1659 = load <2 x i64>, ptr %next.gep1658, align 4, !alias.scope !124, !noalias !121
  %wide.load1660 = load <2 x i64>, ptr %i.xd, align 4, !alias.scope !124, !noalias !121
  %i.xe = getelementptr i8, ptr %next.gep1657, i64 16
  store <2 x i64> %wide.load1659, ptr %next.gep1657, align 4, !alias.scope !121, !noalias !124
  store <2 x i64> %wide.load1660, ptr %i.xe, align 4, !alias.scope !121, !noalias !124
  %index.next1661 = add nuw i64 %index1656, 4     ; 2 uses
  %i.xf = icmp eq i64 %index.next1661, %n.vec1654
  br i1 %i.xf, label %middle.block1662, label %vector.body1655, !llvm.loop !126

middle.block1662:                                 ; preds = %vector.body1655
  %cmp.n1663 = icmp eq i64 %i.wx, %n.vec1654
  br i1 %cmp.n1663, label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i85.preheader1734

.lr.ph.i.i.i.i.i.i.i85.preheader1734:             ; preds = %.lr.ph.i.i.i.i.i.i.i85.preheader, %middle.block1662
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.wr, %.lr.ph.i.i.i.i.i.i.i85.preheader ], [ %i.xa, %middle.block1662 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.vd, %.lr.ph.i.i.i.i.i.i.i85.preheader ], [ %i.xb, %middle.block1662 ]
  br label %.lr.ph.i.i.i.i.i.i.i85

.lr.ph.i.i.i.i.i.i.i85:                           ; preds = %.lr.ph.i.i.i.i.i.i.i85.preheader1734, %.lr.ph.i.i.i.i.i.i.i85
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.xi, %.lr.ph.i.i.i.i.i.i.i85 ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i85.preheader1734 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.xh, %.lr.ph.i.i.i.i.i.i.i85 ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i85.preheader1734 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.xg = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !124, !noalias !121
  store i64 %i.xg, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !121, !noalias !124
  %i.xh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i86 = icmp eq ptr %i.xh, %i.vb
  br i1 %.not.i.i.i.i.i.i.i86, label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i85, !llvm.loop !127

_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i85, %middle.block1662, %.noexc92
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.wr, %.noexc92 ], [ %i.xa, %middle.block1662 ], [ %i.xi, %.lr.ph.i.i.i.i.i.i.i85 ]
  %i.xj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i34.i.i.i.i = icmp eq ptr %i.vd, null
  br i1 %.not.i34.i.i.i.i, label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.vd, i64 noundef %i.vi) #25
  br label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.cj, %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i.i
  store ptr %i.wr, ptr %14, align 8, !tbaa !108
  store ptr %i.xj, ptr %i.mx, align 8, !tbaa !105
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.wp ; 2 uses
  store ptr %i.xk, ptr %i.nq, align 8, !tbaa !128
  br label %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i"

"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i": ; preds = %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.cg, %bb.cf, %.lr.ph.i78
  %i.xl = phi ptr [ %i.xk, %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %i.vb, %bb.cg ], [ %i.vb, %bb.cf ], [ %i.vb, %.lr.ph.i78 ]
  %i.xm = phi ptr [ %i.xj, %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %i.wj, %bb.cg ], [ %i.vc, %bb.cf ], [ %i.vc, %.lr.ph.i78 ]
  %i.xn = phi ptr [ %i.wr, %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %i.vd, %bb.cg ], [ %i.vd, %bb.cf ], [ %i.vd, %.lr.ph.i78 ]
  %i.xo = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i80 = icmp eq ptr %i.xo, %i.va
  br i1 %.not.i80, label %"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit", label %.lr.ph.i78

"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_.exit": ; preds = %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit.i", %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i, %bb.bv, %bb.bv, %bb.bv, %bb.bv
  %i.xp = getelementptr inbounds nuw i8, ptr %.0159721.i, i64 72 ; 2 uses
  %.not184.i = icmp eq ptr %i.xp, %i.pt
  br i1 %.not184.i, label %._crit_edge724.i, label %.lr.ph723.i

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit:                      ; preds = %bb.bl
  %lpad.loopexit142 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ci
  %lpad.loopexit.split-lp143 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.preheader.i:                                     ; preds = %bb.dt
  %.not554742.i = icmp eq ptr %i.aez, %i.afa
  br i1 %.not554742.i, label %._crit_edge745.i, label %.lr.ph744.i

.lr.ph744.i:                                      ; preds = %.preheader.i
  %i.xq = getelementptr inbounds nuw i8, ptr %i.pe, i64 40 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.pe, i64 48 ; 5 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.pe, i64 52 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.pe, i64 56
  %.pre865.i = load i32, ptr %i.xr, align 8, !tbaa !129
  br label %bb.du

.lr.ph739.i:                                      ; preds = %bb.dt, %.lr.ph739.preheader.i
  %i.xu = phi ptr [ %i.aez, %bb.dt ], [ %.pre854.i, %.lr.ph739.preheader.i ] ; 2 uses
  %i.xv = phi ptr [ %i.afa, %bb.dt ], [ %.pre853.i, %.lr.ph739.preheader.i ] ; 3 uses
  %i.xw = phi i64 [ %i.afb, %bb.dt ], [ %i.pn, %.lr.ph739.preheader.i ]
  %.0160737.i = phi i64 [ %.1161.i, %bb.dt ], [ 0, %.lr.ph739.preheader.i ] ; 3 uses
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %.0160737.i ; 7 uses
  %.sroa.061.0.copyload.i = load i32, ptr %i.xx, align 4, !tbaa !79
  %i.xy = lshr i32 %.sroa.061.0.copyload.i, 4     ; 3 uses
  %i.xz = zext nneg i32 %i.xy to i64              ; 2 uses
  %i.ya = load ptr, ptr %i.o, align 8, !tbaa !17  ; 2 uses
  %i.yb = getelementptr inbounds nuw [64 x i8], ptr %i.ya, i64 %i.xz ; 4 uses
  %i.yc = load i8, ptr @_ZN5FFlag29LuauCodegenVmExitSyncMultiUseE, align 8, !tbaa !30, !range !35, !noundef !36
  %i.yd = trunc nuw i8 %i.yc to i1
  br i1 %i.yd, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %.lr.ph739.i
  %i.ye = load i64, ptr %i.my, align 8, !tbaa !95
  %i.yf = icmp eq i64 %i.ye, 0
  br i1 %i.yf, label %.critedge.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.yg = load i32, ptr %i.cd, align 8, !tbaa !22 ; 2 uses
  %i.yh = icmp eq i32 %i.xy, %i.yg
  br i1 %i.yh, label %.critedge.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.yi = load i64, ptr %i.mz, align 8, !tbaa !96
  %i.yj = add i64 %i.yi, -1                       ; 3 uses
  %i.yk = and i64 %i.yj, %i.xz
  %i.yl = load ptr, ptr %8, align 8, !tbaa !97
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cp, %bb.cm
  %.02032.i.i251.i = phi i64 [ 0, %bb.cm ], [ %i.yq, %bb.cp ]
  %.02131.i.i252.i = phi i64 [ %i.yk, %bb.cm ], [ %i.ys, %bb.cp ] ; 2 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %.02131.i.i252.i
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !22 ; 2 uses
  %i.yo = icmp eq i32 %i.yn, %i.xy
  br i1 %i.yo, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.thread545.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.yp = icmp eq i32 %i.yn, %i.yg
  br i1 %i.yp, label %.critedge.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.yq = add i64 %.02032.i.i251.i, 1             ; 3 uses
  %i.yr = add i64 %i.yq, %.02131.i.i252.i
  %i.ys = and i64 %i.yr, %i.yj
  %.not.i.i253.i = icmp ugt i64 %i.yq, %i.yj
  br i1 %.not.i.i253.i, label %.critedge.i, label %bb.cn, !llvm.loop !99

bb.cq:                                            ; preds = %.lr.ph739.i
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yb, i64 52
  %i.yu = load i16, ptr %i.yt, align 4, !tbaa !100
  %i.yv = zext i16 %i.yu to i32
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xx, i64 4
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !119
  %i.yy = icmp eq i32 %i.yx, %i.yv
  br i1 %i.yy, label %bb.cr, label %.critedge.i

bb.cr:                                            ; preds = %bb.cq
  %i.yz = load i8, ptr %i.yb, align 8, !tbaa !68  ; 6 uses
  switch i8 %i.yz, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i257.i [
    i8 122, label %.critedge.i
    i8 -84, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i
    i8 -85, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i
    i8 0, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i
    i8 -83, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i
  ]

_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i257.i: ; preds = %bb.cr
  %i.za = invoke noundef zeroext i8 @_ZN4Luau7CodeGen15getCmdValueKindENS0_5IrCmdE(i8 noundef zeroext %i.yz)
          to label %_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260.i unwind label %bb.dh

_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260.i: ; preds = %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i257.i
  %.not.i258.i = icmp eq i8 %i.za, 1
  br i1 %.not.i258.i, label %.critedge.i, label %_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit_crit_edge.i

_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit_crit_edge.i: ; preds = %_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260.i
  %.pre855.i = load i8, ptr %i.yb, align 8, !tbaa !68
  br label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i

_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i: ; preds = %_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit_crit_edge.i, %bb.cr, %bb.cr, %bb.cr, %bb.cr
  %i.zb = phi i8 [ %.pre855.i, %_ZN4Luau7CodeGen14hasSideEffectsENS0_5IrCmdE.exit260._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit_crit_edge.i ], [ %i.yz, %bb.cr ], [ %i.yz, %bb.cr ], [ %i.yz, %bb.cr ], [ %i.yz, %bb.cr ]
  %i.zc = call fastcc noundef zeroext i1 @_ZN4Luau7CodeGenL14isUnsafeToSinkENS0_5IrCmdE(i8 noundef zeroext %i.zb)
  br i1 %i.zc, label %.critedge.i, label %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.thread545_crit_edge.i

_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit._ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.thread545_crit_edge.i: ; preds = %_ZNK4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE8containsERKj.exit.i
  %.pre856.i = load ptr, ptr %i.o, align 8, !tbaa !17
  %.pre857.i = load i8, ptr @_ZN5FFlag29LuauCodegenVmExitSyncMultiUseE, align 8, !tbaa !30, !range !35
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGen20RemoveDeadStoreState15pruneVmExitInfoEv:bb.a
  %.not.i = icmp eq ptr %i.bz, %i.bx
  br i1 %.not.i, label %_ZN4Luau7CodeGen14visitArgumentsIZNS0_20RemoveDeadStoreState15pruneVmExitInfoEvEUlNS0_4IrOpEE_EEvRNS0_6IrInstEOT_.exit.loopexit, label %.lr.ph.i25

_ZN4Luau7CodeGen14visitArgumentsIZNS0_20RemoveDeadStoreState15pruneVmExitInfoEvEUlNS0_4IrOpEE_EEvRNS0_6IrInstEOT_.exit.loopexit: ; preds = %.lr.ph.i25
  %.pre = load ptr, ptr %i.be, align 8, !tbaa !64
  %.pre61 = load i32, ptr %i.bf, align 8, !tbaa !67
  br label %_ZN4Luau7CodeGen14visitArgumentsIZNS0_20RemoveDeadStoreState15pruneVmExitInfoEvEUlNS0_4IrOpEE_EEvRNS0_6IrInstEOT_.exit

_ZN4Luau7CodeGen14visitArgumentsIZNS0_20RemoveDeadStoreState15pruneVmExitInfoEvEUlNS0_4IrOpEE_EEvRNS0_6IrInstEOT_.exit: ; preds = %_ZN4Luau7CodeGen14visitArgumentsIZNS0_20RemoveDeadStoreState15pruneVmExitInfoEvEUlNS0_4IrOpEE_EEvRNS0_6IrInstEOT_.exit.loopexit, %.lr.ph47, %.lr.ph47, %.lr.ph47, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i
  %i.ca = phi i32 [ %.pre61, %_ZN4Luau7CodeGen14visitArgumentsIZNS0_20RemoveDeadStoreState15pruneVmExitInfoEvEUlNS0_4IrOpEE_EEvRNS0_6IrInstEOT_.exit.loopexit ], [ %i.bi, %.lr.ph47 ], [ %i.bi, %.lr.ph47 ], [ %i.bi, %.lr.ph47 ], [ %i.bi, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i ]
  %i.cb = phi ptr [ %.pre, %_ZN4Luau7CodeGen14visitArgumentsIZNS0_20RemoveDeadStoreState15pruneVmExitInfoEvEUlNS0_4IrOpEE_EEvRNS0_6IrInstEOT_.exit.loopexit ], [ %i.bl, %.lr.ph47 ], [ %i.bl, %.lr.ph47 ], [ %i.bl, %.lr.ph47 ], [ %i.bl, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.i ] ; 2 uses
  %i.cc = add i32 %i.ca, -1
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw [72 x i8], ptr %i.cb, i64 %i.cd ; 5 uses
  %i.cf = getelementptr inbounds nuw [72 x i8], ptr %i.cb, i64 %.046 ; 7 uses
  %i.cg = load i32, ptr %i.ce, align 8, !tbaa !290
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !290
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !68
  store i8 %i.cj, ptr %i.ch, align 8, !tbaa !68
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cm = icmp samesign eq i64 %.046, %i.cd
  br i1 %i.cm, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEaSERKS3_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau7CodeGen14visitArgumentsIZNS0_20RemoveDeadStoreState15pruneVmExitInfoEvEUlNS0_4IrOpEE_EEvRNS0_6IrInstEOT_.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 6 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !78 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 6 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !78 ; 4 uses
  %.not.i28 = icmp ugt i32 %i.co, %i.cq
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !77 ; 4 uses
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !77 ; 4 uses
  br i1 %.not.i28, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ct = icmp ugt i32 %i.co, 1
  br i1 %i.ct, label %bb.j, label %bb.k, !prof !94

bb.j:                                             ; preds = %bb.i
  %i.cu = zext i32 %i.co to i64
  %.idx.i30 = shl nuw nsw i64 %i.cu, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cs, ptr align 4 %i.cr, i64 %.idx.i30, i1 false)
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.cv = icmp eq i32 %i.co, 1
  br i1 %i.cv, label %bb.l, label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cw = load i32, ptr %i.cr, align 4, !tbaa !79
  store i32 %i.cw, ptr %i.cs, align 4, !tbaa !79
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.i

_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.cx = load i32, ptr %i.cp, align 8, !tbaa !78 ; 2 uses
  %i.cy = load i32, ptr %i.cn, align 8, !tbaa !78
  %i.cz = icmp ugt i32 %i.cx, %i.cy
  br i1 %i.cz, label %.lr.ph.i29, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEaSERKS3_.exit

.lr.ph.i29:                                       ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.i, %.lr.ph.i29
  %i.da = phi i32 [ %i.db, %.lr.ph.i29 ], [ %i.cx, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.i ]
  %i.db = add i32 %i.da, -1                       ; 3 uses
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !78
  %i.dc = load i32, ptr %i.cn, align 8, !tbaa !78
  %i.dd = icmp ugt i32 %i.db, %i.dc
  br i1 %i.dd, label %.lr.ph.i29, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEaSERKS3_.exit, !llvm.loop !292

bb.m:                                             ; preds = %bb.h
  %i.de = icmp ugt i32 %i.cq, 1
  br i1 %i.de, label %bb.n, label %bb.o, !prof !94

bb.n:                                             ; preds = %bb.m
  %i.df = zext i32 %i.cq to i64
  %.idx16.i = shl nuw nsw i64 %i.df, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cs, ptr align 4 %i.cr, i64 %.idx16.i, i1 false)
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15.i

bb.o:                                             ; preds = %bb.m
  %i.dg = icmp eq i32 %i.cq, 1
  br i1 %i.dg, label %bb.p, label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15.i

bb.p:                                             ; preds = %bb.o
  %i.dh = load i32, ptr %i.cr, align 4, !tbaa !79
  store i32 %i.dh, ptr %i.cs, align 4, !tbaa !79
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15.i

_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.di = load i32, ptr %i.cn, align 8, !tbaa !78 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cf, i64 28 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !109 ; 3 uses
  %i.dl = icmp ugt i32 %i.di, %i.dk
  br i1 %i.dl, label %bb.q, label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge.i

_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge.i: ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15.i
  %.pre17.i = load ptr, ptr %i.ck, align 8, !tbaa !77
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i

bb.q:                                             ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15.i
  %i.dm = lshr i32 %i.dk, 1
  %i.dn = add i32 %i.dm, %i.dk                    ; 2 uses
  %i.do = icmp ugt i32 %i.dn, %i.di
  %i.dp = add i32 %i.di, 4
  %.09.i.i.i = select i1 %i.do, i32 %i.dn, i32 %i.dp ; 2 uses
  %i.dq = zext i32 %.09.i.i.i to i64
  %i.dr = shl nuw nsw i64 %i.dq, 2
  %i.ds = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #24 ; 6 uses
  %i.dt = load ptr, ptr %i.ck, align 8, !tbaa !77 ; 7 uses
  %i.du = load i32, ptr %i.cp, align 8, !tbaa !78 ; 2 uses
  %i.dv = zext i32 %i.du to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.dv, 2          ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx.i.i.i
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.du, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.q
  %i.dx = ptrtoaddr ptr %i.dt to i64
  %i.dy = ptrtoaddr ptr %i.ds to i64
  %i.dz = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.ea = lshr exact i64 %i.dz, 2
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.dz, 28
  %i.ec = sub i64 %i.dx, %i.dy
  %diff.check99 = icmp ugt i64 %i.ec, -32
  %or.cond = select i1 %min.iters.check101, i1 true, i1 %diff.check99
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader116, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec103 = and i64 %i.eb, 9223372036854775800  ; 3 uses
  %i.ed = shl i64 %n.vec103, 2                    ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ds, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.dt, i64 %i.ed
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph102
  %index105 = phi i64 [ 0, %vector.ph102 ], [ %index.next110, %vector.body104 ] ; 2 uses
  %i.eg = shl i64 %index105, 2                    ; 2 uses
  %next.gep106 = getelementptr i8, ptr %i.ds, i64 %i.eg ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.dt, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep107, i64 16
  %wide.load108 = load <4 x i32>, ptr %next.gep107, align 4, !tbaa !79
  %wide.load109 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !79
  %i.ei = getelementptr i8, ptr %next.gep106, i64 16
  store <4 x i32> %wide.load108, ptr %next.gep106, align 4, !tbaa !79
  store <4 x i32> %wide.load109, ptr %i.ei, align 4, !tbaa !79
  %index.next110 = add nuw i64 %index105, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next110, %n.vec103
  br i1 %i.ej, label %middle.block111, label %vector.body104, !llvm.loop !293

middle.block111:                                  ; preds = %vector.body104
  %cmp.n112 = icmp eq i64 %i.eb, %n.vec103
  br i1 %cmp.n112, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader116

.lr.ph.i.i.i.i.i.i.i.preheader116:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block111
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ee, %middle.block111 ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ef, %middle.block111 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader116, %.lr.ph.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader116 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader116 ] ; 2 uses
  %i.ek = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !79
  store i32 %i.ek, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !79
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.el, %i.dw
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !294

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block111, %bb.q
  %i.en = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.not.i.i.i34 = icmp eq ptr %i.dt, %i.en
  br i1 %.not.i.i.i34, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.dt) #23
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i: ; preds = %bb.r, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  store ptr %i.ds, ptr %i.ck, align 8, !tbaa !77
  store i32 %.09.i.i.i, ptr %i.dj, align 4, !tbaa !109
  %.pre.i35 = load i32, ptr %i.cn, align 8, !tbaa !78
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i: ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge.i
  %i.eo = phi ptr [ %.pre17.i, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge.i ], [ %i.ds, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i ] ; 2 uses
  %i.ep = phi i32 [ %i.di, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge.i ], [ %.pre.i35, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i ] ; 3 uses
  %i.eq = load ptr, ptr %i.cl, align 8, !tbaa !77 ; 3 uses
  %i.er = load i32, ptr %i.cp, align 8, !tbaa !78 ; 2 uses
  %i.es = zext i32 %i.ep to i64                   ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.es
  %.not9.i.i.i.i = icmp eq i32 %i.er, %i.ep
  br i1 %.not9.i.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.i, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i
  %i.eu = ptrtoaddr ptr %i.eq to i64
  %i.ev = ptrtoaddr ptr %i.eo to i64
  %i.ew = zext i32 %i.er to i64                   ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ew ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ew ; 3 uses
  %1 = shl nuw nsw i64 %i.es, 2
  %i.ez = add nsw i64 %1, -4
  %2 = shl nuw nsw i64 %i.ew, 2
  %3 = sub nsw i64 %i.ez, %2                      ; 2 uses
  %4 = lshr exact i64 %3, 2
  %i.fa = add nuw nsw i64 %4, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %3, 28
  %i.fb = sub i64 %i.eu, %i.ev
  %diff.check = icmp ugt i64 %i.fb, -32
  %or.cond115 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond115, label %.lr.ph.i.i.i.i31.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader.i
  %n.vec = and i64 %i.fa, 9223372036854775800     ; 3 uses
  %i.fc = shl i64 %n.vec, 2                       ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ex, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.ey, i64 %i.fc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ff = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ex, i64 %i.ff ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.ey, i64 %i.ff ; 2 uses
  %i.fg = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !79
  %wide.load96 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !79
  %i.fh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !79
  store <4 x i32> %wide.load96, ptr %i.fh, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fa, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit.i, label %.lr.ph.i.i.i.i31.preheader

.lr.ph.i.i.i.i31.preheader:                       ; preds = %.lr.ph.i.i.i.preheader.i, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.ex, %.lr.ph.i.i.i.preheader.i ], [ %i.fd, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ey, %.lr.ph.i.i.i.preheader.i ], [ %i.fe, %middle.block ]
  br label %.lr.ph.i.i.i.i31

.lr.ph.i.i.i.i31:                                 ; preds = %.lr.ph.i.i.i.i31.preheader, %.lr.ph.i.i.i.i31
  %.011.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i31 ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i31.preheader ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i.i.i31 ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i31.preheader ] ; 2 uses
  %i.fj = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !79
  store i32 %i.fj, ptr %.011.i.i.i.i, align 4, !tbaa !79
  %i.fk = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i32 = icmp eq ptr %i.fk, %i.et
  br i1 %.not.i.i.i.i32, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit.i, label %.lr.ph.i.i.i.i31, !llvm.loop !296

_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i31, %middle.block
  %.pre18.i = load i32, ptr %i.cn, align 8, !tbaa !78
  br label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.i

_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.i: ; preds = %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit.i, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i
  %i.fm = phi i32 [ %.pre18.i, %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit.i ], [ %i.ep, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i ]
  store i32 %i.fm, ptr %i.cp, align 8, !tbaa !78
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEaSERKS3_.exit

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEaSERKS3_.exit: ; preds = %.lr.ph.i29, %_ZN4Luau7CodeGen14visitArgumentsIZNS0_20RemoveDeadStoreState15pruneVmExitInfoEvEUlNS0_4IrOpEE_EEvRNS0_6IrInstEOT_.exit, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.i, %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.fn, ptr noundef nonnull align 8 dereferenceable(11) %i.fo, i64 11, i1 false)
  %i.fp = load ptr, ptr %i.be, align 8, !tbaa !64
  %i.fq = load i32, ptr %i.bf, align 8, !tbaa !67
  %i.fr = add i32 %i.fq, -1                       ; 3 uses
  store i32 %i.fr, ptr %i.bf, align 8, !tbaa !67
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [72 x i8], ptr %i.fp, i64 %i.fs ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  %.promoted.i.i.i.i.i = load i32, ptr %i.fv, align 8, !tbaa !78
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEaSERKS3_.exit
  store i32 0, ptr %i.fv, align 8, !tbaa !78
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEaSERKS3_.exit
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !77 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.fw, %i.fx
  br i1 %.not.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE8pop_backEv.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.fw) #23
  %.pre62 = load i32, ptr %i.bf, align 8, !tbaa !67
  br label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE8pop_backEv.exit

bb.t:                                             ; preds = %.lr.ph47
  %i.fy = add nuw nsw i64 %.046, 1
  br label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE8pop_backEv.exit

_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE8pop_backEv.exit: ; preds = %bb.s, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i, %bb.t
  %i.fz = phi i32 [ %i.bi, %bb.t ], [ %i.fr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i ], [ %.pre62, %bb.s ] ; 3 uses
  %.1 = phi i64 [ %i.fy, %bb.t ], [ %.046, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i ], [ %.046, %bb.s ] ; 2 uses
  %i.ga = zext i32 %i.fz to i64
  %i.gb = icmp samesign ult i64 %.1, %i.ga
  br i1 %i.gb, label %.lr.ph47, label %._crit_edge, !llvm.loop !297

._crit_edge.thread:                               ; preds = %.lr.ph50, %._crit_edge
  %i.gc = load ptr, ptr %i.ay, align 8, !tbaa !63 ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -168
  %i.ge = load ptr, ptr %i.ax, align 8, !tbaa !289
  %i.gf = getelementptr inbounds nuw [168 x i8], ptr %i.ge, i64 %.02349 ; 2 uses
  %i.gg = load i8, ptr %i.gd, align 8, !tbaa !298
  store i8 %i.gg, ptr %i.gf, align 8, !tbaa !298
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = getelementptr inbounds i8, ptr %i.gc, i64 -160
  %i.gj = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(160) %i.gh, ptr noundef nonnull align 8 dereferenceable(160) %i.gi) ; 0 uses
  %i.gk = load ptr, ptr %i.ay, align 8, !tbaa !288 ; 4 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 -168
  store ptr %i.gl, ptr %i.ay, align 8, !tbaa !288
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 -160 ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gk, i64 -152 ; 3 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !67 ; 2 uses
  %.not1.i.i.i.i = icmp eq i32 %i.go, 0
  br i1 %.not1.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.thread, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i
  %i.gp = phi i32 [ %i.gy, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i ], [ %i.go, %._crit_edge.thread ]
  %i.gq = load ptr, ptr %i.gm, align 8, !tbaa !64
  %i.gr = add i32 %i.gp, -1                       ; 3 uses
  store i32 %i.gr, ptr %i.gn, align 8, !tbaa !67
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [72 x i8], ptr %i.gq, i64 %i.gs ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 24 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i = load i32, ptr %i.gv, align 8, !tbaa !78
  %.not1.i.i.i.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i
  store i32 0, ptr %i.gv, align 8, !tbaa !78
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.gw = load ptr, ptr %i.gu, align 8, !tbaa !77 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gw, %i.gx
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.gw) #23
  %.pre.i.i.i.i = load i32, ptr %i.gn, align 8, !tbaa !67
  br label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i

_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i: ; preds = %bb.u, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i
  %i.gy = phi i32 [ %i.gr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.u ] ; 2 uses
  %.not.i.i.i.i26 = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i.i.i26, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !300

_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i: ; preds = %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i.i.i.i, %._crit_edge.thread
  %i.gz = load ptr, ptr %i.gm, align 8, !tbaa !64 ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gk, i64 -144
  %.not.i.i.i27 = icmp eq ptr %i.gz, %i.ha
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE8pop_backEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.gz) #23
  br label %_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE8pop_backEv.exit

bb.w:                                             ; preds = %._crit_edge
  %i.hb = add i64 %.02349, 1
  br label %_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE8pop_backEv.exit

_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE8pop_backEv.exit: ; preds = %bb.v, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i, %bb.w
  %.124 = phi i64 [ %i.hb, %bb.w ], [ %.02349, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit.i.i.i ], [ %.02349, %bb.v ] ; 2 uses
  %i.hc = load ptr, ptr %i.ay, align 8, !tbaa !288
  %i.hd = load ptr, ptr %i.ax, align 8, !tbaa !289 ; 2 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = sdiv exact i64 %i.hg, 168
  %i.hi = icmp ult i64 %.124, %i.hh
  br i1 %i.hi, label %.lr.ph50, label %._crit_edge51, !llvm.loop !301
}

declare void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 8 dereferenceable(59)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen20RemoveDeadStoreStateD2Ev(ptr noundef nonnull align 8 dead_on_return(4176) dereferenceable(4176) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEED2Ev.exit, label %bb.c

end_hunk_1
begin_hunk_2_@_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj:bb.a
  store i32 0, ptr %i.au, align 4
  %i.av = load ptr, ptr %0, align 8, !tbaa !77
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 0, ptr %i.ax, align 4
  %i.ay = load ptr, ptr %0, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.ba, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph13, !llvm.loop !384

.loopexit:                                        ; preds = %.lr.ph13.prol.loopexit, %.lr.ph13, %bb.a, %bb.e
  store i32 %1, ptr %i.a, align 8, !tbaa !78
  ret void
}

declare void @_ZN4Luau7CodeGen9removeUseERNS0_10IrFunctionENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928), i32) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !78   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !78   ; 4 uses
  %.not = icmp ugt i32 %i.c, %i.e
  %i.f = load ptr, ptr %1, align 8, !tbaa !77     ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !77     ; 4 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i32 %i.c, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !94

bb.d:                                             ; preds = %bb.c
  %i.i = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %i.f, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.c, 1
  br i1 %i.j, label %bb.f, label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.f, align 4, !tbaa !79
  store i32 %i.k, ptr %i.g, align 4, !tbaa !79
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit

_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.l = load i32, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %i.m = load i32, ptr %i.b, align 8, !tbaa !78
  %i.n = icmp ugt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit, %.lr.ph
  %i.o = phi i32 [ %i.p, %.lr.ph ], [ %i.l, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit ]
  %i.p = add i32 %i.o, -1                         ; 3 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !78
  %i.q = load i32, ptr %i.b, align 8, !tbaa !78
  %i.r = icmp ugt i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !292

bb.g:                                             ; preds = %bb.b
  %i.s = icmp ugt i32 %i.e, 1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !94

bb.h:                                             ; preds = %bb.g
  %i.t = zext i32 %i.e to i64
  %.idx16 = shl nuw nsw i64 %i.t, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %i.f, i64 %.idx16, i1 false)
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %i.e, 1
  br i1 %i.u, label %bb.j, label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr %i.f, align 4, !tbaa !79
  store i32 %i.v, ptr %i.g, align 4, !tbaa !79
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15

_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15: ; preds = %bb.h, %bb.i, %bb.j
  %i.w = load i32, ptr %i.b, align 8, !tbaa !78   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !109  ; 3 uses
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %bb.k, label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge

_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge: ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !77
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit

bb.k:                                             ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15
  %i.aa = lshr i32 %i.y, 1
  %i.ab = add i32 %i.aa, %i.y                     ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, %i.w
  %i.ad = add i32 %i.w, 4
  %.09.i.i = select i1 %i.ac, i32 %i.ab, i32 %i.ad ; 2 uses
  %i.ae = zext i32 %.09.i.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #24 ; 6 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !77    ; 7 uses
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !78  ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %.idx.i.i = shl nuw nsw i64 %i.aj, 2            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %i.al = ptrtoaddr ptr %i.ah to i64
  %i.am = ptrtoaddr ptr %i.ag to i64
  %i.an = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ao = lshr exact i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 44
  %i.aq = sub i64 %i.al, %i.am
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.ar = shl i64 %n.vec, 2                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ag, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.ah, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.au ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep27, align 4, !tbaa !79
  %wide.load28 = load <4 x i32>, ptr %i.av, align 4, !tbaa !79
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !79
  store <4 x i32> %wide.load28, ptr %i.aw, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !385

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.preheader49:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader49 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader49 ] ; 2 uses
  %i.ay = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !79
  store i32 %i.ay, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !79
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, %i.ak
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !386

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.ah, %i.bb
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.ah) #23
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i: ; preds = %bb.l, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !77
  store i32 %.09.i.i, ptr %i.x, align 4, !tbaa !109
  %.pre = load i32, ptr %i.b, align 8, !tbaa !78
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit: ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i
  %i.bc = phi ptr [ %.pre17, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge ], [ %i.ag, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i ] ; 2 uses
  %i.bd = phi i32 [ %i.w, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge ], [ %.pre, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i ] ; 3 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !77    ; 3 uses
  %i.bf = load i32, ptr %i.d, align 8, !tbaa !78  ; 2 uses
  %i.bg = zext i32 %i.bd to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %.not9.i.i.i = icmp eq i32 %i.bf, %i.bd
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit
  %i.bi = ptrtoaddr ptr %i.be to i64
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = zext i32 %i.bf to i64                   ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bk ; 3 uses
  %2 = shl nuw nsw i64 %i.bg, 2
  %i.bn = add nsw i64 %2, -4
  %3 = shl nuw nsw i64 %i.bk, 2
  %4 = sub nsw i64 %i.bn, %3                      ; 2 uses
  %5 = lshr exact i64 %4, 2
  %i.bo = add nuw nsw i64 %5, 1                   ; 2 uses
  %min.iters.check33 = icmp ult i64 %4, 44
  %i.bp = sub i64 %i.bi, %i.bj
  %diff.check31 = icmp ugt i64 %i.bp, -32
  %or.cond47 = select i1 %min.iters.check33, i1 true, i1 %diff.check31
  br i1 %or.cond47, label %.lr.ph.i.i.i.preheader48, label %vector.ph34

vector.ph34:                                      ; preds = %.lr.ph.i.i.i.preheader
  %n.vec35 = and i64 %i.bo, 9223372036854775800   ; 3 uses
  %i.bq = shl i64 %n.vec35, 2                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bl, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.bm, i64 %i.bq
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next42, %vector.body36 ] ; 2 uses
  %i.bt = shl i64 %index37, 2                     ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.bl, i64 %i.bt ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.bm, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load40 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !79
  %wide.load41 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !79
  %i.bv = getelementptr i8, ptr %next.gep38, i64 16
  store <4 x i32> %wide.load40, ptr %next.gep38, align 4, !tbaa !79
  store <4 x i32> %wide.load41, ptr %i.bv, align 4, !tbaa !79
  %index.next42 = add nuw i64 %index37, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.bw, label %middle.block43, label %vector.body36, !llvm.loop !387

middle.block43:                                   ; preds = %vector.body36
  %cmp.n44 = icmp eq i64 %i.bo, %n.vec35
  br i1 %cmp.n44, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i.preheader48

.lr.ph.i.i.i.preheader48:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block43
  %.011.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.preheader ], [ %i.br, %middle.block43 ]
  %.0810.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.preheader ], [ %i.bs, %middle.block43 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader48, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader48 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader48 ] ; 2 uses
  %i.bx = load i32, ptr %.0810.i.i.i, align 4, !tbaa !79
  store i32 %i.bx, ptr %.011.i.i.i, align 4, !tbaa !79
  %i.by = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.by, %i.bh
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !388

_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block43
  %.pre18 = load i32, ptr %i.b, align 8, !tbaa !78
  br label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit

_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit
  %i.ca = phi i32 [ %.pre18, %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit ], [ %i.bd, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit ]
  store i32 %i.ca, ptr %i.d, align 8, !tbaa !78
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit, %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(160) ptr @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !67   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !67   ; 4 uses
  %.not = icmp ugt i32 %i.c, %i.e
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not23 = icmp eq i32 %i.c, 0
  br i1 %.not23, label %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %1, align 8, !tbaa !64
  %i.h = load ptr, ptr %0, align 8, !tbaa !64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.g, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.i = load i32, ptr %.0910.i.i.i.i.i, align 8, !tbaa !290
  store i32 %i.i, ptr %.0811.i.i.i.i.i, align 8, !tbaa !290
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !68
  store i8 %i.l, ptr %i.j, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.o = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.n) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.p, ptr noundef nonnull align 8 dereferenceable(11) %i.q, i64 11, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72
  %i.t = add nsw i64 %.012.i.i.i.i.i, -1
  %i.u = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.u, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit.loopexit, !llvm.loop !389

_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load i32, ptr %i.d, align 8, !tbaa !67
  %.pre27 = load i32, ptr %i.b, align 8, !tbaa !67
  br label %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit

_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit.loopexit, %bb.c
  %i.v = phi i32 [ %.pre27, %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit.loopexit ], [ 0, %bb.c ]
  %i.w = phi i32 [ %.pre, %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit.loopexit ], [ %i.e, %bb.c ] ; 2 uses
  %i.x = icmp ugt i32 %i.w, %i.v
  br i1 %i.x, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit
  %i.y = phi i32 [ %i.ah, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit ], [ %i.w, %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit ]
  %i.z = load ptr, ptr %0, align 8, !tbaa !64
  %i.aa = add i32 %i.y, -1                        ; 3 uses
  store i32 %i.aa, ptr %i.d, align 8, !tbaa !67
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %.promoted.i.i.i.i = load i32, ptr %i.ae, align 8, !tbaa !78
  %.not1.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph
  store i32 0, ptr %i.ae, align 8, !tbaa !78
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !77 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.not.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i, label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.af) #23
  %.pre28 = load i32, ptr %i.d, align 8, !tbaa !67
  br label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit

_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit:     ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i, %bb.d
  %i.ah = phi i32 [ %i.aa, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i ], [ %.pre28, %bb.d ] ; 2 uses
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !67
  %i.aj = icmp ugt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.loopexit, !llvm.loop !390

bb.e:                                             ; preds = %bb.b
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit21, label %.lr.ph.preheader.i.i.i.i.i16

.lr.ph.preheader.i.i.i.i.i16:                     ; preds = %bb.e
  %i.ak = zext i32 %i.e to i64
  %i.al = load ptr, ptr %1, align 8, !tbaa !64
  %i.am = load ptr, ptr %0, align 8, !tbaa !64
  br label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %.lr.ph.i.i.i.i.i17, %.lr.ph.preheader.i.i.i.i.i16
  %.012.i.i.i.i.i18 = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i17 ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i16 ] ; 2 uses
  %.0811.i.i.i.i.i19 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i17 ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i16 ] ; 5 uses
  %.0910.i.i.i.i.i20 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i17 ], [ %i.al, %.lr.ph.preheader.i.i.i.i.i16 ] ; 5 uses
  %i.an = load i32, ptr %.0910.i.i.i.i.i20, align 8, !tbaa !290
  store i32 %i.an, ptr %.0811.i.i.i.i.i19, align 8, !tbaa !290
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i19, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i20, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !68
  store i8 %i.aq, ptr %i.ao, align 8, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i19, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i20, i64 16
  %i.at = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %i.as) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i19, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i20, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.au, ptr noundef nonnull align 8 dereferenceable(11) %i.av, i64 11, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i20, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i19, i64 72
  %i.ay = add nsw i64 %.012.i.i.i.i.i18, -1
  %i.az = icmp samesign ugt i64 %.012.i.i.i.i.i18, 1
  br i1 %i.az, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit21.loopexit, !llvm.loop !389

_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit21.loopexit: ; preds = %.lr.ph.i.i.i.i.i17
  %.pre29 = load i32, ptr %i.b, align 8, !tbaa !67
  br label %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit21

_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit21: ; preds = %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit21.loopexit, %bb.e
  %i.ba = phi i32 [ %.pre29, %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit21.loopexit ], [ %i.c, %bb.e ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !308
  %i.bd = icmp ugt i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit

bb.f:                                             ; preds = %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit21
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE4growEj(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.ba)
  %.pre30 = load i32, ptr %i.b, align 8, !tbaa !67
  br label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit: ; preds = %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit21, %bb.f
  %i.be = phi i32 [ %i.ba, %_ZSt4copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit21 ], [ %.pre30, %bb.f ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4Luau7CodeGenL14isUnsafeToSinkENS0_5IrCmdE:bb.a
    i8 83, label %bb.c
    i8 103, label %bb.c
    i8 104, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN4Luau7CodeGen14visitArgumentsIRZNS0_L20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEE3$_1EEvRNS0_6IrInstEOT_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(59) %0, ptr nofree captures(none) %.0.val) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !68
  switch i8 %i.a, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit [
    i8 -84, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread
    i8 -85, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread
    i8 0, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread
    i8 -83, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread
  ]

_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit:       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit"
  %.010 = phi ptr [ %i.c, %.lr.ph ], [ %i.bt, %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit" ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.010, align 4, !tbaa !79 ; 10 uses
  %i.j = and i32 %.sroa.0.0.copyload, 15
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %bb.c, label %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit"

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %.0.val, align 8, !tbaa !391 ; 10 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !391  ; 8 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 7 uses
  %i.q = ashr i64 %i.p, 5                         ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.s = and i64 %i.p, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.l, i64 %i.s ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.058.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.h ] ; 2 uses
  %.sroa.038.057.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.aa, %bb.h ] ; 9 uses
  %.val1.i.i.i.i.i = load i32, ptr %.sroa.038.057.i.i.i.i, align 4
  %i.t = icmp eq i32 %.val1.i.i.i.i.i, %.sroa.0.0.copyload
  br i1 %i.t, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 8
  %.val1.i22.i.i.i.i = load i32, ptr %i.u, align 4
  %i.v = icmp eq i32 %.val1.i22.i.i.i.i, %.sroa.0.0.copyload
  br i1 %i.v, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.loopexit.split.loop.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 16
  %.val1.i23.i.i.i.i = load i32, ptr %i.w, align 4
  %i.x = icmp eq i32 %.val1.i23.i.i.i.i, %.sroa.0.0.copyload
  br i1 %i.x, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.loopexit.split.loop.exit19", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 24
  %.val1.i24.i.i.i.i = load i32, ptr %i.y, align 4
  %i.z = icmp eq i32 %.val1.i24.i.i.i.i, %.sroa.0.0.copyload
  br i1 %i.z, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.loopexit.split.loop.exit21", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 32
  %i.ab = add nsw i64 %.058.i.i.i.i, -1
  %i.ac = icmp sgt i64 %.058.i.i.i.i, 1
  br i1 %i.ac, label %bb.d, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !118

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.h
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre66.i.i.i.i = sub i64 %i.n, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.c
  %.pre-phi67.i.i.i.i = phi i64 [ %.pre66.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.p, %bb.c ]
  %.sroa.038.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.l, %bb.c ] ; 5 uses
  %i.ad = ashr exact i64 %.pre-phi67.i.i.i.i, 3
  switch i64 %i.ad, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.thread.i" [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge64.i.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %.val1.i25.i.i.i.i = load i32, ptr %.sroa.038.0.lcssa.i.i.i.i, align 4
  %i.ae = icmp eq i32 %.val1.i25.i.i.i.i, %.sroa.0.0.copyload
  br i1 %i.ae, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.sroa.038.1.i.i.i.i = phi ptr [ %i.af, %bb.j ], [ %.sroa.038.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.val1.i26.i.i.i.i = load i32, ptr %.sroa.038.1.i.i.i.i, align 4
  %i.ag = icmp eq i32 %.val1.i26.i.i.i.i, %.sroa.0.0.copyload
  br i1 %i.ag, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i", label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge64.i.i.i.i

._crit_edge._crit_edge64.i.i.i.i:                 ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.sroa.038.2.i.i.i.i = phi ptr [ %i.ah, %bb.k ], [ %.sroa.038.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.val1.i27.i.i.i.i = load i32, ptr %.sroa.038.2.i.i.i.i, align 4
  %i.ai = icmp eq i32 %.val1.i27.i.i.i.i, %.sroa.0.0.copyload
  %spec.select.i.i.i.i = select i1 %i.ai, ptr %.sroa.038.2.i.i.i.i, ptr %i.m
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.loopexit.split.loop.exit": ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 8
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.loopexit.split.loop.exit19": ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.loopexit.split.loop.exit21": ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 24
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i": ; preds = %bb.d, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.loopexit.split.loop.exit19", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.loopexit.split.loop.exit21", %._crit_edge._crit_edge64.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.038.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge64.i.i.i.i ], [ %.sroa.038.0.lcssa.i.i.i.i, %bb.i ], [ %i.al, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.loopexit.split.loop.exit21" ], [ %i.aj, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.loopexit.split.loop.exit" ], [ %i.ak, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i.loopexit.split.loop.exit19" ], [ %.sroa.038.057.i.i.i.i, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.m
  br i1 %.not.i, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.thread.i", label %bb.l

bb.l:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i"
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !119
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !119
  br label %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.thread.i": ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.i", %._crit_edge.i.i.i.i
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !128
  %.not.i.i = icmp eq ptr %i.m, %i.ap
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.thread.i"
  store i32 %.sroa.0.0.copyload, ptr %i.m, align 4, !tbaa !79
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !119
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.as, ptr %i.h, align 8, !tbaa !105
  br label %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit"

bb.n:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4Luau7CodeGen4IrOpEjESt6vectorIS6_SaIS6_EEEEZZNS4_L20generateVmExitBlocksERNS4_9IrBuilderERKS8_IjSaIjEEENK3$_1clES5_EUlOT_E_ESJ_SJ_SJ_T0_.exit.thread.i"
  %i.at = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.at, label %bb.o, label %_ZNKSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.au = ashr exact i64 %i.p, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #22 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.p ; 2 uses
  store i32 %.sroa.0.0.copyload, ptr %i.bb, align 4, !tbaa !79
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 1, ptr %i.bc, align 4, !tbaa !119
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bd = ptrtoaddr ptr %i.ba to i64
  %1 = add i64 %i.n, -8
  %2 = sub i64 %1, %i.o                           ; 2 uses
  %i.be = lshr i64 %2, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 24
  %i.bg = sub i64 %i.o, %i.bd
  %diff.check = icmp ugt i64 %i.bg, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ba, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.l, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ba, i64 %i.bk ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.l, i64 %i.bk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.bl = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep31, align 4, !alias.scope !395, !noalias !392
  %wide.load32 = load <2 x i64>, ptr %i.bl, align 4, !alias.scope !395, !noalias !392
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !392, !noalias !395
  store <2 x i64> %wide.load32, ptr %i.bm, align 4, !alias.scope !392, !noalias !395
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.i.preheader34:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader34 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader34 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !395, !noalias !392
  store i64 %i.bo, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !392, !noalias !395
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !398

_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ba, %_ZNKSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bi, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i34.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i34.i.i.i, label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.p) #25
  br label %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i
  store ptr %i.ba, ptr %.0.val, align 8, !tbaa !108
  store ptr %i.br, ptr %i.h, align 8, !tbaa !105
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.bs, ptr %i.i, align 8, !tbaa !128
  br label %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit"

"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit": ; preds = %bb.b, %bb.l, %bb.m, %_ZNSt6vectorISt4pairIN4Luau7CodeGen4IrOpEjESaIS4_EE17_M_realloc_insertIJRS3_jEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.010, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.g
  br i1 %.not, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread, label %bb.b

_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread: ; preds = %"_ZZN4Luau7CodeGenL20generateVmExitBlocksERNS0_9IrBuilderERKSt6vectorIjSaIjEEENK3$_1clENS0_4IrOpE.exit", %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit, %bb.a, %bb.a, %bb.a, %bb.a
  ret void
}

declare i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen9IrBuilder10beginBlockENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056), i32) local_unnamed_addr #3

declare i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdERKNS_11SmallVectorINS0_4IrOpELj6EEE(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext, i32) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(30) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22   ; 3 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i64 %spec.select, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24 ; 4 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !22   ; 3 uses
  %min.iters.check = icmp ult i64 %spec.select, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %spec.select, -4               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 0, i32 3> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> %interleaved.vec, ptr %i.j, align 4, !tbaa !22
  store <4 x i32> %interleaved.vec, ptr %i.l, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select, %n.vec
  br i1 %cmp.n, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b, %middle.block
  %.07.i.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  store i32 %i.i, ptr %i.n, align 4, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !22
  %i.p = add nuw i64 %.07.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.p, %spec.select
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !400

_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit: ; preds = %.lr.ph.i.i, %middle.block
  %.pre = load i64, ptr %i.a, align 8, !tbaa !81
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit

_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit, %bb.a
  %i.q = phi i32 [ %i.f, %bb.a ], [ %i.i, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit ]
  %i.r = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit ] ; 6 uses
  %.not = icmp eq i64 %i.r, 0
  %.pre29 = load ptr, ptr %0, align 8, !tbaa !88  ; 3 uses
  br i1 %.not, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit
  %i.s = add i64 %spec.select, -1                 ; 3 uses
  br label %bb.d

._crit_edge27:                                    ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !88
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !89
  %.not.i11 = icmp eq ptr %.pre29, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge27.thread, %._crit_edge27
  tail call void @_ZdlPv(ptr noundef nonnull %.pre29) #23
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEED2Ev.exit

_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEED2Ev.exit: ; preds = %._crit_edge27, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph26, %bb.g
  %.025 = phi i64 [ 0, %.lr.ph26 ], [ %i.ap, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.pre29, i64 %.025 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !22   ; 5 uses
  %i.v = icmp eq i32 %i.u, %i.q
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = zext i32 %i.u to i64
  %i.x = and i64 %i.s, %i.w                       ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !22   ; 2 uses
  %i.aa = icmp eq i32 %i.z, %i.f
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.02334.i.lcssa21 = phi i64 [ %i.x, %bb.e ], [ %i.ag, %bb.f ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.02334.i.lcssa21 ; 2 uses
  store i32 %i.u, ptr %i.ab, align 4, !tbaa !90
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE13insert_unsafeERS4_.exit

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.ac = phi i32 [ %i.ai, %bb.f ], [ %i.z, %bb.e ]
  %.02334.i23 = phi i64 [ %i.ag, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %.02235.i22 = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.e ]
  %i.ad = icmp eq i32 %i.ac, %i.u
  br i1 %i.ad, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE13insert_unsafeERS4_.exit.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
end_hunk_3
