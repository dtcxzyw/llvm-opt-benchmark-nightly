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
  %.046.us = phi ptr [ %i.at, %._crit_edge.us ], [ %0, %.preheader.lr.ph ] ; 6 uses
  %.02945.us = phi ptr [ %spec.select38.us, %._crit_edge.us ], [ %0, %.preheader.lr.ph ] ; 2 uses
  %.03044.us = phi i32 [ %spec.select.us, %._crit_edge.us ], [ 1, %.preheader.lr.ph ] ; 2 uses
  %i.j = mul i64 %indvar, %i.h
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep52 = getelementptr i8, ptr %i.k, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %.loopexit.us
  %.03242.us = phi ptr [ %.02945.us, %.preheader.us ], [ %i.ap, %.loopexit.us ] ; 2 uses
  %.03341.us = phi ptr [ %0, %.preheader.us ], [ %.2.us, %.loopexit.us ] ; 9 uses
  %.03341.us50 = ptrtoaddr ptr %.03341.us to i64  ; 6 uses
  %i.l = load i32, ptr %.03242.us, align 4, !tbaa !4
  %i.m = and i32 %i.l, %.03044.us
  %.not.us = icmp eq i32 %i.m, 0                  ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.03341.us, i64 %i.h ; 2 uses
  %brmerge = or i1 %.not.us, %i.i
  %.mux = select i1 %.not.us, ptr %i.n, ptr %.03341.us
  br i1 %brmerge, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.o = add i64 %.03341.us50, %i.h
  %i.p = add i64 %.03341.us50, 4
  %i.q = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.p)
  %i.r = xor i64 %.03341.us50, -1
  %i.s = add i64 %i.q, %i.r                       ; 2 uses
  %i.t = lshr i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 44
  br i1 %min.iters.check, label %.lr.ph.us.preheader59, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.preheader
  %scevgep = getelementptr i8, ptr %.03341.us, i64 4
  %i.v = add i64 %i.h, %.03341.us50
  %i.w = add i64 %.03341.us50, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.w)
  %i.x = xor i64 %.03341.us50, -1
  %i.y = add i64 %umax, %i.x
  %i.z = and i64 %i.y, -4                         ; 2 uses
  %scevgep51 = getelementptr i8, ptr %scevgep, i64 %i.z
  %scevgep53 = getelementptr i8, ptr %scevgep52, i64 %i.z
  %bound0 = icmp ult ptr %.03341.us, %scevgep53
  %bound1 = icmp ult ptr %.046.us, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.us.preheader59, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.03341.us, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %.046.us, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03341.us, i64 %i.ad ; 3 uses
  %next.gep54 = getelementptr i8, ptr %.046.us, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep54, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep54, align 4, !tbaa !4, !alias.scope !8
  %wide.load55 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !4, !alias.scope !8
  %i.af = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load56 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !11, !noalias !8
  %wide.load57 = load <4 x i32>, ptr %i.af, align 4, !tbaa !4, !alias.scope !11, !noalias !8
  %i.ag = or <4 x i32> %wide.load56, %wide.load
  %i.ah = or <4 x i32> %wide.load57, %wide.load55
  store <4 x i32> %i.ag, ptr %next.gep, align 4, !tbaa !4, !alias.scope !11, !noalias !8
  store <4 x i32> %i.ah, ptr %i.af, align 4, !tbaa !4, !alias.scope !11, !noalias !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph.us.preheader59

