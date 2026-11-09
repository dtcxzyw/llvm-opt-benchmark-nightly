Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.04?download=true
inline.NumInlined: 652
inline.NumDeleted: 292
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB17_20sort_unstable_by_keymNCNCNvMNtB1b_6hybridNtB2E_11HybridIndex13full_snapshots0_00E0EB1b_:bb.a
  %.sroa.0.0.i.i = select i1 %i.l, ptr %.sroa.0.085128, ptr %..i.i
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB15_20sort_unstable_by_keymNCNCNvMNtB19_6hybridNtB2C_11HybridIndex13full_snapshots0_00E0EB19_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB15_20sort_unstable_by_keymNCNCNvMNtB19_6hybridNtB2C_11HybridIndex13full_snapshots0_00E0EB19_.exit: ; preds = %bb.b, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SBZ_20sort_unstable_by_keymNCNCNvMNtB13_6hybridNtB2v_11HybridIndex13full_snapshots0_00E0EB13_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SBZ_20sort_unstable_by_keymNCNCNvMNtB13_6hybridNtB2v_11HybridIndex13full_snapshots0_00E0EB13_.exit.i ], [ %i.i, %bb.b ]
  %i.o = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.p = ptrtoint ptr %.sroa.0.085128 to i64
  %i.q = sub nuw i64 %i.o, %i.p                   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.q, 3           ; 3 uses
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.084129
  tail call void @llvm.assume(i1 %i.r)
  %.not = icmp eq ptr %.sroa.023.083130, null
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB15_20sort_unstable_by_keymNCNCNvMNtB19_6hybridNtB2C_11HybridIndex13full_snapshots0_00E0EB19_.exit, %bb.f
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.085128, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.084129, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.085128, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.s, align 4, !alias.scope !353 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.01.0.copyload.i.i to i32
  %i.t = getelementptr [8 x i8], ptr %.sroa.0.085128, i64 %.sroa.15.084129 ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8       ; 2 uses
  %.sroa.13.032.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.085128, i64 16 ; 3 uses
  %i.v = icmp ult ptr %.sroa.13.032.i.i, %i.u
  %.val1.i.pre.i.i = load i32, ptr %.sroa.0.085128, align 4, !alias.scope !354, !noalias !7 ; 4 uses
  br i1 %i.v, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %.lr.ph.i.i ] ; 2 uses
  %.sroa.017.0.lcssa.i.i = phi ptr [ %i.s, %bb.d ], [ %i.aj, %.lr.ph.i.i ] ; 2 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.032.i.i, %bb.d ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.w = icmp eq ptr %.sroa.13.0.lcssa.i.i, %i.t
  br i1 %i.w, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1x_20sort_unstable_by_keymNCNCNvMNtB1B_6hybridNtB34_11HybridIndex13full_snapshots0_00E0EB1B_.exit.i, label %.cont.i.i

.cont.i.i:                                        ; preds = %.preheader.i.i, %.cont.i.i
  %.sroa.017.1.i7.i = phi ptr [ %.sroa.13.1.i6.i, %.cont.i.i ], [ %.sroa.017.0.lcssa.i.i, %.preheader.i.i ]
  %.sroa.13.1.i6.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i ] ; 5 uses
  %.sroa.23.1.i5.i = phi i64 [ %i.ab, %.cont.i.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.val.i.else.val.i.i = load i32, ptr %.sroa.13.1.i6.i, align 4, !alias.scope !353, !noalias !355, !noundef !7
  %i.x = icmp ult i32 %.val.i.else.val.i.i, %.val1.i.pre.i.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.23.1.i5.i ; 2 uses
  %i.z = load i64, ptr %i.y, align 4, !alias.scope !353, !noalias !355
  store i64 %i.z, ptr %.sroa.017.1.i7.i, align 4, !alias.scope !353, !noalias !355
  %.else.val.i.i = load i64, ptr %.sroa.13.1.i6.i, align 4, !alias.scope !353, !noalias !355
  store i64 %.else.val.i.i, ptr %i.y, align 4, !alias.scope !353, !noalias !355
  %i.aa = zext i1 %i.x to i64
  %i.ab = add i64 %.sroa.23.1.i5.i, %i.aa         ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i, i64 8 ; 2 uses
  %i.ac = icmp eq ptr %.sroa.13.1.sroa.gep.i.i, %i.t
  br i1 %i.ac, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1x_20sort_unstable_by_keymNCNCNvMNtB1B_6hybridNtB34_11HybridIndex13full_snapshots0_00E0EB1B_.exit.i, label %.cont.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.13.035.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.032.i.i, %bb.d ] ; 3 uses
  %.sroa.017.034.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %.sroa.23.033.i.i = phi i64 [ %i.ap, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.val.i13.i.i = load i32, ptr %.sroa.13.035.i.i, align 4, !alias.scope !353, !noalias !356, !noundef !7
  %i.ad = icmp ult i32 %.val.i13.i.i, %.val1.i.pre.i.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.23.033.i.i ; 2 uses
  %i.af = load i64, ptr %i.ae, align 4, !alias.scope !353, !noalias !356
  store i64 %i.af, ptr %.sroa.017.034.i.i, align 4, !alias.scope !353, !noalias !356
  %i.ag = load i64, ptr %.sroa.13.035.i.i, align 4, !alias.scope !353, !noalias !356
  store i64 %i.ag, ptr %i.ae, align 4, !alias.scope !353, !noalias !356
  %i.ah = zext i1 %i.ad to i64
  %i.ai = add i64 %.sroa.23.033.i.i, %i.ah        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.017.034.i.i, i64 16 ; 4 uses
  %.val.i15.i.i = load i32, ptr %i.aj, align 4, !alias.scope !353, !noalias !357, !noundef !7
  %i.ak = icmp ult i32 %.val.i15.i.i, %.val1.i.pre.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ai ; 2 uses
  %i.am = load i64, ptr %i.al, align 4, !alias.scope !353, !noalias !357
  store i64 %i.am, ptr %.sroa.13.035.i.i, align 4, !alias.scope !353, !noalias !357
  %i.an = load i64, ptr %i.aj, align 4, !alias.scope !353, !noalias !357
  store i64 %i.an, ptr %i.al, align 4, !alias.scope !353, !noalias !357
  %i.ao = zext i1 %i.ak to i64
  %i.ap = add i64 %i.ai, %i.ao                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.034.i.i, i64 24 ; 3 uses
  %i.aq = icmp ult ptr %.sroa.13.0.i.i, %i.u
  br i1 %i.aq, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1x_20sort_unstable_by_keymNCNCNvMNtB1B_6hybridNtB34_11HybridIndex13full_snapshots0_00E0EB1B_.exit.i: ; preds = %.cont.i.i, %.preheader.i.i
  %.sroa.23.1.i.lcssa.i = phi i64 [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ], [ %i.ab, %.cont.i.i ] ; 2 uses
  %.sroa.017.1.i.lcssa.i = phi ptr [ %.sroa.017.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.13.1.i6.i, %.cont.i.i ]
  %i.ar = icmp ugt i32 %.val1.i.pre.i.i, %.sroa.0.sroa.0.0.extract.trunc.i.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.23.1.i.lcssa.i ; 2 uses
  %i.at = load i64, ptr %i.as, align 4, !alias.scope !353, !noalias !355
  store i64 %i.at, ptr %.sroa.017.1.i.lcssa.i, align 4, !alias.scope !353, !noalias !355
  store i64 %.sroa.01.0.copyload.i.i, ptr %i.as, align 4, !alias.scope !353, !noalias !355
  %i.au = zext i1 %i.ar to i64
  %i.av = add i64 %.sroa.23.1.i.lcssa.i, %i.au    ; 5 uses
  %.not7.i = icmp ult i64 %i.av, %.sroa.15.084129
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry12split_at_mutBy_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1x_20sort_unstable_by_keymNCNCNvMNtB1B_6hybridNtB34_11HybridIndex13full_snapshots0_00E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry12split_at_mutBy_.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1x_20sort_unstable_by_keymNCNCNvMNtB1B_6hybridNtB34_11HybridIndex13full_snapshots0_00E0EB1B_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.085128, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.084129, i64 noundef 0, i64 noundef %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.085128, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = xor i64 %i.av, -1
  %i.az = add i64 %.sroa.15.084129, %i.ay
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB17_20sort_unstable_by_keymNCNCNvMNtB1b_6hybridNtB2E_11HybridIndex13full_snapshots0_00E0EB1b_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.085128, i64 noundef %i.av, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.083130, i32 noundef %i.d, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.f:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB15_20sort_unstable_by_keymNCNCNvMNtB19_6hybridNtB2C_11HybridIndex13full_snapshots0_00E0EB19_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.085128, i64 %i.q
  %.sroa.023.0.val = load i32, ptr %.sroa.023.083130, align 4, !noundef !7
  %.val = load i32, ptr %i.ba, align 4, !noundef !7
  %i.bb = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.bb, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.085128, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.084129, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.085128, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %.sroa.01.0.copyload.i.i41 = load i64, ptr %i.bc, align 4, !alias.scope !360 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc.i.i42 = trunc i64 %.sroa.01.0.copyload.i.i41 to i32
  %i.bd = getelementptr [8 x i8], ptr %.sroa.0.085128, i64 %.sroa.15.084129 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -8     ; 2 uses
  %.sroa.13.032.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.085128, i64 16 ; 3 uses
  %i.bf = icmp ult ptr %.sroa.13.032.i.i43, %i.be
  %.val1.i.pre.i.i44 = load i32, ptr %.sroa.0.085128, align 4, !alias.scope !361, !noalias !7 ; 4 uses
  br i1 %i.bf, label %.lr.ph.i.i59, label %.preheader.i.i45

.preheader.i.i45:                                 ; preds = %.lr.ph.i.i59, %bb.g
  %.sroa.23.0.lcssa.i.i46 = phi i64 [ 0, %bb.g ], [ %i.bz, %.lr.ph.i.i59 ] ; 2 uses
  %.sroa.017.0.lcssa.i.i47 = phi ptr [ %i.bc, %bb.g ], [ %i.bt, %.lr.ph.i.i59 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i48 = phi ptr [ %.sroa.13.032.i.i43, %bb.g ], [ %.sroa.13.0.i.i65, %.lr.ph.i.i59 ] ; 2 uses
  %i.bg = icmp eq ptr %.sroa.13.0.lcssa.i.i48, %i.bd
  br i1 %i.bg, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNCNvMNtB1B_6hybridNtB3q_11HybridIndex13full_snapshots0_00E0E0EB1B_.exit.i, label %.cont.i.i49

.cont.i.i49:                                      ; preds = %.preheader.i.i45, %.cont.i.i49
  %.sroa.017.1.i7.i50 = phi ptr [ %.sroa.13.1.i6.i51, %.cont.i.i49 ], [ %.sroa.017.0.lcssa.i.i47, %.preheader.i.i45 ]
  %.sroa.13.1.i6.i51 = phi ptr [ %.sroa.13.1.sroa.gep.i.i55, %.cont.i.i49 ], [ %.sroa.13.0.lcssa.i.i48, %.preheader.i.i45 ] ; 5 uses
  %.sroa.23.1.i5.i52 = phi i64 [ %i.bl, %.cont.i.i49 ], [ %.sroa.23.0.lcssa.i.i46, %.preheader.i.i45 ] ; 2 uses
  %.val.i.else.val.i.i53 = load i32, ptr %.sroa.13.1.i6.i51, align 4, !alias.scope !360, !noalias !362, !noundef !7
  %i.bh = icmp uge i32 %.val1.i.pre.i.i44, %.val.i.else.val.i.i53
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.23.1.i5.i52 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 4, !alias.scope !360, !noalias !362
  store i64 %i.bj, ptr %.sroa.017.1.i7.i50, align 4, !alias.scope !360, !noalias !362
  %.else.val.i.i54 = load i64, ptr %.sroa.13.1.i6.i51, align 4, !alias.scope !360, !noalias !362
  store i64 %.else.val.i.i54, ptr %i.bi, align 4, !alias.scope !360, !noalias !362
  %i.bk = zext i1 %i.bh to i64
  %i.bl = add i64 %.sroa.23.1.i5.i52, %i.bk       ; 2 uses
  %.sroa.13.1.sroa.gep.i.i55 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i51, i64 8 ; 2 uses
  %i.bm = icmp eq ptr %.sroa.13.1.sroa.gep.i.i55, %i.bd
  br i1 %i.bm, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNCNvMNtB1B_6hybridNtB3q_11HybridIndex13full_snapshots0_00E0E0EB1B_.exit.i, label %.cont.i.i49

.lr.ph.i.i59:                                     ; preds = %bb.g, %.lr.ph.i.i59
  %.sroa.13.035.i.i60 = phi ptr [ %.sroa.13.0.i.i65, %.lr.ph.i.i59 ], [ %.sroa.13.032.i.i43, %bb.g ] ; 3 uses
  %.sroa.017.034.i.i61 = phi ptr [ %i.bt, %.lr.ph.i.i59 ], [ %i.bc, %bb.g ] ; 3 uses
  %.sroa.23.033.i.i62 = phi i64 [ %i.bz, %.lr.ph.i.i59 ], [ 0, %bb.g ] ; 2 uses
  %.val.i13.i.i63 = load i32, ptr %.sroa.13.035.i.i60, align 4, !alias.scope !360, !noalias !363, !noundef !7
  %i.bn = icmp uge i32 %.val1.i.pre.i.i44, %.val.i13.i.i63
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.23.033.i.i62 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 4, !alias.scope !360, !noalias !363
  store i64 %i.bp, ptr %.sroa.017.034.i.i61, align 4, !alias.scope !360, !noalias !363
  %i.bq = load i64, ptr %.sroa.13.035.i.i60, align 4, !alias.scope !360, !noalias !363
  store i64 %i.bq, ptr %i.bo, align 4, !alias.scope !360, !noalias !363
  %i.br = zext i1 %i.bn to i64
  %i.bs = add i64 %.sroa.23.033.i.i62, %i.br      ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.034.i.i61, i64 16 ; 4 uses
  %.val.i15.i.i64 = load i32, ptr %i.bt, align 4, !alias.scope !360, !noalias !364, !noundef !7
  %i.bu = icmp uge i32 %.val1.i.pre.i.i44, %.val.i15.i.i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bs ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 4, !alias.scope !360, !noalias !364
  store i64 %i.bw, ptr %.sroa.13.035.i.i60, align 4, !alias.scope !360, !noalias !364
  %i.bx = load i64, ptr %i.bt, align 4, !alias.scope !360, !noalias !364
  store i64 %i.bx, ptr %i.bv, align 4, !alias.scope !360, !noalias !364
  %i.by = zext i1 %i.bu to i64
  %i.bz = add i64 %i.bs, %i.by                    ; 2 uses
  %.sroa.13.0.i.i65 = getelementptr inbounds nuw i8, ptr %.sroa.017.034.i.i61, i64 24 ; 3 uses
  %i.ca = icmp ult ptr %.sroa.13.0.i.i65, %i.be
  br i1 %i.ca, label %.lr.ph.i.i59, label %.preheader.i.i45

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNCNvMNtB1B_6hybridNtB3q_11HybridIndex13full_snapshots0_00E0E0EB1B_.exit.i: ; preds = %.cont.i.i49, %.preheader.i.i45
  %.sroa.23.1.i.lcssa.i56 = phi i64 [ %.sroa.23.0.lcssa.i.i46, %.preheader.i.i45 ], [ %i.bl, %.cont.i.i49 ] ; 2 uses
  %.sroa.017.1.i.lcssa.i57 = phi ptr [ %.sroa.017.0.lcssa.i.i47, %.preheader.i.i45 ], [ %.sroa.13.1.i6.i51, %.cont.i.i49 ]
  %i.cb = icmp uge i32 %.val1.i.pre.i.i44, %.sroa.0.sroa.0.0.extract.trunc.i.i42
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.23.1.i.lcssa.i56 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 4, !alias.scope !360, !noalias !362
  store i64 %i.cd, ptr %.sroa.017.1.i.lcssa.i57, align 4, !alias.scope !360, !noalias !362
  store i64 %.sroa.01.0.copyload.i.i41, ptr %i.cc, align 4, !alias.scope !360, !noalias !362
  %i.ce = zext i1 %i.cb to i64
  %i.cf = add i64 %.sroa.23.1.i.lcssa.i56, %i.ce  ; 3 uses
  %.not7.i58 = icmp ult i64 %i.cf, %.sroa.15.084129
  br i1 %.not7.i58, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNCNvMNtB1B_6hybridNtB3q_11HybridIndex13full_snapshots0_00E0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNCNvMNtB1B_6hybridNtB3q_11HybridIndex13full_snapshots0_00E0E0EB1B_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.085128, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.084129, i64 noundef 0, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %i.ch = sub nuw i64 %.sroa.15.084129, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.085128, i64 %i.cg
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry12split_at_mutBy_.exit
  %.sroa.023.0.be = phi ptr [ %i.aw, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry12split_at_mutBy_.exit ], [ null, %bb.i ]
  %.sroa.15.0.be = phi i64 [ %i.az, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry12split_at_mutBy_.exit ], [ %i.ch, %bb.i ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.ax, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry12split_at_mutBy_.exit ], [ %i.ci, %bb.i ] ; 3 uses
  %i.cj = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.cj, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB17_20sort_unstable_by_keymNCNvNtB1b_8external14merge_segmentss0_0E0EB1b_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 33
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph132

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.d, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph132

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_networkNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1f_20sort_unstable_by_keymNCNvNtB1j_8external14merge_segmentss0_0E0EB1j_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.085.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.084.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB15_20sort_unstable_by_keymNCNvNtB19_8external14merge_segmentss0_0E0EB19_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.085.lcssa, i64 noundef %.sroa.15.084.lcssa, ptr noalias nofree nonnull align 8 poison) #24
  br label %bb.c

.lr.ph132:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.082131 = phi i32 [ %i.d, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.083130 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.084129 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.085128 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.d = add nsw i32 %.sroa.026.082131, -1        ; 3 uses
  %i.e = lshr i64 %.sroa.15.084129, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.085128, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.e, 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.085128, i64 %.idx2.i ; 3 uses
  %i.h = icmp samesign ult i64 %.sroa.15.084129, 64
  br i1 %i.h, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtB13_8external14merge_segmentss0_0E0EB13_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph132
  %i.i = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB14_20sort_unstable_by_keymNCNvNtB18_8external14merge_segmentss0_0E0EB18_(ptr noundef nonnull readonly align 4 %.sroa.0.085128, ptr noundef readonly %i.f, ptr noundef readonly %i.g, i64 noundef %i.e)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB15_20sort_unstable_by_keymNCNvNtB19_8external14merge_segmentss0_0E0EB19_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtB13_8external14merge_segmentss0_0E0EB13_.exit.i: ; preds = %.lr.ph132
  %.val6.i = load i32, ptr %.sroa.0.085128, align 4, !alias.scope !389, !noundef !7 ; 2 uses
  %.val7.i = load i32, ptr %i.f, align 4, !alias.scope !389, !noundef !7 ; 2 uses
  %i.j = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i32, ptr %i.g, align 4, !alias.scope !389, !noundef !7 ; 2 uses
  %i.k = icmp ult i32 %.val6.i, %.val5.i
  %i.l = xor i1 %i.j, %i.k
  %i.m = icmp ult i32 %.val7.i, %.val5.i
  %i.n = xor i1 %i.j, %i.m
  %..i.i = select i1 %i.n, ptr %i.g, ptr %i.f
  %.sroa.0.0.i.i = select i1 %i.l, ptr %.sroa.0.085128, ptr %..i.i
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB15_20sort_unstable_by_keymNCNvNtB19_8external14merge_segmentss0_0E0EB19_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB15_20sort_unstable_by_keymNCNvNtB19_8external14merge_segmentss0_0E0EB19_.exit: ; preds = %bb.b, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtB13_8external14merge_segmentss0_0E0EB13_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtB13_8external14merge_segmentss0_0E0EB13_.exit.i ], [ %i.i, %bb.b ]
  %i.o = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.p = ptrtoint ptr %.sroa.0.085128 to i64
  %i.q = sub nuw i64 %i.o, %i.p                   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.q, 3           ; 3 uses
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.084129
  tail call void @llvm.assume(i1 %i.r)
  %.not = icmp eq ptr %.sroa.023.083130, null
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB15_20sort_unstable_by_keymNCNvNtB19_8external14merge_segmentss0_0E0EB19_.exit, %bb.f
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.085128, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.084129, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.085128, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.s, align 4, !alias.scope !392 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.01.0.copyload.i.i to i32
  %i.t = getelementptr [8 x i8], ptr %.sroa.0.085128, i64 %.sroa.15.084129 ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8       ; 2 uses
  %.sroa.13.032.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.085128, i64 16 ; 3 uses
  %i.v = icmp ult ptr %.sroa.13.032.i.i, %i.u
  %.val1.i.pre.i.i = load i32, ptr %.sroa.0.085128, align 4, !alias.scope !393, !noalias !7 ; 4 uses
  br i1 %i.v, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %.lr.ph.i.i ] ; 2 uses
  %.sroa.017.0.lcssa.i.i = phi ptr [ %i.s, %bb.d ], [ %i.aj, %.lr.ph.i.i ] ; 2 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.032.i.i, %bb.d ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.w = icmp eq ptr %.sroa.13.0.lcssa.i.i, %i.t
  br i1 %i.w, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtB1B_8external14merge_segmentss0_0E0EB1B_.exit.i, label %.cont.i.i

