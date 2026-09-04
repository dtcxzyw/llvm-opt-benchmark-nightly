Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuSapBroadphase?download=true
inline.NumInlined: 649
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 67
begin_hunk_0_@b3LeaveProfileZone
declare void @b3LeaveProfileZone() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI14b3UnsignedInt2ED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI14b3UnsignedInt2E, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !99
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayI14b3UnsignedInt2ED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !101
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayI14b3UnsignedInt2ED2Ev.exit unwind label %bb.c, !inline_history !5 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22, !inline_history !112
  unreachable

_ZN13b3OpenCLArrayI14b3UnsignedInt2ED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI10b3SortDataED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI10b3SortDataE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !99
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayI10b3SortDataED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !101
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayI10b3SortDataED2Ev.exit unwind label %bb.c, !inline_history !1 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22, !inline_history !108
  unreachable

_ZN13b3OpenCLArrayI10b3SortDataED2Ev.exit:        ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI6b3Int4ED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI6b3Int4E, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !99
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayI6b3Int4ED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !101
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayI6b3Int4ED2Ev.exit unwind label %bb.c, !inline_history !2 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22, !inline_history !109
  unreachable

_ZN13b3OpenCLArrayI6b3Int4ED2Ev.exit:             ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayIiED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIiE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !99
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayIiED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !101
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayIiED2Ev.exit unwind label %bb.c, !inline_history !3 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22, !inline_history !110
  unreachable

_ZN13b3OpenCLArrayIiED2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI9b3SapAabbED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI9b3SapAabbE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !99
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayI9b3SapAabbED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !101
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayI9b3SapAabbED2Ev.exit unwind label %bb.c, !inline_history !0 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22, !inline_history !107
  unreachable

_ZN13b3OpenCLArrayI9b3SapAabbED2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI9b3Vector3ED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI9b3Vector3E, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !99
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayI9b3Vector3ED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !101
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayI9b3Vector3ED2Ev.exit unwind label %bb.c, !inline_history !4 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22, !inline_history !111
  unreachable

_ZN13b3OpenCLArrayI9b3Vector3ED2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #21
  ret void
}

