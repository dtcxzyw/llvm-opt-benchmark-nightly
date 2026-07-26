inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rand_meth_st = type { ptr, ptr, ptr, ptr, ptr, ptr }

@OPENSSL_ia32cap_P = external local_unnamed_addr global [0 x i32], align 4
@rdrand_meth = internal global %struct.rand_meth_st { ptr null, ptr @get_random_bytes, ptr null, ptr null, ptr @get_random_bytes, ptr @random_status }, align 8
@.str = private unnamed_addr constant [7 x i8] c"rdrand\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Intel RDRAND engine\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @engine_load_rdrand_int() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !5
  %i.b = and i32 %i.a, 1073741824
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %ENGINE_rdrand.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ENGINE_new() #3           ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %ENGINE_rdrand.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @ENGINE_set_id(ptr noundef nonnull %i.c, ptr noundef nonnull @.str) #3
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bind_helper.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @ENGINE_set_name(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1) #3
  %.not5.i.i = icmp eq i32 %i.f, 0
  br i1 %.not5.i.i, label %bind_helper.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @ENGINE_set_flags(ptr noundef nonnull %i.c, i32 noundef 8) #3
  %.not6.i.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i.i, label %bind_helper.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @ENGINE_set_init_function(ptr noundef nonnull %i.c, ptr noundef nonnull @rdrand_init) #3
  %.not7.i.i = icmp eq i32 %i.h, 0
  br i1 %.not7.i.i, label %bind_helper.exit.thread.i, label %bind_helper.exit.i

bind_helper.exit.i:                               ; preds = %bb.f
  %i.i = tail call i32 @ENGINE_set_RAND(ptr noundef nonnull %i.c, ptr noundef nonnull @rdrand_meth) #3
  %.not8.i.not.i = icmp eq i32 %i.i, 0
  br i1 %.not8.i.not.i, label %bind_helper.exit.thread.i, label %ENGINE_rdrand.exit

bind_helper.exit.thread.i:                        ; preds = %bind_helper.exit.i, %bb.f, %bb.e, %bb.d, %bb.c
  %i.j = tail call i32 @ENGINE_free(ptr noundef nonnull %i.c) #3 ; 0 uses
  br label %ENGINE_rdrand.exit.thread

ENGINE_rdrand.exit:                               ; preds = %bind_helper.exit.i
  %i.k = tail call i32 @ERR_set_mark() #3         ; 0 uses
  %i.l = tail call i32 @ENGINE_add(ptr noundef nonnull %i.c) #3 ; 0 uses
  %i.m = tail call i32 @ENGINE_free(ptr noundef nonnull %i.c) #3 ; 0 uses
  %i.n = tail call i32 @ERR_pop_to_mark() #3      ; 0 uses
  br label %ENGINE_rdrand.exit.thread

ENGINE_rdrand.exit.thread:                        ; preds = %bb.b, %bind_helper.exit.thread.i, %ENGINE_rdrand.exit, %bb.a
  ret void
}

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare i32 @ENGINE_add(ptr noundef) local_unnamed_addr #1

declare i32 @ENGINE_free(ptr noundef) local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare ptr @ENGINE_new() local_unnamed_addr #1

declare i32 @ENGINE_set_id(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_name(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_init_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rdrand_init(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  ret i32 1
}

declare i32 @ENGINE_set_RAND(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @get_random_bytes(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = tail call i64 @OPENSSL_ia32_rdrand_bytes(ptr noundef %0, i64 noundef %i.b) #3
  %i.d = icmp eq i64 %i.c, %i.b
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @random_status() #2 {
bb.a:
  ret i32 1
}

declare i64 @OPENSSL_ia32_rdrand_bytes(ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
end_hunk_0
