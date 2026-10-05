Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_entry_stat?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local ptr @archive_entry_stat(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(144) ptr @calloc(i64 noundef 1, i64 noundef 144) #4 ; 3 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !24
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !25
  %i.g = icmp eq i32 %.pre, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.c
  %i.h = phi ptr [ %i.d, %.thread ], [ %i.b, %bb.c ] ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = tail call i64 @archive_entry_atime(ptr noundef nonnull %0) #5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.j, ptr %i.k, align 8, !tbaa !28
  %i.l = tail call i64 @archive_entry_ctime(ptr noundef nonnull %0) #5
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i64 %i.l, ptr %i.m, align 8, !tbaa !29
  %i.n = tail call i64 @archive_entry_mtime(ptr noundef nonnull %0) #5
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i64 %i.n, ptr %i.o, align 8, !tbaa !30
  %i.p = tail call i64 @archive_entry_dev(ptr noundef nonnull %0) #5
  store i64 %i.p, ptr %i.h, align 8, !tbaa !31
  %i.q = tail call i64 @archive_entry_gid(ptr noundef nonnull %0) #5
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 %i.r, ptr %i.s, align 8, !tbaa !32
  %i.t = tail call i64 @archive_entry_uid(ptr noundef nonnull %0) #5
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %i.u, ptr %i.v, align 4, !tbaa !33
  %i.w = tail call i64 @archive_entry_ino64(ptr noundef nonnull %0) #5
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !34
  %i.y = tail call i32 @archive_entry_nlink(ptr noundef nonnull %0) #5
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !35
  %i.ab = tail call i64 @archive_entry_rdev(ptr noundef nonnull %0) #5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !36
  %i.ad = tail call i64 @archive_entry_size(ptr noundef nonnull %0) #5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 0)
  store i64 %spec.store.select, ptr %i.ae, align 8
  %i.af = tail call i32 @archive_entry_mode(ptr noundef nonnull %0) #5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !37
  %i.ah = tail call i64 @archive_entry_atime_nsec(ptr noundef nonnull %0) #5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !38
  %i.aj = tail call i64 @archive_entry_ctime_nsec(ptr noundef nonnull %0) #5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !39
  %i.al = tail call i64 @archive_entry_mtime_nsec(ptr noundef nonnull %0) #5
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i64 %i.al, ptr %i.am, align 8, !tbaa !40
  store i32 1, ptr %i.i, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi ptr [ %i.h, %bb.d ], [ null, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @archive_entry_atime(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_ctime(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_mtime(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_dev(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_gid(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_uid(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_ino64(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_nlink(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_rdev(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_size(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_mode(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_atime_nsec(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_ctime_nsec(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_mtime_nsec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind allocsize(0,1) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7archive", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"aest", !11, i64 0, !6, i64 8, !11, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !11, i64 48, !6, i64 56, !11, i64 64, !11, i64 72, !6, i64 80, !11, i64 88, !11, i64 96, !6, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !6, i64 136, !11, i64 144, !11, i64 152, !11, i64 160}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"archive_string", !13, i64 0, !11, i64 8, !11, i64 16}
!15 = !{!"p1 int", !9, i64 0}
!16 = !{!"archive_wstring", !15, i64 0, !11, i64 8, !11, i64 16}
!17 = !{!"archive_mstring", !14, i64 0, !14, i64 24, !16, i64 48, !14, i64 72, !6, i64 96}
!18 = !{!"ae_digest", !5, i64 0, !5, i64 16, !5, i64 36, !5, i64 56, !5, i64 88, !5, i64 136}
!19 = !{!"p1 _ZTS17archive_acl_entry", !9, i64 0}
!20 = !{!"archive_acl", !6, i64 0, !19, i64 8, !19, i64 16, !6, i64 24, !15, i64 32, !13, i64 40, !6, i64 48}
!21 = !{!"p1 _ZTS8ae_xattr", !9, i64 0}
!22 = !{!"p1 _ZTS9ae_sparse", !9, i64 0}
!23 = !{!"archive_entry", !10, i64 0, !9, i64 8, !6, i64 16, !12, i64 24, !6, i64 192, !17, i64 200, !11, i64 304, !11, i64 312, !17, i64 320, !17, i64 424, !17, i64 528, !17, i64 632, !17, i64 736, !5, i64 840, !9, i64 848, !11, i64 856, !6, i64 864, !18, i64 868, !20, i64 1072, !21, i64 1128, !21, i64 1136, !22, i64 1144, !22, i64 1152, !22, i64 1160, !5, i64 1168, !6, i64 1180}
!24 = !{!23, !9, i64 8}
!25 = !{!23, !6, i64 16}
!26 = !{!"timespec", !11, i64 0, !11, i64 8}
!27 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !26, i64 72, !26, i64 88, !26, i64 104, !5, i64 120}
!28 = !{!27, !11, i64 72}
!29 = !{!27, !11, i64 104}
!30 = !{!27, !11, i64 88}
!31 = !{!27, !11, i64 0}
!32 = !{!27, !6, i64 32}
!33 = !{!27, !6, i64 28}
!34 = !{!27, !11, i64 8}
!35 = !{!27, !11, i64 16}
!36 = !{!27, !11, i64 40}
!37 = !{!27, !6, i64 24}
!38 = !{!27, !11, i64 80}
!39 = !{!27, !11, i64 112}
!40 = !{!27, !11, i64 96}
end_hunk_0
