Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/hash_joaat?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"joaat\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"l.\00", align 1
@php_hash_joaat_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str, ptr @PHP_JOAATInit, ptr @PHP_JOAATUpdate, ptr @PHP_JOAATFinal, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 4, i64 4, i64 4, i8 0, [7 x i8] zeroinitializer, i64 0 }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PHP_JOAATInit(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @PHP_JOAATUpdate(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !13     ; 3 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %joaat_buf.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.b = icmp ult i64 %2, 4
  br i1 %i.b, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.013.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ah, %.lr.ph.i ] ; 5 uses
  %.01112.i = phi i32 [ %i.a, %.lr.ph.i.preheader.new ], [ %i.ag, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.013.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14
  %i.e = zext i8 %i.d to i32
  %i.f = add i32 %.01112.i, %i.e
  %i.g = mul i32 %i.f, 1025                       ; 2 uses
  %i.h = lshr i32 %i.g, 6
  %i.i = xor i32 %i.h, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.013.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %i.n = add i32 %i.i, %i.m
  %i.o = mul i32 %i.n, 1025                       ; 2 uses
  %i.p = lshr i32 %i.o, 6
  %i.q = xor i32 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.013.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = zext i8 %i.t to i32
  %i.v = add i32 %i.q, %i.u
  %i.w = mul i32 %i.v, 1025                       ; 2 uses
  %i.x = lshr i32 %i.w, 6
  %i.y = xor i32 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.013.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %i.y, %i.ac
  %i.ae = mul i32 %i.ad, 1025                     ; 2 uses
  %i.af = lshr i32 %i.ae, 6
  %i.ag = xor i32 %i.af, %i.ae                    ; 3 uses
  %i.ah = add nuw i64 %.013.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %joaat_buf.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !15

joaat_buf.exit.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %joaat_buf.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %joaat_buf.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ah, %joaat_buf.exit.loopexit.unr-lcssa ]
  %.01112.i.epil.init = phi i32 [ %i.a, %.lr.ph.i.preheader ], [ %i.ag, %joaat_buf.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.013.i.epil = phi i64 [ %i.ap, %.lr.ph.i.epil ], [ %.013.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.01112.i.epil = phi i32 [ %i.ao, %.lr.ph.i.epil ], [ %.01112.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.013.i.epil
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = zext i8 %i.aj to i32
  %i.al = add i32 %.01112.i.epil, %i.ak
  %i.am = mul i32 %i.al, 1025                     ; 2 uses
  %i.an = lshr i32 %i.am, 6
  %i.ao = xor i32 %i.an, %i.am                    ; 2 uses
  %i.ap = add nuw i64 %.013.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %joaat_buf.exit, label %.lr.ph.i.epil, !llvm.loop !16

joaat_buf.exit:                                   ; preds = %joaat_buf.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.011.lcssa.i = phi i32 [ %i.a, %bb.a ], [ %i.ag, %joaat_buf.exit.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph.i.epil ]
  store i32 %.011.lcssa.i, ptr %0, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PHP_JOAATFinal(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !13
  %i.b = mul i32 %i.a, 9                          ; 2 uses
  %i.c = lshr i32 %i.b, 11
  %i.d = xor i32 %i.c, %i.b
  %i.e = mul i32 %i.d, 32769
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.e)
  store i32 %2, ptr %0, align 1, !tbaa !14
  store i32 0, ptr %1, align 4, !tbaa !13
  ret void
}

declare i32 @php_hash_copy(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @php_hash_serialize(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @php_hash_unserialize(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!12 = !{!"", !9, i64 0}
!13 = !{!12, !9, i64 0}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !17}
!16 = distinct !{!16, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
