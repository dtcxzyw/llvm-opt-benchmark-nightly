Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/Bra86?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kMaskToAllowedStatus = local_unnamed_addr constant [8 x i8] c"\01\01\01\00\01\00\00\00", align 1
@kMaskToBitNumber = local_unnamed_addr constant [8 x i8] c"\00\01\02\02\03\03\03\03", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @x86_Convert(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 5
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4, !tbaa !8
  %i.c = and i32 %i.b, 7                          ; 2 uses
  %i.d = add i32 %2, 5
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -4       ; 2 uses
  %i.g = icmp sgt i64 %1, 4
  %i.h = ptrtoint ptr %0 to i64                   ; 2 uses
  br i1 %i.g, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.b
  %.not103 = icmp eq i32 %4, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.k
  %i.i = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.bq, %bb.k ]
  %.084145 = phi i32 [ %i.c, %.lr.ph.lr.ph ], [ %.4, %bb.k ] ; 2 uses
  %.087144 = phi i64 [ -1, %.lr.ph.lr.ph ], [ %i.p, %bb.k ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.081123 = phi ptr [ %i.i, %.lr.ph ], [ %i.m, %bb.d ] ; 8 uses
  %i.j = load i8, ptr %.081123, align 1, !tbaa !9
  %i.k = and i8 %i.j, -2
  %i.l = icmp eq i8 %i.k, -24
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.081123, i64 1 ; 3 uses
  %i.n = icmp ult ptr %i.m, %i.f
  br i1 %i.n, label %bb.c, label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %.081123 to i64
  %i.p = sub i64 %i.o, %i.h                       ; 5 uses
  %i.q = sub i64 %i.p, %.087144                   ; 2 uses
  %i.r = icmp ugt i64 %i.q, 3
  br i1 %i.r, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = trunc nuw nsw i64 %i.q to i32
  %i.t = add nsw i32 %i.s, -1
  %i.u = shl nuw nsw i32 %.084145, %i.t
  %i.v = and i32 %i.u, 7                          ; 4 uses
  %.not102 = icmp eq i32 %i.v, 0
  br i1 %.not102, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr @kMaskToBitNumber, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  %i.z = zext i8 %i.y to i64
  %i.aa = sub nsw i64 4, %i.z
  %i.ab = getelementptr inbounds i8, ptr %.081123, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = lshr i64 232, %i.w
  %i.ae = trunc i64 %i.ad to i1
  %i.af = add i8 %i.ac, 1
  %i.ag = icmp ult i8 %i.af, 2
  %or.cond5 = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond5, label %.thread106, label %bb.h

.thread106:                                       ; preds = %bb.g
  %i.ah = shl nuw nsw i32 %i.v, 1
  %i.ai = and i32 %i.ah, 6
  %i.aj = or disjoint i32 %i.ai, 1
  br label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.f
  %.286 = phi i32 [ 0, %bb.f ], [ 0, %bb.e ], [ %i.v, %bb.g ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.081123, i64 4 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9
  %.off = add i8 %i.al, -1
  %switch = icmp ult i8 %.off, -2
  br i1 %switch, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.081123, i64 3
  %i.an = getelementptr inbounds nuw i8, ptr %.081123, i64 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.081123, i64 1 ; 2 uses
  %5 = load i32, ptr %i.ao, align 1, !tbaa !9
  %i.ap = trunc i64 %i.p to i32
  %i.aq = add i32 %i.d, %i.ap                     ; 2 uses
  %i.ar = sub i32 0, %i.aq
  %.0.p = select i1 %.not103, i32 %i.ar, i32 %i.aq ; 2 uses
  %i.as = icmp eq i32 %.286, 0
  %.0130 = add i32 %5, %.0.p                      ; 4 uses
  br i1 %i.as, label %._crit_edge136, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.i
  %i.at = zext nneg i32 %.286 to i64
  %i.au = getelementptr inbounds nuw i8, ptr @kMaskToBitNumber, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 3                ; 2 uses
  %i.ay = sub nsw i32 24, %i.ax                   ; 2 uses
  %i.az = lshr i32 %.0130, %i.ay
  %i.ba = and i32 %i.az, 255
  %.off104139 = add nsw i32 %i.ba, -1
  %switch105140 = icmp ult i32 %.off104139, 254
  br i1 %switch105140, label %._crit_edge136, label %.lr.ph142.preheader

.lr.ph142.preheader:                              ; preds = %.lr.ph133
  %i.bb = sub nsw i32 32, %i.ax
  %notmask = shl nsw i32 -1, %i.bb
  %invariant.op = xor i32 %notmask, -1
  br label %.lr.ph142

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %.lr.ph142
  %.0131141 = phi i32 [ %.0, %.lr.ph142 ], [ %.0130, %.lr.ph142.preheader ]
  %.reass.reass.reass = xor i32 %.0131141, %invariant.op
  %.0 = add i32 %.0.p, %.reass.reass.reass        ; 3 uses
  %i.bc = lshr i32 %.0, %i.ay
  %i.bd = and i32 %i.bc, 255
  %.off104 = add nsw i32 %i.bd, -1
  %switch105 = icmp ult i32 %.off104, 254
  br i1 %switch105, label %._crit_edge136, label %.lr.ph142

._crit_edge136:                                   ; preds = %.lr.ph142, %.lr.ph133, %bb.i
  %.0.lcssa = phi i32 [ %.0130, %bb.i ], [ %.0130, %.lr.ph133 ], [ %.0, %.lr.ph142 ] ; 4 uses
  %i.be = shl i32 %.0.lcssa, 7
  %i.bf = ashr i32 %i.be, 31
  %i.bg = trunc nsw i32 %i.bf to i8
  store i8 %i.bg, ptr %i.ak, align 1, !tbaa !9
  %i.bh = lshr i32 %.0.lcssa, 16
  %i.bi = trunc i32 %i.bh to i8
  store i8 %i.bi, ptr %i.am, align 1, !tbaa !9
  %i.bj = lshr i32 %.0.lcssa, 8
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %i.an, align 1, !tbaa !9
  %i.bl = trunc i32 %.0.lcssa to i8
  store i8 %i.bl, ptr %i.ao, align 1, !tbaa !9
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bm = shl nuw nsw i32 %.286, 1
  %i.bn = and i32 %i.bm, 6
  %i.bo = or disjoint i32 %i.bn, 1
  br label %bb.k

bb.k:                                             ; preds = %.thread106, %._crit_edge136, %bb.j
  %.sink = phi i64 [ 1, %.thread106 ], [ 5, %._crit_edge136 ], [ 1, %bb.j ]
  %.4 = phi i32 [ %i.aj, %.thread106 ], [ %.286, %._crit_edge136 ], [ %i.bo, %bb.j ] ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 %i.p
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sink ; 3 uses
  %i.br = icmp ult ptr %i.bq, %i.f
  br i1 %i.br, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.d, %bb.b
  %.087.lcssa = phi i64 [ %.087144, %bb.d ], [ -1, %bb.b ], [ %i.p, %bb.k ]
  %.084.lcssa = phi i32 [ %.084145, %bb.d ], [ %i.c, %bb.b ], [ %.4, %bb.k ]
  %.081.lcssa = phi ptr [ %i.m, %bb.d ], [ %0, %bb.b ], [ %i.bq, %bb.k ]
  %i.bs = ptrtoint ptr %.081.lcssa to i64
  %i.bt = sub i64 %i.bs, %i.h                     ; 2 uses
  %i.bu = sub i64 %i.bt, %.087.lcssa              ; 2 uses
  %i.bv = icmp ugt i64 %i.bu, 3
  %i.bw = trunc nuw nsw i64 %i.bu to i32
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = shl nuw nsw i32 %.084.lcssa, %i.bx
  %i.bz = and i32 %i.by, 7
  %i.ca = select i1 %i.bv, i32 0, i32 %i.bz
  store i32 %i.ca, ptr %3, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %._crit_edge
  %.095 = phi i64 [ %i.bt, %._crit_edge ], [ 0, %bb.a ]
  ret i64 %.095
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!4, !4, i64 0}
end_hunk_0
