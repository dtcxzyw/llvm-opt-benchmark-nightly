inline.NumInlined: 765
inline.NumDeleted: 470
begin_hunk_0_@_ZNK6hermes3hbc14BCProviderBase21findCatchTargetOffsetEjj:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = load i32, ptr %i.h, align 1, !tbaa !97
  %.not = icmp ugt i32 %i.i, %2
  br i1 %.not, label %bb.d, label %bb.b
end_hunk_0
begin_hunk_1_@_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej:bb.a
  store i8 0, ptr %i.b, align 8, !tbaa !118
  %i.d = zext i32 %2 to i64
  %i.e = load ptr, ptr %1, align 8, !tbaa !124
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_1
begin_hunk_2_@_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj:bb.a
  %i.i = and i32 %i.h, 8388607
  %i.j = zext nneg i32 %i.i to i64
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !178
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %.sroa.0.0.copyload = load i32, ptr %i.l, align 1, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !3
end_hunk_2
