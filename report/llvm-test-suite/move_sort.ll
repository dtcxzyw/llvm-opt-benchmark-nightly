loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Move = type { i32, i32, i32 }

@.str = private unnamed_addr constant [93 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/obsequi/move_sort.c\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Not enough buckets.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @sort_moves(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [128 x [256 x %struct.Move]], align 16 ; 6 uses
  %i.a = alloca [128 x i32], align 16             ; 11 uses
  %i.b = alloca [128 x i32], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = icmp slt i32 %1, %2
  br i1 %i.c, label %.preheader54.preheader, label %.preheader53.thread

.preheader54.preheader:                           ; preds = %bb.a
  %i.d = sext i32 %1 to i64
  br label %.preheader54

.preheader54:                                     ; preds = %.preheader54.preheader, %bb.h
  %indvars.iv80 = phi i64 [ %i.d, %.preheader54.preheader ], [ %indvars.iv.next81, %bb.h ] ; 3 uses
  %.04861 = phi i32 [ 0, %.preheader54.preheader ], [ %.149, %bb.h ] ; 7 uses
  %i.e = icmp sgt i32 %.04861, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader54
  %i.f = getelementptr inbounds [12 x i8], ptr %0, i64 %indvars.iv80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %wide.trip.count = zext nneg i32 %.04861 to i64
  br label %bb.c

.preheader53:                                     ; preds = %bb.h
  %.not70 = icmp eq i32 %1, %2
  br i1 %.not70, label %._crit_edge, label %.lr.ph72

.preheader53.thread:                              ; preds = %bb.a
  %.not70115 = icmp eq i32 %1, %2
  br i1 %.not70115, label %._crit_edge, label %.lr.ph72.split

.lr.ph72:                                         ; preds = %.preheader53
  %i.i = icmp sgt i32 %.149, 1
  br i1 %i.i, label %.lr.ph68.us.preheader, label %.lr.ph72.split

.lr.ph68.us.preheader:                            ; preds = %.lr.ph72
  %i.j = sext i32 %1 to i64
  %wide.trip.count97 = zext nneg i32 %.149 to i64
  %i.k = add nsw i64 %wide.trip.count97, -1       ; 2 uses
  %xtraiter = and i64 %i.k, 3                     ; 3 uses
  %i.l = add nsw i32 %.149, -2
  %i.m = icmp ult i32 %i.l, 3
  %unroll_iter = and i64 %i.k, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod126 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph68.us

.lr.ph68.us:                                      ; preds = %.lr.ph68.us.preheader, %..preheader_crit_edge.us
  %.071.us = phi i64 [ %i.ap, %..preheader_crit_edge.us ], [ %i.j, %.lr.ph68.us.preheader ] ; 2 uses
  %i.n = load i32, ptr %i.a, align 16, !tbaa !4   ; 2 uses
  br i1 %i.m, label %.epil.preheader, label %.lr.ph68.us.new

.lr.ph68.us.new:                                  ; preds = %.lr.ph68.us, %.lr.ph68.us.new
  %indvars.iv94 = phi i64 [ %indvars.iv.next95.3, %.lr.ph68.us.new ], [ 1, %.lr.ph68.us ] ; 6 uses
  %.04167.us = phi i32 [ %spec.select52.us.3, %.lr.ph68.us.new ], [ 0, %.lr.ph68.us ]
  %.04366.us = phi i32 [ %spec.select.us.3, %.lr.ph68.us.new ], [ %i.n, %.lr.ph68.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph68.us.new ], [ 0, %.lr.ph68.us ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv94
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4    ; 2 uses
  %i.q = icmp sgt i32 %i.p, %.04366.us
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %.04366.us) ; 2 uses
  %i.r = trunc nuw nsw i64 %indvars.iv94 to i32
  %spec.select52.us = select i1 %i.q, i32 %i.r, i32 %.04167.us
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next95
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 2 uses
  %i.u = icmp sgt i32 %i.t, %spec.select.us
  %spec.select.us.1 = tail call i32 @llvm.smax.i32(i32 %i.t, i32 %spec.select.us) ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv.next95 to i32
  %spec.select52.us.1 = select i1 %i.u, i32 %i.v, i32 %spec.select52.us
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next95.1
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4    ; 2 uses
  %i.y = icmp sgt i32 %i.x, %spec.select.us.1
  %spec.select.us.2 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 %spec.select.us.1) ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next95.1 to i32
  %spec.select52.us.2 = select i1 %i.y, i32 %i.z, i32 %spec.select52.us.1
  %indvars.iv.next95.2 = add nuw nsw i64 %indvars.iv94, 3 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next95.2
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4  ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, %spec.select.us.2
  %spec.select.us.3 = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 %spec.select.us.2) ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv.next95.2 to i32
  %spec.select52.us.3 = select i1 %i.ac, i32 %i.ad, i32 %spec.select52.us.2 ; 3 uses
  %indvars.iv.next95.3 = add nuw nsw i64 %indvars.iv94, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.unr-lcssa, label %.lr.ph68.us.new, !llvm.loop !10

