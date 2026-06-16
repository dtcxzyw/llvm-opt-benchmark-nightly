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
  store i32 0, ptr %i.b, align 4, !tbaa !8
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
  store ptr %0, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store ptr %1, ptr %i.b, align 8, !tbaa !13
  %.not114 = icmp slt i32 %5, 0
  br i1 %.not114, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = ptrtoint ptr %1 to i64
  br label %bb.e

.preheader113:                                    ; preds = %bb.f
  %.not.a = icmp eq i32 %5, 0
  br i1 %.not.a, label %.lr.ph123.preheader, label %.preheader112.us.preheader

.preheader112.us.preheader:                       ; preds = %.preheader113
  %wide.trip.count128 = zext nneg i32 %5 to i64
  br label %.preheader112.us

.preheader112.us:                                 ; preds = %.preheader112.us.preheader, %..loopexit_crit_edge.us
  %.pre = load i32, ptr %4, align 4, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %.preheader112.us, %bb.d
  %i.e = phi i32 [ %.pre, %.preheader112.us ], [ %i.m, %bb.d ] ; 3 uses
  %indvars.iv125 = phi i64 [ 0, %.preheader112.us ], [ %indvars.iv.next126, %bb.d ] ; 2 uses
  %.192117.us = phi i32 [ 0, %.preheader112.us ], [ %.293.us, %bb.d ]
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %indvars.iv.next126 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12   ; 3 uses
  %.not107.us = icmp ugt i32 %i.e, %i.g
  br i1 %.not107.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %indvars.iv125 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %i.g, ptr %i.h, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.k = load <2 x i32>, ptr %i.j, align 4, !tbaa !4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !12
  %i.l = load <2 x i32>, ptr %i.i, align 4, !tbaa !4
  store <2 x i32> %i.k, ptr %i.i, align 4, !tbaa !4
  store <2 x i32> %i.l, ptr %i.j, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.b ]
  %.293.us = phi i32 [ 1, %bb.c ], [ %.192117.us, %bb.b ] ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !16

..loopexit_crit_edge.us:                          ; preds = %bb.d
  %.not103.us = icmp eq i32 %.293.us, 0
  br i1 %.not103.us, label %.lr.ph123.preheader, label %.preheader112.us, !llvm.loop !18

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %i.n = phi ptr [ %1, %.lr.ph ], [ %i.y, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.095115 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.f ] ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %.neg108 = sub i64 %i.c, %i.p
  %i.q = trunc i64 %.neg108 to i32
  %i.r = add i32 %2, %i.q
  %i.s = ptrtoint ptr %i.n to i64                 ; 2 uses
  %.neg109 = sub i64 %i.d, %i.s
  %i.t = trunc i64 %.neg109 to i32
  %i.u = add i32 %3, %i.t
  %i.v = call i32 @cli_unfsg(ptr noundef %i.o, ptr noundef %i.n, i32 noundef %i.r, i32 noundef %i.u, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #3
  %.not110 = icmp eq i32 %i.v, -1
  br i1 %.not110, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %.095115, ptr %i.x, align 4, !tbaa !8
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.s
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !10
  %i.ad = add i32 %.095115, %i.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %9 = trunc nuw i64 %indvars.iv.next to i32
  %.not = icmp slt i32 %5, %9
  br i1 %.not, label %.preheader113, label %bb.e, !llvm.loop !19

.lr.ph123.preheader:                              ; preds = %..loopexit_crit_edge.us, %.preheader113
  %i.ae = zext nneg i32 %5 to i64                 ; 2 uses
  %i.af = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %bb.i
  %indvars.iv130 = phi i64 [ 0, %.lr.ph123.preheader ], [ %indvars.iv.next131, %bb.i ] ; 5 uses
  %.097121 = phi i32 [ %3, %.lr.ph123.preheader ], [ %.198, %bb.i ] ; 4 uses
  %.not106 = icmp eq i64 %indvars.iv130, %i.ae
  br i1 %.not106, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph123
  %i.ah = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %indvars.iv130 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !12 ; 2 uses
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !12 ; 3 uses
  %i.al = sub i32 %i.aj, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.al, ptr %i.am, align 4, !tbaa !11
  %.neg = sub i32 %.097121, %i.aj
  %i.an = add i32 %.neg, %i.ak
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph123
  store i32 %.097121, ptr %i.ag, align 4, !tbaa !11
  %.pre135 = load i32, ptr %i.af, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi i32 [ %i.al, %bb.g ], [ %.097121, %bb.h ]
  %i.ap = phi i32 [ %i.ak, %bb.g ], [ %.pre135, %bb.h ]
  %.198 = phi i32 [ %i.an, %bb.g ], [ %.097121, %bb.h ]
  %i.aq = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %indvars.iv130 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !10
  %i.av = trunc nuw nsw i64 %indvars.iv130 to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %i.av, i32 noundef %i.ap, i32 noundef %i.ao, i32 noundef %i.as, i32 noundef %i.au) #3
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %10 = trunc nuw i64 %indvars.iv.next131 to i32
  %.not104 = icmp slt i32 %5, %10
  br i1 %.not104, label %._crit_edge, label %.lr.ph123, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %11 = add nsw i32 %5, 1
  %i.aw = call i32 @cli_rebuildpe(ptr noundef %1, ptr noundef %4, i32 noundef %11, i32 noundef %6, i32 noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef %8) #3
  %.not105 = icmp eq i32 %i.aw, 0
  br i1 %.not105, label %bb.j, label %.critedge

bb.j:                                             ; preds = %._crit_edge
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #3
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %._crit_edge, %bb.j
  %.2 = phi i32 [ 0, %bb.j ], [ 1, %._crit_edge ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.2
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!9 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!10 = !{!9, !5, i64 12}
!11 = !{!9, !5, i64 4}
!12 = !{!9, !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
end_hunk_0
