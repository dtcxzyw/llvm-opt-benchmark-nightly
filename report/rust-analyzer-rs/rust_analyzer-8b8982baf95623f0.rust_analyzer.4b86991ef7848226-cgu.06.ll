inline.NumInlined: 5464
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto26map_rust_diagnostic_to_lsp:bb.a
  store i32 60, ptr %i.an, align 4, !noalias !11276
  %i.akq = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ako, i64 noundef %i.akp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 1)
          to label %.noexc.i454 unwind label %.loopexit.i449, !noalias !11279

.noexc.i454:                                      ; preds = %.noexc461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !11276
  br i1 %i.akq, label %bb.jj, label %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.thread.i

bb.jj:                                            ; preds = %.noexc.i454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !11276
  store i32 62, ptr %i.am, align 4, !noalias !11276
  %i.akr = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ako, i64 noundef %i.akp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef 1)
          to label %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.i unwind label %.loopexit.i449, !noalias !11279

.preheader.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i, %.preheader.i
  %.sroa.0.013.i.i = phi ptr [ %i.akt, %.preheader.i ], [ %i.ew, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i ] ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i, i64 128
  %i.akt = load ptr, ptr %i.aks, align 8, !noalias !11280, !align !349, !noundef !4 ; 2 uses
  %.not.i.i.i458 = icmp eq ptr %i.akt, null
  br i1 %.not.i.i.i458, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB16_EINvNvB3y_4last4someB16_EEB2f_.exit.i, label %.preheader.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB16_EINvNvB3y_4last4someB16_EEB2f_.exit.i: ; preds = %.preheader.i
  invoke fastcc void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto8location(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.ev, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %.sroa.0.013.i.i, ptr noundef nonnull readonly align 8 %5)
          to label %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit.i449:                                   ; preds = %bb.jl, %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.thread.i, %bb.jj, %.noexc461
  %lpad.loopexit.i450 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

