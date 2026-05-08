inline.NumInlined: 22184
inline.NumDeleted: 7878
begin_hunk_0_@_ZN6google8protobuf17DescriptorBuilder19LogUnusedDependencyERKNS0_19FileDescriptorProtoEPKNS0_14FileDescriptorE:bb.a
.lr.ph:                                           ; preds = %.lr.ph.i.i, %bb.e, %bb.f
  %.sroa.6.0.i.ph = phi ptr [ %i.w, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %bb.f ], [ %i.al, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.0.i.ph = phi ptr [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.e ], [ %i.x, %bb.f ], [ %i.ak, %.lr.ph.i.i ] ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19LogUnusedDependencyERKNS4_19FileDescriptorProtoEPKNS4_14FileDescriptorEE3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %6, align 8, !tbaa !1210
  br label %.lr.ph.split.us.a

.lr.ph.split.us.a:                                ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.us, %.lr.ph.split.us
  %.sroa.8.025.us = phi ptr [ %.sroa.6.0.i.ph, %.lr.ph.split.us ], [ %.sroa.8.1.us, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.us ] ; 2 uses
  %.sroa.011.024.us = phi ptr [ %.sroa.0.0.i.ph, %.lr.ph.split.us ], [ %.sroa.011.1.us, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  %i.ao = load ptr, ptr %.sroa.8.025.us, align 8, !tbaa !166 ; 2 uses
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !166
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf17DescriptorBuilder19LogUnusedDependencyERKNS0_19FileDescriptorProtoEPKNS0_14FileDescriptorE:bb.a
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !23
  store ptr %3, ptr %4, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.at, ptr %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 9, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf17DescriptorBuilder19LogUnusedDependencyERKNS0_19FileDescriptorProtoEPKNS0_14FileDescriptorE:bb.a
  %i.bm = icmp eq i8 %i.bl, -1
  br i1 %i.bm, label %.loopexit, label %.lr.ph.split.us.a, !prof !163

.lr.ph.split:                                     ; preds = %.lr.ph
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19LogUnusedDependencyERKNS4_19FileDescriptorProtoEPKNS4_14FileDescriptorEE3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %7, align 8, !tbaa !1210
  br label %.lr.ph.split.a

.lr.ph.split.a:                                   ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i, %.lr.ph.split
  %.sroa.8.025 = phi ptr [ %.sroa.6.0.i.ph, %.lr.ph.split ], [ %.sroa.8.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i ] ; 2 uses
  %.sroa.011.024 = phi ptr [ %.sroa.0.0.i.ph, %.lr.ph.split ], [ %.sroa.011.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  %i.bn = load ptr, ptr %.sroa.8.025, align 8, !tbaa !166 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !166
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf17DescriptorBuilder19LogUnusedDependencyERKNS0_19FileDescriptorProtoEPKNS0_14FileDescriptorE:bb.a
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !23
  store ptr %3, ptr %5, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder10AddWarningESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.bs, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 9, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
end_hunk_3
