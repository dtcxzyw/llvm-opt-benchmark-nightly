inline.NumInlined: 156
inline.NumDeleted: 101
begin_hunk_0_@_ZN5arrow6BufferC2EPKhl:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(25) %i.ad)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  store i8 %i.aj, ptr %i.f, align 8, !tbaa !72
end_hunk_0
begin_hunk_1_@_ZN5arrow6BufferC2EPKhl:bb.a
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #11, !inline_history !87
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #11, !inline_history !87
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
end_hunk_1
begin_hunk_2_@_ZN5arrow6BufferD2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11, !inline_history !87
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11, !inline_history !87
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJRKlRSt10shared_ptrINS4_6BufferEEDniS8_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_:_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #11, !inline_history !88
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #11, !inline_history !88
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_3
begin_hunk_4_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJRKlRSt10shared_ptrINS4_6BufferEEDniS8_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_:_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  store ptr %i.d, ptr %1, align 8, !tbaa !89
  ret void
}

end_hunk_4
begin_hunk_5_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #11, !inline_history !90
  ret void
}

end_hunk_5
begin_hunk_6_@llvm.experimental.noalias.scope.decl
!84 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0}
!85 = !{i8 0, i8 2}
!86 = !{}
!87 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!88 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!89 = !{!46, !46, i64 0}
!90 = distinct !{null}
end_hunk_6
