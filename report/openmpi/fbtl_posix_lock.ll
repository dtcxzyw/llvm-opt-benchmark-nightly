Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/fbtl_posix_lock?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @mca_fbtl_posix_lock(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %6, align 4, !tbaa !8      ; 2 uses
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr %6, align 4, !tbaa !8
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i32 %2 to i16
  store i16 %i.d, ptr %0, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.e, align 2, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 -1, i64 16, i1 false)
  store i32 0, ptr %i.h, align 8, !tbaa !38
  %i.i = icmp eq i64 %4, 0
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.l = and i32 %i.k, 128
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.m = and i32 %i.k, 768
  %or.cond = icmp eq i32 %i.m, 0
  br i1 %or.cond, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.n = icmp eq i32 %5, 10
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %3, ptr %i.f, align 8, !tbaa !33
  store i64 %4, ptr %i.g, align 8, !tbaa !34
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = srem i64 %3, %i.q                        ; 2 uses
  %.not58 = icmp eq i64 %i.r, 0
  br i1 %.not58, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.s = add nsw i64 %4, %3                       ; 2 uses
  %i.t = srem i64 %i.s, %i.q                      ; 3 uses
  %.not59 = icmp eq i64 %i.t, 0
  br i1 %.not59, label %.critedge, label %bb.j

.thread:                                          ; preds = %bb.h
  store i64 %3, ptr %i.f, align 8, !tbaa !33
  %i.u = add nsw i64 %4, %3
  %i.v = srem i64 %i.u, %i.q
  %.not5961 = icmp eq i64 %i.v, 0
  %spec.store.select = select i1 %.not5961, i64 %i.r, i64 %4
  br label %thread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.w = sub nsw i64 %i.s, %i.t                   ; 2 uses
  store i64 %i.w, ptr %i.f, align 8, !tbaa !33
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.thread, %bb.j
  %spec.store.select.sink = phi i64 [ %spec.store.select, %.thread ], [ %i.t, %bb.j ] ; 2 uses
  %i.x = phi i64 [ %3, %.thread ], [ %i.w, %bb.j ]
  store i64 %spec.store.select.sink, ptr %i.g, align 8
  %i.y = icmp eq i64 %i.x, -1
  %i.z = icmp eq i64 %spec.store.select.sink, -1
  %or.cond73 = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond73, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.g, %thread-pre-split, %bb.d
  %i.aa = tail call ptr @__errno_location() #4    ; 3 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !8
  %i.ab = load i32, ptr %1, align 8, !tbaa !35
  %i.ac = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.ab, i32 noundef 7, ptr noundef nonnull %0) #5 ; 2 uses
  %.not6063 = icmp eq i32 %i.ac, 0
  br i1 %.not6063, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.critedge2.backedge
  %7 = phi i32 [ %i.al, %.critedge2.backedge ], [ 1, %bb.k ] ; 2 uses
  %i.ad = phi i32 [ %i.ak, %.critedge2.backedge ], [ %i.ac, %bb.k ]
  %.064 = phi i32 [ %7, %.critedge2.backedge ], [ 0, %bb.k ]
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !8  ; 2 uses
  %i.af = icmp eq i32 %i.ae, 4
  br i1 %i.af, label %.critedge2.backedge, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ag = icmp eq i32 %i.ae, 115
  %i.ah = icmp samesign ult i32 %.064, 99
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %.critedge2.backedge, label %.critedge

.critedge2.backedge:                              ; preds = %bb.l, %.lr.ph
  store i32 0, ptr %i.aa, align 4, !tbaa !8
  %i.aj = load i32, ptr %1, align 8, !tbaa !35
  %i.ak = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.aj, i32 noundef 7, ptr noundef nonnull %0) #5 ; 2 uses
  %.not60 = icmp eq i32 %i.ak, 0
  %i.al = add nuw nsw i32 %7, 1
  br i1 %.not60, label %.critedge, label %.lr.ph, !llvm.loop !36

