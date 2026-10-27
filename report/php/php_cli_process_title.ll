Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/php_cli_process_title?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cli_set_process_title had an error: %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"cli_get_process_title had an error: %s\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @zif_cli_set_process_title(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.d, ptr noundef nonnull @.str, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.h = load i64, ptr %i.b, align 8, !tbaa !17
  %i.i = call i32 @set_ps_title(ptr noundef %i.g, i64 noundef %i.h) #4 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call ptr @ps_title_errno(i32 noundef %i.i) #4
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef %i.k) #4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ 2, %bb.c ], [ 3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sink, ptr %i.l, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @zend_parse_parameters(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @set_ps_title(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @php_error_docref(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @ps_title_errno(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @zif_cli_get_process_title(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 0, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #4
  br label %bb.d

.critedge:                                        ; preds = %bb.a
  %i.e = call i32 @get_ps_title(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4 ; 2 uses
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %zend_string_alloc.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.f = call ptr @ps_title_errno(i32 noundef %i.e) #4
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %i.f) #4
  br label %.sink.split

zend_string_alloc.exit:                           ; preds = %.critedge
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.h = load i64, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.i = and i64 %i.h, -8
  %i.j = add i64 %i.i, 32
  %i.k = call noalias ptr @_emalloc(i64 noundef %i.j) #5 ; 6 uses
  store i32 1, ptr %i.k, align 4, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 22, ptr %i.l, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.h, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 1 %i.g, i64 %i.h, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store i8 0, ptr %i.p, align 1, !tbaa !15
  store ptr %i.k, ptr %1, align 8, !tbaa !15
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %zend_string_alloc.exit
  %.sink = phi i32 [ 262, %zend_string_alloc.exit ], [ 1, %bb.c ]
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sink, ptr %2, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

declare void @zend_wrong_parameters_none_error() local_unnamed_addr #2

declare i32 @get_ps_title(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{!"_zend_refcounted_h", !9, i64 0, !8, i64 4}
!20 = !{!19, !9, i64 0}
!21 = !{!"_zend_string", !19, i64 0, !16, i64 8, !16, i64 16, !8, i64 24}
!22 = !{!21, !16, i64 8}
!23 = !{!21, !16, i64 16}
end_hunk_0
