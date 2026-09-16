Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow-40563aeb3a74498c.polars_arrow.5e84758b183e9a03-cgu.09?download=true
inline.NumInlined: 1818
inline.NumDeleted: 677
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1T_:bb.a
  %i.bd = icmp ult i64 %i.bc, %i.at, !dbg !5714
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ba, !dbg !5715 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !dbg !5716, !alias.scope !5602, !noalias !5614
  store i64 %i.bf, ptr %.sroa.13.072.us.i.i, align 8, !dbg !5716, !alias.scope !5602, !noalias !5614
  store i64 %.val1.i15.us.i.i, ptr %i.be, align 8, !dbg !5717, !alias.scope !5602, !noalias !5614
  %i.bg = zext i1 %i.bd to i64, !dbg !5718
  %i.bh = add i64 %i.ba, %i.bg, !dbg !5719        ; 2 uses
  %.sroa.13.0.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.028.071.us.i.i, i64 24, !dbg !5695 ; 3 uses
  %i.bi = icmp ult ptr %.sroa.13.0.us.i.i, %i.ai, !dbg !5696
  br i1 %i.bi, label %.lr.ph.split.us.i.i, label %.preheader.i.i, !dbg !5696

.preheader.i.i:                                   ; preds = %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_.exit21.us.i.i, %bb.h
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.h ], [ %i.bh, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_.exit21.us.i.i ], !dbg !5695
  %.sroa.028.0.lcssa.i.i = phi ptr [ %i.af, %bb.h ], [ %i.aw, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_.exit21.us.i.i ], !dbg !5695 ; 3 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.069.i.i, %bb.h ], [ %.sroa.13.0.us.i.i, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_.exit21.us.i.i ], !dbg !5695 ; 3 uses
  %i.bj = icmp ult i64 %.val2.i8.fr.i.i, %i.al
  %i.bk = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.pre.i, i64 8
  br i1 %i.bj, label %.preheader.i.split.us.i, label %.preheader.i.split.i

.preheader.i.split.us.i:                          ; preds = %.preheader.i.i, %.cont.i.us.i
  %.sroa.23.1.i.us.i = phi i64 [ %i.bw, %.cont.i.us.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ], !dbg !5695 ; 3 uses
  %.sroa.13.1.i.us.i = phi ptr [ %.sroa.13.1.sroa.gep.i.us.i, %.cont.i.us.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i ], !dbg !5695 ; 5 uses
  %.sroa.028.1.i.us.i = phi ptr [ %.sroa.13.1.i.us.i, %.cont.i.us.i ], [ %.sroa.028.0.lcssa.i.i, %.preheader.i.i ], !dbg !5695 ; 2 uses
  %i.bl = icmp eq ptr %.sroa.13.1.i.us.i, %i.ah, !dbg !5720 ; 2 uses
  br i1 %i.bl, label %.cont102.i.us.i, label %.else103.i.us.i, !dbg !5721

.else103.i.us.i:                                  ; preds = %.preheader.i.split.us.i
  %.val1.i.else.val.i.us.i = load i64, ptr %.sroa.13.1.i.us.i, align 8, !dbg !5721, !alias.scope !5602, !noalias !5617, !noundef !1402
  br label %.cont102.i.us.i, !dbg !5721

.cont102.i.us.i:                                  ; preds = %.else103.i.us.i, %.preheader.i.split.us.i
  %.val1.i.i.us.i = phi i64 [ %i.ag, %.preheader.i.split.us.i ], [ %.val1.i.else.val.i.us.i, %.else103.i.us.i ] ; 3 uses
  %i.bm = icmp ult i64 %.val1.i.i.us.i, %i.al, !dbg !5722
  br i1 %i.bm, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i.us.i, label %.split.us.i, !dbg !5722

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i.us.i: ; preds = %.cont102.i.us.i
  %i.bn = load ptr, ptr %i.bk, align 8, !dbg !5723, !noalias !5618, !nonnull !1402, !noundef !1402 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.val1.i.i.us.i, !dbg !5724
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.val2.i8.fr.i.i, !dbg !5725
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5619), !dbg !5726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5620), !dbg !5726
  %i.bq = load i64, ptr %i.bo, align 8, !dbg !5727, !alias.scope !5619, !noalias !5621, !noundef !1402
  %i.br = load i64, ptr %i.bp, align 8, !dbg !5728, !alias.scope !5620, !noalias !5622, !noundef !1402
  %i.bs = icmp ult i64 %i.bq, %i.br, !dbg !5727   ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.23.1.i.us.i, !dbg !5729 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !5730, !alias.scope !5602, !noalias !5617
  store i64 %i.bu, ptr %.sroa.028.1.i.us.i, align 8, !dbg !5730, !alias.scope !5602, !noalias !5617
  br i1 %i.bl, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB2j_.exit.i, label %.cont.i.us.i, !dbg !5731

.cont.i.us.i:                                     ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i.us.i
  %.else.val.i.us.i = load i64, ptr %.sroa.13.1.i.us.i, align 8, !dbg !5731, !alias.scope !5602, !noalias !5617
  store i64 %.else.val.i.us.i, ptr %i.bt, align 8, !dbg !5731, !alias.scope !5602, !noalias !5617
  %i.bv = zext i1 %i.bs to i64, !dbg !5732
  %i.bw = add i64 %.sroa.23.1.i.us.i, %i.bv, !dbg !5733
  %.sroa.13.1.sroa.gep.i.us.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.us.i, i64 8, !dbg !5734
  br label %.preheader.i.split.us.i, !dbg !5735

.preheader.i.split.i:                             ; preds = %.preheader.i.i
  %i.bx = icmp eq ptr %.sroa.13.0.lcssa.i.i, %i.ah, !dbg !5720
  br i1 %i.bx, label %.cont102.i.i, label %.else103.i.i, !dbg !5721

.else103.i.i:                                     ; preds = %.preheader.i.split.i
  %.val1.i.else.val.i.i = load i64, ptr %.sroa.13.0.lcssa.i.i, align 8, !dbg !5721, !alias.scope !5602, !noalias !5617, !noundef !1402
  br label %.cont102.i.i, !dbg !5721

.cont102.i.i:                                     ; preds = %.else103.i.i, %.preheader.i.split.i
  %.val1.i.i.i = phi i64 [ %i.ag, %.preheader.i.split.i ], [ %.val1.i.else.val.i.i, %.else103.i.i ] ; 2 uses
  %i.by = icmp ult i64 %.val1.i.i.i, %i.al, !dbg !5722
  br i1 %i.by, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i.i, label %.split.us.i, !dbg !5722

.split.us.i:                                      ; preds = %.cont102.i.us.i, %.cont102.i.i
  %.us-phi.i = phi i64 [ %.val1.i.i.i, %.cont102.i.i ], [ %.val1.i.i.us.i, %.cont102.i.us.i ], !dbg !5722
  %.us-phi25.i = phi ptr [ %.sroa.028.0.lcssa.i.i, %.cont102.i.i ], [ %.sroa.028.1.i.us.i, %.cont102.i.us.i ], !dbg !5722
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi.i, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #35
          to label %.noexc.i.i unwind label %bb.i, !dbg !5722, !noalias !5607

.noexc.i.i:                                       ; preds = %.split.us.i
  unreachable, !dbg !5722

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i.i: ; preds = %.cont102.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i8.fr.i.i, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #35
          to label %.noexc5.i.i unwind label %bb.i, !dbg !5736, !noalias !5607

.noexc5.i.i:                                      ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i.i
  unreachable, !dbg !5736

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %.val1.i7.i.i = load i64, ptr %.sroa.13.069.i.i, align 8, !dbg !5697, !alias.scope !5602, !noalias !5608, !noundef !1402 ; 2 uses
  %i.bz = icmp ult i64 %.val1.i7.i.i, %i.al, !dbg !5698
  br i1 %i.bz, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i10.i.i, label %.split.us.i.i, !dbg !5698

.split.us.i.i:                                    ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.i.i
  %.us-phi.i.i = phi i64 [ %.val1.i7.i.i, %.lr.ph.split.i.i ], [ %.val1.i7.us.i.i, %.lr.ph.split.us.i.i ], !dbg !5698
  %.us-phi76.i.i = phi ptr [ %i.af, %.lr.ph.split.i.i ], [ %.sroa.028.071.us.i.i, %.lr.ph.split.us.i.i ], !dbg !5698
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi.i.i, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #35
          to label %.noexc11.i.i unwind label %bb.i, !dbg !5698, !noalias !5607

.noexc11.i.i:                                     ; preds = %.split.us.i.i
  unreachable, !dbg !5698

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i10.i.i: ; preds = %.lr.ph.split.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i8.fr.i.i, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #35
          to label %.noexc12.i.i unwind label %bb.i, !dbg !5737, !noalias !5607

.noexc12.i.i:                                     ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i10.i.i
  unreachable, !dbg !5737

.split78.us.i.i:                                  ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i10.us.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i15.us.i.i, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #35
          to label %.noexc19.i.i unwind label %bb.i, !dbg !5710, !noalias !5607

.noexc19.i.i:                                     ; preds = %.split78.us.i.i
  unreachable, !dbg !5710

common.resume:                                    ; preds = %bb.p, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.i ], [ %i.dq, %bb.p ]
  resume { ptr, i32 } %common.resume.op, !dbg !5738

bb.i:                                             ; preds = %.split78.us.i.i, %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i10.i.i, %.split.us.i.i, %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i.i, %.split.us.i
  %.sroa.028.2.i.i = phi ptr [ %.us-phi25.i, %.split.us.i ], [ %.sroa.13.072.us.i.i, %.split78.us.i.i ], [ %i.af, %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i10.i.i ], [ %.us-phi76.i.i, %.split.us.i.i ], [ %.sroa.028.0.lcssa.i.i, %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i.i ], !dbg !5695
  %i.ca = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ag, ptr %.sroa.028.2.i.i, align 8, !dbg !5739, !alias.scope !5602, !noalias !5603
  br label %common.resume, !dbg !5740

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB2j_.exit.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i.us.i
  store i64 %i.ag, ptr %i.bt, align 8, !dbg !5731, !alias.scope !5602, !noalias !5617
  %i.cb = zext i1 %i.bs to i64, !dbg !5732
  %i.cc = add i64 %.sroa.23.1.i.us.i, %i.cb, !dbg !5733 ; 5 uses
  %.not7.i = icmp ult i64 %i.cc, %.sroa.15.0229714, !dbg !5741
  br i1 %.not7.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSj12split_at_mutCs8774dFTUdNv_12polars_arrow.exit, label %bb.j, !dbg !5741

bb.j:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB2j_.exit.i
  tail call void @llvm.trap(), !dbg !5742
  unreachable, !dbg !5742

_RNvMNtCscgRAwXFJnXP_4core5sliceSj12split_at_mutCs8774dFTUdNv_12polars_arrow.exit: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB2j_.exit.i
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSj14swap_uncheckedCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 %.sroa.0.0230713, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0229714, i64 noundef 0, i64 noundef %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !dbg !5743
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0230713, i64 %i.cc, !dbg !5744 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8, !dbg !5745
  %i.cf = xor i64 %i.cc, -1, !dbg !5746
  %i.cg = add i64 %.sroa.15.0229714, %i.cf, !dbg !5746
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1T_(ptr noalias noundef nonnull align 8 %.sroa.0.0230713, i64 noundef %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.0228715, i32 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %4), !dbg !5747
  br label %.backedge, !dbg !5748

bb.k:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1R_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0230713, i64 %i.ad, !dbg !5749
  %.sroa.023.0.val = load i64, ptr %.sroa.023.0228715, align 8, !dbg !5750, !noundef !1402 ; 3 uses
  %.val34 = load i64, ptr %i.ch, align 8, !dbg !5750 ; 3 uses
  %.val3.i = load ptr, ptr %.val35.pre, align 8, !dbg !5751, !nonnull !1402, !align !1547, !noundef !1402 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16, !dbg !5752
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !5752, !noundef !1402 ; 4 uses
  %i.ck = icmp ult i64 %.sroa.023.0.val, %i.cj, !dbg !5753
  br i1 %i.ck, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i, label %bb.l, !dbg !5753

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.023.0.val, i64 noundef %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #35, !dbg !5753
  unreachable, !dbg !5753

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i: ; preds = %bb.k
  %i.cl = icmp ult i64 %.val34, %i.cj, !dbg !5754
  br i1 %i.cl, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit, label %bb.m, !dbg !5754

bb.m:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val34, i64 noundef %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #35, !dbg !5754
  unreachable, !dbg !5754

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8, !dbg !5755
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !5755, !nonnull !1402, !noundef !1402 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.023.0.val, !dbg !5756
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.val34, !dbg !5757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5624), !dbg !5758
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5625), !dbg !5758
  %i.cq = load i64, ptr %i.co, align 8, !dbg !5759, !alias.scope !5624, !noalias !5625, !noundef !1402
  %i.cr = load i64, ptr %i.cp, align 8, !dbg !5760, !alias.scope !5625, !noalias !5624, !noundef !1402
  %i.cs = icmp ult i64 %i.cq, %i.cr, !dbg !5759
  br i1 %i.cs, label %bb.h, label %bb.n, !dbg !5750

