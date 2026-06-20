inline.NumInlined: 5477
inline.NumDeleted: 1897
begin_hunk_0_@_RNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB6_5table10DeltaTable12try_from_url0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17386
  call void @llvm.experimental.noalias.scope.decl(metadata !17459)
  call void @llvm.experimental.noalias.scope.decl(metadata !17462)
  %i.pt = load ptr, ptr %i.v, align 8, !alias.scope !17465, !noalias !17386, !nonnull !17, !noundef !17
  %i.pu = atomicrmw sub ptr %i.pt, i64 1 release, align 8, !noalias !17466
  %i.pv = icmp eq i64 %i.pu, 1
  br i1 %i.pv, label %bb.en, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i

bb.en:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i unwind label %bb.em, !noalias !17390

bb.eo:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17386
  call void @llvm.experimental.noalias.scope.decl(metadata !17467)
  call void @llvm.experimental.noalias.scope.decl(metadata !17470)
  %i.pw = load ptr, ptr %i.n, align 8, !alias.scope !17473, !noalias !17386, !nonnull !17, !noundef !17
  %i.px = atomicrmw sub ptr %i.pw, i64 1 release, align 8, !noalias !17474
  %i.py = icmp eq i64 %i.px, 1
  br i1 %i.py, label %bb.ep, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i.i.i.i

bb.ep:                                            ; preds = %bb.eo
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i.i.i.i unwind label %bb.eq, !noalias !17390

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i: ; preds = %bb.eq, %bb.eh, %.body45.i.i.i.i.i.i
  %.pn21.i.i.i.i.i.i = phi { ptr, i32 } [ %i.pz, %bb.eq ], [ %.pn19.i.i.i.i.i.i, %.body45.i.i.i.i.i.i ], [ %.pn19.i.i.i.i.i.i, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17386
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i.i.i.i: ; preds = %bb.ep, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17386
  call void @llvm.experimental.noalias.scope.decl(metadata !17475)
  call void @llvm.experimental.noalias.scope.decl(metadata !17478)
  %i.qa = load ptr, ptr %i.v, align 8, !alias.scope !17481, !noalias !17386, !nonnull !17, !noundef !17
  %i.qb = atomicrmw sub ptr %i.qa, i64 1 release, align 8, !noalias !17482
  %i.qc = icmp eq i64 %i.qb, 1
  br i1 %i.qc, label %bb.er, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit54.i.i.i.i.i.i

bb.er:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit54.i.i.i.i.i.i unwind label %bb.es, !noalias !17390

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i: ; preds = %bb.ft, %bb.es, %bb.en, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dp, %.body.i.i.i.i.i.i.i.i, %bb.df, %bb.db, %bb.cx
  %i.qd = phi ptr [ %i.mz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ], [ %i.mz, %bb.es ], [ %i.mz, %bb.en ], [ %i.mc, %bb.cx ], [ %i.mz, %bb.ft ], [ %i.mz, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mz, %bb.dp ], [ %i.mz, %.body.i.i.i.i.i.i.i.i ], [ %i.mz, %bb.df ], [ %i.mz, %bb.db ]
  %i.qe = phi ptr [ %i.na, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ], [ %i.na, %bb.es ], [ %i.na, %bb.en ], [ %i.md, %bb.cx ], [ %i.na, %bb.ft ], [ %i.na, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.na, %bb.dp ], [ %i.na, %.body.i.i.i.i.i.i.i.i ], [ %i.na, %bb.df ], [ %i.na, %bb.db ]
  %i.qf = phi ptr [ %i.nb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ], [ %i.nb, %bb.es ], [ %i.nb, %bb.en ], [ %i.me, %bb.cx ], [ %i.nb, %bb.ft ], [ %i.nb, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nb, %bb.dp ], [ %i.nb, %.body.i.i.i.i.i.i.i.i ], [ %i.nb, %bb.df ], [ %i.nb, %bb.db ]
  %i.qg = phi ptr [ %i.nc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ], [ %i.nc, %bb.es ], [ %i.nc, %bb.en ], [ %i.mf, %bb.cx ], [ %i.nc, %bb.ft ], [ %i.nc, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nc, %bb.dp ], [ %i.nc, %.body.i.i.i.i.i.i.i.i ], [ %i.nc, %bb.df ], [ %i.nc, %bb.db ]
  %i.qh = phi ptr [ %i.nd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ], [ %i.nd, %bb.es ], [ %i.nd, %bb.en ], [ %i.mg, %bb.cx ], [ %i.nd, %bb.ft ], [ %i.nd, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nd, %bb.dp ], [ %i.nd, %.body.i.i.i.i.i.i.i.i ], [ %i.nd, %bb.df ], [ %i.nd, %bb.db ]
  %i.qi = phi ptr [ %i.ne, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ], [ %i.ne, %bb.es ], [ %i.ne, %bb.en ], [ %i.mh, %bb.cx ], [ %i.ne, %bb.ft ], [ %i.ne, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ne, %bb.dp ], [ %i.ne, %.body.i.i.i.i.i.i.i.i ], [ %i.ne, %bb.df ], [ %i.ne, %bb.db ]
  %i.qj = phi ptr [ %i.nf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ], [ %i.nf, %bb.es ], [ %i.nf, %bb.en ], [ %i.mi, %bb.cx ], [ %i.nf, %bb.ft ], [ %i.nf, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nf, %bb.dp ], [ %i.nf, %.body.i.i.i.i.i.i.i.i ], [ %i.nf, %bb.df ], [ %i.nf, %bb.db ]
  %i.qk = phi ptr [ %i.ng, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ], [ %i.ng, %bb.es ], [ %i.ng, %bb.en ], [ %i.mj, %bb.cx ], [ %i.ng, %bb.ft ], [ %i.ng, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ng, %bb.dp ], [ %i.ng, %.body.i.i.i.i.i.i.i.i ], [ %i.ng, %bb.df ], [ %i.ng, %bb.db ]
  %i.ql = phi ptr [ %i.nh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ], [ %i.nh, %bb.es ], [ %i.nh, %bb.en ], [ %i.mm, %bb.cx ], [ %i.nh, %bb.ft ], [ %i.nh, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nh, %bb.dp ], [ %i.nh, %.body.i.i.i.i.i.i.i.i ], [ %i.nh, %bb.df ], [ %i.nh, %bb.db ]
  %i.qm = phi ptr [ %i.ni, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ], [ %i.ni, %bb.es ], [ %i.ni, %bb.en ], [ %i.mn, %bb.cx ], [ %i.ni, %bb.ft ], [ %i.ni, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ni, %bb.dp ], [ %i.ni, %.body.i.i.i.i.i.i.i.i ], [ %i.ni, %bb.df ], [ %i.ni, %bb.db ]
  %.pn32.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn21.pn.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ], [ %i.qo, %bb.es ], [ %.pn21.pn.i.i.i.i.i.i, %bb.en ], [ %i.mw, %bb.cx ], [ %.pn30.i.i.i.i.i.i, %bb.ft ], [ %i.oe, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.oe, %bb.dp ], [ %i.nt, %.body.i.i.i.i.i.i.i.i ], [ %i.nm, %bb.df ], [ %i.my, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !17386
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 976
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.qn) #37
          to label %bb.fv unwind label %bb.em, !noalias !17390

