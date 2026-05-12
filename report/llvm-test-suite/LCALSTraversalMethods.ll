inline.NumInlined: 78
inline.NumDeleted: 47
begin_hunk_0_@_ZN14HybridIndexSet11addIndexSetERK13RangeIndexSet
define dso_local void @_ZN14HybridIndexSet11addIndexSetERK13RangeIndexSet(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #14 ; 5 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !20     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22   ; 2 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %i.d, ptr %i.e, align 4, !tbaa !22
end_hunk_0
begin_hunk_1_@_ZN14HybridIndexSet11addIndexSetERK13RangeIndexSet:bb.a

bb.e:                                             ; preds = %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #11
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.x, ptr %i.f, align 8, !tbaa !12
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !23
  %.pre = load i32, ptr %i.e, align 4, !tbaa !22
  %.pre11 = load i32, ptr %i.a, align 4, !tbaa !20
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
end_hunk_1
begin_hunk_2_@_ZN14HybridIndexSet11addIndexSetERK19RangeStrideIndexSet
define dso_local void @_ZN14HybridIndexSet11addIndexSetERK19RangeStrideIndexSet(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #14 ; 6 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !37     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40   ; 2 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %i.d, ptr %i.g, align 4, !tbaa !39
end_hunk_2
begin_hunk_3_@_ZN14HybridIndexSet11addIndexSetERK19RangeStrideIndexSet:bb.a

bb.e:                                             ; preds = %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #11
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !12
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !8
  %2 = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.y
  store ptr %2, ptr %i.l, align 8, !tbaa !23
  %.pre = load i32, ptr %i.g, align 4, !tbaa !39
  %.pre13 = load i32, ptr %i.a, align 4, !tbaa !37
  %.pre14 = load i32, ptr %i.h, align 4, !tbaa !40
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
end_hunk_3
begin_hunk_4_@_ZN14HybridIndexSet15addRangeIndicesEii:bb.a

bb.e:                                             ; preds = %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #11
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.u, ptr %i.c, align 8, !tbaa !12
  store ptr %i.y, ptr %i.d, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.z, ptr %i.f, align 8, !tbaa !23
  %.pre = load i32, ptr %i.b, align 4, !tbaa !22
  %.pre10 = load i32, ptr %i.a, align 4, !tbaa !20
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
end_hunk_4
begin_hunk_5_@_ZN14HybridIndexSet21addRangeStrideIndicesEiii:bb.a

bb.e:                                             ; preds = %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #11
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.v, ptr %i.d, align 8, !tbaa !12
  store ptr %i.z, ptr %i.e, align 8, !tbaa !8
  %4 = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  store ptr %4, ptr %i.g, align 8, !tbaa !23
  %.pre = load i32, ptr %i.b, align 4, !tbaa !39
  %.pre12 = load i32, ptr %i.a, align 4, !tbaa !37
  %.pre13 = load i32, ptr %i.c, align 4, !tbaa !40
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
end_hunk_5
