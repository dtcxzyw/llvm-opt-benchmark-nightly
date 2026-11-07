Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_utils?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._php_random_algo = type { i64, ptr, ptr, ptr, ptr }
%struct._php_random_fallback_seed_state = type { i8, [20 x i8] }
%struct._php_random_result = type { i64, i64 }

@php_random_algo_xoshiro256starstar = external local_unnamed_addr constant %struct._php_random_algo, align 8

; Function Attrs: nounwind uwtable
define dso_local void @php_random_bytes_insecure_for_zend(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 8 uses
  %3 = alloca %struct._php_random_fallback_seed_state, align 1 ; 8 uses
  %i.b = alloca [128 x i8], align 16              ; 3 uses
  %4 = alloca %struct._php_random_result, align 8 ; 5 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !17, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.g, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.c

thread-pre-split:                                 ; preds = %bb.f
  %.pr = load i8, ptr %3, align 1, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.b
  %5 = phi i8 [ %.pr, %thread-pre-split ], [ 0, %bb.b ]
  %i.h = trunc nuw i8 %5 to i1
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.i = call i32 @php_random_bytes_ex(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %i.b, i64 noundef 128) #5
  %i.j = icmp eq i32 %i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br i1 %i.j, label %bb.e, label %._crit_edge31

._crit_edge31:                                    ; preds = %bb.d
  %.pre = load i64, ptr %i.g, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = call i64 @php_random_generate_fallback_seed_ex(ptr noundef nonnull %3) #5
  store i64 %i.k, ptr %i.a, align 16, !tbaa !24
  %i.l = call i64 @php_random_generate_fallback_seed_ex(ptr noundef nonnull %3) #5
  store i64 %i.l, ptr %i.e, align 8, !tbaa !24
  %i.m = call i64 @php_random_generate_fallback_seed_ex(ptr noundef nonnull %3) #5
  store i64 %i.m, ptr %i.f, align 16, !tbaa !24
  %i.n = call i64 @php_random_generate_fallback_seed_ex(ptr noundef nonnull %3) #5 ; 2 uses
  store i64 %i.n, ptr %i.g, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge31, %bb.e
  %i.o = phi i64 [ %.pre, %._crit_edge31 ], [ %i.n, %bb.e ] ; 2 uses
  %i.p = load i64, ptr %i.a, align 16, !tbaa !24  ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = load i64, ptr %i.e, align 8              ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  %i.t = load i64, ptr %i.f, align 16             ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %or.cond5 = select i1 %or.cond, i1 %i.u, i1 false
  %i.v = icmp eq i64 %i.o, 0
  %or.cond21 = select i1 %or.cond5, i1 %i.v, i1 false, !prof !25
  br i1 %or.cond21, label %thread-pre-split, label %.critedge, !prof !25, !llvm.loop !12

.critedge:                                        ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @php_random_xoshiro256starstar_seed256(ptr noundef nonnull %i.w, i64 noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, i64 noundef %i.o) #5
  store i8 1, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.a
  %.not25 = icmp eq i64 %2, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @php_random_algo_xoshiro256starstar, i64 8), align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.027 = phi ptr [ %1, %.lr.ph ], [ %i.ae, %bb.h ] ; 2 uses
  %.01826 = phi i64 [ %2, %.lr.ph ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.z = call { i64, i64 } %i.x(ptr noundef nonnull %i.y) #5 ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  store i64 %i.aa, ptr %4, align 8
  %i.ab = extractvalue { i64, i64 } %i.z, 1       ; 2 uses
  store i64 %i.ab, ptr %.8..8..8..sroa_idx, align 8
  %i.ac = icmp eq i64 %i.ab, 8
  call void @llvm.assume(i1 %i.ac)
  %i.ad = call i64 @llvm.umin.i64(i64 %.01826, i64 8) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.027, ptr noundef nonnull align 8 dereferenceable(1) %4, i64 range(i64 1, 0) %i.ad, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.027, i64 %i.ad
  %i.af = sub nuw i64 %.01826, %i.ad              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @php_random_bytes_ex(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @php_random_generate_fallback_seed_ex(ptr noundef) local_unnamed_addr #2

declare void @php_random_xoshiro256starstar_seed256(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!12 = distinct !{!12, !26}
!13 = distinct !{!13, !26}
!14 = !{!"_Bool", !8, i64 0}
!15 = !{!"_php_random_status_state_xoshiro256starstar", !8, i64 0}
!16 = !{!"_php_random_bytes_insecure_state_for_zend", !14, i64 0, !15, i64 8}
!17 = !{!16, !14, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!"_php_random_fallback_seed_state", !14, i64 0, !8, i64 1}
!22 = !{!21, !14, i64 0}
!23 = !{!"long", !8, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"branch_weights", i32 1, i32 4001}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"any pointer", !8, i64 0}
!28 = !{!"_php_random_algo", !23, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32}
!29 = !{!28, !27, i64 8}
end_hunk_0
