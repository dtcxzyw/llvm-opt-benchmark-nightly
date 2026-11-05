Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 286
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXs1_NtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_doneINtB5_9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1i_12FileFragment4open0ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls:bb.a

bb.bd:                                            ; preds = %_RNvMs_NtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_doneINtB4_9MaybeDoneINtNtB6_6either6EitherINtNtB6_10try_future5MapOkNCNvNtNtCshkPeWWG1flk_5lance7dataset6rowids20load_row_id_sequence0NcNtINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEE4Some0EINtNtB6_5ready5ReadyINtNtB38_6result6ResultB33_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEE11take_outputCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body9.i.i.i

.body9.i.i.i:                                     ; preds = %bb.bd, %bb.ba
  %eh.lpad-body10.i.i.i = phi { ptr, i32 } [ %i.eo, %bb.bd ], [ %i.em, %bb.ba ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEENtNtB1X_5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(56) %i.g) #73
          to label %.body.i.i.i unwind label %bb.be, !noalias !227188

_RNvMs_NtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_doneINtB4_9MaybeDoneINtNtB6_6either6EitherINtNtB6_10try_future5MapOkNCNvNtNtCshkPeWWG1flk_5lance7dataset6rowids20load_row_id_sequence0NcNtINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEE4Some0EINtNtB6_5ready5ReadyINtNtB38_6result6ResultB33_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEE11take_outputCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.ax
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.017.0.copyload18.i.i.i = load i8, ptr %i.ep, align 8, !noalias !227188 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !227197
  %.not7.i.i.i = icmp eq i8 %.sroa.017.0.copyload18.i.i.i, -2
  br i1 %.not7.i.i.i, label %_RNvMs_NtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_doneINtB4_9MaybeDoneINtNtB6_6either6EitherINtNtB6_10try_future5MapOkNCNvNtNtCshkPeWWG1flk_5lance7dataset6rowids20load_row_id_sequence0NcNtINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEE4Some0EINtNtB6_5ready5ReadyINtNtB38_6result6ResultB33_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEE11take_outputCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, label %bb.bg, !prof !537

_RNvMs_NtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_doneINtB4_9MaybeDoneINtNtB6_6either6EitherINtNtB6_10try_future5MapOkNCNvNtNtCshkPeWWG1flk_5lance7dataset6rowids20load_row_id_sequence0NcNtINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEE4Some0EINtNtB6_5ready5ReadyINtNtB38_6result6ResultB33_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEE11take_outputCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i: ; preds = %_RNvMs_NtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_doneINtB4_9MaybeDoneINtNtB6_6either6EitherINtNtB6_10try_future5MapOkNCNvNtNtCshkPeWWG1flk_5lance7dataset6rowids20load_row_id_sequence0NcNtINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEE4Some0EINtNtB6_5ready5ReadyINtNtB38_6result6ResultB33_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEE11take_outputCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.aw
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1189) #72
          to label %bb.bc unwind label %bb.bd, !noalias !227188

bb.be:                                            ; preds = %.body9.i.i.i, %.body.i.i.i
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !227188
  unreachable

bb.bf:                                            ; preds = %bb.au, %.noexc111.i, %_RNvXs1_NtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_doneINtB5_9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1i_12FileFragment12open_readers0ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.ae, %bb.v, %bb.u
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bf, %.body.i.i.i, %bb.am, %bb.ag, %.body.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.er, %bb.bf ], [ %i.dx, %bb.am ], [ %i.dj, %bb.ag ], [ %.pn.i1.i.i.i.i, %.body.i.i.i.i.i ], [ %.pn.i.i.i, %.body.i.i.i ]
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1992
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneINtNtBG_6either6EitherINtNtBG_10try_future5MapOkNCNvNtNtCshkPeWWG1flk_5lance7dataset6rowids20load_row_id_sequence0NcNtINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEE4Some0EINtNtBG_5ready5ReadyINtNtB4_6result6ResultB3x_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.es) #73
          to label %bb.bh unwind label %bb.h, !noalias !227171

