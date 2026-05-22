inline.NumInlined: 15
inline.NumDeleted: 4
begin_hunk_0_@test_critical_sections_threads:bb.a
  call void @_Py_Dealloc(ptr noundef nonnull %i.t) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit5, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @test_critical_sections_gc(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.test_data_gc, align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.a = tail call ptr @PyDict_New() #5           ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 3, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  store i64 0, ptr %i.e, align 8
  br i1 %.not, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.f = call i64 @PyThread_start_new_thread(ptr noundef nonnull @thread_gc, ptr noundef nonnull %2) #5 ; 0 uses
  %i.g = call i64 @PyThread_start_new_thread(ptr noundef nonnull @thread_gc, ptr noundef nonnull %2) #5 ; 0 uses
  %i.h = call i64 @PyThread_start_new_thread(ptr noundef nonnull @thread_gc, ptr noundef nonnull %2) #5 ; 0 uses
  call void @PyEvent_Wait(ptr noundef nonnull %i.e) #5
  %i.i = load ptr, ptr %2, align 8, !tbaa !33     ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, i32 noundef 277, ptr noundef nonnull @__PRETTY_FUNCTION__.test_critical_sections_gc) #6
  unreachable

bb.c:                                             ; preds = %.preheader.preheader
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !26
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.i) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.preheader.preheader, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @test_critical_sections_stw(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.test_data_stw, align 8      ; 9 uses
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.c = tail call ptr @PyDict_New() #5           ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.c, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.h = call i32 @PyThread_start_joinable_thread(ptr noundef nonnull @thread_stw, ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = call i32 @PyThread_start_joinable_thread(ptr noundef nonnull @thread_stw, ptr noundef nonnull %2, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #5 ; 0 uses
  call void @PyEvent_Wait(ptr noundef nonnull %i.g) #5
  %i.l = call i32 @usleep(i32 noundef 5000) #5    ; 0 uses
  %i.m = call ptr @PyInterpreterState_Get() #5    ; 2 uses
  call void @_PyEval_StopTheWorld(ptr noundef %i.m) #5
  call void @_PyEval_StartTheWorld(ptr noundef %i.m) #5
  %i.n = load i64, ptr %i.a, align 16, !tbaa !41
  %i.o = call i32 @PyThread_join_thread(i64 noundef %i.n) #5 ; 0 uses
  %i.p = load i64, ptr %i.j, align 8, !tbaa !41
  %i.q = call i32 @PyThread_join_thread(i64 noundef %i.p) #5 ; 0 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !38     ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !26
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %Py_DECREF.exit
  %.09 = phi ptr [ @_Py_NoneStruct, %Py_DECREF.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret ptr %.09
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @PyDict_New() local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyThreadState_Get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyEval_SaveThread() local_unnamed_addr #1

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i64 @PyThread_start_new_thread(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @thread_critical_sections(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @PyGILState_Ensure() #5
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  tail call void @PyGILState_Release(i32 noundef %i.a) #5
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = atomicrmw add ptr %i.b, i64 -1 seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.c
  %.08 = phi i64 [ 0, %bb.a ], [ %i.f, %bb.c ]
  %i.e = tail call ptr @PyEval_SaveThread() #5
  tail call void @PyEval_RestoreThread(ptr noundef %i.e) #5
  %i.f = add nuw nsw i64 %.08, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, 200
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !42

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 32
  tail call void @_PyEvent_Notify(ptr noundef %i.g) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

declare void @PyEvent_Wait(ptr noundef) local_unnamed_addr #1

declare i32 @PyGILState_Ensure() local_unnamed_addr #1

declare void @PyGILState_Release(i32 noundef) local_unnamed_addr #1

declare void @_PyEvent_Notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @thread_gc(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @PyGILState_Ensure() #5
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = atomicrmw add ptr %i.b, i64 1 seq_cst, align 8 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = add i64 %i.e, -1
  %i.g = icmp eq i64 %i.c, %i.f
  %i.h = getelementptr i8, ptr %0, i64 33         ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyEvent_Notify(ptr noundef %i.h) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @PyEvent_Wait(ptr noundef %i.h) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  switch i64 %i.c, label %bb.h [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @usleep(i32 noundef 5000) #5 ; 0 uses
  %i.j = tail call i64 @PyGC_Collect() #5         ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %1 = tail call i32 @usleep(i32 noundef 1000) #5 ; 0 uses
  %2 = tail call i32 @usleep(i32 noundef 1000) #5 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.k = tail call i32 @usleep(i32 noundef 6000) #5 ; 0 uses
  %i.l = tail call i32 @usleep(i32 noundef 1000) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.e
  tail call void @PyGILState_Release(i32 noundef %i.a) #5
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = atomicrmw add ptr %i.m, i64 -1 seq_cst, align 8
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %0, i64 32
  tail call void @_PyEvent_Notify(ptr noundef %i.p) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

declare i64 @PyGC_Collect() local_unnamed_addr #1

declare i32 @usleep(i32 noundef) local_unnamed_addr #1

declare i32 @PyThread_start_joinable_thread(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @thread_stw(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @PyGILState_Ensure() #5
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = atomicrmw add ptr %i.b, i64 1 seq_cst, align 8
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40
  %i.f = add i64 %i.e, -1
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 24
  tail call void @_PyEvent_Notify(ptr noundef %i.h) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call i32 @usleep(i32 noundef 10000) #5 ; 0 uses
  tail call void @PyGILState_Release(i32 noundef %i.a) #5
  ret void
}

declare ptr @PyInterpreterState_Get() local_unnamed_addr #1

declare void @_PyEval_StopTheWorld(ptr noundef) local_unnamed_addr #1

declare void @_PyEval_StartTheWorld(ptr noundef) local_unnamed_addr #1

declare i32 @PyThread_join_thread(i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !15, i64 192}
!11 = !{!"_ts", !12, i64 0, !12, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !17, i64 72, !17, i64 80, !17, i64 88, !13, i64 96, !13, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !19, i64 136, !18, i64 144, !7, i64 152, !18, i64 160, !15, i64 168, !15, i64 176, !18, i64 184, !15, i64 192, !7, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !15, i64 232, !15, i64 240, !20, i64 248, !21, i64 256, !21, i64 264, !23, i64 272, !18, i64 288, !24, i64 296, !15, i64 304, !18, i64 312, !18, i64 320, !25, i64 328}
!12 = !{!"p1 _ZTS3_ts", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS3_is", !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0}
!17 = !{!"p1 _ZTS19_PyInterpreterFrame", !13, i64 0}
!18 = !{!"p1 _ZTS7_object", !13, i64 0}
!19 = !{!"p1 _ZTS14_err_stackitem", !13, i64 0}
!20 = !{!"p1 _ZTS12_stack_chunk", !13, i64 0}
!21 = !{!"p2 _ZTS7_object", !22, i64 0}
!22 = !{!"any p2 pointer", !13, i64 0}
!23 = !{!"_err_stackitem", !18, i64 0, !19, i64 8}
!24 = !{!"p1 _ZTS11_PyExitData", !13, i64 0}
!25 = !{!"", !7, i64 0, !8, i64 4}
!26 = !{!8, !8, i64 0}
!27 = !{!28, !18, i64 0}
!28 = !{!"test_data", !18, i64 0, !18, i64 8, !18, i64 16, !15, i64 24, !29, i64 32}
!29 = !{!"", !8, i64 0}
!30 = !{!28, !18, i64 8}
!31 = !{!28, !18, i64 16}
!32 = !{!28, !15, i64 24}
!33 = !{!34, !18, i64 0}
!34 = !{!"test_data_gc", !18, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !29, i64 32, !29, i64 33}
!35 = !{!34, !15, i64 8}
!36 = !{!34, !15, i64 16}
!37 = !{!34, !15, i64 24}
!38 = !{!39, !18, i64 0}
!39 = !{!"test_data_stw", !18, i64 0, !15, i64 8, !15, i64 16, !29, i64 24}
!40 = !{!39, !15, i64 8}
!41 = !{!15, !15, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
end_hunk_0
