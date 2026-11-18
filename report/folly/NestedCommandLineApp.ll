Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/NestedCommandLineApp?download=true
inline.NumInlined: 2054
inline.NumDeleted: 926
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5folly20NestedCommandLineApp5doRunERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  %i.mc = load ptr, ptr %.05.i.i.i183, align 8, !tbaa !35 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.05.i.i.i183, i64 16 ; 2 uses
  %i.me = icmp eq ptr %i.mc, %i.md
  br i1 %i.me, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i184: ; preds = %.lr.ph.i.i.i182
  %i.mf = load i64, ptr %i.md, align 8, !tbaa !36
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mg) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i185

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i185: ; preds = %.lr.ph.i.i.i182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i184
  %i.mh = getelementptr inbounds nuw i8, ptr %.05.i.i.i183, i64 32 ; 2 uses
  %.not.i.i.i186 = icmp eq ptr %i.mh, %i.mb
  br i1 %.not.i.i.i186, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i187, label %.lr.ph.i.i.i182, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i187: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i185
  %.pr.i188 = load ptr, ptr %19, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i189

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i189: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i187, %_ZNKSt8functionIFvRKN5boost15program_options13variables_mapERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEEclES4_SF_.exit
  %i.mi = phi ptr [ %.pr.i188, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i187 ], [ %i.ma, %_ZNKSt8functionIFvRKN5boost15program_options13variables_mapERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEEclES4_SF_.exit ] ; 3 uses
  %.not.i.i1.i190 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i1.i190, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit192, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i189
  %i.mj = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !109
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mi to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.mn) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit192

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit192: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i189, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  %i.mo = load ptr, ptr %18, align 8, !tbaa !238  ; 3 uses
  %i.mp = load ptr, ptr %i.jc, align 8, !tbaa !237 ; 2 uses
  %.not4.i.i.i.i193 = icmp eq ptr %i.mo, %i.mp
  br i1 %.not4.i.i.i.i193, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i194

.lr.ph.i.i.i.i194:                                ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit192, %.lr.ph.i.i.i.i194
  %.05.i.i.i.i195 = phi ptr [ %i.mq, %.lr.ph.i.i.i.i194 ], [ %i.mo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit192 ] ; 2 uses
  call void @_ZN5boost15program_options12basic_optionIcED2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %.05.i.i.i.i195) #33
  %i.mq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i195, i64 96 ; 2 uses
  %.not.i.i.i.i196 = icmp eq ptr %i.mq, %i.mp
  br i1 %.not.i.i.i.i196, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i194, !llvm.loop !14

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i194
  %.pr.i.i197 = load ptr, ptr %18, align 8, !tbaa !238
  br label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit192
  %i.mr = phi ptr [ %.pr.i.i197, %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.mo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit192 ] ; 3 uses
  %.not.i.i1.i.i198 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i1.i.i198, label %_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !241
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = ptrtoint ptr %i.mr to i64
  %i.mw = sub i64 %i.mu, %i.mv
  call void @_ZdlPvm(ptr noundef nonnull %i.mr, i64 noundef %i.mw) #36
  br label %_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit

_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  %i.mx = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !229 ; 3 uses
  %.not.i.i.i199 = icmp eq ptr %i.my, null
  %i.mz = ptrtoint ptr %i.my to i64
  %i.na = trunc i64 %i.mz to i1
  %or.cond.i.i200 = or i1 %.not.i.i.i199, %i.na
  br i1 %or.cond.i.i200, label %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit.i202, label %bb.cf

bb.cf:                                            ; preds = %_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit
  %i.nb = load ptr, ptr %i.my, align 8, !tbaa !232 ; 2 uses
  %.not.i.i.i.i201 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i.i201, label %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit.i202, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nc = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 2 uses
  invoke void %i.nb(ptr noundef nonnull align 8 dereferenceable(24) %i.nc, ptr noundef nonnull align 8 dereferenceable(24) %i.nc, i32 noundef 2)
          to label %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit.i202 unwind label %bb.ch, !inline_history !12

bb.ch:                                            ; preds = %bb.cg
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  %i.ne = extractvalue { ptr, i32 } %i.nd, 0
  call void @__clang_call_terminate(ptr %i.ne) #35
  unreachable