bb.n:                                             ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5626), !dbg !5761
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSj14swap_uncheckedCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 %.sroa.0.0230713, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0229714, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23), !dbg !5762
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0230713, i64 8, !dbg !5763 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5627), !dbg !5764
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5628), !dbg !5764
  %i.cu = load i64, ptr %i.ct, align 8, !dbg !5765, !alias.scope !5629, !noalias !5630, !noundef !1402 ; 3 uses
  %i.cv = getelementptr [8 x i8], ptr %.sroa.0.0230713, i64 %.sroa.15.0229714, !dbg !5766 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 -8, !dbg !5766 ; 2 uses
  %.sroa.13.071.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0230713, i64 16, !dbg !5767 ; 3 uses
  %i.cx = icmp ult ptr %.sroa.13.071.i.i, %i.cw, !dbg !5768
  %.val2.i.pre.i.i44 = load i64, ptr %.sroa.0.0230713, align 8, !alias.scope !5631, !noalias !5632 ; 6 uses
  %.val.i.i.i.pre.i = load ptr, ptr %4, align 8, !noalias !5633
  %.val3.i.i.i.i.pre.i = load ptr, ptr %.val.i.i.i.pre.i, align 8, !noalias !5634 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.pre.i, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !5634 ; 10 uses
  br i1 %i.cx, label %.lr.ph.i.i60, label %.preheader.i.i45, !dbg !5768

.lr.ph.i.i60:                                     ; preds = %bb.n
  %i.da = icmp ult i64 %.val2.i.pre.i.i44, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.pre.i, i64 8
  br i1 %i.da, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i11.us.i.i, label %.lr.ph.split.i.i61

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i11.us.i.i: ; preds = %.lr.ph.i.i60, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_.exit23.us.i.i
  %.sroa.13.074.us.i.i = phi ptr [ %.sroa.13.0.us.i.i65, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_.exit23.us.i.i ], [ %.sroa.13.071.i.i, %.lr.ph.i.i60 ] ; 3 uses
  %.sroa.030.073.us.i.i = phi ptr [ %13, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_.exit23.us.i.i ], [ %i.ct, %.lr.ph.i.i60 ] ; 4 uses
  %.sroa.23.072.us.i.i = phi i64 [ %24, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_.exit23.us.i.i ], [ 0, %.lr.ph.i.i60 ] ; 2 uses
  %.val1.i7.us.i.i63 = load i64, ptr %.sroa.13.074.us.i.i, align 8, !dbg !5769, !alias.scope !5629, !noalias !5635 ; 4 uses
  %5 = icmp ult i64 %.val1.i7.us.i.i63, %i.cz, !dbg !5770
  br i1 %5, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i20.us.i.i, label %.split.us.i.i64, !dbg !5770

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i20.us.i.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i11.us.i.i
  %6 = load ptr, ptr %i.db, align 8, !dbg !5771, !noalias !5636, !nonnull !1402, !noundef !1402 ; 3 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.val2.i.pre.i.i44, !dbg !5772
  %8 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.val1.i7.us.i.i63, !dbg !5773
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5637), !dbg !5774
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5638), !dbg !5774
  %9 = load i64, ptr %7, align 8, !dbg !5775, !alias.scope !5637, !noalias !5639, !noundef !1402 ; 2 uses
  %10 = load i64, ptr %8, align 8, !dbg !5776, !alias.scope !5638, !noalias !5640, !noundef !1402
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.sroa.23.072.us.i.i, !dbg !5777 ; 2 uses
  %12 = load i64, ptr %11, align 8, !dbg !5778, !alias.scope !5629, !noalias !5635
  store i64 %12, ptr %.sroa.030.073.us.i.i, align 8, !dbg !5778, !alias.scope !5629, !noalias !5635
  store i64 %.val1.i7.us.i.i63, ptr %11, align 8, !dbg !5779, !alias.scope !5629, !noalias !5635
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.030.073.us.i.i, i64 16, !dbg !5780 ; 3 uses
  %.val1.i16.us.i.i = load i64, ptr %13, align 8, !dbg !5781, !alias.scope !5629, !noalias !5641 ; 4 uses
  %14 = icmp ult i64 %.val1.i16.us.i.i, %i.cz, !dbg !5782
  br i1 %14, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_.exit23.us.i.i, label %.split80.us.i.i, !dbg !5782

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_.exit23.us.i.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i20.us.i.i
  %15 = icmp uge i64 %9, %10, !dbg !5775
  %16 = zext i1 %15 to i64, !dbg !5783
  %17 = add i64 %.sroa.23.072.us.i.i, %16, !dbg !5784 ; 2 uses
  %18 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.val1.i16.us.i.i, !dbg !5785
  %19 = load i64, ptr %18, align 8, !dbg !5786, !alias.scope !5642, !noalias !5643, !noundef !1402
  %20 = icmp uge i64 %9, %19, !dbg !5787
  %21 = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %17, !dbg !5788 ; 2 uses
  %22 = load i64, ptr %21, align 8, !dbg !5789, !alias.scope !5629, !noalias !5641
  store i64 %22, ptr %.sroa.13.074.us.i.i, align 8, !dbg !5789, !alias.scope !5629, !noalias !5641
  store i64 %.val1.i16.us.i.i, ptr %21, align 8, !dbg !5790, !alias.scope !5629, !noalias !5641
  %23 = zext i1 %20 to i64, !dbg !5791
  %24 = add i64 %17, %23, !dbg !5792              ; 2 uses
  %.sroa.13.0.us.i.i65 = getelementptr inbounds nuw i8, ptr %.sroa.030.073.us.i.i, i64 24, !dbg !5767 ; 3 uses
  %25 = icmp ult ptr %.sroa.13.0.us.i.i65, %i.cw, !dbg !5768
  br i1 %25, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i11.us.i.i, label %.preheader.i.i45, !dbg !5768

.preheader.i.i45:                                 ; preds = %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_.exit23.us.i.i, %bb.n
  %.sroa.23.0.lcssa.i.i46 = phi i64 [ 0, %bb.n ], [ %24, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_.exit23.us.i.i ], !dbg !5767
  %.sroa.030.0.lcssa.i.i = phi ptr [ %i.ct, %bb.n ], [ %13, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_.exit23.us.i.i ], !dbg !5767 ; 2 uses
  %.sroa.13.0.lcssa.i.i47 = phi ptr [ %.sroa.13.071.i.i, %bb.n ], [ %.sroa.13.0.us.i.i65, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_.exit23.us.i.i ], !dbg !5767
  %i.dc = icmp ult i64 %.val2.i.pre.i.i44, %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.pre.i, i64 8
  br i1 %i.dc, label %.preheader.i.split.us.i49, label %.cont104.i.i

.preheader.i.split.us.i49:                        ; preds = %.preheader.i.i45, %.cont.i.us.i56
  %.sroa.23.1.i.us.i50 = phi i64 [ %i.dp, %.cont.i.us.i56 ], [ %.sroa.23.0.lcssa.i.i46, %.preheader.i.i45 ], !dbg !5767 ; 3 uses
  %.sroa.13.1.i.us.i51 = phi ptr [ %.sroa.13.1.sroa.gep.i.us.i58, %.cont.i.us.i56 ], [ %.sroa.13.0.lcssa.i.i47, %.preheader.i.i45 ], !dbg !5767 ; 5 uses
  %.sroa.030.1.i.us.i = phi ptr [ %.sroa.13.1.i.us.i51, %.cont.i.us.i56 ], [ %.sroa.030.0.lcssa.i.i, %.preheader.i.i45 ], !dbg !5767 ; 2 uses
  %i.de = icmp eq ptr %.sroa.13.1.i.us.i51, %i.cv, !dbg !5793 ; 2 uses
  br i1 %i.de, label %.cont104.i.us.i, label %.else105.i.us.i, !dbg !5794

.else105.i.us.i:                                  ; preds = %.preheader.i.split.us.i49
  %.val1.i.else.val.i.us.i52 = load i64, ptr %.sroa.13.1.i.us.i51, align 8, !dbg !5794, !alias.scope !5629, !noalias !5644
  br label %.cont104.i.us.i, !dbg !5794

.cont104.i.us.i:                                  ; preds = %.else105.i.us.i, %.preheader.i.split.us.i49
  %.val1.i.i.us.i53 = phi i64 [ %i.cu, %.preheader.i.split.us.i49 ], [ %.val1.i.else.val.i.us.i52, %.else105.i.us.i ] ; 3 uses
  %i.df = icmp ult i64 %.val1.i.i.us.i53, %i.cz, !dbg !5795
  br i1 %i.df, label %bb.o, label %.split.us.i54, !dbg !5795

bb.o:                                             ; preds = %.cont104.i.us.i
  %i.dg = load ptr, ptr %i.dd, align 8, !dbg !5796, !noalias !5645, !nonnull !1402, !noundef !1402 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.val2.i.pre.i.i44, !dbg !5797
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.val1.i.i.us.i53, !dbg !5798
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5646), !dbg !5799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5647), !dbg !5799
  %i.dj = load i64, ptr %i.dh, align 8, !dbg !5800, !alias.scope !5646, !noalias !5648, !noundef !1402
  %i.dk = load i64, ptr %i.di, align 8, !dbg !5801, !alias.scope !5647, !noalias !5649, !noundef !1402
  %i.dl = icmp uge i64 %i.dj, %i.dk, !dbg !5800   ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.sroa.23.1.i.us.i50, !dbg !5802 ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8, !dbg !5803, !alias.scope !5629, !noalias !5644
  store i64 %i.dn, ptr %.sroa.030.1.i.us.i, align 8, !dbg !5803, !alias.scope !5629, !noalias !5644
  br i1 %i.de, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0EB2C_.exit.i, label %.cont.i.us.i56, !dbg !5804

.cont.i.us.i56:                                   ; preds = %bb.o
  %.else.val.i.us.i57 = load i64, ptr %.sroa.13.1.i.us.i51, align 8, !dbg !5804, !alias.scope !5629, !noalias !5644
  store i64 %.else.val.i.us.i57, ptr %i.dm, align 8, !dbg !5804, !alias.scope !5629, !noalias !5644
  %i.do = zext i1 %i.dl to i64, !dbg !5805
  %i.dp = add i64 %.sroa.23.1.i.us.i50, %i.do, !dbg !5806
  %.sroa.13.1.sroa.gep.i.us.i58 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.us.i51, i64 8, !dbg !5807
  br label %.preheader.i.split.us.i49, !dbg !5808

.cont104.i.i:                                     ; preds = %.preheader.i.i45
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.pre.i.i44, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #35
          to label %.noexc.i.i48 unwind label %bb.p, !dbg !5809, !noalias !5634

.noexc.i.i48:                                     ; preds = %.cont104.i.i
  unreachable, !dbg !5809

.split.us.i54:                                    ; preds = %.cont104.i.us.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i.i.us.i53, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #35
          to label %.noexc5.i.i55 unwind label %bb.p, !dbg !5795, !noalias !5634

.noexc5.i.i55:                                    ; preds = %.split.us.i54
  unreachable, !dbg !5795

.lr.ph.split.i.i61:                               ; preds = %.lr.ph.i.i60
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.pre.i.i44, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #35
          to label %.noexc12.i.i62 unwind label %bb.p, !dbg !5810, !noalias !5634

.noexc12.i.i62:                                   ; preds = %.lr.ph.split.i.i61
  unreachable, !dbg !5810

.split.us.i.i64:                                  ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i11.us.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i7.us.i.i63, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #35
          to label %.noexc13.i.i unwind label %bb.p, !dbg !5770, !noalias !5634

.noexc13.i.i:                                     ; preds = %.split.us.i.i64
  unreachable, !dbg !5770

.split80.us.i.i:                                  ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i20.us.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i16.us.i.i, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #35
          to label %.noexc22.i.i unwind label %bb.p, !dbg !5782, !noalias !5634

.noexc22.i.i:                                     ; preds = %.split80.us.i.i
  unreachable, !dbg !5782

bb.p:                                             ; preds = %.split80.us.i.i, %.split.us.i.i64, %.lr.ph.split.i.i61, %.split.us.i54, %.cont104.i.i
  %.sroa.030.2.i.i = phi ptr [ %.sroa.13.074.us.i.i, %.split80.us.i.i ], [ %.sroa.030.0.lcssa.i.i, %.cont104.i.i ], [ %.sroa.030.073.us.i.i, %.split.us.i.i64 ], [ %i.ct, %.lr.ph.split.i.i61 ], [ %.sroa.030.1.i.us.i, %.split.us.i54 ], !dbg !5767
  %i.dq = landingpad { ptr, i32 }
          cleanup
  store i64 %i.cu, ptr %.sroa.030.2.i.i, align 8, !dbg !5811, !alias.scope !5629, !noalias !5630
  br label %common.resume, !dbg !5812

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0EB2C_.exit.i: ; preds = %bb.o
  store i64 %i.cu, ptr %i.dm, align 8, !dbg !5804, !alias.scope !5629, !noalias !5644
  %i.dr = zext i1 %i.dl to i64, !dbg !5805
  %i.ds = add i64 %.sroa.23.1.i.us.i50, %i.dr, !dbg !5806 ; 3 uses
  %.not7.i59 = icmp ult i64 %i.ds, %.sroa.15.0229714, !dbg !5813
  br i1 %.not7.i59, label %bb.r, label %bb.q, !dbg !5813

bb.q:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0EB2C_.exit.i
  tail call void @llvm.trap(), !dbg !5814
  unreachable, !dbg !5814

bb.r:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0EB2C_.exit.i
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSj14swap_uncheckedCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 %.sroa.0.0230713, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0229714, i64 noundef 0, i64 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !dbg !5815
  %i.dt = add nuw nsw i64 %i.ds, 1, !dbg !5816    ; 2 uses
  %i.du = sub nuw i64 %.sroa.15.0229714, %i.dt, !dbg !5817
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0230713, i64 %i.dt, !dbg !5818
  br label %.backedge, !dbg !5656

