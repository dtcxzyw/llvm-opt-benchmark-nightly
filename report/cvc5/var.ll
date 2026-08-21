Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/var?download=true
inline.NumInlined: 13
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal18reset_subsume_bitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8, !nonnull !12, !align !13
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14   ; 5 uses
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  %xtraiter = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.c, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.c, -2
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.sroa.03.07.epil.init = phi i32 [ 1, %.lr.ph ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod8 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.f = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.03.07.epil.init, i1 true)
  %i.g = zext nneg i32 %i.f to i64
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load i32, ptr %i.i, align 1
  %i.k = and i32 %i.j, -513
  store i32 %i.k, ptr %i.i, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.sroa.03.07 = phi i32 [ 1, %.lr.ph.new ], [ %i.t, %bb.b ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.l = zext nneg i32 %.sroa.03.07 to i64
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i32, ptr %i.n, align 1
  %i.p = and i32 %i.o, -513
  store i32 %i.p, ptr %i.n, align 1
  %1 = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.q = zext nneg i32 %.sroa.03.07 to i64
  %2 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.r = load i32, ptr %3, align 1
  %i.s = and i32 %i.r, -513
  store i32 %i.s, ptr %3, align 1
  %i.t = add nuw nsw i32 %.sroa.03.07, 2          ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7CaDiCaL8Internal15check_var_statsEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(5704) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN7CaDiCaL5RangeE", !10, i64 0}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{}
!13 = !{i64 4}
!14 = !{!5, !5, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !11, i64 0}
end_hunk_0
