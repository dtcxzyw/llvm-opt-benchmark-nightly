Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/nemotron-h-moe?download=true
inline.NumInlined: 164
inline.NumDeleted: 136
begin_hunk_0_@_ZN26llama_model_nemotron_h_moe9graph_mtpC2ERK11llama_modelRK16llm_graph_params:bb.a
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %.invoke

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef i32 @_ZNK13llama_hparams13n_embd_head_vEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.b, i32 noundef 0)
          to label %bb.c unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %i.f to i64
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !98, !nonnull !71, !align !99
  %i.i = invoke noundef i32 @_ZNK13llama_hparams13n_embd_head_kEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.h, i32 noundef 0)
          to label %bb.d unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.f, %i.i
  br i1 %i.j, label %bb.e, label %.invoke

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !98, !nonnull !71, !align !99
  %i.l = invoke noundef i32 @_ZNK13llama_hparams7n_layerEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.k)
          to label %bb.f unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 25 uses

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36512
  %i.n = sext i32 %i.l to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !103
  %i.p = getelementptr inbounds nuw [2552 x i8], ptr %i.o, i64 %i.n ; 24 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2360 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !111
  %.not157 = icmp eq ptr %i.r, null
  br i1 %.not157, label %.invoke, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 2392 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !112
  %.not158 = icmp eq ptr %i.t, null
  br i1 %.not158, label %.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 2400 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113
  %.not159 = icmp eq ptr %i.v, null
  br i1 %.not159, label %.invoke, label %bb.i

.invoke:                                          ; preds = %bb.br, %bb.bl, %bb.k, %bb.i, %bb.f, %bb.g, %bb.h, %bb.d, %bb.a
  %i.w = phi i32 [ 16, %bb.d ], [ 21, %bb.f ], [ 137, %bb.bl ], [ 13, %bb.a ], [ 22, %bb.i ], [ 26, %bb.k ], [ 21, %bb.h ], [ 21, %bb.g ], [ 150, %bb.br ]
  %i.x = phi ptr [ @.str.3, %bb.d ], [ @.str.4, %bb.f ], [ @.str.22, %bb.bl ], [ @.str.2, %bb.a ], [ @.str.5, %bb.i ], [ @.str.6, %bb.k ], [ @.str.4, %bb.h ], [ @.str.4, %bb.g ], [ @.str.24, %bb.br ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef %i.w, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.x) #16
          to label %.cont unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 520 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !114
  %.not160 = icmp eq ptr %i.z, null
  br i1 %.not160, label %.invoke, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 2384
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !115 ; 2 uses
  %.not161 = icmp eq ptr %i.ab, null
  br i1 %.not161, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 36136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !174 ; 2 uses
  %.not162 = icmp eq ptr %i.ad, null
  br i1 %.not162, label %.invoke, label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %i.ae = phi ptr [ %i.ad, %bb.k ], [ %i.ab, %bb.j ]
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !98, !nonnull !71, !align !99
  %i.ag = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #14
          to label %.noexc unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 9 uses

.noexc:                                           ; preds = %.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !175, !noalias !176
  %i.aj = tail call ptr @getenv(ptr noundef nonnull @.str.26) #17, !noalias !176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc
  %i.ak = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.aj, ptr noundef null, i32 noundef 10) #17, !noalias !176, !inline_history !88
  %i.al = trunc i64 %i.ak to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.noexc
  %i.am = phi i32 [ %i.al, %bb.l ], [ 0, %.noexc ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = zext i32 %i.ai to i64
  store i32 %i.am, ptr %i.an, align 8, !tbaa !178, !noalias !176
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV22llm_graph_input_embd_h, i64 16), ptr %i.ag, align 8, !tbaa !73, !noalias !176
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false), !noalias !176
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !180, !noalias !176
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 10 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !181
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !182
  %i.av = invoke ptr @ggml_new_tensor_1d(ptr noundef %i.as, i32 noundef 26, i64 noundef %i.au)
          to label %bb.n unwind label %_ZNKSt14default_deleteI22llm_graph_input_embd_hEclEPS0_.exit.i195 ; 2 uses

bb.n:                                             ; preds = %bb.m
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !183
  invoke void @ggml_set_input(ptr noundef %i.av)
          to label %bb.o unwind label %_ZNKSt14default_deleteI22llm_graph_input_embd_hEclEPS0_.exit.i195

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !181
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !98, !nonnull !71, !align !99
  %i.ay = invoke noundef i32 @_ZNK13llama_hparams10n_embd_inpEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.ax)
          to label %bb.p unwind label %_ZNKSt14default_deleteI22llm_graph_input_embd_hEclEPS0_.exit.i195