.loopexit.split-lp.i459:                          ; preds = %bb.jn
  %lpad.loopexit.split-lp.i460 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jk:                                            ; preds = %.loopexit.split-lp.i459, %.loopexit.i449
  %lpad.phi.i451 = phi { ptr, i32 } [ %lpad.loopexit.i450, %.loopexit.i449 ], [ %lpad.loopexit.split-lp.i460, %.loopexit.split-lp.i459 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #44
          to label %.body463 unwind label %bb.jw, !noalias !11279

_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.i: ; preds = %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !11276
  br i1 %i.akr, label %bb.jo, label %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.thread.i

_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.thread.i: ; preds = %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.i, %.noexc.i454
  %i.aku = invoke { ptr, i64 } @_RNvXs0_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %bb.jl unwind label %.loopexit.i449, !noalias !11279 ; 2 uses

bb.jl:                                            ; preds = %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.thread.i
  %i.akv = extractvalue { ptr, i64 } %i.aku, 0
  %i.akw = extractvalue { ptr, i64 } %i.aku, 1
  %i.akx = invoke noundef zeroext i1 @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath11starts_with(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akv, i64 noundef %i.akw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.jm unwind label %.loopexit.i449, !noalias !11279

bb.jm:                                            ; preds = %bb.jl
  br i1 %i.akx, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  invoke fastcc void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto8location(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.ev, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %.sroa.013.019.i, ptr noundef nonnull readonly align 8 %5)
          to label %bb.js unwind label %.loopexit.split-lp.i459

bb.jo:                                            ; preds = %bb.jm, %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.jq unwind label %bb.jp, !noalias !11279

bb.jp:                                            ; preds = %bb.jo
  %i.aky = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !11283, !noalias !11262 ; 2 uses
  %i.akz = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.akz, label %.body463, label %common.resume.sink.split.i455

bb.jq:                                            ; preds = %bb.jo
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !11283, !noalias !11262 ; 2 uses
  %i.ala = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ala, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.acj, align 8, !alias.scope !11298, !noalias !11262, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !11299
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i

common.resume.sink.split.i455:                    ; preds = %bb.jt, %bb.jp
  %.val2.i.i.i.i.i.i7.sink.i = phi i64 [ %.val2.i.i.i.i.i.i7.i, %bb.jt ], [ %.val2.i.i.i.i.i.i.i, %bb.jp ]
  %common.resume.op.ph.i456 = phi { ptr, i32 } [ %i.alb, %bb.jt ], [ %i.aky, %bb.jp ]
  %.val3.i.i.i.i.i.i8.i = load ptr, ptr %i.acj, align 8, !noalias !11262, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i8.i, i64 noundef %.val2.i.i.i.i.i.i7.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !11279
  br label %.body463

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.jr, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !11262
  %.not.i.i457 = icmp eq ptr %i.akb, null
  br i1 %.not.i.i457, label %.preheader.i, label %bb.jh

bb.js:                                            ; preds = %bb.jn
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.ju unwind label %bb.jt, !noalias !11279

bb.jt:                                            ; preds = %bb.js
  %i.alb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i7.i = load i64, ptr %i.ao, align 8, !alias.scope !11302, !noalias !11262 ; 2 uses
  %i.alc = icmp eq i64 %.val2.i.i.i.i.i.i7.i, 0
  br i1 %i.alc, label %.body463, label %common.resume.sink.split.i455

bb.ju:                                            ; preds = %bb.js
  %.val.i.i.i.i.i.i10.i = load i64, ptr %i.ao, align 8, !alias.scope !11302, !noalias !11262 ; 2 uses
  %i.ald = icmp eq i64 %.val.i.i.i.i.i.i10.i, 0
  br i1 %i.ald, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit12.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %.val1.i.i.i.i.i.i11.i = load ptr, ptr %i.acj, align 8, !alias.scope !11317, !noalias !11262, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i11.i, i64 noundef %.val.i.i.i.i.i.i10.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !11318
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit12.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit12.i: ; preds = %bb.jv, %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !11262
  br label %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location.exit

bb.jw:                                            ; preds = %bb.jk
  %i.ale = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !11279
  unreachable

.body463:                                         ; preds = %.loopexit1157, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.rr, %bb.rs, %bb.wy, %bb.wx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors7MessageECs6u1mgJOKDyY_13rust_analyzer.exit729, %bb.jt, %common.resume.sink.split.i455, %bb.jp, %bb.jk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEECs6u1mgJOKDyY_13rust_analyzer.exit.thread
  %.pn280.pn.pn.pn = phi { ptr, i32 } [ %.pn280, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors7MessageECs6u1mgJOKDyY_13rust_analyzer.exit729 ], [ %.pn280, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEECs6u1mgJOKDyY_13rust_analyzer.exit.thread ], [ %i.awl, %bb.rs ], [ %i.alb, %bb.jt ], [ %i.aky, %bb.jp ], [ %lpad.phi.i451, %bb.jk ], [ %common.resume.op.ph.i456, %common.resume.sink.split.i455 ], [ %.pn280.pn.pn1004, %bb.wx ], [ %.pn280.pn.pn1004, %bb.wy ], [ %i.awl, %bb.rr ], [ %lpad.loopexit, %.loopexit1157 ], [ %lpad.loopexit1174, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp1175, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(152) %i.ew) #44
          to label %bb.jb unwind label %bb.cv

.loopexit1157:                                    ; preds = %.noexc829, %bb.ji
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body463

.loopexit.split-lp.loopexit:                      ; preds = %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_8find_map5checkTRBV_B37_ETB37_ReENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path0E0INtNtNtB1J_3ops12control_flow11ControlFlowB3g_EEB3w_.exit.thread.i, %.noexc832, %.split.i, %bb.jh
  %lpad.loopexit1174 = landingpad { ptr, i32 }
          cleanup
  br label %.body463

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB16_EINvNvB3y_4last4someB16_EEB2f_.exit.i
  %lpad.loopexit.split-lp1175 = landingpad { ptr, i32 }
          cleanup
  br label %.body463

_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit12.i, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB16_EINvNvB3y_4last4someB16_EEB2f_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.et, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb)
          to label %bb.jy unwind label %bb.jx

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEECs6u1mgJOKDyY_13rust_analyzer.exit.thread: ; preds = %.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEECs6u1mgJOKDyY_13rust_analyzer.exit
  br i1 %.sroa.078.1, label %.thread1001, label %.body463

bb.jx:                                            ; preds = %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location.exit
  %i.alf = landingpad { ptr, i32 }
          cleanup
  br label %.thread1001

bb.jy:                                            ; preds = %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto16primary_location.exit
  %i.alg = load i64, ptr %i.acn, align 8, !range !435
  %.not226 = icmp ne i64 %i.alg, -1
  %or.cond.not = select i1 %.sroa.028.0.lcssa, i1 %.not226, i1 false
  br i1 %or.cond.not, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.kc, %bb.jy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sink1.i713.sroa.gep, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 24, i1 false)
  store i64 -1, ptr %i.eu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store i64 0, ptr %i.eq, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aco, align 8
  store i64 0, ptr %i.acp, align 8
  br label %.backedge

