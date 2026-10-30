Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/gemma4?download=true
inline.NumInlined: 206
inline.NumDeleted: 108
begin_hunk_0_@_ZN18llama_model_gemma417load_arch_tensorsER18llama_model_loader:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  br i1 %.not144, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #15
  %i.iw = load i32, ptr %i.bp, align 8, !tbaa !305, !noalias !345
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %64, i32 noundef %i.iw, i32 noundef 61, ptr noundef nonnull @.str.2, i32 noundef %i.fg, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #15
  store i64 %i.ao, ptr %i.af, align 8, !tbaa !96
  store i64 %i.ez, ptr %i.ey, align 8, !tbaa !96
  store ptr %i.af, ptr %65, align 8, !tbaa !308
  store i64 2, ptr %i.fa, align 8, !tbaa !309
  %i.ix = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(16) %65, i32 noundef 0)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ff, i64 1504
  store ptr %i.ix, ptr %i.iy, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #15
  %i.iz = load i32, ptr %i.bp, align 8, !tbaa !305, !noalias !346
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %66, i32 noundef %i.iz, i32 noundef 62, ptr noundef nonnull @.str.2, i32 noundef %i.fg, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #15
  store i64 %i.ez, ptr %i.ag, align 8, !tbaa !96
  store i64 %i.ao, ptr %i.fb, align 8, !tbaa !96
  store ptr %i.ag, ptr %67, align 8, !tbaa !308
  store i64 2, ptr %i.fc, align 8, !tbaa !309
  %i.ja = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 8 dereferenceable(16) %67, i32 noundef 0)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ff, i64 1512
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #15
  %i.jc = load i32, ptr %i.bp, align 8, !tbaa !305, !noalias !347
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %68, i32 noundef %i.jc, i32 noundef 64, ptr noundef nonnull @.str.2, i32 noundef %i.fg, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #15
  store i64 %i.ao, ptr %i.ah, align 8, !tbaa !96
  store ptr %i.ah, ptr %69, align 8, !tbaa !308
  store i64 1, ptr %i.fd, align 8, !tbaa !309
  %i.jd = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(16) %69, i32 noundef 0)
  %i.je = getelementptr inbounds nuw i8, ptr %i.ff, i64 1520
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !299

