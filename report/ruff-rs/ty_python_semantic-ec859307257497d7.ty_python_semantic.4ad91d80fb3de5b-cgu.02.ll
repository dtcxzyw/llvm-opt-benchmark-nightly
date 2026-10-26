Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.02?download=true
inline.NumInlined: 7440
inline.NumDeleted: 2774
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 177
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMB8_SB17_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0EB2v_:bb.a
.loopexit.split-lp.i.i42:                         ; preds = %bb.y, %bb.x
  %.sroa.019.2.ph.i.i = phi ptr [ %.sroa.019.041.i.i, %bb.x ], [ %.sroa.13.042.i.i, %bb.y ]
  %lpad.loopexit.split-lp.i.i43 = landingpad { ptr, i32 }
          cleanup
  %i.ge = ptrtoint ptr %i.fa to i64
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.i.i42, %.loopexit.i.i39
  %.val4.val.i.i = phi i64 [ %.val4.val.pre.i.i, %.loopexit.i.i39 ], [ %i.ge, %.loopexit.split-lp.i.i42 ]
  %.sroa.019.2.i.i = phi ptr [ %.sroa.019.1.i.i, %.loopexit.i.i39 ], [ %.sroa.019.2.ph.i.i, %.loopexit.split-lp.i.i42 ]
  %lpad.phi.i.i41 = phi { ptr, i32 } [ %lpad.loopexit.i.i40, %.loopexit.i.i39 ], [ %lpad.loopexit.split-lp.i.i43, %.loopexit.split-lp.i.i42 ]
  store i64 %.val4.val.i.i, ptr %.sroa.019.2.i.i, align 8, !alias.scope !22139
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMB8_SB1x_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0EB2V_.exit.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !22138
  %.not7.i = icmp ult i64 %i.fn, %.sroa.15.0108211
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMB8_SB1x_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0EB2V_.exit.i
  call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMB8_SB1x_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0EB2V_.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.0109210, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0108211, i64 noundef 0, i64 noundef %i.fn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0109210, i64 %i.fn ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = xor i64 %i.fn, -1
  %i.gi = add i64 %.sroa.15.0108211, %i.gh
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMB8_SB17_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0EB2v_(ptr noalias noundef nonnull align 8 %.sroa.0.0109210, i64 noundef %i.fn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.0107212, i32 noundef %i.eg, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.ab:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMB8_SB15_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0EB2t_.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0109210, i64 %i.ex
  %.val = load ptr, ptr %4, align 8, !nonnull !6, !align !24, !noundef !6 ; 2 uses
  %.val.i = load ptr, ptr %.val, align 8, !noalias !22151, !nonnull !6, !noundef !6 ; 2 uses
  %i.gk = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load ptr, ptr %i.gk, align 8, !noalias !22151, !nonnull !6, !align !24, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !22152
  store ptr %.val.i, ptr %i.i, align 8, !noalias !22152
  store ptr %.val1.i, ptr %i.ap, align 8, !noalias !22152
  store ptr %.sroa.023.0107212, ptr %i.aq, align 8, !noalias !22152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !22152
  store ptr %.val.i, ptr %i.h, align 8, !noalias !22152
  store ptr %.val1.i, ptr %i.ar, align 8, !noalias !22152
  store ptr %i.gj, ptr %i.as, align 8, !noalias !22152
  %i.gl = call noundef range(i8 -1, 2) i8 @_RNvXs_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB4_16RenderingSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !22152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !22152
  %i.gm = icmp eq i8 %i.gl, -1
  br i1 %i.gm, label %bb.u, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !22153)
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.0109210, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0108211, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0109210, i64 8 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22155
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !22156, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.go, ptr %i.g, align 8, !noalias !22155
  %i.gp = getelementptr [8 x i8], ptr %.sroa.0.0109210, i64 %.sroa.15.0108211 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 -8     ; 2 uses
  %.sroa.13.041.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0109210, i64 16 ; 3 uses
  %i.gr = icmp ult ptr %.sroa.13.041.i.i, %i.gq
  br i1 %i.gr, label %.lr.ph.i.i65, label %.preheader.i.i51.preheader

.preheader.i.i51.preheader:                       ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0E0B3j_.exit14.i.i, %bb.ac
  %.sroa.23.1.i.i54.ph = phi i64 [ 0, %bb.ac ], [ %i.hr, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0E0B3j_.exit14.i.i ]
  %.sroa.13.1.i.i55.ph = phi ptr [ %.sroa.13.041.i.i, %bb.ac ], [ %.sroa.13.0.i.i69, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0E0B3j_.exit14.i.i ]
  %.sroa.021.1.i.i.ph = phi ptr [ %i.gn, %bb.ac ], [ %i.hg, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0E0B3j_.exit14.i.i ]
  br label %.preheader.i.i51

.preheader.i.i51:                                 ; preds = %.preheader.i.i51.preheader, %bb.ad
  %.sroa.23.1.i.i54 = phi i64 [ %i.ha, %bb.ad ], [ %.sroa.23.1.i.i54.ph, %.preheader.i.i51.preheader ] ; 2 uses
  %.sroa.13.1.i.i55 = phi ptr [ %.sroa.13.1.sroa.gep.i.i63, %bb.ad ], [ %.sroa.13.1.i.i55.ph, %.preheader.i.i51.preheader ] ; 4 uses
  %.sroa.021.1.i.i = phi ptr [ %.sroa.13.1.i.i55, %bb.ad ], [ %.sroa.021.1.i.i.ph, %.preheader.i.i51.preheader ] ; 2 uses
  %i.gs = icmp eq ptr %.sroa.13.1.i.i55, %i.gp    ; 2 uses
  %.sroa.01.0.i.i56 = select i1 %i.gs, ptr %i.g, ptr %.sroa.13.1.i.i55 ; 2 uses
  %.val.i.i.i.i57 = load ptr, ptr %4, align 8, !noalias !22157, !nonnull !6, !align !24, !noundef !6 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %.val.i.i.i.i57, align 8, !noalias !22158, !nonnull !6, !noundef !6 ; 2 uses
  %i.gt = getelementptr i8, ptr %.val.i.i.i.i57, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.gt, align 8, !noalias !22158, !nonnull !6, !align !24, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22159
  store ptr %.val.i.i.i.i.i, ptr %i.f, align 8, !noalias !22159
  store ptr %.val1.i.i.i.i.i, ptr %i.bb, align 8, !noalias !22159
  store ptr %.sroa.0.0109210, ptr %i.bc, align 8, !noalias !22159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22159
  store ptr %.val.i.i.i.i.i, ptr %i.e, align 8, !noalias !22159
  store ptr %.val1.i.i.i.i.i, ptr %i.bd, align 8, !noalias !22159
  store ptr %.sroa.01.0.i.i56, ptr %i.be, align 8, !noalias !22159
  %i.gu = invoke noundef range(i8 -1, 2) i8 @_RNvXs_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB4_16RenderingSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.ad unwind label %.loopexit.i.i58, !noalias !22160

bb.ad:                                            ; preds = %.preheader.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22159
  %i.gv = icmp ne i8 %i.gu, -1
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.sroa.23.1.i.i54 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !22156, !noalias !22161
  store i64 %i.gx, ptr %.sroa.021.1.i.i, align 8, !alias.scope !22156, !noalias !22161
  %i.gy = load i64, ptr %.sroa.01.0.i.i56, align 8, !noalias !22162
  store i64 %i.gy, ptr %i.gw, align 8, !alias.scope !22156, !noalias !22161
  %i.gz = zext i1 %i.gv to i64
  %i.ha = add i64 %.sroa.23.1.i.i54, %i.gz        ; 4 uses
  %.sroa.13.1.sroa.gep.i.i63 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i55, i64 8
  br i1 %i.gs, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0EB3h_.exit.i, label %.preheader.i.i51

.lr.ph.i.i65:                                     ; preds = %bb.ac, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0E0B3j_.exit14.i.i
  %.sroa.13.044.i.i = phi ptr [ %.sroa.13.0.i.i69, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0E0B3j_.exit14.i.i ], [ %.sroa.13.041.i.i, %bb.ac ] ; 4 uses
  %.sroa.021.043.i.i = phi ptr [ %i.hg, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0E0B3j_.exit14.i.i ], [ %i.gn, %bb.ac ] ; 4 uses
  %.sroa.23.042.i.i = phi i64 [ %i.hr, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0E0B3j_.exit14.i.i ], [ 0, %bb.ac ] ; 2 uses
  %.val.i.i6.i.i66 = load ptr, ptr %4, align 8, !noalias !22163, !nonnull !6, !align !24, !noundef !6 ; 2 uses
  %.val.i.i.i7.i.i = load ptr, ptr %.val.i.i6.i.i66, align 8, !noalias !22164, !nonnull !6, !noundef !6 ; 2 uses
  %i.hb = getelementptr i8, ptr %.val.i.i6.i.i66, i64 8
  %.val1.i.i.i8.i.i = load ptr, ptr %i.hb, align 8, !noalias !22164, !nonnull !6, !align !24, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22165
  store ptr %.val.i.i.i7.i.i, ptr %i.d, align 8, !noalias !22165
  store ptr %.val1.i.i.i8.i.i, ptr %i.at, align 8, !noalias !22165
  store ptr %.sroa.0.0109210, ptr %i.au, align 8, !noalias !22165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22165
  store ptr %.val.i.i.i7.i.i, ptr %i.c, align 8, !noalias !22165
  store ptr %.val1.i.i.i8.i.i, ptr %i.av, align 8, !noalias !22165
  store ptr %.sroa.13.044.i.i, ptr %i.aw, align 8, !noalias !22165
  %i.hc = invoke noundef range(i8 -1, 2) i8 @_RNvXs_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB4_16RenderingSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.ae unwind label %.loopexit.split-lp.i.i67, !noalias !22160

bb.ae:                                            ; preds = %.lr.ph.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22165
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.sroa.23.042.i.i ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !22156, !noalias !22166
  store i64 %i.he, ptr %.sroa.021.043.i.i, align 8, !alias.scope !22156, !noalias !22166
  %i.hf = load i64, ptr %.sroa.13.044.i.i, align 8, !alias.scope !22156, !noalias !22166
  store i64 %i.hf, ptr %i.hd, align 8, !alias.scope !22156, !noalias !22166
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.021.043.i.i, i64 16 ; 4 uses
  %.val.i.i11.i.i = load ptr, ptr %4, align 8, !noalias !22167, !nonnull !6, !align !24, !noundef !6 ; 2 uses
  %.val.i.i.i12.i.i = load ptr, ptr %.val.i.i11.i.i, align 8, !noalias !22168, !nonnull !6, !noundef !6 ; 2 uses
  %i.hh = getelementptr i8, ptr %.val.i.i11.i.i, i64 8
  %.val1.i.i.i13.i.i = load ptr, ptr %i.hh, align 8, !noalias !22168, !nonnull !6, !align !24, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22169
  store ptr %.val.i.i.i12.i.i, ptr %i.b, align 8, !noalias !22169
  store ptr %.val1.i.i.i13.i.i, ptr %i.ax, align 8, !noalias !22169
  store ptr %.sroa.0.0109210, ptr %i.ay, align 8, !noalias !22169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22169
  store ptr %.val.i.i.i12.i.i, ptr %i.a, align 8, !noalias !22169
  store ptr %.val1.i.i.i13.i.i, ptr %i.az, align 8, !noalias !22169
  store ptr %i.hg, ptr %i.ba, align 8, !noalias !22169
  %i.hi = invoke noundef range(i8 -1, 2) i8 @_RNvXs_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB4_16RenderingSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0E0B3j_.exit14.i.i unwind label %.loopexit.split-lp.i.i67, !noalias !22160

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0E0B3j_.exit14.i.i: ; preds = %bb.ae
  %i.hj = icmp ne i8 %i.hc, -1
  %i.hk = zext i1 %i.hj to i64
  %i.hl = add i64 %.sroa.23.042.i.i, %i.hk        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22169
  %i.hm = icmp ne i8 %i.hi, -1
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.hl ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !22156, !noalias !22170
  store i64 %i.ho, ptr %.sroa.13.044.i.i, align 8, !alias.scope !22156, !noalias !22170
  %i.hp = load i64, ptr %i.hg, align 8, !alias.scope !22156, !noalias !22170
  store i64 %i.hp, ptr %i.hn, align 8, !alias.scope !22156, !noalias !22170
  %i.hq = zext i1 %i.hm to i64
  %i.hr = add i64 %i.hl, %i.hq                    ; 2 uses
  %.sroa.13.0.i.i69 = getelementptr inbounds nuw i8, ptr %.sroa.021.043.i.i, i64 24 ; 3 uses
  %i.hs = icmp ult ptr %.sroa.13.0.i.i69, %i.gq
  br i1 %i.hs, label %.lr.ph.i.i65, label %.preheader.i.i51.preheader

.loopexit.i.i58:                                  ; preds = %.preheader.i.i51
  %lpad.loopexit.i.i59 = landingpad { ptr, i32 }
          cleanup
  %.val4.val.pre.i.i60 = load i64, ptr %i.g, align 8, !noalias !22155
  br label %bb.af

.loopexit.split-lp.i.i67:                         ; preds = %bb.ae, %.lr.ph.i.i65
  %.sroa.021.2.ph.i.i = phi ptr [ %.sroa.021.043.i.i, %.lr.ph.i.i65 ], [ %.sroa.13.044.i.i, %bb.ae ]
  %lpad.loopexit.split-lp.i.i68 = landingpad { ptr, i32 }
          cleanup
  %i.ht = ptrtoint ptr %i.go to i64
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp.i.i67, %.loopexit.i.i58
  %.val4.val.i.i61 = phi i64 [ %.val4.val.pre.i.i60, %.loopexit.i.i58 ], [ %i.ht, %.loopexit.split-lp.i.i67 ]
  %.sroa.021.2.i.i = phi ptr [ %.sroa.021.1.i.i, %.loopexit.i.i58 ], [ %.sroa.021.2.ph.i.i, %.loopexit.split-lp.i.i67 ]
  %lpad.phi.i.i62 = phi { ptr, i32 } [ %lpad.loopexit.i.i59, %.loopexit.i.i58 ], [ %lpad.loopexit.split-lp.i.i68, %.loopexit.split-lp.i.i67 ]
  store i64 %.val4.val.i.i61, ptr %.sroa.021.2.i.i, align 8, !alias.scope !22156
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0EB3h_.exit.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !22155
  %.not7.i64 = icmp ult i64 %i.ha, %.sroa.15.0108211
  br i1 %.not7.i64, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0EB3h_.exit.i
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0E0EB3h_.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.0109210, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0108211, i64 noundef 0, i64 noundef %i.ha, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.hu = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %i.hv = sub nuw nsw i64 %.sroa.15.0108211, %i.hu
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0109210, i64 %i.hu
  br label %.backedge

.backedge:                                        ; preds = %bb.ah, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.023.0.be = phi ptr [ %i.gf, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ null, %bb.ah ]
  %.sroa.15.0.be = phi i64 [ %i.gi, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.hv, %bb.ah ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.gg, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.hw, %bb.ah ] ; 3 uses
  %i.hx = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.hx, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB17_16sort_unstable_byNCNvMB19_NtB19_13SemanticModel35expected_string_literal_completions0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(40) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph125

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph125

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB1f_16sort_unstable_byNCNvMB1h_NtB1h_13SemanticModel35expected_string_literal_completions0E0EB1j_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa)
  br label %bb.e

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.081.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.080.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB15_16sort_unstable_byNCNvMB17_NtB17_13SemanticModel35expected_string_literal_completions0E0EB19_(ptr noalias noundef nonnull align 8 %.sroa.0.081.lcssa, i64 noundef %.sroa.15.080.lcssa, ptr noalias nonnull align 8 poison)
  br label %bb.e

.lr.ph125:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.078124 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.079123 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.080122 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.081121 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 25 uses
  %i.f = add nsw i32 %.sroa.026.078124, -1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22191)
  %i.g = lshr i64 %.sroa.15.080122, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 160
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 280
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.15.080122, 64
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph125
  %i.k = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB14_16sort_unstable_byNCNvMB16_NtB16_13SemanticModel35expected_string_literal_completions0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.081121, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB15_16sort_unstable_byNCNvMB17_NtB17_13SemanticModel35expected_string_literal_completions0E0EB19_.exit

bb.c:                                             ; preds = %.lr.ph125
  %i.l = getelementptr i8, ptr %.sroa.0.081121, i64 8
  %.val10.i = load ptr, ptr %i.l, align 8, !alias.scope !22191, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.0.081121, i64 16
  %.val11.i = load i64, ptr %i.m, align 8, !alias.scope !22191, !noundef !6 ; 4 uses
  %i.n = getelementptr i8, ptr %i.h, i64 8
  %.val12.i = load ptr, ptr %i.n, align 8, !alias.scope !22191, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = getelementptr i8, ptr %i.h, i64 16
  %.val13.i = load i64, ptr %i.o, align 8, !alias.scope !22191, !noundef !6 ; 4 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.p = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i), !noalias !22191 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %i.s = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i = select i1 %i.r, i64 %i.s, i64 %i.q ; 2 uses
  %i.t = getelementptr i8, ptr %i.i, i64 8
  %.val8.i = load ptr, ptr %i.t, align 8, !alias.scope !22191, !nonnull !6, !noundef !6 ; 2 uses
  %i.u = getelementptr i8, ptr %i.i, i64 16
  %.val9.i = load i64, ptr %i.u, align 8, !alias.scope !22191, !noundef !6 ; 4 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val9.i)
  %i.v = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i14.i), !noalias !22191 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub i64 %.val11.i, %.val9.i
  %spec.select.i.i15.i = select i1 %i.x, i64 %i.y, i64 %i.w
  %i.z = xor i64 %spec.select.i.i15.i, %spec.select.i.i.i
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB15_16sort_unstable_byNCNvMB17_NtB17_13SemanticModel35expected_string_literal_completions0E0EB19_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i16.i = tail call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val9.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i16.i), !noalias !22191 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %.val13.i, %.val9.i
  %spec.select.i.i17.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = xor i64 %spec.select.i.i17.i, %spec.select.i.i.i
  %i.ag = icmp slt i64 %i.af, 0
  %..i.i = select i1 %i.ag, ptr %i.i, ptr %i.h
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB15_16sort_unstable_byNCNvMB17_NtB17_13SemanticModel35expected_string_literal_completions0E0EB19_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB15_16sort_unstable_byNCNvMB17_NtB17_13SemanticModel35expected_string_literal_completions0E0EB19_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.b ], [ %.sroa.0.081121, %bb.c ], [ %..i.i, %bb.d ]
  %i.ah = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ai = ptrtoint ptr %.sroa.0.081121 to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai                ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.aj, 40         ; 3 uses
  %i.ak = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.080122
  tail call void @llvm.assume(i1 %i.ak)
  %.not = icmp eq ptr %.sroa.023.079123, null
  br i1 %.not, label %bb.f, label %bb.h

bb.e:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB15_16sort_unstable_byNCNvMB17_NtB17_13SemanticModel35expected_string_literal_completions0E0EB19_.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22192)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletion14swap_uncheckedBy_(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.080122, i64 noundef 0, i64 noundef range(i64 0, 230584300921369395) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 40 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22194)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false), !noalias !22194
  %i.am = mul nuw nsw i64 %.sroa.15.080122, 40
  %i.an = getelementptr i8, ptr %.sroa.0.081121, i64 %i.am ; 2 uses
  %.sroa.11.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 80
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 8
  %.val2.i.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !22196, !noalias !6 ; 2 uses
  %.phi.trans.insert44.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 16
  %.val3.i.pre.i.i = load i64, ptr %.phi.trans.insert44.i.i, align 8, !alias.scope !22196, !noalias !6 ; 4 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.au, %.preheader.i.i ], [ %i.bc, %.lr.ph.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep27.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.i.i ] ; 6 uses
  %.sroa.016.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.036.i.i, %.lr.ph.i.i ]
  %i.ao = icmp eq ptr %.sroa.11.1.i.i, %i.an      ; 4 uses
  %.sroa.01.0.i.i = select i1 %i.ao, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ao, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !22197, !nonnull !6, !noundef !6
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ao, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val1.i.i.i = load i64, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !22197, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.pre.i.i)
  %i.ap = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.pre.i.i, i64 %spec.store.select.i.i.i.i.i), !noalias !22198 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp eq i32 %i.ap, 0
  %i.as = sub i64 %.val1.i.i.i, %.val3.i.pre.i.i
  %spec.select.i.i.i.i.i = select i1 %i.ar, i64 %i.as, i64 %i.aq
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.016.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false), !alias.scope !22199, !noalias !22200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.i.i, i64 40, i1 false), !noalias !22197
  %spec.select.i.i.lobit.i.i.i = lshr i64 %spec.select.i.i.i.i.i, 63
  %i.au = add i64 %spec.select.i.i.lobit.i.i.i, %.sroa.19.1.i.i ; 6 uses
  %.sroa.11.1.sroa.gep27.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 40
  br i1 %i.ao, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB1x_16sort_unstable_byNCNvMB1z_NtB1z_13SemanticModel35expected_string_literal_completions0E0EB1B_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.11.036.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.i.i ], [ %.sroa.11.033.i.i, %bb.f ] ; 4 uses
  %.sroa.016.035.i.i = phi ptr [ %.sroa.11.036.i.i, %.lr.ph.i.i ], [ %i.al, %bb.f ] ; 3 uses
  %.sroa.19.034.i.i = phi i64 [ %i.bc, %.lr.ph.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.av = getelementptr i8, ptr %.sroa.016.035.i.i, i64 48
  %.val.i9.i.i = load ptr, ptr %i.av, align 8, !alias.scope !22199, !noalias !22201, !nonnull !6, !noundef !6
  %i.aw = getelementptr i8, ptr %.sroa.016.035.i.i, i64 56
  %.val1.i10.i.i = load i64, ptr %i.aw, align 8, !alias.scope !22199, !noalias !22201, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i13.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i10.i.i, i64 %.val3.i.pre.i.i)
  %i.ax = tail call i32 @memcmp(ptr nonnull readonly %.val.i9.i.i, ptr nonnull readonly %.val2.i.pre.i.i, i64 %spec.store.select.i.i.i13.i.i), !noalias !22202 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %.val1.i10.i.i, %.val3.i.pre.i.i
  %spec.select.i.i.i14.i.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %.sroa.19.034.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.016.035.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !alias.scope !22199, !noalias !22201
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.036.i.i, i64 40, i1 false), !alias.scope !22199, !noalias !22201
  %spec.select.i.i.lobit.i15.i.i = lshr i64 %spec.select.i.i.i14.i.i, 63
  %i.bc = add i64 %spec.select.i.i.lobit.i15.i.i, %.sroa.19.034.i.i ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.036.i.i, i64 40 ; 3 uses
  %i.bd = icmp ult ptr %.sroa.11.0.i.i, %i.an
  br i1 %i.bd, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB1x_16sort_unstable_byNCNvMB1z_NtB1z_13SemanticModel35expected_string_literal_completions0E0EB1B_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22195
  %.not7.i = icmp ult i64 %i.au, %.sroa.15.080122
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletion12split_at_mutBy_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB1x_16sort_unstable_byNCNvMB1z_NtB1z_13SemanticModel35expected_string_literal_completions0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletion12split_at_mutBy_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB1x_16sort_unstable_byNCNvMB1z_NtB1z_13SemanticModel35expected_string_literal_completions0E0EB1B_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletion14swap_uncheckedBy_(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.080122, i64 noundef 0, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.081121, i64 %i.au ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = xor i64 %i.au, -1
  %i.bh = add i64 %.sroa.15.080122, %i.bg
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB17_16sort_unstable_byNCNvMB19_NtB19_13SemanticModel35expected_string_literal_completions0E0EB1b_(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %.sroa.023.079123, i32 noundef %i.f, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvMB8_SB15_16sort_unstable_byNCNvMB17_NtB17_13SemanticModel35expected_string_literal_completions0E0EB19_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %i.aj ; 2 uses
  %i.bj = getelementptr i8, ptr %.sroa.023.079123, i64 8
  %.sroa.023.0.val = load ptr, ptr %i.bj, align 8, !nonnull !6, !noundef !6
  %i.bk = getelementptr i8, ptr %.sroa.023.079123, i64 16
  %.sroa.023.0.val34 = load i64, ptr %i.bk, align 8, !noundef !6 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 8
  %.val = load ptr, ptr %i.bl, align 8, !nonnull !6, !noundef !6
  %i.bm = getelementptr i8, ptr %i.bi, i64 16
  %.val35 = load i64, ptr %i.bm, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.023.0.val34, i64 %.val35)
  %i.bn = tail call i32 @memcmp(ptr nonnull readonly %.sroa.023.0.val, ptr nonnull readonly %.val, i64 %spec.store.select.i.i) ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp eq i32 %i.bn, 0
  %i.bq = sub i64 %.sroa.023.0.val34, %.val35
  %spec.select.i.i = select i1 %i.bp, i64 %i.bq, i64 %i.bo
  %i.br = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.br, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22203)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletion14swap_uncheckedBy_(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.080122, i64 noundef 0, i64 noundef range(i64 0, 230584300921369395) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 40 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.bs, i64 40, i1 false), !noalias !22205
  %i.bt = mul nuw nsw i64 %.sroa.15.080122, 40
  %i.bu = getelementptr i8, ptr %.sroa.0.081121, i64 %i.bt ; 2 uses
  %.sroa.11.032.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 80
  %.phi.trans.insert.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 8
  %.val2.i.pre.i.i44 = load ptr, ptr %.phi.trans.insert.i.i43, align 8, !alias.scope !22207, !noalias !6 ; 2 uses
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 16
  %.val3.i.pre.i.i45 = load i64, ptr %.phi.trans.insert43.i.i, align 8, !alias.scope !22207, !noalias !6 ; 4 uses
  br label %.lr.ph.i.i46

.preheader.i.i50:                                 ; preds = %.lr.ph.i.i46, %.preheader.i.i50
  %.sroa.19.1.i.i51 = phi i64 [ %i.cd, %.preheader.i.i50 ], [ %i.cn, %.lr.ph.i.i46 ] ; 2 uses
  %.sroa.11.1.i.i52 = phi ptr [ %.sroa.11.1.sroa.gep26.i.i, %.preheader.i.i50 ], [ %.sroa.11.0.i.i49, %.lr.ph.i.i46 ] ; 6 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.11.1.i.i52, %.preheader.i.i50 ], [ %.sroa.11.035.i.i, %.lr.ph.i.i46 ]
  %i.bv = icmp eq ptr %.sroa.11.1.i.i52, %i.bu    ; 4 uses
  %.sroa.01.0.i.i53 = select i1 %i.bv, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bv, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i56 = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !22208, !nonnull !6, !noundef !6
  %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bv, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val1.i.i.i57 = load i64, ptr %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !22208, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.pre.i.i45, i64 %.val1.i.i.i57)
  %i.bw = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i44, ptr nonnull readonly %.val.i.i.i56, i64 %spec.store.select.i.i.i.i.i.i), !noalias !22209 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp eq i32 %i.bw, 0
  %i.bz = sub i64 %.val3.i.pre.i.i45, %.val1.i.i.i57
  %spec.select.i.i.i.i.i.i = select i1 %i.by, i64 %i.bz, i64 %i.bx
  %i.ca = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %i.cb = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %.sroa.19.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cb, i64 40, i1 false), !alias.scope !22210, !noalias !22211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.i.i53, i64 40, i1 false), !noalias !22208
  %i.cc = zext i1 %i.ca to i64
  %i.cd = add i64 %.sroa.19.1.i.i51, %i.cc        ; 4 uses
  %.sroa.11.1.sroa.gep26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i52, i64 40
  br i1 %i.bv, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMB1z_NtB1z_13SemanticModel35expected_string_literal_completions0E0E0EB1B_.exit.i, label %.preheader.i.i50

.lr.ph.i.i46:                                     ; preds = %.lr.ph.i.i46, %bb.i
  %.sroa.11.035.i.i = phi ptr [ %.sroa.11.0.i.i49, %.lr.ph.i.i46 ], [ %.sroa.11.032.i.i, %bb.i ] ; 4 uses
  %.sroa.015.034.i.i = phi ptr [ %.sroa.11.035.i.i, %.lr.ph.i.i46 ], [ %i.bs, %bb.i ] ; 3 uses
  %.sroa.19.033.i.i = phi i64 [ %i.cn, %.lr.ph.i.i46 ], [ 0, %bb.i ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.sroa.015.034.i.i, i64 48
  %.val.i9.i.i47 = load ptr, ptr %i.ce, align 8, !alias.scope !22210, !noalias !22212, !nonnull !6, !noundef !6
  %i.cf = getelementptr i8, ptr %.sroa.015.034.i.i, i64 56
  %.val1.i10.i.i48 = load i64, ptr %i.cf, align 8, !alias.scope !22210, !noalias !22212, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i13.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.pre.i.i45, i64 %.val1.i10.i.i48)
  %i.cg = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i44, ptr nonnull readonly %.val.i9.i.i47, i64 %spec.store.select.i.i.i.i13.i.i), !noalias !22213 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp eq i32 %i.cg, 0
  %i.cj = sub i64 %.val3.i.pre.i.i45, %.val1.i10.i.i48
  %spec.select.i.i.i.i14.i.i = select i1 %i.ci, i64 %i.cj, i64 %i.ch
  %i.ck = icmp sgt i64 %spec.select.i.i.i.i14.i.i, -1
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %.sroa.19.033.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.015.034.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cl, i64 40, i1 false), !alias.scope !22210, !noalias !22212
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.035.i.i, i64 40, i1 false), !alias.scope !22210, !noalias !22212
  %i.cm = zext i1 %i.ck to i64
  %i.cn = add i64 %.sroa.19.033.i.i, %i.cm        ; 2 uses
  %.sroa.11.0.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.11.035.i.i, i64 40 ; 3 uses
  %i.co = icmp ult ptr %.sroa.11.0.i.i49, %i.bu
  br i1 %i.co, label %.lr.ph.i.i46, label %.preheader.i.i50

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMB1z_NtB1z_13SemanticModel35expected_string_literal_completions0E0E0EB1B_.exit.i: ; preds = %.preheader.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22206
  %.not7.i58 = icmp ult i64 %i.cd, %.sroa.15.080122
  br i1 %.not7.i58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMB1z_NtB1z_13SemanticModel35expected_string_literal_completions0E0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMB1z_NtB1z_13SemanticModel35expected_string_literal_completions0E0E0EB1B_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletion14swap_uncheckedBy_(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.080122, i64 noundef 0, i64 noundef %i.cd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.cp = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.cq = sub nuw nsw i64 %.sroa.15.080122, %i.cp
  %i.cr = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.081121, i64 %i.cp
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletion12split_at_mutBy_.exit
  %.sroa.023.0.be = phi ptr [ %i.be, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletion12split_at_mutBy_.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.bh, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletion12split_at_mutBy_.exit ], [ %i.cq, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bf, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletion12split_at_mutBy_.exit ], [ %i.cr, %bb.k ] ; 3 uses
  %i.cs = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.cs, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB17_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB19_11apply_fixes0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(48) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph156

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph156

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB1f_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1h_11apply_fixes0E0EB1j_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa)
  br label %bb.k

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.099.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.098.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB17_11apply_fixes0E0EB19_(ptr noalias noundef nonnull align 8 %.sroa.0.099.lcssa, i64 noundef %.sroa.15.098.lcssa, ptr noalias nonnull align 8 poison)
  br label %bb.k

.lr.ph156:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.095155 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.096153 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.098152 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 14 uses
  %.sroa.0.099151 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 25 uses
  %i.f = add nsw i32 %.sroa.026.095155, -1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22234)
  %i.g = lshr i64 %.sroa.15.098152, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 192
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.099151, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 336
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.099151, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.15.098152, 64
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph156
  %i.k = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB14_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB16_11apply_fixes0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.099151, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB17_11apply_fixes0E0EB19_.exit

bb.c:                                             ; preds = %.lr.ph156
  %i.l = getelementptr i8, ptr %.sroa.0.099151, i64 8
  %.val10.i = load ptr, ptr %i.l, align 8, !alias.scope !22234 ; 4 uses
  %i.m = getelementptr i8, ptr %.sroa.0.099151, i64 16
  %.val11.i = load i64, ptr %i.m, align 8, !alias.scope !22234, !noundef !6
  %i.n = getelementptr i8, ptr %i.h, i64 8
  %.val12.i = load ptr, ptr %i.n, align 8, !alias.scope !22234 ; 4 uses
  %i.o = getelementptr i8, ptr %i.h, i64 16
  %.val13.i = load i64, ptr %i.o, align 8, !alias.scope !22234
  %.not.i.not.i.i = icmp eq i64 %.val11.i, 0      ; 4 uses
  br i1 %.not.i.not.i.i, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.q = load i32, ptr %i.p, align 8, !noalias !22234, !noundef !6
  br label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i

_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i: ; preds = %bb.d, %bb.c
  %.sroa.3.0.i.i.i = phi i32 [ %i.q, %bb.d ], [ undef, %bb.c ]
  %.not.i9.i.i = icmp ne i64 %.val13.i, 0         ; 4 uses
  br i1 %.not.i9.i.i, label %bb.e, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit.i

bb.e:                                             ; preds = %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16
  %i.s = load i32, ptr %i.r, align 8, !noalias !22234, !noundef !6
  %i.t = icmp ult i32 %.sroa.3.0.i.i.i, %i.s
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit.i: ; preds = %bb.e, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i
  %.sroa.3.0.i10.i.i = phi i1 [ %i.t, %bb.e ], [ false, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i ]
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.not.i.i, i1 %.not.i9.i.i, i1 %.sroa.3.0.i10.i.i ; 2 uses
  %i.u = getelementptr i8, ptr %i.i, i64 8
  %.val8.i = load ptr, ptr %i.u, align 8, !alias.scope !22234 ; 4 uses
  %i.v = getelementptr i8, ptr %i.i, i64 16
  %.val9.i = load i64, ptr %i.v, align 8, !alias.scope !22234
  br i1 %.not.i.not.i.i, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i15.i, label %bb.f

bb.f:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %i.w = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.x = load i32, ptr %i.w, align 8, !noalias !22234, !noundef !6
  br label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i15.i

_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i15.i: ; preds = %bb.f, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit.i
  %.sroa.3.0.i.i16.i = phi i32 [ %i.x, %bb.f ], [ undef, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit.i ]
  %.not.i9.i17.i = icmp ne i64 %.val9.i, 0        ; 4 uses
  br i1 %.not.i9.i17.i, label %bb.g, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit20.i

bb.g:                                             ; preds = %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i15.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %i.y = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.z = load i32, ptr %i.y, align 8, !noalias !22234, !noundef !6
  %i.aa = icmp ult i32 %.sroa.3.0.i.i16.i, %i.z
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit20.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit20.i: ; preds = %bb.g, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i15.i
  %.sroa.3.0.i10.i18.i = phi i1 [ %i.aa, %bb.g ], [ false, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i15.i ]
  %.sroa.0.0.i.i.i19.i = select i1 %.not.i.not.i.i, i1 %.not.i9.i17.i, i1 %.sroa.3.0.i10.i18.i
  %i.ab = xor i1 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i19.i
  br i1 %i.ab, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB17_11apply_fixes0E0EB19_.exit, label %bb.h

bb.h:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit20.i
  br i1 %.not.i9.i.i, label %bb.i, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i22.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !noalias !22234, !noundef !6
  br label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i22.i

_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i22.i: ; preds = %bb.i, %bb.h
  %.sroa.3.0.i.i23.i = phi i32 [ %i.ad, %bb.i ], [ undef, %bb.h ]
  br i1 %.not.i9.i17.i, label %bb.j, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit27.i

bb.j:                                             ; preds = %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i22.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !noalias !22234, !noundef !6
  %i.ag = icmp ult i32 %.sroa.3.0.i.i23.i, %i.af
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit27.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit27.i: ; preds = %bb.j, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i22.i
  %.sroa.3.0.i10.i25.i = phi i1 [ %i.ag, %bb.j ], [ false, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i22.i ]
  %.sroa.0.0.i.i.i26.i = select i1 %.not.i9.i.i, i1 %.sroa.3.0.i10.i25.i, i1 %.not.i9.i17.i
  %i.ah = xor i1 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i26.i
  %..i.i = select i1 %i.ah, ptr %i.i, ptr %i.h
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB17_11apply_fixes0E0EB19_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB17_11apply_fixes0E0EB19_.exit: ; preds = %bb.b, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit20.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit27.i
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.b ], [ %.sroa.0.099151, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit20.i ], [ %..i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit27.i ]
  %i.ai = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.aj = ptrtoint ptr %.sroa.0.099151 to i64
  %i.ak = sub nuw i64 %i.ai, %i.aj                ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ak, 48         ; 3 uses
  %i.al = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.098152
  tail call void @llvm.assume(i1 %i.al)
  %.not = icmp eq ptr %.sroa.023.096153, null
  br i1 %.not, label %.lr.ph.i.i, label %bb.p

bb.k:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

.lr.ph.i.i:                                       ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB17_11apply_fixes0E0EB19_.exit, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22235)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix14swap_uncheckedBy_(ptr noalias noundef nonnull align 8 %.sroa.0.099151, i64 noundef range(i64 33, 192153584101141163) %.sroa.15.098152, i64 noundef 0, i64 noundef range(i64 0, 192153584101141162) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.099151, i64 48 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false), !noalias !22237
  %i.an = mul nuw nsw i64 %.sroa.15.098152, 48
  %i.ao = getelementptr i8, ptr %.sroa.0.099151, i64 %i.an ; 4 uses
  %.sroa.11.037.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.099151, i64 96 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.099151, i64 8
  %.val2.i.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !22239, !noalias !6 ; 2 uses
  %.phi.trans.insert53.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.099151, i64 16
  %.val3.i.pre.i.i = load i64, ptr %.phi.trans.insert53.i.i, align 8, !alias.scope !22239, !noalias !6
  %i.ap = icmp eq i64 %.val3.i.pre.i.i, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2.i.pre.i.i, i64 16 ; 2 uses
  br i1 %i.ap, label %.lr.ph.split.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.pre.i.i) ]
  %i.ar = load i32, ptr %i.aq, align 8, !noalias !22240, !noundef !6
  br label %bb.l

bb.l:                                             ; preds = %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i14.us.i.i, %.lr.ph.split.us.i.i
  %.sroa.11.040.us.i.i = phi ptr [ %.sroa.11.037.i.i, %.lr.ph.split.us.i.i ], [ %.sroa.11.0.us.i.i, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i14.us.i.i ] ; 4 uses
  %.sroa.020.039.us.i.i = phi ptr [ %i.am, %.lr.ph.split.us.i.i ], [ %.sroa.11.040.us.i.i, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i14.us.i.i ] ; 3 uses
  %.sroa.19.038.us.i.i = phi i64 [ 0, %.lr.ph.split.us.i.i ], [ %i.az, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i14.us.i.i ] ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.020.039.us.i.i, i64 64
  %.val1.i9.us.i.i = load i64, ptr %i.as, align 8, !alias.scope !22241, !noalias !22242, !noundef !6
  %.not.i.not.i.i12.us.i.i = icmp eq i64 %.val1.i9.us.i.i, 0
  br i1 %.not.i.not.i.i12.us.i.i, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i14.us.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr i8, ptr %.sroa.020.039.us.i.i, i64 56
  %.val.i13.us.i.i = load ptr, ptr %i.at, align 8, !alias.scope !22241, !noalias !22242, !nonnull !6, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i13.us.i.i, i64 16
  %i.av = load i32, ptr %i.au, align 8, !noalias !22240, !noundef !6
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB17_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB19_11apply_fixes0E0EB1b_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.0.us.i.i, i64 48, i1 false), !noalias !22243
  %i.bh = zext i1 %.sroa.0.0.i.i.i.i.us.i.i to i64
  %i.bi = add i64 %.sroa.19.1.us.i.i, %i.bh       ; 3 uses
  %.sroa.11.1.sroa.gep31.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.us.i.i, i64 48
  br i1 %i.bb, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0EB1B_.exit.i, label %.preheader.split.us.i.i

_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.i: ; preds = %.lr.ph.split.i.i, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.i
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep31.i.i, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.split.i.i ] ; 4 uses
  %.sroa.020.1.i.i = phi ptr [ %.sroa.11.1.i.i, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.i ], [ %.sroa.11.040.i.i, %.lr.ph.split.i.i ]
  %i.bj = icmp eq ptr %.sroa.11.1.i.i, %i.ao      ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.bj, ptr %i.b, ptr %.sroa.11.1.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.020.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false), !alias.scope !22241, !noalias !22245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.0.i.i, i64 48, i1 false), !noalias !22243
  %.sroa.11.1.sroa.gep31.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 48
  br i1 %i.bj, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0EB1B_.exit.thread6.i, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0EB1B_.exit.thread6.i: ; preds = %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22238
  br label %bb.x

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.split.i.i
  %.sroa.11.040.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.split.i.i ], [ %.sroa.11.037.i.i, %.lr.ph.i.i ] ; 4 uses
  %.sroa.020.039.i.i = phi ptr [ %.sroa.11.040.i.i, %.lr.ph.split.i.i ], [ %i.am, %.lr.ph.i.i ]
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.020.039.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false), !alias.scope !22241, !noalias !22242
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.040.i.i, i64 48, i1 false), !alias.scope !22241, !noalias !22242
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.040.i.i, i64 48 ; 3 uses
  %i.bk = icmp ult ptr %.sroa.11.0.i.i, %i.ao
  br i1 %i.bk, label %.lr.ph.split.i.i, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0EB1B_.exit.i: ; preds = %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22238
  %.not7.i = icmp ult i64 %i.bi, %.sroa.15.098152
  br i1 %.not7.i, label %bb.x, label %bb.o

bb.o:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB17_11apply_fixes0E0EB19_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.099151, i64 %i.ak ; 2 uses
  %i.bm = getelementptr i8, ptr %.sroa.023.096153, i64 16
  %.sroa.023.0.val34 = load i64, ptr %i.bm, align 8, !noundef !6
  %i.bn = getelementptr i8, ptr %i.bl, i64 8
  %.val = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bl, i64 16
  %.val35 = load i64, ptr %i.bo, align 8
  %.not.i.not.i = icmp eq i64 %.sroa.023.0.val34, 0 ; 2 uses
  br i1 %.not.i.not.i, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr i8, ptr %.sroa.023.096153, i64 8
  %.sroa.023.0.val = load ptr, ptr %i.bp, align 8, !nonnull !6, !noundef !6
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.023.0.val, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !noundef !6
  br label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i

_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i: ; preds = %bb.q, %bb.p
  %.sroa.3.0.i.i = phi i32 [ %i.br, %bb.q ], [ undef, %bb.p ]
  %.not.i9.i = icmp ne i64 %.val35, 0             ; 2 uses
  br i1 %.not.i9.i, label %bb.r, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit

bb.r:                                             ; preds = %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !noundef !6
  %i.bu = icmp ult i32 %.sroa.3.0.i.i, %i.bt
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit: ; preds = %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i, %bb.r
  %.sroa.3.0.i10.i = phi i1 [ %i.bu, %bb.r ], [ false, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i ]
  %.sroa.0.0.i.i.i = select i1 %.not.i.not.i, i1 %.not.i9.i, i1 %.sroa.3.0.i10.i
  br i1 %.sroa.0.0.i.i.i, label %.lr.ph.i.i, label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix20sort_unstable_by_keyINtNtB7_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBz_11apply_fixes0E0BB_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22246)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix14swap_uncheckedBy_(ptr noalias noundef nonnull align 8 %.sroa.0.099151, i64 noundef range(i64 33, 192153584101141163) %.sroa.15.098152, i64 noundef 0, i64 noundef range(i64 0, 192153584101141162) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.099151, i64 48 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.bv, i64 48, i1 false), !noalias !22248
  %i.bw = mul nuw nsw i64 %.sroa.15.098152, 48
  %i.bx = getelementptr i8, ptr %.sroa.0.099151, i64 %i.bw ; 4 uses
  %.sroa.11.037.i.i44 = getelementptr inbounds nuw i8, ptr %.sroa.0.099151, i64 96 ; 2 uses
  %.phi.trans.insert.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.099151, i64 16
  %.val3.i.pre.i.i46 = load i64, ptr %.phi.trans.insert.i.i45, align 8, !alias.scope !22250, !noalias !6
  %.not.i.not.i.i.i12.i.i = icmp eq i64 %.val3.i.pre.i.i46, 0
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.099151, i64 8
  %.val2.i13.i.i = load ptr, ptr %i.by, align 8, !alias.scope !22250, !nonnull !6
  %i.bz = getelementptr inbounds nuw i8, ptr %.val2.i13.i.i, i64 16 ; 2 uses
  br i1 %.not.i.not.i.i.i12.i.i, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.us.i.i, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.i.i

_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.us.i.i: ; preds = %.lr.ph.i.i43, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.us.i.i
  %.sroa.11.040.us.i.i55 = phi ptr [ %.sroa.11.0.us.i.i58, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.us.i.i ], [ %.sroa.11.037.i.i44, %.lr.ph.i.i43 ] ; 4 uses
  %.sroa.020.039.us.i.i56 = phi ptr [ %.sroa.11.040.us.i.i55, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.us.i.i ], [ %i.bv, %.lr.ph.i.i43 ] ; 2 uses
  %.sroa.19.038.us.i.i57 = phi i64 [ %i.cd, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.us.i.i ], [ 0, %.lr.ph.i.i43 ] ; 2 uses
  %i.ca = getelementptr i8, ptr %.sroa.020.039.us.i.i56, i64 64
  %.val1.i10.us.i.i = load i64, ptr %i.ca, align 8, !alias.scope !22251, !noalias !22252
  %.not.i9.i.i.i16.us.not.i.i = icmp eq i64 %.val1.i10.us.i.i, 0
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %.sroa.19.038.us.i.i57 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.020.039.us.i.i56, ptr noundef nonnull align 8 dereferenceable(48) %i.cb, i64 48, i1 false), !alias.scope !22251, !noalias !22252
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.040.us.i.i55, i64 48, i1 false), !alias.scope !22251, !noalias !22252
  %i.cc = zext i1 %.not.i9.i.i.i16.us.not.i.i to i64
  %i.cd = add i64 %.sroa.19.038.us.i.i57, %i.cc   ; 2 uses
  %.sroa.11.0.us.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.11.040.us.i.i55, i64 48 ; 3 uses
  %i.ce = icmp ult ptr %.sroa.11.0.us.i.i58, %i.bx
  br i1 %i.ce, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.us.i.i, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.us.i.i

_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.us.i.i: ; preds = %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.us.i.i, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.us.i.i
  %.sroa.19.1.us.i.i59 = phi i64 [ %i.ci, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.us.i.i ], [ %i.cd, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.us.i.i ] ; 2 uses
  %.sroa.11.1.us.i.i60 = phi ptr [ %.sroa.11.1.sroa.gep31.us.i.i69, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.us.i.i ], [ %.sroa.11.0.us.i.i58, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.us.i.i ] ; 5 uses
  %.sroa.020.1.us.i.i61 = phi ptr [ %.sroa.11.1.us.i.i60, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.us.i.i ], [ %.sroa.11.040.us.i.i55, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.us.i.i ]
  %i.cf = icmp eq ptr %.sroa.11.1.us.i.i60, %i.bx ; 3 uses
  %.sroa.01.0.us.i.i62 = select i1 %i.cf, ptr %i.a, ptr %.sroa.11.1.us.i.i60
  %.sroa.01.0.sroa.sel29.v.us.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cf, ptr %i.a, ptr %.sroa.11.1.us.i.i60
  %.sroa.01.0.sroa.sel29.v.us.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel29.v.us.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val1.i.us.i.i68 = load i64, ptr %.sroa.01.0.sroa.sel29.v.us.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !22253
  %.not.i9.i.i.i.us.not.i.i = icmp eq i64 %.val1.i.us.i.i68, 0
  %i.cg = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %.sroa.19.1.us.i.i59 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.020.1.us.i.i61, ptr noundef nonnull align 8 dereferenceable(48) %i.cg, i64 48, i1 false), !alias.scope !22251, !noalias !22254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.0.us.i.i62, i64 48, i1 false), !noalias !22253
  %i.ch = zext i1 %.not.i9.i.i.i.us.not.i.i to i64
  %i.ci = add i64 %.sroa.19.1.us.i.i59, %i.ch     ; 2 uses
  %.sroa.11.1.sroa.gep31.us.i.i69 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.us.i.i60, i64 48
  br i1 %i.cf, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0E0EB1B_.exit.i, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.us.i.i

_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.i.i: ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1B_11apply_fixes0E0E0E0B1D_.exit19.i.i, %bb.t
  %.sroa.19.1.i.i = phi i64 [ %i.cq, %bb.t ], [ %i.cz, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1B_11apply_fixes0E0E0E0B1D_.exit19.i.i ] ; 2 uses
  %.sroa.11.1.i.i50 = phi ptr [ %.sroa.11.1.sroa.gep31.i.i53, %bb.t ], [ %.sroa.11.0.i.i49, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1B_11apply_fixes0E0E0E0B1D_.exit19.i.i ] ; 6 uses
  %.sroa.020.1.i.i51 = phi ptr [ %.sroa.11.1.i.i50, %bb.t ], [ %.sroa.11.040.i.i47, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1B_11apply_fixes0E0E0E0B1D_.exit19.i.i ]
  %i.cj = icmp eq ptr %.sroa.11.1.i.i50, %i.bx    ; 4 uses
  %.sroa.01.0.i.i52 = select i1 %i.cj, ptr %i.a, ptr %.sroa.11.1.i.i50
  %.sroa.01.0.sroa.sel29.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cj, ptr %i.a, ptr %.sroa.11.1.i.i50
  %.sroa.01.0.sroa.sel29.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel29.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val1.i.i.i = load i64, ptr %.sroa.01.0.sroa.sel29.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !22253
  %.not.i9.i.i.i.not.i.i = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not.i9.i.i.i.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.i.i
  %i.ck = load i32, ptr %i.bz, align 8, !noalias !22255, !noundef !6
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cj, ptr %i.a, ptr %.sroa.11.1.i.i50
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !22253, !nonnull !6, !noundef !6
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.cm = load i32, ptr %i.cl, align 8, !noalias !22255, !noundef !6
  %i.cn = icmp uge i32 %i.ck, %i.cm
  %i.co = zext i1 %i.cn to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.i.i
  %.sroa.3.0.i10.i.i.i.i.i = phi i64 [ %i.co, %bb.s ], [ 1, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.020.1.i.i51, ptr noundef nonnull align 8 dereferenceable(48) %i.cp, i64 48, i1 false), !alias.scope !22251, !noalias !22254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.0.i.i52, i64 48, i1 false), !noalias !22253
  %i.cq = add i64 %.sroa.3.0.i10.i.i.i.i.i, %.sroa.19.1.i.i ; 2 uses
  %.sroa.11.1.sroa.gep31.i.i53 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i50, i64 48
  br i1 %i.cj, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0E0EB1B_.exit.i, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.i.i

_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.i.i: ; preds = %.lr.ph.i.i43, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1B_11apply_fixes0E0E0E0B1D_.exit19.i.i
  %.sroa.11.040.i.i47 = phi ptr [ %.sroa.11.0.i.i49, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1B_11apply_fixes0E0E0E0B1D_.exit19.i.i ], [ %.sroa.11.037.i.i44, %.lr.ph.i.i43 ] ; 4 uses
  %.sroa.020.039.i.i48 = phi ptr [ %.sroa.11.040.i.i47, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1B_11apply_fixes0E0E0E0B1D_.exit19.i.i ], [ %i.bv, %.lr.ph.i.i43 ] ; 3 uses
  %.sroa.19.038.i.i = phi i64 [ %i.cz, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1B_11apply_fixes0E0E0E0B1D_.exit19.i.i ], [ 0, %.lr.ph.i.i43 ] ; 2 uses
  %i.cr = getelementptr i8, ptr %.sroa.020.039.i.i48, i64 64
  %.val1.i10.i.i = load i64, ptr %i.cr, align 8, !alias.scope !22251, !noalias !22252
  %.not.i9.i.i.i16.not.i.i = icmp eq i64 %.val1.i10.i.i, 0
  br i1 %.not.i9.i.i.i16.not.i.i, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1B_11apply_fixes0E0E0E0B1D_.exit19.i.i, label %bb.u

bb.u:                                             ; preds = %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.i.i
  %i.cs = load i32, ptr %i.bz, align 8, !noalias !22256, !noundef !6
  %i.ct = getelementptr i8, ptr %.sroa.020.039.i.i48, i64 56
  %.val.i9.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !22251, !noalias !22252, !nonnull !6, !noundef !6
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i9.i.i, i64 16
  %i.cv = load i32, ptr %i.cu, align 8, !noalias !22256, !noundef !6
  %i.cw = icmp uge i32 %i.cs, %i.cv
  %i.cx = zext i1 %i.cw to i64
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1B_11apply_fixes0E0E0E0B1D_.exit19.i.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1B_11apply_fixes0E0E0E0B1D_.exit19.i.i: ; preds = %bb.u, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.i.i
  %.sroa.3.0.i10.i.i.i17.i.i = phi i64 [ %i.cx, %bb.u ], [ 1, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.i.i ]
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %.sroa.19.038.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.020.039.i.i48, ptr noundef nonnull align 8 dereferenceable(48) %i.cy, i64 48, i1 false), !alias.scope !22251, !noalias !22252
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.040.i.i47, i64 48, i1 false), !alias.scope !22251, !noalias !22252
  %i.cz = add i64 %.sroa.3.0.i10.i.i.i17.i.i, %.sroa.19.038.i.i ; 2 uses
  %.sroa.11.0.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.11.040.i.i47, i64 48 ; 3 uses
  %i.da = icmp ult ptr %.sroa.11.0.i.i49, %i.bx
  br i1 %i.da, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i14.i.i, label %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0E0EB1B_.exit.i: ; preds = %bb.t, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.us.i.i
  %.us-phi45.i.i = phi i64 [ %i.ci, %_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixes0B5_.exit.i.i.i.us.i.i ], [ %i.cq, %bb.t ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22249
  %.not7.i54 = icmp ult i64 %.us-phi45.i.i, %.sroa.15.098152
  br i1 %.not7.i54, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0E0EB1B_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix14swap_uncheckedBy_(ptr noalias noundef nonnull align 8 %.sroa.0.099151, i64 noundef range(i64 33, 192153584101141163) %.sroa.15.098152, i64 noundef 0, i64 noundef %.us-phi45.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.db = add nuw nsw i64 %.us-phi45.i.i, 1       ; 2 uses
  %i.dc = sub nuw nsw i64 %.sroa.15.098152, %i.db
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.099151, i64 %i.db
  br label %.backedge

.backedge:                                        ; preds = %bb.w, %bb.x
  %.sroa.023.0.be = phi ptr [ %i.dg, %bb.x ], [ null, %bb.w ]
  %.sroa.15.0.be = phi i64 [ %i.dj, %bb.x ], [ %i.dc, %bb.w ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.dh, %bb.x ], [ %i.dd, %bb.w ] ; 3 uses
  %i.de = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.de, label %._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0EB1B_.exit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0EB1B_.exit.thread6.i
  %.sroa.0.0.i5.i = phi i64 [ 0, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0EB1B_.exit.thread6.i ], [ %i.bi, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1z_11apply_fixes0E0EB1B_.exit.i ] ; 5 uses
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFix14swap_uncheckedBy_(ptr noalias noundef nonnull align 8 %.sroa.0.099151, i64 noundef range(i64 33, 192153584101141163) %.sroa.15.098152, i64 noundef 0, i64 noundef %.sroa.0.0.i5.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.df = icmp ult i64 %.sroa.0.0.i5.i, %.sroa.15.098152
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.099151, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.di = xor i64 %.sroa.0.0.i5.i, -1
  %i.dj = add i64 %.sroa.15.098152, %i.di
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB17_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB19_11apply_fixes0E0EB1b_(ptr noalias noundef nonnull align 8 %.sroa.0.099151, i64 noundef %.sroa.0.0.i5.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %.sroa.023.096153, i32 noundef %i.f, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB17_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(4) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 5 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph158

.lr.ph:                                           ; preds = %.backedge
  %i.d = icmp eq i32 %i.hg, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph158

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22309)
  %i.e = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.e, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB1f_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22309
  %i.f = lshr i64 %.sroa.15.0.lcssa, 1            ; 4 uses
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 18 ; 2 uses
  %..i = select i1 %i.g, i64 %.sroa.15.0.lcssa, i64 %i.f
  %i.h = getelementptr [4 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f ; 3 uses
  %i.i = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.b
  %.sroa.8.0.i = phi i64 [ %..i, %bb.b ], [ %i.i, %bb.j ] ; 5 uses
  %.sroa.02.0.i = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %i.h, %bb.j ] ; 31 uses
  %i.j = icmp ugt i64 %.sroa.8.0.i, 12
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ugt i64 %.sroa.8.0.i, 8
  br i1 %i.k, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 48 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.l, align 4, !range !19, !alias.scope !22310, !noundef !6 ; 2 uses
  %.val1.i.i.i = load i32, ptr %.sroa.02.0.i, align 4, !range !19, !alias.scope !22310, !noundef !6 ; 2 uses
  %i.m = tail call i32 @llvm.umax.i32(i32 %.val.i.i.i, i32 %.val1.i.i.i) ; 2 uses
  %i.n = tail call i32 @llvm.umin.i32(i32 %.val.i.i.i, i32 %.val1.i.i.i) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 40 ; 2 uses
  %.val.i1.i.i = load i32, ptr %i.p, align 4, !range !19, !alias.scope !22310, !noundef !6 ; 2 uses
  %.val1.i2.i.i = load i32, ptr %i.o, align 4, !range !19, !alias.scope !22310, !noundef !6 ; 2 uses
  %i.q = tail call i32 @llvm.umax.i32(i32 %.val.i1.i.i, i32 %.val1.i2.i.i) ; 2 uses
  %i.r = tail call i32 @llvm.umin.i32(i32 %.val.i1.i.i, i32 %.val1.i2.i.i) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 36 ; 2 uses
  %.val.i3.i.i = load i32, ptr %i.t, align 4, !range !19, !alias.scope !22310, !noundef !6 ; 2 uses
  %.val1.i4.i.i = load i32, ptr %i.s, align 4, !range !19, !alias.scope !22310, !noundef !6 ; 2 uses
  %i.u = tail call i32 @llvm.umax.i32(i32 %.val.i3.i.i, i32 %.val1.i4.i.i) ; 2 uses
  %i.v = tail call i32 @llvm.umin.i32(i32 %.val.i3.i.i, i32 %.val1.i4.i.i) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 28 ; 2 uses
  %.val.i5.i.i = load i32, ptr %i.x, align 4, !range !19, !alias.scope !22310, !noundef !6 ; 2 uses
  %.val1.i6.i.i = load i32, ptr %i.w, align 4, !range !19, !alias.scope !22310, !noundef !6 ; 2 uses
  %i.y = tail call i32 @llvm.umax.i32(i32 %.val.i5.i.i, i32 %.val1.i6.i.i) ; 2 uses
  %i.z = tail call i32 @llvm.umin.i32(i32 %.val.i5.i.i, i32 %.val1.i6.i.i) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 20 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 44 ; 2 uses
  %.val.i7.i.i = load i32, ptr %i.ab, align 4, !range !19, !alias.scope !22310, !noundef !6 ; 2 uses
  %.val1.i8.i.i = load i32, ptr %i.aa, align 4, !range !19, !alias.scope !22310, !noundef !6 ; 2 uses
  %i.ac = tail call i32 @llvm.umax.i32(i32 %.val.i7.i.i, i32 %.val1.i8.i.i) ; 2 uses
  %i.ad = tail call i32 @llvm.umin.i32(i32 %.val.i7.i.i, i32 %.val1.i8.i.i) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32 ; 2 uses
  %.val.i9.i.i = load i32, ptr %i.af, align 4, !range !19, !alias.scope !22310, !noundef !6 ; 2 uses
  %.val1.i10.i.i = load i32, ptr %i.ae, align 4, !range !19, !alias.scope !22310, !noundef !6 ; 2 uses
  %i.ag = tail call i32 @llvm.umax.i32(i32 %.val.i9.i.i, i32 %.val1.i10.i.i) ; 2 uses
  %i.ah = tail call i32 @llvm.umin.i32(i32 %.val.i9.i.i, i32 %.val1.i10.i.i) ; 2 uses
  %i.ai = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 %i.r) ; 2 uses
  %i.aj = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.r) ; 2 uses
  %i.ak = tail call i32 @llvm.umax.i32(i32 %i.z, i32 %i.v) ; 2 uses
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.z, i32 %i.v) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 2 uses
  %.val1.i16.i.i = load i32, ptr %i.am, align 4, !range !19, !alias.scope !22310, !noundef !6 ; 2 uses
  %i.an = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 %.val1.i16.i.i) ; 2 uses
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %.val1.i16.i.i) ; 2 uses
  %i.ap = tail call i32 @llvm.umax.i32(i32 %i.u, i32 %i.y) ; 2 uses
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.y) ; 2 uses
  %i.ar = tail call i32 @llvm.umax.i32(i32 %i.q, i32 %i.ag) ; 2 uses
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.ag) ; 2 uses
  %i.at = tail call i32 @llvm.umax.i32(i32 %i.ao, i32 %i.n) ; 2 uses
  %i.au = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.n) ; 2 uses
  %i.av = tail call i32 @llvm.umax.i32(i32 %i.al, i32 %i.aj) ; 2 uses
  %i.aw = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %i.aj) ; 2 uses
  %i.ax = tail call i32 @llvm.umax.i32(i32 %i.ai, i32 %i.ak) ; 2 uses
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.ai, i32 %i.ak) ; 2 uses
  %i.az = tail call i32 @llvm.umax.i32(i32 %i.as, i32 %i.aq) ; 2 uses
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.as, i32 %i.aq) ; 2 uses
  %i.bb = tail call i32 @llvm.umax.i32(i32 %i.ar, i32 %i.ap) ; 2 uses
  %i.bc = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.ap) ; 2 uses
  %i.bd = tail call i32 @llvm.umax.i32(i32 %i.m, i32 %i.an) ; 2 uses
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.m, i32 %i.an) ; 2 uses
  %i.bf = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 %i.at) ; 2 uses
  %i.bg = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.at) ; 2 uses
  %i.bh = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 %i.ad) ; 2 uses
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %i.ad) ; 2 uses
  %i.bj = tail call i32 @llvm.umax.i32(i32 %i.be, i32 %i.az) ; 2 uses
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %i.az) ; 2 uses
  %i.bl = tail call i32 @llvm.umax.i32(i32 %i.bd, i32 %i.bb)
  %i.bm = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 %i.bb) ; 2 uses
  store i32 %i.bl, ptr %i.l, align 4, !alias.scope !22310
  %i.bn = tail call i32 @llvm.umax.i32(i32 %i.bi, i32 %i.au) ; 2 uses
  %i.bo = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.au) ; 2 uses
  %i.bp = tail call i32 @llvm.umax.i32(i32 %i.bk, i32 %i.ay) ; 2 uses
  %i.bq = tail call i32 @llvm.umin.i32(i32 %i.bk, i32 %i.ay) ; 2 uses
  %i.br = tail call i32 @llvm.umax.i32(i32 %i.ba, i32 %i.bg) ; 2 uses
  %i.bs = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 %i.bg) ; 2 uses
  %i.bt = tail call i32 @llvm.umax.i32(i32 %i.bj, i32 %i.bf) ; 2 uses
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 %i.bf) ; 2 uses
  %i.bv = tail call i32 @llvm.umax.i32(i32 %i.bm, i32 %i.bh) ; 2 uses
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.bh) ; 2 uses
  %i.bx = tail call i32 @llvm.umax.i32(i32 %i.aw, i32 %i.bo) ; 2 uses
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %i.bo)
  store i32 %i.by, ptr %.sroa.02.0.i, align 4, !alias.scope !22310
  %i.bz = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.av) ; 2 uses
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bn, i32 %i.av) ; 2 uses
  %i.cb = tail call i32 @llvm.umax.i32(i32 %i.bw, i32 %i.bu) ; 2 uses
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 %i.bu) ; 2 uses
  %i.cd = tail call i32 @llvm.umax.i32(i32 %i.bp, i32 %i.br) ; 2 uses
  %i.ce = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.br) ; 2 uses
  %i.cf = tail call i32 @llvm.umax.i32(i32 %i.bt, i32 %i.bv)
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 %i.bv) ; 2 uses
  store i32 %i.cf, ptr %i.ab, align 4, !alias.scope !22310
  %i.ch = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 %i.bx) ; 2 uses
  %i.ci = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 %i.bx) ; 2 uses
  %i.cj = tail call i32 @llvm.umax.i32(i32 %i.bs, i32 %i.ca) ; 2 uses
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.bs, i32 %i.ca) ; 2 uses
  %i.cl = tail call i32 @llvm.umax.i32(i32 %i.cc, i32 %i.bz) ; 2 uses
  %i.cm = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.bz) ; 2 uses
  %i.cn = tail call i32 @llvm.umax.i32(i32 %i.cg, i32 %i.cb)
  %i.co = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 %i.cb) ; 2 uses
  store i32 %i.cn, ptr %i.p, align 4, !alias.scope !22310
  %i.cp = tail call i32 @llvm.umax.i32(i32 %i.ck, i32 %i.ci) ; 2 uses
  %i.cq = tail call i32 @llvm.umin.i32(i32 %i.ck, i32 %i.ci)
  store i32 %i.cq, ptr %i.o, align 4, !alias.scope !22310
  %i.cr = tail call i32 @llvm.umax.i32(i32 %i.cj, i32 %i.ch) ; 2 uses
  %i.cs = tail call i32 @llvm.umin.i32(i32 %i.cj, i32 %i.ch) ; 2 uses
  %i.ct = tail call i32 @llvm.umax.i32(i32 %i.ce, i32 %i.cm) ; 2 uses
  %i.cu = tail call i32 @llvm.umin.i32(i32 %i.ce, i32 %i.cm) ; 2 uses
  %i.cv = tail call i32 @llvm.umax.i32(i32 %i.cd, i32 %i.cl) ; 2 uses
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.cd, i32 %i.cl) ; 2 uses
  %i.cx = tail call i32 @llvm.umax.i32(i32 %i.cs, i32 %i.cp) ; 2 uses
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 %i.cp)
  store i32 %i.cy, ptr %i.s, align 4, !alias.scope !22310
  %i.cz = tail call i32 @llvm.umax.i32(i32 %i.cu, i32 %i.cr) ; 2 uses
  %i.da = tail call i32 @llvm.umin.i32(i32 %i.cu, i32 %i.cr) ; 2 uses
  %i.db = tail call i32 @llvm.umax.i32(i32 %i.ct, i32 %i.cw)
  %i.dc = tail call i32 @llvm.umin.i32(i32 %i.ct, i32 %i.cw) ; 2 uses
  store i32 %i.db, ptr %i.x, align 4, !alias.scope !22310
  %i.dd = tail call i32 @llvm.umax.i32(i32 %i.co, i32 %i.cv)
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.co, i32 %i.cv)
  store i32 %i.de, ptr %i.af, align 4, !alias.scope !22310
  store i32 %i.dd, ptr %i.t, align 4, !alias.scope !22310
  %i.df = tail call i32 @llvm.umax.i32(i32 %i.da, i32 %i.cx)
  %i.dg = tail call i32 @llvm.umin.i32(i32 %i.da, i32 %i.cx)
  store i32 %i.dg, ptr %i.w, align 4, !alias.scope !22310
  store i32 %i.df, ptr %i.am, align 4, !alias.scope !22310
  %i.dh = tail call i32 @llvm.umax.i32(i32 %i.dc, i32 %i.cz)
  %i.di = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 %i.cz)
  store i32 %i.di, ptr %i.aa, align 4, !alias.scope !22310
  store i32 %i.dh, ptr %i.ae, align 4, !alias.scope !22310
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 12 ; 2 uses
  %.val.i.i14.i = load i32, ptr %i.dj, align 4, !range !19, !alias.scope !22311, !noundef !6 ; 2 uses
  %.val1.i.i15.i = load i32, ptr %.sroa.02.0.i, align 4, !range !19, !alias.scope !22311, !noundef !6 ; 2 uses
  %i.dk = tail call i32 @llvm.umax.i32(i32 %.val.i.i14.i, i32 %.val1.i.i15.i) ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB17_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic:bb.a
  %.not = icmp eq ptr %.sroa.023.091156, null
  br i1 %.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit._crit_edge, label %bb.r

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit._crit_edge: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0.copyload.i.i.i.pre = load i32, ptr %.sroa.0.093154, align 4, !alias.scope !22319
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 %i.ht
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !alias.scope !22319
  br label %bb.p

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB1f_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.sink.split.i, %._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit._crit_edge, %bb.r
  %i.hv = phi i32 [ %.pre, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit._crit_edge ], [ %.val, %bb.r ]
  %.sroa.0.0.copyload.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i.pre, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit._crit_edge ], [ %.sroa.0.0.copyload.i.i.i.pre111, %bb.r ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 %i.ht
  store i32 %i.hv, ptr %.sroa.0.093154, align 4, !alias.scope !22319
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.hw, align 4, !alias.scope !22319
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22321)
  %i.hy = load i32, ptr %i.hx, align 4, !range !19, !alias.scope !22322, !noundef !6 ; 2 uses
  %i.hz = getelementptr [4 x i8], ptr %.sroa.0.093154, i64 %.sroa.15.092155 ; 3 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 -4     ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 8 ; 3 uses
  %i.ib = icmp ult ptr %.sroa.13.030.i.i, %i.ia
  %.val1.i.pre.i.i = load i32, ptr %.sroa.0.093154, align 4, !range !19, !alias.scope !22323, !noalias !6 ; 4 uses
  br i1 %i.ib, label %.lr.ph.i.i36, label %.preheader.i.i35

.preheader.i.i35:                                 ; preds = %.lr.ph.i.i36, %bb.p
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.p ], [ %i.it, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.015.0.lcssa.i.i = phi ptr [ %i.hx, %bb.p ], [ %i.io, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.030.i.i, %bb.p ], [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ] ; 2 uses
  %i.ic = icmp eq ptr %.sroa.13.0.lcssa.i.i, %i.hz
  br i1 %i.ic, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.cont.i.i

.cont.i.i:                                        ; preds = %.preheader.i.i35, %.cont.i.i
  %.sroa.015.1.i7.i = phi ptr [ %.sroa.13.1.i6.i, %.cont.i.i ], [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i35 ]
  %.sroa.13.1.i6.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i35 ] ; 4 uses
  %.sroa.23.1.i5.i = phi i64 [ %i.ih, %.cont.i.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i35 ] ; 2 uses
  %.val.i.else.val.i.i = load i32, ptr %.sroa.13.1.i6.i, align 4, !range !19, !alias.scope !22322, !noalias !22324, !noundef !6 ; 2 uses
  %i.id = icmp ult i32 %.val.i.else.val.i.i, %.val1.i.pre.i.i
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.sroa.23.1.i5.i ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !alias.scope !22322, !noalias !22324
  store i32 %i.if, ptr %.sroa.015.1.i7.i, align 4, !alias.scope !22322, !noalias !22324
  store i32 %.val.i.else.val.i.i, ptr %i.ie, align 4, !alias.scope !22322, !noalias !22324
  %i.ig = zext i1 %i.id to i64
  %i.ih = add i64 %.sroa.23.1.i5.i, %i.ig         ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i, i64 4 ; 2 uses
  %i.ii = icmp eq ptr %.sroa.13.1.sroa.gep.i.i, %i.hz
  br i1 %i.ii, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.cont.i.i

.lr.ph.i.i36:                                     ; preds = %bb.p, %.lr.ph.i.i36
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.13.030.i.i, %bb.p ] ; 2 uses
  %.sroa.015.032.i.i = phi ptr [ %i.io, %.lr.ph.i.i36 ], [ %i.hx, %bb.p ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.it, %.lr.ph.i.i36 ], [ 0, %bb.p ] ; 2 uses
  %.val.i11.i.i = load i32, ptr %.sroa.13.033.i.i, align 4, !range !19, !alias.scope !22322, !noalias !22325, !noundef !6 ; 2 uses
  %i.ij = icmp ult i32 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.sroa.23.031.i.i ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !alias.scope !22322, !noalias !22325
  store i32 %i.il, ptr %.sroa.015.032.i.i, align 4, !alias.scope !22322, !noalias !22325
  store i32 %.val.i11.i.i, ptr %i.ik, align 4, !alias.scope !22322, !noalias !22325
  %i.im = zext i1 %i.ij to i64
  %i.in = add i64 %.sroa.23.031.i.i, %i.im        ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 8 ; 3 uses
  %.val.i13.i.i37 = load i32, ptr %i.io, align 4, !range !19, !alias.scope !22322, !noalias !22326, !noundef !6 ; 2 uses
  %i.ip = icmp ult i32 %.val.i13.i.i37, %.val1.i.pre.i.i
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.in ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !alias.scope !22322, !noalias !22326
  store i32 %i.ir, ptr %.sroa.13.033.i.i, align 4, !alias.scope !22322, !noalias !22326
  store i32 %.val.i13.i.i37, ptr %i.iq, align 4, !alias.scope !22322, !noalias !22326
  %i.is = zext i1 %i.ip to i64
  %i.it = add i64 %i.in, %i.is                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 12 ; 3 uses
  %i.iu = icmp ult ptr %.sroa.13.0.i.i, %i.ia
  br i1 %i.iu, label %.lr.ph.i.i36, label %.preheader.i.i35

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.cont.i.i, %.preheader.i.i35
  %.sroa.23.1.i.lcssa.i = phi i64 [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i35 ], [ %i.ih, %.cont.i.i ] ; 2 uses
  %.sroa.015.1.i.lcssa.i = phi ptr [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i35 ], [ %.sroa.13.1.i6.i, %.cont.i.i ]
  %i.iv = icmp ult i32 %i.hy, %.val1.i.pre.i.i
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.sroa.23.1.i.lcssa.i ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !alias.scope !22322, !noalias !22324
  store i32 %i.ix, ptr %.sroa.015.1.i.lcssa.i, align 4, !alias.scope !22322, !noalias !22324
  store i32 %i.hy, ptr %i.iw, align 4, !alias.scope !22322, !noalias !22324
  %i.iy = zext i1 %i.iv to i64
  %i.iz = add i64 %.sroa.23.1.i.lcssa.i, %i.iy    ; 4 uses
  %.not7.i = icmp ult i64 %i.iz, %.sroa.15.092155
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKey12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKey12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.093154, i64 %i.iz ; 4 uses
  %.sroa.0.0.copyload.i.i8.i = load i32, ptr %.sroa.0.093154, align 4, !alias.scope !22327
  %i.jb = load i32, ptr %i.ja, align 4, !alias.scope !22327
  store i32 %i.jb, ptr %.sroa.0.093154, align 4, !alias.scope !22327
  store i32 %.sroa.0.0.copyload.i.i8.i, ptr %i.ja, align 4, !alias.scope !22327
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jd = xor i64 %i.iz, -1
  %i.je = add i64 %.sroa.15.092155, %i.jd
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB17_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 4 %.sroa.0.093154, i64 noundef %i.iz, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %.sroa.023.091156, i32 noundef %i.hg, ptr noalias noundef nonnull %4)
  br label %.backedge

bb.r:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 %i.ht ; 2 uses
  %.sroa.023.0.val = load i32, ptr %.sroa.023.091156, align 4, !range !19, !noundef !6
  %.val = load i32, ptr %i.jf, align 4, !range !19, !noundef !6 ; 3 uses
  %i.jg = icmp ult i32 %.sroa.023.0.val, %.val
  %.sroa.0.0.copyload.i.i.i.pre111 = load i32, ptr %.sroa.0.093154, align 4 ; 2 uses
  br i1 %i.jg, label %bb.p, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %.val, ptr %.sroa.0.093154, align 4, !alias.scope !22328
  store i32 %.sroa.0.0.copyload.i.i.i.pre111, ptr %i.jf, align 4, !alias.scope !22328
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22330)
  %i.ji = load i32, ptr %i.jh, align 4, !range !19, !alias.scope !22331, !noundef !6 ; 2 uses
  %i.jj = getelementptr [4 x i8], ptr %.sroa.0.093154, i64 %.sroa.15.092155 ; 3 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 -4     ; 2 uses
  %.sroa.13.030.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 8 ; 3 uses
  %i.jl = icmp ult ptr %.sroa.13.030.i.i46, %i.jk
  %.val1.i.pre.i.i47 = load i32, ptr %.sroa.0.093154, align 4, !range !19, !alias.scope !22332, !noalias !6 ; 4 uses
  br i1 %i.jl, label %.lr.ph.i.i62, label %.preheader.i.i48

.preheader.i.i48:                                 ; preds = %.lr.ph.i.i62, %bb.s
  %.sroa.23.0.lcssa.i.i49 = phi i64 [ 0, %bb.s ], [ %i.kd, %.lr.ph.i.i62 ] ; 2 uses
  %.sroa.015.0.lcssa.i.i50 = phi ptr [ %i.jh, %bb.s ], [ %i.jy, %.lr.ph.i.i62 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i51 = phi ptr [ %.sroa.13.030.i.i46, %bb.s ], [ %.sroa.13.0.i.i68, %.lr.ph.i.i62 ] ; 2 uses
  %i.jm = icmp eq ptr %.sroa.13.0.lcssa.i.i51, %i.jj
  br i1 %i.jm, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.cont.i.i52

.cont.i.i52:                                      ; preds = %.preheader.i.i48, %.cont.i.i52
  %.sroa.015.1.i7.i53 = phi ptr [ %.sroa.13.1.i6.i54, %.cont.i.i52 ], [ %.sroa.015.0.lcssa.i.i50, %.preheader.i.i48 ]
  %.sroa.13.1.i6.i54 = phi ptr [ %.sroa.13.1.sroa.gep.i.i57, %.cont.i.i52 ], [ %.sroa.13.0.lcssa.i.i51, %.preheader.i.i48 ] ; 4 uses
  %.sroa.23.1.i5.i55 = phi i64 [ %i.jr, %.cont.i.i52 ], [ %.sroa.23.0.lcssa.i.i49, %.preheader.i.i48 ] ; 2 uses
  %.val.i.else.val.i.i56 = load i32, ptr %.sroa.13.1.i6.i54, align 4, !range !19, !alias.scope !22331, !noalias !22333, !noundef !6 ; 2 uses
  %i.jn = icmp uge i32 %.val1.i.pre.i.i47, %.val.i.else.val.i.i56
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.sroa.23.1.i5.i55 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !alias.scope !22331, !noalias !22333
  store i32 %i.jp, ptr %.sroa.015.1.i7.i53, align 4, !alias.scope !22331, !noalias !22333
  store i32 %.val.i.else.val.i.i56, ptr %i.jo, align 4, !alias.scope !22331, !noalias !22333
  %i.jq = zext i1 %i.jn to i64
  %i.jr = add i64 %.sroa.23.1.i5.i55, %i.jq       ; 2 uses
  %.sroa.13.1.sroa.gep.i.i57 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i54, i64 4 ; 2 uses
  %i.js = icmp eq ptr %.sroa.13.1.sroa.gep.i.i57, %i.jj
  br i1 %i.js, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.cont.i.i52

.lr.ph.i.i62:                                     ; preds = %bb.s, %.lr.ph.i.i62
  %.sroa.13.033.i.i63 = phi ptr [ %.sroa.13.0.i.i68, %.lr.ph.i.i62 ], [ %.sroa.13.030.i.i46, %bb.s ] ; 2 uses
  %.sroa.015.032.i.i64 = phi ptr [ %i.jy, %.lr.ph.i.i62 ], [ %i.jh, %bb.s ] ; 3 uses
  %.sroa.23.031.i.i65 = phi i64 [ %i.kd, %.lr.ph.i.i62 ], [ 0, %bb.s ] ; 2 uses
  %.val.i11.i.i66 = load i32, ptr %.sroa.13.033.i.i63, align 4, !range !19, !alias.scope !22331, !noalias !22334, !noundef !6 ; 2 uses
  %i.jt = icmp uge i32 %.val1.i.pre.i.i47, %.val.i11.i.i66
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.sroa.23.031.i.i65 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !alias.scope !22331, !noalias !22334
  store i32 %i.jv, ptr %.sroa.015.032.i.i64, align 4, !alias.scope !22331, !noalias !22334
  store i32 %.val.i11.i.i66, ptr %i.ju, align 4, !alias.scope !22331, !noalias !22334
  %i.jw = zext i1 %i.jt to i64
  %i.jx = add i64 %.sroa.23.031.i.i65, %i.jw      ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i64, i64 8 ; 3 uses
  %.val.i13.i.i67 = load i32, ptr %i.jy, align 4, !range !19, !alias.scope !22331, !noalias !22335, !noundef !6 ; 2 uses
  %i.jz = icmp uge i32 %.val1.i.pre.i.i47, %.val.i13.i.i67
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jx ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !alias.scope !22331, !noalias !22335
  store i32 %i.kb, ptr %.sroa.13.033.i.i63, align 4, !alias.scope !22331, !noalias !22335
  store i32 %.val.i13.i.i67, ptr %i.ka, align 4, !alias.scope !22331, !noalias !22335
  %i.kc = zext i1 %i.jz to i64
  %i.kd = add i64 %i.jx, %i.kc                    ; 2 uses
  %.sroa.13.0.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i64, i64 12 ; 3 uses
  %i.ke = icmp ult ptr %.sroa.13.0.i.i68, %i.jk
  br i1 %i.ke, label %.lr.ph.i.i62, label %.preheader.i.i48

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.cont.i.i52, %.preheader.i.i48
  %.sroa.23.1.i.lcssa.i58 = phi i64 [ %.sroa.23.0.lcssa.i.i49, %.preheader.i.i48 ], [ %i.jr, %.cont.i.i52 ] ; 2 uses
  %.sroa.015.1.i.lcssa.i59 = phi ptr [ %.sroa.015.0.lcssa.i.i50, %.preheader.i.i48 ], [ %.sroa.13.1.i6.i54, %.cont.i.i52 ]
  %i.kf = icmp uge i32 %.val1.i.pre.i.i47, %i.ji
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.sroa.23.1.i.lcssa.i58 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !alias.scope !22331, !noalias !22333
  store i32 %i.kh, ptr %.sroa.015.1.i.lcssa.i59, align 4, !alias.scope !22331, !noalias !22333
  store i32 %i.ji, ptr %i.kg, align 4, !alias.scope !22331, !noalias !22333
  %i.ki = zext i1 %i.kf to i64
  %i.kj = add i64 %.sroa.23.1.i.lcssa.i58, %i.ki  ; 3 uses
  %.not7.i60 = icmp ult i64 %i.kj, %.sroa.15.092155
  br i1 %.not7.i60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.093154, i64 %i.kj ; 2 uses
  %.sroa.0.0.copyload.i.i8.i61 = load i32, ptr %.sroa.0.093154, align 4, !alias.scope !22336
  %i.kl = load i32, ptr %i.kk, align 4, !alias.scope !22336
  store i32 %i.kl, ptr %.sroa.0.093154, align 4, !alias.scope !22336
  store i32 %.sroa.0.0.copyload.i.i8.i61, ptr %i.kk, align 4, !alias.scope !22336
  %i.km = add nuw nsw i64 %i.kj, 1                ; 2 uses
  %i.kn = sub nuw nsw i64 %.sroa.15.092155, %i.km
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.093154, i64 %i.km
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKey12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.023.0.be = phi ptr [ %i.ja, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKey12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ null, %bb.u ]
  %.sroa.15.0.be = phi i64 [ %i.je, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKey12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.kn, %bb.u ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.jc, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKey12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.ko, %bb.u ] ; 3 uses
  %i.kp = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.kp, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB17_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3g_NtB19_15UnreachableKindENCNvB19_24merge_overlapping_ranges0E0EB1f_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(12) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 6 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [12 x i8], align 8                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [12 x i8], align 4                ; 6 uses
  %i.f = alloca [12 x i8], align 4                ; 6 uses
  %i.g = alloca [12 x i8], align 4                ; 7 uses
  %i.h = alloca [12 x i8], align 8                ; 6 uses
  %i.i = alloca [12 x i8], align 8                ; 6 uses
  %i.j = alloca [12 x i8], align 4                ; 6 uses
  %i.k = alloca [12 x i8], align 8                ; 6 uses
  %i.l = alloca [12 x i8], align 4                ; 6 uses
  %i.m = alloca [12 x i8], align 8                ; 6 uses
  %i.n = alloca [12 x i8], align 4                ; 6 uses
  %i.o = alloca [12 x i8], align 4                ; 6 uses
  %i.p = alloca [12 x i8], align 4                ; 7 uses
  %i.q = alloca [12 x i8], align 4                ; 6 uses
  %i.r = alloca [12 x i8], align 4                ; 6 uses
  %i.s = alloca [12 x i8], align 4                ; 6 uses
  %i.t = alloca [12 x i8], align 4                ; 6 uses
  %i.u = alloca [12 x i8], align 4                ; 6 uses
  %i.v = alloca [12 x i8], align 4                ; 6 uses
  %i.w = alloca [12 x i8], align 8                ; 10 uses
  %i.x = alloca [12 x i8], align 8                ; 10 uses
  %i.y = alloca [12 x i8], align 8                ; 10 uses
  %i.z = alloca [12 x i8], align 8                ; 10 uses
  %.sroa.8.i.i.i = alloca [3 x i8], align 1       ; 7 uses
  %i.aa = alloca [576 x i8], align 4              ; 15 uses
  %i.ab = icmp samesign ult i64 %1, 33
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bq = icmp eq i32 %3, 0
  br i1 %i.bq, label %._crit_edge291, label %.lr.ph290

bb.b:                                             ; preds = %.backedge
  %i.br = icmp eq i32 %i.ex, 0
  br i1 %i.br, label %._crit_edge291, label %.lr.ph290

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !22499
  call void @llvm.experimental.noalias.scope.decl(metadata !22500)
  call void @llvm.experimental.noalias.scope.decl(metadata !22501)
  %i.bs = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.bs, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB1f_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3o_NtB1h_15UnreachableKindENCNvB1h_24merge_overlapping_ranges0E0EB1n_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bt = lshr i64 %.sroa.15.0.lcssa, 1           ; 9 uses
  %i.bu = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.bu, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bv = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.lcssa, i64 %i.bt ; 2 uses
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.bt ; 2 uses
  br i1 %i.bv, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %.sroa.15.0.lcssa ; 5 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB19_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3i_NtB1b_15UnreachableKindENCNvB1b_24merge_overlapping_ranges0E0EB1h_(ptr noundef nonnull readonly align 4 %.sroa.0.0.lcssa, ptr noundef nonnull %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB19_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3i_NtB1b_15UnreachableKindENCNvB1b_24merge_overlapping_ranges0E0EB1h_(ptr noundef readonly %i.bz, ptr noundef %i.ca)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB1g_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3p_NtB1i_15UnreachableKindENCNvB1i_24merge_overlapping_ranges0E0EB1o_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.by, i64 noundef 8, ptr noundef nonnull align 4 %i.aa), !noalias !22502
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.lcssa, i64 %i.bt ; 2 uses
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.bt
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 96 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB19_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3i_NtB1b_15UnreachableKindENCNvB1b_24merge_overlapping_ranges0E0EB1h_(ptr noundef nonnull readonly %i.cb, ptr noundef nonnull %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB19_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3i_NtB1b_15UnreachableKindENCNvB1b_24merge_overlapping_ranges0E0EB1h_(ptr noundef readonly %i.ce, ptr noundef %i.cf)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB1g_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3p_NtB1i_15UnreachableKindENCNvB1i_24merge_overlapping_ranges0E0EB1o_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.cd, i64 noundef 8, ptr noundef nonnull %i.cc), !noalias !22502
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB19_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3i_NtB1b_15UnreachableKindENCNvB1b_24merge_overlapping_ranges0E0EB1h_(ptr noundef nonnull align 4 %.sroa.0.0.lcssa, ptr noundef nonnull align 4 %i.aa)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB19_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3i_NtB1b_15UnreachableKindENCNvB1b_24merge_overlapping_ranges0E0EB1h_(ptr noundef %i.bw, ptr noundef %i.bx)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.lcssa, i64 12, i1 false), !alias.scope !22503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bx, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !alias.scope !22503
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.e ], [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.cg = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.bt ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.cp = icmp samesign ult i64 %.sroa.0.0.i.i, %i.bt
  br i1 %i.cp, label %.noexc.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB18_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3h_NtB1a_15UnreachableKindENCNvB1a_24merge_overlapping_ranges0E0EB1g_.exit.i.i, %bb.h
  %i.cq = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.lcssa, i64 %i.bt
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.bt ; 4 uses
  %i.cs = icmp samesign ult i64 %.sroa.0.0.i.i, %i.cg
  br i1 %i.cs, label %.noexc.1.i.i, label %.loopexit.1.i.i

.noexc.1.i.i:                                     ; preds = %.loopexit.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB18_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3h_NtB1a_15UnreachableKindENCNvB1a_24merge_overlapping_ranges0E0EB1g_.exit.1.i.i
  %.sroa.05.07.1.i.i = phi i64 [ %i.dr, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB18_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3h_NtB1a_15UnreachableKindENCNvB1a_24merge_overlapping_ranges0E0EB1g_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.cq, i64 %.sroa.05.07.1.i.i ; 2 uses
  %.idx307 = mul nuw nsw i64 %.sroa.05.07.1.i.i, 12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx307 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cu, ptr noundef nonnull align 4 dereferenceable(12) %i.ct, i64 12, i1 false), !alias.scope !22503
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -12 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22504)
  call void @llvm.experimental.noalias.scope.decl(metadata !22505)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !22506
  call void @llvm.experimental.noalias.scope.decl(metadata !22507)
  call void @llvm.experimental.noalias.scope.decl(metadata !22508)
  %i.cw = load <2 x i32>, ptr %i.cu, align 4, !alias.scope !22509, !noalias !22499 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load i8, ptr %i.cx, align 4, !range !32, !alias.scope !22509, !noalias !22499, !noundef !6 ; 6 uses
  store <2 x i32> %i.cw, ptr %i.z, align 8, !alias.scope !22507, !noalias !22506
  store i8 %i.cy, ptr %i.ci, align 8, !alias.scope !22507, !noalias !22506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !22506
  call void @llvm.experimental.noalias.scope.decl(metadata !22510)
  call void @llvm.experimental.noalias.scope.decl(metadata !22511)
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 -4
  %i.da = load i8, ptr %i.cz, align 4, !range !32, !alias.scope !22512, !noalias !22499, !noundef !6 ; 2 uses
  %i.db = load <2 x i32>, ptr %i.cv, align 4, !alias.scope !22512, !noalias !22499
  store <2 x i32> %i.db, ptr %i.y, align 8, !alias.scope !22510, !noalias !22506
  store i8 %i.da, ptr %i.ck, align 8, !alias.scope !22510, !noalias !22506
  %i.dc = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.z, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.y), !noalias !22513 ; 2 uses
  %.not.i.i.i.1.i.i = icmp eq i8 %i.dc, 2
  br i1 %.not.i.i.i.1.i.i, label %.noexc31.1.i.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_.exit.i.1.i.i

.noexc31.1.i.i:                                   ; preds = %.noexc.1.i.i
  %i.dd = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ch, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cj), !noalias !22513 ; 2 uses
  %.not5.i.i.i.1.i.i = icmp eq i8 %i.dd, 2
  br i1 %.not5.i.i.i.1.i.i, label %bb.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_.exit.i.1.i.i

bb.i:                                             ; preds = %.noexc31.1.i.i
  %i.de = icmp samesign ult i8 %i.cy, %i.da
  %.lobit.i.i.i.1.i.i = zext i1 %i.de to i8
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_.exit.i.1.i.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_.exit.i.1.i.i: ; preds = %bb.i, %.noexc31.1.i.i, %.noexc.1.i.i
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvMB8_SB17_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3g_NtB19_15UnreachableKindENCNvB19_24merge_overlapping_ranges0E0EB1f_:bb.a
  %i.ii = getelementptr i8, ptr %i.ih, i64 -12    ; 2 uses
  %.sroa.13.051.i.i52 = getelementptr inbounds nuw i8, ptr %.sroa.0.0134286, i64 24 ; 3 uses
  %i.ij = icmp ult ptr %.sroa.13.051.i.i52, %i.ii
  %.pre.i.i53 = load i32, ptr %.sroa.0.0134286, align 4, !alias.scope !22599, !noalias !6 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.0134286, i64 4
  %i.il = load i32, ptr %i.ik, align 4, !alias.scope !22599, !noalias !6 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.0134286, i64 8
  %i.in = load i8, ptr %i.im, align 4, !range !32, !alias.scope !22599, !noalias !6 ; 6 uses
  br i1 %i.ij, label %.lr.ph.i.i74, label %.preheader.i.i54.preheader

.preheader.i.i54.preheader:                       ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB44_NtB1B_15UnreachableKindENCNvB1B_24merge_overlapping_ranges0E0E0E0B1H_.exit25.i.i, %bb.au
  %.sroa.23.1.i.i58.ph = phi i64 [ 0, %bb.au ], [ %i.jt, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB44_NtB1B_15UnreachableKindENCNvB1B_24merge_overlapping_ranges0E0E0E0B1H_.exit25.i.i ]
  %.sroa.13.1.i.i59.ph = phi ptr [ %.sroa.13.051.i.i52, %bb.au ], [ %.sroa.13.0.i.i83, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB44_NtB1B_15UnreachableKindENCNvB1B_24merge_overlapping_ranges0E0E0E0B1H_.exit25.i.i ]
  %.sroa.026.1.i.i60.ph = phi ptr [ %i.ig, %bb.au ], [ %i.jj, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB44_NtB1B_15UnreachableKindENCNvB1B_24merge_overlapping_ranges0E0E0E0B1H_.exit25.i.i ]
  br label %.preheader.i.i54

.preheader.i.i54:                                 ; preds = %.preheader.i.i54.preheader, %bb.ax
  %.sroa.23.1.i.i58 = phi i64 [ %i.iy, %bb.ax ], [ %.sroa.23.1.i.i58.ph, %.preheader.i.i54.preheader ] ; 2 uses
  %.sroa.13.1.i.i59 = phi ptr [ %.sroa.13.1.sroa.gep40.i.i71, %bb.ax ], [ %.sroa.13.1.i.i59.ph, %.preheader.i.i54.preheader ] ; 6 uses
  %.sroa.026.1.i.i60 = phi ptr [ %.sroa.13.1.i.i59, %bb.ax ], [ %.sroa.026.1.i.i60.ph, %.preheader.i.i54.preheader ] ; 2 uses
  %i.io = icmp eq ptr %.sroa.13.1.i.i59, %i.ih    ; 4 uses
  %.sroa.01.0.i.i61 = select i1 %i.io, ptr %i.g, ptr %.sroa.13.1.i.i59 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22600)
  call void @llvm.experimental.noalias.scope.decl(metadata !22601)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22602
  store i32 %.pre.i.i53, ptr %i.f, align 4, !alias.scope !22603, !noalias !22602
  store i32 %i.il, ptr %i.ba, align 4, !alias.scope !22603, !noalias !22602
  store i8 %i.in, ptr %i.bb, align 4, !alias.scope !22603, !noalias !22602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22602
  call void @llvm.experimental.noalias.scope.decl(metadata !22604)
  call void @llvm.experimental.noalias.scope.decl(metadata !22605)
  %i.ip = load i32, ptr %.sroa.01.0.i.i61, align 4, !alias.scope !22606, !noalias !22607, !noundef !6
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i62.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.io, ptr %i.g, ptr %.sroa.13.1.i.i59
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i62.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i62.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  %i.iq = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i62.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !alias.scope !22606, !noalias !22607, !noundef !6
  %.sroa.01.0.sroa.sel38.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.io, ptr %i.g, ptr %.sroa.13.1.i.i59
  %.sroa.01.0.sroa.sel38.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.sroa.sel38.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %i.ir = load i8, ptr %.sroa.01.0.sroa.sel38.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !range !32, !alias.scope !22606, !noalias !22607, !noundef !6 ; 2 uses
  store i32 %i.ip, ptr %i.e, align 4, !alias.scope !22604, !noalias !22602
  store i32 %i.iq, ptr %i.bc, align 4, !alias.scope !22604, !noalias !22602
  store i8 %i.ir, ptr %i.bd, align 4, !alias.scope !22604, !noalias !22602
  %i.is = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.e)
          to label %.noexc.i.i70 unwind label %.loopexit.i.i66, !noalias !22608 ; 2 uses

.noexc.i.i70:                                     ; preds = %.preheader.i.i54
  %.not.i.i.i.i.i.i = icmp eq i8 %i.is, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %.noexc.i.i70
  %i.it = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ba, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bc)
          to label %.noexc11.i.i73 unwind label %.loopexit.i.i66, !noalias !22608 ; 2 uses

.noexc11.i.i73:                                   ; preds = %bb.av
  %.not5.i.i.i.i.i.i = icmp eq i8 %i.it, 2
  br i1 %.not5.i.i.i.i.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.noexc11.i.i73
  %i.iu = icmp samesign ult i8 %i.in, %i.ir
  %.lobit.i.i.i.i.i.i = zext i1 %i.iu to i8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.noexc11.i.i73, %.noexc.i.i70
  %.sroa.0.1.i.i.i.i.i.i = phi i8 [ %i.is, %.noexc.i.i70 ], [ %.lobit.i.i.i.i.i.i, %bb.aw ], [ %i.it, %.noexc11.i.i73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22602
  %i.iv = getelementptr inbounds nuw [12 x i8], ptr %i.ig, i64 %.sroa.23.1.i.i58 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.026.1.i.i60, ptr noundef nonnull align 4 dereferenceable(12) %i.iv, i64 12, i1 false), !alias.scope !22609, !noalias !22610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.iv, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.01.0.i.i61, i64 12, i1 false), !noalias !22607
  %i.iw = xor i8 %.sroa.0.1.i.i.i.i.i.i, 1
  %i.ix = zext nneg i8 %i.iw to i64
  %i.iy = add i64 %.sroa.23.1.i.i58, %i.ix        ; 4 uses
  %.sroa.13.1.sroa.gep40.i.i71 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i59, i64 12
  br i1 %i.io, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB42_NtB1z_15UnreachableKindENCNvB1z_24merge_overlapping_ranges0E0E0EB1F_.exit.i, label %.preheader.i.i54

.lr.ph.i.i74:                                     ; preds = %bb.au, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB44_NtB1B_15UnreachableKindENCNvB1B_24merge_overlapping_ranges0E0E0E0B1H_.exit25.i.i
  %.sroa.13.054.i.i75 = phi ptr [ %.sroa.13.0.i.i83, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB44_NtB1B_15UnreachableKindENCNvB1B_24merge_overlapping_ranges0E0E0E0B1H_.exit25.i.i ], [ %.sroa.13.051.i.i52, %bb.au ] ; 5 uses
  %.sroa.026.053.i.i76 = phi ptr [ %i.jj, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB44_NtB1B_15UnreachableKindENCNvB1B_24merge_overlapping_ranges0E0E0E0B1H_.exit25.i.i ], [ %i.ig, %bb.au ] ; 7 uses
  %.sroa.23.052.i.i77 = phi i64 [ %i.jt, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB44_NtB1B_15UnreachableKindENCNvB1B_24merge_overlapping_ranges0E0E0E0B1H_.exit25.i.i ], [ 0, %bb.au ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22611)
  call void @llvm.experimental.noalias.scope.decl(metadata !22612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22613
  store i32 %.pre.i.i53, ptr %i.d, align 4, !alias.scope !22614, !noalias !22613
  store i32 %i.il, ptr %i.as, align 4, !alias.scope !22614, !noalias !22613
  store i8 %i.in, ptr %i.at, align 4, !alias.scope !22614, !noalias !22613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22613
  call void @llvm.experimental.noalias.scope.decl(metadata !22615)
  call void @llvm.experimental.noalias.scope.decl(metadata !22616)
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.026.053.i.i76, i64 20
  %i.ja = load i8, ptr %i.iz, align 4, !range !32, !alias.scope !22617, !noalias !22618, !noundef !6 ; 2 uses
  %i.jb = load <2 x i32>, ptr %.sroa.13.054.i.i75, align 4, !alias.scope !22617, !noalias !22618
  store <2 x i32> %i.jb, ptr %i.c, align 8, !alias.scope !22615, !noalias !22613
  store i8 %i.ja, ptr %i.av, align 8, !alias.scope !22615, !noalias !22613
  %i.jc = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.c)
          to label %.noexc16.i.i81 unwind label %.loopexit.split-lp.i.i78, !noalias !22608 ; 2 uses

.noexc16.i.i81:                                   ; preds = %.lr.ph.i.i74
  %.not.i.i.i.i12.i.i = icmp eq i8 %i.jc, 2
  br i1 %.not.i.i.i.i12.i.i, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %.noexc16.i.i81
  %i.jd = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.as, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.au)
          to label %.noexc17.i.i85 unwind label %.loopexit.split-lp.i.i78, !noalias !22608 ; 2 uses

.noexc17.i.i85:                                   ; preds = %bb.ay
  %.not5.i.i.i.i14.i.i = icmp eq i8 %i.jd, 2
  br i1 %.not5.i.i.i.i14.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.noexc17.i.i85
  %i.je = icmp samesign ult i8 %i.in, %i.ja
  %.lobit.i.i.i.i15.i.i = zext i1 %i.je to i8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.noexc17.i.i85, %.noexc16.i.i81
  %.sroa.0.1.i.i.i.i13.i.i = phi i8 [ %i.jc, %.noexc16.i.i81 ], [ %.lobit.i.i.i.i15.i.i, %bb.az ], [ %i.jd, %.noexc17.i.i85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22613
  %i.jf = getelementptr inbounds nuw [12 x i8], ptr %i.ig, i64 %.sroa.23.052.i.i77 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.026.053.i.i76, ptr noundef nonnull align 4 dereferenceable(12) %i.jf, i64 12, i1 false), !alias.scope !22609, !noalias !22618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jf, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.054.i.i75, i64 12, i1 false), !alias.scope !22609, !noalias !22618
  %i.jg = xor i8 %.sroa.0.1.i.i.i.i13.i.i, 1
  %i.jh = zext nneg i8 %i.jg to i64
  %i.ji = add i64 %.sroa.23.052.i.i77, %i.jh      ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.026.053.i.i76, i64 24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22619)
  call void @llvm.experimental.noalias.scope.decl(metadata !22620)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22621
  store i32 %.pre.i.i53, ptr %i.b, align 4, !alias.scope !22622, !noalias !22621
  store i32 %i.il, ptr %i.aw, align 4, !alias.scope !22622, !noalias !22621
  store i8 %i.in, ptr %i.ax, align 4, !alias.scope !22622, !noalias !22621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22621
  call void @llvm.experimental.noalias.scope.decl(metadata !22623)
  call void @llvm.experimental.noalias.scope.decl(metadata !22624)
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.026.053.i.i76, i64 32
  %i.jl = load i8, ptr %i.jk, align 4, !range !32, !alias.scope !22625, !noalias !22626, !noundef !6 ; 2 uses
  %i.jm = load <2 x i32>, ptr %i.jj, align 4, !alias.scope !22625, !noalias !22626
  store <2 x i32> %i.jm, ptr %i.a, align 8, !alias.scope !22623, !noalias !22621
  store i8 %i.jl, ptr %i.az, align 8, !alias.scope !22623, !noalias !22621
  %i.jn = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a)
          to label %.noexc23.i.i82 unwind label %.loopexit.split-lp.i.i78, !noalias !22608 ; 2 uses

.noexc23.i.i82:                                   ; preds = %bb.ba
  %.not.i.i.i.i19.i.i = icmp eq i8 %i.jn, 2
  br i1 %.not.i.i.i.i19.i.i, label %bb.bb, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB44_NtB1B_15UnreachableKindENCNvB1B_24merge_overlapping_ranges0E0E0E0B1H_.exit25.i.i

bb.bb:                                            ; preds = %.noexc23.i.i82
  %i.jo = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.aw, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ay)
          to label %.noexc24.i.i84 unwind label %.loopexit.split-lp.i.i78, !noalias !22608 ; 2 uses

.noexc24.i.i84:                                   ; preds = %bb.bb
  %.not5.i.i.i.i21.i.i = icmp eq i8 %i.jo, 2
  br i1 %.not5.i.i.i.i21.i.i, label %bb.bc, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB44_NtB1B_15UnreachableKindENCNvB1B_24merge_overlapping_ranges0E0E0E0B1H_.exit25.i.i

bb.bc:                                            ; preds = %.noexc24.i.i84
  %i.jp = icmp samesign ult i8 %i.in, %i.jl
  %.lobit.i.i.i.i22.i.i = zext i1 %i.jp to i8
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB44_NtB1B_15UnreachableKindENCNvB1B_24merge_overlapping_ranges0E0E0E0B1H_.exit25.i.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB44_NtB1B_15UnreachableKindENCNvB1B_24merge_overlapping_ranges0E0E0E0B1H_.exit25.i.i: ; preds = %bb.bc, %.noexc24.i.i84, %.noexc23.i.i82
  %.sroa.0.1.i.i.i.i20.i.i = phi i8 [ %i.jn, %.noexc23.i.i82 ], [ %.lobit.i.i.i.i22.i.i, %bb.bc ], [ %i.jo, %.noexc24.i.i84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22621
  %i.jq = getelementptr inbounds nuw [12 x i8], ptr %i.ig, i64 %i.ji ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.054.i.i75, ptr noundef nonnull align 4 dereferenceable(12) %i.jq, i64 12, i1 false), !alias.scope !22609, !noalias !22626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jq, ptr noundef nonnull align 4 dereferenceable(12) %i.jj, i64 12, i1 false), !alias.scope !22609, !noalias !22626
  %i.jr = xor i8 %.sroa.0.1.i.i.i.i20.i.i, 1
  %i.js = zext nneg i8 %i.jr to i64
  %i.jt = add i64 %i.ji, %i.js                    ; 2 uses
  %.sroa.13.0.i.i83 = getelementptr inbounds nuw i8, ptr %.sroa.026.053.i.i76, i64 36 ; 3 uses
  %i.ju = icmp ult ptr %.sroa.13.0.i.i83, %i.ii
  br i1 %i.ju, label %.lr.ph.i.i74, label %.preheader.i.i54.preheader

.loopexit.i.i66:                                  ; preds = %bb.av, %.preheader.i.i54
  %lpad.loopexit.i.i67 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp.i.i78:                         ; preds = %bb.bb, %bb.ba, %bb.ay, %.lr.ph.i.i74
  %.sroa.026.2.ph.i.i79 = phi ptr [ %.sroa.026.053.i.i76, %.lr.ph.i.i74 ], [ %.sroa.026.053.i.i76, %bb.ay ], [ %.sroa.13.054.i.i75, %bb.ba ], [ %.sroa.13.054.i.i75, %bb.bb ]
  %lpad.loopexit.split-lp.i.i80 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp.i.i78, %.loopexit.i.i66
  %.sroa.026.2.i.i68 = phi ptr [ %.sroa.026.1.i.i60, %.loopexit.i.i66 ], [ %.sroa.026.2.ph.i.i79, %.loopexit.split-lp.i.i78 ]
  %lpad.phi.i.i69 = phi { ptr, i32 } [ %lpad.loopexit.i.i67, %.loopexit.i.i66 ], [ %lpad.loopexit.split-lp.i.i80, %.loopexit.split-lp.i.i78 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.026.2.i.i68, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.g, i64 12, i1 false), !noalias !22597
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB42_NtB1z_15UnreachableKindENCNvB1z_24merge_overlapping_ranges0E0E0EB1F_.exit.i: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !22598
  %.not7.i72 = icmp ult i64 %i.iy, %.sroa.15.0133287
  br i1 %.not7.i72, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB42_NtB1z_15UnreachableKindENCNvB1z_24merge_overlapping_ranges0E0E0EB1F_.exit.i
  call void @llvm.trap()
  unreachable

bb.bf:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB42_NtB1z_15UnreachableKindENCNvB1z_24merge_overlapping_ranges0E0E0EB1F_.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange14swap_uncheckedBC_(ptr noalias noundef nonnull align 4 %.sroa.0.0134286, i64 noundef range(i64 33, 768614336404564651) %.sroa.15.0133287, i64 noundef 0, i64 noundef %i.iy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.jv = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %i.jw = sub nuw nsw i64 %.sroa.15.0133287, %i.jv
  %i.jx = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0134286, i64 %i.jv
  br label %.backedge

.backedge:                                        ; preds = %bb.bf, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange12split_at_mutBC_.exit
  %.sroa.023.0.be = phi ptr [ %i.hr, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange12split_at_mutBC_.exit ], [ null, %bb.bf ]
  %.sroa.15.0.be = phi i64 [ %i.hu, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange12split_at_mutBC_.exit ], [ %i.jw, %bb.bf ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.hs, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange12split_at_mutBC_.exit ], [ %i.jx, %bb.bf ] ; 3 uses
  %i.jy = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.jy, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB17_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3j_ENCNvNvXs0_NvB19_1__NtB4k_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1f_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [8 x i8], align 4                 ; 5 uses
  %i.d = alloca [8 x i8], align 4                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 4                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 4                 ; 5 uses
  %i.k = alloca [8 x i8], align 4                 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 4                 ; 5 uses
  %i.n = alloca [8 x i8], align 4                 ; 5 uses
  %i.o = alloca [8 x i8], align 4                 ; 5 uses
  %i.p = alloca [8 x i8], align 4                 ; 5 uses
  %i.q = alloca [8 x i8], align 4                 ; 5 uses
  %i.r = alloca [8 x i8], align 4                 ; 5 uses
  %i.s = icmp samesign ult i64 %1, 33
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.af = icmp eq i32 %3, 0
  br i1 %i.af, label %._crit_edge186, label %.lr.ph185

bb.b:                                             ; preds = %.backedge
  %i.ag = icmp eq i32 %i.ah, 0
  br i1 %i.ag, label %._crit_edge186, label %.lr.ph185

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB1f_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3r_ENCNvNvXs0_NvB1h_1__NtB4s_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1n_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa)
  br label %bb.f

._crit_edge186:                                   ; preds = %bb.b, %.lr.ph
  %.sroa.0.0103.lcssa = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %bb.b ]
  %.sroa.15.0102.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.15.0.be, %bb.b ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB15_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3h_ENCNvNvXs0_NvB17_1__NtB4i_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1d_(ptr noalias noundef nonnull align 8 %.sroa.0.0103.lcssa, i64 noundef %.sroa.15.0102.lcssa, ptr noalias nonnull align 8 poison)
  br label %bb.f

.lr.ph185:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.026.0100184 = phi i32 [ %i.ah, %bb.b ], [ %3, %.lr.ph ]
  %.sroa.023.0101183 = phi ptr [ %.sroa.023.0.be, %bb.b ], [ %2, %.lr.ph ] ; 4 uses
  %.sroa.15.0102182 = phi i64 [ %.sroa.15.0.be, %bb.b ], [ %1, %.lr.ph ] ; 13 uses
  %.sroa.0.0103181 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 25 uses
  %i.ah = add nsw i32 %.sroa.026.0100184, -1      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22647)
  %i.ai = lshr i64 %.sroa.15.0102182, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.ai, 96
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0103181, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.ai, 168
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0103181, i64 %.idx2.i ; 4 uses
  %i.al = icmp samesign ult i64 %.sroa.15.0102182, 64
  br i1 %i.al, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph185
  %i.am = call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB14_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3g_ENCNvNvXs0_NvB16_1__NtB4h_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1c_(ptr noundef nonnull readonly align 8 %.sroa.0.0103181, ptr noundef readonly %i.aj, ptr noundef readonly %i.ak, i64 noundef %i.ai)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB15_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3h_ENCNvNvXs0_NvB17_1__NtB4i_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1d_.exit

bb.d:                                             ; preds = %.lr.ph185
  %.val10.i = load i32, ptr %.sroa.0.0103181, align 8, !alias.scope !22647, !noundef !6 ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.0.0103181, i64 4
  %.val11.i = load i32, ptr %i.an, align 4, !alias.scope !22647, !noundef !6 ; 4 uses
  %.val12.i = load i32, ptr %i.aj, align 8, !alias.scope !22647, !noundef !6 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.aj, i64 4
  %.val13.i = load i32, ptr %i.ao, align 4, !alias.scope !22647, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !22647
  store i32 %.val10.i, ptr %i.r, align 4, !noalias !22647
  store i32 %.val11.i, ptr %i.t, align 4, !noalias !22647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !22647
  store i32 %.val12.i, ptr %i.q, align 4, !noalias !22647
  store i32 %.val13.i, ptr %i.u, align 4, !noalias !22647
  %i.ap = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.q), !noalias !22647 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.ap, 2
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = icmp ult i32 %.val11.i, %.val13.i
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i1 %i.ar, i1 %i.aq ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !22647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !22647
  %.val8.i = load i32, ptr %i.ak, align 8, !alias.scope !22647, !noundef !6 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ak, i64 4
  %.val9.i = load i32, ptr %i.as, align 4, !alias.scope !22647, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !22647
  store i32 %.val10.i, ptr %i.p, align 4, !noalias !22647
  store i32 %.val11.i, ptr %i.v, align 4, !noalias !22647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !22647
  store i32 %.val8.i, ptr %i.o, align 4, !noalias !22647
  store i32 %.val9.i, ptr %i.w, align 4, !noalias !22647
  %i.at = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.o), !noalias !22647 ; 2 uses
  %.not.i.i14.i = icmp eq i8 %i.at, 2
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = icmp ult i32 %.val11.i, %.val9.i
  %.sroa.0.0.i.i15.i = select i1 %.not.i.i14.i, i1 %i.av, i1 %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !22647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !22647
  %i.aw = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i15.i
  br i1 %i.aw, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB15_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3h_ENCNvNvXs0_NvB17_1__NtB4i_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1d_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !22647
  store i32 %.val12.i, ptr %i.n, align 4, !noalias !22647
  store i32 %.val13.i, ptr %i.x, align 4, !noalias !22647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !22647
  store i32 %.val8.i, ptr %i.m, align 4, !noalias !22647
  store i32 %.val9.i, ptr %i.y, align 4, !noalias !22647
  %i.ax = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.m), !noalias !22647 ; 2 uses
  %.not.i.i16.i = icmp eq i8 %i.ax, 2
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = icmp ult i32 %.val13.i, %.val9.i
  %.sroa.0.0.i.i17.i = select i1 %.not.i.i16.i, i1 %i.az, i1 %i.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !22647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !22647
  %i.ba = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i17.i
  %..i.i = select i1 %i.ba, ptr %i.ak, ptr %i.aj
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB15_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3h_ENCNvNvXs0_NvB17_1__NtB4i_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1d_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB15_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3h_ENCNvNvXs0_NvB17_1__NtB4i_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1d_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i.sink.i = phi ptr [ %i.am, %bb.c ], [ %.sroa.0.0103181, %bb.d ], [ %..i.i, %bb.e ]
  %i.bb = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.bc = ptrtoint ptr %.sroa.0.0103181 to i64
  %i.bd = sub nuw i64 %i.bb, %i.bc                ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.bd, 24         ; 3 uses
  %i.be = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.0102182
  call void @llvm.assume(i1 %i.be)
  %.not = icmp eq ptr %.sroa.023.0101183, null
  br i1 %.not, label %.lr.ph.i.i, label %bb.k

bb.f:                                             ; preds = %._crit_edge186, %._crit_edge
  ret void

.lr.ph.i.i:                                       ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB15_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3h_ENCNvNvXs0_NvB17_1__NtB4i_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1d_.exit, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !22648)
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBinding14swap_uncheckedBC_(ptr noalias noundef nonnull align 8 %.sroa.0.0103181, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.0102182, i64 noundef 0, i64 noundef range(i64 0, 384307168202282325) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0103181, i64 24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22649)
  call void @llvm.experimental.noalias.scope.decl(metadata !22650)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !22651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !22650
  %i.bg = mul nuw nsw i64 %.sroa.15.0102182, 24
  %i.bh = getelementptr i8, ptr %.sroa.0.0103181, i64 %i.bg ; 2 uses
  %.sroa.11.034.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0103181, i64 48
  %.val2.i.pre.i.i = load i32, ptr %.sroa.0.0103181, align 8, !alias.scope !22652, !noalias !6 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0103181, i64 4
  %.val3.i.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !alias.scope !22652, !noalias !6 ; 4 uses
  br label %bb.h

.preheader.i.i:                                   ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3L_ENCNvNvXs0_NvB1B_1__NtB4M_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0B1H_.exit15.i.i, %bb.g
  %.sroa.19.1.i.i = phi i64 [ %i.bo, %bb.g ], [ %i.bw, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3L_ENCNvNvXs0_NvB1B_1__NtB4M_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0B1H_.exit15.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep24.i.i, %bb.g ], [ %.sroa.11.0.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3L_ENCNvNvXs0_NvB1B_1__NtB4M_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0B1H_.exit15.i.i ] ; 5 uses
  %.sroa.016.1.i.i = phi ptr [ %.sroa.11.1.i.i, %bb.g ], [ %.sroa.11.037.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3L_ENCNvNvXs0_NvB1B_1__NtB4M_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0B1H_.exit15.i.i ] ; 2 uses
  %i.bi = icmp eq ptr %.sroa.11.1.i.i, %i.bh      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bi, ptr %i.l, ptr %.sroa.11.1.i.i ; 2 uses
  %.val.i.i.i = load i32, ptr %.sroa.01.0.i.i, align 8, !noalias !22653, !noundef !6
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bi, ptr %i.l, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  %.val1.i.i.i = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !noalias !22653, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !22654
  store i32 %.val.i.i.i, ptr %i.k, align 4, !noalias !22654
  store i32 %.val1.i.i.i, ptr %i.ad, align 4, !noalias !22654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !22654
  store i32 %.val2.i.pre.i.i, ptr %i.j, align 4, !noalias !22654
  store i32 %.val3.i.pre.i.i, ptr %i.ae, align 4, !noalias !22654
  %i.bj = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.g unwind label %.loopexit.i.i, !noalias !22655 ; 2 uses

bb.g:                                             ; preds = %.preheader.i.i
  %.not.i.i.i.i.i = icmp eq i8 %i.bj, 2
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = icmp ult i32 %.val1.i.i.i, %.val3.i.pre.i.i
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.bl, i1 %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !22654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !22654
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.sroa.19.1.i.i ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB17_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3j_ENCNvNvXs0_NvB19_1__NtB4k_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1f_:bb.a
  %.sroa.11.037.i.i = phi ptr [ %.sroa.11.034.i.i, %.lr.ph.i.i ], [ %.sroa.11.0.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3L_ENCNvNvXs0_NvB1B_1__NtB4M_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0B1H_.exit15.i.i ] ; 5 uses
  %.sroa.016.036.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.sroa.11.037.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3L_ENCNvNvXs0_NvB1B_1__NtB4M_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0B1H_.exit15.i.i ] ; 3 uses
  %.sroa.19.035.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bw, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3L_ENCNvNvXs0_NvB1B_1__NtB4M_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0B1H_.exit15.i.i ] ; 2 uses
  %i.bp = getelementptr i8, ptr %.sroa.016.036.i.i, i64 28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !22658
  %.val1.i10.i.i = load i32, ptr %i.bp, align 4, !alias.scope !22656, !noalias !22659, !noundef !6
  %i.bq = load <2 x i32>, ptr %.sroa.11.037.i.i, align 8, !alias.scope !22656, !noalias !22659
  store <2 x i32> %i.bq, ptr %i.i, align 8, !noalias !22658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !22658
  store i32 %.val2.i.pre.i.i, ptr %i.h, align 4, !noalias !22658
  store i32 %.val3.i.pre.i.i, ptr %i.ac, align 4, !noalias !22658
  %i.br = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3L_ENCNvNvXs0_NvB1B_1__NtB4M_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0B1H_.exit15.i.i unwind label %.loopexit.split-lp.i.i, !noalias !22655 ; 2 uses

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3L_ENCNvNvXs0_NvB1B_1__NtB4M_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0B1H_.exit15.i.i: ; preds = %bb.h
  %.not.i.i.i13.i.i = icmp eq i8 %i.br, 2
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = icmp ult i32 %.val1.i10.i.i, %.val3.i.pre.i.i
  %.sroa.0.0.i.i.i14.i.i = select i1 %.not.i.i.i13.i.i, i1 %i.bt, i1 %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !22658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !22658
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.sroa.19.035.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.036.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !alias.scope !22656, !noalias !22659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.037.i.i, i64 24, i1 false), !alias.scope !22656, !noalias !22659
  %i.bv = zext i1 %.sroa.0.0.i.i.i14.i.i to i64
  %i.bw = add i64 %.sroa.19.035.i.i, %i.bv        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.037.i.i, i64 24 ; 3 uses
  %i.bx = icmp ult ptr %.sroa.11.0.i.i, %i.bh
  br i1 %i.bx, label %bb.h, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i.i:                           ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

common.resume:                                    ; preds = %bb.n, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.i ], [ %lpad.phi.i.i56, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.sroa.016.2.i.i = phi ptr [ %.sroa.016.1.i.i, %.loopexit.i.i ], [ %.sroa.016.036.i.i, %.loopexit.split-lp.i.i ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.2.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !22650
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB1x_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3J_ENCNvNvXs0_NvB1z_1__NtB4K_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1F_.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !22651
  %.not7.i = icmp ult i64 %i.bo, %.sroa.15.0102182
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBinding12split_at_mutBC_.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB1x_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3J_ENCNvNvXs0_NvB1z_1__NtB4K_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1F_.exit.i
  call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBinding12split_at_mutBC_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB1x_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3J_ENCNvNvXs0_NvB1z_1__NtB4K_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1F_.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBinding14swap_uncheckedBC_(ptr noalias noundef nonnull align 8 %.sroa.0.0103181, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.0102182, i64 noundef 0, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0103181, i64 %i.bo ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = xor i64 %i.bo, -1
  %i.cb = add i64 %.sroa.15.0102182, %i.ca
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB17_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3j_ENCNvNvXs0_NvB19_1__NtB4k_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1f_(ptr noalias noundef nonnull align 8 %.sroa.0.0103181, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.023.0101183, i32 noundef %i.ah, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.k:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvMB8_SB15_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB3h_ENCNvNvXs0_NvB17_1__NtB4i_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0EB1d_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0103181, i64 %i.bd ; 2 uses
  %i.cd = getelementptr i8, ptr %.sroa.023.0101183, i64 4
  %i.ce = getelementptr i8, ptr %i.cc, i64 4
  %.sroa.023.0.val34 = load i32, ptr %i.cd, align 4, !noundef !6
  %i.cf = load <2 x i32>, ptr %.sroa.023.0101183, align 8
  %.val35 = load i32, ptr %i.ce, align 4, !noundef !6
  %i.cg = load <2 x i32>, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store <2 x i32> %i.cf, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store <2 x i32> %i.cg, ptr %i.f, align 8
  %i.ch = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.f) ; 2 uses
  %.not.i.i = icmp eq i8 %i.ch, 2
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = icmp ult i32 %.sroa.023.0.val34, %.val35
  %.sroa.0.0.i.i = select i1 %.not.i.i, i1 %i.cj, i1 %i.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.0.0.i.i, label %.lr.ph.i.i, label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !22660)
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBinding14swap_uncheckedBC_(ptr noalias noundef nonnull align 8 %.sroa.0.0103181, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.0102182, i64 noundef 0, i64 noundef range(i64 0, 384307168202282325) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0103181, i64 24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22661)
  call void @llvm.experimental.noalias.scope.decl(metadata !22662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false), !noalias !22662
  %i.cl = mul nuw nsw i64 %.sroa.15.0102182, 24
  %i.cm = getelementptr i8, ptr %.sroa.0.0103181, i64 %i.cl ; 2 uses
  %.sroa.11.034.i.i44 = getelementptr inbounds nuw i8, ptr %.sroa.0.0103181, i64 48
  %.val2.i.pre.i.i45 = load i32, ptr %.sroa.0.0103181, align 8, !alias.scope !22664, !noalias !6 ; 2 uses
  %.phi.trans.insert.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.0.0103181, i64 4
  %.val3.i.pre.i.i47 = load i32, ptr %.phi.trans.insert.i.i46, align 4, !alias.scope !22664, !noalias !6 ; 4 uses
  br label %bb.m

.preheader.i.i58:                                 ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB47_ENCNvNvXs0_NvB1B_1__NtB58_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0E0B1H_.exit15.i.i, %bb.l
  %.sroa.19.1.i.i59 = phi i64 [ %i.cu, %bb.l ], [ %i.dd, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB47_ENCNvNvXs0_NvB1B_1__NtB58_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0E0B1H_.exit15.i.i ] ; 2 uses
  %.sroa.11.1.i.i60 = phi ptr [ %.sroa.11.1.sroa.gep24.i.i69, %bb.l ], [ %.sroa.11.0.i.i57, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB47_ENCNvNvXs0_NvB1B_1__NtB58_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0E0B1H_.exit15.i.i ] ; 5 uses
  %.sroa.016.1.i.i61 = phi ptr [ %.sroa.11.1.i.i60, %bb.l ], [ %.sroa.11.037.i.i48, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB47_ENCNvNvXs0_NvB1B_1__NtB58_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0E0B1H_.exit15.i.i ] ; 2 uses
  %i.cn = icmp eq ptr %.sroa.11.1.i.i60, %i.cm    ; 3 uses
  %.sroa.01.0.i.i62 = select i1 %i.cn, ptr %i.e, ptr %.sroa.11.1.i.i60 ; 2 uses
  %.val.i.i.i63 = load i32, ptr %.sroa.01.0.i.i62, align 8, !noalias !22665, !noundef !6
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cn, ptr %i.e, ptr %.sroa.11.1.i.i60
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  %.val1.i.i.i66 = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !noalias !22665, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22666
  store i32 %.val2.i.pre.i.i45, ptr %i.d, align 4, !noalias !22666
  store i32 %.val3.i.pre.i.i47, ptr %i.aa, align 4, !noalias !22666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22666
  store i32 %.val.i.i.i63, ptr %i.c, align 4, !noalias !22666
  store i32 %.val1.i.i.i66, ptr %i.ab, align 4, !noalias !22666
  %i.co = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.l unwind label %.loopexit.i.i67, !noalias !22667 ; 2 uses

bb.l:                                             ; preds = %.preheader.i.i58
  %.not.i.i.i.i.i.i = icmp eq i8 %i.co, 2
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = icmp ult i32 %.val3.i.pre.i.i47, %.val1.i.i.i66
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.cq, i1 %i.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22666
  %i.cr = xor i1 %.sroa.0.0.i.i.i.i.i.i, true
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.sroa.19.1.i.i59 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.1.i.i61, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !alias.scope !22668, !noalias !22669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.0.i.i62, i64 24, i1 false), !noalias !22665
  %i.ct = zext i1 %i.cr to i64
  %i.cu = add i64 %.sroa.19.1.i.i59, %i.ct        ; 4 uses
  %.sroa.11.1.sroa.gep24.i.i69 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i60, i64 24
  br i1 %i.cn, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB45_ENCNvNvXs0_NvB1z_1__NtB56_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0EB1F_.exit.i, label %.preheader.i.i58

bb.m:                                             ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB47_ENCNvNvXs0_NvB1B_1__NtB58_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0E0B1H_.exit15.i.i, %.lr.ph.i.i43
  %.sroa.11.037.i.i48 = phi ptr [ %.sroa.11.034.i.i44, %.lr.ph.i.i43 ], [ %.sroa.11.0.i.i57, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB47_ENCNvNvXs0_NvB1B_1__NtB58_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0E0B1H_.exit15.i.i ] ; 5 uses
  %.sroa.016.036.i.i49 = phi ptr [ %i.ck, %.lr.ph.i.i43 ], [ %.sroa.11.037.i.i48, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB47_ENCNvNvXs0_NvB1B_1__NtB58_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0E0B1H_.exit15.i.i ] ; 3 uses
  %.sroa.19.035.i.i50 = phi i64 [ 0, %.lr.ph.i.i43 ], [ %i.dd, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB47_ENCNvNvXs0_NvB1B_1__NtB58_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0E0B1H_.exit15.i.i ] ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.016.036.i.i49, i64 28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22670
  store i32 %.val2.i.pre.i.i45, ptr %i.b, align 4, !noalias !22670
  store i32 %.val3.i.pre.i.i47, ptr %i.z, align 4, !noalias !22670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22670
  %.val1.i10.i.i52 = load i32, ptr %i.cv, align 4, !alias.scope !22668, !noalias !22671, !noundef !6
  %i.cw = load <2 x i32>, ptr %.sroa.11.037.i.i48, align 8, !alias.scope !22668, !noalias !22671
  store <2 x i32> %i.cw, ptr %i.a, align 8, !noalias !22670
  %i.cx = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB47_ENCNvNvXs0_NvB1B_1__NtB58_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0E0B1H_.exit15.i.i unwind label %.loopexit.split-lp.i.i53, !noalias !22667 ; 2 uses

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB47_ENCNvNvXs0_NvB1B_1__NtB58_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0E0B1H_.exit15.i.i: ; preds = %bb.m
  %.not.i.i.i.i13.i.i = icmp eq i8 %i.cx, 2
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = icmp ult i32 %.val3.i.pre.i.i47, %.val1.i10.i.i52
  %.sroa.0.0.i.i.i.i14.i.i = select i1 %.not.i.i.i.i13.i.i, i1 %i.cz, i1 %i.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22670
  %i.da = xor i1 %.sroa.0.0.i.i.i.i14.i.i, true
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.sroa.19.035.i.i50 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.036.i.i49, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !alias.scope !22668, !noalias !22671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.037.i.i48, i64 24, i1 false), !alias.scope !22668, !noalias !22671
  %i.dc = zext i1 %i.da to i64
  %i.dd = add i64 %.sroa.19.035.i.i50, %i.dc      ; 2 uses
  %.sroa.11.0.i.i57 = getelementptr inbounds nuw i8, ptr %.sroa.11.037.i.i48, i64 24 ; 3 uses
  %i.de = icmp ult ptr %.sroa.11.0.i.i57, %i.cm
  br i1 %i.de, label %bb.m, label %.preheader.i.i58

.loopexit.i.i67:                                  ; preds = %.preheader.i.i58
  %lpad.loopexit.i.i68 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i.i53:                         ; preds = %bb.m
  %lpad.loopexit.split-lp.i.i54 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i.i53, %.loopexit.i.i67
  %.sroa.016.2.i.i55 = phi ptr [ %.sroa.016.1.i.i61, %.loopexit.i.i67 ], [ %.sroa.016.036.i.i49, %.loopexit.split-lp.i.i53 ]
  %lpad.phi.i.i56 = phi { ptr, i32 } [ %lpad.loopexit.i.i68, %.loopexit.i.i67 ], [ %lpad.loopexit.split-lp.i.i54, %.loopexit.split-lp.i.i53 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.2.i.i55, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !22662
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB45_ENCNvNvXs0_NvB1z_1__NtB56_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0EB1F_.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22663
  %.not7.i70 = icmp ult i64 %i.cu, %.sroa.15.0102182
  br i1 %.not7.i70, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB45_ENCNvNvXs0_NvB1z_1__NtB56_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0EB1F_.exit.i
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB45_ENCNvNvXs0_NvB1z_1__NtB56_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s0_0E0E0EB1F_.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBinding14swap_uncheckedBC_(ptr noalias noundef nonnull align 8 %.sroa.0.0103181, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.0102182, i64 noundef 0, i64 noundef %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.df = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %i.dg = sub nuw nsw i64 %.sroa.15.0102182, %i.df
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0103181, i64 %i.df
  br label %.backedge

.backedge:                                        ; preds = %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBinding12split_at_mutBC_.exit
  %.sroa.023.0.be = phi ptr [ %i.by, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBinding12split_at_mutBC_.exit ], [ null, %bb.p ]
  %.sroa.15.0.be = phi i64 [ %i.cb, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBinding12split_at_mutBC_.exit ], [ %i.dg, %bb.p ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bz, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBinding12split_at_mutBC_.exit ], [ %i.dh, %bb.p ] ; 3 uses
  %i.di = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.di, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortReNvYB17_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [768 x i8], align 8               ; 3 uses
  %i.d = icmp samesign ult i64 %1, 33
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %._crit_edge125, label %.lr.ph124

bb.b:                                             ; preds = %.backedge
  %i.h = icmp eq i32 %i.i, 0
  br i1 %i.h, label %._crit_edge125, label %.lr.ph124

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22788
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchReNvYB1s_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias noundef nonnull align 8 %i.c, i64 noundef 48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22788
  br label %bb.f

._crit_edge125:                                   ; preds = %bb.b, %.lr.ph
  %.sroa.0.079.lcssa = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %bb.b ]
  %.sroa.15.078.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.15.0.be, %bb.b ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.079.lcssa, i64 noundef %.sroa.15.078.lcssa, ptr noalias nonnull poison)
  br label %bb.f

.lr.ph124:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.026.076123 = phi i32 [ %i.i, %bb.b ], [ %3, %.lr.ph ]
  %.sroa.023.077122 = phi ptr [ %.sroa.023.0.be, %bb.b ], [ %2, %.lr.ph ] ; 4 uses
  %.sroa.15.078121 = phi i64 [ %.sroa.15.0.be, %bb.b ], [ %1, %.lr.ph ] ; 13 uses
  %.sroa.0.079120 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 27 uses
  %i.i = add nsw i32 %.sroa.026.076123, -1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22789)
  %i.j = lshr i64 %.sroa.15.078121, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.j, 6
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.079120, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.j, 112
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.079120, i64 %.idx2.i ; 4 uses
  %i.m = icmp samesign ult i64 %.sroa.15.078121, 64
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph124
  %i.n = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recReNvYB14_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull readonly align 8 %.sroa.0.079120, ptr noundef readonly %i.k, ptr noundef readonly %i.l, i64 noundef %i.j)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit

bb.d:                                             ; preds = %.lr.ph124
  %.val10.i = load ptr, ptr %.sroa.0.079120, align 8, !alias.scope !22789, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.0.079120, i64 8
  %.val11.i = load i64, ptr %i.o, align 8, !alias.scope !22789, !noundef !6 ; 4 uses
  %.val12.i = load ptr, ptr %i.k, align 8, !alias.scope !22789, !nonnull !6, !noundef !6 ; 2 uses
  %i.p = getelementptr i8, ptr %i.k, i64 8
  %.val13.i = load i64, ptr %i.p, align 8, !alias.scope !22789, !noundef !6 ; 4 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.q = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !22790, !noalias !22789 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i.i = select i1 %i.s, i64 %i.t, i64 %i.r ; 2 uses
  %.val8.i = load ptr, ptr %i.l, align 8, !alias.scope !22789, !nonnull !6, !noundef !6 ; 2 uses
  %i.u = getelementptr i8, ptr %i.l, i64 8
  %.val9.i = load i64, ptr %i.u, align 8, !alias.scope !22789, !noundef !6 ; 4 uses
  %spec.store.select.i.i.i.i.i14.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val9.i)
  %i.v = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i14.i), !alias.scope !22791, !noalias !22789 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub i64 %.val11.i, %.val9.i
  %spec.select.i.i.i.i.i15.i = select i1 %i.x, i64 %i.y, i64 %i.w
  %i.z = xor i64 %spec.select.i.i.i.i.i15.i, %spec.select.i.i.i.i.i.i
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i.i.i.i.i16.i = tail call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val9.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i16.i), !alias.scope !22792, !noalias !22789 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %.val13.i, %.val9.i
  %spec.select.i.i.i.i.i17.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = xor i64 %spec.select.i.i.i.i.i17.i, %spec.select.i.i.i.i.i.i
  %i.ag = icmp slt i64 %i.af, 0
  %..i.i = select i1 %i.ag, ptr %i.l, ptr %i.k
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i.sink.i = phi ptr [ %i.n, %bb.c ], [ %.sroa.0.079120, %bb.d ], [ %..i.i, %bb.e ]
  %i.ah = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ai = ptrtoint ptr %.sroa.0.079120 to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.aj, 4          ; 3 uses
  %i.ak = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.078121
  tail call void @llvm.assume(i1 %i.ak)
  %.not = icmp eq ptr %.sroa.023.077122, null
  br i1 %.not, label %bb.g, label %bb.i

bb.f:                                             ; preds = %._crit_edge125, %._crit_edge
  ret void

bb.g:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22793)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.079120, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.078121, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.079120, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22795)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22796
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !22797, !nonnull !6, !noundef !6
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.079120, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !22797, !noundef !6
  store ptr %i.am, ptr %i.b, align 8, !noalias !22796
  store i64 %i.ao, ptr %i.f, align 8, !noalias !22796
  %i.ap = getelementptr [16 x i8], ptr %.sroa.0.079120, i64 %.sroa.15.078121 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -16    ; 2 uses
  %.sroa.13.043.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.079120, i64 32 ; 3 uses
  %i.ar = icmp ult ptr %.sroa.13.043.i.i, %i.aq
  %.val2.i.pre.i.i = load ptr, ptr %.sroa.0.079120, align 8, !alias.scope !22798, !noalias !6 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.079120, i64 8
  %.val3.i14.i.i = load i64, ptr %i.as, align 8, !alias.scope !22798, !noalias !6 ; 6 uses
  br i1 %i.ar, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.g ], [ %i.bo, %.lr.ph.i.i ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.043.i.i, %bb.g ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ]
  %.sroa.025.1.i.i.ph = phi ptr [ %i.al, %bb.g ], [ %i.bh, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.az, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep36.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.025.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.025.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.at = icmp eq ptr %.sroa.13.1.i.i, %i.ap      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.at, ptr %i.b, ptr %.sroa.13.1.i.i ; 2 uses
  %.val.i.i.i = load ptr, ptr %.sroa.01.0.i.i, align 8, !noalias !22799, !nonnull !6, !noundef !6
  %.sroa.13.1.sroa.gep.i.i = getelementptr i8, ptr %.sroa.13.1.i.i, i64 8
  %.sroa.01.0.sroa.sel.i.i = select i1 %i.at, ptr %i.f, ptr %.sroa.13.1.sroa.gep.i.i
  %.val1.i.i.i = load i64, ptr %.sroa.01.0.sroa.sel.i.i, align 8, !noalias !22799, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i14.i.i)
  %i.au = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.pre.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i), !alias.scope !22800, !noalias !22801 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp eq i32 %i.au, 0
  %i.ax = sub i64 %.val1.i.i.i, %.val3.i14.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.aw, i64 %i.ax, i64 %i.av
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.025.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !alias.scope !22797, !noalias !22802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !noalias !22799
  %spec.select.i.i.i.i.i.lobit.i.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i.i, 63
  %i.az = add i64 %spec.select.i.i.i.i.i.lobit.i.i.i, %.sroa.23.1.i.i ; 6 uses
  %.sroa.13.1.sroa.gep36.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16
  br i1 %i.at, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicReNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.13.046.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.043.i.i, %bb.g ] ; 3 uses
  %.sroa.025.045.i.i = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %i.al, %bb.g ] ; 5 uses
  %.sroa.23.044.i.i = phi i64 [ %i.bo, %.lr.ph.i.i ], [ 0, %bb.g ] ; 2 uses
  %.val.i11.i.i = load ptr, ptr %.sroa.13.046.i.i, align 8, !alias.scope !22797, !noalias !22803, !nonnull !6, !noundef !6
  %i.ba = getelementptr i8, ptr %.sroa.025.045.i.i, i64 24
  %.val1.i12.i.i = load i64, ptr %i.ba, align 8, !alias.scope !22797, !noalias !22803, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i15.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i12.i.i, i64 %.val3.i14.i.i)
  %i.bb = tail call i32 @memcmp(ptr nonnull readonly %.val.i11.i.i, ptr nonnull readonly %.val2.i.pre.i.i, i64 %spec.store.select.i.i.i.i.i.i15.i.i), !alias.scope !22804, !noalias !22805 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp eq i32 %i.bb, 0
  %i.be = sub i64 %.val1.i12.i.i, %.val3.i14.i.i
  %spec.select.i.i.i.i.i.i16.i.i = select i1 %i.bd, i64 %i.be, i64 %i.bc
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.sroa.23.044.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.025.045.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !alias.scope !22797, !noalias !22803
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.046.i.i, i64 16, i1 false), !alias.scope !22797, !noalias !22803
  %spec.select.i.i.i.i.i.lobit.i17.i.i = lshr i64 %spec.select.i.i.i.i.i.i16.i.i, 63
  %i.bg = add i64 %spec.select.i.i.i.i.i.lobit.i17.i.i, %.sroa.23.044.i.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.025.045.i.i, i64 32 ; 4 uses
  %.val.i18.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !22797, !noalias !22806, !nonnull !6, !noundef !6
  %i.bi = getelementptr i8, ptr %.sroa.025.045.i.i, i64 40
  %.val1.i19.i.i = load i64, ptr %i.bi, align 8, !alias.scope !22797, !noalias !22806, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i19.i.i, i64 %.val3.i14.i.i)
  %i.bj = tail call i32 @memcmp(ptr nonnull readonly %.val.i18.i.i, ptr nonnull readonly %.val2.i.pre.i.i, i64 %spec.store.select.i.i.i.i.i.i22.i.i), !alias.scope !22807, !noalias !22808 ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp eq i32 %i.bj, 0
  %i.bm = sub i64 %.val1.i19.i.i, %.val3.i14.i.i
  %spec.select.i.i.i.i.i.i23.i.i = select i1 %i.bl, i64 %i.bm, i64 %i.bk
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.bg ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.046.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !alias.scope !22797, !noalias !22806
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false), !alias.scope !22797, !noalias !22806
  %spec.select.i.i.i.i.i.lobit.i24.i.i = lshr i64 %spec.select.i.i.i.i.i.i23.i.i, 63
  %i.bo = add i64 %spec.select.i.i.i.i.i.lobit.i24.i.i, %i.bg ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.025.045.i.i, i64 48 ; 3 uses
  %i.bp = icmp ult ptr %.sroa.13.0.i.i, %i.aq
  br i1 %i.bp, label %.lr.ph.i.i, label %.preheader.i.i.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicReNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22796
  %.not7.i = icmp ult i64 %i.az, %.sroa.15.078121
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicReNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicReNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.079120, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.078121, i64 noundef 0, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.079120, i64 %i.az ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = xor i64 %i.az, -1
  %i.bt = add i64 %.sroa.15.078121, %i.bs
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortReNvYB17_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.079120, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.077122, i32 noundef %i.i, ptr noalias noundef nonnull %4)
  br label %.backedge

bb.i:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.079120, i64 %i.aj ; 2 uses
  %.sroa.023.0.val = load ptr, ptr %.sroa.023.077122, align 8, !nonnull !6, !noundef !6
  %i.bv = getelementptr i8, ptr %.sroa.023.077122, i64 8
  %.sroa.023.0.val34 = load i64, ptr %i.bv, align 8, !noundef !6 ; 2 uses
  %.val = load ptr, ptr %i.bu, align 8, !nonnull !6, !noundef !6
  %i.bw = getelementptr i8, ptr %i.bu, i64 8
  %.val35 = load i64, ptr %i.bw, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.023.0.val34, i64 %.val35)
  %i.bx = tail call i32 @memcmp(ptr nonnull readonly %.sroa.023.0.val, ptr nonnull readonly %.val, i64 %spec.store.select.i.i.i.i.i), !alias.scope !22809 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp eq i32 %i.bx, 0
  %i.ca = sub i64 %.sroa.023.0.val34, %.val35
  %spec.select.i.i.i.i.i = select i1 %i.bz, i64 %i.ca, i64 %i.by
  %i.cb = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.cb, label %bb.g, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22810)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.079120, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.078121, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.079120, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22812)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22813
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !22814, !nonnull !6, !noundef !6
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.079120, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !22814, !noundef !6
  store ptr %i.cd, ptr %i.a, align 8, !noalias !22813
  store i64 %i.cf, ptr %i.e, align 8, !noalias !22813
  %i.cg = getelementptr [16 x i8], ptr %.sroa.0.079120, i64 %.sroa.15.078121 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -16    ; 2 uses
  %.sroa.13.041.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.079120, i64 32 ; 3 uses
  %i.ci = icmp ult ptr %.sroa.13.041.i.i, %i.ch
  %.val2.i.pre.i.i43 = load ptr, ptr %.sroa.0.079120, align 8, !alias.scope !22815, !noalias !6 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.079120, i64 8
  %.val3.i14.i.i44 = load i64, ptr %i.cj, align 8, !alias.scope !22815, !noalias !6 ; 6 uses
  br i1 %i.ci, label %.lr.ph.i.i56, label %.preheader.i.i45.preheader

.preheader.i.i45.preheader:                       ; preds = %.lr.ph.i.i56, %bb.j
  %.sroa.23.1.i.i48.ph = phi i64 [ 0, %bb.j ], [ %i.dl, %.lr.ph.i.i56 ]
  %.sroa.13.1.i.i49.ph = phi ptr [ %.sroa.13.041.i.i, %bb.j ], [ %.sroa.13.0.i.i59, %.lr.ph.i.i56 ]
  %.sroa.023.1.i.i.ph = phi ptr [ %i.cc, %bb.j ], [ %i.dc, %.lr.ph.i.i56 ]
  br label %.preheader.i.i45

.preheader.i.i45:                                 ; preds = %.preheader.i.i45.preheader, %.preheader.i.i45
  %.sroa.23.1.i.i48 = phi i64 [ %i.cs, %.preheader.i.i45 ], [ %.sroa.23.1.i.i48.ph, %.preheader.i.i45.preheader ] ; 2 uses
  %.sroa.13.1.i.i49 = phi ptr [ %.sroa.13.1.sroa.gep34.i.i, %.preheader.i.i45 ], [ %.sroa.13.1.i.i49.ph, %.preheader.i.i45.preheader ] ; 5 uses
  %.sroa.023.1.i.i = phi ptr [ %.sroa.13.1.i.i49, %.preheader.i.i45 ], [ %.sroa.023.1.i.i.ph, %.preheader.i.i45.preheader ]
  %i.ck = icmp eq ptr %.sroa.13.1.i.i49, %i.cg    ; 3 uses
  %.sroa.01.0.i.i50 = select i1 %i.ck, ptr %i.a, ptr %.sroa.13.1.i.i49 ; 2 uses
  %.val.i.i.i51 = load ptr, ptr %.sroa.01.0.i.i50, align 8, !noalias !22816, !nonnull !6, !noundef !6
  %.sroa.13.1.sroa.gep.i.i52 = getelementptr i8, ptr %.sroa.13.1.i.i49, i64 8
  %.sroa.01.0.sroa.sel.i.i53 = select i1 %i.ck, ptr %i.e, ptr %.sroa.13.1.sroa.gep.i.i52
  %.val1.i.i.i54 = load i64, ptr %.sroa.01.0.sroa.sel.i.i53, align 8, !noalias !22816, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i14.i.i44, i64 %.val1.i.i.i54)
  %i.cl = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i43, ptr nonnull readonly %.val.i.i.i51, i64 %spec.store.select.i.i.i.i.i.i.i.i.i), !alias.scope !22817, !noalias !22818 ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp eq i32 %i.cl, 0
  %i.co = sub i64 %.val3.i14.i.i44, %.val1.i.i.i54
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.cn, i64 %i.co, i64 %i.cm
  %i.cp = icmp sgt i64 %spec.select.i.i.i.i.i.i.i.i.i, -1
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.sroa.23.1.i.i48 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.023.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false), !alias.scope !22814, !noalias !22819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i50, i64 16, i1 false), !noalias !22816
  %i.cr = zext i1 %i.cp to i64
  %i.cs = add i64 %.sroa.23.1.i.i48, %i.cr        ; 4 uses
  %.sroa.13.1.sroa.gep34.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i49, i64 16
  br i1 %i.ck, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicReNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.preheader.i.i45

.lr.ph.i.i56:                                     ; preds = %bb.j, %.lr.ph.i.i56
  %.sroa.13.044.i.i = phi ptr [ %.sroa.13.0.i.i59, %.lr.ph.i.i56 ], [ %.sroa.13.041.i.i, %bb.j ] ; 3 uses
  %.sroa.023.043.i.i = phi ptr [ %i.dc, %.lr.ph.i.i56 ], [ %i.cc, %bb.j ] ; 5 uses
  %.sroa.23.042.i.i = phi i64 [ %i.dl, %.lr.ph.i.i56 ], [ 0, %bb.j ] ; 2 uses
  %.val.i11.i.i57 = load ptr, ptr %.sroa.13.044.i.i, align 8, !alias.scope !22814, !noalias !22820, !nonnull !6, !noundef !6
  %i.ct = getelementptr i8, ptr %.sroa.023.043.i.i, i64 24
  %.val1.i12.i.i58 = load i64, ptr %i.ct, align 8, !alias.scope !22814, !noalias !22820, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i15.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i14.i.i44, i64 %.val1.i12.i.i58)
  %i.cu = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i43, ptr nonnull readonly %.val.i11.i.i57, i64 %spec.store.select.i.i.i.i.i.i.i15.i.i), !alias.scope !22821, !noalias !22822 ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp eq i32 %i.cu, 0
  %i.cx = sub i64 %.val3.i14.i.i44, %.val1.i12.i.i58
  %spec.select.i.i.i.i.i.i.i16.i.i = select i1 %i.cw, i64 %i.cx, i64 %i.cv
  %i.cy = icmp sgt i64 %spec.select.i.i.i.i.i.i.i16.i.i, -1
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.sroa.23.042.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.023.043.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !alias.scope !22814, !noalias !22820
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.044.i.i, i64 16, i1 false), !alias.scope !22814, !noalias !22820
  %i.da = zext i1 %i.cy to i64
  %i.db = add i64 %.sroa.23.042.i.i, %i.da        ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.023.043.i.i, i64 32 ; 4 uses
  %.val.i17.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !22814, !noalias !22823, !nonnull !6, !noundef !6
  %i.dd = getelementptr i8, ptr %.sroa.023.043.i.i, i64 40
  %.val1.i18.i.i = load i64, ptr %i.dd, align 8, !alias.scope !22814, !noalias !22823, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i21.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i14.i.i44, i64 %.val1.i18.i.i)
  %i.de = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i43, ptr nonnull readonly %.val.i17.i.i, i64 %spec.store.select.i.i.i.i.i.i.i21.i.i), !alias.scope !22824, !noalias !22825 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp eq i32 %i.de, 0
  %i.dh = sub i64 %.val3.i14.i.i44, %.val1.i18.i.i
  %spec.select.i.i.i.i.i.i.i22.i.i = select i1 %i.dg, i64 %i.dh, i64 %i.df
  %i.di = icmp sgt i64 %spec.select.i.i.i.i.i.i.i22.i.i, -1
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.db ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.044.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false), !alias.scope !22814, !noalias !22823
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i64 16, i1 false), !alias.scope !22814, !noalias !22823
  %i.dk = zext i1 %i.di to i64
  %i.dl = add i64 %i.db, %i.dk                    ; 2 uses
  %.sroa.13.0.i.i59 = getelementptr inbounds nuw i8, ptr %.sroa.023.043.i.i, i64 48 ; 3 uses
  %i.dm = icmp ult ptr %.sroa.13.0.i.i59, %i.ch
  br i1 %i.dm, label %.lr.ph.i.i56, label %.preheader.i.i45.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicReNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.preheader.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22813
  %.not7.i55 = icmp ult i64 %i.cs, %.sroa.15.078121
  br i1 %.not7.i55, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicReNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicReNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.079120, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.078121, i64 noundef 0, i64 noundef %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.dn = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %i.do = sub nuw nsw i64 %.sroa.15.078121, %i.dn
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.079120, i64 %i.dn
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.023.0.be = phi ptr [ %i.bq, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ null, %bb.l ]
  %.sroa.15.0.be = phi i64 [ %i.bt, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.do, %bb.l ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.br, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.dp, %bb.l ] ; 3 uses
  %i.dq = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.dq, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1c_6frozenINtB3R_9FrozenMapB18_B21_E12from_entries0E0EB27_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(120) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 4 uses
  %.sroa.420.i.i47 = alloca [116 x i8], align 4   ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [120 x i8], align 8               ; 4 uses
  %.sroa.420.i.i = alloca [116 x i8], align 4     ; 4 uses
  %i.d = alloca [120 x i8], align 8               ; 4 uses
  %.sroa.6.i.i = alloca [112 x i8], align 8       ; 4 uses
  %i.e = icmp samesign ult i64 %1, 17
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph141

.lr.ph:                                           ; preds = %.backedge
  %i.g = icmp eq i32 %i.ad, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph141

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 6 uses
  %i.h = icmp samesign ugt i64 %.sroa.15.0.lcssa, 1
  br i1 %i.h, label %.lr.ph.preheader.i, label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNvMs2_NtB14_6frozenINtB4w_9FrozenMapB10_B1T_E12from_entries0E0EB1Z_.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.15.0.lcssa
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 120
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3S_9FrozenMapB19_B22_E12from_entries0E0EB28_.exit.i, %.lr.ph.preheader.i
  %.sroa.0.05.i = phi ptr [ %i.ac, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3S_9FrozenMapB19_B22_E12from_entries0E0EB28_.exit.i ], [ %i.j, %.lr.ph.preheader.i ] ; 8 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -120 ; 4 uses
  %.val11.i.i = load i32, ptr %.sroa.0.05.i, align 4, !range !18, !alias.scope !22850, !noundef !6 ; 2 uses
  %.val13.i.i = load i32, ptr %i.k, align 4, !range !18, !alias.scope !22850, !noundef !6
  %i.l = trunc nuw nsw i32 %.val11.i.i to i8      ; 2 uses
  %i.m = trunc nuw nsw i32 %.val13.i.i to i8
  %i.n = sub nsw i8 %i.l, %i.m                    ; 2 uses
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %.sink.split.i.i.i.i.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i.i

.sink.split.i.i.i.i.i:                            ; preds = %.lr.ph.i
  %i.p = getelementptr i8, ptr %.sroa.0.05.i, i64 -116
  %.val14.i.i = load i32, ptr %i.p, align 4, !alias.scope !22850
  %i.q = getelementptr i8, ptr %.sroa.0.05.i, i64 4
  %.val12.i.i = load i32, ptr %i.q, align 4, !alias.scope !22850
  %i.r = tail call i8 @llvm.ucmp.i8.i32(i32 %.val12.i.i, i32 %.val14.i.i)
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i.i: ; preds = %.sink.split.i.i.i.i.i, %.lr.ph.i
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.n, %.lr.ph.i ], [ %i.r, %.sink.split.i.i.i.i.i ]
  %i.s = icmp eq i8 %.sroa.0.0.i.i.i.i.i, -1
  br i1 %i.s, label %bb.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3S_9FrozenMapB19_B22_E12from_entries0E0EB28_.exit.i

bb.b:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 4
  %.sroa.410.0.copyload.i.i = load i32, ptr %.sroa.410.0..sroa_idx.i.i, align 4, !alias.scope !22850 ; 2 uses
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.511.0..sroa_idx.i.i, i64 112, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.05.i, ptr noundef nonnull align 8 dereferenceable(120) %i.k, i64 120, i1 false), !alias.scope !22850
  %i.t = icmp eq ptr %i.k, %.sroa.0.0.lcssa
  br i1 %i.t, label %._crit_edge146, label %.lr.ph145

bb.c:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.0.i.i143, ptr noundef nonnull align 8 dereferenceable(120) %i.v, i64 120, i1 false), !alias.scope !22850
  %i.u = icmp eq ptr %i.v, %.sroa.0.0.lcssa
  br i1 %i.u, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i143 = phi ptr [ %i.v, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.0.i.i143, i64 -120 ; 4 uses
  %.val9.i.i = load i32, ptr %i.v, align 4, !range !18, !alias.scope !22850, !noundef !6
  %i.w = trunc nuw nsw i32 %.val9.i.i to i8
  %i.x = sub nsw i8 %i.l, %i.w                    ; 2 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %.sink.split.i.i.i16.i.i, label %bb.d

.sink.split.i.i.i16.i.i:                          ; preds = %.lr.ph145
  %i.z = getelementptr i8, ptr %.sroa.0.0.i.i143, i64 -116
  %.val10.i.i = load i32, ptr %i.z, align 4, !alias.scope !22850
  %i.aa = tail call i8 @llvm.ucmp.i8.i32(i32 %.sroa.410.0.copyload.i.i, i32 %.val10.i.i)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i.i.i16.i.i, %.lr.ph145
  %.sroa.0.0.i.i.i15.i.i = phi i8 [ %i.x, %.lr.ph145 ], [ %i.aa, %.sink.split.i.i.i16.i.i ]
  %i.ab = icmp eq i8 %.sroa.0.0.i.i.i15.i.i, -1
  br i1 %i.ab, label %bb.c, label %._crit_edge146

._crit_edge146:                                   ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.0.0.i.lcssa.i = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %.sroa.0.0.lcssa, %bb.c ], [ %.sroa.0.0.i.i143, %bb.d ] ; 3 uses
  store i32 %.val11.i.i, ptr %.sroa.0.0.i.lcssa.i, align 8, !alias.scope !22850, !noalias !22851
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa.i, i64 4
  store i32 %.sroa.410.0.copyload.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !22850, !noalias !22851
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.i.i, i64 112, i1 false), !noalias !22851
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3S_9FrozenMapB19_B22_E12from_entries0E0EB28_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3S_9FrozenMapB19_B22_E12from_entries0E0EB28_.exit.i: ; preds = %._crit_edge146, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 120 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.i
  br i1 %.not.i, label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNvMs2_NtB14_6frozenINtB4w_9FrozenMapB10_B1T_E12from_entries0E0EB1Z_.exit, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.089.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.088.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1a_6frozenINtB3P_9FrozenMapB16_B1Z_E12from_entries0E0EB25_(ptr noalias noundef nonnull align 8 %.sroa.0.089.lcssa, i64 noundef %.sroa.15.088.lcssa, ptr noalias nonnull align 8 poison)
  br label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNvMs2_NtB14_6frozenINtB4w_9FrozenMapB10_B1T_E12from_entries0E0EB1Z_.exit

.lr.ph141:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.085140 = phi i32 [ %i.ad, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.086138 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.088137 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.089136 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 29 uses
  %i.ad = add nsw i32 %.sroa.026.085140, -1       ; 3 uses
  %i.ae = lshr i64 %.sroa.15.088137, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.ae, 480
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.089136, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.ae, 840
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.089136, i64 %.idx2.i ; 4 uses
  %i.ah = icmp samesign ult i64 %.sroa.15.088137, 64
  br i1 %i.ah, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph141
  %i.ai = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB14_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3O_9FrozenMapB15_B1Y_E12from_entries0E0EB24_(ptr noundef nonnull readonly align 8 %.sroa.0.089136, ptr noundef readonly %i.af, ptr noundef readonly %i.ag, i64 noundef %i.ae)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1a_6frozenINtB3P_9FrozenMapB16_B1Z_E12from_entries0E0EB25_.exit

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i: ; preds = %.lr.ph141
  %.val10.i = load i32, ptr %.sroa.0.089136, align 4, !range !18, !alias.scope !22852, !noundef !6 ; 3 uses
  %i.aj = getelementptr i8, ptr %.sroa.0.089136, i64 4
  %.val11.i = load i32, ptr %i.aj, align 4, !alias.scope !22852 ; 2 uses
  %.val12.i = load i32, ptr %i.af, align 4, !range !18, !alias.scope !22852, !noundef !6 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.af, i64 4
  %.val13.i = load i32, ptr %i.ak, align 4, !alias.scope !22852 ; 2 uses
  %i.al = trunc nuw nsw i32 %.val10.i to i8       ; 2 uses
  %i.am = trunc nuw nsw i32 %.val12.i to i8       ; 2 uses
  %i.an = sub nsw i8 %i.al, %i.am
  %i.ao = icmp eq i32 %.val10.i, %.val12.i
  %i.ap = icmp ult i32 %.val11.i, %.val13.i
  %i.aq = icmp eq i8 %i.an, -1
  %i.ar = select i1 %i.ao, i1 %i.ap, i1 %i.aq     ; 2 uses
  %.val8.i = load i32, ptr %i.ag, align 4, !range !18, !alias.scope !22852, !noundef !6 ; 3 uses
  %i.as = getelementptr i8, ptr %i.ag, i64 4
  %.val9.i = load i32, ptr %i.as, align 4, !alias.scope !22852 ; 2 uses
  %i.at = trunc nuw nsw i32 %.val8.i to i8        ; 2 uses
  %i.au = sub nsw i8 %i.al, %i.at
  %i.av = icmp eq i32 %.val10.i, %.val8.i
  %i.aw = icmp ult i32 %.val11.i, %.val9.i
  %i.ax = icmp eq i8 %i.au, -1
  %i.ay = select i1 %i.av, i1 %i.aw, i1 %i.ax
  %i.az = xor i1 %i.ar, %i.ay
  br i1 %i.az, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1a_6frozenINtB3P_9FrozenMapB16_B1Z_E12from_entries0E0EB25_.exit, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit21.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit21.i: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i
  %i.ba = sub nsw i8 %i.am, %i.at
  %i.bb = icmp eq i32 %.val12.i, %.val8.i
  %i.bc = icmp ult i32 %.val13.i, %.val9.i
  %i.bd = icmp eq i8 %i.ba, -1
  %i.be = select i1 %i.bb, i1 %i.bc, i1 %i.bd
  %i.bf = xor i1 %i.ar, %i.be
  %..i.i = select i1 %i.bf, ptr %i.ag, ptr %i.af
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1a_6frozenINtB3P_9FrozenMapB16_B1Z_E12from_entries0E0EB25_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1a_6frozenINtB3P_9FrozenMapB16_B1Z_E12from_entries0E0EB25_.exit: ; preds = %bb.e, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit21.i
  %.sroa.0.0.i.sink.i = phi ptr [ %i.ai, %bb.e ], [ %.sroa.0.089136, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i ], [ %..i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit21.i ]
  %i.bg = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.bh = ptrtoint ptr %.sroa.0.089136 to i64
  %i.bi = sub nuw i64 %i.bg, %i.bh                ; 3 uses
  %.sroa.0.0.i = udiv exact i64 %i.bi, 120
  %i.bj = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.088137
  tail call void @llvm.assume(i1 %i.bj)
  %.not = icmp eq ptr %.sroa.023.086138, null
  br i1 %.not, label %bb.f, label %bb.r

_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNvMs2_NtB14_6frozenINtB4w_9FrozenMapB10_B1T_E12from_entries0E0EB1Z_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3S_9FrozenMapB19_B22_E12from_entries0E0EB28_.exit.i, %._crit_edge, %.lr.ph._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1a_6frozenINtB3P_9FrozenMapB16_B1Z_E12from_entries0E0EB25_.exit, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.089136, i64 %i.bi ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.089136, i64 120, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.089136, ptr noundef nonnull align 8 dereferenceable(120) %i.bk, i64 120, i1 false), !alias.scope !22853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bk, ptr noundef nonnull align 8 dereferenceable(120) %i.d, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.089136, i64 120 ; 2 uses
  %.val.i = load i32, ptr %.sroa.0.089136, align 8, !alias.scope !22854
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1T_ENCINvMB8_SB17_20sort_unstable_by_keyTNtNtB1X_4size8TextSizeB3n_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0EB3W_:bb.a
  %i.bu = load <2 x i32>, ptr %i.bs, align 8, !alias.scope !22890, !noalias !22893
  store <2 x i32> %i.bu, ptr %i.i, align 8, !noalias !22892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !22892
  store i32 %.val2.i.pre.i.i, ptr %i.h, align 4, !noalias !22892
  store i32 %.val3.i.pre.i.i, ptr %i.ac, align 4, !noalias !22892
  %i.bv = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2l_ENCINvMBa_SB1z_20sort_unstable_by_keyTNtNtB2p_4size8TextSizeB3P_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0B4o_.exit15.i.i unwind label %.loopexit.split-lp.i.i, !noalias !22889 ; 2 uses

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2l_ENCINvMBa_SB1z_20sort_unstable_by_keyTNtNtB2p_4size8TextSizeB3P_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0B4o_.exit15.i.i: ; preds = %bb.h
  %.not.i.i.i13.i.i = icmp eq i8 %i.bv, 2
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = icmp ult i32 %.val1.i10.i.i, %.val3.i.pre.i.i
  %.sroa.0.0.i.i.i14.i.i = select i1 %.not.i.i.i13.i.i, i1 %i.bx, i1 %i.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !22892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !22892
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %.sroa.19.038.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.039.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 32, i1 false), !alias.scope !22890, !noalias !22893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.040.i.i, i64 32, i1 false), !alias.scope !22890, !noalias !22893
  %i.bz = zext i1 %.sroa.0.0.i.i.i14.i.i to i64
  %i.ca = add i64 %.sroa.19.038.i.i, %i.bz        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.040.i.i, i64 32 ; 3 uses
  %i.cb = icmp ult ptr %.sroa.11.0.i.i, %i.bk
  br i1 %i.cb, label %bb.h, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i.i:                           ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

common.resume:                                    ; preds = %bb.n, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.i ], [ %lpad.phi.i.i57, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.sroa.016.2.i.i = phi ptr [ %.sroa.016.1.i.i, %.loopexit.i.i ], [ %.sroa.016.039.i.i, %.loopexit.split-lp.i.i ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.2.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !22884
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2j_ENCINvMB8_SB1x_20sort_unstable_by_keyTNtNtB2n_4size8TextSizeB3N_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0EB4m_.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !22885
  %.not7.i = icmp ult i64 %i.br, %.sroa.15.0109193
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1g_E12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2j_ENCINvMB8_SB1x_20sort_unstable_by_keyTNtNtB2n_4size8TextSizeB3N_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0EB4m_.exit.i
  call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1g_E12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2j_ENCINvMB8_SB1x_20sort_unstable_by_keyTNtNtB2n_4size8TextSizeB3N_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0EB4m_.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1g_E14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.0110192, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.0109193, i64 noundef 0, i64 noundef %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0110192, i64 %i.br ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = xor i64 %i.br, -1
  %i.cf = add i64 %.sroa.15.0109193, %i.ce
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1T_ENCINvMB8_SB17_20sort_unstable_by_keyTNtNtB1X_4size8TextSizeB3n_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0EB3W_(ptr noalias noundef nonnull align 8 %.sroa.0.0110192, i64 noundef %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.sroa.023.0108194, i32 noundef %i.ah, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.k:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1R_ENCINvMB8_SB15_20sort_unstable_by_keyTNtNtB1V_4size8TextSizeB3l_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0EB3U_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 %i.bg ; 2 uses
  %i.ch = getelementptr i8, ptr %.sroa.023.0108194, i64 24
  %i.ci = getelementptr i8, ptr %.sroa.023.0108194, i64 28
  %i.cj = getelementptr i8, ptr %i.cg, i64 24
  %i.ck = getelementptr i8, ptr %i.cg, i64 28
  %.sroa.023.0.val34 = load i32, ptr %i.ci, align 4, !noundef !6
  %i.cl = load <2 x i32>, ptr %i.ch, align 8
  %.val35 = load i32, ptr %i.ck, align 4, !noundef !6
  %i.cm = load <2 x i32>, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store <2 x i32> %i.cl, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store <2 x i32> %i.cm, ptr %i.f, align 8
  %i.cn = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.f) ; 2 uses
  %.not.i.i = icmp eq i8 %i.cn, 2
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = icmp ult i32 %.sroa.023.0.val34, %.val35
  %.sroa.0.0.i.i = select i1 %.not.i.i, i1 %i.cp, i1 %i.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.0.0.i.i, label %.lr.ph.i.i, label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !22894)
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1g_E14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.0110192, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.0109193, i64 noundef 0, i64 noundef range(i64 0, 288230376151711743) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22895)
  call void @llvm.experimental.noalias.scope.decl(metadata !22896)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i64 32, i1 false), !noalias !22896
  %i.cr = shl nuw nsw i64 %.sroa.15.0109193, 5
  %i.cs = getelementptr i8, ptr %.sroa.0.0110192, i64 %i.cr ; 2 uses
  %.sroa.11.037.i.i44 = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 64
  %.phi.trans.insert.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 24
  %.val2.i.pre.i.i46 = load i32, ptr %.phi.trans.insert.i.i45, align 8, !alias.scope !22898, !noalias !6 ; 2 uses
  %.phi.trans.insert51.i.i47 = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 28
  %.val3.i.pre.i.i48 = load i32, ptr %.phi.trans.insert51.i.i47, align 4, !alias.scope !22898, !noalias !6 ; 4 uses
  br label %bb.m

.preheader.i.i59:                                 ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2l_ENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtB2p_4size8TextSizeB4b_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0E0B4K_.exit15.i.i, %bb.l
  %.sroa.19.1.i.i60 = phi i64 [ %i.da, %bb.l ], [ %i.dk, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2l_ENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtB2p_4size8TextSizeB4b_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0E0B4K_.exit15.i.i ] ; 2 uses
  %.sroa.11.1.i.i61 = phi ptr [ %.sroa.11.1.sroa.gep27.i.i72, %bb.l ], [ %.sroa.11.0.i.i58, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2l_ENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtB2p_4size8TextSizeB4b_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0E0B4K_.exit15.i.i ] ; 6 uses
  %.sroa.016.1.i.i62 = phi ptr [ %.sroa.11.1.i.i61, %bb.l ], [ %.sroa.11.040.i.i49, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2l_ENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtB2p_4size8TextSizeB4b_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0E0B4K_.exit15.i.i ] ; 2 uses
  %i.ct = icmp eq ptr %.sroa.11.1.i.i61, %i.cs    ; 4 uses
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ct, ptr %i.e, ptr %.sroa.11.1.i.i61
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %.val.i.i.i65 = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !22899, !noundef !6
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ct, ptr %i.e, ptr %.sroa.11.1.i.i61
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 28
  %.val1.i.i.i68 = load i32, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !noalias !22899, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22900
  store i32 %.val2.i.pre.i.i46, ptr %i.d, align 4, !noalias !22900
  store i32 %.val3.i.pre.i.i48, ptr %i.aa, align 4, !noalias !22900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22900
  store i32 %.val.i.i.i65, ptr %i.c, align 4, !noalias !22900
  store i32 %.val1.i.i.i68, ptr %i.ab, align 4, !noalias !22900
  %i.cu = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.l unwind label %.loopexit.i.i69, !noalias !22901 ; 2 uses

bb.l:                                             ; preds = %.preheader.i.i59
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v = select i1 %i.ct, ptr %i.e, ptr %.sroa.11.1.i.i61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cu, 2
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = icmp ult i32 %.val3.i.pre.i.i48, %.val1.i.i.i68
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.cw, i1 %i.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22900
  %i.cx = xor i1 %.sroa.0.0.i.i.i.i.i.i, true
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %.sroa.19.1.i.i60 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.1.i.i62, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 32, i1 false), !alias.scope !22902, !noalias !22903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v, i64 32, i1 false), !noalias !22899
  %i.cz = zext i1 %i.cx to i64
  %i.da = add i64 %.sroa.19.1.i.i60, %i.cz        ; 4 uses
  %.sroa.11.1.sroa.gep27.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i61, i64 32
  br i1 %i.ct, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2j_ENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTNtNtB2n_4size8TextSizeB49_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0EB4I_.exit.i, label %.preheader.i.i59

bb.m:                                             ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2l_ENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtB2p_4size8TextSizeB4b_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0E0B4K_.exit15.i.i, %.lr.ph.i.i43
  %.sroa.11.040.i.i49 = phi ptr [ %.sroa.11.037.i.i44, %.lr.ph.i.i43 ], [ %.sroa.11.0.i.i58, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2l_ENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtB2p_4size8TextSizeB4b_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0E0B4K_.exit15.i.i ] ; 4 uses
  %.sroa.016.039.i.i50 = phi ptr [ %i.cq, %.lr.ph.i.i43 ], [ %.sroa.11.040.i.i49, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2l_ENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtB2p_4size8TextSizeB4b_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0E0B4K_.exit15.i.i ] ; 4 uses
  %.sroa.19.038.i.i51 = phi i64 [ 0, %.lr.ph.i.i43 ], [ %i.dk, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2l_ENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtB2p_4size8TextSizeB4b_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0E0B4K_.exit15.i.i ] ; 2 uses
  %i.db = getelementptr i8, ptr %.sroa.016.039.i.i50, i64 56
  %i.dc = getelementptr i8, ptr %.sroa.016.039.i.i50, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22904
  store i32 %.val2.i.pre.i.i46, ptr %i.b, align 4, !noalias !22904
  store i32 %.val3.i.pre.i.i48, ptr %i.z, align 4, !noalias !22904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22904
  %.val1.i10.i.i53 = load i32, ptr %i.dc, align 4, !alias.scope !22902, !noalias !22905, !noundef !6
  %i.dd = load <2 x i32>, ptr %i.db, align 8, !alias.scope !22902, !noalias !22905
  store <2 x i32> %i.dd, ptr %i.a, align 8, !noalias !22904
  %i.de = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2l_ENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtB2p_4size8TextSizeB4b_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0E0B4K_.exit15.i.i unwind label %.loopexit.split-lp.i.i54, !noalias !22901 ; 2 uses

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2l_ENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyTNtNtB2p_4size8TextSizeB4b_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0E0B4K_.exit15.i.i: ; preds = %bb.m
  %.not.i.i.i.i13.i.i = icmp eq i8 %i.de, 2
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = icmp ult i32 %.val3.i.pre.i.i48, %.val1.i10.i.i53
  %.sroa.0.0.i.i.i.i14.i.i = select i1 %.not.i.i.i.i13.i.i, i1 %i.dg, i1 %i.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22904
  %i.dh = xor i1 %.sroa.0.0.i.i.i.i14.i.i, true
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %.sroa.19.038.i.i51 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.039.i.i50, ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 32, i1 false), !alias.scope !22902, !noalias !22905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.040.i.i49, i64 32, i1 false), !alias.scope !22902, !noalias !22905
  %i.dj = zext i1 %i.dh to i64
  %i.dk = add i64 %.sroa.19.038.i.i51, %i.dj      ; 2 uses
  %.sroa.11.0.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.11.040.i.i49, i64 32 ; 3 uses
  %i.dl = icmp ult ptr %.sroa.11.0.i.i58, %i.cs
  br i1 %i.dl, label %bb.m, label %.preheader.i.i59

.loopexit.i.i69:                                  ; preds = %.preheader.i.i59
  %lpad.loopexit.i.i70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i.i54:                         ; preds = %bb.m
  %lpad.loopexit.split-lp.i.i55 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i.i54, %.loopexit.i.i69
  %.sroa.016.2.i.i56 = phi ptr [ %.sroa.016.1.i.i62, %.loopexit.i.i69 ], [ %.sroa.016.039.i.i50, %.loopexit.split-lp.i.i54 ]
  %lpad.phi.i.i57 = phi { ptr, i32 } [ %lpad.loopexit.i.i70, %.loopexit.i.i69 ], [ %lpad.loopexit.split-lp.i.i55, %.loopexit.split-lp.i.i54 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.2.i.i56, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !22896
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2j_ENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTNtNtB2n_4size8TextSizeB49_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0EB4I_.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22897
  %.not7.i73 = icmp ult i64 %i.da, %.sroa.15.0109193
  br i1 %.not7.i73, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2j_ENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTNtNtB2n_4size8TextSizeB49_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0EB4I_.exit.i
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB2j_ENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTNtNtB2n_4size8TextSizeB49_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0E0EB4I_.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1g_E14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.0110192, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.0109193, i64 noundef 0, i64 noundef %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.dm = add nuw nsw i64 %i.da, 1                ; 2 uses
  %i.dn = sub nuw nsw i64 %.sroa.15.0109193, %i.dm
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0110192, i64 %i.dm
  br label %.backedge

.backedge:                                        ; preds = %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1g_E12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.023.0.be = phi ptr [ %i.cc, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1g_E12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ null, %bb.p ]
  %.sroa.15.0.be = phi i64 [ %i.cf, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1g_E12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.dn, %bb.p ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.cd, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1g_E12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.do, %bb.p ] ; 3 uses
  %i.dp = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.dp, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB18_ENvYB17_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph209

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph209

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1g_ENvYB1f_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa)
  br label %bb.q

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.0112.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.0111.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB16_ENvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.0112.lcssa, i64 noundef %.sroa.15.0111.lcssa, ptr noalias nonnull poison)
  br label %bb.q

.lr.ph209:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.0109208 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.0110207 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.sroa.15.0111206 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.0112205 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 37 uses
  %i.f = add nsw i32 %.sroa.026.0109208, -1       ; 3 uses
  %i.g = lshr i64 %.sroa.15.0111206, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 7
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0112205, i64 %.idx.i ; 10 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 224
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0112205, i64 %.idx2.i ; 10 uses
  %i.j = icmp samesign ult i64 %.sroa.15.0111206, 64
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph209
  %i.k = call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB15_ENvYB14_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull readonly align 8 %.sroa.0.0112205, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB16_ENvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit

bb.c:                                             ; preds = %.lr.ph209
  call void @llvm.experimental.noalias.scope.decl(metadata !23054)
  call void @llvm.experimental.noalias.scope.decl(metadata !23055)
  call void @llvm.experimental.noalias.scope.decl(metadata !23056)
  call void @llvm.experimental.noalias.scope.decl(metadata !23057)
  %i.l = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0112205, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.l, 2
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i8 %i.l to i1
  br label %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0112205, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23058)
  call void @llvm.experimental.noalias.scope.decl(metadata !23059)
  call void @llvm.experimental.noalias.scope.decl(metadata !23060)
  call void @llvm.experimental.noalias.scope.decl(metadata !23061)
  call void @llvm.experimental.noalias.scope.decl(metadata !23062)
  call void @llvm.experimental.noalias.scope.decl(metadata !23063)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0112205, i64 31
  %i.q = load i8, ptr %i.p, align 1, !range !8, !alias.scope !23064, !noundef !6 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0112205, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23064, !noundef !6
  %i.t = and i64 %i.s, 72057594037927935
  %i.u = icmp ult i8 %i.q, -48
  %i.v = zext i8 %i.q to i64
  %i.w = add nsw i64 %i.v, -192
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.w, i64 16)
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.u, i64 %spec.store.select.i.i.i.i.i.i.i, i64 %i.t ; 3 uses
  %i.x = icmp ugt i8 %i.q, -49
  %i.y = load ptr, ptr %i.n, align 8, !alias.scope !23064
  %.sroa.01.0.i.i.i.i.i.i.i = select i1 %i.x, ptr %i.y, ptr %i.n ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 31
  %i.aa = load i8, ptr %i.z, align 1, !range !8, !alias.scope !23065, !noundef !6 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !23065, !noundef !6
  %i.ad = and i64 %i.ac, 72057594037927935
  %i.ae = icmp ult i8 %i.aa, -48
  %i.af = zext i8 %i.aa to i64
  %i.ag = add nsw i64 %i.af, -192
  %spec.store.select.i9.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 16)
  %.sroa.0.0.i10.i.i.i.i.i.i = select i1 %i.ae, i64 %spec.store.select.i9.i.i.i.i.i.i, i64 %i.ad ; 3 uses
  %i.ah = icmp ugt i8 %i.aa, -49
  %i.ai = load ptr, ptr %i.o, align 8, !alias.scope !23065
  %.sroa.01.0.i11.i.i.i.i.i.i = select i1 %i.ah, ptr %i.ai, ptr %i.o ; 2 uses
  %i.aj = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i.i, %.sroa.01.0.i11.i.i.i.i.i.i
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.0.0.i10.i.i.i.i.i.i)
  %i.ak = call i32 @memcmp(ptr %.sroa.01.0.i.i.i.i.i.i.i, ptr %.sroa.01.0.i11.i.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i) ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub nsw i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.0.0.i10.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  br label %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ap = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.0.0.i10.i.i.i.i.i.i
  br label %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.0.0.i.i.i = phi i1 [ %i.m, %bb.d ], [ %i.ap, %bb.g ], [ %i.ao, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23066)
  call void @llvm.experimental.noalias.scope.decl(metadata !23067)
  call void @llvm.experimental.noalias.scope.decl(metadata !23068)
  call void @llvm.experimental.noalias.scope.decl(metadata !23069)
  %i.aq = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0112205, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i) ; 2 uses
  %.not.i.i3.i = icmp eq i8 %i.aq, 2
  br i1 %.not.i.i3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.ar = trunc nuw i8 %i.aq to i1
  br label %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit13.i

bb.i:                                             ; preds = %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0112205, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23070)
  call void @llvm.experimental.noalias.scope.decl(metadata !23071)
  call void @llvm.experimental.noalias.scope.decl(metadata !23072)
  call void @llvm.experimental.noalias.scope.decl(metadata !23073)
  call void @llvm.experimental.noalias.scope.decl(metadata !23074)
  call void @llvm.experimental.noalias.scope.decl(metadata !23075)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0112205, i64 31
  %i.av = load i8, ptr %i.au, align 1, !range !8, !alias.scope !23076, !noundef !6 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0112205, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !23076, !noundef !6
  %i.ay = and i64 %i.ax, 72057594037927935
  %i.az = icmp ult i8 %i.av, -48
  %i.ba = zext i8 %i.av to i64
  %i.bb = add nsw i64 %i.ba, -192
  %spec.store.select.i.i.i.i.i.i5.i = call i64 @llvm.umin.i64(i64 %i.bb, i64 16)
  %.sroa.0.0.i.i.i.i.i.i6.i = select i1 %i.az, i64 %spec.store.select.i.i.i.i.i.i5.i, i64 %i.ay ; 3 uses
  %i.bc = icmp ugt i8 %i.av, -49
  %i.bd = load ptr, ptr %i.as, align 8, !alias.scope !23076
  %.sroa.01.0.i.i.i.i.i.i7.i = select i1 %i.bc, ptr %i.bd, ptr %i.as ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 31
  %i.bf = load i8, ptr %i.be, align 1, !range !8, !alias.scope !23077, !noundef !6 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !23077, !noundef !6
  %i.bi = and i64 %i.bh, 72057594037927935
  %i.bj = icmp ult i8 %i.bf, -48
  %i.bk = zext i8 %i.bf to i64
  %i.bl = add nsw i64 %i.bk, -192
  %spec.store.select.i9.i.i.i.i.i8.i = call i64 @llvm.umin.i64(i64 %i.bl, i64 16)
  %.sroa.0.0.i10.i.i.i.i.i9.i = select i1 %i.bj, i64 %spec.store.select.i9.i.i.i.i.i8.i, i64 %i.bi ; 3 uses
  %i.bm = icmp ugt i8 %i.bf, -49
  %i.bn = load ptr, ptr %i.at, align 8, !alias.scope !23077
  %.sroa.01.0.i11.i.i.i.i.i10.i = select i1 %i.bm, ptr %i.bn, ptr %i.at ; 2 uses
  %i.bo = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i7.i, %.sroa.01.0.i11.i.i.i.i.i10.i
  br i1 %i.bo, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %spec.store.select.i.i.i.i.i11.i = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.i.i6.i, i64 %.sroa.0.0.i10.i.i.i.i.i9.i)
  %i.bp = call i32 @memcmp(ptr %.sroa.01.0.i.i.i.i.i.i7.i, ptr %.sroa.01.0.i11.i.i.i.i.i10.i, i64 %spec.store.select.i.i.i.i.i11.i) ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp eq i32 %i.bp, 0
  %i.bs = sub nsw i64 %.sroa.0.0.i.i.i.i.i.i6.i, %.sroa.0.0.i10.i.i.i.i.i9.i
  %spec.select.i.i.i.i.i12.i = select i1 %i.br, i64 %i.bs, i64 %i.bq
  %i.bt = icmp slt i64 %spec.select.i.i.i.i.i12.i, 0
  br label %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit13.i

bb.k:                                             ; preds = %bb.i
  %i.bu = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i.i6.i, %.sroa.0.0.i10.i.i.i.i.i9.i
  br label %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit13.i

_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit13.i: ; preds = %bb.k, %bb.j, %bb.h
  %.sroa.0.0.i.i4.i = phi i1 [ %i.ar, %bb.h ], [ %i.bu, %bb.k ], [ %i.bt, %bb.j ]
  %i.bv = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i4.i
  br i1 %i.bv, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB16_ENvYB15_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l

bb.l:                                             ; preds = %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit13.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23078)
  call void @llvm.experimental.noalias.scope.decl(metadata !23079)
  call void @llvm.experimental.noalias.scope.decl(metadata !23080)
  call void @llvm.experimental.noalias.scope.decl(metadata !23081)
  %i.bw = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i) ; 2 uses
  %.not.i.i14.i = icmp eq i8 %i.bw, 2
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB18_ENvYB17_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic:bb.a
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 %.sroa.0.0.i10.i.i.i.i.i)
  %i.gu = call i32 @memcmp(ptr %.sroa.01.0.i.i.i.i.i.i, ptr %.sroa.01.0.i11.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i) ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = icmp eq i32 %i.gu, 0
  %i.gx = sub nsw i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i10.i.i.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.gw, i64 %i.gx, i64 %i.gv
  %i.gy = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.gy, label %.lr.ph.i.i, label %.lr.ph.i.i42

_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.af
  %i.gz = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i10.i.i.i.i.i
  br i1 %i.gz, label %.lr.ph.i.i, label %.lr.ph.i.i42

.lr.ph.i.i42:                                     ; preds = %bb.ae, %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit, %.split85
  call void @llvm.experimental.noalias.scope.decl(metadata !23113)
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBv_E14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.0112205, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.0111206, i64 noundef 0, i64 noundef range(i64 0, 288230376151711743) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.0112205, i64 32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23114)
  call void @llvm.experimental.noalias.scope.decl(metadata !23115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ha, i64 32, i1 false), !noalias !23115
  %i.hb = shl nuw nsw i64 %.sroa.15.0111206, 5
  %i.hc = getelementptr i8, ptr %.sroa.0.0112205, i64 %i.hb ; 2 uses
  %.sroa.11.045.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.0112205, i64 64
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0112205, i64 16 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0112205, i64 31
  %i.hf = load i8, ptr %i.he, align 1, !range !8, !alias.scope !23117 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0112205, i64 24
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !23117 ; 4 uses
  %i.hi = and i64 %i.hh, 72057594037927935        ; 2 uses
  %i.hj = icmp ult i8 %i.hf, -48
  %i.hk = zext i8 %i.hf to i64
  %i.hl = add nsw i64 %i.hk, -192
  %spec.store.select.i.i.i.i.i.i.i.i11.i.i = call i64 @llvm.umin.i64(i64 %i.hl, i64 16)
  %.sroa.0.0.i.i.i.i.i.i.i.i12.i.i = select i1 %i.hj, i64 %spec.store.select.i.i.i.i.i.i.i.i11.i.i, i64 %i.hi ; 3 uses
  %i.hm = icmp ugt i8 %i.hf, -49
  %i.hn = load ptr, ptr %i.hd, align 8, !alias.scope !23117 ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i13.i.i = select i1 %i.hm, ptr %i.hn, ptr %i.hd ; 2 uses
  %i.ho = lshr i64 %i.hh, 56
  br label %bb.am

.preheader.i.i53:                                 ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1A_ENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsoTR8nlGN3X_18ty_python_semantic.exit20.i.i
  %i.hp = icmp ult i64 %i.hh, -3458764513820540928
  %i.hq = add nsw i64 %i.ho, -192
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hq, i64 16)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.hp, i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 %i.hi ; 3 uses
  %i.hr = icmp ugt i64 %i.hh, -3458764513820540929
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.hr, ptr %i.hn, ptr %i.hd ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %.preheader.i.i53
  %.sroa.19.1.i.i54 = phi i64 [ %i.in, %bb.al ], [ %i.jl, %.preheader.i.i53 ] ; 2 uses
  %.sroa.11.1.i.i55 = phi ptr [ %.sroa.11.1.sroa.gep.i.i62, %bb.al ], [ %.sroa.11.0.i.i52, %.preheader.i.i53 ] ; 7 uses
  %.sroa.021.1.i.i56 = phi ptr [ %.sroa.11.1.i.i55, %bb.al ], [ %.sroa.11.048.i.i44, %.preheader.i.i53 ] ; 2 uses
  %i.hs = icmp eq ptr %.sroa.11.1.i.i55, %i.hc    ; 5 uses
  %.sroa.01.0.i.i57 = select i1 %i.hs, ptr %i.a, ptr %.sroa.11.1.i.i55 ; 2 uses
  %i.ht = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0112205, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.01.0.i.i57)
          to label %.noexc.i.i60 unwind label %.loopexit.i.i58 ; 2 uses

.noexc.i.i60:                                     ; preds = %bb.ag
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ht, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.noexc.i.i60
  %i.hu = trunc nuw i8 %i.ht to i1
  br label %bb.al

bb.ai:                                            ; preds = %.noexc.i.i60
  %.sroa.01.0.sroa.sel30.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.hs, ptr %i.a, ptr %.sroa.11.1.i.i55
  %.sroa.01.0.sroa.sel30.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.sroa.sel30.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16 ; 2 uses
  %.sroa.01.0.sroa.sel33.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.hs, ptr %i.a, ptr %.sroa.11.1.i.i55
  %.sroa.01.0.sroa.sel33.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.sroa.sel33.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 31
  %i.hv = load i8, ptr %.sroa.01.0.sroa.sel33.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !range !8, !alias.scope !23118, !noalias !23119, !noundef !6 ; 3 uses
  %.sroa.01.0.sroa.sel36.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i68.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.hs, ptr %i.a, ptr %.sroa.11.1.i.i55
  %.sroa.01.0.sroa.sel36.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i68.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.sroa.sel36.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i68.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %i.hw = load i64, ptr %.sroa.01.0.sroa.sel36.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i68.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !23118, !noalias !23119, !noundef !6
  %i.hx = and i64 %i.hw, 72057594037927935
  %i.hy = icmp ult i8 %i.hv, -48
  %i.hz = zext i8 %i.hv to i64
  %i.ia = add nsw i64 %i.hz, -192
  %spec.store.select.i9.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ia, i64 16)
  %.sroa.0.0.i10.i.i.i.i.i.i.i.i.i = select i1 %i.hy, i64 %spec.store.select.i9.i.i.i.i.i.i.i.i.i, i64 %i.hx ; 3 uses
  %i.ib = icmp ugt i8 %i.hv, -49
  %i.ic = load ptr, ptr %.sroa.01.0.sroa.sel30.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !23118, !noalias !23119
  %.sroa.01.0.i11.i.i.i.i.i.i.i.i.i = select i1 %i.ib, ptr %i.ic, ptr %.sroa.01.0.sroa.sel30.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel ; 2 uses
  %i.id = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.i11.i.i.i.i.i.i.i.i.i
  br i1 %i.id, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %spec.store.select.i.i.i.i.i.i.i.i.i70 = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.i10.i.i.i.i.i.i.i.i.i)
  %i.ie = call i32 @memcmp(ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.01.0.i11.i.i.i.i.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i.i70), !noalias !23120 ; 2 uses
  %i.if = sext i32 %i.ie to i64
  %i.ig = icmp eq i32 %i.ie, 0
  %i.ih = sub nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i10.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.ig, i64 %i.ih, i64 %i.if
  %i.ii = icmp slt i64 %spec.select.i.i.i.i.i.i.i.i.i, 0
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ij = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i10.i.i.i.i.i.i.i.i.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %.sroa.0.0.i.i.i.i.i.i61 = phi i1 [ %i.hu, %bb.ah ], [ %i.ij, %bb.ak ], [ %i.ii, %bb.aj ]
  %i.ik = xor i1 %.sroa.0.0.i.i.i.i.i.i61, true
  %i.il = getelementptr inbounds nuw [32 x i8], ptr %i.ha, i64 %.sroa.19.1.i.i54 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.1.i.i56, ptr noundef nonnull align 8 dereferenceable(32) %i.il, i64 32, i1 false), !alias.scope !23121, !noalias !23120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.i.i57, i64 32, i1 false), !noalias !23119
  %i.im = zext i1 %i.ik to i64
  %i.in = add i64 %.sroa.19.1.i.i54, %i.im        ; 4 uses
  %.sroa.11.1.sroa.gep.i.i62 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i55, i64 32
  br i1 %i.hs, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1y_ENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %bb.ag

bb.am:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1A_ENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsoTR8nlGN3X_18ty_python_semantic.exit20.i.i, %.lr.ph.i.i42
  %.sroa.11.048.i.i44 = phi ptr [ %.sroa.11.045.i.i43, %.lr.ph.i.i42 ], [ %.sroa.11.0.i.i52, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1A_ENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsoTR8nlGN3X_18ty_python_semantic.exit20.i.i ] ; 5 uses
  %.sroa.021.047.i.i45 = phi ptr [ %i.ha, %.lr.ph.i.i42 ], [ %.sroa.11.048.i.i44, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1A_ENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsoTR8nlGN3X_18ty_python_semantic.exit20.i.i ] ; 5 uses
  %.sroa.19.046.i.i46 = phi i64 [ 0, %.lr.ph.i.i42 ], [ %i.jl, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1A_ENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsoTR8nlGN3X_18ty_python_semantic.exit20.i.i ] ; 2 uses
  %i.io = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0112205, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.11.048.i.i44)
          to label %.noexc19.i.i51 unwind label %.loopexit.split-lp.i.i47 ; 2 uses

.noexc19.i.i51:                                   ; preds = %bb.am
  %.not.i.i.i.i9.i.i = icmp eq i8 %i.io, 2
  br i1 %.not.i.i.i.i9.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc19.i.i51
  %i.ip = trunc nuw i8 %i.io to i1
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1A_ENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsoTR8nlGN3X_18ty_python_semantic.exit20.i.i

bb.ao:                                            ; preds = %.noexc19.i.i51
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.021.047.i.i45, i64 48 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.021.047.i.i45, i64 63
  %i.is = load i8, ptr %i.ir, align 1, !range !8, !alias.scope !23122, !noalias !23123, !noundef !6 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.021.047.i.i45, i64 56
  %i.iu = load i64, ptr %i.it, align 8, !alias.scope !23122, !noalias !23123, !noundef !6
  %i.iv = and i64 %i.iu, 72057594037927935
  %i.iw = icmp ult i8 %i.is, -48
  %i.ix = zext i8 %i.is to i64
  %i.iy = add nsw i64 %i.ix, -192
  %spec.store.select.i9.i.i.i.i.i.i.i14.i.i = call i64 @llvm.umin.i64(i64 %i.iy, i64 16)
  %.sroa.0.0.i10.i.i.i.i.i.i.i15.i.i = select i1 %i.iw, i64 %spec.store.select.i9.i.i.i.i.i.i.i14.i.i, i64 %i.iv ; 3 uses
  %i.iz = icmp ugt i8 %i.is, -49
  %i.ja = load ptr, ptr %i.iq, align 8, !alias.scope !23122, !noalias !23123
  %.sroa.01.0.i11.i.i.i.i.i.i.i16.i.i = select i1 %i.iz, ptr %i.ja, ptr %i.iq ; 2 uses
  %i.jb = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i.i.i13.i.i, %.sroa.01.0.i11.i.i.i.i.i.i.i16.i.i
  br i1 %i.jb, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %spec.store.select.i.i.i.i.i.i.i17.i.i = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i.i12.i.i, i64 %.sroa.0.0.i10.i.i.i.i.i.i.i15.i.i)
  %i.jc = call i32 @memcmp(ptr %.sroa.01.0.i.i.i.i.i.i.i.i13.i.i, ptr %.sroa.01.0.i11.i.i.i.i.i.i.i16.i.i, i64 %spec.store.select.i.i.i.i.i.i.i17.i.i), !noalias !23123 ; 2 uses
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp eq i32 %i.jc, 0
  %i.jf = sub nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i12.i.i, %.sroa.0.0.i10.i.i.i.i.i.i.i15.i.i
  %spec.select.i.i.i.i.i.i.i18.i.i = select i1 %i.je, i64 %i.jf, i64 %i.jd
  %i.jg = icmp slt i64 %spec.select.i.i.i.i.i.i.i18.i.i, 0
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1A_ENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsoTR8nlGN3X_18ty_python_semantic.exit20.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.jh = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i.i.i.i12.i.i, %.sroa.0.0.i10.i.i.i.i.i.i.i15.i.i
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1A_ENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsoTR8nlGN3X_18ty_python_semantic.exit20.i.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1A_ENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsoTR8nlGN3X_18ty_python_semantic.exit20.i.i: ; preds = %bb.aq, %bb.ap, %bb.an
  %.sroa.0.0.i.i.i.i10.i.i = phi i1 [ %i.ip, %bb.an ], [ %i.jh, %bb.aq ], [ %i.jg, %bb.ap ]
  %i.ji = xor i1 %.sroa.0.0.i.i.i.i10.i.i, true
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.ha, i64 %.sroa.19.046.i.i46 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.047.i.i45, ptr noundef nonnull align 8 dereferenceable(32) %i.jj, i64 32, i1 false), !alias.scope !23121, !noalias !23123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.048.i.i44, i64 32, i1 false), !alias.scope !23121, !noalias !23123
  %i.jk = zext i1 %i.ji to i64
  %i.jl = add i64 %.sroa.19.046.i.i46, %i.jk      ; 2 uses
  %.sroa.11.0.i.i52 = getelementptr inbounds nuw i8, ptr %.sroa.11.048.i.i44, i64 32 ; 3 uses
  %i.jm = icmp ult ptr %.sroa.11.0.i.i52, %i.hc
  br i1 %i.jm, label %bb.am, label %.preheader.i.i53

.loopexit.i.i58:                                  ; preds = %bb.ag
  %lpad.loopexit.i.i59 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp.i.i47:                         ; preds = %bb.am
  %lpad.loopexit.split-lp.i.i48 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp.i.i47, %.loopexit.i.i58
  %.sroa.021.2.i.i49 = phi ptr [ %.sroa.021.1.i.i56, %.loopexit.i.i58 ], [ %.sroa.021.047.i.i45, %.loopexit.split-lp.i.i47 ]
  %lpad.phi.i.i50 = phi { ptr, i32 } [ %lpad.loopexit.i.i59, %.loopexit.i.i58 ], [ %lpad.loopexit.split-lp.i.i48, %.loopexit.split-lp.i.i47 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.2.i.i49, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !23115
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1y_ENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23116
  %.not7.i63 = icmp ult i64 %i.in, %.sroa.15.0111206
  br i1 %.not7.i63, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1y_ENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.trap()
  unreachable

bb.at:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1y_ENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBv_E14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.0112205, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.0111206, i64 noundef 0, i64 noundef %i.in, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.jn = add nuw nsw i64 %i.in, 1                ; 2 uses
  %i.jo = sub nuw nsw i64 %.sroa.15.0111206, %i.jn
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0112205, i64 %i.jn
  br label %.backedge

.backedge:                                        ; preds = %bb.at, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBv_E12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.023.0.be = phi ptr [ %i.fr, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBv_E12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ null, %bb.at ]
  %.sroa.15.0.be = phi i64 [ %i.fu, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBv_E12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.jo, %bb.at ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.fs, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBv_E12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.jp, %bb.at ] ; 3 uses
  %i.jq = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.jq, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1e_6frozen16FrozenValueIndexENCINvMB8_SB17_16sort_unstable_byNCNvXsa_B2k_INtB2k_14FrozenValueMapB18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB18_B3Z_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB43_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i44 = alloca i64, align 8            ; 4 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 4 uses
  %i.a = alloca [256 x i8], align 4               ; 5 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %._crit_edge155, label %.lr.ph154

bb.b:                                             ; preds = %.backedge
  %i.d = icmp eq i32 %i.ve, 0
  br i1 %i.d, label %._crit_edge155, label %.lr.ph154

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23176)
  %i.e = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.e, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1m_6frozen16FrozenValueIndexENCINvMB8_SB1f_16sort_unstable_byNCNvXsa_B2s_INtB2s_14FrozenValueMapB1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1g_B47_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB4b_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23176
  %i.f = lshr i64 %.sroa.15.0.lcssa, 1            ; 4 uses
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 18 ; 2 uses
  %..i = select i1 %i.g, i64 %.sroa.15.0.lcssa, i64 %i.f
  %i.h = getelementptr [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f ; 3 uses
  %i.i = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.c
  %.sroa.8.0.i = phi i64 [ %..i, %bb.c ], [ %i.i, %bb.m ] ; 5 uses
  %.sroa.02.0.i = phi ptr [ %.sroa.0.0.lcssa, %bb.c ], [ %i.h, %bb.m ] ; 72 uses
  %i.j = icmp ugt i64 %.sroa.8.0.i, 12
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %.sroa.8.0.i, 8
  br i1 %i.k, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 96 ; 10 uses
  %.val.i.i.i = load i32, ptr %i.l, align 4, !range !19, !alias.scope !23177, !noundef !6 ; 2 uses
  %.val1.i.i.i = load i32, ptr %.sroa.02.0.i, align 4, !range !19, !alias.scope !23177, !noundef !6 ; 2 uses
  %i.m = icmp ult i32 %.val.i.i.i, %.val1.i.i.i   ; 2 uses
  %i.n = select i1 %i.m, ptr %i.l, ptr %.sroa.02.0.i, !unpredictable !6
  %i.o = select i1 %i.m, ptr %.sroa.02.0.i, ptr %i.l, !unpredictable !6
  %i.p = tail call i32 @llvm.umax.i32(i32 %.val.i.i.i, i32 %.val1.i.i.i) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !range !19, !alias.scope !23177, !noundef !6
  %i.s = load i64, ptr %i.n, align 4, !alias.scope !23177
  store i64 %i.s, ptr %.sroa.02.0.i, align 4, !alias.scope !23177
  store i32 %i.p, ptr %i.l, align 4, !alias.scope !23177
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 100 ; 3 uses
  store i32 %i.r, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !alias.scope !23177
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8 ; 17 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 80 ; 20 uses
  %.val.i1.i.i = load i32, ptr %i.u, align 4, !range !19, !alias.scope !23177, !noundef !6 ; 2 uses
  %.val1.i2.i.i = load i32, ptr %i.t, align 4, !range !19, !alias.scope !23177, !noundef !6 ; 2 uses
  %i.v = icmp ult i32 %.val.i1.i.i, %.val1.i2.i.i ; 2 uses
  %i.w = select i1 %i.v, ptr %i.u, ptr %i.t, !unpredictable !6
  %i.x = select i1 %i.v, ptr %i.t, ptr %i.u, !unpredictable !6
  %i.y = tail call i32 @llvm.umax.i32(i32 %.val.i1.i.i, i32 %.val1.i2.i.i) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !range !19, !alias.scope !23177, !noundef !6
  %i.ab = load i64, ptr %i.w, align 4, !alias.scope !23177 ; 3 uses
  store i64 %i.ab, ptr %i.t, align 4, !alias.scope !23177
  store i32 %i.y, ptr %i.u, align 4, !alias.scope !23177
  %.sroa.4.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 84 ; 5 uses
  store i32 %i.aa, ptr %.sroa.4.0..sroa_idx.i3.i.i, align 4, !alias.scope !23177
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 18 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 72 ; 22 uses
  %.val.i4.i.i = load i32, ptr %i.ad, align 4, !range !19, !alias.scope !23177, !noundef !6 ; 2 uses
  %.val1.i5.i.i = load i32, ptr %i.ac, align 4, !range !19, !alias.scope !23177, !noundef !6 ; 2 uses
  %i.ae = icmp ult i32 %.val.i4.i.i, %.val1.i5.i.i ; 2 uses
  %i.af = select i1 %i.ae, ptr %i.ad, ptr %i.ac, !unpredictable !6
  %i.ag = select i1 %i.ae, ptr %i.ac, ptr %i.ad, !unpredictable !6
  %i.ah = tail call i32 @llvm.umax.i32(i32 %.val.i4.i.i, i32 %.val1.i5.i.i) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !range !19, !alias.scope !23177, !noundef !6
  %i.ak = load i64, ptr %i.af, align 4, !alias.scope !23177 ; 3 uses
  store i64 %i.ak, ptr %i.ac, align 4, !alias.scope !23177
  store i32 %i.ah, ptr %i.ad, align 4, !alias.scope !23177
  %.sroa.4.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 76 ; 5 uses
  store i32 %i.aj, ptr %.sroa.4.0..sroa_idx.i6.i.i, align 4, !alias.scope !23177
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 24 ; 21 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 56 ; 19 uses
  %.val.i7.i.i = load i32, ptr %i.am, align 4, !range !19, !alias.scope !23177, !noundef !6 ; 2 uses
  %.val1.i8.i.i = load i32, ptr %i.al, align 4, !range !19, !alias.scope !23177, !noundef !6 ; 2 uses
  %i.an = icmp ult i32 %.val.i7.i.i, %.val1.i8.i.i ; 2 uses
  %i.ao = select i1 %i.an, ptr %i.am, ptr %i.al, !unpredictable !6
  %i.ap = select i1 %i.an, ptr %i.al, ptr %i.am, !unpredictable !6
  %i.aq = tail call i32 @llvm.umax.i32(i32 %.val.i7.i.i, i32 %.val1.i8.i.i) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !range !19, !alias.scope !23177, !noundef !6
  %i.at = load i64, ptr %i.ao, align 4, !alias.scope !23177 ; 3 uses
  store i64 %i.at, ptr %i.al, align 4, !alias.scope !23177
  store i32 %i.aq, ptr %i.am, align 4, !alias.scope !23177
  %.sroa.4.0..sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 60 ; 4 uses
  store i32 %i.as, ptr %.sroa.4.0..sroa_idx.i9.i.i, align 4, !alias.scope !23177
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 40 ; 23 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 88 ; 18 uses
  %.val.i10.i.i = load i32, ptr %i.av, align 4, !range !19, !alias.scope !23177, !noundef !6 ; 2 uses
  %.val1.i11.i.i = load i32, ptr %i.au, align 4, !range !19, !alias.scope !23177, !noundef !6 ; 2 uses
  %i.aw = icmp ult i32 %.val.i10.i.i, %.val1.i11.i.i ; 2 uses
  %i.ax = select i1 %i.aw, ptr %i.av, ptr %i.au, !unpredictable !6
  %i.ay = select i1 %i.aw, ptr %i.au, ptr %i.av, !unpredictable !6
  %i.az = tail call i32 @llvm.umax.i32(i32 %.val.i10.i.i, i32 %.val1.i11.i.i) ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !range !19, !alias.scope !23177, !noundef !6
  %i.bc = load i64, ptr %i.ax, align 4, !alias.scope !23177
  store i64 %i.bc, ptr %i.au, align 4, !alias.scope !23177
  store i32 %i.az, ptr %i.av, align 4, !alias.scope !23177
  %.sroa.4.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 92 ; 5 uses
  store i32 %i.bb, ptr %.sroa.4.0..sroa_idx.i12.i.i, align 4, !alias.scope !23177
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 48 ; 26 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 64 ; 23 uses
  %.val.i13.i.i = load i32, ptr %i.be, align 4, !range !19, !alias.scope !23177, !noundef !6 ; 2 uses
  %.val1.i14.i.i = load i32, ptr %i.bd, align 4, !range !19, !alias.scope !23177, !noundef !6 ; 2 uses
  %i.bf = icmp ult i32 %.val.i13.i.i, %.val1.i14.i.i ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.be, ptr %i.bd, !unpredictable !6
  %i.bh = select i1 %i.bf, ptr %i.bd, ptr %i.be, !unpredictable !6
  %i.bi = tail call i32 @llvm.umax.i32(i32 %.val.i13.i.i, i32 %.val1.i14.i.i) ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !range !19, !alias.scope !23177, !noundef !6
  %i.bl = load i64, ptr %i.bg, align 4, !alias.scope !23177 ; 3 uses
  store i64 %i.bl, ptr %i.bd, align 4, !alias.scope !23177
  store i32 %i.bi, ptr %i.be, align 4, !alias.scope !23177
  %.sroa.4.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 68 ; 5 uses
  store i32 %i.bk, ptr %.sroa.4.0..sroa_idx.i15.i.i, align 4, !alias.scope !23177
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = trunc i64 %i.ab to i32                  ; 2 uses
  %i.bo = icmp ult i32 %i.bm, %i.bn               ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.t, ptr %i.bd, !unpredictable !6
  %i.bq = tail call i32 @llvm.umax.i32(i32 %i.bm, i32 %i.bn) ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !range !19, !alias.scope !23177, !noundef !6
  %i.bt = select i1 %i.bo, i64 %i.bl, i64 %i.ab, !unpredictable !6 ; 3 uses
  store i64 %i.bt, ptr %i.t, align 4, !alias.scope !23177
  store i32 %i.bq, ptr %i.bd, align 4, !alias.scope !23177
  %.sroa.4.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 52 ; 5 uses
  store i32 %i.bs, ptr %.sroa.4.0..sroa_idx.i18.i.i, align 4, !alias.scope !23177
  %i.bu = trunc i64 %i.at to i32                  ; 2 uses
  %i.bv = trunc i64 %i.ak to i32                  ; 2 uses
  %i.bw = icmp ult i32 %i.bu, %i.bv               ; 2 uses
  %i.bx = select i1 %i.bw, ptr %i.ac, ptr %i.al, !unpredictable !6
  %i.by = tail call i32 @llvm.umax.i32(i32 %i.bu, i32 %i.bv) ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !range !19, !alias.scope !23177, !noundef !6
  %i.cb = select i1 %i.bw, i64 %i.at, i64 %i.ak, !unpredictable !6 ; 3 uses
  store i64 %i.cb, ptr %i.ac, align 4, !alias.scope !23177
  store i32 %i.by, ptr %i.al, align 4, !alias.scope !23177
  %.sroa.4.0..sroa_idx.i21.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 28 ; 3 uses
  store i32 %i.ca, ptr %.sroa.4.0..sroa_idx.i21.i.i, align 4, !alias.scope !23177
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32 ; 21 uses
  %.val1.i23.i.i = load i32, ptr %i.cc, align 4, !range !19, !alias.scope !23177, !noundef !6 ; 2 uses
  %i.cd = icmp ult i32 %i.az, %.val1.i23.i.i      ; 2 uses
  %i.ce = select i1 %i.cd, ptr %i.av, ptr %i.cc, !unpredictable !6
  %i.cf = select i1 %i.cd, ptr %i.cc, ptr %i.av, !unpredictable !6
  %i.cg = tail call i32 @llvm.umax.i32(i32 %i.az, i32 %.val1.i23.i.i) ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !range !19, !alias.scope !23177, !noundef !6
  %i.cj = load i64, ptr %i.ce, align 4, !alias.scope !23177 ; 3 uses
  store i64 %i.cj, ptr %i.cc, align 4, !alias.scope !23177
  store i32 %i.cg, ptr %i.av, align 4, !alias.scope !23177
  store i32 %i.ci, ptr %.sroa.4.0..sroa_idx.i12.i.i, align 4, !alias.scope !23177
  %i.ck = icmp ult i32 %i.ah, %i.aq               ; 2 uses
  %i.cl = select i1 %i.ck, ptr %i.ad, ptr %i.am, !unpredictable !6
  %i.cm = select i1 %i.ck, ptr %i.am, ptr %i.ad, !unpredictable !6
  %i.cn = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 %i.aq) ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !range !19, !alias.scope !23177, !noundef !6
  %i.cq = load i64, ptr %i.cl, align 4, !alias.scope !23177 ; 3 uses
  store i64 %i.cq, ptr %i.am, align 4, !alias.scope !23177
  store i32 %i.cn, ptr %i.ad, align 4, !alias.scope !23177
  store i32 %i.cp, ptr %.sroa.4.0..sroa_idx.i6.i.i, align 4, !alias.scope !23177
  %i.cr = icmp ult i32 %i.y, %i.bi                ; 2 uses
  %i.cs = select i1 %i.cr, ptr %i.u, ptr %i.be, !unpredictable !6
  %i.ct = select i1 %i.cr, ptr %i.be, ptr %i.u, !unpredictable !6
  %i.cu = tail call i32 @llvm.umax.i32(i32 %i.y, i32 %i.bi) ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !range !19, !alias.scope !23177, !noundef !6
  %i.cx = load i64, ptr %i.cs, align 4, !alias.scope !23177 ; 3 uses
  store i64 %i.cx, ptr %i.be, align 4, !alias.scope !23177
  store i32 %i.cu, ptr %i.u, align 4, !alias.scope !23177
  store i32 %i.cw, ptr %.sroa.4.0..sroa_idx.i3.i.i, align 4, !alias.scope !23177
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1e_6frozen16FrozenValueIndexENCINvMB8_SB17_16sort_unstable_byNCNvXsa_B2k_INtB2k_14FrozenValueMapB18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB18_B3Z_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB43_:bb.a

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1c_6frozen16FrozenValueIndexENCINvMB8_SB15_16sort_unstable_byNCNvXsa_B2i_INtB2i_14FrozenValueMapB16_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB16_B3X_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB41_.exit: ; preds = %bb.r, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB16_6frozen16FrozenValueIndexENCINvMB8_SBZ_16sort_unstable_byNCNvXsa_B2c_INtB2c_14FrozenValueMapB10_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB10_B3Q_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3U_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB16_6frozen16FrozenValueIndexENCINvMB8_SBZ_16sort_unstable_byNCNvXsa_B2c_INtB2c_14FrozenValueMapB10_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB10_B3Q_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3U_.exit.i ], [ %i.vj, %bb.r ]
  %i.vp = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.vq = ptrtoint ptr %.sroa.0.093150 to i64
  %i.vr = sub nuw i64 %i.vp, %i.vq                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.vr, 3
  %i.vs = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.092151
  tail call void @llvm.assume(i1 %i.vs)
  %.not = icmp eq ptr %.sroa.023.091152, null
  br i1 %.not, label %bb.s, label %bb.u

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1m_6frozen16FrozenValueIndexENCINvMB8_SB1f_16sort_unstable_byNCNvXsa_B2s_INtB2s_14FrozenValueMapB1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1g_B47_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB4b_.exit: ; preds = %.sink.split.i, %._crit_edge, %._crit_edge155
  ret void

bb.s:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1c_6frozen16FrozenValueIndexENCINvMB8_SB15_16sort_unstable_byNCNvXsa_B2i_INtB2i_14FrozenValueMapB16_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB16_B3X_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB41_.exit, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23188)
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 %i.vr ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.0.093150, align 4, !alias.scope !23189
  %i.vu = load i64, ptr %i.vt, align 4, !alias.scope !23189
  store i64 %i.vu, ptr %.sroa.0.093150, align 4, !alias.scope !23189
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.vt, align 4, !alias.scope !23189
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23191)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.vw = load i64, ptr %i.vv, align 4, !alias.scope !23192
  store i64 %i.vw, ptr %.sroa.0.i.i, align 8, !noalias !23193
  %i.vx = getelementptr [8 x i8], ptr %.sroa.0.093150, i64 %.sroa.15.092151 ; 2 uses
  %i.vy = getelementptr i8, ptr %i.vx, i64 -8     ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 16 ; 3 uses
  %i.vz = icmp ult ptr %.sroa.13.030.i.i, %i.vy
  %.val1.i.pre.i.i = load i32, ptr %.sroa.0.093150, align 4, !range !19, !alias.scope !23194, !noalias !6 ; 3 uses
  br i1 %i.vz, label %.lr.ph.i.i36, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i36, %bb.s
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.s ], [ %i.wt, %.lr.ph.i.i36 ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.030.i.i, %bb.s ], [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.vv, %bb.s ], [ %i.wn, %.lr.ph.i.i36 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.wg, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 4 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.wa = icmp eq ptr %.sroa.13.1.i.i, %i.vx      ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.wa, ptr %.sroa.0.i.i, ptr %.sroa.13.1.i.i ; 2 uses
  %.val.i.i.i35 = load i32, ptr %.sroa.01.0.i.i, align 4, !range !19, !noalias !23195, !noundef !6
  %i.wb = icmp ult i32 %.val.i.i.i35, %.val1.i.pre.i.i
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %.sroa.23.1.i.i ; 2 uses
  %i.wd = load i64, ptr %i.wc, align 4, !alias.scope !23192, !noalias !23196
  store i64 %i.wd, ptr %.sroa.015.1.i.i, align 4, !alias.scope !23192, !noalias !23196
  %i.we = load i64, ptr %.sroa.01.0.i.i, align 4, !noalias !23195
  store i64 %i.we, ptr %i.wc, align 4, !alias.scope !23192, !noalias !23196
  %i.wf = zext i1 %i.wb to i64
  %i.wg = add i64 %.sroa.23.1.i.i, %i.wf          ; 5 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 8
  br i1 %i.wa, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1E_6frozen16FrozenValueIndexENCINvMB8_SB1x_16sort_unstable_byNCNvXsa_B2K_INtB2K_14FrozenValueMapB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1y_B4p_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB4t_.exit.i, label %.preheader.i.i

.lr.ph.i.i36:                                     ; preds = %bb.s, %.lr.ph.i.i36
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.13.030.i.i, %bb.s ] ; 3 uses
  %.sroa.015.032.i.i = phi ptr [ %i.wn, %.lr.ph.i.i36 ], [ %i.vv, %bb.s ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.wt, %.lr.ph.i.i36 ], [ 0, %bb.s ] ; 2 uses
  %.val.i11.i.i = load i32, ptr %.sroa.13.033.i.i, align 4, !range !19, !alias.scope !23192, !noalias !23197, !noundef !6
  %i.wh = icmp ult i32 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %.sroa.23.031.i.i ; 2 uses
  %i.wj = load i64, ptr %i.wi, align 4, !alias.scope !23192, !noalias !23197
  store i64 %i.wj, ptr %.sroa.015.032.i.i, align 4, !alias.scope !23192, !noalias !23197
  %i.wk = load i64, ptr %.sroa.13.033.i.i, align 4, !alias.scope !23192, !noalias !23197
  store i64 %i.wk, ptr %i.wi, align 4, !alias.scope !23192, !noalias !23197
  %i.wl = zext i1 %i.wh to i64
  %i.wm = add i64 %.sroa.23.031.i.i, %i.wl        ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 16 ; 4 uses
  %.val.i13.i.i37 = load i32, ptr %i.wn, align 4, !range !19, !alias.scope !23192, !noalias !23198, !noundef !6
  %i.wo = icmp ult i32 %.val.i13.i.i37, %.val1.i.pre.i.i
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %i.wm ; 2 uses
  %i.wq = load i64, ptr %i.wp, align 4, !alias.scope !23192, !noalias !23198
  store i64 %i.wq, ptr %.sroa.13.033.i.i, align 4, !alias.scope !23192, !noalias !23198
  %i.wr = load i64, ptr %i.wn, align 4, !alias.scope !23192, !noalias !23198
  store i64 %i.wr, ptr %i.wp, align 4, !alias.scope !23192, !noalias !23198
  %i.ws = zext i1 %i.wo to i64
  %i.wt = add i64 %i.wm, %i.ws                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 24 ; 3 uses
  %i.wu = icmp ult ptr %.sroa.13.0.i.i, %i.vy
  br i1 %i.wu, label %.lr.ph.i.i36, label %.preheader.i.i.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1E_6frozen16FrozenValueIndexENCINvMB8_SB1x_16sort_unstable_byNCNvXsa_B2K_INtB2K_14FrozenValueMapB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1y_B4p_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB4t_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %.not7.i = icmp ult i64 %i.wg, %.sroa.15.092151
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1E_6frozen16FrozenValueIndexENCINvMB8_SB1x_16sort_unstable_byNCNvXsa_B2K_INtB2K_14FrozenValueMapB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1y_B4p_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB4t_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1E_6frozen16FrozenValueIndexENCINvMB8_SB1x_16sort_unstable_byNCNvXsa_B2K_INtB2K_14FrozenValueMapB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1y_B4p_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB4t_.exit.i
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.093150, i64 %i.wg ; 4 uses
  %.sroa.0.0.copyload.i.i8.i = load i64, ptr %.sroa.0.093150, align 4, !alias.scope !23199
  %i.ww = load i64, ptr %i.wv, align 4, !alias.scope !23199
  store i64 %i.ww, ptr %.sroa.0.093150, align 4, !alias.scope !23199
  store i64 %.sroa.0.0.copyload.i.i8.i, ptr %i.wv, align 4, !alias.scope !23199
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wy = xor i64 %i.wg, -1
  %i.wz = add i64 %.sroa.15.092151, %i.wy
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1e_6frozen16FrozenValueIndexENCINvMB8_SB17_16sort_unstable_byNCNvXsa_B2k_INtB2k_14FrozenValueMapB18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB18_B3Z_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB43_(ptr noalias noundef nonnull align 4 %.sroa.0.093150, i64 noundef %i.wg, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.091152, i32 noundef %i.ve, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.u:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1c_6frozen16FrozenValueIndexENCINvMB8_SB15_16sort_unstable_byNCNvXsa_B2i_INtB2i_14FrozenValueMapB16_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB16_B3X_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB41_.exit
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 %i.vr ; 3 uses
  %.sroa.023.0.val = load i32, ptr %.sroa.023.091152, align 4, !range !19, !noundef !6
  %.val = load i32, ptr %i.xa, align 4, !range !19, !noundef !6
  %i.xb = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.xb, label %bb.s, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23200)
  %.sroa.0.0.copyload.i.i.i46 = load i64, ptr %.sroa.0.093150, align 4, !alias.scope !23201
  %i.xc = load i64, ptr %i.xa, align 4, !alias.scope !23201
  store i64 %i.xc, ptr %.sroa.0.093150, align 4, !alias.scope !23201
  store i64 %.sroa.0.0.copyload.i.i.i46, ptr %i.xa, align 4, !alias.scope !23201
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23203)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i44)
  %i.xe = load i64, ptr %i.xd, align 4, !alias.scope !23204
  store i64 %i.xe, ptr %.sroa.0.i.i44, align 8, !noalias !23205
  %i.xf = getelementptr [8 x i8], ptr %.sroa.0.093150, i64 %.sroa.15.092151 ; 2 uses
  %i.xg = getelementptr i8, ptr %i.xf, i64 -8     ; 2 uses
  %.sroa.13.030.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 16 ; 3 uses
  %i.xh = icmp ult ptr %.sroa.13.030.i.i48, %i.xg
  %.val1.i.pre.i.i49 = load i32, ptr %.sroa.0.093150, align 4, !range !19, !alias.scope !23206, !noalias !6 ; 3 uses
  br i1 %i.xh, label %.lr.ph.i.i62, label %.preheader.i.i50.preheader

.preheader.i.i50.preheader:                       ; preds = %.lr.ph.i.i62, %bb.v
  %.sroa.23.1.i.i54.ph = phi i64 [ 0, %bb.v ], [ %i.yb, %.lr.ph.i.i62 ]
  %.sroa.13.1.i.i55.ph = phi ptr [ %.sroa.13.030.i.i48, %bb.v ], [ %.sroa.13.0.i.i68, %.lr.ph.i.i62 ]
  %.sroa.015.1.i.i56.ph = phi ptr [ %i.xd, %bb.v ], [ %i.xv, %.lr.ph.i.i62 ]
  br label %.preheader.i.i50

.preheader.i.i50:                                 ; preds = %.preheader.i.i50.preheader, %.preheader.i.i50
  %.sroa.23.1.i.i54 = phi i64 [ %i.xo, %.preheader.i.i50 ], [ %.sroa.23.1.i.i54.ph, %.preheader.i.i50.preheader ] ; 2 uses
  %.sroa.13.1.i.i55 = phi ptr [ %.sroa.13.1.sroa.gep.i.i59, %.preheader.i.i50 ], [ %.sroa.13.1.i.i55.ph, %.preheader.i.i50.preheader ] ; 4 uses
  %.sroa.015.1.i.i56 = phi ptr [ %.sroa.13.1.i.i55, %.preheader.i.i50 ], [ %.sroa.015.1.i.i56.ph, %.preheader.i.i50.preheader ]
  %i.xi = icmp eq ptr %.sroa.13.1.i.i55, %i.xf    ; 2 uses
  %.sroa.01.0.i.i57 = select i1 %i.xi, ptr %.sroa.0.i.i44, ptr %.sroa.13.1.i.i55 ; 2 uses
  %.val.i.i.i58 = load i32, ptr %.sroa.01.0.i.i57, align 4, !range !19, !noalias !23207, !noundef !6
  %i.xj = icmp uge i32 %.val1.i.pre.i.i49, %.val.i.i.i58
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %.sroa.23.1.i.i54 ; 2 uses
  %i.xl = load i64, ptr %i.xk, align 4, !alias.scope !23204, !noalias !23208
  store i64 %i.xl, ptr %.sroa.015.1.i.i56, align 4, !alias.scope !23204, !noalias !23208
  %i.xm = load i64, ptr %.sroa.01.0.i.i57, align 4, !noalias !23207
  store i64 %i.xm, ptr %i.xk, align 4, !alias.scope !23204, !noalias !23208
  %i.xn = zext i1 %i.xj to i64
  %i.xo = add i64 %.sroa.23.1.i.i54, %i.xn        ; 4 uses
  %.sroa.13.1.sroa.gep.i.i59 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i55, i64 8
  br i1 %i.xi, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1E_6frozen16FrozenValueIndexENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvXsa_B2K_INtB2K_14FrozenValueMapB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1y_B4L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0E0EB4P_.exit.i, label %.preheader.i.i50

.lr.ph.i.i62:                                     ; preds = %bb.v, %.lr.ph.i.i62
  %.sroa.13.033.i.i63 = phi ptr [ %.sroa.13.0.i.i68, %.lr.ph.i.i62 ], [ %.sroa.13.030.i.i48, %bb.v ] ; 3 uses
  %.sroa.015.032.i.i64 = phi ptr [ %i.xv, %.lr.ph.i.i62 ], [ %i.xd, %bb.v ] ; 3 uses
  %.sroa.23.031.i.i65 = phi i64 [ %i.yb, %.lr.ph.i.i62 ], [ 0, %bb.v ] ; 2 uses
  %.val.i11.i.i66 = load i32, ptr %.sroa.13.033.i.i63, align 4, !range !19, !alias.scope !23204, !noalias !23209, !noundef !6
  %i.xp = icmp uge i32 %.val1.i.pre.i.i49, %.val.i11.i.i66
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %.sroa.23.031.i.i65 ; 2 uses
  %i.xr = load i64, ptr %i.xq, align 4, !alias.scope !23204, !noalias !23209
  store i64 %i.xr, ptr %.sroa.015.032.i.i64, align 4, !alias.scope !23204, !noalias !23209
  %i.xs = load i64, ptr %.sroa.13.033.i.i63, align 4, !alias.scope !23204, !noalias !23209
  store i64 %i.xs, ptr %i.xq, align 4, !alias.scope !23204, !noalias !23209
  %i.xt = zext i1 %i.xp to i64
  %i.xu = add i64 %.sroa.23.031.i.i65, %i.xt      ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i64, i64 16 ; 4 uses
  %.val.i13.i.i67 = load i32, ptr %i.xv, align 4, !range !19, !alias.scope !23204, !noalias !23210, !noundef !6
  %i.xw = icmp uge i32 %.val1.i.pre.i.i49, %.val.i13.i.i67
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.xu ; 2 uses
  %i.xy = load i64, ptr %i.xx, align 4, !alias.scope !23204, !noalias !23210
  store i64 %i.xy, ptr %.sroa.13.033.i.i63, align 4, !alias.scope !23204, !noalias !23210
  %i.xz = load i64, ptr %i.xv, align 4, !alias.scope !23204, !noalias !23210
  store i64 %i.xz, ptr %i.xx, align 4, !alias.scope !23204, !noalias !23210
  %i.ya = zext i1 %i.xw to i64
  %i.yb = add i64 %i.xu, %i.ya                    ; 2 uses
  %.sroa.13.0.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i64, i64 24 ; 3 uses
  %i.yc = icmp ult ptr %.sroa.13.0.i.i68, %i.xg
  br i1 %i.yc, label %.lr.ph.i.i62, label %.preheader.i.i50.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1E_6frozen16FrozenValueIndexENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvXsa_B2K_INtB2K_14FrozenValueMapB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1y_B4L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0E0EB4P_.exit.i: ; preds = %.preheader.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i44)
  %.not7.i60 = icmp ult i64 %i.xo, %.sroa.15.092151
  br i1 %.not7.i60, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1E_6frozen16FrozenValueIndexENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvXsa_B2K_INtB2K_14FrozenValueMapB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1y_B4L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0E0EB4P_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1E_6frozen16FrozenValueIndexENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvXsa_B2K_INtB2K_14FrozenValueMapB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1y_B4L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0E0EB4P_.exit.i
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.093150, i64 %i.xo ; 2 uses
  %.sroa.0.0.copyload.i.i8.i61 = load i64, ptr %.sroa.0.093150, align 4, !alias.scope !23211
  %i.ye = load i64, ptr %i.yd, align 4, !alias.scope !23211
  store i64 %i.ye, ptr %.sroa.0.093150, align 4, !alias.scope !23211
  store i64 %.sroa.0.0.copyload.i.i8.i61, ptr %i.yd, align 4, !alias.scope !23211
  %i.yf = add nuw nsw i64 %i.xo, 1                ; 2 uses
  %i.yg = sub nuw nsw i64 %.sroa.15.092151, %i.yf
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.093150, i64 %i.yf
  br label %.backedge

.backedge:                                        ; preds = %bb.x, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.023.0.be = phi ptr [ %i.wv, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ null, %bb.x ]
  %.sroa.15.0.be = phi i64 [ %i.wz, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.yg, %bb.x ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.wx, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.yh, %bb.x ] ; 3 uses
  %i.yi = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.yi, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB3U_9FrozenMapB18_B2i_E12from_entries0E0EB2m_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i44 = alloca i64, align 8            ; 5 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  %i.a = alloca [256 x i8], align 4               ; 5 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %._crit_edge155, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %.lr.ph
  %.sroa.0.i.i44.4.i.i44.4.i.i44.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i44, i64 4
  %.sroa.0.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 4
  br label %.lr.ph154

bb.b:                                             ; preds = %.backedge
  %i.d = icmp eq i32 %i.ve, 0
  br i1 %i.d, label %._crit_edge155, label %.lr.ph154

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23264)
  %i.e = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.e, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_NtB1m_6frozenINtB42_9FrozenMapB1g_B2q_E12from_entries0E0EB2u_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23264
  %i.f = lshr i64 %.sroa.15.0.lcssa, 1            ; 4 uses
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 18 ; 2 uses
  %..i = select i1 %i.g, i64 %.sroa.15.0.lcssa, i64 %i.f
  %i.h = getelementptr [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f ; 3 uses
  %i.i = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.c
  %.sroa.8.0.i = phi i64 [ %..i, %bb.c ], [ %i.i, %bb.m ] ; 5 uses
  %.sroa.02.0.i = phi ptr [ %.sroa.0.0.lcssa, %bb.c ], [ %i.h, %bb.m ] ; 72 uses
  %i.j = icmp ugt i64 %.sroa.8.0.i, 12
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %.sroa.8.0.i, 8
  br i1 %i.k, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 96 ; 10 uses
  %.val.i.i.i = load i32, ptr %i.l, align 4, !range !19, !alias.scope !23265, !noundef !6 ; 2 uses
  %.val1.i.i.i = load i32, ptr %.sroa.02.0.i, align 4, !range !19, !alias.scope !23265, !noundef !6 ; 2 uses
  %i.m = icmp ult i32 %.val.i.i.i, %.val1.i.i.i   ; 2 uses
  %i.n = select i1 %i.m, ptr %i.l, ptr %.sroa.02.0.i, !unpredictable !6
  %i.o = select i1 %i.m, ptr %.sroa.02.0.i, ptr %i.l, !unpredictable !6
  %i.p = tail call i32 @llvm.umax.i32(i32 %.val.i.i.i, i32 %.val1.i.i.i) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i8, ptr %i.q, align 4, !alias.scope !23265, !noundef !6
  %i.s = load i64, ptr %i.n, align 4, !alias.scope !23265
  store i64 %i.s, ptr %.sroa.02.0.i, align 4, !alias.scope !23265
  store i32 %i.p, ptr %i.l, align 4, !alias.scope !23265
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 100 ; 3 uses
  store i8 %i.r, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !alias.scope !23265
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8 ; 17 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 80 ; 20 uses
  %.val.i1.i.i = load i32, ptr %i.u, align 4, !range !19, !alias.scope !23265, !noundef !6 ; 2 uses
  %.val1.i2.i.i = load i32, ptr %i.t, align 4, !range !19, !alias.scope !23265, !noundef !6 ; 2 uses
  %i.v = icmp ult i32 %.val.i1.i.i, %.val1.i2.i.i ; 2 uses
  %i.w = select i1 %i.v, ptr %i.u, ptr %i.t, !unpredictable !6
  %i.x = select i1 %i.v, ptr %i.t, ptr %i.u, !unpredictable !6
  %i.y = tail call i32 @llvm.umax.i32(i32 %.val.i1.i.i, i32 %.val1.i2.i.i) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !alias.scope !23265, !noundef !6
  %i.ab = load i64, ptr %i.w, align 4, !alias.scope !23265 ; 3 uses
  store i64 %i.ab, ptr %i.t, align 4, !alias.scope !23265
  store i32 %i.y, ptr %i.u, align 4, !alias.scope !23265
  %.sroa.4.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 84 ; 5 uses
  store i8 %i.aa, ptr %.sroa.4.0..sroa_idx.i3.i.i, align 4, !alias.scope !23265
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 18 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 72 ; 22 uses
  %.val.i4.i.i = load i32, ptr %i.ad, align 4, !range !19, !alias.scope !23265, !noundef !6 ; 2 uses
  %.val1.i5.i.i = load i32, ptr %i.ac, align 4, !range !19, !alias.scope !23265, !noundef !6 ; 2 uses
  %i.ae = icmp ult i32 %.val.i4.i.i, %.val1.i5.i.i ; 2 uses
  %i.af = select i1 %i.ae, ptr %i.ad, ptr %i.ac, !unpredictable !6
  %i.ag = select i1 %i.ae, ptr %i.ac, ptr %i.ad, !unpredictable !6
  %i.ah = tail call i32 @llvm.umax.i32(i32 %.val.i4.i.i, i32 %.val1.i5.i.i) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load i8, ptr %i.ai, align 4, !alias.scope !23265, !noundef !6
  %i.ak = load i64, ptr %i.af, align 4, !alias.scope !23265 ; 3 uses
  store i64 %i.ak, ptr %i.ac, align 4, !alias.scope !23265
  store i32 %i.ah, ptr %i.ad, align 4, !alias.scope !23265
  %.sroa.4.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 76 ; 5 uses
  store i8 %i.aj, ptr %.sroa.4.0..sroa_idx.i6.i.i, align 4, !alias.scope !23265
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 24 ; 21 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 56 ; 19 uses
  %.val.i7.i.i = load i32, ptr %i.am, align 4, !range !19, !alias.scope !23265, !noundef !6 ; 2 uses
  %.val1.i8.i.i = load i32, ptr %i.al, align 4, !range !19, !alias.scope !23265, !noundef !6 ; 2 uses
  %i.an = icmp ult i32 %.val.i7.i.i, %.val1.i8.i.i ; 2 uses
  %i.ao = select i1 %i.an, ptr %i.am, ptr %i.al, !unpredictable !6
  %i.ap = select i1 %i.an, ptr %i.al, ptr %i.am, !unpredictable !6
  %i.aq = tail call i32 @llvm.umax.i32(i32 %.val.i7.i.i, i32 %.val1.i8.i.i) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load i8, ptr %i.ar, align 4, !alias.scope !23265, !noundef !6
  %i.at = load i64, ptr %i.ao, align 4, !alias.scope !23265 ; 3 uses
  store i64 %i.at, ptr %i.al, align 4, !alias.scope !23265
  store i32 %i.aq, ptr %i.am, align 4, !alias.scope !23265
  %.sroa.4.0..sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 60 ; 4 uses
  store i8 %i.as, ptr %.sroa.4.0..sroa_idx.i9.i.i, align 4, !alias.scope !23265
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 40 ; 23 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 88 ; 18 uses
  %.val.i10.i.i = load i32, ptr %i.av, align 4, !range !19, !alias.scope !23265, !noundef !6 ; 2 uses
  %.val1.i11.i.i = load i32, ptr %i.au, align 4, !range !19, !alias.scope !23265, !noundef !6 ; 2 uses
  %i.aw = icmp ult i32 %.val.i10.i.i, %.val1.i11.i.i ; 2 uses
  %i.ax = select i1 %i.aw, ptr %i.av, ptr %i.au, !unpredictable !6
  %i.ay = select i1 %i.aw, ptr %i.au, ptr %i.av, !unpredictable !6
  %i.az = tail call i32 @llvm.umax.i32(i32 %.val.i10.i.i, i32 %.val1.i11.i.i) ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load i8, ptr %i.ba, align 4, !alias.scope !23265, !noundef !6
  %i.bc = load i64, ptr %i.ax, align 4, !alias.scope !23265
  store i64 %i.bc, ptr %i.au, align 4, !alias.scope !23265
  store i32 %i.az, ptr %i.av, align 4, !alias.scope !23265
  %.sroa.4.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 92 ; 5 uses
  store i8 %i.bb, ptr %.sroa.4.0..sroa_idx.i12.i.i, align 4, !alias.scope !23265
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 48 ; 26 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 64 ; 23 uses
  %.val.i13.i.i = load i32, ptr %i.be, align 4, !range !19, !alias.scope !23265, !noundef !6 ; 2 uses
  %.val1.i14.i.i = load i32, ptr %i.bd, align 4, !range !19, !alias.scope !23265, !noundef !6 ; 2 uses
  %i.bf = icmp ult i32 %.val.i13.i.i, %.val1.i14.i.i ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.be, ptr %i.bd, !unpredictable !6
  %i.bh = select i1 %i.bf, ptr %i.bd, ptr %i.be, !unpredictable !6
  %i.bi = tail call i32 @llvm.umax.i32(i32 %.val.i13.i.i, i32 %.val1.i14.i.i) ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = load i8, ptr %i.bj, align 4, !alias.scope !23265, !noundef !6
  %i.bl = load i64, ptr %i.bg, align 4, !alias.scope !23265 ; 3 uses
  store i64 %i.bl, ptr %i.bd, align 4, !alias.scope !23265
  store i32 %i.bi, ptr %i.be, align 4, !alias.scope !23265
  %.sroa.4.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 68 ; 5 uses
  store i8 %i.bk, ptr %.sroa.4.0..sroa_idx.i15.i.i, align 4, !alias.scope !23265
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = trunc i64 %i.ab to i32                  ; 2 uses
  %i.bo = icmp ult i32 %i.bm, %i.bn               ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.t, ptr %i.bd, !unpredictable !6
  %i.bq = tail call i32 @llvm.umax.i32(i32 %i.bm, i32 %i.bn) ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i8, ptr %i.br, align 4, !alias.scope !23265, !noundef !6
  %i.bt = select i1 %i.bo, i64 %i.bl, i64 %i.ab, !unpredictable !6 ; 3 uses
  store i64 %i.bt, ptr %i.t, align 4, !alias.scope !23265
  store i32 %i.bq, ptr %i.bd, align 4, !alias.scope !23265
  %.sroa.4.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 52 ; 5 uses
  store i8 %i.bs, ptr %.sroa.4.0..sroa_idx.i18.i.i, align 4, !alias.scope !23265
  %i.bu = trunc i64 %i.at to i32                  ; 2 uses
  %i.bv = trunc i64 %i.ak to i32                  ; 2 uses
  %i.bw = icmp ult i32 %i.bu, %i.bv               ; 2 uses
  %i.bx = select i1 %i.bw, ptr %i.ac, ptr %i.al, !unpredictable !6
  %i.by = tail call i32 @llvm.umax.i32(i32 %i.bu, i32 %i.bv) ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ca = load i8, ptr %i.bz, align 4, !alias.scope !23265, !noundef !6
  %i.cb = select i1 %i.bw, i64 %i.at, i64 %i.ak, !unpredictable !6 ; 3 uses
  store i64 %i.cb, ptr %i.ac, align 4, !alias.scope !23265
  store i32 %i.by, ptr %i.al, align 4, !alias.scope !23265
  %.sroa.4.0..sroa_idx.i21.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 28 ; 3 uses
  store i8 %i.ca, ptr %.sroa.4.0..sroa_idx.i21.i.i, align 4, !alias.scope !23265
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32 ; 21 uses
  %.val1.i23.i.i = load i32, ptr %i.cc, align 4, !range !19, !alias.scope !23265, !noundef !6 ; 2 uses
  %i.cd = icmp ult i32 %i.az, %.val1.i23.i.i      ; 2 uses
  %i.ce = select i1 %i.cd, ptr %i.av, ptr %i.cc, !unpredictable !6
  %i.cf = select i1 %i.cd, ptr %i.cc, ptr %i.av, !unpredictable !6
  %i.cg = tail call i32 @llvm.umax.i32(i32 %i.az, i32 %.val1.i23.i.i) ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ci = load i8, ptr %i.ch, align 4, !alias.scope !23265, !noundef !6
  %i.cj = load i64, ptr %i.ce, align 4, !alias.scope !23265 ; 3 uses
  store i64 %i.cj, ptr %i.cc, align 4, !alias.scope !23265
  store i32 %i.cg, ptr %i.av, align 4, !alias.scope !23265
  store i8 %i.ci, ptr %.sroa.4.0..sroa_idx.i12.i.i, align 4, !alias.scope !23265
  %i.ck = icmp ult i32 %i.ah, %i.aq               ; 2 uses
  %i.cl = select i1 %i.ck, ptr %i.ad, ptr %i.am, !unpredictable !6
  %i.cm = select i1 %i.ck, ptr %i.am, ptr %i.ad, !unpredictable !6
  %i.cn = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 %i.aq) ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cp = load i8, ptr %i.co, align 4, !alias.scope !23265, !noundef !6
  %i.cq = load i64, ptr %i.cl, align 4, !alias.scope !23265 ; 3 uses
  store i64 %i.cq, ptr %i.am, align 4, !alias.scope !23265
  store i32 %i.cn, ptr %i.ad, align 4, !alias.scope !23265
  store i8 %i.cp, ptr %.sroa.4.0..sroa_idx.i6.i.i, align 4, !alias.scope !23265
  %i.cr = icmp ult i32 %i.y, %i.bi                ; 2 uses
  %i.cs = select i1 %i.cr, ptr %i.u, ptr %i.be, !unpredictable !6
  %i.ct = select i1 %i.cr, ptr %i.be, ptr %i.u, !unpredictable !6
  %i.cu = tail call i32 @llvm.umax.i32(i32 %i.y, i32 %i.bi) ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB3U_9FrozenMapB18_B2i_E12from_entries0E0EB2m_:bb.a
  %.sroa.0.0.i = lshr exact i64 %i.vr, 3
  %i.vs = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.092151
  tail call void @llvm.assume(i1 %i.vs)
  %.not = icmp eq ptr %.sroa.023.091152, null
  br i1 %.not, label %bb.s, label %bb.u

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_NtB1m_6frozenINtB42_9FrozenMapB1g_B2q_E12from_entries0E0EB2u_.exit: ; preds = %.sink.split.i, %._crit_edge, %._crit_edge155
  ret void

bb.s:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1c_6frozenINtB3S_9FrozenMapB16_B2g_E12from_entries0E0EB2k_.exit, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23276)
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 %i.vr ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.0.093150, align 4, !alias.scope !23277
  %i.vu = load i64, ptr %i.vt, align 4, !alias.scope !23277
  store i64 %i.vu, ptr %.sroa.0.093150, align 4, !alias.scope !23277
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.vt, align 4, !alias.scope !23277
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23279)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.vw = load i32, ptr %i.vv, align 4, !range !19, !alias.scope !23280, !noundef !6
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 12
  %i.vy = load i8, ptr %i.vx, align 4, !alias.scope !23280, !noundef !6
  store i32 %i.vw, ptr %.sroa.0.i.i, align 8, !noalias !23281
  store i8 %i.vy, ptr %.sroa.0.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, align 4, !noalias !23281
  %i.vz = getelementptr [8 x i8], ptr %.sroa.0.093150, i64 %.sroa.15.092151 ; 2 uses
  %i.wa = getelementptr i8, ptr %i.vz, i64 -8     ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 16 ; 3 uses
  %i.wb = icmp ult ptr %.sroa.13.030.i.i, %i.wa
  %.val1.i.pre.i.i = load i32, ptr %.sroa.0.093150, align 4, !range !19, !alias.scope !23282, !noalias !6 ; 3 uses
  br i1 %i.wb, label %.lr.ph.i.i36, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i36, %bb.s
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.s ], [ %i.wv, %.lr.ph.i.i36 ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.030.i.i, %bb.s ], [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.vv, %bb.s ], [ %i.wp, %.lr.ph.i.i36 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.wi, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 4 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.wc = icmp eq ptr %.sroa.13.1.i.i, %i.vz      ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.wc, ptr %.sroa.0.i.i, ptr %.sroa.13.1.i.i ; 2 uses
  %.val.i.i.i35 = load i32, ptr %.sroa.01.0.i.i, align 4, !range !19, !noalias !23283, !noundef !6
  %i.wd = icmp ult i32 %.val.i.i.i35, %.val1.i.pre.i.i
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %.sroa.23.1.i.i ; 2 uses
  %i.wf = load i64, ptr %i.we, align 4, !alias.scope !23280, !noalias !23284
  store i64 %i.wf, ptr %.sroa.015.1.i.i, align 4, !alias.scope !23280, !noalias !23284
  %i.wg = load i64, ptr %.sroa.01.0.i.i, align 4, !noalias !23283
  store i64 %i.wg, ptr %i.we, align 4, !alias.scope !23280, !noalias !23284
  %i.wh = zext i1 %i.wd to i64
  %i.wi = add i64 %.sroa.23.1.i.i, %i.wh          ; 5 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 8
  br i1 %i.wc, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4k_9FrozenMapB1y_B2I_E12from_entries0E0EB2M_.exit.i, label %.preheader.i.i

.lr.ph.i.i36:                                     ; preds = %bb.s, %.lr.ph.i.i36
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.13.030.i.i, %bb.s ] ; 3 uses
  %.sroa.015.032.i.i = phi ptr [ %i.wp, %.lr.ph.i.i36 ], [ %i.vv, %bb.s ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.wv, %.lr.ph.i.i36 ], [ 0, %bb.s ] ; 2 uses
  %.val.i11.i.i = load i32, ptr %.sroa.13.033.i.i, align 4, !range !19, !alias.scope !23280, !noalias !23285, !noundef !6
  %i.wj = icmp ult i32 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %.sroa.23.031.i.i ; 2 uses
  %i.wl = load i64, ptr %i.wk, align 4, !alias.scope !23280, !noalias !23285
  store i64 %i.wl, ptr %.sroa.015.032.i.i, align 4, !alias.scope !23280, !noalias !23285
  %i.wm = load i64, ptr %.sroa.13.033.i.i, align 4, !alias.scope !23280, !noalias !23285
  store i64 %i.wm, ptr %i.wk, align 4, !alias.scope !23280, !noalias !23285
  %i.wn = zext i1 %i.wj to i64
  %i.wo = add i64 %.sroa.23.031.i.i, %i.wn        ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 16 ; 4 uses
  %.val.i13.i.i37 = load i32, ptr %i.wp, align 4, !range !19, !alias.scope !23280, !noalias !23286, !noundef !6
  %i.wq = icmp ult i32 %.val.i13.i.i37, %.val1.i.pre.i.i
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %i.wo ; 2 uses
  %i.ws = load i64, ptr %i.wr, align 4, !alias.scope !23280, !noalias !23286
  store i64 %i.ws, ptr %.sroa.13.033.i.i, align 4, !alias.scope !23280, !noalias !23286
  %i.wt = load i64, ptr %i.wp, align 4, !alias.scope !23280, !noalias !23286
  store i64 %i.wt, ptr %i.wr, align 4, !alias.scope !23280, !noalias !23286
  %i.wu = zext i1 %i.wq to i64
  %i.wv = add i64 %i.wo, %i.wu                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 24 ; 3 uses
  %i.ww = icmp ult ptr %.sroa.13.0.i.i, %i.wa
  br i1 %i.ww, label %.lr.ph.i.i36, label %.preheader.i.i.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4k_9FrozenMapB1y_B2I_E12from_entries0E0EB2M_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %.not7.i = icmp ult i64 %i.wi, %.sroa.15.092151
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4k_9FrozenMapB1y_B2I_E12from_entries0E0EB2M_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4k_9FrozenMapB1y_B2I_E12from_entries0E0EB2M_.exit.i
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.093150, i64 %i.wi ; 4 uses
  %.sroa.0.0.copyload.i.i8.i = load i64, ptr %.sroa.0.093150, align 4, !alias.scope !23287
  %i.wy = load i64, ptr %i.wx, align 4, !alias.scope !23287
  store i64 %i.wy, ptr %.sroa.0.093150, align 4, !alias.scope !23287
  store i64 %.sroa.0.0.copyload.i.i8.i, ptr %i.wx, align 4, !alias.scope !23287
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  %i.xa = xor i64 %i.wi, -1
  %i.xb = add i64 %.sroa.15.092151, %i.xa
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB3U_9FrozenMapB18_B2i_E12from_entries0E0EB2m_(ptr noalias noundef nonnull align 4 %.sroa.0.093150, i64 noundef %i.wi, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.091152, i32 noundef %i.ve, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.u:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1c_6frozenINtB3S_9FrozenMapB16_B2g_E12from_entries0E0EB2k_.exit
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 %i.vr ; 3 uses
  %.sroa.023.0.val = load i32, ptr %.sroa.023.091152, align 4, !range !19, !noundef !6
  %.val = load i32, ptr %i.xc, align 4, !range !19, !noundef !6
  %i.xd = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.xd, label %bb.s, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23288)
  %.sroa.0.0.copyload.i.i.i46 = load i64, ptr %.sroa.0.093150, align 4, !alias.scope !23289
  %i.xe = load i64, ptr %i.xc, align 4, !alias.scope !23289
  store i64 %i.xe, ptr %.sroa.0.093150, align 4, !alias.scope !23289
  store i64 %.sroa.0.0.copyload.i.i.i46, ptr %i.xc, align 4, !alias.scope !23289
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23291)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i44)
  %i.xg = load i32, ptr %i.xf, align 4, !range !19, !alias.scope !23292, !noundef !6
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 12
  %i.xi = load i8, ptr %i.xh, align 4, !alias.scope !23292, !noundef !6
  store i32 %i.xg, ptr %.sroa.0.i.i44, align 8, !noalias !23293
  store i8 %i.xi, ptr %.sroa.0.i.i44.4.i.i44.4.i.i44.4.i.4.i.4..sroa_idx, align 4, !noalias !23293
  %i.xj = getelementptr [8 x i8], ptr %.sroa.0.093150, i64 %.sroa.15.092151 ; 2 uses
  %i.xk = getelementptr i8, ptr %i.xj, i64 -8     ; 2 uses
  %.sroa.13.030.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 16 ; 3 uses
  %i.xl = icmp ult ptr %.sroa.13.030.i.i48, %i.xk
  %.val1.i.pre.i.i49 = load i32, ptr %.sroa.0.093150, align 4, !range !19, !alias.scope !23294, !noalias !6 ; 3 uses
  br i1 %i.xl, label %.lr.ph.i.i62, label %.preheader.i.i50.preheader

.preheader.i.i50.preheader:                       ; preds = %.lr.ph.i.i62, %bb.v
  %.sroa.23.1.i.i54.ph = phi i64 [ 0, %bb.v ], [ %i.yf, %.lr.ph.i.i62 ]
  %.sroa.13.1.i.i55.ph = phi ptr [ %.sroa.13.030.i.i48, %bb.v ], [ %.sroa.13.0.i.i68, %.lr.ph.i.i62 ]
  %.sroa.015.1.i.i56.ph = phi ptr [ %i.xf, %bb.v ], [ %i.xz, %.lr.ph.i.i62 ]
  br label %.preheader.i.i50

.preheader.i.i50:                                 ; preds = %.preheader.i.i50.preheader, %.preheader.i.i50
  %.sroa.23.1.i.i54 = phi i64 [ %i.xs, %.preheader.i.i50 ], [ %.sroa.23.1.i.i54.ph, %.preheader.i.i50.preheader ] ; 2 uses
  %.sroa.13.1.i.i55 = phi ptr [ %.sroa.13.1.sroa.gep.i.i59, %.preheader.i.i50 ], [ %.sroa.13.1.i.i55.ph, %.preheader.i.i50.preheader ] ; 4 uses
  %.sroa.015.1.i.i56 = phi ptr [ %.sroa.13.1.i.i55, %.preheader.i.i50 ], [ %.sroa.015.1.i.i56.ph, %.preheader.i.i50.preheader ]
  %i.xm = icmp eq ptr %.sroa.13.1.i.i55, %i.xj    ; 2 uses
  %.sroa.01.0.i.i57 = select i1 %i.xm, ptr %.sroa.0.i.i44, ptr %.sroa.13.1.i.i55 ; 2 uses
  %.val.i.i.i58 = load i32, ptr %.sroa.01.0.i.i57, align 4, !range !19, !noalias !23295, !noundef !6
  %i.xn = icmp uge i32 %.val1.i.pre.i.i49, %.val.i.i.i58
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %.sroa.23.1.i.i54 ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 4, !alias.scope !23292, !noalias !23296
  store i64 %i.xp, ptr %.sroa.015.1.i.i56, align 4, !alias.scope !23292, !noalias !23296
  %i.xq = load i64, ptr %.sroa.01.0.i.i57, align 4, !noalias !23295
  store i64 %i.xq, ptr %i.xo, align 4, !alias.scope !23292, !noalias !23296
  %i.xr = zext i1 %i.xn to i64
  %i.xs = add i64 %.sroa.23.1.i.i54, %i.xr        ; 4 uses
  %.sroa.13.1.sroa.gep.i.i59 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i55, i64 8
  br i1 %i.xm, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4G_9FrozenMapB1y_B2I_E12from_entries0E0E0EB2M_.exit.i, label %.preheader.i.i50

.lr.ph.i.i62:                                     ; preds = %bb.v, %.lr.ph.i.i62
  %.sroa.13.033.i.i63 = phi ptr [ %.sroa.13.0.i.i68, %.lr.ph.i.i62 ], [ %.sroa.13.030.i.i48, %bb.v ] ; 3 uses
  %.sroa.015.032.i.i64 = phi ptr [ %i.xz, %.lr.ph.i.i62 ], [ %i.xf, %bb.v ] ; 3 uses
  %.sroa.23.031.i.i65 = phi i64 [ %i.yf, %.lr.ph.i.i62 ], [ 0, %bb.v ] ; 2 uses
  %.val.i11.i.i66 = load i32, ptr %.sroa.13.033.i.i63, align 4, !range !19, !alias.scope !23292, !noalias !23297, !noundef !6
  %i.xt = icmp uge i32 %.val1.i.pre.i.i49, %.val.i11.i.i66
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %.sroa.23.031.i.i65 ; 2 uses
  %i.xv = load i64, ptr %i.xu, align 4, !alias.scope !23292, !noalias !23297
  store i64 %i.xv, ptr %.sroa.015.032.i.i64, align 4, !alias.scope !23292, !noalias !23297
  %i.xw = load i64, ptr %.sroa.13.033.i.i63, align 4, !alias.scope !23292, !noalias !23297
  store i64 %i.xw, ptr %i.xu, align 4, !alias.scope !23292, !noalias !23297
  %i.xx = zext i1 %i.xt to i64
  %i.xy = add i64 %.sroa.23.031.i.i65, %i.xx      ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i64, i64 16 ; 4 uses
  %.val.i13.i.i67 = load i32, ptr %i.xz, align 4, !range !19, !alias.scope !23292, !noalias !23298, !noundef !6
  %i.ya = icmp uge i32 %.val1.i.pre.i.i49, %.val.i13.i.i67
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.xy ; 2 uses
  %i.yc = load i64, ptr %i.yb, align 4, !alias.scope !23292, !noalias !23298
  store i64 %i.yc, ptr %.sroa.13.033.i.i63, align 4, !alias.scope !23292, !noalias !23298
  %i.yd = load i64, ptr %i.xz, align 4, !alias.scope !23292, !noalias !23298
  store i64 %i.yd, ptr %i.yb, align 4, !alias.scope !23292, !noalias !23298
  %i.ye = zext i1 %i.ya to i64
  %i.yf = add i64 %i.xy, %i.ye                    ; 2 uses
  %.sroa.13.0.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i64, i64 24 ; 3 uses
  %i.yg = icmp ult ptr %.sroa.13.0.i.i68, %i.xk
  br i1 %i.yg, label %.lr.ph.i.i62, label %.preheader.i.i50.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4G_9FrozenMapB1y_B2I_E12from_entries0E0E0EB2M_.exit.i: ; preds = %.preheader.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i44)
  %.not7.i60 = icmp ult i64 %i.xs, %.sroa.15.092151
  br i1 %.not7.i60, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4G_9FrozenMapB1y_B2I_E12from_entries0E0E0EB2M_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4G_9FrozenMapB1y_B2I_E12from_entries0E0E0EB2M_.exit.i
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.093150, i64 %i.xs ; 2 uses
  %.sroa.0.0.copyload.i.i8.i61 = load i64, ptr %.sroa.0.093150, align 4, !alias.scope !23299
  %i.yi = load i64, ptr %i.yh, align 4, !alias.scope !23299
  store i64 %i.yi, ptr %.sroa.0.093150, align 4, !alias.scope !23299
  store i64 %.sroa.0.0.copyload.i.i8.i61, ptr %i.yh, align 4, !alias.scope !23299
  %i.yj = add nuw nsw i64 %i.xs, 1                ; 2 uses
  %i.yk = sub nuw nsw i64 %.sroa.15.092151, %i.yj
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.093150, i64 %i.yj
  br label %.backedge

.backedge:                                        ; preds = %bb.x, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit
  %.sroa.023.0.be = phi ptr [ %i.wx, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit ], [ null, %bb.x ]
  %.sroa.15.0.be = phi i64 [ %i.xb, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit ], [ %i.yk, %bb.x ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.wz, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit ], [ %i.yl, %bb.x ] ; 3 uses
  %i.ym = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.ym, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB3J_9FrozenMapB18_B2i_E12from_entries0E0EB2m_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 461168601842738791) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(20) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 4 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [20 x i8], align 4                ; 4 uses
  %i.d = alloca [20 x i8], align 4                ; 4 uses
  %i.e = alloca [20 x i8], align 4                ; 4 uses
  %i.f = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 4      ; 8 uses
  %i.g = alloca [960 x i8], align 4               ; 17 uses
  %i.h = icmp samesign ult i64 %1, 33
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph145

.lr.ph:                                           ; preds = %.backedge
  %i.j = icmp eq i32 %i.dn, 0
  br i1 %i.j, label %.lr.ph._crit_edge, label %.lr.ph145

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 7 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23349
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23351)
  %i.k = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.k, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_NtB1m_6frozenINtB3R_9FrozenMapB1g_B2q_E12from_entries0E0EB2u_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.l = lshr i64 %.sroa.15.0.lcssa, 1            ; 10 uses
  %i.m = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 20
  %.val8.i.i.i = load i32, ptr %i.n, align 4, !range !19, !alias.scope !23352, !noundef !6
  %.val9.i.i.i = load i32, ptr %.sroa.0.0.lcssa, align 4, !range !19, !alias.scope !23352, !noundef !6
  %i.o = icmp ult i32 %.val8.i.i.i, %.val9.i.i.i  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 40
  %.val6.i.i.i = load i32, ptr %i.p, align 4, !range !19, !alias.scope !23352, !noundef !6
  %.val7.i.i.i = load i32, ptr %i.q, align 4, !range !19, !alias.scope !23352, !noundef !6
  %i.r = icmp ult i32 %.val6.i.i.i, %.val7.i.i.i  ; 2 uses
  %i.s = zext i1 %i.o to i64
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.0.lcssa, i64 %i.s ; 3 uses
  %i.u = xor i1 %i.o, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.0.lcssa, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.0.lcssa, i64 %i.x ; 4 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.0.lcssa, i64 %i.z ; 3 uses
  %.val4.i.i.i = load i32, ptr %i.y, align 4, !range !19, !alias.scope !23352, !noundef !6
  %.val5.i.i.i = load i32, ptr %i.t, align 4, !range !19, !alias.scope !23352, !noundef !6
  %i.ab = icmp ult i32 %.val4.i.i.i, %.val5.i.i.i ; 3 uses
  %.val2.i.i.i = load i32, ptr %i.aa, align 4, !range !19, !alias.scope !23352, !noundef !6
  %.val3.i.i.i = load i32, ptr %i.w, align 4, !range !19, !alias.scope !23352, !noundef !6
  %i.ac = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i ; 3 uses
  %i.ad = select i1 %i.ab, ptr %i.y, ptr %i.t, !unpredictable !6
  %i.ae = select i1 %i.ac, ptr %i.w, ptr %i.aa, !unpredictable !6
  %i.af = select i1 %i.ac, ptr %i.y, ptr %i.w, !unpredictable !6
  %i.ag = select i1 %i.ab, ptr %i.t, ptr %i.af, !unpredictable !6 ; 3 uses
  %i.ah = select i1 %i.ab, ptr %i.w, ptr %i.y, !unpredictable !6
  %i.ai = select i1 %i.ac, ptr %i.aa, ptr %i.ah, !unpredictable !6 ; 3 uses
  %.val.i.i.i = load i32, ptr %i.ai, align 4, !range !19, !alias.scope !23352, !noundef !6
  %.val1.i.i.i = load i32, ptr %i.ag, align 4, !range !19, !alias.scope !23352, !noundef !6
  %i.aj = icmp ult i32 %.val.i.i.i, %.val1.i.i.i  ; 2 uses
  %i.ak = select i1 %i.aj, ptr %i.ai, ptr %i.ag, !unpredictable !6
  %i.al = select i1 %i.aj, ptr %i.ag, ptr %i.ai, !unpredictable !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.g, ptr noundef nonnull align 4 dereferenceable(20) %i.ad, i64 20, i1 false), !alias.scope !23353
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.am, ptr noundef nonnull align 4 dereferenceable(20) %i.ak, i64 20, i1 false), !alias.scope !23353
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.an, ptr noundef nonnull align 4 dereferenceable(20) %i.al, i64 20, i1 false), !alias.scope !23353
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ao, ptr noundef nonnull align 4 dereferenceable(20) %i.ae, i64 20, i1 false), !alias.scope !23353
  %i.ap = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.0.lcssa, i64 %i.l ; 8 uses
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %i.g, i64 %i.l ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %.val8.i30.i.i = load i32, ptr %i.ar, align 4, !range !19, !alias.scope !23352, !noundef !6
  %.val9.i31.i.i = load i32, ptr %i.ap, align 4, !range !19, !alias.scope !23352, !noundef !6
  %i.as = icmp ult i32 %.val8.i30.i.i, %.val9.i31.i.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 60
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.val6.i32.i.i = load i32, ptr %i.at, align 4, !range !19, !alias.scope !23352, !noundef !6
  %.val7.i33.i.i = load i32, ptr %i.au, align 4, !range !19, !alias.scope !23352, !noundef !6
  %i.av = icmp ult i32 %.val6.i32.i.i, %.val7.i33.i.i ; 2 uses
  %i.aw = zext i1 %i.as to i64
  %i.ax = getelementptr inbounds nuw [20 x i8], ptr %i.ap, i64 %i.aw ; 3 uses
  %i.ay = xor i1 %i.as, true
  %i.az = zext i1 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [20 x i8], ptr %i.ap, i64 %i.az ; 4 uses
  %i.bb = select i1 %i.av, i64 3, i64 2
  %i.bc = getelementptr inbounds nuw [20 x i8], ptr %i.ap, i64 %i.bb ; 4 uses
  %i.bd = select i1 %i.av, i64 2, i64 3
  %i.be = getelementptr inbounds nuw [20 x i8], ptr %i.ap, i64 %i.bd ; 3 uses
  %.val4.i34.i.i = load i32, ptr %i.bc, align 4, !range !19, !alias.scope !23352, !noundef !6
  %.val5.i35.i.i = load i32, ptr %i.ax, align 4, !range !19, !alias.scope !23352, !noundef !6
  %i.bf = icmp ult i32 %.val4.i34.i.i, %.val5.i35.i.i ; 3 uses
  %.val2.i36.i.i = load i32, ptr %i.be, align 4, !range !19, !alias.scope !23352, !noundef !6
  %.val3.i37.i.i = load i32, ptr %i.ba, align 4, !range !19, !alias.scope !23352, !noundef !6
  %i.bg = icmp ult i32 %.val2.i36.i.i, %.val3.i37.i.i ; 3 uses
  %i.bh = select i1 %i.bf, ptr %i.bc, ptr %i.ax, !unpredictable !6
  %i.bi = select i1 %i.bg, ptr %i.ba, ptr %i.be, !unpredictable !6
  %i.bj = select i1 %i.bg, ptr %i.bc, ptr %i.ba, !unpredictable !6
  %i.bk = select i1 %i.bf, ptr %i.ax, ptr %i.bj, !unpredictable !6 ; 3 uses
  %i.bl = select i1 %i.bf, ptr %i.ba, ptr %i.bc, !unpredictable !6
  %i.bm = select i1 %i.bg, ptr %i.be, ptr %i.bl, !unpredictable !6 ; 3 uses
  %.val.i38.i.i = load i32, ptr %i.bm, align 4, !range !19, !alias.scope !23352, !noundef !6
  %.val1.i39.i.i = load i32, ptr %i.bk, align 4, !range !19, !alias.scope !23352, !noundef !6
  %i.bn = icmp ult i32 %.val.i38.i.i, %.val1.i39.i.i ; 2 uses
  %i.bo = select i1 %i.bn, ptr %i.bm, ptr %i.bk, !unpredictable !6
  %i.bp = select i1 %i.bn, ptr %i.bk, ptr %i.bm, !unpredictable !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aq, ptr noundef nonnull align 4 dereferenceable(20) %i.bh, i64 20, i1 false), !alias.scope !23353
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bq, ptr noundef nonnull align 4 dereferenceable(20) %i.bo, i64 20, i1 false), !alias.scope !23353
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.br, ptr noundef nonnull align 4 dereferenceable(20) %i.bp, i64 20, i1 false), !alias.scope !23353
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bs, ptr noundef nonnull align 4 dereferenceable(20) %i.bi, i64 20, i1 false), !alias.scope !23353
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.g, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.lcssa, i64 20, i1 false), !alias.scope !23353
  %i.bt = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.0.lcssa, i64 %i.l
  %i.bu = getelementptr inbounds nuw [20 x i8], ptr %i.g, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bu, ptr noundef nonnull align 4 dereferenceable(20) %i.bt, i64 20, i1 false), !alias.scope !23353
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i = phi i64 [ 4, %bb.c ], [ 1, %bb.d ] ; 4 uses
  %i.bv = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.l ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.0.0.i.i, %i.l
  br i1 %i.bw, label %.lr.ph.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3K_9FrozenMapB19_B2j_E12from_entries0E0EB2n_.exit.i.i, %bb.e
  %i.bx = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.0.lcssa, i64 %i.l
  %i.by = getelementptr [20 x i8], ptr %i.g, i64 %i.l ; 6 uses
  %i.bz = icmp samesign ult i64 %.sroa.0.0.i.i, %i.bv
  br i1 %i.bz, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.lr.ph.1.i.i:                                     ; preds = %.loopexit.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3K_9FrozenMapB19_B2j_E12from_entries0E0EB2n_.exit.1.i.i
  %.sroa.05.08.1.i.i = phi i64 [ %i.cj, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3K_9FrozenMapB19_B2j_E12from_entries0E0EB2n_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [20 x i8], ptr %i.bx, i64 %.sroa.05.08.1.i.i ; 2 uses
  %.idx161 = mul nuw nsw i64 %.sroa.05.08.1.i.i, 20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx161 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cb, ptr noundef nonnull align 4 dereferenceable(20) %i.ca, i64 20, i1 false), !alias.scope !23353
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -20 ; 3 uses
  %.val9.i40.1.i.i = load i32, ptr %i.cb, align 4, !range !19, !alias.scope !23351, !noalias !23349, !noundef !6 ; 3 uses
  %.val10.i.1.i.i = load i32, ptr %i.cc, align 4, !range !19, !alias.scope !23351, !noalias !23349, !noundef !6
  %i.cd = icmp ult i32 %.val9.i40.1.i.i, %.val10.i.1.i.i
  br i1 %i.cd, label %bb.f, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3K_9FrozenMapB19_B2j_E12from_entries0E0EB2n_.exit.1.i.i

bb.f:                                             ; preds = %.lr.ph.1.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.ce, i64 16, i1 false), !noalias !23351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cb, ptr noundef nonnull align 4 dereferenceable(20) %i.cc, i64 20, i1 false), !alias.scope !23351, !noalias !23349
  %i.cf = icmp eq i64 %.sroa.05.08.1.i.i, 1
  br i1 %i.cf, label %._crit_edge157, label %.lr.ph156

bb.g:                                             ; preds = %.lr.ph156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i41.1.i.i154, ptr noundef nonnull align 4 dereferenceable(20) %i.ch, i64 20, i1 false), !alias.scope !23351, !noalias !23349
  %i.cg = icmp eq ptr %i.ch, %i.by
  br i1 %i.cg, label %._crit_edge157, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.f, %bb.g
  %.sroa.0.0.i41.1.i.i154 = phi ptr [ %i.ch, %bb.g ], [ %i.cc, %bb.f ] ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i.i154, i64 -20 ; 4 uses
  %.val8.i42.1.i.i = load i32, ptr %i.ch, align 4, !range !19, !alias.scope !23351, !noalias !23349, !noundef !6
  %i.ci = icmp ult i32 %.val9.i40.1.i.i, %.val8.i42.1.i.i
  br i1 %i.ci, label %bb.g, label %._crit_edge157

._crit_edge157:                                   ; preds = %bb.g, %.lr.ph156, %bb.f
  %.sroa.0.0.i41.lcssa.1.i.i = phi ptr [ %i.by, %bb.f ], [ %i.by, %bb.g ], [ %.sroa.0.0.i41.1.i.i154, %.lr.ph156 ] ; 2 uses
  store i32 %.val9.i40.1.i.i, ptr %.sroa.0.0.i41.lcssa.1.i.i, align 4, !alias.scope !23351, !noalias !23354
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.1.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !23355
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3K_9FrozenMapB19_B2j_E12from_entries0E0EB2n_.exit.1.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3K_9FrozenMapB19_B2j_E12from_entries0E0EB2n_.exit.1.i.i: ; preds = %._crit_edge157, %.lr.ph.1.i.i
  %i.cj = add nuw nsw i64 %.sroa.05.08.1.i.i, 1   ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %i.cj, %i.bv
  br i1 %exitcond.1.not.i.i, label %.loopexit.1.i.i, label %.lr.ph.1.i.i
end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB3J_9FrozenMapB18_B2i_E12from_entries0E0EB2m_:bb.a
_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_NtB1m_6frozenINtB3R_9FrozenMapB1g_B2q_E12from_entries0E0EB2u_.exit: ; preds = %._crit_edge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23349
  br label %bb.o

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.084.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.083.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1c_6frozenINtB3H_9FrozenMapB16_B2g_E12from_entries0E0EB2k_(ptr noalias noundef nonnull align 4 %.sroa.0.084.lcssa, i64 noundef %.sroa.15.083.lcssa, ptr noalias nonnull align 8 poison)
  br label %bb.o

.lr.ph145:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.081144 = phi i32 [ %i.dn, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.082143 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.083142 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.084141 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 28 uses
  %i.dn = add nsw i32 %.sroa.026.081144, -1       ; 3 uses
  %i.do = lshr i64 %.sroa.15.083142, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.do, 80
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.084141, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.do, 140
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.084141, i64 %.idx2.i ; 3 uses
  %i.dr = icmp samesign ult i64 %.sroa.15.083142, 64
  br i1 %i.dr, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SBZ_16sort_unstable_byNCNvMs2_NtB16_6frozenINtB3A_9FrozenMapB10_B2a_E12from_entries0E0EB2e_.exit.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph145
  %i.ds = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB14_16sort_unstable_byNCNvMs2_NtB1b_6frozenINtB3G_9FrozenMapB15_B2f_E12from_entries0E0EB2j_(ptr noundef nonnull readonly align 4 %.sroa.0.084141, ptr noundef readonly %i.dp, ptr noundef readonly %i.dq, i64 noundef %i.do)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1c_6frozenINtB3H_9FrozenMapB16_B2g_E12from_entries0E0EB2k_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SBZ_16sort_unstable_byNCNvMs2_NtB16_6frozenINtB3A_9FrozenMapB10_B2a_E12from_entries0E0EB2e_.exit.i: ; preds = %.lr.ph145
  %.val6.i = load i32, ptr %.sroa.0.084141, align 4, !range !19, !alias.scope !23361, !noundef !6 ; 2 uses
  %.val7.i = load i32, ptr %i.dp, align 4, !range !19, !alias.scope !23361, !noundef !6 ; 2 uses
  %i.dt = icmp ult i32 %.val6.i, %.val7.i         ; 2 uses
  %.val5.i = load i32, ptr %i.dq, align 4, !range !19, !alias.scope !23361, !noundef !6 ; 2 uses
  %i.du = icmp ult i32 %.val6.i, %.val5.i
  %i.dv = xor i1 %i.dt, %i.du
  %i.dw = icmp ult i32 %.val7.i, %.val5.i
  %i.dx = xor i1 %i.dt, %i.dw
  %..i.i = select i1 %i.dx, ptr %i.dq, ptr %i.dp
  %.sroa.0.0.i.i34 = select i1 %i.dv, ptr %.sroa.0.084141, ptr %..i.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1c_6frozenINtB3H_9FrozenMapB16_B2g_E12from_entries0E0EB2k_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1c_6frozenINtB3H_9FrozenMapB16_B2g_E12from_entries0E0EB2k_.exit: ; preds = %bb.n, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SBZ_16sort_unstable_byNCNvMs2_NtB16_6frozenINtB3A_9FrozenMapB10_B2a_E12from_entries0E0EB2e_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SBZ_16sort_unstable_byNCNvMs2_NtB16_6frozenINtB3A_9FrozenMapB10_B2a_E12from_entries0E0EB2e_.exit.i ], [ %i.ds, %bb.n ]
  %i.dy = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.dz = ptrtoint ptr %.sroa.0.084141 to i64
  %i.ea = sub nuw i64 %i.dy, %i.dz                ; 3 uses
  %.sroa.0.0.i = udiv exact i64 %i.ea, 20
  %i.eb = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.083142
  tail call void @llvm.assume(i1 %i.eb)
  %.not = icmp eq ptr %.sroa.023.082143, null
  br i1 %.not, label %bb.p, label %bb.r

bb.o:                                             ; preds = %.lr.ph._crit_edge, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_NtB1m_6frozenINtB3R_9FrozenMapB1g_B2q_E12from_entries0E0EB2u_.exit
  ret void

bb.p:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1c_6frozenINtB3H_9FrozenMapB16_B2g_E12from_entries0E0EB2k_.exit, %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23362)
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.084141, i64 %i.ea ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.084141, i64 20, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.084141, ptr noundef nonnull align 4 dereferenceable(20) %i.ec, i64 20, i1 false), !alias.scope !23363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ec, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.084141, i64 20 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23365)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %i.ed, i64 20, i1 false), !noalias !23365
  %i.ee = mul nuw nsw i64 %.sroa.15.083142, 20
  %i.ef = getelementptr i8, ptr %.sroa.0.084141, i64 %i.ee ; 2 uses
  %.sroa.11.022.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.084141, i64 40
  %.val1.i.pre.i.i = load i32, ptr %.sroa.0.084141, align 4, !range !19, !alias.scope !23367, !noalias !6 ; 2 uses
  br label %.lr.ph.i.i36

.preheader.i.i:                                   ; preds = %.lr.ph.i.i36, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.ek, %.preheader.i.i ], [ %i.eo, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.i.i36 ] ; 4 uses
  %.sroa.011.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.025.i.i, %.lr.ph.i.i36 ]
  %i.eg = icmp eq ptr %.sroa.11.1.i.i, %i.ef      ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.eg, ptr %i.e, ptr %.sroa.11.1.i.i ; 2 uses
  %.val.i.i.i37 = load i32, ptr %.sroa.01.0.i.i, align 4, !range !19, !noalias !23368, !noundef !6
  %i.eh = icmp ult i32 %.val.i.i.i37, %.val1.i.pre.i.i
  %i.ei = getelementptr inbounds nuw [20 x i8], ptr %i.ed, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.011.1.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.ei, i64 20, i1 false), !alias.scope !23369, !noalias !23370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ei, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.01.0.i.i, i64 20, i1 false), !noalias !23368
  %i.ej = zext i1 %i.eh to i64
  %i.ek = add i64 %.sroa.19.1.i.i, %i.ej          ; 5 uses
  %.sroa.11.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 20
  br i1 %i.eg, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB49_9FrozenMapB1y_B2I_E12from_entries0E0EB2M_.exit.i, label %.preheader.i.i

.lr.ph.i.i36:                                     ; preds = %.lr.ph.i.i36, %bb.p
  %.sroa.11.025.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.11.022.i.i, %bb.p ] ; 5 uses
  %.sroa.011.024.i.i = phi ptr [ %.sroa.11.025.i.i, %.lr.ph.i.i36 ], [ %i.ed, %bb.p ]
  %.sroa.19.023.i.i = phi i64 [ %i.eo, %.lr.ph.i.i36 ], [ 0, %bb.p ] ; 2 uses
  %.val.i9.i.i = load i32, ptr %.sroa.11.025.i.i, align 4, !range !19, !alias.scope !23369, !noalias !23371, !noundef !6
  %i.el = icmp ult i32 %.val.i9.i.i, %.val1.i.pre.i.i
  %i.em = getelementptr inbounds nuw [20 x i8], ptr %i.ed, i64 %.sroa.19.023.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.011.024.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.em, i64 20, i1 false), !alias.scope !23369, !noalias !23371
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.em, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.11.025.i.i, i64 20, i1 false), !alias.scope !23369, !noalias !23371
  %i.en = zext i1 %i.el to i64
  %i.eo = add i64 %.sroa.19.023.i.i, %i.en        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.025.i.i, i64 20 ; 3 uses
  %i.ep = icmp ult ptr %.sroa.11.0.i.i, %i.ef
  br i1 %i.ep, label %.lr.ph.i.i36, label %.preheader.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB49_9FrozenMapB1y_B2I_E12from_entries0E0EB2M_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23366
  %.not7.i = icmp ult i64 %i.ek, %.sroa.15.083142
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE12split_at_mutB1J_.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB49_9FrozenMapB1y_B2I_E12from_entries0E0EB2M_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE12split_at_mutB1J_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB49_9FrozenMapB1y_B2I_E12from_entries0E0EB2M_.exit.i
  %i.eq = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.084141, i64 %i.ek ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.d, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.084141, i64 20, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.084141, ptr noundef nonnull align 4 dereferenceable(20) %i.eq, i64 20, i1 false), !alias.scope !23372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.eq, ptr noundef nonnull align 4 dereferenceable(20) %i.d, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  %i.es = xor i64 %i.ek, -1
  %i.et = add i64 %.sroa.15.083142, %i.es
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB3J_9FrozenMapB18_B2i_E12from_entries0E0EB2m_(ptr noalias noundef nonnull align 4 %.sroa.0.084141, i64 noundef %i.ek, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(20) %.sroa.023.082143, i32 noundef %i.dn, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.r:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1c_6frozenINtB3H_9FrozenMapB16_B2g_E12from_entries0E0EB2k_.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.084141, i64 %i.ea ; 3 uses
  %.sroa.023.0.val = load i32, ptr %.sroa.023.082143, align 4, !range !19, !noundef !6
  %.val = load i32, ptr %i.eu, align 4, !range !19, !noundef !6
  %i.ev = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.ev, label %bb.p, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.c, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.084141, i64 20, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.084141, ptr noundef nonnull align 4 dereferenceable(20) %i.eu, i64 20, i1 false), !alias.scope !23374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.eu, ptr noundef nonnull align 4 dereferenceable(20) %i.c, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.084141, i64 20 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23376)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.ew, i64 20, i1 false), !noalias !23376
  %i.ex = mul nuw nsw i64 %.sroa.15.083142, 20
  %i.ey = getelementptr i8, ptr %.sroa.0.084141, i64 %i.ex ; 2 uses
  %.sroa.11.022.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.084141, i64 40
  %.val1.i.pre.i.i46 = load i32, ptr %.sroa.0.084141, align 4, !range !19, !alias.scope !23378, !noalias !6 ; 2 uses
  br label %.lr.ph.i.i47

.preheader.i.i53:                                 ; preds = %.lr.ph.i.i47, %.preheader.i.i53
  %.sroa.19.1.i.i54 = phi i64 [ %i.fd, %.preheader.i.i53 ], [ %i.fh, %.lr.ph.i.i47 ] ; 2 uses
  %.sroa.11.1.i.i55 = phi ptr [ %.sroa.11.1.sroa.gep.i.i59, %.preheader.i.i53 ], [ %.sroa.11.0.i.i52, %.lr.ph.i.i47 ] ; 4 uses
  %.sroa.011.1.i.i56 = phi ptr [ %.sroa.11.1.i.i55, %.preheader.i.i53 ], [ %.sroa.11.025.i.i48, %.lr.ph.i.i47 ]
  %i.ez = icmp eq ptr %.sroa.11.1.i.i55, %i.ey    ; 2 uses
  %.sroa.01.0.i.i57 = select i1 %i.ez, ptr %i.b, ptr %.sroa.11.1.i.i55 ; 2 uses
  %.val.i.i.i58 = load i32, ptr %.sroa.01.0.i.i57, align 4, !range !19, !noalias !23379, !noundef !6
  %i.fa = icmp uge i32 %.val1.i.pre.i.i46, %.val.i.i.i58
  %i.fb = getelementptr inbounds nuw [20 x i8], ptr %i.ew, i64 %.sroa.19.1.i.i54 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.011.1.i.i56, ptr noundef nonnull align 4 dereferenceable(20) %i.fb, i64 20, i1 false), !alias.scope !23380, !noalias !23381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fb, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.01.0.i.i57, i64 20, i1 false), !noalias !23379
  %i.fc = zext i1 %i.fa to i64
  %i.fd = add i64 %.sroa.19.1.i.i54, %i.fc        ; 4 uses
  %.sroa.11.1.sroa.gep.i.i59 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i55, i64 20
  br i1 %i.ez, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4v_9FrozenMapB1y_B2I_E12from_entries0E0E0EB2M_.exit.i, label %.preheader.i.i53

.lr.ph.i.i47:                                     ; preds = %.lr.ph.i.i47, %bb.s
  %.sroa.11.025.i.i48 = phi ptr [ %.sroa.11.0.i.i52, %.lr.ph.i.i47 ], [ %.sroa.11.022.i.i45, %bb.s ] ; 5 uses
  %.sroa.011.024.i.i49 = phi ptr [ %.sroa.11.025.i.i48, %.lr.ph.i.i47 ], [ %i.ew, %bb.s ]
  %.sroa.19.023.i.i50 = phi i64 [ %i.fh, %.lr.ph.i.i47 ], [ 0, %bb.s ] ; 2 uses
  %.val.i9.i.i51 = load i32, ptr %.sroa.11.025.i.i48, align 4, !range !19, !alias.scope !23380, !noalias !23382, !noundef !6
  %i.fe = icmp uge i32 %.val1.i.pre.i.i46, %.val.i9.i.i51
  %i.ff = getelementptr inbounds nuw [20 x i8], ptr %i.ew, i64 %.sroa.19.023.i.i50 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.011.024.i.i49, ptr noundef nonnull align 4 dereferenceable(20) %i.ff, i64 20, i1 false), !alias.scope !23380, !noalias !23382
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ff, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.11.025.i.i48, i64 20, i1 false), !alias.scope !23380, !noalias !23382
  %i.fg = zext i1 %i.fe to i64
  %i.fh = add i64 %.sroa.19.023.i.i50, %i.fg      ; 2 uses
  %.sroa.11.0.i.i52 = getelementptr inbounds nuw i8, ptr %.sroa.11.025.i.i48, i64 20 ; 3 uses
  %i.fi = icmp ult ptr %.sroa.11.0.i.i52, %i.ey
  br i1 %i.fi, label %.lr.ph.i.i47, label %.preheader.i.i53

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4v_9FrozenMapB1y_B2I_E12from_entries0E0E0EB2M_.exit.i: ; preds = %.preheader.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23377
  %.not7.i60 = icmp ult i64 %i.fd, %.sroa.15.083142
  br i1 %.not7.i60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4v_9FrozenMapB1y_B2I_E12from_entries0E0E0EB2M_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4v_9FrozenMapB1y_B2I_E12from_entries0E0E0EB2M_.exit.i
  %i.fj = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.084141, i64 %i.fd ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.084141, i64 20, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.084141, ptr noundef nonnull align 4 dereferenceable(20) %i.fj, i64 20, i1 false), !alias.scope !23383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fj, ptr noundef nonnull align 4 dereferenceable(20) %i.a, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fk = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %i.fl = sub nuw nsw i64 %.sroa.15.083142, %i.fk
  %i.fm = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.084141, i64 %i.fk
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE12split_at_mutB1J_.exit
  %.sroa.023.0.be = phi ptr [ %i.eq, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE12split_at_mutB1J_.exit ], [ null, %bb.u ]
  %.sroa.15.0.be = phi i64 [ %i.et, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE12split_at_mutB1J_.exit ], [ %i.fl, %bb.u ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.er, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE12split_at_mutB1J_.exit ], [ %i.fm, %bb.u ] ; 3 uses
  %i.fn = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.fn, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB47_9FrozenMapB18_B2i_E12from_entries0E0EB2o_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i44 = alloca i64, align 8            ; 5 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  %i.a = alloca [256 x i8], align 4               ; 5 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %._crit_edge155, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %.lr.ph
  %.sroa.0.i.i44.4.i.i44.4.i.i44.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i44, i64 4
  %.sroa.0.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 4
  br label %.lr.ph154

bb.b:                                             ; preds = %.backedge
  %i.d = icmp eq i32 %i.ve, 0
  br i1 %i.d, label %._crit_edge155, label %.lr.ph154

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23436)
  %i.e = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.e, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_NtB1m_6frozenINtB4f_9FrozenMapB1g_B2q_E12from_entries0E0EB2w_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23436
  %i.f = lshr i64 %.sroa.15.0.lcssa, 1            ; 4 uses
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 18 ; 2 uses
  %..i = select i1 %i.g, i64 %.sroa.15.0.lcssa, i64 %i.f
  %i.h = getelementptr [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f ; 3 uses
  %i.i = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.c
  %.sroa.8.0.i = phi i64 [ %..i, %bb.c ], [ %i.i, %bb.m ] ; 5 uses
  %.sroa.02.0.i = phi ptr [ %.sroa.0.0.lcssa, %bb.c ], [ %i.h, %bb.m ] ; 72 uses
  %i.j = icmp ugt i64 %.sroa.8.0.i, 12
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %.sroa.8.0.i, 8
  br i1 %i.k, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 96 ; 10 uses
  %.val.i.i.i = load i32, ptr %i.l, align 4, !range !19, !alias.scope !23437, !noundef !6 ; 2 uses
  %.val1.i.i.i = load i32, ptr %.sroa.02.0.i, align 4, !range !19, !alias.scope !23437, !noundef !6 ; 2 uses
  %i.m = icmp ult i32 %.val.i.i.i, %.val1.i.i.i   ; 2 uses
  %i.n = select i1 %i.m, ptr %i.l, ptr %.sroa.02.0.i, !unpredictable !6
  %i.o = select i1 %i.m, ptr %.sroa.02.0.i, ptr %i.l, !unpredictable !6
  %i.p = tail call i32 @llvm.umax.i32(i32 %.val.i.i.i, i32 %.val1.i.i.i) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i8, ptr %i.q, align 4, !alias.scope !23437, !noundef !6
  %i.s = load i64, ptr %i.n, align 4, !alias.scope !23437
  store i64 %i.s, ptr %.sroa.02.0.i, align 4, !alias.scope !23437
  store i32 %i.p, ptr %i.l, align 4, !alias.scope !23437
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 100 ; 3 uses
  store i8 %i.r, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !alias.scope !23437
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8 ; 17 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 80 ; 20 uses
  %.val.i1.i.i = load i32, ptr %i.u, align 4, !range !19, !alias.scope !23437, !noundef !6 ; 2 uses
  %.val1.i2.i.i = load i32, ptr %i.t, align 4, !range !19, !alias.scope !23437, !noundef !6 ; 2 uses
  %i.v = icmp ult i32 %.val.i1.i.i, %.val1.i2.i.i ; 2 uses
  %i.w = select i1 %i.v, ptr %i.u, ptr %i.t, !unpredictable !6
  %i.x = select i1 %i.v, ptr %i.t, ptr %i.u, !unpredictable !6
  %i.y = tail call i32 @llvm.umax.i32(i32 %.val.i1.i.i, i32 %.val1.i2.i.i) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !alias.scope !23437, !noundef !6
  %i.ab = load i64, ptr %i.w, align 4, !alias.scope !23437 ; 3 uses
  store i64 %i.ab, ptr %i.t, align 4, !alias.scope !23437
  store i32 %i.y, ptr %i.u, align 4, !alias.scope !23437
  %.sroa.4.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 84 ; 5 uses
  store i8 %i.aa, ptr %.sroa.4.0..sroa_idx.i3.i.i, align 4, !alias.scope !23437
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 18 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 72 ; 22 uses
  %.val.i4.i.i = load i32, ptr %i.ad, align 4, !range !19, !alias.scope !23437, !noundef !6 ; 2 uses
  %.val1.i5.i.i = load i32, ptr %i.ac, align 4, !range !19, !alias.scope !23437, !noundef !6 ; 2 uses
  %i.ae = icmp ult i32 %.val.i4.i.i, %.val1.i5.i.i ; 2 uses
  %i.af = select i1 %i.ae, ptr %i.ad, ptr %i.ac, !unpredictable !6
  %i.ag = select i1 %i.ae, ptr %i.ac, ptr %i.ad, !unpredictable !6
  %i.ah = tail call i32 @llvm.umax.i32(i32 %.val.i4.i.i, i32 %.val1.i5.i.i) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load i8, ptr %i.ai, align 4, !alias.scope !23437, !noundef !6
  %i.ak = load i64, ptr %i.af, align 4, !alias.scope !23437 ; 3 uses
  store i64 %i.ak, ptr %i.ac, align 4, !alias.scope !23437
  store i32 %i.ah, ptr %i.ad, align 4, !alias.scope !23437
  %.sroa.4.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 76 ; 5 uses
  store i8 %i.aj, ptr %.sroa.4.0..sroa_idx.i6.i.i, align 4, !alias.scope !23437
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 24 ; 21 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 56 ; 19 uses
  %.val.i7.i.i = load i32, ptr %i.am, align 4, !range !19, !alias.scope !23437, !noundef !6 ; 2 uses
  %.val1.i8.i.i = load i32, ptr %i.al, align 4, !range !19, !alias.scope !23437, !noundef !6 ; 2 uses
  %i.an = icmp ult i32 %.val.i7.i.i, %.val1.i8.i.i ; 2 uses
  %i.ao = select i1 %i.an, ptr %i.am, ptr %i.al, !unpredictable !6
  %i.ap = select i1 %i.an, ptr %i.al, ptr %i.am, !unpredictable !6
  %i.aq = tail call i32 @llvm.umax.i32(i32 %.val.i7.i.i, i32 %.val1.i8.i.i) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load i8, ptr %i.ar, align 4, !alias.scope !23437, !noundef !6
  %i.at = load i64, ptr %i.ao, align 4, !alias.scope !23437 ; 3 uses
  store i64 %i.at, ptr %i.al, align 4, !alias.scope !23437
  store i32 %i.aq, ptr %i.am, align 4, !alias.scope !23437
  %.sroa.4.0..sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 60 ; 4 uses
  store i8 %i.as, ptr %.sroa.4.0..sroa_idx.i9.i.i, align 4, !alias.scope !23437
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 40 ; 23 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 88 ; 18 uses
  %.val.i10.i.i = load i32, ptr %i.av, align 4, !range !19, !alias.scope !23437, !noundef !6 ; 2 uses
  %.val1.i11.i.i = load i32, ptr %i.au, align 4, !range !19, !alias.scope !23437, !noundef !6 ; 2 uses
  %i.aw = icmp ult i32 %.val.i10.i.i, %.val1.i11.i.i ; 2 uses
  %i.ax = select i1 %i.aw, ptr %i.av, ptr %i.au, !unpredictable !6
  %i.ay = select i1 %i.aw, ptr %i.au, ptr %i.av, !unpredictable !6
  %i.az = tail call i32 @llvm.umax.i32(i32 %.val.i10.i.i, i32 %.val1.i11.i.i) ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load i8, ptr %i.ba, align 4, !alias.scope !23437, !noundef !6
  %i.bc = load i64, ptr %i.ax, align 4, !alias.scope !23437
  store i64 %i.bc, ptr %i.au, align 4, !alias.scope !23437
  store i32 %i.az, ptr %i.av, align 4, !alias.scope !23437
  %.sroa.4.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 92 ; 5 uses
  store i8 %i.bb, ptr %.sroa.4.0..sroa_idx.i12.i.i, align 4, !alias.scope !23437
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 48 ; 26 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 64 ; 23 uses
  %.val.i13.i.i = load i32, ptr %i.be, align 4, !range !19, !alias.scope !23437, !noundef !6 ; 2 uses
  %.val1.i14.i.i = load i32, ptr %i.bd, align 4, !range !19, !alias.scope !23437, !noundef !6 ; 2 uses
  %i.bf = icmp ult i32 %.val.i13.i.i, %.val1.i14.i.i ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.be, ptr %i.bd, !unpredictable !6
  %i.bh = select i1 %i.bf, ptr %i.bd, ptr %i.be, !unpredictable !6
  %i.bi = tail call i32 @llvm.umax.i32(i32 %.val.i13.i.i, i32 %.val1.i14.i.i) ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = load i8, ptr %i.bj, align 4, !alias.scope !23437, !noundef !6
  %i.bl = load i64, ptr %i.bg, align 4, !alias.scope !23437 ; 3 uses
  store i64 %i.bl, ptr %i.bd, align 4, !alias.scope !23437
  store i32 %i.bi, ptr %i.be, align 4, !alias.scope !23437
  %.sroa.4.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 68 ; 5 uses
  store i8 %i.bk, ptr %.sroa.4.0..sroa_idx.i15.i.i, align 4, !alias.scope !23437
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = trunc i64 %i.ab to i32                  ; 2 uses
  %i.bo = icmp ult i32 %i.bm, %i.bn               ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.t, ptr %i.bd, !unpredictable !6
  %i.bq = tail call i32 @llvm.umax.i32(i32 %i.bm, i32 %i.bn) ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i8, ptr %i.br, align 4, !alias.scope !23437, !noundef !6
  %i.bt = select i1 %i.bo, i64 %i.bl, i64 %i.ab, !unpredictable !6 ; 3 uses
  store i64 %i.bt, ptr %i.t, align 4, !alias.scope !23437
  store i32 %i.bq, ptr %i.bd, align 4, !alias.scope !23437
  %.sroa.4.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 52 ; 5 uses
  store i8 %i.bs, ptr %.sroa.4.0..sroa_idx.i18.i.i, align 4, !alias.scope !23437
  %i.bu = trunc i64 %i.at to i32                  ; 2 uses
  %i.bv = trunc i64 %i.ak to i32                  ; 2 uses
  %i.bw = icmp ult i32 %i.bu, %i.bv               ; 2 uses
  %i.bx = select i1 %i.bw, ptr %i.ac, ptr %i.al, !unpredictable !6
  %i.by = tail call i32 @llvm.umax.i32(i32 %i.bu, i32 %i.bv) ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ca = load i8, ptr %i.bz, align 4, !alias.scope !23437, !noundef !6
  %i.cb = select i1 %i.bw, i64 %i.at, i64 %i.ak, !unpredictable !6 ; 3 uses
  store i64 %i.cb, ptr %i.ac, align 4, !alias.scope !23437
  store i32 %i.by, ptr %i.al, align 4, !alias.scope !23437
  %.sroa.4.0..sroa_idx.i21.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 28 ; 3 uses
  store i8 %i.ca, ptr %.sroa.4.0..sroa_idx.i21.i.i, align 4, !alias.scope !23437
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32 ; 21 uses
  %.val1.i23.i.i = load i32, ptr %i.cc, align 4, !range !19, !alias.scope !23437, !noundef !6 ; 2 uses
  %i.cd = icmp ult i32 %i.az, %.val1.i23.i.i      ; 2 uses
  %i.ce = select i1 %i.cd, ptr %i.av, ptr %i.cc, !unpredictable !6
  %i.cf = select i1 %i.cd, ptr %i.cc, ptr %i.av, !unpredictable !6
  %i.cg = tail call i32 @llvm.umax.i32(i32 %i.az, i32 %.val1.i23.i.i) ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ci = load i8, ptr %i.ch, align 4, !alias.scope !23437, !noundef !6
  %i.cj = load i64, ptr %i.ce, align 4, !alias.scope !23437 ; 3 uses
  store i64 %i.cj, ptr %i.cc, align 4, !alias.scope !23437
  store i32 %i.cg, ptr %i.av, align 4, !alias.scope !23437
  store i8 %i.ci, ptr %.sroa.4.0..sroa_idx.i12.i.i, align 4, !alias.scope !23437
  %i.ck = icmp ult i32 %i.ah, %i.aq               ; 2 uses
  %i.cl = select i1 %i.ck, ptr %i.ad, ptr %i.am, !unpredictable !6
  %i.cm = select i1 %i.ck, ptr %i.am, ptr %i.ad, !unpredictable !6
  %i.cn = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 %i.aq) ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cp = load i8, ptr %i.co, align 4, !alias.scope !23437, !noundef !6
  %i.cq = load i64, ptr %i.cl, align 4, !alias.scope !23437 ; 3 uses
  store i64 %i.cq, ptr %i.am, align 4, !alias.scope !23437
  store i32 %i.cn, ptr %i.ad, align 4, !alias.scope !23437
  store i8 %i.cp, ptr %.sroa.4.0..sroa_idx.i6.i.i, align 4, !alias.scope !23437
  %i.cr = icmp ult i32 %i.y, %i.bi                ; 2 uses
  %i.cs = select i1 %i.cr, ptr %i.u, ptr %i.be, !unpredictable !6
  %i.ct = select i1 %i.cr, ptr %i.be, ptr %i.u, !unpredictable !6
  %i.cu = tail call i32 @llvm.umax.i32(i32 %i.y, i32 %i.bi) ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
end_hunk_9
begin_hunk_10_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB47_9FrozenMapB18_B2i_E12from_entries0E0EB2o_:bb.a
  %.sroa.0.0.i = lshr exact i64 %i.vr, 3
  %i.vs = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.092151
  tail call void @llvm.assume(i1 %i.vs)
  %.not = icmp eq ptr %.sroa.023.091152, null
  br i1 %.not, label %bb.s, label %bb.u

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_NtB1m_6frozenINtB4f_9FrozenMapB1g_B2q_E12from_entries0E0EB2w_.exit: ; preds = %.sink.split.i, %._crit_edge, %._crit_edge155
  ret void

bb.s:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1c_6frozenINtB45_9FrozenMapB16_B2g_E12from_entries0E0EB2m_.exit, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23448)
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 %i.vr ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.0.093150, align 4, !alias.scope !23449
  %i.vu = load i64, ptr %i.vt, align 4, !alias.scope !23449
  store i64 %i.vu, ptr %.sroa.0.093150, align 4, !alias.scope !23449
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.vt, align 4, !alias.scope !23449
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23451)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.vw = load i32, ptr %i.vv, align 4, !range !19, !alias.scope !23452, !noundef !6
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 12
  %i.vy = load i8, ptr %i.vx, align 4, !alias.scope !23452, !noundef !6
  store i32 %i.vw, ptr %.sroa.0.i.i, align 8, !noalias !23453
  store i8 %i.vy, ptr %.sroa.0.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, align 4, !noalias !23453
  %i.vz = getelementptr [8 x i8], ptr %.sroa.0.093150, i64 %.sroa.15.092151 ; 2 uses
  %i.wa = getelementptr i8, ptr %i.vz, i64 -8     ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 16 ; 3 uses
  %i.wb = icmp ult ptr %.sroa.13.030.i.i, %i.wa
  %.val1.i.pre.i.i = load i32, ptr %.sroa.0.093150, align 4, !range !19, !alias.scope !23454, !noalias !6 ; 3 uses
  br i1 %i.wb, label %.lr.ph.i.i36, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i36, %bb.s
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.s ], [ %i.wv, %.lr.ph.i.i36 ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.030.i.i, %bb.s ], [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.vv, %bb.s ], [ %i.wp, %.lr.ph.i.i36 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.wi, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 4 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.wc = icmp eq ptr %.sroa.13.1.i.i, %i.vz      ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.wc, ptr %.sroa.0.i.i, ptr %.sroa.13.1.i.i ; 2 uses
  %.val.i.i.i35 = load i32, ptr %.sroa.01.0.i.i, align 4, !range !19, !noalias !23455, !noundef !6
  %i.wd = icmp ult i32 %.val.i.i.i35, %.val1.i.pre.i.i
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %.sroa.23.1.i.i ; 2 uses
  %i.wf = load i64, ptr %i.we, align 4, !alias.scope !23452, !noalias !23456
  store i64 %i.wf, ptr %.sroa.015.1.i.i, align 4, !alias.scope !23452, !noalias !23456
  %i.wg = load i64, ptr %.sroa.01.0.i.i, align 4, !noalias !23455
  store i64 %i.wg, ptr %i.we, align 4, !alias.scope !23452, !noalias !23456
  %i.wh = zext i1 %i.wd to i64
  %i.wi = add i64 %.sroa.23.1.i.i, %i.wh          ; 5 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 8
  br i1 %i.wc, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4x_9FrozenMapB1y_B2I_E12from_entries0E0EB2O_.exit.i, label %.preheader.i.i

.lr.ph.i.i36:                                     ; preds = %bb.s, %.lr.ph.i.i36
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.13.030.i.i, %bb.s ] ; 3 uses
  %.sroa.015.032.i.i = phi ptr [ %i.wp, %.lr.ph.i.i36 ], [ %i.vv, %bb.s ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.wv, %.lr.ph.i.i36 ], [ 0, %bb.s ] ; 2 uses
  %.val.i11.i.i = load i32, ptr %.sroa.13.033.i.i, align 4, !range !19, !alias.scope !23452, !noalias !23457, !noundef !6
  %i.wj = icmp ult i32 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %.sroa.23.031.i.i ; 2 uses
  %i.wl = load i64, ptr %i.wk, align 4, !alias.scope !23452, !noalias !23457
  store i64 %i.wl, ptr %.sroa.015.032.i.i, align 4, !alias.scope !23452, !noalias !23457
  %i.wm = load i64, ptr %.sroa.13.033.i.i, align 4, !alias.scope !23452, !noalias !23457
  store i64 %i.wm, ptr %i.wk, align 4, !alias.scope !23452, !noalias !23457
  %i.wn = zext i1 %i.wj to i64
  %i.wo = add i64 %.sroa.23.031.i.i, %i.wn        ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 16 ; 4 uses
  %.val.i13.i.i37 = load i32, ptr %i.wp, align 4, !range !19, !alias.scope !23452, !noalias !23458, !noundef !6
  %i.wq = icmp ult i32 %.val.i13.i.i37, %.val1.i.pre.i.i
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %i.wo ; 2 uses
  %i.ws = load i64, ptr %i.wr, align 4, !alias.scope !23452, !noalias !23458
  store i64 %i.ws, ptr %.sroa.13.033.i.i, align 4, !alias.scope !23452, !noalias !23458
  %i.wt = load i64, ptr %i.wp, align 4, !alias.scope !23452, !noalias !23458
  store i64 %i.wt, ptr %i.wr, align 4, !alias.scope !23452, !noalias !23458
  %i.wu = zext i1 %i.wq to i64
  %i.wv = add i64 %i.wo, %i.wu                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 24 ; 3 uses
  %i.ww = icmp ult ptr %.sroa.13.0.i.i, %i.wa
  br i1 %i.ww, label %.lr.ph.i.i36, label %.preheader.i.i.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4x_9FrozenMapB1y_B2I_E12from_entries0E0EB2O_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %.not7.i = icmp ult i64 %i.wi, %.sroa.15.092151
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsE12split_at_mutB1L_.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4x_9FrozenMapB1y_B2I_E12from_entries0E0EB2O_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsE12split_at_mutB1L_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4x_9FrozenMapB1y_B2I_E12from_entries0E0EB2O_.exit.i
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.093150, i64 %i.wi ; 4 uses
  %.sroa.0.0.copyload.i.i8.i = load i64, ptr %.sroa.0.093150, align 4, !alias.scope !23459
  %i.wy = load i64, ptr %i.wx, align 4, !alias.scope !23459
  store i64 %i.wy, ptr %.sroa.0.093150, align 4, !alias.scope !23459
  store i64 %.sroa.0.0.copyload.i.i8.i, ptr %i.wx, align 4, !alias.scope !23459
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  %i.xa = xor i64 %i.wi, -1
  %i.xb = add i64 %.sroa.15.092151, %i.xa
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB47_9FrozenMapB18_B2i_E12from_entries0E0EB2o_(ptr noalias noundef nonnull align 4 %.sroa.0.093150, i64 noundef %i.wi, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.091152, i32 noundef %i.ve, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.u:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvMB8_SB15_16sort_unstable_byNCNvMs2_NtB1c_6frozenINtB45_9FrozenMapB16_B2g_E12from_entries0E0EB2m_.exit
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 %i.vr ; 3 uses
  %.sroa.023.0.val = load i32, ptr %.sroa.023.091152, align 4, !range !19, !noundef !6
  %.val = load i32, ptr %i.xc, align 4, !range !19, !noundef !6
  %i.xd = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.xd, label %bb.s, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23460)
  %.sroa.0.0.copyload.i.i.i46 = load i64, ptr %.sroa.0.093150, align 4, !alias.scope !23461
  %i.xe = load i64, ptr %i.xc, align 4, !alias.scope !23461
  store i64 %i.xe, ptr %.sroa.0.093150, align 4, !alias.scope !23461
  store i64 %.sroa.0.0.copyload.i.i.i46, ptr %i.xc, align 4, !alias.scope !23461
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23463)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i44)
  %i.xg = load i32, ptr %i.xf, align 4, !range !19, !alias.scope !23464, !noundef !6
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 12
  %i.xi = load i8, ptr %i.xh, align 4, !alias.scope !23464, !noundef !6
  store i32 %i.xg, ptr %.sroa.0.i.i44, align 8, !noalias !23465
  store i8 %i.xi, ptr %.sroa.0.i.i44.4.i.i44.4.i.i44.4.i.4.i.4..sroa_idx, align 4, !noalias !23465
  %i.xj = getelementptr [8 x i8], ptr %.sroa.0.093150, i64 %.sroa.15.092151 ; 2 uses
  %i.xk = getelementptr i8, ptr %i.xj, i64 -8     ; 2 uses
  %.sroa.13.030.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.0.093150, i64 16 ; 3 uses
  %i.xl = icmp ult ptr %.sroa.13.030.i.i48, %i.xk
  %.val1.i.pre.i.i49 = load i32, ptr %.sroa.0.093150, align 4, !range !19, !alias.scope !23466, !noalias !6 ; 3 uses
  br i1 %i.xl, label %.lr.ph.i.i62, label %.preheader.i.i50.preheader

.preheader.i.i50.preheader:                       ; preds = %.lr.ph.i.i62, %bb.v
  %.sroa.23.1.i.i54.ph = phi i64 [ 0, %bb.v ], [ %i.yf, %.lr.ph.i.i62 ]
  %.sroa.13.1.i.i55.ph = phi ptr [ %.sroa.13.030.i.i48, %bb.v ], [ %.sroa.13.0.i.i68, %.lr.ph.i.i62 ]
  %.sroa.015.1.i.i56.ph = phi ptr [ %i.xf, %bb.v ], [ %i.xz, %.lr.ph.i.i62 ]
  br label %.preheader.i.i50

.preheader.i.i50:                                 ; preds = %.preheader.i.i50.preheader, %.preheader.i.i50
  %.sroa.23.1.i.i54 = phi i64 [ %i.xs, %.preheader.i.i50 ], [ %.sroa.23.1.i.i54.ph, %.preheader.i.i50.preheader ] ; 2 uses
  %.sroa.13.1.i.i55 = phi ptr [ %.sroa.13.1.sroa.gep.i.i59, %.preheader.i.i50 ], [ %.sroa.13.1.i.i55.ph, %.preheader.i.i50.preheader ] ; 4 uses
  %.sroa.015.1.i.i56 = phi ptr [ %.sroa.13.1.i.i55, %.preheader.i.i50 ], [ %.sroa.015.1.i.i56.ph, %.preheader.i.i50.preheader ]
  %i.xm = icmp eq ptr %.sroa.13.1.i.i55, %i.xj    ; 2 uses
  %.sroa.01.0.i.i57 = select i1 %i.xm, ptr %.sroa.0.i.i44, ptr %.sroa.13.1.i.i55 ; 2 uses
  %.val.i.i.i58 = load i32, ptr %.sroa.01.0.i.i57, align 4, !range !19, !noalias !23467, !noundef !6
  %i.xn = icmp uge i32 %.val1.i.pre.i.i49, %.val.i.i.i58
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %.sroa.23.1.i.i54 ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 4, !alias.scope !23464, !noalias !23468
  store i64 %i.xp, ptr %.sroa.015.1.i.i56, align 4, !alias.scope !23464, !noalias !23468
  %i.xq = load i64, ptr %.sroa.01.0.i.i57, align 4, !noalias !23467
  store i64 %i.xq, ptr %i.xo, align 4, !alias.scope !23464, !noalias !23468
  %i.xr = zext i1 %i.xn to i64
  %i.xs = add i64 %.sroa.23.1.i.i54, %i.xr        ; 4 uses
  %.sroa.13.1.sroa.gep.i.i59 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i55, i64 8
  br i1 %i.xm, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4T_9FrozenMapB1y_B2I_E12from_entries0E0E0EB2O_.exit.i, label %.preheader.i.i50

.lr.ph.i.i62:                                     ; preds = %bb.v, %.lr.ph.i.i62
  %.sroa.13.033.i.i63 = phi ptr [ %.sroa.13.0.i.i68, %.lr.ph.i.i62 ], [ %.sroa.13.030.i.i48, %bb.v ] ; 3 uses
  %.sroa.015.032.i.i64 = phi ptr [ %i.xz, %.lr.ph.i.i62 ], [ %i.xf, %bb.v ] ; 3 uses
  %.sroa.23.031.i.i65 = phi i64 [ %i.yf, %.lr.ph.i.i62 ], [ 0, %bb.v ] ; 2 uses
  %.val.i11.i.i66 = load i32, ptr %.sroa.13.033.i.i63, align 4, !range !19, !alias.scope !23464, !noalias !23469, !noundef !6
  %i.xt = icmp uge i32 %.val1.i.pre.i.i49, %.val.i11.i.i66
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %.sroa.23.031.i.i65 ; 2 uses
  %i.xv = load i64, ptr %i.xu, align 4, !alias.scope !23464, !noalias !23469
  store i64 %i.xv, ptr %.sroa.015.032.i.i64, align 4, !alias.scope !23464, !noalias !23469
  %i.xw = load i64, ptr %.sroa.13.033.i.i63, align 4, !alias.scope !23464, !noalias !23469
  store i64 %i.xw, ptr %i.xu, align 4, !alias.scope !23464, !noalias !23469
  %i.xx = zext i1 %i.xt to i64
  %i.xy = add i64 %.sroa.23.031.i.i65, %i.xx      ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i64, i64 16 ; 4 uses
  %.val.i13.i.i67 = load i32, ptr %i.xz, align 4, !range !19, !alias.scope !23464, !noalias !23470, !noundef !6
  %i.ya = icmp uge i32 %.val1.i.pre.i.i49, %.val.i13.i.i67
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.xy ; 2 uses
  %i.yc = load i64, ptr %i.yb, align 4, !alias.scope !23464, !noalias !23470
  store i64 %i.yc, ptr %.sroa.13.033.i.i63, align 4, !alias.scope !23464, !noalias !23470
  %i.yd = load i64, ptr %i.xz, align 4, !alias.scope !23464, !noalias !23470
  store i64 %i.yd, ptr %i.yb, align 4, !alias.scope !23464, !noalias !23470
  %i.ye = zext i1 %i.ya to i64
  %i.yf = add i64 %i.xy, %i.ye                    ; 2 uses
  %.sroa.13.0.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i64, i64 24 ; 3 uses
  %i.yg = icmp ult ptr %.sroa.13.0.i.i68, %i.xk
  br i1 %i.yg, label %.lr.ph.i.i62, label %.preheader.i.i50.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4T_9FrozenMapB1y_B2I_E12from_entries0E0E0EB2O_.exit.i: ; preds = %.preheader.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i44)
  %.not7.i60 = icmp ult i64 %i.xs, %.sroa.15.092151
  br i1 %.not7.i60, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4T_9FrozenMapB1y_B2I_E12from_entries0E0E0EB2O_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs2_NtB1E_6frozenINtB4T_9FrozenMapB1y_B2I_E12from_entries0E0E0EB2O_.exit.i
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.093150, i64 %i.xs ; 2 uses
  %.sroa.0.0.copyload.i.i8.i61 = load i64, ptr %.sroa.0.093150, align 4, !alias.scope !23471
  %i.yi = load i64, ptr %i.yh, align 4, !alias.scope !23471
  store i64 %i.yi, ptr %.sroa.0.093150, align 4, !alias.scope !23471
  store i64 %.sroa.0.0.copyload.i.i8.i61, ptr %i.yh, align 4, !alias.scope !23471
  %i.yj = add nuw nsw i64 %i.xs, 1                ; 2 uses
  %i.yk = sub nuw nsw i64 %.sroa.15.092151, %i.yj
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.093150, i64 %i.yj
  br label %.backedge

.backedge:                                        ; preds = %bb.x, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsE12split_at_mutB1L_.exit
  %.sroa.023.0.be = phi ptr [ %i.wx, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsE12split_at_mutB1L_.exit ], [ null, %bb.x ]
  %.sroa.15.0.be = phi i64 [ %i.xb, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsE12split_at_mutB1L_.exit ], [ %i.yk, %bb.x ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.wz, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsE12split_at_mutB1L_.exit ], [ %i.yl, %bb.x ] ; 3 uses
  %i.ym = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.ym, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1e_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB17_20sort_unstable_by_keyB18_NCNvXNvMsp_NtNtNtB2W_5types5class14static_literalNtB4S_18StaticClassLiteral16own_fields_innerB5u_NtB4M_11InnerTrait_17own_fields_inner_s1_0E0EB2W_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 128102389400760776) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(72) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph113

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph113

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1m_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB1f_20sort_unstable_by_keyB1g_NCNvXNvMsp_NtNtNtB34_5types5class14static_literalNtB50_18StaticClassLiteral16own_fields_innerB5C_NtB4U_11InnerTrait_17own_fields_inner_s1_0E0EB34_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.074.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.073.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1c_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB15_20sort_unstable_by_keyB16_NCNvXNvMsp_NtNtNtB2U_5types5class14static_literalNtB4Q_18StaticClassLiteral16own_fields_innerB5s_NtB4K_11InnerTrait_17own_fields_inner_s1_0E0EB2U_(ptr noalias noundef nonnull align 8 %.sroa.0.074.lcssa, i64 noundef %.sroa.15.073.lcssa, ptr noalias nonnull align 8 poison)
  br label %bb.c

.lr.ph113:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.071112 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.072111 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.073110 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.074109 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.f = add nsw i32 %.sroa.026.071112, -1        ; 3 uses
  %i.g = lshr i64 %.sroa.15.073110, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 288
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 504
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.15.073110, 64
  br i1 %i.j, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB16_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SBZ_20sort_unstable_by_keyB10_NCNvXNvMsp_NtNtNtB2O_5types5class14static_literalNtB4J_18StaticClassLiteral16own_fields_innerB5l_NtB4D_11InnerTrait_17own_fields_inner_s1_0E0EB2O_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph113
  %i.k = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1b_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB14_20sort_unstable_by_keyB15_NCNvXNvMsp_NtNtNtB2T_5types5class14static_literalNtB4P_18StaticClassLiteral16own_fields_innerB5r_NtB4J_11InnerTrait_17own_fields_inner_s1_0E0EB2T_(ptr noundef nonnull readonly align 8 %.sroa.0.074109, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1c_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB15_20sort_unstable_by_keyB16_NCNvXNvMsp_NtNtNtB2U_5types5class14static_literalNtB4Q_18StaticClassLiteral16own_fields_innerB5s_NtB4K_11InnerTrait_17own_fields_inner_s1_0E0EB2U_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB16_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SBZ_20sort_unstable_by_keyB10_NCNvXNvMsp_NtNtNtB2O_5types5class14static_literalNtB4J_18StaticClassLiteral16own_fields_innerB5l_NtB4D_11InnerTrait_17own_fields_inner_s1_0E0EB2O_.exit.i: ; preds = %.lr.ph113
  %.val6.i = load i32, ptr %.sroa.0.074109, align 8, !range !19, !alias.scope !23492, !noundef !6 ; 2 uses
  %.val7.i = load i32, ptr %i.h, align 8, !range !19, !alias.scope !23492, !noundef !6 ; 2 uses
  %i.l = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i32, ptr %i.i, align 8, !range !19, !alias.scope !23492, !noundef !6 ; 2 uses
  %i.m = icmp ult i32 %.val6.i, %.val5.i
  %i.n = xor i1 %i.l, %i.m
  %i.o = icmp ult i32 %.val7.i, %.val5.i
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  %.sroa.0.0.i.i = select i1 %i.n, ptr %.sroa.0.074109, ptr %..i.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1c_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB15_20sort_unstable_by_keyB16_NCNvXNvMsp_NtNtNtB2U_5types5class14static_literalNtB4Q_18StaticClassLiteral16own_fields_innerB5s_NtB4K_11InnerTrait_17own_fields_inner_s1_0E0EB2U_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1c_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB15_20sort_unstable_by_keyB16_NCNvXNvMsp_NtNtNtB2U_5types5class14static_literalNtB4Q_18StaticClassLiteral16own_fields_innerB5s_NtB4K_11InnerTrait_17own_fields_inner_s1_0E0EB2U_.exit: ; preds = %bb.b, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB16_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SBZ_20sort_unstable_by_keyB10_NCNvXNvMsp_NtNtNtB2O_5types5class14static_literalNtB4J_18StaticClassLiteral16own_fields_innerB5l_NtB4D_11InnerTrait_17own_fields_inner_s1_0E0EB2O_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB16_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SBZ_20sort_unstable_by_keyB10_NCNvXNvMsp_NtNtNtB2O_5types5class14static_literalNtB4J_18StaticClassLiteral16own_fields_innerB5l_NtB4D_11InnerTrait_17own_fields_inner_s1_0E0EB2O_.exit.i ], [ %i.k, %bb.b ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = ptrtoint ptr %.sroa.0.074109 to i64
  %i.s = sub nuw i64 %i.q, %i.r                   ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.s, 72          ; 3 uses
  %i.t = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.073110
  tail call void @llvm.assume(i1 %i.t)
  %.not = icmp eq ptr %.sroa.023.072111, null
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1c_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB15_20sort_unstable_by_keyB16_NCNvXNvMsp_NtNtNtB2U_5types5class14static_literalNtB4Q_18StaticClassLiteral16own_fields_innerB5s_NtB4K_11InnerTrait_17own_fields_inner_s1_0E0EB2U_.exit, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23493)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtBB_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultE14swap_uncheckedB2i_(ptr noalias noundef nonnull align 8 %.sroa.0.074109, i64 noundef range(i64 33, 128102389400760776) %.sroa.15.073110, i64 noundef 0, i64 noundef range(i64 0, 128102389400760775) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 72 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23495)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !23495
  %i.v = mul nuw nsw i64 %.sroa.15.073110, 72
  %i.w = getelementptr i8, ptr %.sroa.0.074109, i64 %i.v ; 2 uses
  %.sroa.11.022.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 144
  %.val1.i.pre.i.i = load i32, ptr %.sroa.0.074109, align 8, !range !19, !alias.scope !23497, !noalias !6 ; 2 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.ab, %.preheader.i.i ], [ %i.af, %.lr.ph.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.i.i ] ; 4 uses
  %.sroa.011.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.025.i.i, %.lr.ph.i.i ]
  %i.x = icmp eq ptr %.sroa.11.1.i.i, %i.w        ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.x, ptr %i.b, ptr %.sroa.11.1.i.i ; 2 uses
  %.val.i.i.i = load i32, ptr %.sroa.01.0.i.i, align 8, !range !19, !noalias !23498, !noundef !6
  %i.y = icmp ult i32 %.val.i.i.i, %.val1.i.pre.i.i
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %i.u, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.011.1.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.z, i64 72, i1 false), !alias.scope !23499, !noalias !23500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.01.0.i.i, i64 72, i1 false), !noalias !23498
  %i.aa = zext i1 %i.y to i64
  %i.ab = add i64 %.sroa.19.1.i.i, %i.aa          ; 6 uses
  %.sroa.11.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 72
  br i1 %i.x, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1E_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvXNvMsp_NtNtNtB3m_5types5class14static_literalNtB5i_18StaticClassLiteral16own_fields_innerB5U_NtB5c_11InnerTrait_17own_fields_inner_s1_0E0EB3m_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.11.025.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.i.i ], [ %.sroa.11.022.i.i, %bb.d ] ; 5 uses
  %.sroa.011.024.i.i = phi ptr [ %.sroa.11.025.i.i, %.lr.ph.i.i ], [ %i.u, %bb.d ]
  %.sroa.19.023.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.val.i9.i.i = load i32, ptr %.sroa.11.025.i.i, align 8, !range !19, !alias.scope !23499, !noalias !23501, !noundef !6
  %i.ac = icmp ult i32 %.val.i9.i.i, %.val1.i.pre.i.i
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.u, i64 %.sroa.19.023.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.011.024.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false), !alias.scope !23499, !noalias !23501
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.11.025.i.i, i64 72, i1 false), !alias.scope !23499, !noalias !23501
  %i.ae = zext i1 %i.ac to i64
  %i.af = add i64 %.sroa.19.023.i.i, %i.ae        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.025.i.i, i64 72 ; 3 uses
  %i.ag = icmp ult ptr %.sroa.11.0.i.i, %i.w
  br i1 %i.ag, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1E_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvXNvMsp_NtNtNtB3m_5types5class14static_literalNtB5i_18StaticClassLiteral16own_fields_innerB5U_NtB5c_11InnerTrait_17own_fields_inner_s1_0E0EB3m_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23496
  %.not7.i = icmp ult i64 %i.ab, %.sroa.15.073110
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtBB_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultE12split_at_mutB2i_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1E_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvXNvMsp_NtNtNtB3m_5types5class14static_literalNtB5i_18StaticClassLiteral16own_fields_innerB5U_NtB5c_11InnerTrait_17own_fields_inner_s1_0E0EB3m_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtBB_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultE12split_at_mutB2i_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1E_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvXNvMsp_NtNtNtB3m_5types5class14static_literalNtB5i_18StaticClassLiteral16own_fields_innerB5U_NtB5c_11InnerTrait_17own_fields_inner_s1_0E0EB3m_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtBB_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultE14swap_uncheckedB2i_(ptr noalias noundef nonnull align 8 %.sroa.0.074109, i64 noundef range(i64 33, 128102389400760776) %.sroa.15.073110, i64 noundef 0, i64 noundef %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.ah = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.074109, i64 %i.ab ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = xor i64 %i.ab, -1
  %i.ak = add i64 %.sroa.15.073110, %i.aj
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1e_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB17_20sort_unstable_by_keyB18_NCNvXNvMsp_NtNtNtB2W_5types5class14static_literalNtB4S_18StaticClassLiteral16own_fields_innerB5u_NtB4M_11InnerTrait_17own_fields_inner_s1_0E0EB2W_(ptr noalias noundef nonnull align 8 %.sroa.0.074109, i64 noundef %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) %.sroa.023.072111, i32 noundef %i.f, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.f:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1c_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvMB8_SB15_20sort_unstable_by_keyB16_NCNvXNvMsp_NtNtNtB2U_5types5class14static_literalNtB4Q_18StaticClassLiteral16own_fields_innerB5s_NtB4K_11InnerTrait_17own_fields_inner_s1_0E0EB2U_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 %i.s
  %.sroa.023.0.val = load i32, ptr %.sroa.023.072111, align 8, !range !19, !noundef !6
  %.val = load i32, ptr %i.al, align 8, !range !19, !noundef !6
  %i.am = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.am, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23502)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtBB_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultE14swap_uncheckedB2i_(ptr noalias noundef nonnull align 8 %.sroa.0.074109, i64 noundef range(i64 33, 128102389400760776) %.sroa.15.073110, i64 noundef 0, i64 noundef range(i64 0, 128102389400760775) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 72 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23504)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.an, i64 72, i1 false), !noalias !23504
  %i.ao = mul nuw nsw i64 %.sroa.15.073110, 72
  %i.ap = getelementptr i8, ptr %.sroa.0.074109, i64 %i.ao ; 2 uses
  %.sroa.11.022.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 144
  %.val1.i.pre.i.i42 = load i32, ptr %.sroa.0.074109, align 8, !range !19, !alias.scope !23506, !noalias !6 ; 2 uses
  br label %.lr.ph.i.i43

.preheader.i.i49:                                 ; preds = %.lr.ph.i.i43, %.preheader.i.i49
  %.sroa.19.1.i.i50 = phi i64 [ %i.au, %.preheader.i.i49 ], [ %i.ay, %.lr.ph.i.i43 ] ; 2 uses
  %.sroa.11.1.i.i51 = phi ptr [ %.sroa.11.1.sroa.gep.i.i55, %.preheader.i.i49 ], [ %.sroa.11.0.i.i48, %.lr.ph.i.i43 ] ; 4 uses
  %.sroa.011.1.i.i52 = phi ptr [ %.sroa.11.1.i.i51, %.preheader.i.i49 ], [ %.sroa.11.025.i.i44, %.lr.ph.i.i43 ]
  %i.aq = icmp eq ptr %.sroa.11.1.i.i51, %i.ap    ; 2 uses
  %.sroa.01.0.i.i53 = select i1 %i.aq, ptr %i.a, ptr %.sroa.11.1.i.i51 ; 2 uses
  %.val.i.i.i54 = load i32, ptr %.sroa.01.0.i.i53, align 8, !range !19, !noalias !23507, !noundef !6
  %i.ar = icmp uge i32 %.val1.i.pre.i.i42, %.val.i.i.i54
  %i.as = getelementptr inbounds nuw [72 x i8], ptr %i.an, i64 %.sroa.19.1.i.i50 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.011.1.i.i52, ptr noundef nonnull align 8 dereferenceable(72) %i.as, i64 72, i1 false), !alias.scope !23508, !noalias !23509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.01.0.i.i53, i64 72, i1 false), !noalias !23507
  %i.at = zext i1 %i.ar to i64
  %i.au = add i64 %.sroa.19.1.i.i50, %i.at        ; 4 uses
  %.sroa.11.1.sroa.gep.i.i55 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i51, i64 72
  br i1 %i.aq, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1E_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvXNvMsp_NtNtNtB3m_5types5class14static_literalNtB5E_18StaticClassLiteral16own_fields_innerB6g_NtB5y_11InnerTrait_17own_fields_inner_s1_0E0E0EB3m_.exit.i, label %.preheader.i.i49

.lr.ph.i.i43:                                     ; preds = %.lr.ph.i.i43, %bb.g
  %.sroa.11.025.i.i44 = phi ptr [ %.sroa.11.0.i.i48, %.lr.ph.i.i43 ], [ %.sroa.11.022.i.i41, %bb.g ] ; 5 uses
  %.sroa.011.024.i.i45 = phi ptr [ %.sroa.11.025.i.i44, %.lr.ph.i.i43 ], [ %i.an, %bb.g ]
  %.sroa.19.023.i.i46 = phi i64 [ %i.ay, %.lr.ph.i.i43 ], [ 0, %bb.g ] ; 2 uses
  %.val.i9.i.i47 = load i32, ptr %.sroa.11.025.i.i44, align 8, !range !19, !alias.scope !23508, !noalias !23510, !noundef !6
  %i.av = icmp uge i32 %.val1.i.pre.i.i42, %.val.i9.i.i47
  %i.aw = getelementptr inbounds nuw [72 x i8], ptr %i.an, i64 %.sroa.19.023.i.i46 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.011.024.i.i45, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false), !alias.scope !23508, !noalias !23510
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.11.025.i.i44, i64 72, i1 false), !alias.scope !23508, !noalias !23510
  %i.ax = zext i1 %i.av to i64
  %i.ay = add i64 %.sroa.19.023.i.i46, %i.ax      ; 2 uses
  %.sroa.11.0.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.11.025.i.i44, i64 72 ; 3 uses
  %i.az = icmp ult ptr %.sroa.11.0.i.i48, %i.ap
  br i1 %i.az, label %.lr.ph.i.i43, label %.preheader.i.i49

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1E_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvXNvMsp_NtNtNtB3m_5types5class14static_literalNtB5E_18StaticClassLiteral16own_fields_innerB6g_NtB5y_11InnerTrait_17own_fields_inner_s1_0E0E0EB3m_.exit.i: ; preds = %.preheader.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23505
  %.not7.i56 = icmp ult i64 %i.au, %.sroa.15.073110
  br i1 %.not7.i56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1E_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvXNvMsp_NtNtNtB3m_5types5class14static_literalNtB5E_18StaticClassLiteral16own_fields_innerB6g_NtB5y_11InnerTrait_17own_fields_inner_s1_0E0E0EB3m_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1E_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvXNvMsp_NtNtNtB3m_5types5class14static_literalNtB5E_18StaticClassLiteral16own_fields_innerB6g_NtB5y_11InnerTrait_17own_fields_inner_s1_0E0E0EB3m_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtBB_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultE14swap_uncheckedB2i_(ptr noalias noundef nonnull align 8 %.sroa.0.074109, i64 noundef range(i64 33, 128102389400760776) %.sroa.15.073110, i64 noundef 0, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.ba = add nuw nsw i64 %i.au, 1                ; 2 uses
  %i.bb = sub nuw nsw i64 %.sroa.15.073110, %i.ba
  %i.bc = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.074109, i64 %i.ba
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtBB_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultE12split_at_mutB2i_.exit
  %.sroa.023.0.be = phi ptr [ %i.ah, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtBB_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultE12split_at_mutB2i_.exit ], [ null, %bb.i ]
  %.sroa.15.0.be = phi i64 [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtBB_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultE12split_at_mutB2i_.exit ], [ %i.bb, %bb.i ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.ai, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtBB_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultE12split_at_mutB2i_.exit ], [ %i.bc, %bb.i ] ; 3 uses
  %i.bd = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.bd, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1e_10definition10DefinitionENCINvMB8_SB17_20sort_unstable_by_keyB18_NCNvMsp_NtNtB38_5class14static_literalNtB5m_18StaticClassLiteral24own_annotated_qualifiers0E0EB3a_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(32) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph118

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph118

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1m_10definition10DefinitionENCINvMB8_SB1f_20sort_unstable_by_keyB1g_NCNvMsp_NtNtB3g_5class14static_literalNtB5u_18StaticClassLiteral24own_annotated_qualifiers0E0EB3i_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.078.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.077.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1c_10definition10DefinitionENCINvMB8_SB15_20sort_unstable_by_keyB16_NCNvMsp_NtNtB36_5class14static_literalNtB5k_18StaticClassLiteral24own_annotated_qualifiers0E0EB38_(ptr noalias noundef nonnull align 8 %.sroa.0.078.lcssa, i64 noundef %.sroa.15.077.lcssa, ptr noalias nonnull align 8 poison)
  br label %bb.c

.lr.ph118:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.075117 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.076116 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.077115 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.078114 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.f = add nsw i32 %.sroa.026.075117, -1        ; 3 uses
  %i.g = lshr i64 %.sroa.15.077115, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 7
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 224
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.15.077115, 64
  br i1 %i.j, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB16_10definition10DefinitionENCINvMB8_SBZ_20sort_unstable_by_keyB10_NCNvMsp_NtNtB30_5class14static_literalNtB5d_18StaticClassLiteral24own_annotated_qualifiers0E0EB32_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph118
  %i.k = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1b_10definition10DefinitionENCINvMB8_SB14_20sort_unstable_by_keyB15_NCNvMsp_NtNtB35_5class14static_literalNtB5j_18StaticClassLiteral24own_annotated_qualifiers0E0EB37_(ptr noundef nonnull readonly align 8 %.sroa.0.078114, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1c_10definition10DefinitionENCINvMB8_SB15_20sort_unstable_by_keyB16_NCNvMsp_NtNtB36_5class14static_literalNtB5k_18StaticClassLiteral24own_annotated_qualifiers0E0EB38_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB16_10definition10DefinitionENCINvMB8_SBZ_20sort_unstable_by_keyB10_NCNvMsp_NtNtB30_5class14static_literalNtB5d_18StaticClassLiteral24own_annotated_qualifiers0E0EB32_.exit.i: ; preds = %.lr.ph118
  %i.l = getelementptr i8, ptr %.sroa.0.078114, i64 16
  %.val6.i = load i32, ptr %i.l, align 8, !range !19, !alias.scope !23531, !noundef !6 ; 2 uses
  %i.m = getelementptr i8, ptr %i.h, i64 16
  %.val7.i = load i32, ptr %i.m, align 8, !range !19, !alias.scope !23531, !noundef !6 ; 2 uses
  %i.n = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 16
  %.val5.i = load i32, ptr %i.o, align 8, !range !19, !alias.scope !23531, !noundef !6 ; 2 uses
  %i.p = icmp ult i32 %.val6.i, %.val5.i
  %i.q = xor i1 %i.n, %i.p
  %i.r = icmp ult i32 %.val7.i, %.val5.i
  %i.s = xor i1 %i.n, %i.r
  %..i.i = select i1 %i.s, ptr %i.i, ptr %i.h
  %.sroa.0.0.i.i = select i1 %i.q, ptr %.sroa.0.078114, ptr %..i.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1c_10definition10DefinitionENCINvMB8_SB15_20sort_unstable_by_keyB16_NCNvMsp_NtNtB36_5class14static_literalNtB5k_18StaticClassLiteral24own_annotated_qualifiers0E0EB38_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1c_10definition10DefinitionENCINvMB8_SB15_20sort_unstable_by_keyB16_NCNvMsp_NtNtB36_5class14static_literalNtB5k_18StaticClassLiteral24own_annotated_qualifiers0E0EB38_.exit: ; preds = %bb.b, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB16_10definition10DefinitionENCINvMB8_SBZ_20sort_unstable_by_keyB10_NCNvMsp_NtNtB30_5class14static_literalNtB5d_18StaticClassLiteral24own_annotated_qualifiers0E0EB32_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB16_10definition10DefinitionENCINvMB8_SBZ_20sort_unstable_by_keyB10_NCNvMsp_NtNtB30_5class14static_literalNtB5d_18StaticClassLiteral24own_annotated_qualifiers0E0EB32_.exit.i ], [ %i.k, %bb.b ]
  %i.t = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.u = ptrtoint ptr %.sroa.0.078114 to i64
  %i.v = sub nuw i64 %i.t, %i.u                   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.v, 5           ; 3 uses
  %i.w = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.077115
  tail call void @llvm.assume(i1 %i.w)
  %.not = icmp eq ptr %.sroa.023.076116, null
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1c_10definition10DefinitionENCINvMB8_SB15_20sort_unstable_by_keyB16_NCNvMsp_NtNtB36_5class14static_literalNtB5k_18StaticClassLiteral24own_annotated_qualifiers0E0EB38_.exit, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23532)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtBB_10definition10DefinitionE14swap_uncheckedB2x_(ptr noalias noundef nonnull align 8 %.sroa.0.078114, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.077115, i64 noundef 0, i64 noundef range(i64 0, 288230376151711743) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23534)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false), !noalias !23534
  %i.y = shl nuw nsw i64 %.sroa.15.077115, 5
  %i.z = getelementptr i8, ptr %.sroa.0.078114, i64 %i.y ; 2 uses
  %.sroa.11.025.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 64
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 16
  %.val1.i.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !range !19, !alias.scope !23536, !noalias !6 ; 2 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.ae, %.preheader.i.i ], [ %i.aj, %.lr.ph.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep19.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.i.i ] ; 5 uses
  %.sroa.011.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.028.i.i, %.lr.ph.i.i ]
  %i.aa = icmp eq ptr %.sroa.11.1.i.i, %i.z       ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.aa, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aa, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val.i.i.i = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !range !19, !noalias !23537, !noundef !6
  %i.ab = icmp ult i32 %.val.i.i.i, %.val1.i.pre.i.i
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !alias.scope !23538, !noalias !23539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.i.i, i64 32, i1 false), !noalias !23537
  %i.ad = zext i1 %i.ab to i64
  %i.ae = add i64 %.sroa.19.1.i.i, %i.ad          ; 6 uses
  %.sroa.11.1.sroa.gep19.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 32
  br i1 %i.aa, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1E_10definition10DefinitionENCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvMsp_NtNtB3y_5class14static_literalNtB5M_18StaticClassLiteral24own_annotated_qualifiers0E0EB3A_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.11.028.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.i.i ], [ %.sroa.11.025.i.i, %bb.d ] ; 4 uses
  %.sroa.011.027.i.i = phi ptr [ %.sroa.11.028.i.i, %.lr.ph.i.i ], [ %i.x, %bb.d ] ; 2 uses
  %.sroa.19.026.i.i = phi i64 [ %i.aj, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.af = getelementptr i8, ptr %.sroa.011.027.i.i, i64 48
  %.val.i9.i.i = load i32, ptr %i.af, align 8, !range !19, !alias.scope !23538, !noalias !23540, !noundef !6
  %i.ag = icmp ult i32 %.val.i9.i.i, %.val1.i.pre.i.i
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %.sroa.19.026.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.027.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !alias.scope !23538, !noalias !23540
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.028.i.i, i64 32, i1 false), !alias.scope !23538, !noalias !23540
  %i.ai = zext i1 %i.ag to i64
  %i.aj = add i64 %.sroa.19.026.i.i, %i.ai        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.028.i.i, i64 32 ; 3 uses
  %i.ak = icmp ult ptr %.sroa.11.0.i.i, %i.z
  br i1 %i.ak, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1E_10definition10DefinitionENCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvMsp_NtNtB3y_5class14static_literalNtB5M_18StaticClassLiteral24own_annotated_qualifiers0E0EB3A_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23535
  %.not7.i = icmp ult i64 %i.ae, %.sroa.15.077115
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtBB_10definition10DefinitionE12split_at_mutB2x_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1E_10definition10DefinitionENCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvMsp_NtNtB3y_5class14static_literalNtB5M_18StaticClassLiteral24own_annotated_qualifiers0E0EB3A_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtBB_10definition10DefinitionE12split_at_mutB2x_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1E_10definition10DefinitionENCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvMsp_NtNtB3y_5class14static_literalNtB5M_18StaticClassLiteral24own_annotated_qualifiers0E0EB3A_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtBB_10definition10DefinitionE14swap_uncheckedB2x_(ptr noalias noundef nonnull align 8 %.sroa.0.078114, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.077115, i64 noundef 0, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.078114, i64 %i.ae ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = xor i64 %i.ae, -1
  %i.ao = add i64 %.sroa.15.077115, %i.an
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1e_10definition10DefinitionENCINvMB8_SB17_20sort_unstable_by_keyB18_NCNvMsp_NtNtB38_5class14static_literalNtB5m_18StaticClassLiteral24own_annotated_qualifiers0E0EB3a_(ptr noalias noundef nonnull align 8 %.sroa.0.078114, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.sroa.023.076116, i32 noundef %i.f, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.f:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1c_10definition10DefinitionENCINvMB8_SB15_20sort_unstable_by_keyB16_NCNvMsp_NtNtB36_5class14static_literalNtB5k_18StaticClassLiteral24own_annotated_qualifiers0E0EB38_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 %i.v
  %i.aq = getelementptr i8, ptr %.sroa.023.076116, i64 16
  %.sroa.023.0.val = load i32, ptr %i.aq, align 8, !range !19, !noundef !6
  %i.ar = getelementptr i8, ptr %i.ap, i64 16
  %.val = load i32, ptr %i.ar, align 8, !range !19, !noundef !6
  %i.as = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.as, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23541)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtBB_10definition10DefinitionE14swap_uncheckedB2x_(ptr noalias noundef nonnull align 8 %.sroa.0.078114, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.077115, i64 noundef 0, i64 noundef range(i64 0, 288230376151711743) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23543)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false), !noalias !23543
  %i.au = shl nuw nsw i64 %.sroa.15.077115, 5
  %i.av = getelementptr i8, ptr %.sroa.0.078114, i64 %i.au ; 2 uses
  %.sroa.11.025.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 64
  %.phi.trans.insert.i.i42 = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 16
  %.val1.i.pre.i.i43 = load i32, ptr %.phi.trans.insert.i.i42, align 8, !range !19, !alias.scope !23545, !noalias !6 ; 2 uses
  br label %.lr.ph.i.i44

.preheader.i.i50:                                 ; preds = %.lr.ph.i.i44, %.preheader.i.i50
  %.sroa.19.1.i.i51 = phi i64 [ %i.ba, %.preheader.i.i50 ], [ %i.bf, %.lr.ph.i.i44 ] ; 2 uses
  %.sroa.11.1.i.i52 = phi ptr [ %.sroa.11.1.sroa.gep19.i.i58, %.preheader.i.i50 ], [ %.sroa.11.0.i.i49, %.lr.ph.i.i44 ] ; 5 uses
  %.sroa.011.1.i.i53 = phi ptr [ %.sroa.11.1.i.i52, %.preheader.i.i50 ], [ %.sroa.11.028.i.i45, %.lr.ph.i.i44 ]
  %i.aw = icmp eq ptr %.sroa.11.1.i.i52, %i.av    ; 3 uses
  %.sroa.01.0.i.i54 = select i1 %i.aw, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aw, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val.i.i.i57 = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !range !19, !noalias !23546, !noundef !6
  %i.ax = icmp uge i32 %.val1.i.pre.i.i43, %.val.i.i.i57
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %.sroa.19.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.1.i.i53, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false), !alias.scope !23547, !noalias !23548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.i.i54, i64 32, i1 false), !noalias !23546
  %i.az = zext i1 %i.ax to i64
  %i.ba = add i64 %.sroa.19.1.i.i51, %i.az        ; 4 uses
  %.sroa.11.1.sroa.gep19.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i52, i64 32
  br i1 %i.aw, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1E_10definition10DefinitionENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvMsp_NtNtB3y_5class14static_literalNtB68_18StaticClassLiteral24own_annotated_qualifiers0E0E0EB3A_.exit.i, label %.preheader.i.i50

.lr.ph.i.i44:                                     ; preds = %.lr.ph.i.i44, %bb.g
  %.sroa.11.028.i.i45 = phi ptr [ %.sroa.11.0.i.i49, %.lr.ph.i.i44 ], [ %.sroa.11.025.i.i41, %bb.g ] ; 4 uses
  %.sroa.011.027.i.i46 = phi ptr [ %.sroa.11.028.i.i45, %.lr.ph.i.i44 ], [ %i.at, %bb.g ] ; 2 uses
  %.sroa.19.026.i.i47 = phi i64 [ %i.bf, %.lr.ph.i.i44 ], [ 0, %bb.g ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.sroa.011.027.i.i46, i64 48
  %.val.i9.i.i48 = load i32, ptr %i.bb, align 8, !range !19, !alias.scope !23547, !noalias !23549, !noundef !6
  %i.bc = icmp uge i32 %.val1.i.pre.i.i43, %.val.i9.i.i48
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %.sroa.19.026.i.i47 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.027.i.i46, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 32, i1 false), !alias.scope !23547, !noalias !23549
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.028.i.i45, i64 32, i1 false), !alias.scope !23547, !noalias !23549
  %i.be = zext i1 %i.bc to i64
  %i.bf = add i64 %.sroa.19.026.i.i47, %i.be      ; 2 uses
  %.sroa.11.0.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.11.028.i.i45, i64 32 ; 3 uses
  %i.bg = icmp ult ptr %.sroa.11.0.i.i49, %i.av
  br i1 %i.bg, label %.lr.ph.i.i44, label %.preheader.i.i50

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1E_10definition10DefinitionENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvMsp_NtNtB3y_5class14static_literalNtB68_18StaticClassLiteral24own_annotated_qualifiers0E0E0EB3A_.exit.i: ; preds = %.preheader.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23544
  %.not7.i59 = icmp ult i64 %i.ba, %.sroa.15.077115
  br i1 %.not7.i59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1E_10definition10DefinitionENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvMsp_NtNtB3y_5class14static_literalNtB68_18StaticClassLiteral24own_annotated_qualifiers0E0E0EB3A_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB1E_10definition10DefinitionENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyB1y_NCNvMsp_NtNtB3y_5class14static_literalNtB68_18StaticClassLiteral24own_annotated_qualifiers0E0E0EB3A_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtBB_10definition10DefinitionE14swap_uncheckedB2x_(ptr noalias noundef nonnull align 8 %.sroa.0.078114, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.077115, i64 noundef 0, i64 noundef %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.bh = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bi = sub nuw nsw i64 %.sroa.15.077115, %i.bh
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.078114, i64 %i.bh
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtBB_10definition10DefinitionE12split_at_mutB2x_.exit
  %.sroa.023.0.be = phi ptr [ %i.al, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtBB_10definition10DefinitionE12split_at_mutB2x_.exit ], [ null, %bb.i ]
  %.sroa.15.0.be = phi i64 [ %i.ao, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtBB_10definition10DefinitionE12split_at_mutB2x_.exit ], [ %i.bi, %bb.i ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.am, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtBB_10definition10DefinitionE12split_at_mutB2x_.exit ], [ %i.bj, %bb.i ] ; 3 uses
  %i.bk = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.bk, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 12 uses
  %i.d = alloca [768 x i8], align 8               ; 15 uses
  %i.e = icmp samesign ult i64 %1, 33
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.h = icmp eq i32 %3, 0
  br i1 %i.h, label %._crit_edge235, label %.lr.ph234

bb.b:                                             ; preds = %.backedge
  %i.i = icmp eq i32 %i.cq, 0
  br i1 %i.i, label %._crit_edge235, label %.lr.ph234

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 9 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23719
  call void @llvm.experimental.noalias.scope.decl(metadata !23720)
  call void @llvm.experimental.noalias.scope.decl(metadata !23721)
  %i.j = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.j, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.k = lshr i64 %.sroa.15.0.lcssa, 1            ; 10 uses
  %i.l = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.k ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB19_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.d, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB19_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noundef %i.q, ptr noundef %i.r, ptr noundef %i.s)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB19_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.d)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB19_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noundef %i.n, ptr noundef %i.o)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !alias.scope !23722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !alias.scope !23722
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.e ], [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.t = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.k  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.v = icmp samesign ult i64 %.sroa.0.0.i.i, %i.k
  br i1 %i.v, label %.noexc35.i.i, label %.loopexit4.i.i

.loopexit4.i.i:                                   ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.i.i, %bb.h
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k
  %i.x = getelementptr [16 x i8], ptr %i.d, i64 %i.k ; 5 uses
  %i.y = icmp samesign ult i64 %.sroa.0.0.i.i, %i.t
  br i1 %i.y, label %.noexc35.1.i.i, label %.loopexit4.1.i.i

.noexc35.1.i.i:                                   ; preds = %.loopexit4.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i
  %.sroa.05.010.1.i.i = phi i64 [ %i.ar, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit4.i.i ] ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.sroa.05.010.1.i.i
  %.idx.1.i.i = shl nuw nsw i64 %.sroa.05.010.1.i.i, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.1.i.i ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !23722
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23723)
  call void @llvm.experimental.noalias.scope.decl(metadata !23724)
  call void @llvm.experimental.noalias.scope.decl(metadata !23725)
  call void @llvm.experimental.noalias.scope.decl(metadata !23726)
  %i.ac = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab)
  switch i8 %i.ac, label %._crit_edge.i34.1.i.i [
    i8 2, label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.1.i.i
    i8 0, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i
  ]

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.1.i.i: ; preds = %.noexc35.1.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -8
  call void @llvm.experimental.noalias.scope.decl(metadata !23727)
  call void @llvm.experimental.noalias.scope.decl(metadata !23728)
  %i.af = load i64, ptr %i.ad, align 8, !alias.scope !23729, !noalias !23719, !noundef !6 ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !alias.scope !23730, !noalias !23719, !noundef !6
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i

._crit_edge.i34.1.i.i:                            ; preds = %.noexc35.1.i.i
  %.phi.trans.insert.i.1.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.pre.i.1.i.i = load i64, ptr %.phi.trans.insert.i.1.i.i, align 8, !alias.scope !23721, !noalias !23719
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i34.1.i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.1.i.i
  %i.ai = phi i64 [ %.pre.i.1.i.i, %._crit_edge.i34.1.i.i ], [ %i.af, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.1.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23731
  %i.aj = load i8, ptr %i.aa, align 8, !range !33, !alias.scope !23721, !noalias !23719, !noundef !6
  store i8 %i.aj, ptr %i.c, align 8, !noalias !23731
  store i64 %i.ai, ptr %i.u, align 8, !noalias !23731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !23721, !noalias !23719
  %i.ak = icmp eq i64 %.sroa.05.010.1.i.i, 1
  br i1 %i.ak, label %.noexc._crit_edge.i.1.i.i, label %.lr.ph.i33.1.i.i

.lr.ph.i33.1.i.i:                                 ; preds = %bb.i, %.backedge.i.1.i.i
  %.sroa.0.07.i.1.i.i = phi ptr [ %i.al, %.backedge.i.1.i.i ], [ %i.ab, %bb.i ] ; 6 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.07.i.1.i.i, i64 -16 ; 4 uses
  %i.am = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc.i.1.i.i unwind label %.loopexit.split-lp17.i.i

.noexc.i.1.i.i:                                   ; preds = %.lr.ph.i33.1.i.i
  switch i8 %i.am, label %.backedge.i.1.i.i [
    i8 2, label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i
    i8 0, label %.noexc._crit_edge.i.1.i.i
  ]

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i: ; preds = %.noexc.i.1.i.i
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.07.i.1.i.i, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !23732, !noalias !23719, !noundef !6
  %i.ap = icmp ult i64 %i.ai, %i.ao
  br i1 %i.ap, label %.backedge.i.1.i.i, label %.noexc._crit_edge.i.1.i.i

.backedge.i.1.i.i:                                ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i, %.noexc.i.1.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !23721, !noalias !23719
  %i.aq = icmp eq ptr %i.al, %i.x
  br i1 %i.aq, label %.noexc._crit_edge.i.1.i.i, label %.lr.ph.i33.1.i.i

.noexc._crit_edge.i.1.i.i:                        ; preds = %.backedge.i.1.i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i, %.noexc.i.1.i.i, %bb.i
  %.sroa.0.0.lcssa.i.1.i.i = phi ptr [ %i.ab, %bb.i ], [ %i.x, %.backedge.i.1.i.i ], [ %.sroa.0.07.i.1.i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i ], [ %.sroa.0.07.i.1.i.i, %.noexc.i.1.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa.i.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !23733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23731
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i: ; preds = %.noexc._crit_edge.i.1.i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.1.i.i, %.noexc35.1.i.i
  %i.ar = add nuw nsw i64 %.sroa.05.010.1.i.i, 1  ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %i.ar, %i.t
  br i1 %exitcond.1.not.i.i, label %.loopexit4.1.i.i, label %.noexc35.1.i.i

.loopexit4.1.i.i:                                 ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i, %.loopexit4.i.i
  %i.as = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.as
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.as
  %i.av = getelementptr i8, ptr %i.x, i64 -16
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i
  %i.aw = getelementptr i8, ptr %i.bs, i64 16     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.br, i64 16
  %i.ay = and i64 %.sroa.15.0.lcssa, 1
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.o, label %bb.n

.lr.ph.i.i.i:                                     ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i, %.loopexit4.1.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %i.bi, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %.sroa.0.0.lcssa, %.loopexit4.1.i.i ] ; 2 uses
  %.sroa.04.09.i.i.i = phi i64 [ %i.ba, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ 0, %.loopexit4.1.i.i ]
  %.sroa.06.08.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.d, %.loopexit4.1.i.i ] ; 4 uses
  %.sroa.011.07.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.x, %.loopexit4.1.i.i ] ; 4 uses
  %.sroa.015.06.i.i.i = phi ptr [ %i.bs, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.av, %.loopexit4.1.i.i ] ; 4 uses
  %.sroa.017.05.i.i.i = phi ptr [ %i.br, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.au, %.loopexit4.1.i.i ] ; 4 uses
  %.sroa.019.04.i.i.i = phi ptr [ %i.bt, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.at, %.loopexit4.1.i.i ] ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.04.09.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23734)
  call void @llvm.experimental.noalias.scope.decl(metadata !23735)
  call void @llvm.experimental.noalias.scope.decl(metadata !23736)
  call void @llvm.experimental.noalias.scope.decl(metadata !23737)
  %i.bb = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.011.07.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.06.08.i.i.i)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.i.i = icmp eq i8 %i.bb, 2
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc.i.i
  %i.bc = trunc nuw i8 %i.bb to i1
  br label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i.i.i

bb.k:                                             ; preds = %.noexc.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i.i, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 8
end_hunk_10
begin_hunk_11_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1e_:bb.a
  %.sroa.019.2.ph.i.i = phi ptr [ %.sroa.019.043.i.i, %.lr.ph.i.i ], [ %.sroa.13.044.i.i, %bb.ai ]
  %lpad.loopexit.split-lp.i.i39 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i35
  %.sroa.019.2.i.i = phi ptr [ %.sroa.019.1.i.i, %.loopexit.i.i35 ], [ %.sroa.019.2.ph.i.i, %.loopexit.split-lp.i.i ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i35 ], [ %lpad.loopexit.split-lp.i.i39, %.loopexit.split-lp.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.2.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !23788
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1E_.exit.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23789
  %.not7.i = icmp ult i64 %i.en, %.sroa.15.0113231
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE12split_at_mutBB_.exit, label %bb.am

bb.am:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1E_.exit.i
  call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE12split_at_mutBB_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1E_.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE14swap_uncheckedBB_(ptr noalias noundef nonnull align 8 %.sroa.0.0114230, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0113231, i64 noundef 0, i64 noundef %i.en, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0114230, i64 %i.en ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = xor i64 %i.en, -1
  %i.fj = add i64 %.sroa.15.0113231, %i.fi
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noalias noundef nonnull align 8 %.sroa.0.0114230, i64 noundef %i.en, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.0112232, i32 noundef %i.cq, ptr noalias noundef nonnull %4)
  br label %.backedge

bb.an:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0114230, i64 %i.dv ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23799)
  call void @llvm.experimental.noalias.scope.decl(metadata !23800)
  call void @llvm.experimental.noalias.scope.decl(metadata !23801)
  call void @llvm.experimental.noalias.scope.decl(metadata !23802)
  %i.fl = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.023.0112232, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fk)
  switch i8 %i.fl, label %bb.ac [
    i8 2, label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit
    i8 0, label %bb.ao
  ]

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit: ; preds = %bb.an
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.023.0112232, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !23803)
  call void @llvm.experimental.noalias.scope.decl(metadata !23804)
  %i.fo = load i64, ptr %i.fm, align 8, !alias.scope !23805, !noundef !6
  %i.fp = load i64, ptr %i.fn, align 8, !alias.scope !23806, !noundef !6
  %i.fq = icmp ult i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.ac, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23807)
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE14swap_uncheckedBB_(ptr noalias noundef nonnull align 8 %.sroa.0.0114230, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0113231, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0114230, i64 16 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23808)
  call void @llvm.experimental.noalias.scope.decl(metadata !23809)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23810
  %i.fs = load i8, ptr %i.fr, align 8, !range !33, !alias.scope !23811, !noundef !6
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0114230, i64 24
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !23811, !noundef !6
  store i8 %i.fs, ptr %i.a, align 8, !noalias !23810
  store i64 %i.fu, ptr %i.f, align 8, !noalias !23810
  %i.fv = getelementptr [16 x i8], ptr %.sroa.0.0114230, i64 %.sroa.15.0113231 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -16    ; 2 uses
  %.sroa.13.041.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.0.0114230, i64 32 ; 3 uses
  %i.fx = icmp ult ptr %.sroa.13.041.i.i48, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.0114230, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !23812 ; 3 uses
  br i1 %i.fx, label %.lr.ph.i.i66, label %.preheader.i.i49.preheader

.preheader.i.i49.preheader:                       ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i, %bb.ao
  %.sroa.23.1.i.i53.ph = phi i64 [ 0, %bb.ao ], [ %i.hb, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i ]
  %.sroa.13.1.i.i54.ph = phi ptr [ %.sroa.13.041.i.i48, %bb.ao ], [ %.sroa.13.0.i.i75, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i ]
  %.sroa.019.1.i.i55.ph = phi ptr [ %i.fr, %bb.ao ], [ %i.gs, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i ]
  br label %.preheader.i.i49

.preheader.i.i49:                                 ; preds = %.preheader.i.i49.preheader, %bb.ar
  %.sroa.23.1.i.i53 = phi i64 [ %i.gi, %bb.ar ], [ %.sroa.23.1.i.i53.ph, %.preheader.i.i49.preheader ] ; 2 uses
  %.sroa.13.1.i.i54 = phi ptr [ %.sroa.13.1.sroa.gep.i.i62, %bb.ar ], [ %.sroa.13.1.i.i54.ph, %.preheader.i.i49.preheader ] ; 5 uses
  %.sroa.019.1.i.i55 = phi ptr [ %.sroa.13.1.i.i54, %bb.ar ], [ %.sroa.019.1.i.i55.ph, %.preheader.i.i49.preheader ] ; 2 uses
  %i.ga = icmp eq ptr %.sroa.13.1.i.i54, %i.fv    ; 3 uses
  %.sroa.01.0.i.i56 = select i1 %i.ga, ptr %i.a, ptr %.sroa.13.1.i.i54 ; 2 uses
  %i.gb = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0114230, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.01.0.i.i56)
          to label %.noexc.i.i61 unwind label %.loopexit.i.i57 ; 2 uses

.noexc.i.i61:                                     ; preds = %.preheader.i.i49
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gb, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.noexc.i.i61
  %i.gc = trunc nuw i8 %i.gb to i1
  br label %bb.ar

bb.aq:                                            ; preds = %.noexc.i.i61
  %.sroa.13.1.sroa.gep30.i.i64 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i54, i64 8
  %.sroa.01.0.sroa.sel31.i.i65 = select i1 %i.ga, ptr %i.f, ptr %.sroa.13.1.sroa.gep30.i.i64
  %i.gd = load i64, ptr %.sroa.01.0.sroa.sel31.i.i65, align 8, !alias.scope !23813, !noalias !23814, !noundef !6
  %i.ge = icmp ult i64 %i.fz, %i.gd
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.0.0.i.i.i.i.i.i = phi i1 [ %i.gc, %bb.ap ], [ %i.ge, %bb.aq ]
  %i.gf = xor i1 %.sroa.0.0.i.i.i.i.i.i, true
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %.sroa.23.1.i.i53 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.1.i.i55, ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i64 16, i1 false), !alias.scope !23811, !noalias !23815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i56, i64 16, i1 false), !noalias !23814
  %i.gh = zext i1 %i.gf to i64
  %i.gi = add i64 %.sroa.23.1.i.i53, %i.gh        ; 4 uses
  %.sroa.13.1.sroa.gep.i.i62 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i54, i64 16
  br i1 %i.ga, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1E_.exit.i, label %.preheader.i.i49

.lr.ph.i.i66:                                     ; preds = %bb.ao, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i
  %.sroa.13.044.i.i67 = phi ptr [ %.sroa.13.0.i.i75, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i ], [ %.sroa.13.041.i.i48, %bb.ao ] ; 4 uses
  %.sroa.019.043.i.i68 = phi ptr [ %i.gs, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i ], [ %i.fr, %bb.ao ] ; 6 uses
  %.sroa.23.042.i.i69 = phi i64 [ %i.hb, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i ], [ 0, %bb.ao ] ; 2 uses
  %i.gj = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0114230, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.13.044.i.i67)
          to label %.noexc13.i.i73 unwind label %.loopexit.split-lp.i.i70 ; 2 uses

.noexc13.i.i73:                                   ; preds = %.lr.ph.i.i66
  %.not.i.i.i.i11.i.i = icmp eq i8 %i.gj, 2
  br i1 %.not.i.i.i.i11.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.noexc13.i.i73
  %i.gk = trunc nuw i8 %i.gj to i1
  br label %bb.au

bb.at:                                            ; preds = %.noexc13.i.i73
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.019.043.i.i68, i64 24
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !23816, !noalias !23817, !noundef !6
  %i.gn = icmp ult i64 %i.fz, %i.gm
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sroa.0.0.i.i.i.i12.i.i = phi i1 [ %i.gk, %bb.as ], [ %i.gn, %bb.at ]
  %i.go = xor i1 %.sroa.0.0.i.i.i.i12.i.i, true
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %.sroa.23.042.i.i69 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.043.i.i68, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false), !alias.scope !23811, !noalias !23817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.044.i.i67, i64 16, i1 false), !alias.scope !23811, !noalias !23817
  %i.gq = zext i1 %i.go to i64
  %i.gr = add i64 %.sroa.23.042.i.i69, %i.gq      ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.019.043.i.i68, i64 32 ; 4 uses
  %i.gt = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0114230, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gs)
          to label %.noexc17.i.i74 unwind label %.loopexit.split-lp.i.i70 ; 2 uses

.noexc17.i.i74:                                   ; preds = %bb.au
  %.not.i.i.i.i15.i.i = icmp eq i8 %i.gt, 2
  br i1 %.not.i.i.i.i15.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.noexc17.i.i74
  %i.gu = trunc nuw i8 %i.gt to i1
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i

bb.aw:                                            ; preds = %.noexc17.i.i74
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.019.043.i.i68, i64 40
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !23818, !noalias !23819, !noundef !6
  %i.gx = icmp ult i64 %i.fz, %i.gw
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i: ; preds = %bb.aw, %bb.av
  %.sroa.0.0.i.i.i.i16.i.i = phi i1 [ %i.gu, %bb.av ], [ %i.gx, %bb.aw ]
  %i.gy = xor i1 %.sroa.0.0.i.i.i.i16.i.i, true
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %i.gr ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.044.i.i67, ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i64 16, i1 false), !alias.scope !23811, !noalias !23819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !alias.scope !23811, !noalias !23819
  %i.ha = zext i1 %i.gy to i64
  %i.hb = add i64 %i.gr, %i.ha                    ; 2 uses
  %.sroa.13.0.i.i75 = getelementptr inbounds nuw i8, ptr %.sroa.019.043.i.i68, i64 48 ; 3 uses
  %i.hc = icmp ult ptr %.sroa.13.0.i.i75, %i.fw
  br i1 %i.hc, label %.lr.ph.i.i66, label %.preheader.i.i49.preheader

.loopexit.i.i57:                                  ; preds = %.preheader.i.i49
  %lpad.loopexit.i.i58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i70:                         ; preds = %bb.au, %.lr.ph.i.i66
  %.sroa.019.2.ph.i.i71 = phi ptr [ %.sroa.019.043.i.i68, %.lr.ph.i.i66 ], [ %.sroa.13.044.i.i67, %bb.au ]
  %lpad.loopexit.split-lp.i.i72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i.i70, %.loopexit.i.i57
  %.sroa.019.2.i.i59 = phi ptr [ %.sroa.019.1.i.i55, %.loopexit.i.i57 ], [ %.sroa.019.2.ph.i.i71, %.loopexit.split-lp.i.i70 ]
  %lpad.phi.i.i60 = phi { ptr, i32 } [ %lpad.loopexit.i.i58, %.loopexit.i.i57 ], [ %lpad.loopexit.split-lp.i.i72, %.loopexit.split-lp.i.i70 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.2.i.i59, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !23809
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1E_.exit.i: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23810
  %.not7.i63 = icmp ult i64 %i.gi, %.sroa.15.0113231
  br i1 %.not7.i63, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1E_.exit.i
  call void @llvm.trap()
  unreachable

bb.az:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1E_.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE14swap_uncheckedBB_(ptr noalias noundef nonnull align 8 %.sroa.0.0114230, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0113231, i64 noundef 0, i64 noundef %i.gi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.hd = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %i.he = sub nuw nsw i64 %.sroa.15.0113231, %i.hd
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0114230, i64 %i.hd
  br label %.backedge

.backedge:                                        ; preds = %bb.az, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE12split_at_mutBB_.exit
  %.sroa.023.0.be = phi ptr [ %i.fg, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE12split_at_mutBB_.exit ], [ null, %bb.az ]
  %.sroa.15.0.be = phi i64 [ %i.fj, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE12split_at_mutBB_.exit ], [ %i.he, %bb.az ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.fh, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE12split_at_mutBB_.exit ], [ %i.hf, %bb.az ] ; 3 uses
  %i.hg = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.hg, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 12 uses
  %i.d = alloca [384 x i8], align 8               ; 16 uses
  %i.e = icmp samesign ult i64 %1, 33
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.h = icmp eq i32 %3, 0
  br i1 %i.h, label %._crit_edge233, label %.lr.ph232

bb.b:                                             ; preds = %.backedge
  %i.i = icmp eq i32 %i.de, 0
  br i1 %i.i, label %._crit_edge233, label %.lr.ph232

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 9 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23983)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23983
  call void @llvm.experimental.noalias.scope.decl(metadata !23984)
  call void @llvm.experimental.noalias.scope.decl(metadata !23985)
  %i.j = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.j, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.k = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.l = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.m, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB19_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noundef nonnull align 4 %.sroa.0.0.lcssa, ptr noundef nonnull align 4 %i.d, ptr noundef %i.n)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB19_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.q)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB19_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noundef nonnull align 4 %.sroa.0.0.lcssa, ptr noundef nonnull align 4 %i.d)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.k
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB19_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noundef %i.r, ptr noundef %i.s)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.t = load i64, ptr %.sroa.0.0.lcssa, align 4, !alias.scope !23986
  store i64 %i.t, ptr %i.d, align 8, !alias.scope !23985, !noalias !23983
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.k
  %i.w = load i64, ptr %i.u, align 4, !alias.scope !23986
  store i64 %i.w, ptr %i.v, align 8, !alias.scope !23985, !noalias !23983
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.e ], [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.x = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.k  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.z = icmp samesign ult i64 %.sroa.0.0.i.i, %i.k
  br i1 %i.z, label %.noexc35.i.i, label %.loopexit4.i.i

.loopexit4.i.i:                                   ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.i.i, %bb.h
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k
  %i.ab = getelementptr [8 x i8], ptr %i.d, i64 %i.k ; 5 uses
  %i.ac = icmp samesign ult i64 %.sroa.0.0.i.i, %i.x
  br i1 %i.ac, label %.noexc35.1.i.i, label %.loopexit4.1.i.i

.noexc35.1.i.i:                                   ; preds = %.loopexit4.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i
  %.sroa.05.010.1.i.i = phi i64 [ %i.ay, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit4.i.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.05.010.1.i.i
  %.idx.1.i.i = shl nuw nsw i64 %.sroa.05.010.1.i.i, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.1.i.i ; 5 uses
  %i.af = load i64, ptr %i.ad, align 4, !alias.scope !23986 ; 3 uses
  store i64 %i.af, ptr %i.ae, align 8, !alias.scope !23985, !noalias !23983
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 4 uses
  %i.ah = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ag)
  %i.ai = lshr i64 %i.af, 32
  %i.aj = trunc nuw i64 %i.ai to i32              ; 3 uses
  %i.ak = trunc i64 %i.af to i8
  switch i8 %i.ah, label %._crit_edge.i34.1.i.i [
    i8 2, label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.1.i.i
    i8 0, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i
  ]

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.1.i.i: ; preds = %.noexc35.1.i.i
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !alias.scope !23987, !noalias !23983, !noundef !6
  %i.an = icmp ugt i32 %i.am, %i.aj
  br i1 %i.an, label %._crit_edge.i34.1.i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i

._crit_edge.i34.1.i.i:                            ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.1.i.i, %.noexc35.1.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23988
  store i8 %i.ak, ptr %i.c, align 8, !noalias !23988
  store i32 %i.aj, ptr %i.y, align 4, !noalias !23988
  %i.ao = load i64, ptr %i.ag, align 8, !alias.scope !23985, !noalias !23983
  store i64 %i.ao, ptr %i.ae, align 8, !alias.scope !23985, !noalias !23983
  %i.ap = icmp eq i64 %.sroa.05.010.1.i.i, 1
  br i1 %i.ap, label %.noexc._crit_edge.i.1.i.i, label %.lr.ph.i33.1.i.i

.lr.ph.i33.1.i.i:                                 ; preds = %._crit_edge.i34.1.i.i, %.backedge.i.1.i.i
  %.sroa.0.07.i.1.i.i = phi ptr [ %i.aq, %.backedge.i.1.i.i ], [ %i.ag, %._crit_edge.i34.1.i.i ] ; 6 uses
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.07.i.1.i.i, i64 -8 ; 4 uses
  %i.ar = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.aq)
          to label %.noexc.i.1.i.i unwind label %.loopexit.split-lp17.i.i

.noexc.i.1.i.i:                                   ; preds = %.lr.ph.i33.1.i.i
  switch i8 %i.ar, label %.backedge.i.1.i.i [
    i8 2, label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i
    i8 0, label %.noexc._crit_edge.i.1.i.i
  ]

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i: ; preds = %.noexc.i.1.i.i
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.07.i.1.i.i, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !23989, !noalias !23983, !noundef !6
  %i.au = icmp ugt i32 %i.at, %i.aj
  br i1 %i.au, label %.backedge.i.1.i.i, label %.noexc._crit_edge.i.1.i.i

.backedge.i.1.i.i:                                ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i, %.noexc.i.1.i.i
  %i.av = load i64, ptr %i.aq, align 4, !alias.scope !23985, !noalias !23983
  store i64 %i.av, ptr %.sroa.0.07.i.1.i.i, align 4, !alias.scope !23985, !noalias !23983
  %i.aw = icmp eq ptr %i.aq, %i.ab
  br i1 %i.aw, label %.noexc._crit_edge.i.1.i.i, label %.lr.ph.i33.1.i.i

.noexc._crit_edge.i.1.i.i:                        ; preds = %.backedge.i.1.i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i, %.noexc.i.1.i.i, %._crit_edge.i34.1.i.i
  %.sroa.0.0.lcssa.i.1.i.i = phi ptr [ %i.ag, %._crit_edge.i34.1.i.i ], [ %i.ab, %.backedge.i.1.i.i ], [ %.sroa.0.07.i.1.i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i ], [ %.sroa.0.07.i.1.i.i, %.noexc.i.1.i.i ]
  %i.ax = load i64, ptr %i.c, align 8, !noalias !23990
  store i64 %i.ax, ptr %.sroa.0.0.lcssa.i.1.i.i, align 4, !alias.scope !23985, !noalias !23991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23988
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i: ; preds = %.noexc._crit_edge.i.1.i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.1.i.i, %.noexc35.1.i.i
  %i.ay = add nuw nsw i64 %.sroa.05.010.1.i.i, 1  ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %i.ay, %i.x
  br i1 %exitcond.1.not.i.i, label %.loopexit4.1.i.i, label %.noexc35.1.i.i

.loopexit4.1.i.i:                                 ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i, %.loopexit4.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23992)
  %i.az = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.az
  %i.bc = getelementptr i8, ptr %i.ab, i64 -8
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i
  %i.bd = getelementptr i8, ptr %i.cb, i64 8      ; 2 uses
  %i.be = getelementptr i8, ptr %i.ca, i64 8
  %i.bf = and i64 %.sroa.15.0.lcssa, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %bb.m

.lr.ph.i.i.i:                                     ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i, %.loopexit4.1.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %i.bq, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %.sroa.0.0.lcssa, %.loopexit4.1.i.i ] ; 2 uses
  %.sroa.04.09.i.i.i = phi i64 [ %i.bh, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ 0, %.loopexit4.1.i.i ]
  %.sroa.06.08.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.d, %.loopexit4.1.i.i ] ; 4 uses
  %.sroa.011.07.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.ab, %.loopexit4.1.i.i ] ; 4 uses
  %.sroa.015.06.i.i.i = phi ptr [ %i.cb, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.bc, %.loopexit4.1.i.i ] ; 4 uses
  %.sroa.017.05.i.i.i = phi ptr [ %i.ca, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.bb, %.loopexit4.1.i.i ] ; 4 uses
  %.sroa.019.04.i.i.i = phi ptr [ %i.cc, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.ba, %.loopexit4.1.i.i ] ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.04.09.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23993)
  call void @llvm.experimental.noalias.scope.decl(metadata !23994)
  call void @llvm.experimental.noalias.scope.decl(metadata !23995)
  call void @llvm.experimental.noalias.scope.decl(metadata !23996)
  %i.bi = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.011.07.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.06.08.i.i.i)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.i.i = icmp eq i8 %i.bi, 2
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc.i.i
  %i.bj = trunc nuw i8 %i.bi to i1
  br label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i.i.i

bb.j:                                             ; preds = %.noexc.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i.i, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !23997)
  call void @llvm.experimental.noalias.scope.decl(metadata !23998)
end_hunk_11
begin_hunk_12_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1e_:bb.a
  %.val10.val.i.i = load i64, ptr %i.b, align 8, !noalias !24046
  store i64 %.val10.val.i.i, ptr %.sroa.019.2.i.i, align 4, !alias.scope !24047
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1E_.exit.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24046
  %.not7.i = icmp ult i64 %i.fd, %.sroa.15.0113229
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE12split_at_mutBB_.exit, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1E_.exit.i
  call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE12split_at_mutBB_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1E_.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE14swap_uncheckedBB_(ptr noalias noundef nonnull align 4 %.sroa.0.0114228, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0113229, i64 noundef 0, i64 noundef %i.fd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0114228, i64 %i.fd ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = xor i64 %i.fd, -1
  %i.gd = add i64 %.sroa.15.0113229, %i.gc
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noalias noundef nonnull align 4 %.sroa.0.0114228, i64 noundef %i.fd, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.0112230, i32 noundef %i.de, ptr noalias noundef nonnull %4)
  br label %.backedge

bb.al:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.0114228, i64 %i.ej ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24056)
  call void @llvm.experimental.noalias.scope.decl(metadata !24057)
  call void @llvm.experimental.noalias.scope.decl(metadata !24058)
  call void @llvm.experimental.noalias.scope.decl(metadata !24059)
  %i.gf = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.023.0112230, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ge)
  switch i8 %i.gf, label %bb.aa [
    i8 2, label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit
    i8 0, label %bb.am
  ]

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit: ; preds = %bb.al
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.023.0112230, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !24060)
  call void @llvm.experimental.noalias.scope.decl(metadata !24061)
  %i.gi = load i32, ptr %i.gg, align 4, !alias.scope !24062, !noundef !6
  %i.gj = load i32, ptr %i.gh, align 4, !alias.scope !24063, !noundef !6
  %i.gk = icmp ult i32 %i.gi, %i.gj
  br i1 %i.gk, label %bb.aa, label %bb.am

bb.am:                                            ; preds = %bb.al, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24064)
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE14swap_uncheckedBB_(ptr noalias noundef nonnull align 4 %.sroa.0.0114228, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0113229, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.0114228, i64 8 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24065)
  call void @llvm.experimental.noalias.scope.decl(metadata !24066)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24067
  %i.gm = load i8, ptr %i.gl, align 4, !range !33, !alias.scope !24068, !noundef !6
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0114228, i64 12
  %i.go = load i32, ptr %i.gn, align 4, !alias.scope !24068, !noundef !6
  store i8 %i.gm, ptr %i.a, align 8, !noalias !24067
  store i32 %i.go, ptr %i.f, align 4, !noalias !24067
  %i.gp = getelementptr [8 x i8], ptr %.sroa.0.0114228, i64 %.sroa.15.0113229 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 -8     ; 2 uses
  %.sroa.13.041.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.0.0114228, i64 16 ; 3 uses
  %i.gr = icmp ult ptr %.sroa.13.041.i.i48, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0114228, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !alias.scope !24069 ; 3 uses
  br i1 %i.gr, label %.lr.ph.i.i66, label %.preheader.i.i49.preheader

.preheader.i.i49.preheader:                       ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i, %bb.am
  %.sroa.23.1.i.i53.ph = phi i64 [ 0, %bb.am ], [ %i.ib, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i ]
  %.sroa.13.1.i.i54.ph = phi ptr [ %.sroa.13.041.i.i48, %bb.am ], [ %.sroa.13.0.i.i75, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i ]
  %.sroa.019.1.i.i55.ph = phi ptr [ %i.gl, %bb.am ], [ %i.hq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i ]
  br label %.preheader.i.i49

.preheader.i.i49:                                 ; preds = %.preheader.i.i49.preheader, %bb.ap
  %.sroa.23.1.i.i53 = phi i64 [ %i.he, %bb.ap ], [ %.sroa.23.1.i.i53.ph, %.preheader.i.i49.preheader ] ; 2 uses
  %.sroa.13.1.i.i54 = phi ptr [ %.sroa.13.1.sroa.gep.i.i62, %bb.ap ], [ %.sroa.13.1.i.i54.ph, %.preheader.i.i49.preheader ] ; 5 uses
  %.sroa.019.1.i.i55 = phi ptr [ %.sroa.13.1.i.i54, %bb.ap ], [ %.sroa.019.1.i.i55.ph, %.preheader.i.i49.preheader ] ; 2 uses
  %i.gu = icmp eq ptr %.sroa.13.1.i.i54, %i.gp    ; 3 uses
  %.sroa.01.0.i.i56 = select i1 %i.gu, ptr %i.a, ptr %.sroa.13.1.i.i54 ; 2 uses
  %i.gv = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0114228, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i56)
          to label %.noexc.i.i61 unwind label %.loopexit.i.i57 ; 2 uses

.noexc.i.i61:                                     ; preds = %.preheader.i.i49
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gv, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc.i.i61
  %i.gw = trunc nuw i8 %i.gv to i1
  br label %bb.ap

bb.ao:                                            ; preds = %.noexc.i.i61
  %.sroa.13.1.sroa.gep30.i.i64 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i54, i64 4
  %.sroa.01.0.sroa.sel31.i.i65 = select i1 %i.gu, ptr %i.f, ptr %.sroa.13.1.sroa.gep30.i.i64
  %i.gx = load i32, ptr %.sroa.01.0.sroa.sel31.i.i65, align 4, !alias.scope !24070, !noalias !24071, !noundef !6
  %i.gy = icmp ult i32 %i.gt, %i.gx
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sroa.0.0.i.i.i.i.i.i = phi i1 [ %i.gw, %bb.an ], [ %i.gy, %bb.ao ]
  %i.gz = xor i1 %.sroa.0.0.i.i.i.i.i.i, true
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %.sroa.23.1.i.i53 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 4, !alias.scope !24068, !noalias !24072
  store i64 %i.hb, ptr %.sroa.019.1.i.i55, align 4, !alias.scope !24068, !noalias !24072
  %i.hc = load i64, ptr %.sroa.01.0.i.i56, align 4, !noalias !24071
  store i64 %i.hc, ptr %i.ha, align 4, !alias.scope !24068, !noalias !24072
  %i.hd = zext i1 %i.gz to i64
  %i.he = add i64 %.sroa.23.1.i.i53, %i.hd        ; 4 uses
  %.sroa.13.1.sroa.gep.i.i62 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i54, i64 8
  br i1 %i.gu, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1E_.exit.i, label %.preheader.i.i49

.lr.ph.i.i66:                                     ; preds = %bb.am, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i
  %.sroa.13.044.i.i67 = phi ptr [ %.sroa.13.0.i.i75, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i ], [ %.sroa.13.041.i.i48, %bb.am ] ; 4 uses
  %.sroa.019.043.i.i68 = phi ptr [ %i.hq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i ], [ %i.gl, %bb.am ] ; 6 uses
  %.sroa.23.042.i.i69 = phi i64 [ %i.ib, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i ], [ 0, %bb.am ] ; 2 uses
  %i.hf = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0114228, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.13.044.i.i67)
          to label %.noexc13.i.i73 unwind label %.loopexit.split-lp.i.i70 ; 2 uses

.noexc13.i.i73:                                   ; preds = %.lr.ph.i.i66
  %.not.i.i.i.i11.i.i = icmp eq i8 %i.hf, 2
  br i1 %.not.i.i.i.i11.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc13.i.i73
  %i.hg = trunc nuw i8 %i.hf to i1
  br label %bb.as

bb.ar:                                            ; preds = %.noexc13.i.i73
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.019.043.i.i68, i64 12
  %i.hi = load i32, ptr %i.hh, align 4, !alias.scope !24073, !noalias !24074, !noundef !6
  %i.hj = icmp ult i32 %i.gt, %i.hi
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.0.0.i.i.i.i12.i.i = phi i1 [ %i.hg, %bb.aq ], [ %i.hj, %bb.ar ]
  %i.hk = xor i1 %.sroa.0.0.i.i.i.i12.i.i, true
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %.sroa.23.042.i.i69 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 4, !alias.scope !24068, !noalias !24074
  store i64 %i.hm, ptr %.sroa.019.043.i.i68, align 4, !alias.scope !24068, !noalias !24074
  %i.hn = load i64, ptr %.sroa.13.044.i.i67, align 4, !alias.scope !24068, !noalias !24074
  store i64 %i.hn, ptr %i.hl, align 4, !alias.scope !24068, !noalias !24074
  %i.ho = zext i1 %i.hk to i64
  %i.hp = add i64 %.sroa.23.042.i.i69, %i.ho      ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.019.043.i.i68, i64 16 ; 4 uses
  %i.hr = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0114228, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.hq)
          to label %.noexc17.i.i74 unwind label %.loopexit.split-lp.i.i70 ; 2 uses

.noexc17.i.i74:                                   ; preds = %bb.as
  %.not.i.i.i.i15.i.i = icmp eq i8 %i.hr, 2
  br i1 %.not.i.i.i.i15.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.noexc17.i.i74
  %i.hs = trunc nuw i8 %i.hr to i1
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i

bb.au:                                            ; preds = %.noexc17.i.i74
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.019.043.i.i68, i64 20
  %i.hu = load i32, ptr %i.ht, align 4, !alias.scope !24075, !noalias !24076, !noundef !6
  %i.hv = icmp ult i32 %i.gt, %i.hu
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i: ; preds = %bb.au, %bb.at
  %.sroa.0.0.i.i.i.i16.i.i = phi i1 [ %i.hs, %bb.at ], [ %i.hv, %bb.au ]
  %i.hw = xor i1 %.sroa.0.0.i.i.i.i16.i.i, true
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.hp ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 4, !alias.scope !24068, !noalias !24076
  store i64 %i.hy, ptr %.sroa.13.044.i.i67, align 4, !alias.scope !24068, !noalias !24076
  %i.hz = load i64, ptr %i.hq, align 4, !alias.scope !24068, !noalias !24076
  store i64 %i.hz, ptr %i.hx, align 4, !alias.scope !24068, !noalias !24076
  %i.ia = zext i1 %i.hw to i64
  %i.ib = add i64 %i.hp, %i.ia                    ; 2 uses
  %.sroa.13.0.i.i75 = getelementptr inbounds nuw i8, ptr %.sroa.019.043.i.i68, i64 24 ; 3 uses
  %i.ic = icmp ult ptr %.sroa.13.0.i.i75, %i.gq
  br i1 %i.ic, label %.lr.ph.i.i66, label %.preheader.i.i49.preheader

.loopexit.i.i57:                                  ; preds = %.preheader.i.i49
  %lpad.loopexit.i.i58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp.i.i70:                         ; preds = %bb.as, %.lr.ph.i.i66
  %.sroa.019.2.ph.i.i71 = phi ptr [ %.sroa.019.043.i.i68, %.lr.ph.i.i66 ], [ %.sroa.13.044.i.i67, %bb.as ]
  %lpad.loopexit.split-lp.i.i72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.split-lp.i.i70, %.loopexit.i.i57
  %.sroa.019.2.i.i59 = phi ptr [ %.sroa.019.1.i.i55, %.loopexit.i.i57 ], [ %.sroa.019.2.ph.i.i71, %.loopexit.split-lp.i.i70 ]
  %lpad.phi.i.i60 = phi { ptr, i32 } [ %lpad.loopexit.i.i58, %.loopexit.i.i57 ], [ %lpad.loopexit.split-lp.i.i72, %.loopexit.split-lp.i.i70 ]
  %.val4.val.i.i = load i64, ptr %i.a, align 8, !noalias !24067
  store i64 %.val4.val.i.i, ptr %.sroa.019.2.i.i59, align 4, !alias.scope !24068
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1E_.exit.i: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24067
  %.not7.i63 = icmp ult i64 %i.he, %.sroa.15.0113229
  br i1 %.not7.i63, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1E_.exit.i
  call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1E_.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE14swap_uncheckedBB_(ptr noalias noundef nonnull align 4 %.sroa.0.0114228, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0113229, i64 noundef 0, i64 noundef %i.he, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.id = add nuw nsw i64 %i.he, 1                ; 2 uses
  %i.ie = sub nuw nsw i64 %.sroa.15.0113229, %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0114228, i64 %i.id
  br label %.backedge

.backedge:                                        ; preds = %bb.ax, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE12split_at_mutBB_.exit
  %.sroa.023.0.be = phi ptr [ %i.ga, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE12split_at_mutBB_.exit ], [ null, %bb.ax ]
  %.sroa.15.0.be = phi i64 [ %i.gd, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE12split_at_mutBB_.exit ], [ %i.ie, %bb.ax ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.gb, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE12split_at_mutBB_.exit ], [ %i.if, %bb.ax ] ; 3 uses
  %i.ig = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.ig, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 5 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph154

.lr.ph:                                           ; preds = %.backedge
  %i.d = icmp eq i32 %i.hg, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph154

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24176)
  %i.e = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.e, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24176
  %i.f = lshr i64 %.sroa.15.0.lcssa, 1            ; 4 uses
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 18 ; 2 uses
  %..i = select i1 %i.g, i64 %.sroa.15.0.lcssa, i64 %i.f
  %i.h = getelementptr [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f ; 3 uses
  %i.i = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.b
  %.sroa.8.0.i = phi i64 [ %..i, %bb.b ], [ %i.i, %bb.j ] ; 5 uses
  %.sroa.02.0.i = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %i.h, %bb.j ] ; 31 uses
  %i.j = icmp ugt i64 %.sroa.8.0.i, 12
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ugt i64 %.sroa.8.0.i, 8
  br i1 %i.k, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 96 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !24177, !noundef !6 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.02.0.i, align 8, !alias.scope !24178, !noundef !6 ; 2 uses
  %i.m = tail call i64 @llvm.smax.i64(i64 %.val.i.i.i, i64 %.val1.i.i.i) ; 2 uses
  %i.n = tail call i64 @llvm.smin.i64(i64 %.val.i.i.i, i64 %.val1.i.i.i) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 80 ; 2 uses
  %.val.i1.i.i = load i64, ptr %i.p, align 8, !alias.scope !24179, !noundef !6 ; 2 uses
  %.val1.i2.i.i = load i64, ptr %i.o, align 8, !alias.scope !24180, !noundef !6 ; 2 uses
  %i.q = tail call i64 @llvm.smax.i64(i64 %.val.i1.i.i, i64 %.val1.i2.i.i) ; 2 uses
  %i.r = tail call i64 @llvm.smin.i64(i64 %.val.i1.i.i, i64 %.val1.i2.i.i) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 72 ; 2 uses
  %.val.i3.i.i = load i64, ptr %i.t, align 8, !alias.scope !24181, !noundef !6 ; 2 uses
  %.val1.i4.i.i = load i64, ptr %i.s, align 8, !alias.scope !24182, !noundef !6 ; 2 uses
  %i.u = tail call i64 @llvm.smax.i64(i64 %.val.i3.i.i, i64 %.val1.i4.i.i) ; 2 uses
  %i.v = tail call i64 @llvm.smin.i64(i64 %.val.i3.i.i, i64 %.val1.i4.i.i) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 56 ; 2 uses
  %.val.i5.i.i = load i64, ptr %i.x, align 8, !alias.scope !24183, !noundef !6 ; 2 uses
  %.val1.i6.i.i = load i64, ptr %i.w, align 8, !alias.scope !24184, !noundef !6 ; 2 uses
  %i.y = tail call i64 @llvm.smax.i64(i64 %.val.i5.i.i, i64 %.val1.i6.i.i) ; 2 uses
  %i.z = tail call i64 @llvm.smin.i64(i64 %.val.i5.i.i, i64 %.val1.i6.i.i) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 88 ; 2 uses
  %.val.i7.i.i = load i64, ptr %i.ab, align 8, !alias.scope !24185, !noundef !6 ; 2 uses
  %.val1.i8.i.i = load i64, ptr %i.aa, align 8, !alias.scope !24186, !noundef !6 ; 2 uses
  %i.ac = tail call i64 @llvm.smax.i64(i64 %.val.i7.i.i, i64 %.val1.i8.i.i) ; 2 uses
  %i.ad = tail call i64 @llvm.smin.i64(i64 %.val.i7.i.i, i64 %.val1.i8.i.i) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 64 ; 2 uses
  %.val.i9.i.i = load i64, ptr %i.af, align 8, !alias.scope !24187, !noundef !6 ; 2 uses
  %.val1.i10.i.i = load i64, ptr %i.ae, align 8, !alias.scope !24188, !noundef !6 ; 2 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.val.i9.i.i, i64 %.val1.i10.i.i) ; 2 uses
  %i.ah = tail call i64 @llvm.smin.i64(i64 %.val.i9.i.i, i64 %.val1.i10.i.i) ; 2 uses
  %i.ai = tail call i64 @llvm.smax.i64(i64 %i.ah, i64 %i.r) ; 2 uses
  %i.aj = tail call i64 @llvm.smin.i64(i64 %i.ah, i64 %i.r) ; 2 uses
  %i.ak = tail call i64 @llvm.smax.i64(i64 %i.z, i64 %i.v) ; 2 uses
  %i.al = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %i.v) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32 ; 2 uses
  %.val1.i16.i.i = load i64, ptr %i.am, align 8, !alias.scope !24189, !noundef !6 ; 2 uses
  %i.an = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 %.val1.i16.i.i) ; 2 uses
  %i.ao = tail call i64 @llvm.smin.i64(i64 %i.ac, i64 %.val1.i16.i.i) ; 2 uses
  %i.ap = tail call i64 @llvm.smax.i64(i64 %i.u, i64 %i.y) ; 2 uses
  %i.aq = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %i.y) ; 2 uses
  %i.ar = tail call i64 @llvm.smax.i64(i64 %i.q, i64 %i.ag) ; 2 uses
  %i.as = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.ag) ; 2 uses
  %i.at = tail call i64 @llvm.smax.i64(i64 %i.ao, i64 %i.n) ; 2 uses
  %i.au = tail call i64 @llvm.smin.i64(i64 %i.ao, i64 %i.n) ; 2 uses
  %i.av = tail call i64 @llvm.smax.i64(i64 %i.al, i64 %i.aj) ; 2 uses
  %i.aw = tail call i64 @llvm.smin.i64(i64 %i.al, i64 %i.aj) ; 2 uses
  %i.ax = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 %i.ak) ; 2 uses
  %i.ay = tail call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.ak) ; 2 uses
  %i.az = tail call i64 @llvm.smax.i64(i64 %i.as, i64 %i.aq) ; 2 uses
  %i.ba = tail call i64 @llvm.smin.i64(i64 %i.as, i64 %i.aq) ; 2 uses
  %i.bb = tail call i64 @llvm.smax.i64(i64 %i.ar, i64 %i.ap) ; 2 uses
  %i.bc = tail call i64 @llvm.smin.i64(i64 %i.ar, i64 %i.ap) ; 2 uses
  %i.bd = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %i.an) ; 2 uses
  %i.be = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %i.an) ; 2 uses
  %i.bf = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 %i.at) ; 2 uses
  %i.bg = tail call i64 @llvm.smin.i64(i64 %i.ax, i64 %i.at) ; 2 uses
  %i.bh = tail call i64 @llvm.smax.i64(i64 %i.bc, i64 %i.ad) ; 2 uses
  %i.bi = tail call i64 @llvm.smin.i64(i64 %i.bc, i64 %i.ad) ; 2 uses
  %i.bj = tail call i64 @llvm.smax.i64(i64 %i.be, i64 %i.az) ; 2 uses
  %i.bk = tail call i64 @llvm.smin.i64(i64 %i.be, i64 %i.az) ; 2 uses
  %i.bl = tail call i64 @llvm.smax.i64(i64 %i.bd, i64 %i.bb)
  %i.bm = tail call i64 @llvm.smin.i64(i64 %i.bd, i64 %i.bb) ; 2 uses
  store i64 %i.bl, ptr %i.l, align 8, !alias.scope !24190
  %i.bn = tail call i64 @llvm.smax.i64(i64 %i.bi, i64 %i.au) ; 2 uses
  %i.bo = tail call i64 @llvm.smin.i64(i64 %i.bi, i64 %i.au) ; 2 uses
  %i.bp = tail call i64 @llvm.smax.i64(i64 %i.bk, i64 %i.ay) ; 2 uses
  %i.bq = tail call i64 @llvm.smin.i64(i64 %i.bk, i64 %i.ay) ; 2 uses
  %i.br = tail call i64 @llvm.smax.i64(i64 %i.ba, i64 %i.bg) ; 2 uses
  %i.bs = tail call i64 @llvm.smin.i64(i64 %i.ba, i64 %i.bg) ; 2 uses
  %i.bt = tail call i64 @llvm.smax.i64(i64 %i.bj, i64 %i.bf) ; 2 uses
  %i.bu = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.bf) ; 2 uses
  %i.bv = tail call i64 @llvm.smax.i64(i64 %i.bm, i64 %i.bh) ; 2 uses
  %i.bw = tail call i64 @llvm.smin.i64(i64 %i.bm, i64 %i.bh) ; 2 uses
  %i.bx = tail call i64 @llvm.smax.i64(i64 %i.aw, i64 %i.bo) ; 2 uses
  %i.by = tail call i64 @llvm.smin.i64(i64 %i.aw, i64 %i.bo)
  store i64 %i.by, ptr %.sroa.02.0.i, align 8, !alias.scope !24190
  %i.bz = tail call i64 @llvm.smax.i64(i64 %i.bn, i64 %i.av) ; 2 uses
  %i.ca = tail call i64 @llvm.smin.i64(i64 %i.bn, i64 %i.av) ; 2 uses
  %i.cb = tail call i64 @llvm.smax.i64(i64 %i.bw, i64 %i.bu) ; 2 uses
  %i.cc = tail call i64 @llvm.smin.i64(i64 %i.bw, i64 %i.bu) ; 2 uses
  %i.cd = tail call i64 @llvm.smax.i64(i64 %i.bp, i64 %i.br) ; 2 uses
  %i.ce = tail call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.br) ; 2 uses
  %i.cf = tail call i64 @llvm.smax.i64(i64 %i.bt, i64 %i.bv)
  %i.cg = tail call i64 @llvm.smin.i64(i64 %i.bt, i64 %i.bv) ; 2 uses
  store i64 %i.cf, ptr %i.ab, align 8, !alias.scope !24190
  %i.ch = tail call i64 @llvm.smax.i64(i64 %i.bq, i64 %i.bx) ; 2 uses
  %i.ci = tail call i64 @llvm.smin.i64(i64 %i.bq, i64 %i.bx) ; 2 uses
  %i.cj = tail call i64 @llvm.smax.i64(i64 %i.bs, i64 %i.ca) ; 2 uses
  %i.ck = tail call i64 @llvm.smin.i64(i64 %i.bs, i64 %i.ca) ; 2 uses
  %i.cl = tail call i64 @llvm.smax.i64(i64 %i.cc, i64 %i.bz) ; 2 uses
  %i.cm = tail call i64 @llvm.smin.i64(i64 %i.cc, i64 %i.bz) ; 2 uses
  %i.cn = tail call i64 @llvm.smax.i64(i64 %i.cg, i64 %i.cb)
  %i.co = tail call i64 @llvm.smin.i64(i64 %i.cg, i64 %i.cb) ; 2 uses
  store i64 %i.cn, ptr %i.p, align 8, !alias.scope !24190
  %i.cp = tail call i64 @llvm.smax.i64(i64 %i.ck, i64 %i.ci) ; 2 uses
  %i.cq = tail call i64 @llvm.smin.i64(i64 %i.ck, i64 %i.ci)
  store i64 %i.cq, ptr %i.o, align 8, !alias.scope !24190
  %i.cr = tail call i64 @llvm.smax.i64(i64 %i.cj, i64 %i.ch) ; 2 uses
  %i.cs = tail call i64 @llvm.smin.i64(i64 %i.cj, i64 %i.ch) ; 2 uses
  %i.ct = tail call i64 @llvm.smax.i64(i64 %i.ce, i64 %i.cm) ; 2 uses
  %i.cu = tail call i64 @llvm.smin.i64(i64 %i.ce, i64 %i.cm) ; 2 uses
  %i.cv = tail call i64 @llvm.smax.i64(i64 %i.cd, i64 %i.cl) ; 2 uses
  %i.cw = tail call i64 @llvm.smin.i64(i64 %i.cd, i64 %i.cl) ; 2 uses
  %i.cx = tail call i64 @llvm.smax.i64(i64 %i.cs, i64 %i.cp) ; 2 uses
  %i.cy = tail call i64 @llvm.smin.i64(i64 %i.cs, i64 %i.cp)
  store i64 %i.cy, ptr %i.s, align 8, !alias.scope !24190
  %i.cz = tail call i64 @llvm.smax.i64(i64 %i.cu, i64 %i.cr) ; 2 uses
  %i.da = tail call i64 @llvm.smin.i64(i64 %i.cu, i64 %i.cr) ; 2 uses
  %i.db = tail call i64 @llvm.smax.i64(i64 %i.ct, i64 %i.cw)
  %i.dc = tail call i64 @llvm.smin.i64(i64 %i.ct, i64 %i.cw) ; 2 uses
  store i64 %i.db, ptr %i.x, align 8, !alias.scope !24190
  %i.dd = tail call i64 @llvm.smax.i64(i64 %i.co, i64 %i.cv)
  %i.de = tail call i64 @llvm.smin.i64(i64 %i.co, i64 %i.cv)
  store i64 %i.de, ptr %i.af, align 8, !alias.scope !24190
  store i64 %i.dd, ptr %i.t, align 8, !alias.scope !24190
  %i.df = tail call i64 @llvm.smax.i64(i64 %i.da, i64 %i.cx)
  %i.dg = tail call i64 @llvm.smin.i64(i64 %i.da, i64 %i.cx)
  store i64 %i.dg, ptr %i.w, align 8, !alias.scope !24190
  store i64 %i.df, ptr %i.am, align 8, !alias.scope !24190
  %i.dh = tail call i64 @llvm.smax.i64(i64 %i.dc, i64 %i.cz)
  %i.di = tail call i64 @llvm.smin.i64(i64 %i.dc, i64 %i.cz)
  store i64 %i.di, ptr %i.aa, align 8, !alias.scope !24190
  store i64 %i.dh, ptr %i.ae, align 8, !alias.scope !24190
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 24 ; 2 uses
  %.val.i.i14.i = load i64, ptr %i.dj, align 8, !alias.scope !24191, !noundef !6 ; 2 uses
  %.val1.i.i15.i = load i64, ptr %.sroa.02.0.i, align 8, !alias.scope !24192, !noundef !6 ; 2 uses
  %i.dk = tail call i64 @llvm.smax.i64(i64 %.val.i.i14.i, i64 %.val1.i.i15.i) ; 2 uses
  %i.dl = tail call i64 @llvm.smin.i64(i64 %.val.i.i14.i, i64 %.val1.i.i15.i) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 56 ; 2 uses
  %.val.i1.i16.i = load i64, ptr %i.dn, align 8, !alias.scope !24193, !noundef !6 ; 2 uses
  %.val1.i2.i17.i = load i64, ptr %i.dm, align 8, !alias.scope !24194, !noundef !6 ; 2 uses
  %i.do = tail call i64 @llvm.smax.i64(i64 %.val.i1.i16.i, i64 %.val1.i2.i17.i) ; 2 uses
  %i.dp = tail call i64 @llvm.smin.i64(i64 %.val.i1.i16.i, i64 %.val1.i2.i17.i) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 40 ; 2 uses
  %.val.i3.i18.i = load i64, ptr %i.dr, align 8, !alias.scope !24195, !noundef !6 ; 2 uses
  %.val1.i4.i19.i = load i64, ptr %i.dq, align 8, !alias.scope !24196, !noundef !6 ; 2 uses
  %i.ds = tail call i64 @llvm.smax.i64(i64 %.val.i3.i18.i, i64 %.val1.i4.i19.i) ; 2 uses
end_hunk_12
begin_hunk_13_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic:bb.a
  %.val7.i = load i64, ptr %i.hi, align 8, !alias.scope !24212, !noundef !6 ; 2 uses
  %i.hm = icmp slt i64 %.val6.i, %.val7.i         ; 2 uses
  %.val5.i = load i64, ptr %i.hj, align 8, !alias.scope !24212, !noundef !6 ; 2 uses
  %i.hn = icmp slt i64 %.val6.i, %.val5.i
  %i.ho = xor i1 %i.hm, %i.hn
  %i.hp = icmp slt i64 %.val7.i, %.val5.i
  %i.hq = xor i1 %i.hm, %i.hp
  %..i.i = select i1 %i.hq, ptr %i.hj, ptr %i.hi
  %.sroa.0.0.i.i = select i1 %i.ho, ptr %.sroa.0.091150, ptr %..i.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.o, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3xNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3xNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ %i.hl, %bb.o ]
  %i.hr = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.hs = ptrtoint ptr %.sroa.0.091150 to i64
  %i.ht = sub nuw i64 %i.hr, %i.hs                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.ht, 3          ; 3 uses
  %i.hu = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.090151
  tail call void @llvm.assume(i1 %i.hu)
  %.not = icmp eq ptr %.sroa.023.089152, null
  br i1 %.not, label %bb.p, label %bb.r

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.sink.split.i, %._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.r
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSx14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24214)
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !24215, !noundef !6 ; 2 uses
  %i.hx = getelementptr [8 x i8], ptr %.sroa.0.091150, i64 %.sroa.15.090151 ; 3 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 -8     ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 16 ; 3 uses
  %i.hz = icmp ult ptr %.sroa.13.030.i.i, %i.hy
  %.val1.i.pre.i.i = load i64, ptr %.sroa.0.091150, align 8, !alias.scope !24216, !noalias !6 ; 4 uses
  br i1 %i.hz, label %.lr.ph.i.i36, label %.preheader.i.i35

.preheader.i.i35:                                 ; preds = %.lr.ph.i.i36, %bb.p
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.p ], [ %i.ir, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.015.0.lcssa.i.i = phi ptr [ %i.hv, %bb.p ], [ %i.im, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.030.i.i, %bb.p ], [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ] ; 2 uses
  %i.ia = icmp eq ptr %.sroa.13.0.lcssa.i.i, %i.hx
  br i1 %i.ia, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.cont.i.i

.cont.i.i:                                        ; preds = %.preheader.i.i35, %.cont.i.i
  %.sroa.015.1.i7.i = phi ptr [ %.sroa.13.1.i6.i, %.cont.i.i ], [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i35 ]
  %.sroa.13.1.i6.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i35 ] ; 4 uses
  %.sroa.23.1.i5.i = phi i64 [ %i.if, %.cont.i.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i35 ] ; 2 uses
  %.val.i.else.val.i.i = load i64, ptr %.sroa.13.1.i6.i, align 8, !alias.scope !24217, !noalias !24218, !noundef !6 ; 2 uses
  %i.ib = icmp slt i64 %.val.i.else.val.i.i, %.val1.i.pre.i.i
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.sroa.23.1.i5.i ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !alias.scope !24215, !noalias !24218
  store i64 %i.id, ptr %.sroa.015.1.i7.i, align 8, !alias.scope !24215, !noalias !24218
  store i64 %.val.i.else.val.i.i, ptr %i.ic, align 8, !alias.scope !24215, !noalias !24218
  %i.ie = zext i1 %i.ib to i64
  %i.if = add i64 %.sroa.23.1.i5.i, %i.ie         ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i, i64 8 ; 2 uses
  %i.ig = icmp eq ptr %.sroa.13.1.sroa.gep.i.i, %i.hx
  br i1 %i.ig, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.cont.i.i

.lr.ph.i.i36:                                     ; preds = %bb.p, %.lr.ph.i.i36
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.13.030.i.i, %bb.p ] ; 2 uses
  %.sroa.015.032.i.i = phi ptr [ %i.im, %.lr.ph.i.i36 ], [ %i.hv, %bb.p ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.ir, %.lr.ph.i.i36 ], [ 0, %bb.p ] ; 2 uses
  %.val.i11.i.i = load i64, ptr %.sroa.13.033.i.i, align 8, !alias.scope !24219, !noalias !24220, !noundef !6 ; 2 uses
  %i.ih = icmp slt i64 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.sroa.23.031.i.i ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !24215, !noalias !24220
  store i64 %i.ij, ptr %.sroa.015.032.i.i, align 8, !alias.scope !24215, !noalias !24220
  store i64 %.val.i11.i.i, ptr %i.ii, align 8, !alias.scope !24215, !noalias !24220
  %i.ik = zext i1 %i.ih to i64
  %i.il = add i64 %.sroa.23.031.i.i, %i.ik        ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 16 ; 3 uses
  %.val.i13.i.i37 = load i64, ptr %i.im, align 8, !alias.scope !24221, !noalias !24222, !noundef !6 ; 2 uses
  %i.in = icmp slt i64 %.val.i13.i.i37, %.val1.i.pre.i.i
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.il ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !alias.scope !24215, !noalias !24222
  store i64 %i.ip, ptr %.sroa.13.033.i.i, align 8, !alias.scope !24215, !noalias !24222
  store i64 %.val.i13.i.i37, ptr %i.io, align 8, !alias.scope !24215, !noalias !24222
  %i.iq = zext i1 %i.in to i64
  %i.ir = add i64 %i.il, %i.iq                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 24 ; 3 uses
  %i.is = icmp ult ptr %.sroa.13.0.i.i, %i.hy
  br i1 %i.is, label %.lr.ph.i.i36, label %.preheader.i.i35

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.cont.i.i, %.preheader.i.i35
  %.sroa.23.1.i.lcssa.i = phi i64 [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i35 ], [ %i.if, %.cont.i.i ] ; 2 uses
  %.sroa.015.1.i.lcssa.i = phi ptr [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i35 ], [ %.sroa.13.1.i6.i, %.cont.i.i ]
  %i.it = icmp slt i64 %i.hw, %.val1.i.pre.i.i
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.sroa.23.1.i.lcssa.i ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !alias.scope !24215, !noalias !24218
  store i64 %i.iv, ptr %.sroa.015.1.i.lcssa.i, align 8, !alias.scope !24215, !noalias !24218
  store i64 %i.hw, ptr %i.iu, align 8, !alias.scope !24215, !noalias !24218
  %i.iw = zext i1 %i.it to i64
  %i.ix = add i64 %.sroa.23.1.i.lcssa.i, %i.iw    ; 5 uses
  %.not7.i = icmp ult i64 %i.ix, %.sroa.15.090151
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSx12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSx12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSx14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef %i.ix, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.091150, i64 %i.ix ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = xor i64 %i.ix, -1
  %i.jb = add i64 %.sroa.15.090151, %i.ja
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef %i.ix, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.089152, i32 noundef %i.hg, ptr noalias noundef nonnull %4)
  br label %.backedge

bb.r:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotxNvYxNtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 %i.ht
  %.sroa.023.0.val = load i64, ptr %.sroa.023.089152, align 8, !alias.scope !34, !noundef !6
  %.val = load i64, ptr %i.jc, align 8, !alias.scope !35, !noundef !6
  %i.jd = icmp slt i64 %.sroa.023.0.val, %.val
  br i1 %i.jd, label %bb.p, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSx14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24224)
  %i.jf = load i64, ptr %i.je, align 8, !alias.scope !24225, !noundef !6 ; 2 uses
  %i.jg = getelementptr [8 x i8], ptr %.sroa.0.091150, i64 %.sroa.15.090151 ; 3 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 -8     ; 2 uses
  %.sroa.13.030.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 16 ; 3 uses
  %i.ji = icmp ult ptr %.sroa.13.030.i.i45, %i.jh
  %.val1.i.pre.i.i46 = load i64, ptr %.sroa.0.091150, align 8, !alias.scope !24226, !noalias !6 ; 4 uses
  br i1 %i.ji, label %.lr.ph.i.i60, label %.preheader.i.i47

.preheader.i.i47:                                 ; preds = %.lr.ph.i.i60, %bb.s
  %.sroa.23.0.lcssa.i.i48 = phi i64 [ 0, %bb.s ], [ %i.ka, %.lr.ph.i.i60 ] ; 2 uses
  %.sroa.015.0.lcssa.i.i49 = phi ptr [ %i.je, %bb.s ], [ %i.jv, %.lr.ph.i.i60 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i50 = phi ptr [ %.sroa.13.030.i.i45, %bb.s ], [ %.sroa.13.0.i.i66, %.lr.ph.i.i60 ] ; 2 uses
  %i.jj = icmp eq ptr %.sroa.13.0.lcssa.i.i50, %i.jg
  br i1 %i.jj, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicxNCINvB2_9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.cont.i.i51

.cont.i.i51:                                      ; preds = %.preheader.i.i47, %.cont.i.i51
  %.sroa.015.1.i7.i52 = phi ptr [ %.sroa.13.1.i6.i53, %.cont.i.i51 ], [ %.sroa.015.0.lcssa.i.i49, %.preheader.i.i47 ]
  %.sroa.13.1.i6.i53 = phi ptr [ %.sroa.13.1.sroa.gep.i.i56, %.cont.i.i51 ], [ %.sroa.13.0.lcssa.i.i50, %.preheader.i.i47 ] ; 4 uses
  %.sroa.23.1.i5.i54 = phi i64 [ %i.jo, %.cont.i.i51 ], [ %.sroa.23.0.lcssa.i.i48, %.preheader.i.i47 ] ; 2 uses
  %.val.i.else.val.i.i55 = load i64, ptr %.sroa.13.1.i6.i53, align 8, !alias.scope !24227, !noalias !24228, !noundef !6 ; 2 uses
  %i.jk = icmp sge i64 %.val1.i.pre.i.i46, %.val.i.else.val.i.i55
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %.sroa.23.1.i5.i54 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !alias.scope !24225, !noalias !24228
  store i64 %i.jm, ptr %.sroa.015.1.i7.i52, align 8, !alias.scope !24225, !noalias !24228
  store i64 %.val.i.else.val.i.i55, ptr %i.jl, align 8, !alias.scope !24225, !noalias !24228
  %i.jn = zext i1 %i.jk to i64
  %i.jo = add i64 %.sroa.23.1.i5.i54, %i.jn       ; 2 uses
  %.sroa.13.1.sroa.gep.i.i56 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i53, i64 8 ; 2 uses
  %i.jp = icmp eq ptr %.sroa.13.1.sroa.gep.i.i56, %i.jg
  br i1 %i.jp, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicxNCINvB2_9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.cont.i.i51

.lr.ph.i.i60:                                     ; preds = %bb.s, %.lr.ph.i.i60
  %.sroa.13.033.i.i61 = phi ptr [ %.sroa.13.0.i.i66, %.lr.ph.i.i60 ], [ %.sroa.13.030.i.i45, %bb.s ] ; 2 uses
  %.sroa.015.032.i.i62 = phi ptr [ %i.jv, %.lr.ph.i.i60 ], [ %i.je, %bb.s ] ; 3 uses
  %.sroa.23.031.i.i63 = phi i64 [ %i.ka, %.lr.ph.i.i60 ], [ 0, %bb.s ] ; 2 uses
  %.val.i11.i.i64 = load i64, ptr %.sroa.13.033.i.i61, align 8, !alias.scope !24229, !noalias !24230, !noundef !6 ; 2 uses
  %i.jq = icmp sge i64 %.val1.i.pre.i.i46, %.val.i11.i.i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %.sroa.23.031.i.i63 ; 2 uses
  %i.js = load i64, ptr %i.jr, align 8, !alias.scope !24225, !noalias !24230
  store i64 %i.js, ptr %.sroa.015.032.i.i62, align 8, !alias.scope !24225, !noalias !24230
  store i64 %.val.i11.i.i64, ptr %i.jr, align 8, !alias.scope !24225, !noalias !24230
  %i.jt = zext i1 %i.jq to i64
  %i.ju = add i64 %.sroa.23.031.i.i63, %i.jt      ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i62, i64 16 ; 3 uses
  %.val.i13.i.i65 = load i64, ptr %i.jv, align 8, !alias.scope !24231, !noalias !24232, !noundef !6 ; 2 uses
  %i.jw = icmp sge i64 %.val1.i.pre.i.i46, %.val.i13.i.i65
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.ju ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !alias.scope !24225, !noalias !24232
  store i64 %i.jy, ptr %.sroa.13.033.i.i61, align 8, !alias.scope !24225, !noalias !24232
  store i64 %.val.i13.i.i65, ptr %i.jx, align 8, !alias.scope !24225, !noalias !24232
  %i.jz = zext i1 %i.jw to i64
  %i.ka = add i64 %i.ju, %i.jz                    ; 2 uses
  %.sroa.13.0.i.i66 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i62, i64 24 ; 3 uses
  %i.kb = icmp ult ptr %.sroa.13.0.i.i66, %i.jh
  br i1 %i.kb, label %.lr.ph.i.i60, label %.preheader.i.i47

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicxNCINvB2_9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.cont.i.i51, %.preheader.i.i47
  %.sroa.23.1.i.lcssa.i57 = phi i64 [ %.sroa.23.0.lcssa.i.i48, %.preheader.i.i47 ], [ %i.jo, %.cont.i.i51 ] ; 2 uses
  %.sroa.015.1.i.lcssa.i58 = phi ptr [ %.sroa.015.0.lcssa.i.i49, %.preheader.i.i47 ], [ %.sroa.13.1.i6.i53, %.cont.i.i51 ]
  %i.kc = icmp sge i64 %.val1.i.pre.i.i46, %i.jf
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %.sroa.23.1.i.lcssa.i57 ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8, !alias.scope !24225, !noalias !24228
  store i64 %i.ke, ptr %.sroa.015.1.i.lcssa.i58, align 8, !alias.scope !24225, !noalias !24228
  store i64 %i.jf, ptr %i.kd, align 8, !alias.scope !24225, !noalias !24228
  %i.kf = zext i1 %i.kc to i64
  %i.kg = add i64 %.sroa.23.1.i.lcssa.i57, %i.kf  ; 3 uses
  %.not7.i59 = icmp ult i64 %i.kg, %.sroa.15.090151
  br i1 %.not7.i59, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicxNCINvB2_9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicxNCINvB2_9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSx14swap_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef %i.kg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.kh = add nuw nsw i64 %i.kg, 1                ; 2 uses
  %i.ki = sub nuw nsw i64 %.sroa.15.090151, %i.kh
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.091150, i64 %i.kh
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSx12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.023.0.be = phi ptr [ %i.iy, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSx12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ null, %bb.u ]
  %.sroa.15.0.be = phi i64 [ %i.jb, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSx12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.ki, %bb.u ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.iz, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSx12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.kj, %bb.u ] ; 3 uses
  %i.kk = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.kk, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern28ClassPatternPositionalSourceNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBQ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !27, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !37, !noundef !6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %.noexc
  %i.i = load i64, ptr %i.h, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #52
          to label %.noexc3 unwind label %bb.h

.noexc3:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  %i.k = icmp ule i64 %2, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern28ClassPatternPositionalSourceE11extend_withBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern28ClassPatternPositionalSourceEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #53
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.f:                                             ; preds = %bb.h, %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.h
  %.pn6 = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.n, %bb.d ]
  resume { ptr, i32 } %.pn6

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern28ClassPatternPositionalSourceEBH_(ptr noalias noundef align 8 dereferenceable(16) %1) #53
          to label %bb.g unwind label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !28, !noundef !6 ; 5 uses
  %i.b = icmp ne i32 %i.a, 17
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -4
  %i.d = icmp samesign ugt i32 %i.a, 3
  %narrow = select i1 %i.d, i32 %i.c, i32 13      ; 2 uses
  %i.e = zext nneg i32 %narrow to i64
  %i.f = load i64, ptr %1, align 8, !alias.scope !24293, !noundef !6
  %i.g = add i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -1065810590584100411       ; 31 uses
  store i64 %i.h, ptr %1, align 8, !alias.scope !24293
  switch i32 %narrow, label %_RINvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6methodNtB6_20KnownBoundMethodTypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
    i32 14, label %bb.u
    i32 15, label %bb.x
    i32 16, label %bb.z
    i32 17, label %bb.aa
    i32 18, label %bb.az
    i32 19, label %bb.ba
    i32 20, label %bb.bb
    i32 21, label %bb.bc
    i32 24, label %bb.bd
    i32 25, label %bb.bj
    i32 26, label %bb.bk
    i32 27, label %bb.bl
    i32 28, label %bb.bm
    i32 29, label %bb.bn
    i32 30, label %bb.bo
    i32 31, label %bb.bq
    i32 32, label %bb.br
  ]

_RINvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6methodNtB6_20KnownBoundMethodTypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit.sink.split: ; preds = %bb.c, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %_RINvXs1a_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB7_8ProtocolNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBb_.exit, %bb.az, %bb.ba, %bb.bb, %bb.bc, %_RINvXsz_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7literalNtB6_21LiteralValueTypeInnerNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %_RINvXsR_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB6_13TypedDictTypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit, %bb.bq, %bb.br, %bb.bs, %.sink.split.i, %.sink.split.i2, %.sink.split.i4, %.sink.split.i6, %.sink.split.i8
  %.sink = phi i64 [ %i.io, %.sink.split.i8 ], [ %i.fl, %.sink.split.i6 ], [ %storemerge.i.i, %.sink.split.i4 ], [ %i.dm, %.sink.split.i2 ], [ %i.ar, %.sink.split.i ], [ %i.mv, %bb.bs ], [ %i.mr, %bb.br ], [ %storemerge.i12, %bb.bq ], [ %storemerge.i11, %_RINvXsR_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB6_13TypedDictTypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit ], [ %i.lq, %bb.bn ], [ %i.lm, %bb.bm ], [ %i.li, %bb.bl ], [ %i.le, %bb.bk ], [ %i.la, %bb.bj ], [ %i.kw, %_RINvXsz_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7literalNtB6_21LiteralValueTypeInnerNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit ], [ %i.jl, %bb.bc ], [ %i.jh, %bb.bb ], [ %i.jd, %bb.ba ], [ %i.iz, %bb.az ], [ %i.fd, %_RINvXs1a_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB7_8ProtocolNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBb_.exit ], [ %i.bz, %bb.m ], [ %i.bv, %bb.l ], [ %i.bm, %bb.k ], [ %i.bi, %bb.j ], [ %i.be, %bb.i ], [ %i.ba, %bb.h ], [ %i.aw, %bb.g ], [ %i.ai, %bb.e ], [ %i.ae, %bb.d ], [ %storemerge.i, %bb.c ]
  store i64 %.sink, ptr %1, align 8
  br label %_RINvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6methodNtB6_20KnownBoundMethodTypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit

_RINvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6methodNtB6_20KnownBoundMethodTypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit: ; preds = %_RINvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6methodNtB6_20KnownBoundMethodTypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit.sink.split, %bb.ag, %bb.z, %bb.u, %bb.p, %bb.f, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !range !38, !noundef !6 ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add i64 %i.h, %i.k
  %i.m = mul i64 %i.l, -1065810590584100411       ; 2 uses
  store i64 %i.m, ptr %1, align 8, !alias.scope !24294
  %i.n = icmp eq i32 %i.j, 2
  br i1 %i.n, label %bb.bs, label %_RINvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6methodNtB6_20KnownBoundMethodTypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i64, ptr %i.o, align 4, !alias.scope !24295
  %i.q = add i64 %i.p, %i.h
  %i.r = mul i64 %i.q, -1065810590584100411
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i8, ptr %i.s, align 4, !range !33, !alias.scope !24295, !noundef !6 ; 2 uses
  %i.u = icmp ne i8 %i.t, 2                       ; 2 uses
  %i.v = zext i1 %i.u to i64
  %i.w = add i64 %i.r, %i.v
  %i.x = mul i64 %i.w, -1065810590584100411       ; 2 uses
  %i.y = zext nneg i8 %i.t to i64
  %i.z = add i64 %i.x, %i.y
  %i.aa = mul i64 %i.z, -1065810590584100411
  %storemerge.i = select i1 %i.u, i64 %i.aa, i64 %i.x
  br label %_RINvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6methodNtB6_20KnownBoundMethodTypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i64, ptr %i.ab, align 4
  %i.ad = add i64 %i.ac, %i.h
  %i.ae = mul i64 %i.ad, -1065810590584100411
  br label %_RINvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6methodNtB6_20KnownBoundMethodTypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i64, ptr %i.af, align 4
  %i.ah = add i64 %i.ag, %i.h
  %i.ai = mul i64 %i.ah, -1065810590584100411
  br label %_RINvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6methodNtB6_20KnownBoundMethodTypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit.sink.split

bb.f:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24297)
  %i.ak = load i32, ptr %i.aj, align 4, !range !39, !alias.scope !24296, !noundef !6 ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add i64 %i.h, %i.al
  %i.an = mul i64 %i.am, -1065810590584100411     ; 2 uses
  store i64 %i.an, ptr %1, align 8, !alias.scope !24298
  %.off.i = add nsw i32 %i.ak, -6
  %switch.i = icmp ult i32 %.off.i, 6
  br i1 %switch.i, label %_RINvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6methodNtB6_20KnownBoundMethodTypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 4, !alias.scope !24296
  %i.aq = add i64 %i.ap, %i.an
  %i.ar = mul i64 %i.aq, -1065810590584100411
  br label %_RINvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6methodNtB6_20KnownBoundMethodTypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_13