bb.ka:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  store ptr %i.acn, ptr %i.es, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  store ptr %i.es, ptr %i.er, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.4106.0..sroa_idx, align 8
  %i.alh = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @182, ptr noundef nonnull @181, ptr noundef nonnull %i.er)
          to label %bb.kc unwind label %bb.kb     ; 0 uses

bb.kb:                                            ; preds = %bb.ka
  %i.ali = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.et) #44
          to label %.thread1001 unwind label %bb.cv

bb.kc:                                            ; preds = %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  br label %bb.jz

.backedge:                                        ; preds = %.backedge.backedge, %bb.jz
  %.sroa.12.0984 = phi i64 [ 0, %bb.jz ], [ %i.als, %.backedge.backedge ] ; 2 uses
  %.not.i.i465 = phi i1 [ false, %bb.jz ], [ true, %.backedge.backedge ]
  %.sroa.0885.0 = phi ptr [ %i.ew, %bb.jz ], [ %i.alr, %.backedge.backedge ] ; 3 uses
  %.not.i.i.i467 = icmp eq ptr %.sroa.0885.0, null ; 2 uses
  br i1 %.not.i.i465, label %bb.kd, label %.preheader.preheader, !prof !7426

.preheader.preheader:                             ; preds = %.backedge
  br i1 %.not.i.i.i467, label %.loopexit, label %bb.ke

bb.kd:                                            ; preds = %.backedge
  br i1 %.not.i.i.i467, label %.loopexit, label %bb.ki

bb.ke:                                            ; preds = %.preheader.preheader
  %i.alj = getelementptr inbounds nuw i8, ptr %.sroa.0885.0, i64 128
  %i.alk = load ptr, ptr %i.alj, align 8, !noalias !11321, !align !349, !noundef !4 ; 2 uses
  %.not.i.i.i.i466 = icmp eq ptr %i.alk, null
  br i1 %.not.i.i.i.i466, label %.loopexit, label %bb.ki

.body501:                                         ; preds = %.loopexit1159, %.loopexit.split-lp1160, %bb.vw, %bb.wn, %bb.wm, %bb.sd, %bb.se, %bb.mj, %.body560, %bb.mm, %bb.kq
  %.sroa.078.1 = phi i1 [ false, %.body560 ], [ true, %bb.sd ], [ true, %bb.vw ], [ true, %bb.kq ], [ false, %bb.mm ], [ true, %bb.mj ], [ true, %bb.wn ], [ true, %bb.se ], [ true, %bb.wm ], [ true, %.loopexit1159 ], [ %.sroa.078.2.ph, %.loopexit.split-lp1160 ] ; 2 uses
  %.sroa.077.0 = phi i1 [ false, %.body560 ], [ true, %bb.sd ], [ true, %bb.vw ], [ %.sroa.077.2, %bb.kq ], [ false, %bb.mm ], [ false, %bb.mj ], [ true, %bb.wn ], [ true, %bb.se ], [ true, %bb.wm ], [ true, %.loopexit1159 ], [ %.sroa.078.2.ph, %.loopexit.split-lp1160 ] ; 2 uses
  %.pn280 = phi { ptr, i32 } [ %.pn242.pn.pn, %.body560 ], [ %i.axl, %bb.sd ], [ %i.bcm, %bb.vw ], [ %.pn254, %bb.kq ], [ %i.aox, %bb.mm ], [ %i.aoq, %bb.mj ], [ %.pn2781082, %bb.wn ], [ %i.axl, %bb.se ], [ %.pn2781082, %bb.wm ], [ %lpad.loopexit1161, %.loopexit1159 ], [ %lpad.loopexit.split-lp1162, %.loopexit.split-lp1160 ] ; 4 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %bb.kh unwind label %bb.kf