bb.p:                                             ; preds = %bb.o
  %i.az = zext i32 %i.ay to i64
  %i.ba = load i64, ptr %i.at, align 8, !tbaa !182
  %i.bb = invoke ptr @ggml_new_tensor_2d(ptr noundef %i.aw, i32 noundef 0, i64 noundef %i.az, i64 noundef %i.ba)
          to label %bb.q unwind label %_ZNKSt14default_deleteI22llm_graph_input_embd_hEclEPS0_.exit.i195 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !184
  invoke void @ggml_set_input(ptr noundef %i.bb)
          to label %bb.r unwind label %_ZNKSt14default_deleteI22llm_graph_input_embd_hEclEPS0_.exit.i195

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !185, !nonnull !71, !align !99
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !186
  %.not163 = icmp eq ptr %i.bg, null
  br i1 %.not163, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = load ptr, ptr %i.ar, align 8, !tbaa !181
  %i.bi = load ptr, ptr %i.ap, align 8, !tbaa !183
  %i.bj = invoke ptr @ggml_get_rows(ptr noundef %i.bh, ptr noundef nonnull %i.ae, ptr noundef %i.bi)
          to label %bb.u unwind label %_ZNKSt14default_deleteI22llm_graph_input_embd_hEclEPS0_.exit.i195

bb.t:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !184
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.0126 = phi ptr [ %i.bk, %bb.t ], [ %i.bj, %bb.s ] ; 2 uses
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.0126, ptr noundef nonnull @.str.7, i32 noundef %i.l)
          to label %bb.v unwind label %_ZNKSt14default_deleteI22llm_graph_input_embd_hEclEPS0_.exit.i195

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %i.ar, align 8, !tbaa !181
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !98, !nonnull !71, !align !99
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !187
  %i.bp = zext i32 %i.bo to i64
  %i.bq = load i64, ptr %i.at, align 8, !tbaa !182
  %i.br = invoke ptr @ggml_new_tensor_2d(ptr noundef %i.bl, i32 noundef 0, i64 noundef %i.bp, i64 noundef %i.bq)
          to label %bb.w unwind label %_ZNKSt14default_deleteI22llm_graph_input_embd_hEclEPS0_.exit.i195 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !188
  invoke void @ggml_set_input(ptr noundef %i.br)
          to label %bb.x unwind label %_ZNKSt14default_deleteI22llm_graph_input_embd_hEclEPS0_.exit.i195

bb.x:                                             ; preds = %bb.w
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !188
  %i.bu = invoke ptr @ggml_set_name(ptr noundef %i.bt, ptr noundef nonnull @.str.8)
          to label %bb.y unwind label %_ZNKSt14default_deleteI22llm_graph_input_embd_hEclEPS0_.exit.i195 ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !188
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !189
  store ptr %i.ag, ptr %3, align 8, !tbaa !192
  %i.by = invoke noundef ptr @_ZN16llm_graph_result9add_inputESt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(36772) %i.bx, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.z unwind label %bb.ax      ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.bz = load ptr, ptr %3, align 8, !tbaa !193   ; 3 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i

_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i: ; preds = %bb.z
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !73
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(12) %i.bz) #17, !inline_history !89
  br label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.z, %_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i
  %i.cd = invoke noundef ptr @_ZNK17llm_graph_context17build_inp_out_idsEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.aa unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 3 uses

