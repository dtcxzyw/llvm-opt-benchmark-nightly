Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-grammar?download=true
inline.NumInlined: 6546
inline.NumDeleted: 2506
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_Z23llama_grammar_init_implPK11llama_vocabPKcS3_bPS3_mPKim:bb.a
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #34
          to label %.noexc126 unwind label %.loopexit263 ; 4 uses

.noexc126:                                        ; preds = %_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 2 uses
  %i.ee = load i64, ptr %storemerge295, align 4
  store i64 %i.ee, ptr %i.ed, align 4
  %i.ef = icmp sgt i64 %i.du, 0
  br i1 %i.ef, label %bb.af, label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.af:                                            ; preds = %.noexc126
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ec, ptr align 4 %i.dr, i64 %i.du, i1 false)
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.af, %.noexc126
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.du) #31
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.ec, ptr %.phi.trans.insert, align 8, !tbaa !87
  store ptr %i.eg, ptr %.phi.trans.insert334, align 8, !tbaa !89
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.eh, ptr %i.dl, align 8, !tbaa !88
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.ac
  %i.ei = phi ptr [ %i.eg, %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.dq, %bb.ac ]
  %i.ej = getelementptr inbounds nuw i8, ptr %storemerge295, i64 8 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !116
  %.not93 = icmp eq i32 %i.ek, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph, !llvm.loop !544

.loopexit263:                                     ; preds = %_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit265 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp264:                            ; preds = %bb.ae
  %lpad.loopexit.split-lp266 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

._crit_edge:                                      ; preds = %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backERKS0_.exit, %.lr.ph298
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.049296 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !89 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.en, %i.ep
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  store i64 0, ptr %i.en, align 4
  %i.eq = load ptr, ptr %i.em, align 8, !tbaa !89
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %i.er, ptr %i.em, align 8, !tbaa !89
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backEOS0_.exit

bb.ai:                                            ; preds = %._crit_edge
  %i.es = load ptr, ptr %i.el, align 8, !tbaa !87 ; 4 uses
  %i.et = ptrtoint ptr %i.en to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 6 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775800
  br i1 %i.ew, label %bb.aj, label %_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #32
          to label %.noexc129 unwind label %.loopexit.split-lp269

.noexc129:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.ex = ashr exact i64 %i.ev, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i127 = call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ey = add nsw i64 %.sroa.speculated.i.i.i.i127, %i.ex ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  %i.fa = call i64 @llvm.umin.i64(i64 %i.ey, i64 1152921504606846975)
  %i.fb = select i1 %i.ez, i64 1152921504606846975, i64 %i.fa ; 3 uses
  %.not.i.i.i.i128 = icmp ne i64 %i.fb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i128)
  %i.fc = shl nuw nsw i64 %i.fb, 3
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #34
          to label %.noexc130 unwind label %.loopexit268 ; 4 uses

.noexc130:                                        ; preds = %_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %i.ev ; 2 uses
  store i64 0, ptr %i.fe, align 4
  %i.ff = icmp sgt i64 %i.ev, 0
  br i1 %i.ff, label %bb.ak, label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.ak:                                            ; preds = %.noexc130
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr align 4 %i.es, i64 %i.ev, i1 false)
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.ak, %.noexc130
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ev) #31
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.fd, ptr %i.el, align 8, !tbaa !87
  store ptr %i.fg, ptr %i.em, align 8, !tbaa !89
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  store ptr %i.fh, ptr %i.eo, align 8, !tbaa !88
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.ah
  %i.fi = add nuw i64 %.049296, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fi, %i.bc
  br i1 %exitcond.not, label %._crit_edge299, label %.lr.ph298, !llvm.loop !545

.loopexit268:                                     ; preds = %_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit270 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp269:                            ; preds = %bb.aj
  %lpad.loopexit.split-lp271 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.am:                                            ; preds = %._crit_edge299
  %i.fj = lshr i64 %i.cw, 6                       ; 10 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fj
  store ptr %i.fk, ptr %i.cv, align 8, !tbaa !152
  store ptr %i.cz, ptr %13, align 8
  store i32 0, ptr %i.cs, align 8
  %i.fl = lshr i64 %i.bc, 6                       ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fl
  %i.fn = trunc i64 %i.bc to i32
  %i.fo = and i32 %i.fn, 63                       ; 3 uses
  store ptr %i.fm, ptr %i.ct, align 8
  store i32 %i.fo, ptr %i.cu, align 8
  %.idx.i.i = shl nuw nsw i64 %i.fj, 3            ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cz, i8 0, i64 %.idx.i.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #34
          to label %bb.an unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit195.thread ; 6 uses

