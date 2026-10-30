Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/qwen4exp?download=true
inline.NumInlined: 828
inline.NumDeleted: 450
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN20llama_model_qwen4exp5graphC2ERK11llama_modelRK16llm_graph_params:bb.a
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !116
  %i.ab = invoke noundef ptr @_ZNK17llm_graph_context14build_inp_embdEP11ggml_tensor(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.aa)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ab, ptr noundef nonnull @.str.18, i32 noundef -1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !208
  invoke void @ggml_build_forward_expand(ptr noundef %i.ad, ptr noundef %i.ab)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.ae = invoke noundef ptr @_ZNK17llm_graph_context20build_inp_mem_hybridEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 208 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !494 ; 3 uses
  %i.ah = invoke noundef ptr @_ZNK31llama_memory_hybrid_idx_context7get_idxEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ag)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = invoke noundef i32 @_ZNK22llama_kv_cache_context8get_n_kvEv(ptr noundef nonnull align 8 dereferenceable(148) %i.ah)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !494
  %i.ak = invoke noundef ptr @_ZNK27llama_memory_hybrid_context8get_attnEv(ptr noundef nonnull align 8 dereferenceable(60) %i.aj)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.al = invoke noundef i32 @_ZNK22llama_kv_cache_context8get_n_kvEv(ptr noundef nonnull align 8 dereferenceable(148) %i.ak)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.am = icmp eq i32 %i.ai, %i.al
  br i1 %i.am, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 358, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.19) #19
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.l
  %i.an = invoke noundef ptr @_ZNK17llm_graph_context13build_inp_posEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.ao = invoke noundef ptr @_ZNK17llm_graph_context17build_inp_out_idsEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.u:                                             ; preds = %bb.t
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !190, !nonnull !191, !align !192
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 29224
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !219
  %.not114 = icmp eq i32 %i.ar, 0
  br i1 %.not114, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph13build_inp_pleEPK31llama_memory_hybrid_idx_context(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull %i.ag)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.at = load ptr, ptr %i.ac, align 8, !tbaa !208
  invoke void @ggml_build_forward_expand(ptr noundef %i.at, ptr noundef %i.as)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w, %bb.u
  %.097 = phi ptr [ %i.as, %bb.w ], [ null, %bb.u ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !195 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !194
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !220
  %i.ba = invoke ptr @ggml_reshape_3d(ptr noundef %i.av, ptr noundef %i.ab, i64 noundef %i.ax, i64 noundef 1, i64 noundef %i.az)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !194
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !220
  %i.bd = invoke ptr @ggml_repeat_4d(ptr noundef %i.av, ptr noundef %i.ba, i64 noundef %i.bb, i64 noundef %i.r, i64 noundef %i.bc, i64 noundef 1)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.bd, ptr noundef nonnull @.str.20, i32 noundef -1)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.z
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !495
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 36512 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bl = icmp ne ptr %i.ao, null
  br label %bb.aa