bb.aa:                                            ; preds = %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !194, !nonnull !71, !align !99 ; 2 uses
  %i.cg = icmp eq ptr %i.cd, null                 ; 2 uses
  br i1 %i.cg, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 73
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !195, !range !196, !noundef !71
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 74
  %i.cl = load i8, ptr %i.ck, align 2, !tbaa !197, !range !196, !noundef !71
  %i.cm = trunc nuw i8 %i.cl to i1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %i.cn = phi i1 [ false, %bb.aa ], [ true, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.co = invoke noundef ptr @_ZNK17llm_graph_context17build_attn_inp_kvEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.ae unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.ae:                                            ; preds = %bb.ad
  %i.cp = load ptr, ptr %i.u, align 8, !tbaa !113
  %i.cq = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.bv, ptr noundef %i.cp, ptr noundef null, i32 noundef 1, i32 noundef %i.l)
          to label %bb.af unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cq, ptr noundef nonnull @.str.9, i32 noundef %i.l)
          to label %bb.ag unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.ag:                                            ; preds = %bb.af
  %i.cr = load ptr, ptr %i.s, align 8, !tbaa !112
  %i.cs = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.0126, ptr noundef %i.cr, ptr noundef null, i32 noundef 1, i32 noundef %i.l)
          to label %bb.ah unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cs, ptr noundef nonnull @.str.10, i32 noundef %i.l)
          to label %bb.ai unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.ai:                                            ; preds = %bb.ah
  %i.ct = load ptr, ptr %i.ar, align 8, !tbaa !181
  %i.cu = invoke ptr @ggml_concat(ptr noundef %i.ct, ptr noundef %i.cs, ptr noundef %i.cq, i32 noundef 0)
          to label %bb.aj unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cu, ptr noundef nonnull @.str.11, i32 noundef %i.l)
          to label %bb.ak unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.ak:                                            ; preds = %bb.aj
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !111
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 2368
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !198
  %i.cy = invoke noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cv, ptr noundef %i.cu, ptr noundef %i.cx)
          to label %bb.al unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 3 uses

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cy, ptr noundef nonnull @.str.12, i32 noundef %i.l)
          to label %bb.am unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.am:                                            ; preds = %bb.al
  %i.cz = load ptr, ptr %i.p, align 8, !tbaa !199
  %i.da = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cy, ptr noundef %i.cz, ptr noundef null, i32 noundef 1, i32 noundef %i.l)
          to label %bb.an unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 2 uses

bb.an:                                            ; preds = %bb.am
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.da, ptr noundef nonnull @.str.13, i32 noundef %i.l)
          to label %bb.ao unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !98, !nonnull !71, !align !99
  %i.dc = invoke noundef i32 @_ZNK13llama_hparams6n_headEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.db, i32 noundef %i.l)
          to label %bb.ap unwind label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !98, !nonnull !71, !align !99
  %i.de = invoke noundef i32 @_ZNK13llama_hparams9n_head_kvEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.dd, i32 noundef %i.l)
          to label %bb.aq unwind label %bb.ay

bb.aq:                                            ; preds = %bb.ap
  %i.df = zext i32 %i.dc to i64
  %i.dg = zext i32 %i.de to i64
  invoke void @_ZNK17llm_graph_context9build_qkvERK11llama_layerP11ggml_tensorllli(ptr dead_on_unwind nonnull writable sret(%struct.llm_graph_qkv) align 8 %4, ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(2552) %i.p, ptr noundef %i.da, i64 noundef %i.g, i64 noundef %i.df, i64 noundef %i.dg, i32 noundef %i.l)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !98, !nonnull !71, !align !99
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16764
  %i.dj = load float, ptr %i.di, align 4, !tbaa !200 ; 2 uses
  %i.dk = fcmp oeq float %i.dj, 0.000000e+00
  %i.dl = uitofp i32 %i.f to float
  %sqrt = call float @llvm.sqrt.f32(float %i.dl)
  %i.dm = fdiv float 1.000000e+00, %sqrt
  %i.dn = select i1 %i.dk, float %i.dm, float %i.dj
  %i.do = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !201
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 288
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !202
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 1248
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !203
  %i.du = load ptr, ptr %4, align 8, !tbaa !205
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !206
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !207
  %i.dz = invoke noundef ptr @_ZNK17llm_graph_context10build_attnEP23llm_graph_input_attn_kvP11ggml_tensorS3_S3_S3_S3_S3_S3_S3_S3_fi(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.co, ptr noundef %i.dp, ptr noundef %i.dr, ptr noundef %i.dt, ptr noundef %i.du, ptr noundef %i.dw, ptr noundef %i.dy, ptr noundef null, ptr noundef null, ptr noundef null, float noundef %i.dn, i32 noundef %i.l)
          to label %bb.as unwind label %bb.ay     ; 2 uses

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.dz, ptr noundef nonnull @.str.14, i32 noundef %i.l)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.ea = load ptr, ptr %i.ar, align 8, !tbaa !181
  %i.eb = invoke ptr @ggml_add(ptr noundef %i.ea, ptr noundef %i.dz, ptr noundef %i.cy)
          to label %bb.au unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 3 uses

