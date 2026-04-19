inline.NumInlined: 8096
inline.NumDeleted: 3436
begin_hunk_0_@_ZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxE:bb.a

bb.b:                                             ; preds = %.lr.ph, %bb.an
  %.054 = phi ptr [ %2, %.lr.ph ], [ %.1, %bb.an ] ; 18 uses
  %.sroa.5.053 = phi i8 [ undef, %.lr.ph ], [ %.sroa.5.1, %bb.an ] ; 9 uses
  %.sroa.025.052 = phi ptr [ %i.b, %.lr.ph ], [ %i.eo, %bb.an ] ; 6 uses
  %i.k = load i32, ptr %.sroa.025.052, align 8, !tbaa !534
  switch i32 %i.k, label %bb.an [
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxE:bb.a
  unreachable

bb.h:                                             ; preds = %bb.b
  %8 = and i8 %.sroa.5.053, -16                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.054, i64 8
  store i32 0, ptr %.054, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.054, i64 4
  store i8 %8, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !31
  br label %bb.an

bb.i:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxE:bb.a
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit", %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.5.1 = phi i8 [ %.sroa.5.053, %bb.b ], [ %.sroa.5.053, %bb.c ], [ %.sroa.5.053, %bb.d ], [ %.sroa.5.053, %bb.e ], [ %8, %bb.h ], [ %.sroa.5.053, %bb.i ], [ %.sroa.5.053, %bb.j ], [ %.sroa.5.053, %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit" ], [ %.sroa.5.053, %bb.am ]
  %.1 = phi ptr [ %.054, %bb.b ], [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ %i.r, %bb.h ], [ %i.v, %bb.i ], [ %i.x, %bb.j ], [ %i.ek, %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit" ], [ %i.en, %bb.am ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.025.052, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.eo, %i.d
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE19transfer_n_slots_fnEPvSQ_SQ_m:bb.a
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.0913.unr.a = phi ptr [ %1, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %.01012.unr.a = phi ptr [ %2, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.g = icmp eq i64 %3, 1
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi i64 [ %i.p, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ]
  %.0913 = phi ptr [ %i.r, %.lr.ph ], [ %.0913.unr.a, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01012 = phi ptr [ %i.q, %.lr.ph ], [ %.01012.unr.a, %.lr.ph.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0913, ptr noundef nonnull align 8 dereferenceable(24) %.01012, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !552
  store i64 %i.j, ptr %i.h, align 8, !tbaa !552
  store ptr null, ptr %i.i, align 8, !tbaa !552
  %i.k = getelementptr inbounds nuw i8, ptr %.01012, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %.0913, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %.01012, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !552
  store i64 %i.o, ptr %i.m, align 8, !tbaa !552
  store ptr null, ptr %i.n, align 8, !tbaa !552
  %i.p = add i64 %.014, -2                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01012, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %.0913, i64 48
  %.not.1 = icmp eq i64 %i.p, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !771

end_hunk_3
