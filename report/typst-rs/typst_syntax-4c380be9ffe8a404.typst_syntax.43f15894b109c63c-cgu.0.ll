Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB4_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE4edit:bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringENtNtBG_5alloc6GlobalEEB1r_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #59
          to label %common.resume unwind label %bb.y, !noalias !6374

bb.y:                                             ; preds = %.body.thread.i.i
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !6374
  unreachable

_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE17clone_from_ref_inBL_.exit.i: ; preds = %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_.exit.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6386
  store i64 %.val3.i.i.i.i.i, ptr %i.do, align 8, !noalias !6387
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 24
  store ptr %.sroa.6.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6387
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 32
  store i64 %.val3.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !6387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6376
  %i.dp = atomicrmw sub ptr %.val21, i64 1 release, align 8, !noalias !6388
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %bb.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEEB1e_.exit.i

bb.z:                                             ; preds = %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE17clone_from_ref_inBL_.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE9drop_slowBL_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #57
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEEB1e_.exit.i

bb.aa:                                            ; preds = %bb.p
  store atomic i64 1, ptr %.val21 release, align 8, !noalias !6374
  br label %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit

bb.ab:                                            ; preds = %bb.p
  %i.dr = invoke { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 48)
          to label %.noexc.i unwind label %bb.ai, !noalias !6374 ; 2 uses

.noexc.i:                                         ; preds = %bb.ab
  %i.ds = extractvalue { i64, i64 } %i.dr, 0      ; 3 uses
  %i.dt = extractvalue { i64, i64 } %i.dr, 1      ; 3 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.noexc.i
  %i.dv = inttoptr i64 %i.ds to ptr
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i

bb.ad:                                            ; preds = %.noexc.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !6389
  %i.dw = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) %i.ds) #60, !noalias !6389
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i

_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.dv, %bb.ac ], [ %i.dw, %bb.ad ] ; 8 uses
  %i.dx = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %i.dx, label %bb.ae, label %bb.af, !prof !23

bb.ae:                                            ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %i.ds, i64 noundef %i.dt) #58
          to label %.noexc9.i unwind label %bb.ai, !noalias !6374

.noexc9.i:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBa_6string6StringENtNtBa_5alloc6GlobalE3new0B11_.exit.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !6389
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.dy, align 8, !noalias !6389
  %i.dz = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ea, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, i64 48, i1 false), !noalias !6374
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !6374
  %i.eb = icmp eq ptr %.val21, inttoptr (i64 -1 to ptr)
  br i1 %i.eb, label %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !6374
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.ah, label %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef 64, i64 noundef 8) #60, !noalias !6374
  br label %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit

bb.ai:                                            ; preds = %bb.ae, %bb.ab
  %i.ee = landingpad { ptr, i32 }
          cleanup
  store atomic i64 1, ptr %.val21 release, align 8, !noalias !6390
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEEB1e_.exit.i: ; preds = %bb.z, %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE17clone_from_ref_inBL_.exit.i
  store ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !6374
  br label %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit

_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit: ; preds = %bb.aa, %bb.af, %bb.ag, %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEEB1e_.exit.i
  %i.ef = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %bb.af ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.ag ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.ah ], [ %.val21, %bb.aa ], [ %.sroa.0.0.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEEB1e_.exit.i ] ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 40 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6392)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 56 ; 17 uses
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6393, !noundef !19 ; 9 uses
  %i.ek = icmp sgt i64 %i.ej, -1
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = icmp ugt i64 %2, %i.ej
  br i1 %i.el, label %bb.aj, label %bb.ak, !prof !23

bb.aj:                                            ; preds = %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @544) #62, !noalias !6394
  unreachable

bb.ak:                                            ; preds = %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit
  %i.em = icmp ugt i64 %1, %2
  br i1 %i.em, label %bb.al, label %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit.i, !prof !23

bb.al:                                            ; preds = %bb.ak
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %1, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @545) #62, !noalias !6394
  unreachable

_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %bb.ak
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 48 ; 9 uses
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !6391, !noalias !6393, !nonnull !19, !noundef !19 ; 7 uses
  %i.ep = icmp eq i64 %1, 0                       ; 2 uses
  br i1 %i.ep, label %.thread.i, label %bb.am

bb.am:                                            ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit.i
  %.not.i24 = icmp samesign ult i64 %1, %i.ej
  br i1 %.not.i24, label %bb.an, label %.split18.i

.thread.i:                                        ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.eq = icmp eq i64 %2, 0
  br i1 %i.eq, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i, label %.split18.i

bb.an:                                            ; preds = %bb.am
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %1
  %i.es = load i8, ptr %i.er, align 1, !noalias !6395, !noundef !19
  %i.et = icmp sgt i8 %i.es, -65
  br i1 %i.et, label %.split18.i, label %bb.ao, !prof !22

