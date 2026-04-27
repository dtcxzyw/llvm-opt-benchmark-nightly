inline.NumInlined: 369
inline.NumDeleted: 143
begin_hunk_0_@_ZN5arrow11BinaryArrayC2ERKSt10shared_ptrINS_9ArrayDataEE:bb.a
bb.a:
  %2 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow11BinaryArrayE, i64 16), ptr %0, align 8, !tbaa !33
  %i.c = load ptr, ptr %1, align 8, !tbaa !35
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
end_hunk_0
begin_hunk_1_@_ZN5arrow11BinaryArrayC2ElRKSt10shared_ptrINS_6BufferEES5_S5_ll:bb.a
  %9 = alloca %"class.std::vector", align 8       ; 8 uses
  %10 = alloca [3 x %"class.std::shared_ptr.25"], align 16 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow11BinaryArrayE, i64 16), ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6binaryEv()
end_hunk_1
begin_hunk_2_@_ZN5arrow16LargeBinaryArrayC2ERKSt10shared_ptrINS_9ArrayDataEE:bb.a
bb.a:
  %2 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow16LargeBinaryArrayE, i64 16), ptr %0, align 8, !tbaa !33
  %i.c = load ptr, ptr %1, align 8, !tbaa !35
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
end_hunk_2
begin_hunk_3_@_ZN5arrow16LargeBinaryArrayC2ElRKSt10shared_ptrINS_6BufferEES5_S5_ll:bb.a
  %9 = alloca %"class.std::vector", align 8       ; 8 uses
  %10 = alloca [3 x %"class.std::shared_ptr.25"], align 16 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow16LargeBinaryArrayE, i64 16), ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow12large_binaryEv()
end_hunk_3
begin_hunk_4_@_ZN5arrow11StringArrayC2ERKSt10shared_ptrINS_9ArrayDataEE:bb.a
bb.a:
  %2 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow11StringArrayE, i64 16), ptr %0, align 8, !tbaa !33
  %i.b = load ptr, ptr %1, align 8, !tbaa !35
end_hunk_4
begin_hunk_5_@_ZN5arrow11StringArrayC2ERKSt10shared_ptrINS_9ArrayDataEE:bb.a

_ZNK5arrow9ArrayData13GetValuesSafeIiEEPKT_i.exit.i: ; preds = %bb.e, %bb.d, %.noexc
  %.0.i.i.i = phi ptr [ %i.s, %bb.e ], [ null, %bb.d ], [ null, %.noexc ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i, ptr %3, align 8, !tbaa !95
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81   ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow11StringArrayC2ElRKSt10shared_ptrINS_6BufferEES5_S5_ll:bb.a
  %9 = alloca %"class.std::vector", align 8       ; 8 uses
  %10 = alloca [3 x %"class.std::shared_ptr.25"], align 16 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow11StringArrayE, i64 16), ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
end_hunk_6
begin_hunk_7_@_ZN5arrow11StringArrayC2ElRKSt10shared_ptrINS_6BufferEES5_S5_ll:bb.a

_ZNK5arrow9ArrayData13GetValuesSafeIiEEPKT_i.exit.i: ; preds = %bb.am, %bb.al, %.noexc23
  %.0.i.i.i = phi ptr [ %i.dm, %bb.am ], [ null, %bb.al ], [ null, %.noexc23 ]
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i, ptr %11, align 8, !tbaa !95
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !81 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN5arrow16LargeStringArrayC2ERKSt10shared_ptrINS_9ArrayDataEE:bb.a
bb.a:
  %2 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow16LargeStringArrayE, i64 16), ptr %0, align 8, !tbaa !33
  %i.b = load ptr, ptr %1, align 8, !tbaa !35
end_hunk_8
begin_hunk_9_@_ZN5arrow16LargeStringArrayC2ERKSt10shared_ptrINS_9ArrayDataEE:bb.a

_ZNK5arrow9ArrayData13GetValuesSafeIlEEPKT_i.exit.i: ; preds = %bb.e, %bb.d, %.noexc
  %.0.i.i.i = phi ptr [ %i.s, %bb.e ], [ null, %bb.d ], [ null, %.noexc ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i, ptr %3, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81   ; 3 uses
end_hunk_9
begin_hunk_10_@_ZN5arrow16LargeStringArrayC2ElRKSt10shared_ptrINS_6BufferEES5_S5_ll:bb.a
  %9 = alloca %"class.std::vector", align 8       ; 8 uses
  %10 = alloca [3 x %"class.std::shared_ptr.25"], align 16 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow16LargeStringArrayE, i64 16), ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
end_hunk_10
begin_hunk_11_@_ZN5arrow16LargeStringArrayC2ElRKSt10shared_ptrINS_6BufferEES5_S5_ll:bb.a

_ZNK5arrow9ArrayData13GetValuesSafeIlEEPKT_i.exit.i: ; preds = %bb.am, %bb.al, %.noexc23
  %.0.i.i.i = phi ptr [ %i.dm, %bb.am ], [ null, %bb.al ], [ null, %.noexc23 ]
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i, ptr %11, align 8, !tbaa !120
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !81 ; 3 uses
end_hunk_11
