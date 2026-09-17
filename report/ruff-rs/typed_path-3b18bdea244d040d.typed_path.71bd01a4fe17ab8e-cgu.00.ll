Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/typed_path-3b18bdea244d040d.typed_path.71bd01a4fe17ab8e-cgu.00?download=true
inline.NumInlined: 130
inline.NumDeleted: 83
begin_hunk_0_@_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parserNtB4_6Parser3new:bb.a
  br i1 %i.en, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i, label %.lr.ph.i.i.i.i134.i.i.i

.lr.ph.i.i.i.i134.i.i.i:                          ; preds = %bb.be, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i
  %i.eo = phi ptr [ %i.er, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i ], [ %i.el, %bb.be ] ; 2 uses
  %i.ep = phi i64 [ %i.es, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i ], [ 0, %bb.be ] ; 6 uses
  %i.eq = load i8, ptr %i.eo, align 1, !alias.scope !400, !noalias !401, !noundef !4
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
  %i.ev = icmp samesign ugt i64 %i.ep, %i.ek
  br i1 %i.ev, label %bb.bg, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit136.i.i.i, !prof !6

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ep, i64 noundef range(i64 0, -9223372036854775808) %i.ek, i64 noundef range(i64 0, -9223372036854775808) %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12, !noalias !402
  unreachable

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit136.i.i.i: ; preds = %bb.bf
  %i.ew = sub nuw nsw i64 %i.ek, %i.ep
  br label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i.i: ; preds = %.split.us.i.i.i.i, %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.ex = icmp eq i64 %2, 0
  br i1 %i.ex, label %bb.bm, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i_crit_edge.i

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i_crit_edge.i: ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i.i
  %.pre.i = add nsw i64 %2, -1
  br label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i.i

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i.i: ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i_crit_edge.i, %bb.ax, %bb.au
  %.pre-phi.i.i = phi i64 [ %i.dm, %bb.au ], [ %.pre.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i_crit_edge.i ], [ 1, %bb.ax ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ez = load i8, ptr %1, align 1, !alias.scope !410, !noalias !411, !noundef !4 ; 5 uses
  %i.fa = zext i8 %i.ez to i32
  %i.fb = and i8 %i.ez, -33
  %i.fc = add i8 %i.fb, -65
  %or.cond13.i.i.i.i.i.i.i = icmp ult i8 %i.fc, 26
  br i1 %or.cond13.i.i.i.i.i.i.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i.i
  %i.fd = icmp ult i8 %i.ez, -86
  br i1 %i.fd, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fe = call noundef zeroext i1 @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef %i.fa), !noalias !412
  br i1 %i.fe, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread._crit_edge.i.i
  %i.ff = add i8 %i.ez, -97
  %i.fg = icmp ult i8 %i.ff, 26
  %i.fh = select i1 %i.fg, i8 32, i8 0
  %.sroa.011.0.i.i.i.i.i.i.i = xor i8 %i.fh, %i.ez
  %i.fi = icmp eq i64 %.pre-phi.i.i, 0
  br i1 %i.fi, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !413
  store i8 58, ptr %i.a, align 1, !noalias !413
  %i.fj = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ey, i64 noundef range(i64 0, -9223372036854775808) %.pre-phi.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  br i1 %i.fj, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk.exit.i.i, label %bb.bm

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk.exit.i.i: ; preds = %bb.bk
  %i.fk = add nsw i64 %2, -2
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  store i8 %.sroa.011.0.i.i.i.i.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 1, !alias.scope !415, !noalias !416
  br label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread.i

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit136.i.i.i, %.split.us.i131.i.i.i, %bb.be
  %.sroa.5101.0.i.i.i = phi i64 [ %i.ek, %.split.us.i131.i.i.i ], [ 0, %bb.be ], [ %i.ew, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit136.i.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i ]
  %.sroa.3.0.i.i.i = phi i64 [ 0, %.split.us.i131.i.i.i ], [ 0, %bb.be ], [ %i.ep, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit136.i.i.i ], [ %i.ek, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i ]
  %.sroa.040.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %.split.us.i131.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.be ], [ %i.el, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit136.i.i.i ], [ %i.el, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i135.i.i.i ]
  %.sroa.634.sroa.6.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.ds, ptr %.sroa.634.sroa.6.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !417, !noalias !418
  %.sroa.634.sroa.7.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sroa.44.0.i11.i.i.i.i.i, ptr %.sroa.634.sroa.7.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !417, !noalias !418
  %.sroa.634.sroa.8.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %.sroa.040.0.i.i.i, ptr %.sroa.634.sroa.8.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !417, !noalias !418
  %.sroa.634.sroa.9.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %.sroa.3.0.i.i.i, ptr %.sroa.634.sroa.9.0..sroa.634.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !417, !noalias !418
  br label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread.i

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread.i: ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk.exit.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser16prefix_device_ns.exit.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser15prefix_verbatim.exit.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser20prefix_verbatim_disk.exit.i.i.i, %._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread_crit_edge.i
  %.sroa.48.0.copyload.i = phi i64 [ %.sroa.5101.0.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i ], [ %i.fk, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk.exit.i.i ], [ %.sroa.4.0.i13.i.i.i.i5.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser16prefix_device_ns.exit.i.i.i ], [ %.sroa.7.0.i.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser15prefix_verbatim.exit.i.i.i ], [ %i.ah, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser20prefix_verbatim_disk.exit.i.i.i ], [ %.sroa.48.0.copyload.pre.i, %._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread_crit_edge.i ] ; 2 uses
  %i.fl = phi i8 [ 4, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.i ], [ 5, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk.exit.i.i ], [ 3, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser16prefix_device_ns.exit.i.i.i ], [ 0, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser15prefix_verbatim.exit.i.i.i ], [ 2, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser20prefix_verbatim_disk.exit.i.i.i ], [ %i.l, %._RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread_crit_edge.i ]
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.2.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6.0..sroa_idx.i, i64 39, i1 false), !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !325
  %i.fm = sub i64 %2, %.sroa.48.0.copyload.i      ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.48.0.copyload.i, %2
  br i1 %.not.i, label %bb.bl, label %bb.bn, !prof !8

bb.bl:                                            ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6prefix.exit.thread.i
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fm, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #12, !noalias !330
  unreachable

bb.bm:                                            ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10prefix_unc.exit.thread.i.i, %bb.bh, %bb.bi, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !325
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !517, !noundef !4 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.g, align 8, !alias.scope !517 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.0.0.copyload.i, -1  ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !517 ; 6 uses
  %.sroa.02.0.i = select i1 %.not.i, i64 0, i64 %.sroa.6.0.copyload.i ; 4 uses
  %i.h = icmp ugt i64 %.sroa.02.0.i, %i.f
  br i1 %i.h, label %bb.b, label %_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parserNtB4_6Parser24remaining_without_prefix.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.02.0.i, i64 noundef %i.f, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #12, !noalias !517
  unreachable

_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parserNtB4_6Parser24remaining_without_prefix.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !alias.scope !517, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = sub nuw i64 %i.f, %.sroa.02.0.i          ; 8 uses
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
  %i.n = load i8, ptr %i.m, align 8, !range !7, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.p = load i8, ptr %i.o, align 1, !range !7, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.252.i)
  %i.q = trunc nuw i8 %i.p to i1                  ; 5 uses
  br i1 %i.q, label %.split.us44.us.i.i, label %.split.us.i.i

.split.us44.us.i.i:                               ; preds = %bb.d, %.split.us44.us.i.i.backedge
  %.sroa.0.033.us.us.i.i = phi ptr [ %i.aa, %.split.us44.us.i.i.backedge ], [ %i.k, %bb.d ] ; 4 uses
  %.sroa.8.032.us.us.i.i = phi i64 [ %i.ab, %.split.us44.us.i.i.backedge ], [ %i.j, %bb.d ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i.i, i64 %.sroa.8.032.us.us.i.i
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i, %.split.us44.us.i.i
  %.sroa.2.018.i.i.i.us45.us.i.i = phi i64 [ %.sroa.8.032.us.us.i.i, %.split.us44.us.i.i ], [ %i.u, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i ] ; 5 uses
  %i.s = phi ptr [ %i.r, %.split.us44.us.i.i ], [ %i.t, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i ]
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 3 uses
  %i.u = add nsw i64 %.sroa.2.018.i.i.i.us45.us.i.i, -1 ; 3 uses
  %i.v = load i8, ptr %i.t, align 1, !alias.scope !520, !noalias !521, !noundef !4
  switch i8 %i.v, label %.split27.us.us.i.i [
    i8 92, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i
    i8 47, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i
  ]

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i: ; preds = %bb.e, %bb.e
  %i.w = icmp eq ptr %.sroa.0.033.us.us.i.i, %i.t
  br i1 %i.w, label %.loopexit.split.us48.us.i.i, label %bb.e

.split27.us.us.i.i:                               ; preds = %bb.e
  %i.x = icmp eq i64 %.sroa.2.018.i.i.i.us45.us.i.i, %.sroa.8.032.us.us.i.i
  br i1 %i.x, label %.loopexit.split.us48.us.i.i, label %bb.f

bb.f:                                             ; preds = %.split27.us.us.i.i
  %i.y = icmp ult i64 %i.u, %.sroa.8.032.us.us.i.i
  br i1 %i.y, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i, label %.split50.us.i.i, !prof !522

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i: ; preds = %bb.f
  %2 = icmp ugt i64 %.sroa.2.018.i.i.i.us45.us.i.i, %.sroa.8.032.us.us.i.i
  br i1 %2, label %.split54.us.i.i, label %.loopexit.split.us48.us.i.i, !prof !6

.loopexit.split.us48.us.i.i:                      ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i, %.split27.us.us.i.i
  %.sroa.45.0.i.us.us.i.i = phi i64 [ %.sroa.8.032.us.us.i.i, %.split27.us.us.i.i ], [ %.sroa.2.018.i.i.i.us45.us.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i ], [ 0, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i ] ; 3 uses
  %.sroa.04.0.i.us.us.i.i = phi ptr [ %.sroa.0.033.us.us.i.i, %.split27.us.us.i.i ], [ %.sroa.0.033.us.us.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i ] ; 3 uses
  %i.z = tail call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core5sliceSh12strip_suffixBu_ECs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.us.us.i.i, i64 noundef %.sroa.45.0.i.us.us.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 1), !noalias !523 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0       ; 4 uses
  %i.ab = extractvalue { ptr, i64 } %i.z, 1       ; 3 uses
  %.not.us.us.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.us.us.i.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.split.us48.us.i.i
  %cond.i.i = icmp eq i64 %i.ab, 0
  br i1 %cond.i.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !523, !noundef !4
  switch i8 %i.ae, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i [
    i8 92, label %.split.us44.us.i.i.backedge
    i8 47, label %.split.us44.us.i.i.backedge
  ]