bb.kf:                                            ; preds = %.body501
  %i.all = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i468 = load i64, ptr %i.eq, align 8, !alias.scope !11336 ; 2 uses
  %i.alm = icmp eq i64 %.val2.i468, 0
  br i1 %i.alm, label %.body313, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %.val3.i469 = load ptr, ptr %i.aco, align 8, !alias.scope !11341, !nonnull !4, !noundef !4
  %i.aln = shl nuw i64 %.val2.i468, 7
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i469, i64 noundef %i.aln, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !11342
  br label %.body313

bb.kh:                                            ; preds = %.body501
  %.val.i470 = load i64, ptr %i.eq, align 8, !alias.scope !11336 ; 2 uses
  %i.alo = icmp eq i64 %.val.i470, 0
  br i1 %i.alo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEECs6u1mgJOKDyY_13rust_analyzer.exit, label %.split

.split:                                           ; preds = %bb.kh
  %.val1.i471 = load ptr, ptr %i.aco, align 8, !alias.scope !11341, !nonnull !4, !noundef !4
  %i.alp = shl nuw i64 %.val.i470, 7
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i471, i64 noundef %i.alp, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !11345
  br i1 %.sroa.077.0, label %bb.wo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEECs6u1mgJOKDyY_13rust_analyzer.exit.thread

.loopexit1159:                                    ; preds = %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.thread, %bb.ki, %bb.kj
  %lpad.loopexit1161 = landingpad { ptr, i32 }
          cleanup
  br label %.body501

.loopexit.split-lp1160:                           ; preds = %._crit_edge1577, %.loopexit
  %.sroa.078.2.ph = phi i1 [ false, %._crit_edge1577 ], [ true, %.loopexit ] ; 2 uses
  %lpad.loopexit.split-lp1162 = landingpad { ptr, i32 }
          cleanup
  br label %.body501

bb.ki:                                            ; preds = %bb.ke, %bb.kd
  %.lcssa.sink.i.i = phi ptr [ %.sroa.0885.0, %bb.kd ], [ %i.alk, %bb.ke ] ; 4 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 128
  %i.alr = load ptr, ptr %i.alq, align 8, !noalias !11348, !align !349, !noundef !4
  %i.als = add i64 %.sroa.12.0984, 1
  %i.alt = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.alu = load ptr, ptr %i.alt, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.alw = load i64, ptr %i.alv, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !11349
  store i32 60, ptr %i.al, align 4, !noalias !11349
  %i.alx = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.alu, i64 noundef %i.alw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 1)
          to label %.noexc475 unwind label %.loopexit1159

.noexc475:                                        ; preds = %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !11349
  br i1 %i.alx, label %bb.kj, label %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit.thread

bb.kj:                                            ; preds = %.noexc475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !11349
  store i32 62, ptr %i.ak, align 4, !noalias !11349
  %i.aly = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.alu, i64 noundef %i.alw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef 1)
          to label %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto19is_dummy_macro_file.exit unwind label %.loopexit1159

.loopexit:                                        ; preds = %bb.kd, %bb.ke, %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @llvm.experimental.noalias.scope.decl(metadata !11352)
  call void @llvm.experimental.noalias.scope.decl(metadata !11355)
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(88) %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ev)
          to label %bb.kk unwind label %.loopexit.split-lp1160