.cont.i.i:                                        ; preds = %.preheader.i.i, %.cont.i.i
  %.sroa.017.1.i7.i = phi ptr [ %.sroa.13.1.i6.i, %.cont.i.i ], [ %.sroa.017.0.lcssa.i.i, %.preheader.i.i ]
  %.sroa.13.1.i6.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i ] ; 5 uses
  %.sroa.23.1.i5.i = phi i64 [ %i.ab, %.cont.i.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.val.i.else.val.i.i = load i32, ptr %.sroa.13.1.i6.i, align 4, !alias.scope !392, !noalias !394, !noundef !7
  %i.x = icmp ult i32 %.val.i.else.val.i.i, %.val1.i.pre.i.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.23.1.i5.i ; 2 uses
  %i.z = load i64, ptr %i.y, align 4, !alias.scope !392, !noalias !394
  store i64 %i.z, ptr %.sroa.017.1.i7.i, align 4, !alias.scope !392, !noalias !394
  %.else.val.i.i = load i64, ptr %.sroa.13.1.i6.i, align 4, !alias.scope !392, !noalias !394
  store i64 %.else.val.i.i, ptr %i.y, align 4, !alias.scope !392, !noalias !394
  %i.aa = zext i1 %i.x to i64
  %i.ab = add i64 %.sroa.23.1.i5.i, %i.aa         ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i, i64 8 ; 2 uses
  %i.ac = icmp eq ptr %.sroa.13.1.sroa.gep.i.i, %i.t
  br i1 %i.ac, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtB1B_8external14merge_segmentss0_0E0EB1B_.exit.i, label %.cont.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.13.035.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.032.i.i, %bb.d ] ; 3 uses
  %.sroa.017.034.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %.sroa.23.033.i.i = phi i64 [ %i.ap, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.val.i13.i.i = load i32, ptr %.sroa.13.035.i.i, align 4, !alias.scope !392, !noalias !395, !noundef !7
  %i.ad = icmp ult i32 %.val.i13.i.i, %.val1.i.pre.i.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.23.033.i.i ; 2 uses
  %i.af = load i64, ptr %i.ae, align 4, !alias.scope !392, !noalias !395
  store i64 %i.af, ptr %.sroa.017.034.i.i, align 4, !alias.scope !392, !noalias !395
  %i.ag = load i64, ptr %.sroa.13.035.i.i, align 4, !alias.scope !392, !noalias !395
  store i64 %i.ag, ptr %i.ae, align 4, !alias.scope !392, !noalias !395
  %i.ah = zext i1 %i.ad to i64
  %i.ai = add i64 %.sroa.23.033.i.i, %i.ah        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.017.034.i.i, i64 16 ; 4 uses
  %.val.i15.i.i = load i32, ptr %i.aj, align 4, !alias.scope !392, !noalias !396, !noundef !7
  %i.ak = icmp ult i32 %.val.i15.i.i, %.val1.i.pre.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ai ; 2 uses
  %i.am = load i64, ptr %i.al, align 4, !alias.scope !392, !noalias !396
  store i64 %i.am, ptr %.sroa.13.035.i.i, align 4, !alias.scope !392, !noalias !396
  %i.an = load i64, ptr %i.aj, align 4, !alias.scope !392, !noalias !396
  store i64 %i.an, ptr %i.al, align 4, !alias.scope !392, !noalias !396
  %i.ao = zext i1 %i.ak to i64
  %i.ap = add i64 %i.ai, %i.ao                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.034.i.i, i64 24 ; 3 uses
  %i.aq = icmp ult ptr %.sroa.13.0.i.i, %i.u
  br i1 %i.aq, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtB1B_8external14merge_segmentss0_0E0EB1B_.exit.i: ; preds = %.cont.i.i, %.preheader.i.i
  %.sroa.23.1.i.lcssa.i = phi i64 [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ], [ %i.ab, %.cont.i.i ] ; 2 uses
  %.sroa.017.1.i.lcssa.i = phi ptr [ %.sroa.017.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.13.1.i6.i, %.cont.i.i ]
  %i.ar = icmp ugt i32 %.val1.i.pre.i.i, %.sroa.0.sroa.0.0.extract.trunc.i.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.23.1.i.lcssa.i ; 2 uses
  %i.at = load i64, ptr %i.as, align 4, !alias.scope !392, !noalias !394
  store i64 %i.at, ptr %.sroa.017.1.i.lcssa.i, align 4, !alias.scope !392, !noalias !394
  store i64 %.sroa.01.0.copyload.i.i, ptr %i.as, align 4, !alias.scope !392, !noalias !394
  %i.au = zext i1 %i.ar to i64
  %i.av = add i64 %.sroa.23.1.i.lcssa.i, %i.au    ; 5 uses
  %.not7.i = icmp ult i64 %i.av, %.sroa.15.084129
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry12split_at_mutBy_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtB1B_8external14merge_segmentss0_0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry12split_at_mutBy_.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtB1B_8external14merge_segmentss0_0E0EB1B_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.085128, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.084129, i64 noundef 0, i64 noundef %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.085128, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = xor i64 %i.av, -1
  %i.az = add i64 %.sroa.15.084129, %i.ay
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB17_20sort_unstable_by_keymNCNvNtB1b_8external14merge_segmentss0_0E0EB1b_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.085128, i64 noundef %i.av, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.083130, i32 noundef %i.d, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.f:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB15_20sort_unstable_by_keymNCNvNtB19_8external14merge_segmentss0_0E0EB19_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.085128, i64 %i.q
  %.sroa.023.0.val = load i32, ptr %.sroa.023.083130, align 4, !noundef !7
  %.val = load i32, ptr %i.ba, align 4, !noundef !7
  %i.bb = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.bb, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.085128, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.084129, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.085128, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %.sroa.01.0.copyload.i.i41 = load i64, ptr %i.bc, align 4, !alias.scope !399 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc.i.i42 = trunc i64 %.sroa.01.0.copyload.i.i41 to i32
  %i.bd = getelementptr [8 x i8], ptr %.sroa.0.085128, i64 %.sroa.15.084129 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -8     ; 2 uses
  %.sroa.13.032.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.085128, i64 16 ; 3 uses
  %i.bf = icmp ult ptr %.sroa.13.032.i.i43, %i.be
  %.val1.i.pre.i.i44 = load i32, ptr %.sroa.0.085128, align 4, !alias.scope !400, !noalias !7 ; 4 uses
  br i1 %i.bf, label %.lr.ph.i.i59, label %.preheader.i.i45

.preheader.i.i45:                                 ; preds = %.lr.ph.i.i59, %bb.g
  %.sroa.23.0.lcssa.i.i46 = phi i64 [ 0, %bb.g ], [ %i.bz, %.lr.ph.i.i59 ] ; 2 uses
  %.sroa.017.0.lcssa.i.i47 = phi ptr [ %i.bc, %bb.g ], [ %i.bt, %.lr.ph.i.i59 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i48 = phi ptr [ %.sroa.13.032.i.i43, %bb.g ], [ %.sroa.13.0.i.i65, %.lr.ph.i.i59 ] ; 2 uses
  %i.bg = icmp eq ptr %.sroa.13.0.lcssa.i.i48, %i.bd
  br i1 %i.bg, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtB1B_8external14merge_segmentss0_0E0E0EB1B_.exit.i, label %.cont.i.i49

.cont.i.i49:                                      ; preds = %.preheader.i.i45, %.cont.i.i49
  %.sroa.017.1.i7.i50 = phi ptr [ %.sroa.13.1.i6.i51, %.cont.i.i49 ], [ %.sroa.017.0.lcssa.i.i47, %.preheader.i.i45 ]
  %.sroa.13.1.i6.i51 = phi ptr [ %.sroa.13.1.sroa.gep.i.i55, %.cont.i.i49 ], [ %.sroa.13.0.lcssa.i.i48, %.preheader.i.i45 ] ; 5 uses
  %.sroa.23.1.i5.i52 = phi i64 [ %i.bl, %.cont.i.i49 ], [ %.sroa.23.0.lcssa.i.i46, %.preheader.i.i45 ] ; 2 uses
  %.val.i.else.val.i.i53 = load i32, ptr %.sroa.13.1.i6.i51, align 4, !alias.scope !399, !noalias !401, !noundef !7
  %i.bh = icmp uge i32 %.val1.i.pre.i.i44, %.val.i.else.val.i.i53
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.23.1.i5.i52 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 4, !alias.scope !399, !noalias !401
  store i64 %i.bj, ptr %.sroa.017.1.i7.i50, align 4, !alias.scope !399, !noalias !401
  %.else.val.i.i54 = load i64, ptr %.sroa.13.1.i6.i51, align 4, !alias.scope !399, !noalias !401
  store i64 %.else.val.i.i54, ptr %i.bi, align 4, !alias.scope !399, !noalias !401
  %i.bk = zext i1 %i.bh to i64
  %i.bl = add i64 %.sroa.23.1.i5.i52, %i.bk       ; 2 uses
  %.sroa.13.1.sroa.gep.i.i55 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i51, i64 8 ; 2 uses
  %i.bm = icmp eq ptr %.sroa.13.1.sroa.gep.i.i55, %i.bd
  br i1 %i.bm, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtB1B_8external14merge_segmentss0_0E0E0EB1B_.exit.i, label %.cont.i.i49

.lr.ph.i.i59:                                     ; preds = %bb.g, %.lr.ph.i.i59
  %.sroa.13.035.i.i60 = phi ptr [ %.sroa.13.0.i.i65, %.lr.ph.i.i59 ], [ %.sroa.13.032.i.i43, %bb.g ] ; 3 uses
  %.sroa.017.034.i.i61 = phi ptr [ %i.bt, %.lr.ph.i.i59 ], [ %i.bc, %bb.g ] ; 3 uses
  %.sroa.23.033.i.i62 = phi i64 [ %i.bz, %.lr.ph.i.i59 ], [ 0, %bb.g ] ; 2 uses
  %.val.i13.i.i63 = load i32, ptr %.sroa.13.035.i.i60, align 4, !alias.scope !399, !noalias !402, !noundef !7
  %i.bn = icmp uge i32 %.val1.i.pre.i.i44, %.val.i13.i.i63
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.23.033.i.i62 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 4, !alias.scope !399, !noalias !402
  store i64 %i.bp, ptr %.sroa.017.034.i.i61, align 4, !alias.scope !399, !noalias !402
  %i.bq = load i64, ptr %.sroa.13.035.i.i60, align 4, !alias.scope !399, !noalias !402
  store i64 %i.bq, ptr %i.bo, align 4, !alias.scope !399, !noalias !402
  %i.br = zext i1 %i.bn to i64
  %i.bs = add i64 %.sroa.23.033.i.i62, %i.br      ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.034.i.i61, i64 16 ; 4 uses
  %.val.i15.i.i64 = load i32, ptr %i.bt, align 4, !alias.scope !399, !noalias !403, !noundef !7
  %i.bu = icmp uge i32 %.val1.i.pre.i.i44, %.val.i15.i.i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bs ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 4, !alias.scope !399, !noalias !403
  store i64 %i.bw, ptr %.sroa.13.035.i.i60, align 4, !alias.scope !399, !noalias !403
  %i.bx = load i64, ptr %i.bt, align 4, !alias.scope !399, !noalias !403
  store i64 %i.bx, ptr %i.bv, align 4, !alias.scope !399, !noalias !403
  %i.by = zext i1 %i.bu to i64
  %i.bz = add i64 %i.bs, %i.by                    ; 2 uses
  %.sroa.13.0.i.i65 = getelementptr inbounds nuw i8, ptr %.sroa.017.034.i.i61, i64 24 ; 3 uses
  %i.ca = icmp ult ptr %.sroa.13.0.i.i65, %i.be
  br i1 %i.ca, label %.lr.ph.i.i59, label %.preheader.i.i45

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtB1B_8external14merge_segmentss0_0E0E0EB1B_.exit.i: ; preds = %.cont.i.i49, %.preheader.i.i45
  %.sroa.23.1.i.lcssa.i56 = phi i64 [ %.sroa.23.0.lcssa.i.i46, %.preheader.i.i45 ], [ %i.bl, %.cont.i.i49 ] ; 2 uses
  %.sroa.017.1.i.lcssa.i57 = phi ptr [ %.sroa.017.0.lcssa.i.i47, %.preheader.i.i45 ], [ %.sroa.13.1.i6.i51, %.cont.i.i49 ]
  %i.cb = icmp uge i32 %.val1.i.pre.i.i44, %.sroa.0.sroa.0.0.extract.trunc.i.i42
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.23.1.i.lcssa.i56 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 4, !alias.scope !399, !noalias !401
  store i64 %i.cd, ptr %.sroa.017.1.i.lcssa.i57, align 4, !alias.scope !399, !noalias !401
  store i64 %.sroa.01.0.copyload.i.i41, ptr %i.cc, align 4, !alias.scope !399, !noalias !401
  %i.ce = zext i1 %i.cb to i64
  %i.cf = add i64 %.sroa.23.1.i.lcssa.i56, %i.ce  ; 3 uses
  %.not7.i58 = icmp ult i64 %i.cf, %.sroa.15.084129
  br i1 %.not7.i58, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtB1B_8external14merge_segmentss0_0E0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtB1B_8external14merge_segmentss0_0E0E0EB1B_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.085128, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.084129, i64 noundef 0, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %i.ch = sub nuw i64 %.sroa.15.084129, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.085128, i64 %i.cg
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry12split_at_mutBy_.exit
  %.sroa.023.0.be = phi ptr [ %i.aw, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry12split_at_mutBy_.exit ], [ null, %bb.i ]
  %.sroa.15.0.be = phi i64 [ %i.az, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry12split_at_mutBy_.exit ], [ %i.ch, %bb.i ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.ax, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry12split_at_mutBy_.exit ], [ %i.ci, %bb.i ] ; 3 uses
  %i.cj = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.cj, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB17_16sort_unstable_byNCNvMs0_B19_NtB19_14ExternalSorter10sort_arena0E0EB1b_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(12) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [12 x i8], align 4                ; 5 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph135

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph135

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1f_16sort_unstable_byNCNvMs0_B1h_NtB1h_14ExternalSorter10sort_arena0E0EB1j_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.e

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.089.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.088.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_14ExternalSorter10sort_arena0E0EB19_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.089.lcssa, i64 noundef %.sroa.15.088.lcssa, ptr noalias nofree nonnull align 8 poison) #24
  br label %bb.e

.lr.ph135:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.086134 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.087133 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.088132 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.089131 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 25 uses
  %i.f = add nsw i32 %.sroa.026.086134, -1        ; 3 uses
  %i.g = lshr i64 %.sroa.15.088132, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 48
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 84
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.15.088132, 64
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph135
  %i.k = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB14_16sort_unstable_byNCNvMs0_B16_NtB16_14ExternalSorter10sort_arena0E0EB18_(ptr noundef nonnull readonly align 4 %.sroa.0.089131, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_14ExternalSorter10sort_arena0E0EB19_.exit

bb.c:                                             ; preds = %.lr.ph135
  %.val10.i = load i32, ptr %.sroa.0.089131, align 4, !alias.scope !428 ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.0.089131, i64 8
  %.val11.i = load i32, ptr %i.l, align 4, !alias.scope !428, !noundef !7 ; 4 uses
  %.val12.i = load i32, ptr %i.h, align 4, !alias.scope !428 ; 2 uses
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %.val13.i = load i32, ptr %i.m, align 4, !alias.scope !428, !noundef !7 ; 4 uses
  %i.n = icmp eq i32 %.val11.i, %.val13.i
  %i.o = icmp ult i32 %.val10.i, %.val12.i
  %i.p = icmp ult i32 %.val11.i, %.val13.i
  %i.q = select i1 %i.n, i1 %i.o, i1 %i.p         ; 2 uses
  %.val8.i = load i32, ptr %i.i, align 4, !alias.scope !428 ; 2 uses
  %i.r = getelementptr i8, ptr %i.i, i64 8
  %.val9.i = load i32, ptr %i.r, align 4, !alias.scope !428, !noundef !7 ; 4 uses
  %i.s = icmp eq i32 %.val11.i, %.val9.i
  %i.t = icmp ult i32 %.val10.i, %.val8.i
  %i.u = icmp ult i32 %.val11.i, %.val9.i
  %i.v = select i1 %i.s, i1 %i.t, i1 %i.u
  %i.w = xor i1 %i.q, %i.v
  br i1 %i.w, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_14ExternalSorter10sort_arena0E0EB19_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %.val13.i, %.val9.i
  %i.y = icmp ult i32 %.val12.i, %.val8.i
  %i.z = icmp ult i32 %.val13.i, %.val9.i
  %i.aa = select i1 %i.x, i1 %i.y, i1 %i.z
  %i.ab = xor i1 %i.q, %i.aa
  %..i.i = select i1 %i.ab, ptr %i.i, ptr %i.h
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_14ExternalSorter10sort_arena0E0EB19_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_14ExternalSorter10sort_arena0E0EB19_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.b ], [ %.sroa.0.089131, %bb.c ], [ %..i.i, %bb.d ]
  %i.ac = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ad = ptrtoint ptr %.sroa.0.089131 to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad                ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ae, 12         ; 3 uses
  %i.af = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.088132
  tail call void @llvm.assume(i1 %i.af)
  %.not = icmp eq ptr %.sroa.023.087133, null
  br i1 %.not, label %bb.f, label %bb.h

bb.e:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_14ExternalSorter10sort_arena0E0EB19_.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.089131, i64 noundef range(i64 33, 768614336404564651) %.sroa.15.088132, i64 noundef 0, i64 noundef range(i64 0, 768614336404564650) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 12 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.ag, i64 12, i1 false), !noalias !431
  %i.ah = getelementptr [12 x i8], ptr %.sroa.0.089131, i64 %.sroa.15.088132 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -12    ; 2 uses
  %.sroa.13.037.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 24 ; 3 uses
  %i.aj = icmp ult ptr %.sroa.13.037.i.i, %i.ai
  %.val2.i.pre.i.i = load i32, ptr %.sroa.0.089131, align 4, !alias.scope !433, !noalias !7 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 8
  %.val3.i14.i.i = load i32, ptr %i.ak, align 4, !alias.scope !433, !noalias !7 ; 6 uses
  br i1 %i.aj, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.f ], [ %i.bj, %.lr.ph.i.i ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.037.i.i, %bb.f ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ]
  %.sroa.019.1.i.i.ph = phi ptr [ %i.ag, %bb.f ], [ %i.bb, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.as, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep30.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.019.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.019.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.al = icmp eq ptr %.sroa.13.1.i.i, %i.ah      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.al, ptr %i.b, ptr %.sroa.13.1.i.i ; 2 uses
  %.val.i.i.i = load i32, ptr %.sroa.01.0.i.i, align 4, !noalias !434
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.al, ptr %i.b, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val1.i.i.i = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !noalias !434, !noundef !7 ; 2 uses
  %i.am = icmp eq i32 %.val1.i.i.i, %.val3.i14.i.i
  %i.an = icmp ult i32 %.val.i.i.i, %.val2.i.pre.i.i
  %i.ao = icmp ult i32 %.val1.i.i.i, %.val3.i14.i.i
  %i.ap = select i1 %i.am, i1 %i.an, i1 %i.ao
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.019.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.aq, i64 12, i1 false), !alias.scope !435, !noalias !436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aq, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.01.0.i.i, i64 12, i1 false), !noalias !434
  %i.ar = zext i1 %i.ap to i64
  %i.as = add i64 %.sroa.23.1.i.i, %i.ar          ; 6 uses
  %.sroa.13.1.sroa.gep30.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 12
  br i1 %i.al, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_14ExternalSorter10sort_arena0E0EB1B_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.13.040.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.037.i.i, %bb.f ] ; 3 uses
  %.sroa.019.039.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.ag, %bb.f ] ; 5 uses
  %.sroa.23.038.i.i = phi i64 [ %i.bj, %.lr.ph.i.i ], [ 0, %bb.f ] ; 2 uses
  %.val.i11.i.i = load i32, ptr %.sroa.13.040.i.i, align 4, !alias.scope !435, !noalias !437
  %i.at = getelementptr i8, ptr %.sroa.019.039.i.i, i64 20
  %.val1.i12.i.i = load i32, ptr %i.at, align 4, !alias.scope !435, !noalias !437, !noundef !7 ; 2 uses
  %i.au = icmp eq i32 %.val1.i12.i.i, %.val3.i14.i.i
  %i.av = icmp ult i32 %.val.i11.i.i, %.val2.i.pre.i.i
  %i.aw = icmp ult i32 %.val1.i12.i.i, %.val3.i14.i.i
  %i.ax = select i1 %i.au, i1 %i.av, i1 %i.aw
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %.sroa.23.038.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.019.039.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ay, i64 12, i1 false), !alias.scope !435, !noalias !437
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ay, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.040.i.i, i64 12, i1 false), !alias.scope !435, !noalias !437
  %i.az = zext i1 %i.ax to i64
  %i.ba = add i64 %.sroa.23.038.i.i, %i.az        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.019.039.i.i, i64 24 ; 4 uses
  %.val.i15.i.i = load i32, ptr %i.bb, align 4, !alias.scope !435, !noalias !438
  %i.bc = getelementptr i8, ptr %.sroa.019.039.i.i, i64 32
  %.val1.i16.i.i = load i32, ptr %i.bc, align 4, !alias.scope !435, !noalias !438, !noundef !7 ; 2 uses
  %i.bd = icmp eq i32 %.val1.i16.i.i, %.val3.i14.i.i
  %i.be = icmp ult i32 %.val.i15.i.i, %.val2.i.pre.i.i
  %i.bf = icmp ult i32 %.val1.i16.i.i, %.val3.i14.i.i
  %i.bg = select i1 %i.bd, i1 %i.be, i1 %i.bf
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %i.ba ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.040.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.bh, i64 12, i1 false), !alias.scope !435, !noalias !438
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bh, ptr noundef nonnull align 4 dereferenceable(12) %i.bb, i64 12, i1 false), !alias.scope !435, !noalias !438
  %i.bi = zext i1 %i.bg to i64
  %i.bj = add i64 %i.ba, %i.bi                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.019.039.i.i, i64 36 ; 3 uses
  %i.bk = icmp ult ptr %.sroa.13.0.i.i, %i.ai
  br i1 %i.bk, label %.lr.ph.i.i, label %.preheader.i.i.preheader

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_14ExternalSorter10sort_arena0E0EB1B_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !432
  %.not7.i = icmp ult i64 %i.as, %.sroa.15.088132
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting12split_at_mutBy_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_14ExternalSorter10sort_arena0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting12split_at_mutBy_.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_14ExternalSorter10sort_arena0E0EB1B_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.089131, i64 noundef range(i64 33, 768614336404564651) %.sroa.15.088132, i64 noundef 0, i64 noundef %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.089131, i64 %i.as ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = xor i64 %i.as, -1
  %i.bo = add i64 %.sroa.15.088132, %i.bn
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB17_16sort_unstable_byNCNvMs0_B19_NtB19_14ExternalSorter10sort_arena0E0EB1b_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.089131, i64 noundef %i.as, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) %.sroa.023.087133, i32 noundef %i.f, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_14ExternalSorter10sort_arena0E0EB19_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 %i.ae ; 2 uses
  %.sroa.023.0.val = load i32, ptr %.sroa.023.087133, align 4
  %i.bq = getelementptr i8, ptr %.sroa.023.087133, i64 8
  %.sroa.023.0.val34 = load i32, ptr %i.bq, align 4, !noundef !7 ; 2 uses
  %.val = load i32, ptr %i.bp, align 4
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  %.val35 = load i32, ptr %i.br, align 4, !noundef !7 ; 2 uses
  %i.bs = icmp eq i32 %.sroa.023.0.val34, %.val35
  %i.bt = icmp ult i32 %.sroa.023.0.val, %.val
  %i.bu = icmp ult i32 %.sroa.023.0.val34, %.val35
  %i.bv = select i1 %i.bs, i1 %i.bt, i1 %i.bu
  br i1 %i.bv, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.089131, i64 noundef range(i64 33, 768614336404564651) %.sroa.15.088132, i64 noundef 0, i64 noundef range(i64 0, 768614336404564650) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 12 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !noalias !441
  %i.bx = getelementptr [12 x i8], ptr %.sroa.0.089131, i64 %.sroa.15.088132 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -12    ; 2 uses
  %.sroa.13.037.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 24 ; 3 uses
  %i.bz = icmp ult ptr %.sroa.13.037.i.i43, %i.by
  %.val2.i.pre.i.i44 = load i32, ptr %.sroa.0.089131, align 4, !alias.scope !443, !noalias !7 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 8
  %.val3.i14.i.i45 = load i32, ptr %i.ca, align 4, !alias.scope !443, !noalias !7 ; 6 uses
  br i1 %i.bz, label %.lr.ph.i.i60, label %.preheader.i.i46.preheader