_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit.i202: ; preds = %bb.cg, %bb.cf, %_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit
  %i.nf = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !229 ; 3 uses
  %.not.i.i1.i203 = icmp eq ptr %i.ng, null
  %i.nh = ptrtoint ptr %i.ng to i64
  %i.ni = trunc i64 %i.nh to i1
  %or.cond.i2.i204 = or i1 %.not.i.i1.i203, %i.ni
  br i1 %or.cond.i2.i204, label %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i206, label %bb.ci

bb.ci:                                            ; preds = %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit.i202
  %i.nj = load ptr, ptr %i.ng, align 8, !tbaa !234 ; 2 uses
  %.not.i.i.i3.i205 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i3.i205, label %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i206, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nk = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  invoke void %i.nj(ptr noundef nonnull align 8 dereferenceable(24) %i.nk, ptr noundef nonnull align 8 dereferenceable(24) %i.nk, i32 noundef 2)
          to label %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i206 unwind label %bb.ck, !inline_history !13

bb.ck:                                            ; preds = %bb.cj
  %i.nl = landingpad { ptr, i32 }
          catch ptr null
  %i.nm = extractvalue { ptr, i32 } %i.nl, 0
  call void @__clang_call_terminate(ptr %i.nm) #35
  unreachable

_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i206: ; preds = %bb.cj, %bb.ci, %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit.i202
  %i.nn = load ptr, ptr %16, align 8, !tbaa !106  ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i.i207 = icmp eq ptr %i.nn, %i.np
  br i1 %.not4.i.i.i.i207, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i215, label %.lr.ph.i.i.i.i208

.lr.ph.i.i.i.i208:                                ; preds = %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i206, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i211
  %.05.i.i.i.i209 = phi ptr [ %i.nv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i211 ], [ %i.nn, %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i206 ] ; 3 uses
  %i.nq = load ptr, ptr %.05.i.i.i.i209, align 8, !tbaa !35 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i209, i64 16 ; 2 uses
  %i.ns = icmp eq ptr %i.nq, %i.nr
  br i1 %i.ns, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i210: ; preds = %.lr.ph.i.i.i.i208
  %i.nt = load i64, ptr %i.nr, align 8, !tbaa !36
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nu) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i211

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i211: ; preds = %.lr.ph.i.i.i.i208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i210
  %i.nv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i209, i64 32 ; 2 uses
  %.not.i.i.i4.i212 = icmp eq ptr %i.nv, %i.np
  br i1 %.not.i.i.i4.i212, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i213, label %.lr.ph.i.i.i.i208, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i213: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i211
  %.pr.i.i214 = load ptr, ptr %16, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i215

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i215: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i213, %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i206
  %i.nw = phi ptr [ %.pr.i.i214, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i213 ], [ %i.nn, %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i206 ] ; 3 uses
  %.not.i.i1.i.i216 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i1.i.i216, label %_ZN5boost15program_options6detail7cmdlineD2Ev.exit218, label %bb.cl

bb.cl:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i215
  %i.nx = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !109
  %i.nz = ptrtoint ptr %i.ny to i64
  %i.oa = ptrtoint ptr %i.nw to i64
  %i.ob = sub i64 %i.nz, %i.oa
  call void @_ZdlPvm(ptr noundef nonnull %i.nw, i64 noundef %i.ob) #36
  br label %_ZN5boost15program_options6detail7cmdlineD2Ev.exit218

_ZN5boost15program_options6detail7cmdlineD2Ev.exit218: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i215, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %bb.cu

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bw, %bb.cc, %bb.bx, %.invoke, %_ZN5boost15program_options20collect_unrecognizedIcEESt6vectorINSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEESaIS9_EERKS2_INS0_12basic_optionIS5_EESaISD_EENS0_25collect_unrecognized_modeE.exit, %bb.bz
  %lpad.loopexit.split-lp503 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options15required_optionE
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cb
  %.pn63.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp503, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lt, %bb.cb ]
  call void @_ZN5boost15program_options20basic_parsed_optionsIcED2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %18) #33
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ca
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn, %bb.cm ], [ %i.ls, %bb.ca ] ; 3 uses
  %.743 = extractvalue { ptr, i32 } %.pn63.pn.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  %i.oc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost15program_options15required_optionE) #33
  %i.od = icmp eq i32 %.743, %i.oc
  br i1 %i.od, label %bb.co, label %bb.dd