bb.au:                                            ; preds = %bb.at
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.eb, ptr noundef nonnull @.str.15, i32 noundef %i.l)
          to label %bb.av unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.av:                                            ; preds = %bb.au
  br i1 %i.cn, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.ec = load ptr, ptr %i.ar, align 8, !tbaa !181
  %i.ed = invoke ptr @ggml_get_rows(ptr noundef %i.ec, ptr noundef %i.eb, ptr noundef %i.cd)
          to label %bb.az unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.ax:                                            ; preds = %bb.y
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load ptr, ptr %3, align 8, !tbaa !193   ; 3 uses
  %.not.i190 = icmp eq ptr %i.ef, null
  br i1 %.not.i190, label %_ZNSt10unique_ptrI22llm_graph_input_embd_hSt14default_deleteIS0_EED2Ev.exit196, label %_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i191

_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i191: ; preds = %bb.ax
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !73
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(12) %i.ef) #17, !inline_history !89
  br label %_ZNSt10unique_ptrI22llm_graph_input_embd_hSt14default_deleteIS0_EED2Ev.exit196

bb.ay:                                            ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.as, %bb.ar
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZNSt10unique_ptrI22llm_graph_input_embd_hSt14default_deleteIS0_EED2Ev.exit196

bb.az:                                            ; preds = %bb.aw, %bb.av
  %.0 = phi ptr [ %i.eb, %bb.av ], [ %i.ed, %bb.aw ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !208
  %i.em = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.0, ptr noundef %i.el, ptr noundef null, i32 noundef 1, i32 noundef %i.l)
          to label %bb.ba unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 4 uses

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.em, ptr noundef nonnull @.str.16, i32 noundef %i.l)
          to label %bb.bb unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.bb:                                            ; preds = %bb.ba
  %i.en = load ptr, ptr %i.y, align 8, !tbaa !114
  %i.eo = invoke noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.en, ptr noundef %i.em, ptr noundef null)
          to label %bb.bc unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.eo, ptr noundef nonnull @.str.17, i32 noundef %i.l)
          to label %bb.bd unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.bd:                                            ; preds = %bb.bc
  %i.ep = load ptr, ptr %i.y, align 8, !tbaa !114
  %i.eq = getelementptr inbounds nuw i8, ptr %i.p, i64 552
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !209
  %i.es = getelementptr inbounds nuw i8, ptr %i.p, i64 544
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !210
  %i.eu = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !211
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !212
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !213
  %i.fa = load ptr, ptr %i.a, align 8, !tbaa !98, !nonnull !71, !align !99 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 10392
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !214, !range !196, !noundef !71
  %i.fd = trunc nuw i8 %i.fc to i1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 10388
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !215
  %i.fg = getelementptr inbounds nuw i8, ptr %i.p, i64 624
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !216
  %i.fi = getelementptr inbounds nuw i8, ptr %i.p, i64 616
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !217
  %i.fk = invoke noundef ptr @_ZNK17llm_graph_context13build_moe_ffnEP11ggml_tensorS1_S1_S1_S1_S1_ll15llm_ffn_op_typebf29llama_expert_gating_func_typeiS1_S1_S1_S1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.em, ptr noundef %i.ep, ptr noundef %i.er, ptr noundef null, ptr noundef %i.et, ptr noundef %i.ev, i64 noundef %i.ex, i64 noundef %i.ez, i32 noundef 4, i1 noundef zeroext %i.fd, float noundef %i.ff, i32 noundef 2, i32 noundef %i.l, ptr noundef %i.eo, ptr noundef null, ptr noundef %i.fh, ptr noundef null, ptr noundef %i.fj, ptr noundef null)
          to label %bb.be unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 2 uses

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.fk, ptr noundef nonnull @.str.18, i32 noundef %i.l)
          to label %bb.bf unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.bf:                                            ; preds = %bb.be
  %i.fl = getelementptr inbounds nuw i8, ptr %i.p, i64 672
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !218
  %i.fn = getelementptr inbounds nuw i8, ptr %i.p, i64 1304
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !219
  %i.fp = getelementptr inbounds nuw i8, ptr %i.p, i64 664
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !220
  %i.fr = getelementptr inbounds nuw i8, ptr %i.p, i64 1312
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !221
  %i.ft = invoke noundef ptr @_ZNK17llm_graph_context9build_ffnEP11ggml_tensorS1_S1_S1_S1_S1_S1_S1_S1_S1_S1_15llm_ffn_op_type17llm_ffn_gate_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.em, ptr noundef %i.fm, ptr noundef null, ptr noundef %i.fo, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %i.fq, ptr noundef null, ptr noundef %i.fs, ptr noundef null, i32 noundef 4, i32 noundef 1, i32 noundef %i.l)
          to label %bb.bg unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ft, ptr noundef nonnull @.str.19, i32 noundef %i.l)
          to label %bb.bh unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.bh:                                            ; preds = %bb.bg
  %i.fu = load ptr, ptr %i.ar, align 8, !tbaa !181
  %i.fv = invoke ptr @ggml_add(ptr noundef %i.fu, ptr noundef %i.fk, ptr noundef %i.ft)
          to label %bb.bi unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.fv, ptr noundef nonnull @.str.20, i32 noundef %i.l)
          to label %bb.bj unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.bj:                                            ; preds = %bb.bi
  %i.fw = load ptr, ptr %i.ar, align 8, !tbaa !181
  %i.fx = invoke ptr @ggml_add(ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %.0)
          to label %bb.bk unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.fx, ptr noundef nonnull @.str.21, i32 noundef %i.l)
          to label %bb.bl unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.bl:                                            ; preds = %bb.bk
  %i.fy = getelementptr inbounds nuw i8, ptr %i.p, i64 2432
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !222 ; 2 uses
  %.not168 = icmp eq ptr %i.fz, null
  br i1 %.not168, label %.invoke, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ga = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.fx, ptr noundef nonnull %i.fz, ptr noundef null, i32 noundef 0, i32 noundef -1)
          to label %bb.bn unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 4 uses

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ga, ptr noundef nonnull @.str.23, i32 noundef -1)
          to label %bb.bo unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.bo:                                            ; preds = %bb.bn
  %i.gb = load ptr, ptr %i.bw, align 8, !tbaa !189
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !249
  %or.cond.not = or i1 %i.cg, %i.cn
  br i1 %or.cond.not, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gd = load ptr, ptr %i.ar, align 8, !tbaa !181
  %i.ge = invoke ptr @ggml_get_rows(ptr noundef %i.gd, ptr noundef %i.ga, ptr noundef nonnull %i.cd)
          to label %bb.bq unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.1 = phi ptr [ %i.ga, %bb.bo ], [ %i.ge, %bb.bp ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.p, i64 2408
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !250 ; 2 uses
  %.not.a = icmp eq ptr %i.gg, null
  br i1 %.not.a, label %bb.br, label %.thread210

.thread210:                                       ; preds = %bb.bq
  %i.gh = getelementptr inbounds nuw i8, ptr %i.p, i64 2416
  br label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 36200
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !251 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 36224
  %.not171 = icmp eq ptr %i.gj, null
  br i1 %.not171, label %.invoke, label %bb.bs

bb.bs:                                            ; preds = %.thread210, %bb.br
  %.in213 = phi ptr [ %i.gh, %.thread210 ], [ %5, %bb.br ]
  %i.gk = phi ptr [ %i.gg, %.thread210 ], [ %i.gj, %bb.br ]
  %i.gl = load ptr, ptr %.in213, align 8, !tbaa !252
  %i.gm = invoke noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.gk, ptr noundef %.1, ptr noundef %i.gl)
          to label %bb.bt unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ; 3 uses

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.gm, ptr noundef nonnull @.str.25, i32 noundef -1)
          to label %bb.bu unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