_RNvXs0_NtNtCs9p5Dg9WVwvP_12futures_util6future7poll_fnINtB5_6PollFnNCNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1d_12FileFragment4open00ENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i: ; preds = %.noexc112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !227168
  br label %_RNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB7_12FileFragment4open0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.bg:                                            ; preds = %_RNvMs_NtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_doneINtB4_9MaybeDoneINtNtB6_6either6EitherINtNtB6_10try_future5MapOkNCNvNtNtCshkPeWWG1flk_5lance7dataset6rowids20load_row_id_sequence0NcNtINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEE4Some0EINtNtB6_5ready5ReadyINtNtB38_6result6ResultB33_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEE11take_outputCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.619.0..sroa_idx20.i.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.6202.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.619.0..sroa_idx20.i.i.i, i64 55, i1 false), !noalias !227171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.022.i.i.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.6.0..sroa_idx.i.i.i, i64 55, i1 false), !noalias !227191
  %.sroa.022.i.i.sroa.4.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.022.i.i.sroa.4.i, i64 55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %.sroa.022.i.i.sroa.4.56..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !227191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !227191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !227191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(111) %.sroa.2201.i, ptr noundef nonnull align 1 dereferenceable(111) %.sroa.022.i.i.sroa.4.i, i64 111, i1 false), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.022.i.i.sroa.4.i)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1992
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneINtNtBG_6either6EitherINtNtBG_10try_future5MapOkNCNvNtNtCshkPeWWG1flk_5lance7dataset6rowids20load_row_id_sequence0NcNtINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEE4Some0EINtNtBG_5ready5ReadyINtNtB4_6result6ResultB3x_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.et)
          to label %bb.bj unwind label %bb.bi, !noalias !227171

bb.bh:                                            ; preds = %bb.bi, %.body.i
  %.pn24.i = phi { ptr, i32 } [ %i.ev, %bb.bi ], [ %eh.lpad-body.i, %.body.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1L_12FileFragment19get_deletion_vector0EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.eu) #73
          to label %bb.br unwind label %bb.h, !noalias !227171

bb.bi:                                            ; preds = %bb.bg
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bg
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ex = load i64, ptr %i.ew, align 16, !range !478, !noalias !227168, !noundef !411
  switch i64 %i.ex, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1L_12FileFragment19get_deletion_vector0EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i [
    i64 0, label %bb.bk
    i64 1, label %bb.bm
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.ez = load i8, ptr %i.ey, align 16, !range !476, !noalias !227168, !noundef !411
  %cond.i.i.i = icmp eq i8 %i.ez, 3
  br i1 %cond.i.i.i, label %bb.bl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1L_12FileFragment19get_deletion_vector0EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCshkPeWWG1flk_5lance2io8deletion26read_dataset_deletion_file0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.fa)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1L_12FileFragment19get_deletion_vector0EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.bs, !noalias !227171

bb.bm:                                            ; preds = %bb.bj
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227198)
  %i.fc = load i8, ptr %i.fb, align 8, !range !418, !alias.scope !227198, !noalias !227168, !noundef !411
  %i.fd = icmp eq i8 %i.fc, -1
  br i1 %i.fd, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227199)
  %i.ff = load ptr, ptr %i.fe, align 16, !alias.scope !227200, !noalias !227168, !noundef !411 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1L_12FileFragment19get_deletion_vector0EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fh = atomicrmw add ptr %i.ff, i64 -1 release, align 8, !noalias !227201
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.bp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1L_12FileFragment19get_deletion_vector0EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorE9drop_slowCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1L_12FileFragment19get_deletion_vector0EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.bs, !noalias !227171

bb.bq:                                            ; preds = %bb.bm
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.fb)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1L_12FileFragment19get_deletion_vector0EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.bs, !noalias !227171

