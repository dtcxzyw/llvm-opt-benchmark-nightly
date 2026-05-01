inline.NumInlined: 4059
inline.NumDeleted: 2113
begin_hunk_0_@_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl13DrainAndCloseEv:bb.a
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"struct.node::(anonymous namespace)::FdEntry::ReaderImpl::PendingPull", align 8 ; 9 uses
  %2 = alloca %"class.std::function.581", align 8 ; 6 uses
  %3 = alloca %struct.uv_fs_s, align 8            ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !26, !noundef !68
end_hunk_0
begin_hunk_1_@_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl13DrainAndCloseEv:bb.a
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_1
begin_hunk_2_@_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl13DrainAndCloseEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call fastcc void @_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl18DequeuePendingPullEv(ptr dead_on_unwind noalias writable align 8 %1, ptr noundef nonnull align 8 dereferenceable(168) %0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFvmEZN4node12_GLOBAL__N_17FdEntry10ReaderImpl13DrainAndCloseEvEUlmE_E9_M_invokeERKSt9_Any_dataOm, ptr %i.j, align 8
  store ptr @_ZNSt17_Function_handlerIFvmEZN4node12_GLOBAL__N_17FdEntry10ReaderImpl13DrainAndCloseEvEUlmE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
end_hunk_2
begin_hunk_3_@_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl13DrainAndCloseEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

end_hunk_3
