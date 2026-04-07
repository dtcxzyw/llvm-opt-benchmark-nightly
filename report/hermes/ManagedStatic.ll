inline.NumInlined: 32
inline.NumDeleted: 24
begin_hunk_0_@_ZN4llvh13llvm_shutdownEv:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.l = load atomic ptr, ptr %i.g seq_cst, align 8
  call void %i.k(ptr noundef %i.l) #7, !inline_history !18
  store atomic ptr null, ptr %i.g seq_cst, align 8
  store ptr null, ptr %i.j, align 8, !tbaa !11
  %i.m = load ptr, ptr @_ZL10StaticList, align 8, !tbaa !16 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %_ZL21getManagedStaticMutexv.exit
  %i.n = call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(13) %i.d) #7 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZL15initializeMutexv:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #9 ; 4 uses
  tail call void @_ZN4llvh3sys9MutexImplC1Eb(ptr noundef nonnull align 8 dereferenceable(13) %i.a, i1 noundef zeroext true) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 1, ptr %i.c, align 4, !tbaa !25
  store ptr %i.a, ptr @_ZL18ManagedStaticMutex, align 8, !tbaa !9
  ret void
}
end_hunk_1
begin_hunk_2_@_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv:bb.a
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26, !nonnull !28
  tail call void %i.c() #7, !inline_history !29
  ret void
}

end_hunk_2
begin_hunk_3_@_ZN4llvh3sys9MutexImpl7releaseEv
!15 = !{!"p1 _ZTSN4llvh17ManagedStaticBaseE", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!12, !15, i64 16}
!18 = !{ptr @_ZNK4llvh17ManagedStaticBase7destroyEv}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!22, !4, i64 8}
!22 = !{!"_ZTSN4llvh3sys10SmartMutexILb0EEE", !23, i64 0, !4, i64 8, !24, i64 12}
!23 = !{!"_ZTSN4llvh3sys9MutexImplE", !8, i64 0}
!24 = !{!"bool", !5, i64 0}
!25 = !{!22, !24, i64 12}
!26 = !{!27, !8, i64 0}
!27 = !{!"_ZTSZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_EUlvE_", !8, i64 0}
!28 = !{}
!29 = distinct !{null, null, null, null}
end_hunk_3