bb.ao:                                            ; preds = %bb.an
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 91 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62, !noalias !6396
  unreachable

.split18.i:                                       ; preds = %bb.an, %.thread.i, %bb.am
  %.not6.i = icmp samesign ult i64 %2, %i.ej
  br i1 %.not6.i, label %bb.bf, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %bb.bf, %.split18.i
  store i64 %1, ptr %i.ei, align 8, !alias.scope !6397, !noalias !6398
  %i.eu = sub nuw nsw i64 %i.ej, %2               ; 5 uses
  %.sroa.46.0.i = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 4 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.ap, label %bb.aq

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i: ; preds = %.thread.i
  store i64 0, ptr %i.ei, align 8, !alias.scope !6399, !noalias !6400
  %.sroa.46.077.i = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 2 uses
  %i.ew = icmp eq i64 %i.ej, 0
  br i1 %i.ew, label %bb.ap, label %.loopexit.i.i.i

bb.ap:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %.sroa.46.084.i = phi ptr [ %.sroa.46.077.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ], [ %.sroa.46.0.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ] ; 2 uses
  %.sroa.46.084.i174 = ptrtoaddr ptr %.sroa.46.084.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6402)
  %i.ex = load i64, ptr %i.eh, align 8, !range !33, !alias.scope !6403, !noalias !6404, !noundef !19
  %i.ey = sub nsw i64 %i.ex, %1
  %i.ez = icmp ugt i64 %4, %i.ey
  br i1 %i.ez, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, !prof !23

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i: ; preds = %bb.ap
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh, i64 noundef %1, i64 noundef %4, i64 noundef 1, i64 noundef 1), !noalias !6405
  %.pre.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !6406, !noalias !6404
  %.pre51.i = load ptr, ptr %i.en, align 8, !alias.scope !6406, !noalias !6404
  br label %iter.check

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i: ; preds = %bb.ap
  %.not9.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %4, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i
  %i.fa = phi i64 [ %.pre.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i ], [ %1, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i ] ; 5 uses
  %i.fb = phi ptr [ %.pre51.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i ], [ %i.eo, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i ] ; 3 uses
  %i.fc = sub i64 %.sroa.46.084.i174, %i.a        ; 7 uses
  %min.iters.check176 = icmp ult i64 %i.fc, 8
  br i1 %min.iters.check176, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check177 = icmp ult i64 %i.fc, 32
  br i1 %min.iters.check177, label %vec.epilog.ph, label %vector.ph178

vector.ph178:                                     ; preds = %vector.main.loop.iter.check
  %i.fd = and i64 %i.fc, 24
  %n.vec179 = and i64 %i.fc, -32                  ; 5 uses
  %i.fe = add i64 %i.fa, %n.vec179                ; 2 uses
  %i.ff = getelementptr i8, ptr %3, i64 %n.vec179
  %i.fg = getelementptr i8, ptr %i.fb, i64 %i.fa
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next185, %vector.body180 ] ; 3 uses
  %next.gep182 = getelementptr i8, ptr %3, i64 %index181 ; 2 uses
  %i.fh = getelementptr i8, ptr %next.gep182, i64 16
  %wide.load183 = load <16 x i8>, ptr %next.gep182, align 1, !alias.scope !6392, !noalias !6407
  %wide.load184 = load <16 x i8>, ptr %i.fh, align 1, !alias.scope !6392, !noalias !6407
  %i.fi = getelementptr i8, ptr %i.fg, i64 %index181 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <16 x i8> %wide.load183, ptr %i.fi, align 1, !noalias !6408
  store <16 x i8> %wide.load184, ptr %i.fj, align 1, !noalias !6408
  %index.next185 = add nuw i64 %index181, 32      ; 2 uses
  %i.fk = icmp eq i64 %index.next185, %n.vec179
  br i1 %i.fk, label %middle.block186, label %vector.body180, !llvm.loop !6295