bb.es:                                            ; preds = %bb.er
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit54.i.i.i.i.i.i: ; preds = %bb.fr, %bb.er, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i.i.i.i, %bb.dr
  %.sroa.10.i.i.sroa.0.2.i.i.i.i = phi ptr [ %.sroa.992.sroa.9.i.i.sroa.0.0.copyload.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i.i.i.i ], [ %.sroa.992.sroa.9.i.i.sroa.0.0.copyload.i.i.i.i, %bb.er ], [ %.sroa.4.i.sroa.4.i.i.sroa.0.0.copyload.i.i.i.i, %bb.dr ], [ %.sroa.10.i.i.sroa.0.0.i.i.i.i, %bb.fr ]
  %.sroa.10.i.i.sroa.10.2.i.i.i.i = phi i64 [ %.sroa.992.sroa.9.i.i.sroa.8.0.copyload.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i.i.i.i ], [ %.sroa.992.sroa.9.i.i.sroa.8.0.copyload.i.i.i.i, %bb.er ], [ %.sroa.4.i.sroa.4.i.i.sroa.4.0.copyload.i.i.i.i, %bb.dr ], [ %.sroa.10.i.i.sroa.10.0.i.i.i.i, %bb.fr ]
  %.sroa.10.i.i.sroa.11.2.i.i.i.i = phi ptr [ %.sroa.992.sroa.9.i.i.sroa.9.0.copyload.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i.i.i.i ], [ %.sroa.992.sroa.9.i.i.sroa.9.0.copyload.i.i.i.i, %bb.er ], [ undef, %bb.dr ], [ %.sroa.10.i.i.sroa.11.0.i.i.i.i, %bb.fr ]
  %.sroa.12108.1.i.i.i.i.i.i = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i.i.i.i ], [ undef, %bb.er ], [ undef, %bb.dr ], [ %.sroa.12108.2169.i.i.i.i.i.i, %bb.fr ]
  %.sroa.11105.1.i.i.i.i.i.i = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i.i.i.i ], [ undef, %bb.er ], [ undef, %bb.dr ], [ %.sroa.11105.2171.i.i.i.i.i.i, %bb.fr ]
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.992.sroa.0.0.copyload120.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i.i.i.i ], [ %.sroa.992.sroa.0.0.copyload120.i.i.i.i.i.i, %bb.er ], [ %.sroa.4.i.sroa.0.0.copyload.i.i.i.i.i.i, %bb.dr ], [ %.sroa.6.2173.i.i.i.i.i.i, %bb.fr ]
  %.sroa.098.1.i.i.i.i.i.i = phi i64 [ -9223372036854775741, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i.i.i.i ], [ -9223372036854775741, %bb.er ], [ -9223372036854775722, %bb.dr ], [ %.sroa.098.2175.i.i.i.i.i.i, %bb.fr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !17386
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 976
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.qp)
          to label %bb.fx unwind label %bb.fw, !noalias !17390

