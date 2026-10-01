Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/xiph?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -1094995529, 1) i32 @avpriv_split_xiph_headers(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 5
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 1, !tbaa !10
  %i.c = tail call i16 @llvm.bswap.i16(i16 %i.b)  ; 2 uses
  %i.d = zext i16 %i.c to i32
  %i.e = icmp eq i32 %2, %i.d
  br i1 %i.e, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %bb.b
  store i32 %2, ptr %4, align 4, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !14
  %i.g = sub nsw i32 %1, %2
  %i.h = icmp slt i32 %i.g, 6
  br i1 %i.h, label %.critedge74, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.i = zext i16 %i.c to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 2 uses
  %i.k = add nuw nsw i32 %2, 6                    ; 2 uses
  %i.l = load i16, ptr %i.j, align 1, !tbaa !10
  %i.m = tail call i16 @llvm.bswap.i16(i16 %i.l)  ; 2 uses
  %i.n = zext i16 %i.m to i32                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.n, ptr %i.o, align 4, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !14
  %i.r = sub nsw i32 %1, %i.n
  %i.s = icmp sgt i32 %i.k, %i.r
  br i1 %i.s, label %.critedge74, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.t = zext i16 %i.m to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = add nuw nsw i32 %i.k, %i.n
  %i.w = load i16, ptr %i.u, align 1, !tbaa !10
  %i.x = tail call i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.y, ptr %i.z, align 4, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !14
  %i.ac = sub nsw i32 %1, %i.y
  %i.ad = icmp sgt i32 %i.v, %i.ac
  %spec.select = select i1 %i.ad, i32 -1094995529, i32 0
  br label %.critedge74

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ae = add i32 %1, -3
  %or.cond = icmp ult i32 %i.ae, 2147483133
  br i1 %or.cond, label %bb.d, label %.critedge74

bb.d:                                             ; preds = %bb.c
  %i.af = load i8, ptr %0, align 1, !tbaa !10
  %i.ag = icmp eq i8 %i.af, 2
  br i1 %i.ag, label %.preheader75, label %.critedge74

.preheader75:                                     ; preds = %bb.d
  %.16885 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  store i32 0, ptr %4, align 4, !tbaa !11
  %i.ah = icmp samesign ugt i32 %1, 3
  br i1 %i.ah, label %.lr.ph.preheader, label %.critedge

bb.e:                                             ; preds = %.critedge
  %.168 = getelementptr inbounds nuw i8, ptr %.269.lcssa, i64 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !11
  %i.aj = icmp slt i32 %i.bu, %1
  br i1 %i.aj, label %.lr.ph.1, label %.critedge.1

.lr.ph.1:                                         ; preds = %bb.e, %bb.f
  %i.ak = phi i32 [ %i.an, %bb.f ], [ 0, %bb.e ]  ; 2 uses
  %.180.1 = phi i32 [ %i.ao, %bb.f ], [ %i.bu, %bb.e ] ; 2 uses
  %.26979.1 = phi ptr [ %i.ap, %bb.f ], [ %.168, %bb.e ] ; 3 uses
  %i.al = load i8, ptr %.26979.1, align 1, !tbaa !10
  %i.am = icmp eq i8 %i.al, -1
  br i1 %i.am, label %bb.f, label %.critedge.1

bb.f:                                             ; preds = %.lr.ph.1
  %i.an = add nuw nsw i32 %i.ak, 255              ; 3 uses
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !11
  %i.ao = add nuw nsw i32 %.180.1, 256            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.26979.1, i64 1 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %1
  br i1 %i.aq, label %.lr.ph.1, label %.critedge.1, !llvm.loop !9

.critedge.1:                                      ; preds = %.lr.ph.1, %bb.f, %bb.e
  %i.ar = phi i32 [ 0, %bb.e ], [ %i.an, %bb.f ], [ %i.ak, %.lr.ph.1 ]
  %.269.lcssa.1 = phi ptr [ %.168, %bb.e ], [ %i.ap, %bb.f ], [ %.26979.1, %.lr.ph.1 ] ; 3 uses
  %.1.lcssa.1 = phi i32 [ %i.bu, %bb.e ], [ %i.ao, %bb.f ], [ %.180.1, %.lr.ph.1 ]
  %i.as = load i8, ptr %.269.lcssa.1, align 1, !tbaa !10
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.ar, %i.at                ; 2 uses
  store i32 %i.au, ptr %i.ai, align 4, !tbaa !11
  %i.av = load i8, ptr %.269.lcssa.1, align 1, !tbaa !10
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %.1.lcssa.1, %i.aw          ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, %1
  br i1 %i.ay, label %.critedge74, label %.thread

.thread:                                          ; preds = %.critedge.1
  %.168.1 = getelementptr inbounds nuw i8, ptr %.269.lcssa.1, i64 1 ; 2 uses
  %i.az = sub nsw i32 %1, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !11
  store ptr %.168.1, ptr %3, align 8, !tbaa !14
  %i.bb = sext i32 %i.br to i64
  %i.bc = getelementptr inbounds i8, ptr %.168.1, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !14
  %i.be = sext i32 %i.au to i64
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !14
  br label %.critedge74

.lr.ph.preheader:                                 ; preds = %.preheader75
  %5 = add nsw i32 %1, -4                         ; 2 uses
  %6 = lshr i32 %5, 8
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr i8, ptr %0, i64 %7
  %scevgep = getelementptr i8, ptr %8, i64 2
  %9 = and i32 %5, -256
  %10 = add nuw nsw i32 %9, 259
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %i.bh = phi i32 [ %i.bk, %bb.g ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.180 = phi i32 [ %i.bl, %bb.g ], [ 3, %.lr.ph.preheader ] ; 2 uses
  %.26979 = phi ptr [ %i.bm, %bb.g ], [ %.16885, %.lr.ph.preheader ] ; 3 uses
  %i.bi = load i8, ptr %.26979, align 1, !tbaa !10
  %i.bj = icmp eq i8 %i.bi, -1
  br i1 %i.bj, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph
  %i.bk = add nuw nsw i32 %i.bh, 255              ; 3 uses
  store i32 %i.bk, ptr %4, align 4, !tbaa !11
  %i.bl = add nuw nsw i32 %.180, 256              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.26979, i64 1
  %i.bn = icmp slt i32 %i.bl, %1
  br i1 %i.bn, label %.lr.ph, label %.critedge, !llvm.loop !9

.critedge:                                        ; preds = %.lr.ph, %bb.g, %.preheader75
  %i.bo = phi i32 [ 0, %.preheader75 ], [ %i.bk, %bb.g ], [ %i.bh, %.lr.ph ]
  %.269.lcssa = phi ptr [ %.16885, %.preheader75 ], [ %scevgep, %bb.g ], [ %.26979, %.lr.ph ] ; 3 uses
  %.1.lcssa = phi i32 [ 3, %.preheader75 ], [ %10, %bb.g ], [ %.180, %.lr.ph ]
  %i.bp = load i8, ptr %.269.lcssa, align 1, !tbaa !10
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nsw i32 %i.bo, %i.bq                ; 2 uses
  store i32 %i.br, ptr %4, align 4, !tbaa !11
  %i.bs = load i8, ptr %.269.lcssa, align 1, !tbaa !10
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nsw i32 %.1.lcssa, %i.bt            ; 4 uses
  %i.bv = icmp sgt i32 %i.bu, %1
  br i1 %i.bv, label %.critedge74, label %bb.e

.critedge74:                                      ; preds = %.preheader.2, %.critedge, %.critedge.1, %.preheader.preheader, %.preheader.1, %.thread, %bb.c, %bb.d
  %.2 = phi i32 [ %spec.select, %.preheader.2 ], [ -1, %bb.c ], [ 0, %.thread ], [ -1, %bb.d ], [ -1094995529, %.critedge ], [ -1094995529, %.preheader.preheader ], [ -1094995529, %.preheader.1 ], [ -1094995529, %.critedge.1 ]
  ret i32 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !15}
!10 = !{!5, !5, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
end_hunk_0