bb.co:                                            ; preds = %bb.cn
  %.7 = extractvalue { ptr, i32 } %.pn63.pn.pn.pn, 0
  %i.oe = call ptr @__cxa_begin_catch(ptr %.7) #33
  %i.of = call ptr @__cxa_allocate_exception(i64 24) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  invoke void @_ZNK5boost15program_options22error_with_option_name25get_canonical_option_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(184) %i.oe)
          to label %.noexc79 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread

.noexc79:                                         ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !464
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.og = load ptr, ptr %21, align 8, !tbaa !35, !noalias !465
  %i.oh = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !37, !noalias !465
  %i.oj = ptrtoint ptr %i.og to i64
  %i.ok = load ptr, ptr %0, align 8, !tbaa !35, !noalias !465
  %i.ol = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !465
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = load ptr, ptr %i.hh, align 8, !tbaa !35, !noalias !465
  %i.oo = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !37, !noalias !465
  %i.oq = ptrtoint ptr %i.on to i64
  %.sroa.08.sroa.4.0.insert.ext.i = zext i64 %i.oi to i128
  %.sroa.08.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.08.sroa.4.0.insert.ext.i, 64
  %.sroa.08.sroa.0.0.insert.ext.i = zext i64 %i.oj to i128
  %.sroa.08.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.08.sroa.4.0.insert.shift.i, %.sroa.08.sroa.0.0.insert.ext.i
  store i128 %.sroa.08.sroa.0.0.insert.insert.i, ptr %5, align 16, !tbaa !36, !alias.scope !465
  %i.or = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.07.sroa.4.0.insert.ext.i = zext i64 %i.ol to i128
  %.sroa.07.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.07.sroa.4.0.insert.ext.i, 64
  %.sroa.07.sroa.0.0.insert.ext.i = zext i64 %i.om to i128
  %.sroa.07.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.07.sroa.4.0.insert.shift.i, %.sroa.07.sroa.0.0.insert.ext.i
  store i128 %.sroa.07.sroa.0.0.insert.insert.i, ptr %i.or, align 16, !tbaa !36, !alias.scope !465
  %i.os = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.0.sroa.4.0.insert.ext.i220 = zext i64 %i.op to i128
  %.sroa.0.sroa.4.0.insert.shift.i221 = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i220, 64
  %.sroa.0.sroa.0.0.insert.ext.i222 = zext i64 %i.oq to i128
  %.sroa.0.sroa.0.0.insert.insert.i223 = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i221, %.sroa.0.sroa.0.0.insert.ext.i222
  store i128 %.sroa.0.sroa.0.0.insert.insert.i223, ptr %i.os, align 16, !tbaa !36, !alias.scope !465
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr nonnull @.str.70, i64 59, i64 3549, ptr nonnull %5)
          to label %bb.cp unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread

