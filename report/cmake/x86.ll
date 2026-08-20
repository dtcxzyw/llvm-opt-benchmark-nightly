inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x86_code.MASK_TO_BIT_NUMBER = internal unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_x86_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @x86_code, i64 noundef 8, i64 noundef 5, i32 noundef 1, i1 noundef zeroext true) #3 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %x86_coder_init.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 -5, ptr %i.f, align 4, !tbaa !16
  br label %x86_coder_init.exit

x86_coder_init.exit:                              ; preds = %bb.a, %bb.b
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_x86_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @x86_code, i64 noundef 8, i64 noundef 5, i32 noundef 1, i1 noundef zeroext false) #3 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %x86_coder_init.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 -5, ptr %i.f, align 4, !tbaa !16
  br label %x86_coder_init.exit

x86_coder_init.exit:                              ; preds = %bb.a, %bb.b
  ret i32 %i.a
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @x86_code(ptr nofree noundef captures(none) %0, i32 noundef %1, i1 noundef zeroext %2, ptr nofree noundef captures(none) %3, i64 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = icmp ult i64 %4, 5
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !14
  %i.d = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.e = sub i32 %1, %i.d
  %i.f = icmp ugt i32 %i.e, 5
  %i.g = add i32 %1, -5
  %spec.select = select i1 %i.f, i32 %i.g, i32 %i.d
  %i.h = add i64 %4, -5
  %i.i = add i32 %1, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.j
  %.091113 = phi i64 [ 0, %bb.b ], [ %.2, %bb.j ] ; 5 uses
  %.195112 = phi i32 [ %spec.select, %bb.b ], [ %.296, %bb.j ] ; 4 uses
  %.097111 = phi i32 [ %i.c, %bb.b ], [ %.4, %bb.j ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %.091113 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = add i8 %i.k, 22
  %or.cond = icmp ult i8 %i.l, -2
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i64 %.091113, 1
  br label %bb.j, !llvm.loop !18

bb.e:                                             ; preds = %bb.c
  %i.n = trunc i64 %.091113 to i32                ; 2 uses
  %i.o = add i32 %1, %i.n                         ; 6 uses
  %i.p = sub i32 %i.o, %.195112                   ; 2 uses
  %i.q = icmp ugt i32 %i.p, 5
  br i1 %i.q, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not114 = icmp eq i32 %i.o, %.195112
  br i1 %.not114, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.r = add i32 %i.i, %i.n
  %i.s = sub i32 %i.r, %.195112
  %i.t = icmp ult i32 %i.s, 7
  br i1 %i.t, label %.lr.ph.epil, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph.preheader, %.lr.ph.epil.preheader
  br label %.lr.ph.epil.preheader, !llvm.loop !20

.lr.ph.epil:                                      ; preds = %.lr.ph.preheader, %.lr.ph.epil
  %.198107.epil = phi i32 [ %i.v, %.lr.ph.epil ], [ %.097111, %.lr.ph.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.preheader ]
  %i.u = shl i32 %.198107.epil, 1
  %i.v = and i32 %i.u, 238                        ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.p
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph.epil, %.preheader, %bb.e
  %.299 = phi i32 [ 0, %bb.e ], [ %.097111, %.preheader ], [ %i.v, %.lr.ph.epil ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17    ; 2 uses
  %i.y = zext i8 %i.x to i32
  %i.z = add i8 %i.x, 1
  %or.cond5 = icmp ult i8 %i.z, 2
  br i1 %or.cond5, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.loopexit
  %i.aa = lshr i32 %.299, 1                       ; 2 uses
  %i.ab = icmp ugt i32 %.299, 9
  %.not104 = icmp eq i32 %i.aa, 3
  %or.cond105 = or i1 %i.ab, %.not104
  br i1 %or.cond105, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = shl nuw i32 %i.y, 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 3 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !17
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 16
  %i.ah = or disjoint i32 %i.ag, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 8
  %i.am = or disjoint i32 %i.ah, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = zext i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.am, %i.ap            ; 2 uses
  %i.ar = add i32 %i.o, 5
  %i.as = sub i32 -5, %i.o
  %.0.p = select i1 %2, i32 %i.ar, i32 %i.as      ; 2 uses
  %i.at = icmp eq i32 %.299, 0
  br i1 %i.at, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g
  %.0.us = add i32 %i.aq, %.0.p
  br label %.split110

.split:                                           ; preds = %bb.g
  %i.au = zext nneg i32 %i.aa to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @x86_code.MASK_TO_BIT_NUMBER, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !23
  %i.ax = shl i32 %i.aw, 3                        ; 2 uses
  %i.ay = sub i32 24, %i.ax
  %i.az = sub i32 32, %i.ax
  %i.ba = zext nneg i32 %i.az to i64
  %notmask = shl nsw i64 -1, %i.ba
  %i.bb = trunc i64 %notmask to i32
  %invariant.op = xor i32 %i.bb, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.split
  %.089 = phi i32 [ %i.aq, %.split ], [ %.reass.reass.reass, %bb.h ]
  %.0 = add i32 %.089, %.0.p                      ; 3 uses
  %i.bc = lshr i32 %.0, %i.ay
  %i.bd = and i32 %i.bc, 255
  %i.be = add nsw i32 %i.bd, -255
  %switch = icmp ult i32 %i.be, -254
  %.reass.reass.reass = xor i32 %.0, %invariant.op
  br i1 %switch, label %bb.h, label %.split110

.split110:                                        ; preds = %bb.h, %.split.us
  %.us-phi = phi i32 [ %.0.us, %.split.us ], [ %.0, %bb.h ] ; 4 uses
  %i.bf = shl i32 %.us-phi, 7
  %i.bg = ashr i32 %i.bf, 31
  %i.bh = trunc nsw i32 %i.bg to i8
  store i8 %i.bh, ptr %i.w, align 1, !tbaa !17
  %i.bi = lshr i32 %.us-phi, 16
  %i.bj = trunc i32 %i.bi to i8
  store i8 %i.bj, ptr %i.ad, align 1, !tbaa !17
  %i.bk = lshr i32 %.us-phi, 8
  %i.bl = trunc i32 %i.bk to i8
  store i8 %i.bl, ptr %i.ai, align 1, !tbaa !17
  %i.bm = trunc i32 %.us-phi to i8
  store i8 %i.bm, ptr %i.an, align 1, !tbaa !17
  %i.bn = add nuw i64 %.091113, 5
  br label %bb.j

bb.i:                                             ; preds = %.loopexit, %bb.f
  %spec.select106.v = phi i32 [ 1, %.loopexit ], [ 17, %bb.f ]
  %i.bo = add nuw i64 %.091113, 1
  %spec.select106 = or i32 %spec.select106.v, %.299
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.split110, %bb.d
  %.4 = phi i32 [ %.097111, %bb.d ], [ 0, %.split110 ], [ %spec.select106, %bb.i ] ; 2 uses
  %.296 = phi i32 [ %.195112, %bb.d ], [ %i.o, %.split110 ], [ %i.o, %bb.i ] ; 2 uses
  %.2 = phi i64 [ %i.m, %bb.d ], [ %i.bn, %.split110 ], [ %i.bo, %bb.i ] ; 3 uses
  %.not = icmp ugt i64 %.2, %i.h
  br i1 %.not, label %bb.k, label %bb.c

bb.k:                                             ; preds = %bb.j
  store i32 %.4, ptr %0, align 4, !tbaa !14
  store i32 %.296, ptr %i.a, align 4, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.0100 = phi i64 [ %.2, %bb.k ], [ 0, %bb.a ]
  ret i64 %.0100
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"lzma_next_coder_s", !11, i64 0, !12, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 4}
!16 = !{!15, !6, i64 4}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!6, !6, i64 0}
end_hunk_0
