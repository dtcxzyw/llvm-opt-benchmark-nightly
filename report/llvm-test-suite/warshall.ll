inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @TC(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, 31
  %i.b = sdiv i32 %i.a, 32
  %i.c = shl nsw i32 %i.b, 2                      ; 2 uses
  %i.d = mul nsw i32 %i.c, %1                     ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.preheader.lr.ph, label %._crit_edge47

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.h = sext i32 %i.c to i64                     ; 6 uses
  %i.i = icmp slt i32 %1, 1
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.046.us = phi ptr [ %i.as, %._crit_edge.us ], [ %0, %.preheader.lr.ph ] ; 6 uses
  %.02945.us = phi ptr [ %spec.select38.us, %._crit_edge.us ], [ %0, %.preheader.lr.ph ] ; 2 uses
  %.03044.us = phi i32 [ %spec.select.us, %._crit_edge.us ], [ 1, %.preheader.lr.ph ] ; 2 uses
  %i.j = mul i64 %indvar, %i.h
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep52 = getelementptr i8, ptr %i.k, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %.loopexit.us
  %.03242.us = phi ptr [ %.02945.us, %.preheader.us ], [ %i.ao, %.loopexit.us ] ; 2 uses
  %.03341.us = phi ptr [ %0, %.preheader.us ], [ %.2.us, %.loopexit.us ] ; 9 uses
  %.03341.us50 = ptrtoint ptr %.03341.us to i64   ; 6 uses
  %i.l = load i32, ptr %.03242.us, align 4, !tbaa !4
  %i.m = and i32 %i.l, %.03044.us
  %.not.us = icmp eq i32 %i.m, 0                  ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.03341.us, i64 %i.h ; 2 uses
  %brmerge = or i1 %.not.us, %i.i
  %.mux = select i1 %.not.us, ptr %i.n, ptr %.03341.us
  br i1 %brmerge, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.o = add i64 %i.h, %.03341.us50
  %i.p = add i64 %.03341.us50, 4
  %umax54 = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.p)
  %i.q = xor i64 %.03341.us50, -1
  %i.r = add i64 %umax54, %i.q                    ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  br i1 %min.iters.check, label %.lr.ph.us.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.preheader
  %scevgep = getelementptr i8, ptr %.03341.us, i64 4
  %i.u = add i64 %i.h, %.03341.us50
  %i.v = add i64 %.03341.us50, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.v)
  %i.w = xor i64 %.03341.us50, -1
  %i.x = add i64 %umax, %i.w
  %i.y = and i64 %i.x, -4                         ; 2 uses
  %scevgep51 = getelementptr i8, ptr %scevgep, i64 %i.y
  %scevgep53 = getelementptr i8, ptr %scevgep52, i64 %i.y
  %bound0 = icmp ult ptr %.03341.us, %scevgep53
  %bound1 = icmp ult ptr %.046.us, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.us.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %.03341.us, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %.046.us, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03341.us, i64 %i.ac ; 3 uses
  %next.gep55 = getelementptr i8, ptr %.046.us, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep55, align 4, !tbaa !4, !alias.scope !8
  %wide.load56.a = load <4 x i32>, ptr %i.ad, align 4, !tbaa !4, !alias.scope !8
  %i.ae = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load57.a = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !11, !noalias !8
  %wide.load58 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !4, !alias.scope !11, !noalias !8
  %i.af = or <4 x i32> %wide.load57.a, %wide.load
  %i.ag = or <4 x i32> %wide.load58, %wide.load56.a
  store <4 x i32> %i.af, ptr %next.gep, align 4, !tbaa !4, !alias.scope !11, !noalias !8
  store <4 x i32> %i.ag, ptr %i.ae, align 4, !tbaa !4, !alias.scope !11, !noalias !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph.us.preheader60