.split.us44.us.i.i.backedge:                      ; preds = %bb.h, %bb.h
  br label %.split.us44.us.i.i

.split.us.i.i:                                    ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  br label %bb.i

bb.i:                                             ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i, %.split.us.i.i
  %.sroa.2.018.i.i.i.us.i.i = phi i64 [ %i.j, %.split.us.i.i ], [ %i.ai, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i ] ; 3 uses
  %i.ag = phi ptr [ %i.af, %.split.us.i.i ], [ %i.ah, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i ]
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -1 ; 3 uses
  %i.ai = add nsw i64 %.sroa.2.018.i.i.i.us.i.i, -1 ; 3 uses
  %i.aj = load i8, ptr %i.ah, align 1, !alias.scope !524, !noalias !521, !noundef !4
  %i.ak = icmp eq i8 %i.aj, 92
  br i1 %i.ak, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i, label %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i

_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i: ; preds = %bb.i
  %i.al = icmp eq i64 %.sroa.2.018.i.i.i.us.i.i, %i.j
  br i1 %i.al, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i, label %bb.j

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i: ; preds = %bb.i
  %i.am = icmp eq ptr %i.k, %i.ah
  br i1 %i.am, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i, label %bb.i

bb.j:                                             ; preds = %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i
  %i.an = icmp ult i64 %i.ai, %i.j
  br i1 %i.an, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i, label %.split50.us.i.i, !prof !522

.split50.us.i.i:                                  ; preds = %bb.f, %bb.j
  %.us-phi51.i.i = phi i64 [ %i.j, %bb.j ], [ %.sroa.8.032.us.us.i.i, %bb.f ]
  %.us-phi52.i.i = phi i64 [ %i.ai, %bb.j ], [ %i.u, %bb.f ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.us-phi52.i.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi51.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #12, !noalias !525
  unreachable

.split54.us.i.i:                                  ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.2.018.i.i.i.us45.us.i.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.8.032.us.us.i.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.8.032.us.us.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #12, !noalias !526
  unreachable

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i: ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i, %bb.h, %bb.g, %.loopexit.split.us48.us.i.i
  %.sroa.8.1.i.i = phi i64 [ %.sroa.45.0.i.us.us.i.i, %bb.h ], [ %.sroa.45.0.i.us.us.i.i, %.loopexit.split.us48.us.i.i ], [ 0, %bb.g ], [ 0, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi ptr [ %.sroa.04.0.i.us.us.i.i, %bb.h ], [ %.sroa.04.0.i.us.us.i.i, %.loopexit.split.us48.us.i.i ], [ %i.aa, %bb.g ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i ]
  %i.ao = icmp eq i8 %i.n, 0
  %i.ap = icmp eq i64 %.sroa.8.1.i.i, 0
  %or.cond.i = and i1 %i.ao, %i.ap
  br i1 %or.cond.i, label %bb.k, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i

bb.k:                                             ; preds = %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !527
  call fastcc void @_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11parse_front0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d, i8 %i.p, i8 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 1, -9223372036854775808) %i.j), !noalias !528
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !range !3, !noalias !527, !noundef !4 ; 2 uses
  %i.as = icmp eq i8 %i.ar, -1
  br i1 %i.as, label %bb.l, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread47

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.d, align 8, !noalias !527, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noalias !527, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !527
  br label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread47: ; preds = %bb.k
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.23, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.635.0..sroa_idx.i, i64 55, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !527
  br label %bb.ar

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i: ; preds = %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i, %bb.j, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i
  %.sroa.0.1.i122.i = phi ptr [ %.sroa.0.1.i.i, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i ], [ %i.k, %bb.j ], [ %i.k, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i ] ; 5 uses
  %.sroa.8.1.i121.i = phi i64 [ %.sroa.8.1.i.i, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.i ], [ %.sroa.2.018.i.i.i.us.i.i, %bb.j ], [ %i.j, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %cond = icmp eq i64 %.sroa.8.1.i121.i, 0
  br i1 %cond, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i122.i, i64 %.sroa.8.1.i121.i
  br label %bb.m

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ax = icmp eq ptr %.sroa.0.1.i122.i, %i.az
  br i1 %i.ax, label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.thread137.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i230 = phi i64 [ %.sroa.8.1.i121.i, %.lr.ph ], [ %i.ba, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i ] ; 5 uses
  %i.ay = phi ptr [ %i.aw, %.lr.ph ], [ %i.az, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i ]
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -1 ; 3 uses
  %i.ba = add nsw i64 %.sroa.2.0.i.i.i.i.i230, -1 ; 3 uses
  %i.bb = load i8, ptr %i.az, align 1, !alias.scope !531, !noalias !532, !noundef !4 ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 92
  %i.bd = icmp eq i8 %i.bb, 47
  %spec.select.i.i.i.i.i.i.i.i.i = and i1 %i.bd, %i.q
  %or.cond155.i = or i1 %i.bc, %spec.select.i.i.i.i.i.i.i.i.i
  br i1 %or.cond155.i, label %bb.n, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.be = icmp eq i64 %.sroa.2.0.i.i.i.i.i230, %.sroa.8.1.i121.i
  br i1 %i.be, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp ult i64 %i.ba, %.sroa.8.1.i121.i
  br i1 %i.bf, label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i, label %bb.p, !prof !522

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ba, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.1.i121.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #12, !noalias !533
  unreachable

_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i: ; preds = %bb.o
  %i.bg = sub nuw nsw i64 %.sroa.8.1.i121.i, %.sroa.2.0.i.i.i.i.i230
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i122.i, i64 %.sroa.2.0.i.i.i.i.i230
  br label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.thread137.i

_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.thread137.i: ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i
  %.in.i = phi ptr [ %i.bh, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i ], [ %.sroa.0.1.i122.i, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i ]
  %.sroa.45.0.i.i134144.i = phi i64 [ %.sroa.2.0.i.i.i.i.i230, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i ], [ 0, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i ] ; 19 uses
  %.sroa.04.0.i.i135143.i = phi ptr [ %.sroa.0.1.i122.i, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i ] ; 8 uses
  %.sroa.47.0.i.i136142.i = phi i64 [ %i.bg, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.i ], [ %.sroa.8.1.i121.i, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !527
  %i.bi = insertelement <4 x i8> poison, i8 %i.p, i64 0
  %i.bj = shufflevector <4 x i8> %i.bi, <4 x i8> poison, <4 x i32> zeroinitializer
  store <4 x i8> %i.bj, ptr %i.c, align 4, !noalias !527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !534
  call fastcc void @_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8filename0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.in.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.47.0.i.i136142.i), !noalias !535
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !range !3, !noalias !534, !noundef !4 ; 3 uses
  %i.bm = icmp eq i8 %i.bl, -1
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.thread137.i
  %i.bn = load ptr, ptr %i.a, align 8, !noalias !534, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !534, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !534
  br label %bb.t

bb.r:                                             ; preds = %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_.exit.thread137.i
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.414.0.copyload.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !534
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.518.i.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.6.0..sroa_idx.i.i, i64 55, i1 false), !noalias !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !534
  %i.bq = icmp eq i64 %.sroa.414.0.copyload.i.i, 0
  br i1 %i.bq, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.sroa.7.0.ph.i = phi i64 [ 9, %bb.s ], [ %i.bp, %bb.q ]
  %.sroa.0100.0.ph.i = phi ptr [ @1, %bb.s ], [ %i.bn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !527
  br label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread

bb.u:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.252.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.518.i.i, i64 55, i1 false), !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !527
  %i.br = trunc nuw i8 %i.n to i1
  br i1 %i.br, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.al, %bb.u
  %i.bs = icmp eq i64 %.sroa.45.0.i.i134144.i, 0
  br i1 %i.bs, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread53, label %.lr.ph.i.i

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread53: ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.23, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.252.i, i64 55, i1 false)
  br label %bb.ar

.lr.ph.i.i:                                       ; preds = %bb.v
  br i1 %i.q, label %.split.us44.us.i78.i, label %.split.us.i65.i