bb.an:                                            ; preds = %bb.am
  %i.fq = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fj
  store ptr %i.fu, ptr %i.fq, align 8, !tbaa !152
  store ptr %i.fp, ptr %14, align 8
  store i32 0, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fl
  store ptr %i.fv, ptr %i.fs, align 8
  store i32 %i.fo, ptr %i.fr, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fp, i8 0, i64 %.idx.i.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #34
          to label %.lr.ph302.preheader unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit193.thread ; 6 uses

.lr.ph302.preheader:                              ; preds = %bb.an
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fj
  store ptr %i.gb, ptr %i.fx, align 8, !tbaa !152
  store ptr %i.fw, ptr %15, align 8
  store i32 0, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fl
  store ptr %i.gc, ptr %i.fz, align 8
  store i32 %i.fo, ptr %i.fy, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fw, i8 0, i64 %.idx.i.i, i1 false)
  br label %.lr.ph302

bb.ao:                                            ; preds = %._crit_edge299
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit197

_ZNSt13_Bvector_baseISaIbEED2Ev.exit195.thread:   ; preds = %bb.am
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.cj

_ZNSt13_Bvector_baseISaIbEED2Ev.exit193.thread:   ; preds = %bb.an
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit195

.lr.ph302:                                        ; preds = %.lr.ph302.preheader, %bb.ar
  %.048301 = phi i64 [ %i.gn, %bb.ar ], [ 0, %.lr.ph302.preheader ] ; 5 uses
  %20 = lshr i64 %.048301, 6
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %20
  %i.gh = and i64 %.048301, 63
  %i.gi = shl nuw i64 1, %i.gh
  %i.gj = load i64, ptr %i.gg, align 8, !tbaa !73
  %i.gk = and i64 %i.gj, %i.gi
  %.not256 = icmp eq i64 %i.gk, 0
  br i1 %.not256, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %.lr.ph302
  %i.gl = call fastcc noundef zeroext i1 @_ZL35llama_grammar_detect_left_recursionRKSt6vectorIS_I21llama_grammar_elementSaIS0_EESaIS2_EEmPS_IbSaIbEES9_S9_(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %.048301, ptr noundef %13, ptr noundef %14, ptr noundef %15)
  br i1 %i.gl, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.18, i64 noundef %.048301)
          to label %.thread399 unwind label %.thread407

.thread407:                                       ; preds = %bb.aq
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit193

bb.ar:                                            ; preds = %bb.ap, %.lr.ph302
  %i.gn = add nuw i64 %.048301, 1                 ; 2 uses
  %exitcond325.not = icmp eq i64 %i.gn, %i.bc
  br i1 %exitcond325.not, label %.critedge, label %.lr.ph302, !llvm.loop !546

.critedge:                                        ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.ch
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !87
  %i.gq = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit152, %.critedge
  %.0245 = phi ptr [ %i.gp, %.critedge ], [ %spec.select, %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit152 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.val102 = load i32, ptr %.0245, align 4, !tbaa !116
  %switch.selectcmp.i = icmp ult i32 %.val102, 2
  br i1 %switch.selectcmp.i, label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit, label %_ZNKSt6vectorIPK21llama_grammar_elementSaIS2_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIPK21llama_grammar_elementSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.as
  %i.gs = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %.noexc148 unwind label %bb.at ; 3 uses

.noexc148:                                        ; preds = %_ZNKSt6vectorIPK21llama_grammar_elementSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %.0245, ptr %i.gs, align 8, !tbaa !113
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  store ptr %i.gs, ptr %17, align 8, !tbaa !129
  store ptr %i.gt, ptr %i.gq, align 8, !tbaa !130
  store ptr %i.gt, ptr %i.gr, align 8, !tbaa !131
  br label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit

bb.at:                                            ; preds = %_ZNKSt6vectorIPK21llama_grammar_elementSaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit
  %lpad.loopexit260 = landingpad { ptr, i32 }
          cleanup
  %.pre336 = load ptr, ptr %17, align 8, !tbaa !129 ; 3 uses
  %.not.i.i.i149 = icmp eq ptr %.pre336, null
  br i1 %.not.i.i.i149, label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gu = load ptr, ptr %i.gr, align 8, !tbaa !131
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %.pre336 to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.pre336, i64 noundef %i.gx) #31
  br label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit

_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.ci

_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc148, %bb.as
  invoke fastcc void @_ZL27llama_grammar_advance_stackRKSt6vectorIS_I21llama_grammar_elementSaIS0_EESaIS2_EERKS_IPKS0_SaIS8_EERS_ISA_SaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %.preheader257 unwind label %bb.at