bb.y:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.bn, %bb.h ], [ %i.bh, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.h ], [ %i.bi, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #15
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZNK13llama_hparams6n_headEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK13llama_hparams9n_head_kvEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK13llama_hparams12n_embd_k_gqaEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK13llama_hparams12n_embd_v_gqaEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK13llama_hparams13n_embd_head_kEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK13llama_hparams13n_embd_head_vEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK13llama_hparams4n_ffEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK11llama_vocab8n_tokensEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i32 @_ZNK11llama_vocab13n_token_typesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i32 @_ZNK13llama_hparams5n_rotEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK13llama_hparams13n_expert_usedEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK13llama_hparams8n_ff_expEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

declare noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK13llama_hparams6has_kvEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK13llama_hparams6is_swaEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK18llama_model_gemma416build_arch_graphERK16llm_graph_params(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.125") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(36884) %1, ptr noundef nonnull align 8 dereferenceable(36496) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #17, !noalias !350 ; 3 uses
  invoke void @_ZN18llama_model_gemma45graphC1ERK11llama_modelRK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(352) %i.a, ptr noundef nonnull align 8 dereferenceable(36884) %1, ptr noundef nonnull align 8 dereferenceable(36496) %2)
          to label %_ZNSt10unique_ptrIN18llama_model_gemma45graphESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !350

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 352) #18, !noalias !350
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN18llama_model_gemma45graphESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !353
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN18llama_model_gemma45graphC2ERK11llama_modelRK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(36840) %1, ptr noundef nonnull align 8 dereferenceable(36496) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN17llm_graph_contextC2ERK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(36496) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN18llama_model_gemma45graphE, i64 16), ptr %0, align 8, !tbaa !140
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %1, ptr %i.a, align 8, !tbaa !355
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 31980
  %i.d = load i32, ptr %i.c, align 4, !tbaa !95
  %i.e = zext i32 %i.d to i64
  store i64 %i.e, ptr %i.b, align 8, !tbaa !165
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.h = invoke noundef ptr @_ZNK17llm_graph_context14build_inp_embdEP11ggml_tensor(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.g)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 25 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !167, !nonnull !168, !align !169
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !177
  %.not335 = icmp eq ptr %i.n, null
  br i1 %.not335, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !178
  %i.q = sitofp i64 %i.p to float
  %i.r = tail call float @sqrtf(float noundef %i.q) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.s = phi float [ %i.r, %bb.c ], [ 1.000000e+00, %bb.b ]
  %i.t = invoke ptr @ggml_scale(ptr noundef %i.j, ptr noundef %i.h, float noundef %i.s)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.t, ptr noundef nonnull @.str.4, i32 noundef -1)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNK17llm_graph_context13build_inp_posEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZNK17llm_graph_context22build_attn_inp_kv_iswaEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.w = invoke noundef ptr @_ZNK17llm_graph_context17build_inp_out_idsEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36352
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100
  %.not336 = icmp eq ptr %i.y, null
  br i1 %.not336, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = invoke noundef ptr @_ZN18llama_model_gemma45graph19build_inp_per_layerEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !356
  invoke void @ggml_build_forward_expand(ptr noundef %i.ab, ptr noundef %i.z)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef ptr @_ZN18llama_model_gemma45graph24project_per_layer_inputsEP11ggml_tensorS2_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %i.t, ptr noundef %i.z)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l, %bb.i
  %.0298.a = phi ptr [ null, %bb.i ], [ %i.ac, %bb.l ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !179
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 36512 ; 22 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.ar = icmp ne ptr %i.w, null                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.not344 = icmp eq ptr %.0298.a, null
  %i.av = getelementptr inbounds nuw i8, ptr %.0298.a, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %.0298.a, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0298.a, i64 24 ; 2 uses
  br label %bb.n

._crit_edge:                                      ; preds = %bb.cw, %bb.m
  %.0320.lcssa = phi ptr [ %i.t, %bb.m ], [ %i.lx, %bb.cw ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 36176
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !103
  %i.ba = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.0320.lcssa, ptr noundef %i.az, ptr noundef null, i32 noundef 1, i32 noundef -1)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.n:                                             ; preds = %.lr.ph, %bb.cw
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cw ] ; 30 uses
  %.0320370 = phi ptr [ %i.t, %.lr.ph ], [ %i.lx, %bb.cw ] ; 5 uses
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !357, !nonnull !168, !align !169
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32    ; 48 uses
  %i.bd = invoke noundef i32 @_ZNK13llama_hparams13n_embd_head_kEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.bb, i32 noundef %i.bc)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.be = zext i32 %i.bd to i64                   ; 3 uses
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !357, !nonnull !168, !align !169
  %i.bg = invoke noundef i32 @_ZNK13llama_hparams13n_embd_head_vEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.bf, i32 noundef %i.bc)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp eq i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.q, label %.invoke378

