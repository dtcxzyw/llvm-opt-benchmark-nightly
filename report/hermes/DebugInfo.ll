inline.NumInlined: 835
inline.NumDeleted: 375
begin_hunk_0_@_ZN6hermes3hbc18DebugInfoGenerator21appendSourceLocationsERKNS0_19DebugSourceLocationEjN4llvh8ArrayRefIS2_EE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18DebugInfoGeneratorC2EONS0_21UniquingFilenameTableE(ptr noundef nonnull align 8 dereferenceable(216) initializes((0, 1), (8, 32)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %3 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %.sroa.0.i.i.i.i.i.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %4 = alloca %"struct.hermes::hbc::UniquingFilenameTable", align 8 ; 19 uses
  store i8 1, ptr %0, align 8, !tbaa !184
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i64 8, ptr %5, align 8, !tbaa !187
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #16 ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !193
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc18DebugInfoGeneratorC2EONS0_21UniquingFilenameTableE:bb.a
  br i1 %.not.i.i.i.i.a, label %_ZN6hermes3hbc21UniquingFilenameTableC2EOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 80, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !200
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !194
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc18DebugInfoGeneratorC2EONS0_21UniquingFilenameTableE:bb.a
  store ptr %i.h, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !194
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %.06.i.i.ptr.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  br label %_ZN6hermes3hbc21UniquingFilenameTableC2EOS1_.exit

_ZN6hermes3hbc21UniquingFilenameTableC2EOS1_.exit: ; preds = %bb.a, %bb.b
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc18DebugInfoGenerator17serializeWithMoveEv:bb.a
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 3 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !19   ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6hermes3hbc18DebugInfoGenerator17serializeWithMoveEv:bb.a

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.al) #15
  %.pre.pre = load ptr, ptr %i.l, align 8, !tbaa !28
  %.pre23.pre = load ptr, ptr %i.m, align 8, !tbaa !28
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.e, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %.pre23 = phi ptr [ %.pre23.pre, %bb.e ], [ %i.n, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.o, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i ]
  store ptr %i.an, ptr %2, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.k
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !16
  %3 = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ai
  store ptr %3, ptr %i.f, align 8, !tbaa !219
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIhSaIhEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag:bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !219
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 12 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not46 = icmp ult i64 %i.j, %i.c
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIhSaIhEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag:bb.a
  br i1 %.not.i61, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit60
  %i.dm = sub i64 %i.h, %i.cn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.dm) #15
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

end_hunk_6
begin_hunk_7_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !219
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not = icmp ult i64 %i.j, %i.c
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #15
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

end_hunk_8