.critedge:                                        ; preds = %.critedge2.backedge, %bb.l, %thread-pre-split, %bb.i, %bb.k, %bb.e, %bb.b, %bb.a
  %.051 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %thread-pre-split ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.i ], [ %i.ad, %bb.l ], [ 0, %.critedge2.backedge ]
  ret i32 %.051
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #1

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @mca_fbtl_posix_unlock(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !8      ; 2 uses
  %i.b = add nsw i32 %i.a, -1
  store i32 %i.b, ptr %2, align 4, !tbaa !8
  %i.c = icmp sgt i32 %i.a, 1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !34
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i16 2, ptr %0, align 8, !tbaa !12
  %i.j = load i32, ptr %1, align 8, !tbaa !35
  %i.k = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.j, i32 noundef 6, ptr noundef nonnull %0) #5 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 -1, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"short", !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"flock", !9, i64 0, !9, i64 2, !10, i64 8, !10, i64 16, !5, i64 24}
!12 = !{!11, !9, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS11ompi_file_t", !13, i64 0}
!15 = !{!"long long", !4, i64 0}
!16 = !{!"p1 _ZTS19ompi_communicator_t", !13, i64 0}
!17 = !{!"p1 omnipotent char", !13, i64 0}
!18 = !{!"p1 _ZTS16opal_convertor_t", !13, i64 0}
!19 = !{!"p1 _ZTS11opal_info_t", !13, i64 0}
!20 = !{!"p1 _ZTS14ompi_request_t", !13, i64 0}
!21 = !{!"_Bool", !4, i64 0}
!22 = !{!"p1 _ZTS5iovec", !13, i64 0}
!23 = !{!"p1 _ZTS15ompi_datatype_t", !13, i64 0}
!24 = !{!"p1 _ZTS27mca_common_ompio_io_array_t", !13, i64 0}
!25 = !{!"p1 _ZTS26mca_base_component_2_1_0_t", !13, i64 0}
!26 = !{!"p1 _ZTS26mca_fs_base_module_1_0_0_t", !13, i64 0}
!27 = !{!"p1 _ZTS29mca_fcoll_base_module_1_0_0_t", !13, i64 0}
!28 = !{!"p1 _ZTS28mca_fbtl_base_module_1_0_0_t", !13, i64 0}
!29 = !{!"p1 _ZTS32mca_sharedfp_base_module_1_0_0_t", !13, i64 0}
!30 = !{!"p1 _ZTS28mca_common_ompio_print_queue", !13, i64 0}
!31 = !{!"p1 int", !13, i64 0}
!32 = !{!"ompio_file_t", !5, i64 0, !14, i64 8, !15, i64 16, !15, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !16, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !18, i64 80, !18, i64 88, !19, i64 96, !5, i64 104, !13, i64 112, !5, i64 120, !5, i64 124, !10, i64 128, !5, i64 136, !10, i64 144, !10, i64 152, !5, i64 160, !5, i64 164, !20, i64 168, !21, i64 176, !13, i64 184, !22, i64 192, !5, i64 200, !23, i64 208, !10, i64 216, !10, i64 224, !5, i64 232, !10, i64 240, !10, i64 248, !23, i64 256, !23, i64 264, !23, i64 272, !10, i64 280, !24, i64 288, !5, i64 296, !25, i64 304, !25, i64 312, !25, i64 320, !25, i64 328, !26, i64 336, !27, i64 344, !28, i64 352, !29, i64 360, !30, i64 368, !30, i64 376, !31, i64 384, !5, i64 392, !5, i64 396, !31, i64 400, !31, i64 408, !5, i64 416, !31, i64 424, !5, i64 432, !13, i64 440, !13, i64 448}
!33 = !{!11, !10, i64 8}
!34 = !{!11, !10, i64 16}
!35 = !{!32, !5, i64 0}
!36 = distinct !{!36, !41}
!37 = !{!11, !9, i64 2}
!38 = !{!11, !5, i64 24}
!39 = !{!32, !5, i64 104}
!40 = !{!32, !5, i64 120}
!41 = !{!"llvm.loop.mustprogress"}
end_hunk_0
