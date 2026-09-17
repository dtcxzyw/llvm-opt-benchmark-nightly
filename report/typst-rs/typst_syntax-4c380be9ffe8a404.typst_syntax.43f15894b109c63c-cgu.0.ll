Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB4_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE4edit:bb.a

common.resume:                                    ; preds = %.body.thread.i.i, %bb.ai, %bb.bb
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i93.i, %bb.bb ], [ %i.ee, %bb.ai ], [ %eh.lpad-body7.i.i, %.body.thread.i.i ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i.i:                                 ; preds = %bb.x, %bb.w, %.body.thread8.i.i
  %eh.lpad-body7.i.i = phi { ptr, i32 } [ %i.dk, %.body.thread8.i.i ], [ %i.dm, %bb.x ], [ %i.dm, %bb.w ]
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
  %n.vec179 = and i64 %i.fc, -32                  ; 5 uses
  %i.fd = getelementptr i8, ptr %i.fb, i64 %i.fa
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next185, %vector.body180 ] ; 3 uses
  %next.gep182 = getelementptr i8, ptr %3, i64 %index181 ; 2 uses
  %i.fe = getelementptr i8, ptr %next.gep182, i64 16
  %wide.load183 = load <16 x i8>, ptr %next.gep182, align 1, !alias.scope !6392, !noalias !6407
  %wide.load184 = load <16 x i8>, ptr %i.fe, align 1, !alias.scope !6392, !noalias !6407
  %i.ff = getelementptr i8, ptr %i.fd, i64 %index181 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <16 x i8> %wide.load183, ptr %i.ff, align 1, !noalias !6408
  store <16 x i8> %wide.load184, ptr %i.fg, align 1, !noalias !6408
  %index.next185 = add nuw i64 %index181, 32      ; 2 uses
  %i.fh = icmp eq i64 %index.next185, %n.vec179
  br i1 %i.fh, label %middle.block186, label %vector.body180, !llvm.loop !6295

