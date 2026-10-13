Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/qwen4exp?download=true
inline.NumInlined: 828
inline.NumDeleted: 450
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN20llama_model_qwen4exp5graphC2ERK11llama_modelRK16llm_graph_params:bb.a
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.al = invoke noundef i32 @_ZNK22llama_kv_cache_context8get_n_kvEv(ptr noundef nonnull align 8 dereferenceable(148) %i.ak)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.am = icmp eq i32 %i.ai, %i.al
  br i1 %i.am, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 358, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.19) #19
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.t:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.u:                                             ; preds = %bb.q, %bb.o, %bb.n, %bb.m, %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.v:                                             ; preds = %bb.p, %bb.l
  %i.aq = invoke noundef ptr @_ZNK17llm_graph_context13build_inp_posEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.ar = invoke noundef ptr @_ZNK17llm_graph_context17build_inp_out_idsEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.x unwind label %bb.ab      ; 4 uses

bb.x:                                             ; preds = %bb.w
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !190, !nonnull !191, !align !192
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 29224
  %i.au = load i32, ptr %i.at, align 8, !tbaa !219
  %.not114 = icmp eq i32 %i.au, 0
  br i1 %.not114, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph13build_inp_pleEPK31llama_memory_hybrid_idx_context(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull %i.ag)
          to label %bb.z unwind label %bb.ac      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !208
  invoke void @ggml_build_forward_expand(ptr noundef %i.aw, ptr noundef %i.av)
          to label %bb.ad unwind label %bb.ac

bb.aa:                                            ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ab:                                            ; preds = %bb.w
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ac:                                            ; preds = %bb.z, %bb.y
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ad:                                            ; preds = %bb.z, %bb.x
  %.097 = phi ptr [ %i.av, %bb.z ], [ null, %bb.x ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !195 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !194
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !220
  %i.bg = invoke ptr @ggml_reshape_3d(ptr noundef %i.bb, ptr noundef %i.ab, i64 noundef %i.bd, i64 noundef 1, i64 noundef %i.bf)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bh = load i64, ptr %i.bc, align 8, !tbaa !194
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !220
  %i.bj = invoke ptr @ggml_repeat_4d(ptr noundef %i.bb, ptr noundef %i.bg, i64 noundef %i.bh, i64 noundef %i.r, i64 noundef %i.bi, i64 noundef 1)
          to label %bb.af unwind label %bb.ag     ; 3 uses

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.bj, ptr noundef nonnull @.str.20, i32 noundef -1)
          to label %.preheader unwind label %bb.ag

.preheader:                                       ; preds = %bb.af
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !495
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 36512 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.br = icmp ne ptr %i.ar, null
  br label %bb.ah

._crit_edge:                                      ; preds = %bb.be, %.preheader
  %.095.lcssa = phi ptr [ %i.bj, %.preheader ], [ %i.em, %bb.be ]
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 36360
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !117
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 36368
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !118
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 36376
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !119
  %i.by = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph12build_hc_mixEP11ggml_tensorS2_S2_S2_S2_PS2_i(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %.095.lcssa, ptr noundef %i.bt, ptr noundef %i.bv, ptr noundef %i.bx, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %bb.bf unwind label %bb.bk     ; 3 uses

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ah:                                            ; preds = %.lr.ph, %bb.be
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.be ] ; 6 uses
  %.095127 = phi ptr [ %i.bj, %.lr.ph ], [ %i.em, %bb.be ] ; 3 uses
  %i.ca = load ptr, ptr %i.bn, align 8, !tbaa !221
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !498
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv
  store ptr %.095127, ptr %i.cd, align 8, !tbaa !202
  %i.ce = load ptr, ptr %i.n, align 8, !tbaa !190, !nonnull !191, !align !192
  %i.cf = trunc nuw nsw i64 %indvars.iv to i32    ; 12 uses
  %i.cg = invoke noundef zeroext i1 @_ZNK13llama_hparams6is_pleEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.ce, i32 noundef %i.cf)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.cg, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ch = load ptr, ptr %i.bo, align 8, !tbaa !499
  %i.ci = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph9build_pleEP18llm_graph_input_rsP11ggml_tensorS4_i(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %i.ch, ptr noundef %.097, ptr noundef %.095127, i32 noundef %i.cf)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %.196 = phi ptr [ %.095127, %bb.ai ], [ %i.ci, %bb.aj ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !202
  %i.ck = load ptr, ptr %i.bp, align 8, !tbaa !124
  %i.cl = getelementptr inbounds nuw [2552 x i8], ptr %i.ck, i64 %indvars.iv ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1984
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !131
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 1992
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !132
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 2000
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !133
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 2008
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !134
  %i.cu = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph12build_hc_mixEP11ggml_tensorS2_S2_S2_S2_PS2_i(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %.196, ptr noundef %i.cn, ptr noundef %i.cp, ptr noundef %i.cr, ptr noundef %i.ct, ptr noundef nonnull %i.b, i32 noundef %i.cf)
          to label %bb.am unwind label %bb.aq     ; 3 uses

bb.am:                                            ; preds = %bb.al
  %i.cv = load ptr, ptr %i.ac, align 8, !tbaa !208
  invoke void @ggml_build_forward_expand(ptr noundef %i.cv, ptr noundef %i.cu)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.cw = load ptr, ptr %i.n, align 8, !tbaa !190, !nonnull !191, !align !192
  %i.cx = invoke noundef zeroext i1 @_ZNK13llama_hparams7is_recrEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.cw, i32 noundef %i.cf)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  br i1 %i.cx, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.cy = load ptr, ptr %i.bo, align 8, !tbaa !499
  %i.cz = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph23build_layer_attn_linearEP18llm_graph_input_rsP11ggml_tensori(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %i.cy, ptr noundef %i.cu, i32 noundef %i.cf)
          to label %bb.as unwind label %bb.aq