.backedge:                                        ; preds = %bb.r, %_RNvMNtCscgRAwXFJnXP_4core5sliceSj12split_at_mutCs8774dFTUdNv_12polars_arrow.exit
  %.sroa.023.0.be = phi ptr [ %i.cd, %_RNvMNtCscgRAwXFJnXP_4core5sliceSj12split_at_mutCs8774dFTUdNv_12polars_arrow.exit ], [ null, %bb.r ]
  %.sroa.15.0.be = phi i64 [ %i.cg, %_RNvMNtCscgRAwXFJnXP_4core5sliceSj12split_at_mutCs8774dFTUdNv_12polars_arrow.exit ], [ %i.du, %bb.r ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.ce, %_RNvMNtCscgRAwXFJnXP_4core5sliceSj12split_at_mutCs8774dFTUdNv_12polars_arrow.exit ], [ %i.dv, %bb.r ] ; 3 uses
  %i.dw = icmp ult i64 %.sroa.15.0.be, 33, !dbg !5653
  br i1 %i.dw, label %._crit_edge, label %.lr.ph, !dbg !5653
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %2, i32 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5819 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 33, !dbg !6062
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader, !dbg !6062

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0, !dbg !6063
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph129, !dbg !6063

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.d, 0, !dbg !6063
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph129, !dbg !6063

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_networkjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias noundef nonnull %4), !dbg !6064
  br label %bb.c, !dbg !6065

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.082.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.081.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable8heapsort8heapsortjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 %.sroa.0.082.lcssa, i64 noundef %.sroa.15.081.lcssa, ptr noalias noundef nonnull %4) #34, !dbg !6066
  br label %bb.c, !dbg !6065

.lr.ph129:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.079128 = phi i32 [ %i.d, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.080127 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.081126 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.082125 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.d = add i32 %.sroa.026.079128, -1, !dbg !6067 ; 3 uses
  %i.e = lshr i64 %.sroa.15.081126, 3, !dbg !6068 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5, !dbg !6069
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 %.idx.i, !dbg !6069 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.e, 56, !dbg !6070
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 %.idx2.i, !dbg !6070 ; 3 uses
  %i.h = icmp samesign ult i64 %.sroa.15.081126, 64, !dbg !6071
  br i1 %i.h, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i, label %bb.b, !dbg !6071

bb.b:                                             ; preds = %.lr.ph129
  %i.i = tail call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow(ptr noundef nonnull readonly align 8 %.sroa.0.082125, ptr noundef nonnull readonly %i.f, ptr noundef nonnull readonly %i.g, i64 noundef %i.e, ptr noalias noundef nonnull %4), !dbg !6072
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit, !dbg !6073

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i: ; preds = %.lr.ph129
  %.val6.i = load i64, ptr %.sroa.0.082125, align 8, !dbg !6074, !alias.scope !6027, !noalias !6028, !noundef !1402 ; 2 uses
  %.val7.i = load i64, ptr %i.f, align 8, !dbg !6074, !alias.scope !6029, !noalias !6030, !noundef !1402 ; 2 uses
  %i.j = icmp ult i64 %.val6.i, %.val7.i, !dbg !6075 ; 2 uses
  %.val5.i = load i64, ptr %i.g, align 8, !dbg !6076, !alias.scope !6029, !noalias !6030, !noundef !1402 ; 2 uses
  %i.k = icmp ult i64 %.val6.i, %.val5.i, !dbg !6077
  %i.l = xor i1 %i.j, %i.k, !dbg !6078
  %i.m = icmp ult i64 %.val7.i, %.val5.i, !dbg !6078
  %i.n = xor i1 %i.j, %i.m, !dbg !6078
  %..i.i = select i1 %i.n, ptr %i.g, ptr %i.f, !dbg !6078
  %.sroa.0.0.i.i = select i1 %i.l, ptr %.sroa.0.082125, ptr %..i.i, !dbg !6078
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit, !dbg !6073

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.b, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i ], [ %i.i, %bb.b ]
  %i.o = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !6079
  %i.p = ptrtoint ptr %.sroa.0.082125 to i64, !dbg !6079
  %i.q = sub nuw i64 %i.o, %i.p, !dbg !6079       ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.q, 3, !dbg !6079 ; 3 uses
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.081126, !dbg !6080
  tail call void @llvm.assume(i1 %i.r), !dbg !6081
  %.not = icmp eq ptr %.sroa.023.080127, null, !dbg !6082
  br i1 %.not, label %bb.d, label %bb.f, !dbg !6083

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void, !dbg !6084

bb.d:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit, %bb.f
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSj14swap_uncheckedCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 %.sroa.0.082125, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.081126, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23), !dbg !6085
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 8, !dbg !6086 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6031), !dbg !6087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6032), !dbg !6087
  %i.t = load i64, ptr %i.s, align 8, !dbg !6088, !alias.scope !6033, !noalias !6032, !noundef !1402 ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.sroa.0.082125, i64 %.sroa.15.081126, !dbg !6089 ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -8, !dbg !6089 ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 16, !dbg !6090 ; 3 uses
  %i.w = icmp ult ptr %.sroa.13.030.i.i, %i.v, !dbg !6091
  %.val1.i.pre.i.i = load i64, ptr %.sroa.0.082125, align 8, !alias.scope !6034, !noalias !6031 ; 4 uses
  br i1 %i.w, label %.lr.ph.i.i, label %.preheader.i.i, !dbg !6091

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %.lr.ph.i.i ], !dbg !6090 ; 2 uses
  %.sroa.015.0.lcssa.i.i = phi ptr [ %i.s, %bb.d ], [ %i.aj, %.lr.ph.i.i ], !dbg !6090 ; 2 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.030.i.i, %bb.d ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ], !dbg !6090 ; 2 uses
  %i.x = icmp eq ptr %.sroa.13.0.lcssa.i.i, %i.u, !dbg !6092
  br i1 %i.x, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i, label %.cont.i.i, !dbg !6093

.cont.i.i:                                        ; preds = %.preheader.i.i, %.cont.i.i
  %.sroa.015.1.i7.i = phi ptr [ %.sroa.13.1.i6.i, %.cont.i.i ], [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i ]
  %.sroa.13.1.i6.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i ] ; 4 uses
  %.sroa.23.1.i5.i = phi i64 [ %i.ac, %.cont.i.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.val.i.else.val.i.i = load i64, ptr %.sroa.13.1.i6.i, align 8, !dbg !6093, !alias.scope !6035, !noalias !6036, !noundef !1402 ; 2 uses
  %i.y = icmp ult i64 %.val.i.else.val.i.i, %.val1.i.pre.i.i, !dbg !6094
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.23.1.i5.i, !dbg !6095 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !dbg !6096, !alias.scope !6033, !noalias !6037
  store i64 %i.aa, ptr %.sroa.015.1.i7.i, align 8, !dbg !6096, !alias.scope !6033, !noalias !6037
  store i64 %.val.i.else.val.i.i, ptr %i.z, align 8, !dbg !6097, !alias.scope !6033, !noalias !6037
  %i.ab = zext i1 %i.y to i64, !dbg !6098
  %i.ac = add i64 %.sroa.23.1.i5.i, %i.ab, !dbg !6099 ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i, i64 8, !dbg !6100 ; 2 uses
  %i.ad = icmp eq ptr %.sroa.13.1.sroa.gep.i.i, %i.u, !dbg !6092
  br i1 %i.ad, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i, label %.cont.i.i, !dbg !6093

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.030.i.i, %bb.d ] ; 2 uses
  %.sroa.015.032.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.ao, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.val.i11.i.i = load i64, ptr %.sroa.13.033.i.i, align 8, !dbg !6101, !alias.scope !6038, !noalias !6039, !noundef !1402 ; 2 uses
  %i.ae = icmp ult i64 %.val.i11.i.i, %.val1.i.pre.i.i, !dbg !6102
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.23.031.i.i, !dbg !6103 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !dbg !6104, !alias.scope !6033, !noalias !6040
  store i64 %i.ag, ptr %.sroa.015.032.i.i, align 8, !dbg !6104, !alias.scope !6033, !noalias !6040
  store i64 %.val.i11.i.i, ptr %i.af, align 8, !dbg !6105, !alias.scope !6033, !noalias !6040
  %i.ah = zext i1 %i.ae to i64, !dbg !6106
  %i.ai = add i64 %.sroa.23.031.i.i, %i.ah, !dbg !6107 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 16, !dbg !6108 ; 3 uses
  %.val.i13.i.i = load i64, ptr %i.aj, align 8, !dbg !6109, !alias.scope !6041, !noalias !6042, !noundef !1402 ; 2 uses
  %i.ak = icmp ult i64 %.val.i13.i.i, %.val1.i.pre.i.i, !dbg !6110
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ai, !dbg !6111 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !dbg !6112, !alias.scope !6033, !noalias !6043
  store i64 %i.am, ptr %.sroa.13.033.i.i, align 8, !dbg !6112, !alias.scope !6033, !noalias !6043
  store i64 %.val.i13.i.i, ptr %i.al, align 8, !dbg !6113, !alias.scope !6033, !noalias !6043
  %i.an = zext i1 %i.ak to i64, !dbg !6114
  %i.ao = add i64 %i.ai, %i.an, !dbg !6115        ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 24, !dbg !6090 ; 3 uses
  %i.ap = icmp ult ptr %.sroa.13.0.i.i, %i.v, !dbg !6091
  br i1 %i.ap, label %.lr.ph.i.i, label %.preheader.i.i, !dbg !6091

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i: ; preds = %.cont.i.i, %.preheader.i.i
  %.sroa.23.1.i.lcssa.i = phi i64 [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ], [ %i.ac, %.cont.i.i ], !dbg !6090 ; 2 uses
  %.sroa.015.1.i.lcssa.i = phi ptr [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.13.1.i6.i, %.cont.i.i ], !dbg !6090
  %i.aq = icmp ult i64 %i.t, %.val1.i.pre.i.i, !dbg !6094
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.23.1.i.lcssa.i, !dbg !6095 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !dbg !6096, !alias.scope !6033, !noalias !6037
  store i64 %i.as, ptr %.sroa.015.1.i.lcssa.i, align 8, !dbg !6096, !alias.scope !6033, !noalias !6037
  store i64 %i.t, ptr %i.ar, align 8, !dbg !6097, !alias.scope !6033, !noalias !6037
  %i.at = zext i1 %i.aq to i64, !dbg !6098
  %i.au = add i64 %.sroa.23.1.i.lcssa.i, %i.at, !dbg !6099 ; 5 uses
  %.not7.i = icmp ult i64 %i.au, %.sroa.15.081126, !dbg !6116
  br i1 %.not7.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSj12split_at_mutCs8774dFTUdNv_12polars_arrow.exit, label %bb.e, !dbg !6116

bb.e:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i
  tail call void @llvm.trap(), !dbg !6117
  unreachable, !dbg !6117

_RNvMNtCscgRAwXFJnXP_4core5sliceSj12split_at_mutCs8774dFTUdNv_12polars_arrow.exit: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSj14swap_uncheckedCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 %.sroa.0.082125, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.081126, i64 noundef 0, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !dbg !6118
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.082125, i64 %i.au, !dbg !6119 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !6120
  %i.ax = xor i64 %i.au, -1, !dbg !6121
  %i.ay = add i64 %.sroa.15.081126, %i.ax, !dbg !6121
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 %.sroa.0.082125, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.080127, i32 noundef %i.d, ptr noalias noundef nonnull %4), !dbg !6122
  br label %.backedge, !dbg !6123

bb.f:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 %i.q, !dbg !6124
  %.sroa.023.0.val = load i64, ptr %.sroa.023.080127, align 8, !dbg !6125, !alias.scope !6044, !noalias !6045, !noundef !1402
  %.val = load i64, ptr %i.az, align 8, !dbg !6125, !alias.scope !6045, !noalias !6044, !noundef !1402
  %i.ba = icmp ult i64 %.sroa.023.0.val, %.val, !dbg !6126
  br i1 %i.ba, label %bb.d, label %bb.g, !dbg !6125

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSj14swap_uncheckedCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 %.sroa.0.082125, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.081126, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23), !dbg !6127
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 8, !dbg !6128 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6046), !dbg !6129
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6047), !dbg !6129
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !6130, !alias.scope !6048, !noalias !6047, !noundef !1402 ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %.sroa.0.082125, i64 %.sroa.15.081126, !dbg !6131 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -8, !dbg !6131 ; 2 uses
  %.sroa.13.030.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 16, !dbg !6132 ; 3 uses
  %i.bf = icmp ult ptr %.sroa.13.030.i.i41, %i.be, !dbg !6133
  %.val1.i.pre.i.i42 = load i64, ptr %.sroa.0.082125, align 8, !alias.scope !6049, !noalias !6046 ; 4 uses
  br i1 %i.bf, label %.lr.ph.i.i56, label %.preheader.i.i43, !dbg !6133