.lr.ph.us.preheader59:                            ; preds = %vector.memcheck, %.lr.ph.us.preheader, %middle.block
  %.13440.us.ph = phi ptr [ %.03341.us, %vector.memcheck ], [ %.03341.us, %.lr.ph.us.preheader ], [ %i.ab, %middle.block ]
  %.03539.us.ph = phi ptr [ %.046.us, %vector.memcheck ], [ %.046.us, %.lr.ph.us.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader59, %.lr.ph.us
  %.13440.us = phi ptr [ %i.al, %.lr.ph.us ], [ %.13440.us.ph, %.lr.ph.us.preheader59 ] ; 3 uses
  %.03539.us = phi ptr [ %i.aj, %.lr.ph.us ], [ %.03539.us.ph, %.lr.ph.us.preheader59 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03539.us, i64 4
  %i.ak = load i32, ptr %.03539.us, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %.13440.us, i64 4 ; 3 uses
  %i.am = load i32, ptr %.13440.us, align 4, !tbaa !4
  %i.an = or i32 %i.am, %i.ak
  store i32 %i.an, ptr %.13440.us, align 4, !tbaa !4
  %i.ao = icmp ult ptr %i.al, %i.n
  br i1 %i.ao, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !17

.loopexit.us:                                     ; preds = %.lr.ph.us, %middle.block, %bb.b
  %.2.us = phi ptr [ %.mux, %bb.b ], [ %i.ab, %middle.block ], [ %i.al, %.lr.ph.us ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.03242.us, i64 %i.h
  %i.aq = icmp ult ptr %.2.us, %i.f
  br i1 %i.aq, label %bb.b, label %._crit_edge.us, !llvm.loop !18

._crit_edge.us:                                   ; preds = %.loopexit.us
  %i.ar = shl i32 %.03044.us, 1                   ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %i.ar, i32 1)
  %spec.select38.idx.us = select i1 %i.as, i64 4, i64 0
  %spec.select38.us = getelementptr inbounds nuw i8, ptr %.02945.us, i64 %spec.select38.idx.us
  %i.at = getelementptr inbounds i8, ptr %.046.us, i64 %i.h ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.f
  %indvar.next = add i64 %indvar, 1
  br i1 %i.au, label %.preheader.us, label %._crit_edge47, !llvm.loop !19

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
  %.046.us.i = phi ptr [ %i.at, %._crit_edge.us.i.split ], [ %0, %.preheader.lr.ph.i ] ; 6 uses
  %.02945.us.i = phi ptr [ %spec.select38.us.i, %._crit_edge.us.i.split ], [ %0, %.preheader.lr.ph.i ] ; 2 uses
  %.03044.us.i = phi i32 [ %spec.select.us.i, %._crit_edge.us.i.split ], [ 1, %.preheader.lr.ph.i ] ; 2 uses
  %i.j = mul i64 %indvar, %i.h
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep27 = getelementptr i8, ptr %i.k, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.us.i, %.preheader.us.i
  %.03242.us.i = phi ptr [ %.02945.us.i, %.preheader.us.i ], [ %i.ap, %.loopexit.us.i ] ; 2 uses
  %.03341.us.i = phi ptr [ %0, %.preheader.us.i ], [ %.2.us.i, %.loopexit.us.i ] ; 8 uses
  %.03341.us.i25 = ptrtoaddr ptr %.03341.us.i to i64 ; 6 uses
  %i.l = load i32, ptr %.03242.us.i, align 4, !tbaa !4
  %i.m = and i32 %i.l, %.03044.us.i
  %.not.us.i = icmp eq i32 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %.03341.us.i, i64 %i.h ; 2 uses
  br i1 %.not.us.i, label %.loopexit.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %bb.b
  %i.o = add i64 %.03341.us.i25, %i.h
  %i.p = add i64 %.03341.us.i25, 4
  %i.q = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.p)
  %i.r = xor i64 %.03341.us.i25, -1
  %i.s = add i64 %i.q, %i.r                       ; 2 uses
  %i.t = lshr i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 44
  br i1 %min.iters.check, label %.lr.ph.us.i.preheader34, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.i.preheader
  %scevgep = getelementptr i8, ptr %.03341.us.i, i64 4
  %i.v = add i64 %i.h, %.03341.us.i25
  %i.w = add i64 %.03341.us.i25, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.w)
  %i.x = xor i64 %.03341.us.i25, -1
  %i.y = add i64 %umax, %i.x
  %i.z = and i64 %i.y, -4                         ; 2 uses
  %scevgep26 = getelementptr i8, ptr %scevgep, i64 %i.z
  %scevgep28 = getelementptr i8, ptr %scevgep27, i64 %i.z
  %bound0 = icmp ult ptr %.03341.us.i, %scevgep28
  %bound1 = icmp ult ptr %.046.us.i, %scevgep26
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.us.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.03341.us.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %.046.us.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03341.us.i, i64 %i.ad ; 3 uses
  %next.gep29 = getelementptr i8, ptr %.046.us.i, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep29, align 4, !tbaa !4, !alias.scope !20
  %wide.load30 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !4, !alias.scope !20
  %i.af = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load31 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !23, !noalias !20
  %wide.load32 = load <4 x i32>, ptr %i.af, align 4, !tbaa !4, !alias.scope !23, !noalias !20
  %i.ag = or <4 x i32> %wide.load31, %wide.load
  %i.ah = or <4 x i32> %wide.load32, %wide.load30
  store <4 x i32> %i.ag, ptr %next.gep, align 4, !tbaa !4, !alias.scope !23, !noalias !20
  store <4 x i32> %i.ah, ptr %i.af, align 4, !tbaa !4, !alias.scope !23, !noalias !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit.us.i, label %.lr.ph.us.i.preheader34