bb.br:                                            ; preds = %bb.bs, %bb.bh
  %.pn26.i = phi { ptr, i32 } [ %i.fk, %bb.bs ], [ %.pn24.i, %bb.bh ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1L_12FileFragment12open_readers0EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.fj) #73
          to label %bb.i unwind label %bb.h, !noalias !227171

bb.bs:                                            ; preds = %bb.bq, %bb.bp, %bb.bl
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1L_12FileFragment19get_deletion_vector0EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bl, %bb.bk, %bb.bj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1L_12FileFragment12open_readers0EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.fl)
          to label %bb.bu unwind label %bb.bt, !noalias !227171

bb.bt:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1L_12FileFragment19get_deletion_vector0EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.bu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB1L_12FileFragment19get_deletion_vector0EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !227168
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 226
  store i8 %i.du, ptr %i.x, align 8, !noalias !227168
  %.sroa.2201.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.2201.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.2201.i, i64 55, i1 false), !noalias !227168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !227168
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 221 ; 2 uses
  store i8 1, ptr %i.fo, align 1, !noalias !227168
  %.sroa.2201.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.2201.i, i64 55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 1 dereferenceable(56) %.sroa.2201.56..sroa_idx.i, i64 56, i1 false), !noalias !227168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !227168
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  store i8 1, ptr %i.fp, align 4, !noalias !227168
  store i8 %.sroa.017.0.copyload18.i.i.i, ptr %i.v, align 8, !noalias !227168
  %.sroa.6202.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.6202.112..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.6202.i, i64 55, i1 false), !noalias !227168
  store i8 0, ptr %i.fn, align 2, !noalias !227168
  %.sroa.6210.sroa.5.0..sroa.6210.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.6210.sroa.5.0.copyload.i = load i64, ptr %.sroa.6210.sroa.5.0..sroa.6210.0..sroa_idx.sroa_idx.i, align 8, !noalias !227168 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.2201.i, i64 15 ; 2 uses
  %.not.i.i = icmp eq i8 %i.du, -1
  br i1 %.not.i.i, label %bb.bv, label %bb.ch

bb.bv:                                            ; preds = %bb.bu
  %.sroa.4357.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4357.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(16) %i.fq, i64 16, i1 false), !noalias !227168
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 219
  store i8 1, ptr %i.fr, align 1, !noalias !227168
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.6210.sroa.5.0.copyload.i, ptr %i.fs, align 16, !noalias !227168
  store i8 0, ptr %i.fo, align 1, !noalias !227168
  %.sroa.0224.0.copyload.i = load i8, ptr %i.w, align 8, !noalias !227168 ; 2 uses
  %.sroa.7226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.7226.0.copyload.i = load ptr, ptr %.sroa.7226.0..sroa_idx.i, align 8, !noalias !227168 ; 2 uses
  %.not.i117.i = icmp eq i8 %.sroa.0224.0.copyload.i, -1
  br i1 %.not.i117.i, label %bb.bw, label %bb.cg

bb.bw:                                            ; preds = %bb.bv
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 218
  store i8 1, ptr %i.ft, align 2, !noalias !227168
  store ptr %.sroa.7226.0.copyload.i, ptr %i.fl, align 8, !noalias !227168
  store i8 0, ptr %i.fp, align 4, !noalias !227168
  %.sroa.7243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.7243.0.copyload.i = load ptr, ptr %.sroa.7243.0..sroa_idx.i, align 8, !noalias !227168 ; 2 uses
  %.not.i118.i = icmp eq i8 %.sroa.017.0.copyload18.i.i.i, -1
  br i1 %.not.i118.i, label %bb.bx, label %bb.cf