bb.aq:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.am, %bb.al
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.bl

bb.ar:                                            ; preds = %bb.ao
  %i.db = load ptr, ptr %i.bq, align 8, !tbaa !500
  %i.dc = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph16build_layer_attnEP23llm_graph_input_attn_kvPK31llama_memory_hybrid_idx_contextP11ggml_tensorS7_Pii(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %i.db, ptr noundef nonnull %i.ag, ptr noundef %i.cu, ptr noundef %i.aq, ptr noundef nonnull %i.a, i32 noundef %i.cf)
          to label %bb.as unwind label %bb.aq

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %.0 = phi ptr [ %i.cz, %bb.ap ], [ %i.dc, %bb.ar ] ; 2 uses
  %i.dd = load i64, ptr %i.bk, align 8, !tbaa !495
  %i.de = add nsw i64 %i.dd, -1
  %i.df = icmp eq i64 %i.de, %indvars.iv
  %or.cond = and i1 %i.br, %i.df
  br i1 %or.cond, label %bb.at, label %._crit_edge130

._crit_edge130:                                   ; preds = %bb.as
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !202
  br label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.dg = load ptr, ptr %i.ba, align 8, !tbaa !195
  %i.dh = invoke ptr @ggml_get_rows(ptr noundef %i.dg, ptr noundef %.0, ptr noundef nonnull %i.ar)
          to label %bb.au unwind label %bb.aq

bb.au:                                            ; preds = %bb.at
  %i.di = load ptr, ptr %i.ba, align 8, !tbaa !195
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !202
  %i.dk = invoke ptr @ggml_get_rows(ptr noundef %i.di, ptr noundef %i.dj, ptr noundef nonnull %i.ar)
          to label %bb.av unwind label %bb.aq     ; 2 uses

bb.av:                                            ; preds = %bb.au
  store ptr %i.dk, ptr %i.b, align 8, !tbaa !202
  %i.dl = load ptr, ptr %i.ba, align 8, !tbaa !195
  %i.dm = load i64, ptr %i.bc, align 8, !tbaa !194
  %i.dn = mul nsw i64 %i.dm, %i.r
  %i.do = getelementptr inbounds nuw i8, ptr %.196, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !111
  %i.dq = invoke ptr @ggml_reshape_2d(ptr noundef %i.dl, ptr noundef nonnull %.196, i64 noundef %i.dn, i64 noundef %i.dp)
          to label %bb.aw unwind label %bb.aq

bb.aw:                                            ; preds = %bb.av
  %i.dr = load ptr, ptr %i.ba, align 8, !tbaa !195
  %i.ds = invoke ptr @ggml_get_rows(ptr noundef %i.dr, ptr noundef %i.dq, ptr noundef nonnull %i.ar)
          to label %bb.ax unwind label %bb.aq     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load ptr, ptr %i.ba, align 8, !tbaa !195
  %i.du = load i64, ptr %i.bc, align 8, !tbaa !194
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !111
  %i.dx = invoke ptr @ggml_reshape_3d(ptr noundef %i.dt, ptr noundef nonnull %i.ds, i64 noundef %i.du, i64 noundef %i.r, i64 noundef %i.dw)
          to label %bb.ay unwind label %bb.aq