.split.us44.us.i78.i:                             ; preds = %.lr.ph.i.i, %.split.us44.us.i78.i.backedge
  %.sroa.0.033.us.us.i79.i = phi ptr [ %i.cc, %.split.us44.us.i78.i.backedge ], [ %.sroa.04.0.i.i135143.i, %.lr.ph.i.i ] ; 4 uses
  %.sroa.8.032.us.us.i80.i = phi i64 [ %i.cd, %.split.us44.us.i78.i.backedge ], [ %.sroa.45.0.i.i134144.i, %.lr.ph.i.i ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i79.i, i64 %.sroa.8.032.us.us.i80.i
  br label %bb.w

bb.w:                                             ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i82.i, %.split.us44.us.i78.i
  %.sroa.2.018.i.i.i.us45.us.i81.i = phi i64 [ %.sroa.8.032.us.us.i80.i, %.split.us44.us.i78.i ], [ %i.bw, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i82.i ] ; 5 uses
  %i.bu = phi ptr [ %i.bt, %.split.us44.us.i78.i ], [ %i.bv, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i82.i ]
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -1 ; 3 uses
  %i.bw = add nsw i64 %.sroa.2.018.i.i.i.us45.us.i81.i, -1 ; 3 uses
  %i.bx = load i8, ptr %i.bv, align 1, !alias.scope !537, !noalias !538, !noundef !4
  switch i8 %i.bx, label %.split27.us.us.i88.i [
    i8 92, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i82.i
    i8 47, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i82.i
  ]

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i82.i: ; preds = %bb.w, %bb.w
  %i.by = icmp eq ptr %.sroa.0.033.us.us.i79.i, %i.bv
  br i1 %i.by, label %.loopexit.split.us48.us.i83.i, label %bb.w

.split27.us.us.i88.i:                             ; preds = %bb.w
  %i.bz = icmp eq i64 %.sroa.2.018.i.i.i.us45.us.i81.i, %.sroa.8.032.us.us.i80.i
  br i1 %i.bz, label %.loopexit.split.us48.us.i83.i, label %bb.x

bb.x:                                             ; preds = %.split27.us.us.i88.i
  %i.ca = icmp ult i64 %i.bw, %.sroa.8.032.us.us.i80.i
  br i1 %i.ca, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i, label %.split50.us.i68.i, !prof !522

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i: ; preds = %bb.x
  %3 = icmp ugt i64 %.sroa.2.018.i.i.i.us45.us.i81.i, %.sroa.8.032.us.us.i80.i
  br i1 %3, label %.split54.us.i74.i, label %.loopexit.split.us48.us.i83.i, !prof !6

.loopexit.split.us48.us.i83.i:                    ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i82.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i, %.split27.us.us.i88.i
  %.sroa.45.0.i.us.us.i84.i = phi i64 [ %.sroa.8.032.us.us.i80.i, %.split27.us.us.i88.i ], [ %.sroa.2.018.i.i.i.us45.us.i81.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i ], [ 0, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i82.i ] ; 3 uses
  %.sroa.04.0.i.us.us.i85.i = phi ptr [ %.sroa.0.033.us.us.i79.i, %.split27.us.us.i88.i ], [ %.sroa.0.033.us.us.i79.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i82.i ]
  %i.cb = tail call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core5sliceSh12strip_suffixBu_ECs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.us.us.i85.i, i64 noundef %.sroa.45.0.i.us.us.i84.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 1), !noalias !539 ; 2 uses
  %i.cc = extractvalue { ptr, i64 } %i.cb, 0      ; 3 uses
  %i.cd = extractvalue { ptr, i64 } %i.cb, 1      ; 3 uses
  %.not.us.us.i86.i = icmp eq ptr %i.cc, null
  br i1 %.not.us.us.i86.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, label %bb.y

bb.y:                                             ; preds = %.loopexit.split.us48.us.i83.i
  %cond.i87.i = icmp eq i64 %i.cd, 0
  br i1 %cond.i87.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -1
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !539, !noundef !4
  switch i8 %i.cg, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit [
    i8 92, label %.split.us44.us.i78.i.backedge
    i8 47, label %.split.us44.us.i78.i.backedge
  ]

.split.us44.us.i78.i.backedge:                    ; preds = %bb.z, %bb.z
  br label %.split.us44.us.i78.i

.split.us.i65.i:                                  ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i135143.i, i64 %.sroa.45.0.i.i134144.i
  br label %bb.aa

bb.aa:                                            ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i, %.split.us.i65.i
  %.sroa.2.018.i.i.i.us.i66.i = phi i64 [ %.sroa.45.0.i.i134144.i, %.split.us.i65.i ], [ %i.ck, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i ] ; 5 uses
  %i.ci = phi ptr [ %i.ch, %.split.us.i65.i ], [ %i.cj, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i ]
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -1 ; 3 uses
  %i.ck = add nsw i64 %.sroa.2.018.i.i.i.us.i66.i, -1 ; 3 uses
  %i.cl = load i8, ptr %i.cj, align 1, !alias.scope !540, !noalias !538, !noundef !4
  %i.cm = icmp eq i8 %i.cl, 92
  br i1 %i.cm, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i, label %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i67.i

_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i67.i: ; preds = %bb.aa
  %i.cn = icmp eq i64 %.sroa.2.018.i.i.i.us.i66.i, %.sroa.45.0.i.i134144.i
  br i1 %i.cn, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, label %bb.ab

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i: ; preds = %bb.aa
  %i.co = icmp eq ptr %.sroa.04.0.i.i135143.i, %i.cj
  br i1 %i.co, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, label %bb.aa

bb.ab:                                            ; preds = %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i67.i
  %i.cp = icmp ult i64 %i.ck, %.sroa.45.0.i.i134144.i
  br i1 %i.cp, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i, label %.split50.us.i68.i, !prof !522

