Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/granite-switch?download=true
inline.NumInlined: 458
inline.NumDeleted: 287
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN26llama_model_granite_switch17load_arch_tensorsER18llama_model_loader:bb.a
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %41, i32 noundef %i.go, i32 noundef 31, ptr noundef nonnull @.str.6, i32 noundef %i.ew, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #15
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !118
  store i64 %i.bb, ptr %i.eb, align 8, !tbaa !118
  store i64 %i.ay, ptr %i.ec, align 8, !tbaa !118
  store ptr %i.t, ptr %42, align 8, !tbaa !265
  store i64 3, ptr %i.ed, align 8, !tbaa !266
  %i.gp = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(16) %42, i32 noundef 0)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eu, i64 2504
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15
  %i.gr = load i32, ptr %i.bd, align 8, !tbaa !262, !noalias !288
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %43, i32 noundef %i.gr, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef %i.ew, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #15
  store i64 %i.bb, ptr %i.u, align 8, !tbaa !118
  store i64 %i.ao, ptr %i.ee, align 8, !tbaa !118
  store i64 %i.ay, ptr %i.ef, align 8, !tbaa !118
  store ptr %i.u, ptr %44, align 8, !tbaa !265
  store i64 3, ptr %i.eg, align 8, !tbaa !266
  %i.gs = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(16) %44, i32 noundef 0)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.eu, i64 2512
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #15
  %i.gu = load i32, ptr %i.bd, align 8, !tbaa !262, !noalias !289
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %45, i32 noundef %i.gu, i32 noundef 33, ptr noundef nonnull @.str.6, i32 noundef %i.ew, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #15
  store i64 %i.ag, ptr %i.v, align 8, !tbaa !118
  store i64 %i.bb, ptr %i.eh, align 8, !tbaa !118
  store i64 %i.ay, ptr %i.ei, align 8, !tbaa !118
  store ptr %i.v, ptr %46, align 8, !tbaa !265
  store i64 3, ptr %i.ej, align 8, !tbaa !266
  %i.gv = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(16) %46, i32 noundef 0)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eu, i64 2520
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #15
  %i.gx = load i32, ptr %i.bd, align 8, !tbaa !262, !noalias !290
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %47, i32 noundef %i.gx, i32 noundef 33, ptr noundef nonnull @.str.7, i32 noundef %i.ew, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #15
  store i64 %i.bb, ptr %i.w, align 8, !tbaa !118
  store i64 %i.ao, ptr %i.ek, align 8, !tbaa !118
  store i64 %i.ay, ptr %i.el, align 8, !tbaa !118
  store ptr %i.w, ptr %48, align 8, !tbaa !265
  store i64 3, ptr %i.em, align 8, !tbaa !266
  %i.gy = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(16) %48, i32 noundef 0)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.eu, i64 2528
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #15
  %i.ha = load i32, ptr %i.bd, align 8, !tbaa !262, !noalias !291
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %49, i32 noundef %i.ha, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %i.ew, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #15
  store i64 %i.ao, ptr %i.x, align 8, !tbaa !118
  store i64 %i.bb, ptr %i.en, align 8, !tbaa !118
  store i64 %i.ay, ptr %i.eo, align 8, !tbaa !118
  store ptr %i.x, ptr %50, align 8, !tbaa !265
  store i64 3, ptr %i.ep, align 8, !tbaa !266
  %i.hb = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(16) %50, i32 noundef 0)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eu, i64 2536
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #15
  %i.hd = load i32, ptr %i.bd, align 8, !tbaa !262, !noalias !292
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %51, i32 noundef %i.hd, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %i.ew, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #15
  store i64 %i.bb, ptr %i.y, align 8, !tbaa !118
  store i64 %i.ag, ptr %i.eq, align 8, !tbaa !118
  store i64 %i.ay, ptr %i.er, align 8, !tbaa !118
  store ptr %i.y, ptr %52, align 8, !tbaa !265
  store i64 3, ptr %i.es, align 8, !tbaa !266
  %i.he = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(16) %52, i32 noundef 0)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eu, i64 2544
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !261

bb.n:                                             ; preds = %bb.g
  unreachable
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