bb.cp:                                            ; preds = %.noexc79
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !464
  invoke void @_ZN5folly11ProgramExitC1EiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(20) %i.of, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  invoke void @__cxa_throw(ptr nonnull %i.of, ptr nonnull @_ZTIN5folly11ProgramExitE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.dj unwind label %bb.cr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread: ; preds = %bb.co
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.0 = phi i1 [ false, %bb.cq ], [ true, %bb.cp ] ; 2 uses
  %i.ou = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ov = load ptr, ptr %20, align 8, !tbaa !35   ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ox = icmp eq ptr %i.ov, %i.ow
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.cr
  %i.oy = load i64, ptr %i.ow, align 8, !tbaa !36
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  %i.pa = load ptr, ptr %21, align 8, !tbaa !35   ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.pc = icmp eq ptr %i.pa, %i.pb
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread: ; preds = %.noexc79
  %i.pd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pe = load ptr, ptr %21, align 8, !tbaa !35   ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.pg = icmp eq ptr %i.pe, %i.pf
  br i1 %i.pg, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread
  %i.ph = load i64, ptr %i.pf, align 8, !tbaa !36
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.pi) #36
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  %i.pj = load i64, ptr %i.pb, align 8, !tbaa !36
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pk) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br i1 %.0, label %bb.cs, label %bb.ct

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br i1 %.0, label %bb.cs, label %bb.ct

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227.thread
  %.pn68.pn313.ph = phi { ptr, i32 } [ %i.pd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227.thread ], [ %i.ot, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread ], [ %i.pd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br label %bb.cs

bb.cs:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %.pn68.pn313 = phi { ptr, i32 } [ %i.ou, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227 ], [ %i.ou, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229 ], [ %.pn68.pn313.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.of) #33
  br label %bb.ct

bb.ct:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227, %bb.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %.pn68.pn312 = phi { ptr, i32 } [ %.pn68.pn313, %bb.cs ], [ %i.ou, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229 ], [ %i.ou, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227 ]
  invoke void @__cxa_end_catch()
          to label %bb.dd unwind label %bb.di

bb.cu:                                            ; preds = %bb.aw, %_ZN5boost15program_options6detail7cmdlineD2Ev.exit218, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost15program_options13variables_mapE, i64 16), ptr %11, align 8, !tbaa !39
  %i.pl = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.pm = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !90
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.pl, ptr noundef %i.pn)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.po = landingpad { ptr, i32 }
          catch ptr null
  %i.pp = extractvalue { ptr, i32 } %i.po, 0
  call void @__clang_call_terminate(ptr %i.pp) #35
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i: ; preds = %bb.cu
  %i.pq = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.pr = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !90
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.pq, ptr noundef %i.ps)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i unwind label %bb.cw

bb.cw:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  %i.pt = landingpad { ptr, i32 }
          catch ptr null
  %i.pu = extractvalue { ptr, i32 } %i.pt, 0
  call void @__clang_call_terminate(ptr %i.pu) #35
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  %i.pv = load ptr, ptr %i.eh, align 8, !tbaa !90
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5boost15program_options14variable_valueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ed, ptr noundef %i.pv)
          to label %_ZN5boost15program_options13variables_mapD2Ev.exit unwind label %bb.cx

bb.cx:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i
  %i.pw = landingpad { ptr, i32 }
          catch ptr null
  %i.px = extractvalue { ptr, i32 } %i.pw, 0
  call void @__clang_call_terminate(ptr %i.px) #35
  unreachable

_ZN5boost15program_options13variables_mapD2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.py = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !106 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i.i230 = icmp eq ptr %i.pz, %i.qb
  br i1 %.not4.i.i.i.i230, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i238, label %.lr.ph.i.i.i.i231

.lr.ph.i.i.i.i231:                                ; preds = %_ZN5boost15program_options13variables_mapD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i234
  %.05.i.i.i.i232 = phi ptr [ %i.qh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i234 ], [ %i.pz, %_ZN5boost15program_options13variables_mapD2Ev.exit ] ; 3 uses
  %i.qc = load ptr, ptr %.05.i.i.i.i232, align 8, !tbaa !35 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i232, i64 16 ; 2 uses
  %i.qe = icmp eq ptr %i.qc, %i.qd
  br i1 %i.qe, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i233: ; preds = %.lr.ph.i.i.i.i231
  %i.qf = load i64, ptr %i.qd, align 8, !tbaa !36
  %i.qg = add i64 %i.qf, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qg) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i234

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i234: ; preds = %.lr.ph.i.i.i.i231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i233
  %i.qh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i232, i64 32 ; 2 uses
  %.not.i.i.i.i235 = icmp eq ptr %i.qh, %i.qb
  br i1 %.not.i.i.i.i235, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i236, label %.lr.ph.i.i.i.i231, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i236: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i234
  %.pr.i.i237 = load ptr, ptr %i.py, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i238

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i238: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i236, %_ZN5boost15program_options13variables_mapD2Ev.exit
  %i.qi = phi ptr [ %.pr.i.i237, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i236 ], [ %i.pz, %_ZN5boost15program_options13variables_mapD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i239 = icmp eq ptr %i.qi, null
  br i1 %.not.i.i1.i.i239, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.cy

bb.cy:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i238
  %i.qj = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !109
  %i.ql = ptrtoint ptr %i.qk to i64
  %i.qm = ptrtoint ptr %i.qi to i64
  %i.qn = sub i64 %i.ql, %i.qm
  call void @_ZdlPvm(ptr noundef nonnull %i.qi, i64 noundef %i.qn) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.cy, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i238
  %i.qo = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.qp = load i8, ptr %i.qo, align 8, !tbaa !242, !range !102, !noundef !103
  %i.qq = trunc nuw i8 %i.qp to i1
  br i1 %i.qq, label %bb.cz, label %_ZN5folly6detail15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

bb.cz:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.qr = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i8 0, ptr %i.qo, align 8, !tbaa !242
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !35 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.qu = icmp eq ptr %i.qs, %i.qt
  br i1 %i.qu, label %_ZN5folly6detail15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.cz
  %i.qv = load i64, ptr %i.qt, align 8, !tbaa !36
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qw) #36
  br label %_ZN5folly6detail15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