bb.et:                                            ; preds = %bb.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !17483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17413
  %i.qq = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %.val.i.i13.i.i.i.i = load ptr, ptr %i.qq, align 8, !noalias !17386, !nonnull !17, !noundef !17 ; 9 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val37.i.i.i.i.i.i = load i64, ptr %i.qr, align 8, !noalias !17386, !noundef !17 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17484)
  call void @llvm.experimental.noalias.scope.decl(metadata !17487)
  %i.qs = icmp ugt i64 %.val37.i.i.i.i.i.i, 23
  br i1 %i.qs, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.qt = icmp eq i64 %.val37.i.i.i.i.i.i, 23
  br i1 %i.qt, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i

bb.ev:                                            ; preds = %bb.et
  call void @llvm.experimental.noalias.scope.decl(metadata !17490)
  %i.qu = icmp ult i64 %.val37.i.i.i.i.i.i, 38
  br i1 %i.qu, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i, label %bb.ew

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.ev
  %i.qv = load i128, ptr %.val.i.i13.i.i.i.i, align 1
  %i.qw = xor i128 %i.qv, 43072362355690950656158319865334099790
  %i.qx = getelementptr i8, ptr %.val.i.i13.i.i.i.i, i64 7
  %i.qy = load i128, ptr %i.qx, align 1
  %i.qz = xor i128 %i.qy, 154763657356728356358779844745476251763
  %i.ra = or i128 %i.qw, %i.qz
  %i.rb = icmp ne i128 %i.ra, 0
  %i.rc = zext i1 %i.rb to i32
  %i.rd = icmp eq i32 %i.rc, 0
  br i1 %i.rd, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.backedge.us.i.i.i.i.i.i.i.i.i.i
  %.in.i.i.i.i.i.i.i.i.i93 = phi i64 [ %i.ro, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.backedge.us.i.i.i.i.i.i.i.i.i.i ], [ %.val37.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i ]
  %.pn.i.i.i.i.i.i.i.i.i92 = phi ptr [ %i.re, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.backedge.us.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i13.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i ]
  %i.re = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i92, i64 1 ; 3 uses
  %i.rf = load i128, ptr %i.re, align 1
  %i.rg = xor i128 %i.rf, 43072362355690950656158319865334099790
  %i.rh = getelementptr i8, ptr %i.re, i64 7
  %i.ri = load i128, ptr %i.rh, align 1
  %i.rj = xor i128 %i.ri, 154763657356728356358779844745476251763
  %i.rk = or i128 %i.rg, %i.rj
  %i.rl = icmp ne i128 %i.rk, 0
  %i.rm = zext i1 %i.rl to i32
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.backedge.us.i.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.backedge.us.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.ro = add nsw i64 %.in.i.i.i.i.i.i.i.i.i93, -1 ; 2 uses
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ro, 23
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %.lr.ph, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17493
  store ptr %.val.i.i13.i.i.i.i, ptr %i.g, align 8, !noalias !17493
  %i.rp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.val37.i.i.i.i.i.i, ptr %i.rp, align 8, !noalias !17493
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @89, i64 1), ptr %i.rq, align 8, !noalias !17493
  %i.rr = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 22, ptr %i.rr, align 8, !noalias !17493
  %i.rs = icmp ult i64 %.val37.i.i.i.i.i.i, 87
  br i1 %i.rs, label %.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fa, %bb.ew
  %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ew ], [ %i.th, %bb.fa ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.ew ], [ %.sroa.014.2.3.i.i.i.i.i.i.i.i.i, %bb.fa ] ; 2 uses
  %i.rt = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i.i, 38
  %i.ru = icmp uge i64 %i.rt, %.val37.i.i.i.i.i.i
  %i.rv = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %or.cond338.i.i.i.i.i.i.i.i.i = select i1 %i.ru, i1 true, i1 %i.rv
  br i1 %or.cond338.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph40.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ew, %bb.fa
  %.sroa.06.036.i.i.i.i.i.i.i.i.i = phi i64 [ %i.th, %bb.fa ], [ 0, %bb.ew ] ; 7 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.val.i.i13.i.i.i.i, i64 %.sroa.06.036.i.i.i.i.i.i.i.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.rw, align 1, !alias.scope !17494, !noalias !17495
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 22
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.rx, align 1, !alias.scope !17494, !noalias !17495
  %i.ry = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, splat (i8 78)
  %i.rz = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i, splat (i8 116)
  %i.sa = and <16 x i1> %i.ry, %i.rz
  %i.sb = bitcast <16 x i1> %i.sa to i16          ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %.sroa.0.0.copyload.i.1.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.sc, align 1, !alias.scope !17494, !noalias !17495
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rw, i64 38
  %.sroa.02.0.copyload.i.1.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.sd, align 1, !alias.scope !17494, !noalias !17495
  %i.se = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i.i.i.i.i.i, splat (i8 78)
  %i.sf = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i.i.i.i.i.i.i.i, splat (i8 116)
  %i.sg = and <16 x i1> %i.se, %i.sf
  %i.sh = bitcast <16 x i1> %i.sg to i16          ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  %.sroa.0.0.copyload.i.2.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.si, align 1, !alias.scope !17494, !noalias !17495
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rw, i64 54
  %.sroa.02.0.copyload.i.2.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.sj, align 1, !alias.scope !17494, !noalias !17495
  %i.sk = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i.i.i.i.i.i, splat (i8 78)
  %i.sl = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i.i.i.i.i.i.i.i, splat (i8 116)
  %i.sm = and <16 x i1> %i.sk, %i.sl
  %i.sn = bitcast <16 x i1> %i.sm to i16          ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.rw, i64 48
  %.sroa.0.0.copyload.i.3.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.so, align 1, !alias.scope !17494, !noalias !17495
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rw, i64 70
  %.sroa.02.0.copyload.i.3.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.sp, align 1, !alias.scope !17494, !noalias !17495
  %i.sq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i.i.i.i.i.i, splat (i8 78)
  %i.sr = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i.i.i.i.i.i.i.i, splat (i8 116)
  %i.ss = and <16 x i1> %i.sq, %i.sr
  %i.st = bitcast <16 x i1> %i.ss to i16          ; 2 uses
  %i.su = icmp eq i16 %i.sb, 0
  br i1 %i.su, label %.preheader30.1.i.i.i.i.i.i.i.i.i, label %bb.fb