..preheader_crit_edge.us.unr-lcssa:               ; preds = %.lr.ph68.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.unr-lcssa, %.lr.ph68.us
  %indvars.iv94.epil.init = phi i64 [ 1, %.lr.ph68.us ], [ %indvars.iv.next95.3, %..preheader_crit_edge.us.unr-lcssa ]
  %.04167.us.epil.init = phi i32 [ 0, %.lr.ph68.us ], [ %spec.select52.us.3, %..preheader_crit_edge.us.unr-lcssa ]
  %.04366.us.epil.init = phi i32 [ %i.n, %.lr.ph68.us ], [ %spec.select.us.3, %..preheader_crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv94.epil = phi i64 [ %indvars.iv94.epil.init, %.epil.preheader ], [ %indvars.iv.next95.epil, %bb.b ] ; 3 uses
  %.04167.us.epil = phi i32 [ %.04167.us.epil.init, %.epil.preheader ], [ %spec.select52.us.epil, %bb.b ]
  %.04366.us.epil = phi i32 [ %.04366.us.epil.init, %.epil.preheader ], [ %spec.select.us.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv94.epil
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4  ; 2 uses
  %i.ag = icmp sgt i32 %i.af, %.04366.us.epil
  %spec.select.us.epil = tail call i32 @llvm.smax.i32(i32 %i.af, i32 %.04366.us.epil)
  %i.ah = trunc nuw nsw i64 %indvars.iv94.epil to i32
  %spec.select52.us.epil = select i1 %i.ag, i32 %i.ah, i32 %.04167.us.epil ; 2 uses
  %indvars.iv.next95.epil = add nuw nsw i64 %indvars.iv94.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us, label %bb.b, !llvm.loop !12

..preheader_crit_edge.us:                         ; preds = %bb.b, %..preheader_crit_edge.us.unr-lcssa
  %spec.select52.us.lcssa = phi i32 [ %spec.select52.us.3, %..preheader_crit_edge.us.unr-lcssa ], [ %spec.select52.us.epil, %bb.b ]
  %i.ai = zext nneg i32 %spec.select52.us.lcssa to i64 ; 3 uses
  %i.aj = getelementptr inbounds nuw [3072 x i8], ptr %3, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ai
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = mul nsw i64 %.071.us, 12
  %scevgep99 = getelementptr i8, ptr %0, i64 %i.am
  %smax100 = tail call i32 @llvm.smax.i32(i32 %i.al, i32 1)
  %i.an = zext nneg i32 %smax100 to i64           ; 2 uses
  %i.ao = mul nuw nsw i64 %i.an, 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep99, ptr noundef nonnull align 16 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  %i.ap = add nsw i64 %.071.us, %i.an             ; 2 uses
  %i.aq = trunc nsw i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai
  store i32 -5000, ptr %i.ar, align 4, !tbaa !4
  %.not.us = icmp eq i32 %2, %i.aq
  br i1 %.not.us, label %._crit_edge, label %.lr.ph68.us, !llvm.loop !14

.lr.ph72.split:                                   ; preds = %.preheader53.thread, %.lr.ph72
  %i.as = load i32, ptr %i.b, align 16, !tbaa !4
  %smax = tail call i32 @llvm.smax.i32(i32 %i.as, i32 1) ; 2 uses
  %i.at = zext nneg i32 %smax to i64
  %i.au = mul nuw nsw i64 %i.at, 12
  br label %.preheader

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = icmp eq i32 %i.h, %i.aw
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = getelementptr inbounds nuw [3072 x i8], ptr %3, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4  ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !4
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [12 x i8], ptr %i.az, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.be, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !15
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.thread, label %bb.c, !llvm.loop !16

.loopexit:                                        ; preds = %.preheader54, %bb.d
  %.04557 = phi i32 [ %i.ay, %bb.d ], [ 0, %.preheader54 ]
  %i.bf = icmp eq i32 %.04557, %.04861
  br i1 %i.bf, label %.loopexit.thread, label %bb.h

.loopexit.thread:                                 ; preds = %bb.e, %.loopexit
  %i.bg = icmp eq i32 %.04861, 128
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit.thread
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str, i32 noundef 34, i32 noundef 1, ptr noundef nonnull @.str.1) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit.thread
  %i.bh = zext nneg i32 %.04861 to i64            ; 3 uses
  %i.bi = getelementptr inbounds nuw [3072 x i8], ptr %3, i64 %i.bh
  %i.bj = getelementptr inbounds [12 x i8], ptr %0, i64 %indvars.iv80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bi, ptr noundef nonnull align 4 dereferenceable(12) %i.bj, i64 12, i1 false), !tbaa.struct !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bh
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bh
  store i32 1, ptr %i.bn, align 4, !tbaa !4
  %i.bo = add nsw i32 %.04861, 1
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.g
  %.149 = phi i32 [ %i.bo, %bb.g ], [ %.04861, %.loopexit ] ; 4 uses
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next81 to i32
  %exitcond83.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond83.not, label %.preheader53, label %.preheader54, !llvm.loop !17

.preheader:                                       ; preds = %.lr.ph72.split, %.preheader
  %indvars.iv87 = phi i32 [ %1, %.lr.ph72.split ], [ %indvars.iv.next88, %.preheader ] ; 2 uses
  %4 = sext i32 %indvars.iv87 to i64
  %i.bp = mul nsw i64 %4, 12
  %scevgep = getelementptr i8, ptr %0, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %3, i64 %i.au, i1 false)
  %indvars.iv.next88 = add i32 %indvars.iv87, %smax ; 2 uses
  %.not = icmp eq i32 %indvars.iv.next88, %2
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !14

._crit_edge:                                      ; preds = %.preheader, %..preheader_crit_edge.us, %.preheader53.thread, %.preheader53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_fatal_error_aux(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !11}
!15 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
end_hunk_0