bb.q:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr %i.ag, align 8, !tbaa !357, !nonnull !168, !align !169
  %i.bj = invoke noundef i32 @_ZNK13llama_hparams6n_headEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.bi, i32 noundef %i.bc)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bk = zext i32 %i.bj to i64
  %i.bl = load ptr, ptr %i.ag, align 8, !tbaa !357, !nonnull !168, !align !169
  %i.bm = invoke noundef i32 @_ZNK13llama_hparams9n_head_kvEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.bl, i32 noundef %i.bc)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = load ptr, ptr %i.ah, align 8, !tbaa !358, !nonnull !168, !align !169
  %i.bp = invoke noundef float @_ZNK11llama_model18get_rope_freq_baseERK13llama_cparamsi(ptr noundef nonnull align 8 dereferenceable(36840) %1, ptr noundef nonnull align 8 dereferenceable(176) %i.bo, i32 noundef %i.bc)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.bq = load ptr, ptr %i.ah, align 8, !tbaa !358, !nonnull !168, !align !169
  %i.br = invoke noundef float @_ZNK11llama_model19get_rope_freq_scaleERK13llama_cparamsi(ptr noundef nonnull align 8 dereferenceable(36840) %1, ptr noundef nonnull align 8 dereferenceable(176) %i.bq, i32 noundef %i.bc)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.bs = load ptr, ptr %i.ag, align 8, !tbaa !357, !nonnull !168, !align !169
  %i.bt = invoke noundef i32 @_ZNK13llama_hparams5n_rotEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.bs, i32 noundef %i.bc)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bu = load ptr, ptr %i.ai, align 8, !tbaa !180
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !359
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  store ptr %.0320370, ptr %i.bx, align 8, !tbaa !360
  %i.by = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.bz = getelementptr inbounds nuw [2552 x i8], ptr %i.by, i64 %indvars.iv
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !111
  %i.cb = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.0320370, ptr noundef %i.ca, ptr noundef null, i32 noundef 1, i32 noundef %i.bc)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.w:                                             ; preds = %bb.v
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cb, ptr noundef nonnull @.str.8, i32 noundef %i.bc)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.cc = load ptr, ptr %i.ag, align 8, !tbaa !357, !nonnull !168, !align !169
  %i.cd = invoke noundef zeroext i1 @_ZNK13llama_hparams6is_swaEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.cc, i32 noundef %i.bc)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !104 ; 2 uses
  br i1 %i.cd, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw [2552 x i8], ptr %.pre, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1216
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !120
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0296 = phi ptr [ null, %bb.y ], [ %i.cg, %bb.z ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [2552 x i8], ptr %.pre, i64 %indvars.iv ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 168
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !112
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 1224
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !361
  %i.cm = invoke noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cj, ptr noundef %i.cb, ptr noundef %i.cl)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cm, ptr noundef nonnull @.str.9, i32 noundef %i.bc)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.co = load i64, ptr %i.ak, align 8, !tbaa !183
  %i.cp = invoke ptr @ggml_reshape_3d(ptr noundef %i.cn, ptr noundef %i.cm, i64 noundef %i.be, i64 noundef %i.bk, i64 noundef %i.co)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.cq = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.cr = getelementptr inbounds nuw [2552 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !116
  %i.cu = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cp, ptr noundef %i.ct, ptr noundef null, i32 noundef 1, i32 noundef %i.bc)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cu, ptr noundef nonnull @.str.10, i32 noundef %i.bc)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.cw = load i32, ptr %i.al, align 8, !tbaa !362
  %i.cx = load i32, ptr %i.am, align 8, !tbaa !363
  %i.cy = load float, ptr %i.an, align 8, !tbaa !364
  %i.cz = load float, ptr %i.ao, align 4, !tbaa !365
  %i.da = load float, ptr %i.ap, align 8, !tbaa !366
  %i.db = load float, ptr %i.aq, align 4, !tbaa !367
  %i.dc = invoke ptr @ggml_rope_ext(ptr noundef %i.cv, ptr noundef %i.cu, ptr noundef %i.u, ptr noundef %.0296, i32 noundef %i.bt, i32 noundef %i.cw, i32 noundef %i.cx, float noundef %i.bp, float noundef %i.br, float noundef %i.cy, float noundef %i.cz, float noundef %i.da, float noundef %i.db)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.dc, ptr noundef nonnull @.str.11, i32 noundef %i.bc)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.dd = load ptr, ptr %i.ag, align 8, !tbaa !357, !nonnull !168, !align !169
  %i.de = invoke noundef zeroext i1 @_ZNK13llama_hparams6has_kvEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.dd, i32 noundef %i.bc)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.df = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.dg = getelementptr inbounds nuw [2552 x i8], ptr %i.df, i64 %indvars.iv ; 3 uses
  br i1 %i.de, label %bb.aj, label %.invoke

bb.aj:                                            ; preds = %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 176
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !113
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 1232
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !368
  %i.dl = invoke noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.di, ptr noundef %i.cb, ptr noundef %i.dk)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.dl, ptr noundef nonnull @.str.12, i32 noundef %i.bc)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.dm = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.dn = getelementptr inbounds nuw [2552 x i8], ptr %i.dm, i64 %indvars.iv ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 184
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !114 ; 2 uses
  %.not = icmp eq ptr %i.dp, null
  br i1 %.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 1240
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !369
  %i.ds = invoke noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.dp, ptr noundef %i.cb, ptr noundef %i.dr)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.dt = phi ptr [ %i.ds, %bb.am ], [ %i.dl, %bb.al ] ; 2 uses
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.dt, ptr noundef nonnull @.str.13, i32 noundef %i.bc)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.du = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.dv = load i64, ptr %i.ak, align 8, !tbaa !183
  %i.dw = invoke ptr @ggml_reshape_3d(ptr noundef %i.du, ptr noundef %i.dl, i64 noundef %i.be, i64 noundef %i.bn, i64 noundef %i.dv)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  %i.dx = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.dy = load i64, ptr %i.ak, align 8, !tbaa !183
  %i.dz = invoke ptr @ggml_reshape_3d(ptr noundef %i.dx, ptr noundef %i.dt, i64 noundef %i.be, i64 noundef %i.bn, i64 noundef %i.dy)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  %i.ea = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.eb = getelementptr inbounds nuw [2552 x i8], ptr %i.ea, i64 %indvars.iv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !117
  %i.ee = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.dw, ptr noundef %i.ed, ptr noundef null, i32 noundef 1, i32 noundef %i.bc)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.ef = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.eg = load ptr, ptr %i.ag, align 8, !tbaa !357, !nonnull !168, !align !169
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 10412
end_hunk_0
begin_hunk_1_@_ZN18llama_model_gemma45graphC2ERK11llama_modelRK16llm_graph_params:bb.a