.preheader30.1.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc58.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.014.2.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.tm, %.noexc58.i.i.i.i.i.i ] ; 2 uses
  %i.sv = icmp eq i16 %i.sh, 0
  br i1 %i.sv, label %.preheader30.2.i.i.i.i.i.i.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %.preheader30.1.i.i.i.i.i.i.i.i.i
  %i.sw = or disjoint i64 %.sroa.06.036.i.i.i.i.i.i.i.i.i, 16
  %i.sx = trunc nuw i8 %.sroa.014.2.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %i.sy = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.sw, i16 noundef %i.sh, i1 noundef zeroext %i.sx) #43
          to label %.noexc55.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !17390

.noexc55.i.i.i.i.i.i:                             ; preds = %bb.ex
  %3 = or i1 %i.sy, %i.sx
  %4 = zext i1 %3 to i8
  br label %.preheader30.2.i.i.i.i.i.i.i.i.i

.preheader30.2.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc55.i.i.i.i.i.i, %.preheader30.1.i.i.i.i.i.i.i.i.i
  %.sroa.014.2.1.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.i.i.i.i.i.i.i.i.i, %.preheader30.1.i.i.i.i.i.i.i.i.i ], [ %4, %.noexc55.i.i.i.i.i.i ] ; 2 uses
  %i.sz = icmp eq i16 %i.sn, 0
  br i1 %i.sz, label %.preheader30.3.i.i.i.i.i.i.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %.preheader30.2.i.i.i.i.i.i.i.i.i
  %i.ta = or disjoint i64 %.sroa.06.036.i.i.i.i.i.i.i.i.i, 32
  %i.tb = trunc nuw i8 %.sroa.014.2.1.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %i.tc = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.ta, i16 noundef %i.sn, i1 noundef zeroext %i.tb) #43
          to label %.noexc56.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !17390