._crit_edge:                                      ; preds = %bb.aw, %.preheader
  %.095.lcssa = phi ptr [ %i.bd, %.preheader ], [ %i.ee, %bb.aw ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 36360
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !117
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 36368
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !118
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 36376
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !119
  %i.bs = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph12build_hc_mixEP11ggml_tensorS2_S2_S2_S2_PS2_i(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %.095.lcssa, ptr noundef %i.bn, ptr noundef %i.bp, ptr noundef %i.br, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.aa:                                            ; preds = %.lr.ph, %bb.aw
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aw ] ; 6 uses
  %.095127 = phi ptr [ %i.bd, %.lr.ph ], [ %i.ee, %bb.aw ] ; 3 uses
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !221
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !498
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv
  store ptr %.095127, ptr %i.bw, align 8, !tbaa !202
  %i.bx = load ptr, ptr %i.n, align 8, !tbaa !190, !nonnull !191, !align !192
  %i.by = trunc nuw nsw i64 %indvars.iv to i32    ; 12 uses
  %i.bz = invoke noundef zeroext i1 @_ZNK13llama_hparams6is_pleEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.bx, i32 noundef %i.by)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.bz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ca = load ptr, ptr %i.bi, align 8, !tbaa !499
  %i.cb = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph9build_pleEP18llm_graph_input_rsP11ggml_tensorS4_i(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %i.ca, ptr noundef %.097, ptr noundef %.095127, i32 noundef %i.by)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.aa, %bb.v, %bb.w, %bb.t, %bb.j, %bb.g, %bb.h, %bb.i, %bb.q, %bb.o, %bb.n, %bb.m, %bb.k, %bb.s, %._crit_edge, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.z, %bb.y, %bb.x
  %lpad.loopexit.split-lp133 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.196 = phi ptr [ %.095127, %bb.ab ], [ %i.cb, %bb.ac ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !202
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !124
  %i.cd = getelementptr inbounds nuw [2552 x i8], ptr %i.cc, i64 %indvars.iv ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1984
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !131
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 1992
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !132
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 2000
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !133
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 2008
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !134
  %i.cm = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph12build_hc_mixEP11ggml_tensorS2_S2_S2_S2_PS2_i(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %.196, ptr noundef %i.cf, ptr noundef %i.ch, ptr noundef %i.cj, ptr noundef %i.cl, ptr noundef nonnull %i.b, i32 noundef %i.by)
          to label %bb.ae unwind label %bb.ai     ; 3 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load ptr, ptr %i.ac, align 8, !tbaa !208
  invoke void @ggml_build_forward_expand(ptr noundef %i.cn, ptr noundef %i.cm)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.co = load ptr, ptr %i.n, align 8, !tbaa !190, !nonnull !191, !align !192
  %i.cp = invoke noundef zeroext i1 @_ZNK13llama_hparams7is_recrEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.co, i32 noundef %i.by)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  br i1 %i.cp, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cq = load ptr, ptr %i.bi, align 8, !tbaa !499
  %i.cr = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph23build_layer_attn_linearEP18llm_graph_input_rsP11ggml_tensori(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %i.cq, ptr noundef %i.cm, i32 noundef %i.by)
          to label %bb.ak unwind label %bb.ai

bb.ai:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ae, %bb.ad
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ag
  %i.ct = load ptr, ptr %i.bk, align 8, !tbaa !500
  %i.cu = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph16build_layer_attnEP23llm_graph_input_attn_kvPK31llama_memory_hybrid_idx_contextP11ggml_tensorS7_Pii(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %i.ct, ptr noundef nonnull %i.ag, ptr noundef %i.cm, ptr noundef %i.an, ptr noundef nonnull %i.a, i32 noundef %i.by)
          to label %bb.ak unwind label %bb.ai

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %.0 = phi ptr [ %i.cr, %bb.ah ], [ %i.cu, %bb.aj ] ; 2 uses
  %i.cv = load i64, ptr %i.be, align 8, !tbaa !495
  %i.cw = add nsw i64 %i.cv, -1
  %i.cx = icmp eq i64 %i.cw, %indvars.iv
  %or.cond = and i1 %i.bl, %i.cx
  br i1 %or.cond, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.cy = load ptr, ptr %i.au, align 8, !tbaa !195
  %i.cz = invoke ptr @ggml_get_rows(ptr noundef %i.cy, ptr noundef %.0, ptr noundef nonnull %i.ao)
          to label %bb.am unwind label %bb.ai

bb.am:                                            ; preds = %bb.al
  %i.da = load ptr, ptr %i.au, align 8, !tbaa !195
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !202
  %i.dc = invoke ptr @ggml_get_rows(ptr noundef %i.da, ptr noundef %i.db, ptr noundef nonnull %i.ao)
          to label %bb.an unwind label %bb.ai

bb.an:                                            ; preds = %bb.am
  store ptr %i.dc, ptr %i.b, align 8, !tbaa !202
  %i.dd = load ptr, ptr %i.au, align 8, !tbaa !195
  %i.de = load i64, ptr %i.aw, align 8, !tbaa !194
  %i.df = mul nsw i64 %i.de, %i.r
  %i.dg = getelementptr inbounds nuw i8, ptr %.196, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !111
  %i.di = invoke ptr @ggml_reshape_2d(ptr noundef %i.dd, ptr noundef nonnull %.196, i64 noundef %i.df, i64 noundef %i.dh)
          to label %bb.ao unwind label %bb.ai