bb.bd:                                            ; preds = %bb.bc
  %i.fu = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.fv = invoke ptr @ggml_add(ptr noundef %i.fu, ptr noundef %i.ft, ptr noundef %.1321)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.fv, ptr noundef nonnull @.str.18, i32 noundef %i.bc)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.fw = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.fx = getelementptr inbounds nuw [2552 x i8], ptr %i.fw, i64 %indvars.iv ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 520
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !126
  %.not339 = icmp eq ptr %i.fz, null
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 392
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !121 ; 2 uses
  br i1 %.not339, label %bb.bx, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gc = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.fv, ptr noundef %i.gb, ptr noundef null, i32 noundef 1, i32 noundef %i.bc)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.gc, ptr noundef nonnull @.str.19, i32 noundef %i.bc)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh
  %i.gd = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.ge = getelementptr inbounds nuw [2552 x i8], ptr %i.gd, i64 %indvars.iv ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 488
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !123
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1280
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !375
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 472
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !122
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 1272
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !376
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 480
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !124
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 1288
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !377
  %i.gr = invoke noundef ptr @_ZNK17llm_graph_context9build_ffnEP11ggml_tensorS1_S1_S1_S1_S1_S1_S1_S1_S1_S1_15llm_ffn_op_type17llm_ffn_gate_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.gc, ptr noundef %i.gg, ptr noundef null, ptr noundef %i.gi, ptr noundef %i.gk, ptr noundef null, ptr noundef %i.gm, ptr noundef %i.go, ptr noundef null, ptr noundef %i.gq, ptr noundef null, i32 noundef 2, i32 noundef 1, i32 noundef %i.bc)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  %i.gs = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.gt = getelementptr inbounds nuw [2552 x i8], ptr %i.gs, i64 %indvars.iv
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 416
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !129
  %i.gw = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.gr, ptr noundef %i.gv, ptr noundef null, i32 noundef 1, i32 noundef %i.bc)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.gw, ptr noundef nonnull @.str.20, i32 noundef %i.bc)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  %i.gx = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.gy = getelementptr inbounds nuw [2552 x i8], ptr %i.gx, i64 %indvars.iv
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 432
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !128
  %i.hb = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.fv, ptr noundef %i.ha, ptr noundef null, i32 noundef 1, i32 noundef %i.bc)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.hb, ptr noundef nonnull @.str.21, i32 noundef %i.bc)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  %i.hc = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.hd = load ptr, ptr %i.ag, align 8, !tbaa !357, !nonnull !168, !align !169
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 10412
  %i.hf = load float, ptr %i.he, align 4, !tbaa !370
  %i.hg = invoke ptr @ggml_rms_norm(ptr noundef %i.hc, ptr noundef %i.fv, float noundef %i.hf)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  %i.hh = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.hi = load i64, ptr %i.as, align 8, !tbaa !178
  %i.hj = sitofp i64 %i.hi to float
  %i.hk = tail call float @sqrtf(float noundef %i.hj) #15
  %i.hl = fdiv float 1.000000e+00, %i.hk
  %i.hm = invoke ptr @ggml_scale(ptr noundef %i.hh, ptr noundef %i.hg, float noundef %i.hl)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  %i.hn = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.ho = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.hp = getelementptr inbounds nuw [2552 x i8], ptr %i.ho, i64 %indvars.iv
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 528
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !127
  %i.hs = invoke ptr @ggml_mul(ptr noundef %i.hn, ptr noundef %i.hm, ptr noundef %i.hr)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  %i.ht = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.hu = getelementptr inbounds nuw [2552 x i8], ptr %i.ht, i64 %indvars.iv
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 520
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !126
  %i.hx = invoke noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.hw, ptr noundef %i.hs, ptr noundef null)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.hx, ptr noundef nonnull @.str.22, i32 noundef %i.bc)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %bb.br
  %i.hy = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.hz = getelementptr inbounds nuw [2552 x i8], ptr %i.hy, i64 %indvars.iv ; 7 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 552
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !133
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 536
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !132
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 544
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !134
  %i.ig = load i64, ptr %i.at, align 8, !tbaa !378
  %i.ih = load i64, ptr %i.au, align 8, !tbaa !379
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hz, i64 560
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !131
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hz, i64 624
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !380
  %i.im = getelementptr inbounds nuw i8, ptr %i.hz, i64 608
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !381
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 616
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !382
  %i.iq = invoke noundef ptr @_ZNK17llm_graph_context13build_moe_ffnEP11ggml_tensorS1_S1_S1_S1_S1_ll15llm_ffn_op_typebf29llama_expert_gating_func_typeiS1_S1_S1_S1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.hb, ptr noundef null, ptr noundef %i.ib, ptr noundef %i.id, ptr noundef %i.if, ptr noundef null, i64 noundef %i.ig, i64 noundef %i.ih, i32 noundef 2, i1 noundef zeroext true, float noundef 1.000000e+00, i32 noundef 1, i32 noundef %i.bc, ptr noundef %i.hx, ptr noundef %i.ij, ptr noundef %i.il, ptr noundef %i.in, ptr noundef %i.ip, ptr noundef null)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  %i.ir = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.is = getelementptr inbounds nuw [2552 x i8], ptr %i.ir, i64 %indvars.iv
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 424
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !130
  %i.iv = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.iq, ptr noundef %i.iu, ptr noundef null, i32 noundef 1, i32 noundef %i.bc)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.iv, ptr noundef nonnull @.str.23, i32 noundef %i.bc)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %bb.bu
  %i.iw = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.ix = invoke ptr @ggml_add(ptr noundef %i.iw, ptr noundef %i.gw, ptr noundef %i.iv)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ix, ptr noundef nonnull @.str.24, i32 noundef %i.bc)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bf
  %i.iy = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.fv, ptr noundef %i.gb, ptr noundef null, i32 noundef 1, i32 noundef %i.bc)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.iy, ptr noundef nonnull @.str.25, i32 noundef %i.bc)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  %i.iz = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.ja = getelementptr inbounds nuw [2552 x i8], ptr %i.iz, i64 %indvars.iv ; 6 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 488
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !123
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 1280
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !375
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 472
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !122
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 1272
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !376
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 480
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !124
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ja, i64 1288
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !377
  %i.jn = invoke noundef ptr @_ZNK17llm_graph_context9build_ffnEP11ggml_tensorS1_S1_S1_S1_S1_S1_S1_S1_S1_S1_15llm_ffn_op_type17llm_ffn_gate_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.iy, ptr noundef %i.jc, ptr noundef null, ptr noundef %i.je, ptr noundef %i.jg, ptr noundef null, ptr noundef %i.ji, ptr noundef %i.jk, ptr noundef null, ptr noundef %i.jm, ptr noundef null, i32 noundef 2, i32 noundef 1, i32 noundef %i.bc)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.jn, ptr noundef nonnull @.str.26, i32 noundef %i.bc)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %bb.bw, %bb.ca
  %.2324 = phi ptr [ %i.jn, %bb.ca ], [ %i.ix, %bb.bw ]
  %i.jo = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.jp = getelementptr inbounds nuw [2552 x i8], ptr %i.jo, i64 %indvars.iv
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 408
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !125
  %i.js = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.2324, ptr noundef %i.jr, ptr noundef null, i32 noundef 1, i32 noundef -1)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.js, ptr noundef nonnull @.str.27, i32 noundef %i.bc)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %bb.cc
  %i.jt = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.ju = invoke ptr @ggml_add(ptr noundef %i.jt, ptr noundef %i.js, ptr noundef %i.fv)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not344, label %bb.cr, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ju, ptr noundef nonnull @.str.28, i32 noundef %i.bc)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %bb.cf
  %i.jv = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.jw = getelementptr inbounds nuw [2552 x i8], ptr %i.jv, i64 %indvars.iv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1504
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !135
  %i.jz = invoke noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.jy, ptr noundef %i.ju, ptr noundef null)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cg
  %i.ka = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.kb = invoke ptr @ggml_gelu(ptr noundef %i.ka, ptr noundef %i.jz)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ch
  %i.kc = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.kd = load i64, ptr %i.av, align 8, !tbaa !96
  %i.ke = shl i64 %i.kd, 32
  %i.kf = ashr exact i64 %i.ke, 32
  %i.kg = icmp slt i64 %indvars.iv, %i.kf
  br i1 %i.kg, label %bb.cj, label %.invoke378

