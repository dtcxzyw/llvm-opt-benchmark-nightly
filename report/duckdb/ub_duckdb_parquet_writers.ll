inline.NumInlined: 2405
inline.NumDeleted: 1305
begin_hunk_0_@_ZN6duckdb18StructColumnWriter20InitializeWriteStateERN14duckdb_parquet8RowGroupE:bb.a
          to label %bb.b unwind label %bb.f       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !393  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb18StructColumnWriter20InitializeWriteStateERN14duckdb_parquet8RowGroupE:bb.a
bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !614
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !615
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ult i64 %i.ac, %i.v
  br i1 %i.ad, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 120 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !616
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.ab
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc14 unwind label %bb.f   ; 9 uses

.noexc14:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %5 = load ptr, ptr %i.o, align 8, !tbaa !615    ; 10 uses
  %6 = ptrtoint ptr %5 to i64                     ; 2 uses
  %7 = load ptr, ptr %i.ae, align 8, !tbaa !616   ; 3 uses
  %8 = ptrtoint ptr %7 to i64                     ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %5, %7
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc14
  %i.aj = add i64 %8, -8
  %i.ak = sub i64 %i.aj, %6                       ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader71, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.an = add i64 %8, -8
  %i.ao = sub i64 %i.an, %6
  %i.ap = and i64 %i.ao, -8
  %i.aq = add i64 %i.ap, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.aq
  %scevgep42 = getelementptr i8, ptr %5, i64 %i.aq
  %bound0 = icmp ult ptr %i.ai, %scevgep42
  %bound1 = icmp ult ptr %5, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader71, label %vector.ph

end_hunk_1
begin_hunk_2_@_ZN6duckdb18StructColumnWriter20InitializeWriteStateERN14duckdb_parquet8RowGroupE:bb.a
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ai, i64 %i.ar
  %i.at = getelementptr i8, ptr %5, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.au ; 2 uses
  %next.gep43 = getelementptr i8, ptr %5, i64 %i.au ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.av = getelementptr i8, ptr %next.gep43, i64 16
end_hunk_2
begin_hunk_3_@_ZN6duckdb18StructColumnWriter20InitializeWriteStateERN14duckdb_parquet8RowGroupE:bb.a

.lr.ph.i.i.i.i.i.preheader71:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader71, %.lr.ph.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN6duckdb18StructColumnWriter20InitializeWriteStateERN14duckdb_parquet8RowGroupE:bb.a
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !9, !alias.scope !620, !noalias !617
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %7
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !628

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc14
  %.not.i8.i = icmp eq ptr %5, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %5) #26
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ColumnWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
end_hunk_4