middle.block186:                                  ; preds = %vector.body180
  %6 = and i64 %i.fc, 24
  %7 = add i64 %i.fa, %n.vec179                   ; 2 uses
  %8 = getelementptr i8, ptr %3, i64 %n.vec179
  %cmp.n = icmp eq i64 %i.fc, %n.vec179
  br i1 %cmp.n, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block186
  %min.epilog.iters.check = icmp eq i64 %6, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !6410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec179, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec189 = and i64 %i.fc, -8                   ; 4 uses
  %i.fi = getelementptr i8, ptr %i.fb, i64 %i.fa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index190 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next193, %vec.epilog.vector.body ] ; 3 uses
  %next.gep191 = getelementptr i8, ptr %3, i64 %index190
  %wide.load192 = load <8 x i8>, ptr %next.gep191, align 1, !alias.scope !6392, !noalias !6407
  %i.fj = getelementptr i8, ptr %i.fi, i64 %index190
  store <8 x i8> %wide.load192, ptr %i.fj, align 1, !noalias !6408
  %index.next193 = add nuw i64 %index190, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next193, %n.vec189
  br i1 %i.fk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6296

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %9 = add i64 %i.fa, %n.vec189                   ; 2 uses
  %10 = getelementptr i8, ptr %3, i64 %n.vec189
  %cmp.n194 = icmp eq i64 %i.fc, %n.vec189
  br i1 %cmp.n194, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.fa, %iter.check ], [ %7, %vec.epilog.iter.check ], [ %9, %vec.epilog.middle.block ]
  %.ph197 = phi ptr [ %3, %iter.check ], [ %8, %vec.epilog.iter.check ], [ %10, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fl = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.fm = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph197, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1 ; 2 uses
  %i.fo = load i8, ptr %i.fm, align 1, !alias.scope !6392, !noalias !6407, !noundef !19
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fl
  store i8 %i.fo, ptr %i.fp, align 1, !noalias !6408
  %i.fq = add i64 %i.fl, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fn, %.sroa.46.084.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !6297

bb.aq:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %.not6.i.i.i.i = icmp samesign ult i64 %1, %2
  br i1 %.not6.i.i.i.i, label %.lr.ph.i.i.i.preheader.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.aq
  %.not.not.i.i.i29.i = icmp samesign eq i64 %4, 0
  br i1 %.not.not.i.i.i29.i, label %.loopexit.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.preheader.i
  %i.fr = xor i64 %1, -1
  %i.fs = add i64 %2, %i.fr
  %i.ft = add i64 %4, -1
  %i.fu = tail call i64 @llvm.umin.i64(i64 %i.fs, i64 %i.ft)
  %i.fv = add i64 %i.fu, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.fv, 33
  br i1 %min.iters.check, label %.lr.ph.i.preheader208, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.fw = and i64 %i.fv, 31                       ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 0
  %i.fy = select i1 %i.fx, i64 32, i64 %i.fw
  %n.vec = sub i64 %i.fv, %i.fy                   ; 3 uses
  %i.fz = getelementptr i8, ptr %i.eo, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.ga = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !6392, !noalias !6411
  %wide.load144 = load <16 x i8>, ptr %i.ga, align 1, !alias.scope !6392, !noalias !6411
  %i.gb = getelementptr i8, ptr %i.fz, i64 %index ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <16 x i8> %wide.load, ptr %i.gb, align 1, !noalias !6412
  store <16 x i8> %wide.load144, ptr %i.gc, align 1, !noalias !6412
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gd = icmp eq i64 %index.next, %n.vec
  br i1 %i.gd, label %.lr.ph.i.preheader208.loopexit, label %vector.body, !llvm.loop !6302

.lr.ph.i.preheader208.loopexit:                   ; preds = %vector.body
  %11 = getelementptr i8, ptr %3, i64 %n.vec
  %12 = add i64 %1, %n.vec
  br label %.lr.ph.i.preheader208

.lr.ph.i.preheader208:                            ; preds = %.lr.ph.i.preheader208.loopexit, %.lr.ph.i.preheader
  %.ph209 = phi ptr [ %3, %.lr.ph.i.preheader ], [ %11, %.lr.ph.i.preheader208.loopexit ]
  %.sroa.01.03.i.i.i30.i.ph = phi i64 [ %1, %.lr.ph.i.preheader ], [ %12, %.lr.ph.i.preheader208.loopexit ]
  br label %.lr.ph.i

.lr.ph.i.i.i.i25:                                 ; preds = %.lr.ph.i
  %.not.not.i.i.i.i = icmp eq ptr %i.gf, %.sroa.46.0.i
  br i1 %.not.not.i.i.i.i, label %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i, label %.lr.ph.i, !llvm.loop !6303

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader208, %.lr.ph.i.i.i.i25
  %i.ge = phi ptr [ %i.gf, %.lr.ph.i.i.i.i25 ], [ %.ph209, %.lr.ph.i.preheader208 ] ; 2 uses
  %.sroa.01.03.i.i.i30.i = phi i64 [ %i.gh, %.lr.ph.i.i.i.i25 ], [ %.sroa.01.03.i.i.i30.i.ph, %.lr.ph.i.preheader208 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 3 uses
  %i.gg = load i8, ptr %i.ge, align 1, !alias.scope !6392, !noalias !6411, !noundef !19
  %i.gh = add i64 %.sroa.01.03.i.i.i30.i, 1       ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.01.03.i.i.i30.i
  store i8 %i.gg, ptr %i.gi, align 1, !noalias !6412
  %exitcond.not.i.i.i.i = icmp eq i64 %i.gh, %2
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.loopexit.i, label %.lr.ph.i.i.i.i25

.loopexit.i.i.loopexit.i:                         ; preds = %.lr.ph.i
  store i64 %2, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6413
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.loopexit.i, %bb.aq, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i
  %.sroa.33.07890.i = phi i64 [ %i.eu, %bb.aq ], [ %i.eu, %.loopexit.i.i.loopexit.i ], [ %i.ej, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 9 uses
  %.sroa.46.08389.i = phi ptr [ %.sroa.46.0.i, %bb.aq ], [ %.sroa.46.0.i, %.loopexit.i.i.loopexit.i ], [ %.sroa.46.077.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 5 uses
  %i.gj = phi i64 [ %1, %bb.aq ], [ %2, %.loopexit.i.i.loopexit.i ], [ 0, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 2 uses
  %.val.i.i.i = phi ptr [ %3, %bb.aq ], [ %i.gf, %.loopexit.i.i.loopexit.i ], [ %3, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 7 uses
  %i.gk = ptrtoint ptr %.sroa.46.08389.i to i64   ; 5 uses
  %i.gl = ptrtoint ptr %.val.i.i.i to i64         ; 6 uses
  %i.gm = sub nuw i64 %i.gk, %i.gl                ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.46.08389.i, %.val.i.i.i
  br i1 %.not.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i, label %bb.as

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i: ; preds = %.lr.ph36.i
  store i64 %i.ha, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6414
  %.pre.i.i.i = ptrtoint ptr %i.hw to i64         ; 2 uses
  %.pre11.i.i = sub nuw i64 %i.gk, %.pre.i.i.i
  br label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i: ; preds = %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.gm, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %.pre11.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ] ; 3 uses
  %i.gn = phi i64 [ %.promoted33.i, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %i.ha, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.gl, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %.pre.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ]
  %.val.i.i.i33.i.i.i = phi ptr [ %.val.i.i.i, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %i.hw, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ]
  %.not.i.i.i.i.i.i.i = icmp slt i64 %.pre-phi.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ar, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i, !prof !6415

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i: ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i, %.loopexit.i.i.i
  %i.go = phi ptr [ %i.gy, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %i.eo, %.loopexit.i.i.i ]
  %.sroa.26.1.i = phi i64 [ %i.ha, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %2, %.loopexit.i.i.i ] ; 8 uses
  %.val.i.i.i33.i41.i.i = phi ptr [ %.val.i.i.i33.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %.sroa.46.08389.i, %.loopexit.i.i.i ] ; 2 uses
  %.pre-phi.i40.i.i = phi i64 [ %.pre-phi.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %i.gl, %.loopexit.i.i.i ]
  %i.gp = phi i64 [ %i.gn, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %i.gj, %.loopexit.i.i.i ] ; 2 uses
  %.pre-phi38.i.i = phi i64 [ %.pre-phi.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ 0, %.loopexit.i.i.i ] ; 11 uses
  %i.gq = icmp eq ptr %.sroa.46.08389.i, %.val.i.i.i33.i41.i.i
  br i1 %i.gq, label %.loopexit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !6416
  %i.gr = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.pre-phi38.i.i, i64 noundef range(i64 1, 9) 1) #60, !noalias !6416 ; 10 uses
  %i.gs = ptrtoaddr ptr %i.gr to i64
  %i.gt = icmp eq ptr %i.gr, null
  br i1 %i.gt, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i
  %.sroa.26.3.i = phi i64 [ %.sroa.26.1.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ %i.ha, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ]
  %.pre-phi39.i.i = phi i64 [ %.pre-phi38.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ %.pre-phi.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.pre-phi39.i.i) #58
          to label %.noexc1.i.i unwind label %.split.i, !noalias !6417

.noexc1.i.i:                                      ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %.loopexit.i.i.i
  %i.gu = add nuw i64 %.sroa.33.07890.i, %2       ; 2 uses
  %i.gv = load i64, ptr %i.eh, align 8, !range !33, !alias.scope !6391, !noalias !6418, !noundef !19
  %i.gw = sub i64 %i.gv, %i.gu
  %i.gx = icmp ugt i64 %i.gm, %i.gw
  br i1 %i.gx, label %bb.at, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, !prof !23

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh, i64 noundef %i.gu, i64 noundef %i.gm, i64 noundef 1, i64 noundef 1)
          to label %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i unwind label %.split.i, !noalias !6419

._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i: ; preds = %bb.at
  %.pre.i = load ptr, ptr %i.en, align 8, !alias.scope !6391, !noalias !6418
  %.pre47.i = load i64, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6414
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i, %bb.as
  %.promoted33.i = phi i64 [ %.pre47.i, %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i ], [ %i.gj, %bb.as ] ; 8 uses
  %i.gy = phi ptr [ %.pre.i, %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i ], [ %i.eo, %bb.as ] ; 6 uses
  %i.gz = ptrtoaddr ptr %i.gy to i64
  %i.ha = add i64 %i.gm, %2                       ; 8 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %2
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ha
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hc, ptr nonnull align 1 %i.hb, i64 %.sroa.33.07890.i, i1 false), !noalias !6420
  %.not6.i35.i.i.i = icmp ult i64 %.promoted33.i, %i.ha
  br i1 %.not6.i35.i.i.i, label %.lr.ph36.i.preheader, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i

.lr.ph36.i.preheader:                             ; preds = %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %i.hd = add i64 %2, %i.gk
  %i.he = xor i64 %.promoted33.i, -1
  %i.hf = add i64 %i.hd, %i.he
  %i.hg = sub i64 %i.hf, %i.gl
  %i.hh = xor i64 %i.gl, -1
  %i.hi = add i64 %i.hh, %i.gk
  %i.hj = tail call i64 @llvm.umin.i64(i64 %i.hg, i64 %i.hi)
  %i.hk = add i64 %i.hj, 1                        ; 3 uses
  %min.iters.check147 = icmp ult i64 %i.hk, 33
  br i1 %min.iters.check147, label %.lr.ph36.i.preheader202, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph36.i.preheader
  %i.hl = add i64 %.promoted33.i, %i.gz
  %i.hm = sub i64 %i.gl, %i.hl
  %diff.check = icmp ugt i64 %i.hm, -32
  br i1 %diff.check, label %.lr.ph36.i.preheader202, label %vector.ph148

vector.ph148:                                     ; preds = %vector.memcheck
  %i.hn = and i64 %i.hk, 31                       ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 0
  %i.hp = select i1 %i.ho, i64 32, i64 %i.hn
  %n.vec149 = sub i64 %i.hk, %i.hp                ; 3 uses
  %i.hq = getelementptr i8, ptr %i.gy, i64 %.promoted33.i
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph148
  %index151 = phi i64 [ 0, %vector.ph148 ], [ %index.next155, %vector.body150 ] ; 3 uses
  %next.gep152 = getelementptr i8, ptr %.val.i.i.i, i64 %index151 ; 2 uses
  %i.hr = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load153 = load <16 x i8>, ptr %next.gep152, align 1, !alias.scope !6392, !noalias !6421
  %wide.load154 = load <16 x i8>, ptr %i.hr, align 1, !alias.scope !6392, !noalias !6421
  %i.hs = getelementptr i8, ptr %i.hq, i64 %index151 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store <16 x i8> %wide.load153, ptr %i.hs, align 1, !noalias !6422
  store <16 x i8> %wide.load154, ptr %i.ht, align 1, !noalias !6422
  %index.next155 = add nuw i64 %index151, 32      ; 2 uses
  %i.hu = icmp eq i64 %index.next155, %n.vec149
  br i1 %i.hu, label %.lr.ph36.i.preheader202.loopexit, label %vector.body150, !llvm.loop !6318

.lr.ph36.i.preheader202.loopexit:                 ; preds = %vector.body150
  %13 = getelementptr i8, ptr %.val.i.i.i, i64 %n.vec149
  %14 = add i64 %.promoted33.i, %n.vec149
  br label %.lr.ph36.i.preheader202

.lr.ph36.i.preheader202:                          ; preds = %.lr.ph36.i.preheader202.loopexit, %vector.memcheck, %.lr.ph36.i.preheader
  %.ph203 = phi ptr [ %.val.i.i.i, %vector.memcheck ], [ %.val.i.i.i, %.lr.ph36.i.preheader ], [ %13, %.lr.ph36.i.preheader202.loopexit ]
  %.sroa.01.03.i39.i.i35.i.ph = phi i64 [ %.promoted33.i, %vector.memcheck ], [ %.promoted33.i, %.lr.ph36.i.preheader ], [ %14, %.lr.ph36.i.preheader202.loopexit ]
  br label %.lr.ph36.i

.lr.ph.i37.i.i.i:                                 ; preds = %.lr.ph36.i
  %.not.not.i40.i.i.i = icmp eq ptr %i.hw, %.sroa.46.08389.i
  br i1 %.not.not.i40.i.i.i, label %.loopexit.i.i.loopexit, label %.lr.ph36.i, !llvm.loop !6319

.lr.ph36.i:                                       ; preds = %.lr.ph36.i.preheader202, %.lr.ph.i37.i.i.i
  %i.hv = phi ptr [ %i.hw, %.lr.ph.i37.i.i.i ], [ %.ph203, %.lr.ph36.i.preheader202 ] ; 2 uses
  %.sroa.01.03.i39.i.i35.i = phi i64 [ %i.hy, %.lr.ph.i37.i.i.i ], [ %.sroa.01.03.i39.i.i35.i.ph, %.lr.ph36.i.preheader202 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1 ; 4 uses
  %i.hx = load i8, ptr %i.hv, align 1, !alias.scope !6392, !noalias !6421, !noundef !19
  %i.hy = add i64 %.sroa.01.03.i39.i.i35.i, 1     ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.sroa.01.03.i39.i.i35.i
  store i8 %i.hx, ptr %i.hz, align 1, !noalias !6422
  %exitcond.not.i41.i.i.i = icmp eq i64 %i.hy, %i.ha
  br i1 %exitcond.not.i41.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i, label %.lr.ph.i37.i.i.i

bb.au:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gr, ptr align 1 %.val.i.i.i33.i41.i.i, i64 %.pre-phi38.i.i, i1 false), !noalias !6423
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.pre-phi38.i.i
  %.not16.i.i.i = icmp eq i64 %.pre-phi.i40.i.i, %i.gk
  br i1 %.not16.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i, label %bb.av

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i: ; preds = %bb.ay, %.lr.ph.i47.i.i.i, %bb.ax, %bb.au
  %.pre.i.i = phi i64 [ %i.gp, %bb.au ], [ %i.il, %bb.ax ], [ %i.jf, %.lr.ph.i47.i.i.i ], [ %i.ii, %bb.ay ]
  %i.ib = phi i64 [ %.sroa.26.1.i, %bb.au ], [ %i.ii, %bb.ax ], [ %i.ii, %.lr.ph.i47.i.i.i ], [ %i.ii, %bb.ay ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gr, i64 noundef %.pre-phi38.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #60, !noalias !6424
  br label %.loopexit.i.i

bb.av:                                            ; preds = %bb.au
  %i.ic = add i64 %.sroa.26.1.i, %.sroa.33.07890.i ; 2 uses
  %i.id = load i64, ptr %i.eh, align 8, !range !33, !alias.scope !6391, !noalias !6425, !noundef !19
  %i.ie = sub i64 %i.id, %i.ic
  %i.if = icmp ugt i64 %.pre-phi38.i.i, %i.ie
  br i1 %i.if, label %bb.aw, label %bb.ax, !prof !23

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh, i64 noundef %i.ic, i64 noundef %.pre-phi38.i.i, i64 noundef 1, i64 noundef 1)
          to label %._crit_edge.i unwind label %bb.az, !noalias !6426

._crit_edge.i:                                    ; preds = %bb.aw
  %.pre48.i = load ptr, ptr %i.en, align 8, !alias.scope !6391, !noalias !6425
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i, %bb.av
  %i.ig = phi ptr [ %.pre48.i, %._crit_edge.i ], [ %i.go, %bb.av ] ; 5 uses
  %i.ih = ptrtoaddr ptr %i.ig to i64
  %i.ii = add i64 %.pre-phi38.i.i, %.sroa.26.1.i  ; 7 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.sroa.26.1.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ii
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ik, ptr nonnull align 1 %i.ij, i64 %.sroa.33.07890.i, i1 false), !noalias !6427
  %i.il = load i64, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6428, !noundef !19 ; 9 uses
  %.not6.i45.i.i.i = icmp ult i64 %i.il, %i.ii
  br i1 %.not6.i45.i.i.i, label %.lr.ph.i47.i.i.i.preheader, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i

.lr.ph.i47.i.i.i.preheader:                       ; preds = %bb.ax
  %i.im = add i64 %.pre-phi38.i.i, %.sroa.26.1.i
  %i.in = xor i64 %i.il, -1
  %i.io = add i64 %i.im, %i.in
  %i.ip = tail call i64 @llvm.umin.i64(i64 %.pre-phi38.i.i, i64 %i.io) ; 2 uses
  %i.iq = add nuw i64 %i.ip, 1                    ; 2 uses
  %min.iters.check162 = icmp samesign ult i64 %i.ip, 8
  br i1 %min.iters.check162, label %.lr.ph.i47.i.i.i.preheader198, label %vector.memcheck159

vector.memcheck159:                               ; preds = %.lr.ph.i47.i.i.i.preheader
  %i.ir = add i64 %i.il, %i.ih
  %i.is = sub i64 %i.gs, %i.ir
  %diff.check160 = icmp ugt i64 %i.is, -4
  br i1 %diff.check160, label %.lr.ph.i47.i.i.i.preheader198, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck159
  %i.it = and i64 %i.iq, 3                        ; 2 uses
  %i.iu = icmp eq i64 %i.it, 0
  %i.iv = select i1 %i.iu, i64 4, i64 %i.it
  %n.vec164 = sub i64 %i.iq, %i.iv                ; 3 uses
  %i.iw = add i64 %i.il, 1
  %i.ix = getelementptr i8, ptr %i.ig, i64 %i.il
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next170, %vector.body165 ] ; 3 uses
  %i.iy = phi i64 [ %i.iw, %vector.ph163 ], [ %i.jc, %vector.body165 ] ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.gr, i64 %index166 ; 2 uses
  %i.iz = getelementptr i8, ptr %next.gep167, i64 2
  %wide.load168 = load <2 x i8>, ptr %next.gep167, align 1, !noalias !6429
  %wide.load169 = load <2 x i8>, ptr %i.iz, align 1, !noalias !6429
  %i.ja = getelementptr i8, ptr %i.ix, i64 %index166 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  store <2 x i8> %wide.load168, ptr %i.ja, align 1, !noalias !6430
  store <2 x i8> %wide.load169, ptr %i.jb, align 1, !noalias !6430
  %index.next170 = add nuw i64 %index166, 4       ; 2 uses
  %i.jc = add i64 %i.iy, 4
  %i.jd = icmp eq i64 %index.next170, %n.vec164
  br i1 %i.jd, label %middle.block171, label %vector.body165, !llvm.loop !6346