bb.bu:                                            ; preds = %bb.bt
  %i.gn = load ptr, ptr %i.bw, align 8, !tbaa !189
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store ptr %i.gm, ptr %i.go, align 8, !tbaa !253
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !254
  invoke void @ggml_build_forward_expand(ptr noundef %i.gq, ptr noundef %i.gm)
          to label %_ZNSt10unique_ptrI22llm_graph_input_embd_hSt14default_deleteIS0_EED2Ev.exit unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219

_ZNSt10unique_ptrI22llm_graph_input_embd_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.bu
  ret void

_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219: ; preds = %.invoke, %.thread, %bb.c, %bb.b, %bb.e, %bb.bu, %bb.bt, %bb.bs, %bb.bp, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.aw, %bb.au, %bb.at, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI22llm_graph_input_embd_hSt14default_deleteIS0_EED2Ev.exit196

_ZNKSt14default_deleteI22llm_graph_input_embd_hEclEPS0_.exit.i195: ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.x, %bb.w, %bb.v, %bb.u, %bb.s
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.gr = load ptr, ptr %i.ag, align 8, !tbaa !73
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  tail call void %i.gt(ptr noundef nonnull align 8 dereferenceable(48) %i.ag) #17, !inline_history !90
  br label %_ZNSt10unique_ptrI22llm_graph_input_embd_hSt14default_deleteIS0_EED2Ev.exit196

