inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g_board_size = external local_unnamed_addr global [2 x i32], align 4
@g_board = external local_unnamed_addr global [2 x [32 x i32]], align 16
@lastbit16 = external local_unnamed_addr global [65536 x i32], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @move_generator(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @g_board_size, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph35, label %._crit_edge

.lr.ph35:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [128 x i8], ptr @g_board, i64 %i.b ; 2 uses
  br label %bb.b

.loopexit.loopexit:                               ; preds = %lastbit32.exit
  %i.g = trunc nsw i64 %indvars.iv.next to i32
  %.pre = load i32, ptr %i.c, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.h = phi i32 [ %i.k, %bb.b ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.02933, %bb.b ], [ %i.g, %.loopexit.loopexit ] ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next39, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !8

bb.b:                                             ; preds = %.lr.ph35, %.loopexit
  %i.k = phi i32 [ %i.d, %.lr.ph35 ], [ %i.h, %.loopexit ]
  %indvars.iv38 = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next39, %.loopexit ] ; 2 uses
  %.02933 = phi i32 [ 0, %.lr.ph35 ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv38 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = and i32 %i.o, %i.m                       ; 2 uses
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next39
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %i.s = lshr i32 %i.r, 1
  %i.t = lshr i32 %i.p, 1
  %i.u = and i32 %i.t, %i.p
  %i.v = or i32 %i.s, %i.u
  %i.w = or i32 %i.v, %i.r                        ; 2 uses
  %.not30 = icmp eq i32 %i.w, -1
  br i1 %.not30, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.x = xor i32 %i.w, -1
  %i.y = sext i32 %.02933 to i64
  %i.z = trunc nuw nsw i64 %indvars.iv.next39 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %lastbit32.exit
  %indvars.iv = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next, %lastbit32.exit ] ; 2 uses
  %.02832 = phi i32 [ %i.x, %.lr.ph.preheader ], [ %i.ac, %lastbit32.exit ] ; 4 uses
  %i.aa = sub i32 0, %.02832
  %i.ab = and i32 %.02832, %i.aa                  ; 5 uses
  %i.ac = xor i32 %i.ab, %.02832
  %i.ad = and i32 %i.ab, 65535                    ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %2, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  br label %lastbit32.exit

2:                                                ; preds = %.lr.ph
  %.not6.i = icmp eq i32 %i.ab, 0
  br i1 %.not6.i, label %lastbit32.exit, label %bb.d

bb.d:                                             ; preds = %2
  %i.ah = lshr exact i32 %i.ab, 16
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = add nsw i32 %i.ak, 16
  br label %lastbit32.exit

lastbit32.exit:                                   ; preds = %bb.c, %2, %bb.d
  %.0.i = phi i32 [ %i.ag, %bb.c ], [ %i.al, %bb.d ], [ 100, %2 ]
  %i.am = getelementptr inbounds [12 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %.0.i, ptr %i.an, align 4, !tbaa !10
  store i32 %i.z, ptr %i.am, align 4, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 0, ptr %i.ao, align 4, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not = icmp eq i32 %i.ab, %.02832
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.029.lcssa = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %.loopexit ]
  ret i32 %.029.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @move_generator_stage1(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @g_board_size, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph35, label %._crit_edge

.lr.ph35:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [128 x i8], ptr @g_board, i64 %i.b ; 2 uses
  br label %bb.b

.loopexit.loopexit:                               ; preds = %lastbit32.exit
  %i.g = trunc nsw i64 %indvars.iv.next to i32
  %.pre = load i32, ptr %i.c, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.h = phi i32 [ %i.k, %bb.b ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.02933, %bb.b ], [ %i.g, %.loopexit.loopexit ] ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next39, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !15

bb.b:                                             ; preds = %.lr.ph35, %.loopexit
  %i.k = phi i32 [ %i.d, %.lr.ph35 ], [ %i.h, %.loopexit ]
  %indvars.iv38 = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next39, %.loopexit ] ; 2 uses
  %.02933 = phi i32 [ 0, %.lr.ph35 ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv38 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = and i32 %i.o, %i.m                       ; 2 uses
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next39
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %i.s = or i32 %i.p, %i.r
  %i.t = lshr i32 %i.s, 1
  %i.u = or i32 %i.p, %i.t
  %i.v = or i32 %i.u, %i.r                        ; 2 uses
  %.not30 = icmp eq i32 %i.v, -1
  br i1 %.not30, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.w = xor i32 %i.v, -1
  %i.x = sext i32 %.02933 to i64
  %i.y = trunc nuw nsw i64 %indvars.iv.next39 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %lastbit32.exit
  %indvars.iv = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next, %lastbit32.exit ] ; 2 uses
  %.02832 = phi i32 [ %i.w, %.lr.ph.preheader ], [ %i.ab, %lastbit32.exit ] ; 4 uses
  %i.z = sub i32 0, %.02832
  %i.aa = and i32 %.02832, %i.z                   ; 5 uses
  %i.ab = xor i32 %i.aa, %.02832
  %i.ac = and i32 %i.aa, 65535                    ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %2, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  br label %lastbit32.exit

