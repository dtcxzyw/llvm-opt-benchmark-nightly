Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cs_ereach?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @cs_ereach(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq i32 %i.b, -1
  %i.d = icmp ne ptr %2, null
  %or.cond = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.e, %or.cond
  %i.f = icmp ne ptr %4, null
  %or.cond5 = and i1 %i.f, %or.cond3
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = sext i32 %1 to i64                       ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %4, i64 %i.m ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22
  %i.p = sub i32 -2, %i.o
  store i32 %i.p, ptr %i.n, align 4, !tbaa !22
  %i.q = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.m ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22   ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 4        ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22
  %i.u = icmp slt i32 %i.r, %i.t
  br i1 %i.u, label %.lr.ph79.preheader, label %._crit_edge

.lr.ph79.preheader:                               ; preds = %bb.c
  %i.v = sext i32 %i.r to i64
  br label %.lr.ph79

.preheader:                                       ; preds = %.loopexit
  %i.w = icmp slt i32 %.2, %i.h
  br i1 %i.w, label %.lr.ph82.preheader, label %._crit_edge

.lr.ph82.preheader:                               ; preds = %.preheader
  %i.x = sext i32 %.2 to i64                      ; 4 uses
  %wide.trip.count = sext i32 %i.h to i64         ; 3 uses
  %i.y = sub nsw i64 %wide.trip.count, %i.x
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph82.prol.loopexit, label %.lr.ph82.prol

.lr.ph82.prol:                                    ; preds = %.lr.ph82.preheader, %.lr.ph82.prol
  %indvars.iv95.prol = phi i64 [ %indvars.iv.next96.prol, %.lr.ph82.prol ], [ %i.x, %.lr.ph82.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph82.prol ], [ 0, %.lr.ph82.preheader ]
  %i.z = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv95.prol
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !22
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !22
  %i.ae = sub i32 -2, %i.ad
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !22
  %indvars.iv.next96.prol = add nsw i64 %indvars.iv95.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph82.prol.loopexit, label %.lr.ph82.prol, !llvm.loop !8

.lr.ph82.prol.loopexit:                           ; preds = %.lr.ph82.prol, %.lr.ph82.preheader
  %indvars.iv95.unr = phi i64 [ %i.x, %.lr.ph82.preheader ], [ %indvars.iv.next96.prol, %.lr.ph82.prol ]
  %i.af = sub nsw i64 %i.x, %wide.trip.count
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge, label %.lr.ph82

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.loopexit
  %indvars.iv92 = phi i64 [ %i.v, %.lr.ph79.preheader ], [ %indvars.iv.next93, %.loopexit ] ; 2 uses
  %.078 = phi i32 [ %i.h, %.lr.ph79.preheader ], [ %.2, %.loopexit ] ; 4 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv92
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22 ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, %1
  br i1 %i.aj, label %.loopexit, label %.preheader70

.preheader70:                                     ; preds = %.lr.ph79
  %i.ak = sext i32 %i.ai to i64                   ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !22
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %.lr.ph, label %.loopexit

.preheader69:                                     ; preds = %.lr.ph
  %5 = trunc nuw i64 %indvars.iv.next to i32
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph75.preheader.a, label %.loopexit

.lr.ph75.preheader.a:                             ; preds = %.preheader69
  %i.ao = sext i32 %.078 to i64                   ; 5 uses
  %min.iters.check = icmp ult i64 %indvars.iv, 7
  br i1 %min.iters.check, label %.lr.ph75.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph75.preheader.a
  %i.ap = sub i64 %indvars.iv, %i.ao
  %reass.sub = shl i64 %i.ap, 2
  %diff.check = icmp ult i64 %reass.sub, 28
  br i1 %diff.check, label %.lr.ph75.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv.next, 2147483640   ; 3 uses
  %7 = and i64 %indvars.iv.next, 7
  %i.aq = sub nsw i64 %i.ao, %n.vec               ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = sub i64 %indvars.iv, %index
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -12
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -28
  %wide.load = load <4 x i32>, ptr %i.at, align 4, !tbaa !22
  %wide.load107 = load <4 x i32>, ptr %i.au, align 4, !tbaa !22
  %i.av = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.av ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.ax = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.aw, align 4, !tbaa !22
  store <4 x i32> %wide.load107, ptr %i.ax, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv.next, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph75.preheader110

.lr.ph75.preheader110:                            ; preds = %vector.memcheck, %.lr.ph75.preheader.a, %middle.block
  %indvars.iv87.ph.a = phi i64 [ %indvars.iv.next, %vector.memcheck ], [ %indvars.iv.next, %.lr.ph75.preheader.a ], [ %7, %middle.block ]
  %indvars.iv85.ph = phi i64 [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph75.preheader.a ], [ %i.aq, %middle.block ]
  br label %.lr.ph75

.lr.ph:                                           ; preds = %.preheader70, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader70 ] ; 5 uses
  %i.az = phi ptr [ %i.bh, %.lr.ph ], [ %i.al, %.preheader70 ] ; 2 uses
  %i.ba = phi i64 [ %i.bg, %.lr.ph ], [ %i.ak, %.preheader70 ]
  %.06271 = phi i32 [ %i.bf, %.lr.ph ], [ %i.ai, %.preheader70 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 7 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %.06271, ptr %i.bb, align 4, !tbaa !22
  %i.bc = load i32, ptr %i.az, align 4, !tbaa !22
  %i.bd = sub i32 -2, %i.bc
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !22
  %i.be = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ba
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !22 ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !22
  %i.bj = icmp sgt i32 %i.bi, -1
  br i1 %i.bj, label %.lr.ph, label %.preheader69, !llvm.loop !10

.lr.ph75:                                         ; preds = %.lr.ph75.preheader110, %.lr.ph75
  %indvars.iv87.a = phi i64 [ %indvars.iv.next88.a, %.lr.ph75 ], [ %indvars.iv87.ph.a, %.lr.ph75.preheader110 ] ; 2 uses
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.lr.ph75 ], [ %indvars.iv85.ph, %.lr.ph75.preheader110 ]
  %indvars.iv.next88.a = add nsw i64 %indvars.iv87.a, -1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next88.a
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !22
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, -1 ; 3 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next86
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !22
  %8 = icmp samesign ugt i64 %indvars.iv87.a, 1
  br i1 %8, label %.lr.ph75, label %.loopexit.loopexit, !llvm.loop !11