bb.kk:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.afp, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.adx, i64 17, i1 false), !alias.scope !11357
  %i.alz = load i16, ptr %i.adz, align 8, !range !9556, !alias.scope !11355, !noalias !11352, !noundef !4 ; 2 uses
  %i.ama = trunc nuw i16 %i.alz to i1
  %i.amb = load i16, ptr %i.aea, align 2, !alias.scope !11355, !noalias !11352
  %.sroa.5.0.i = select i1 %i.ama, i16 %i.amb, i16 undef
  %i.amc = load i32, ptr %i.aeb, align 4, !alias.scope !11355, !noalias !11352, !noundef !4
  %i.amd = load i32, ptr %i.aec, align 8, !range !8331, !alias.scope !11355, !noalias !11352, !noundef !4 ; 2 uses
  %i.ame = trunc nuw i32 %i.amd to i1
  %i.amf = load i32, ptr %i.aed, align 4, !alias.scope !11355, !noalias !11352
  %.sroa.52.0.i = select i1 %i.ame, i32 %i.amf, i32 undef
  %i.amg = load i32, ptr %i.aee, align 8, !range !8331, !alias.scope !11355, !noalias !11352, !noundef !4 ; 2 uses
  %i.amh = trunc nuw i32 %i.amg to i1
  %i.ami = load i32, ptr %i.aef, align 4, !alias.scope !11355, !noalias !11352
  %.sroa.54.0.i = select i1 %i.amh, i32 %i.ami, i32 undef
  %i.amj = load <4 x i32>, ptr %i.adw, align 4, !alias.scope !11355, !noalias !11352
  store <4 x i32> %i.amj, ptr %i.afq, align 4, !alias.scope !11352, !noalias !11355
  store i16 %i.alz, ptr %i.afr, align 8, !alias.scope !11352, !noalias !11355
  store i16 %.sroa.5.0.i, ptr %i.afs, align 2, !alias.scope !11352, !noalias !11355
  store i32 %i.amc, ptr %i.aft, align 4, !alias.scope !11352, !noalias !11355
  store i32 %i.amd, ptr %i.afu, align 8, !alias.scope !11352, !noalias !11355
  store i32 %.sroa.52.0.i, ptr %i.afv, align 4, !alias.scope !11352, !noalias !11355
  store i32 %i.amg, ptr %i.afw, align 8, !alias.scope !11352, !noalias !11355
  store i32 %.sroa.54.0.i, ptr %i.afx, align 4, !alias.scope !11352, !noalias !11355
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.046)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %i.acv, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  br i1 %.not258, label %bb.ko, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  br i1 %.not.i620, label %bb.ks, label %bb.km, !prof !8848

bb.km:                                            ; preds = %bb.kl
  br i1 %i.aer, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer.exit.thread1018, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !11358
  %i.amk = call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.12.1, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !11358 ; 3 uses
  %i.aml = icmp eq ptr %i.amk, null
  br i1 %i.aml, label %bb.ks, label %bb.kt

bb.ko:                                            ; preds = %bb.kk
  store i64 -2, ptr %i.du, align 8
  br label %bb.kp

bb.kp:                                            ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer.exit.thread1018, %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  %i.amm = load i64, ptr %i.fa, align 8, !range !435, !noundef !4
  %.not230 = icmp eq i64 %i.amm, -1
  br i1 %.not230, label %bb.kv, label %bb.ku

bb.kq:                                            ; preds = %bb.kz, %bb.kr
  %.sroa.077.2 = phi i1 [ true, %bb.kr ], [ %.sroa.077.3, %bb.kz ]
  %.pn254 = phi { ptr, i32 } [ %i.amn, %bb.kr ], [ %.pn251.pn, %bb.kz ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs2vT3jxLudSK_3url3UrlECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(88) %i.dw) #44
          to label %.body501 unwind label %bb.cv

bb.kr:                                            ; preds = %bb.ks
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %bb.kq