.noexc56.i.i.i.i.i.i:                             ; preds = %bb.ey
  %5 = or i1 %i.tc, %i.tb
  %6 = zext i1 %5 to i8
  br label %.preheader30.3.i.i.i.i.i.i.i.i.i

.preheader30.3.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc56.i.i.i.i.i.i, %.preheader30.2.i.i.i.i.i.i.i.i.i
  %.sroa.014.2.2.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i.i.i.i.i.i, %.preheader30.2.i.i.i.i.i.i.i.i.i ], [ %6, %.noexc56.i.i.i.i.i.i ] ; 2 uses
  %i.td = icmp eq i16 %i.st, 0
  br i1 %i.td, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %.preheader30.3.i.i.i.i.i.i.i.i.i
  %i.te = or disjoint i64 %.sroa.06.036.i.i.i.i.i.i.i.i.i, 48
  %i.tf = trunc nuw i8 %.sroa.014.2.2.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %i.tg = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.te, i16 noundef %i.st, i1 noundef zeroext %i.tf) #43
          to label %.noexc57.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !17390

.noexc57.i.i.i.i.i.i:                             ; preds = %bb.ez
  %7 = or i1 %i.tg, %i.tf
  %8 = zext i1 %7 to i8
  br label %bb.fa

bb.fa:                                            ; preds = %.noexc57.i.i.i.i.i.i, %.preheader30.3.i.i.i.i.i.i.i.i.i
  %.sroa.014.2.3.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i.i.i.i.i.i, %.preheader30.3.i.i.i.i.i.i.i.i.i ], [ %8, %.noexc57.i.i.i.i.i.i ] ; 2 uses
  %i.th = add i64 %.sroa.06.036.i.i.i.i.i.i.i.i.i, 64 ; 2 uses
  %i.ti = add i64 %.sroa.06.036.i.i.i.i.i.i.i.i.i, 150
  %i.tj = icmp uge i64 %i.ti, %.val37.i.i.i.i.i.i
  %i.tk = trunc nuw i8 %.sroa.014.2.3.i.i.i.i.i.i.i.i.i to i1
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.tj, i1 true, i1 %i.tk
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.tl = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %.sroa.06.036.i.i.i.i.i.i.i.i.i, i16 noundef %i.sb, i1 noundef zeroext false) #43
          to label %.noexc58.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !17390

.noexc58.i.i.i.i.i.i:                             ; preds = %bb.fb
  %i.tm = zext i1 %i.tl to i8
  br label %.preheader30.1.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.fc, %.preheader.i.i.i.i.i.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.sroa.014.4.i.i.i.i.i.i.i.i.i, %bb.fc ]
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i1 [ %i.rv, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.uf, %bb.fc ] ; 2 uses
  %i.tn = add i64 %.val37.i.i.i.i.i.i, -38        ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.val.i.i13.i.i.i.i, i64 %i.tn ; 2 uses
  %.sroa.0.0.copyload.i58.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.to, align 1, !alias.scope !17494, !noalias !17498
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 22
  %.sroa.02.0.copyload.i59.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.tp, align 1, !alias.scope !17494, !noalias !17498
  %i.tq = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i.i.i.i.i.i.i.i, splat (i8 78)
  %i.tr = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i.i.i.i.i.i.i.i.i, splat (i8 116)
  %i.ts = and <16 x i1> %i.tq, %i.tr
  %i.tt = bitcast <16 x i1> %i.ts to i16          ; 2 uses
  %i.tu = icmp eq i16 %i.tt, 0
  br i1 %i.tu, label %bb.fe, label %bb.ff

