inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"crypto/ui/ui_util.c\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"PEM password callback wrapper\00", align 1
@get_index_once = internal global i32 0, align 4
@ui_method_data_index_init_ossl_ret_ = internal unnamed_addr global i1 false, align 4
@ui_method_data_index = internal unnamed_addr global i32 -1, align 4

; Function Attrs: nounwind uwtable
define i32 @UI_UTIL_read_pw_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = tail call i32 @llvm.smin.i32(i32 %1, i32 8192)
  %i.c = icmp slt i32 %1, 1
  br i1 %i.c, label %UI_UTIL_read_pw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @UI_new() #5               ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %UI_UTIL_read_pw.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.b, -1                     ; 2 uses
  %i.f = tail call i32 @UI_add_input_string(ptr noundef nonnull %i.d, ptr noundef %2, i32 noundef 0, ptr noundef %0, i32 noundef 0, i32 noundef %i.e) #5 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  %i.h = icmp ne i32 %3, 0
  %or.cond.i = and i1 %i.h, %i.g
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @UI_add_verify_string(ptr noundef nonnull %i.d, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.e, ptr noundef %0) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.018.i = phi i32 [ %i.i, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.j = icmp sgt i32 %.018.i, -1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = call i32 @UI_process(ptr noundef nonnull %i.d) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i32 [ %i.k, %bb.f ], [ %.018.i, %bb.e ]
  call void @UI_free(ptr noundef nonnull %i.d) #5
  br label %UI_UTIL_read_pw.exit

UI_UTIL_read_pw.exit:                             ; preds = %bb.a, %bb.b, %bb.g
  %.0.i = phi i32 [ -1, %bb.a ], [ %.1.i, %bb.g ], [ -2, %bb.b ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 8192) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @UI_UTIL_read_pw(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @UI_new() #5               ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %2, -1                       ; 2 uses
  %i.d = tail call i32 @UI_add_input_string(ptr noundef nonnull %i.b, ptr noundef %3, i32 noundef 0, ptr noundef %0, i32 noundef 0, i32 noundef %i.c) #5 ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  %i.f = icmp ne i32 %4, 0
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @UI_add_verify_string(ptr noundef nonnull %i.b, ptr noundef %3, i32 noundef 0, ptr noundef %1, i32 noundef 0, i32 noundef %i.c, ptr noundef %0) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.018 = phi i32 [ %i.g, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.h = icmp sgt i32 %.018, -1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @UI_process(ptr noundef nonnull %i.b) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.i, %bb.f ], [ %.018, %bb.e ]
  tail call void @UI_free(ptr noundef nonnull %i.b) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %.1, %bb.g ], [ -2, %bb.b ]
  ret i32 %.0
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @UI_new() local_unnamed_addr #2

declare i32 @UI_add_input_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @UI_add_verify_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @UI_process(ptr noundef) local_unnamed_addr #2

declare void @UI_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @UI_UTIL_wrap_read_pem_callback(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 148) #5 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @UI_create_method(ptr noundef nonnull @.str.1) #5 ; 13 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @UI_method_set_opener(ptr noundef nonnull %i.c, ptr noundef nonnull @ui_open) #5
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @UI_method_set_reader(ptr noundef nonnull %i.c, ptr noundef nonnull @ui_read) #5
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @UI_method_set_writer(ptr noundef nonnull %i.c, ptr noundef nonnull @ui_write) #5
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @UI_method_set_closer(ptr noundef nonnull %i.c, ptr noundef nonnull @ui_close) #5
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @CRYPTO_THREAD_run_once(ptr noundef nonnull @get_index_once, ptr noundef nonnull @ui_method_data_index_init_ossl_) #5
  %i.n = icmp ne i32 %i.m, 0
  %.b = load i1, ptr @ui_method_data_index_init_ossl_ret_, align 4
  %or.cond = select i1 %i.n, i1 %.b, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr @ui_method_data_index, align 4, !tbaa !8
  %i.p = tail call i32 @UI_method_set_ex_data(ptr noundef nonnull %i.c, i32 noundef %i.o, ptr noundef nonnull %i.a) #5
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %bb.h ], [ %i.c, %bb.g ]
  tail call void @UI_destroy_method(ptr noundef %.0) #5
  tail call void @CRYPTO_free(ptr noundef %i.a, ptr noundef nonnull @.str, i32 noundef 157) #5
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.q, align 8, !tbaa !9
  %.not18 = icmp eq ptr %0, null
  %i.r = select i1 %.not18, ptr @PEM_def_callback, ptr %0
  store ptr %i.r, ptr %i.a, align 8, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.015 = phi ptr [ null, %bb.i ], [ %i.c, %bb.j ]
  ret ptr %.015
}

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @UI_create_method(ptr noundef) local_unnamed_addr #2

