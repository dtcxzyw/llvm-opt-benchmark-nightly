inline.NumInlined: 451
inline.NumDeleted: 244
begin_hunk_0_@_ZN4geos9operation6buffer14BufferSubgraph6createEPNS_9geomgraph4NodeE:.lr.ph.preheader
  %2 = alloca %"class.std::vector.0", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 3 uses
  store ptr %1, ptr %4, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %4, ptr %2, align 8, !tbaa !27
  store ptr %i.b, ptr %3, align 8, !tbaa !31
  br label %.lr.ph

thread-pre-split.i:                               ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN4geos9operation6buffer14BufferSubgraph12addReachableEPNS_9geomgraph4NodeE:_ZNKSt6vectorIPN4geos9geomgraph4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %2 = alloca %"class.std::vector.0", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 3 uses
  store ptr %1, ptr %4, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %4, ptr %2, align 8, !tbaa !27
  store ptr %i.b, ptr %i.a, align 8, !tbaa !33
  store ptr %i.b, ptr %3, align 8, !tbaa !31
  br label %bb.a

thread-pre-split:                                 ; preds = %bb.a
end_hunk_1