_ZN5folly6detail15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.qx = load ptr, ptr %10, align 8, !tbaa !238  ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !237 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.qx, %i.qz
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5folly6detail15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ra, %.lr.ph.i.i.i.i.i ], [ %i.qx, %_ZN5folly6detail15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i ] ; 2 uses
  call void @_ZN5boost15program_options12basic_optionIcED2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %.05.i.i.i.i.i) #33
  %i.ra = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i240 = icmp eq ptr %i.ra, %i.qz
  br i1 %.not.i.i.i.i.i240, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %10, align 8, !tbaa !238
  br label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN5folly6detail15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  %i.rb = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.qx, %_ZN5folly6detail15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.rb, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5folly28NestedCommandLineParseResultD2Ev.exit, label %bb.da

bb.da:                                            ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.rc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !241
  %i.re = ptrtoint ptr %i.rd to i64
  %i.rf = ptrtoint ptr %i.rb to i64
  %i.rg = sub i64 %i.re, %i.rf
  call void @_ZdlPvm(ptr noundef nonnull %i.rb, i64 noundef %i.rg) #36
  br label %_ZN5folly28NestedCommandLineParseResultD2Ev.exit

_ZN5folly28NestedCommandLineParseResultD2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.rh = load ptr, ptr %9, align 8, !tbaa !106   ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i242 = icmp eq ptr %i.rh, %i.rj
  br i1 %.not4.i.i.i242, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i250, label %.lr.ph.i.i.i243

.lr.ph.i.i.i243:                                  ; preds = %_ZN5folly28NestedCommandLineParseResultD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i246
  %.05.i.i.i244 = phi ptr [ %i.rp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i246 ], [ %i.rh, %_ZN5folly28NestedCommandLineParseResultD2Ev.exit ] ; 3 uses
  %i.rk = load ptr, ptr %.05.i.i.i244, align 8, !tbaa !35 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.05.i.i.i244, i64 16 ; 2 uses
  %i.rm = icmp eq ptr %i.rk, %i.rl
  br i1 %i.rm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i245: ; preds = %.lr.ph.i.i.i243
  %i.rn = load i64, ptr %i.rl, align 8, !tbaa !36
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.ro) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i246

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i246: ; preds = %.lr.ph.i.i.i243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i245
  %i.rp = getelementptr inbounds nuw i8, ptr %.05.i.i.i244, i64 32 ; 2 uses
  %.not.i.i.i247 = icmp eq ptr %i.rp, %i.rj
  br i1 %.not.i.i.i247, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i248, label %.lr.ph.i.i.i243, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i248: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i246
  %.pr.i249 = load ptr, ptr %9, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i250

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i250: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i248, %_ZN5folly28NestedCommandLineParseResultD2Ev.exit
  %i.rq = phi ptr [ %.pr.i249, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i248 ], [ %i.rh, %_ZN5folly28NestedCommandLineParseResultD2Ev.exit ] ; 3 uses
  %.not.i.i1.i251 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i1.i251, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit253, label %bb.db

bb.db:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i250
  %i.rr = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !109
  %i.rt = ptrtoint ptr %i.rs to i64
  %i.ru = ptrtoint ptr %i.rq to i64
  %i.rv = sub i64 %i.rt, %i.ru
  call void @_ZdlPvm(ptr noundef nonnull %i.rq, i64 noundef %i.rv) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit253

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit253: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i250, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.rw = load ptr, ptr %8, align 8, !tbaa !106   ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %8, i64 8
end_hunk_0
