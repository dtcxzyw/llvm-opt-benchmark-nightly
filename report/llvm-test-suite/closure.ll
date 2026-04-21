inline.NumInlined: 1
begin_hunk_0_@closure:bb.a
  br label %.preheader

.preheader:                                       ; preds = %.loopexit56.thread, %.preheader.loopexit
  %itemsetend.promoted82 = phi ptr [ %i.cg, %.loopexit56.thread ], [ %itemsetend.promoted82.pre, %.preheader.loopexit ] ; 4 uses
  %.142.lcssa = phi ptr [ %0, %.loopexit56.thread ], [ %.5, %.preheader.loopexit ] ; 6 uses
  %i.ch = icmp ult ptr %.142.lcssa, %i.h
  br i1 %i.ch, label %.lr.ph84.preheader.a, label %bb.h

end_hunk_0
begin_hunk_1_@closure:bb.a
  %i.cj = add i64 %.142.lcssa136, 2
  %umax137 = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %i.cj)
  %i.ck = xor i64 %.142.lcssa136, -1
  %i.cl = add i64 %umax137, %i.ck                 ; 2 uses
  %i.cm = lshr i64 %i.cl, 1
  %i.cn = add nuw i64 %i.cm, 1                    ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.cl, 30
  %i.co = sub i64 %itemsetend.promoted82133, %.142.lcssa134
  %diff.check135 = icmp ult i64 %i.co, 32
  %or.cond = select i1 %min.iters.check139, i1 true, i1 %diff.check135
  br i1 %or.cond, label %.lr.ph84.preheader156, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph84.preheader.a
  %n.vec142 = and i64 %i.cn, -16                  ; 4 uses
  %i.cp = shl i64 %n.vec142, 1
  %i.cq = getelementptr i8, ptr %.142.lcssa, i64 %i.cp
  %i.cr = shl i64 %n.vec142, 1
end_hunk_1
begin_hunk_2_@closure:bb.a
  store <8 x i16> %wide.load150, ptr %i.cu, align 2, !tbaa !16
  %index.next151 = add nuw i64 %index144, 16      ; 2 uses
  %i.cv = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.cv, label %middle.block152, label %vector.body143, !llvm.loop !37

middle.block152:                                  ; preds = %vector.body143
  %cmp.n153 = icmp eq i64 %i.cn, %n.vec142
  br i1 %cmp.n153, label %._crit_edge, label %.lr.ph84.preheader156

.lr.ph84.preheader156:                            ; preds = %.lr.ph84.preheader.a, %middle.block152
  %.683.ph = phi ptr [ %.142.lcssa, %.lr.ph84.preheader.a ], [ %i.cq, %middle.block152 ]
  %.ph = phi ptr [ %itemsetend.promoted82, %.lr.ph84.preheader.a ], [ %i.cs, %middle.block152 ]
  br label %.lr.ph84

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %.loopexit
end_hunk_2
begin_hunk_3_@closure:bb.a
  store ptr %i.dk, ptr @itemsetend, align 8, !tbaa !8
  store i16 %i.dh, ptr %i.dg, align 2, !tbaa !16
  %i.dl = icmp ult ptr %i.dj, %i.h
  br i1 %i.dl, label %.lr.ph71, label %.critedge.loopexit, !llvm.loop !38

.critedge.loopexit:                               ; preds = %bb.f, %.lr.ph71
  %.3.lcssa.ph = phi ptr [ %.370, %.lr.ph71 ], [ %i.dj, %bb.f ]
end_hunk_3
begin_hunk_4_@closure:bb.a
  %i.do = shl i32 %.04075, 1                      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not53 = icmp eq i32 %i.do, 0
  br i1 %.not53, label %.loopexit.loopexit, label %bb.d, !llvm.loop !39

.loopexit.loopexit:                               ; preds = %bb.g
  %i.dp = trunc nsw i64 %indvars.iv.next to i32
end_hunk_4
begin_hunk_5_@closure:bb.a
  %.5 = phi ptr [ %.14278, %bb.c ], [ %.4, %.loopexit.loopexit ] ; 2 uses
  %.2 = phi i32 [ %i.db, %bb.c ], [ %i.dp, %.loopexit.loopexit ]
  %i.dq = icmp ult ptr %i.cw, %i.f
  br i1 %i.dq, label %.lr.ph80, label %.preheader.loopexit, !llvm.loop !40

.lr.ph84:                                         ; preds = %.lr.ph84.preheader156, %.lr.ph84
  %.683 = phi ptr [ %i.ds, %.lr.ph84 ], [ %.683.ph, %.lr.ph84.preheader156 ] ; 2 uses
end_hunk_5
begin_hunk_6_@closure:bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 2 ; 2 uses
  store i16 %i.dt, ptr %i.dr, align 2, !tbaa !16
  %i.dv = icmp ult ptr %i.ds, %i.h
  br i1 %i.dv, label %.lr.ph84, label %._crit_edge, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph84, %middle.block152
  %.lcssa = phi ptr [ %i.cs, %middle.block152 ], [ %i.du, %.lr.ph84 ]
  store ptr %.lcssa, ptr @itemsetend, align 8, !tbaa !8
  br label %bb.h

end_hunk_6
begin_hunk_7_@llvm.memset.p0.i64
!35 = distinct !{!35, !19, !26}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19, !26, !27}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19, !26}
end_hunk_7