.preheader.i.i46.preheader:                       ; preds = %.lr.ph.i.i60, %bb.i
  %.sroa.23.1.i.i50.ph = phi i64 [ 0, %bb.i ], [ %i.cz, %.lr.ph.i.i60 ]
  %.sroa.13.1.i.i51.ph = phi ptr [ %.sroa.13.037.i.i43, %bb.i ], [ %.sroa.13.0.i.i68, %.lr.ph.i.i60 ]
  %.sroa.019.1.i.i52.ph = phi ptr [ %i.bw, %bb.i ], [ %i.cr, %.lr.ph.i.i60 ]
  br label %.preheader.i.i46

.preheader.i.i46:                                 ; preds = %.preheader.i.i46.preheader, %.preheader.i.i46
  %.sroa.23.1.i.i50 = phi i64 [ %i.ci, %.preheader.i.i46 ], [ %.sroa.23.1.i.i50.ph, %.preheader.i.i46.preheader ] ; 2 uses
  %.sroa.13.1.i.i51 = phi ptr [ %.sroa.13.1.sroa.gep30.i.i58, %.preheader.i.i46 ], [ %.sroa.13.1.i.i51.ph, %.preheader.i.i46.preheader ] ; 5 uses
  %.sroa.019.1.i.i52 = phi ptr [ %.sroa.13.1.i.i51, %.preheader.i.i46 ], [ %.sroa.019.1.i.i52.ph, %.preheader.i.i46.preheader ]
  %i.cb = icmp eq ptr %.sroa.13.1.i.i51, %i.bx    ; 3 uses
  %.sroa.01.0.i.i53 = select i1 %i.cb, ptr %i.a, ptr %.sroa.13.1.i.i51 ; 2 uses
  %.val.i.i.i54 = load i32, ptr %.sroa.01.0.i.i53, align 4, !noalias !444
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cb, ptr %i.a, ptr %.sroa.13.1.i.i51
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val1.i.i.i57 = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !noalias !444, !noundef !7 ; 2 uses
  %i.cc = icmp eq i32 %.val3.i14.i.i45, %.val1.i.i.i57
  %i.cd = icmp uge i32 %.val2.i.pre.i.i44, %.val.i.i.i54
  %i.ce = icmp uge i32 %.val3.i14.i.i45, %.val1.i.i.i57
  %i.cf = select i1 %i.cc, i1 %i.cd, i1 %i.ce
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %.sroa.23.1.i.i50 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.019.1.i.i52, ptr noundef nonnull align 4 dereferenceable(12) %i.cg, i64 12, i1 false), !alias.scope !445, !noalias !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cg, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.01.0.i.i53, i64 12, i1 false), !noalias !444
  %i.ch = zext i1 %i.cf to i64
  %i.ci = add i64 %.sroa.23.1.i.i50, %i.ch        ; 4 uses
  %.sroa.13.1.sroa.gep30.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i51, i64 12
  br i1 %i.cb, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_14ExternalSorter10sort_arena0E0E0EB1B_.exit.i, label %.preheader.i.i46