.lr.ph.us.i.preheader34:                          ; preds = %vector.memcheck, %.lr.ph.us.i.preheader, %middle.block
  %.13440.us.i.ph = phi ptr [ %.03341.us.i, %vector.memcheck ], [ %.03341.us.i, %.lr.ph.us.i.preheader ], [ %i.ab, %middle.block ]
  %.03539.us.i.ph = phi ptr [ %.046.us.i, %vector.memcheck ], [ %.046.us.i, %.lr.ph.us.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader34, %.lr.ph.us.i
  %.13440.us.i = phi ptr [ %i.al, %.lr.ph.us.i ], [ %.13440.us.i.ph, %.lr.ph.us.i.preheader34 ] ; 3 uses
  %.03539.us.i = phi ptr [ %i.aj, %.lr.ph.us.i ], [ %.03539.us.i.ph, %.lr.ph.us.i.preheader34 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03539.us.i, i64 4
  %i.ak = load i32, ptr %.03539.us.i, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %.13440.us.i, i64 4 ; 3 uses
  %i.am = load i32, ptr %.13440.us.i, align 4, !tbaa !4
  %i.an = or i32 %i.am, %i.ak
  store i32 %i.an, ptr %.13440.us.i, align 4, !tbaa !4
  %i.ao = icmp ult ptr %i.al, %i.n
  br i1 %i.ao, label %.lr.ph.us.i, label %.loopexit.us.i, !llvm.loop !26

.loopexit.us.i:                                   ; preds = %.lr.ph.us.i, %middle.block, %bb.b
  %.2.us.i = phi ptr [ %i.n, %bb.b ], [ %i.ab, %middle.block ], [ %i.al, %.lr.ph.us.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.03242.us.i, i64 %i.h
  %i.aq = icmp ult ptr %.2.us.i, %i.f
  br i1 %i.aq, label %bb.b, label %._crit_edge.us.i.split, !llvm.loop !18

._crit_edge.us.i.split:                           ; preds = %.loopexit.us.i
  %i.ar = shl i32 %.03044.us.i, 1                 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  %spec.select.us.i = tail call i32 @llvm.umax.i32(i32 %i.ar, i32 1)
  %spec.select38.idx.us.i = select i1 %i.as, i64 4, i64 0
  %spec.select38.us.i = getelementptr inbounds nuw i8, ptr %.02945.us.i, i64 %spec.select38.idx.us.i
  %i.at = getelementptr inbounds nuw i8, ptr %.046.us.i, i64 %i.h ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.f
  %indvar.next = add i64 %indvar, 1
  br i1 %i.au, label %.preheader.us.i, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %._crit_edge.us.i.split, %.preheader.lr.ph.i
  %i.av = sext i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.020 = phi i32 [ 1, %.lr.ph ], [ %spec.select18, %bb.c ] ; 2 uses
  %.01519 = phi ptr [ %0, %.lr.ph ], [ %i.ba, %bb.c ] ; 3 uses
  %i.aw = load i32, ptr %.01519, align 4, !tbaa !4
  %i.ax = or i32 %i.aw, %.020
  store i32 %i.ax, ptr %.01519, align 4, !tbaa !4
  %i.ay = shl i32 %.020, 1                        ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  %spec.select.idx = select i1 %i.az, i64 4, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.01519, i64 %spec.select.idx
  %spec.select18 = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 1)
  %i.ba = getelementptr inbounds i8, ptr %spec.select, i64 %i.av ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.f
  br i1 %i.bb, label %bb.c, label %._crit_edge, !llvm.loop !27

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
