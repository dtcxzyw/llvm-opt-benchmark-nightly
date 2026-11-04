Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/url_parser?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }
%struct.ops_t = type { ptr }

@.str = private unnamed_addr constant [11 x i8] c"url_parser\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"http_parser/libhttp_parser\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"url_parser/internal\00", align 1
@__const.url_parser_g_init.url_parser_types = private unnamed_addr constant [2 x ptr] [ptr @.str.1, ptr @.str.2], align 16
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: pthread_rwlock_wrlock(): %m\00", align 1
@__func__.url_parser_g_init = private unnamed_addr constant [18 x i8] c"url_parser_g_init\00", align 1
@plugin_inited = internal unnamed_addr global i1 false, align 4
@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"libhttp_parser\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"url_parser/libhttp_parser\00", align 1
@ops = internal global %struct.ops_t zeroinitializer, align 8
@syms = internal global [1 x ptr] [ptr @.str.12], align 8
@g_context = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"cannot create %s context for %s\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"%s: pthread_rwlock_unlock(): %m\00", align 1
@__func__.url_parser_g_fini = private unnamed_addr constant [18 x i8] c"url_parser_g_fini\00", align 1
@context_lock = internal global { { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32, [4 x i8] } } zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"url_parser_p_parse\00", align 1

@slurm_url_parser_g_init = dso_local alias i32 (), ptr @url_parser_g_init
@slurm_url_parser_g_fini = dso_local alias void (), ptr @url_parser_g_fini
@slurm_url_parser_g_parse = dso_local alias i32 (ptr, ptr, ptr), ptr @url_parser_g_parse

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @url_parser_g_init() #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8
  %i.b = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull @context_lock) #6 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #7
  store i32 %i.b, ptr %i.c, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.url_parser_g_init) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %.b18 = load i1, ptr @plugin_inited, align 4
  br i1 %.b18, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1608), align 8 ; 3 uses
  %i.e = tail call i32 @xstrcmp(ptr noundef %i.d, ptr noundef nonnull @.str.4) #6
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @xstrcmp(ptr noundef %i.d, ptr noundef nonnull @.str.5) #6
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.013 = phi ptr [ %i.d, %bb.e ], [ @.str.1, %bb.f ]
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1608), align 8
  %i.g = icmp eq ptr %.pre, null
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.not21 = phi i1 [ %i.g, %bb.g ], [ true, %bb.j ]
  %0 = phi i1 [ true, %bb.g ], [ false, %bb.j ]
  %indvars.iv = phi i64 [ 0, %bb.g ], [ 1, %bb.j ]
  %.128 = phi ptr [ %.013, %bb.g ], [ %.2, %bb.j ]
  br i1 %.not21, label %1, label %bb.i

1:                                                ; preds = %bb.h
  %2 = getelementptr inbounds nuw [8 x i8], ptr @__const.url_parser_g_init.url_parser_types, i64 %indvars.iv
  %3 = load ptr, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %1, %bb.h
  %.2 = phi ptr [ %.128, %bb.h ], [ %3, %1 ]      ; 3 uses
  %i.h = call ptr @plugin_context_create(ptr noundef nonnull @.str, ptr noundef %.2, ptr noundef nonnull @ops, ptr noundef nonnull @syms, i64 noundef 8) #6 ; 2 uses
  store ptr %i.h, ptr @g_context, align 8
  %.not22.not.not = icmp ne ptr %i.h, null        ; 2 uses
  br i1 %.not22.not.not, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = load ptr, ptr %i.a, align 8
  %.not23 = icmp eq ptr %i.i, null
  %i.j = select i1 %.not23, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.j, ptr noundef %.2) #6
  %4 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1608), align 8
  %.not24 = icmp eq ptr %4, null
  %or.cond = and i1 %.not24, %0
  br i1 %or.cond, label %bb.h, label %bb.k, !llvm.loop !8

bb.k:                                             ; preds = %bb.j
  %.b.pr = load i1, ptr @plugin_inited, align 4
  br i1 %.b.pr, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.k = load ptr, ptr %i.a, align 8
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, ptr noundef %i.k) #6
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.l
  %.014.ph = phi i32 [ -1, %bb.l ], [ 0, %bb.i ]
  store i1 %.not22.not.not, ptr @plugin_inited, align 4
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.k, %bb.c
  %.014 = phi i32 [ 0, %bb.c ], [ 0, %bb.k ], [ %.014.ph, %.sink.split ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #6
  %i.l = call i32 @pthread_rwlock_unlock(ptr noundef nonnull @context_lock) #6 ; 2 uses
  %.not26 = icmp eq i32 %i.l, 0
  br i1 %.not26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.m = tail call ptr @__errno_location() #7
  store i32 %i.l, ptr %i.m, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.url_parser_g_init) #8
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define dso_local void @url_parser_g_fini() #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull @context_lock) #6 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #7
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.url_parser_g_fini) #8
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
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.url_parser_g_fini) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @url_parser_g_parse(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %.b = load i1, ptr @plugin_inited, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @ops, align 8
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

declare i32 @xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @plugin_context_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_xstrfmtcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @warning(ptr noundef, ...) local_unnamed_addr #5

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