.lr.ph.i.i60:                                     ; preds = %bb.i, %.lr.ph.i.i60
  %.sroa.13.040.i.i61 = phi ptr [ %.sroa.13.0.i.i68, %.lr.ph.i.i60 ], [ %.sroa.13.037.i.i43, %bb.i ] ; 3 uses
  %.sroa.019.039.i.i62 = phi ptr [ %i.cr, %.lr.ph.i.i60 ], [ %i.bw, %bb.i ] ; 5 uses
  %.sroa.23.038.i.i63 = phi i64 [ %i.cz, %.lr.ph.i.i60 ], [ 0, %bb.i ] ; 2 uses
  %.val.i11.i.i64 = load i32, ptr %.sroa.13.040.i.i61, align 4, !alias.scope !445, !noalias !447
  %i.cj = getelementptr i8, ptr %.sroa.019.039.i.i62, i64 20
  %.val1.i12.i.i65 = load i32, ptr %i.cj, align 4, !alias.scope !445, !noalias !447, !noundef !7 ; 2 uses
  %i.ck = icmp eq i32 %.val3.i14.i.i45, %.val1.i12.i.i65
  %i.cl = icmp uge i32 %.val2.i.pre.i.i44, %.val.i11.i.i64
  %i.cm = icmp uge i32 %.val3.i14.i.i45, %.val1.i12.i.i65
  %i.cn = select i1 %i.ck, i1 %i.cl, i1 %i.cm
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %.sroa.23.038.i.i63 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.019.039.i.i62, ptr noundef nonnull align 4 dereferenceable(12) %i.co, i64 12, i1 false), !alias.scope !445, !noalias !447
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.co, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.040.i.i61, i64 12, i1 false), !alias.scope !445, !noalias !447
  %i.cp = zext i1 %i.cn to i64
  %i.cq = add i64 %.sroa.23.038.i.i63, %i.cp      ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.019.039.i.i62, i64 24 ; 4 uses
  %.val.i15.i.i66 = load i32, ptr %i.cr, align 4, !alias.scope !445, !noalias !448
  %i.cs = getelementptr i8, ptr %.sroa.019.039.i.i62, i64 32
  %.val1.i16.i.i67 = load i32, ptr %i.cs, align 4, !alias.scope !445, !noalias !448, !noundef !7 ; 2 uses
  %i.ct = icmp eq i32 %.val3.i14.i.i45, %.val1.i16.i.i67
  %i.cu = icmp uge i32 %.val2.i.pre.i.i44, %.val.i15.i.i66
  %i.cv = icmp uge i32 %.val3.i14.i.i45, %.val1.i16.i.i67
  %i.cw = select i1 %i.ct, i1 %i.cu, i1 %i.cv
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.cq ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.040.i.i61, ptr noundef nonnull align 4 dereferenceable(12) %i.cx, i64 12, i1 false), !alias.scope !445, !noalias !448
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cx, ptr noundef nonnull align 4 dereferenceable(12) %i.cr, i64 12, i1 false), !alias.scope !445, !noalias !448
  %i.cy = zext i1 %i.cw to i64
  %i.cz = add i64 %i.cq, %i.cy                    ; 2 uses
  %.sroa.13.0.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.019.039.i.i62, i64 36 ; 3 uses
  %i.da = icmp ult ptr %.sroa.13.0.i.i68, %i.by
  br i1 %i.da, label %.lr.ph.i.i60, label %.preheader.i.i46.preheader

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_14ExternalSorter10sort_arena0E0E0EB1B_.exit.i: ; preds = %.preheader.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !442
  %.not7.i59 = icmp ult i64 %i.ci, %.sroa.15.088132
  br i1 %.not7.i59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_14ExternalSorter10sort_arena0E0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_14ExternalSorter10sort_arena0E0E0EB1B_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.089131, i64 noundef range(i64 33, 768614336404564651) %.sroa.15.088132, i64 noundef 0, i64 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.db = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %i.dc = sub nuw i64 %.sroa.15.088132, %i.db
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.089131, i64 %i.db
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting12split_at_mutBy_.exit
  %.sroa.023.0.be = phi ptr [ %i.bl, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting12split_at_mutBy_.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.bo, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting12split_at_mutBy_.exit ], [ %i.dc, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bm, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting12split_at_mutBy_.exit ], [ %i.dd, %bb.k ] ; 3 uses
  %i.de = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.de, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB17_16sort_unstable_byNCNvNtB1b_7builder28write_index_v2_from_postings0E0EB1b_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(12) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [12 x i8], align 4                ; 5 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph135

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph135

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1f_16sort_unstable_byNCNvNtB1j_7builder28write_index_v2_from_postings0E0EB1j_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.e

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.089.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.088.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvNtB19_7builder28write_index_v2_from_postings0E0EB19_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.089.lcssa, i64 noundef %.sroa.15.088.lcssa, ptr noalias nofree nonnull align 8 poison) #24
  br label %bb.e

.lr.ph135:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.086134 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.087133 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.088132 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.089131 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 25 uses
  %i.f = add nsw i32 %.sroa.026.086134, -1        ; 3 uses
  %i.g = lshr i64 %.sroa.15.088132, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 48
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 84
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.15.088132, 64
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph135
  %i.k = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB14_16sort_unstable_byNCNvNtB18_7builder28write_index_v2_from_postings0E0EB18_(ptr noundef nonnull readonly align 4 %.sroa.0.089131, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvNtB19_7builder28write_index_v2_from_postings0E0EB19_.exit

bb.c:                                             ; preds = %.lr.ph135
  %.val10.i = load i32, ptr %.sroa.0.089131, align 4, !alias.scope !473 ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.0.089131, i64 8
  %.val11.i = load i32, ptr %i.l, align 4, !alias.scope !473, !noundef !7 ; 4 uses
  %.val12.i = load i32, ptr %i.h, align 4, !alias.scope !473 ; 2 uses
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %.val13.i = load i32, ptr %i.m, align 4, !alias.scope !473, !noundef !7 ; 4 uses
  %i.n = icmp eq i32 %.val11.i, %.val13.i
  %i.o = icmp ult i32 %.val10.i, %.val12.i
  %i.p = icmp ult i32 %.val11.i, %.val13.i
  %i.q = select i1 %i.n, i1 %i.o, i1 %i.p         ; 2 uses
  %.val8.i = load i32, ptr %i.i, align 4, !alias.scope !473 ; 2 uses
  %i.r = getelementptr i8, ptr %i.i, i64 8
  %.val9.i = load i32, ptr %i.r, align 4, !alias.scope !473, !noundef !7 ; 4 uses
  %i.s = icmp eq i32 %.val11.i, %.val9.i
  %i.t = icmp ult i32 %.val10.i, %.val8.i
  %i.u = icmp ult i32 %.val11.i, %.val9.i
  %i.v = select i1 %i.s, i1 %i.t, i1 %i.u
  %i.w = xor i1 %i.q, %i.v
  br i1 %i.w, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvNtB19_7builder28write_index_v2_from_postings0E0EB19_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %.val13.i, %.val9.i
  %i.y = icmp ult i32 %.val12.i, %.val8.i
  %i.z = icmp ult i32 %.val13.i, %.val9.i
  %i.aa = select i1 %i.x, i1 %i.y, i1 %i.z
  %i.ab = xor i1 %i.q, %i.aa
  %..i.i = select i1 %i.ab, ptr %i.i, ptr %i.h
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvNtB19_7builder28write_index_v2_from_postings0E0EB19_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvNtB19_7builder28write_index_v2_from_postings0E0EB19_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.b ], [ %.sroa.0.089131, %bb.c ], [ %..i.i, %bb.d ]
  %i.ac = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ad = ptrtoint ptr %.sroa.0.089131 to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad                ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ae, 12         ; 3 uses
  %i.af = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.088132
  tail call void @llvm.assume(i1 %i.af)
  %.not = icmp eq ptr %.sroa.023.087133, null
  br i1 %.not, label %bb.f, label %bb.h

bb.e:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvNtB19_7builder28write_index_v2_from_postings0E0EB19_.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.089131, i64 noundef range(i64 33, 768614336404564651) %.sroa.15.088132, i64 noundef 0, i64 noundef range(i64 0, 768614336404564650) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 12 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.ag, i64 12, i1 false), !noalias !476
  %i.ah = getelementptr [12 x i8], ptr %.sroa.0.089131, i64 %.sroa.15.088132 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -12    ; 2 uses
  %.sroa.13.037.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 24 ; 3 uses
  %i.aj = icmp ult ptr %.sroa.13.037.i.i, %i.ai
  %.val2.i.pre.i.i = load i32, ptr %.sroa.0.089131, align 4, !alias.scope !478, !noalias !7 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 8
  %.val3.i14.i.i = load i32, ptr %i.ak, align 4, !alias.scope !478, !noalias !7 ; 6 uses
  br i1 %i.aj, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.f ], [ %i.bj, %.lr.ph.i.i ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.037.i.i, %bb.f ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ]
  %.sroa.019.1.i.i.ph = phi ptr [ %i.ag, %bb.f ], [ %i.bb, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.as, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep30.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.019.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.019.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.al = icmp eq ptr %.sroa.13.1.i.i, %i.ah      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.al, ptr %i.b, ptr %.sroa.13.1.i.i ; 2 uses
  %.val.i.i.i = load i32, ptr %.sroa.01.0.i.i, align 4, !noalias !479
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.al, ptr %i.b, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val1.i.i.i = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !noalias !479, !noundef !7 ; 2 uses
  %i.am = icmp eq i32 %.val1.i.i.i, %.val3.i14.i.i
  %i.an = icmp ult i32 %.val.i.i.i, %.val2.i.pre.i.i
  %i.ao = icmp ult i32 %.val1.i.i.i, %.val3.i14.i.i
  %i.ap = select i1 %i.am, i1 %i.an, i1 %i.ao
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.019.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.aq, i64 12, i1 false), !alias.scope !480, !noalias !481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aq, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.01.0.i.i, i64 12, i1 false), !noalias !479
  %i.ar = zext i1 %i.ap to i64
  %i.as = add i64 %.sroa.23.1.i.i, %i.ar          ; 6 uses
  %.sroa.13.1.sroa.gep30.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 12
  br i1 %i.al, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1x_16sort_unstable_byNCNvNtB1B_7builder28write_index_v2_from_postings0E0EB1B_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.13.040.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.037.i.i, %bb.f ] ; 3 uses
  %.sroa.019.039.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.ag, %bb.f ] ; 5 uses
  %.sroa.23.038.i.i = phi i64 [ %i.bj, %.lr.ph.i.i ], [ 0, %bb.f ] ; 2 uses
  %.val.i11.i.i = load i32, ptr %.sroa.13.040.i.i, align 4, !alias.scope !480, !noalias !482
  %i.at = getelementptr i8, ptr %.sroa.019.039.i.i, i64 20
  %.val1.i12.i.i = load i32, ptr %i.at, align 4, !alias.scope !480, !noalias !482, !noundef !7 ; 2 uses
  %i.au = icmp eq i32 %.val1.i12.i.i, %.val3.i14.i.i
  %i.av = icmp ult i32 %.val.i11.i.i, %.val2.i.pre.i.i
  %i.aw = icmp ult i32 %.val1.i12.i.i, %.val3.i14.i.i
  %i.ax = select i1 %i.au, i1 %i.av, i1 %i.aw
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %.sroa.23.038.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.019.039.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ay, i64 12, i1 false), !alias.scope !480, !noalias !482
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ay, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.040.i.i, i64 12, i1 false), !alias.scope !480, !noalias !482
  %i.az = zext i1 %i.ax to i64
  %i.ba = add i64 %.sroa.23.038.i.i, %i.az        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.019.039.i.i, i64 24 ; 4 uses
  %.val.i15.i.i = load i32, ptr %i.bb, align 4, !alias.scope !480, !noalias !483
  %i.bc = getelementptr i8, ptr %.sroa.019.039.i.i, i64 32
  %.val1.i16.i.i = load i32, ptr %i.bc, align 4, !alias.scope !480, !noalias !483, !noundef !7 ; 2 uses
  %i.bd = icmp eq i32 %.val1.i16.i.i, %.val3.i14.i.i
  %i.be = icmp ult i32 %.val.i15.i.i, %.val2.i.pre.i.i
  %i.bf = icmp ult i32 %.val1.i16.i.i, %.val3.i14.i.i
  %i.bg = select i1 %i.bd, i1 %i.be, i1 %i.bf
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %i.ba ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.040.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.bh, i64 12, i1 false), !alias.scope !480, !noalias !483
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bh, ptr noundef nonnull align 4 dereferenceable(12) %i.bb, i64 12, i1 false), !alias.scope !480, !noalias !483
  %i.bi = zext i1 %i.bg to i64
  %i.bj = add i64 %i.ba, %i.bi                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.019.039.i.i, i64 36 ; 3 uses
  %i.bk = icmp ult ptr %.sroa.13.0.i.i, %i.ai
  br i1 %i.bk, label %.lr.ph.i.i, label %.preheader.i.i.preheader

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1x_16sort_unstable_byNCNvNtB1B_7builder28write_index_v2_from_postings0E0EB1B_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !477
  %.not7.i = icmp ult i64 %i.as, %.sroa.15.088132
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting12split_at_mutBy_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1x_16sort_unstable_byNCNvNtB1B_7builder28write_index_v2_from_postings0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting12split_at_mutBy_.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1x_16sort_unstable_byNCNvNtB1B_7builder28write_index_v2_from_postings0E0EB1B_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.089131, i64 noundef range(i64 33, 768614336404564651) %.sroa.15.088132, i64 noundef 0, i64 noundef %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.089131, i64 %i.as ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = xor i64 %i.as, -1
  %i.bo = add i64 %.sroa.15.088132, %i.bn
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB17_16sort_unstable_byNCNvNtB1b_7builder28write_index_v2_from_postings0E0EB1b_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.089131, i64 noundef %i.as, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) %.sroa.023.087133, i32 noundef %i.f, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB15_16sort_unstable_byNCNvNtB19_7builder28write_index_v2_from_postings0E0EB19_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 %i.ae ; 2 uses
  %.sroa.023.0.val = load i32, ptr %.sroa.023.087133, align 4
  %i.bq = getelementptr i8, ptr %.sroa.023.087133, i64 8
  %.sroa.023.0.val34 = load i32, ptr %i.bq, align 4, !noundef !7 ; 2 uses
  %.val = load i32, ptr %i.bp, align 4
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  %.val35 = load i32, ptr %i.br, align 4, !noundef !7 ; 2 uses
  %i.bs = icmp eq i32 %.sroa.023.0.val34, %.val35
  %i.bt = icmp ult i32 %.sroa.023.0.val, %.val
  %i.bu = icmp ult i32 %.sroa.023.0.val34, %.val35
  %i.bv = select i1 %i.bs, i1 %i.bt, i1 %i.bu
  br i1 %i.bv, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.089131, i64 noundef range(i64 33, 768614336404564651) %.sroa.15.088132, i64 noundef 0, i64 noundef range(i64 0, 768614336404564650) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 12 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !noalias !486
  %i.bx = getelementptr [12 x i8], ptr %.sroa.0.089131, i64 %.sroa.15.088132 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -12    ; 2 uses
  %.sroa.13.037.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 24 ; 3 uses
  %i.bz = icmp ult ptr %.sroa.13.037.i.i43, %i.by
  %.val2.i.pre.i.i44 = load i32, ptr %.sroa.0.089131, align 4, !alias.scope !488, !noalias !7 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.089131, i64 8
  %.val3.i14.i.i45 = load i32, ptr %i.ca, align 4, !alias.scope !488, !noalias !7 ; 6 uses
  br i1 %i.bz, label %.lr.ph.i.i60, label %.preheader.i.i46.preheader

