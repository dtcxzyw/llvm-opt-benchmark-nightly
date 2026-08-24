Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ustrfmt?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, -2147483648) i32 @uprv_itou_78(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %bb.b ], [ 1, %bb.a ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.035 = phi i32 [ %i.g, %bb.b ], [ %2, %bb.a ]  ; 3 uses
  %i.b = urem i32 %.035, %3                       ; 2 uses
  %i.c = icmp slt i32 %i.b, 10
  %.v = select i1 %i.c, i32 48, i32 55
  %i.d = add nsw i32 %.v, %i.b
  %i.e = trunc i32 %i.d to i16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.e, ptr %i.f, align 2, !tbaa !8
  %i.g = udiv i32 %.035, %3
  %i.h = icmp ule i32 %3, %.035
  %i.i = icmp slt i64 %indvars.iv.next, %i.a
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br i1 %i.j, label %bb.b, label %.preheader, !llvm.loop !10

.preheader:                                       ; preds = %bb.b
  %i.k = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %i.l = icmp sgt i32 %4, %i.k
  br i1 %i.l, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %i.m = xor i64 %indvars.iv, -1
  %i.n = add nsw i64 %i.m, %wide.trip.count       ; 7 uses
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i64 %i.n, 16
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.n, 12
  %n.vec = and i64 %i.n, -16                      ; 4 uses
  %i.p = add i64 %indvars.iv47, %n.vec
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv47
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <8 x i16> splat (i16 48), ptr %i.r, align 2, !tbaa !8
  store <8 x i16> splat (i16 48), ptr %i.s, align 2, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %i.n, -4                     ; 3 uses
  %i.u = add i64 %indvars.iv47, %n.vec60
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv47
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %index61
  store <4 x i16> splat (i16 48), ptr %i.w, align 2, !tbaa !8
  %index.next62 = add nuw i64 %index61, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next62, %n.vec60
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n63 = icmp eq i64 %i.n, %n.vec60
  br i1 %cmp.n63, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv49.ph = phi i64 [ %indvars.iv47, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %.lr.ph ], [ %indvars.iv49.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv49
  store i16 48, ptr %i.y, align 2, !tbaa !8
  %exitcond.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %.1.lcssa = phi i32 [ %i.k, %.preheader ], [ %4, %middle.block ], [ %4, %vec.epilog.middle.block ], [ %4, %.lr.ph ] ; 5 uses
  %i.z = icmp slt i32 %.1.lcssa, %1
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.aa = zext nneg i32 %.1.lcssa to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa
  store i16 0, ptr %i.ab, align 2, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.ac = lshr i32 %.1.lcssa, 1                   ; 4 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %._crit_edge44, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %bb.d
  %5 = zext nneg i32 %.1.lcssa to i64
  %wide.trip.count55 = zext nneg i32 %i.ac to i64 ; 2 uses
  %6 = getelementptr [2 x i8], ptr %0, i64 %5     ; 3 uses
  %xtraiter = and i64 %wide.trip.count55, 1
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %.lr.ph43.epil.preheader, label %.lr.ph43.preheader.new

.lr.ph43.preheader.new:                           ; preds = %.lr.ph43.preheader
  %unroll_iter = and i64 %wide.trip.count55, 2147483646
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43, %.lr.ph43.preheader.new
  %indvars.iv52 = phi i64 [ 0, %.lr.ph43.preheader.new ], [ %indvars.iv.next53.1, %.lr.ph43 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph43.preheader.new ], [ %niter.next.1, %.lr.ph43 ]
  %7 = xor i64 %indvars.iv52, -1
  %i.ae = getelementptr [2 x i8], ptr %6, i64 %7  ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !8
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv52 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !8
  store i16 %i.ah, ptr %i.ae, align 2, !tbaa !8
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !8
  %8 = xor i64 %indvars.iv52, -2
  %9 = getelementptr [2 x i8], ptr %6, i64 %8     ; 2 uses
  %10 = load i16, ptr %9, align 2, !tbaa !8
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv52
  %11 = getelementptr inbounds nuw i8, ptr %i.ai, i64 2 ; 2 uses
  %i.aj = load i16, ptr %11, align 2, !tbaa !8
  store i16 %i.aj, ptr %9, align 2, !tbaa !8
  store i16 %10, ptr %11, align 2, !tbaa !8
  %indvars.iv.next53.1 = add nuw nsw i64 %indvars.iv52, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge44.loopexit.unr-lcssa, label %.lr.ph43, !llvm.loop !18

._crit_edge44.loopexit.unr-lcssa:                 ; preds = %.lr.ph43
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge44, label %.lr.ph43.epil.preheader

.lr.ph43.epil.preheader:                          ; preds = %._crit_edge44.loopexit.unr-lcssa, %.lr.ph43.preheader
  %indvars.iv52.epil.init = phi i64 [ 0, %.lr.ph43.preheader ], [ %indvars.iv.next53.1, %._crit_edge44.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod65 = trunc i32 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %12 = xor i64 %indvars.iv52.epil.init, -1
  %i.ak = getelementptr [2 x i8], ptr %6, i64 %12 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !8
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv52.epil.init ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !8
  store i16 %i.an, ptr %i.ak, align 2, !tbaa !8
  store i16 %i.al, ptr %i.am, align 2, !tbaa !8
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %.lr.ph43.epil.preheader, %._crit_edge44.loopexit.unr-lcssa, %bb.d
  ret i32 %.1.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"char16_t", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 12}
!16 = distinct !{!16, !11, !13, !14}
!17 = distinct !{!17, !11, !14, !13}
!18 = distinct !{!18, !11}
end_hunk_0