.lr.ph40.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.fc
  %.sroa.06.139.i.i.i.i.i.i.i.i.i = phi i64 [ %i.uc, %bb.fc ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.val.i.i13.i.i.i.i, i64 %.sroa.06.139.i.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i60.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.tv, align 1, !alias.scope !17494, !noalias !17501
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 22
  %.sroa.02.0.copyload.i61.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.tw, align 1, !alias.scope !17494, !noalias !17501
  %i.tx = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i.i.i.i.i.i.i.i.i, splat (i8 78)
  %i.ty = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i.i.i.i.i.i.i.i.i, splat (i8 116)
  %i.tz = and <16 x i1> %i.tx, %i.ty
  %i.ua = bitcast <16 x i1> %i.tz to i16          ; 2 uses
  %i.ub = icmp eq i16 %i.ua, 0
  br i1 %i.ub, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.noexc59.i.i.i.i.i.i, %.lr.ph40.i.i.i.i.i.i.i.i.i
  %.sroa.014.4.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %.lr.ph40.i.i.i.i.i.i.i.i.i ], [ %i.uh, %.noexc59.i.i.i.i.i.i ] ; 2 uses
  %i.uc = add i64 %.sroa.06.139.i.i.i.i.i.i.i.i.i, 16
  %i.ud = add i64 %.sroa.06.139.i.i.i.i.i.i.i.i.i, 54
  %i.ue = icmp uge i64 %i.ud, %.val37.i.i.i.i.i.i
  %i.uf = trunc nuw i8 %.sroa.014.4.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %or.cond3.i.i.i.i.i.i.i.i.i = or i1 %i.ue, %i.uf
  br i1 %or.cond3.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph40.i.i.i.i.i.i.i.i.i

bb.fd:                                            ; preds = %.lr.ph40.i.i.i.i.i.i.i.i.i
  %i.ug = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %.sroa.06.139.i.i.i.i.i.i.i.i.i, i16 noundef %i.ua, i1 noundef zeroext false) #43
          to label %.noexc59.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !17390

.noexc59.i.i.i.i.i.i:                             ; preds = %bb.fd
  %i.uh = zext i1 %i.ug to i8
  br label %bb.fc

bb.fe:                                            ; preds = %.noexc60.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.sroa.014.5.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %10, %.noexc60.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17493
  %i.ui = trunc nuw i8 %.sroa.014.5.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ui, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i

bb.ff:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.uj = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.tn, i16 noundef %i.tt, i1 noundef zeroext %.lcssa.i.i.i.i.i.i.i.i.i) #43
          to label %.noexc60.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i, !noalias !17390

.noexc60.i.i.i.i.i.i:                             ; preds = %bb.ff
  %9 = or i1 %.lcssa.i.i.i.i.i.i.i.i.i, %i.uj
  %10 = zext i1 %9 to i8
  br label %bb.fe

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.fd
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i.i.i:          ; preds = %bb.fb, %bb.ez, %bb.ey, %bb.ex
  %lpad.loopexit181.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i: ; preds = %bb.ff
  %lpad.loopexit.split-lp182.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit181.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp182.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #37
          to label %.body42.i.i.i.i.i.i unwind label %bb.em, !noalias !17390

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i: ; preds = %bb.eu
  %i.uk = load i128, ptr %.val.i.i13.i.i.i.i, align 1
  %i.ul = xor i128 43072362355690950656158319865334099790, %i.uk
  %i.um = getelementptr i8, ptr %.val.i.i13.i.i.i.i, i64 7
  %i.un = load i128, ptr %i.um, align 1
  %i.uo = xor i128 154763657356728356358779844745476251763, %i.un
  %i.up = or i128 %i.ul, %i.uo
  %i.uq = icmp ne i128 %i.up, 0
  %i.ur = zext i1 %i.uq to i32
  %i.us = icmp eq i32 %i.ur, 0
  br i1 %i.us, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.backedge.us.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i, %bb.fe, %bb.eu
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.fh unwind label %bb.fg, !noalias !17390

bb.fg:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i
  %i.ut = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !95, !alias.scope !17504, !noalias !17386, !noundef !17 ; 2 uses
  %i.uu = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.uu, label %.body42.i.i.i.i.i.i, label %.body42.sink.split.i.i.i.i.i.i

bb.fh:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread161.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !95, !alias.scope !17504, !noalias !17386, !noundef !17 ; 2 uses
  %i.uv = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.uv, label %bb.fm, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.qq, align 8, !alias.scope !17511, !noalias !17386, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !17512
  br label %bb.fm

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph, %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i, %bb.fe, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.fk unwind label %bb.fj, !noalias !17390