.preheader.i.i46.preheader:                       ; preds = %.lr.ph.i.i60, %bb.i
  %.sroa.23.1.i.i50.ph = phi i64 [ 0, %bb.i ], [ %i.cz, %.lr.ph.i.i60 ]
  %.sroa.13.1.i.i51.ph = phi ptr [ %.sroa.13.037.i.i43, %bb.i ], [ %.sroa.13.0.i.i68, %.lr.ph.i.i60 ]
  %.sroa.019.1.i.i52.ph = phi ptr [ %i.bw, %bb.i ], [ %i.cr, %.lr.ph.i.i60 ]
  br label %.preheader.i.i46

.preheader.i.i46:                                 ; preds = %.preheader.i.i46.preheader, %.preheader.i.i46
  %.sroa.23.1.i.i50 = phi i64 [ %i.ci, %.preheader.i.i46 ], [ %.sroa.23.1.i.i50.ph, %.preheader.i.i46.preheader ] ; 2 uses
  %.sroa.13.1.i.i51 = phi ptr [ %.sroa.13.1.sroa.gep30.i.i58, %.preheader.i.i46 ], [ %.sroa.13.1.i.i51.ph, %.preheader.i.i46.preheader ] ; 5 uses
  %.sroa.019.1.i.i52 = phi ptr [ %.sroa.13.1.i.i51, %.preheader.i.i46 ], [ %.sroa.019.1.i.i52.ph, %.preheader.i.i46.preheader ]
  %i.cb = icmp eq ptr %.sroa.13.1.i.i51, %i.bx    ; 3 uses
  %.sroa.01.0.i.i53 = select i1 %i.cb, ptr %i.a, ptr %.sroa.13.1.i.i51 ; 2 uses
  %.val.i.i.i54 = load i32, ptr %.sroa.01.0.i.i53, align 4, !noalias !489
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cb, ptr %i.a, ptr %.sroa.13.1.i.i51
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val1.i.i.i57 = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !noalias !489, !noundef !7 ; 2 uses
  %i.cc = icmp eq i32 %.val3.i14.i.i45, %.val1.i.i.i57
  %i.cd = icmp uge i32 %.val2.i.pre.i.i44, %.val.i.i.i54
  %i.ce = icmp uge i32 %.val3.i14.i.i45, %.val1.i.i.i57
  %i.cf = select i1 %i.cc, i1 %i.cd, i1 %i.ce
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %.sroa.23.1.i.i50 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.019.1.i.i52, ptr noundef nonnull align 4 dereferenceable(12) %i.cg, i64 12, i1 false), !alias.scope !490, !noalias !491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cg, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.01.0.i.i53, i64 12, i1 false), !noalias !489
  %i.ch = zext i1 %i.cf to i64
  %i.ci = add i64 %.sroa.23.1.i.i50, %i.ch        ; 4 uses
  %.sroa.13.1.sroa.gep30.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i51, i64 12
  br i1 %i.cb, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvNtB1B_7builder28write_index_v2_from_postings0E0E0EB1B_.exit.i, label %.preheader.i.i46

.lr.ph.i.i60:                                     ; preds = %bb.i, %.lr.ph.i.i60
  %.sroa.13.040.i.i61 = phi ptr [ %.sroa.13.0.i.i68, %.lr.ph.i.i60 ], [ %.sroa.13.037.i.i43, %bb.i ] ; 3 uses
  %.sroa.019.039.i.i62 = phi ptr [ %i.cr, %.lr.ph.i.i60 ], [ %i.bw, %bb.i ] ; 5 uses
  %.sroa.23.038.i.i63 = phi i64 [ %i.cz, %.lr.ph.i.i60 ], [ 0, %bb.i ] ; 2 uses
  %.val.i11.i.i64 = load i32, ptr %.sroa.13.040.i.i61, align 4, !alias.scope !490, !noalias !492
  %i.cj = getelementptr i8, ptr %.sroa.019.039.i.i62, i64 20
  %.val1.i12.i.i65 = load i32, ptr %i.cj, align 4, !alias.scope !490, !noalias !492, !noundef !7 ; 2 uses
  %i.ck = icmp eq i32 %.val3.i14.i.i45, %.val1.i12.i.i65
  %i.cl = icmp uge i32 %.val2.i.pre.i.i44, %.val.i11.i.i64
  %i.cm = icmp uge i32 %.val3.i14.i.i45, %.val1.i12.i.i65
  %i.cn = select i1 %i.ck, i1 %i.cl, i1 %i.cm
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %.sroa.23.038.i.i63 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.019.039.i.i62, ptr noundef nonnull align 4 dereferenceable(12) %i.co, i64 12, i1 false), !alias.scope !490, !noalias !492
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.co, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.040.i.i61, i64 12, i1 false), !alias.scope !490, !noalias !492
  %i.cp = zext i1 %i.cn to i64
  %i.cq = add i64 %.sroa.23.038.i.i63, %i.cp      ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.019.039.i.i62, i64 24 ; 4 uses
  %.val.i15.i.i66 = load i32, ptr %i.cr, align 4, !alias.scope !490, !noalias !493
  %i.cs = getelementptr i8, ptr %.sroa.019.039.i.i62, i64 32
  %.val1.i16.i.i67 = load i32, ptr %i.cs, align 4, !alias.scope !490, !noalias !493, !noundef !7 ; 2 uses
  %i.ct = icmp eq i32 %.val3.i14.i.i45, %.val1.i16.i.i67
  %i.cu = icmp uge i32 %.val2.i.pre.i.i44, %.val.i15.i.i66
  %i.cv = icmp uge i32 %.val3.i14.i.i45, %.val1.i16.i.i67
  %i.cw = select i1 %i.ct, i1 %i.cu, i1 %i.cv
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.cq ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.040.i.i61, ptr noundef nonnull align 4 dereferenceable(12) %i.cx, i64 12, i1 false), !alias.scope !490, !noalias !493
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cx, ptr noundef nonnull align 4 dereferenceable(12) %i.cr, i64 12, i1 false), !alias.scope !490, !noalias !493
  %i.cy = zext i1 %i.cw to i64
  %i.cz = add i64 %i.cq, %i.cy                    ; 2 uses
  %.sroa.13.0.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.019.039.i.i62, i64 36 ; 3 uses
  %i.da = icmp ult ptr %.sroa.13.0.i.i68, %i.by
  br i1 %i.da, label %.lr.ph.i.i60, label %.preheader.i.i46.preheader

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvNtB1B_7builder28write_index_v2_from_postings0E0E0EB1B_.exit.i: ; preds = %.preheader.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !487
  %.not7.i59 = icmp ult i64 %i.ci, %.sroa.15.088132
  br i1 %.not7.i59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvNtB1B_7builder28write_index_v2_from_postings0E0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvNtB1B_7builder28write_index_v2_from_postings0E0E0EB1B_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.089131, i64 noundef range(i64 33, 768614336404564651) %.sroa.15.088132, i64 noundef 0, i64 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.db = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %i.dc = sub nuw i64 %.sroa.15.088132, %i.db
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.089131, i64 %i.db
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting12split_at_mutBy_.exit
  %.sroa.023.0.be = phi ptr [ %i.bl, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting12split_at_mutBy_.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.bo, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting12split_at_mutBy_.exit ], [ %i.dc, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bm, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting12split_at_mutBy_.exit ], [ %i.dd, %bb.k ] ; 3 uses
  %i.de = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.de, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB17_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
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
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB1f_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull %4)
  br label %bb.e

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.081.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.080.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %.sroa.0.081.lcssa, i64 noundef %.sroa.15.080.lcssa, ptr noalias nofree nonnull poison) #24
  br label %bb.e

.lr.ph125:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.078124 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.079123 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.080122 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.081121 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 25 uses
  %i.f = add nsw i32 %.sroa.026.078124, -1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.g = lshr i64 %.sroa.15.080122, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 96
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 168
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.15.080122, 64
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph125
  %i.k = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull readonly align 8 %.sroa.0.081121, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

bb.c:                                             ; preds = %.lr.ph125
  %i.l = getelementptr i8, ptr %.sroa.0.081121, i64 8
  %.val10.i = load ptr, ptr %i.l, align 8, !alias.scope !538, !nonnull !7, !noundef !7 ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.0.081121, i64 16
  %.val11.i = load i64, ptr %i.m, align 8, !alias.scope !538, !noundef !7 ; 4 uses
  %i.n = getelementptr i8, ptr %i.h, i64 8
  %.val12.i = load ptr, ptr %i.n, align 8, !alias.scope !538, !nonnull !7, !noundef !7 ; 2 uses
  %i.o = getelementptr i8, ptr %i.h, i64 16
  %.val13.i = load i64, ptr %i.o, align 8, !alias.scope !538, !noundef !7 ; 4 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.p = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !539, !noalias !538 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %i.s = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i.i = select i1 %i.r, i64 %i.s, i64 %i.q ; 2 uses
  %i.t = getelementptr i8, ptr %i.i, i64 8
  %.val8.i = load ptr, ptr %i.t, align 8, !alias.scope !538, !nonnull !7, !noundef !7 ; 2 uses
  %i.u = getelementptr i8, ptr %i.i, i64 16
  %.val9.i = load i64, ptr %i.u, align 8, !alias.scope !538, !noundef !7 ; 4 uses
  %spec.store.select.i.i.i.i.i14.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.v = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i14.i), !alias.scope !540, !noalias !538 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub nsw i64 %.val11.i, %.val9.i
  %spec.select.i.i.i.i.i15.i = select i1 %i.x, i64 %i.y, i64 %i.w
  %i.z = xor i64 %spec.select.i.i.i.i.i15.i, %spec.select.i.i.i.i.i.i
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i.i.i.i16.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val13.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i16.i), !alias.scope !541, !noalias !538 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %.val13.i, %.val9.i
  %spec.select.i.i.i.i.i17.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = xor i64 %spec.select.i.i.i.i.i17.i, %spec.select.i.i.i.i.i.i
  %i.ag = icmp slt i64 %i.af, 0
  %..i.i = select i1 %i.ag, ptr %i.i, ptr %i.h
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.b ], [ %.sroa.0.081121, %bb.c ], [ %..i.i, %bb.d ]
  %i.ah = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ai = ptrtoint ptr %.sroa.0.081121 to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai                ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.aj, 24         ; 3 uses
  %i.ak = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.080122
  tail call void @llvm.assume(i1 %i.ak)
  %.not = icmp eq ptr %.sroa.023.079123, null
  br i1 %.not, label %bb.f, label %bb.h

bb.e:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.080122, i64 noundef 0, i64 noundef range(i64 0, 384307168202282325) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !544
  %i.am = mul nuw nsw i64 %.sroa.15.080122, 24
  %i.an = getelementptr i8, ptr %.sroa.0.081121, i64 %i.am ; 2 uses
  %.sroa.11.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 48
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 8
  %.val2.i.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !546, !noalias !7 ; 2 uses
  %.phi.trans.insert44.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 16
  %.val3.i.pre.i.i = load i64, ptr %.phi.trans.insert44.i.i, align 8, !alias.scope !546, !noalias !7 ; 4 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.au, %.preheader.i.i ], [ %i.bc, %.lr.ph.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep27.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.i.i ] ; 6 uses
  %.sroa.016.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.036.i.i, %.lr.ph.i.i ]
  %i.ao = icmp eq ptr %.sroa.11.1.i.i, %i.an      ; 4 uses
  %.sroa.01.0.i.i = select i1 %i.ao, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ao, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !547, !nonnull !7, !noundef !7
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ao, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val1.i.i.i = load i64, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !547, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.pre.i.i)
  %i.ap = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.pre.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i), !alias.scope !548, !noalias !549 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp eq i32 %i.ap, 0
  %i.as = sub nsw i64 %.val1.i.i.i, %.val3.i.pre.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.ar, i64 %i.as, i64 %i.aq
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !alias.scope !550, !noalias !551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.0.i.i, i64 24, i1 false), !noalias !547
  %spec.select.i.i.i.i.i.lobit.i.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i.i, 63
  %i.au = add i64 %spec.select.i.i.i.i.i.lobit.i.i.i, %.sroa.19.1.i.i ; 6 uses
  %.sroa.11.1.sroa.gep27.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 24
  br i1 %i.ao, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.11.036.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.i.i ], [ %.sroa.11.033.i.i, %bb.f ] ; 4 uses
  %.sroa.016.035.i.i = phi ptr [ %.sroa.11.036.i.i, %.lr.ph.i.i ], [ %i.al, %bb.f ] ; 3 uses
  %.sroa.19.034.i.i = phi i64 [ %i.bc, %.lr.ph.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.av = getelementptr i8, ptr %.sroa.016.035.i.i, i64 32
  %.val.i9.i.i = load ptr, ptr %i.av, align 8, !alias.scope !550, !noalias !552, !nonnull !7, !noundef !7
  %i.aw = getelementptr i8, ptr %.sroa.016.035.i.i, i64 40
  %.val1.i10.i.i = load i64, ptr %i.aw, align 8, !alias.scope !550, !noalias !552, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.i.i13.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i10.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.pre.i.i)
  %i.ax = tail call i32 @memcmp(ptr nonnull readonly %.val.i9.i.i, ptr nonnull readonly %.val2.i.pre.i.i, i64 %spec.store.select.i.i.i.i.i.i13.i.i), !alias.scope !553, !noalias !554 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub nsw i64 %.val1.i10.i.i, %.val3.i.pre.i.i
  %spec.select.i.i.i.i.i.i14.i.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.sroa.19.034.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.035.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !alias.scope !550, !noalias !552
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.036.i.i, i64 24, i1 false), !alias.scope !550, !noalias !552
  %spec.select.i.i.i.i.i.lobit.i15.i.i = lshr i64 %spec.select.i.i.i.i.i.i14.i.i, 63
  %i.bc = add i64 %spec.select.i.i.i.i.i.lobit.i15.i.i, %.sroa.19.034.i.i ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.036.i.i, i64 24 ; 3 uses
  %i.bd = icmp ult ptr %.sroa.11.0.i.i, %i.an
  br i1 %i.bd, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !545
  %.not7.i = icmp ult i64 %i.au, %.sroa.15.080122
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.080122, i64 noundef 0, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.081121, i64 %i.au ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = xor i64 %i.au, -1
  %i.bh = add i64 %.sroa.15.080122, %i.bg
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB17_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %.sroa.0.081121, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.023.079123, i32 noundef %i.f, ptr noalias nofree noundef nonnull %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %i.aj ; 2 uses
  %i.bj = getelementptr i8, ptr %.sroa.023.079123, i64 8
  %.sroa.023.0.val = load ptr, ptr %i.bj, align 8, !nonnull !7, !noundef !7
  %i.bk = getelementptr i8, ptr %.sroa.023.079123, i64 16
  %.sroa.023.0.val34 = load i64, ptr %i.bk, align 8, !noundef !7 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 8
  %.val = load ptr, ptr %i.bl, align 8, !nonnull !7, !noundef !7
  %i.bm = getelementptr i8, ptr %i.bi, i64 16
  %.val35 = load i64, ptr %i.bm, align 8, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.023.0.val34, i64 range(i64 0, -9223372036854775808) %.val35)
  %i.bn = tail call i32 @memcmp(ptr nonnull readonly %.sroa.023.0.val, ptr nonnull readonly %.val, i64 %spec.store.select.i.i.i.i.i), !alias.scope !555 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp eq i32 %i.bn, 0
  %i.bq = sub nsw i64 %.sroa.023.0.val34, %.val35
  %spec.select.i.i.i.i.i = select i1 %i.bp, i64 %i.bq, i64 %i.bo
  %i.br = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.br, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.080122, i64 noundef 0, i64 noundef range(i64 0, 384307168202282325) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !558
  %i.bt = mul nuw nsw i64 %.sroa.15.080122, 24
  %i.bu = getelementptr i8, ptr %.sroa.0.081121, i64 %i.bt ; 2 uses
  %.sroa.11.032.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 48
  %.phi.trans.insert.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 8
  %.val2.i.pre.i.i44 = load ptr, ptr %.phi.trans.insert.i.i43, align 8, !alias.scope !560, !noalias !7 ; 2 uses
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 16
  %.val3.i.pre.i.i45 = load i64, ptr %.phi.trans.insert43.i.i, align 8, !alias.scope !560, !noalias !7 ; 4 uses
  br label %.lr.ph.i.i46