middle.block171:                                  ; preds = %vector.body165
  %15 = add i64 %i.il, %n.vec164
  %16 = getelementptr i8, ptr %i.gr, i64 %n.vec164
  %i.je = add i64 %i.iy, 3
  store i64 %i.je, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6428
  br label %.lr.ph.i47.i.i.i.preheader198

.lr.ph.i47.i.i.i.preheader198:                    ; preds = %vector.memcheck159, %.lr.ph.i47.i.i.i.preheader, %middle.block171
  %.ph199 = phi i64 [ %i.il, %vector.memcheck159 ], [ %i.il, %.lr.ph.i47.i.i.i.preheader ], [ %15, %middle.block171 ]
  %.ph200 = phi ptr [ %i.gr, %vector.memcheck159 ], [ %i.gr, %.lr.ph.i47.i.i.i.preheader ], [ %16, %middle.block171 ]
  br label %.lr.ph.i47.i.i.i

.lr.ph.i47.i.i.i:                                 ; preds = %.lr.ph.i47.i.i.i.preheader198, %bb.ay
  %i.jf = phi i64 [ %i.jj, %bb.ay ], [ %.ph199, %.lr.ph.i47.i.i.i.preheader198 ] ; 3 uses
  %i.jg = phi ptr [ %i.jh, %bb.ay ], [ %.ph200, %.lr.ph.i47.i.i.i.preheader198 ] ; 3 uses
  %.not.not.i50.i.i.i = icmp eq ptr %i.jg, %i.ia
  br i1 %.not.not.i50.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i47.i.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 1
  %i.ji = load i8, ptr %i.jg, align 1, !noalias !6429, !noundef !19
  %i.jj = add i64 %i.jf, 1                        ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.jf
  store i8 %i.ji, ptr %i.jk, align 1, !noalias !6430
  store i64 %i.jj, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6428
  %exitcond.not.i51.i.i.i = icmp eq i64 %i.jj, %i.ii
  br i1 %exitcond.not.i51.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i, label %.lr.ph.i47.i.i.i, !llvm.loop !6347