bb.fj:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i
  %i.uw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i63.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !95, !alias.scope !17515, !noalias !17386, !noundef !17 ; 2 uses
  %i.ux = icmp eq i64 %.val2.i.i63.i.i.i.i.i.i, 0
  br i1 %i.ux, label %.body42.i.i.i.i.i.i, label %.body42.sink.split.i.i.i.i.i.i

bb.fk:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i.i.i
  %.val.i.i66.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !95, !alias.scope !17515, !noalias !17386, !noundef !17 ; 2 uses
  %i.uy = icmp eq i64 %.val.i.i66.i.i.i.i.i.i, 0
  br i1 %i.uy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %.val1.i.i67.i.i.i.i.i.i = load ptr, ptr %i.qq, align 8, !alias.scope !17522, !noalias !17386, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i.i.i.i.i, i64 noundef %.val.i.i66.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !17523
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i.i.i.i

.body42.sink.split.i.i.i.i.i.i:                   ; preds = %bb.fj, %bb.fg
  %.val2.i.i.sink.i.i.i.i.i.i = phi i64 [ %.val2.i.i.i.i.i.i.i.i, %bb.fg ], [ %.val2.i.i63.i.i.i.i.i.i, %bb.fj ]
  %.pn26.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ut, %bb.fg ], [ %i.uw, %bb.fj ]
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.qq, align 8, !noalias !17386, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.sink.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !17390
  br label %.body42.i.i.i.i.i.i

.body42.i.i.i.i.i.i:                              ; preds = %.body42.sink.split.i.i.i.i.i.i, %bb.fj, %bb.fg, %.loopexit.split-lp.i.i.i.i.i.i, %bb.du
  %.pn26.i.i.i.i.i.i = phi { ptr, i32 } [ %i.op, %bb.du ], [ %lpad.phi.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ], [ %i.uw, %bb.fj ], [ %i.ut, %bb.fg ], [ %.pn26.ph.i.i.i.i.i.i, %.body42.sink.split.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17386
  br label %.body76.i.i.i.i.i.i

bb.fm:                                            ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17386
  %.sroa.0127.0.copyload.i.i.i.i.i.i = load i64, ptr %i.r, align 16, !noalias !17386
  %.sroa.5128.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !17386
  %.sroa.10.i.i.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i.i, align 16, !noalias !17386
  %.sroa.10.i.i.sroa.10.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.10.i.i.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.10.i.i.sroa.10.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i.i.i.i, align 8, !noalias !17386
  %.sroa.10.i.i.sroa.11.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.10.i.i.sroa.11.0.copyload.i.i.i.i = load ptr, ptr %.sroa.10.i.i.sroa.11.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i.i.i.i, align 16, !noalias !17386
  %.sroa.10.i.i.sroa.12.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.i.i.sroa.12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.i.i.sroa.12.0..sroa.4.0..sroa_idx4.i.i.sroa_idx.i.i.i.i, i64 40, i1 false), !noalias !17386
  %.sroa.7130.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx4.sroa_idx.i.i.i.i.i.i, align 16, !noalias !17386
  %.sroa.8131.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx4.sroa_idx.i.i.i.i.i.i, align 8, !noalias !17386
  br label %bb.fr

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17526
  store i64 0, ptr %i.f, align 8, !noalias !17526
  %.sroa.42.0..sroa_idx.i.i71.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i71.i.i.i.i.i.i, align 8, !noalias !17526
  %.sroa.53.0..sroa_idx.i.i72.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i72.i.i.i.i.i.i, align 8, !noalias !17526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17526
  %i.uz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1610612768, ptr %i.uz, align 8, !noalias !17526
  %.sroa.4.0..sroa_idx.i.i73.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i73.i.i.i.i.i.i, align 4, !noalias !17526
  %.sroa.5.0..sroa_idx.i.i74.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i74.i.i.i.i.i.i, align 2, !noalias !17526
  store ptr %i.f, ptr %i.e, align 8, !noalias !17526
  %i.va = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @436, ptr %i.va, align 8, !noalias !17526
  %i.vb = invoke noundef zeroext i1 @_RNvXs2_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.fo unwind label %bb.fn, !noalias !17533

bb.fn:                                            ; preds = %bb.fp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i.i.i.i
  %i.vc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #37
          to label %.body76.i.i.i.i.i.i unwind label %bb.fq, !noalias !17533

bb.fo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i.i.i.i
  br i1 %i.vb, label %bb.fp, label %bb.fs, !prof !7

bb.fp:                                            ; preds = %bb.fo
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @437, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @217, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439) #40
          to label %.noexc.i.i75.i.i.i.i.i.i unwind label %bb.fn, !noalias !17533

