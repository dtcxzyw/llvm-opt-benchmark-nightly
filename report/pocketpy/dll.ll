Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/dll?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"py_module_initialize\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @load_module_from_dll_desktop_only(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5 ; 2 uses
  %i.b = add i64 %i.a, 4
  %i.c = tail call ptr @py_malloc(i64 noundef %i.b) #6 ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %0) #6 ; 0 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr = getelementptr inbounds i8, ptr %i.c, i64 %strlen
  store i32 7303982, ptr %endptr, align 1
  %i.e = tail call ptr @dlopen(ptr noundef nonnull %i.c, i32 noundef 1) #6 ; 2 uses
  tail call void @py_free(ptr noundef nonnull %i.c) #6
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.thread39

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = add i64 %i.a, 7
  %i.h = tail call ptr @py_malloc(i64 noundef %i.g) #6 ; 7 uses
  %.not31 = icmp eq ptr %i.h, null
  br i1 %.not31, label %.thread35.a, label %bb.c

bb.c:                                             ; preds = %.thread
  store i32 6449516, ptr %i.h, align 1
  %i.i = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %0) #6 ; 0 uses
  %strlen32 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.h)
  %endptr33 = getelementptr inbounds i8, ptr %i.h, i64 %strlen32
  store i32 7303982, ptr %endptr33, align 1
  %i.j = tail call ptr @dlopen(ptr noundef nonnull %i.h, i32 noundef 1) #6 ; 2 uses
  tail call void @py_free(ptr noundef nonnull %i.h) #6
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread35.a, label %.thread39

.thread35.a:                                      ; preds = %.thread, %bb.c
  %1 = tail call ptr @dlopen(ptr noundef nonnull %0, i32 noundef 1) #6 ; 2 uses
  %i.l = icmp eq ptr %1, null
  br i1 %i.l, label %bb.e, label %.thread39

.thread39:                                        ; preds = %bb.b, %bb.c, %.thread35.a
  %.241 = phi ptr [ %1, %.thread35.a ], [ %i.j, %bb.c ], [ %i.e, %bb.b ]
  %i.m = tail call ptr @dlsym(ptr noundef nonnull %.241, ptr noundef nonnull @.str) #6 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread39
  %i.o = tail call zeroext i1 (...) %i.m() #6
  %. = select i1 %i.o, i32 1, i32 -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread39, %.thread35.a
  %.227 = phi i32 [ 0, %.thread35.a ], [ %., %bb.d ], [ 0, %.thread39 ]
  ret i32 %.227
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

declare ptr @py_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @py_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
end_hunk_0