.split.i:                                         ; preds = %bb.at, %bb.ar
  %.sroa.26.4.i = phi i64 [ %2, %bb.at ], [ %.sroa.26.3.i, %bb.ar ]
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.jm = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gr, i64 noundef %.pre-phi38.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #60, !noalias !6431
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.split.i
  %eh.lpad-body.i93.i = phi { ptr, i32 } [ %i.jl, %.split.i ], [ %i.jm, %bb.az ]
  %.sroa.26.292.i = phi i64 [ %.sroa.26.4.i, %.split.i ], [ %.sroa.26.1.i, %bb.az ] ; 2 uses
  %i.jn = load i64, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6432, !noundef !19 ; 4 uses
  %i.jo = icmp sgt i64 %i.jn, -1
  tail call void @llvm.assume(i1 %i.jo)
  %.not3.i.i.i.i.i = icmp eq i64 %.sroa.26.292.i, %i.jn
  br i1 %.not3.i.i.i.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  %i.jp = add nuw i64 %i.jn, %.sroa.33.07890.i
  store i64 %i.jp, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6432
  br label %common.resume

bb.bc:                                            ; preds = %bb.ba
  %i.jq = load ptr, ptr %i.en, align 8, !alias.scope !6391, !noalias !6432, !nonnull !19, !noundef !19 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.sroa.26.292.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.js, ptr nonnull align 1 %i.jr, i64 %.sroa.33.07890.i, i1 false), !noalias !6433
  br label %bb.bb

