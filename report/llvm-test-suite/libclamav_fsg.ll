Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_fsg?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"FSG: Rebuilding failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"FSG: .SECT%d RVA:%x VSize:%x ROffset: %x, RSize:%x\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @unfsg_200(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.cli_exe_section, align 4    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #3
  %i.a = tail call i32 @cli_unfsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef null) #3
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.b, align 4, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %3, ptr %i.c, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %3, ptr %i.d, align 4, !tbaa !11
  store i32 %4, ptr %8, align 4, !tbaa !12
  %i.e = call i32 @cli_rebuildpe(ptr noundef %1, ptr noundef nonnull %8, i32 noundef 1, i32 noundef %5, i32 noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef %7) #3
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @cli_unfsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cli_rebuildpe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @unfsg_133(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr %0, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store ptr %1, ptr %i.b, align 8, !tbaa !19
  %.not114 = icmp slt i32 %5, 0
  br i1 %.not114, label %.preheader.._crit_edge_crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = add nuw i32 %5, 1
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.e

.preheader113:                                    ; preds = %bb.f
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.lr.ph123.preheader, label %.preheader112.us.preheader

.preheader112.us.preheader:                       ; preds = %.preheader113
  %wide.trip.count128 = zext nneg i32 %5 to i64
  br label %.preheader112.us

.preheader112.us:                                 ; preds = %.preheader112.us.preheader, %..loopexit_crit_edge.us
  %.pre = load i32, ptr %4, align 4, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %.preheader112.us, %bb.d
  %i.f = phi i32 [ %.pre, %.preheader112.us ], [ %i.n, %bb.d ] ; 3 uses
  %indvars.iv125 = phi i64 [ 0, %.preheader112.us ], [ %indvars.iv.next126, %bb.d ] ; 2 uses
  %.192118.us = phi i32 [ 0, %.preheader112.us ], [ %.2.us, %bb.d ]
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 3 uses
  %i.g = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %indvars.iv.next126 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12   ; 3 uses
  %.not107.us = icmp ugt i32 %i.f, %i.h
  br i1 %.not107.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %indvars.iv125 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i32 %i.h, ptr %i.i, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !7
  store i32 %i.f, ptr %i.g, align 4, !tbaa !12
  %i.m = load <2 x i32>, ptr %i.j, align 4, !tbaa !7
  store <2 x i32> %i.l, ptr %i.j, align 4, !tbaa !7
  store <2 x i32> %i.m, ptr %i.k, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %i.f, %bb.c ], [ %i.h, %bb.b ]
  %.2.us = phi i32 [ 1, %bb.c ], [ %.192118.us, %bb.b ] ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !13

..loopexit_crit_edge.us:                          ; preds = %bb.d
  %.not103.us = icmp eq i32 %.2.us, 0
  br i1 %.not103.us, label %.lr.ph123.preheader, label %.preheader112.us, !llvm.loop !14

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %i.o = phi ptr [ %1, %.lr.ph ], [ %i.z, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.089116 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %.neg108 = sub i64 %i.c, %i.q
  %i.r = trunc i64 %.neg108 to i32
  %i.s = add i32 %2, %i.r
  %i.t = ptrtoint ptr %i.o to i64                 ; 2 uses
  %.neg109 = sub i64 %i.d, %i.t
  %i.u = trunc i64 %.neg109 to i32
  %i.v = add i32 %3, %i.u
  %i.w = call i32 @cli_unfsg(ptr noundef %i.p, ptr noundef %i.o, i32 noundef %i.s, i32 noundef %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #3
  %.not110 = icmp eq i32 %i.w, -1
  br i1 %.not110, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %.089116, ptr %i.y, align 4, !tbaa !9
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.t
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !10
  %i.ae = add i32 %.089116, %i.ac
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader113, label %bb.e, !llvm.loop !15

.preheader.._crit_edge_crit_edge:                 ; preds = %bb.a
  %.pre139 = add nsw i32 %5, 1
  br label %._crit_edge

.lr.ph123.preheader:                              ; preds = %..loopexit_crit_edge.us, %.preheader113
  %i.af = zext nneg i32 %5 to i64                 ; 2 uses
  %9 = add nuw i32 %5, 1                          ; 2 uses
  %wide.trip.count133 = zext i32 %9 to i64
  %10 = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %i.af ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %bb.i
  %indvars.iv130 = phi i64 [ 0, %.lr.ph123.preheader ], [ %indvars.iv.next131, %bb.i ] ; 5 uses
  %.088122 = phi i32 [ %3, %.lr.ph123.preheader ], [ %.1, %bb.i ] ; 4 uses
  %.not106 = icmp eq i64 %indvars.iv130, %i.af
  br i1 %.not106, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph123
  %i.ag = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %indvars.iv130 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12 ; 2 uses
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !12 ; 3 uses
  %i.ak = sub i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !11
  %.neg = sub i32 %.088122, %i.ai
  %i.am = add i32 %.neg, %i.aj
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph123
  store i32 %.088122, ptr %11, align 4, !tbaa !11
  %.pre135 = load i32, ptr %10, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = phi i32 [ %i.ak, %bb.g ], [ %.088122, %bb.h ]
  %i.ao = phi i32 [ %i.aj, %bb.g ], [ %.pre135, %bb.h ]
  %.1 = phi i32 [ %i.am, %bb.g ], [ %.088122, %bb.h ]
  %i.ap = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %indvars.iv130 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !10
  %i.au = trunc nuw nsw i64 %indvars.iv130 to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %i.au, i32 noundef %i.ao, i32 noundef %i.an, i32 noundef %i.ar, i32 noundef %i.at) #3
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge, label %.lr.ph123, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.i, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre139, %.preheader.._crit_edge_crit_edge ], [ %9, %bb.i ]
  %i.av = call i32 @cli_rebuildpe(ptr noundef %1, ptr noundef %4, i32 noundef %.pre-phi, i32 noundef %6, i32 noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef %8) #3
  %.not105 = icmp eq i32 %i.av, 0
  br i1 %.not105, label %bb.j, label %.critedge

bb.j:                                             ; preds = %._crit_edge
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #3
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %._crit_edge, %bb.j
  %.298 = phi i32 [ 0, %bb.j ], [ 1, %._crit_edge ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.298
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"cli_exe_section", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!9 = !{!8, !6, i64 8}
!10 = !{!8, !6, i64 12}
!11 = !{!8, !6, i64 4}
!12 = !{!8, !6, i64 0}
!13 = distinct !{!13, !20}
!14 = distinct !{!14, !20}
!15 = distinct !{!15, !20}
!16 = distinct !{!16, !20}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
end_hunk_0
