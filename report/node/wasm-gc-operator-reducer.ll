inline.NumInlined: 905
inline.NumDeleted: 380
begin_hunk_0_@_ZN2v88internal8compiler21WasmGCOperatorReducer8ReduceIfEPNS1_4NodeEb:bb.a
  br label %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE8GetStateEPNS1_4NodeE.exit

_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE8GetStateEPNS1_4NodeE.exit: ; preds = %bb.g, %bb.h
  %.sroa.6.0 = phi i32 [ %.sroa.6.0.copyload63, %bb.g ], [ 2, %bb.h ] ; 2 uses
  %.sroa.764.0 = phi i32 [ %.sroa.764.0.copyload68, %bb.g ], [ undef, %bb.h ] ; 2 uses
  %.sroa.769.0 = phi ptr [ %.sroa.769.0.copyload73, %bb.g ], [ null, %bb.h ] ; 2 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload77, %bb.g ], [ %i.bi, %bb.h ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = icmp sgt i32 %i.bk, 0
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler21WasmGCOperatorReducer25UpdateNodeAndAliasesTypesEPNS1_4NodeENS1_16ControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EEES4_NS0_4wasm12TypeInModuleEb:bb.a
  %.01661 = phi ptr [ %.0.i, %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE8GetStateEPNS1_4NodeE.exit20 ], [ %.0.i.peel, %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE8GetStateEPNS1_4NodeE.exit20.peel ] ; 5 uses
  %.sroa.737.057 = phi ptr [ %.sroa.625.0, %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE8GetStateEPNS1_4NodeE.exit20 ], [ %.sroa.625.0.peel, %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE8GetStateEPNS1_4NodeE.exit20.peel ]
  %.sroa.8.056 = phi ptr [ %.sroa.7.0, %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE8GetStateEPNS1_4NodeE.exit20 ], [ %.sroa.7.0.peel, %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE8GetStateEPNS1_4NodeE.exit20.peel ]
  %i.bl = phi <2 x i32> [ %i.cr, %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE8GetStateEPNS1_4NodeE.exit20 ], [ %i.bk, %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE8GetStateEPNS1_4NodeE.exit20.peel ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.030, i64 24, i1 false)
  store <2 x i32> %i.bl, ptr %.sroa.531.0..sroa_idx32, align 8
  store ptr %.sroa.737.057, ptr %.sroa.737.0..sroa_idx38, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler21WasmGCOperatorReducer25UpdateNodeAndAliasesTypesEPNS1_4NodeENS1_16ControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EEES4_NS0_4wasm12TypeInModuleEb:bb.a
bb.m:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18GetAliasEPNS1_4NodeE.exit
  %i.cq = load ptr, ptr %i.ac, align 8, !noalias !191
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i8 0, i64 24, i1 false), !alias.scope !192
  %11 = insertelement <2 x i32> %i.bl, i32 2, i64 0
  br label %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE8GetStateEPNS1_4NodeE.exit20

_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE8GetStateEPNS1_4NodeE.exit20: ; preds = %bb.l, %bb.m
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload29, %bb.l ], [ %i.cq, %bb.m ]
  %.sroa.625.0 = phi ptr [ %.sroa.625.0.copyload27, %bb.l ], [ null, %bb.m ]
  %i.cr = phi <2 x i32> [ %i.cp, %bb.l ], [ %11, %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.030, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.not = icmp eq ptr %.0.i, null
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler16ControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE18AddStateInNewBlockEPNS0_4ZoneEPNS1_4NodeES3_:bb.a
  br i1 %.not3.i, label %bb.b, label %_ZNK2v88internal8compiler16ControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE11LookupStateEPNS1_4NodeE.exit

_ZNK2v88internal8compiler16ControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE11LookupStateEPNS1_4NodeE.exit: ; preds = %bb.b, %bb.c, %bb.a, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i
  %.sroa.07.0 = phi ptr [ null, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i ], [ null, %bb.a ], [ null, %bb.b ], [ %.sroa.07.0.copyload, %bb.c ]
  %.sroa.6.0 = phi i32 [ 2, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i ], [ 2, %bb.a ], [ 2, %bb.b ], [ %.sroa.6.0.copyload, %bb.c ]
  %.sroa.89.0 = phi ptr [ null, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i ], [ null, %bb.a ], [ null, %bb.b ], [ %.sroa.89.0.copyload, %bb.c ]
  %i.h = load ptr, ptr %3, align 8
  %i.i = icmp eq ptr %.sroa.07.0, %i.h
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler16ControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE8AddStateEPNS0_4ZoneEPNS1_4NodeES3_S5_:bb.a
  br i1 %.not3.i, label %bb.b, label %_ZNK2v88internal8compiler16ControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE11LookupStateEPNS1_4NodeE.exit

_ZNK2v88internal8compiler16ControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE11LookupStateEPNS1_4NodeE.exit: ; preds = %bb.b, %bb.c, %bb.a, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i
  %.sroa.013.0 = phi ptr [ null, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i ], [ null, %bb.a ], [ null, %bb.b ], [ %.sroa.013.0.copyload, %bb.c ]
  %.sroa.6.0 = phi i32 [ 2, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i ], [ 2, %bb.a ], [ 2, %bb.b ], [ %.sroa.6.0.copyload, %bb.c ]
  %.sroa.815.0 = phi ptr [ null, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i ], [ null, %bb.a ], [ null, %bb.b ], [ %.sroa.815.0.copyload, %bb.c ]
  %i.h = load ptr, ptr %3, align 8
  %i.i = icmp eq ptr %.sroa.013.0, %i.h
end_hunk_4
