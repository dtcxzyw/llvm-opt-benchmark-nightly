inline.NumInlined: 209
inline.NumDeleted: 154
begin_hunk_0_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, %.lr.ph.i
  %.sroa.05.020.i = phi ptr [ %.sroa.05.017.i, %.lr.ph.i ], [ %.sroa.05.0.i, %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i ] ; 2 uses
  %.019.i = phi i1 [ false, %.lr.ph.i ], [ %i.hl, %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i ]
  %i.m = getelementptr i8, ptr %.sroa.05.020.i, i64 72
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !27 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 152 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  store ptr %i.df, ptr %3, align 8, !tbaa !115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !24
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.dj) #10
  %i.dk = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.dk, align 8, !tbaa !119
  %i.dl = call noundef ptr @_ZN6hermes9IRBuilder20createAllocStackInstENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr %.sroa.0.0.copyload.i.i.i.i) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr %i.g, ptr %4, align 8, !tbaa !71
end_hunk_1
begin_hunk_2_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %i.gr = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 32
  %i.gs = add nsw i64 %.050.i.i.i.i.i.i.i.i, -1
  %i.gt = icmp sgt i64 %.050.i.i.i.i.i.i.i.i, 1
  br i1 %i.gt, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !120

._crit_edge.loopexit.i.i.i.i.i.i.i.i:             ; preds = %bb.x
  %i.gu = and i32 %.val3.i.pre.i.i, 3
end_hunk_2
begin_hunk_3_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %.1.i.i.i.i.i.i = phi ptr [ %.032.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.hb, %bb.ad ] ; 2 uses
  %.017.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01733.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.017.i.i.i.i.i.i, %i.gl
  br i1 %.not.i.i.i.i.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !122

.lr.ph10.i.i:                                     ; preds = %._crit_edge.i.i, %bb.ag
  %.28.i.i = phi i1 [ %.3.i.i, %bb.ag ], [ %.1.i.i, %._crit_edge.i.i ]
end_hunk_3
begin_hunk_4_@llvm.assume
!116 = !{!"_ZTSN6hermes9IRBuilderE", !42, i64 0, !117, i64 8, !100, i64 16, !59, i64 24, !44, i64 32}
!117 = !{!"_ZTSN4llvh14ilist_iteratorINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEELb0ELb0EEE", !118, i64 0}
!118 = !{!"p1 _ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !15, i64 0}
!119 = !{!56, !56, i64 0}
!120 = distinct !{!120, !121}
!121 = !{!"llvm.loop.mustprogress"}
!122 = distinct !{!122, !121}
end_hunk_4
