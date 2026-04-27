inline.NumInlined: 2614
inline.NumDeleted: 870
begin_hunk_0_@_ZN6google8protobuf16DynamicMapSorter4SortERKNS0_7MessageEiPKNS0_10ReflectionEPKNS0_15FieldDescriptorE:bb.a
  br i1 %.not, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.d = shl nuw nsw i64 %i.a, 3
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #32 ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !156
  store ptr %i.e, ptr %7, align 8, !tbaa !159
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.a ; 2 uses
end_hunk_0
