Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/NestedCommandLineApp?download=true
inline.NumInlined: 1558
inline.NumDeleted: 720
begin_hunk_0_@_ZN5folly20NestedCommandLineApp5doRunERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  %.05.i.i.i180 = phi ptr [ %i.mi, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182 ], [ %i.mb, %_ZNKSt8functionIFvRKN5boost15program_options13variables_mapERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEEclES4_SF_.exit ] ; 3 uses
  %i.md = load ptr, ptr %.05.i.i.i180, align 8, !tbaa !82 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.05.i.i.i180, i64 16 ; 2 uses
  %i.mf = icmp eq ptr %i.md, %i.me
  br i1 %i.mf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i181: ; preds = %.lr.ph.i.i.i179
  %i.mg = load i64, ptr %i.me, align 8, !tbaa !83
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mh) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182: ; preds = %.lr.ph.i.i.i179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i181
  %i.mi = getelementptr inbounds nuw i8, ptr %.05.i.i.i180, i64 32 ; 2 uses
  %.not.i.i.i183 = icmp eq ptr %i.mi, %i.mc
  br i1 %.not.i.i.i183, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i184, label %.lr.ph.i.i.i179, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i184: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182
  %.pr.i185 = load ptr, ptr %19, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i186

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i186: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i184, %_ZNKSt8functionIFvRKN5boost15program_options13variables_mapERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEEclES4_SF_.exit
  %i.mj = phi ptr [ %.pr.i185, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i184 ], [ %i.mb, %_ZNKSt8functionIFvRKN5boost15program_options13variables_mapERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEEclES4_SF_.exit ] ; 3 uses
  %.not.i.i1.i187 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i1.i187, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit189, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i186
  %i.mk = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !156
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = ptrtoint ptr %i.mj to i64
  %i.mo = sub i64 %i.mm, %i.mn
  call void @_ZdlPvm(ptr noundef nonnull %i.mj, i64 noundef %i.mo) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit189

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit189: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i186, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.mp = load ptr, ptr %18, align 8, !tbaa !213  ; 3 uses
  %i.mq = load ptr, ptr %i.jd, align 8, !tbaa !212 ; 2 uses
  %.not4.i.i.i.i190 = icmp eq ptr %i.mp, %i.mq
  br i1 %.not4.i.i.i.i190, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i191

.lr.ph.i.i.i.i191:                                ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit189, %.lr.ph.i.i.i.i191
  %.05.i.i.i.i192 = phi ptr [ %i.mr, %.lr.ph.i.i.i.i191 ], [ %i.mp, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit189 ] ; 2 uses
  call void @_ZN5boost15program_options12basic_optionIcED2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %.05.i.i.i.i192) #32
  %i.mr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i192, i64 96 ; 2 uses
  %.not.i.i.i.i193 = icmp eq ptr %i.mr, %i.mq
  br i1 %.not.i.i.i.i193, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i191, !llvm.loop !6

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i191
  %.pr.i.i194 = load ptr, ptr %18, align 8, !tbaa !213
  br label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit189
  %i.ms = phi ptr [ %.pr.i.i194, %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.mp, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit189 ] ; 3 uses
  %.not.i.i1.i.i195 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i1.i.i195, label %_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !216
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mx) #35
  br label %_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit

_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.my = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i196 = icmp eq ptr %i.mz, null
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = trunc i64 %i.na to i1
  %or.cond.i.i197 = or i1 %.not.i.i.i196, %i.nb
  br i1 %or.cond.i.i197, label %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit.i199, label %bb.cf

bb.cf:                                            ; preds = %_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit
  %i.nc = load ptr, ptr %i.mz, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i198 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i.i198, label %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit.i199, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nd = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 2 uses
  invoke void %i.nc(ptr noundef nonnull align 8 dereferenceable(24) %i.nd, ptr noundef nonnull align 8 dereferenceable(24) %i.nd, i32 noundef 2)
          to label %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit.i199 unwind label %bb.ch, !inline_history !4

bb.ch:                                            ; preds = %bb.cg
  %i.ne = landingpad { ptr, i32 }
          catch ptr null
  %i.nf = extractvalue { ptr, i32 } %i.ne, 0
  call void @__clang_call_terminate(ptr %i.nf) #34
  unreachable

_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit.i199: ; preds = %bb.cg, %bb.cf, %_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit
  %i.ng = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !204 ; 3 uses
  %.not.i.i1.i200 = icmp eq ptr %i.nh, null
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = trunc i64 %i.ni to i1
  %or.cond.i2.i201 = or i1 %.not.i.i1.i200, %i.nj
  br i1 %or.cond.i2.i201, label %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i203, label %bb.ci