.loopexit.loopexit:                               ; preds = %.lr.ph75, %middle.block
  %indvars.iv.next86.lcssa = phi i64 [ %i.aq, %middle.block ], [ %indvars.iv.next86, %.lr.ph75 ]
  %i.bn = trunc nsw i64 %indvars.iv.next86.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader70, %.loopexit.loopexit, %.preheader69, %.lr.ph79
  %.2 = phi i32 [ %.078, %.lr.ph79 ], [ %.078, %.preheader69 ], [ %i.bn, %.loopexit.loopexit ], [ %.078, %.preheader70 ] ; 6 uses
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.bo = load i32, ptr %i.s, align 4, !tbaa !22
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next93, %i.bp
  br i1 %i.bq, label %.lr.ph79, label %.preheader, !llvm.loop !12

.lr.ph82:                                         ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82
  %indvars.iv95 = phi i64 [ %indvars.iv.next96.3, %.lr.ph82 ], [ %indvars.iv95.unr, %.lr.ph82.prol.loopexit ] ; 5 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv95
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !22
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !22
  %i.bw = sub i32 -2, %i.bv
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !22
  %i.bx = getelementptr [4 x i8], ptr %3, i64 %indvars.iv95
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !22
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !22
  %i.cd = sub i32 -2, %i.cc
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !22
  %i.ce = getelementptr [4 x i8], ptr %3, i64 %indvars.iv95
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !22
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ch ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !22
  %i.ck = sub i32 -2, %i.cj
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !22
  %i.cl = getelementptr [4 x i8], ptr %3, i64 %indvars.iv95
  %i.cm = getelementptr i8, ptr %i.cl, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !22
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !22
  %i.cr = sub i32 -2, %i.cq
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !22
  %indvars.iv.next96.3 = add nsw i64 %indvars.iv95, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next96.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph82, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82, %bb.c, %.preheader
  %.0.lcssa105 = phi i32 [ %i.h, %bb.c ], [ %.2, %.preheader ], [ %.2, %.lr.ph82 ], [ %.2, %.lr.ph82.prol.loopexit ]
  %i.cs = load i32, ptr %i.n, align 4, !tbaa !22
  %i.ct = sub i32 -2, %i.cs
  store i32 %i.ct, ptr %i.n, align 4, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  %.063 = phi i32 [ %.0.lcssa105, %._crit_edge ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.063
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !23}
!9 = distinct !{!9, !24, !25, !26}
!10 = distinct !{!10, !24}
!11 = distinct !{!11, !24, !25}
!12 = distinct !{!12, !24}
!13 = distinct !{!13, !24}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 int", !14, i64 0}
!16 = !{!"p1 double", !14, i64 0}
!17 = !{!"cs_sparse", !5, i64 0, !5, i64 4, !5, i64 8, !15, i64 16, !15, i64 24, !16, i64 32, !5, i64 40}
!18 = !{!17, !5, i64 40}
!19 = !{!17, !5, i64 8}
!20 = !{!17, !15, i64 16}
!21 = !{!17, !15, i64 24}
!22 = !{!5, !5, i64 0}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
