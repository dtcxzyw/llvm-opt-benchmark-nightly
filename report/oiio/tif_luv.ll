inline.NumInlined: 35
inline.NumDeleted: 5
begin_hunk_0_@oog_encode:bb.a

.preheader56:                                     ; preds = %.loopexit, %.preheader56._crit_edge
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %.preheader56._crit_edge ], [ 99, %.loopexit ] ; 5 uses
  %.163 = phi i32 [ %i.cl, %.preheader56._crit_edge ], [ 100, %.loopexit ]
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv70
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !15
  %i.ck = fcmp ogt double %i.cj, 1.500000e+00
end_hunk_0
begin_hunk_1_@oog_encode:bb.a

bb.g:                                             ; preds = %.preheader.1, %.preheader, %bb.e
  %.049.lcssa = phi i32 [ %.04960, %.preheader ], [ 50, %bb.e ], [ %i.cr, %.preheader.1 ] ; 2 uses
  %i.cy = add nuw nsw i32 %.163, 99               ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %.0.neg62 = phi i32 [ -1, %bb.g ], [ %.0.neg.1, %bb.k ] ; 2 uses
  %.061 = phi i32 [ 1, %bb.g ], [ %i.dk, %bb.k ]  ; 5 uses
  %i.cz = add nsw i32 %i.cy, %.0.neg62
  %.urem68 = urem i32 %i.cz, 100
  %i.da = zext nneg i32 %.urem68 to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.da
end_hunk_1
begin_hunk_2_@oog_encode:bb.a
  %.0.lcssa = phi i32 [ %.061, %bb.h ], [ 50, %bb.i ], [ %i.de, %bb.j ]
  %.0.neg.lcssa = phi i32 [ %.0.neg62, %bb.h ], [ -50, %bb.i ], [ %.0.neg, %bb.j ]
  %i.dl = icmp samesign ult i32 %.049.lcssa, %.0.lcssa
  %2 = getelementptr inbounds [4 x i8], ptr @oog_encode.oog_table, i64 %indvars.iv70
  %i.dm = add nsw i32 %.049.lcssa, %i.cl
  %i.dn = add i32 %i.cy, %.0.neg.lcssa
  %.sink = select i1 %i.dl, i32 %i.dm, i32 %i.dn
  %i.do = srem i32 %.sink, 100
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr @oog_encode.oog_table, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  store i32 %i.dr, ptr %2, align 4, !tbaa !3
  br label %.preheader56._crit_edge

.preheader56._crit_edge:                          ; preds = %.preheader56._crit_edge.sink.split, %.preheader56
end_hunk_2
