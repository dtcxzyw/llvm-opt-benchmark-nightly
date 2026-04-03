begin_hunk_0
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::error_code", align 8   ; 7 uses
  %6 = alloca %"class.llvh::sys::fs::file_status", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.b = call { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 2, i32 noundef 3, i32 noundef 0, i32 noundef 438) #22 ; 2 uses
end_hunk_0
begin_hunk_1
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !68   ; 2 uses
  switch i32 %i.u, label %bb.g [
    i32 5, label %7
    i32 2, label %7
  ]

bb.g:                                             ; preds = %bb.f
end_hunk_1
begin_hunk_2
  store i32 22, ptr %0, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %.sroa.21.0..sroa_idx.i27, align 8, !tbaa !43
  br label %bb.h

7:                                                ; preds = %bb.f, %bb.f
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %9 = load i64, ptr %8, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %7
  %.1 = phi i64 [ %9, %7 ], [ -1, %bb.g ]         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  switch i32 %i.u, label %_ZNSt10unique_ptrIN4llvh24WriteThroughMemoryBufferESt14default_deleteIS1_EED2Ev.exit [
    i32 5, label %bb.i
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.h, %bb.c
  %.019 = phi i64 [ %3, %bb.c ], [ %.1, %bb.h ], [ %2, %bb.d ], [ %.1, %bb.h ] ; 2 uses
  %i.z = call fastcc noundef ptr @_ZnwmRKN12_GLOBAL__N_116NamedBufferAllocE(i64 noundef 48, ptr nonnull %1) ; 7 uses
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !3
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh24WriteThroughMemoryBufferEEE, i64 16), ptr %i.z, align 8, !tbaa !17
end_hunk_2
begin_hunk_3
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(24) %i.z) #22
  br label %_ZNSt10unique_ptrIN4llvh24WriteThroughMemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh24WriteThroughMemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvh24WriteThroughMemoryBufferEEclEPS1_.exit.i, %.thread, %bb.h, %.critedge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
end_hunk_3