bb.ci:                                            ; preds = %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit.i199
  %i.nk = load ptr, ptr %i.nh, align 8, !tbaa !209 ; 2 uses
  %.not.i.i.i3.i202 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i3.i202, label %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i203, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nl = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  invoke void %i.nk(ptr noundef nonnull align 8 dereferenceable(24) %i.nl, ptr noundef nonnull align 8 dereferenceable(24) %i.nl, i32 noundef 2)
          to label %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i203 unwind label %bb.ck, !inline_history !5

bb.ck:                                            ; preds = %bb.cj
  %i.nm = landingpad { ptr, i32 }
          catch ptr null
  %i.nn = extractvalue { ptr, i32 } %i.nm, 0
  call void @__clang_call_terminate(ptr %i.nn) #34
  unreachable

_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i203: ; preds = %bb.cj, %bb.ci, %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit.i199
  %i.no = load ptr, ptr %16, align 8, !tbaa !153  ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !154 ; 2 uses
  %.not4.i.i.i.i204 = icmp eq ptr %i.no, %i.nq
  br i1 %.not4.i.i.i.i204, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i212, label %.lr.ph.i.i.i.i205

.lr.ph.i.i.i.i205:                                ; preds = %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i203, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i208
  %.05.i.i.i.i206 = phi ptr [ %i.nw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i208 ], [ %i.no, %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i203 ] ; 3 uses
  %i.nr = load ptr, ptr %.05.i.i.i.i206, align 8, !tbaa !82 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i206, i64 16 ; 2 uses
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i207: ; preds = %.lr.ph.i.i.i.i205
  %i.nu = load i64, ptr %i.ns, align 8, !tbaa !83
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nv) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i208

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i208: ; preds = %.lr.ph.i.i.i.i205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i207
  %i.nw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i206, i64 32 ; 2 uses
  %.not.i.i.i4.i209 = icmp eq ptr %i.nw, %i.nq
  br i1 %.not.i.i.i4.i209, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i210, label %.lr.ph.i.i.i.i205, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i210: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i208
  %.pr.i.i211 = load ptr, ptr %16, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i212

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i212: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i210, %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i203
  %i.nx = phi ptr [ %.pr.i.i211, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i210 ], [ %i.no, %_ZN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_ED2Ev.exit.i203 ] ; 3 uses
  %.not.i.i1.i.i213 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i1.i.i213, label %_ZN5boost15program_options6detail7cmdlineD2Ev.exit215, label %bb.cl

bb.cl:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i212
  %i.ny = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !156
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = ptrtoint ptr %i.nx to i64
  %i.oc = sub i64 %i.oa, %i.ob
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef %i.oc) #35
  br label %_ZN5boost15program_options6detail7cmdlineD2Ev.exit215

_ZN5boost15program_options6detail7cmdlineD2Ev.exit215: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i212, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.cu

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bw, %bb.cc, %bb.bx, %.invoke, %_ZN5boost15program_options20collect_unrecognizedIcEESt6vectorINSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEESaIS9_EERKS2_INS0_12basic_optionIS5_EESaISD_EENS0_25collect_unrecognized_modeE.exit, %bb.bz
  %lpad.loopexit.split-lp492 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options15required_optionE
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cb
  %.pn63.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp492, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lu, %bb.cb ]
  call void @_ZN5boost15program_options20basic_parsed_optionsIcED2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %18) #32
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ca
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn, %bb.cm ], [ %i.lt, %bb.ca ] ; 3 uses
  %.743 = extractvalue { ptr, i32 } %.pn63.pn.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.od = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost15program_options15required_optionE) #32
  %i.oe = icmp eq i32 %.743, %i.od
  br i1 %i.oe, label %bb.co, label %bb.dd

bb.co:                                            ; preds = %bb.cn
  %.7 = extractvalue { ptr, i32 } %.pn63.pn.pn.pn, 0
  %i.of = call ptr @__cxa_begin_catch(ptr %.7) #32
  %i.og = call ptr @__cxa_allocate_exception(i64 24) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  invoke void @_ZNK5boost15program_options22error_with_option_name25get_canonical_option_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(184) %i.of)
          to label %.noexc81 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.thread

.noexc81:                                         ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !402
  %i.oh = load ptr, ptr %21, align 8, !tbaa !82
  %i.oi = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !84
  store ptr %i.oh, ptr %5, align 16, !tbaa !83
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.oj, ptr %i.ok, align 8, !tbaa !83
  %i.ol = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.om = load ptr, ptr %0, align 8, !tbaa !82
  %i.on = load i64, ptr %i.a, align 8, !tbaa !84
  store ptr %i.om, ptr %i.ol, align 16, !tbaa !83
  %i.oo = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.on, ptr %i.oo, align 8, !tbaa !83
  %i.op = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.oq = load ptr, ptr %i.hi, align 8, !tbaa !82
  %i.or = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.os = load i64, ptr %i.or, align 8, !tbaa !84
  store ptr %i.oq, ptr %i.op, align 16, !tbaa !83
  %i.ot = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.os, ptr %i.ot, align 8, !tbaa !83
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr nonnull @.str.48, i64 59, i64 3549, ptr nonnull %5)
          to label %bb.cp unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.thread