.preheader.i.i50:                                 ; preds = %.lr.ph.i.i46, %.preheader.i.i50
  %.sroa.19.1.i.i51 = phi i64 [ %i.cd, %.preheader.i.i50 ], [ %i.cn, %.lr.ph.i.i46 ] ; 2 uses
  %.sroa.11.1.i.i52 = phi ptr [ %.sroa.11.1.sroa.gep26.i.i, %.preheader.i.i50 ], [ %.sroa.11.0.i.i49, %.lr.ph.i.i46 ] ; 6 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.11.1.i.i52, %.preheader.i.i50 ], [ %.sroa.11.035.i.i, %.lr.ph.i.i46 ]
  %i.bv = icmp eq ptr %.sroa.11.1.i.i52, %i.bu    ; 4 uses
  %.sroa.01.0.i.i53 = select i1 %i.bv, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bv, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i56 = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !561, !nonnull !7, !noundef !7
  %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bv, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val1.i.i.i57 = load i64, ptr %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !561, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val3.i.pre.i.i45, i64 range(i64 0, -9223372036854775808) %.val1.i.i.i57)
  %i.bw = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i44, ptr nonnull readonly %.val.i.i.i56, i64 %spec.store.select.i.i.i.i.i.i.i.i.i), !alias.scope !562, !noalias !563 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp eq i32 %i.bw, 0
  %i.bz = sub nsw i64 %.val3.i.pre.i.i45, %.val1.i.i.i57
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.by, i64 %i.bz, i64 %i.bx
  %i.ca = icmp sgt i64 %spec.select.i.i.i.i.i.i.i.i.i, -1
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %.sroa.19.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false), !alias.scope !564, !noalias !565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.0.i.i53, i64 24, i1 false), !noalias !561
  %i.cc = zext i1 %i.ca to i64
  %i.cd = add i64 %.sroa.19.1.i.i51, %i.cc        ; 4 uses
  %.sroa.11.1.sroa.gep26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i52, i64 24
  br i1 %i.bv, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsgCecv3eZDcN_5alloc6string6StringNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.preheader.i.i50

.lr.ph.i.i46:                                     ; preds = %.lr.ph.i.i46, %bb.i
  %.sroa.11.035.i.i = phi ptr [ %.sroa.11.0.i.i49, %.lr.ph.i.i46 ], [ %.sroa.11.032.i.i, %bb.i ] ; 4 uses
  %.sroa.015.034.i.i = phi ptr [ %.sroa.11.035.i.i, %.lr.ph.i.i46 ], [ %i.bs, %bb.i ] ; 3 uses
  %.sroa.19.033.i.i = phi i64 [ %i.cn, %.lr.ph.i.i46 ], [ 0, %bb.i ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.sroa.015.034.i.i, i64 32
  %.val.i9.i.i47 = load ptr, ptr %i.ce, align 8, !alias.scope !564, !noalias !566, !nonnull !7, !noundef !7
  %i.cf = getelementptr i8, ptr %.sroa.015.034.i.i, i64 40
  %.val1.i10.i.i48 = load i64, ptr %i.cf, align 8, !alias.scope !564, !noalias !566, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i13.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val3.i.pre.i.i45, i64 range(i64 0, -9223372036854775808) %.val1.i10.i.i48)
  %i.cg = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i44, ptr nonnull readonly %.val.i9.i.i47, i64 %spec.store.select.i.i.i.i.i.i.i13.i.i), !alias.scope !567, !noalias !568 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp eq i32 %i.cg, 0
  %i.cj = sub nsw i64 %.val3.i.pre.i.i45, %.val1.i10.i.i48
  %spec.select.i.i.i.i.i.i.i14.i.i = select i1 %i.ci, i64 %i.cj, i64 %i.ch
  %i.ck = icmp sgt i64 %spec.select.i.i.i.i.i.i.i14.i.i, -1
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %.sroa.19.033.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.034.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !alias.scope !564, !noalias !566
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.035.i.i, i64 24, i1 false), !alias.scope !564, !noalias !566
  %i.cm = zext i1 %i.ck to i64
  %i.cn = add i64 %.sroa.19.033.i.i, %i.cm        ; 2 uses
  %.sroa.11.0.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.11.035.i.i, i64 24 ; 3 uses
  %i.co = icmp ult ptr %.sroa.11.0.i.i49, %i.bu
  br i1 %i.co, label %.lr.ph.i.i46, label %.preheader.i.i50

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsgCecv3eZDcN_5alloc6string6StringNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %.preheader.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !559
  %.not7.i58 = icmp ult i64 %i.cd, %.sroa.15.080122
  br i1 %.not7.i58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsgCecv3eZDcN_5alloc6string6StringNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsbzNSmZPCnTx_10tgrep_core.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsgCecv3eZDcN_5alloc6string6StringNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsbzNSmZPCnTx_10tgrep_core.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.080122, i64 noundef 0, i64 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.cp = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.cq = sub nuw i64 %.sroa.15.080122, %i.cp
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.081121, i64 %i.cp
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit
  %.sroa.023.0.be = phi ptr [ %i.be, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.bh, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.cq, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bf, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.cr, %bb.k ] ; 3 uses
  %i.cs = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.cs, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1G_11IndexReader4opens0_0E0EB1I_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 33
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph717

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.d, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph717

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_networkjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1O_11IndexReader4opens0_0E0EB1Q_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.0233.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.0232.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1E_11IndexReader4opens0_0E0EB1G_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0233.lcssa, i64 noundef %.sroa.15.0232.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %bb.i

.lr.ph717:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.0230716 = phi i32 [ %i.d, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.0231715 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.0232714 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.0233713 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.d = add nsw i32 %.sroa.026.0230716, -1       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.e = lshr i64 %.sroa.15.0232714, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0233713, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.e, 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0233713, i64 %.idx2.i ; 3 uses
  %i.h = icmp samesign ult i64 %.sroa.15.0232714, 64
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph717
  %i.i = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1D_11IndexReader4opens0_0E0EB1F_(ptr noundef nonnull readonly align 8 %.sroa.0.0233713, ptr noundef readonly %i.f, ptr noundef readonly %i.g, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %.val35.pre.pre = load ptr, ptr %4, align 8
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1E_11IndexReader4opens0_0E0EB1G_.exit

bb.c:                                             ; preds = %.lr.ph717
  %.val8.i = load ptr, ptr %4, align 8, !alias.scope !603, !nonnull !7, !align !12, !noundef !7 ; 3 uses
  %.val9.i = load i64, ptr %.sroa.0.0233713, align 8, !alias.scope !602, !noundef !7 ; 3 uses
  %.val10.i = load i64, ptr %i.f, align 8, !alias.scope !602, !noundef !7 ; 3 uses
  %.val.i.i = load ptr, ptr %.val8.i, align 8, !noalias !604, !nonnull !7, !align !12, !noundef !7 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !604, !nonnull !7, !noundef !7 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !604, !noundef !7 ; 6 uses
  %i.n = icmp ult i64 %.val9.i, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.val10.i, %i.m
  br i1 %i.o, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val9.i, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !noalias !604
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val10.i, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28, !noalias !604
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.val9.i ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.val10.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !604, !nonnull !7, !noundef !7 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noalias !604, !noundef !7 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !604, !nonnull !7, !noundef !7 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !604, !noundef !7 ; 4 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.y)
  %i.z = tail call i32 @memcmp(ptr nonnull %i.s, ptr nonnull %i.w, i64 %spec.store.select.i.i.i), !noalias !604 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i32 %i.z, 0
  %i.ac = sub i64 %i.u, %i.y
  %spec.select.i.i.i = select i1 %i.ab, i64 %i.ac, i64 %i.aa ; 2 uses
  %.val7.i = load i64, ptr %i.g, align 8, !alias.scope !602, !noundef !7 ; 3 uses
  %i.ad = icmp ult i64 %.val7.i, %i.m
  br i1 %i.ad, label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit14.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val7.i, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28, !noalias !604
  unreachable

_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit14.i: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.val7.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !604, !nonnull !7, !noundef !7 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !604, !noundef !7 ; 4 uses
  %spec.store.select.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.ai)
  %i.aj = tail call i32 @memcmp(ptr nonnull %i.s, ptr nonnull %i.ag, i64 %spec.store.select.i.i12.i), !noalias !604 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp eq i32 %i.aj, 0
  %i.am = sub i64 %i.u, %i.ai
  %spec.select.i.i13.i = select i1 %i.al, i64 %i.am, i64 %i.ak
  %i.an = xor i64 %spec.select.i.i13.i, %spec.select.i.i.i
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1E_11IndexReader4opens0_0E0EB1G_.exit, label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit18.i

_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit18.i: ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit14.i
  %spec.store.select.i.i16.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.ai)
  %i.ap = tail call i32 @memcmp(ptr nonnull %i.w, ptr nonnull %i.ag, i64 %spec.store.select.i.i16.i), !noalias !604 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp eq i32 %i.ap, 0
  %i.as = sub i64 %i.y, %i.ai
  %spec.select.i.i17.i = select i1 %i.ar, i64 %i.as, i64 %i.aq
  %i.at = xor i64 %spec.select.i.i17.i, %spec.select.i.i.i
  %i.au = icmp slt i64 %i.at, 0
  %..i.i = select i1 %i.au, ptr %i.g, ptr %i.f
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1E_11IndexReader4opens0_0E0EB1G_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1E_11IndexReader4opens0_0E0EB1G_.exit: ; preds = %bb.b, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit14.i, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit18.i
  %.val35.pre = phi ptr [ %.val35.pre.pre, %bb.b ], [ %.val8.i, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit14.i ], [ %.val8.i, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit18.i ] ; 2 uses
  %.sroa.0.0.i.sink.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.0.0233713, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit14.i ], [ %..i.i, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit18.i ]
  %i.av = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.aw = ptrtoint ptr %.sroa.0.0233713 to i64
  %i.ax = sub nuw i64 %i.av, %i.aw                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.ax, 3          ; 3 uses
  %i.ay = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.0232714
  tail call void @llvm.assume(i1 %i.ay)
  %.not = icmp eq ptr %.sroa.023.0231715, null
  br i1 %.not, label %bb.j, label %bb.q

bb.i:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.j:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1E_11IndexReader4opens0_0E0EB1G_.exit, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSj14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0233713, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0232714, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0233713, i64 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !608, !noundef !7 ; 4 uses
  %i.bb = getelementptr [8 x i8], ptr %.sroa.0.0233713, i64 %.sroa.15.0232714 ; 3 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8     ; 2 uses
  %.sroa.13.073.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0233713, i64 16 ; 4 uses
  %i.bd = icmp ult ptr %.sroa.13.073.i.i, %i.bc
  %.val2.i.pre.i.i = load i64, ptr %.sroa.0.0233713, align 8, !alias.scope !609, !noalias !7
  %.val2.i.pre.i.fr.i = freeze i64 %.val2.i.pre.i.i ; 6 uses
  %.val.i.i.i.pre.i = load ptr, ptr %.val35.pre, align 8, !noalias !610 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i.i.pre.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !611 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.pre.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !611 ; 12 uses
  br i1 %i.bd, label %.lr.ph.i.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.bi = icmp ult i64 %.val2.i.pre.i.fr.i, %i.bh
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.val2.i.pre.i.fr.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  br i1 %i.bi, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB28_11IndexReader4opens0_0E0E0B2a_.exit25.us.i.i
  %.sroa.13.076.us.i.i = phi ptr [ %.sroa.13.0.us.i.i, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB28_11IndexReader4opens0_0E0E0B2a_.exit25.us.i.i ], [ %.sroa.13.073.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.032.075.us.i.i = phi ptr [ %i.bx, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB28_11IndexReader4opens0_0E0E0B2a_.exit25.us.i.i ], [ %i.az, %.lr.ph.i.i ] ; 4 uses
  %.sroa.23.074.us.i.i = phi i64 [ %i.co, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB28_11IndexReader4opens0_0E0E0B2a_.exit25.us.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.val1.i7.us.i.i = load i64, ptr %.sroa.13.076.us.i.i, align 8, !alias.scope !608, !noalias !612, !noundef !7 ; 4 uses
  %i.bm = icmp ult i64 %.val1.i7.us.i.i, %i.bh
  br i1 %i.bm, label %bb.k, label %.split.us.i.i

bb.k:                                             ; preds = %.lr.ph.split.us.i.i
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.val1.i7.us.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !613, !nonnull !7, !noundef !7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !noalias !613, !noundef !7 ; 2 uses
  %i.bs = load ptr, ptr %i.bk, align 8, !noalias !613, !nonnull !7, !noundef !7 ; 2 uses
  %i.bt = load i64, ptr %i.bl, align 8, !noalias !613, !noundef !7 ; 4 uses
  %spec.store.select.i.i.i10.us.i.i = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bt)
  %i.bu = tail call i32 @memcmp(ptr nonnull %i.bp, ptr nonnull %i.bs, i64 %spec.store.select.i.i.i10.us.i.i), !noalias !613 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.23.074.us.i.i ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !608, !noalias !612
  store i64 %i.bw, ptr %.sroa.032.075.us.i.i, align 8, !alias.scope !608, !noalias !612
  store i64 %.val1.i7.us.i.i, ptr %i.bv, align 8, !alias.scope !608, !noalias !612
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.075.us.i.i, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1G_11IndexReader4opens0_0E0EB1I_:bb.a
  %i.em = icmp eq i32 %i.ek, 0
  %i.en = sub i64 %i.ef, %i.ej
  %spec.select.i.i = select i1 %i.em, i64 %i.en, i64 %i.el
  %i.eo = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.eo, label %bb.j, label %bb.u

bb.u:                                             ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSj14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0233713, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0232714, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0233713, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !621, !noundef !7 ; 3 uses
  %i.er = getelementptr [8 x i8], ptr %.sroa.0.0233713, i64 %.sroa.15.0232714 ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 -8     ; 2 uses
  %.sroa.13.073.i.i44 = getelementptr inbounds nuw i8, ptr %.sroa.0.0233713, i64 16 ; 3 uses
  %i.et = icmp ult ptr %.sroa.13.073.i.i44, %i.es
  %.val2.i.pre.i.i45 = load i64, ptr %.sroa.0.0233713, align 8, !alias.scope !622, !noalias !7 ; 6 uses
  %.val.i.i.i.pre.i46 = load ptr, ptr %4, align 8, !noalias !623
  %.val.i.i.i.i.pre.i = load ptr, ptr %.val.i.i.i.pre.i46, align 8, !noalias !624 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.pre.i, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !624 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.pre.i, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !624 ; 10 uses
  br i1 %i.et, label %.lr.ph.i.i65, label %.preheader.i.i47

.lr.ph.i.i65:                                     ; preds = %bb.u
  %i.ey = icmp ult i64 %.val2.i.pre.i.i45, %i.ex
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %.val2.i.pre.i.i45 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  br i1 %i.ey, label %.lr.ph.split.i.i67, label %bb.w

.preheader.i.i47:                                 ; preds = %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.i.i, %bb.u
  %.sroa.23.0.lcssa.i.i48 = phi i64 [ 0, %bb.u ], [ %i.he, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.i.i ]
  %.sroa.032.0.lcssa.i.i49 = phi ptr [ %i.ep, %bb.u ], [ %i.gj, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.i.i ] ; 2 uses
  %.sroa.13.0.lcssa.i.i50 = phi ptr [ %.sroa.13.073.i.i44, %bb.u ], [ %.sroa.13.0.i.i, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.i.i ]
  %i.fc = icmp ult i64 %.val2.i.pre.i.i45, %i.ex
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %.val2.i.pre.i.i45 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  br i1 %i.fc, label %.preheader.i.split.us.i53, label %.cont97.i.i

.preheader.i.split.us.i53:                        ; preds = %.preheader.i.i47, %.cont.i.us.i61
  %.sroa.23.1.i.us.i54 = phi i64 [ %i.fx, %.cont.i.us.i61 ], [ %.sroa.23.0.lcssa.i.i48, %.preheader.i.i47 ] ; 3 uses
  %.sroa.13.1.i.us.i55 = phi ptr [ %.sroa.13.1.sroa.gep.i.us.i63, %.cont.i.us.i61 ], [ %.sroa.13.0.lcssa.i.i50, %.preheader.i.i47 ] ; 5 uses
  %.sroa.032.1.i.us.i56 = phi ptr [ %.sroa.13.1.i.us.i55, %.cont.i.us.i61 ], [ %.sroa.032.0.lcssa.i.i49, %.preheader.i.i47 ] ; 2 uses
  %i.fg = icmp eq ptr %.sroa.13.1.i.us.i55, %i.er ; 2 uses
  br i1 %i.fg, label %.cont97.i.us.i, label %.else98.i.us.i

.else98.i.us.i:                                   ; preds = %.preheader.i.split.us.i53
  %.val1.i.else.val.i.us.i57 = load i64, ptr %.sroa.13.1.i.us.i55, align 8, !alias.scope !621, !noalias !625, !noundef !7
  br label %.cont97.i.us.i

.cont97.i.us.i:                                   ; preds = %.else98.i.us.i, %.preheader.i.split.us.i53
  %.val1.i.i.us.i58 = phi i64 [ %i.eq, %.preheader.i.split.us.i53 ], [ %.val1.i.else.val.i.us.i57, %.else98.i.us.i ] ; 3 uses
  %i.fh = icmp ult i64 %.val1.i.i.us.i58, %i.ex
  br i1 %i.fh, label %bb.v, label %.split.us.i59

bb.v:                                             ; preds = %.cont97.i.us.i
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %.val1.i.i.us.i58 ; 2 uses
  %i.fj = load ptr, ptr %i.fe, align 8, !noalias !626, !nonnull !7, !noundef !7
  %i.fk = load i64, ptr %i.ff, align 8, !noalias !626, !noundef !7 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !626, !nonnull !7, !noundef !7
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !noalias !626, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.i.us.i = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 %i.fo)
  %i.fp = tail call i32 @memcmp(ptr nonnull %i.fj, ptr nonnull %i.fm, i64 %spec.store.select.i.i.i.i.i.us.i), !noalias !626 ; 2 uses
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp eq i32 %i.fp, 0
  %i.fs = sub i64 %i.fk, %i.fo
  %spec.select.i.i.i.i.i.us.i = select i1 %i.fr, i64 %i.fs, i64 %i.fq
  %i.ft = icmp sgt i64 %spec.select.i.i.i.i.i.us.i, -1 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.sroa.23.1.i.us.i54 ; 3 uses
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !621, !noalias !625
  store i64 %i.fv, ptr %.sroa.032.1.i.us.i56, align 8, !alias.scope !621, !noalias !625
  br i1 %i.fg, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2p_11IndexReader4opens0_0E0E0EB2r_.exit.i, label %.cont.i.us.i61