bb.ao:                                            ; preds = %bb.an
  %i.dj = load ptr, ptr %i.au, align 8, !tbaa !195
  %i.dk = invoke ptr @ggml_get_rows(ptr noundef %i.dj, ptr noundef %i.di, ptr noundef nonnull %i.ao)
          to label %bb.ap unwind label %bb.ai     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.dl = load ptr, ptr %i.au, align 8, !tbaa !195
  %i.dm = load i64, ptr %i.aw, align 8, !tbaa !194
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !111
  %i.dp = invoke ptr @ggml_reshape_3d(ptr noundef %i.dl, ptr noundef nonnull %i.dk, i64 noundef %i.dm, i64 noundef %i.r, i64 noundef %i.do)
          to label %bb.aq unwind label %bb.ai

bb.aq:                                            ; preds = %bb.ap, %bb.ak
  %.2.a = phi ptr [ %.196, %bb.ak ], [ %i.dp, %bb.ap ]
  %.1.a = phi ptr [ %.0, %bb.ak ], [ %i.cz, %bb.ap ]
  %3 = load ptr, ptr %i.b, align 8, !tbaa !202
  %i.dq = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph16build_hc_combineEP11ggml_tensorS2_S2_i(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %.2.a, ptr noundef %.1.a, ptr noundef %3, i32 noundef %i.by)
          to label %bb.ar unwind label %bb.ai     ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.dr = load ptr, ptr %i.bj, align 8, !tbaa !124
  %i.ds = getelementptr inbounds nuw [2552 x i8], ptr %i.dr, i64 %indvars.iv ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2016
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !135
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 2024
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !136
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 2032
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !137
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 2040
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !138
  %i.eb = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph12build_hc_mixEP11ggml_tensorS2_S2_S2_S2_PS2_i(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %i.dq, ptr noundef %i.du, ptr noundef %i.dw, ptr noundef %i.dy, ptr noundef %i.ea, ptr noundef nonnull %i.b, i32 noundef %i.by)
          to label %bb.as unwind label %bb.ai

bb.as:                                            ; preds = %bb.ar
  %i.ec = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph15build_layer_ffnEP11ggml_tensori(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %i.eb, i32 noundef %i.by)
          to label %bb.at unwind label %bb.ai     ; 2 uses

bb.at:                                            ; preds = %bb.as
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ec, ptr noundef nonnull @.str.21, i32 noundef %i.by)
          to label %bb.au unwind label %bb.ai

bb.au:                                            ; preds = %bb.at
  %i.ed = load ptr, ptr %i.b, align 8, !tbaa !202
  %i.ee = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph16build_hc_combineEP11ggml_tensorS2_S2_i(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %i.dq, ptr noundef %i.ec, ptr noundef %i.ed, i32 noundef %i.by)
          to label %bb.av unwind label %bb.ai     ; 3 uses

bb.av:                                            ; preds = %bb.au
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ee, ptr noundef nonnull @.str.22, i32 noundef %i.by)
          to label %bb.aw unwind label %bb.ai

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ef = load i64, ptr %i.be, align 8, !tbaa !495
  %i.eg = icmp sgt i64 %i.ef, %indvars.iv.next
  br i1 %i.eg, label %bb.aa, label %._crit_edge, !llvm.loop !474

bb.ax:                                            ; preds = %._crit_edge
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.bs, ptr noundef nonnull @.str.23, i32 noundef -1)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !221
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  store ptr %i.bs, ptr %i.ej, align 8, !tbaa !525
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 36200
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !120
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 36224
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !526
  %i.eo = invoke noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.el, ptr noundef %i.bs, ptr noundef %i.en)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.eo, ptr noundef nonnull @.str.24, i32 noundef -1)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  %i.ep = load ptr, ptr %i.eh, align 8, !tbaa !221
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !527
  %i.er = load ptr, ptr %i.ac, align 8, !tbaa !208
  invoke void @ggml_build_forward_expand(ptr noundef %i.er, ptr noundef %i.eo)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.ai ], [ %lpad.loopexit.split-lp133, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp ], [ %i.w, %bb.f ]
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZNSt3mapIP11ggml_tensorS1_St4lessIS1_ESaISt4pairIKS1_S1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.es) #18
  call void @_ZNSt3mapIjPN20llama_model_qwen4exp19llm_graph_input_qsaESt4lessIjESaISt4pairIKjS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.et) #18
  call void @_ZN17llm_graph_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN24llm_build_delta_net_baseC2ERK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(36496)) unnamed_addr #1