.noexc.i.i75.i.i.i.i.i.i:                         ; preds = %bb.fp
  unreachable

bb.fq:                                            ; preds = %bb.fn
  %i.vd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !17533
  unreachable

bb.fr:                                            ; preds = %bb.fs, %bb.fm
  %.sroa.10.i.i.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.10.i.i.sroa.0.0.copyload118.i.i.i.i, %bb.fs ], [ %.sroa.10.i.i.sroa.0.0.copyload.i.i.i.i, %bb.fm ]
  %.sroa.10.i.i.sroa.10.0.i.i.i.i = phi i64 [ %.sroa.10.i.i.sroa.10.0.copyload122.i.i.i.i, %bb.fs ], [ %.sroa.10.i.i.sroa.10.0.copyload.i.i.i.i, %bb.fm ]
  %.sroa.10.i.i.sroa.11.0.i.i.i.i = phi ptr [ undef, %bb.fs ], [ %.sroa.10.i.i.sroa.11.0.copyload.i.i.i.i, %bb.fm ]
  %.sroa.098.2175.i.i.i.i.i.i = phi i64 [ -9223372036854775735, %bb.fs ], [ %.sroa.0127.0.copyload.i.i.i.i.i.i, %bb.fm ]
  %.sroa.6.2173.i.i.i.i.i.i = phi ptr [ %.sroa.0117.0.copyload.i.i.i.i.i.i, %bb.fs ], [ %.sroa.5128.0.copyload.i.i.i.i.i.i, %bb.fm ]
  %.sroa.11105.2171.i.i.i.i.i.i = phi ptr [ undef, %bb.fs ], [ %.sroa.7130.0.copyload.i.i.i.i.i.i, %bb.fm ]
  %.sroa.12108.2169.i.i.i.i.i.i = phi ptr [ undef, %bb.fs ], [ %.sroa.8131.0.copyload.i.i.i.i.i.i, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17386
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit54.i.i.i.i.i.i

bb.fs:                                            ; preds = %bb.fo
  %.sroa.0117.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !17534
  %.sroa.10.i.i.sroa.0.0.copyload118.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i71.i.i.i.i.i.i, align 8, !noalias !17386
  %.sroa.10.i.i.sroa.10.0.copyload122.i.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i72.i.i.i.i.i.i, align 8, !noalias !17386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17526
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.r)
          to label %bb.fr unwind label %bb.fu, !noalias !17390

bb.ft:                                            ; preds = %.body76.i.i.i.i.i.i, %bb.fu
  %.pn30.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ve, %bb.fu ], [ %.pn28.ph.i.i.i.i.i.i, %.body76.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17386
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i

bb.fu:                                            ; preds = %bb.fs
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.body76.i.i.i.i.i.i:                              ; preds = %bb.fn, %.body42.i.i.i.i.i.i
  %.pn28.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn26.i.i.i.i.i.i, %.body42.i.i.i.i.i.i ], [ %i.vc, %bb.fn ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.r) #37
          to label %bb.ft unwind label %bb.em, !noalias !17390

bb.fv:                                            ; preds = %bb.fw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i
  %i.vf = phi ptr [ %i.mz, %bb.fw ], [ %i.qd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ]
  %i.vg = phi ptr [ %i.na, %bb.fw ], [ %i.qe, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ]
  %i.vh = phi ptr [ %i.nb, %bb.fw ], [ %i.qf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ]
  %i.vi = phi ptr [ %i.nc, %bb.fw ], [ %i.qg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ]
  %i.vj = phi ptr [ %i.nd, %bb.fw ], [ %i.qh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ]
  %i.vk = phi ptr [ %i.ne, %bb.fw ], [ %i.qi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ]
  %i.vl = phi ptr [ %i.nf, %bb.fw ], [ %i.qj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ]
  %i.vm = phi ptr [ %i.ng, %bb.fw ], [ %i.qk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ]
  %i.vn = phi ptr [ %i.nh, %bb.fw ], [ %i.ql, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ]
  %i.vo = phi ptr [ %i.ni, %bb.fw ], [ %i.qm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ]
  %.pn35.i.i.i.i.i.i = phi { ptr, i32 } [ %i.vp, %bb.fw ], [ %.pn32.pn.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i ]
  store i8 2, ptr %i.vn, align 8, !noalias !17386
  br label %.body27.i.i.i.i.i

bb.fw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit54.i.i.i.i.i.i
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv
end_hunk_0