.split50.us.i68.i:                                ; preds = %bb.x, %bb.ab
  %.us-phi51.i69.i = phi i64 [ %.sroa.45.0.i.i134144.i, %bb.ab ], [ %.sroa.8.032.us.us.i80.i, %bb.x ]
  %.us-phi52.i70.i = phi i64 [ %i.ck, %bb.ab ], [ %i.bw, %bb.x ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.us-phi52.i70.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi51.i69.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #12, !noalias !541
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i: ; preds = %bb.ab
  %i.cq = icmp ugt i64 %.sroa.2.018.i.i.i.us.i66.i, %.sroa.45.0.i.i134144.i
  br i1 %i.cq, label %.split54.us.i74.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, !prof !6

.split54.us.i74.i:                                ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i
  %.us-phi55.i75.i = phi i64 [ %.sroa.45.0.i.i134144.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i ], [ %.sroa.8.032.us.us.i80.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i ] ; 2 uses
  %.us-phi56.i76.i = phi i64 [ %.sroa.2.018.i.i.i.us.i66.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i ], [ %.sroa.2.018.i.i.i.us45.us.i81.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i89.i ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.us-phi56.i76.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi55.i75.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi55.i75.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #12, !noalias !542
  unreachable

bb.ac:                                            ; preds = %bb.u
  %.not157.i = icmp eq i64 %.sroa.45.0.i.i134144.i, 0
  br i1 %.not157.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = load i8, ptr %.sroa.04.0.i.i135143.i, align 1, !alias.scope !543, !noalias !544, !noundef !4 ; 2 uses
  %i.cs = icmp eq i8 %i.cr, 92
  %i.ct = icmp eq i8 %i.cr, 47
  %or.cond.i.i = and i1 %i.ct, %i.q
  %or.cond1.i.i = or i1 %i.cs, %or.cond.i.i
  br i1 %or.cond1.i.i, label %.lr.ph.i.i.i, label %.thread.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !527
  store ptr @7, ptr %i.b, align 8, !alias.scope !545, !noalias !546
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 11, ptr %i.cu, align 8, !alias.scope !545, !noalias !546
  br label %bb.al

.thread.i:                                        ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !527
  call fastcc void @_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.b, i8 %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.i135143.i, i64 noundef %.sroa.45.0.i.i134144.i), !noalias !528
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cw = load i8, ptr %i.cv, align 8, !range !3, !noalias !527, !noundef !4
  %.not55153.i = icmp eq i8 %i.cw, -1
  br i1 %.not55153.i, label %bb.al, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_.exit.thread154.i

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_.exit.thread154.i: ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !527
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_.exit.thread154.i, %bb.ad
  br i1 %i.q, label %.split.us44.us.i.i.i, label %.split.us.i.i.i

.split.us44.us.i.i.i:                             ; preds = %.lr.ph.i.i.i, %.split.us44.us.i.i.i.backedge
  %.sroa.0.033.us.us.i.i.i = phi ptr [ %i.dg, %.split.us44.us.i.i.i.backedge ], [ %.sroa.04.0.i.i135143.i, %.lr.ph.i.i.i ] ; 4 uses
  %.sroa.8.032.us.us.i.i.i = phi i64 [ %i.dh, %.split.us44.us.i.i.i.backedge ], [ %.sroa.45.0.i.i134144.i, %.lr.ph.i.i.i ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us.i.i.i, i64 %.sroa.8.032.us.us.i.i.i
  br label %bb.af

bb.af:                                            ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i.i, %.split.us44.us.i.i.i
  %.sroa.2.018.i.i.i.us45.us.i.i.i = phi i64 [ %.sroa.8.032.us.us.i.i.i, %.split.us44.us.i.i.i ], [ %i.da, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i.i ] ; 5 uses
  %i.cy = phi ptr [ %i.cx, %.split.us44.us.i.i.i ], [ %i.cz, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i.i ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -1 ; 3 uses
  %i.da = add nsw i64 %.sroa.2.018.i.i.i.us45.us.i.i.i, -1 ; 3 uses
  %i.db = load i8, ptr %i.cz, align 1, !alias.scope !548, !noalias !549, !noundef !4
  switch i8 %i.db, label %.split27.us.us.i.i.i [
    i8 92, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i.i
    i8 47, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i.i: ; preds = %bb.af, %bb.af
  %i.dc = icmp eq ptr %.sroa.0.033.us.us.i.i.i, %i.cz
  br i1 %i.dc, label %.loopexit.split.us48.us.i.i.i, label %bb.af

.split27.us.us.i.i.i:                             ; preds = %bb.af
  %i.dd = icmp eq i64 %.sroa.2.018.i.i.i.us45.us.i.i.i, %.sroa.8.032.us.us.i.i.i
  br i1 %i.dd, label %.loopexit.split.us48.us.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.split27.us.us.i.i.i
  %i.de = icmp ult i64 %i.da, %.sroa.8.032.us.us.i.i.i
  br i1 %i.de, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i, label %.split50.us.i.i.i, !prof !522

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i: ; preds = %bb.ag
  %4 = icmp ugt i64 %.sroa.2.018.i.i.i.us45.us.i.i.i, %.sroa.8.032.us.us.i.i.i
  br i1 %4, label %.split54.us.i.i.i, label %.loopexit.split.us48.us.i.i.i, !prof !6

.loopexit.split.us48.us.i.i.i:                    ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i, %.split27.us.us.i.i.i
  %.sroa.45.0.i.us.us.i.i.i = phi i64 [ %.sroa.8.032.us.us.i.i.i, %.split27.us.us.i.i.i ], [ %.sroa.2.018.i.i.i.us45.us.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i ], [ 0, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i.i ] ; 3 uses
  %.sroa.04.0.i.us.us.i.i.i = phi ptr [ %.sroa.0.033.us.us.i.i.i, %.split27.us.us.i.i.i ], [ %.sroa.0.033.us.us.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us47.us.i.i.i ]
  %i.df = tail call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core5sliceSh12strip_suffixBu_ECs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.us.us.i.i.i, i64 noundef %.sroa.45.0.i.us.us.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 1), !noalias !550 ; 2 uses
  %i.dg = extractvalue { ptr, i64 } %i.df, 0      ; 3 uses
  %i.dh = extractvalue { ptr, i64 } %i.df, 1      ; 3 uses
  %.not.us.us.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.us.us.i.i.i, label %.loopexit.i, label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split.us48.us.i.i.i
  %cond.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %cond.i.i.i, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.di = getelementptr i8, ptr %i.dg, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -1
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !550, !noundef !4
  switch i8 %i.dk, label %.loopexit.i [
    i8 92, label %.split.us44.us.i.i.i.backedge
    i8 47, label %.split.us44.us.i.i.i.backedge
  ]

.split.us44.us.i.i.i.backedge:                    ; preds = %bb.ai, %bb.ai
  br label %.split.us44.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i135143.i, i64 %.sroa.45.0.i.i134144.i
  br label %bb.aj

bb.aj:                                            ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i, %.split.us.i.i.i
  %.sroa.2.018.i.i.i.us.i.i.i = phi i64 [ %.sroa.45.0.i.i134144.i, %.split.us.i.i.i ], [ %i.do, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i ] ; 3 uses
  %i.dm = phi ptr [ %i.dl, %.split.us.i.i.i ], [ %i.dn, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i ]
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -1 ; 3 uses
  %i.do = add nsw i64 %.sroa.2.018.i.i.i.us.i.i.i, -1 ; 3 uses
  %i.dp = load i8, ptr %i.dn, align 1, !alias.scope !551, !noalias !549, !noundef !4
  %i.dq = icmp eq i8 %i.dp, 92
  br i1 %i.dq, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i, label %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i.i

_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i.i: ; preds = %bb.aj
  %i.dr = icmp eq i64 %.sroa.2.018.i.i.i.us.i.i.i, %.sroa.45.0.i.i134144.i
  br i1 %i.dr, label %.loopexit.i, label %bb.ak

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i: ; preds = %bb.aj
  %i.ds = icmp eq ptr %.sroa.04.0.i.i135143.i, %i.dn
  br i1 %i.ds, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, label %bb.aj

bb.ak:                                            ; preds = %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i.i
  %i.dt = icmp ult i64 %i.do, %.sroa.45.0.i.i134144.i
  br i1 %i.dt, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit, label %.split50.us.i.i.i, !prof !522

.split50.us.i.i.i:                                ; preds = %bb.ag, %bb.ak
  %.us-phi51.i.i.i = phi i64 [ %.sroa.45.0.i.i134144.i, %bb.ak ], [ %.sroa.8.032.us.us.i.i.i, %bb.ag ]
  %.us-phi52.i.i.i = phi i64 [ %i.do, %bb.ak ], [ %i.da, %bb.ag ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.us-phi52.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %.us-phi51.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #12, !noalias !552
  unreachable

.split54.us.i.i.i:                                ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.us.us.i.i.i
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.2.018.i.i.i.us45.us.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.8.032.us.us.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.8.032.us.us.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #12, !noalias !553
  unreachable

bb.al:                                            ; preds = %bb.ae, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !527
  br label %bb.v

.loopexit.i:                                      ; preds = %bb.ai, %.loopexit.split.us48.us.i.i.i, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i.i
  %.sroa.8.1.i.i.i = phi i64 [ %.sroa.45.0.i.i134144.i, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i.i.i ], [ %.sroa.45.0.i.us.us.i.i.i, %.loopexit.split.us48.us.i.i.i ], [ %.sroa.45.0.i.us.us.i.i.i, %bb.ai ]
  %.sroa.8.1.i.i.fr.i = freeze i64 %.sroa.8.1.i.i.i
  %.sroa.8.1.i.i.mux266.i = tail call i64 @llvm.umax.i64(i64 %.sroa.8.1.i.i.fr.i, i64 1)
  br label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread: ; preds = %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i, %bb.l, %bb.t, %bb.n
  %.sroa.9.0.ph = phi i64 [ 22, %bb.n ], [ 22, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i ], [ %.sroa.7.0.ph.i, %bb.t ], [ %i.av, %bb.l ]
  %.sroa.0.0.ph = phi ptr [ @5, %bb.n ], [ @5, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_.exit.thread.i ], [ %.sroa.0100.0.ph.i, %bb.t ], [ %i.at, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.252.i)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.ph, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0.ph, ptr %i.dv, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.au

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i, %bb.ah, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i, %.loopexit.split.us48.us.i83.i, %bb.y, %bb.z, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i67.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i, %bb.ak, %.loopexit.i
  %.sroa.454.0.i = phi i64 [ %.sroa.45.0.i.us.us.i84.i, %bb.z ], [ %.sroa.2.018.i.i.i.us.i.i.i, %bb.ak ], [ 0, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i77.i ], [ %.sroa.2.018.i.i.i.us.i66.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i71.i ], [ %.sroa.45.0.i.i134144.i, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser17move_back_to_next00E00Bc_.exit.i.i.i.i.i.us.i67.i ], [ %.sroa.8.1.i.i.mux266.i, %.loopexit.i ], [ 1, %bb.ah ], [ %.sroa.45.0.i.us.us.i84.i, %.loopexit.split.us48.us.i83.i ], [ 0, %bb.y ], [ 1, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_.exit.i.i.i.us.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.23, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.252.i, i64 55, i1 false)
  br label %bb.ar

bb.am:                                            ; preds = %.thread
  store i8 -1, ptr %i.g, align 8
  %i.dw = icmp ugt i64 %.sroa.6.0.copyload.i, %i.f
  br i1 %i.dw, label %bb.ap, label %bb.ao, !prof !6

bb.an:                                            ; preds = %bb.c
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @16, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 11, ptr %i.dy, align 8
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.dz = sub nuw i64 %i.f, %.sroa.6.0.copyload.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.6.0.copyload.i
  store ptr %i.ea, ptr %1, align 8
  store i64 %i.dz, ptr %i.e, align 8
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
  %.sroa.16.051 = phi i8 [ %i.ar, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread47 ], [ %i.bl, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit ], [ %i.bl, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_.exit.thread53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.252.i)
  %i.eb = add i64 %.sroa.9.052, %.sroa.012.038    ; 3 uses
  %.not28 = icmp ugt i64 %i.eb, %i.f
  br i1 %.not28, label %bb.at, label %bb.as, !prof !8

bb.as:                                            ; preds = %bb.ar
  store i64 %i.eb, ptr %i.e, align 8
  store i8 %.sroa.16.051, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.23, i64 55, i1 false)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.eb, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #12
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
  %i.c = load i64, ptr %i.a, align 8, !range !5, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 7 uses
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
  %i.m = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 3), !noalias !596
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
  %i.r = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef range(i64 0, -9223372036854775808) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1), !noalias !597
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.b, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef range(i64 0, -9223372036854775808) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1), !noalias !597
  br i1 %i.s, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.k, label %bb.m, !prof !6

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #12, !noalias !597
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.y = getelementptr i8, ptr %i.f, i64 %i.h     ; 2 uses
  %i.z = icmp samesign eq i64 %i.w, 0
  br i1 %i.z, label %bb.p, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.m
  br i1 %i.b, label %.lr.ph.i.i.i.us.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.us.i:                                ; preds = %.lr.ph.i.i.i.preheader.i, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i
  %i.aa = phi ptr [ %i.ae, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i ], [ %i.x, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %i.ab = phi i64 [ %i.af, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1, !alias.scope !601, !noalias !602, !noundef !4
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
  %i.aj = load i8, ptr %i.ah, align 1, !alias.scope !601, !noalias !602, !noundef !4
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
  br i1 %i.ao, label %bb.o, label %.thread6.i.i, !prof !6

.thread6.i.i:                                     ; preds = %bb.n
  %i.ap = sub nuw nsw i64 %i.w, %.us-phi.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi.i
  br label %.loopexit

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.us-phi.i, i64 noundef range(i64 0, -9223372036854775808) %i.w, i64 noundef range(i64 0, -9223372036854775808) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12, !noalias !603
  unreachable

bb.p:                                             ; preds = %.split.us.i, %bb.m
  store ptr @5, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 22, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.as, align 8
  br label %bb.x

.loopexit:                                        ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i, %.thread6.i.i
  %.sroa.02.0.i14.i.i = phi ptr [ %i.aq, %.thread6.i.i ], [ inttoptr (i64 1 to ptr), %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i ] ; 10 uses
  %.sroa.4.0.i13.i.i = phi i64 [ %i.ap, %.thread6.i.i ], [ 0, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i ], [ 0, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i ] ; 11 uses
  %.sroa.44.0.i11.i.i = phi i64 [ %.us-phi.i, %.thread6.i.i ], [ %i.w, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i ], [ %i.w, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i ]
  %i.at = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i14.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.0.i13.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1), !noalias !604
  br i1 %i.at, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.loopexit
  br i1 %i.b, label %.thread228, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i14.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.0.i13.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1), !noalias !604
  br i1 %i.au, label %bb.s, label %.thread227

