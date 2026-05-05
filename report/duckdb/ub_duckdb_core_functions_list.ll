inline.NumInlined: 6793
inline.NumDeleted: 2407
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_111UnpivotBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a
  br i1 %i.o, label %bb.bc, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.026200.lcssa309 = phi i64 [ %.026200, %bb.h ]
  %.026200.lcssa306 = phi i64 [ %.026200, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_111UnpivotBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge, %bb.n
  %i.ah = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge ], [ %.pre218, %bb.n ]
  %i.ai = icmp eq i64 %.026200.lcssa309, %.027202
  %spec.select = select i1 %i.ai, i64 %i.ah, i64 %.028201 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_:bb.a
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11LogicalTypeESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1337

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph.i.i.i.i ]
  %.014.i.i.i.i.lcssa = phi ptr [ %.014.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.r = landingpad { ptr, i32 }
          catch ptr null
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_:bb.a
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %lsr.iv22 = phi i64 [ %lsr.iv.lcssa, %.lr.ph.i.i.i.i.i.i.preheader ], [ %lsr.iv.next23, %.lr.ph.i.i.i.i.i.i ]
  %.05.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i) #24
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
end_hunk_3