end_hunk_0
begin_hunk_1_@llvm.umin.i8
!5291 = distinct !{!5291, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5292 = distinct !{!5292, !5291, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5293 = distinct !DISubprogram(name: "lt<usize, usize>", linkageName: "_RNvXs8_NtNtCscgRAwXFJnXP_4core3cmp5implsRjNtB7_10PartialOrd2ltCs8774dFTUdNv_12polars_arrow", scope: !5593, file: !1619, line: 2142, type: !1403, scopeLine: 2142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5294 = distinct !DILocation(line: 3245, column: 53, scope: !5264, inlinedAt: !5265)
!5295 = distinct !{!5295, !5291, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5296 = distinct !DILexicalBlock(scope: !5262, file: !1647, line: 82, column: 5)
!5297 = distinct !DILocation(line: 83, column: 13, scope: !5296, inlinedAt: !5263)
!5298 = distinct !DILocation(line: 3245, column: 57, scope: !5264, inlinedAt: !5297)
!5299 = distinct !DILocation(line: 333, column: 46, scope: !5270, inlinedAt: !5298)
!5300 = distinct !DILocation(line: 3831, column: 9, scope: !5268, inlinedAt: !5299)
!5301 = distinct !DILocation(line: 19, column: 15, scope: !5276, inlinedAt: !5300)
!5302 = distinct !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5294)
!5303 = distinct !{!5303, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5304 = distinct !{!5304, !5303, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5305 = distinct !{!5305, !5303, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5306 = distinct !DILocation(line: 3245, column: 53, scope: !5264, inlinedAt: !5297)
!5307 = distinct !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5306)
!5308 = distinct !DILexicalBlock(scope: !5296, file: !1647, line: 83, column: 5)
!5309 = distinct !DISubprogram(name: "offset_from_unsigned<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPj20offset_from_unsignedCs8774dFTUdNv_12polars_arrow", scope: !1435, file: !1433, line: 701, type: !1408, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5310 = distinct !DILocation(line: 0, scope: !5260, inlinedAt: !5253)
!5311 = distinct !DILexicalBlock(scope: !5251, file: !1647, line: 26, column: 5)
!5312 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !1430, file: !1429, line: 202, type: !1408, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5313 = distinct !DILocation(line: 42, column: 9, scope: !5311, inlinedAt: !5253)
!5314 = distinct !DILexicalBlock(scope: !5261, file: !1638, line: 50, column: 41)
!5315 = distinct !{!5315, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1T_"}
!5316 = distinct !{!5316, !5315, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1T_: argument 0"}
!5317 = distinct !DISubprogram(name: "partition<usize, core::slice::{impl#0}::sort_unstable_by_key::{closure_env#0}<usize, &usize, polars_arrow::io::ipc::read::common::prepare_projection::{closure_env#1}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1T_", scope: !1640, file: !1638, line: 93, type: !1403, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5318 = distinct !DILexicalBlock(scope: !5317, file: !1638, line: 97, column: 5)
!5319 = distinct !DILocation(line: 63, column: 22, scope: !5261)
!5320 = distinct !DILocation(line: 113, column: 38, scope: !5318, inlinedAt: !5319)
!5321 = distinct !DILocation(line: 1987, column: 20, scope: !233, inlinedAt: !5320)
!5322 = distinct !DILocation(line: 2196, column: 32, scope: !232, inlinedAt: !5321)
!5323 = distinct !DILocation(line: 2109, column: 40, scope: !231, inlinedAt: !5322)
!5324 = distinct !{!5324, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB2j_"}
!5325 = distinct !{!5325, !5324, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB2j_: argument 0"}
!5326 = distinct !DILexicalBlock(scope: !5318, file: !1638, line: 113, column: 5)
!5327 = distinct !DILexicalBlock(scope: !5326, file: !1638, line: 120, column: 5)
!5328 = distinct !{!5328, !5324, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB2j_: argument 1"}
!5329 = distinct !{!5329, !5324, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB2j_: argument 2"}
!5330 = distinct !DISubprogram(name: "read<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readjECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 1682, type: !1408, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5331 = distinct !DISubprogram(name: "partition_lomuto_branchless_cyclic<usize, core::slice::{impl#0}::sort_unstable_by_key::{closure_env#0}<usize, &usize, polars_arrow::io::ipc::read::common::prepare_projection::{closure_env#1}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB2j_", scope: !1640, file: !1638, line: 249, type: !1408, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5332 = distinct !DILexicalBlock(scope: !5331, file: !1638, line: 257, column: 5)
!5333 = distinct !DILexicalBlock(scope: !5332, file: !1638, line: 258, column: 5)
!5334 = distinct !DILexicalBlock(scope: !5333, file: !1638, line: 280, column: 9)
!5335 = distinct !DILocation(line: 124, column: 18, scope: !5327, inlinedAt: !5319)
!5336 = distinct !DILocation(line: 298, column: 47, scope: !5334, inlinedAt: !5335)
!5337 = distinct !DISubprogram(name: "add<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOj3addCs8774dFTUdNv_12polars_arrow", scope: !1451, file: !1449, line: 927, type: !1408, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5338 = distinct !DILexicalBlock(scope: !5334, file: !1638, line: 298, column: 9)
!5339 = distinct !DILexicalBlock(scope: !5338, file: !1638, line: 300, column: 9)
!5340 = distinct !DILexicalBlock(scope: !5339, file: !1638, line: 309, column: 9)
!5341 = distinct !DILocation(line: 311, column: 33, scope: !5340, inlinedAt: !5335)
!5342 = distinct !DILexicalBlock(scope: !5340, file: !1638, line: 311, column: 9)
!5343 = distinct !{!5343, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_"}
!5344 = distinct !{!5344, !5343, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_: argument 1"}
!5345 = distinct !{!5345, !5343, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_: argument 0"}
!5346 = distinct !DISubprogram(name: "{closure#0}<usize, core::slice::{impl#0}::sort_unstable_by_key::{closure_env#0}<usize, &usize, polars_arrow::io::ipc::read::common::prepare_projection::{closure_env#1}>>", linkageName: "_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_", scope: !1656, file: !1638, line: 280, type: !1408, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5347 = distinct !DILocation(line: 314, column: 17, scope: !5342, inlinedAt: !5335)
!5348 = distinct !DILocation(line: 281, column: 31, scope: !5346, inlinedAt: !5347)
!5349 = distinct !DILocation(line: 3245, column: 48, scope: !5264, inlinedAt: !5348)
!5350 = distinct !DILocation(line: 333, column: 46, scope: !5270, inlinedAt: !5349)
!5351 = distinct !DILocation(line: 3831, column: 9, scope: !5268, inlinedAt: !5350)
!5352 = distinct !DILocation(line: 19, column: 15, scope: !5276, inlinedAt: !5351)
!5353 = distinct !DILocation(line: 3831, column: 23, scope: !5268, inlinedAt: !5350)
!5354 = distinct !DILocation(line: 3756, column: 14, scope: !5267, inlinedAt: !5353)
!5355 = distinct !DILocation(line: 1841, column: 76, scope: !5266, inlinedAt: !5354)
!5356 = distinct !DILocation(line: 1942, column: 18, scope: !5286, inlinedAt: !5355)
!5357 = distinct !DILocation(line: 296, column: 20, scope: !5285, inlinedAt: !5356)
!5358 = distinct !DILocation(line: 609, column: 14, scope: !5284, inlinedAt: !5357)
!5359 = distinct !DILocation(line: 3245, column: 57, scope: !5264, inlinedAt: !5348)
!5360 = distinct !DILocation(line: 333, column: 46, scope: !5270, inlinedAt: !5359)
!5361 = distinct !DILocation(line: 3831, column: 9, scope: !5268, inlinedAt: !5360)
!5362 = distinct !DILocation(line: 19, column: 15, scope: !5276, inlinedAt: !5361)
!5363 = distinct !{!5363, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5364 = distinct !{!5364, !5363, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5365 = distinct !DILocation(line: 3245, column: 53, scope: !5264, inlinedAt: !5348)
!5366 = distinct !{!5366, !5363, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5367 = distinct !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5365)
!5368 = distinct !DISubprogram(name: "add<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOj3addCs8774dFTUdNv_12polars_arrow", scope: !1451, file: !1449, line: 927, type: !1408, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5369 = distinct !DILexicalBlock(scope: !5346, file: !1638, line: 281, column: 13)
!5370 = distinct !DILocation(line: 282, column: 31, scope: !5369, inlinedAt: !5347)
!5371 = distinct !DISubprogram(name: "copy<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4copyjECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 628, type: !1408, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5372 = distinct !DILexicalBlock(scope: !5369, file: !1638, line: 282, column: 13)
!5373 = distinct !DILocation(line: 284, column: 13, scope: !5372, inlinedAt: !5347)
!5374 = distinct !DISubprogram(name: "copy_nonoverlapping<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingjECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 531, type: !1408, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5375 = distinct !DILocation(line: 285, column: 13, scope: !5372, inlinedAt: !5347)
!5376 = distinct !DILocation(line: 290, column: 39, scope: !5372, inlinedAt: !5347)
!5377 = distinct !{!5377, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_"}
!5378 = distinct !{!5378, !5377, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_: argument 1"}
!5379 = distinct !{!5379, !5377, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_: argument 0"}
!5380 = distinct !DILocation(line: 315, column: 17, scope: !5342, inlinedAt: !5335)
!5381 = distinct !DILocation(line: 281, column: 31, scope: !5346, inlinedAt: !5380)
!5382 = distinct !DILocation(line: 3245, column: 48, scope: !5264, inlinedAt: !5381)
!5383 = distinct !DILocation(line: 333, column: 46, scope: !5270, inlinedAt: !5382)
!5384 = distinct !DILocation(line: 3831, column: 9, scope: !5268, inlinedAt: !5383)
!5385 = distinct !DILocation(line: 19, column: 15, scope: !5276, inlinedAt: !5384)
!5386 = distinct !{!5386, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5387 = distinct !{!5387, !5386, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5388 = distinct !{!5388, !5386, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5389 = distinct !DILocation(line: 3245, column: 53, scope: !5264, inlinedAt: !5381)
!5390 = distinct !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5389)
!5391 = distinct !DILocation(line: 282, column: 31, scope: !5369, inlinedAt: !5380)
!5392 = distinct !DILocation(line: 284, column: 13, scope: !5372, inlinedAt: !5380)
!5393 = distinct !DILocation(line: 285, column: 13, scope: !5372, inlinedAt: !5380)
!5394 = distinct !DILexicalBlock(scope: !5342, file: !1638, line: 323, column: 9)
!5395 = distinct !DILexicalBlock(scope: !5394, file: !1638, line: 325, column: 13)
!5396 = distinct !DILocation(line: 328, column: 13, scope: !5395, inlinedAt: !5335)
!5397 = distinct !{!5397, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_"}
!5398 = distinct !{!5398, !5397, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_: argument 1"}
!5399 = distinct !{!5399, !5397, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B2l_: argument 0"}
!5400 = distinct !DILocation(line: 281, column: 31, scope: !5346, inlinedAt: !5396)
!5401 = distinct !DILocation(line: 3245, column: 48, scope: !5264, inlinedAt: !5400)
!5402 = distinct !DILocation(line: 333, column: 46, scope: !5270, inlinedAt: !5401)
!5403 = distinct !DILocation(line: 3831, column: 9, scope: !5268, inlinedAt: !5402)
!5404 = distinct !DILocation(line: 19, column: 15, scope: !5276, inlinedAt: !5403)
!5405 = distinct !DILocation(line: 3831, column: 23, scope: !5268, inlinedAt: !5402)
!5406 = distinct !DILocation(line: 3756, column: 14, scope: !5267, inlinedAt: !5405)
!5407 = distinct !DILocation(line: 1841, column: 76, scope: !5266, inlinedAt: !5406)
!5408 = distinct !DILocation(line: 1942, column: 18, scope: !5286, inlinedAt: !5407)
!5409 = distinct !DILocation(line: 296, column: 20, scope: !5285, inlinedAt: !5408)
!5410 = distinct !DILocation(line: 609, column: 14, scope: !5284, inlinedAt: !5409)
!5411 = distinct !DILocation(line: 3245, column: 57, scope: !5264, inlinedAt: !5400)
!5412 = distinct !DILocation(line: 333, column: 46, scope: !5270, inlinedAt: !5411)
!5413 = distinct !DILocation(line: 3831, column: 9, scope: !5268, inlinedAt: !5412)
!5414 = distinct !DILocation(line: 19, column: 15, scope: !5276, inlinedAt: !5413)
!5415 = distinct !{!5415, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5416 = distinct !{!5416, !5415, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5417 = distinct !DILocation(line: 3245, column: 53, scope: !5264, inlinedAt: !5400)
!5418 = distinct !{!5418, !5415, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5419 = distinct !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5417)
!5420 = distinct !DILocation(line: 282, column: 31, scope: !5369, inlinedAt: !5396)
!5421 = distinct !DILocation(line: 284, column: 13, scope: !5372, inlinedAt: !5396)
!5422 = distinct !DILocation(line: 285, column: 13, scope: !5372, inlinedAt: !5396)
!5423 = distinct !DILocation(line: 290, column: 39, scope: !5372, inlinedAt: !5396)
!5424 = distinct !DISubprogram(name: "copy_nonoverlapping<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingjECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 531, type: !1408, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5425 = distinct !DISubprogram(name: "drop<usize>", linkageName: "_RNvXs_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksortINtB4_11GapGuardRawjENtNtNtBc_3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow", scope: !5623, file: !1638, line: 386, type: !1403, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5426 = distinct !DISubprogram(name: "drop_in_place<core::slice::sort::unstable::quicksort::GapGuardRaw<usize>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtB4_5slice4sort8unstable9quicksort11GapGuardRawjEECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 810, type: !1403, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5427 = distinct !DILocation(line: 337, column: 5, scope: !5338, inlinedAt: !5335)
!5428 = distinct !DILocation(line: 810, column: 1, scope: !5426, inlinedAt: !5427)
!5429 = distinct !DILocation(line: 390, column: 13, scope: !5425, inlinedAt: !5428)
!5430 = distinct !DILexicalBlock(scope: !5327, file: !1638, line: 124, column: 5)
!5431 = distinct !DILexicalBlock(scope: !5261, file: !1638, line: 63, column: 9)
!5432 = distinct !DILocation(line: 68, column: 31, scope: !5431)
!5433 = distinct !DILocation(line: 1987, column: 20, scope: !233, inlinedAt: !5432)
!5434 = distinct !DILocation(line: 2196, column: 32, scope: !232, inlinedAt: !5433)
!5435 = distinct !DILocation(line: 2109, column: 40, scope: !231, inlinedAt: !5434)
!5436 = distinct !DILexicalBlock(scope: !5431, file: !1638, line: 68, column: 9)
!5437 = distinct !DILocation(line: 69, column: 36, scope: !5436)
!5438 = distinct !DILocation(line: 1987, column: 20, scope: !233, inlinedAt: !5437)
!5439 = distinct !DILocation(line: 2196, column: 32, scope: !232, inlinedAt: !5438)
!5440 = distinct !DILocation(line: 2109, column: 40, scope: !231, inlinedAt: !5439)
!5441 = distinct !DILexicalBlock(scope: !5436, file: !1638, line: 69, column: 9)
!5442 = distinct !DILexicalBlock(scope: !5441, file: !1638, line: 70, column: 9)
!5443 = distinct !DILocation(line: 51, column: 17, scope: !5314)
!5444 = distinct !DILocation(line: 3245, column: 48, scope: !5264, inlinedAt: !5443)
!5445 = distinct !DILocation(line: 333, column: 46, scope: !5270, inlinedAt: !5444)
!5446 = distinct !DILocation(line: 3831, column: 23, scope: !5268, inlinedAt: !5445)
!5447 = distinct !DILocation(line: 3756, column: 14, scope: !5267, inlinedAt: !5446)
!5448 = distinct !DILocation(line: 3831, column: 9, scope: !5268, inlinedAt: !5445)
!5449 = distinct !DILocation(line: 19, column: 15, scope: !5276, inlinedAt: !5448)
!5450 = distinct !DILocation(line: 3245, column: 57, scope: !5264, inlinedAt: !5443)
!5451 = distinct !DILocation(line: 333, column: 46, scope: !5270, inlinedAt: !5450)
!5452 = distinct !DILocation(line: 3831, column: 9, scope: !5268, inlinedAt: !5451)
!5453 = distinct !DILocation(line: 19, column: 15, scope: !5276, inlinedAt: !5452)
!5454 = distinct !DILocation(line: 1841, column: 76, scope: !5266, inlinedAt: !5447)
!5455 = distinct !DILocation(line: 1942, column: 18, scope: !5286, inlinedAt: !5454)
!5456 = distinct !DILocation(line: 296, column: 20, scope: !5285, inlinedAt: !5455)
!5457 = distinct !DILocation(line: 609, column: 14, scope: !5284, inlinedAt: !5456)
!5458 = distinct !{!5458, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5459 = distinct !{!5459, !5458, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5460 = distinct !DILocation(line: 3245, column: 53, scope: !5264, inlinedAt: !5443)
!5461 = distinct !{!5461, !5458, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5462 = distinct !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5460)
!5463 = distinct !{!5463, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionjNCINvB2_9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0EB2c_"}
!5464 = distinct !{!5464, !5463, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionjNCINvB2_9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0EB2c_: argument 0"}
!5465 = distinct !DISubprogram(name: "partition<usize, core::slice::sort::unstable::quicksort::quicksort::{closure_env#0}<usize, core::slice::{impl#0}::sort_unstable_by_key::{closure_env#0}<usize, &usize, polars_arrow::io::ipc::read::common::prepare_projection::{closure_env#1}>>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionjNCINvB2_9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0EB2c_", scope: !1640, file: !1638, line: 93, type: !1403, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5466 = distinct !DILexicalBlock(scope: !5465, file: !1638, line: 97, column: 5)
!5467 = distinct !DILocation(line: 52, column: 30, scope: !5314)
!5468 = distinct !DILocation(line: 113, column: 38, scope: !5466, inlinedAt: !5467)
!5469 = distinct !DILocation(line: 1987, column: 20, scope: !233, inlinedAt: !5468)
!5470 = distinct !DILocation(line: 2196, column: 32, scope: !232, inlinedAt: !5469)
!5471 = distinct !DILocation(line: 2109, column: 40, scope: !231, inlinedAt: !5470)
!5472 = distinct !{!5472, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0EB2C_"}
!5473 = distinct !{!5473, !5472, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0EB2C_: argument 0"}
!5474 = distinct !DILexicalBlock(scope: !5466, file: !1638, line: 113, column: 5)
!5475 = distinct !DILexicalBlock(scope: !5474, file: !1638, line: 120, column: 5)
!5476 = distinct !{!5476, !5472, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0EB2C_: argument 1"}
!5477 = distinct !{!5477, !5472, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0EB2C_: argument 2"}
!5478 = distinct !DISubprogram(name: "read<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readjECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 1682, type: !1408, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5479 = distinct !DISubprogram(name: "partition_lomuto_branchless_cyclic<usize, core::slice::sort::unstable::quicksort::quicksort::{closure_env#0}<usize, core::slice::{impl#0}::sort_unstable_by_key::{closure_env#0}<usize, &usize, polars_arrow::io::ipc::read::common::prepare_projection::{closure_env#1}>>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0EB2C_", scope: !1640, file: !1638, line: 249, type: !1408, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5480 = distinct !DILexicalBlock(scope: !5479, file: !1638, line: 257, column: 5)
!5481 = distinct !DILexicalBlock(scope: !5480, file: !1638, line: 258, column: 5)
!5482 = distinct !DILexicalBlock(scope: !5481, file: !1638, line: 280, column: 9)
!5483 = distinct !DILocation(line: 124, column: 18, scope: !5475, inlinedAt: !5467)
!5484 = distinct !DILocation(line: 298, column: 47, scope: !5482, inlinedAt: !5483)
!5485 = distinct !DISubprogram(name: "add<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOj3addCs8774dFTUdNv_12polars_arrow", scope: !1451, file: !1449, line: 927, type: !1408, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5486 = distinct !DILexicalBlock(scope: !5482, file: !1638, line: 298, column: 9)
!5487 = distinct !DILexicalBlock(scope: !5486, file: !1638, line: 300, column: 9)
!5488 = distinct !DILexicalBlock(scope: !5487, file: !1638, line: 309, column: 9)
!5489 = distinct !DILocation(line: 311, column: 33, scope: !5488, inlinedAt: !5483)
!5490 = distinct !DILexicalBlock(scope: !5488, file: !1638, line: 311, column: 9)
!5491 = distinct !{!5491, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_"}
!5492 = distinct !{!5492, !5491, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_: argument 1"}
!5493 = distinct !{!5493, !5491, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_: argument 0"}
!5494 = distinct !DISubprogram(name: "{closure#0}<usize, core::slice::sort::unstable::quicksort::quicksort::{closure_env#0}<usize, core::slice::{impl#0}::sort_unstable_by_key::{closure_env#0}<usize, &usize, polars_arrow::io::ipc::read::common::prepare_projection::{closure_env#1}>>>", linkageName: "_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_", scope: !1656, file: !1638, line: 280, type: !1408, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5495 = distinct !DILocation(line: 314, column: 17, scope: !5490, inlinedAt: !5483)
!5496 = distinct !DISubprogram(name: "{closure#0}<usize, core::slice::{impl#0}::sort_unstable_by_key::{closure_env#0}<usize, &usize, polars_arrow::io::ipc::read::common::prepare_projection::{closure_env#1}>>", linkageName: "_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0B1V_", scope: !1657, file: !1638, line: 52, type: !1403, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5497 = distinct !DILocation(line: 281, column: 31, scope: !5494, inlinedAt: !5495)
!5498 = distinct !DILocation(line: 52, column: 67, scope: !5496, inlinedAt: !5497)
!5499 = distinct !DILocation(line: 3245, column: 57, scope: !5264, inlinedAt: !5498)
!5500 = distinct !DILocation(line: 333, column: 46, scope: !5270, inlinedAt: !5499)
!5501 = distinct !DILocation(line: 3831, column: 9, scope: !5268, inlinedAt: !5500)
!5502 = distinct !DILocation(line: 19, column: 15, scope: !5276, inlinedAt: !5501)
!5503 = distinct !DILocation(line: 3245, column: 48, scope: !5264, inlinedAt: !5498)
!5504 = distinct !DILocation(line: 333, column: 46, scope: !5270, inlinedAt: !5503)
!5505 = distinct !DILocation(line: 3831, column: 23, scope: !5268, inlinedAt: !5504)
!5506 = distinct !DILocation(line: 3756, column: 14, scope: !5267, inlinedAt: !5505)
!5507 = distinct !DILocation(line: 1841, column: 76, scope: !5266, inlinedAt: !5506)
!5508 = distinct !DILocation(line: 1942, column: 18, scope: !5286, inlinedAt: !5507)
!5509 = distinct !DILocation(line: 296, column: 20, scope: !5285, inlinedAt: !5508)
!5510 = distinct !DILocation(line: 609, column: 14, scope: !5284, inlinedAt: !5509)
!5511 = distinct !DILocation(line: 3831, column: 9, scope: !5268, inlinedAt: !5504)
!5512 = distinct !DILocation(line: 19, column: 15, scope: !5276, inlinedAt: !5511)
!5513 = distinct !{!5513, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5514 = distinct !{!5514, !5513, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5515 = distinct !DILocation(line: 3245, column: 53, scope: !5264, inlinedAt: !5498)
!5516 = distinct !{!5516, !5513, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5517 = distinct !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5515)
!5518 = distinct !DISubprogram(name: "add<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOj3addCs8774dFTUdNv_12polars_arrow", scope: !1451, file: !1449, line: 927, type: !1408, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5519 = distinct !DILexicalBlock(scope: !5494, file: !1638, line: 281, column: 13)
!5520 = distinct !DILocation(line: 282, column: 31, scope: !5519, inlinedAt: !5495)
!5521 = distinct !DISubprogram(name: "copy<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4copyjECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 628, type: !1408, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5522 = distinct !DILexicalBlock(scope: !5519, file: !1638, line: 282, column: 13)
!5523 = distinct !DILocation(line: 284, column: 13, scope: !5522, inlinedAt: !5495)
!5524 = distinct !DISubprogram(name: "copy_nonoverlapping<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingjECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 531, type: !1408, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5525 = distinct !DILocation(line: 285, column: 13, scope: !5522, inlinedAt: !5495)
!5526 = distinct !DILocation(line: 290, column: 39, scope: !5522, inlinedAt: !5495)
!5527 = distinct !{!5527, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_"}
!5528 = distinct !{!5528, !5527, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_: argument 1"}
!5529 = distinct !{!5529, !5527, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_: argument 0"}
!5530 = distinct !DILocation(line: 315, column: 17, scope: !5490, inlinedAt: !5483)
!5531 = distinct !DILocation(line: 281, column: 31, scope: !5494, inlinedAt: !5530)
!5532 = distinct !DILocation(line: 52, column: 67, scope: !5496, inlinedAt: !5531)
!5533 = distinct !DILocation(line: 3245, column: 57, scope: !5264, inlinedAt: !5532)
!5534 = distinct !DILocation(line: 333, column: 46, scope: !5270, inlinedAt: !5533)
!5535 = distinct !DILocation(line: 3831, column: 9, scope: !5268, inlinedAt: !5534)
!5536 = distinct !DILocation(line: 19, column: 15, scope: !5276, inlinedAt: !5535)
!5537 = distinct !{!5537, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5538 = distinct !{!5538, !5537, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5539 = distinct !{!5539, !5537, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5540 = distinct !DILocation(line: 3245, column: 53, scope: !5264, inlinedAt: !5532)
!5541 = distinct !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5540)
!5542 = distinct !DILocation(line: 282, column: 31, scope: !5519, inlinedAt: !5530)
!5543 = distinct !DILocation(line: 284, column: 13, scope: !5522, inlinedAt: !5530)
!5544 = distinct !DILocation(line: 285, column: 13, scope: !5522, inlinedAt: !5530)
!5545 = distinct !DILexicalBlock(scope: !5490, file: !1638, line: 323, column: 9)
!5546 = distinct !DILexicalBlock(scope: !5545, file: !1638, line: 325, column: 13)
!5547 = distinct !DILocation(line: 328, column: 13, scope: !5546, inlinedAt: !5483)
!5548 = distinct !{!5548, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_"}
!5549 = distinct !{!5549, !5548, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_: argument 1"}
!5550 = distinct !{!5550, !5548, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0E0E0B2E_: argument 0"}
!5551 = distinct !DILocation(line: 281, column: 31, scope: !5494, inlinedAt: !5547)
!5552 = distinct !DILocation(line: 52, column: 67, scope: !5496, inlinedAt: !5551)
!5553 = distinct !DILocation(line: 3245, column: 57, scope: !5264, inlinedAt: !5552)
!5554 = distinct !DILocation(line: 333, column: 46, scope: !5270, inlinedAt: !5553)
!5555 = distinct !DILocation(line: 3831, column: 9, scope: !5268, inlinedAt: !5554)
!5556 = distinct !DILocation(line: 19, column: 15, scope: !5276, inlinedAt: !5555)
!5557 = distinct !DILocation(line: 3245, column: 48, scope: !5264, inlinedAt: !5552)
!5558 = distinct !DILocation(line: 333, column: 46, scope: !5270, inlinedAt: !5557)
!5559 = distinct !DILocation(line: 3831, column: 23, scope: !5268, inlinedAt: !5558)
!5560 = distinct !DILocation(line: 3756, column: 14, scope: !5267, inlinedAt: !5559)
!5561 = distinct !DILocation(line: 1841, column: 76, scope: !5266, inlinedAt: !5560)
!5562 = distinct !DILocation(line: 1942, column: 18, scope: !5286, inlinedAt: !5561)
!5563 = distinct !DILocation(line: 296, column: 20, scope: !5285, inlinedAt: !5562)
!5564 = distinct !DILocation(line: 609, column: 14, scope: !5284, inlinedAt: !5563)
!5565 = distinct !DILocation(line: 3831, column: 9, scope: !5268, inlinedAt: !5558)
!5566 = distinct !DILocation(line: 19, column: 15, scope: !5276, inlinedAt: !5565)
!5567 = distinct !{!5567, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5568 = distinct !{!5568, !5567, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5569 = distinct !DILocation(line: 3245, column: 53, scope: !5264, inlinedAt: !5552)
!5570 = distinct !{!5570, !5567, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5571 = distinct !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5569)
!5572 = distinct !DILocation(line: 282, column: 31, scope: !5519, inlinedAt: !5547)
!5573 = distinct !DILocation(line: 284, column: 13, scope: !5522, inlinedAt: !5547)
!5574 = distinct !DILocation(line: 285, column: 13, scope: !5522, inlinedAt: !5547)
!5575 = distinct !DILocation(line: 290, column: 39, scope: !5522, inlinedAt: !5547)
!5576 = distinct !DILocation(line: 337, column: 5, scope: !5486, inlinedAt: !5483)
!5577 = distinct !DILocation(line: 810, column: 1, scope: !5426, inlinedAt: !5576)
!5578 = distinct !DILocation(line: 390, column: 13, scope: !5425, inlinedAt: !5577)
!5579 = distinct !DILexicalBlock(scope: !5475, file: !1638, line: 124, column: 5)
!5580 = distinct !DILexicalBlock(scope: !5314, file: !1638, line: 52, column: 17)
!5581 = distinct !DISubprogram(name: "index_mut<usize>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSjE9index_mutCs8774dFTUdNv_12polars_arrow", scope: !1658, file: !1594, line: 579, type: !1408, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5582 = distinct !DISubprogram(name: "index_mut<usize, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexSjINtNtNtB8_3ops5index8IndexMutINtNtBK_5range9RangeFromjEE9index_mutCs8774dFTUdNv_12polars_arrow", scope: !1606, file: !1594, line: 30, type: !1408, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5583 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index28get_offset_len_mut_noubcheckjECs8774dFTUdNv_12polars_arrow", scope: !1595, file: !1594, line: 94, type: !1408, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5584 = distinct !DILexicalBlock(scope: !5583, file: !1594, line: 99, column: 5)
!5585 = distinct !DILexicalBlock(scope: !5581, file: !1594, line: 585, column: 13)
!5586 = !DILexicalBlockFile(scope: !5242, file: !1646, discriminator: 0)
!5587 = !{!5248}
!5588 = !{!5249}
!5589 = !{!5248, !5249}
!5590 = !DINamespace(name: "sort_unstable_by_key", scope: !1454)
!5591 = !DINamespace(name: "prepare_projection", scope: !1653)
!5592 = !{!5292}
!5593 = !DINamespace(name: "{impl#10}", scope: !1654)
!5594 = !{!5295}
!5595 = !{!5295, !5248, !5249}
!5596 = !{!5292, !5248, !5249}
!5597 = !{!5304}
!5598 = !{!5305, !5248, !5249}
!5599 = !{!5316}
!5600 = !{!5325}
!5601 = !{!5328}
!5602 = !{!5325, !5316}
!5603 = !{!5328, !5329}
!5604 = !{!5328, !5316}
!5605 = !{!5325, !5329}
!5606 = !{!5325, !5328, !5329, !5316}
!5607 = !{!5325, !5328, !5329}
!5608 = !{!5345, !5344, !5328, !5329}
!5609 = !{!5345, !5344, !5325, !5328, !5329}
!5610 = !{!5364}
!5611 = !{!5366}
!5612 = !{!5366, !5345, !5344, !5325, !5328, !5329}
!5613 = !{!5364, !5345, !5344, !5325, !5328, !5329}
!5614 = !{!5379, !5378, !5328, !5329}
!5615 = !{!5387}
!5616 = !{!5388, !5379, !5378, !5325, !5328, !5329}
!5617 = !{!5399, !5398, !5328, !5329}
!5618 = !{!5399, !5398, !5325, !5328, !5329}
!5619 = !{!5416}
!5620 = !{!5418}
!5621 = !{!5418, !5399, !5398, !5325, !5328, !5329}
!5622 = !{!5416, !5399, !5398, !5325, !5328, !5329}
!5623 = !DINamespace(name: "{impl#1}", scope: !1640)
!5624 = !{!5459}
!5625 = !{!5461}
!5626 = !{!5464}
!5627 = !{!5473}
!5628 = !{!5476}
!5629 = !{!5473, !5464}
!5630 = !{!5476, !5477}
!5631 = !{!5476, !5464}
!5632 = !{!5473, !5477}
!5633 = !{!5473, !5476, !5477, !5464}
!5634 = !{!5473, !5476, !5477}
!5635 = !{!5493, !5492, !5476, !5477}
!5636 = !{!5493, !5492, !5473, !5476, !5477}
!5637 = !{!5514}
!5638 = !{!5516}
!5639 = !{!5516, !5493, !5492, !5473, !5476, !5477}
!5640 = !{!5514, !5493, !5492, !5473, !5476, !5477}
!5641 = !{!5529, !5528, !5476, !5477}
!5642 = !{!5538}
!5643 = !{!5539, !5529, !5528, !5473, !5476, !5477}
!5644 = !{!5550, !5549, !5476, !5477}
!5645 = !{!5550, !5549, !5473, !5476, !5477}
!5646 = !{!5568}
!5647 = !{!5570}
!5648 = !{!5570, !5550, !5549, !5473, !5476, !5477}
!5649 = !{!5568, !5550, !5549, !5473, !5476, !5477}
!5650 = !DILocation(line: 56, column: 27, scope: !5580)
!5651 = !DILocation(line: 31, column: 15, scope: !5582, inlinedAt: !5650)
!5652 = !DILocation(line: 586, column: 19, scope: !5585, inlinedAt: !5651)
!5653 = !DILocation(line: 30, column: 12, scope: !5242)
!5654 = !DILocation(line: 37, column: 12, scope: !5242)
!5655 = !DILocation(line: 164, column: 13, scope: !5243, inlinedAt: !5246)
!5656 = !DILocation(line: 0, scope: !5586)
!5657 = !DILocation(line: 38, column: 13, scope: !5242)
!5658 = !DILocation(line: 42, column: 9, scope: !5242)
!5659 = !DILocation(line: 45, column: 25, scope: !5242)
!5660 = !DILocation(line: 28, column: 25, scope: !5252, inlinedAt: !5253)
!5661 = !DILocation(line: 863, column: 18, scope: !5254, inlinedAt: !5257)
!5662 = !DILocation(line: 863, column: 18, scope: !5254, inlinedAt: !5259)
!5663 = !DILocation(line: 34, column: 12, scope: !5260, inlinedAt: !5253)
!5664 = !DILocation(line: 37, column: 13, scope: !5260, inlinedAt: !5253)
!5665 = !DILocation(line: 63, column: 22, scope: !5261)
!5666 = !DILocation(line: 34, column: 9, scope: !5260, inlinedAt: !5253)
!5667 = !DILocation(line: 82, column: 13, scope: !5262, inlinedAt: !5263)
!5668 = !DILocation(line: 3245, column: 48, scope: !5264, inlinedAt: !5265)
!5669 = !DILocation(line: 1841, column: 86, scope: !5266, inlinedAt: !5274)
!5670 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5278)
!5671 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5282)
!5672 = !DILocation(line: 614, column: 9, scope: !5283, inlinedAt: !5290)
!5673 = !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5294)
!5674 = !DILocation(line: 83, column: 13, scope: !5296, inlinedAt: !5263)
!5675 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5301)
!5676 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5278)
!5677 = !DILocation(line: 1917, column: 50, scope: !227, inlinedAt: !5302)
!5678 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5282)
!5679 = !DILocation(line: 1917, column: 59, scope: !227, inlinedAt: !5302)
!5680 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5301)
!5681 = !DILocation(line: 1917, column: 59, scope: !227, inlinedAt: !5307)
!5682 = !DILocation(line: 1917, column: 50, scope: !227, inlinedAt: !5307)
!5683 = !DILocation(line: 84, column: 8, scope: !5308, inlinedAt: !5263)
!5684 = !DILocation(line: 729, column: 18, scope: !5309, inlinedAt: !5310)
!5685 = !DILocation(line: 42, column: 32, scope: !5311, inlinedAt: !5253)
!5686 = !DILocation(line: 210, column: 9, scope: !5312, inlinedAt: !5313)
!5687 = !DILocation(line: 50, column: 26, scope: !5314)
!5688 = !DILocation(line: 50, column: 16, scope: !5314)
!5689 = !DILocation(line: 80, column: 2, scope: !5242)
!5690 = !DILocation(line: 111, column: 11, scope: !5318, inlinedAt: !5319)
!5691 = !DILocation(line: 961, column: 18, scope: !228, inlinedAt: !5323)
!5692 = !DILocation(line: 124, column: 18, scope: !5327, inlinedAt: !5319)
!5693 = !DILocation(line: 1721, column: 9, scope: !5330, inlinedAt: !5336)
!5694 = !DILocation(line: 961, column: 18, scope: !5337, inlinedAt: !5341)
!5695 = !DILocation(line: 0, scope: !5338, inlinedAt: !5335)
!5696 = !DILocation(line: 312, column: 15, scope: !5342, inlinedAt: !5335)
!5697 = !DILocation(line: 281, column: 31, scope: !5346, inlinedAt: !5347)
!5698 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5352)
!5699 = !DILocation(line: 614, column: 9, scope: !5283, inlinedAt: !5358)
!5700 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5352)
!5701 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5362)
!5702 = !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5365)
!5703 = !DILocation(line: 1917, column: 50, scope: !227, inlinedAt: !5367)
!5704 = !DILocation(line: 1917, column: 59, scope: !227, inlinedAt: !5367)
!5705 = !DILocation(line: 961, column: 18, scope: !5368, inlinedAt: !5370)
!5706 = !DILocation(line: 643, column: 9, scope: !5371, inlinedAt: !5373)
!5707 = !DILocation(line: 552, column: 14, scope: !5374, inlinedAt: !5375)
!5708 = !DILocation(line: 961, column: 18, scope: !5368, inlinedAt: !5376)
!5709 = !DILocation(line: 281, column: 31, scope: !5346, inlinedAt: !5380)
!5710 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5385)
!5711 = !DILocation(line: 288, column: 29, scope: !5372, inlinedAt: !5347)
!5712 = !DILocation(line: 288, column: 13, scope: !5372, inlinedAt: !5347)
!5713 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5385)
!5714 = !DILocation(line: 1917, column: 50, scope: !227, inlinedAt: !5390)
!5715 = !DILocation(line: 961, column: 18, scope: !5368, inlinedAt: !5391)
!5716 = !DILocation(line: 643, column: 9, scope: !5371, inlinedAt: !5392)
!5717 = !DILocation(line: 552, column: 14, scope: !5374, inlinedAt: !5393)
!5718 = !DILocation(line: 288, column: 29, scope: !5372, inlinedAt: !5380)
!5719 = !DILocation(line: 288, column: 13, scope: !5372, inlinedAt: !5380)
!5720 = !DILocation(line: 325, column: 27, scope: !5394, inlinedAt: !5335)
!5721 = !DILocation(line: 281, column: 31, scope: !5346, inlinedAt: !5396)
!5722 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5404)
!5723 = !DILocation(line: 614, column: 9, scope: !5283, inlinedAt: !5410)
!5724 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5404)
!5725 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5414)
!5726 = !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5417)
!5727 = !DILocation(line: 1917, column: 50, scope: !227, inlinedAt: !5419)
!5728 = !DILocation(line: 1917, column: 59, scope: !227, inlinedAt: !5419)
!5729 = !DILocation(line: 961, column: 18, scope: !5368, inlinedAt: !5420)
!5730 = !DILocation(line: 643, column: 9, scope: !5371, inlinedAt: !5421)
!5731 = !DILocation(line: 552, column: 14, scope: !5374, inlinedAt: !5422)
!5732 = !DILocation(line: 288, column: 29, scope: !5372, inlinedAt: !5396)
!5733 = !DILocation(line: 288, column: 13, scope: !5372, inlinedAt: !5396)
!5734 = !DILocation(line: 961, column: 18, scope: !5368, inlinedAt: !5423)
!5735 = !DILocation(line: 330, column: 16, scope: !5395, inlinedAt: !5335)
!5736 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5414)
!5737 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5362)
!5738 = !DILocation(line: 0, scope: !5261)
!5739 = !DILocation(line: 552, column: 14, scope: !5424, inlinedAt: !5429)
!5740 = !DILocation(line: 249, column: 1, scope: !5331, inlinedAt: !5335)
!5741 = !DILocation(line: 126, column: 8, scope: !5430, inlinedAt: !5319)
!5742 = !DILocation(line: 127, column: 9, scope: !5430, inlinedAt: !5319)
!5743 = !DILocation(line: 133, column: 11, scope: !5430, inlinedAt: !5319)
!5744 = !DILocation(line: 961, column: 18, scope: !228, inlinedAt: !5435)
!5745 = !DILocation(line: 961, column: 18, scope: !228, inlinedAt: !5440)
!5746 = !DILocation(line: 2109, column: 50, scope: !231, inlinedAt: !5439)
!5747 = !DILocation(line: 74, column: 9, scope: !5442)
!5748 = !DILocation(line: 29, column: 5, scope: !5242)
!5749 = !DILocation(line: 51, column: 28, scope: !5314)
!5750 = !DILocation(line: 51, column: 17, scope: !5314)
!5751 = !DILocation(line: 3245, column: 48, scope: !5264, inlinedAt: !5443)
!5752 = !DILocation(line: 1841, column: 86, scope: !5266, inlinedAt: !5447)
!5753 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5449)
!5754 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5453)
!5755 = !DILocation(line: 614, column: 9, scope: !5283, inlinedAt: !5457)
!5756 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5449)
!5757 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5453)
!5758 = !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5460)
!5759 = !DILocation(line: 1917, column: 50, scope: !227, inlinedAt: !5462)
!5760 = !DILocation(line: 1917, column: 59, scope: !227, inlinedAt: !5462)
!5761 = !DILocation(line: 52, column: 30, scope: !5314)
!5762 = !DILocation(line: 111, column: 11, scope: !5466, inlinedAt: !5467)
!5763 = !DILocation(line: 961, column: 18, scope: !228, inlinedAt: !5471)
!5764 = !DILocation(line: 124, column: 18, scope: !5475, inlinedAt: !5467)
!5765 = !DILocation(line: 1721, column: 9, scope: !5478, inlinedAt: !5484)
!5766 = !DILocation(line: 961, column: 18, scope: !5485, inlinedAt: !5489)
!5767 = !DILocation(line: 0, scope: !5486, inlinedAt: !5483)
!5768 = !DILocation(line: 312, column: 15, scope: !5490, inlinedAt: !5483)
!5769 = !DILocation(line: 281, column: 31, scope: !5494, inlinedAt: !5495)
!5770 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5502)
!5771 = !DILocation(line: 614, column: 9, scope: !5283, inlinedAt: !5510)
!5772 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5512)
!5773 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5502)
!5774 = !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5515)
!5775 = !DILocation(line: 1917, column: 50, scope: !227, inlinedAt: !5517)
!5776 = !DILocation(line: 1917, column: 59, scope: !227, inlinedAt: !5517)
!5777 = !DILocation(line: 961, column: 18, scope: !5518, inlinedAt: !5520)
!5778 = !DILocation(line: 643, column: 9, scope: !5521, inlinedAt: !5523)
!5779 = !DILocation(line: 552, column: 14, scope: !5524, inlinedAt: !5525)
!5780 = !DILocation(line: 961, column: 18, scope: !5518, inlinedAt: !5526)
!5781 = !DILocation(line: 281, column: 31, scope: !5494, inlinedAt: !5530)
!5782 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5536)
!5783 = !DILocation(line: 288, column: 29, scope: !5522, inlinedAt: !5495)
!5784 = !DILocation(line: 288, column: 13, scope: !5522, inlinedAt: !5495)
!5785 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5536)
!5786 = !DILocation(line: 1917, column: 59, scope: !227, inlinedAt: !5541)
!5787 = !DILocation(line: 1917, column: 50, scope: !227, inlinedAt: !5541)
!5788 = !DILocation(line: 961, column: 18, scope: !5518, inlinedAt: !5542)
!5789 = !DILocation(line: 643, column: 9, scope: !5521, inlinedAt: !5543)
!5790 = !DILocation(line: 552, column: 14, scope: !5524, inlinedAt: !5544)
!5791 = !DILocation(line: 288, column: 29, scope: !5522, inlinedAt: !5530)
!5792 = !DILocation(line: 288, column: 13, scope: !5522, inlinedAt: !5530)
!5793 = !DILocation(line: 325, column: 27, scope: !5545, inlinedAt: !5483)
!5794 = !DILocation(line: 281, column: 31, scope: !5494, inlinedAt: !5547)
!5795 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5556)
!5796 = !DILocation(line: 614, column: 9, scope: !5283, inlinedAt: !5564)
!5797 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5566)
!5798 = !DILocation(line: 272, column: 9, scope: !5275, inlinedAt: !5556)
!5799 = !DILocation(line: 2143, column: 13, scope: !5293, inlinedAt: !5569)
!5800 = !DILocation(line: 1917, column: 50, scope: !227, inlinedAt: !5571)
!5801 = !DILocation(line: 1917, column: 59, scope: !227, inlinedAt: !5571)
!5802 = !DILocation(line: 961, column: 18, scope: !5518, inlinedAt: !5572)
!5803 = !DILocation(line: 643, column: 9, scope: !5521, inlinedAt: !5573)
!5804 = !DILocation(line: 552, column: 14, scope: !5524, inlinedAt: !5574)
!5805 = !DILocation(line: 288, column: 29, scope: !5522, inlinedAt: !5547)
!5806 = !DILocation(line: 288, column: 13, scope: !5522, inlinedAt: !5547)
!5807 = !DILocation(line: 961, column: 18, scope: !5518, inlinedAt: !5575)
!5808 = !DILocation(line: 330, column: 16, scope: !5546, inlinedAt: !5483)
!5809 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5566)
!5810 = !DILocation(line: 272, column: 10, scope: !5275, inlinedAt: !5512)
!5811 = !DILocation(line: 552, column: 14, scope: !5424, inlinedAt: !5578)
!5812 = !DILocation(line: 249, column: 1, scope: !5479, inlinedAt: !5483)
!5813 = !DILocation(line: 126, column: 8, scope: !5579, inlinedAt: !5467)
!5814 = !DILocation(line: 127, column: 9, scope: !5579, inlinedAt: !5467)
!5815 = !DILocation(line: 133, column: 11, scope: !5579, inlinedAt: !5467)
!5816 = !DILocation(line: 56, column: 28, scope: !5580)
!5817 = !DILocation(line: 585, column: 27, scope: !5581, inlinedAt: !5651)
!5818 = !DILocation(line: 101, column: 24, scope: !5584, inlinedAt: !5652)
!5819 = distinct !DISubprogram(name: "quicksort<usize, fn(&usize, &usize) -> bool>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow", scope: !1640, file: !1638, line: 21, type: !1408, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5820 = distinct !DISubprogram(name: "small_sort<usize, fn(&usize, &usize) -> bool>", linkageName: "_RINvXs4_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortjNtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNvYjNtNtBe_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow", scope: !1644, file: !1641, line: 157, type: !1408, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5821 = distinct !DISubprogram(name: "small_sort<usize, fn(&usize, &usize) -> bool>", linkageName: "_RINvXs1_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortjNtB6_25UnstableSmallSortTypeImpl10small_sortNvYjNtNtBe_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow", scope: !1645, file: !1641, line: 97, type: !1408, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5822 = distinct !DILocation(line: 31, column: 13, scope: !5819)
!5823 = distinct !DILocation(line: 101, column: 9, scope: !5821, inlinedAt: !5822)
!5824 = distinct !DISubprogram(name: "choose_pivot<usize, fn(&usize, &usize) -> bool>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow", scope: !1648, file: !1647, line: 13, type: !1408, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5825 = distinct !DILexicalBlock(scope: !5824, file: !1647, line: 18, column: 5)
!5826 = distinct !DILexicalBlock(scope: !5825, file: !1647, line: 27, column: 9)
!5827 = distinct !DILocation(line: 45, column: 25, scope: !5819)
!5828 = distinct !DISubprogram(name: "add<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPj3addCs8774dFTUdNv_12polars_arrow", scope: !1435, file: !1433, line: 829, type: !1408, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5829 = distinct !DILexicalBlock(scope: !5826, file: !1647, line: 28, column: 9)
!5830 = distinct !DILexicalBlock(scope: !5829, file: !1647, line: 30, column: 9)
!5831 = distinct !DILocation(line: 31, column: 24, scope: !5830, inlinedAt: !5827)
!5832 = distinct !DILexicalBlock(scope: !5830, file: !1647, line: 31, column: 9)
!5833 = distinct !DILocation(line: 32, column: 24, scope: !5832, inlinedAt: !5827)
!5834 = distinct !DILexicalBlock(scope: !5832, file: !1647, line: 32, column: 9)
!5835 = distinct !{!5835, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow"}
!5836 = distinct !{!5836, !5835, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow: argument 0"}
!5837 = distinct !{!5837, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5838 = distinct !{!5838, !5837, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5839 = distinct !{!5839, !5835, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow: argument 1"}
!5840 = distinct !{!5840, !5837, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5841 = distinct !DISubprogram(name: "median3<usize, fn(&usize, &usize) -> bool>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow", scope: !1648, file: !1647, line: 79, type: !1408, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5842 = distinct !DILocation(line: 35, column: 13, scope: !5834, inlinedAt: !5827)
!5843 = distinct !DISubprogram(name: "call_mut<fn(&usize, &usize) -> bool, (&usize, &usize)>", linkageName: "_RNvYNvYjNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2ltINtNtNtBa_3ops8function5FnMutTRjB1g_EE8call_mutCs8774dFTUdNv_12polars_arrow", scope: !1659, file: !1404, line: 166, type: !1403, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5844 = distinct !DILocation(line: 82, column: 13, scope: !5841, inlinedAt: !5842)
!5845 = distinct !DILocation(line: 166, column: 5, scope: !5843, inlinedAt: !5844)
!5846 = distinct !DILexicalBlock(scope: !5841, file: !1647, line: 82, column: 5)
!5847 = distinct !DILocation(line: 83, column: 13, scope: !5846, inlinedAt: !5842)
!5848 = distinct !DILocation(line: 166, column: 5, scope: !5843, inlinedAt: !5847)
!5849 = distinct !DILexicalBlock(scope: !5846, file: !1647, line: 83, column: 5)
!5850 = distinct !DISubprogram(name: "offset_from_unsigned<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPj20offset_from_unsignedCs8774dFTUdNv_12polars_arrow", scope: !1435, file: !1433, line: 701, type: !1408, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5851 = distinct !DILocation(line: 0, scope: !5834, inlinedAt: !5827)
!5852 = distinct !DILexicalBlock(scope: !5825, file: !1647, line: 26, column: 5)
!5853 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !1430, file: !1429, line: 202, type: !1408, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5854 = distinct !DILocation(line: 42, column: 9, scope: !5852, inlinedAt: !5827)
!5855 = distinct !DILexicalBlock(scope: !5819, file: !1638, line: 45, column: 9)
!5856 = distinct !DILexicalBlock(scope: !5855, file: !1638, line: 50, column: 41)
!5857 = distinct !DISubprogram(name: "partition<usize, fn(&usize, &usize) -> bool>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow", scope: !1640, file: !1638, line: 93, type: !1403, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5858 = distinct !DILexicalBlock(scope: !5857, file: !1638, line: 97, column: 5)
!5859 = distinct !DILocation(line: 63, column: 22, scope: !5855)
!5860 = distinct !DILocation(line: 113, column: 38, scope: !5858, inlinedAt: !5859)
!5861 = distinct !DILocation(line: 1987, column: 20, scope: !233, inlinedAt: !5860)
!5862 = distinct !DILocation(line: 2196, column: 32, scope: !232, inlinedAt: !5861)
!5863 = distinct !DILocation(line: 2109, column: 40, scope: !231, inlinedAt: !5862)
!5864 = distinct !{!5864, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow"}
!5865 = distinct !{!5865, !5864, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow: argument 0"}
!5866 = distinct !DILexicalBlock(scope: !5858, file: !1638, line: 113, column: 5)
!5867 = distinct !DILexicalBlock(scope: !5866, file: !1638, line: 120, column: 5)
!5868 = distinct !{!5868, !5864, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow: argument 1"}
!5869 = distinct !{!5869, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow"}
!5870 = distinct !{!5870, !5869, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow: argument 0"}
!5871 = distinct !DISubprogram(name: "read<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readjECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 1682, type: !1408, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5872 = distinct !DISubprogram(name: "partition_lomuto_branchless_cyclic<usize, fn(&usize, &usize) -> bool>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow", scope: !1640, file: !1638, line: 249, type: !1408, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5873 = distinct !DILexicalBlock(scope: !5872, file: !1638, line: 257, column: 5)
!5874 = distinct !DILexicalBlock(scope: !5873, file: !1638, line: 258, column: 5)
!5875 = distinct !DILexicalBlock(scope: !5874, file: !1638, line: 280, column: 9)
!5876 = distinct !DILocation(line: 124, column: 18, scope: !5867, inlinedAt: !5859)
!5877 = distinct !DILocation(line: 298, column: 47, scope: !5875, inlinedAt: !5876)
!5878 = distinct !DISubprogram(name: "add<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOj3addCs8774dFTUdNv_12polars_arrow", scope: !1451, file: !1449, line: 927, type: !1408, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5879 = distinct !DILexicalBlock(scope: !5875, file: !1638, line: 298, column: 9)
!5880 = distinct !DILexicalBlock(scope: !5879, file: !1638, line: 300, column: 9)
!5881 = distinct !DILexicalBlock(scope: !5880, file: !1638, line: 309, column: 9)
!5882 = distinct !DILocation(line: 311, column: 33, scope: !5881, inlinedAt: !5876)
!5883 = distinct !DILexicalBlock(scope: !5881, file: !1638, line: 311, column: 9)
!5884 = distinct !DILexicalBlock(scope: !5883, file: !1638, line: 323, column: 9)
!5885 = distinct !DISubprogram(name: "{closure#0}<usize, fn(&usize, &usize) -> bool>", linkageName: "_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBc_3cmp10PartialOrd2ltE0Cs8774dFTUdNv_12polars_arrow", scope: !1656, file: !1638, line: 280, type: !1403, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5886 = distinct !DILexicalBlock(scope: !5884, file: !1638, line: 325, column: 13)
!5887 = distinct !DILocation(line: 328, column: 13, scope: !5886, inlinedAt: !5876)
!5888 = distinct !{!5888, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5889 = distinct !{!5889, !5888, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5890 = distinct !{!5890, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBc_3cmp10PartialOrd2ltE0Cs8774dFTUdNv_12polars_arrow"}
!5891 = distinct !{!5891, !5890, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBc_3cmp10PartialOrd2ltE0Cs8774dFTUdNv_12polars_arrow: argument 0"}
!5892 = distinct !{!5892, !5888, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5893 = distinct !DILocation(line: 281, column: 31, scope: !5885, inlinedAt: !5887)
!5894 = distinct !DILocation(line: 166, column: 5, scope: !5843, inlinedAt: !5893)
!5895 = distinct !DISubprogram(name: "add<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOj3addCs8774dFTUdNv_12polars_arrow", scope: !1451, file: !1449, line: 927, type: !1408, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5896 = distinct !DILexicalBlock(scope: !5885, file: !1638, line: 281, column: 13)
!5897 = distinct !DILocation(line: 282, column: 31, scope: !5896, inlinedAt: !5887)
!5898 = distinct !DISubprogram(name: "copy<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4copyjECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 628, type: !1408, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5899 = distinct !DILexicalBlock(scope: !5896, file: !1638, line: 282, column: 13)
!5900 = distinct !DILocation(line: 284, column: 13, scope: !5899, inlinedAt: !5887)
!5901 = distinct !DISubprogram(name: "copy_nonoverlapping<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingjECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 531, type: !1408, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5902 = distinct !DILocation(line: 285, column: 13, scope: !5899, inlinedAt: !5887)
!5903 = distinct !DILocation(line: 290, column: 39, scope: !5899, inlinedAt: !5887)
!5904 = distinct !{!5904, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5905 = distinct !{!5905, !5904, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5906 = distinct !{!5906, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBc_3cmp10PartialOrd2ltE0Cs8774dFTUdNv_12polars_arrow"}
!5907 = distinct !{!5907, !5906, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBc_3cmp10PartialOrd2ltE0Cs8774dFTUdNv_12polars_arrow: argument 0"}
!5908 = distinct !{!5908, !5904, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5909 = distinct !DILocation(line: 314, column: 17, scope: !5883, inlinedAt: !5876)
!5910 = distinct !DILocation(line: 281, column: 31, scope: !5885, inlinedAt: !5909)
!5911 = distinct !DILocation(line: 166, column: 5, scope: !5843, inlinedAt: !5910)
!5912 = distinct !DILocation(line: 282, column: 31, scope: !5896, inlinedAt: !5909)
!5913 = distinct !DILocation(line: 284, column: 13, scope: !5899, inlinedAt: !5909)
!5914 = distinct !DILocation(line: 285, column: 13, scope: !5899, inlinedAt: !5909)
!5915 = distinct !DILocation(line: 290, column: 39, scope: !5899, inlinedAt: !5909)
!5916 = distinct !{!5916, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5917 = distinct !{!5917, !5916, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5918 = distinct !{!5918, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBc_3cmp10PartialOrd2ltE0Cs8774dFTUdNv_12polars_arrow"}
!5919 = distinct !{!5919, !5918, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBc_3cmp10PartialOrd2ltE0Cs8774dFTUdNv_12polars_arrow: argument 0"}
!5920 = distinct !{!5920, !5916, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5921 = distinct !DILocation(line: 315, column: 17, scope: !5883, inlinedAt: !5876)
!5922 = distinct !DILocation(line: 281, column: 31, scope: !5885, inlinedAt: !5921)
!5923 = distinct !DILocation(line: 166, column: 5, scope: !5843, inlinedAt: !5922)
!5924 = distinct !DILocation(line: 282, column: 31, scope: !5896, inlinedAt: !5921)
!5925 = distinct !DILocation(line: 284, column: 13, scope: !5899, inlinedAt: !5921)
!5926 = distinct !DILocation(line: 285, column: 13, scope: !5899, inlinedAt: !5921)
!5927 = distinct !DILexicalBlock(scope: !5867, file: !1638, line: 124, column: 5)
!5928 = distinct !DILexicalBlock(scope: !5855, file: !1638, line: 63, column: 9)
!5929 = distinct !DILocation(line: 68, column: 31, scope: !5928)
!5930 = distinct !DILocation(line: 1987, column: 20, scope: !233, inlinedAt: !5929)
!5931 = distinct !DILocation(line: 2196, column: 32, scope: !232, inlinedAt: !5930)
!5932 = distinct !DILocation(line: 2109, column: 40, scope: !231, inlinedAt: !5931)
!5933 = distinct !DILexicalBlock(scope: !5928, file: !1638, line: 68, column: 9)
!5934 = distinct !DILocation(line: 69, column: 36, scope: !5933)
!5935 = distinct !DILocation(line: 1987, column: 20, scope: !233, inlinedAt: !5934)
!5936 = distinct !DILocation(line: 2196, column: 32, scope: !232, inlinedAt: !5935)
!5937 = distinct !DILocation(line: 2109, column: 40, scope: !231, inlinedAt: !5936)
!5938 = distinct !DILexicalBlock(scope: !5933, file: !1638, line: 69, column: 9)
!5939 = distinct !DILexicalBlock(scope: !5938, file: !1638, line: 70, column: 9)
!5940 = distinct !{!5940, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5941 = distinct !{!5941, !5940, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5942 = distinct !{!5942, !5940, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5943 = distinct !DILocation(line: 51, column: 17, scope: !5856)
!5944 = distinct !DILocation(line: 166, column: 5, scope: !5843, inlinedAt: !5943)
!5945 = distinct !DISubprogram(name: "partition<usize, core::slice::sort::unstable::quicksort::quicksort::{closure_env#0}<usize, fn(&usize, &usize) -> bool>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECs8774dFTUdNv_12polars_arrow", scope: !1640, file: !1638, line: 93, type: !1403, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5946 = distinct !DILexicalBlock(scope: !5945, file: !1638, line: 97, column: 5)
!5947 = distinct !DILocation(line: 52, column: 30, scope: !5856)
!5948 = distinct !DILocation(line: 113, column: 38, scope: !5946, inlinedAt: !5947)
!5949 = distinct !DILocation(line: 1987, column: 20, scope: !233, inlinedAt: !5948)
!5950 = distinct !DILocation(line: 2196, column: 32, scope: !232, inlinedAt: !5949)
!5951 = distinct !DILocation(line: 2109, column: 40, scope: !231, inlinedAt: !5950)
!5952 = distinct !{!5952, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECs8774dFTUdNv_12polars_arrow"}
!5953 = distinct !{!5953, !5952, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECs8774dFTUdNv_12polars_arrow: argument 0"}
!5954 = distinct !DILexicalBlock(scope: !5946, file: !1638, line: 113, column: 5)
!5955 = distinct !DILexicalBlock(scope: !5954, file: !1638, line: 120, column: 5)
!5956 = distinct !{!5956, !5952, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECs8774dFTUdNv_12polars_arrow: argument 1"}
!5957 = distinct !{!5957, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECs8774dFTUdNv_12polars_arrow"}
!5958 = distinct !{!5958, !5957, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECs8774dFTUdNv_12polars_arrow: argument 0"}
!5959 = distinct !DISubprogram(name: "read<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readjECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 1682, type: !1408, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5960 = distinct !DISubprogram(name: "partition_lomuto_branchless_cyclic<usize, core::slice::sort::unstable::quicksort::quicksort::{closure_env#0}<usize, fn(&usize, &usize) -> bool>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECs8774dFTUdNv_12polars_arrow", scope: !1640, file: !1638, line: 249, type: !1408, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5961 = distinct !DILexicalBlock(scope: !5960, file: !1638, line: 257, column: 5)
!5962 = distinct !DILexicalBlock(scope: !5961, file: !1638, line: 258, column: 5)
!5963 = distinct !DILexicalBlock(scope: !5962, file: !1638, line: 280, column: 9)
!5964 = distinct !DILocation(line: 124, column: 18, scope: !5955, inlinedAt: !5947)
!5965 = distinct !DILocation(line: 298, column: 47, scope: !5963, inlinedAt: !5964)
!5966 = distinct !DISubprogram(name: "add<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOj3addCs8774dFTUdNv_12polars_arrow", scope: !1451, file: !1449, line: 927, type: !1408, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5967 = distinct !DILexicalBlock(scope: !5963, file: !1638, line: 298, column: 9)
!5968 = distinct !DILexicalBlock(scope: !5967, file: !1638, line: 300, column: 9)
!5969 = distinct !DILexicalBlock(scope: !5968, file: !1638, line: 309, column: 9)
!5970 = distinct !DILocation(line: 311, column: 33, scope: !5969, inlinedAt: !5964)
!5971 = distinct !DILexicalBlock(scope: !5969, file: !1638, line: 311, column: 9)
!5972 = distinct !DILexicalBlock(scope: !5971, file: !1638, line: 323, column: 9)
!5973 = distinct !DISubprogram(name: "{closure#0}<usize, core::slice::sort::unstable::quicksort::quicksort::{closure_env#0}<usize, fn(&usize, &usize) -> bool>>", linkageName: "_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0E0Cs8774dFTUdNv_12polars_arrow", scope: !1656, file: !1638, line: 280, type: !1403, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5974 = distinct !DILexicalBlock(scope: !5972, file: !1638, line: 325, column: 13)
!5975 = distinct !DILocation(line: 328, column: 13, scope: !5974, inlinedAt: !5964)
!5976 = distinct !{!5976, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5977 = distinct !{!5977, !5976, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5978 = distinct !{!5978, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0E0Cs8774dFTUdNv_12polars_arrow"}
!5979 = distinct !{!5979, !5978, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0E0Cs8774dFTUdNv_12polars_arrow: argument 0"}
!5980 = distinct !{!5980, !5976, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5981 = distinct !DISubprogram(name: "{closure#0}<usize, fn(&usize, &usize) -> bool>", linkageName: "_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0Cs8774dFTUdNv_12polars_arrow", scope: !1657, file: !1638, line: 52, type: !1403, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5982 = distinct !DILocation(line: 281, column: 31, scope: !5973, inlinedAt: !5975)
!5983 = distinct !DILocation(line: 52, column: 67, scope: !5981, inlinedAt: !5982)
!5984 = distinct !DILocation(line: 166, column: 5, scope: !5843, inlinedAt: !5983)
!5985 = distinct !DISubprogram(name: "add<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOj3addCs8774dFTUdNv_12polars_arrow", scope: !1451, file: !1449, line: 927, type: !1408, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5986 = distinct !DILexicalBlock(scope: !5973, file: !1638, line: 281, column: 13)
!5987 = distinct !DILocation(line: 282, column: 31, scope: !5986, inlinedAt: !5975)
!5988 = distinct !DISubprogram(name: "copy<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4copyjECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 628, type: !1408, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5989 = distinct !DILexicalBlock(scope: !5986, file: !1638, line: 282, column: 13)
!5990 = distinct !DILocation(line: 284, column: 13, scope: !5989, inlinedAt: !5975)
!5991 = distinct !DISubprogram(name: "copy_nonoverlapping<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingjECs8774dFTUdNv_12polars_arrow", scope: !1432, file: !1431, line: 531, type: !1408, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1402)
!5992 = distinct !DILocation(line: 285, column: 13, scope: !5989, inlinedAt: !5975)
!5993 = distinct !DILocation(line: 290, column: 39, scope: !5989, inlinedAt: !5975)
!5994 = distinct !{!5994, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!5995 = distinct !{!5995, !5994, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!5996 = distinct !{!5996, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0E0Cs8774dFTUdNv_12polars_arrow"}
!5997 = distinct !{!5997, !5996, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0E0Cs8774dFTUdNv_12polars_arrow: argument 0"}
!5998 = distinct !{!5998, !5994, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!5999 = distinct !DILocation(line: 314, column: 17, scope: !5971, inlinedAt: !5964)
!6000 = distinct !DILocation(line: 281, column: 31, scope: !5973, inlinedAt: !5999)
!6001 = distinct !DILocation(line: 52, column: 67, scope: !5981, inlinedAt: !6000)
!6002 = distinct !DILocation(line: 166, column: 5, scope: !5843, inlinedAt: !6001)
!6003 = distinct !DILocation(line: 282, column: 31, scope: !5986, inlinedAt: !5999)
!6004 = distinct !DILocation(line: 284, column: 13, scope: !5989, inlinedAt: !5999)
!6005 = distinct !DILocation(line: 285, column: 13, scope: !5989, inlinedAt: !5999)
!6006 = distinct !DILocation(line: 290, column: 39, scope: !5989, inlinedAt: !5999)
!6007 = distinct !{!6007, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!6008 = distinct !{!6008, !6007, !"_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!6009 = distinct !{!6009, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0E0Cs8774dFTUdNv_12polars_arrow"}
!6010 = distinct !{!6010, !6009, !"_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0E0Cs8774dFTUdNv_12polars_arrow: argument 0"}
end_hunk_1
