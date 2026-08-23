Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/frozenmain?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PyConfig = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.PyWideStringList, %struct.PyWideStringList, %struct.PyWideStringList, %struct.PyWideStringList, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.PyWideStringList, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.PyWideStringList = type { i64, ptr }
%struct.PyStatus = type { i32, ptr, ptr, i32 }

@.str = private unnamed_addr constant [14 x i8] c"PYTHONINSPECT\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Python %s\0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"__main__\00", align 1
@__func__.Py_FrozenMain = private unnamed_addr constant [14 x i8] c"Py_FrozenMain\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"the __main__ module is not frozen\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 121) i32 @Py_FrozenMain(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.PyConfig, align 8           ; 9 uses
  %3 = alloca %struct.PyStatus, align 8           ; 8 uses
  %4 = alloca %struct.PyStatus, align 8           ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @PyConfig_InitPythonConfig(ptr noundef nonnull %2) #7
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 284
  store i32 0, ptr %i.b, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 0, ptr %i.c, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.d = sext i32 %0 to i64
  call void @PyConfig_SetBytesArgv(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %3, ptr noundef nonnull %2, i64 noundef %i.d, ptr noundef %1) #7
  %i.e = call i32 @PyStatus_Exception(ptr noundef nonnull byval(%struct.PyStatus) align 8 %3) #7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @PyConfig_Clear(ptr noundef nonnull %2) #7
  call void @Py_ExitStatusException(ptr noundef nonnull byval(%struct.PyStatus) align 8 %3) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call ptr @Py_GETENV(ptr noundef nonnull @.str) #7 ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.f, align 1, !tbaa !20
  %.not12 = icmp eq i8 %i.g, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not15 = phi i1 [ true, %bb.c ], [ %.not12, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @Py_InitializeFromConfig(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %4, ptr noundef nonnull %2) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @PyConfig_Clear(ptr noundef nonnull %2) #7
  %i.h = call i32 @PyStatus_Exception(ptr noundef nonnull byval(%struct.PyStatus) align 8 %3) #7
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @Py_ExitStatusException(ptr noundef nonnull byval(%struct.PyStatus) align 8 %3) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = call ptr @PyInterpreterState_Get() #7    ; 2 uses
  %i.j = call i32 @_PyInterpreterState_SetRunningMain(ptr noundef %i.i) #7
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @PyErr_Print() #7
  call void @exit(i32 noundef 1) #9
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.l = call i32 @PyConfig_GetInt(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #7
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.a, align 4, !tbaa !7
  call void @PyErr_Clear() #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.n = load i32, ptr %i.a, align 4, !tbaa !7
  %.not14 = icmp eq i32 %i.n, 0
  br i1 %.not14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.p = call ptr @Py_GetVersion() #7
  %i.q = call ptr @Py_GetCopyright() #7
  %i.r = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.2, ptr noundef %i.p, ptr noundef %i.q) #10 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.s = call i32 @PyImport_ImportFrozenModule(ptr noundef nonnull @.str.3) #7 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.Py_FrozenMain, ptr noundef nonnull @.str.4) #8
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.u = icmp slt i32 %i.s, 0
  br i1 %i.u, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @PyErr_Print() #7
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0 = phi i32 [ 1, %bb.p ], [ 0, %bb.o ]        ; 2 uses
  br i1 %.not15, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = load ptr, ptr @stdin, align 8, !tbaa !24
  %i.w = call i32 @fileno(ptr noundef %i.v) #7
  %i.x = call i32 @isatty(i32 noundef %i.w) #7
  %.not16 = icmp eq i32 %i.x, 0
  br i1 %.not16, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.y = load ptr, ptr @stdin, align 8, !tbaa !24
  %i.z = call i32 @PyRun_AnyFileExFlags(ptr noundef %i.y, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef null) #7
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.1 = phi i32 [ %i.ab, %bb.s ], [ %.0, %bb.r ], [ %.0, %bb.q ]
  call void @_PyInterpreterState_SetNotRunningMain(ptr noundef %i.i) #7
  %i.ac = call i32 @Py_FinalizeEx() #7
  %i.ad = icmp slt i32 %i.ac, 0
  %spec.select17 = select i1 %i.ad, i32 120, i32 %.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %spec.select17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @PyConfig_InitPythonConfig(ptr noundef) local_unnamed_addr #2

declare void @PyConfig_SetBytesArgv(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyStatus_Exception(ptr noundef byval(%struct.PyStatus) align 8) local_unnamed_addr #2

declare void @PyConfig_Clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @Py_ExitStatusException(ptr noundef byval(%struct.PyStatus) align 8) local_unnamed_addr #3

declare ptr @Py_GETENV(ptr noundef) local_unnamed_addr #2

declare void @Py_InitializeFromConfig(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @PyInterpreterState_Get() local_unnamed_addr #2

declare i32 @_PyInterpreterState_SetRunningMain(ptr noundef) local_unnamed_addr #2

declare void @PyErr_Print() local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare i32 @PyConfig_GetInt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PyErr_Clear() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @Py_GetVersion() local_unnamed_addr #2

declare ptr @Py_GetCopyright() local_unnamed_addr #2

declare i32 @PyImport_ImportFrozenModule(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Py_FatalErrorFunc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @PyRun_AnyFileExFlags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_PyInterpreterState_SetNotRunningMain(ptr noundef) local_unnamed_addr #2

declare i32 @Py_FinalizeEx() local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 284}
!12 = !{!"PyConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !13, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !14, i64 64, !8, i64 72, !8, i64 76, !14, i64 80, !14, i64 88, !14, i64 96, !8, i64 104, !16, i64 112, !16, i64 128, !16, i64 144, !16, i64 160, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !8, i64 320, !16, i64 328, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !14, i64 376, !14, i64 384, !14, i64 392, !8, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !8, i64 440, !8, i64 444, !8, i64 448}
!13 = !{!"long", !9, i64 0}
!14 = !{!"p1 int", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"", !13, i64 0, !17, i64 8}
!17 = !{!"p2 int", !18, i64 0}
!18 = !{!"any p2 pointer", !15, i64 0}
!19 = !{!12, !8, i64 104}
!20 = !{!9, !9, i64 0}
!21 = !{i64 0, i64 4, !7, i64 8, i64 8, !22, i64 16, i64 8, !22, i64 24, i64 4, !7}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 omnipotent char", !15, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
end_hunk_0
