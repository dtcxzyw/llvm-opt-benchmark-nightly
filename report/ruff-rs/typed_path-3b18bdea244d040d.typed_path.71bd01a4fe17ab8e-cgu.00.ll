inline.NumInlined: 130
inline.NumDeleted: 83
begin_hunk_0_@_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parserNtB4_6Parser3new:bb.a
bb.ba:                                            ; preds = %.loopexit.i.i.i
  %i.eg = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i12.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.0.i11.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1), !noalias !357
  br i1 %i.eg, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba, %.loopexit.i.i.i
  %i.eh = icmp eq i64 %.sroa.4.0.i11.i.i.i.i.i, 0
  br i1 %i.eh, label %bb.bc, label %bb.bd, !prof !58

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #12, !noalias !357
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.ei = add nsw i64 %.sroa.4.0.i11.i.i.i.i.i, -1
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i12.i.i.i.i.i, i64 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %i.ek = phi ptr [ %i.ej, %bb.bd ], [ %.sroa.02.0.i12.i.i.i.i.i, %bb.ba ] ; 4 uses
  %i.el = phi i64 [ %i.ei, %bb.bd ], [ %.sroa.4.0.i11.i.i.i.i.i, %bb.ba ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.el
  %i.en = icmp samesign eq i64 %i.el, 0
  br i1 %i.en, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i, label %.lr.ph.i.i.i.i134.i.i.i

.lr.ph.i.i.i.i134.i.i.i:                          ; preds = %bb.be, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i
  %i.eo = phi ptr [ %i.er, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i ], [ %i.ek, %bb.be ] ; 2 uses
  %i.ep = phi i64 [ %i.es, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i ], [ 0, %bb.be ] ; 6 uses
  %i.eq = load i8, ptr %i.eo, align 1, !alias.scope !369, !noalias !374, !noundef !10
  switch i8 %i.eq, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i [
    i8 92, label %.split.us.i131.i.i.i
    i8 47, label %.split.us.i131.i.i.i
  ]

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i: ; preds = %.lr.ph.i.i.i.i134.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 1 ; 2 uses
  %i.es = add nuw nsw i64 %i.ep, 1
  %i.et = icmp eq ptr %i.er, %i.em
  br i1 %i.et, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i, label %.lr.ph.i.i.i.i134.i.i.i

.split.us.i131.i.i.i:                             ; preds = %.lr.ph.i.i.i.i134.i.i.i, %.lr.ph.i.i.i.i134.i.i.i
  %i.eu = icmp eq i64 %i.ep, 0
  br i1 %i.eu, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i, label %bb.bf

bb.bf:                                            ; preds = %.split.us.i131.i.i.i
  %i.ev = icmp samesign ugt i64 %i.ep, %i.el
  br i1 %i.ev, label %bb.bg, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit136.i.i.i, !prof !58

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ep, i64 noundef range(i64 0, -9223372036854775808) %i.el, i64 noundef range(i64 0, -9223372036854775808) %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12, !noalias !383
  unreachable

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit136.i.i.i: ; preds = %bb.bf
  %i.ew = sub nuw nsw i64 %i.el, %i.ep
  br label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i.i: ; preds = %.split.us.i.i.i.i, %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.ex = icmp eq i64 %2, 0
  br i1 %i.ex, label %bb.bm, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i_crit_edge.i

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i_crit_edge.i: ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i.i
  %.pre.i = add nsw i64 %2, -1
  br label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i.i

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i.i: ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i_crit_edge.i, %bb.ax, %bb.au
  %.pre-phi.i.i = phi i64 [ %i.dm, %bb.au ], [ %.pre.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i_crit_edge.i ], [ 1, %bb.ax ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ez = load i8, ptr %1, align 1, !alias.scope !403, !noalias !404, !noundef !10 ; 5 uses
  %i.fa = zext i8 %i.ez to i32
  %i.fb = and i8 %i.ez, -33
  %i.fc = add i8 %i.fb, -65
  %or.cond13.i.i.i.i.i.i.i = icmp ult i8 %i.fc, 26
  br i1 %or.cond13.i.i.i.i.i.i.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i.i
  %i.fd = icmp ult i8 %i.ez, -86
  br i1 %i.fd, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fe = call noundef zeroext i1 @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef %i.fa), !noalias !408
  br i1 %i.fe, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i.i
  %i.ff = add i8 %i.ez, -97
  %i.fg = icmp ult i8 %i.ff, 26
  %i.fh = select i1 %i.fg, i8 32, i8 0
  %.sroa.011.0.i.i.i.i.i.i.i = xor i8 %i.fh, %i.ez
  %i.fi = icmp eq i64 %.pre-phi.i.i, 0
  br i1 %i.fi, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !409
  store i8 58, ptr %i.a, align 1, !noalias !409
  %i.fj = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ey, i64 noundef range(i64 0, -9223372036854775808) %.pre-phi.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !409
  br i1 %i.fj, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk.exit.i.i, label %bb.bm

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk.exit.i.i: ; preds = %bb.bk
  %i.fk = add nsw i64 %2, -2
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  store i8 %.sroa.011.0.i.i.i.i.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 1, !alias.scope !414, !noalias !415
  br label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread.i

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit136.i.i.i, %.split.us.i131.i.i.i, %bb.be
  %.sroa.040.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %.split.us.i131.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.be ], [ %i.ek, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit136.i.i.i ], [ %i.ek, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i ]
  %.sroa.3.0.i.i.i = phi i64 [ 0, %.split.us.i131.i.i.i ], [ 0, %bb.be ], [ %i.ep, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit136.i.i.i ], [ %i.el, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i ]
  %.sroa.5101.0.i.i.i = phi i64 [ %i.el, %.split.us.i131.i.i.i ], [ 0, %bb.be ], [ %i.ew, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit136.i.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i ]
  %.sroa.634.sroa.6.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.ds, ptr %.sroa.634.sroa.6.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !416, !noalias !417
  %.sroa.634.sroa.7.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sroa.44.0.i14.i.i.i.i.i, ptr %.sroa.634.sroa.7.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !416, !noalias !417
  %.sroa.634.sroa.8.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %.sroa.040.0.i.i.i, ptr %.sroa.634.sroa.8.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !416, !noalias !417
  %.sroa.634.sroa.9.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %.sroa.3.0.i.i.i, ptr %.sroa.634.sroa.9.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !416, !noalias !417
  br label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread.i

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread.i: ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk.exit.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser16prefix_device_ns.exit.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser15prefix_verbatim.exit.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser20prefix_verbatim_disk.exit.i.i.i, %._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread_crit_edge.i
  %.sroa.48.0.copyload.i = phi i64 [ %.sroa.5101.0.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i ], [ %i.fk, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk.exit.i.i ], [ %.sroa.4.0.i11.i.i.i.i6.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser16prefix_device_ns.exit.i.i.i ], [ %.sroa.7.0.i.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser15prefix_verbatim.exit.i.i.i ], [ %i.ah, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser20prefix_verbatim_disk.exit.i.i.i ], [ %.sroa.48.0.copyload.pre.i, %._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread_crit_edge.i ] ; 2 uses
  %i.fl = phi i8 [ 4, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i ], [ 5, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk.exit.i.i ], [ 3, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser16prefix_device_ns.exit.i.i.i ], [ 0, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser15prefix_verbatim.exit.i.i.i ], [ 2, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser20prefix_verbatim_disk.exit.i.i.i ], [ %i.l, %._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread_crit_edge.i ]
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.2.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6.0..sroa_idx.i, i64 39, i1 false), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !149
  %i.fm = sub i64 %2, %.sroa.48.0.copyload.i      ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.48.0.copyload.i, %2
  br i1 %.not.i, label %bb.bl, label %bb.bn, !prof !418

bb.bl:                                            ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread.i
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fm, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #12, !noalias !161
  unreachable

bb.bm:                                            ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i.i, %bb.bh, %bb.bi, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !149
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultTRShINtNtB4_6option6OptionNtNtNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components9component6prefix22WindowsPrefixComponentEEReE6unwrapB1j_.exit