middle.block186:                                  ; preds = %vector.body180
  %cmp.n = icmp eq i64 %i.fc, %n.vec179
  br i1 %cmp.n, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block186
  %min.epilog.iters.check = icmp eq i64 %i.fd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !6410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec179, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec189 = and i64 %i.fc, -8                   ; 4 uses
  %i.fl = add i64 %i.fa, %n.vec189                ; 2 uses
  %i.fm = getelementptr i8, ptr %3, i64 %n.vec189
  %i.fn = getelementptr i8, ptr %i.fb, i64 %i.fa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index190 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next193, %vec.epilog.vector.body ] ; 3 uses
  %next.gep191 = getelementptr i8, ptr %3, i64 %index190
  %wide.load192 = load <8 x i8>, ptr %next.gep191, align 1, !alias.scope !6392, !noalias !6407
  %i.fo = getelementptr i8, ptr %i.fn, i64 %index190
  store <8 x i8> %wide.load192, ptr %i.fo, align 1, !noalias !6408
  %index.next193 = add nuw i64 %index190, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next193, %n.vec189
  br i1 %i.fp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6296

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n194 = icmp eq i64 %i.fc, %n.vec189
  br i1 %cmp.n194, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.fa, %iter.check ], [ %i.fe, %vec.epilog.iter.check ], [ %i.fl, %vec.epilog.middle.block ]
  %.ph197 = phi ptr [ %3, %iter.check ], [ %i.ff, %vec.epilog.iter.check ], [ %i.fm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fq = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.fr = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph197, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1 ; 2 uses
  %i.ft = load i8, ptr %i.fr, align 1, !alias.scope !6392, !noalias !6407, !noundef !19
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fq
  store i8 %i.ft, ptr %i.fu, align 1, !noalias !6408
  %i.fv = add i64 %i.fq, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fs, %.sroa.46.084.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !6297

bb.aq:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %.not6.i.i.i.i = icmp samesign ult i64 %1, %2
  br i1 %.not6.i.i.i.i, label %.lr.ph.i.i.i.preheader.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.aq
  %.not.not.i.i.i29.i = icmp samesign eq i64 %4, 0
  br i1 %.not.not.i.i.i29.i, label %.loopexit.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.preheader.i
  %i.fw = xor i64 %1, -1
  %i.fx = add i64 %2, %i.fw
  %i.fy = add i64 %4, -1
  %i.fz = tail call i64 @llvm.umin.i64(i64 %i.fx, i64 %i.fy)
  %i.ga = add i64 %i.fz, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ga, 33
  br i1 %min.iters.check, label %.lr.ph.i.preheader208, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.gb = and i64 %i.ga, 31                       ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = select i1 %i.gc, i64 32, i64 %i.gb
  %n.vec = sub i64 %i.ga, %i.gd                   ; 3 uses
  %i.ge = getelementptr i8, ptr %3, i64 %n.vec
  %i.gf = add i64 %1, %n.vec
  %i.gg = getelementptr i8, ptr %i.eo, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.gh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !6392, !noalias !6411
  %wide.load144 = load <16 x i8>, ptr %i.gh, align 1, !alias.scope !6392, !noalias !6411
  %i.gi = getelementptr i8, ptr %i.gg, i64 %index ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store <16 x i8> %wide.load, ptr %i.gi, align 1, !noalias !6412
  store <16 x i8> %wide.load144, ptr %i.gj, align 1, !noalias !6412
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %.lr.ph.i.preheader208, label %vector.body, !llvm.loop !6302

.lr.ph.i.preheader208:                            ; preds = %vector.body, %.lr.ph.i.preheader
  %.ph209 = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.ge, %vector.body ]
  %.sroa.01.03.i.i.i30.i.ph = phi i64 [ %1, %.lr.ph.i.preheader ], [ %i.gf, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i.i.i.i25:                                 ; preds = %.lr.ph.i
  %.not.not.i.i.i.i = icmp eq ptr %i.gm, %.sroa.46.0.i
  br i1 %.not.not.i.i.i.i, label %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i, label %.lr.ph.i, !llvm.loop !6303

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader208, %.lr.ph.i.i.i.i25
  %i.gl = phi ptr [ %i.gm, %.lr.ph.i.i.i.i25 ], [ %.ph209, %.lr.ph.i.preheader208 ] ; 2 uses
  %.sroa.01.03.i.i.i30.i = phi i64 [ %i.go, %.lr.ph.i.i.i.i25 ], [ %.sroa.01.03.i.i.i30.i.ph, %.lr.ph.i.preheader208 ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1 ; 3 uses
  %i.gn = load i8, ptr %i.gl, align 1, !alias.scope !6392, !noalias !6411, !noundef !19
  %i.go = add i64 %.sroa.01.03.i.i.i30.i, 1       ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.01.03.i.i.i30.i
  store i8 %i.gn, ptr %i.gp, align 1, !noalias !6412
  %exitcond.not.i.i.i.i = icmp eq i64 %i.go, %2
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.loopexit.i, label %.lr.ph.i.i.i.i25

.loopexit.i.i.loopexit.i:                         ; preds = %.lr.ph.i
  store i64 %2, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6413
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.loopexit.i, %bb.aq, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i
  %.sroa.33.07890.i = phi i64 [ %i.eu, %bb.aq ], [ %i.eu, %.loopexit.i.i.loopexit.i ], [ %i.ej, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 9 uses
  %.sroa.46.08389.i = phi ptr [ %.sroa.46.0.i, %bb.aq ], [ %.sroa.46.0.i, %.loopexit.i.i.loopexit.i ], [ %.sroa.46.077.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 5 uses
  %i.gq = phi i64 [ %1, %bb.aq ], [ %2, %.loopexit.i.i.loopexit.i ], [ 0, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 2 uses
  %.val.i.i.i = phi ptr [ %3, %bb.aq ], [ %i.gm, %.loopexit.i.i.loopexit.i ], [ %3, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 7 uses
  %i.gr = ptrtoint ptr %.sroa.46.08389.i to i64   ; 5 uses
  %i.gs = ptrtoint ptr %.val.i.i.i to i64         ; 6 uses
  %i.gt = sub nuw i64 %i.gr, %i.gs                ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.46.08389.i, %.val.i.i.i
  br i1 %.not.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i, label %bb.as

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i: ; preds = %.lr.ph36.i
  store i64 %i.hh, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6414
  %.pre.i.i.i = ptrtoint ptr %i.if to i64         ; 2 uses
  %.pre11.i.i = sub nuw i64 %i.gr, %.pre.i.i.i
  br label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i: ; preds = %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.gt, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %.pre11.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ] ; 3 uses
  %i.gu = phi i64 [ %.promoted33.i, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %i.hh, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.gs, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %.pre.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ]
  %.val.i.i.i33.i.i.i = phi ptr [ %.val.i.i.i, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %i.if, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ]
  %.not.i.i.i.i.i.i.i = icmp slt i64 %.pre-phi.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ar, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i, !prof !6415

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i: ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i, %.loopexit.i.i.i
  %i.gv = phi ptr [ %i.hf, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %i.eo, %.loopexit.i.i.i ]
  %.sroa.26.1.i = phi i64 [ %i.hh, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %2, %.loopexit.i.i.i ] ; 8 uses
  %.val.i.i.i33.i41.i.i = phi ptr [ %.val.i.i.i33.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %.sroa.46.08389.i, %.loopexit.i.i.i ] ; 2 uses
  %.pre-phi.i40.i.i = phi i64 [ %.pre-phi.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %i.gs, %.loopexit.i.i.i ]
  %i.gw = phi i64 [ %i.gu, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %i.gq, %.loopexit.i.i.i ] ; 2 uses
  %.pre-phi38.i.i = phi i64 [ %.pre-phi.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ 0, %.loopexit.i.i.i ] ; 11 uses
  %i.gx = icmp eq ptr %.sroa.46.08389.i, %.val.i.i.i33.i41.i.i
  br i1 %i.gx, label %.loopexit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !6416
  %i.gy = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.pre-phi38.i.i, i64 noundef range(i64 1, 9) 1) #60, !noalias !6416 ; 10 uses
  %i.gz = ptrtoaddr ptr %i.gy to i64
  %i.ha = icmp eq ptr %i.gy, null
  br i1 %i.ha, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i
  %.sroa.26.3.i = phi i64 [ %.sroa.26.1.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ %i.hh, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ]
  %.pre-phi39.i.i = phi i64 [ %.pre-phi38.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ %.pre-phi.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.pre-phi39.i.i) #58
          to label %.noexc1.i.i unwind label %.split.i, !noalias !6417

.noexc1.i.i:                                      ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %.loopexit.i.i.i
  %i.hb = add nuw i64 %.sroa.33.07890.i, %2       ; 2 uses
  %i.hc = load i64, ptr %i.eh, align 8, !range !33, !alias.scope !6391, !noalias !6418, !noundef !19
  %i.hd = sub i64 %i.hc, %i.hb
  %i.he = icmp ugt i64 %i.gt, %i.hd
  br i1 %i.he, label %bb.at, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, !prof !23

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh, i64 noundef %i.hb, i64 noundef %i.gt, i64 noundef 1, i64 noundef 1)
          to label %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i unwind label %.split.i, !noalias !6419

._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i: ; preds = %bb.at
  %.pre.i = load ptr, ptr %i.en, align 8, !alias.scope !6391, !noalias !6418
  %.pre47.i = load i64, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6414
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i, %bb.as
  %.promoted33.i = phi i64 [ %.pre47.i, %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i ], [ %i.gq, %bb.as ] ; 8 uses
  %i.hf = phi ptr [ %.pre.i, %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i ], [ %i.eo, %bb.as ] ; 6 uses
  %i.hg = ptrtoaddr ptr %i.hf to i64
  %i.hh = add i64 %i.gt, %2                       ; 8 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hj, ptr nonnull align 1 %i.hi, i64 %.sroa.33.07890.i, i1 false), !noalias !6420
end_hunk_0
