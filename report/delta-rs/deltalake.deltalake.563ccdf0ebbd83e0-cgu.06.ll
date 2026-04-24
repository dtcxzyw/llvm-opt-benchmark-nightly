inline.NumInlined: 6907
inline.NumDeleted: 2175
begin_hunk_0_@_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs7p2uQeJxui2_9deltalake:bb.a
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8, !nonnull !8, !align !144, !noundef !8 ; 6 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !nonnull !8, !align !144, !noundef !8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
end_hunk_0
begin_hunk_1_@_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs7p2uQeJxui2_9deltalake:bb.a
  br i1 %.sroa.0302.2, label %.body692.thread, label %.thread1102

.body692.thread1109:                              ; preds = %bb.fh, %bb.r
  %.sroa.0303.1.ph = phi i1 [ true, %bb.r ], [ false, %bb.fh ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body692.thread
end_hunk_1
begin_hunk_2_@_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs7p2uQeJxui2_9deltalake:bb.a
bb.ez:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  %i.abs = load i64, ptr %i.dh, align 16, !range !1245, !noundef !8 ; 2 uses
  %i.abt = icmp eq i64 %i.abs, 37                 ; 3 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7184, ptr noundef nonnull align 8 dereferenceable(40) %i.abu, i64 40, i1 false)
  br i1 %i.abt, label %bb.fa, label %bb.fb
end_hunk_2
begin_hunk_3_@_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs7p2uQeJxui2_9deltalake:bb.a

bb.fw:                                            ; preds = %bb.fy
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef 328, i64 noundef 8) #52
  br i1 %i.abt, label %bb.gb, label %bb.ga

bb.fx:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
end_hunk_3
begin_hunk_4_@_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs7p2uQeJxui2_9deltalake:bb.a
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7184)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.mj)
          to label %bb.fw unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.acw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef 328, i64 noundef 8) #52
  br i1 %i.abt, label %bb.ge, label %bb.gd

bb.ga:                                            ; preds = %.thread1113, %bb.gb, %bb.fw
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mh, i64 noundef 328, i64 noundef 8) #52
end_hunk_4
begin_hunk_5_@_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs7p2uQeJxui2_9deltalake:bb.a
          cleanup
  br label %bb.gd

bb.gd:                                            ; preds = %2, %bb.ge, %bb.fz, %.thread1102, %bb.gc
  %.pn657 = phi { ptr, i32 } [ %i.acx, %bb.gc ], [ %i.acw, %bb.fz ], [ %.pn6551215, %bb.ge ], [ %.pn6531101, %2 ], [ %.pn6531101.ph, %.thread1102 ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mh, i64 noundef 328, i64 noundef 8) #52
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.md, i64 noundef 328, i64 noundef 8) #52
  br label %bb.bb

.thread1102:                                      ; preds = %bb.ey, %.body692, %bb.ft
  %.pn6531101.ph = phi { ptr, i32 } [ %.pn651, %bb.ft ], [ %lpad.thr_comm.split-lp, %.body692 ], [ %.pn649, %bb.ey ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef 328, i64 noundef 8) #52
  br label %bb.gd

2:                                                ; preds = %.body692.thread
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef 328, i64 noundef 8) #52
  br i1 %.sroa.0303.01100, label %bb.ge, label %bb.gd

.body692.thread:                                  ; preds = %bb.ff, %bb.fc, %.body692.thread1109, %bb.ey
  %.pn6531101 = phi { ptr, i32 } [ %i.abx, %bb.fc ], [ %.pn649, %bb.ey ], [ %lpad.thr_comm, %.body692.thread1109 ], [ %i.acc, %bb.ff ] ; 2 uses
  %.sroa.0303.01100 = phi i1 [ true, %bb.fc ], [ false, %bb.ey ], [ %.sroa.0303.1.ph, %.body692.thread1109 ], [ false, %bb.ff ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.mj) #50
          to label %2 unwind label %bb.bg

bb.ge:                                            ; preds = %bb.fz, %2
  %.pn6551215 = phi { ptr, i32 } [ %i.acw, %bb.fz ], [ %.pn6531101, %2 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.mh) #50
          to label %bb.gd unwind label %bb.bg

end_hunk_5
begin_hunk_6_@_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0Cs7p2uQeJxui2_9deltalake:bb.a
  br label %.critedge

.critedge674.a:                                   ; preds = %bb.ra, %bb.re, %.critedge673, %bb.qz, %bb.qx, %bb.qw, %bb.ql, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %.pn669.pn.pn = phi { ptr, i32 } [ %.pn669.pn, %bb.qz ], [ %.pn669.pn, %.critedge673 ], [ %i.aoi, %bb.ql ], [ %.pn669.pn, %bb.re ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn669.pn, %bb.bb ], [ %.pn667, %bb.qw ], [ %.pn669.pn, %bb.ra ], [ %i.aov, %bb.qx ]
  resume { ptr, i32 } %.pn669.pn.pn

bb.qn:                                            ; preds = %bb.qq, %bb.qo
end_hunk_6
begin_hunk_7_@_RNvMs1_NtNtCs1N9T06jgEdt_11arrow_array7builder20generic_list_builderINtB5_18GenericListBuilderlNtNtB7_15boolean_builder14BooleanBuilderE6finishCs7p2uQeJxui2_9deltalake:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.ai:                                            ; preds = %.body19.thread, %bb.ag, %bb.j, %bb.k, %bb.g, %bb.d
  %.pn.ph = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.af, %bb.g ], [ %i.v, %bb.d ], [ %i.ak, %bb.k ], [ %eh.lpad-body2043, %bb.ag ], [ %eh.lpad-body2043, %.body19.thread ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25148)
  %i.bu = load ptr, ptr %i.m, align 8, !alias.scope !25148, !noundef !8 ; 2 uses
end_hunk_7
begin_hunk_8_@_RNvMs1_NtNtCs1N9T06jgEdt_11arrow_array7builder20generic_list_builderINtB5_18GenericListBuilderlNtNtB7_15boolean_builder14BooleanBuilderE6finishCs7p2uQeJxui2_9deltalake:bb.a
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m) #54
          to label %bb.al unwind label %bb.ah

.body19.thread44:                                 ; preds = %bb.ac, %bb.al, %bb.am
  %.pn.pn34 = phi { ptr, i32 } [ %.pn.pn.ph, %bb.al ], [ %.pn.pn.ph, %bb.am ], [ %i.bo, %bb.ac ]
  resume { ptr, i32 } %.pn.pn34

bb.al:                                            ; preds = %bb.b, %bb.ak, %bb.ai, %bb.aj
end_hunk_8