.cont.i.us.i61:                                   ; preds = %bb.v
  %.else.val.i.us.i62 = load i64, ptr %.sroa.13.1.i.us.i55, align 8, !alias.scope !621, !noalias !625
  store i64 %.else.val.i.us.i62, ptr %i.fu, align 8, !alias.scope !621, !noalias !625
  %i.fw = zext i1 %i.ft to i64
  %i.fx = add i64 %.sroa.23.1.i.us.i54, %i.fw
  %.sroa.13.1.sroa.gep.i.us.i63 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.us.i55, i64 8
  br label %.preheader.i.split.us.i53

.cont97.i.i:                                      ; preds = %.preheader.i.i47
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.pre.i.i45, i64 noundef %i.ex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
          to label %.noexc.i.i52 unwind label %bb.aa, !noalias !624

.noexc.i.i52:                                     ; preds = %.cont97.i.i
  unreachable

.split.us.i59:                                    ; preds = %.cont97.i.us.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i.i.us.i58, i64 noundef %i.ex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
          to label %.noexc5.i.i60 unwind label %bb.aa, !noalias !624

.noexc5.i.i60:                                    ; preds = %.split.us.i59
  unreachable

.lr.ph.split.i.i67:                               ; preds = %.lr.ph.i.i65, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.i.i
  %.sroa.13.076.i.i = phi ptr [ %.sroa.13.0.i.i, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.i.i ], [ %.sroa.13.073.i.i44, %.lr.ph.i.i65 ] ; 3 uses
  %.sroa.032.075.i.i = phi ptr [ %i.gj, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.i.i ], [ %i.ep, %.lr.ph.i.i65 ] ; 4 uses
  %.sroa.23.074.i.i = phi i64 [ %i.he, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.i.i ], [ 0, %.lr.ph.i.i65 ] ; 2 uses
  %.val1.i7.i.i68 = load i64, ptr %.sroa.13.076.i.i, align 8, !alias.scope !621, !noalias !627, !noundef !7 ; 4 uses
  %i.fy = icmp ult i64 %.val1.i7.i.i68, %i.ex
  br i1 %i.fy, label %bb.y, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i.i65
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.pre.i.i45, i64 noundef %i.ex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
          to label %.noexc13.i.i66 unwind label %bb.aa, !noalias !624

.noexc13.i.i66:                                   ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %.lr.ph.split.i.i67
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i7.i.i68, i64 noundef %i.ex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
          to label %.noexc14.i.i69 unwind label %bb.aa, !noalias !624

.noexc14.i.i69:                                   ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %.lr.ph.split.i.i67
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %.val1.i7.i.i68 ; 2 uses
  %i.ga = load ptr, ptr %i.fa, align 8, !noalias !628, !nonnull !7, !noundef !7 ; 2 uses
  %i.gb = load i64, ptr %i.fb, align 8, !noalias !628, !noundef !7 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !628, !nonnull !7, !noundef !7
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !628, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i11.i.i = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 %i.gf)
  %i.gg = tail call i32 @memcmp(ptr nonnull %i.ga, ptr nonnull %i.gd, i64 %spec.store.select.i.i.i.i11.i.i), !noalias !628 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.sroa.23.074.i.i ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !621, !noalias !627
  store i64 %i.gi, ptr %.sroa.032.075.i.i, align 8, !alias.scope !621, !noalias !627
  store i64 %.val1.i7.i.i68, ptr %i.gh, align 8, !alias.scope !621, !noalias !627
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.032.075.i.i, i64 16 ; 3 uses
  %.val1.i17.i.i = load i64, ptr %i.gj, align 8, !alias.scope !621, !noalias !629, !noundef !7 ; 4 uses
  %i.gk = icmp ult i64 %.val1.i17.i.i, %i.ex
  br i1 %i.gk, label %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i17.i.i, i64 noundef %i.ex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
          to label %.noexc24.i.i unwind label %bb.aa, !noalias !624

.noexc24.i.i:                                     ; preds = %bb.z
  unreachable

_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.i.i: ; preds = %bb.y
  %i.gl = icmp eq i32 %i.gg, 0
  %i.gm = sub i64 %i.gb, %i.gf
  %i.gn = sext i32 %i.gg to i64
  %spec.select.i.i.i.i12.i.i = select i1 %i.gl, i64 %i.gm, i64 %i.gn
  %i.go = icmp sgt i64 %spec.select.i.i.i.i12.i.i, -1
  %i.gp = zext i1 %i.go to i64
  %i.gq = add i64 %.sroa.23.074.i.i, %i.gp        ; 2 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %.val1.i17.i.i ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !630, !nonnull !7, !noundef !7
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !630, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i21.i.i = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 %i.gv)
  %i.gw = tail call i32 @memcmp(ptr nonnull %i.ga, ptr nonnull %i.gt, i64 %spec.store.select.i.i.i.i21.i.i), !noalias !630 ; 2 uses
  %i.gx = sext i32 %i.gw to i64
  %i.gy = icmp eq i32 %i.gw, 0
  %i.gz = sub i64 %i.gb, %i.gv
  %spec.select.i.i.i.i22.i.i = select i1 %i.gy, i64 %i.gz, i64 %i.gx
  %i.ha = icmp sgt i64 %spec.select.i.i.i.i22.i.i, -1
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.gq ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !621, !noalias !629
  store i64 %i.hc, ptr %.sroa.13.076.i.i, align 8, !alias.scope !621, !noalias !629
  store i64 %.val1.i17.i.i, ptr %i.hb, align 8, !alias.scope !621, !noalias !629
  %i.hd = zext i1 %i.ha to i64
  %i.he = add i64 %i.gq, %i.hd                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.032.075.i.i, i64 24 ; 3 uses
  %i.hf = icmp ult ptr %.sroa.13.0.i.i, %i.es
  br i1 %i.hf, label %.lr.ph.split.i.i67, label %.preheader.i.i47

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.w, %.split.us.i59, %.cont97.i.i
  %.sroa.032.2.i.i51 = phi ptr [ %.sroa.13.076.i.i, %bb.z ], [ %.sroa.032.0.lcssa.i.i49, %.cont97.i.i ], [ %.sroa.032.075.i.i, %bb.x ], [ %i.ep, %bb.w ], [ %.sroa.032.1.i.us.i56, %.split.us.i59 ]
  %i.hg = landingpad { ptr, i32 }
          cleanup
  store i64 %i.eq, ptr %.sroa.032.2.i.i51, align 8, !alias.scope !621
  br label %common.resume

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2p_11IndexReader4opens0_0E0E0EB2r_.exit.i: ; preds = %bb.v
  store i64 %i.eq, ptr %i.fu, align 8, !alias.scope !621, !noalias !625
  %i.hh = zext i1 %i.ft to i64
  %i.hi = add i64 %.sroa.23.1.i.us.i54, %i.hh     ; 3 uses
  %.not7.i64 = icmp ult i64 %i.hi, %.sroa.15.0232714
  br i1 %.not7.i64, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2p_11IndexReader4opens0_0E0E0EB2r_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2p_11IndexReader4opens0_0E0E0EB2r_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSj14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0233713, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0232714, i64 noundef 0, i64 noundef %i.hi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %i.hk = sub nuw i64 %.sroa.15.0232714, %i.hj
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0233713, i64 %i.hj
  br label %.backedge

.backedge:                                        ; preds = %bb.ac, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit
  %.sroa.023.0.be = phi ptr [ %i.dp, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit ], [ null, %bb.ac ]
  %.sroa.15.0.be = phi i64 [ %i.ds, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.hk, %bb.ac ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.dq, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.hl, %bb.ac ] ; 3 uses
  %i.hm = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.hm, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(4) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 33
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph129

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.d, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph129

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_networkmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull %4)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.082.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.081.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082.lcssa, i64 noundef %.sroa.15.081.lcssa, ptr noalias nofree nonnull poison) #24
  br label %bb.c

.lr.ph129:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.079128 = phi i32 [ %i.d, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.080127 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.081126 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.082125 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.d = add nsw i32 %.sroa.026.079128, -1        ; 3 uses
  %i.e = lshr i64 %.sroa.15.081126, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.e, 28
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 %.idx2.i ; 3 uses
  %i.h = icmp samesign ult i64 %.sroa.15.081126, 64
  br i1 %i.h, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3mNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph129
  %i.i = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull readonly align 4 %.sroa.0.082125, ptr noundef readonly %i.f, ptr noundef readonly %i.g, i64 noundef %i.e)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3mNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %.lr.ph129
  %.val6.i = load i32, ptr %.sroa.0.082125, align 4, !alias.scope !670, !noundef !7 ; 2 uses
  %.val7.i = load i32, ptr %i.f, align 4, !alias.scope !671, !noundef !7 ; 2 uses
  %i.j = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i32, ptr %i.g, align 4, !alias.scope !671, !noundef !7 ; 2 uses
  %i.k = icmp ult i32 %.val6.i, %.val5.i
  %i.l = xor i1 %i.j, %i.k
  %i.m = icmp ult i32 %.val7.i, %.val5.i
  %i.n = xor i1 %i.j, %i.m
  %..i.i = select i1 %i.n, ptr %i.g, ptr %i.f
  %.sroa.0.0.i.i = select i1 %i.l, ptr %.sroa.0.082125, ptr %..i.i
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.b, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3mNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3mNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %i.i, %bb.b ]
  %i.o = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.p = ptrtoint ptr %.sroa.0.082125 to i64
  %i.q = sub nuw i64 %i.o, %i.p                   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.q, 2           ; 3 uses
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.081126
  tail call void @llvm.assume(i1 %i.r)
  %.not = icmp eq ptr %.sroa.023.080127, null
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, %bb.f
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSm14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082125, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.081126, i64 noundef 0, i64 noundef range(i64 0, 2305843009213693951) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !674, !noundef !7 ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %.sroa.0.082125, i64 %.sroa.15.081126 ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -4       ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 8 ; 3 uses
  %i.w = icmp ult ptr %.sroa.13.030.i.i, %i.v
  %.val1.i.pre.i.i = load i32, ptr %.sroa.0.082125, align 4, !alias.scope !675, !noalias !7 ; 4 uses
  br i1 %i.w, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %.lr.ph.i.i ] ; 2 uses
  %.sroa.015.0.lcssa.i.i = phi ptr [ %i.s, %bb.d ], [ %i.aj, %.lr.ph.i.i ] ; 2 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.030.i.i, %bb.d ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.x = icmp eq ptr %.sroa.13.0.lcssa.i.i, %i.u
  br i1 %i.x, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.cont.i.i