bb.ks:                                            ; preds = %bb.kl, %bb.kn
  %.sroa.4936.0.ph = phi i64 [ 1, %bb.kn ], [ 0, %bb.kl ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4936.0.ph, i64 %.sroa.12.1) #43
          to label %bb.rp unwind label %bb.kr

bb.kt:                                            ; preds = %bb.kn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amk, ptr nonnull align 1 %.sroa.011.1, i64 %.sroa.12.1, i1 false)
  br label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer.exit.thread1018

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer.exit.thread1018: ; preds = %bb.km, %bb.kt
  %i.amo = phi ptr [ %i.amk, %bb.kt ], [ inttoptr (i64 1 to ptr), %bb.km ]
  store i64 %.sroa.12.1, ptr %i.du, align 8
  store ptr %i.amo, ptr %.sroa.4943.0..sroa_idx, align 8
  store i64 %.sroa.12.1, ptr %.sroa.5944.0..sroa_idx, align 8
  br label %bb.kp

bb.ku:                                            ; preds = %bb.kp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.experimental.noalias.scope.decl(metadata !11361)
  call void @llvm.experimental.noalias.scope.decl(metadata !11364)
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(88) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.fa)
          to label %bb.lb unwind label %bb.la

bb.kv:                                            ; preds = %bb.kp
  store i64 -1, ptr %i.dt, align 8
  br label %bb.kw

bb.kw:                                            ; preds = %bb.lb, %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  br i1 %.not.i628, label %bb.le, label %bb.kx, !prof !8848

bb.kx:                                            ; preds = %bb.kw
  br i1 %i.afk, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer.exit487.thread1029, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !11366
  %i.amp = call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !11366 ; 3 uses
  %i.amq = icmp eq ptr %i.amp, null
  br i1 %i.amq, label %bb.le, label %bb.lf

bb.kz:                                            ; preds = %bb.lc, %bb.la
  %.sroa.077.3 = phi i1 [ %.sroa.077.4, %bb.lc ], [ true, %bb.la ]
  %.pn251.pn = phi { ptr, i32 } [ %.pn251, %bb.lc ], [ %i.amr, %bb.la ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4CodeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.du) #44
          to label %bb.kq unwind label %bb.cv

bb.la:                                            ; preds = %bb.ku
  %i.amr = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

bb.lb:                                            ; preds = %bb.ku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.afy, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.aet, i64 17, i1 false), !alias.scope !11369
  %i.ams = load i16, ptr %i.aev, align 8, !range !9556, !alias.scope !11364, !noalias !11361, !noundef !4 ; 2 uses
  %i.amt = trunc nuw i16 %i.ams to i1
  %i.amu = load i16, ptr %i.aew, align 2, !alias.scope !11364, !noalias !11361
  %.sroa.5.0.i480 = select i1 %i.amt, i16 %i.amu, i16 undef
  %i.amv = load i32, ptr %i.aex, align 4, !alias.scope !11364, !noalias !11361, !noundef !4
  %i.amw = load i32, ptr %i.aey, align 8, !range !8331, !alias.scope !11364, !noalias !11361, !noundef !4 ; 2 uses
  %i.amx = trunc nuw i32 %i.amw to i1
  %i.amy = load i32, ptr %i.aez, align 4, !alias.scope !11364, !noalias !11361
  %.sroa.52.0.i481 = select i1 %i.amx, i32 %i.amy, i32 undef
  %i.amz = load i32, ptr %i.afa, align 8, !range !8331, !alias.scope !11364, !noalias !11361, !noundef !4 ; 2 uses
  %i.ana = trunc nuw i32 %i.amz to i1
  %i.anb = load i32, ptr %i.afb, align 4, !alias.scope !11364, !noalias !11361
  %.sroa.54.0.i482 = select i1 %i.ana, i32 %i.anb, i32 undef
  %i.anc = load <4 x i32>, ptr %i.aes, align 4, !alias.scope !11364, !noalias !11361
  store <4 x i32> %i.anc, ptr %i.afz, align 4, !alias.scope !11361, !noalias !11364
  store i16 %i.ams, ptr %i.aga, align 8, !alias.scope !11361, !noalias !11364
  store i16 %.sroa.5.0.i480, ptr %i.agb, align 2, !alias.scope !11361, !noalias !11364
  store i32 %i.amv, ptr %i.agc, align 4, !alias.scope !11361, !noalias !11364
  store i32 %i.amw, ptr %i.agd, align 8, !alias.scope !11361, !noalias !11364
  store i32 %.sroa.52.0.i481, ptr %i.age, align 4, !alias.scope !11361, !noalias !11364
  store i32 %i.amz, ptr %i.agf, align 8, !alias.scope !11361, !noalias !11364
  store i32 %.sroa.54.0.i482, ptr %i.agg, align 4, !alias.scope !11361, !noalias !11364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dt, ptr noundef nonnull align 8 dereferenceable(88) %i.cp, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %bb.kw

