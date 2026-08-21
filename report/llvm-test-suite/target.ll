loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@reduce_blocks:bb.a
  %i.do = tail call double @timer() #3
  %i.dp = fsub double %i.do, %i.a
  %i.dq = fsub double %i.dp, %.0.lcssa
  %i.dr = load double, ptr @timer_target_dc, align 8, !tbaa !23
  %i.ds = fadd double %i.dr, %i.dq
  store double %i.ds, ptr @timer_target_dc, align 8, !tbaa !23
  %i.dt = load double, ptr @timer_target_cb, align 8, !tbaa !23
  %i.du = fadd double %.0.lcssa, %i.dt
  store double %i.du, ptr @timer_target_cb, align 8, !tbaa !23
  ret i32 0
}

declare double @timer() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @zero_refine() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @sorted_index, align 8, !tbaa !25 ; 2 uses
  %i.b = load i32, ptr @num_refine, align 4, !tbaa !4 ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [4 x i8], ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr @sorted_list, align 8, !tbaa !8
  %i.i = load ptr, ptr @blocks, align 8, !tbaa !8
  br label %bb.b

.preheader:                                       ; preds = %.loopexit, %bb.a
  %i.j = load i32, ptr @max_active_parent, align 4, !tbaa !4 ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph19, label %._crit_edge

.lr.ph19:                                         ; preds = %.preheader
  %i.l = load ptr, ptr @parents, align 8, !tbaa !8
  br label %bb.o

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.m = phi i32 [ %i.b, %.lr.ph ], [ %i.at, %.loopexit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [192 x i8], ptr %i.i, i64 %i.q ; 14 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !29
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  store i32 0, ptr %i.y, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !4
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i32 0, ptr %i.ac, align 8, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  store i32 0, ptr %i.ag, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 0, ptr %i.ak, align 8, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  store i32 0, ptr %i.ao, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !4
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.n, label %.loopexit.loopexit

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i32 0, ptr %i.as, align 8, !tbaa !4
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.n, %bb.m
  %.pre = load i32, ptr @num_refine, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.at = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.m, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [4 x i8], ptr %i.a, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.b, label %.preheader, !llvm.loop !30

bb.o:                                             ; preds = %.lr.ph19, %bb.q
  %i.ba = phi i32 [ %i.j, %.lr.ph19 ], [ %i.bf, %bb.q ]
  %indvars.iv22 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next23, %bb.q ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [100 x i8], ptr %i.l, i64 %indvars.iv22 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  store i32 0, ptr %i.be, align 4, !tbaa !13
  %.pre25 = load i32, ptr @max_active_parent, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bf = phi i32 [ %i.ba, %bb.o ], [ %.pre25, %bb.p ] ; 2 uses
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next23, %i.bg
  br i1 %i.bh, label %bb.o, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.q, %.preheader
  ret void
}

declare void @consolidate_blocks() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @add_blocks() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @timer() #3             ; 2 uses
  %i.b = load i32, ptr @target_active, align 4, !tbaa !4 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @num_pes, align 4, !tbaa !4
  %i.d = mul nsw i32 %i.c, %i.b
  %i.e = add nsw i32 %i.d, 3
  %i.f = load i32, ptr @global_active, align 4, !tbaa !4
  %i.g = sub i32 %i.e, %i.f
  %i.h = sdiv i32 %i.g, 7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr @global_active, align 4, !tbaa !4
  %i.j = sdiv i32 %i.i, -7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.023 = phi i32 [ %i.h, %bb.b ], [ %i.j, %bb.c ] ; 4 uses
  %i.k = icmp sgt i32 %.023, 0
  br i1 %i.k, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %bb.d, %.critedge
  %.039 = phi double [ %i.at, %.critedge ], [ 0.000000e+00, %bb.d ]
  %.02238 = phi i32 [ %.1.lcssa, %.critedge ], [ 0, %bb.d ] ; 3 uses
  %.02637 = phi i32 [ %i.au, %.critedge ], [ 0, %bb.d ] ; 2 uses
  tail call void @zero_refine()
  %i.l = load i32, ptr @num_refine, align 4, !tbaa !4 ; 3 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph40
  %i.n = load ptr, ptr @num_blocks, align 8, !tbaa !25
  %0 = zext nneg i32 %i.l to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %1, ptr @cur_max_level, align 4, !tbaa !4
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.q = icmp sgt i64 %indvars.iv, 0
  br i1 %i.q, label %bb.e, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %bb.g, %.lr.ph40, %bb.f
  %i.r = icmp slt i32 %.02238, %.023
  br i1 %i.r, label %.lr.ph34, label %.critedge

