inline.NumInlined: 939
inline.NumDeleted: 457
begin_hunk_0_@_ZN4llvh20CreateInfoOutputFileEv:bb.a

_ZL31getLibSupportInfoOutputFilenameB5cxx11v.exit: ; preds = %bb.a, %bb.b
  %i.b = load atomic ptr, ptr @_ZL28LibSupportInfoOutputFilenameB5cxx11 monotonic, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  switch i64 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 0, label %bb.c
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_0
begin_hunk_1_@_ZN4llvh20CreateInfoOutputFileEv:bb.a
  store ptr %i.j, ptr %i.i, align 8, !tbaa !32
  %i.k = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24, !noalias !33 ; 4 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !14, !noalias !33
  call void @_ZN4llvh14raw_fd_ostreamC1ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr %i.l, i64 %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 3) #22, !noalias !33
  %i.m = load i32, ptr %1, align 8, !tbaa !29
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.thread, label %bb.e
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE7reserveEm:bb.a
bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.d = load ptr, ptr %0, align 8, !tbaa !143    ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE7reserveEm:bb.a
  %i.n = mul nuw nsw i64 %1, 96
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 4 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not9.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE7reserveEm:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !144

_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !143   ; 3 uses
  %.pre8 = load ptr, ptr %i.j, align 8, !tbaa !70 ; 2 uses
  %.not4.i.i = icmp eq ptr %.pre, %.pre8
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE7reserveEm:bb.a
  %.pr = load ptr, ptr %0, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit

_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit: ; preds = %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE11_M_allocateEm.exit.i, %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exitthread-pre-split, %_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit
  %2 = phi ptr [ %.pr, %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exitthread-pre-split ], [ %.pre, %_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit ], [ %i.d, %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

end_hunk_5