; Function Attrs: noreturn
declare void @ggml_abort(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

declare noundef ptr @_ZNK17llm_graph_context14build_inp_embdEP11ggml_tensor(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef) local_unnamed_addr #1

declare void @ggml_build_forward_expand(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK17llm_graph_context20build_inp_mem_hybridEv(ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #1

declare noundef ptr @_ZNK31llama_memory_hybrid_idx_context7get_idxEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1

declare noundef i32 @_ZNK22llama_kv_cache_context8get_n_kvEv(ptr noundef nonnull align 8 dereferenceable(148)) local_unnamed_addr #1

declare noundef ptr @_ZNK27llama_memory_hybrid_context8get_attnEv(ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #1

declare noundef ptr @_ZNK17llm_graph_context13build_inp_posEv(ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #1

declare noundef ptr @_ZNK17llm_graph_context17build_inp_out_idsEv(ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN20llama_model_qwen4exp5graph13build_inp_pleEPK31llama_memory_hybrid_idx_context(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.240", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190, !nonnull !191, !align !192
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 29224
  %i.d = load i32, ptr %i.c, align 8, !tbaa !219
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !245, !nonnull !191, !align !192
  %i.h = tail call noundef ptr @_ZNK27llama_memory_hybrid_context8get_attnEv(ptr noundef nonnull align 8 dereferenceable(60) %1)
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21, !noalias !531 ; 9 uses
  %i.j = tail call ptr @getenv(ptr noundef nonnull @.str.89) #18, !noalias !531 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZSt11make_uniqueI19llm_graph_input_pleJRK20llama_model_qwen4expPK22llama_kv_cache_contextEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.j, ptr noundef null, i32 noundef 10) #18, !noalias !531, !inline_history !0
  %i.l = trunc i64 %i.k to i32
  br label %_ZSt11make_uniqueI19llm_graph_input_pleJRK20llama_model_qwen4expPK22llama_kv_cache_contextEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueI19llm_graph_input_pleJRK20llama_model_qwen4expPK22llama_kv_cache_contextEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !246, !noalias !531
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV19llm_graph_input_ple, i64 16), ptr %i.i, align 8, !tbaa !204, !noalias !531
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !250, !noalias !531
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.g, ptr %i.p, align 8, !tbaa !532, !noalias !531
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.h, ptr %i.q, align 8, !tbaa !251, !noalias !531
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !531
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !195
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !220
  %i.w = mul nsw i64 %i.v, %i.e
  %i.x = invoke ptr @ggml_new_tensor_1d(ptr noundef %i.t, i32 noundef 26, i64 noundef %i.w)
          to label %bb.c unwind label %_ZNKSt14default_deleteI19llm_graph_input_pleEclEPS0_.exit.i18 ; 2 uses

bb.c:                                             ; preds = %_ZSt11make_uniqueI19llm_graph_input_pleJRK20llama_model_qwen4expPK22llama_kv_cache_contextEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.x, ptr %i.o, align 8, !tbaa !250
  invoke void @ggml_set_input(ptr noundef %i.x)
          to label %bb.d unwind label %_ZNKSt14default_deleteI19llm_graph_input_pleEclEPS0_.exit.i18

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !250
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !221
  store ptr %i.i, ptr %2, align 8, !tbaa !254
  %i.ab = invoke noundef ptr @_ZN16llm_graph_result9add_inputESt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(36772) %i.aa, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %2, align 8, !tbaa !255   ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i

_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i: ; preds = %bb.e
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !204
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #18, !inline_history !1
  br label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !195
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !245, !nonnull !191, !align !192
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 36352
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !123
  %i.ak = call ptr @ggml_get_rows(ptr noundef %i.ag, ptr noundef %i.aj, ptr noundef %i.y)
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !195
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !190, !nonnull !191, !align !192
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 29228
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !533
  %i.ap = zext i32 %i.ao to i64
  %i.aq = mul nuw nsw i64 %i.ap, %i.e
  %i.ar = load i64, ptr %i.u, align 8, !tbaa !220
  %i.as = call ptr @ggml_reshape_2d(ptr noundef %i.al, ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef %i.ar) ; 2 uses
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.as, ptr noundef nonnull @.str.81, i32 noundef -1)
  ret ptr %i.as

bb.f:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %2, align 8, !tbaa !255   ; 3 uses
  %.not.i14 = icmp eq ptr %i.au, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrI19llm_graph_input_pleSt14default_deleteIS0_EED2Ev.exit19, label %_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i15

end_hunk_0
