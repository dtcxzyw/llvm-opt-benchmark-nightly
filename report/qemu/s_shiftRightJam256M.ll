Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/s_shiftRightJam256M?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @softfloat_shiftRightJam256M(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = lshr i64 %1, 6                           ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.b, i64 4) ; 4 uses
  %i.c = trunc nuw nsw i64 %spec.store.select to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.035 = phi ptr [ %0, %bb.b ], [ %i.e, %bb.c ]  ; 2 uses
  %.0 = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  %i.d = load i64, ptr %.035, align 8, !tbaa !16
  %.not45 = icmp ne i64 %i.d, 0                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %i.f = add i8 %.0, -1                           ; 2 uses
  %.not46 = icmp eq i8 %i.f, 0
  %or.cond = select i1 %.not45, i1 true, i1 %.not46
  br i1 %or.cond, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %1, 256
  br i1 %i.g, label %.thread, label %.loopexit.loopexit

.thread:                                          ; preds = %bb.d
  %.not45.not = xor i1 %.not45, true              ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.store.select ; 2 uses
  %i.i = and i64 %1, 63                           ; 2 uses
  %.not47 = icmp eq i64 %i.i, 0
  br i1 %.not47, label %.lr.ph.preheader, label %bb.e

.thread.thread:                                   ; preds = %bb.a
  %.not4775 = icmp eq i64 %1, 0
  br i1 %.not4775, label %.lr.ph.preheader, label %bb.e

bb.e:                                             ; preds = %.thread.thread, %.thread
  %i.j = phi i64 [ %1, %.thread.thread ], [ %i.i, %.thread ] ; 5 uses
  %i.k = phi ptr [ %0, %.thread.thread ], [ %i.h, %.thread ] ; 4 uses
  %.0395780 = phi i1 [ true, %.thread.thread ], [ %.not45.not, %.thread ] ; 3 uses
  %.0375977 = phi i64 [ 0, %.thread.thread ], [ %spec.store.select, %.thread ] ; 7 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.m = lshr i64 %i.l, %i.j                      ; 2 uses
  %i.n = shl i64 %i.m, %i.j
  %.not.i = icmp ne i64 %i.n, %i.l
  %i.o = zext i1 %.not.i to i64
  %spec.select.i = or i64 %i.m, %i.o              ; 2 uses
  %.not2526.i = icmp eq i64 %.0375977, 3
  br i1 %.not2526.i, label %softfloat_shortShiftRightJamM.exit.thread, label %.lr.ph.i

softfloat_shortShiftRightJamM.exit.thread:        ; preds = %bb.e
  store i64 %spec.select.i, ptr %2, align 8, !tbaa !16
  %i.p = sub nuw nsw i64 4, %.0375977
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false), !tbaa !16
  br i1 %.0395780, label %bb.h, label %bb.g

.lr.ph.i:                                         ; preds = %bb.e
  %i.r = sub nsw i64 3, %.0375977
  %i.s = sub i64 0, %1
  %i.t = and i64 %i.s, 63                         ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !16       ; 2 uses
  %5 = shl i64 %4, %i.t
  %6 = or i64 %5, %spec.select.i
  store i64 %6, ptr %2, align 8, !tbaa !16
  %7 = lshr i64 %4, %i.j                          ; 2 uses
  %i.u = icmp eq i64 %.0375977, 2
  br i1 %i.u, label %softfloat_shortShiftRightJamM.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %8 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.v = load i64, ptr %8, align 8, !tbaa !16     ; 2 uses
  %i.w = shl i64 %i.v, %i.t
  %i.x = or i64 %i.w, %7
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.x, ptr %9, align 8, !tbaa !16
  %i.y = lshr i64 %i.v, %i.j                      ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %.0375977, 1
  br i1 %niter.ncmp.1, label %softfloat_shortShiftRightJamM.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !16  ; 2 uses
  %i.ab = shl i64 %i.aa, %i.t
  %i.ac = or i64 %i.ab, %i.y
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ac, ptr %10, align 8, !tbaa !16
  %i.ad = lshr i64 %i.aa, %i.j
  br label %softfloat_shortShiftRightJamM.exit

