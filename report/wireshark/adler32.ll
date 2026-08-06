begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable
define i32 @update_adler32(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 3 uses
  %i.b = lshr i32 %0, 16                          ; 3 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %3 = icmp eq i64 %2, 1
  br i1 %3, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.015 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %12, %.lr.ph ] ; 3 uses
  %.01114 = phi i32 [ %i.b, %.lr.ph.preheader.new ], [ %i.i, %.lr.ph ]
  %.01213 = phi i32 [ %i.a, %.lr.ph.preheader.new ], [ %i.g, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %4 = getelementptr i8, ptr %1, i64 %.015
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = add nuw nsw i32 %.01213, %6
  %8 = urem i32 %7, 65521                         ; 2 uses
  %9 = add nuw nsw i32 %8, %.01114
  %10 = urem i32 %9, 65521
  %11 = getelementptr i8, ptr %1, i64 %.015
  %i.c = getelementptr i8, ptr %11, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = add nuw nsw i32 %8, %i.e
  %i.g = urem i32 %i.f, 65521                     ; 4 uses
  %i.h = add nuw nsw i32 %i.g, %10
  %i.i = urem i32 %i.h, 65521                     ; 3 uses
  %12 = add nuw i64 %.015, 2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !6

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.015.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %12, %._crit_edge.loopexit.unr-lcssa ]
  %.01114.epil.init = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ]
  %.01213.epil.init = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.g, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod23 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %13 = getelementptr i8, ptr %1, i64 %.015.epil.init
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %.01213.epil.init, %15
  %17 = urem i32 %16, 65521                       ; 2 uses
  %18 = add nuw nsw i32 %17, %.01114.epil.init
  %19 = urem i32 %18, 65521
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.012.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.g, %._crit_edge.loopexit.unr-lcssa ], [ %17, %.lr.ph.epil.preheader ]
  %.011.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ], [ %19, %.lr.ph.epil.preheader ]
  %i.j = shl nuw i32 %.011.lcssa, 16
  %i.k = or disjoint i32 %i.j, %.012.lcssa
  ret i32 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable
define range(i32 0, -983040) i32 @adler32_bytes(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %update_adler32.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %2 = icmp eq i64 %1, 1
  br i1 %2, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %1, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.015.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %11, %.lr.ph.i ] ; 3 uses
  %.01114.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.g, %.lr.ph.i ]
  %.01213.i = phi i32 [ 1, %.lr.ph.i.preheader.new ], [ %i.e, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %3 = getelementptr i8, ptr %0, i64 %.015.i
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = add nuw nsw i32 %.01213.i, %5
  %7 = urem i32 %6, 65521                         ; 2 uses
  %8 = add nuw nsw i32 %7, %.01114.i
  %9 = urem i32 %8, 65521
  %10 = getelementptr i8, ptr %0, i64 %.015.i
  %i.a = getelementptr i8, ptr %10, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32
  %i.d = add nuw nsw i32 %7, %i.c
  %i.e = urem i32 %i.d, 65521                     ; 4 uses
  %i.f = add nuw nsw i32 %i.e, %9
  %i.g = urem i32 %i.f, 65521                     ; 3 uses
  %11 = add nuw i64 %.015.i, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %update_adler32.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !6

update_adler32.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %update_adler32.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %update_adler32.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.015.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %11, %update_adler32.exit.loopexit.unr-lcssa ]
  %.01114.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.g, %update_adler32.exit.loopexit.unr-lcssa ]
  %.01213.i.epil.init = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.e, %update_adler32.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %12 = getelementptr i8, ptr %0, i64 %.015.i.epil.init
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %.01213.i.epil.init, %14
  %16 = urem i32 %15, 65521                       ; 2 uses
  %17 = add nuw nsw i32 %16, %.01114.i.epil.init
  %18 = urem i32 %17, 65521
  br label %update_adler32.exit.loopexit

update_adler32.exit.loopexit:                     ; preds = %update_adler32.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa5 = phi i32 [ %i.e, %update_adler32.exit.loopexit.unr-lcssa ], [ %16, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi i32 [ %i.g, %update_adler32.exit.loopexit.unr-lcssa ], [ %18, %.lr.ph.i.epil.preheader ]
  %i.h = shl nuw i32 %.lcssa, 16
  %i.i = or disjoint i32 %i.h, %.lcssa5
  br label %update_adler32.exit

update_adler32.exit:                              ; preds = %update_adler32.exit.loopexit, %bb.a
  %i.j = phi i32 [ 1, %bb.a ], [ %i.i, %update_adler32.exit.loopexit ]
  ret i32 %i.j
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable
define range(i32 0, -983040) i32 @adler32_str(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef %0) #3 ; 5 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %update_adler32.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.a, 1
  %1 = icmp eq i64 %i.a, 1
  br i1 %1, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.015.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %10, %.lr.ph.i ] ; 3 uses
  %.01114.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.h, %.lr.ph.i ]
  %.01213.i = phi i32 [ 1, %.lr.ph.i.preheader.new ], [ %i.f, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %2 = getelementptr i8, ptr %0, i64 %.015.i
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = add nuw nsw i32 %.01213.i, %4
  %6 = urem i32 %5, 65521                         ; 2 uses
  %7 = add nuw nsw i32 %6, %.01114.i
  %8 = urem i32 %7, 65521
  %9 = getelementptr i8, ptr %0, i64 %.015.i
  %i.b = getelementptr i8, ptr %9, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = zext i8 %i.c to i32
  %i.e = add nuw nsw i32 %6, %i.d
  %i.f = urem i32 %i.e, 65521                     ; 4 uses
  %i.g = add nuw nsw i32 %i.f, %8
  %i.h = urem i32 %i.g, 65521                     ; 3 uses
  %10 = add nuw i64 %.015.i, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %update_adler32.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !6

update_adler32.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %update_adler32.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %update_adler32.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.015.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %10, %update_adler32.exit.loopexit.unr-lcssa ]
  %.01114.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.h, %update_adler32.exit.loopexit.unr-lcssa ]
  %.01213.i.epil.init = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.f, %update_adler32.exit.loopexit.unr-lcssa ]
  %lcmp.mod9 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %11 = getelementptr i8, ptr %0, i64 %.015.i.epil.init
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %.01213.i.epil.init, %13
  %15 = urem i32 %14, 65521                       ; 2 uses
  %16 = add nuw nsw i32 %15, %.01114.i.epil.init
  %17 = urem i32 %16, 65521
  br label %update_adler32.exit.loopexit

update_adler32.exit.loopexit:                     ; preds = %update_adler32.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa6 = phi i32 [ %i.f, %update_adler32.exit.loopexit.unr-lcssa ], [ %15, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi i32 [ %i.h, %update_adler32.exit.loopexit.unr-lcssa ], [ %17, %.lr.ph.i.epil.preheader ]
  %i.i = shl nuw i32 %.lcssa, 16
  %i.j = or disjoint i32 %i.i, %.lcssa6
  br label %update_adler32.exit

update_adler32.exit:                              ; preds = %update_adler32.exit.loopexit, %bb.a
  %i.k = phi i32 [ 1, %bb.a ], [ %i.j, %update_adler32.exit.loopexit ]
  ret i32 %i.k
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
end_hunk_0