bb.cp:                                            ; preds = %.noexc81
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !402
  invoke void @_ZN5folly11ProgramExitC1EiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(20) %i.og, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  invoke void @__cxa_throw(ptr nonnull %i.og, ptr nonnull @_ZTIN5folly11ProgramExitE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.dj unwind label %bb.cr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.thread: ; preds = %bb.co
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.0 = phi i1 [ false, %bb.cq ], [ true, %bb.cp ] ; 2 uses
  %i.ov = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ow = load ptr, ptr %20, align 8, !tbaa !82   ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.oy = icmp eq ptr %i.ow, %i.ox
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.cr
  %i.oz = load i64, ptr %i.ox, align 8, !tbaa !83
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.pa) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  %i.pb = load ptr, ptr %21, align 8, !tbaa !82   ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.pd = icmp eq ptr %i.pb, %i.pc
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.thread: ; preds = %.noexc81
  %i.pe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pf = load ptr, ptr %21, align 8, !tbaa !82   ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ph = icmp eq ptr %i.pf, %i.pg
  br i1 %i.ph, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.thread
  %i.pi = load i64, ptr %i.pg, align 8, !tbaa !83
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pj) #35
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %i.pk = load i64, ptr %i.pc, align 8, !tbaa !83
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pl) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br i1 %.0, label %bb.cs, label %bb.ct

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br i1 %.0, label %bb.cs, label %bb.ct

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.thread
  %.pn68.pn302.ph = phi { ptr, i32 } [ %i.pe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.thread ], [ %i.ou, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.thread ], [ %i.pe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.cs

bb.cs:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %.pn68.pn302 = phi { ptr, i32 } [ %i.ov, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.ov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.pn68.pn302.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.og) #32
  br label %bb.ct

bb.ct:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %.pn68.pn301 = phi { ptr, i32 } [ %.pn68.pn302, %bb.cs ], [ %i.ov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %i.ov, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ]
  invoke void @__cxa_end_catch()
          to label %bb.dd unwind label %bb.di

bb.cu:                                            ; preds = %bb.aw, %_ZN5boost15program_options6detail7cmdlineD2Ev.exit215, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost15program_options13variables_mapE, i64 16), ptr %11, align 8, !tbaa !86
  %i.pm = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.pn = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !137
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.pm, ptr noundef %i.po)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pp = landingpad { ptr, i32 }
          catch ptr null
  %i.pq = extractvalue { ptr, i32 } %i.pp, 0
  call void @__clang_call_terminate(ptr %i.pq) #34
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i: ; preds = %bb.cu
  %i.pr = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ps = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !137
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.pr, ptr noundef %i.pt)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i unwind label %bb.cw

bb.cw:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  %i.pu = landingpad { ptr, i32 }
          catch ptr null
  %i.pv = extractvalue { ptr, i32 } %i.pu, 0
  call void @__clang_call_terminate(ptr %i.pv) #34
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  %i.pw = load ptr, ptr %i.eh, align 8, !tbaa !137
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5boost15program_options14variable_valueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ed, ptr noundef %i.pw)
          to label %_ZN5boost15program_options13variables_mapD2Ev.exit unwind label %bb.cx

bb.cx:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i
  %i.px = landingpad { ptr, i32 }
          catch ptr null
  %i.py = extractvalue { ptr, i32 } %i.px, 0
  call void @__clang_call_terminate(ptr %i.py) #34
  unreachable

_ZN5boost15program_options13variables_mapD2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.pz = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !153 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !154 ; 2 uses
  %.not4.i.i.i.i223 = icmp eq ptr %i.qa, %i.qc
  br i1 %.not4.i.i.i.i223, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i231, label %.lr.ph.i.i.i.i224