.invoke378:                                       ; preds = %bb.ci, %bb.p
  %i.kh = phi i32 [ 182, %bb.p ], [ 145, %bb.ci ]
  %i.ki = phi ptr [ @.str.7, %bb.p ], [ @.str.39, %bb.ci ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.5, i32 noundef %i.kh, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.ki) #16
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke378
  unreachable

bb.cj:                                            ; preds = %bb.ci
  %i.kj = load i64, ptr %i.aw, align 8, !tbaa !96 ; 2 uses
  %i.kk = load i64, ptr %i.ax, align 8, !tbaa !96
  %i.kl = load i32, ptr %.0298.a, align 8, !tbaa !387
  %i.km = invoke i64 @ggml_row_size(i32 noundef %i.kl, i64 noundef %i.kj)
          to label %.noexc364 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc364:                                        ; preds = %bb.cj
  %i.kn = load i64, ptr %i.aw, align 8, !tbaa !96
  %i.ko = load i64, ptr %i.ax, align 8, !tbaa !96
  %i.kp = invoke i64 @ggml_element_size(ptr noundef nonnull %.0298.a)
          to label %.noexc365 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc365:                                        ; preds = %.noexc364
  %i.kq = mul nsw i64 %i.kn, %indvars.iv
  %i.kr = mul nsw i64 %i.kq, %i.ko
  %i.ks = mul i64 %i.kr, %i.kp
  %i.kt = invoke noundef ptr @ggml_view_2d(ptr noundef %i.kc, ptr noundef nonnull %.0298.a, i64 noundef %i.kj, i64 noundef %i.kk, i64 noundef %i.km, i64 noundef %i.ks)
          to label %_ZL18ggml_view_2d_sliceP12ggml_contextP11ggml_tensori.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL18ggml_view_2d_sliceP12ggml_contextP11ggml_tensori.exit: ; preds = %.noexc365
  %i.ku = load i64, ptr %i.ad, align 8, !tbaa !179
  %i.kv = add nsw i64 %i.ku, -1
  %i.kw = icmp eq i64 %i.kv, %indvars.iv
  %or.cond3 = and i1 %i.ar, %i.kw
  br i1 %or.cond3, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %_ZL18ggml_view_2d_sliceP12ggml_contextP11ggml_tensori.exit
  %i.kx = load ptr, ptr %i.ah, align 8, !tbaa !358, !nonnull !168, !align !169
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 74
  %i.kz = load i8, ptr %i.ky, align 2, !tbaa !373, !range !374, !noundef !168
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.lb = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.lc = invoke ptr @ggml_get_rows(ptr noundef %i.lb, ptr noundef %i.kt, ptr noundef nonnull %i.w)
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc365, %.noexc364, %bb.cj, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bp, %bb.bo, %bb.bn, %bb.bd, %bb.be, %bb.u, %bb.v, %bb.w, %bb.t, %bb.q, %bb.n, %bb.o, %bb.r, %bb.s, %bb.x, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.aj, %bb.ak, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bm, %bb.bl, %bb.cf, %bb.cg, %bb.ch, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %.invoke, %.invoke378, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a, %bb.h, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.db, %bb.da, %bb.cz, %bb.cx, %._crit_edge, %bb.l, %bb.k, %bb.j
  %lpad.loopexit.split-lp382 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN17llm_graph_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #15
  resume { ptr, i32 } %lpad.loopexit.split-lp382

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %_ZL18ggml_view_2d_sliceP12ggml_contextP11ggml_tensori.exit
  %.0 = phi ptr [ %i.kt, %_ZL18ggml_view_2d_sliceP12ggml_contextP11ggml_tensori.exit ], [ %i.kt, %bb.ck ], [ %i.lc, %bb.cl ]
  %i.ld = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.le = invoke ptr @ggml_mul(ptr noundef %i.ld, ptr noundef %i.kb, ptr noundef %.0)
          to label %bb.cn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cm
  %i.lf = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.lg = getelementptr inbounds nuw [2552 x i8], ptr %i.lf, i64 %indvars.iv
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 1512
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !136
  %i.lj = invoke noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.li, ptr noundef %i.le, ptr noundef null)
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.co:                                            ; preds = %bb.cn
  %i.lk = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.ll = getelementptr inbounds nuw [2552 x i8], ptr %i.lk, i64 %indvars.iv
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 1520
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !137
  %i.lo = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.lj, ptr noundef %i.ln, ptr noundef null, i32 noundef 1, i32 noundef %i.bc)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.lo, ptr noundef nonnull @.str.29, i32 noundef %i.bc)
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cq:                                            ; preds = %bb.cp
  %i.lp = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.lq = invoke ptr @ggml_add(ptr noundef %i.lp, ptr noundef %i.ju, ptr noundef %i.lo)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cr:                                            ; preds = %bb.cq, %bb.ce
  %.3325 = phi ptr [ %i.ju, %bb.ce ], [ %i.lq, %bb.cq ] ; 2 uses
  %i.lr = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.ls = getelementptr inbounds nuw [2552 x i8], ptr %i.lr, i64 %indvars.iv
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 2096
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !119 ; 2 uses
  %.not347 = icmp eq ptr %i.lu, null
  br i1 %.not347, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lv = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.lw = invoke ptr @ggml_mul(ptr noundef %i.lv, ptr noundef %.3325, ptr noundef nonnull %i.lu)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.lw, ptr noundef nonnull @.str.30, i32 noundef %i.bc)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %bb.ct, %bb.cr
  %.4326 = phi ptr [ %i.lw, %bb.ct ], [ %.3325, %bb.cr ]
  %i.lx = invoke noundef ptr @_ZNK17llm_graph_context10build_cvecEP11ggml_tensori(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.4326, i32 noundef %i.bc)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.lx, ptr noundef nonnull @.str.31, i32 noundef %i.bc)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cw:                                            ; preds = %bb.cv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ly = load i64, ptr %i.ad, align 8, !tbaa !179
  %i.lz = icmp sgt i64 %i.ly, %indvars.iv.next
  br i1 %i.lz, label %bb.n, label %._crit_edge, !llvm.loop !354