declare noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN22llm_graph_input_switch9set_inputEPK12llama_ubatch(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !297  ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 11 uses
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.noexc

.noexc:                                           ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 6 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18 ; 8 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 4 uses
  store i32 0, ptr %i.g, align 4, !tbaa !98
  %i.i = add nsw i64 %i.e, -1                     ; 4 uses
  %i.j = icmp eq i64 %i.i, 0                      ; 3 uses
  br i1 %i.j, label %bb.c, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %i.k = getelementptr i8, ptr %i.g, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !98
  br label %bb.c

bb.c:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
          to label %.noexc39 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit73.thread ; 8 uses

.noexc39:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.e ; 3 uses
  store float 0.000000e+00, ptr %i.l, align 4, !tbaa !298
  br i1 %i.j, label %bb.d, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc39
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %.idx.i.i.i.i.i.i.i37 = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i37, i1 false), !tbaa !298
  br label %bb.d

bb.d:                                             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc39
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
          to label %.noexc45 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit71.thread ; 6 uses

.noexc45:                                         ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.e ; 2 uses
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !298
  br i1 %i.j, label %bb.e, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i41

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i41: ; preds = %.noexc45
  %i.q = getelementptr i8, ptr %i.o, i64 4
  %.idx.i.i.i.i.i.i.i42 = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i42, i1 false), !tbaa !298
  br label %bb.e

bb.e:                                             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i41, %.noexc45
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
          to label %.noexc49 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit69.thread ; 6 uses

.noexc49:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f
  %i.t = add nsw i64 %i.f, -4                     ; 2 uses
  %i.u = lshr exact i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc49
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %next.gep, align 4, !tbaa !298
  store <4 x float> splat (float 1.000000e+00), ptr %i.x, align 4, !tbaa !298
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !293