.lr.ph34:                                         ; preds = %.loopexit
  %i.s = load ptr, ptr @sorted_index, align 8, !tbaa !25
  %i.t = load ptr, ptr @sorted_list, align 8
  %i.u = load ptr, ptr @blocks, align 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph34, %bb.l
  %i.v = phi i32 [ %i.l, %.lr.ph34 ], [ %i.ao, %bb.l ] ; 3 uses
  %indvars.iv.a = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next.a, %bb.l ] ; 3 uses
  %.133 = phi i32 [ %.02238, %.lr.ph34 ], [ %.2, %bb.l ] ; 4 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [4 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.a, %i.aa
  br i1 %i.ab, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !27
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [192 x i8], ptr %i.u, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !29
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !33
  %i.al = icmp eq i32 %i.ak, %.02637
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 1, ptr %i.am, align 8, !tbaa !14
  %i.an = add nsw i32 %.133, 1
  %.pre = load i32, ptr @num_refine, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %i.ao = phi i32 [ %.pre, %bb.k ], [ %i.v, %bb.j ], [ %i.v, %bb.i ]
  %.2 = phi i32 [ %i.an, %bb.k ], [ %.133, %bb.j ], [ %.133, %bb.i ] ; 3 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1
  %i.ap = icmp slt i32 %.2, %.023
  br i1 %i.ap, label %bb.h, label %.critedge, !llvm.loop !34

.critedge:                                        ; preds = %bb.h, %bb.l, %.loopexit
  %.1.lcssa = phi i32 [ %.02238, %.loopexit ], [ %.2, %bb.l ], [ %.133, %bb.h ] ; 2 uses
  %i.aq = tail call double @timer() #3
  tail call void @split_blocks() #3
  %i.ar = tail call double @timer() #3
  %i.as = fsub double %i.ar, %i.aq
  %i.at = fadd double %.039, %i.as                ; 2 uses
  %i.au = add nuw nsw i32 %.02637, 1
  %i.av = icmp slt i32 %.1.lcssa, %.023
  br i1 %i.av, label %.lr.ph40, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %.critedge, %bb.d
  %.0.lcssa = phi double [ 0.000000e+00, %bb.d ], [ %i.at, %.critedge ] ; 2 uses
  %i.aw = tail call double @timer() #3
  %i.ax = fsub double %i.aw, %i.a
  %i.ay = load double, ptr @timer_target_ab, align 8, !tbaa !23
  %i.az = fadd double %i.ay, %i.ax
  store double %i.az, ptr @timer_target_ab, align 8, !tbaa !23
  %i.ba = tail call double @timer() #3
  %i.bb = fsub double %i.ba, %i.a
  %i.bc = fsub double %i.bb, %.0.lcssa
  %i.bd = load double, ptr @timer_target_da, align 8, !tbaa !23
  %i.be = fadd double %i.bd, %i.bc
  store double %i.be, ptr @timer_target_da, align 8, !tbaa !23
  %i.bf = load double, ptr @timer_target_sb, align 8, !tbaa !23
  %i.bg = fadd double %.0.lcssa, %i.bf
  store double %i.bg, ptr @timer_target_sb, align 8, !tbaa !23
  ret void
}

declare void @split_blocks() local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 56, !6, i64 88}
!12 = !{!11, !5, i64 4}
!13 = !{!11, !5, i64 20}
!14 = !{!15, !5, i64 8}
!15 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !6, i64 28, !6, i64 52, !6, i64 76, !6, i64 172, !16, i64 184}
!16 = !{!"p4 double", !17, i64 0}
!17 = !{!"any p4 pointer", !18, i64 0}
!18 = !{!"any p3 pointer", !19, i64 0}
!19 = !{!"any p2 pointer", !9, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !6, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 int", !9, i64 0}
!27 = !{!28, !5, i64 4}
!28 = !{!"", !5, i64 0, !5, i64 4}
!29 = !{!15, !5, i64 0}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = !{!15, !5, i64 4}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
end_hunk_0
