inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._object = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.PyCompilerFlags = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"run_stringflags\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"run_fileexflags\00", align 1
@test_methods = internal global [3 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str, ptr @run_stringflags, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.1, ptr @run_fileexflags, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"z#iO|Oii\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"z#iO|Oiii\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@PyExc_OSError = external local_unnamed_addr global ptr, align 8
@PyExc_AssertionError = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"File was not closed after execution\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Bad file descriptor after execution\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyTestCapi_Init_Run(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PyModule_AddFunctions(ptr noundef %0, ptr noundef nonnull @test_methods) #4
  %.lobit = ashr i32 %i.a, 31
  ret i32 %.lobit
}

declare i32 @PyModule_AddFunctions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @run_stringflags(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct.PyCompilerFlags, align 8    ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store ptr null, ptr %i.d, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store ptr null, ptr %i.e, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  store i64 64424509440, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 0, ptr %i.f, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i32 0, ptr %i.g, align 4, !tbaa !6
  %i.h = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %i.j = icmp eq ptr %i.i, @_Py_NoneStruct
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.d, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ null, %bb.c ]
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10   ; 2 uses
  %i.m = icmp eq ptr %i.l, @_Py_NoneStruct
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.e, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = phi ptr [ null, %bb.e ], [ %i.l, %bb.d ]
  %i.o = load i32, ptr %i.f, align 4, !tbaa !6    ; 2 uses
  %i.p = icmp ne i32 %i.o, 0
  %i.q = load i32, ptr %i.g, align 4              ; 2 uses
  %i.r = icmp ne i32 %i.q, 0
  %or.cond = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.o, ptr %2, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.q, ptr %i.s, align 4, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi ptr [ %2, %bb.g ], [ null, %bb.f ]
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.u = load i32, ptr %i.c, align 4, !tbaa !6
  %i.v = call ptr @PyRun_StringFlags(ptr noundef %i.t, i32 noundef %i.u, ptr noundef %i.k, ptr noundef %i.n, ptr noundef %.0) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.04 = phi ptr [ %i.v, %bb.h ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.04
}

; Function Attrs: nounwind uwtable
define internal ptr @run_fileexflags(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %2 = alloca %struct.PyCompilerFlags, align 8    ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store ptr null, ptr %i.d, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store ptr null, ptr %i.e, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 0, ptr %i.f, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  store i64 64424509440, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i32 0, ptr %i.g, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  store i32 0, ptr %i.h, align 4, !tbaa !6
  %i.i = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.k = icmp eq ptr %i.j, @_Py_NoneStruct
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.d, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.m = icmp eq ptr %i.l, @_Py_NoneStruct
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.e, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = load i32, ptr %i.g, align 4, !tbaa !6    ; 2 uses
  %i.o = icmp ne i32 %i.n, 0
  %i.p = load i32, ptr %i.h, align 4              ; 2 uses
  %i.q = icmp ne i32 %i.p, 0
  %or.cond = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.n, ptr %2, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.p, ptr %i.r, align 4, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.016 = phi ptr [ %2, %bb.g ], [ null, %bb.f ]
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.t = call noalias ptr @fopen64(ptr noundef %i.s, ptr noundef nonnull @.str.5) ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @PyExc_OSError, align 8, !tbaa !10
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.x = call ptr @PyErr_SetFromErrnoWithFilename(ptr noundef %i.v, ptr noundef %i.w) #4 ; 0 uses
  br label %Py_XDECREF.exit

bb.j:                                             ; preds = %bb.h
  %i.y = call i32 @fileno(ptr noundef nonnull %i.t) #4 ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !6
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.ad = load i32, ptr %i.f, align 4, !tbaa !6
  %i.ae = call ptr @PyRun_FileExFlags(ptr noundef nonnull %i.t, ptr noundef %i.z, i32 noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ac, i32 noundef %i.ad, ptr noundef %.016) #4 ; 11 uses
  %i.af = load i32, ptr %i.f, align 4, !tbaa !6   ; 2 uses
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = icmp ne ptr %i.ae, null
  %or.cond3 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ai = call i32 @_Py_IsValidFD(i32 noundef %i.y) #4
  %.not19 = icmp eq i32 %i.ai, 0
  br i1 %.not19, label %thread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.aj, ptr noundef nonnull @.str.6) #4
  %i.ak = load i32, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.ae, align 8, !tbaa !18
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %Py_DECREF.exit

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.l, %bb.m, %bb.n
  %3 = call i32 @fclose(ptr noundef nonnull %i.t) ; 0 uses
  br label %Py_XDECREF.exit

thread-pre-split:                                 ; preds = %bb.k
  %.pr = load i32, ptr %i.f, align 4, !tbaa !6
  br label %bb.o

bb.o:                                             ; preds = %thread-pre-split, %bb.j
  %i.an = phi i32 [ %.pr, %thread-pre-split ], [ %i.af, %bb.j ]
  %.not20 = icmp eq i32 %i.an, 0
  br i1 %.not20, label %bb.p, label %Py_XDECREF.exit

bb.p:                                             ; preds = %bb.o
  %i.ao = call i32 @_Py_IsValidFD(i32 noundef %i.y) #4
  %.not21 = icmp eq i32 %i.ao, 0
  br i1 %.not21, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.ap, ptr noundef nonnull @.str.7) #4
  %.not.i23 = icmp eq ptr %i.ae, null
  br i1 %.not.i23, label %Py_XDECREF.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = load i32, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aq, -1
  br i1 %.not.i.i, label %bb.s, label %Py_XDECREF.exit

bb.s:                                             ; preds = %bb.r
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.ae, align 8, !tbaa !18
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.t, label %Py_XDECREF.exit

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #4
  br label %Py_XDECREF.exit

bb.u:                                             ; preds = %bb.p
  %.pre = load i32, ptr %i.f, align 4, !tbaa !6
  %i.at = icmp eq i32 %.pre, 0
  br i1 %i.at, label %bb.v, label %Py_XDECREF.exit

bb.v:                                             ; preds = %bb.u
  %i.au = call i32 @fclose(ptr noundef nonnull %i.t) ; 0 uses
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.o, %bb.t, %bb.s, %bb.r, %bb.q, %Py_DECREF.exit, %bb.v, %bb.u, %bb.a, %bb.i
  %.1 = phi ptr [ null, %bb.i ], [ null, %bb.a ], [ null, %Py_DECREF.exit ], [ %i.ae, %bb.u ], [ %i.ae, %bb.v ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.t ], [ %i.ae, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @PyArg_ParseTuple(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyRun_StringFlags(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

declare ptr @PyErr_SetFromErrnoWithFilename(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @PyRun_FileExFlags(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_Py_IsValidFD(i32 noundef) local_unnamed_addr #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS7_object", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"", !7, i64 0, !7, i64 4}
!15 = !{!14, !7, i64 4}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!8, !8, i64 0}
end_hunk_0
