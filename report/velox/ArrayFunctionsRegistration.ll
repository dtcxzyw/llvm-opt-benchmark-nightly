inline.NumInlined: 171860
inline.NumDeleted: 43815
begin_hunk_0_@_ZN8facebook5velox9functions19ArrayRemoveFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_9ArrayViewILb1ESA_EERKNS3_11GenericViewE:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.i = sext i32 %i.b to i64
  br label %bb.b

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions19ArrayRemoveFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_9ArrayViewILb1ESA_EERKNS3_11GenericViewE:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 6 uses
  %.sroa.0102.0151 = phi ptr [ null, %.lr.ph ], [ %.sroa.0102.2, %bb.ac ] ; 19 uses
  %.sroa.11107.0150 = phi ptr [ null, %.lr.ph ], [ %.sroa.11107.2, %bb.ac ] ; 21 uses
  %.sroa.20.0149 = phi ptr [ null, %.lr.ph ], [ %.sroa.20.2, %bb.ac ] ; 7 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !23788, !nonnull !797, !align !916 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox9functions19ArrayRemoveFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_9ArrayViewILb1ESA_EERKNS3_11GenericViewE:bb.a
bb.y:                                             ; preds = %bb.x
  store ptr %i.cu, ptr %.sroa.11107.0150, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11107.0150, i64 8
  store ptr %4, ptr %.sroa.655.0..sroa_idx, align 8
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11107.0150, i64 16
  store ptr %5, ptr %.sroa.758.0..sroa_idx, align 8
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11107.0150, i64 24
  store i32 %i.cc, ptr %.sroa.861.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11107.0150, i64 32
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox9functions19ArrayRemoveFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_9ArrayViewILb1ESA_EERKNS3_11GenericViewE:bb.a
          to label %.noexc44 unwind label %.loopexit117 ; 5 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i31
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cx ; 5 uses
  store ptr %i.cu, ptr %i.dg, align 8
  %.sroa.655.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %4, ptr %.sroa.655.0..sroa_idx56, align 8
  %.sroa.655.0..sroa_idx56.a = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store ptr %5, ptr %.sroa.655.0..sroa_idx56.a, align 8
  %.sroa.861.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i32 %i.cc, ptr %.sroa.861.0..sroa_idx62, align 8
  %.sroa.10.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox9functions18ArrayUnionFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS3_9ArrayViewILb1ESB_EEEEvRT_RKT0_SJ_ENKUlSG_E_clIKSE_EEDaSG_
define linkonce_odr void @_ZZN8facebook5velox9functions18ArrayUnionFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS3_9ArrayViewILb1ESB_EEEEvRT_RKT0_SJ_ENKUlSG_E_clIKSE_EEDaSG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.12745", align 8  ; 4 uses
  %3 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 8 uses
  %4 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23934, !noalias !35440 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
end_hunk_4
begin_hunk_5_@_ZZN8facebook5velox9functions18ArrayUnionFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS3_9ArrayViewILb1ESB_EEEEvRT_RKT0_SJ_ENKUlSG_E_clIKSE_EEDaSG_:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = sext i32 %i.b to i64
  br label %bb.b
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox9functions18ArrayUnionFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS3_9ArrayViewILb1ESB_EEEEvRT_RKT0_SJ_ENKUlSG_E_clIKSE_EEDaSG_:bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !35443, !nonnull !797, !align !916
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.p, ptr %3, align 8, !tbaa !1233, !alias.scope !35445
  store ptr %5, ptr %7, align 8, !tbaa !11853, !alias.scope !35445
  store ptr %6, ptr %8, align 8, !tbaa !11855, !alias.scope !35445
  %i.av = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.av, ptr %i.j, align 8, !tbaa !11857, !alias.scope !35445
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !35450
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1256, !noalias !35455 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox9functions18ArrayUnionFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS3_9ArrayViewILb1ESB_EEEEvRT_RKT0_SJ_ENKUlSG_E_clIKSE_EEDaSG_:bb.a
  %i.bo = or i64 %i.bn, 128
  %i.bp = add i64 %i.bm, %i.bl
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JS7_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.12745") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 %i.bp, i64 %i.bo, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(28) %3), !noalias !35450
  %i.bq = load i8, ptr %i.k, align 8, !tbaa !88, !range !796, !noalias !35463, !noundef !797
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !35450
  %i.br = trunc nuw i8 %i.bq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
end_hunk_7
begin_hunk_8_@_ZZN8facebook5velox9functions18ArrayUnionFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS3_9ArrayViewILb1ESB_EEEEvRT_RKT0_SJ_ENKUlSG_E_clIKSE_EEDaSG_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !35470)
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !23788, !noalias !35473, !nonnull !797, !align !916
  store ptr %i.bt, ptr %4, align 8, !tbaa !1233, !alias.scope !35473
  store ptr %5, ptr %i.l, align 8, !tbaa !11853, !alias.scope !35473
  store ptr %6, ptr %i.m, align 8, !tbaa !11855, !alias.scope !35473
  store i32 %i.av, ptr %i.n, align 8, !tbaa !11857, !alias.scope !35473
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 20 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !23764 ; 2 uses
end_hunk_8