.cont.i.i:                                        ; preds = %.preheader.i.i, %.cont.i.i
  %.sroa.015.1.i7.i = phi ptr [ %.sroa.13.1.i6.i, %.cont.i.i ], [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i ]
  %.sroa.13.1.i6.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i ] ; 4 uses
  %.sroa.23.1.i5.i = phi i64 [ %i.ac, %.cont.i.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.val.i.else.val.i.i = load i32, ptr %.sroa.13.1.i6.i, align 4, !alias.scope !676, !noalias !677, !noundef !7 ; 2 uses
  %i.y = icmp ult i32 %.val.i.else.val.i.i, %.val1.i.pre.i.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.23.1.i5.i ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !674, !noalias !677
  store i32 %i.aa, ptr %.sroa.015.1.i7.i, align 4, !alias.scope !674, !noalias !677
  store i32 %.val.i.else.val.i.i, ptr %i.z, align 4, !alias.scope !674, !noalias !677
  %i.ab = zext i1 %i.y to i64
  %i.ac = add i64 %.sroa.23.1.i5.i, %i.ab         ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i, i64 4 ; 2 uses
  %i.ad = icmp eq ptr %.sroa.13.1.sroa.gep.i.i, %i.u
  br i1 %i.ad, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.cont.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.030.i.i, %bb.d ] ; 2 uses
  %.sroa.015.032.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.ao, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.val.i11.i.i = load i32, ptr %.sroa.13.033.i.i, align 4, !alias.scope !678, !noalias !679, !noundef !7 ; 2 uses
  %i.ae = icmp ult i32 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.23.031.i.i ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !674, !noalias !679
  store i32 %i.ag, ptr %.sroa.015.032.i.i, align 4, !alias.scope !674, !noalias !679
  store i32 %.val.i11.i.i, ptr %i.af, align 4, !alias.scope !674, !noalias !679
  %i.ah = zext i1 %i.ae to i64
  %i.ai = add i64 %.sroa.23.031.i.i, %i.ah        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 8 ; 3 uses
  %.val.i13.i.i = load i32, ptr %i.aj, align 4, !alias.scope !680, !noalias !681, !noundef !7 ; 2 uses
  %i.ak = icmp ult i32 %.val.i13.i.i, %.val1.i.pre.i.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ai ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !alias.scope !674, !noalias !681
  store i32 %i.am, ptr %.sroa.13.033.i.i, align 4, !alias.scope !674, !noalias !681
  store i32 %.val.i13.i.i, ptr %i.al, align 4, !alias.scope !674, !noalias !681
  %i.an = zext i1 %i.ak to i64
  %i.ao = add i64 %i.ai, %i.an                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 12 ; 3 uses
  %i.ap = icmp ult ptr %.sroa.13.0.i.i, %i.v
  br i1 %i.ap, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %.cont.i.i, %.preheader.i.i
  %.sroa.23.1.i.lcssa.i = phi i64 [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ], [ %i.ac, %.cont.i.i ] ; 2 uses
  %.sroa.015.1.i.lcssa.i = phi ptr [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.13.1.i6.i, %.cont.i.i ]
  %i.aq = icmp ult i32 %i.t, %.val1.i.pre.i.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.23.1.i.lcssa.i ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !674, !noalias !677
  store i32 %i.as, ptr %.sroa.015.1.i.lcssa.i, align 4, !alias.scope !674, !noalias !677
  store i32 %i.t, ptr %i.ar, align 4, !alias.scope !674, !noalias !677
  %i.at = zext i1 %i.aq to i64
  %i.au = add i64 %.sroa.23.1.i.lcssa.i, %i.at    ; 5 uses
  %.not7.i = icmp ult i64 %i.au, %.sroa.15.081126
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSm14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082125, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.081126, i64 noundef 0, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.082125, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = xor i64 %i.au, -1
  %i.ay = add i64 %.sroa.15.081126, %i.ax
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082125, i64 noundef %i.au, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %.sroa.023.080127, i32 noundef %i.d, ptr noalias nofree noundef nonnull %4)
  br label %.backedge

bb.f:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 %i.q
  %.sroa.023.0.val = load i32, ptr %.sroa.023.080127, align 4, !alias.scope !21, !noundef !7
  %.val = load i32, ptr %i.az, align 4, !alias.scope !22, !noundef !7
  %i.ba = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.ba, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSm14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082125, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.081126, i64 noundef 0, i64 noundef range(i64 0, 2305843009213693951) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !684, !noundef !7 ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %.sroa.0.082125, i64 %.sroa.15.081126 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -4     ; 2 uses
  %.sroa.13.030.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 8 ; 3 uses
  %i.bf = icmp ult ptr %.sroa.13.030.i.i41, %i.be
  %.val1.i.pre.i.i42 = load i32, ptr %.sroa.0.082125, align 4, !alias.scope !685, !noalias !7 ; 4 uses
  br i1 %i.bf, label %.lr.ph.i.i56, label %.preheader.i.i43

.preheader.i.i43:                                 ; preds = %.lr.ph.i.i56, %bb.g
  %.sroa.23.0.lcssa.i.i44 = phi i64 [ 0, %bb.g ], [ %i.bx, %.lr.ph.i.i56 ] ; 2 uses
  %.sroa.015.0.lcssa.i.i45 = phi ptr [ %i.bb, %bb.g ], [ %i.bs, %.lr.ph.i.i56 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i46 = phi ptr [ %.sroa.13.030.i.i41, %bb.g ], [ %.sroa.13.0.i.i62, %.lr.ph.i.i56 ] ; 2 uses
  %i.bg = icmp eq ptr %.sroa.13.0.lcssa.i.i46, %i.bd
  br i1 %i.bg, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNCINvB2_9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltE0ECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.cont.i.i47

.cont.i.i47:                                      ; preds = %.preheader.i.i43, %.cont.i.i47
  %.sroa.015.1.i7.i48 = phi ptr [ %.sroa.13.1.i6.i49, %.cont.i.i47 ], [ %.sroa.015.0.lcssa.i.i45, %.preheader.i.i43 ]
  %.sroa.13.1.i6.i49 = phi ptr [ %.sroa.13.1.sroa.gep.i.i52, %.cont.i.i47 ], [ %.sroa.13.0.lcssa.i.i46, %.preheader.i.i43 ] ; 4 uses
  %.sroa.23.1.i5.i50 = phi i64 [ %i.bl, %.cont.i.i47 ], [ %.sroa.23.0.lcssa.i.i44, %.preheader.i.i43 ] ; 2 uses
  %.val.i.else.val.i.i51 = load i32, ptr %.sroa.13.1.i6.i49, align 4, !alias.scope !686, !noalias !687, !noundef !7 ; 2 uses
  %i.bh = icmp uge i32 %.val1.i.pre.i.i42, %.val.i.else.val.i.i51
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.sroa.23.1.i5.i50 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !684, !noalias !687
  store i32 %i.bj, ptr %.sroa.015.1.i7.i48, align 4, !alias.scope !684, !noalias !687
  store i32 %.val.i.else.val.i.i51, ptr %i.bi, align 4, !alias.scope !684, !noalias !687
  %i.bk = zext i1 %i.bh to i64
  %i.bl = add i64 %.sroa.23.1.i5.i50, %i.bk       ; 2 uses
  %.sroa.13.1.sroa.gep.i.i52 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i49, i64 4 ; 2 uses
  %i.bm = icmp eq ptr %.sroa.13.1.sroa.gep.i.i52, %i.bd
  br i1 %i.bm, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNCINvB2_9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltE0ECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.cont.i.i47

.lr.ph.i.i56:                                     ; preds = %bb.g, %.lr.ph.i.i56
  %.sroa.13.033.i.i57 = phi ptr [ %.sroa.13.0.i.i62, %.lr.ph.i.i56 ], [ %.sroa.13.030.i.i41, %bb.g ] ; 2 uses
  %.sroa.015.032.i.i58 = phi ptr [ %i.bs, %.lr.ph.i.i56 ], [ %i.bb, %bb.g ] ; 3 uses
  %.sroa.23.031.i.i59 = phi i64 [ %i.bx, %.lr.ph.i.i56 ], [ 0, %bb.g ] ; 2 uses
  %.val.i11.i.i60 = load i32, ptr %.sroa.13.033.i.i57, align 4, !alias.scope !688, !noalias !689, !noundef !7 ; 2 uses
  %i.bn = icmp uge i32 %.val1.i.pre.i.i42, %.val.i11.i.i60
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.sroa.23.031.i.i59 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !alias.scope !684, !noalias !689
  store i32 %i.bp, ptr %.sroa.015.032.i.i58, align 4, !alias.scope !684, !noalias !689
  store i32 %.val.i11.i.i60, ptr %i.bo, align 4, !alias.scope !684, !noalias !689
  %i.bq = zext i1 %i.bn to i64
  %i.br = add i64 %.sroa.23.031.i.i59, %i.bq      ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i58, i64 8 ; 3 uses
  %.val.i13.i.i61 = load i32, ptr %i.bs, align 4, !alias.scope !690, !noalias !691, !noundef !7 ; 2 uses
  %i.bt = icmp uge i32 %.val1.i.pre.i.i42, %.val.i13.i.i61
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.br ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !alias.scope !684, !noalias !691
  store i32 %i.bv, ptr %.sroa.13.033.i.i57, align 4, !alias.scope !684, !noalias !691
  store i32 %.val.i13.i.i61, ptr %i.bu, align 4, !alias.scope !684, !noalias !691
  %i.bw = zext i1 %i.bt to i64
  %i.bx = add i64 %i.br, %i.bw                    ; 2 uses
  %.sroa.13.0.i.i62 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i58, i64 12 ; 3 uses
  %i.by = icmp ult ptr %.sroa.13.0.i.i62, %i.be
  br i1 %i.by, label %.lr.ph.i.i56, label %.preheader.i.i43

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNCINvB2_9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltE0ECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %.cont.i.i47, %.preheader.i.i43
  %.sroa.23.1.i.lcssa.i53 = phi i64 [ %.sroa.23.0.lcssa.i.i44, %.preheader.i.i43 ], [ %i.bl, %.cont.i.i47 ] ; 2 uses
  %.sroa.015.1.i.lcssa.i54 = phi ptr [ %.sroa.015.0.lcssa.i.i45, %.preheader.i.i43 ], [ %.sroa.13.1.i6.i49, %.cont.i.i47 ]
  %i.bz = icmp uge i32 %.val1.i.pre.i.i42, %i.bc
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.sroa.23.1.i.lcssa.i53 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !alias.scope !684, !noalias !687
  store i32 %i.cb, ptr %.sroa.015.1.i.lcssa.i54, align 4, !alias.scope !684, !noalias !687
  store i32 %i.bc, ptr %i.ca, align 4, !alias.scope !684, !noalias !687
  %i.cc = zext i1 %i.bz to i64
  %i.cd = add i64 %.sroa.23.1.i.lcssa.i53, %i.cc  ; 3 uses
  %.not7.i55 = icmp ult i64 %i.cd, %.sroa.15.081126
  br i1 %.not7.i55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNCINvB2_9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltE0ECsbzNSmZPCnTx_10tgrep_core.exit.i
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNCINvB2_9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltE0ECsbzNSmZPCnTx_10tgrep_core.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSm14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082125, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.081126, i64 noundef 0, i64 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.cf = sub nuw i64 %.sroa.15.081126, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.082125, i64 %i.ce
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit
  %.sroa.023.0.be = phi ptr [ %i.av, %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit ], [ null, %bb.i ]
  %.sroa.15.0.be = phi i64 [ %i.ay, %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.cf, %bb.i ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.aw, %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.cg, %bb.i ] ; 3 uses
  %i.ch = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.ch, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNvMs_NtCs4ciboHeBKjP_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB22_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE6resize0uE0ECsbzNSmZPCnTx_10tgrep_core(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !7
  %i.b = and i64 %i.a, -8                         ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNCINvMNtCs4ciboHeBKjP_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE6resize0uE0CsbzNSmZPCnTx_10tgrep_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.i = shl nuw nsw i64 %i.f, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef 8) #23
  br label %_RNCINvMNtCs4ciboHeBKjP_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE6resize0uE0CsbzNSmZPCnTx_10tgrep_core.exit

_RNCINvMNtCs4ciboHeBKjP_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE6resize0uE0CsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 16, i64 noundef 8) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCs6MoqnCnVQOT_10serde_json5value2deINtNtBa_3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_5ValueENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas3_1__NtB2W_11VersionTimeNtB1P_11Deserialize11deserialize9___VisitorEB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = alloca [104 x i8], align 8               ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = load ptr, ptr %1, align 8, !noundef !7   ; 3 uses
  %.not = icmp ne ptr %i.i, null                  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %.sroa.01.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.k, i64 undef ; 2 uses
  %.sroa.01.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.h, i64 0
  store i64 %.sroa.01.sroa.0.0, ptr %i.f, align 8
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8
  %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.i, ptr %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.01.sroa.5.sroa.6.0, ptr %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.01.sroa.0.0, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %.sroa.02.sroa.6.0..sroa_idx, align 8
  %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.i, ptr %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.01.sroa.5.sroa.6.0, ptr %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  store i64 %.sroa.5.0, ptr %.sroa.43.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 4 uses
  store i8 -1, ptr %i.l, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !696
  invoke void @_RINvXsa_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_15MapDeserializerNtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas3_1__NtB2Q_11VersionTimeNtB17_11Deserialize11deserialize7___FieldEEB2S_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.m = load i8, ptr %i.e, align 8, !range !13, !noalias !696, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.b

._crit_edge.i:                                    ; preds = %.noexc41, %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !696, !nonnull !7, !align !12, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !696
  br label %.noexc40

bb.b:                                             ; preds = %.noexc41, %.lr.ph.i
  %.sroa.04.094.i = phi i8 [ 2, %.lr.ph.i ], [ %.sroa.04.1.i, %.noexc41 ] ; 5 uses
  %.sroa.09.093.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.09.1.i, %.noexc41 ] ; 4 uses
  %.sroa.4.092.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.4.1.i, %.noexc41 ] ; 3 uses
  %.sroa.018.091.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.018.1.i, %.noexc41 ] ; 4 uses
  %.sroa.420.090.i = phi i32 [ undef, %.lr.ph.i ], [ %.sroa.420.1.i, %.noexc41 ] ; 3 uses
  %i.t = load i8, ptr %i.o, align 1, !range !24, !noalias !696, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !696
  switch i8 %i.t, label %default.unreachable [
    i8 -1, label %bb.c
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %.not45.i = icmp eq i8 %.sroa.04.094.i, 2
  br i1 %.not45.i, label %bb.p, label %bb.s

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not46.i = icmp eq i8 %.sroa.04.094.i, 2
  br i1 %.not46.i, label %bb.g, label %.invoke, !prof !14

bb.e:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %.sroa.09.093.i, 1
  br i1 %i.u, label %.invoke, label %bb.k, !prof !9

bb.f:                                             ; preds = %bb.b
  %i.v = icmp eq i32 %.sroa.018.091.i, 1
  br i1 %i.v, label %.invoke, label %bb.m, !prof !9

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !696
  invoke void @_RINvXsa_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_15MapDeserializerNtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatabEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %bb.g
  %i.w = load i8, ptr %i.d, align 8, !range !13, !noalias !696, !noundef !7
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc39
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !696, !nonnull !7, !align !12, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !696
  br label %.noexc40

bb.i:                                             ; preds = %.noexc39
  %i.aa = load i8, ptr %i.q, align 1, !range !13, !noalias !696, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !696
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %bb.l, %bb.i
  %.sroa.420.1.i = phi i32 [ %.sroa.420.090.i, %bb.i ], [ %.sroa.420.090.i, %bb.l ], [ %i.ap, %bb.o ]
  %.sroa.018.1.i = phi i32 [ %.sroa.018.091.i, %bb.i ], [ %.sroa.018.091.i, %bb.l ], [ 1, %bb.o ]
  %.sroa.4.1.i = phi i64 [ %.sroa.4.092.i, %bb.i ], [ %i.ah, %bb.l ], [ %.sroa.4.092.i, %bb.o ]
  %.sroa.09.1.i = phi i64 [ %.sroa.09.093.i, %bb.i ], [ 1, %bb.l ], [ %.sroa.09.093.i, %bb.o ]
  %.sroa.04.1.i = phi i8 [ %i.aa, %bb.i ], [ %.sroa.04.094.i, %bb.l ], [ %.sroa.04.094.i, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !696
  invoke void @_RINvXsa_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_15MapDeserializerNtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas3_1__NtB2Q_11VersionTimeNtB17_11Deserialize11deserialize7___FieldEEB2S_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.j
  %i.ab = load i8, ptr %i.e, align 8, !range !13, !noalias !696, !noundef !7
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %._crit_edge.i, label %bb.b

bb.k:                                             ; preds = %bb.e
  %i.ad = invoke { i64, ptr } @_RINvXsa_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_15MapDeserializerNtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatayEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc42:                                         ; preds = %bb.k
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %.noexc40, label %bb.l

bb.l:                                             ; preds = %.noexc42
  %i.ah = ptrtoint ptr %i.af to i64
  br label %bb.j

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !696
  invoke void @_RINvXsa_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_15MapDeserializerNtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatamEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.m
  %i.ai = load i32, ptr %i.c, align 8, !range !25, !noalias !696, !noundef !7
  %i.aj = trunc nuw i32 %i.ai to i1
  br i1 %i.aj, label %bb.n, label %bb.o

.invoke:                                          ; preds = %bb.f, %bb.e, %bb.d
  %i.ak = phi ptr [ @17, %bb.e ], [ @16, %bb.d ], [ @18, %bb.f ]
  %i.al = phi i64 [ 7, %bb.e ], [ 12, %bb.d ], [ 5, %bb.f ]
  %i.am = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error15duplicate_fieldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.noexc44
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !696, !nonnull !7, !align !12, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !696
  br label %.noexc40
end_hunk_1