bb.ay:                                            ; preds = %._crit_edge130, %bb.ax
  %.2.a = phi ptr [ %.pre, %._crit_edge130 ], [ %i.dk, %bb.ax ]
  %.1.a = phi ptr [ %.196, %._crit_edge130 ], [ %i.dx, %bb.ax ]
  %.1 = phi ptr [ %.0, %._crit_edge130 ], [ %i.dh, %bb.ax ]
  %i.dy = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph16build_hc_combineEP11ggml_tensorS2_S2_i(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %.1.a, ptr noundef %.1, ptr noundef %.2.a, i32 noundef %i.cf)
          to label %bb.az unwind label %bb.aq     ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.dz = load ptr, ptr %i.bp, align 8, !tbaa !124
  %i.ea = getelementptr inbounds nuw [2552 x i8], ptr %i.dz, i64 %indvars.iv ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2016
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !135
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 2024
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !136
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 2032
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !137
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 2040
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !138
  %i.ej = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph12build_hc_mixEP11ggml_tensorS2_S2_S2_S2_PS2_i(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %i.dy, ptr noundef %i.ec, ptr noundef %i.ee, ptr noundef %i.eg, ptr noundef %i.ei, ptr noundef nonnull %i.b, i32 noundef %i.cf)
          to label %bb.ba unwind label %bb.aq

bb.ba:                                            ; preds = %bb.az
  %i.ek = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph15build_layer_ffnEP11ggml_tensori(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %i.ej, i32 noundef %i.cf)
          to label %bb.bb unwind label %bb.aq     ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ek, ptr noundef nonnull @.str.21, i32 noundef %i.cf)
          to label %bb.bc unwind label %bb.aq

bb.bc:                                            ; preds = %bb.bb
  %i.el = load ptr, ptr %i.b, align 8, !tbaa !202
  %i.em = invoke noundef ptr @_ZN20llama_model_qwen4exp5graph16build_hc_combineEP11ggml_tensorS2_S2_i(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %i.dy, ptr noundef %i.ek, ptr noundef %i.el, i32 noundef %i.cf)
          to label %bb.bd unwind label %bb.aq     ; 3 uses

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.em, ptr noundef nonnull @.str.22, i32 noundef %i.cf)
          to label %bb.be unwind label %bb.aq

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.en = load i64, ptr %i.bk, align 8, !tbaa !495
  %i.eo = icmp sgt i64 %i.en, %indvars.iv.next
  br i1 %i.eo, label %bb.ah, label %._crit_edge, !llvm.loop !474

bb.bf:                                            ; preds = %._crit_edge
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.by, ptr noundef nonnull @.str.23, i32 noundef -1)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !221
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store ptr %i.by, ptr %i.er, align 8, !tbaa !525
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 36200
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !120
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 36224
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !526
  %i.ew = invoke noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.et, ptr noundef %i.by, ptr noundef %i.ev)
          to label %bb.bh unwind label %bb.bk     ; 3 uses

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ew, ptr noundef nonnull @.str.24, i32 noundef -1)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.ex = load ptr, ptr %i.ep, align 8, !tbaa !221
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !527
  %i.ez = load ptr, ptr %i.ac, align 8, !tbaa !208
  invoke void @ggml_build_forward_expand(ptr noundef %i.ez, ptr noundef %i.ew)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

bb.bk:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %._crit_edge
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bl:                                            ; preds = %bb.s, %bb.u, %bb.ab, %bb.ag, %bb.bk, %bb.aq, %bb.ak, %bb.ac, %bb.aa, %bb.t
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.ak ], [ %i.an, %bb.s ], [ %i.ao, %bb.t ], [ %i.ap, %bb.u ], [ %i.ax, %bb.aa ], [ %i.ay, %bb.ab ], [ %i.az, %bb.ac ], [ %i.bz, %bb.ag ], [ %i.fa, %bb.bk ], [ %i.da, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bl ], [ %i.w, %bb.f ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZNSt3mapIP11ggml_tensorS1_St4lessIS1_ESaISt4pairIKS1_S1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.fb) #18
  call void @_ZNSt3mapIjPN20llama_model_qwen4exp19llm_graph_input_qsaESt4lessIjESaISt4pairIKjS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.fc) #18
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
end_hunk_0