declare void @_Z21b3AlignedFreeInternalPv(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI6b3Int4E17quickSortInternalIFbRKS0_S4_EEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.b3Int4, align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.c = add nsw i32 %3, %2
  %i.d = sdiv i32 %i.c, 2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !126
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.028 = phi i32 [ %2, %bb.a ], [ %i.v, %bb.f ]
  %.0 = phi i32 [ %3, %bb.a ], [ %i.w, %bb.f ]
  %i.g = sext i32 %.028 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.i = getelementptr inbounds [16 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = call noundef zeroext i1 %1(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %4)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.j, label %bb.c, label %.preheader, !llvm.loop !262

.preheader:                                       ; preds = %bb.c
  %i.k = sext i32 %.0 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %bb.d ], [ %i.k, %.preheader ] ; 6 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.m = getelementptr inbounds [16 x i8], ptr %i.l, i64 %indvars.iv37
  %i.n = call noundef zeroext i1 %1(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.m)
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, -1
  br i1 %i.n, label %bb.d, label %bb.e, !llvm.loop !263

bb.e:                                             ; preds = %bb.d
  %i.o = trunc nsw i64 %indvars.iv to i32         ; 3 uses
  %i.p = trunc nsw i64 %indvars.iv37 to i32       ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %indvars.iv37
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %.sroa.0.i.sroa.0.0.copyload = load <4 x i32>, ptr %i.r, align 16, !tbaa !116
  %i.s = getelementptr inbounds [16 x i8], ptr %i.q, i64 %indvars.iv37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.r, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !126
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.u = getelementptr inbounds [16 x i8], ptr %i.t, i64 %indvars.iv37
  store <4 x i32> %.sroa.0.i.sroa.0.0.copyload, ptr %i.u, align 16, !tbaa !116
  %i.v = add nsw i32 %i.o, 1                      ; 2 uses
  %i.w = add nsw i32 %i.p, -1                     ; 3 uses
  %.not33.not = icmp sgt i32 %i.w, %i.o
  br i1 %.not33.not, label %bb.b, label %bb.g, !llvm.loop !264

bb.g:                                             ; preds = %bb.e, %bb.f
  %.230 = phi i32 [ %i.w, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.2 = phi i32 [ %i.v, %bb.f ], [ %i.o, %bb.e ]  ; 2 uses
  %5 = icmp slt i32 %2, %.230
  br i1 %5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN20b3AlignedObjectArrayI6b3Int4E17quickSortInternalIFbRKS0_S4_EEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %.230)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = icmp slt i32 %.2, %3
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN20b3AlignedObjectArrayI6b3Int4E17quickSortInternalIFbRKS0_S4_EEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %1, i32 noundef %.2, i32 noundef %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_b3GpuSapBroadphase.cpp() #16 section ".text.startup" {
bb.a:
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 24), align 8, !tbaa !125
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 16), align 8, !tbaa !122
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 4), align 4, !tbaa !123
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 8), align 8, !tbaa !124
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev, ptr nonnull @addedHostPairs, ptr nonnull @__dso_handle) #19 ; 0 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 24), align 8, !tbaa !125
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 16), align 8, !tbaa !122
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 4), align 4, !tbaa !123
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 8), align 8, !tbaa !124
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev, ptr nonnull @removedHostPairs, ptr nonnull @__dso_handle) #19 ; 0 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @preAabbs, i64 24), align 8, !tbaa !79
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @preAabbs, i64 16), align 8, !tbaa !80
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @preAabbs, i64 4), align 4, !tbaa !81
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @preAabbs, i64 8), align 8, !tbaa !82
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZN20b3AlignedObjectArrayI9b3SapAabbED2Ev, ptr nonnull @preAabbs, ptr nonnull @__dso_handle) #19 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}
!llvm.errno.tbaa = !{!24}