bb.bx:                                            ; preds = %bb.bw
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 217
  store i8 1, ptr %i.fu, align 1, !noalias !227168
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %.sroa.7243.0.copyload.i, ptr %i.fv, align 16, !noalias !227168
  %i.fw = getelementptr i8, ptr %0, i64 176
  %.val105.i = load i64, ptr %i.fw, align 16, !noalias !227168, !noundef !411 ; 2 uses
  %i.fx = icmp ult i64 %.val105.i, 576460752303423488
  call void @llvm.assume(i1 %i.fx)
  %i.fy = icmp eq i64 %.val105.i, 0
  br i1 %i.fy, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %2 = load i8, ptr %i.fz, align 8, !range !423, !alias.scope !227202, !noalias !227168, !noundef !411
  %3 = trunc nuw i8 %2 to i1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 153
  %5 = load i8, ptr %4, align 1, !range !423, !alias.scope !227202, !noalias !227168
  %6 = trunc nuw i8 %5 to i1
  %or.cond.i.i = select i1 %3, i1 true, i1 %6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 154
  %8 = load i8, ptr %7, align 2, !range !423, !alias.scope !227202, !noalias !227168
  %9 = trunc nuw i8 %8 to i1
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 true, i1 %9
  br i1 %or.cond5.i.i, label %bb.cd, label %_RNvMs2_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB5_14FragReadConfig15has_system_cols.exit.i

_RNvMs2_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB5_14FragReadConfig15has_system_cols.exit.i: ; preds = %bb.by
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 155
  %11 = load i8, ptr %10, align 1, !range !423, !alias.scope !227202, !noalias !227168, !noundef !411
  %12 = trunc nuw i8 %11 to i1
  br i1 %12, label %bb.cd, label %bb.bz

bb.bz:                                            ; preds = %_RNvMs2_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB5_14FragReadConfig15has_system_cols.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !227168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !227168
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !227168, !nonnull !411, !align !412, !noundef !411
  %i.gc = getelementptr i8, ptr %i.gb, i64 232
  %.val104.i = load i64, ptr %i.gc, align 8, !noalias !227171, !noundef !411
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.val104.i, ptr %i.t, align 8, !noalias !227168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !227168
  store ptr %i.gd, ptr %i.s, align 8, !noalias !227168
  %.sroa.5255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5255.0..sroa_idx.i, align 8, !noalias !227168
  %i.ge = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.ge, align 8, !noalias !227168
  %.sroa.5257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5257.0..sroa_idx.i, align 8, !noalias !227168
  invoke fastcc void @_RNvNtCs40k4W9msRzi_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noundef nonnull @1800, ptr noundef nonnull %i.s)
          to label %bb.cb unwind label %bb.ca, !noalias !227171

bb.ca:                                            ; preds = %bb.bz
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !227168
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !227168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.30.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !227168
  br label %bb.cc

