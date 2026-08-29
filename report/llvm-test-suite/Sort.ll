Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Sort?download=true
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
  %2 = zext i32 %1 to i64                         ; 2 uses
  %3 = lshr i64 %2, 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ %3, %bb.b ] ; 4 uses
  %.081 = phi i32 [ %i.x, %._crit_edge ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  %4 = trunc nuw i64 %indvars.iv to i32           ; 2 uses
  %i.f = shl i32 %4, 1                            ; 2 uses
  %i.g = icmp ugt i32 %i.f, %1
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %i.h = phi i32 [ %i.u, %bb.f ], [ %i.f, %bb.c ] ; 6 uses
  %.079103 = phi i32 [ %.078, %bb.f ], [ %4, %bb.c ] ; 2 uses
  %i.i = icmp ult i32 %i.h, %1
  br i1 %i.i, label %bb.d, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.phi.trans.insert = zext i32 %i.h to i64
  %.phi.trans.insert118 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert118, align 4, !tbaa !4
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.j = or disjoint i32 %i.h, 1                  ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4    ; 2 uses
  %i.n = zext i32 %i.h to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4    ; 2 uses
  %i.q = icmp ugt i32 %i.m, %i.p
  %spec.select = select i1 %i.q, i32 %i.j, i32 %i.h
  %i.r = tail call i32 @llvm.umax.i32(i32 %i.m, i32 %i.p)
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph._crit_edge, %bb.d
  %i.s = phi i32 [ %.pre, %.lr.ph._crit_edge ], [ %i.r, %bb.d ] ; 2 uses
  %.078 = phi i32 [ %i.h, %.lr.ph._crit_edge ], [ %spec.select, %bb.d ] ; 3 uses
  %.not = icmp ult i32 %i.e, %i.s
  br i1 %.not, label %bb.f, label %._crit_edge.loopexit

bb.f:                                             ; preds = %bb.e
  %5 = zext i32 %.079103 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %5
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = shl i32 %.078, 1                         ; 2 uses
  %i.v = icmp ugt i32 %i.u, %1
  br i1 %i.v, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.f, %bb.e
  %.079.lcssa.ph = phi i32 [ %.079103, %bb.e ], [ %.078, %bb.f ]
  %6 = zext i32 %.079.lcssa.ph to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.079.lcssa = phi i64 [ %indvars.iv, %bb.c ], [ %6, %._crit_edge.loopexit ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.079.lcssa
  store i32 %i.e, ptr %i.w, align 4, !tbaa !4
  %i.x = add nsw i32 %.081, -1                    ; 2 uses
  %.not92 = icmp eq i32 %i.x, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not92, label %.preheader, label %bb.c, !llvm.loop !8

.preheader:                                       ; preds = %._crit_edge
  %i.y = icmp ugt i32 %1, 3
  br i1 %i.y, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph114, %._crit_edge109
  %indvars.iv.a = phi i64 [ %2, %.lr.ph114 ], [ %indvars.iv.next.a, %._crit_edge109 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.a ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.af = icmp ugt i32 %i.ad, %i.ae
  %i.ag = select i1 %i.af, i32 3, i32 2           ; 3 uses
  %i.ah = load i32, ptr %0, align 4, !tbaa !4
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next.a to i32  ; 4 uses
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !4
  %i.ai = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  store i32 %i.ak, ptr %0, align 4, !tbaa !4
  %i.al = shl nuw nsw i32 %i.ag, 1                ; 2 uses
  %i.am = icmp ugt i32 %i.al, %indvars
  br i1 %i.am, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.g, %bb.j
  %i.an = phi i32 [ %i.bb, %bb.j ], [ %i.al, %bb.g ] ; 6 uses
  %.075106 = phi i32 [ %.0, %bb.j ], [ %i.ag, %bb.g ]
  %i.ao = icmp ult i32 %i.an, %indvars
  br i1 %i.ao, label %bb.h, label %.lr.ph108._crit_edge

.lr.ph108._crit_edge:                             ; preds = %.lr.ph108
  %.phi.trans.insert119 = zext i32 %i.an to i64   ; 2 uses
  %.phi.trans.insert120 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.phi.trans.insert119
  %.pre121 = load i32, ptr %.phi.trans.insert120, align 4, !tbaa !4
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph108
  %i.ap = or disjoint i32 %i.an, 1                ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 2 uses
  %i.at = zext i32 %i.an to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.aw = icmp ugt i32 %i.as, %i.av
  %spec.select94 = select i1 %i.aw, i32 %i.ap, i32 %i.an ; 2 uses
  %i.ax = tail call i32 @llvm.umax.i32(i32 %i.as, i32 %i.av)
  %.pre125 = zext i32 %spec.select94 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph108._crit_edge, %bb.h
  %.pre-phi126 = phi i64 [ %.phi.trans.insert119, %.lr.ph108._crit_edge ], [ %.pre125, %bb.h ]
  %i.ay = phi i32 [ %.pre121, %.lr.ph108._crit_edge ], [ %i.ax, %bb.h ] ; 2 uses
  %.0 = phi i32 [ %i.an, %.lr.ph108._crit_edge ], [ %spec.select94, %bb.h ] ; 2 uses
  %.not93 = icmp ult i32 %i.ac, %i.ay
  %i.az = zext i32 %.075106 to i64                ; 2 uses
  br i1 %.not93, label %bb.j, label %._crit_edge109

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !4
  %i.bb = shl i32 %.0, 1                          ; 2 uses
  %i.bc = icmp ugt i32 %i.bb, %indvars
  br i1 %i.bc, label %._crit_edge109, label %.lr.ph108

._crit_edge109:                                   ; preds = %bb.j, %bb.i, %bb.g
  %.pre-phi124 = phi i64 [ %i.ai, %bb.g ], [ %.pre-phi126, %bb.j ], [ %i.az, %bb.i ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.pre-phi124
  store i32 %i.ac, ptr %i.bd, align 4, !tbaa !4
  %i.be = icmp ugt i32 %indvars, 3
  br i1 %i.be, label %bb.g, label %._crit_edge115.thread, !llvm.loop !10

._crit_edge115.thread:                            ; preds = %._crit_edge109
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = load i32, ptr %0, align 4, !tbaa !4
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !4
  br label %bb.k

._crit_edge115:                                   ; preds = %.preheader
  %i.bi = zext nneg i32 %1 to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4  ; 2 uses
  %i.bl = load i32, ptr %0, align 4, !tbaa !4
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !4
  %i.bm = icmp eq i32 %1, 3
  br i1 %i.bm, label %bb.k, label %bb.m

bb.k:                                             ; preds = %._crit_edge115.thread, %._crit_edge115
  %i.bn = phi i32 [ %i.bg, %._crit_edge115.thread ], [ %i.bk, %._crit_edge115 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4  ; 2 uses
  %i.bq = icmp ult i32 %i.bp, %i.bn
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.bp, ptr %0, align 4, !tbaa !4
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !4
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %._crit_edge115
  %i.br = phi i32 [ %i.bn, %bb.k ], [ %i.bk, %._crit_edge115 ]
  store i32 %i.br, ptr %0, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
end_hunk_0