!0 = distinct !{ptr @_ZN13b3OpenCLArrayI9b3SapAabbED2Ev, null}
!1 = distinct !{ptr @_ZN13b3OpenCLArrayI10b3SortDataED2Ev, null}
!2 = distinct !{ptr @_ZN13b3OpenCLArrayI6b3Int4ED2Ev, null}
!3 = distinct !{ptr @_ZN13b3OpenCLArrayIiED2Ev, null}
!4 = distinct !{ptr @_ZN13b3OpenCLArrayI9b3Vector3ED2Ev, null}
!5 = distinct !{ptr @_ZN13b3OpenCLArrayI14b3UnsignedInt2ED2Ev, null}
!6 = distinct !{!6, !113}
!7 = distinct !{!7, !113}
!8 = distinct !{!8, !113}
!9 = distinct !{!9, !113}
!10 = distinct !{!10, !113}
!11 = distinct !{!11, !113}
!12 = distinct !{null}
!13 = distinct !{null, null}
!14 = distinct !{null, null}
!15 = distinct !{null}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!"omnipotent char", !20, i64 0}
!22 = !{!"int", !21, i64 0}
!23 = !{!"__libc_errno", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!"vtable pointer", !20, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"_ZTS24b3GpuBroadphaseInterface"}
!28 = !{!"any pointer", !21, i64 0}
!29 = !{!"p1 _ZTS11_cl_context", !28, i64 0}
!30 = !{!"p1 _ZTS13_cl_device_id", !28, i64 0}
!31 = !{!"p1 _ZTS17_cl_command_queue", !28, i64 0}
!32 = !{!"p1 _ZTS10_cl_kernel", !28, i64 0}
!33 = !{!"p1 _ZTS15b3RadixSort32CL", !28, i64 0}
!34 = !{!"long", !21, i64 0}
!35 = !{!"p1 _ZTS7_cl_mem", !28, i64 0}
!36 = !{!"bool", !21, i64 0}
!37 = !{!"_ZTS13b3OpenCLArrayI14b3UnsignedInt2E", !34, i64 8, !34, i64 16, !35, i64 24, !29, i64 32, !31, i64 40, !36, i64 48, !36, i64 49}
!38 = !{!"_ZTS13b3OpenCLArrayI10b3SortDataE", !34, i64 8, !34, i64 16, !35, i64 24, !29, i64 32, !31, i64 40, !36, i64 48, !36, i64 49}
!39 = !{!"_ZTS13b3OpenCLArrayI6b3Int4E", !34, i64 8, !34, i64 16, !35, i64 24, !29, i64 32, !31, i64 40, !36, i64 48, !36, i64 49}
!40 = !{!"_ZTS13b3OpenCLArrayIiE", !34, i64 8, !34, i64 16, !35, i64 24, !29, i64 32, !31, i64 40, !36, i64 48, !36, i64 49}
!41 = !{!"_ZTS13b3OpenCLArrayI9b3SapAabbE", !34, i64 8, !34, i64 16, !35, i64 24, !29, i64 32, !31, i64 40, !36, i64 48, !36, i64 49}
!42 = !{!"_ZTS18b3AlignedAllocatorI9b3SapAabbLj16EE"}
!43 = !{!"p1 _ZTS9b3SapAabb", !28, i64 0}
!44 = !{!"_ZTS20b3AlignedObjectArrayI9b3SapAabbE", !42, i64 0, !22, i64 4, !22, i64 8, !43, i64 16, !36, i64 24}
!45 = !{!"_ZTS13b3OpenCLArrayI9b3Vector3E", !34, i64 8, !34, i64 16, !35, i64 24, !29, i64 32, !31, i64 40, !36, i64 48, !36, i64 49}
!46 = !{!"_ZTS18b3AlignedAllocatorIiLj16EE"}
!47 = !{!"p1 int", !28, i64 0}
!48 = !{!"_ZTS20b3AlignedObjectArrayIiE", !46, i64 0, !22, i64 4, !22, i64 8, !47, i64 16, !36, i64 24}
!49 = !{!"p1 _ZTS20b3PrefixScanFloat4CL", !28, i64 0}
!50 = !{!"_ZTS18b3GpuSapBroadphase", !27, i64 0, !29, i64 8, !30, i64 16, !31, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !32, i64 64, !32, i64 72, !33, i64 80, !21, i64 88, !21, i64 280, !37, i64 472, !37, i64 528, !37, i64 584, !37, i64 640, !37, i64 696, !37, i64 752, !38, i64 808, !38, i64 864, !38, i64 920, !38, i64 976, !38, i64 1032, !38, i64 1088, !39, i64 1144, !39, i64 1200, !40, i64 1256, !40, i64 1312, !22, i64 1368, !40, i64 1376, !41, i64 1432, !44, i64 1488, !45, i64 1520, !45, i64 1576, !45, i64 1632, !40, i64 1688, !48, i64 1744, !40, i64 1776, !48, i64 1832, !39, i64 1864, !38, i64 1920, !41, i64 1976, !49, i64 2032}
!51 = !{!50, !31, i64 24}
!52 = !{!"_ZTS18b3AlignedAllocatorI10b3SortDataLj16EE"}
!53 = !{!"p1 _ZTS10b3SortData", !28, i64 0}
!54 = !{!"_ZTS20b3AlignedObjectArrayI10b3SortDataE", !52, i64 0, !22, i64 4, !22, i64 8, !53, i64 16, !36, i64 24}
!55 = !{!54, !36, i64 24}
!56 = !{!54, !53, i64 16}
!57 = !{!54, !22, i64 4}
!58 = !{!54, !22, i64 8}
!59 = !{!"_ZTS18b3AlignedAllocatorI14b3UnsignedInt2Lj16EE"}
!60 = !{!"p1 _ZTS14b3UnsignedInt2", !28, i64 0}
!61 = !{!"_ZTS20b3AlignedObjectArrayI14b3UnsignedInt2E", !59, i64 0, !22, i64 4, !22, i64 8, !60, i64 16, !36, i64 24}
!62 = !{!61, !36, i64 24}
!63 = !{!61, !60, i64 16}
!64 = !{!61, !22, i64 4}
!65 = !{!61, !22, i64 8}
!66 = !{!38, !29, i64 32}
!67 = !{!38, !31, i64 40}
!68 = !{!38, !36, i64 49}
!69 = !{!39, !29, i64 32}
!70 = !{!39, !31, i64 40}
!71 = !{!39, !36, i64 49}
!72 = !{!40, !29, i64 32}
!73 = !{!40, !31, i64 40}
!74 = !{!40, !36, i64 49}
!75 = !{!50, !22, i64 1368}
!76 = !{!41, !29, i64 32}
!77 = !{!41, !31, i64 40}
!78 = !{!41, !36, i64 49}
!79 = !{!44, !36, i64 24}
!80 = !{!44, !43, i64 16}
!81 = !{!44, !22, i64 4}
!82 = !{!44, !22, i64 8}
!83 = !{!45, !29, i64 32}
!84 = !{!45, !31, i64 40}
!85 = !{!45, !36, i64 49}
!86 = !{!48, !36, i64 24}
!87 = !{!48, !47, i64 16}
!88 = !{!48, !22, i64 4}
!89 = !{!48, !22, i64 8}
!90 = !{!22, !22, i64 0}
!91 = !{!50, !49, i64 2032}
!92 = !{!50, !32, i64 56}
!93 = !{!50, !32, i64 64}
!94 = !{!50, !32, i64 72}
!95 = !{!50, !32, i64 32}
!96 = !{!50, !32, i64 48}
!97 = !{!50, !32, i64 40}
!98 = !{!50, !33, i64 80}
!99 = !{i8 0, i8 2}
!100 = !{!41, !35, i64 24}
!101 = !{!28, !28, i64 0}
!102 = !{!38, !35, i64 24}
!103 = !{!39, !35, i64 24}
!104 = !{!40, !35, i64 24}
!105 = !{!45, !35, i64 24}
!106 = !{!37, !35, i64 24}
!107 = !{ptr @_ZN13b3OpenCLArrayI9b3SapAabbED2Ev}
!108 = !{ptr @_ZN13b3OpenCLArrayI10b3SortDataED2Ev}
!109 = !{ptr @_ZN13b3OpenCLArrayI6b3Int4ED2Ev}
!110 = !{ptr @_ZN13b3OpenCLArrayIiED2Ev}
!111 = !{ptr @_ZN13b3OpenCLArrayI9b3Vector3ED2Ev}
!112 = !{ptr @_ZN13b3OpenCLArrayI14b3UnsignedInt2ED2Ev}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = !{}
!116 = !{!21, !21, i64 0}
!117 = !{!41, !34, i64 8}
!118 = !{!41, !34, i64 16}
!119 = !{!"_ZTS18b3AlignedAllocatorI6b3Int4Lj16EE"}
!120 = !{!"p1 _ZTS6b3Int4", !28, i64 0}
!121 = !{!"_ZTS20b3AlignedObjectArrayI6b3Int4E", !119, i64 0, !22, i64 4, !22, i64 8, !120, i64 16, !36, i64 24}
!122 = !{!121, !120, i64 16}
!123 = !{!121, !22, i64 4}
!124 = !{!121, !22, i64 8}
!125 = !{!121, !36, i64 24}
!126 = !{i64 0, i64 16, !116}
!127 = !{!"llvm.loop.isvectorized", i32 1}
!128 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
