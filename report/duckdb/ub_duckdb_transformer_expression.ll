inline.NumInlined: 4303
inline.NumDeleted: 1845
begin_hunk_0_@_ZN6duckdb11Transformer20TransformArrayAccessERN17duckdb_libpgquery14PGAIndirectionE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.cf

.body216:                                         ; preds = %bb.ax, %bb.at, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit230, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit181, %.loopexit404.a
  %.pn75.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn75.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit181 ], [ %lpad.loopexit406.a, %.loopexit404.a ], [ %.pn65, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit230 ], [ %i.fz, %bb.ax ], [ %i.fq, %bb.at ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ch
end_hunk_0
begin_hunk_1_@_ZN6duckdb11Transformer20TransformArrayAccessERN17duckdb_libpgquery14PGAIndirectionE:bb.a
          cleanup
  br label %.body289

.body289:                                         ; preds = %bb.be, %bb.ba, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit318, %.loopexit
  %.pn63 = phi { ptr, i32 } [ %lpad.loopexit.a, %.loopexit ], [ %.pn61, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit318 ], [ %i.hi, %bb.be ], [ %i.gw, %bb.ba ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.ch
end_hunk_1
begin_hunk_2_@_ZN6duckdb11Transformer17TransformSubqueryERN17duckdb_libpgquery9PGSubLinkE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %.body211.thread

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %.noexc210, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit228
  %.sroa.0510.0 = phi ptr [ %i.iq, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit228 ], [ %i.id, %.noexc210 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
end_hunk_2
begin_hunk_3_@_ZN6duckdb11Transformer17TransformIntervalERN17duckdb_libpgquery18PGIntervalConstantE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  br label %.body244

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i289: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdb11Transformer22TransformAExprInternalERN17duckdb_libpgquery7PGAExprE:bb.a
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %53, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.rz)
          to label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i353 unwind label %bb.dv, !inline_history !22

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i353: ; preds = %bb.dl, %.noexc349
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
end_hunk_4
