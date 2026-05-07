inline.NumInlined: 782
inline.NumDeleted: 401
begin_hunk_0_@_ZN2v88internal8compiler16ControlPathStateINS1_15BranchConditionELNS1_14NodeUniquenessE0EE21ResetToCommonAncestorES5_:bb.a
bb.a:
  %2 = alloca %"struct.v8::internal::compiler::BranchCondition", align 8 ; 4 uses
  %3 = alloca %"struct.v8::internal::compiler::BranchCondition", align 8 ; 4 uses
  %4 = alloca %"struct.v8::internal::compiler::BranchCondition", align 8 ; 2 uses
  %5 = alloca %"struct.v8::internal::compiler::BranchCondition", align 8 ; 2 uses
  %.pr = load ptr, ptr %1, align 8                ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i5 = icmp eq ptr %i.a, null
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler16ControlPathStateINS1_15BranchConditionELNS1_14NodeUniquenessE0EE21ResetToCommonAncestorES5_:bb.a
.preheader50:                                     ; preds = %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit11
  %.sroa.043.058 = load ptr, ptr %i.v, align 8    ; 2 uses
  %.not4759 = icmp eq ptr %.sroa.043.058, null
  br i1 %.not4759, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit.i13, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit18.lr.ph

_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit18.lr.ph: ; preds = %.preheader50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %4, i8 0, i64 17, i1 false)
  br label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit18

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit18
  %.pre84 = load ptr, ptr %0, align 8             ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler16ControlPathStateINS1_15BranchConditionELNS1_14NodeUniquenessE0EE21ResetToCommonAncestorES5_:bb.a
  store ptr %i.ag, ptr %0, align 8
  br label %bb.b, !llvm.loop !142

_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit18: ; preds = %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit18.lr.ph, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit18
  %.sroa.043.060 = phi ptr [ %.sroa.043.058, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit18.lr.ph ], [ %.sroa.043.0, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit18 ] ; 2 uses
  %.sroa.040.0.copyload = load ptr, ptr %.sroa.043.060, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE6ModifyIZNSB_3SetES6_S7_EUlPS7_E_EEvS6_T_(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr %.sroa.040.0.copyload, i64 0, ptr nonnull align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.043.060, i64 24
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler16ControlPathStateINS1_15BranchConditionELNS1_14NodeUniquenessE0EE21ResetToCommonAncestorES5_:bb.a
.loopexit:                                        ; preds = %_ZNK2v88internal8compiler14FunctionalListINS1_15BranchConditionEE4SizeEv.exit5.i.i.i.i, %.lr.ph.i.i.i.i, %_ZNK2v88internal8compiler15BranchConditionneERKS2_.exit.i.i.i.i, %bb.i, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit5.i.i
  %.sroa.034.061 = load ptr, ptr %i.ai, align 8   ; 2 uses
  %.not62 = icmp eq ptr %.sroa.034.061, null
  br i1 %.not62, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit.i21, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit31.lr.ph

_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit31.lr.ph: ; preds = %.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %5, i8 0, i64 17, i1 false)
  br label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit31

._crit_edge64:                                    ; preds = %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit31
  %.pre83 = load ptr, ptr %0, align 8             ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler16ControlPathStateINS1_15BranchConditionELNS1_14NodeUniquenessE0EE21ResetToCommonAncestorES5_:bb.a
  %.pre = load ptr, ptr %i.cd, align 8
  br label %.preheader, !llvm.loop !145

_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit31: ; preds = %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit31.lr.ph, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit31
  %.sroa.034.063 = phi ptr [ %.sroa.034.061, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit31.lr.ph ], [ %.sroa.034.0, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit31 ] ; 2 uses
  %.sroa.032.0.copyload = load ptr, ptr %.sroa.034.063, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE6ModifyIZNSB_3SetES6_S7_EUlPS7_E_EEvS6_T_(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr %.sroa.032.0.copyload, i64 0, ptr nonnull align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.034.063, i64 24
end_hunk_4