middle.block:                                     ; preds = %vector.body
  %2 = shl i64 %n.vec, 2
  %3 = getelementptr i8, ptr %i.r, i64 %2
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc49, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.noexc49 ], [ %3, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float 1.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !298
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !294

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !301, !nonnull !11, !align !162 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 36920
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !163
  %.not.not.i.i = icmp eq i64 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 36896
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 36904
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 36912
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 36892 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 36976
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !163
  %.not.not.i.i51 = icmp eq i64 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 36952
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 36960
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 36968
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62.thread
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.e
  %5 = ptrtoint ptr %4 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.sroa.10.0262 = phi i64 [ 0, %bb.b ], [ %5, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.090.0261 = phi ptr [ null, %bb.b ], [ %i.r, %._crit_edge.loopexit ] ; 7 uses
  %.sroa.0102.0145156260 = phi ptr [ null, %bb.b ], [ %i.l, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.12108.0140158259 = phi ptr [ null, %bb.b ], [ %i.m, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.11116.0120138160258 = phi ptr [ null, %bb.b ], [ %i.h, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0111.0126136162257 = phi ptr [ null, %bb.b ], [ %i.g, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.095.0164256 = phi ptr [ null, %bb.b ], [ %i.o, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.12.0168255 = phi ptr [ null, %bb.b ], [ %i.p, %._crit_edge.loopexit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !164 ; 2 uses
  %i.ap = invoke i64 @ggml_element_size(ptr noundef %i.ao)
          to label %bb.r unwind label %bb.ad

_ZNSt6vectorIfSaIfEED2Ev.exit73.thread:           ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZNSt6vectorIfSaIfEED2Ev.exit71.thread:           ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt6vectorIfSaIfEED2Ev.exit69.thread:           ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.f:                                             ; preds = %.lr.ph, %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62.thread
  %.0226 = phi i64 [ 0, %.lr.ph ], [ %i.cs, %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62.thread ] ; 6 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0226
  %i.au = load i32, ptr %i.at, align 4, !tbaa !98 ; 12 uses
  br i1 %.not.not.i.i, label %.preheader230, label %bb.h

.preheader230:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.g ], [ %i.ag, %bb.f ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !111 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader230
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !98
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit, label %.preheader230, !llvm.loop !295

bb.h:                                             ; preds = %bb.f
  %i.ay = sext i32 %i.au to i64
  %i.az = load i64, ptr %i.af, align 8, !tbaa !114 ; 2 uses
  %i.ba = urem i64 %i.ay, %i.az                   ; 2 uses
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !113
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !115 ; 2 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i50, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !111 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !98
  %i.bh = icmp eq i32 %i.au, %i.bg
  br i1 %i.bh, label %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.bi = icmp eq i32 %i.au, %i.bl
  br i1 %i.bi, label %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.020.i.i.i.i = phi ptr [ %i.bj, %bb.j ], [ %i.be, %bb.i ]
  %i.bj = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !111 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !98 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = urem i64 %i.bm, %i.az
  %.not19.i.i.i.i = icmp eq i64 %i.bn, %i.ba
  br i1 %.not19.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.k
  br label %.loopexit, !llvm.loop !1

_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit: ; preds = %bb.j, %bb.g, %bb.i
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.g ], [ %i.be, %bb.i ], [ %i.bj, %bb.j ]
  %i.bo = load float, ptr %i.ah, align 4, !tbaa !302
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0226
  store float %i.bo, ptr %i.bp, align 4, !tbaa !298
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !117
  %i.bs = sitofp i32 %i.br to float
  br label %bb.l

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader230, %..loopexit_crit_edge21.i.i.i.i, %bb.h
  %i.bt = load float, ptr %i.ah, align 4, !tbaa !302
  %i.bu = fneg float %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0226
  store float %i.bu, ptr %i.bv, align 4, !tbaa !298
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit
  %.sink = phi float [ 0.000000e+00, %.loopexit ], [ %i.bs, %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.0226
  store float %.sink, ptr %i.bw, align 4, !tbaa !298
  br i1 %.not.not.i.i51, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.l, %bb.m
  %.sroa.06.0.in.i.i59 = phi ptr [ %.sroa.06.0.i.i60, %bb.m ], [ %i.am, %bb.l ]
  %.sroa.06.0.i.i60 = load ptr, ptr %.sroa.06.0.in.i.i59, align 8, !tbaa !111 ; 4 uses
  %.not.i.i61 = icmp eq ptr %.sroa.06.0.i.i60, null
  br i1 %.not.i.i61, label %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62.thread, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i60, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !98
  %i.bz = icmp eq i32 %i.au, %i.by
  br i1 %i.bz, label %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62, label %.preheader, !llvm.loop !295

bb.n:                                             ; preds = %bb.l
  %i.ca = sext i32 %i.au to i64
  %i.cb = load i64, ptr %i.al, align 8, !tbaa !114 ; 2 uses
  %i.cc = urem i64 %i.ca, %i.cb                   ; 2 uses
  %i.cd = load ptr, ptr %i.ak, align 8, !tbaa !113
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !115 ; 2 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i52, label %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !111 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !98
  %i.cj = icmp eq i32 %i.au, %i.ci
  br i1 %i.cj, label %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62, label %.lr.ph.i.i.i.i53

bb.p:                                             ; preds = %bb.q
  %i.ck = icmp eq i32 %i.au, %i.cn
  br i1 %i.ck, label %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62, label %.lr.ph.i.i.i.i53, !llvm.loop !1

.lr.ph.i.i.i.i53:                                 ; preds = %bb.o, %bb.p
  %.020.i.i.i.i54 = phi ptr [ %i.cl, %bb.p ], [ %i.cg, %bb.o ]
  %i.cl = load ptr, ptr %.020.i.i.i.i54, align 8, !tbaa !111 ; 4 uses
  %.not18.i.i.i.i55 = icmp eq ptr %i.cl, null
  br i1 %.not18.i.i.i.i55, label %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i53
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !98 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = urem i64 %i.co, %i.cb
  %.not19.i.i.i.i56 = icmp eq i64 %i.cp, %i.cc
  br i1 %.not19.i.i.i.i56, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i57, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i57:                 ; preds = %bb.q
  br label %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62.thread, !llvm.loop !1

_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62: ; preds = %bb.p, %bb.m, %bb.o
  %.sroa.06.1.i.i58 = phi ptr [ %.sroa.06.0.i.i60, %bb.m ], [ %i.cg, %bb.o ], [ %i.cl, %bb.p ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i58, i64 12
  %.in.sroa.speculate.load. = load i32, ptr %i.cq, align 4, !tbaa !98
  br label %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62.thread

_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62.thread: ; preds = %.lr.ph.i.i.i.i53, %.preheader, %bb.n, %..loopexit_crit_edge21.i.i.i.i57, %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62
  %.in.sroa.speculated = phi i32 [ %.in.sroa.speculate.load., %_ZNKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit62 ], [ %i.au, %..loopexit_crit_edge21.i.i.i.i57 ], [ %i.au, %.preheader ], [ %i.au, %bb.n ], [ %i.au, %.lr.ph.i.i.i.i53 ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.0226
  store i32 %.in.sroa.speculated, ptr %i.cr, align 4, !tbaa !98
  %i.cs = add nuw nsw i64 %.0226, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.e
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !296

bb.r:                                             ; preds = %._crit_edge
  %i.ct = mul i64 %i.ap, %i.e
  invoke void @ggml_backend_tensor_set(ptr noundef %i.ao, ptr noundef %.sroa.0111.0126136162257, i64 noundef 0, i64 noundef %i.ct)
          to label %bb.s unwind label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !165 ; 2 uses
  %i.cw = invoke i64 @ggml_element_size(ptr noundef %i.cv)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.cx = mul i64 %i.cw, %i.e
  invoke void @ggml_backend_tensor_set(ptr noundef %i.cv, ptr noundef %.sroa.0102.0145156260, i64 noundef 0, i64 noundef %i.cx)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !166 ; 2 uses
  %i.da = invoke i64 @ggml_element_size(ptr noundef %i.cz)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.db = mul i64 %i.da, %i.e
  invoke void @ggml_backend_tensor_set(ptr noundef %i.cz, ptr noundef %.sroa.095.0164256, i64 noundef 0, i64 noundef %i.db)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !167 ; 2 uses
  %i.de = invoke i64 @ggml_element_size(ptr noundef %i.dd)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.df = mul i64 %i.de, %i.e
  invoke void @ggml_backend_tensor_set(ptr noundef %i.dd, ptr noundef %.sroa.090.0261, i64 noundef 0, i64 noundef %i.df)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %.not.i.i.i = icmp eq ptr %.sroa.090.0261, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = ptrtoint ptr %.sroa.090.0261 to i64
  %i.dh = sub i64 %.sroa.10.0262, %i.dg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0261, i64 noundef %i.dh) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.y, %bb.z
  %.not.i.i.i63 = icmp eq ptr %.sroa.095.0164256, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIfSaIfEED2Ev.exit64, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.di = ptrtoint ptr %.sroa.12.0168255 to i64
  %i.dj = ptrtoint ptr %.sroa.095.0164256 to i64
  %i.dk = sub i64 %i.di, %i.dj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0164256, i64 noundef %i.dk) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit64

_ZNSt6vectorIfSaIfEED2Ev.exit64:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.aa
  %.not.i.i.i65 = icmp eq ptr %.sroa.0102.0145156260, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIfSaIfEED2Ev.exit66, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit64
  %i.dl = ptrtoint ptr %.sroa.12108.0140158259 to i64
  %i.dm = ptrtoint ptr %.sroa.0102.0145156260 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0145156260, i64 noundef %i.dn) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit66

_ZNSt6vectorIfSaIfEED2Ev.exit66:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit64, %bb.ab
  %.not.i.i.i67 = icmp eq ptr %.sroa.0111.0126136162257, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit66
  %i.do = ptrtoint ptr %.sroa.11116.0120138160258 to i64
  %i.dp = ptrtoint ptr %.sroa.0111.0126136162257 to i64
  %i.dq = sub i64 %i.do, %i.dp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.0126136162257, i64 noundef %i.dq) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ac, %_ZNSt6vectorIfSaIfEED2Ev.exit66, %bb.a
  ret void

bb.ad:                                            ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %._crit_edge
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %.sroa.090.0261, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIfSaIfEED2Ev.exit69, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = ptrtoint ptr %.sroa.090.0261 to i64
  %i.dt = sub i64 %.sroa.10.0262, %i.ds
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0261, i64 noundef %i.dt) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit69

_ZNSt6vectorIfSaIfEED2Ev.exit69:                  ; preds = %bb.ae, %bb.ad
  %.not.i.i.i70 = icmp eq ptr %.sroa.095.0164256, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorIfSaIfEED2Ev.exit71, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit69.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit69
  %.pn.pn.pn192 = phi { ptr, i32 } [ %i.as, %_ZNSt6vectorIfSaIfEED2Ev.exit69.thread ], [ %i.dr, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ]
  %.sroa.11116.0124190 = phi ptr [ %i.h, %_ZNSt6vectorIfSaIfEED2Ev.exit69.thread ], [ %.sroa.11116.0120138160258, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ]
  %.sroa.0111.0130188 = phi ptr [ %i.g, %_ZNSt6vectorIfSaIfEED2Ev.exit69.thread ], [ %.sroa.0111.0126136162257, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ]
  %.sroa.12108.0143186 = phi ptr [ %i.m, %_ZNSt6vectorIfSaIfEED2Ev.exit69.thread ], [ %.sroa.12108.0140158259, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ]
  %.sroa.0102.0148184 = phi ptr [ %i.l, %_ZNSt6vectorIfSaIfEED2Ev.exit69.thread ], [ %.sroa.0102.0145156260, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ]
  %.sroa.095.0166183 = phi ptr [ %i.o, %_ZNSt6vectorIfSaIfEED2Ev.exit69.thread ], [ %.sroa.095.0164256, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ] ; 2 uses
  %.sroa.12.0170182 = phi ptr [ %i.p, %_ZNSt6vectorIfSaIfEED2Ev.exit69.thread ], [ %.sroa.12.0168255, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ]
  %i.du = ptrtoint ptr %.sroa.12.0170182 to i64
  %i.dv = ptrtoint ptr %.sroa.095.0166183 to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0166183, i64 noundef %i.dw) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit71

_ZNSt6vectorIfSaIfEED2Ev.exit71:                  ; preds = %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit69
  %.sroa.0102.0147 = phi ptr [ %.sroa.0102.0148184, %bb.af ], [ %.sroa.0102.0145156260, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ] ; 2 uses
  %.sroa.12108.0142 = phi ptr [ %.sroa.12108.0143186, %bb.af ], [ %.sroa.12108.0140158259, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ]
  %.sroa.0111.0129 = phi ptr [ %.sroa.0111.0130188, %bb.af ], [ %.sroa.0111.0126136162257, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ] ; 2 uses
  %.sroa.11116.0123 = phi ptr [ %.sroa.11116.0124190, %bb.af ], [ %.sroa.11116.0120138160258, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ] ; 2 uses
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn192, %bb.af ], [ %i.dr, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ] ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %.sroa.0102.0147, null
  br i1 %.not.i.i.i72, label %_ZNSt6vectorIfSaIfEED2Ev.exit73, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit71.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit71
  %.pn.pn.pn.pn206 = phi { ptr, i32 } [ %i.ar, %_ZNSt6vectorIfSaIfEED2Ev.exit71.thread ], [ %.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit71 ]
  %.sroa.11116.0123204 = phi ptr [ %i.h, %_ZNSt6vectorIfSaIfEED2Ev.exit71.thread ], [ %.sroa.11116.0123, %_ZNSt6vectorIfSaIfEED2Ev.exit71 ]
  %.sroa.0111.0129202 = phi ptr [ %i.g, %_ZNSt6vectorIfSaIfEED2Ev.exit71.thread ], [ %.sroa.0111.0129, %_ZNSt6vectorIfSaIfEED2Ev.exit71 ]
  %.sroa.12108.0142201 = phi ptr [ %i.m, %_ZNSt6vectorIfSaIfEED2Ev.exit71.thread ], [ %.sroa.12108.0142, %_ZNSt6vectorIfSaIfEED2Ev.exit71 ]
  %.sroa.0102.0147200 = phi ptr [ %i.l, %_ZNSt6vectorIfSaIfEED2Ev.exit71.thread ], [ %.sroa.0102.0147, %_ZNSt6vectorIfSaIfEED2Ev.exit71 ] ; 2 uses
  %i.dx = ptrtoint ptr %.sroa.12108.0142201 to i64
  %i.dy = ptrtoint ptr %.sroa.0102.0147200 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0147200, i64 noundef %i.dz) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit73

_ZNSt6vectorIfSaIfEED2Ev.exit73:                  ; preds = %bb.ag, %_ZNSt6vectorIfSaIfEED2Ev.exit71
  %.sroa.0111.0128 = phi ptr [ %.sroa.0111.0129202, %bb.ag ], [ %.sroa.0111.0129, %_ZNSt6vectorIfSaIfEED2Ev.exit71 ] ; 2 uses
  %.sroa.11116.0122 = phi ptr [ %.sroa.11116.0123204, %bb.ag ], [ %.sroa.11116.0123, %_ZNSt6vectorIfSaIfEED2Ev.exit71 ]
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn206, %bb.ag ], [ %.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit71 ] ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %.sroa.0111.0128, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIiSaIiEED2Ev.exit75, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit73.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit73
  %.pn.pn.pn.pn.pn214 = phi { ptr, i32 } [ %i.aq, %_ZNSt6vectorIfSaIfEED2Ev.exit73.thread ], [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit73 ]
  %.sroa.11116.0122213 = phi ptr [ %i.h, %_ZNSt6vectorIfSaIfEED2Ev.exit73.thread ], [ %.sroa.11116.0122, %_ZNSt6vectorIfSaIfEED2Ev.exit73 ]
  %.sroa.0111.0128212 = phi ptr [ %i.g, %_ZNSt6vectorIfSaIfEED2Ev.exit73.thread ], [ %.sroa.0111.0128, %_ZNSt6vectorIfSaIfEED2Ev.exit73 ] ; 2 uses
  %i.ea = ptrtoint ptr %.sroa.11116.0122213 to i64
  %i.eb = ptrtoint ptr %.sroa.0111.0128212 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.0128212, i64 noundef %i.ec) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit75