_ZNSt10unique_ptrI22llm_graph_input_embd_hSt14default_deleteIS0_EED2Ev.exit196: ; preds = %_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i191, %bb.ax, %bb.ay, %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219, %_ZNKSt14default_deleteI22llm_graph_input_embd_hEclEPS0_.exit.i195
  %.pn172.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.ay ], [ %i.ee, %bb.ax ], [ %lpad.thr_comm.split-lp, %_ZNKSt14default_deleteI22llm_graph_input_embd_hEclEPS0_.exit.i195 ], [ %lpad.thr_comm, %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit192.thread219 ], [ %i.ee, %_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i191 ]
  call void @_ZN17llm_graph_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #17
  resume { ptr, i32 } %.pn172.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN17llm_graph_contextC2ERK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(36496)) unnamed_addr #2

; Function Attrs: noreturn
declare void @ggml_abort(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZNK13llama_hparams13n_embd_head_vEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK13llama_hparams13n_embd_head_kEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK13llama_hparams7n_layerEv(ptr noundef nonnull align 8 dereferenceable(36056)) local_unnamed_addr #2

declare ptr @ggml_new_tensor_1d(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @ggml_set_input(ptr noundef) local_unnamed_addr #2

declare ptr @ggml_new_tensor_2d(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK13llama_hparams10n_embd_inpEv(ptr noundef nonnull align 8 dereferenceable(36056)) local_unnamed_addr #2

declare ptr @ggml_get_rows(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ggml_set_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN16llm_graph_result9add_inputESt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(36772), ptr nofreeobj noundef align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNK17llm_graph_context17build_inp_out_idsEv(ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #2

declare noundef ptr @_ZNK17llm_graph_context17build_attn_inp_kvEv(ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #2

declare noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ggml_concat(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK17llm_graph_context9build_qkvERK11llama_layerP11ggml_tensorllli(ptr dead_on_unwind writable sret(%struct.llm_graph_qkv) align 8, ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(2552), ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK13llama_hparams6n_headEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK13llama_hparams9n_head_kvEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK17llm_graph_context10build_attnEP23llm_graph_input_attn_kvP11ggml_tensorS3_S3_S3_S3_S3_S3_S3_S3_fi(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ggml_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK17llm_graph_context13build_moe_ffnEP11ggml_tensorS1_S1_S1_S1_S1_ll15llm_ffn_op_typebf29llama_expert_gating_func_typeiS1_S1_S1_S1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, float noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK17llm_graph_context9build_ffnEP11ggml_tensorS1_S1_S1_S1_S1_S1_S1_S1_S1_S1_15llm_ffn_op_type17llm_ffn_gate_typei(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ggml_build_forward_expand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11llama_modelD2Ev(ptr noundef nonnull align 8 dead_on_return(36840) dereferenceable(36840)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN26llama_model_nemotron_h_moeD0Ev(ptr noundef nonnull align 8 dereferenceable(36884) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN11llama_modelD2Ev(ptr noundef nonnull align 8 dead_on_return(36884) dereferenceable(36884) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 36888) #15
  ret void
}

declare void @_ZN16llama_model_base10load_statsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #2

declare void @_ZN16llama_model_base12load_hparamsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #2

declare void @_ZN16llama_model_base10load_vocabER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #2

declare noundef zeroext i1 @_ZN16llama_model_base12load_tensorsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #2

declare void @_ZN22llama_model_nemotron_h17load_arch_hparamsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #2

declare void @_ZN22llama_model_nemotron_h17load_arch_tensorsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN17llm_graph_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV17llm_graph_context, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS1_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #18
  unreachable

_ZNSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS1_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN26llama_model_nemotron_h_moe9graph_mtpD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV17llm_graph_context, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN17llm_graph_contextD2Ev.exit unwind label %bb.b, !inline_history !75

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #18, !inline_history !75
  unreachable

_ZN17llm_graph_contextD2Ev.exit:                  ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN17llm_graph_contextD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV17llm_graph_context, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN17llm_graph_contextD2Ev.exit unwind label %bb.b, !inline_history !75

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #18, !inline_history !75
  unreachable

_ZN17llm_graph_contextD2Ev.exit:                  ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !257  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #15
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !255
end_hunk_0
