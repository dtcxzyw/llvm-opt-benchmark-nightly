Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/pseudo_tidy?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Command line arguments unexpectedly appended\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-bad\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"stdout from bad command line arg '-bad'\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"stderr from bad command line arg '-bad'\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"--export-fixes=\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Error opening %s for writing\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%s:0:0: warning: message [checker]\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"1 warning generated.\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %sub_0.preheader, label %.loopexit34

sub_0.preheader:                                  ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %sub_0

sub_0:                                            ; preds = %sub_0.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %sub_0.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 7 uses
  %i.d = load i8, ptr %i.c, align 1               ; 2 uses
  %.not44 = icmp eq i8 %i.d, 45
  br i1 %.not44, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %.not45 = icmp eq i8 %i.f, 112
  br i1 %.not45, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %.preheader.preheader, label %.tail.thread

.preheader.preheader:                             ; preds = %.tail
  %2 = zext nneg i32 %0 to i64                    ; 2 uses
  %indvars.iv.next6488 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %3 = icmp samesign ult i64 %indvars.iv.next6488, %2
  br i1 %3, label %sub_030, label %.loopexit

sub_030:                                          ; preds = %.preheader.preheader, %.preheader.backedge
  %indvars.iv.next6489 = phi i64 [ %indvars.iv.next64, %.preheader.backedge ], [ %indvars.iv.next6488, %.preheader.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next6489
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9    ; 3 uses
  %i.l = load i8, ptr %i.k, align 1
  %.not46 = icmp eq i8 %i.l, 45
  br i1 %.not46, label %sub_131, label %.preheader.backedge

sub_131:                                          ; preds = %sub_030
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %.not47 = icmp eq i8 %i.n, 45
  br i1 %.not47, label %sub_232, label %.preheader.backedge

sub_232:                                          ; preds = %sub_131
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.b, label %.preheader.backedge

.preheader.backedge:                              ; preds = %sub_131, %sub_030, %sub_232
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv.next6489, 1 ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.next64, %2
  br i1 %4, label %sub_030, label %.loopexit, !llvm.loop !12

bb.b:                                             ; preds = %sub_232
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.s = tail call i64 @fwrite(ptr nonnull @.str.2, i64 45, i64 1, ptr %i.r) #4 ; 0 uses
  br label %.loopexit

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(5) @.str.3) #5
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.tail.thread
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.w = tail call i64 @fwrite(ptr nonnull @.str.4, i64 40, i64 1, ptr %i.v) ; 0 uses
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.y = tail call i64 @fwrite(ptr nonnull @.str.5, i64 40, i64 1, ptr %i.x) #4 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %.tail.thread
  %i.z = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(16) @.str.6, i64 noundef 15) #5
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.ac = tail call noalias ptr @fopen(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.7) ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 15
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.af) #6 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ah = tail call i32 @fclose(ptr noundef nonnull %i.ac) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %.pre66 = load i8, ptr %.pre, align 1, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ai = phi i8 [ %.pre66, %bb.g ], [ %i.d, %bb.d ]
  %i.aj = phi ptr [ %.pre, %bb.g ], [ %i.c, %bb.d ]
  %.not28 = icmp eq i8 %i.ai, 45
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.aj) #7 ; 0 uses
  br label %.loopexit34

bb.j:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit34, label %sub_0, !llvm.loop !17

.loopexit34:                                      ; preds = %bb.j, %bb.a, %bb.i
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.an = tail call i64 @fwrite(ptr nonnull @.str.10, i64 21, i64 1, ptr %i.am) #4 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.backedge, %.preheader.preheader, %.loopexit34, %bb.f, %bb.c, %bb.b
  %.025 = phi i32 [ 1, %bb.b ], [ 1, %bb.f ], [ 1, %bb.c ], [ 0, %.loopexit34 ], [ 0, %.preheader.preheader ], [ 0, %.preheader.backedge ]
  ret i32 %.025
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!16 = !{!7, !7, i64 0}
!17 = distinct !{!17, !13}
end_hunk_0