.lr.ph.us.preheader60:                            ; preds = %vector.memcheck, %.lr.ph.us.preheader, %middle.block
  %.13440.us.ph = phi ptr [ %.03341.us, %vector.memcheck ], [ %.03341.us, %.lr.ph.us.preheader ], [ %i.aa, %middle.block ]
  %.03539.us.ph = phi ptr [ %.046.us, %vector.memcheck ], [ %.046.us, %.lr.ph.us.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader60, %.lr.ph.us
  %.13440.us = phi ptr [ %i.ak, %.lr.ph.us ], [ %.13440.us.ph, %.lr.ph.us.preheader60 ] ; 3 uses
  %.03539.us = phi ptr [ %i.ai, %.lr.ph.us ], [ %.03539.us.ph, %.lr.ph.us.preheader60 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.03539.us, i64 4
  %i.aj = load i32, ptr %.03539.us, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.13440.us, i64 4 ; 3 uses
  %i.al = load i32, ptr %.13440.us, align 4, !tbaa !4
  %i.am = or i32 %i.al, %i.aj
  store i32 %i.am, ptr %.13440.us, align 4, !tbaa !4
  %i.an = icmp ult ptr %i.ak, %i.n
  br i1 %i.an, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !17

.loopexit.us:                                     ; preds = %.lr.ph.us, %middle.block, %bb.b
  %.2.us = phi ptr [ %.mux, %bb.b ], [ %i.aa, %middle.block ], [ %i.ak, %.lr.ph.us ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.03242.us, i64 %i.h
  %i.ap = icmp ult ptr %.2.us, %i.f
  br i1 %i.ap, label %bb.b, label %._crit_edge.us, !llvm.loop !18

._crit_edge.us:                                   ; preds = %.loopexit.us
  %i.aq = shl i32 %.03044.us, 1                   ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %i.aq, i32 1)
  %spec.select38.idx.us = select i1 %i.ar, i64 4, i64 0
  %spec.select38.us = getelementptr inbounds nuw i8, ptr %.02945.us, i64 %spec.select38.idx.us
  %i.as = getelementptr inbounds i8, ptr %.046.us, i64 %i.h ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.f
  %indvar.next = add i64 %indvar, 1
  br i1 %i.at, label %.preheader.us, label %._crit_edge47, !llvm.loop !19

._crit_edge47:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @RTC(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, 31
  %i.b = sdiv i32 %i.a, 32
  %i.c = shl nsw i32 %i.b, 2                      ; 3 uses
  %i.d = mul nsw i32 %i.c, %1                     ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 3 uses
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.preheader.lr.ph.i, label %._crit_edge

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.h = sext i32 %i.c to i64                     ; 6 uses
  %i.i = icmp slt i32 %1, 1
  br i1 %i.i, label %.lr.ph, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i.split ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.046.us.i = phi ptr [ %i.as, %._crit_edge.us.i.split ], [ %0, %.preheader.lr.ph.i ] ; 6 uses
  %.02945.us.i = phi ptr [ %spec.select38.us.i, %._crit_edge.us.i.split ], [ %0, %.preheader.lr.ph.i ] ; 2 uses
  %.03044.us.i = phi i32 [ %spec.select.us.i, %._crit_edge.us.i.split ], [ 1, %.preheader.lr.ph.i ] ; 2 uses
  %i.j = mul i64 %indvar, %i.h
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep27 = getelementptr i8, ptr %i.k, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.us.i, %.preheader.us.i
  %.03242.us.i = phi ptr [ %.02945.us.i, %.preheader.us.i ], [ %i.ao, %.loopexit.us.i ] ; 2 uses
  %.03341.us.i = phi ptr [ %0, %.preheader.us.i ], [ %.2.us.i, %.loopexit.us.i ] ; 8 uses
  %.03341.us.i25 = ptrtoint ptr %.03341.us.i to i64 ; 6 uses
  %i.l = load i32, ptr %.03242.us.i, align 4, !tbaa !4
  %i.m = and i32 %i.l, %.03044.us.i
  %.not.us.i = icmp eq i32 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %.03341.us.i, i64 %i.h ; 2 uses
  br i1 %.not.us.i, label %.loopexit.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %bb.b
  %i.o = add i64 %i.h, %.03341.us.i25
  %i.p = add i64 %.03341.us.i25, 4
  %umax29 = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.p)
  %i.q = xor i64 %.03341.us.i25, -1
  %i.r = add i64 %umax29, %i.q                    ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  br i1 %min.iters.check, label %.lr.ph.us.i.preheader35, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.i.preheader
  %scevgep = getelementptr i8, ptr %.03341.us.i, i64 4
  %i.u = add i64 %i.h, %.03341.us.i25
  %i.v = add i64 %.03341.us.i25, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.v)
  %i.w = xor i64 %.03341.us.i25, -1
  %i.x = add i64 %umax, %i.w
  %i.y = and i64 %i.x, -4                         ; 2 uses
  %scevgep26 = getelementptr i8, ptr %scevgep, i64 %i.y
  %scevgep28 = getelementptr i8, ptr %scevgep27, i64 %i.y
  %bound0 = icmp ult ptr %.03341.us.i, %scevgep28
  %bound1 = icmp ult ptr %.046.us.i, %scevgep26
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.us.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %.03341.us.i, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %.046.us.i, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03341.us.i, i64 %i.ac ; 3 uses
  %next.gep30 = getelementptr i8, ptr %.046.us.i, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep30, align 4, !tbaa !4, !alias.scope !20
  %wide.load31.a = load <4 x i32>, ptr %i.ad, align 4, !tbaa !4, !alias.scope !20
  %i.ae = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load32.a = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !23, !noalias !20
  %wide.load33 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !4, !alias.scope !23, !noalias !20
  %i.af = or <4 x i32> %wide.load32.a, %wide.load
  %i.ag = or <4 x i32> %wide.load33, %wide.load31.a
  store <4 x i32> %i.af, ptr %next.gep, align 4, !tbaa !4, !alias.scope !23, !noalias !20
  store <4 x i32> %i.ag, ptr %i.ae, align 4, !tbaa !4, !alias.scope !23, !noalias !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.loopexit.us.i, label %.lr.ph.us.i.preheader35

.lr.ph.us.i.preheader35:                          ; preds = %vector.memcheck, %.lr.ph.us.i.preheader, %middle.block
  %.13440.us.i.ph = phi ptr [ %.03341.us.i, %vector.memcheck ], [ %.03341.us.i, %.lr.ph.us.i.preheader ], [ %i.aa, %middle.block ]
  %.03539.us.i.ph = phi ptr [ %.046.us.i, %vector.memcheck ], [ %.046.us.i, %.lr.ph.us.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader35, %.lr.ph.us.i
  %.13440.us.i = phi ptr [ %i.ak, %.lr.ph.us.i ], [ %.13440.us.i.ph, %.lr.ph.us.i.preheader35 ] ; 3 uses
  %.03539.us.i = phi ptr [ %i.ai, %.lr.ph.us.i ], [ %.03539.us.i.ph, %.lr.ph.us.i.preheader35 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.03539.us.i, i64 4
  %i.aj = load i32, ptr %.03539.us.i, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.13440.us.i, i64 4 ; 3 uses
  %i.al = load i32, ptr %.13440.us.i, align 4, !tbaa !4
  %i.am = or i32 %i.al, %i.aj
  store i32 %i.am, ptr %.13440.us.i, align 4, !tbaa !4
  %i.an = icmp ult ptr %i.ak, %i.n
  br i1 %i.an, label %.lr.ph.us.i, label %.loopexit.us.i, !llvm.loop !26

.loopexit.us.i:                                   ; preds = %.lr.ph.us.i, %middle.block, %bb.b
  %.2.us.i = phi ptr [ %i.n, %bb.b ], [ %i.aa, %middle.block ], [ %i.ak, %.lr.ph.us.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.03242.us.i, i64 %i.h
  %i.ap = icmp ult ptr %.2.us.i, %i.f
  br i1 %i.ap, label %bb.b, label %._crit_edge.us.i.split, !llvm.loop !18

._crit_edge.us.i.split:                           ; preds = %.loopexit.us.i
  %i.aq = shl i32 %.03044.us.i, 1                 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %spec.select.us.i = tail call i32 @llvm.umax.i32(i32 %i.aq, i32 1)
  %spec.select38.idx.us.i = select i1 %i.ar, i64 4, i64 0
  %spec.select38.us.i = getelementptr inbounds nuw i8, ptr %.02945.us.i, i64 %spec.select38.idx.us.i
  %i.as = getelementptr inbounds nuw i8, ptr %.046.us.i, i64 %i.h ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.f
  %indvar.next = add i64 %indvar, 1
  br i1 %i.at, label %.preheader.us.i, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %._crit_edge.us.i.split, %.preheader.lr.ph.i
  %i.au = sext i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.020 = phi i32 [ 1, %.lr.ph ], [ %spec.select18, %bb.c ] ; 2 uses
  %.01519 = phi ptr [ %0, %.lr.ph ], [ %i.az, %bb.c ] ; 3 uses
  %i.av = load i32, ptr %.01519, align 4, !tbaa !4
  %i.aw = or i32 %i.av, %.020
  store i32 %i.aw, ptr %.01519, align 4, !tbaa !4
  %i.ax = shl i32 %.020, 1                        ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  %spec.select.idx = select i1 %i.ay, i64 4, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.01519, i64 %spec.select.idx
  %spec.select18 = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 1)
  %i.az = getelementptr inbounds i8, ptr %spec.select, i64 %i.au ; 2 uses
  %i.ba = icmp ult ptr %i.az, %i.f
  br i1 %i.ba, label %bb.c, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = !{!9}
!9 = distinct !{!9, !10}
!10 = distinct !{!10, !"LVerDomain"}
!11 = !{!12}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !14, !15, !16}
!26 = distinct !{!26, !14, !15}
!27 = distinct !{!27, !14}
end_hunk_0