bb.s:                                             ; preds = %bb.r, %.loopexit
  %i.av = icmp eq i64 %.sroa.4.0.i13.i.i, 0
  br i1 %i.av, label %bb.t, label %bb.u, !prof !6

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #12, !noalias !604
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.aw = add nsw i64 %.sroa.4.0.i13.i.i, -1      ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i14.i.i, i64 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.ay = icmp samesign eq i64 %i.aw, 0
  br i1 %i.ay, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread, label %.lr.ph.i.i.i.preheader.i129

.thread228:                                       ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i14.i.i, i64 %.sroa.4.0.i13.i.i
  %i.ba = icmp samesign eq i64 %.sroa.4.0.i13.i.i, 0
  br i1 %i.ba, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread, label %.lr.ph.i.i.i.us.i131.preheader

.thread227:                                       ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i14.i.i, i64 %.sroa.4.0.i13.i.i
  %i.bc = icmp samesign eq i64 %.sroa.4.0.i13.i.i, 0
  br i1 %i.bc, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread, label %.lr.ph.i.i.i.i143.preheader

.lr.ph.i.i.i.preheader.i129:                      ; preds = %bb.u
  %i.bd = getelementptr i8, ptr %.sroa.02.0.i14.i.i, i64 %.sroa.4.0.i13.i.i ; 2 uses
  br i1 %i.b, label %.lr.ph.i.i.i.us.i131.preheader, label %.lr.ph.i.i.i.i143.preheader

.lr.ph.i.i.i.i143.preheader:                      ; preds = %.thread227, %.lr.ph.i.i.i.preheader.i129
  %i.be = phi i64 [ %i.aw, %.lr.ph.i.i.i.preheader.i129 ], [ %.sroa.4.0.i13.i.i, %.thread227 ] ; 3 uses
  %i.bf = phi ptr [ %i.ax, %.lr.ph.i.i.i.preheader.i129 ], [ %.sroa.02.0.i14.i.i, %.thread227 ] ; 4 uses
  %i.bg = phi ptr [ %i.bd, %.lr.ph.i.i.i.preheader.i129 ], [ %i.bb, %.thread227 ]
  br label %.lr.ph.i.i.i.i143

.lr.ph.i.i.i.us.i131.preheader:                   ; preds = %.thread228, %.lr.ph.i.i.i.preheader.i129
  %i.bh = phi i64 [ %i.aw, %.lr.ph.i.i.i.preheader.i129 ], [ %.sroa.4.0.i13.i.i, %.thread228 ] ; 2 uses
  %i.bi = phi ptr [ %i.ax, %.lr.ph.i.i.i.preheader.i129 ], [ %.sroa.02.0.i14.i.i, %.thread228 ] ; 3 uses
  %i.bj = phi ptr [ %i.bd, %.lr.ph.i.i.i.preheader.i129 ], [ %i.az, %.thread228 ]
  br label %.lr.ph.i.i.i.us.i131

.lr.ph.i.i.i.us.i131:                             ; preds = %.lr.ph.i.i.i.us.i131.preheader, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132
  %i.bk = phi ptr [ %i.bo, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132 ], [ %i.bi, %.lr.ph.i.i.i.us.i131.preheader ] ; 2 uses
  %i.bl = phi i64 [ %i.bp, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132 ], [ 0, %.lr.ph.i.i.i.us.i131.preheader ] ; 2 uses
  %i.bm = load i8, ptr %i.bk, align 1, !alias.scope !608, !noalias !609, !noundef !4
  %i.bn = icmp eq i8 %i.bm, 92
  br i1 %i.bn, label %.split.us.i140, label %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132

_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132: ; preds = %.lr.ph.i.i.i.us.i131
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  %i.bp = add nuw nsw i64 %i.bl, 1
  %i.bq = icmp eq ptr %i.bo, %i.bj
  br i1 %i.bq, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread, label %.lr.ph.i.i.i.us.i131

.lr.ph.i.i.i.i143:                                ; preds = %.lr.ph.i.i.i.i143.preheader, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144
  %i.br = phi ptr [ %i.bu, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144 ], [ %i.bf, %.lr.ph.i.i.i.i143.preheader ] ; 2 uses
  %i.bs = phi i64 [ %i.bv, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144 ], [ 0, %.lr.ph.i.i.i.i143.preheader ] ; 3 uses
  %i.bt = load i8, ptr %i.br, align 1, !alias.scope !608, !noalias !609, !noundef !4
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
  %i.bx = phi i64 [ %i.bh, %.lr.ph.i.i.i.us.i131 ], [ %i.be, %.lr.ph.i.i.i.i143 ], [ %i.be, %.lr.ph.i.i.i.i143 ] ; 5 uses
  %i.by = phi ptr [ %i.bi, %.lr.ph.i.i.i.us.i131 ], [ %i.bf, %.lr.ph.i.i.i.i143 ], [ %i.bf, %.lr.ph.i.i.i.i143 ] ; 3 uses
  %.us-phi.i141 = phi i64 [ %i.bl, %.lr.ph.i.i.i.us.i131 ], [ %i.bs, %.lr.ph.i.i.i.i143 ], [ %i.bs, %.lr.ph.i.i.i.i143 ] ; 6 uses
  %i.bz = icmp eq i64 %.us-phi.i141, 0
  br i1 %i.bz, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread, label %bb.v