_ZNSt6vectorIiSaIiEED2Ev.exit75:                  ; preds = %bb.ah, %_ZNSt6vectorIfSaIfEED2Ev.exit73
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn214, %bb.ah ], [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit73 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare void @ggml_backend_tensor_set(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ggml_element_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK26llama_model_granite_switch16build_arch_graphERK16llm_graph_params(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.150") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(37008) %1, ptr noundef nonnull align 8 dereferenceable(36496) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #18, !noalias !305 ; 3 uses
  invoke void @_ZN26llama_model_granite_switch5graphC1ERK11llama_modelRK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(336) %i.a, ptr noundef nonnull align 8 dereferenceable(37008) %1, ptr noundef nonnull align 8 dereferenceable(36496) %2)
          to label %_ZNSt10unique_ptrIN26llama_model_granite_switch5graphESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !305

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 336) #17, !noalias !305
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN26llama_model_granite_switch5graphESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !308
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN26llama_model_granite_switch5graph25build_switched_lora_deltaEP11ggml_tensorS2_S2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !118  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !191
  %i.g = tail call ptr @ggml_reshape_3d(ptr noundef %i.f, ptr noundef %3, i64 noundef %i.b, i64 noundef 1, i64 noundef %i.d)
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !191
  %i.i = tail call ptr @ggml_reshape_2d(ptr noundef %i.h, ptr noundef %4, i64 noundef 1, i64 noundef %i.d) ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !191
  %i.k = tail call ptr @ggml_mul_mat_id(ptr noundef %i.j, ptr noundef %1, ptr noundef %i.g, ptr noundef %i.i)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !191
  %i.m = tail call ptr @ggml_mul_mat_id(ptr noundef %i.l, ptr noundef %2, ptr noundef %i.k, ptr noundef %i.i) ; 2 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !191
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !118
  %i.q = tail call ptr @ggml_reshape_2d(ptr noundef %i.n, ptr noundef %i.m, i64 noundef %i.p, i64 noundef %i.d)
end_hunk_0