bb.cc:                                            ; preds = %bb.el, %bb.cx, %bb.cb
  %.sroa.10345.0.i = phi i8 [ %.sroa.10345.4.i, %bb.el ], [ %i.hv, %bb.cx ], [ 16, %bb.cb ] ; 4 uses
  %.sroa.25.0.i = phi i64 [ %.sroa.25.4.i, %bb.el ], [ %.sroa.4275.0.copyload.i, %bb.cx ], [ ptrtoint (ptr @1801 to i64), %bb.cb ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.gh = load i8, ptr %i.gg, align 1, !range !423, !noalias !227168, !noundef !411
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.fm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEEECsfR8GmIBoxTX_21lance_namespace_impls.exit146.i

bb.cd:                                            ; preds = %_RNvMs2_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB5_14FragReadConfig15has_system_cols.exit.i, %bb.by, %bb.bx
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !227168, !nonnull !411, !align !412, !noundef !411
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.gk, ptr %i.gl, align 8, !noalias !227168
  %.sroa.9272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 0, ptr %.sroa.9272.0..sroa_idx.i, align 8, !noalias !227168
  br label %bb.cj

bb.ce:                                            ; preds = %bb.ci, %bb.cn, %bb.ej, %bb.ca
  %.pn78.pn.i = phi { ptr, i32 } [ %i.gf, %bb.ca ], [ %.pn72.pn.pn.pn.pn.i, %bb.ej ], [ %i.ht, %bb.ci ], [ %i.hx, %bb.cn ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.gn = load i8, ptr %i.gm, align 1, !range !423, !noalias !227168, !noundef !411
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.hc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEEECsfR8GmIBoxTX_21lance_namespace_impls.exit173.i

bb.cf:                                            ; preds = %bb.bw
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.6202.i, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18348.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6202.i, i64 7, i1 false), !noalias !227168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.30.i, ptr noundef nonnull align 1 dereferenceable(40) %i.gp, i64 40, i1 false), !noalias !227168
  %i.gq = ptrtoint ptr %.sroa.7243.0.copyload.i to i64
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEEECsfR8GmIBoxTX_21lance_namespace_impls.exit146.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEEECsfR8GmIBoxTX_21lance_namespace_impls.exit146.i: ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.cf, %bb.cc
  %.sroa.10345.1.i = phi i8 [ %.sroa.017.0.copyload18.i.i.i, %bb.cf ], [ %.sroa.10345.0.i, %bb.cc ], [ %.sroa.10345.0.i, %bb.fo ], [ %.sroa.10345.0.i, %bb.fm ], [ %.sroa.10345.0.i, %bb.fn ] ; 4 uses
  %.sroa.25.1.i = phi i64 [ %i.gq, %bb.cf ], [ %.sroa.25.0.i, %bb.cc ], [ %.sroa.25.0.i, %bb.fo ], [ %.sroa.25.0.i, %bb.fm ], [ %.sroa.25.0.i, %bb.fn ] ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 217
  store i8 0, ptr %i.gr, align 1, !noalias !227168
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 218
  %i.gt = load i8, ptr %i.gs, align 2, !range !423, !noalias !227168, !noundef !411
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.fq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit148.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEEECsfR8GmIBoxTX_21lance_namespace_impls.exit173.i: ; preds = %bb.he, %bb.hd, %bb.hc, %bb.fp, %bb.ce
  %.pn81.pn.i = phi { ptr, i32 } [ %.pn78.pn.i, %bb.hd ], [ %i.ot, %bb.fp ], [ %.pn78.pn.i, %bb.ce ], [ %.pn78.pn.i, %bb.he ], [ %.pn78.pn.i, %bb.hc ] ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 217
  store i8 0, ptr %i.gv, align 1, !noalias !227168
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 218
  %i.gx = load i8, ptr %i.gw, align 2, !range !423, !noalias !227168, !noundef !411
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.hf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit175.i

