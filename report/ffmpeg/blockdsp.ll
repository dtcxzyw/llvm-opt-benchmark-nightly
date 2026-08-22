Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/blockdsp?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_blockdsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @clear_block_c, ptr %0, align 8, !tbaa !9
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @clear_blocks_c, ptr %1, align 8, !tbaa !12
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @fill_block16_c, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @fill_block8_c, ptr %3, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @clear_block_c(ptr nofree noundef writeonly captures(none) initializes((0, 128)) %0) #1 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @clear_blocks_c(ptr nofree noundef writeonly captures(none) initializes((0, 768)) %0) #1 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(768) %0, i8 0, i64 768, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @fill_block16_c(ptr nofree noundef writeonly captures(none) %0, i8 noundef zeroext %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %3, 7                       ; 3 uses
  %i.b = icmp ult i32 %3, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %3, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.067 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.j, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.067, i8 %1, i64 16, i1 false)
  %i.c = getelementptr inbounds i8, ptr %.067, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, i8 %1, i64 16, i1 false)
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, i8 %1, i64 16, i1 false)
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, i8 %1, i64 16, i1 false)
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.f, i8 %1, i64 16, i1 false)
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.g, i8 %1, i64 16, i1 false)
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, i8 %1, i64 16, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, i8 %1, i64 16, i1 false)
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %2 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !14

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.067.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.j, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.067.epil = phi ptr [ %i.k, %.lr.ph.epil ], [ %.067.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.067.epil, i8 %1, i64 16, i1 false)
  %i.k = getelementptr inbounds i8, ptr %.067.epil, i64 %2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !16

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @fill_block8_c(ptr nofree noundef writeonly captures(none) %0, i8 noundef zeroext %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %3, 7                       ; 3 uses
  %i.b = icmp ult i32 %3, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %3, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.067 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.j, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %.067, i8 %1, i64 8, i1 false)
  %i.c = getelementptr inbounds i8, ptr %.067, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.c, i8 %1, i64 8, i1 false)
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.d, i8 %1, i64 8, i1 false)
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.e, i8 %1, i64 8, i1 false)
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.f, i8 %1, i64 8, i1 false)
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.g, i8 %1, i64 8, i1 false)
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.h, i8 %1, i64 8, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.i, i8 %1, i64 8, i1 false)
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %2 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !18

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.067.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.j, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.067.epil = phi ptr [ %i.k, %.lr.ph.epil ], [ %.067.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %.067.epil, i8 %1, i64 8, i1 false)
  %i.k = getelementptr inbounds i8, ptr %.067.epil, i64 %2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !19

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"BlockDSPContext", !11, i64 0, !11, i64 8, !7, i64 16}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!11, !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !17}
end_hunk_0