declare i32 @UI_method_set_opener(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ui_open(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret i32 1
}

declare i32 @UI_method_set_reader(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 2) i32 @ui_read(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [1025 x i8], align 16             ; 5 uses
  %i.b = tail call i32 @UI_get_string_type(ptr noundef %1) #5
  %cond = icmp eq i32 %i.b, 1
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.c = tail call ptr @UI_get_method(ptr noundef %0) #5
  %i.d = load i32, ptr @ui_method_data_index, align 4, !tbaa !8
  %i.e = tail call ptr @UI_method_get_ex_data(ptr noundef %i.c, i32 noundef %i.d) #5 ; 2 uses
  %i.f = tail call i32 @UI_get_result_maxsize(ptr noundef %1) #5
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.f, i32 1024) ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !9
  %i.j = tail call ptr @UI_get0_user_data(ptr noundef %0) #5
  %i.k = call i32 %i.g(ptr noundef nonnull %i.a, i32 noundef %spec.store.select, i32 noundef %i.i, ptr noundef %i.j) #5 ; 5 uses
  %i.l = icmp sgt i32 %i.k, %spec.store.select
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp sgt i32 %i.k, -1
  br i1 %i.m, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  store i8 0, ptr %i.o, align 1, !tbaa !13
  %i.p = call i32 @UI_set_result_ex(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.k) #5
  %i.q = icmp sgt i32 %i.p, -1
  %. = zext i1 %i.q to i32
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %., %bb.d ], [ -1, %bb.b ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.thread
  %.1 = phi i32 [ %.0, %.thread ], [ 1, %bb.a ]
  ret i32 %.1
}

declare i32 @UI_method_set_writer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ui_write(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret i32 1
}

declare i32 @UI_method_set_closer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ui_close(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret i32 1
}

declare i32 @CRYPTO_THREAD_run_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ui_method_data_index_init_ossl_() #0 {
bb.a:
  %i.a = tail call i32 @CRYPTO_get_ex_new_index(i32 noundef 14, i64 noundef 0, ptr noundef null, ptr noundef nonnull @ui_new_method_data, ptr noundef nonnull @ui_dup_method_data, ptr noundef nonnull @ui_free_method_data) #5
  store i32 %i.a, ptr @ui_method_data_index, align 4, !tbaa !8
  store i1 true, ptr @ui_method_data_index_init_ossl_ret_, align 4
  ret void
}

declare i32 @UI_method_set_ex_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_destroy_method(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PEM_def_callback(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @UI_get_string_type(ptr noundef) local_unnamed_addr #2

declare ptr @UI_method_get_ex_data(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @UI_get_method(ptr noundef) local_unnamed_addr #2

declare i32 @UI_get_result_maxsize(ptr noundef) local_unnamed_addr #2

declare ptr @UI_get0_user_data(ptr noundef) local_unnamed_addr #2

declare i32 @UI_set_result_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CRYPTO_get_ex_new_index(i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ui_new_method_data(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, i64 %4, ptr nofree readnone captures(none) %5) #3 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ui_dup_method_data(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, i32 %3, i64 %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @CRYPTO_memdup(ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 74) #5 ; 2 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !14
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ui_free_method_data(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 %3, i64 %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  tail call void @CRYPTO_free(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 84) #5
  ret void
}

declare ptr @CRYPTO_memdup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 8}
!10 = !{!"pem_password_cb_data", !11, i64 0, !5, i64 8}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!10, !11, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!11, !11, i64 0}
end_hunk_0
