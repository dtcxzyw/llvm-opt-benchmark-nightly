inline.NumInlined: 1354
inline.NumDeleted: 544
begin_hunk_0_@_ZN10duckdb_re23DFA14BuildAllStatesERKSt8functionIFvPKibEE:bb.a
_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc68, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0124.0 = phi ptr [ %i.au, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.au, %.noexc68 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ay, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.av, %.noexc68 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 168 ; 2 uses
  br label %.lr.ph200

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i69: ; preds = %.critedge, %.critedge.thread
  %7 = load i32, ptr %i.ao, align 4, !tbaa !80
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0124.0, i64 %8
  store i32 256, ptr %9, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit77, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i69
  %i.ba = shl nuw nsw i64 %i.ar, 2
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #22
          to label %.noexc76 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit.thread ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re23DFA14BuildAllStatesERKSt8functionIFvPKibEE:bb.a
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

.lr.ph200:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %.critedge
  %.047154 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %sext.a, %.critedge ]
  %sext = shl i64 %.047154, 32                    ; 2 uses
  %10 = ashr exact i64 %sext, 32                  ; 2 uses
  %11 = getelementptr inbounds i8, ptr %i.az, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !105     ; 3 uses
  %exitcond.not201 = icmp eq i64 %sext, 1095216660480
  br i1 %exitcond.not201, label %.critedge.thread, label %bb.s

bb.r:                                             ; preds = %bb.s
  %exitcond.not = icmp eq i64 %indvars.iv.next, 255
  br i1 %exitcond.not, label %.critedge.thread, label %bb.s, !llvm.loop !240

.critedge.thread:                                 ; preds = %.lr.ph200, %bb.r
  %i.bj = zext i8 %12 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0124.0, i64 %i.bj
  store i32 255, ptr %i.bk, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i69

bb.s:                                             ; preds = %.lr.ph200, %bb.r
  %indvars.iv199 = phi i64 [ %indvars.iv.next, %bb.r ], [ %10, %.lr.ph200 ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv199, 1 ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.az, i64 %indvars.iv.next
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !105
  %i.bn = icmp eq i8 %i.bm, %12
  br i1 %i.bn, label %bb.r, label %.critedge, !llvm.loop !240

.critedge:                                        ; preds = %bb.s
  %i.bo = trunc nsw i64 %indvars.iv199 to i32
  %i.bp = zext i8 %12 to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0124.0, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !3
  %sext.a = add i64 %indvars.iv199, 1
  %i.br = icmp slt i64 %indvars.iv199, 255
  br i1 %i.br, label %.lr.ph200, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i69, !llvm.loop !241

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit77:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i71, %.noexc76, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i69
  %.sroa.0118.0 = phi ptr [ %i.bb, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i71 ], [ %i.bb, %.noexc76 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i69 ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
end_hunk_1
