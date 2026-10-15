Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_dispatch_string_kernel?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZL_DispatchString_encode(i8 noundef zeroext %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x ptr], align 16             ; 7 uses
  %.not = icmp eq i8 %0, 0
  br i1 %.not, label %.thread, label %.lr.ph.preheader

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i8 %0 to i64                        ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.d = shl nuw nsw i64 %i.b, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 8 %1, i64 %i.d, i1 false), !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %.lr.ph.preheader
  %or.cond = icmp ult i64 %6, 2
  br i1 %or.cond, label %.preheader, label %.lr.ph.preheader114

.lr.ph.preheader114:                              ; preds = %._crit_edge
  %.075109 = add i64 %6, -1
  br label %.lr.ph

.preheader85:                                     ; preds = %.lr.ph
  %.075 = add i64 %.075113, -1                    ; 2 uses
  %.not84 = icmp eq i64 %.075, 0
  br i1 %.not84, label %.preheader, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %.lr.ph.preheader114, %.preheader85
  %.075113 = phi i64 [ %.075, %.preheader85 ], [ %.075109, %.lr.ph.preheader114 ] ; 3 uses
  %.075.in112 = phi i64 [ %.075113, %.preheader85 ], [ %6, %.lr.ph.preheader114 ] ; 2 uses
  %.076111 = phi i64 [ %i.h, %.preheader85 ], [ 0, %.lr.ph.preheader114 ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.075113
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14
  %i.g = zext i32 %i.f to i64
  %i.h = add nuw nsw i64 %.076111, %i.g           ; 2 uses
  %i.i = icmp samesign ugt i64 %i.h, 31
  br i1 %i.i, label %.lr.ph90, label %.preheader85, !llvm.loop !19

.preheader:                                       ; preds = %.preheader85, %bb.d, %._crit_edge
  %.178104 = phi i64 [ %.075.in112, %bb.d ], [ 0, %._crit_edge ], [ 0, %.preheader85 ] ; 2 uses
  %.071.lcssa = phi ptr [ %i.y, %bb.d ], [ %4, %._crit_edge ], [ %4, %.preheader85 ]
  %i.j = icmp ult i64 %.178104, %6
  br i1 %i.j, label %.lr.ph93, label %._crit_edge94

.lr.ph90:                                         ; preds = %.lr.ph, %bb.d
  %.07188 = phi ptr [ %i.y, %bb.d ], [ %4, %.lr.ph ] ; 3 uses
  %.07487 = phi i64 [ %i.ad, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 %.07487
  %i.l = load i8, ptr %i.k, align 1, !tbaa !22
  %i.m = zext i8 %i.l to i64                      ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.m ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.07487
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14   ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.m
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.o
  store i32 %i.q, ptr %i.t, align 4, !tbaa !14
  %i.u = icmp ult i32 %i.q, 33
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 3 uses
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(32) %.07188, i64 32, i1 false)
  %.pre = zext nneg i32 %i.q to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph90
  %i.x = zext i32 %i.q to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %.07188, i64 %i.x, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %i.x, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.07188, i64 %.pre-phi ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre-phi
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !12
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !16
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.n, align 8, !tbaa !16
  %i.ad = add nuw i64 %.07487, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %.075.in112
  br i1 %exitcond.not, label %.preheader, label %.lr.ph90, !llvm.loop !20

._crit_edge94:                                    ; preds = %.lr.ph93, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void

.lr.ph93:                                         ; preds = %.preheader, %.lr.ph93
  %.192 = phi ptr [ %i.ar, %.lr.ph93 ], [ %.071.lcssa, %.preheader ] ; 2 uses
  %.07391 = phi i64 [ %i.av, %.lr.ph93 ], [ %.178104, %.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 %.07391
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !22
  %i.ag = zext i8 %i.af to i64                    ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ag ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.07391
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ai
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !14
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 2 uses
  %i.aq = zext i32 %i.ak to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %.192, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.192, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !12
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.ah, align 8, !tbaa !16
  %i.av = add nuw i64 %.07391, 1                  ; 2 uses
  %exitcond97.not = icmp eq i64 %i.av, %6
  br i1 %exitcond97.not, label %._crit_edge94, label %.lr.ph93, !llvm.loop !21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZL_DispatchString_encode16(i16 noundef zeroext %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x ptr], align 16            ; 7 uses
  %.not = icmp eq i16 %0, 0
  br i1 %.not, label %.thread, label %.lr.ph.preheader

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i16 %0 to i64                       ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.d = shl nuw nsw i64 %i.b, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 8 %1, i64 %i.d, i1 false), !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %.lr.ph.preheader
  %or.cond = icmp ult i64 %6, 2
  br i1 %or.cond, label %.preheader, label %.lr.ph.preheader114

.lr.ph.preheader114:                              ; preds = %._crit_edge
  %.075109 = add i64 %6, -1
  br label %.lr.ph

.preheader85:                                     ; preds = %.lr.ph
  %.075 = add i64 %.075113, -1                    ; 2 uses
  %.not84 = icmp eq i64 %.075, 0
  br i1 %.not84, label %.preheader, label %.lr.ph, !llvm.loop !23

.lr.ph:                                           ; preds = %.lr.ph.preheader114, %.preheader85
  %.075113 = phi i64 [ %.075, %.preheader85 ], [ %.075109, %.lr.ph.preheader114 ] ; 3 uses
  %.075.in112 = phi i64 [ %.075113, %.preheader85 ], [ %6, %.lr.ph.preheader114 ] ; 2 uses
  %.076111 = phi i64 [ %i.h, %.preheader85 ], [ 0, %.lr.ph.preheader114 ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.075113
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14
  %i.g = zext i32 %i.f to i64
  %i.h = add nuw nsw i64 %.076111, %i.g           ; 2 uses
  %i.i = icmp samesign ugt i64 %i.h, 31
  br i1 %i.i, label %.lr.ph90, label %.preheader85, !llvm.loop !23

.preheader:                                       ; preds = %.preheader85, %bb.d, %._crit_edge
  %.178104 = phi i64 [ %.075.in112, %bb.d ], [ 0, %._crit_edge ], [ 0, %.preheader85 ] ; 2 uses
  %.071.lcssa = phi ptr [ %i.y, %bb.d ], [ %4, %._crit_edge ], [ %4, %.preheader85 ]
  %i.j = icmp ult i64 %.178104, %6
  br i1 %i.j, label %.lr.ph93, label %._crit_edge94

.lr.ph90:                                         ; preds = %.lr.ph, %bb.d
  %.07188 = phi ptr [ %i.y, %bb.d ], [ %4, %.lr.ph ] ; 3 uses
  %.07487 = phi i64 [ %i.ad, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %.07487
  %i.l = load i16, ptr %i.k, align 2, !tbaa !27
  %i.m = zext i16 %i.l to i64                     ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.m ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.07487
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14   ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.m
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.o
  store i32 %i.q, ptr %i.t, align 4, !tbaa !14
  %i.u = icmp ult i32 %i.q, 33
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 3 uses
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(32) %.07188, i64 32, i1 false)
  %.pre = zext nneg i32 %i.q to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph90
  %i.x = zext i32 %i.q to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %.07188, i64 %i.x, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %i.x, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.07188, i64 %.pre-phi ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.pre-phi
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !12
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !16
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.n, align 8, !tbaa !16
  %i.ad = add nuw i64 %.07487, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %.075.in112
  br i1 %exitcond.not, label %.preheader, label %.lr.ph90, !llvm.loop !24

._crit_edge94:                                    ; preds = %.lr.ph93, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void

.lr.ph93:                                         ; preds = %.preheader, %.lr.ph93
  %.192 = phi ptr [ %i.ar, %.lr.ph93 ], [ %.071.lcssa, %.preheader ] ; 2 uses
  %.07391 = phi i64 [ %i.av, %.lr.ph93 ], [ %.178104, %.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %.07391
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !27
  %i.ag = zext i16 %i.af to i64                   ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ag ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.07391
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ai
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !14
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 2 uses
  %i.aq = zext i32 %i.ak to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %.192, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.192, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !12
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.ah, align 8, !tbaa !16
  %i.av = add nuw i64 %.07391, 1                  ; 2 uses
  %exitcond97.not = icmp eq i64 %i.av, %6
  br i1 %exitcond97.not, label %._crit_edge94, label %.lr.ph93, !llvm.loop !25
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!8, !8, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 int", !11, i64 0}
!18 = !{!17, !17, i64 0}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = !{!7, !7, i64 0}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = !{!"short", !7, i64 0}
!27 = !{!26, !26, i64 0}
end_hunk_0