2:                                                ; preds = %.lr.ph
  %.not6.i = icmp eq i32 %i.aa, 0
  br i1 %.not6.i, label %lastbit32.exit, label %bb.d

bb.d:                                             ; preds = %2
  %i.ag = lshr exact i32 %i.aa, 16
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = add nsw i32 %i.aj, 16
  br label %lastbit32.exit

lastbit32.exit:                                   ; preds = %bb.c, %2, %bb.d
  %.0.i = phi i32 [ %i.af, %bb.c ], [ %i.ak, %bb.d ], [ 100, %2 ]
  %i.al = getelementptr inbounds [12 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %.0.i, ptr %i.am, align 4, !tbaa !10
  store i32 %i.y, ptr %i.al, align 4, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 0, ptr %i.an, align 4, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not = icmp eq i32 %i.aa, %.02832
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.029.lcssa = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %.loopexit ]
  ret i32 %.029.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @move_generator_stage2(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 1
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @g_board_size, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph35, label %._crit_edge

.lr.ph35:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [128 x i8], ptr @g_board, i64 %i.b ; 2 uses
  br label %bb.b

.loopexit.loopexit:                               ; preds = %lastbit32.exit
  %i.g = trunc nsw i64 %indvars.iv.next to i32
  %.pre = load i32, ptr %i.c, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.h = phi i32 [ %i.k, %bb.b ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.034, %bb.b ], [ %i.g, %.loopexit.loopexit ] ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next39, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !17

bb.b:                                             ; preds = %.lr.ph35, %.loopexit
  %i.k = phi i32 [ %i.d, %.lr.ph35 ], [ %i.h, %.loopexit ]
  %indvars.iv38 = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next39, %.loopexit ] ; 2 uses
  %.034 = phi i32 [ %1, %.lr.ph35 ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv38 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = and i32 %i.o, %i.m                       ; 2 uses
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next39
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %i.s = lshr i32 %i.r, 1
  %i.t = lshr i32 %i.p, 1
  %i.u = xor i32 %i.p, %i.t
  %i.v = xor i32 %i.u, -1
  %i.w = or i32 %i.s, %i.v
  %i.x = or i32 %i.w, %i.r                        ; 2 uses
  %.not30 = icmp eq i32 %i.x, -1
  br i1 %.not30, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.y = xor i32 %i.x, -1
  %i.z = sext i32 %.034 to i64
  %i.aa = trunc nuw nsw i64 %indvars.iv.next39 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %lastbit32.exit
  %indvars.iv = phi i64 [ %i.z, %.lr.ph.preheader ], [ %indvars.iv.next, %lastbit32.exit ] ; 2 uses
  %.02831 = phi i32 [ %i.y, %.lr.ph.preheader ], [ %i.ad, %lastbit32.exit ] ; 4 uses
  %i.ab = sub i32 0, %.02831
  %i.ac = and i32 %.02831, %i.ab                  ; 5 uses
  %i.ad = xor i32 %i.ac, %.02831
  %i.ae = and i32 %i.ac, 65535                    ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %3, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  br label %lastbit32.exit

3:                                                ; preds = %.lr.ph
  %.not6.i = icmp eq i32 %i.ac, 0
  br i1 %.not6.i, label %lastbit32.exit, label %bb.d

bb.d:                                             ; preds = %3
  %i.ai = lshr exact i32 %i.ac, 16
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = add nsw i32 %i.al, 16
  br label %lastbit32.exit

lastbit32.exit:                                   ; preds = %bb.c, %3, %bb.d
  %.0.i = phi i32 [ %i.ah, %bb.c ], [ %i.am, %bb.d ], [ 100, %3 ]
  %i.an = getelementptr inbounds [12 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %.0.i, ptr %i.ao, align 4, !tbaa !10
  store i32 %i.aa, ptr %i.an, align 4, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 0, ptr %i.ap, align 4, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not = icmp eq i32 %i.ac, %.02831
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %.1.lcssa, %.loopexit ]
  ret i32 %.0.lcssa
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!11, !5, i64 4}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!12 = !{!11, !5, i64 0}
!13 = !{!11, !5, i64 8}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
end_hunk_0
