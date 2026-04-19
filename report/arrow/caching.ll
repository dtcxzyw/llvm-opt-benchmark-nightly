inline.NumInlined: 1069
inline.NumDeleted: 554
begin_hunk_0_@_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE17_M_realloc_insertIJNS1_ISt10shared_ptrINS0_6BufferEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNSt12_Vector_baseIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNSt12_Vector_baseIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.f, 4                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE17_M_realloc_insertIJNS1_ISt10shared_ptrINS0_6BufferEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  %7 = select i1 %5, i64 576460752303423487, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.e
  %.not.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i)
  %10 = shl nuw nsw i64 %7, 4
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #21 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store i64 0, ptr %i.i, align 8, !alias.scope !233
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE17_M_realloc_insertIJNS1_ISt10shared_ptrINS0_6BufferEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN5arrow6FutureINS0_8internal5EmptyEEEEE9constructIS4_JNS1_ISt10shared_ptrINS0_6BufferEEEEEEEvRS5_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %11, %_ZNSt16allocator_traitsISaIN5arrow6FutureINS0_8internal5EmptyEEEEE9constructIS4_JNS1_ISt10shared_ptrINS0_6BufferEEEEEEEvRS5_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5arrow6FutureINS0_8internal5EmptyEEEEE9constructIS4_JNS1_ISt10shared_ptrINS0_6BufferEEEEEEEvRS5_PT_DpOT0_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE17_M_realloc_insertIJNS1_ISt10shared_ptrINS0_6BufferEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !241

_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN5arrow6FutureINS0_8internal5EmptyEEEEE9constructIS4_JNS1_ISt10shared_ptrINS0_6BufferEEEEEEEvRS5_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %11, %_ZNSt16allocator_traitsISaIN5arrow6FutureINS0_8internal5EmptyEEEEE9constructIS4_JNS1_ISt10shared_ptrINS0_6BufferEEEEEEEvRS5_PT_DpOT0_.exit ], [ %i.aj, %.lr.ph.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32, label %.lr.ph.i.i.i27
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE17_M_realloc_insertIJNS1_ISt10shared_ptrINS0_6BufferEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  br label %_ZNSt12_Vector_baseIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32, %bb.j
  store ptr %11, ptr %0, align 8, !tbaa !132
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !135
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %7
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !138
  ret void
}
end_hunk_4