.lr.ph.i.i.i.i224:                                ; preds = %_ZN5boost15program_options13variables_mapD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i227
  %.05.i.i.i.i225 = phi ptr [ %i.qi, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i227 ], [ %i.qa, %_ZN5boost15program_options13variables_mapD2Ev.exit ] ; 3 uses
  %i.qd = load ptr, ptr %.05.i.i.i.i225, align 8, !tbaa !82 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i225, i64 16 ; 2 uses
  %i.qf = icmp eq ptr %i.qd, %i.qe
  br i1 %i.qf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i226: ; preds = %.lr.ph.i.i.i.i224
  %i.qg = load i64, ptr %i.qe, align 8, !tbaa !83
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qh) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i227

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i227: ; preds = %.lr.ph.i.i.i.i224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i226
  %i.qi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i225, i64 32 ; 2 uses
  %.not.i.i.i.i228 = icmp eq ptr %i.qi, %i.qc
  br i1 %.not.i.i.i.i228, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i229, label %.lr.ph.i.i.i.i224, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i229: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i227
  %.pr.i.i230 = load ptr, ptr %i.pz, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i231

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i231: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i229, %_ZN5boost15program_options13variables_mapD2Ev.exit
  %i.qj = phi ptr [ %.pr.i.i230, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i229 ], [ %i.qa, %_ZN5boost15program_options13variables_mapD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i232 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i1.i.i232, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.cy

bb.cy:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i231
  %i.qk = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !156
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = ptrtoint ptr %i.qj to i64
  %i.qo = sub i64 %i.qm, %i.qn
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef %i.qo) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.cy, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i231
  %i.qp = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.qq = load i8, ptr %i.qp, align 8, !tbaa !217, !range !149, !noundef !150
  %i.qr = trunc nuw i8 %i.qq to i1
  br i1 %i.qr, label %bb.cz, label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

bb.cz:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.qs = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i8 0, ptr %i.qp, align 8, !tbaa !217
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !82 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.qv = icmp eq ptr %i.qt, %i.qu
  br i1 %i.qv, label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.cz
  %i.qw = load i64, ptr %i.qu, align 8, !tbaa !83
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qx) #35
  br label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.qy = load ptr, ptr %10, align 8, !tbaa !213  ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !212 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.qy, %i.ra
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.rb, %.lr.ph.i.i.i.i.i ], [ %i.qy, %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i ] ; 2 uses
  call void @_ZN5boost15program_options12basic_optionIcED2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %.05.i.i.i.i.i) #32
  %i.rb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i233 = icmp eq ptr %i.rb, %i.ra
  br i1 %.not.i.i.i.i.i233, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %10, align 8, !tbaa !213
  br label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  %i.rc = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.qy, %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.rc, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5folly28NestedCommandLineParseResultD2Ev.exit, label %bb.da

bb.da:                                            ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !216
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.rc to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %i.rc, i64 noundef %i.rh) #35
  br label %_ZN5folly28NestedCommandLineParseResultD2Ev.exit

_ZN5folly28NestedCommandLineParseResultD2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.ri = load ptr, ptr %9, align 8, !tbaa !153   ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !154 ; 2 uses
  %.not4.i.i.i235 = icmp eq ptr %i.ri, %i.rk
  br i1 %.not4.i.i.i235, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i243, label %.lr.ph.i.i.i236

.lr.ph.i.i.i236:                                  ; preds = %_ZN5folly28NestedCommandLineParseResultD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i239
  %.05.i.i.i237 = phi ptr [ %i.rq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i239 ], [ %i.ri, %_ZN5folly28NestedCommandLineParseResultD2Ev.exit ] ; 3 uses
  %i.rl = load ptr, ptr %.05.i.i.i237, align 8, !tbaa !82 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.05.i.i.i237, i64 16 ; 2 uses
  %i.rn = icmp eq ptr %i.rl, %i.rm
  br i1 %i.rn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i238: ; preds = %.lr.ph.i.i.i236
  %i.ro = load i64, ptr %i.rm, align 8, !tbaa !83
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rl, i64 noundef %i.rp) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i239

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i239: ; preds = %.lr.ph.i.i.i236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i238
  %i.rq = getelementptr inbounds nuw i8, ptr %.05.i.i.i237, i64 32 ; 2 uses
  %.not.i.i.i240 = icmp eq ptr %i.rq, %i.rk
  br i1 %.not.i.i.i240, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i241, label %.lr.ph.i.i.i236, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i241: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i239
  %.pr.i242 = load ptr, ptr %9, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i243

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i243: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i241, %_ZN5folly28NestedCommandLineParseResultD2Ev.exit
  %i.rr = phi ptr [ %.pr.i242, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i241 ], [ %i.ri, %_ZN5folly28NestedCommandLineParseResultD2Ev.exit ] ; 3 uses
  %.not.i.i1.i244 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i1.i244, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit246, label %bb.db

bb.db:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i243
  %i.rs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !156
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = ptrtoint ptr %i.rr to i64
  %i.rw = sub i64 %i.ru, %i.rv
  call void @_ZdlPvm(ptr noundef nonnull %i.rr, i64 noundef %i.rw) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit246

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit246: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i243, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.rx = load ptr, ptr %8, align 8, !tbaa !153   ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %8, i64 8
end_hunk_0
