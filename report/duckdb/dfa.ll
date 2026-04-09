inline.NumInlined: 1354
inline.NumDeleted: 544
begin_hunk_0_@_ZN10duckdb_re23DFA14BuildAllStatesERKSt8functionIFvPKibEE:bb.a
_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc68, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0124.0 = phi ptr [ %i.au, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.au, %.noexc68 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ay, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.av, %.noexc68 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 168 ; 3 uses
  %7 = load i8, ptr %i.az, align 1, !tbaa !105
  br label %.lr.ph200

bb.m:                                             ; preds = %.critedge.thread
  %i.ba = shl nuw nsw i64 %i.ar, 2
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #22
          to label %.noexc76 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit.thread ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re23DFA14BuildAllStatesERKSt8functionIFvPKibEE:bb.a
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

.lr.ph200:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %.critedge
  %8 = phi i8 [ %7, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %17, %.critedge ] ; 3 uses
  %9 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %15, %.critedge ]
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %10 = icmp slt i64 %indvars.iv199, 254
  br i1 %10, label %bb.s, label %.critedge.thread, !llvm.loop !240

.critedge.thread:                                 ; preds = %.critedge, %bb.r
  %.lcssa198 = phi i8 [ %8, %bb.r ], [ %17, %.critedge ]
  %i.bj = zext i8 %.lcssa198 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0124.0, i64 %i.bj
  store i32 255, ptr %11, align 4, !tbaa !3
  %12 = load i32, ptr %i.ao, align 4, !tbaa !80
  %13 = sext i32 %12 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0124.0, i64 %13
  store i32 256, ptr %i.bk, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit77, label %bb.m

bb.s:                                             ; preds = %.lr.ph200, %bb.r
  %indvars.iv199 = phi i64 [ %9, %.lr.ph200 ], [ %indvars.iv.next, %bb.r ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv199, 1 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.az, i64 %indvars.iv.next
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !105
  %i.bn = icmp eq i8 %i.bm, %8
  br i1 %i.bn, label %bb.r, label %.critedge, !llvm.loop !240

.critedge:                                        ; preds = %bb.s
  %i.bo = trunc nsw i64 %indvars.iv199 to i32
  %i.bp = zext i8 %8 to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0124.0, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !3
  %14 = shl i64 %indvars.iv199, 32
  %sext.a = add i64 %14, 4294967296
  %15 = ashr exact i64 %sext.a, 32                ; 3 uses
  %16 = getelementptr inbounds i8, ptr %i.az, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !105     ; 2 uses
  %i.br = icmp slt i64 %15, 255
  br i1 %i.br, label %.lr.ph200, label %.critedge.thread, !llvm.loop !241

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit77:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i71, %.noexc76, %.critedge.thread
  %.sroa.0118.0 = phi ptr [ %i.bb, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i71 ], [ %i.bb, %.noexc76 ], [ null, %.critedge.thread ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
end_hunk_1