.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i:  ; preds = %.lr.ph.i.i.i.i25
  store i64 %i.gh, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6413
  br label %.loopexit.i.i

.loopexit.i.i.loopexit:                           ; preds = %.lr.ph.i37.i.i.i
  store i64 %i.hy, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6414
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit, %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i, %.lr.ph.i.i.i.preheader.i
  %.sroa.33.079.i = phi i64 [ %i.eu, %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i ], [ %.sroa.33.07890.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i ], [ %.sroa.33.07890.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i ], [ %i.eu, %.lr.ph.i.i.i.preheader.i ], [ %.sroa.33.07890.i, %.loopexit.i.i.loopexit ] ; 2 uses
  %i.jt = phi i64 [ %2, %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i ], [ %i.ib, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i ], [ %.sroa.26.1.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i ], [ %2, %.lr.ph.i.i.i.preheader.i ], [ %i.ha, %.loopexit.i.i.loopexit ] ; 2 uses
  %i.ju = phi i64 [ %i.gh, %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i ], [ %.pre.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i ], [ %i.gp, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i ], [ %1, %.lr.ph.i.i.i.preheader.i ], [ %i.hy, %.loopexit.i.i.loopexit ] ; 4 uses
  %i.jv = icmp sgt i64 %i.ju, -1
  tail call void @llvm.assume(i1 %i.jv)
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.jt, %i.ju
  br i1 %.not3.i.i.i.i.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.be, %.loopexit.i.i
  %i.jw = add nuw i64 %i.ju, %.sroa.33.079.i
  br label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit

