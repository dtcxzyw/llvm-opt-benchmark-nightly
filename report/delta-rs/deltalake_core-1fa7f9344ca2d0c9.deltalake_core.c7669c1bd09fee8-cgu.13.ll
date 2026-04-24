inline.NumInlined: 13443
inline.NumDeleted: 3890
begin_hunk_0_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB7_16DeltaScanBuilder5build0Bb_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !17873)
  %i.gh = load i64, ptr %i.ct, align 8, !range !13023, !alias.scope !17876, !noalias !17873, !noundef !4 ; 2 uses
  %.not.i317 = icmp eq i64 %i.gh, -9223372036854775788
  %i.gi = load i64, ptr %i.fz, align 8, !alias.scope !17878 ; 13 uses
  br i1 %.not.i317, label %bb.ay, label %bb.bi

bb.ay:                                            ; preds = %bb.ax
end_hunk_0
begin_hunk_1_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB7_16DeltaScanBuilder5build0Bb_:bb.a
  %.val284 = load ptr, ptr %i.ft, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.val285 = load i64, ptr %i.fh, align 8, !noundef !4 ; 2 uses
  %i.gj = and i64 %.val285, 1152921504606846968   ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.val284, i64 %i.gj ; 2 uses
  %.not.i.i1249 = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i1249, label %._crit_edge1252, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

end_hunk_1
begin_hunk_2_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB7_16DeltaScanBuilder5build0Bb_:bb.a

._crit_edge1252:                                  ; preds = %bb.az, %bb.ay
  %i.gn = shl i64 %.val285, 3
  %.idx1257 = and i64 %i.gn, 56                   ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx1257
  %.not.not.not.i.not.not.i.not.i1253 = icmp samesign eq i64 %.idx1257, 0
  br i1 %.not.not.not.i.not.not.i.not.i1253, label %._crit_edge1256, label %.lr.ph1255.a

bb.ba:                                            ; preds = %.lr.ph1255.a
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.not.i.a = icmp eq ptr %i.go, %3
  br i1 %.not.not.not.i.not.not.i.not.i.a, label %._crit_edge1256, label %.lr.ph1255.a

.lr.ph1255.a:                                     ; preds = %._crit_edge1252, %bb.ba
  %4 = phi ptr [ %i.go, %bb.ba ], [ %i.gk, %._crit_edge1252 ] ; 2 uses
  %.val3.i.i.i.a = load i64, ptr %4, align 8, !alias.scope !17879, !noalias !17884, !noundef !4
  %i.gp = icmp eq i64 %.val3.i.i.i.a, %i.gi
  br i1 %i.gp, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread.backedge, label %bb.ba

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ay, %bb.az
  %.sroa.0.05.i.i1251 = phi ptr [ %i.gl, %bb.az ], [ %.val284, %bb.ay ] ; 9 uses
end_hunk_2
begin_hunk_3_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB7_16DeltaScanBuilder5build0Bb_:bb.a
  %i.hl = or i1 %i.hi, %i.hk
  br i1 %i.hl, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread.backedge, label %bb.az

._crit_edge1256:                                  ; preds = %bb.ba, %._crit_edge1252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %.val267 = load ptr, ptr %i.fc, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.hm = getelementptr i8, ptr %.val267, i64 24
end_hunk_3
begin_hunk_4_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB7_16DeltaScanBuilder5build0Bb_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread.backedge

_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread.backedge: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph1255.a, %bb.bh
  br label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSj8containsCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.bi:                                            ; preds = %bb.ax
end_hunk_4