bb.cx:                                            ; preds = %._crit_edge
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ba, ptr noundef nonnull @.str.32, i32 noundef -1)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !180
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 48
  store ptr %i.ba, ptr %i.mc, align 8, !tbaa !388
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !358, !nonnull !168, !align !169
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 74
  %i.mg = load i8, ptr %i.mf, align 2, !tbaa !373, !range !374, !noundef !168
  %i.mh = trunc nuw i8 %i.mg to i1
  %i.mi = icmp eq ptr %i.w, null
  %or.cond5.not = or i1 %i.mi, %i.mh
  br i1 %or.cond5.not, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.mj = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.mk = invoke ptr @ggml_get_rows(ptr noundef %i.mj, ptr noundef %i.ba, ptr noundef nonnull %i.w)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.5327 = phi ptr [ %i.ba, %bb.cy ], [ %i.mk, %bb.cz ] ; 3 uses
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.5327, ptr noundef nonnull @.str.33, i32 noundef -1)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.db:                                            ; preds = %bb.da
  %i.ml = load ptr, ptr %i.ma, align 8, !tbaa !180
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  store ptr %.5327, ptr %i.mm, align 8, !tbaa !389
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 36200
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !98
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 36224
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !390
  %i.mr = invoke noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.mo, ptr noundef %.5327, ptr noundef %i.mq)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !357, !nonnull !168, !align !169
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 10428
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !391 ; 2 uses
  %i.mw = fcmp une float %i.mv, 0.000000e+00
  br i1 %i.mw, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.mx = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.my = fdiv float 1.000000e+00, %i.mv
  %i.mz = invoke ptr @ggml_scale(ptr noundef %i.mx, ptr noundef %i.mr, float noundef %i.my)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %bb.dd
  %i.na = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.nb = invoke ptr @ggml_tanh(ptr noundef %i.na, ptr noundef %i.mz)
end_hunk_1