bb.be:                                            ; preds = %.loopexit.i.i
  %i.jx = load ptr, ptr %i.en, align 8, !alias.scope !6391, !noalias !6434, !nonnull !19, !noundef !19 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jt
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.ju
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.jz, ptr nonnull align 1 %i.jy, i64 %.sroa.33.079.i, i1 false), !noalias !6435
  br label %bb.bd

bb.bf:                                            ; preds = %.split18.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.eo, i64 %2
  %i.kb = load i8, ptr %i.ka, align 1, !noalias !6395, !noundef !19
  %i.kc = icmp sgt i8 %i.kb, -65
  br i1 %i.kc, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %bb.bg, !prof !22

bb.bg:                                            ; preds = %bb.bf
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62, !noalias !6396
  unreachable

_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block186, %vec.epilog.middle.block, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, %bb.bd
  %i.kd = phi i64 [ %i.jw, %bb.bd ], [ %1, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i ], [ %9, %vec.epilog.middle.block ], [ %7, %middle.block186 ], [ %i.fq, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  store i64 %i.kd, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6405
  %.sroa.01.0.i = add nuw i64 %.sroa.4.0.i.i.i, 1
  %i.ke = add i64 %.sroa.01.0.i, %.sroa.0.0.i.i.i ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 5 uses
  %i.kg = load i64, ptr %i.kf, align 8, !alias.scope !6436, !noundef !19 ; 2 uses
  %i.kh = icmp ugt i64 %i.ke, %i.kg
  br i1 %i.kh, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE8truncateBI_.exit, label %bb.bh

bb.bh:                                            ; preds = %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit
  store i64 %i.ke, ptr %i.kf, align 8, !alias.scope !6436
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE8truncateBI_.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE8truncateBI_.exit: ; preds = %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, %bb.bh
  %i.ki = phi i64 [ %i.kg, %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit ], [ %i.ke, %bb.bh ] ; 3 uses
  %i.kj = load ptr, ptr %i.en, align 8, !nonnull !19, !noundef !19 ; 3 uses
  br i1 %i.ep, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE8truncateBI_.exit
  %.not.i26 = icmp ult i64 %1, %i.kd
  br i1 %.not.i26, label %bb.bj, label %.split.i27

.split.i27:                                       ; preds = %bb.bi
  %i.kk = icmp eq i64 %1, %i.kd
  br i1 %i.kk, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 %1
  %i.km = load i8, ptr %i.kl, align 1, !alias.scope !6437, !noundef !19
  %i.kn = icmp sgt i8 %i.km, -65
  br i1 %i.kn, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit, label %bb.bk

_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.bj, %.split.i27
  %i.ko = getelementptr i8, ptr %i.kj, i64 %1
  %i.kp = getelementptr i8, ptr %i.ko, i64 -1
  %rhsc = load i8, ptr %i.kp, align 1
  %i.kq = icmp ne i8 %rhsc, 13
  %.not.i31 = icmp eq i64 %4, 0
  %or.cond = or i1 %i.kq, %.not.i31
  br i1 %or.cond, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit.thread, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit

bb.bk:                                            ; preds = %bb.bj, %.split.i27
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kj, i64 noundef %i.kd, i64 noundef 0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit
  %rhsc56 = load i8, ptr %3, align 1
  %i.kr = icmp ne i8 %rhsc56, 10
  %i.ks = icmp eq i64 %i.ki, 0
  %or.cond132 = or i1 %i.kr, %i.ks
  br i1 %or.cond132, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit.thread, label %bb.bn

bb.bl:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE8truncateBI_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.kt = load ptr, ptr %i.en, align 8, !nonnull !19, !noundef !19
  %i.ku = load i64, ptr %i.ei, align 8, !noundef !19
  br label %bb.bo

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit.thread: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit, %bb.bn, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.kv = load ptr, ptr %i.en, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.kw = load i64, ptr %i.ei, align 8, !noundef !19 ; 5 uses
  %.not.i34 = icmp ult i64 %1, %i.kw
  br i1 %.not.i34, label %bb.bm, label %.split.i35

.split.i35:                                       ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit.thread
  %i.kx = icmp eq i64 %1, %i.kw
  br i1 %i.kx, label %bb.bo, label %bb.br

bb.bm:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit.thread
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 %1
  %i.kz = load i8, ptr %i.ky, align 1, !alias.scope !6438, !noundef !19
  %i.la = icmp sgt i8 %i.kz, -65
  br i1 %i.la, label %bb.bo, label %bb.br

bb.bn:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit
  %i.lb = add nsw i64 %i.ki, -1                   ; 2 uses
  store i64 %i.lb, ptr %i.kf, align 8
  %i.lc = load i64, ptr %i.eg, align 8, !range !33, !noundef !19
  %i.ld = icmp samesign ult i64 %i.lb, %i.lc
  tail call void @llvm.assume(i1 %i.ld)
  %i.le = icmp ult i64 %i.ki, 576460752303423489
  tail call void @llvm.assume(i1 %i.le)
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs5PEMdK7bMAG_12typst_syntax.exit.thread

bb.bo:                                            ; preds = %bb.bl, %bb.bm, %.split.i35
  %i.lf = phi i64 [ %i.kw, %bb.bm ], [ %1, %.split.i35 ], [ %i.ku, %bb.bl ]
  %i.lg = phi ptr [ %i.kv, %bb.bm ], [ %i.kv, %.split.i35 ], [ %i.kt, %bb.bl ]
  %i.lh = sub nuw i64 %i.lf, %1
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 %1
  store ptr %i.li, ptr %i.e, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.lh, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.cb, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %1, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6439)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6440
  call fastcc void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fnINtB2_6FromFnNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from0ENtNtNtB6_6traits8iterator8Iterator4nextB15_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #63, !noalias !6439
  %i.lj = load i64, ptr %i.b, align 8, !range !35, !noalias !6440, !noundef !19
end_hunk_0