.preheader257:                                    ; preds = %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit, %.preheader257
  %.1246 = phi ptr [ %i.gy, %.preheader257 ], [ %.0245, %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.val = load i32, ptr %.1246, align 4, !tbaa !116 ; 2 uses
  %switch.selectcmp.i150 = icmp ult i32 %.val, 2
  %i.gy = getelementptr inbounds nuw i8, ptr %.1246, i64 8
  br i1 %switch.selectcmp.i150, label %bb.av, label %.preheader257, !llvm.loop !547

bb.av:                                            ; preds = %.preheader257
  %i.gz = icmp eq i32 %.val, 1                    ; 2 uses
  %spec.select.idx = select i1 %i.gz, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.1246, i64 %spec.select.idx
  %i.ha = load ptr, ptr %17, align 8, !tbaa !129  ; 3 uses
  %.not.i.i.i151 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i151, label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit152, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hb = load ptr, ptr %i.gr, align 8, !tbaa !131
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.he) #31
  br label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit152

_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit152: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br i1 %i.gz, label %bb.as, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit152
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %.not316 = icmp eq i64 %7, 0
  br i1 %.not316, label %.preheader, label %.lr.ph308

.lr.ph308:                                        ; preds = %bb.ax
  %.not85 = icmp eq ptr %6, null
  br i1 %.not85, label %.split.us, label %.lr.ph308.split

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.ax
  %.sroa.0202.0.lcssa = phi ptr [ null, %bb.ax ], [ %.sroa.0202.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.ax ], [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.14.0.lcssa = phi ptr [ null, %bb.ax ], [ %.sroa.14.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %.not317 = icmp eq i64 %5, 0
  br i1 %.not317, label %._crit_edge314, label %.lr.ph313

.lr.ph313:                                        ; preds = %.preheader
  %.not81 = icmp eq ptr %4, null
  %i.hf = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %19, i64 24
  br i1 %.not81, label %bb.be, label %.lr.ph313.split

.lr.ph308.split:                                  ; preds = %.lr.ph308, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.047306 = phi i64 [ %i.ib, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %.lr.ph308 ] ; 2 uses
  %.sroa.14.0305 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %.lr.ph308 ] ; 5 uses
  %.sroa.10.0304 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %.lr.ph308 ] ; 3 uses
  %.sroa.0202.0303 = phi ptr [ %.sroa.0202.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %.lr.ph308 ] ; 7 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.047306 ; 2 uses
  %.not.i153 = icmp eq ptr %.sroa.10.0304, %.sroa.14.0305
  br i1 %.not.i153, label %bb.ba, label %bb.az

.split.us:                                        ; preds = %.lr.ph308
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.19, i32 noundef 1289, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #32
          to label %bb.ay unwind label %.loopexit.split-lp

bb.ay:                                            ; preds = %.split.us
  unreachable

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.loopexit.split-lp:                               ; preds = %.split.us, %bb.bb
  %.sroa.0202.0287 = phi ptr [ null, %.split.us ], [ %.sroa.0202.0303, %bb.bb ]
  %.sroa.14.0278 = phi ptr [ null, %.split.us ], [ %.sroa.14.0305, %bb.bb ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.az:                                            ; preds = %.lr.ph308.split
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !71
  store i32 %i.hl, ptr %.sroa.10.0304, align 4, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ba:                                            ; preds = %.lr.ph308.split
  %i.hm = ptrtoint ptr %.sroa.14.0305 to i64
  %i.hn = ptrtoint ptr %.sroa.0202.0303 to i64
  %i.ho = sub i64 %i.hm, %i.hn                    ; 6 uses
  %i.hp = icmp eq i64 %i.ho, 9223372036854775804
  br i1 %i.hp, label %bb.bb, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #32
          to label %.noexc157 unwind label %.loopexit.split-lp

.noexc157:                                        ; preds = %bb.bb
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ba
  %i.hq = ashr exact i64 %i.ho, 2                 ; 3 uses
  %.sroa.speculated.i.i.i154 = call i64 @llvm.umax.i64(i64 %i.hq, i64 1)
  %i.hr = add nsw i64 %.sroa.speculated.i.i.i154, %i.hq ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.hq
  %i.ht = call i64 @llvm.umin.i64(i64 %i.hr, i64 2305843009213693951)
  %i.hu = select i1 %i.hs, i64 2305843009213693951, i64 %i.ht ; 3 uses
  %.not.i.i.i155 = icmp ne i64 %i.hu, 0
  call void @llvm.assume(i1 %.not.i.i.i155)
  %i.hv = shl nuw nsw i64 %i.hu, 2
  %i.hw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hv) #34
          to label %.noexc158 unwind label %.loopexit ; 4 uses

.noexc158:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %i.ho ; 2 uses
  %i.hy = load i32, ptr %i.hk, align 4, !tbaa !71
  store i32 %i.hy, ptr %i.hx, align 4, !tbaa !71
  %i.hz = icmp sgt i64 %i.ho, 0
  br i1 %i.hz, label %bb.bc, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.bc:                                            ; preds = %.noexc158
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hw, ptr align 4 %.sroa.0202.0303, i64 %i.ho, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.bc, %.noexc158
  %.not.i17.i.i156 = icmp eq ptr %.sroa.0202.0303, null
end_hunk_0