softfloat_shortShiftRightJamM.exit:               ; preds = %.epil.preheader, %bb.f, %.lr.ph.i
  %.lcssa = phi i64 [ %7, %.lr.ph.i ], [ %i.y, %bb.f ], [ %i.ad, %.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.r
  store i64 %.lcssa, ptr %i.ae, align 8, !tbaa !16
  %.not49 = icmp eq i64 %.0375977, 0
  br i1 %.not49, label %.loopexit, label %.loopexit60

.lr.ph.preheader:                                 ; preds = %.thread, %.thread.thread
  %.037597887 = phi i64 [ 0, %.thread.thread ], [ %spec.store.select, %.thread ] ; 5 uses
  %.039578186 = phi i1 [ true, %.thread.thread ], [ %.not45.not, %.thread ] ; 3 uses
  %i.af = phi ptr [ %0, %.thread.thread ], [ %i.h, %.thread ] ; 4 uses
  %i.ag = trunc nuw nsw i64 %.037597887 to i8
  %i.ah = sub nuw nsw i8 4, %i.ag                 ; 2 uses
  %i.ai = sub nsw i64 3, %.037597887
  %i.aj = and i64 %i.ai, 255                      ; 2 uses
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 7
  %i.al = ptrtoaddr ptr %i.af to i64
  %i.am = sub i64 %i.al, %i.a
  %diff.check = icmp ugt i64 %i.am, -32
  %or.cond93 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond93, label %.lr.ph.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ak, 508                     ; 4 uses
  %i.an = trunc i64 %n.vec to i8
  %i.ao = sub i8 %i.ah, %i.an
  %i.ap = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.aq = getelementptr i8, ptr %2, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.af, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.as ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.af, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep88, align 8, !tbaa !16
  %wide.load89 = load <2 x i64>, ptr %i.at, align 8, !tbaa !16
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !16
  store <2 x i64> %wide.load89, ptr %i.au, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.loopexit60, label %.lr.ph.preheader94

.lr.ph.preheader94:                               ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i8 [ %i.ah, %.lr.ph.preheader ], [ %i.ao, %middle.block ] ; 4 uses
  %.264.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.aq, %middle.block ] ; 2 uses
  %.04063.ph = phi ptr [ %i.af, %.lr.ph.preheader ], [ %i.ar, %middle.block ] ; 2 uses
  %i.aw = add nsw i8 %.165.ph, -1
  %xtraiter97 = and i8 %.165.ph, 7                ; 2 uses
  %lcmp.mod98.not = icmp eq i8 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader94, %.lr.ph.prol
  %.165.prol = phi i8 [ %i.ba, %.lr.ph.prol ], [ %.165.ph, %.lr.ph.preheader94 ]
  %.264.prol = phi ptr [ %i.az, %.lr.ph.prol ], [ %.264.ph, %.lr.ph.preheader94 ] ; 2 uses
  %.04063.prol = phi ptr [ %i.ay, %.lr.ph.prol ], [ %.04063.ph, %.lr.ph.preheader94 ] ; 2 uses
  %prol.iter = phi i8 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader94 ]
  %i.ax = load i64, ptr %.04063.prol, align 8, !tbaa !16
  store i64 %i.ax, ptr %.264.prol, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %.04063.prol, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.264.prol, i64 8 ; 2 uses
  %i.ba = add nsw i8 %.165.prol, -1               ; 2 uses
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter97
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !13

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader94
  %.165.unr = phi i8 [ %.165.ph, %.lr.ph.preheader94 ], [ %i.ba, %.lr.ph.prol ]
  %.264.unr = phi ptr [ %.264.ph, %.lr.ph.preheader94 ], [ %i.az, %.lr.ph.prol ]
  %.04063.unr = phi ptr [ %.04063.ph, %.lr.ph.preheader94 ], [ %i.ay, %.lr.ph.prol ]
  %i.bb = icmp ult i8 %i.aw, 7
  br i1 %i.bb, label %.loopexit60, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.165 = phi i8 [ %i.ca, %.lr.ph ], [ %.165.unr, %.lr.ph.prol.loopexit ]
  %.264 = phi ptr [ %i.bz, %.lr.ph ], [ %.264.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04063 = phi ptr [ %i.by, %.lr.ph ], [ %.04063.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bc = load i64, ptr %.04063, align 8, !tbaa !16
  store i64 %i.bc, ptr %.264, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %.04063, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.264, i64 8
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !16
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %.04063, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.264, i64 16
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !16
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %.04063, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %.264, i64 24
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !16
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %.04063, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.264, i64 32
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !16
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %.04063, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %.264, i64 40
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !16
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %.04063, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %.264, i64 48
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !16
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %.04063, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %.264, i64 56
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !16
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %.04063, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %.264, i64 64
  %i.ca = add nsw i8 %.165, -8                    ; 2 uses
  %.not48.7 = icmp eq i8 %i.ca, 0
  br i1 %.not48.7, label %.loopexit60, label %.lr.ph, !llvm.loop !14

.loopexit60:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %softfloat_shortShiftRightJamM.exit
  %.0395779 = phi i1 [ %.0395780, %softfloat_shortShiftRightJamM.exit ], [ %.039578186, %middle.block ], [ %.039578186, %.lr.ph ], [ %.039578186, %.lr.ph.prol.loopexit ]
  %.0375976 = phi i64 [ %.0375977, %softfloat_shortShiftRightJamM.exit ], [ %.037597887, %middle.block ], [ %.037597887, %.lr.ph ], [ %.037597887, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.cb = sub nuw nsw i64 4, %.0375976
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cb
  %i.cd = shl nuw nsw i64 %.0375976, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cc, i8 0, i64 %i.cd, i1 false), !tbaa !16
  br i1 %.0395779, label %bb.h, label %bb.g

.loopexit.loopexit:                               ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !tbaa !16
  br i1 %.not45, label %bb.g, label %bb.h

.loopexit:                                        ; preds = %softfloat_shortShiftRightJamM.exit
  br i1 %.0395780, label %bb.h, label %bb.g

bb.g:                                             ; preds = %softfloat_shortShiftRightJamM.exit.thread, %.loopexit60, %.loopexit.loopexit, %.loopexit
  %i.ce = load i64, ptr %2, align 8, !tbaa !16
  %i.cf = or i64 %i.ce, 1
  store i64 %i.cf, ptr %2, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %softfloat_shortShiftRightJamM.exit.thread, %.loopexit60, %.loopexit.loopexit, %bb.g, %.loopexit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = distinct !{!12, !17, !18}
!13 = distinct !{!13, !19}
!14 = distinct !{!14, !17}
!15 = !{!"long", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