bb.v:                                             ; preds = %.split.us.i140
  %i.ca = icmp samesign ugt i64 %.us-phi.i141, %i.bx
  br i1 %i.ca, label %bb.w, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145, !prof !6

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.us-phi.i141, i64 noundef range(i64 0, -9223372036854775808) %i.bx, i64 noundef range(i64 0, -9223372036854775808) %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12, !noalias !610
  unreachable

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145: ; preds = %bb.v
  %i.cb = sub nuw nsw i64 %i.bx, %.us-phi.i141
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %.us-phi.i141
  br label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145.thread: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132, %.thread228, %.thread227, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145, %bb.u, %.split.us.i140
  %.sroa.0108.0 = phi ptr [ %i.by, %.split.us.i140 ], [ %i.ax, %bb.u ], [ %i.cc, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145 ], [ %.sroa.02.0.i14.i.i, %.thread228 ], [ inttoptr (i64 1 to ptr), %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132 ], [ %.sroa.02.0.i14.i.i, %.thread227 ], [ inttoptr (i64 1 to ptr), %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144 ]
  %.sroa.5111.0 = phi i64 [ %i.bx, %.split.us.i140 ], [ 0, %bb.u ], [ %i.cb, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145 ], [ 0, %.thread228 ], [ 0, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132 ], [ 0, %.thread227 ], [ 0, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144 ]
  %.sroa.3.0 = phi i64 [ 0, %.split.us.i140 ], [ 0, %bb.u ], [ %.us-phi.i141, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145 ], [ 0, %.thread228 ], [ %i.bh, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132 ], [ 0, %.thread227 ], [ %i.be, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144 ]
  %.sroa.046.0 = phi ptr [ inttoptr (i64 1 to ptr), %.split.us.i140 ], [ inttoptr (i64 1 to ptr), %bb.u ], [ %i.by, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_.exit145 ], [ inttoptr (i64 1 to ptr), %.thread228 ], [ %i.bi, %_RNCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBc_7windows8non_utf810components6parser12normal_bytes00E00Bc_.exit.i.i.i.i.i.us.i132 ], [ inttoptr (i64 1 to ptr), %.thread227 ], [ %i.bf, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_.exit.i.i.i.i144 ]
  store ptr %.sroa.0108.0, ptr %0, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5111.0, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %.sroa.640.0..sroa_idx, align 8
  %.sroa.640.sroa.6.0..sroa.640.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.x, ptr %.sroa.640.sroa.6.0..sroa.640.0..sroa_idx.sroa_idx, align 8
  %.sroa.640.sroa.7.0..sroa.640.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.44.0.i11.i.i, ptr %.sroa.640.sroa.7.0..sroa.640.0..sroa_idx.sroa_idx, align 8
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
  %i.b = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1), !noalias !620
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1), !noalias !620
  br i1 %i.c, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #12, !noalias !620
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = add nsw i64 %2, -1                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1), !noalias !621
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1), !noalias !621
  br i1 %i.h, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #12, !noalias !621
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.j = add nsw i64 %2, -2                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !622
  store i8 63, ptr %i.a, align 1, !noalias !622
  %i.m = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !622
  br i1 %i.m, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.n = add nsw i64 %2, -3                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.p = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1), !noalias !624
  br i1 %i.p, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1), !noalias !624
  br i1 %i.q, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %bb.n, label %bb.o, !prof !6

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #12, !noalias !624
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
!3 = !{i8 -1, i8 10}
!4 = !{}
!5 = !{i64 0, i64 2}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i8 0, i8 2}
!8 = !{!"branch_weights", i32 4001, i32 4000000}
!9 = distinct !{!9, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB1a_6parser8filename0NCNvB2j_18move_front_to_next0E0Ba_"}
!10 = distinct !{!10, !9, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB1a_6parser8filename0NCNvB2j_18move_front_to_next0E0Ba_: argument 0"}
!11 = distinct !{!11, !9, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB1a_6parser8filename0NCNvB2j_18move_front_to_next0E0Ba_: argument 2"}
!12 = distinct !{!12, !9, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB1a_6parser8filename0NCNvB2j_18move_front_to_next0E0Ba_: argument 1"}
!13 = distinct !{!13, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNCNvNtB1a_6parser11parse_front00NCNvB2l_18move_front_to_next0E0Ba_"}
!14 = distinct !{!14, !13, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNCNvNtB1a_6parser11parse_front00NCNvB2l_18move_front_to_next0E0Ba_: argument 0"}
!15 = distinct !{!15, !13, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNCNvNtB1a_6parser11parse_front00NCNvB2l_18move_front_to_next0E0Ba_: argument 2"}
!16 = distinct !{!16, !13, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNCNvNtB1a_6parser11parse_front00NCNvB2l_18move_front_to_next0E0Ba_: argument 1"}
!17 = distinct !{!17, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11parse_front00Bd_"}
!18 = distinct !{!18, !17, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11parse_front00Bd_: argument 0"}
!19 = distinct !{!19, !17, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11parse_front00Bd_: argument 2"}
!20 = distinct !{!20, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_"}
!21 = distinct !{!21, !20, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_: argument 1"}
!22 = distinct !{!22, !17, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11parse_front00Bd_: argument 1"}
!23 = distinct !{!23, !20, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_: argument 0"}
!24 = distinct !{!24, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_"}
!25 = distinct !{!25, !24, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 0"}
!26 = distinct !{!26, !24, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 1"}
!27 = distinct !{!27, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!28 = distinct !{!28, !27, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!29 = !{!10}
!30 = !{!10, !12, !11}
!31 = !{!12, !11}
!32 = !{!10, !12}
!33 = !{!14}
!34 = !{!15}
!35 = !{!14, !16, !15}
!36 = !{!18}
!37 = !{!19}
!38 = !{!21, !19, !15}
!39 = !{!23, !18, !22, !14, !16}
!40 = !{!25}
!41 = !{!26}
!42 = !{!28, !25, !18, !22, !14, !16}
!43 = !{!26, !19, !15}
!44 = !{!25, !18, !22, !14, !16}
!45 = !{!25, !18}
!46 = !{!26, !22, !19, !14, !16, !15}
!47 = !{!22, !19, !14, !16, !15}
!48 = !{!16, !15}
!49 = !{!14, !16}
!50 = distinct !{!50, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0NCNCNvB21_18move_front_to_next0s_0E0Ba_"}
!51 = distinct !{!51, !50, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0NCNCNvB21_18move_front_to_next0s_0E0Ba_: argument 1"}
!52 = distinct !{!52, !50, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0NCNCNvB21_18move_front_to_next0s_0E0Ba_: argument 0"}
!53 = distinct !{!53, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0Ba_"}
!54 = distinct !{!54, !53, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0Ba_: argument 1"}
!55 = distinct !{!55, !53, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0Ba_: argument 0"}
!56 = distinct !{!56, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0Ba_"}
!57 = distinct !{!57, !56, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0Ba_: argument 1"}
!58 = distinct !{!58, !56, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_7windows8non_utf810components6parser9separator0E0Ba_: argument 0"}
!59 = distinct !{!59, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuE8push_mutCs9LqqPKWwQFK_10typed_path"}
!60 = distinct !{!60, !59, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuE8push_mutCs9LqqPKWwQFK_10typed_path: argument 0"}
!61 = distinct !{!61, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0NCB1Z_0E0Ba_"}
!62 = distinct !{!62, !61, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0NCB1Z_0E0Ba_: argument 1"}
!63 = distinct !{!63, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0Ba_"}
!64 = distinct !{!64, !63, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0Ba_: argument 1"}
!65 = distinct !{!65, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0Ba_"}
!66 = distinct !{!66, !65, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0Ba_: argument 1"}
!67 = distinct !{!67, !61, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0NCB1Z_0E0Ba_: argument 0"}
!68 = distinct !{!68, !63, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0Ba_: argument 0"}
!69 = distinct !{!69, !65, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser18move_front_to_next0s0_0E0Ba_: argument 0"}
!70 = distinct !{!70, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser18move_front_to_next0s0_0Bd_"}
!71 = distinct !{!71, !70, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser18move_front_to_next0s0_0Bd_: argument 1"}
!72 = distinct !{!72, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB15_6parser7cur_dir0NCNCNCNvB2e_18move_front_to_next0s0_00E0Ba_"}
!73 = distinct !{!73, !72, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB15_6parser7cur_dir0NCNCNCNvB2e_18move_front_to_next0s0_00E0Ba_: argument 1"}
!74 = distinct !{!74, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_"}
!75 = distinct !{!75, !74, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 1"}
!76 = distinct !{!76, !70, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser18move_front_to_next0s0_0Bd_: argument 0"}
!77 = distinct !{!77, !72, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentuNCNvNtB15_6parser7cur_dir0NCNCNCNvB2e_18move_front_to_next0s0_00E0Ba_: argument 0"}
!78 = distinct !{!78, !74, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 0"}
!79 = distinct !{!79, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuE8push_mutCs9LqqPKWwQFK_10typed_path"}
!80 = distinct !{!80, !79, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuE8push_mutCs9LqqPKWwQFK_10typed_path: argument 0"}
!81 = !{!58, !57, !55, !54, !52, !51}
!82 = !{!58, !55, !52}
!83 = !{!55, !52}
!84 = !{!60}
!85 = !{!57, !55, !54, !52, !51}
!86 = !{!52, !51}
!87 = !{!52}
!88 = !{!62}
!89 = !{!64}
!90 = !{!66}
!91 = !{!69, !66, !68, !64, !67, !62}
!92 = !{!69, !68, !67}
!93 = !{!75, !73, !71, !66, !64, !62}
!94 = !{!78, !77, !76, !69, !68, !67}
!95 = !{!80}
!96 = !{!66, !68, !64, !67, !62}
!97 = !{!67, !62}
!98 = !{!67}
!99 = distinct !{!99, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!100 = distinct !{!100, !99, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!101 = !{!100}
!102 = distinct !{!102, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parent_dir0Bb_"}
!103 = distinct !{!103, !102, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parent_dir0Bb_: argument 0"}
!104 = distinct !{!104, !102, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parent_dir0Bb_: argument 1"}
!105 = distinct !{!105, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!106 = distinct !{!106, !105, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!107 = distinct !{!107, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_"}
!108 = distinct !{!108, !107, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 0"}
!109 = distinct !{!109, !107, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 1"}
!110 = distinct !{!110, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!111 = distinct !{!111, !110, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!112 = distinct !{!112, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6normal0Bb_"}
!113 = distinct !{!113, !112, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6normal0Bb_: argument 0"}
!114 = distinct !{!114, !112, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser6normal0Bb_: argument 1"}
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!268 = distinct !{!268, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_"}
!269 = distinct !{!269, !268, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 2"}
!270 = distinct !{!270, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!271 = distinct !{!271, !270, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!272 = distinct !{!272, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!273 = distinct !{!273, !272, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!274 = distinct !{!274, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_"}
!275 = distinct !{!275, !274, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_: argument 0"}
!276 = distinct !{!276, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_"}
!277 = distinct !{!277, !276, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_: argument 0"}
!278 = distinct !{!278, !268, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 1"}
!279 = distinct !{!279, !268, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 0"}
!280 = distinct !{!280, !270, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!281 = distinct !{!281, !272, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!282 = distinct !{!282, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_"}
!283 = distinct !{!283, !282, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 2"}
!284 = distinct !{!284, !282, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 1"}
!285 = distinct !{!285, !282, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 0"}
!286 = distinct !{!286, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!287 = distinct !{!287, !286, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!288 = distinct !{!288, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_"}
!289 = distinct !{!289, !288, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 2"}
!290 = distinct !{!290, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!291 = distinct !{!291, !290, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!292 = distinct !{!292, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!293 = distinct !{!293, !292, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!294 = distinct !{!294, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_"}
!295 = distinct !{!295, !294, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_: argument 0"}
!296 = distinct !{!296, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_"}
!297 = distinct !{!297, !296, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_: argument 0"}
!298 = distinct !{!298, !288, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 1"}
!299 = distinct !{!299, !288, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 0"}
!300 = distinct !{!300, !290, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!301 = distinct !{!301, !292, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!302 = distinct !{!302, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_"}
!303 = distinct !{!303, !302, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 2"}
!304 = distinct !{!304, !302, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 1"}
!305 = distinct !{!305, !302, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 0"}
!306 = distinct !{!306, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk"}
!307 = distinct !{!307, !306, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk: argument 0"}
!308 = distinct !{!308, !306, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser11prefix_disk: argument 1"}
!309 = distinct !{!309, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3maphNtNtNtNtNtNtBa_7windows8non_utf810components9component6prefix13WindowsPrefixNvNtB18_6parser9disk_byteNcNtB12_4Disk0E0Ba_"}
!310 = distinct !{!310, !309, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3maphNtNtNtNtNtNtBa_7windows8non_utf810components9component6prefix13WindowsPrefixNvNtB18_6parser9disk_byteNcNtB12_4Disk0E0Ba_: argument 0"}
!311 = distinct !{!311, !309, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3maphNtNtNtNtNtNtBa_7windows8non_utf810components9component6prefix13WindowsPrefixNvNtB18_6parser9disk_byteNcNtB12_4Disk0E0Ba_: argument 1"}
!312 = distinct !{!312, !"_RNvYNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9disk_byteINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRShEE8call_mutBc_"}
!313 = distinct !{!313, !312, !"_RNvYNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9disk_byteINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRShEE8call_mutBc_: argument 1"}
!314 = distinct !{!314, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9disk_byte"}
!315 = distinct !{!315, !314, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9disk_byte: argument 1"}
!316 = distinct !{!316, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12drive_letter"}
!317 = distinct !{!317, !316, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12drive_letter: argument 1"}
!318 = distinct !{!318, !312, !"_RNvYNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9disk_byteINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRShEE8call_mutBc_: argument 0"}
!319 = distinct !{!319, !314, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9disk_byte: argument 0"}
!320 = distinct !{!320, !316, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12drive_letter: argument 0"}
!321 = distinct !{!321, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!322 = distinct !{!322, !321, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!323 = distinct !{!323, !321, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!324 = !{!148}
!325 = !{!149, !148}
!326 = !{!151}
!327 = !{!152}
!328 = !{!154}
!329 = !{!155}
!330 = !{!149}
!331 = !{i8 -1, i8 6}
!332 = !{!157}
!333 = !{!159}
!334 = !{!164, !163, !159, !161, !157, !160, !154, !155, !151, !152, !149, !148}
!335 = !{!164, !159, !157, !154, !151, !149}
!336 = !{!166}
!337 = !{!168}
!338 = !{!170}
!339 = !{!170, !168, !166}
!340 = !{!173, !172, !171, !164, !159, !157, !154, !151, !149}
!341 = !{!173, !170, !172, !168, !171, !166, !164, !159, !157, !154, !151, !149}
!342 = !{!176, !175, !172, !168, !171, !166, !164, !163, !159, !161, !157, !160, !154, !155, !151, !152, !149, !148}
!343 = !{!176, !172, !171, !164, !159, !157, !154, !151, !149}
!344 = !{!159, !157, !154, !151}
!345 = !{!161, !160, !155, !152, !149, !148}
!346 = !{!178}
!347 = !{!188, !187, !185, !184, !182, !181, !178, !179, !154, !155, !151, !152, !149, !148}
!348 = !{!188, !185, !182, !178, !154, !151, !149}
!349 = !{!190}
!350 = !{!192}
!351 = !{!194}
!352 = !{!194, !192, !190}
!353 = !{!197, !196, !195, !188, !185, !182, !178, !154, !151, !149}
!354 = !{!197, !194, !196, !192, !195, !190, !188, !185, !182, !178, !154, !151, !149}
!355 = !{!200, !199, !196, !192, !195, !190, !188, !187, !185, !184, !182, !181, !178, !179, !154, !155, !151, !152, !149, !148}
!356 = !{!200, !196, !195, !188, !185, !182, !178, !154, !151, !149}
!357 = !{!178, !179, !154, !155, !151, !152, !149, !148}
!358 = !{!178, !154, !151, !149}
!359 = !{!202}
!360 = !{!204}
!361 = !{!206}
!362 = !{!208}
!363 = !{!212, !210, !208, !206, !204, !202}
!364 = !{!221, !220, !219, !217, !216, !215, !214, !213, !178, !154, !151, !149}
!365 = !{!217, !208, !216, !206, !215, !214, !204, !213, !202, !178, !154, !151, !149}
!366 = !{!227, !225, !223, !213, !178, !154, !151, !149}
!367 = !{!178, !154, !151}
!368 = !{!179, !155, !152, !149, !148}
!369 = !{!229}
!370 = !{!230}
!371 = !{!232, !229, !154, !151, !149}
!372 = !{!234, !229, !154, !151, !149}
!373 = !{!237, !236, !229, !230, !154, !155, !151, !152, !149, !148}
!374 = !{!237, !229, !154, !151, !149}
!375 = !{!239, !229, !154, !151, !149}
!376 = !{!241}
!377 = !{!242}
!378 = !{!244}
!379 = !{!246}
!380 = !{!248}
!381 = !{!252, !250, !248, !246, !244, !242, !230, !155, !152, !148}
!382 = !{!260, !259, !258, !256, !255, !254, !253, !241, !229, !154, !151, !149}
!383 = !{!256, !248, !255, !246, !254, !253, !244, !241, !242, !229, !154, !151, !149}
!384 = !{!241, !229, !154, !151}
!385 = !{!242, !230, !155, !152, !149, !148}
!386 = !{!262}
!387 = !{!263}
!388 = !{!265, !262, !151, !149}
!389 = !{!267, !262, !151, !149}
!390 = !{!269}
!391 = !{!271}
!392 = !{!273}
!393 = !{!277, !275, !273, !271, !269, !263, !152, !148}
!394 = !{!285, !284, !283, !281, !280, !279, !278, !262, !151, !149}
!395 = !{!281, !273, !280, !271, !279, !278, !269, !262, !151, !149}
!396 = !{!287, !262, !151, !149}
!397 = !{!289}
!398 = !{!291}
!399 = !{!293}
!400 = !{!297, !295, !293, !291, !289}
!401 = !{!305, !304, !303, !301, !300, !299, !298, !262, !151, !149}
!402 = !{!301, !293, !300, !291, !299, !298, !289, !262, !151, !149}
!403 = !{!307}
!404 = !{!308}
!405 = !{!310}
!406 = !{!311}
!407 = !{!313}
!408 = !{!315}
!409 = !{!317}
!410 = !{!317, !315, !313, !311, !308, !152, !148}
!411 = !{!320, !319, !318, !310, !307, !151, !149}
!412 = !{!320, !317, !319, !315, !318, !313, !310, !311, !307, !308, !151, !149}
!413 = !{!323, !322, !319, !315, !318, !313, !310, !311, !307, !308, !151, !152, !149, !148}
!414 = !{!323, !319, !318, !310, !307, !151, !149}
!415 = !{!310, !307, !151}
!416 = !{!311, !308, !152, !149, !148}
!417 = !{!262, !151}
!418 = !{!263, !152, !149, !148}
!419 = distinct !{!419, !"_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parserNtB4_6Parser24remaining_without_prefix"}
!420 = distinct !{!420, !419, !"_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parserNtB4_6Parser24remaining_without_prefix: argument 0"}
!421 = distinct !{!421, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_"}
!422 = distinct !{!422, !421, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_: argument 2"}
!423 = distinct !{!423, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_"}
!424 = distinct !{!424, !423, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_: argument 1"}
!425 = distinct !{!425, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_"}
!426 = distinct !{!426, !425, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_: argument 1"}
!427 = distinct !{!427, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser17move_back_to_next00E00E0B1M_"}
!428 = distinct !{!428, !427, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser17move_back_to_next00E00E0B1M_: argument 0"}
!429 = distinct !{!429, !421, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_: argument 1"}
!430 = distinct !{!430, !421, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser10parse_back0Bb_: argument 0"}
!431 = distinct !{!431, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_"}
!432 = distinct !{!432, !431, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 1"}
!433 = distinct !{!433, !431, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 0"}
!434 = distinct !{!434, !423, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_: argument 0"}
!435 = distinct !{!435, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser17move_back_to_next00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_"}
!436 = distinct !{!436, !435, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser17move_back_to_next00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_: argument 0"}
!437 = distinct !{!437, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_"}
!438 = distinct !{!438, !437, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_: argument 1"}
!439 = distinct !{!439, !437, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_: argument 0"}
!440 = distinct !{!440, !425, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_: argument 0"}
!441 = distinct !{!441, !431, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 2"}
!442 = distinct !{!442, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path"}
!443 = distinct !{!443, !442, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 1"}
!444 = distinct !{!444, !442, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 0"}
!445 = distinct !{!445, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_"}
!446 = distinct !{!446, !445, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_: argument 1"}
!447 = distinct !{!447, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_"}
!448 = distinct !{!448, !447, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_: argument 1"}
!449 = distinct !{!449, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_"}
!450 = distinct !{!450, !449, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_: argument 1"}
!451 = distinct !{!451, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser10parse_back00E00E0B1M_"}
!452 = distinct !{!452, !451, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser10parse_back00E00E0B1M_: argument 0"}
!453 = distinct !{!453, !445, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_: argument 0"}
!454 = distinct !{!454, !447, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser10parse_back00E0Ba_: argument 0"}
!455 = distinct !{!455, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser10parse_back00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_"}
!456 = distinct !{!456, !455, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser10parse_back00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_: argument 0"}
!457 = distinct !{!457, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser10parse_back00E00E0E0B3c_EB4C_"}
!458 = distinct !{!458, !457, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser10parse_back00E00E0E0B3c_EB4C_: argument 1"}
!459 = distinct !{!459, !457, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser10parse_back00E00E0E0B3c_EB4C_: argument 0"}
!460 = distinct !{!460, !449, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser10parse_back00E00E0E0B3S_: argument 0"}
!461 = distinct !{!461, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path"}
!462 = distinct !{!462, !461, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 1"}
!463 = distinct !{!463, !461, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 0"}
!464 = distinct !{!464, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentNCNvNtB1h_6parser8filename0E0Ba_"}
!465 = distinct !{!465, !464, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentNCNvNtB1h_6parser8filename0E0Ba_: argument 2"}
!466 = distinct !{!466, !464, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentNCNvNtB1h_6parser8filename0E0Ba_: argument 1"}
!467 = distinct !{!467, !464, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_7windows8non_utf810components9component16WindowsComponentNCNvNtB1h_6parser8filename0E0Ba_: argument 0"}
!468 = distinct !{!468, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_"}
!469 = distinct !{!469, !468, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_: argument 1"}
!470 = distinct !{!470, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_"}
!471 = distinct !{!471, !470, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_: argument 1"}
!472 = distinct !{!472, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser17move_back_to_next00E00E0B1M_"}
!473 = distinct !{!473, !472, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser17move_back_to_next00E00E0B1M_: argument 0"}
!474 = distinct !{!474, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_"}
!475 = distinct !{!475, !474, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 1"}
!476 = distinct !{!476, !474, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 0"}
!477 = distinct !{!477, !468, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_: argument 0"}
!478 = distinct !{!478, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser17move_back_to_next00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_"}
!479 = distinct !{!479, !478, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser17move_back_to_next00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_: argument 0"}
!480 = distinct !{!480, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_"}
!481 = distinct !{!481, !480, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_: argument 1"}
!482 = distinct !{!482, !480, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_: argument 0"}
!483 = distinct !{!483, !470, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_: argument 0"}
!484 = distinct !{!484, !474, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 2"}
!485 = distinct !{!485, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path"}
!486 = distinct !{!486, !485, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 1"}
!487 = distinct !{!487, !485, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 0"}
!488 = distinct !{!488, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_"}
!489 = distinct !{!489, !488, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_: argument 1"}
!490 = distinct !{!490, !488, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser8root_dir0Bb_: argument 0"}
!491 = distinct !{!491, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_"}
!492 = distinct !{!492, !491, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 0"}
!493 = distinct !{!493, !491, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser7cur_dir0Bb_: argument 1"}
!494 = distinct !{!494, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_"}
!495 = distinct !{!495, !494, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_: argument 1"}
!496 = distinct !{!496, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_"}
!497 = distinct !{!497, !496, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_: argument 1"}
!498 = distinct !{!498, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser17move_back_to_next00E00E0B1M_"}
!499 = distinct !{!499, !498, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_7windows8non_utf810components6parser17move_back_to_next00E00E0B1M_: argument 0"}
!500 = distinct !{!500, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12consumed_cntuNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next0E0Ba_"}
!501 = distinct !{!501, !500, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12consumed_cntuNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next0E0Ba_: argument 0"}
!502 = distinct !{!502, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_"}
!503 = distinct !{!503, !502, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 1"}
!504 = distinct !{!504, !502, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 0"}
!505 = distinct !{!505, !494, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next00E0Ba_: argument 0"}
!506 = distinct !{!506, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser17move_back_to_next00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_"}
!507 = distinct !{!507, !506, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_7windows8non_utf810components6parser17move_back_to_next00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_: argument 0"}
!508 = distinct !{!508, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_"}
!509 = distinct !{!509, !508, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_: argument 1"}
!510 = distinct !{!510, !508, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3c_EB4C_: argument 0"}
!511 = distinct !{!511, !496, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_7windows8non_utf810components6parser17move_back_to_next00E00E0E0B3S_: argument 0"}
!512 = distinct !{!512, !500, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12consumed_cntuNCNvNtNtNtNtBa_7windows8non_utf810components6parser17move_back_to_next0E0Ba_: argument 1"}
!513 = distinct !{!513, !502, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser17move_back_to_next0Bb_: argument 2"}
!514 = distinct !{!514, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path"}
!515 = distinct !{!515, !514, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 1"}
!516 = distinct !{!516, !514, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 0"}
!517 = !{!420}
!518 = !{!422}
!519 = !{!424}
!520 = !{!428, !426, !424}
!521 = !{!440, !439, !438, !436, !434, !433, !432, !430, !429}
!522 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!523 = !{!433, !432, !430, !429}
!524 = !{!428, !426, !424, !441, !422}
!525 = !{!444, !443, !434, !424, !433, !432, !430, !429}
!526 = !{!434, !424, !433, !432, !430, !429}
!527 = !{!430, !429, !422}
!528 = !{!430, !429}
!529 = !{!446}
!530 = !{!448}
!531 = !{!452, !450, !448, !446}
!532 = !{!460, !459, !458, !456, !454, !453, !430, !429}
!533 = !{!463, !462, !454, !448, !453, !446, !430, !429}
!534 = !{!467, !466, !465, !430, !429, !422}
!535 = !{!467, !430, !429}
!536 = !{!469}
!537 = !{!473, !471, !469}
!538 = !{!483, !482, !481, !479, !477, !476, !475, !430, !429}
!539 = !{!476, !475, !430, !429}
!540 = !{!473, !471, !469, !484}
!541 = !{!487, !486, !477, !469, !476, !475, !430, !429}
!542 = !{!477, !469, !476, !475, !430, !429}
!543 = !{!489}
!544 = !{!490, !430, !429}
!545 = !{!492}
!546 = !{!493, !430, !429}
!547 = !{!495}
!548 = !{!499, !497, !495}
!549 = !{!511, !510, !509, !507, !505, !504, !503, !501, !430, !429}
!550 = !{!504, !503, !501, !430, !429}
!551 = !{!499, !497, !495, !513, !512}
!552 = !{!516, !515, !505, !495, !504, !503, !501, !430, !429}
!553 = !{!505, !495, !504, !503, !501, !430, !429}
!554 = distinct !{!554, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!555 = distinct !{!555, !554, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!556 = distinct !{!556, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!557 = distinct !{!557, !556, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!558 = distinct !{!558, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_"}
!559 = distinct !{!559, !558, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 2"}
!560 = distinct !{!560, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!561 = distinct !{!561, !560, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!562 = distinct !{!562, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!563 = distinct !{!563, !562, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!564 = distinct !{!564, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_"}
!565 = distinct !{!565, !564, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_: argument 0"}
!566 = distinct !{!566, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_"}
!567 = distinct !{!567, !566, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_: argument 0"}
!568 = distinct !{!568, !558, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 1"}
!569 = distinct !{!569, !558, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 0"}
!570 = distinct !{!570, !560, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!571 = distinct !{!571, !562, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!572 = distinct !{!572, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_"}
!573 = distinct !{!573, !572, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 2"}
!574 = distinct !{!574, !572, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 1"}
!575 = distinct !{!575, !572, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 0"}
!576 = distinct !{!576, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!577 = distinct !{!577, !576, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!578 = distinct !{!578, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_"}
!579 = distinct !{!579, !578, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 2"}
!580 = distinct !{!580, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!581 = distinct !{!581, !580, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!582 = distinct !{!582, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_"}
!583 = distinct !{!583, !582, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 1"}
!584 = distinct !{!584, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_"}
!585 = distinct !{!585, !584, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB3y_7windows8non_utf810components6parser12normal_bytes00E00E0E0B3y_: argument 0"}
!586 = distinct !{!586, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_"}
!587 = distinct !{!587, !586, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB1u_7windows8non_utf810components6parser12normal_bytes00E00E0B1u_: argument 0"}
!588 = distinct !{!588, !578, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 1"}
!589 = distinct !{!589, !578, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser12normal_bytes0Bb_: argument 0"}
!590 = distinct !{!590, !580, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!591 = distinct !{!591, !582, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtBa_7windows8non_utf810components6parser12normal_bytes00E0Ba_: argument 0"}
!592 = distinct !{!592, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_"}
!593 = distinct !{!593, !592, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 2"}
!594 = distinct !{!594, !592, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 1"}
!595 = distinct !{!595, !592, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNCNvNtNtNtNtB4h_7windows8non_utf810components6parser12normal_bytes00E00E0E0B2S_EB4h_: argument 0"}
!596 = !{!555}
!597 = !{!557}
!598 = !{!559}
!599 = !{!561}
!600 = !{!563}
!601 = !{!567, !565, !563, !561, !559}
!602 = !{!575, !574, !573, !571, !570, !569, !568}
!603 = !{!571, !563, !570, !561, !569, !568, !559}
!604 = !{!577}
!605 = !{!579}
!606 = !{!581}
!607 = !{!583}
!608 = !{!587, !585, !583, !581, !579}
!609 = !{!595, !594, !593, !591, !590, !589, !588}
!610 = !{!591, !583, !590, !581, !589, !588, !579}
!611 = distinct !{!611, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!612 = distinct !{!612, !611, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!613 = distinct !{!613, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!614 = distinct !{!614, !613, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!615 = distinct !{!615, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!616 = distinct !{!616, !615, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!617 = distinct !{!617, !615, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!618 = distinct !{!618, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_"}
!619 = distinct !{!619, !618, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path7windows8non_utf810components6parser9separator0Bb_: argument 0"}
!620 = !{!612}
!621 = !{!614}
!622 = !{!617, !616}
!623 = !{!617}
!624 = !{!619}
end_hunk_1
