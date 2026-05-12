inline.NumInlined: 309
inline.NumDeleted: 148
begin_hunk_0_@_ZN6hermes3hbc21SimpleBytecodeBuilder22generateBytecodeBufferEv:bb.a

bb.k:                                             ; preds = %._crit_edge52
  %i.cv = sub nuw i64 %i.ct, %i.cr                ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !36
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.cp                    ; 2 uses
  %i.da = icmp sgt i64 %i.cr, -1
  call void @llvm.assume(i1 %i.da)
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc21SimpleBytecodeBuilder22generateBytecodeBufferEv:bb.a
  br i1 %.not.i27.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %8 = load ptr, ptr %i.cw, align 8, !tbaa !36
  %9 = ptrtoint ptr %8 to i64
  %i.dp = sub i64 %9, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.dp) #14
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i

end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc21SimpleBytecodeBuilder22generateBytecodeBufferEv:bb.a
  store ptr %i.dt, ptr %i.ag, align 8, !tbaa !19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.u, %bb.t, %bb.s, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i
  %i.du = phi ptr [ %i.co, %bb.u ], [ %i.co, %bb.t ], [ %i.co, %bb.s ], [ %.pre, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i ], [ %i.dk, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ] ; 2 uses
  %i.dv = phi ptr [ %i.dt, %bb.u ], [ %i.cn, %bb.t ], [ %i.cn, %bb.s ], [ %.0.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i ], [ %i.dq, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 28
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag:bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not46 = icmp ult i64 %i.j, %i.c
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag:bb.a
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50
  %4 = load ptr, ptr %i.d, align 8, !tbaa !36
  %5 = ptrtoint ptr %4 to i64
  %i.bv = sub i64 %5, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #14
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

end_hunk_4
begin_hunk_5_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not = icmp ult i64 %i.j, %i.c
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46
  %4 = load ptr, ptr %i.d, align 8, !tbaa !36
  %5 = ptrtoint ptr %4 to i64
  %i.bv = sub i64 %5, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #14
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

end_hunk_6
