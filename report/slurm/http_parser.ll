Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/http_parser?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }
%struct.ops_t = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"http_parser\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"http_parser/libhttp_parser\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"http_parser/llhttp_parser\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: pthread_rwlock_wrlock(): %m\00", align 1
@__func__.http_parser_g_init = private unnamed_addr constant [19 x i8] c"http_parser_g_init\00", align 1
@plugin_inited = internal unnamed_addr global i1 false, align 4
@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@ops = internal global %struct.ops_t zeroinitializer, align 8
@syms = internal global [3 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12], align 16
@g_context = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"cannot create %s context for %s\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"%s: pthread_rwlock_unlock(): %m\00", align 1
@__func__.http_parser_g_fini = private unnamed_addr constant [19 x i8] c"http_parser_g_fini\00", align 1
@context_lock = internal global { { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32, [4 x i8] } } zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"http_parser_p_new_parse_request\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"http_parser_p_free_parse_request\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"http_parser_p_parse_request\00", align 1

@slurm_http_parser_g_init = dso_local alias i32 (), ptr @http_parser_g_init
@slurm_http_parser_g_fini = dso_local alias void (), ptr @http_parser_g_fini
@slurm_http_parser_g_new_parse_request = dso_local alias i32 (ptr, ptr, ptr, ptr), ptr @http_parser_g_new_parse_request
@slurm_http_parser_g_free_parse_request = dso_local alias void (ptr), ptr @http_parser_g_free_parse_request
@slurm_http_parser_g_parse_request = dso_local alias i32 (ptr, ptr, ptr), ptr @http_parser_g_parse_request

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @http_parser_g_init() #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8
  %i.b = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull @context_lock) #6 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #7
  store i32 %i.b, ptr %i.c, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.http_parser_g_init) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %.b17 = load i1, ptr @plugin_inited, align 4
  br i1 %.b17, label %bb.i, label %.preheader.a

.preheader.a:                                     ; preds = %bb.c
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 472), align 8 ; 2 uses
  %.not18.peel = icmp eq ptr %.pre, null
  %.011.peel = select i1 %.not18.peel, ptr @.str.1, ptr %.pre ; 2 uses
  %0 = tail call ptr @plugin_context_create(ptr noundef nonnull @.str, ptr noundef nonnull %.011.peel, ptr noundef nonnull @ops, ptr noundef nonnull @syms, i64 noundef 24) #6 ; 2 uses
  store ptr %0, ptr @g_context, align 8
  %.not18 = icmp eq ptr %0, null
  br i1 %.not18, label %bb.d, label %.thread

bb.d:                                             ; preds = %.preheader.a
  %1 = load ptr, ptr %i.a, align 8
  %.not20.peel = icmp eq ptr %1, null
  %2 = select i1 %.not20.peel, ptr @.str.6, ptr @.str.5
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, ptr noundef nonnull %.011.peel) #6
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 472), align 8
  %.not21.peel = icmp eq ptr %i.d, null
  br i1 %.not21.peel, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = call ptr @plugin_context_create(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull @ops, ptr noundef nonnull @syms, i64 noundef 24) #6 ; 2 uses
  store ptr %i.e, ptr @g_context, align 8
  %.not19 = icmp eq ptr %i.e, null
  br i1 %.not19, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e, %.preheader.a
  store i1 true, ptr @plugin_inited, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %i.a, align 8
  %.not20 = icmp eq ptr %i.f, null
  %i.g = select i1 %.not20, ptr @.str.6, ptr @.str.5
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.2) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.b.pr = load i1, ptr @plugin_inited, align 4
  br i1 %.b.pr, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, ptr noundef %i.h) #6 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.g, %bb.h, %bb.c
  %.012 = phi i32 [ 0, %bb.c ], [ -1, %bb.h ], [ 0, %bb.g ], [ 0, %.thread ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #6
  %i.j = call i32 @pthread_rwlock_unlock(ptr noundef nonnull @context_lock) #6 ; 2 uses
  %.not23 = icmp eq i32 %i.j, 0
  br i1 %.not23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = tail call ptr @__errno_location() #7
  store i32 %i.j, ptr %i.k, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.http_parser_g_init) #8
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define dso_local void @http_parser_g_fini() #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull @context_lock) #6 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #7
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.http_parser_g_fini) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @g_context, align 8        ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @plugin_context_destroy(ptr noundef nonnull %i.c) #6 ; 0 uses
  store ptr null, ptr @g_context, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i1 false, ptr @plugin_inited, align 4
  %i.e = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull @context_lock) #6 ; 2 uses
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call ptr @__errno_location() #7
  store i32 %i.e, ptr %i.f, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.http_parser_g_fini) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @http_parser_g_new_parse_request(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %.b = load i1, ptr @plugin_inited, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @ops, align 8
  %i.b = tail call i32 %i.a(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 8004, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @http_parser_g_free_parse_request(ptr noundef %0) #0 {
bb.a:
  %.b = load i1, ptr @plugin_inited, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 8), align 8
  tail call void %i.a(ptr noundef %0) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @http_parser_g_parse_request(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %.b = load i1, ptr @plugin_inited, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 16), align 8
  %i.b = tail call i32 %i.a(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 8004, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @plugin_context_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_xstrfmtcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare i32 @error(ptr noundef, ...) local_unnamed_addr #5

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) local_unnamed_addr #2

declare i32 @plugin_context_destroy(ptr noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
end_hunk_0
