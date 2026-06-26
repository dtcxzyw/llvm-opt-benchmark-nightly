begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @HeapSort(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %0, i64 -4 ; 14 uses
  %i.c = lshr i32 %1, 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.082 = phi i32 [ %i.c, %bb.b ], [ %i.x, %._crit_edge ] ; 4 uses
  %i.d = zext nneg i32 %.082 to i64               ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4    ; 2 uses
  %i.g = shl nuw i32 %.082, 1                     ; 2 uses
  %i.h = icmp ugt i32 %i.g, %1
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %i.i = phi i32 [ %i.u, %bb.f ], [ %i.g, %bb.c ] ; 5 uses
  %.080104 = phi i32 [ %.079, %bb.f ], [ %.082, %bb.c ]
  %i.j = icmp ult i32 %i.i, %1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.k = or disjoint i32 %i.i, 1                  ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = zext i32 %i.i to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = icmp ugt i32 %i.n, %i.q
  %spec.select = select i1 %i.r, i32 %i.k, i32 %i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.079 = phi i32 [ %i.i, %.lr.ph ], [ %spec.select, %bb.d ] ; 3 uses
  %2 = zext i32 %.079 to i64                      ; 2 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !4        ; 2 uses
  %.not = icmp ult i32 %i.f, %4
  %i.s = zext i32 %.080104 to i64                 ; 2 uses
  br i1 %.not, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.s
  store i32 %4, ptr %i.t, align 4, !tbaa !4
  %i.u = shl i32 %.079, 1                         ; 2 uses
  %i.v = icmp ugt i32 %i.u, %1
  br i1 %i.v, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.e, %bb.c
  %.pre-phi = phi i64 [ %i.d, %bb.c ], [ %2, %bb.f ], [ %i.s, %bb.e ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.pre-phi
  store i32 %i.f, ptr %i.w, align 4, !tbaa !4
  %i.x = add nsw i32 %.082, -1                    ; 2 uses
  %.not92 = icmp eq i32 %i.x, 0
  br i1 %.not92, label %.preheader, label %bb.c, !llvm.loop !8

.preheader:                                       ; preds = %._crit_edge
  %i.y = icmp ugt i32 %1, 3
  br i1 %i.y, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = zext i32 %1 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph115, %._crit_edge110
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph115 ], [ %indvars.iv.next, %._crit_edge110 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4  ; 2 uses
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !4
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ag = icmp ugt i32 %i.ae, %i.af
  %i.ah = select i1 %i.ag, i32 3, i32 2           ; 3 uses
  %i.ai = load i32, ptr %0, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 4 uses
  store i32 %i.ai, ptr %i.ac, align 4, !tbaa !4
  %i.aj = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  store i32 %i.al, ptr %0, align 4, !tbaa !4
  %i.am = shl nuw nsw i32 %i.ah, 1                ; 2 uses
  %i.an = icmp ugt i32 %i.am, %indvars
  br i1 %i.an, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.g, %bb.j
  %i.ao = phi i32 [ %i.ba, %bb.j ], [ %i.am, %bb.g ] ; 5 uses
  %.075107 = phi i32 [ %.0, %bb.j ], [ %i.ah, %bb.g ]
  %i.ap = icmp ult i32 %i.ao, %indvars
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph109
  %i.aq = or disjoint i32 %i.ao, 1                ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = zext i32 %i.ao to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = icmp ugt i32 %i.at, %i.aw
  %spec.select94 = select i1 %i.ax, i32 %i.aq, i32 %i.ao
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph109
  %.0 = phi i32 [ %i.ao, %.lr.ph109 ], [ %spec.select94, %bb.h ] ; 3 uses
  %5 = zext i32 %.0 to i64                        ; 2 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !4        ; 2 uses
  %.not93 = icmp ult i32 %i.ad, %7
  %i.ay = zext i32 %.075107 to i64                ; 2 uses
  br i1 %.not93, label %bb.j, label %._crit_edge110

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ay
  store i32 %7, ptr %i.az, align 4, !tbaa !4
  %i.ba = shl i32 %.0, 1                          ; 2 uses
  %i.bb = icmp ugt i32 %i.ba, %indvars
  br i1 %i.bb, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %bb.j, %bb.i, %bb.g
  %.pre-phi120 = phi i64 [ %i.aj, %bb.g ], [ %5, %bb.j ], [ %i.ay, %bb.i ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.pre-phi120
  store i32 %i.ad, ptr %i.bc, align 4, !tbaa !4
  %i.bd = icmp ugt i32 %indvars, 3
  br i1 %i.bd, label %bb.g, label %._crit_edge116.thread, !llvm.loop !10

._crit_edge116.thread:                            ; preds = %._crit_edge110
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = load i32, ptr %0, align 4, !tbaa !4
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !4
  br label %bb.k

._crit_edge116:                                   ; preds = %.preheader
  %i.bh = zext nneg i32 %1 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4  ; 2 uses
  %i.bk = load i32, ptr %0, align 4, !tbaa !4
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !4
  %i.bl = icmp eq i32 %1, 3
  br i1 %i.bl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %._crit_edge116.thread, %._crit_edge116
  %i.bm = phi i32 [ %i.bf, %._crit_edge116.thread ], [ %i.bj, %._crit_edge116 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4  ; 2 uses
  %i.bp = icmp ult i32 %i.bo, %i.bm
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.bo, ptr %0, align 4, !tbaa !4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !4
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %._crit_edge116
  %i.bq = phi i32 [ %i.bm, %bb.k ], [ %i.bj, %._crit_edge116 ]
  store i32 %i.bq, ptr %0, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.a
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
end_hunk_0