bb.bn:                                            ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12.sroa.0, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.2.i, i64 39, i1 false)
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultTRShINtNtB4_6option6OptionNtNtNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components9component6prefix22WindowsPrefixComponentEEReE6unwrapB1j_.exit

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultTRShINtNtB4_6option6OptionNtNtNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components9component6prefix22WindowsPrefixComponentEEReE6unwrapB1j_.exit: ; preds = %bb.bm, %bb.bn
  %.sroa.14.024 = phi i64 [ undef, %bb.bm ], [ %i.fm, %bb.bn ]
  %.sroa.9.0 = phi i8 [ -1, %bb.bm ], [ %i.fl, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  %i.fn = xor i1 %i.j, true
  store ptr %1, ptr %0, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.9.0, ptr %i.fq, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12.sroa.0, i64 39, i1 false)
  %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx, align 8
  %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.14.024, ptr %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.fs = zext i1 %i.fn to i8
  store i8 %i.fs, ptr %i.fr, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parserNtB4_6Parser9next_back(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.518.i.i = alloca [55 x i8], align 1      ; 5 uses
  %.sroa.252.i = alloca [55 x i8], align 1        ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.23 = alloca [55 x i8], align 1           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !419, !noundef !10 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.g, align 8, !alias.scope !419 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.0.0.copyload.i, -1  ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !419 ; 6 uses
  %.sroa.02.0.i = select i1 %.not.i, i64 0, i64 %.sroa.6.0.copyload.i ; 4 uses
  %i.h = icmp ugt i64 %.sroa.02.0.i, %i.f
  br i1 %i.h, label %bb.b, label %_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parserNtB4_6Parser24remaining_without_prefix.exit, !prof !58

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.02.0.i, i64 noundef %i.f, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #12, !noalias !419
  unreachable

_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parserNtB4_6Parser24remaining_without_prefix.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !alias.scope !419, !nonnull !10, !noundef !10 ; 3 uses
  %i.j = sub nuw i64 %i.f, %.sroa.02.0.i          ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.02.0.i ; 5 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.l = icmp eq i64 %i.j, 0                      ; 2 uses
  br i1 %.not.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parserNtB4_6Parser24remaining_without_prefix.exit
  br i1 %i.l, label %bb.an, label %bb.d

.thread:                                          ; preds = %_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parserNtB4_6Parser24remaining_without_prefix.exit
  br i1 %i.l, label %bb.am, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.sroa.012.038 = phi i64 [ %.sroa.6.0.copyload.i, %.thread ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i8, ptr %i.m, align 8, !range !108, !noundef !10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.p = load i8, ptr %i.o, align 1, !range !108, !noundef !10 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.252.i)
  %i.q = trunc nuw i8 %i.p to i1                  ; 5 uses
  br i1 %i.q, label %.split.us48.us.i.i, label %.split.us.i.i

.split.us48.us.i.i:                               ; preds = %bb.d, %.split.us48.us.i.i.backedge
  %.sroa.0.033.us.us.i.i = phi ptr [ %i.ab, %.split.us48.us.i.i.backedge ], [ %i.k, %bb.d ] ; 4 uses
  %.sroa.8.032.us.us.i.i = phi i64 [ %i.ac, %.split.us48.us.i.i.backedge ], [ %i.j, %bb.d ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i.i, i64 %.sroa.8.032.us.us.i.i
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i, %.split.us48.us.i.i
  %.sroa.2.018.i.i.i.us44.us.i.i = phi i64 [ %.sroa.8.032.us.us.i.i, %.split.us48.us.i.i ], [ %i.u, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i ] ; 5 uses
  %i.s = phi ptr [ %i.r, %.split.us48.us.i.i ], [ %i.t, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i ]
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 3 uses
  %i.u = add nsw i64 %.sroa.2.018.i.i.i.us44.us.i.i, -1 ; 3 uses
  %i.v = load i8, ptr %i.t, align 1, !alias.scope !428, !noalias !433, !noundef !10
  switch i8 %i.v, label %.split27.us.us.i.i [
    i8 92, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i
    i8 47, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i
  ]

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i: ; preds = %bb.e, %bb.e
  %i.w = icmp eq ptr %.sroa.0.033.us.us.i.i, %i.t
  br i1 %i.w, label %.loopexit.split.us47.us.i.i, label %bb.e

.split27.us.us.i.i:                               ; preds = %bb.e
  %i.x = icmp eq i64 %.sroa.2.018.i.i.i.us44.us.i.i, %.sroa.8.032.us.us.i.i
  br i1 %i.x, label %.loopexit.split.us47.us.i.i, label %bb.f

bb.f:                                             ; preds = %.split27.us.us.i.i
  %i.y = icmp ult i64 %i.u, %.sroa.8.032.us.us.i.i
  br i1 %i.y, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i, label %.split50.us.i.i, !prof !446

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i: ; preds = %bb.f
  %i.z = icmp ugt i64 %.sroa.2.018.i.i.i.us44.us.i.i, %.sroa.8.032.us.us.i.i
  br i1 %i.z, label %.split54.us.i.i, label %.loopexit.split.us47.us.i.i, !prof !58

.loopexit.split.us47.us.i.i:                      ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i, %.split27.us.us.i.i
  %.sroa.04.0.i.us.us.i.i = phi ptr [ %.sroa.0.033.us.us.i.i, %.split27.us.us.i.i ], [ %.sroa.0.033.us.us.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i ] ; 3 uses
  %.sroa.45.0.i.us.us.i.i = phi i64 [ %.sroa.8.032.us.us.i.i, %.split27.us.us.i.i ], [ %.sroa.2.018.i.i.i.us44.us.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i ], [ 0, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i ] ; 3 uses
  %i.aa = tail call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core5sliceSh12strip_suffixBu_ECs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.us.us.i.i, i64 noundef %.sroa.45.0.i.us.us.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 1), !noalias !447 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 4 uses
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1      ; 3 uses
  %.not.us.us.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.us.us.i.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.split.us47.us.i.i
  %cond.i.i = icmp eq i64 %i.ac, 0
  br i1 %cond.i.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !noalias !447, !noundef !10
  switch i8 %i.af, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i [
    i8 92, label %.split.us48.us.i.i.backedge
    i8 47, label %.split.us48.us.i.i.backedge
  ]

.split.us48.us.i.i.backedge:                      ; preds = %bb.h, %bb.h
  br label %.split.us48.us.i.i

.split.us.i.i:                                    ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  br label %bb.i

bb.i:                                             ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i, %.split.us.i.i
  %.sroa.2.018.i.i.i.us.i.i = phi i64 [ %i.j, %.split.us.i.i ], [ %i.aj, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i ] ; 5 uses
  %i.ah = phi ptr [ %i.ag, %.split.us.i.i ], [ %i.ai, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1 ; 3 uses
  %i.aj = add nsw i64 %.sroa.2.018.i.i.i.us.i.i, -1 ; 3 uses
  %i.ak = load i8, ptr %i.ai, align 1, !alias.scope !448, !noalias !433, !noundef !10
  %i.al = icmp eq i8 %i.ak, 92
  br i1 %i.al, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i, label %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i

_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i: ; preds = %bb.i
  %i.am = icmp eq i64 %.sroa.2.018.i.i.i.us.i.i, %i.j
  br i1 %i.am, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i, label %bb.j

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i: ; preds = %bb.i
  %i.an = icmp eq ptr %i.k, %i.ai
  br i1 %i.an, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i, label %bb.i

bb.j:                                             ; preds = %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i
  %i.ao = icmp ult i64 %i.aj, %i.j
  br i1 %i.ao, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i, label %.split50.us.i.i, !prof !446

.split50.us.i.i:                                  ; preds = %bb.f, %bb.j
  %.us-phi51.i.i = phi i64 [ %i.j, %bb.j ], [ %.sroa.8.032.us.us.i.i, %bb.f ]
  %.us-phi52.i.i = phi i64 [ %i.aj, %bb.j ], [ %i.u, %bb.f ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.us-phi52.i.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi51.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #12, !noalias !450
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i: ; preds = %bb.j
  %2 = icmp ugt i64 %.sroa.2.018.i.i.i.us.i.i, %i.j
  br i1 %2, label %.split54.us.i.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i, !prof !58

.split54.us.i.i:                                  ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i
  %.us-phi55.i.i = phi i64 [ %i.j, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i ], [ %.sroa.8.032.us.us.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i ] ; 2 uses
  %.us-phi56.i.i = phi i64 [ %.sroa.2.018.i.i.i.us.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i ], [ %.sroa.2.018.i.i.i.us44.us.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.us-phi56.i.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi55.i.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi55.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #12, !noalias !454
  unreachable

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i: ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i, %bb.h, %bb.g, %.loopexit.split.us47.us.i.i
  %.sroa.8.1.i.i = phi i64 [ %.sroa.45.0.i.us.us.i.i, %bb.h ], [ %.sroa.45.0.i.us.us.i.i, %.loopexit.split.us47.us.i.i ], [ 0, %bb.g ], [ 0, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi ptr [ %.sroa.04.0.i.us.us.i.i, %bb.h ], [ %.sroa.04.0.i.us.us.i.i, %.loopexit.split.us47.us.i.i ], [ %i.ab, %bb.g ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i ]
  %i.ap = icmp eq i8 %i.n, 0
  %i.aq = icmp eq i64 %.sroa.8.1.i.i, 0
  %or.cond.i = and i1 %i.ap, %i.aq
  br i1 %or.cond.i, label %bb.k, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i

bb.k:                                             ; preds = %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !455
  call fastcc void @_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11parse_front0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d, i8 %i.p, i8 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 1, -9223372036854775808) %i.j), !noalias !456
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.as = load i8, ptr %i.ar, align 8, !range !9, !noalias !455, !noundef !10 ; 2 uses
  %i.at = icmp eq i8 %i.as, -1
  br i1 %i.at, label %bb.l, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread47

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.d, align 8, !noalias !455, !nonnull !10, !noundef !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noalias !455, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !455
  br label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread47: ; preds = %bb.k
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.23, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.635.0..sroa_idx.i, i64 55, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !455
  br label %bb.ar

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i: ; preds = %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i
  %.sroa.0.1.i123.i = phi ptr [ %.sroa.0.1.i.i, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i ], [ %i.k, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i ], [ %i.k, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i ] ; 5 uses
  %.sroa.8.1.i122.i = phi i64 [ %.sroa.8.1.i.i, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i ], [ %.sroa.2.018.i.i.i.us.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i ], [ %i.j, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %cond = icmp eq i64 %.sroa.8.1.i122.i, 0
  br i1 %cond, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i123.i, i64 %.sroa.8.1.i122.i
  br label %bb.m

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = icmp eq ptr %.sroa.0.1.i123.i, %i.ba
  br i1 %i.ay, label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.thread138.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i230 = phi i64 [ %.sroa.8.1.i122.i, %.lr.ph ], [ %i.bb, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i ] ; 7 uses
  %i.az = phi ptr [ %i.ax, %.lr.ph ], [ %i.ba, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i ]
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -1 ; 3 uses
  %i.bb = add nsw i64 %.sroa.2.0.i.i.i.i.i230, -1 ; 3 uses
  %i.bc = load i8, ptr %i.ba, align 1, !alias.scope !463, !noalias !468, !noundef !10 ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 92
  %i.be = icmp eq i8 %i.bc, 47
  %spec.select.i.i.i.i.i.i.i.i.i = and i1 %i.be, %i.q
  %or.cond156.i = or i1 %i.bd, %spec.select.i.i.i.i.i.i.i.i.i
  br i1 %or.cond156.i, label %bb.n, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp eq i64 %.sroa.2.0.i.i.i.i.i230, %.sroa.8.1.i122.i
  br i1 %i.bf, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp ult i64 %i.bb, %.sroa.8.1.i122.i
  br i1 %i.bg, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i62.i, label %3, !prof !446

3:                                                ; preds = %bb.o
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bb, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.1.i122.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #12, !noalias !477
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i62.i: ; preds = %bb.o
  %4 = icmp ugt i64 %.sroa.2.0.i.i.i.i.i230, %.sroa.8.1.i122.i
  br i1 %4, label %bb.p, label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i, !prof !58

bb.p:                                             ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i62.i
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.2.0.i.i.i.i.i230, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.1.i122.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.1.i122.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #12, !noalias !481
  unreachable

_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i: ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i62.i
  %i.bh = sub nuw nsw i64 %.sroa.8.1.i122.i, %.sroa.2.0.i.i.i.i.i230
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i123.i, i64 %.sroa.2.0.i.i.i.i.i230
  br label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.thread138.i

_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.thread138.i: ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i
  %.in.i = phi ptr [ %i.bi, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i ], [ %.sroa.0.1.i123.i, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i ]
  %.sroa.04.0.i.i134145.i = phi ptr [ %.sroa.0.1.i123.i, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i ] ; 8 uses
  %.sroa.45.0.i.i135144.i = phi i64 [ %.sroa.2.0.i.i.i.i.i230, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i ], [ 0, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i ] ; 21 uses
  %.sroa.47.0.i.i137143.i = phi i64 [ %i.bh, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i ], [ %.sroa.8.1.i122.i, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !455
  %i.bj = insertelement <4 x i8> poison, i8 %i.p, i64 0
  %i.bk = shufflevector <4 x i8> %i.bj, <4 x i8> poison, <4 x i32> zeroinitializer
  store <4 x i8> %i.bk, ptr %i.c, align 4, !noalias !455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !482
  call fastcc void @_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8filename0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.in.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.47.0.i.i137143.i), !noalias !487
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bm = load i8, ptr %i.bl, align 8, !range !9, !noalias !482, !noundef !10 ; 3 uses
  %i.bn = icmp eq i8 %i.bm, -1
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.thread138.i
  %i.bo = load ptr, ptr %i.a, align 8, !noalias !482, !nonnull !10, !noundef !10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !482, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !482
  br label %bb.t

bb.r:                                             ; preds = %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.thread138.i
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.414.0.copyload.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !482
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.518.i.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.6.0..sroa_idx.i.i, i64 55, i1 false), !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !482
  %i.br = icmp eq i64 %.sroa.414.0.copyload.i.i, 0
  br i1 %i.br, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.sroa.0101.0.ph.i = phi ptr [ @1, %bb.s ], [ %i.bo, %bb.q ]
  %.sroa.7.0.ph.i = phi i64 [ 9, %bb.s ], [ %i.bq, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !455
  br label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread

bb.u:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.252.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.518.i.i, i64 55, i1 false), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !455
  %i.bs = trunc nuw i8 %i.n to i1
  br i1 %i.bs, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.al, %bb.u
  %i.bt = icmp eq i64 %.sroa.45.0.i.i135144.i, 0
  br i1 %i.bt, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread53, label %.lr.ph.i.i

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread53: ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.23, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.252.i, i64 55, i1 false)
  br label %bb.ar

.lr.ph.i.i:                                       ; preds = %bb.v
  br i1 %i.q, label %.split.us48.us.i78.i, label %.split.us.i65.i

.split.us48.us.i78.i:                             ; preds = %.lr.ph.i.i, %.split.us48.us.i78.i.backedge
  %.sroa.0.033.us.us.i79.i = phi ptr [ %i.ce, %.split.us48.us.i78.i.backedge ], [ %.sroa.04.0.i.i134145.i, %.lr.ph.i.i ] ; 4 uses
  %.sroa.8.032.us.us.i80.i = phi i64 [ %i.cf, %.split.us48.us.i78.i.backedge ], [ %.sroa.45.0.i.i135144.i, %.lr.ph.i.i ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i79.i, i64 %.sroa.8.032.us.us.i80.i
  br label %bb.w

bb.w:                                             ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i82.i, %.split.us48.us.i78.i
  %.sroa.2.018.i.i.i.us44.us.i81.i = phi i64 [ %.sroa.8.032.us.us.i80.i, %.split.us48.us.i78.i ], [ %i.bx, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i82.i ] ; 5 uses
  %i.bv = phi ptr [ %i.bu, %.split.us48.us.i78.i ], [ %i.bw, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i82.i ]
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -1 ; 3 uses
  %i.bx = add nsw i64 %.sroa.2.018.i.i.i.us44.us.i81.i, -1 ; 3 uses
  %i.by = load i8, ptr %i.bw, align 1, !alias.scope !491, !noalias !496, !noundef !10
  switch i8 %i.by, label %.split27.us.us.i88.i [
    i8 92, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i82.i
    i8 47, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i82.i
  ]

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i82.i: ; preds = %bb.w, %bb.w
  %i.bz = icmp eq ptr %.sroa.0.033.us.us.i79.i, %i.bw
  br i1 %i.bz, label %.loopexit.split.us47.us.i83.i, label %bb.w

.split27.us.us.i88.i:                             ; preds = %bb.w
  %i.ca = icmp eq i64 %.sroa.2.018.i.i.i.us44.us.i81.i, %.sroa.8.032.us.us.i80.i
  br i1 %i.ca, label %.loopexit.split.us47.us.i83.i, label %bb.x

bb.x:                                             ; preds = %.split27.us.us.i88.i
  %i.cb = icmp ult i64 %i.bx, %.sroa.8.032.us.us.i80.i
  br i1 %i.cb, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i, label %.split50.us.i68.i, !prof !446

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i: ; preds = %bb.x
  %i.cc = icmp ugt i64 %.sroa.2.018.i.i.i.us44.us.i81.i, %.sroa.8.032.us.us.i80.i
  br i1 %i.cc, label %.split54.us.i74.i, label %.loopexit.split.us47.us.i83.i, !prof !58

.loopexit.split.us47.us.i83.i:                    ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i82.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i, %.split27.us.us.i88.i
  %.sroa.04.0.i.us.us.i84.i = phi ptr [ %.sroa.0.033.us.us.i79.i, %.split27.us.us.i88.i ], [ %.sroa.0.033.us.us.i79.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i82.i ]
  %.sroa.45.0.i.us.us.i85.i = phi i64 [ %.sroa.8.032.us.us.i80.i, %.split27.us.us.i88.i ], [ %.sroa.2.018.i.i.i.us44.us.i81.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i ], [ 0, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i82.i ] ; 3 uses
  %i.cd = tail call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core5sliceSh12strip_suffixBu_ECs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.us.us.i84.i, i64 noundef %.sroa.45.0.i.us.us.i85.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 1), !noalias !507 ; 2 uses
  %i.ce = extractvalue { ptr, i64 } %i.cd, 0      ; 3 uses
  %i.cf = extractvalue { ptr, i64 } %i.cd, 1      ; 3 uses
  %.not.us.us.i86.i = icmp eq ptr %i.ce, null
  br i1 %.not.us.us.i86.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, label %bb.y

bb.y:                                             ; preds = %.loopexit.split.us47.us.i83.i
  %cond.i87.i = icmp eq i64 %i.cf, 0
  br i1 %cond.i87.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr i8, ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !507, !noundef !10
  switch i8 %i.ci, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit [
    i8 92, label %.split.us48.us.i78.i.backedge
    i8 47, label %.split.us48.us.i78.i.backedge
  ]

.split.us48.us.i78.i.backedge:                    ; preds = %bb.z, %bb.z
  br label %.split.us48.us.i78.i

.split.us.i65.i:                                  ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i134145.i, i64 %.sroa.45.0.i.i135144.i
  br label %bb.aa

bb.aa:                                            ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i, %.split.us.i65.i
  %.sroa.2.018.i.i.i.us.i66.i = phi i64 [ %.sroa.45.0.i.i135144.i, %.split.us.i65.i ], [ %i.cm, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i ] ; 5 uses
  %i.ck = phi ptr [ %i.cj, %.split.us.i65.i ], [ %i.cl, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i ]
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -1 ; 3 uses
  %i.cm = add nsw i64 %.sroa.2.018.i.i.i.us.i66.i, -1 ; 3 uses
  %i.cn = load i8, ptr %i.cl, align 1, !alias.scope !508, !noalias !496, !noundef !10
  %i.co = icmp eq i8 %i.cn, 92
  br i1 %i.co, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i, label %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i67.i

_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i67.i: ; preds = %bb.aa
  %i.cp = icmp eq i64 %.sroa.2.018.i.i.i.us.i66.i, %.sroa.45.0.i.i135144.i
  br i1 %i.cp, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, label %bb.ab

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i: ; preds = %bb.aa
  %i.cq = icmp eq ptr %.sroa.04.0.i.i134145.i, %i.cl
  br i1 %i.cq, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, label %bb.aa

bb.ab:                                            ; preds = %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i67.i
  %i.cr = icmp ult i64 %i.cm, %.sroa.45.0.i.i135144.i
  br i1 %i.cr, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i, label %.split50.us.i68.i, !prof !446

.split50.us.i68.i:                                ; preds = %bb.x, %bb.ab
  %.us-phi51.i69.i = phi i64 [ %.sroa.45.0.i.i135144.i, %bb.ab ], [ %.sroa.8.032.us.us.i80.i, %bb.x ]
  %.us-phi52.i70.i = phi i64 [ %i.cm, %bb.ab ], [ %i.bx, %bb.x ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.us-phi52.i70.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi51.i69.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #12, !noalias !510
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i: ; preds = %bb.ab
  %i.cs = icmp ugt i64 %.sroa.2.018.i.i.i.us.i66.i, %.sroa.45.0.i.i135144.i
  br i1 %i.cs, label %.split54.us.i74.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, !prof !58

.split54.us.i74.i:                                ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i
  %.us-phi55.i75.i = phi i64 [ %.sroa.45.0.i.i135144.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i ], [ %.sroa.8.032.us.us.i80.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i ] ; 2 uses
  %.us-phi56.i76.i = phi i64 [ %.sroa.2.018.i.i.i.us.i66.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i ], [ %.sroa.2.018.i.i.i.us44.us.i81.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.us-phi56.i76.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi55.i75.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi55.i75.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #12, !noalias !514
  unreachable

bb.ac:                                            ; preds = %bb.u
  %.not158.i = icmp eq i64 %.sroa.45.0.i.i135144.i, 0
  br i1 %.not158.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = load i8, ptr %.sroa.04.0.i.i134145.i, align 1, !alias.scope !515, !noalias !518, !noundef !10 ; 2 uses
  %i.cu = icmp eq i8 %i.ct, 92
  %i.cv = icmp eq i8 %i.ct, 47
  %or.cond.i.i = and i1 %i.cv, %i.q
  %or.cond1.i.i = or i1 %i.cu, %or.cond.i.i
  br i1 %or.cond1.i.i, label %.lr.ph.i.i.i, label %.thread.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !455
  store ptr @7, ptr %i.b, align 8, !alias.scope !520, !noalias !523
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 11, ptr %i.cw, align 8, !alias.scope !520, !noalias !523
  br label %bb.al

.thread.i:                                        ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !455
  call fastcc void @_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.b, i8 %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.i134145.i, i64 noundef %.sroa.45.0.i.i135144.i), !noalias !456
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cy = load i8, ptr %i.cx, align 8, !range !9, !noalias !455, !noundef !10
  %.not55154.i = icmp eq i8 %i.cy, -1
  br i1 %.not55154.i, label %bb.al, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_.exit.thread155.i

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_.exit.thread155.i: ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !455
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_.exit.thread155.i, %bb.ad
  br i1 %i.q, label %.split.us48.us.i.i.i, label %.split.us.i.i.i

.split.us48.us.i.i.i:                             ; preds = %.lr.ph.i.i.i, %.split.us48.us.i.i.i.backedge
  %.sroa.0.033.us.us.i.i.i = phi ptr [ %i.dj, %.split.us48.us.i.i.i.backedge ], [ %.sroa.04.0.i.i134145.i, %.lr.ph.i.i.i ] ; 4 uses
  %.sroa.8.032.us.us.i.i.i = phi i64 [ %i.dk, %.split.us48.us.i.i.i.backedge ], [ %.sroa.45.0.i.i135144.i, %.lr.ph.i.i.i ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i.i.i, i64 %.sroa.8.032.us.us.i.i.i
  br label %bb.af

bb.af:                                            ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i.i, %.split.us48.us.i.i.i
  %.sroa.2.018.i.i.i.us44.us.i.i.i = phi i64 [ %.sroa.8.032.us.us.i.i.i, %.split.us48.us.i.i.i ], [ %i.dc, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i.i ] ; 5 uses
  %i.da = phi ptr [ %i.cz, %.split.us48.us.i.i.i ], [ %i.db, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i.i ]
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -1 ; 3 uses
  %i.dc = add nsw i64 %.sroa.2.018.i.i.i.us44.us.i.i.i, -1 ; 3 uses
  %i.dd = load i8, ptr %i.db, align 1, !alias.scope !528, !noalias !533, !noundef !10
  switch i8 %i.dd, label %.split27.us.us.i.i.i [
    i8 92, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i.i
    i8 47, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i.i: ; preds = %bb.af, %bb.af
  %i.de = icmp eq ptr %.sroa.0.033.us.us.i.i.i, %i.db
  br i1 %i.de, label %.loopexit.split.us47.us.i.i.i, label %bb.af

.split27.us.us.i.i.i:                             ; preds = %bb.af
  %i.df = icmp eq i64 %.sroa.2.018.i.i.i.us44.us.i.i.i, %.sroa.8.032.us.us.i.i.i
  br i1 %i.df, label %.loopexit.split.us47.us.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.split27.us.us.i.i.i
  %i.dg = icmp ult i64 %i.dc, %.sroa.8.032.us.us.i.i.i
  br i1 %i.dg, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i, label %.split50.us.i.i.i, !prof !446

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i: ; preds = %bb.ag
  %i.dh = icmp ugt i64 %.sroa.2.018.i.i.i.us44.us.i.i.i, %.sroa.8.032.us.us.i.i.i
  br i1 %i.dh, label %.split54.us.i.i.i, label %.loopexit.split.us47.us.i.i.i, !prof !58

.loopexit.split.us47.us.i.i.i:                    ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i, %.split27.us.us.i.i.i
  %.sroa.04.0.i.us.us.i.i.i = phi ptr [ %.sroa.0.033.us.us.i.i.i, %.split27.us.us.i.i.i ], [ %.sroa.0.033.us.us.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i.i ]
  %.sroa.45.0.i.us.us.i.i.i = phi i64 [ %.sroa.8.032.us.us.i.i.i, %.split27.us.us.i.i.i ], [ %.sroa.2.018.i.i.i.us44.us.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i ], [ 0, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us46.us.i.i.i ] ; 3 uses
  %i.di = tail call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core5sliceSh12strip_suffixBu_ECs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.us.us.i.i.i, i64 noundef %.sroa.45.0.i.us.us.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 1), !noalias !546 ; 2 uses
  %i.dj = extractvalue { ptr, i64 } %i.di, 0      ; 3 uses
  %i.dk = extractvalue { ptr, i64 } %i.di, 1      ; 3 uses
  %.not.us.us.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.us.us.i.i.i, label %.loopexit.i, label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split.us47.us.i.i.i
  %cond.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %cond.i.i.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = getelementptr i8, ptr %i.dj, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 -1
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !546, !noundef !10
  switch i8 %i.dn, label %.loopexit.i [
    i8 92, label %.split.us48.us.i.i.i.backedge
    i8 47, label %.split.us48.us.i.i.i.backedge
  ]

.split.us48.us.i.i.i.backedge:                    ; preds = %bb.ai, %bb.ai
  br label %.split.us48.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i134145.i, i64 %.sroa.45.0.i.i135144.i
  br label %bb.aj

bb.aj:                                            ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i, %.split.us.i.i.i
  %.sroa.2.018.i.i.i.us.i.i.i = phi i64 [ %.sroa.45.0.i.i135144.i, %.split.us.i.i.i ], [ %i.dr, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i ] ; 5 uses
  %i.dp = phi ptr [ %i.do, %.split.us.i.i.i ], [ %i.dq, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i ]
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -1 ; 3 uses
  %i.dr = add nsw i64 %.sroa.2.018.i.i.i.us.i.i.i, -1 ; 3 uses
  %i.ds = load i8, ptr %i.dq, align 1, !alias.scope !547, !noalias !533, !noundef !10
  %i.dt = icmp eq i8 %i.ds, 92
  br i1 %i.dt, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i, label %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i.i

_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i.i: ; preds = %bb.aj
  %i.du = icmp eq i64 %.sroa.2.018.i.i.i.us.i.i.i, %.sroa.45.0.i.i135144.i
  br i1 %i.du, label %.loopexit.i, label %bb.ak

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i: ; preds = %bb.aj
  %i.dv = icmp eq ptr %.sroa.04.0.i.i134145.i, %i.dq
  br i1 %i.dv, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, label %bb.aj

bb.ak:                                            ; preds = %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i.i
  %i.dw = icmp ult i64 %i.dr, %.sroa.45.0.i.i135144.i
  br i1 %i.dw, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i.i, label %.split50.us.i.i.i, !prof !446

.split50.us.i.i.i:                                ; preds = %bb.ag, %bb.ak
  %.us-phi51.i.i.i = phi i64 [ %.sroa.45.0.i.i135144.i, %bb.ak ], [ %.sroa.8.032.us.us.i.i.i, %bb.ag ]
  %.us-phi52.i.i.i = phi i64 [ %i.dr, %bb.ak ], [ %i.dc, %bb.ag ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.us-phi52.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi51.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #12, !noalias !550
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i.i: ; preds = %bb.ak
  %5 = icmp ugt i64 %.sroa.2.018.i.i.i.us.i.i.i, %.sroa.45.0.i.i135144.i
  br i1 %5, label %.split54.us.i.i.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, !prof !58

.split54.us.i.i.i:                                ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i.i
  %.us-phi55.i.i.i = phi i64 [ %.sroa.45.0.i.i135144.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i.i ], [ %.sroa.8.032.us.us.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i ] ; 2 uses
  %.us-phi56.i.i.i = phi i64 [ %.sroa.2.018.i.i.i.us.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i.i ], [ %.sroa.2.018.i.i.i.us44.us.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.us-phi56.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi55.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi55.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #12, !noalias !554
  unreachable

bb.al:                                            ; preds = %bb.ae, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !455
  br label %bb.v

.loopexit.i:                                      ; preds = %bb.ai, %.loopexit.split.us47.us.i.i.i, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i.i
  %.sroa.8.1.i.i.i = phi i64 [ %.sroa.45.0.i.i135144.i, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i.i ], [ %.sroa.45.0.i.us.us.i.i.i, %.loopexit.split.us47.us.i.i.i ], [ %.sroa.45.0.i.us.us.i.i.i, %bb.ai ]
  %.sroa.8.1.i.i.fr.i = freeze i64 %.sroa.8.1.i.i.i
  %.sroa.8.1.i.i.mux267.i = tail call i64 @llvm.umax.i64(i64 %.sroa.8.1.i.i.fr.i, i64 1)
  br label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread: ; preds = %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i, %bb.l, %bb.t, %bb.n
  %.sroa.9.0.ph = phi i64 [ 22, %bb.n ], [ 22, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i ], [ %.sroa.7.0.ph.i, %bb.t ], [ %i.aw, %bb.l ]
  %.sroa.0.0.ph = phi ptr [ @5, %bb.n ], [ @5, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i ], [ %.sroa.0101.0.ph.i, %bb.t ], [ %i.au, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.252.i)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.ph, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0.ph, ptr %i.dy, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.au

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i, %bb.ah, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i, %.loopexit.split.us47.us.i83.i, %bb.y, %bb.z, %.loopexit.i, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i67.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i.i
  %.sroa.454.0.i = phi i64 [ %.sroa.45.0.i.us.us.i85.i, %bb.z ], [ %.sroa.2.018.i.i.i.us.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i.i ], [ 0, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i ], [ %.sroa.2.018.i.i.i.us.i66.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i ], [ %.sroa.45.0.i.i135144.i, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i67.i ], [ %.sroa.8.1.i.i.mux267.i, %.loopexit.i ], [ 1, %bb.ah ], [ %.sroa.45.0.i.us.us.i85.i, %.loopexit.split.us47.us.i83.i ], [ 0, %bb.y ], [ 1, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.23, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.252.i, i64 55, i1 false)
  br label %bb.ar

bb.am:                                            ; preds = %.thread
  store i8 -1, ptr %i.g, align 8
  %i.dz = icmp ugt i64 %.sroa.6.0.copyload.i, %i.f
  br i1 %i.dz, label %bb.ap, label %bb.ao, !prof !58

bb.an:                                            ; preds = %bb.c
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @16, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 11, ptr %i.eb, align 8
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.ec = sub nuw i64 %i.f, %.sroa.6.0.copyload.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.6.0.copyload.i
  store ptr %i.ed, ptr %1, align 8
  store i64 %i.ec, ptr %i.e, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.510.0..sroa_idx, i64 55, i1 false)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.6.0.copyload.i, i64 noundef %i.f, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #12
  unreachable

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %storemerge = phi i8 [ %.sroa.0.0.copyload.i, %bb.ao ], [ -1, %bb.an ]
  store i8 %storemerge, ptr %0, align 8
  br label %bb.au

bb.ar:                                            ; preds = %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread53, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread47
  %.sroa.9.052 = phi i64 [ 0, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread47 ], [ %.sroa.454.0.i, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit ], [ 0, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread53 ]
  %.sroa.16.051 = phi i8 [ %i.as, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread47 ], [ %i.bm, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit ], [ %i.bm, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.252.i)
  %i.ee = add i64 %.sroa.9.052, %.sroa.012.038    ; 3 uses
  %.not28 = icmp ugt i64 %i.ee, %i.f
  br i1 %.not28, label %bb.at, label %bb.as, !prof !418

bb.as:                                            ; preds = %bb.ar
  store i64 %i.ee, ptr %i.e, align 8
  store i8 %.sroa.16.051, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.23, i64 55, i1 false)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ee, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #12
  unreachable

bb.au:                                            ; preds = %bb.aq, %bb.as, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser19prefix_verbatim_unc(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 4) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8verbatim(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.c = load i64, ptr %i.a, align 8, !range !13, !noundef !10
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.j, align 8
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult i64 %i.h, 3
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 3), !noalias !555
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.14.0.ph = phi i64 [ 11, %bb.e ], [ 11, %bb.c ], [ 16, %bb.d ]
  %.sroa.8.0.ph = phi ptr [ @9, %bb.e ], [ @7, %bb.c ], [ @10, %bb.d ]
  store ptr %.sroa.8.0.ph, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.14.0.ph, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.o, align 8
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 3 ; 2 uses
  %i.q = add nsw i64 %i.h, -3                     ; 3 uses
  %i.r = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef range(i64 0, -9223372036854775808) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1), !noalias !558
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.b, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef range(i64 0, -9223372036854775808) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1), !noalias !558
  br i1 %i.s, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.k, label %bb.m, !prof !58

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #12, !noalias !558
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.h
  store ptr @19, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 15, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.v, align 8
  br label %bb.x

bb.m:                                             ; preds = %bb.j
  %i.w = add nsw i64 %i.h, -4                     ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.y = getelementptr i8, ptr %i.f, i64 %i.h     ; 2 uses
  %i.z = icmp samesign eq i64 %i.w, 0
  br i1 %i.z, label %bb.p, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.m
  br i1 %i.b, label %.lr.ph.i.i.i.us.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.us.i:                                ; preds = %.lr.ph.i.i.i.preheader.i, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i
  %i.aa = phi ptr [ %i.ae, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i ], [ %i.x, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %i.ab = phi i64 [ %i.af, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1, !alias.scope !570, !noalias !575, !noundef !10
  %i.ad = icmp eq i8 %i.ac, 92
  br i1 %i.ad, label %.split.us.i, label %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i

_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i: ; preds = %.lr.ph.i.i.i.us.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %i.af = add nuw nsw i64 %i.ab, 1
  %i.ag = icmp eq ptr %i.ae, %i.y
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i.i.i.us.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.preheader.i, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i
  %i.ah = phi ptr [ %i.ak, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %i.ai = phi i64 [ %i.al, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 3 uses
  %i.aj = load i8, ptr %i.ah, align 1, !alias.scope !570, !noalias !575, !noundef !10
  switch i8 %i.aj, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i [
    i8 92, label %.split.us.i
    i8 47, label %.split.us.i
  ]

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %i.al = add nuw nsw i64 %i.ai, 1
  %i.am = icmp eq ptr %i.ak, %i.y
  br i1 %i.am, label %.loopexit, label %.lr.ph.i.i.i.i

.split.us.i:                                      ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.us.i
  %.us-phi.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.us.i ], [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.an = icmp eq i64 %.us-phi.i, 0
  br i1 %i.an, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.split.us.i
  %i.ao = icmp samesign ugt i64 %.us-phi.i, %i.w
  br i1 %i.ao, label %bb.o, label %.thread6.i.i, !prof !58

.thread6.i.i:                                     ; preds = %bb.n
  %i.ap = sub nuw nsw i64 %i.w, %.us-phi.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi.i
  br label %.loopexit

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.us-phi.i, i64 noundef range(i64 0, -9223372036854775808) %i.w, i64 noundef range(i64 0, -9223372036854775808) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12, !noalias !584
  unreachable

bb.p:                                             ; preds = %.split.us.i, %bb.m
  store ptr @5, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 22, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.as, align 8
  br label %bb.x

.loopexit:                                        ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i, %.thread6.i.i
  %.sroa.44.0.i14.i.i = phi i64 [ %.us-phi.i, %.thread6.i.i ], [ %i.w, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i ], [ %i.w, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i ]
  %.sroa.02.0.i12.i.i = phi ptr [ %i.aq, %.thread6.i.i ], [ inttoptr (i64 1 to ptr), %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i ] ; 10 uses
  %.sroa.4.0.i11.i.i = phi i64 [ %i.ap, %.thread6.i.i ], [ 0, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i ], [ 0, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i ] ; 11 uses
  %i.at = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i12.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.0.i11.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1), !noalias !585
  br i1 %i.at, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.loopexit
  br i1 %i.b, label %.thread228, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i12.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.0.i11.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1), !noalias !585
  br i1 %i.au, label %bb.s, label %.thread227

bb.s:                                             ; preds = %bb.r, %.loopexit
  %i.av = icmp eq i64 %.sroa.4.0.i11.i.i, 0
  br i1 %i.av, label %bb.t, label %bb.u, !prof !58

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #12, !noalias !585
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.aw = add nsw i64 %.sroa.4.0.i11.i.i, -1      ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i12.i.i, i64 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.ay = icmp samesign eq i64 %i.aw, 0
  br i1 %i.ay, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread, label %.lr.ph.i.i.i.preheader.i129

.thread228:                                       ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i12.i.i, i64 %.sroa.4.0.i11.i.i
  %i.ba = icmp samesign eq i64 %.sroa.4.0.i11.i.i, 0
  br i1 %i.ba, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread, label %.lr.ph.i.i.i.us.i131.preheader

.thread227:                                       ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i12.i.i, i64 %.sroa.4.0.i11.i.i
  %i.bc = icmp samesign eq i64 %.sroa.4.0.i11.i.i, 0
  br i1 %i.bc, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread, label %.lr.ph.i.i.i.i143.preheader

.lr.ph.i.i.i.preheader.i129:                      ; preds = %bb.u
  %i.bd = getelementptr i8, ptr %.sroa.02.0.i12.i.i, i64 %.sroa.4.0.i11.i.i ; 2 uses
  br i1 %i.b, label %.lr.ph.i.i.i.us.i131.preheader, label %.lr.ph.i.i.i.i143.preheader

.lr.ph.i.i.i.i143.preheader:                      ; preds = %.thread227, %.lr.ph.i.i.i.preheader.i129
  %i.be = phi ptr [ %i.ax, %.lr.ph.i.i.i.preheader.i129 ], [ %.sroa.02.0.i12.i.i, %.thread227 ] ; 4 uses
  %i.bf = phi i64 [ %i.aw, %.lr.ph.i.i.i.preheader.i129 ], [ %.sroa.4.0.i11.i.i, %.thread227 ] ; 3 uses
  %i.bg = phi ptr [ %i.bd, %.lr.ph.i.i.i.preheader.i129 ], [ %i.bb, %.thread227 ]
  br label %.lr.ph.i.i.i.i143

.lr.ph.i.i.i.us.i131.preheader:                   ; preds = %.thread228, %.lr.ph.i.i.i.preheader.i129
  %i.bh = phi ptr [ %i.ax, %.lr.ph.i.i.i.preheader.i129 ], [ %.sroa.02.0.i12.i.i, %.thread228 ] ; 3 uses
  %i.bi = phi i64 [ %i.aw, %.lr.ph.i.i.i.preheader.i129 ], [ %.sroa.4.0.i11.i.i, %.thread228 ] ; 2 uses
  %i.bj = phi ptr [ %i.bd, %.lr.ph.i.i.i.preheader.i129 ], [ %i.az, %.thread228 ]
  br label %.lr.ph.i.i.i.us.i131

.lr.ph.i.i.i.us.i131:                             ; preds = %.lr.ph.i.i.i.us.i131.preheader, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132
  %i.bk = phi ptr [ %i.bo, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132 ], [ %i.bh, %.lr.ph.i.i.i.us.i131.preheader ] ; 2 uses
  %i.bl = phi i64 [ %i.bp, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132 ], [ 0, %.lr.ph.i.i.i.us.i131.preheader ] ; 2 uses
  %i.bm = load i8, ptr %i.bk, align 1, !alias.scope !597, !noalias !602, !noundef !10
  %i.bn = icmp eq i8 %i.bm, 92
  br i1 %i.bn, label %.split.us.i140, label %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132

_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132: ; preds = %.lr.ph.i.i.i.us.i131
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  %i.bp = add nuw nsw i64 %i.bl, 1
  %i.bq = icmp eq ptr %i.bo, %i.bj
  br i1 %i.bq, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread, label %.lr.ph.i.i.i.us.i131

.lr.ph.i.i.i.i143:                                ; preds = %.lr.ph.i.i.i.i143.preheader, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144
  %i.br = phi ptr [ %i.bu, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144 ], [ %i.be, %.lr.ph.i.i.i.i143.preheader ] ; 2 uses
  %i.bs = phi i64 [ %i.bv, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144 ], [ 0, %.lr.ph.i.i.i.i143.preheader ] ; 3 uses
  %i.bt = load i8, ptr %i.br, align 1, !alias.scope !597, !noalias !602, !noundef !10
  switch i8 %i.bt, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144 [
    i8 92, label %.split.us.i140
    i8 47, label %.split.us.i140
  ]

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144: ; preds = %.lr.ph.i.i.i.i143
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 2 uses
  %i.bv = add nuw nsw i64 %i.bs, 1
  %i.bw = icmp eq ptr %i.bu, %i.bg
  br i1 %i.bw, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread, label %.lr.ph.i.i.i.i143

.split.us.i140:                                   ; preds = %.lr.ph.i.i.i.i143, %.lr.ph.i.i.i.i143, %.lr.ph.i.i.i.us.i131
  %i.bx = phi ptr [ %i.bh, %.lr.ph.i.i.i.us.i131 ], [ %i.be, %.lr.ph.i.i.i.i143 ], [ %i.be, %.lr.ph.i.i.i.i143 ] ; 3 uses
  %i.by = phi i64 [ %i.bi, %.lr.ph.i.i.i.us.i131 ], [ %i.bf, %.lr.ph.i.i.i.i143 ], [ %i.bf, %.lr.ph.i.i.i.i143 ] ; 5 uses
  %.us-phi.i141 = phi i64 [ %i.bl, %.lr.ph.i.i.i.us.i131 ], [ %i.bs, %.lr.ph.i.i.i.i143 ], [ %i.bs, %.lr.ph.i.i.i.i143 ] ; 6 uses
  %i.bz = icmp eq i64 %.us-phi.i141, 0
  br i1 %i.bz, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread, label %bb.v

bb.v:                                             ; preds = %.split.us.i140
  %i.ca = icmp samesign ugt i64 %.us-phi.i141, %i.by
  br i1 %i.ca, label %bb.w, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145, !prof !58

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.us-phi.i141, i64 noundef range(i64 0, -9223372036854775808) %i.by, i64 noundef range(i64 0, -9223372036854775808) %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12, !noalias !611
  unreachable

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145: ; preds = %bb.v
  %i.cb = sub nuw nsw i64 %i.by, %.us-phi.i141
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.us-phi.i141
  br label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132, %.thread228, %.thread227, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145, %bb.u, %.split.us.i140
  %.sroa.046.0 = phi ptr [ inttoptr (i64 1 to ptr), %.split.us.i140 ], [ inttoptr (i64 1 to ptr), %bb.u ], [ %i.bx, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145 ], [ inttoptr (i64 1 to ptr), %.thread228 ], [ %i.bh, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132 ], [ inttoptr (i64 1 to ptr), %.thread227 ], [ %i.be, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144 ]
  %.sroa.3.0 = phi i64 [ 0, %.split.us.i140 ], [ 0, %bb.u ], [ %.us-phi.i141, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145 ], [ 0, %.thread228 ], [ %i.bi, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132 ], [ 0, %.thread227 ], [ %i.bf, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144 ]
  %.sroa.0108.0 = phi ptr [ %i.bx, %.split.us.i140 ], [ %i.ax, %bb.u ], [ %i.cc, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145 ], [ %.sroa.02.0.i12.i.i, %.thread228 ], [ inttoptr (i64 1 to ptr), %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132 ], [ %.sroa.02.0.i12.i.i, %.thread227 ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144 ]
  %.sroa.5111.0 = phi i64 [ %i.by, %.split.us.i140 ], [ 0, %bb.u ], [ %i.cb, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145 ], [ 0, %.thread228 ], [ 0, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132 ], [ 0, %.thread227 ], [ 0, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144 ]
  store ptr %.sroa.0108.0, ptr %0, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5111.0, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %.sroa.640.0..sroa_idx, align 8
  %.sroa.640.sroa.6.0..sroa.640.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.x, ptr %.sroa.640.sroa.6.0..sroa.640.0..sroa_idx.sroa_idx, align 8
  %.sroa.640.sroa.7.0..sroa.640.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.44.0.i14.i.i, ptr %.sroa.640.sroa.7.0..sroa.640.0..sroa_idx.sroa_idx, align 8
  %.sroa.640.sroa.8.0..sroa.640.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.046.0, ptr %.sroa.640.sroa.8.0..sroa.640.0..sroa_idx.sroa_idx, align 8
  %.sroa.640.sroa.9.0..sroa.640.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.3.0, ptr %.sroa.640.sroa.9.0..sroa.640.0..sroa_idx.sroa_idx, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.l, %bb.p, %bb.f, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8verbatim(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1), !noalias !612
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1), !noalias !612
  br i1 %i.c, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.d, label %bb.e, !prof !58

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #12, !noalias !612
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = add nsw i64 %2, -1                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1), !noalias !615
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1), !noalias !615
  br i1 %i.h, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %bb.h, label %bb.i, !prof !58

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #12, !noalias !615
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.j = add nsw i64 %2, -2                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !618
  store i8 63, ptr %i.a, align 1, !noalias !618
  %i.m = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !618
  br i1 %i.m, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.n = add nsw i64 %2, -3                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.p = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1), !noalias !623
  br i1 %i.p, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1), !noalias !623
  br i1 %i.q, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %bb.n, label %bb.o, !prof !58

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #12, !noalias !623
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.s = add nsw i64 %2, -4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.j, %bb.i, %bb.f, %bb.b, %bb.o
  %.sink70 = phi ptr [ @19, %bb.b ], [ @7, %bb.i ], [ @19, %bb.f ], [ %i.t, %bb.o ], [ @8, %bb.j ], [ @19, %bb.l ]
  %.sink68 = phi i64 [ 15, %bb.b ], [ 11, %bb.i ], [ 15, %bb.f ], [ %i.s, %bb.o ], [ 10, %bb.j ], [ 15, %bb.l ]
  %.sink = phi i64 [ 1, %bb.b ], [ 1, %bb.i ], [ 1, %bb.f ], [ 0, %bb.o ], [ 1, %bb.j ], [ 1, %bb.l ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink70, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink68, ptr %i.v, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9LqqPKWwQFK_10typed_path(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9LqqPKWwQFK_10typed_path(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core5sliceSh12strip_suffixBu_ECs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecuE8grow_oneCs9LqqPKWwQFK_10typed_path(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { noreturn }
attributes #13 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB1a_6parser8filename0NCNvB2j_18move_front_to_next0E0Ba_: argument 0"}
!5 = distinct !{!5, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB1a_6parser8filename0NCNvB2j_18move_front_to_next0E0Ba_"}
!6 = !{!4, !7, !8}
!7 = distinct !{!7, !5, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB1a_6parser8filename0NCNvB2j_18move_front_to_next0E0Ba_: argument 1"}
!8 = distinct !{!8, !5, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB1a_6parser8filename0NCNvB2j_18move_front_to_next0E0Ba_: argument 2"}
!9 = !{i8 -1, i8 10}
!10 = !{}
!11 = !{!7, !8}
!12 = !{!4, !7}
!13 = !{i64 0, i64 2}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNCNvNtB1a_6parser11parse_front00NCNvB2l_18move_front_to_next0E0Ba_: argument 0"}
!16 = distinct !{!16, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNCNvNtB1a_6parser11parse_front00NCNvB2l_18move_front_to_next0E0Ba_"}
!17 = !{!18}
!18 = distinct !{!18, !16, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNCNvNtB1a_6parser11parse_front00NCNvB2l_18move_front_to_next0E0Ba_: argument 2"}
!19 = !{!15, !20, !18}
!20 = distinct !{!20, !16, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNCNvNtB1a_6parser11parse_front00NCNvB2l_18move_front_to_next0E0Ba_: argument 1"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11parse_front00Bd_: argument 0"}
!23 = distinct !{!23, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11parse_front00Bd_"}
!24 = !{!25}
!25 = distinct !{!25, !23, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11parse_front00Bd_: argument 2"}
!26 = !{!27, !25, !18}
!27 = distinct !{!27, !28, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_: argument 1"}
!28 = distinct !{!28, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_"}
!29 = !{!30, !22, !31, !15, !20}
!30 = distinct !{!30, !28, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_: argument 0"}
!31 = distinct !{!31, !23, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11parse_front00Bd_: argument 1"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 0"}
!34 = distinct !{!34, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_"}
!35 = !{!36}
!36 = distinct !{!36, !34, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 1"}
!37 = !{!38, !33, !22, !31, !15, !20}
!38 = distinct !{!38, !39, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!39 = distinct !{!39, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!40 = !{!36, !25, !18}
!41 = !{!33, !22, !31, !15, !20}
!42 = !{!33, !22}
!43 = !{!36, !31, !25, !15, !20, !18}
!44 = !{!31, !25, !15, !20, !18}
!45 = !{!20, !18}
!46 = !{!15, !20}
!47 = !{!48, !50, !51, !53, !54, !56}
!48 = distinct !{!48, !49, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0Ba_: argument 0"}
!49 = distinct !{!49, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0Ba_"}
!50 = distinct !{!50, !49, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0Ba_: argument 1"}
!51 = distinct !{!51, !52, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0Ba_: argument 0"}
!52 = distinct !{!52, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0Ba_"}
!53 = distinct !{!53, !52, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0Ba_: argument 1"}
!54 = distinct !{!54, !55, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0NCNCNvB21_18move_front_to_next0s_0E0Ba_: argument 0"}
!55 = distinct !{!55, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0NCNCNvB21_18move_front_to_next0s_0E0Ba_"}
!56 = distinct !{!56, !55, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0NCNCNvB21_18move_front_to_next0s_0E0Ba_: argument 1"}
!57 = !{!48, !51, !54}
!58 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!59 = !{!51, !54}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuE8push_mutCs9LqqPKWwQFK_10typed_path: argument 0"}
!62 = distinct !{!62, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuE8push_mutCs9LqqPKWwQFK_10typed_path"}
!63 = !{!50, !51, !53, !54, !56}
!64 = !{!54, !56}
!65 = !{!54}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0NCB1Z_0E0Ba_: argument 1"}
!68 = distinct !{!68, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0NCB1Z_0E0Ba_"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0Ba_: argument 1"}
!71 = distinct !{!71, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0Ba_"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0Ba_: argument 1"}
!74 = distinct !{!74, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0Ba_"}
!75 = !{!76, !73, !77, !70, !78, !67}
!76 = distinct !{!76, !74, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0Ba_: argument 0"}
!77 = distinct !{!77, !71, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0Ba_: argument 0"}
!78 = distinct !{!78, !68, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0NCB1Z_0E0Ba_: argument 0"}
!79 = !{!76, !77, !78}
!80 = !{!81, !83, !85, !73, !70, !67}
!81 = distinct !{!81, !82, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 1"}
!82 = distinct !{!82, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_"}
!83 = distinct !{!83, !84, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB15_6parser7cur_dir0NCNCNCNvB2e_18move_front_to_next0s0_00E0Ba_: argument 1"}
!84 = distinct !{!84, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB15_6parser7cur_dir0NCNCNCNvB2e_18move_front_to_next0s0_00E0Ba_"}
!85 = distinct !{!85, !86, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser18move_front_to_next0s0_0Bd_: argument 1"}
!86 = distinct !{!86, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser18move_front_to_next0s0_0Bd_"}
!87 = !{!88, !89, !90, !76, !77, !78}
!88 = distinct !{!88, !82, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 0"}
!89 = distinct !{!89, !84, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB15_6parser7cur_dir0NCNCNCNvB2e_18move_front_to_next0s0_00E0Ba_: argument 0"}
!90 = distinct !{!90, !86, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser18move_front_to_next0s0_0Bd_: argument 0"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuE8push_mutCs9LqqPKWwQFK_10typed_path: argument 0"}
!93 = distinct !{!93, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuE8push_mutCs9LqqPKWwQFK_10typed_path"}
!94 = !{!73, !77, !70, !78, !67}
!95 = !{!78, !67}
!96 = !{!78}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!99 = distinct !{!99, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parent_dir0Bb_: argument 0"}
!102 = distinct !{!102, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parent_dir0Bb_"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parent_dir0Bb_: argument 1"}
!105 = !{!106, !101}
!106 = distinct !{!106, !107, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!107 = distinct !{!107, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!108 = !{i8 0, i8 2}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 0"}
!111 = distinct !{!111, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_"}
!112 = !{!113}
!113 = distinct !{!113, !111, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 1"}
!114 = !{!115, !110}
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!281 = distinct !{!281, !282, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!282 = distinct !{!282, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!283 = !{!284, !286, !273, !276, !157, !160, !152, !155, !150, !147}
!284 = distinct !{!284, !285, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!285 = distinct !{!285, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!286 = distinct !{!286, !285, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!287 = !{!284, !273, !157, !152, !150}
!288 = !{!289, !273, !157, !152, !150}
!289 = distinct !{!289, !290, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!290 = distinct !{!290, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!291 = !{!292}
!292 = distinct !{!292, !293, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapRShNtNtNtNtNtNtBa_7windows8non_utf810components9component6prefix13WindowsPrefixNCNvNtB1a_6parser12normal_bytes0NcNtB14_8DeviceNS0E0Ba_: argument 0"}
!293 = distinct !{!293, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapRShNtNtNtNtNtNtBa_7windows8non_utf810components9component6prefix13WindowsPrefixNCNvNtB1a_6parser12normal_bytes0NcNtB14_8DeviceNS0E0Ba_"}
!294 = !{!295}
!295 = distinct !{!295, !293, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapRShNtNtNtNtNtNtBa_7windows8non_utf810components9component6prefix13WindowsPrefixNCNvNtB1a_6parser12normal_bytes0NcNtB14_8DeviceNS0E0Ba_: argument 1"}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 2"}
!298 = distinct !{!298, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_"}
!299 = !{!300}
!300 = distinct !{!300, !301, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!301 = distinct !{!301, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!304 = distinct !{!304, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!305 = !{!306, !308, !303, !300, !297, !295, !276, !160, !155, !147}
!306 = distinct !{!306, !307, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_: argument 0"}
!307 = distinct !{!307, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_"}
!308 = distinct !{!308, !309, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_: argument 0"}
!309 = distinct !{!309, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_"}
!310 = !{!311, !313, !314, !315, !316, !317, !318, !292, !273, !157, !152, !150}
!311 = distinct !{!311, !312, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 0"}
!312 = distinct !{!312, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_"}
!313 = distinct !{!313, !312, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 1"}
!314 = distinct !{!314, !312, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 2"}
!315 = distinct !{!315, !304, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!316 = distinct !{!316, !301, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!317 = distinct !{!317, !298, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 0"}
!318 = distinct !{!318, !298, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 1"}
!319 = !{!315, !303, !316, !300, !317, !318, !297, !292, !295, !273, !157, !152, !150}
!320 = !{!292, !273, !157, !152}
!321 = !{!295, !276, !160, !155, !150, !147}
!322 = !{!323}
!323 = distinct !{!323, !324, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc: argument 0"}
!324 = distinct !{!324, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc"}
!325 = !{!326}
!326 = distinct !{!326, !324, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc: argument 1"}
!327 = !{!328, !323, !152, !150}
!328 = distinct !{!328, !329, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!329 = distinct !{!329, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!330 = !{!331, !323, !152, !150}
!331 = distinct !{!331, !332, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!332 = distinct !{!332, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!333 = !{!334}
!334 = distinct !{!334, !335, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 2"}
!335 = distinct !{!335, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_"}
!336 = !{!337}
!337 = distinct !{!337, !338, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!338 = distinct !{!338, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!341 = distinct !{!341, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!342 = !{!343, !345, !340, !337, !334, !326, !155, !147}
!343 = distinct !{!343, !344, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_: argument 0"}
!344 = distinct !{!344, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_"}
!345 = distinct !{!345, !346, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_: argument 0"}
!346 = distinct !{!346, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_"}
!347 = !{!348, !350, !351, !352, !353, !354, !355, !323, !152, !150}
!348 = distinct !{!348, !349, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 0"}
!349 = distinct !{!349, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_"}
!350 = distinct !{!350, !349, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 1"}
!351 = distinct !{!351, !349, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 2"}
!352 = distinct !{!352, !341, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!353 = distinct !{!353, !338, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!354 = distinct !{!354, !335, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 0"}
!355 = distinct !{!355, !335, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 1"}
!356 = !{!352, !340, !353, !337, !354, !355, !334, !323, !152, !150}
!357 = !{!358, !323, !152, !150}
!358 = distinct !{!358, !359, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!359 = distinct !{!359, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!360 = !{!361}
!361 = distinct !{!361, !362, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 2"}
!362 = distinct !{!362, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_"}
!363 = !{!364}
!364 = distinct !{!364, !365, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!365 = distinct !{!365, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!366 = !{!367}
!367 = distinct !{!367, !368, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!368 = distinct !{!368, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!369 = !{!370, !372, !367, !364, !361}
!370 = distinct !{!370, !371, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_: argument 0"}
!371 = distinct !{!371, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_"}
!372 = distinct !{!372, !373, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_: argument 0"}
!373 = distinct !{!373, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_"}
!374 = !{!375, !377, !378, !379, !380, !381, !382, !323, !152, !150}
!375 = distinct !{!375, !376, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 0"}
!376 = distinct !{!376, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_"}
!377 = distinct !{!377, !376, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 1"}
!378 = distinct !{!378, !376, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 2"}
!379 = distinct !{!379, !368, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!380 = distinct !{!380, !365, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!381 = distinct !{!381, !362, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 0"}
!382 = distinct !{!382, !362, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 1"}
!383 = !{!379, !367, !380, !364, !381, !382, !361, !323, !152, !150}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk: argument 0"}
!386 = distinct !{!386, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk"}
!387 = !{!388}
!388 = distinct !{!388, !386, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk: argument 1"}
!389 = !{!390}
!390 = distinct !{!390, !391, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3maphNtNtNtNtNtNtBa_7windows8non_utf810components9component6prefix13WindowsPrefixNvNtB18_6parser9disk_byteNcNtB12_4Disk0E0Ba_: argument 0"}
!391 = distinct !{!391, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3maphNtNtNtNtNtNtBa_7windows8non_utf810components9component6prefix13WindowsPrefixNvNtB18_6parser9disk_byteNcNtB12_4Disk0E0Ba_"}
!392 = !{!393}
!393 = distinct !{!393, !391, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3maphNtNtNtNtNtNtBa_7windows8non_utf810components9component6prefix13WindowsPrefixNvNtB18_6parser9disk_byteNcNtB12_4Disk0E0Ba_: argument 1"}
!394 = !{!395}
!395 = distinct !{!395, !396, !"_RNvYNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9disk_byteINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRShEE8call_mutBc_: argument 1"}
!396 = distinct !{!396, !"_RNvYNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9disk_byteINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRShEE8call_mutBc_"}
!397 = !{!398}
!398 = distinct !{!398, !399, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9disk_byte: argument 1"}
!399 = distinct !{!399, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9disk_byte"}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12drive_letter: argument 1"}
!402 = distinct !{!402, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12drive_letter"}
!403 = !{!401, !398, !395, !393, !388, !155, !147}
!404 = !{!405, !406, !407, !390, !385, !152, !150}
!405 = distinct !{!405, !402, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12drive_letter: argument 0"}
!406 = distinct !{!406, !399, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9disk_byte: argument 0"}
!407 = distinct !{!407, !396, !"_RNvYNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9disk_byteINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRShEE8call_mutBc_: argument 0"}
!408 = !{!405, !401, !406, !398, !407, !395, !390, !393, !385, !388, !152, !150}
!409 = !{!410, !412, !406, !398, !407, !395, !390, !393, !385, !388, !152, !155, !150, !147}
!410 = distinct !{!410, !411, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!411 = distinct !{!411, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!412 = distinct !{!412, !411, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!413 = !{!410, !406, !407, !390, !385, !152, !150}
!414 = !{!390, !385, !152}
!415 = !{!393, !388, !155, !150, !147}
!416 = !{!323, !152}
!417 = !{!326, !155, !150, !147}
!418 = !{!"branch_weights", i32 4001, i32 4000000}
!419 = !{!420}
!420 = distinct !{!420, !421, !"_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parserNtB4_6Parser24remaining_without_prefix: argument 0"}
!421 = distinct !{!421, !"_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parserNtB4_6Parser24remaining_without_prefix"}
!422 = !{!423}
!423 = distinct !{!423, !424, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_: argument 2"}
!424 = distinct !{!424, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_"}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_: argument 1"}
!427 = distinct !{!427, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_"}
!428 = !{!429, !431, !426}
!429 = distinct !{!429, !430, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser17move_back_to_next00E00E0B1M_: argument 0"}
!430 = distinct !{!430, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser17move_back_to_next00E00E0B1M_"}
!431 = distinct !{!431, !432, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_: argument 1"}
!432 = distinct !{!432, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_"}
!433 = !{!434, !435, !437, !438, !440, !441, !443, !444, !445}
!434 = distinct !{!434, !432, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_: argument 0"}
!435 = distinct !{!435, !436, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_: argument 0"}
!436 = distinct !{!436, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_"}
!437 = distinct !{!437, !436, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_: argument 1"}
!438 = distinct !{!438, !439, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser17move_back_to_next00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_: argument 0"}
!439 = distinct !{!439, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser17move_back_to_next00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_"}
!440 = distinct !{!440, !427, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_: argument 0"}
!441 = distinct !{!441, !442, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 0"}
!442 = distinct !{!442, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_"}
!443 = distinct !{!443, !442, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 1"}
!444 = distinct !{!444, !424, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_: argument 0"}
!445 = distinct !{!445, !424, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_: argument 1"}
!446 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!447 = !{!441, !443, !444, !445}
!448 = !{!429, !431, !426, !449, !423}
!449 = distinct !{!449, !442, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 2"}
!450 = !{!451, !453, !440, !426, !441, !443, !444, !445}
!451 = distinct !{!451, !452, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 0"}
!452 = distinct !{!452, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path"}
!453 = distinct !{!453, !452, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 1"}
!454 = !{!440, !426, !441, !443, !444, !445}
!455 = !{!444, !445, !423}
!456 = !{!444, !445}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_: argument 1"}
!459 = distinct !{!459, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_"}
!460 = !{!461}
!461 = distinct !{!461, !462, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_: argument 1"}
!462 = distinct !{!462, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_"}
!463 = !{!464, !466, !461, !458}
!464 = distinct !{!464, !465, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser10parse_back00E00E0B1M_: argument 0"}
!465 = distinct !{!465, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser10parse_back00E00E0B1M_"}
!466 = distinct !{!466, !467, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_: argument 1"}
!467 = distinct !{!467, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_"}
!468 = !{!469, !470, !472, !473, !475, !476, !444, !445}
!469 = distinct !{!469, !467, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_: argument 0"}
!470 = distinct !{!470, !471, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser10parse_back00E00E0E0B3c_EB4C_: argument 0"}
!471 = distinct !{!471, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser10parse_back00E00E0E0B3c_EB4C_"}
!472 = distinct !{!472, !471, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser10parse_back00E00E0E0B3c_EB4C_: argument 1"}
!473 = distinct !{!473, !474, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser10parse_back00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_: argument 0"}
!474 = distinct !{!474, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser10parse_back00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_"}
!475 = distinct !{!475, !462, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_: argument 0"}
!476 = distinct !{!476, !459, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_: argument 0"}
!477 = !{!478, !480, !475, !461, !476, !458, !444, !445}
!478 = distinct !{!478, !479, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 0"}
!479 = distinct !{!479, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path"}
!480 = distinct !{!480, !479, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 1"}
!481 = !{!475, !461, !476, !458, !444, !445}
!482 = !{!483, !485, !486, !444, !445, !423}
!483 = distinct !{!483, !484, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentNCNvNtB1h_6parser8filename0E0Ba_: argument 0"}
!484 = distinct !{!484, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentNCNvNtB1h_6parser8filename0E0Ba_"}
!485 = distinct !{!485, !484, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentNCNvNtB1h_6parser8filename0E0Ba_: argument 1"}
!486 = distinct !{!486, !484, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentNCNvNtB1h_6parser8filename0E0Ba_: argument 2"}
!487 = !{!483, !444, !445}
!488 = !{!489}
!489 = distinct !{!489, !490, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_: argument 1"}
!490 = distinct !{!490, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_"}
!491 = !{!492, !494, !489}
!492 = distinct !{!492, !493, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser17move_back_to_next00E00E0B1M_: argument 0"}
!493 = distinct !{!493, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser17move_back_to_next00E00E0B1M_"}
!494 = distinct !{!494, !495, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_: argument 1"}
!495 = distinct !{!495, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_"}
!496 = !{!497, !498, !500, !501, !503, !504, !506, !444, !445}
!497 = distinct !{!497, !495, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_: argument 0"}
!498 = distinct !{!498, !499, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_: argument 0"}
!499 = distinct !{!499, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_"}
!500 = distinct !{!500, !499, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_: argument 1"}
!501 = distinct !{!501, !502, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser17move_back_to_next00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_: argument 0"}
!502 = distinct !{!502, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser17move_back_to_next00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_"}
!503 = distinct !{!503, !490, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_: argument 0"}
!504 = distinct !{!504, !505, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 0"}
!505 = distinct !{!505, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_"}
!506 = distinct !{!506, !505, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 1"}
!507 = !{!504, !506, !444, !445}
!508 = !{!492, !494, !489, !509}
!509 = distinct !{!509, !505, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 2"}
!510 = !{!511, !513, !503, !489, !504, !506, !444, !445}
!511 = distinct !{!511, !512, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 0"}
!512 = distinct !{!512, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path"}
!513 = distinct !{!513, !512, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 1"}
!514 = !{!503, !489, !504, !506, !444, !445}
!515 = !{!516}
!516 = distinct !{!516, !517, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_: argument 1"}
!517 = distinct !{!517, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_"}
!518 = !{!519, !444, !445}
!519 = distinct !{!519, !517, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_: argument 0"}
!520 = !{!521}
!521 = distinct !{!521, !522, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 0"}
!522 = distinct !{!522, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_"}
!523 = !{!524, !444, !445}
!524 = distinct !{!524, !522, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 1"}
!525 = !{!526}
!526 = distinct !{!526, !527, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_: argument 1"}
!527 = distinct !{!527, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_"}
!528 = !{!529, !531, !526}
!529 = distinct !{!529, !530, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser17move_back_to_next00E00E0B1M_: argument 0"}
!530 = distinct !{!530, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser17move_back_to_next00E00E0B1M_"}
!531 = distinct !{!531, !532, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_: argument 1"}
!532 = distinct !{!532, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_"}
!533 = !{!534, !535, !537, !538, !540, !541, !543, !544, !444, !445}
!534 = distinct !{!534, !532, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_: argument 0"}
!535 = distinct !{!535, !536, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_: argument 0"}
!536 = distinct !{!536, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_"}
!537 = distinct !{!537, !536, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_: argument 1"}
!538 = distinct !{!538, !539, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser17move_back_to_next00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_: argument 0"}
!539 = distinct !{!539, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser17move_back_to_next00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_"}
!540 = distinct !{!540, !527, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_: argument 0"}
!541 = distinct !{!541, !542, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 0"}
!542 = distinct !{!542, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_"}
!543 = distinct !{!543, !542, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 1"}
!544 = distinct !{!544, !545, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12consumed_cntuNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next0E0Ba_: argument 0"}
!545 = distinct !{!545, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12consumed_cntuNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next0E0Ba_"}
!546 = !{!541, !543, !544, !444, !445}
!547 = !{!529, !531, !526, !548, !549}
!548 = distinct !{!548, !542, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 2"}
!549 = distinct !{!549, !545, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12consumed_cntuNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next0E0Ba_: argument 1"}
!550 = !{!551, !553, !540, !526, !541, !543, !544, !444, !445}
!551 = distinct !{!551, !552, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 0"}
!552 = distinct !{!552, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path"}
!553 = distinct !{!553, !552, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 1"}
!554 = !{!540, !526, !541, !543, !544, !444, !445}
!555 = !{!556}
!556 = distinct !{!556, !557, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!557 = distinct !{!557, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!558 = !{!559}
!559 = distinct !{!559, !560, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!560 = distinct !{!560, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!561 = !{!562}
!562 = distinct !{!562, !563, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 2"}
!563 = distinct !{!563, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_"}
!564 = !{!565}
!565 = distinct !{!565, !566, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!566 = distinct !{!566, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!567 = !{!568}
!568 = distinct !{!568, !569, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!569 = distinct !{!569, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!570 = !{!571, !573, !568, !565, !562}
!571 = distinct !{!571, !572, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_: argument 0"}
!572 = distinct !{!572, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_"}
!573 = distinct !{!573, !574, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_: argument 0"}
!574 = distinct !{!574, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_"}
!575 = !{!576, !578, !579, !580, !581, !582, !583}
!576 = distinct !{!576, !577, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 0"}
!577 = distinct !{!577, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_"}
!578 = distinct !{!578, !577, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 1"}
!579 = distinct !{!579, !577, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 2"}
!580 = distinct !{!580, !569, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!581 = distinct !{!581, !566, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!582 = distinct !{!582, !563, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 0"}
!583 = distinct !{!583, !563, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 1"}
!584 = !{!580, !568, !581, !565, !582, !583, !562}
!585 = !{!586}
!586 = distinct !{!586, !587, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!587 = distinct !{!587, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!588 = !{!589}
!589 = distinct !{!589, !590, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 2"}
!590 = distinct !{!590, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_"}
!591 = !{!592}
!592 = distinct !{!592, !593, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!593 = distinct !{!593, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!594 = !{!595}
!595 = distinct !{!595, !596, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!596 = distinct !{!596, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!597 = !{!598, !600, !595, !592, !589}
!598 = distinct !{!598, !599, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_: argument 0"}
!599 = distinct !{!599, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_"}
!600 = distinct !{!600, !601, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_: argument 0"}
!601 = distinct !{!601, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_"}
!602 = !{!603, !605, !606, !607, !608, !609, !610}
!603 = distinct !{!603, !604, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 0"}
!604 = distinct !{!604, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_"}
!605 = distinct !{!605, !604, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 1"}
!606 = distinct !{!606, !604, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 2"}
!607 = distinct !{!607, !596, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!608 = distinct !{!608, !593, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!609 = distinct !{!609, !590, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 0"}
!610 = distinct !{!610, !590, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 1"}
!611 = !{!607, !595, !608, !592, !609, !610, !589}
!612 = !{!613}
!613 = distinct !{!613, !614, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!614 = distinct !{!614, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!615 = !{!616}
!616 = distinct !{!616, !617, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!617 = distinct !{!617, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!618 = !{!619, !621}
!619 = distinct !{!619, !620, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!620 = distinct !{!620, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!621 = distinct !{!621, !620, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!622 = !{!619}
!623 = !{!624}
!624 = distinct !{!624, !625, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!625 = distinct !{!625, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
end_hunk_1