bb.cg:                                            ; preds = %bb.bv
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.2201.i, i64 71
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.2201.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18348.i, ptr noundef nonnull align 1 dereferenceable(7) %i.ha, i64 7, i1 false), !noalias !227168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.30.i, ptr noundef nonnull align 1 dereferenceable(40) %i.gz, i64 40, i1 false), !noalias !227168
  %i.hb = ptrtoint ptr %.sroa.7226.0.copyload.i to i64
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit148.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit148.i: ; preds = %bb.fs, %bb.fr, %bb.fq, %bb.cg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEEECsfR8GmIBoxTX_21lance_namespace_impls.exit146.i
  %.sroa.10345.2.i = phi i8 [ %.sroa.0224.0.copyload.i, %bb.cg ], [ %.sroa.10345.1.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEEECsfR8GmIBoxTX_21lance_namespace_impls.exit146.i ], [ %.sroa.10345.1.i, %bb.fs ], [ %.sroa.10345.1.i, %bb.fq ], [ %.sroa.10345.1.i, %bb.fr ] ; 3 uses
  %.sroa.25.2.i = phi i64 [ %i.hb, %bb.cg ], [ %.sroa.25.1.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEEECsfR8GmIBoxTX_21lance_namespace_impls.exit146.i ], [ %.sroa.25.1.i, %bb.fs ], [ %.sroa.25.1.i, %bb.fq ], [ %.sroa.25.1.i, %bb.fr ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 218
  store i8 0, ptr %i.hc, align 2, !noalias !227168
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 219
  %i.he = load i8, ptr %i.hd, align 1, !range !423, !noalias !227168, !noundef !411
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.fu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtCshkPeWWG1flk_5lance7dataset8fragment17GenericFileReaderEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit157.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit175.i: ; preds = %bb.hh, %bb.hg, %bb.hf, %bb.ft, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEEECsfR8GmIBoxTX_21lance_namespace_impls.exit173.i
  %.pn84.pn.i = phi { ptr, i32 } [ %.pn81.pn.i, %bb.hg ], [ %i.oz, %bb.ft ], [ %.pn81.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEEECsfR8GmIBoxTX_21lance_namespace_impls.exit173.i ], [ %.pn81.pn.i, %bb.hh ], [ %.pn81.pn.i, %bb.hf ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 218
  store i8 0, ptr %i.hg, align 2, !noalias !227168
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 219
  %i.hi = load i8, ptr %i.hh, align 1, !range !423, !noalias !227168, !noundef !411
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.hi, label %.body155.i

bb.ch:                                            ; preds = %bb.bu
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.2201.i, i64 31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18348.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2201.i, i64 7, i1 false), !noalias !227168
  %.sroa.30.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.30.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.30.40..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(24) %i.hk, i64 24, i1 false), !noalias !227168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.30.i, ptr noundef nonnull align 1 dereferenceable(16) %i.fq, i64 16, i1 false), !noalias !227168
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtCshkPeWWG1flk_5lance7dataset8fragment17GenericFileReaderEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit157.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtCshkPeWWG1flk_5lance7dataset8fragment17GenericFileReaderEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit157.i: ; preds = %bb.fx, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtCshkPeWWG1flk_5lance7dataset8fragment17GenericFileReaderEL_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i153.i, %bb.ch, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit148.i
  %.sroa.10345.3.i = phi i8 [ %i.du, %bb.ch ], [ %.sroa.10345.2.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit148.i ], [ %.sroa.10345.2.i, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtCshkPeWWG1flk_5lance7dataset8fragment17GenericFileReaderEL_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i153.i ], [ %.sroa.10345.2.i, %bb.fx ] ; 3 uses
  %.sroa.25.3.i = phi i64 [ %.sroa.6210.sroa.5.0.copyload.i, %bb.ch ], [ %.sroa.25.2.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit148.i ], [ %.sroa.25.2.i, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtCshkPeWWG1flk_5lance7dataset8fragment17GenericFileReaderEL_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i153.i ], [ %.sroa.25.2.i, %bb.fx ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 219
  store i8 0, ptr %i.hl, align 1, !noalias !227168
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 4, !range !423, !noalias !227168, !noundef !411
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.fy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

.body155.i:                                       ; preds = %bb.hi, %bb.fw, %bb.fv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit175.i
  %.pn87.pn.i = phi { ptr, i32 } [ %i.pd, %bb.fv ], [ %.pn84.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit175.i ], [ %.pn84.pn.i, %bb.hi ], [ %i.pd, %bb.fw ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 219
  store i8 0, ptr %i.hp, align 1, !noalias !227168
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.hr = load i8, ptr %i.hq, align 4, !range !423, !noalias !227168, !noundef !411
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.hj, label %bb.gd

bb.ci:                                            ; preds = %bb.cj
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !227168
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtBJ_12FileFragment13physical_rows0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.hu) #73
          to label %bb.ce unwind label %bb.h, !noalias !227171

bb.cj:                                            ; preds = %bb.cd, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !227168
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB7_12FileFragment13physical_rows0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.r, ptr noundef nonnull align 8 %i.hu, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ck unwind label %bb.ci, !noalias !227171

bb.ck:                                            ; preds = %bb.cj
  %i.hv = load i8, ptr %i.r, align 8, !range !417, !noalias !227168, !noundef !411 ; 3 uses
  %i.hw = icmp eq i8 %i.hv, -2
  br i1 %i.hw, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !227168
  br label %_RNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB7_12FileFragment4open0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.cm:                                            ; preds = %bb.ck
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx.i, i64 7, i1 false), !noalias !227168
  %.sroa.4275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4275.0.copyload.i = load i64, ptr %.sroa.4275.0..sroa_idx.i, align 8, !noalias !227168 ; 2 uses
  %.sroa.6276.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6276.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6276.0..sroa_idx.i, i64 40, i1 false), !noalias !227168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !227168
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtBJ_12FileFragment13physical_rows0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.hu)
          to label %bb.co unwind label %bb.cn, !noalias !227171

