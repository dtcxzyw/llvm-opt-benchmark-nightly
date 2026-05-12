inline.NumInlined: 4983
inline.NumDeleted: 1990
begin_hunk_0_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::StatusOr.406", align 8 ; 10 uses
  %6 = alloca %"class.std::vector.478", align 8   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not195 = icmp eq i32 %i.k, 0
  br i1 %.not195, label %._crit_edge, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33
          to label %.lr.ph unwind label %bb.d     ; 3 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.p, ptr %6, align 8, !tbaa !567
  store ptr %i.p, ptr %7, align 8, !tbaa !570
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
bb.m:                                             ; preds = %.thread160
  %i.aq = load ptr, ptr %6, align 8, !tbaa !567   ; 4 uses
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 6 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.n, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_2
begin_hunk_3_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.at) #30
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf13json_internal23UnparseProto2Descriptor23FindAndAppendExtensionsERKNS0_7MessageERSt6vectorIPKNS0_15FieldDescriptorESaIS9_EE:bb.a

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf13json_internal23UnparseProto2Descriptor23FindAndAppendExtensionsERKNS0_7MessageERSt6vectorIPKNS0_15FieldDescriptorESaIS9_EE:bb.a
bb.i:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %1, align 8, !tbaa !567    ; 4 uses
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 6 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.j, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_5
begin_hunk_6_@_ZN6google8protobuf13json_internal23UnparseProto2Descriptor23FindAndAppendExtensionsERKNS0_7MessageERSt6vectorIPKNS0_15FieldDescriptorESaIS9_EE:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.y) #30
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
end_hunk_6