bb.lc:                                            ; preds = %bb.rw, %bb.ld
  %.sroa.077.4 = phi i1 [ true, %bb.ld ], [ false, %bb.rw ]
  %.pn251 = phi { ptr, i32 } [ %i.and, %bb.ld ], [ %.pn246.pn.pn.pn, %bb.rw ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15CodeDescriptionEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(88) %i.dt) #44
          to label %bb.kz unwind label %bb.cv

bb.ld:                                            ; preds = %bb.le
  %i.and = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.le:                                            ; preds = %bb.kw, %bb.ky
  %.sroa.4946.0.ph = phi i64 [ 1, %bb.ky ], [ 0, %bb.kw ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4946.0.ph, i64 %.sroa.7.0) #43
          to label %bb.rp unwind label %bb.ld

bb.lf:                                            ; preds = %bb.ky
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amp, ptr nonnull align 1 %.sroa.02.0, i64 %.sroa.7.0, i1 false)
  br label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer.exit487.thread1029

.body493:                                         ; preds = %bb.lk, %bb.ll, %bb.lg, %bb.ls
  %.pn246.pn.pn.pn = phi { ptr, i32 } [ %.pn246.pn.pn, %bb.ls ], [ %i.ane, %bb.lg ], [ %i.anp, %bb.ll ], [ %i.anp, %bb.lk ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors7MessageECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dr) #44
          to label %bb.rw unwind label %bb.cv

bb.lg:                                            ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer.exit487.thread1029
  %i.ane = landingpad { ptr, i32 }
          cleanup
  br label %.body493

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer.exit487.thread1029: ; preds = %bb.kx, %bb.lf
  %i.anf = phi ptr [ %i.amp, %bb.lf ], [ inttoptr (i64 1 to ptr), %bb.kx ]
  store i64 %.sroa.7.0, ptr %i.ds, align 8
  store ptr %i.anf, ptr %.sroa.4180.0..sroa_idx, align 8
  store i64 %.sroa.7.0, ptr %.sroa.5181.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %i.eu, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  %i.ang = load ptr, ptr %i.aco, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.anh = load i64, ptr %i.acp, align 8, !noundef !4
  %i.ani = getelementptr inbounds nuw [128 x i8], ptr %i.ang, i64 %i.anh
  %i.anj = load ptr, ptr %i.ka, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ank = load i64, ptr %i.kb, align 8, !noundef !4
  %i.anl = getelementptr inbounds nuw [136 x i8], ptr %i.anj, i64 %i.ank
  store ptr %i.ang, ptr %i.do, align 8, !alias.scope !11370
  store ptr %i.ani, ptr %i.agh, align 8, !alias.scope !11370
  store ptr %i.anj, ptr %i.agi, align 8, !alias.scope !11370
  store ptr %i.anl, ptr %i.agj, align 8, !alias.scope !11370
  invoke void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB32_6cloned6ClonedINtNtNtB36_5slice4iter4IterB13_EEINtNtB32_3map3MapIB4d_NtNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto13SubDiagnosticENCNvB57_26map_rust_diagnostic_to_lsps2_0EEE9from_iterB5b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dp, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.do)
end_hunk_0
