inline.NumInlined: 4932
inline.NumDeleted: 2065
begin_hunk_0_@_ZN6google8protobuf4util18MessageDifferencer33TreatAsMapWithMultipleFieldsAsKeyEPKNS0_15FieldDescriptorERKSt6vectorIS5_SaIS5_EE:bb.a
  invoke void @_ZN6google8protobuf4util18MessageDifferencer37TreatAsMapWithMultipleFieldPathsAsKeyEPKNS0_15FieldDescriptorERKSt6vectorIS6_IS5_SaIS5_EESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.l

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, %.lr.ph
  %.sroa.018.024 = phi ptr [ %i.a, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.018.024, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util18MessageDifferencer13CombineFieldsERKNS0_7MessageERKSt6vectorIPKNS0_15FieldDescriptorESaIS9_EENS2_5ScopeESD_SE_:bb.a
  br i1 %.not197, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = shl nuw nsw i64 %i.p, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #42 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !122
  store ptr %i.t, ptr %8, align 8, !tbaa !302
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.p ; 2 uses
end_hunk_1
