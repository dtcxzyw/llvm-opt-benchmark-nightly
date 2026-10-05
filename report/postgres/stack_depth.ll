Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/stack_depth?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rlimit = type { i64, i64 }

@max_stack_depth = dso_local local_unnamed_addr global i32 100, align 4
@stack_base_ptr = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [27 x i8] c"stack depth limit exceeded\00", align 1
@.str.1 = private unnamed_addr constant [134 x i8] c"Increase the configuration parameter \22max_stack_depth\22 (currently %dkB), after ensuring the platform's stack depth limit is adequate.\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"stack_depth.c\00", align 1
@__func__.check_stack_depth = private unnamed_addr constant [18 x i8] c"check_stack_depth\00", align 1
@max_stack_depth_bytes = internal unnamed_addr global i64 102400, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"\22max_stack_depth\22 must not exceed %zdkB.\00", align 1
@GUC_check_errdetail_string = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [79 x i8] c"Increase the platform's stack depth limit via \22ulimit -s\22 or local equivalent.\00", align 1
@GUC_check_errhint_string = external local_unnamed_addr global ptr, align 8
@get_stack_depth_rlimit.val = internal unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @set_stack_base() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @stack_base_ptr, align 8
  %i.b = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.b, ptr @stack_base_ptr, align 8
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @restore_stack_base(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  store ptr %0, ptr @stack_base_ptr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @check_stack_depth() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.b = load ptr, ptr @stack_base_ptr, align 8   ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.e, i1 false)
  %i.f = load i64, ptr @max_stack_depth_bytes, align 8
  %i.g = icmp sgt i64 %spec.select.i, %i.f
  %i.h = icmp ne ptr %i.b, null
  %or.cond.i = and i1 %i.h, %i.g
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %0 = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %1 = tail call i32 @errcode(i32 noundef 16777477) #13 ; 0 uses
  %2 = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #13 ; 0 uses
  %i.i = load i32, ptr @max_stack_depth, align 4
  %3 = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.1, i32 noundef %i.i) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 105, ptr noundef nonnull @__func__.check_stack_depth) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @stack_is_too_deep() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.b = load ptr, ptr @stack_base_ptr, align 8   ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.e, i1 false)
  %i.f = load i64, ptr @max_stack_depth_bytes, align 8
  %i.g = icmp sgt i64 %spec.select, %i.f
  %i.h = icmp ne ptr %i.b, null
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  ret i1 %or.cond
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @errcode(i32 noundef) local_unnamed_addr #7

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #7

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #7

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @check_max_stack_depth(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.rlimit, align 8             ; 4 uses
  %i.a = load i32, ptr %0, align 4
  %i.b = load i64, ptr @get_stack_depth_rlimit.val, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %get_stack_depth_rlimit.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.d = call i32 @getrlimit(i32 noundef 3, ptr noundef nonnull %3) #13
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %3, align 8                ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %..i = call i64 @llvm.umin.i64(i64 %i.f, i64 9223372036854775807)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink.i = phi i64 [ -1, %bb.b ], [ 9223372036854775807, %bb.c ], [ %..i, %bb.d ] ; 2 uses
  store i64 %.sink.i, ptr @get_stack_depth_rlimit.val, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %get_stack_depth_rlimit.exit

get_stack_depth_rlimit.exit:                      ; preds = %bb.a, %bb.e
  %i.h = phi i64 [ %.sink.i, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %get_stack_depth_rlimit.exit
  %i.j = sext i32 %i.a to i64
  %i.k = shl nsw i64 %i.j, 10
  %i.l = add nsw i64 %i.h, -524288                ; 2 uses
  %i.m = icmp sgt i64 %i.k, %i.l
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr @__errno_location() #14    ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  call void @pre_format_elog_string(i32 noundef %i.o, ptr noundef null) #13
  %i.p = sdiv i64 %i.l, 1024
  %i.q = call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.3, i64 noundef %i.p) #13
  store ptr %i.q, ptr @GUC_check_errdetail_string, align 8
  %i.r = load i32, ptr %i.n, align 4
  call void @pre_format_elog_string(i32 noundef %i.r, ptr noundef null) #13
  %i.s = call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.4) #13
  store ptr %i.s, ptr @GUC_check_errhint_string, align 8
  br label %bb.h

bb.h:                                             ; preds = %get_stack_depth_rlimit.exit, %bb.f, %bb.g
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ], [ true, %get_stack_depth_rlimit.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @get_stack_depth_rlimit() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %struct.rlimit, align 8             ; 4 uses
  %i.a = load i64, ptr @get_stack_depth_rlimit.val, align 8 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  %i.c = call i32 @getrlimit(i32 noundef 3, ptr noundef nonnull %0) #13
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %. = call i64 @llvm.umin.i64(i64 %i.e, i64 9223372036854775807)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i64 [ -1, %bb.b ], [ 9223372036854775807, %bb.c ], [ %., %bb.d ] ; 2 uses
  store i64 %.sink, ptr @get_stack_depth_rlimit.val, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.g = phi i64 [ %.sink, %bb.e ], [ %i.a, %bb.a ]
  ret i64 %i.g
}

declare void @pre_format_elog_string(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare ptr @format_elog_string(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @assign_max_stack_depth(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = shl nsw i64 %i.a, 10
  store i64 %i.b, ptr @max_stack_depth_bytes, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @getrlimit(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
end_hunk_0
