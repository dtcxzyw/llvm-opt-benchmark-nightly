begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"mmap'ed binhex file\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"No binhex line found\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"x-binhex\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Binhex file decoded to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Couldn't decode binhex file to %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -124, 1) i32 @cli_binhex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = call i32 @fstat(i32 noundef %1, ptr noundef nonnull %2) #6
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8    ; 7 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @messageCreate() #6        ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @mmap(ptr noundef null, i64 noundef %i.d, i32 noundef 1, i32 noundef 2, i32 noundef %1, i64 noundef 0) #6 ; 5 uses
  %i.i = icmp eq ptr %i.h, inttoptr (i64 -1 to ptr)
  br i1 %i.i, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #6
  %i.j = icmp sgt i64 %i.d, 0
  br i1 %i.j, label %.preheader, label %.thread.thread97

.thread.thread97:                                 ; preds = %bb.e
  %i.k = tail call i32 @munmap(ptr noundef %i.h, i64 noundef %i.d) #6 ; 0 uses
  br label %bb.k

.preheader:                                       ; preds = %bb.e, %bb.i
  %.05282 = phi ptr [ %i.ac, %bb.i ], [ %i.h, %bb.e ] ; 3 uses
  %.05481 = phi ptr [ %i.s, %bb.i ], [ null, %bb.e ] ; 3 uses
  %.05680 = phi i64 [ %i.ad, %bb.i ], [ %i.d, %bb.e ] ; 3 uses
  %i.l = trunc i64 %.05680 to i32
  %scevgep = getelementptr i8, ptr %.05282, i64 %.05680
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.g
  %.04979 = phi ptr [ %.05282, %.preheader ], [ %i.p, %bb.g ] ; 4 uses
  %.05078 = phi i32 [ 0, %.preheader ], [ %i.n, %bb.g ] ; 3 uses
  %.15777 = phi i64 [ %.05680, %.preheader ], [ %i.o, %bb.g ] ; 3 uses
  %i.m = load i8, ptr %.04979, align 1, !tbaa !12
  switch i8 %i.m, label %bb.g [
    i8 10, label %.critedge
    i8 13, label %.critedge
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw nsw i32 %.05078, 1
  %i.o = add nsw i64 %.15777, -1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.04979, i64 1
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.critedge, label %bb.f, !llvm.loop !13

.critedge:                                        ; preds = %bb.f, %bb.f, %bb.g
  %.157.lcssa = phi i64 [ %.15777, %bb.f ], [ %.15777, %bb.f ], [ 0, %bb.g ] ; 2 uses
  %.050.lcssa = phi i32 [ %.05078, %bb.f ], [ %.05078, %bb.f ], [ %i.l, %bb.g ] ; 2 uses
  %.049.lcssa = phi ptr [ %.04979, %bb.f ], [ %.04979, %bb.f ], [ %scevgep, %bb.g ] ; 2 uses
  %i.q = add nuw nsw i32 %.050.lcssa, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = tail call ptr @cli_realloc(ptr noundef %.05481, i64 noundef %i.r) #6 ; 6 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.u = zext nneg i32 %.050.lcssa to i64         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %.05282, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  store i8 0, ptr %i.v, align 1, !tbaa !12
  %i.w = tail call i32 @messageAddStr(ptr noundef nonnull %i.f, ptr noundef nonnull %i.s) #6
  %i.x = icmp sgt i32 %i.w, -1
  %i.y = icmp sgt i64 %.157.lcssa, 0
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.z = load i8, ptr %.049.lcssa, align 1, !tbaa !12
  %i.aa = icmp eq i8 %i.z, 13                     ; 2 uses
  %i.ab = sext i1 %i.aa to i64
  %.258 = add nsw i64 %.157.lcssa, %i.ab          ; 2 uses
  %.1.idx = zext i1 %i.aa to i64
  %.1 = getelementptr inbounds nuw i8, ptr %.049.lcssa, i64 %.1.idx
  %i.ac = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ad = add nsw i64 %.258, -1
  %i.ae = icmp samesign ugt i64 %.258, 1
  br i1 %i.ae, label %.preheader, label %.sink.split

.thread:                                          ; preds = %.critedge
  %i.af = tail call i32 @munmap(ptr noundef %i.h, i64 noundef %i.d) #6 ; 0 uses
  %.not67 = icmp eq ptr %.05481, null
  br i1 %.not67, label %bb.k, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.h
  %i.ag = tail call i32 @munmap(ptr noundef %i.h, i64 noundef %i.d) #6 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %.thread
  %.275 = phi ptr [ %.05481, %.thread ], [ %i.s, %.sink.split ]
  tail call void @free(ptr noundef nonnull %.275) #6
  br label %bb.k

bb.k:                                             ; preds = %.thread.thread97, %bb.j, %.thread
  %i.ah = tail call ptr @binhexBegin(ptr noundef nonnull %i.f) #6
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @messageDestroy(ptr noundef nonnull %i.f) #6
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1) #6
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  tail call void @messageSetEncoding(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.2) #6
  %i.aj = tail call ptr @messageToFileblob(ptr noundef nonnull %i.f, ptr noundef %0, i32 noundef 1) #6 ; 3 uses
  %.not68 = icmp eq ptr %i.aj, null
  br i1 %.not68, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = tail call ptr @fileblobGetFilename(ptr noundef nonnull %i.aj) #6
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, ptr noundef %i.ak) #6
  tail call void @fileblobDestroy(ptr noundef nonnull %i.aj) #6
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.4, ptr noundef %0) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.d
  %.0.ph = phi i32 [ -114, %bb.d ], [ -123, %bb.o ], [ 0, %bb.n ]
  tail call void @messageDestroy(ptr noundef nonnull %i.f) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.c, %bb.b, %bb.a, %bb.l
  %.0 = phi i32 [ -114, %bb.c ], [ -115, %bb.a ], [ 0, %bb.b ], [ -124, %bb.l ], [ %.0.ph, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @messageCreate() local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @messageDestroy(ptr noundef) local_unnamed_addr #3

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #3

declare ptr @cli_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @messageAddStr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare ptr @binhexBegin(ptr noundef) local_unnamed_addr #3

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #3

declare void @messageSetEncoding(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @messageToFileblob(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fileblobGetFilename(ptr noundef) local_unnamed_addr #3

declare void @fileblobDestroy(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!8 = !{!9, !10, i64 48}
!9 = !{!"stat", !10, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !11, i64 72, !11, i64 88, !11, i64 104, !6, i64 120}
!10 = !{!"long", !6, i64 0}
!11 = !{!"timespec", !10, i64 0, !10, i64 8}
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