bb.cn:                                            ; preds = %bb.cm
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.co:                                            ; preds = %bb.cm
  %.not.i120.i = icmp eq i8 %i.hv, -1
  br i1 %.not.i120.i, label %bb.cp, label %bb.cx

bb.cp:                                            ; preds = %bb.co
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %.sroa.4275.0.copyload.i, ptr %i.hy, align 8, !noalias !227168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !227168
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23.i)
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !227168, !nonnull !411, !align !412, !noundef !411
  %i.ib = getelementptr i8, ptr %i.ia, i64 232
  %.val103.i = load i64, ptr %i.ib, align 8, !noalias !227171, !noundef !411
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %.val103.i, ptr %i.ic, align 16, !noalias !227168
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 218
  store i8 0, ptr %i.id, align 2, !noalias !227168
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 225 ; 2 uses
  store i8 1, ptr %i.ie, align 1, !noalias !227168
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 217
  store i8 0, ptr %i.ih, align 1, !noalias !227168
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store i8 1, ptr %i.ii, align 16, !noalias !227168
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ik = load <2 x ptr>, ptr %i.ig, align 8, !noalias !227168
  store <2 x ptr> %i.ik, ptr %i.if, align 8, !noalias !227168
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 219
  store i8 0, ptr %i.il, align 1, !noalias !227168
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 223 ; 2 uses
  store i8 1, ptr %i.im, align 1, !noalias !227168
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ig, ptr noundef nonnull align 16 dereferenceable(24) %i.in, i64 24, i1 false), !noalias !227168
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ip = load ptr, ptr %i.io, align 16, !noalias !227168, !nonnull !411, !align !412, !noundef !411
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 2192
  invoke void @_RNvXs8_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_6SchemaE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.iq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ip)
          to label %bb.cr unwind label %bb.cq, !noalias !227171

bb.cq:                                            ; preds = %bb.cp
  %i.ir = landingpad { ptr, i32 }
          cleanup
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 222
  store i8 0, ptr %i.is, align 2, !noalias !227168
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtCshkPeWWG1flk_5lance7dataset8fragment17GenericFileReaderEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.ig) #73
          to label %bb.cs unwind label %bb.h, !noalias !227171

bb.cr:                                            ; preds = %bb.cp
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 222
  store i8 1, ptr %i.it, align 2, !noalias !227168
  %i.iu = load ptr, ptr %i.hz, align 8, !noalias !227168, !nonnull !411, !align !412, !noundef !411
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 -1, ptr %i.iv, align 16, !noalias !227168
  %.sroa.8305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.iu, ptr %.sroa.8305.0..sroa_idx.i, align 8, !noalias !227168
  %.sroa.10307.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 0, ptr %.sroa.10307.0..sroa_idx.i, align 8, !noalias !227168
  br label %bb.cz

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit167.i: ; preds = %bb.hb, %bb.ha, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEEECsfR8GmIBoxTX_21lance_namespace_impls.exit169.i, %bb.gv, %bb.gu, %bb.gt, %bb.fl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEEECsfR8GmIBoxTX_21lance_namespace_impls.exit165.i
end_hunk_0
