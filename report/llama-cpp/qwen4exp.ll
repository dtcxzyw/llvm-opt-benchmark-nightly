Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/qwen4exp?download=true
inline.NumInlined: 828
inline.NumDeleted: 450
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN20llama_model_qwen4exp5graph19build_conv_state_atEP18llm_graph_input_rsP11ggml_tensorS4_lli:bb.a
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.p

bb.m:                                             ; preds = %.critedge.i, %_ZNSt3mapIP11ggml_tensorS1_St4lessIS1_ESaISt4pairIKS1_S1_EEE4findERS5_.exit.thread
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_Auto_nodeD2Ev.exit.i, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.m ], [ %i.az, %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_Auto_nodeD2Ev.exit.i ]
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !269 ; 2 uses
  %.not.i47 = icmp eq ptr %i.bf, null
  br i1 %.not.i47, label %_ZNSt14_Function_baseD2Ev.exit48, label %bb.n

bb.n:                                             ; preds = %.body
  %i.bg = invoke noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit48 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit48:                 ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %eh.lpad-body

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNSt3mapIP11ggml_tensorS1_St4lessIS1_ESaISt4pairIKS1_S1_EEE4findERS5_.exit
  %.sroa.055.0 = phi ptr [ %.sroa.018.0.i, %_ZNSt14_Function_baseD2Ev.exit ], [ %.19.i.i.i, %_ZNSt3mapIP11ggml_tensorS1_St4lessIS1_ESaISt4pairIKS1_S1_EEE4findERS5_.exit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.055.0, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !593
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !195
  %i.bn = call ptr @ggml_reshape_3d(ptr noundef %i.bm, ptr noundef %i.bk, i64 noundef %4, i64 noundef %5, i64 noundef %i.h) ; 2 uses
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.bn, ptr noundef nonnull @.str.80, i32 noundef %6)
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !195 ; 2 uses
  %i.bp = call ptr @ggml_transpose(ptr noundef %i.bo, ptr noundef %3)
  %i.bq = call ptr @ggml_concat(ptr noundef %i.bo, ptr noundef %i.bn, ptr noundef %i.bp, i32 noundef 0) ; 6 uses
  %i.br = load i32, ptr %2, align 8, !tbaa !201
  %i.bs = call i64 @ggml_row_size(i32 noundef %i.br, i64 noundef %i.j)
  %i.bt = call noundef i32 @_ZNK30llama_memory_recurrent_context8get_sizeEv(ptr noundef nonnull align 8 dereferenceable(57) %i.b)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !270, !nonnull !191, !align !192
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !594
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cd = zext i32 %i.bt to i64
  %i.ce = zext i32 %i.c to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  ret ptr %i.bq

bb.r:                                             ; preds = %bb.p, %bb.r
  %.066 = phi i64 [ 0, %bb.p ], [ %i.cz, %bb.r ]  ; 4 uses
  %i.cg = load i64, ptr %i.bz, align 8, !tbaa !111
  %i.ch = add i64 %.066, %4
  %i.ci = sub i64 %i.cg, %i.ch
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.ci, i64 0)
  %i.cj = load ptr, ptr %i.bl, align 8, !tbaa !195
  %i.ck = load i64, ptr %i.ca, align 8, !tbaa !111
  %i.cl = load i64, ptr %i.cb, align 8, !tbaa !111
  %i.cm = load i32, ptr %i.bq, align 8, !tbaa !201
  %i.cn = call i64 @ggml_row_size(i32 noundef %i.cm, i64 noundef %.sroa.speculated)
  %i.co = call ptr @ggml_view_3d(ptr noundef %i.cj, ptr noundef nonnull %i.bq, i64 noundef %4, i64 noundef %5, i64 noundef %i.h, i64 noundef %i.ck, i64 noundef %i.cl, i64 noundef %i.cn)
  %i.cp = load ptr, ptr %i.bl, align 8, !tbaa !195
  %i.cq = load i64, ptr %i.cc, align 8, !tbaa !111
  %i.cr = mul nuw nsw i64 %.066, %i.cd
  %i.cs = add nuw nsw i64 %i.cr, %i.ce
  %i.ct = mul i64 %i.cs, %i.bs
  %i.cu = call ptr @ggml_view_2d(ptr noundef %i.cp, ptr noundef nonnull %2, i64 noundef %i.j, i64 noundef %i.h, i64 noundef %i.cq, i64 noundef %i.ct)
  %i.cv = load ptr, ptr %i.cf, align 8, !tbaa !208
  %i.cw = load ptr, ptr %i.bl, align 8, !tbaa !195 ; 2 uses
  %i.cx = call ptr @ggml_cont(ptr noundef %i.cw, ptr noundef %i.co)
  %i.cy = call ptr @ggml_cpy(ptr noundef %i.cw, ptr noundef %i.cx, ptr noundef %i.cu)
  call void @ggml_build_forward_expand(ptr noundef %i.cv, ptr noundef %i.cy)
  %i.cz = add nuw nsw i64 %.066, 1
  %exitcond.not = icmp eq i64 %.066, %i.by
  br i1 %exitcond.not, label %bb.q, label %bb.r, !llvm.loop !590
}

declare noundef ptr @_ZNK17llm_graph_context8build_rsEP18llm_graph_input_rsP11ggml_tensoriiRKSt8functionIFS3_P12ggml_contextS3_S3_EE(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef i32 @_ZNK13llama_hparams8n_embd_sEv(ptr noundef nonnull align 8 dereferenceable(36056)) local_unnamed_addr #1

declare ptr @ggml_ssm_conv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ggml_l2_norm(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare noundef ptr @_ZN24llm_build_delta_net_base20build_recurrent_attnEP18llm_graph_input_rsP11ggml_tensorS3_S3_S3_S3_S3_S3_i(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK17llm_graph_context13build_moe_ffnEP11ggml_tensorS1_S1_S1_S1_S1_ll15llm_ffn_op_typebf29llama_expert_gating_func_typeiS1_S1_S1_S1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, float noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK17llm_graph_context9build_ffnEP11ggml_tensorS1_S1_S1_S1_S1_S1_S1_S1_S1_S1_15llm_ffn_op_type17llm_ffn_gate_typei(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN19llm_graph_input_ple9set_inputEPK12llama_ubatch(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !294, !nonnull !191, !align !192 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 29284
  %i.d = load i32, ptr %i.c, align 4, !tbaa !602  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 29280
  %i.f = load i32, ptr %i.e, align 8, !tbaa !603  ; 2 uses
  %. = select i1 %.not, i32 %i.f, i32 %i.d        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !263  ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 29260
  %i.k = load i32, ptr %i.j, align 4, !tbaa !256
  %.fr157 = freeze i32 %i.k                       ; 4 uses
  %i.l = zext i32 %.fr157 to i64                  ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 29272
  %i.n = load i32, ptr %i.m, align 8, !tbaa !219
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 29264
  %i.q = load i32, ptr %i.p, align 8, !tbaa !604
  %.fr158 = freeze i32 %i.q                       ; 4 uses
  %i.r = zext i32 %.fr158 to i64                  ; 3 uses
  %i.s = zext i32 %i.f to i64                     ; 4 uses
  %i.t = add nsw i64 %i.l, -1                     ; 7 uses
  %i.u = mul nuw nsw i64 %i.o, %i.i               ; 5 uses
  %i.v = icmp samesign ugt i64 %i.u, 2305843009213693951
  br i1 %i.v, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #19
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc83

.noexc83:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.w = shl nuw nsw i64 %i.u, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21 ; 5 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.u ; 2 uses
  store i32 0, ptr %i.x, align 4, !tbaa !110
  %i.z = getelementptr i8, ptr %i.x, i64 4        ; 3 uses
  %i.aa = add nsw i64 %i.u, -1                    ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc83
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 2  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.z, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !110
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc83, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.097.0 = phi ptr [ %i.x, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.x, %.noexc83 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.13.0 = phi ptr [ %i.y, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.y, %.noexc83 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.z, %.noexc83 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !251 ; 2 uses
  %.not78 = icmp eq ptr %i.ae, null
  br i1 %.not78, label %.invoke, label %.preheader108

.preheader108:                                    ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.not155 = icmp eq i32 %i.h, 0                  ; 2 uses
  br i1 %.not155, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader108
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !605
  br label %bb.h

bb.b:                                             ; preds = %bb.h
  %i.ah = add nuw nsw i64 %.071109, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !595

._crit_edge:                                      ; preds = %bb.b, %.preheader108
  %i.ai = trunc i64 %i.t to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_ZNK22llama_kv_cache_context15get_prev_tokensERK12llama_ubatchjRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(148) %i.ae, ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.preheader107 unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader107:                                    ; preds = %._crit_edge
  br i1 %.not155, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %.preheader107
  %.not.i.i.i.i84 = icmp ne i32 %.fr157, 0        ; 3 uses
  %i.ak = shl nuw nsw i64 %i.l, 3                 ; 2 uses
  %i.al = icmp eq i64 %i.t, 0                     ; 2 uses
  %.idx.i.i.i.i.i.i.i85 = shl nuw nsw i64 %i.t, 3 ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.an = icmp ugt i32 %.fr157, 1                 ; 2 uses
  %.not79119 = icmp ult i32 %.fr157, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 29352 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 29672 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 29416 ; 3 uses
  br i1 %.not79119, label %.lr.ph123.split.us.split, label %.lr.ph123.split

.lr.ph123.split.us.split:                         ; preds = %.lr.ph123
  tail call void @llvm.assume(i1 %.not.i.i.i.i84)
  br label %._crit_edge124

.lr.ph123.split:                                  ; preds = %.lr.ph123
  %.not159 = icmp eq i32 %.fr158, 0
  br i1 %.not159, label %.lr.ph123.split.split, label %.lr.ph123.split.split.us.preheader

.lr.ph123.split.split.us.preheader:               ; preds = %.lr.ph123.split
  %xtraiter = and i64 %i.r, 1
  %i.ar = icmp eq i32 %.fr158, 1
  %unroll_iter = and i64 %i.r, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod213 = trunc i32 %.fr158 to i1
  br label %.lr.ph123.split.split.us

.lr.ph123.split.split.us:                         ; preds = %.lr.ph123.split.split.us.preheader, %._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us
  %.070122.us125 = phi i64 [ %i.dx, %._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us ], [ 0, %.lr.ph123.split.split.us.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i84, label %bb.c, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128

bb.c:                                             ; preds = %.lr.ph123.split.split.us
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
          to label %.noexc87.us126 unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc87.us126:                                   ; preds = %bb.c
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.l ; 2 uses
  store i64 0, ptr %i.as, align 8, !tbaa !111
  br i1 %i.al, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.us127

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.us127: ; preds = %.noexc87.us126
  %i.au = getelementptr i8, ptr %i.as, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.au, i8 0, i64 %.idx.i.i.i.i.i.i.i85, i1 false), !tbaa !111
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128:         ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.us127, %.noexc87.us126, %.lr.ph123.split.split.us
  %.sroa.091.0.us129 = phi ptr [ %i.as, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.us127 ], [ %i.as, %.noexc87.us126 ], [ null, %.lr.ph123.split.split.us ] ; 6 uses
  %.sroa.12.0.us130 = phi ptr [ %i.at, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.us127 ], [ %i.at, %.noexc87.us126 ], [ null, %.lr.ph123.split.split.us ]
  %.val.val.val.us131 = load ptr, ptr %i.am, align 8, !tbaa !606 ; 2 uses
  %.not.i.us132 = icmp eq ptr %.val.val.val.us131, null
  br i1 %.not.i.us132, label %.cont.us135, label %.else.us133

.else.us133:                                      ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val.val.val.us131, i64 %.070122.us125
  %.else.val.us134 = load i32, ptr %i.av, align 4, !tbaa !110
  br label %.cont.us135

.cont.us135:                                      ; preds = %.else.us133, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128
  %i.aw = phi i32 [ %., %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128 ], [ %.else.val.us134, %.else.us133 ]
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  store i64 %i.ax, ptr %.sroa.091.0.us129, align 8, !tbaa !111
  br i1 %i.an, label %.lr.ph112.us136, label %.preheader.us141

.lr.ph112.us136:                                  ; preds = %.cont.us135
  %i.ay = mul nuw nsw i64 %.070122.us125, %i.t
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph112.us136
  %.068111.us137 = phi i64 [ 1, %.lr.ph112.us136 ], [ %i.bl, %bb.f ] ; 3 uses
  %.069110.us138 = phi i1 [ false, %.lr.ph112.us136 ], [ %i.bi, %bb.f ] ; 2 uses
  br i1 %.069110.us138, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = sub nuw nsw i64 %i.t, %.068111.us137
  %i.ba = load ptr, ptr %i.aj, align 8, !tbaa !295
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %i.ay
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %i.az
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !110
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.be = phi i32 [ %i.bd, %bb.e ], [ -1, %bb.d ] ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  %or.cond.us139 = select i1 %.069110.us138, i1 true, i1 %i.bf ; 2 uses
  %i.bg = sext i32 %i.be to i64                   ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %i.s
  %i.bi = select i1 %or.cond.us139, i1 true, i1 %i.bh
  %i.bj = select i1 %or.cond.us139, i64 %i.s, i64 %i.bg
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.091.0.us129, i64 %.068111.us137
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !111
  %i.bl = add nuw nsw i64 %.068111.us137, 1       ; 2 uses
  %exitcond171.not = icmp eq i64 %i.bl, %i.l
  br i1 %exitcond171.not, label %.preheader.us141, label %bb.d, !llvm.loop !596

.preheader.us141:                                 ; preds = %bb.f, %.cont.us135
  %i.bm = load i64, ptr %i.ao, align 8, !tbaa !111
  %i.bn = mul i64 %i.bm, %i.ax                    ; 2 uses
  %i.bo = mul nuw nsw i64 %.070122.us125, %i.o
  %i.bp = getelementptr [4 x i8], ptr %.sroa.097.0, i64 %i.bo ; 3 uses
  %i.bq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bn, i64 0
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge118.us.us, %.preheader.us141
  %indvar = phi i64 [ %indvar.next, %._crit_edge118.us.us ], [ 0, %.preheader.us141 ] ; 3 uses
  %.067120.us.us = phi i64 [ %i.dt, %._crit_edge118.us.us ], [ 2, %.preheader.us141 ] ; 4 uses
  %i.br = add nuw i64 %indvar, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %indvar, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %i.br, -4                      ; 3 uses
  %i.bs = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bq, %vector.ph ], [ %i.ca, %vector.body ]
  %vec.phi202 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %i.bt = or disjoint i64 %index, 1               ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.091.0.us129, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <2 x i64>, ptr %i.bu, align 8, !tbaa !111
  %wide.load203 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !111
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bt ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load204 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !111
  %wide.load205 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !111
  %i.by = mul <2 x i64> %wide.load204, %wide.load
  %i.bz = mul <2 x i64> %wide.load205, %wide.load203
  %i.ca = xor <2 x i64> %i.by, %vec.phi           ; 2 uses
  %i.cb = xor <2 x i64> %i.bz, %vec.phi202        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !597

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <2 x i64> %i.cb, %i.ca
  %i.cd = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %.lr.ph117.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.g, %middle.block
  %.065114.us.us.ph = phi i64 [ 1, %bb.g ], [ %i.bs, %middle.block ]
  %.066113.us.us.ph = phi i64 [ %i.bn, %bb.g ], [ %i.cd, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.065114.us.us = phi i64 [ %i.ck, %scalar.ph ], [ %.065114.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.066113.us.us = phi i64 [ %i.cj, %scalar.ph ], [ %.066113.us.us.ph, %scalar.ph.preheader ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.091.0.us129, i64 %.065114.us.us
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !111
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.065114.us.us
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !111
  %i.ci = mul i64 %i.ch, %i.cf
  %i.cj = xor i64 %i.ci, %.066113.us.us           ; 2 uses
  %i.ck = add nuw nsw i64 %.065114.us.us, 1       ; 2 uses
  %exitcond172.not = icmp eq i64 %i.ck, %.067120.us.us
  br i1 %exitcond172.not, label %.lr.ph117.us.us, label %scalar.ph, !llvm.loop !598

.lr.ph117.us.us:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.cd, %middle.block ], [ %i.cj, %scalar.ph ] ; 3 uses
  %i.cl = add nsw i64 %.067120.us.us, -2
  %i.cm = mul nuw nsw i64 %i.cl, %i.r             ; 3 uses
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph117.us.us.new

.lr.ph117.us.us.new:                              ; preds = %.lr.ph117.us.us, %.lr.ph117.us.us.new
  %.0115.us.us = phi i64 [ %i.di, %.lr.ph117.us.us.new ], [ 0, %.lr.ph117.us.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph117.us.us.new ], [ 0, %.lr.ph117.us.us ]
  %i.cn = add nuw nsw i64 %.0115.us.us, %i.cm     ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !110
  %i.cq = zext i32 %i.cp to i64
  %i.cr = urem i64 %.lcssa, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cn
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !110
  %i.cu = trunc nuw i64 %i.cr to i32
  %i.cv = add i32 %i.ct, %i.cu
  %i.cw = getelementptr [4 x i8], ptr %i.bp, i64 %i.cn
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !110
  %i.cx = or disjoint i64 %.0115.us.us, 1
  %i.cy = add nuw nsw i64 %i.cx, %i.cm            ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !110
  %i.db = zext i32 %i.da to i64
  %i.dc = urem i64 %.lcssa, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cy
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !110
  %i.df = trunc nuw i64 %i.dc to i32
  %i.dg = add i32 %i.de, %i.df
  %i.dh = getelementptr [4 x i8], ptr %i.bp, i64 %i.cy
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !110
  %i.di = add nuw nsw i64 %.0115.us.us, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge118.us.us.unr-lcssa, label %.lr.ph117.us.us.new, !llvm.loop !599

._crit_edge118.us.us.unr-lcssa:                   ; preds = %.lr.ph117.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge118.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge118.us.us.unr-lcssa, %.lr.ph117.us.us
  %.0115.us.us.epil.init = phi i64 [ 0, %.lr.ph117.us.us ], [ %i.di, %._crit_edge118.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod213)
  %i.dj = add nuw nsw i64 %.0115.us.us.epil.init, %i.cm ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !110
  %i.dm = zext i32 %i.dl to i64
  %i.dn = urem i64 %.lcssa, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.dj
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !110
  %i.dq = trunc nuw i64 %i.dn to i32
  %i.dr = add i32 %i.dp, %i.dq
  %i.ds = getelementptr [4 x i8], ptr %i.bp, i64 %i.dj
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !110
  br label %._crit_edge118.us.us

._crit_edge118.us.us:                             ; preds = %._crit_edge118.us.us.unr-lcssa, %.epil.preheader
  %i.dt = add nuw nsw i64 %.067120.us.us, 1
  %exitcond174.not = icmp eq i64 %.067120.us.us, %i.l
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond174.not, label %._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us, label %bb.g, !llvm.loop !600

._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us: ; preds = %._crit_edge118.us.us
  %i.du = ptrtoint ptr %.sroa.12.0.us130 to i64
  %i.dv = ptrtoint ptr %.sroa.091.0.us129 to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0.us129, i64 noundef %i.dw) #20
  %i.dx = add nuw nsw i64 %.070122.us125, 1       ; 2 uses
  %exitcond175.not = icmp eq i64 %i.dx, %i.i
  br i1 %exitcond175.not, label %._crit_edge124, label %.lr.ph123.split.split.us, !llvm.loop !601

bb.h:                                             ; preds = %.lr.ph, %bb.b
  %.071109 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.b ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.071109
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !110
  %i.ea = icmp eq i32 %i.dz, 1
  br i1 %i.ea, label %bb.b, label %.invoke

.invoke:                                          ; preds = %bb.h, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.eb = phi i32 [ 1073, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ 1077, %bb.h ]
  %i.ec = phi ptr [ @.str.77, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ @.str.78, %bb.h ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef %i.eb, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.ec) #19
          to label %.cont196 unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont196:                                         ; preds = %.invoke
  unreachable

._crit_edge124:                                   ; preds = %._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us, %.preheader, %.lr.ph123.split.us.split, %.preheader107
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !250 ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.097.0 to i64        ; 2 uses
  %i.eg = invoke i64 @ggml_element_size(ptr noundef %i.ee)
          to label %bb.i unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph123.split.split:                            ; preds = %.lr.ph123.split, %.preheader
  %.070122 = phi i64 [ %13, %.preheader ], [ 0, %.lr.ph123.split ] ; 3 uses
  br i1 %.not.i.i.i.i84, label %2, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

2:                                                ; preds = %.lr.ph123.split.split
  %3 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
          to label %.noexc87 unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc87:                                         ; preds = %2
  %4 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.l ; 2 uses
  store i64 0, ptr %3, align 8, !tbaa !111
  br i1 %i.al, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc87
  %5 = getelementptr i8, ptr %3, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %.idx.i.i.i.i.i.i.i85, i1 false), !tbaa !111
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc87, %.lr.ph123.split.split
  %.sroa.091.0 = phi ptr [ %3, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %3, %.noexc87 ], [ null, %.lr.ph123.split.split ] ; 4 uses
  %.sroa.12.0 = phi ptr [ %4, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %4, %.noexc87 ], [ null, %.lr.ph123.split.split ]
  %.val.val.val = load ptr, ptr %i.am, align 8, !tbaa !606 ; 2 uses
  %.not.i = icmp eq ptr %.val.val.val, null
  br i1 %.not.i, label %.cont, label %.else

.else:                                            ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %6 = getelementptr inbounds nuw [4 x i8], ptr %.val.val.val, i64 %.070122
  %.else.val = load i32, ptr %6, align 4, !tbaa !110
  br label %.cont

.cont:                                            ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.else
  %7 = phi i32 [ %., %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ %.else.val, %.else ]
  %8 = sext i32 %7 to i64
  store i64 %8, ptr %.sroa.091.0, align 8, !tbaa !111
  br i1 %i.an, label %.lr.ph112, label %.preheader

.lr.ph112:                                        ; preds = %.cont
  %9 = mul nuw nsw i64 %.070122, %i.t
  br label %14

.preheader:                                       ; preds = %21, %.cont
  %10 = ptrtoint ptr %.sroa.12.0 to i64
  %11 = ptrtoint ptr %.sroa.091.0 to i64
  %12 = sub i64 %10, %11
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0, i64 noundef %12) #20
  %13 = add nuw nsw i64 %.070122, 1               ; 2 uses
  %exitcond177.not = icmp eq i64 %13, %i.i
  br i1 %exitcond177.not, label %._crit_edge124, label %.lr.ph123.split.split, !llvm.loop !601

.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %2, %bb.c, %.invoke, %bb.i, %._crit_edge124, %._crit_edge
  %lpad.loopexit.split-lp207 = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i89 = icmp eq ptr %.sroa.097.0, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIiSaIiEED2Ev.exit90, label %bb.l

14:                                               ; preds = %.lr.ph112, %21
  %.068111 = phi i64 [ 1, %.lr.ph112 ], [ %29, %21 ] ; 3 uses
  %.069110 = phi i1 [ false, %.lr.ph112 ], [ %26, %21 ] ; 2 uses
  br i1 %.069110, label %21, label %15

15:                                               ; preds = %14
  %16 = sub nuw nsw i64 %i.t, %.068111
  %17 = load ptr, ptr %i.aj, align 8, !tbaa !295
  %18 = getelementptr [4 x i8], ptr %17, i64 %9
  %19 = getelementptr [4 x i8], ptr %18, i64 %16
  %20 = load i32, ptr %19, align 4, !tbaa !110
  br label %21

21:                                               ; preds = %14, %15
  %22 = phi i32 [ %20, %15 ], [ -1, %14 ]         ; 2 uses
  %23 = icmp slt i32 %22, 0
  %or.cond = select i1 %.069110, i1 true, i1 %23  ; 2 uses
  %24 = sext i32 %22 to i64                       ; 2 uses
  %25 = icmp eq i64 %24, %i.s
  %26 = select i1 %or.cond, i1 true, i1 %25
  %27 = select i1 %or.cond, i64 %i.s, i64 %24
  %28 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.091.0, i64 %.068111
  store i64 %27, ptr %28, align 8, !tbaa !111
  %29 = add nuw nsw i64 %.068111, 1               ; 2 uses
  %exitcond176.not = icmp eq i64 %29, %i.l
  br i1 %exitcond176.not, label %.preheader, label %14, !llvm.loop !596

bb.i:                                             ; preds = %._crit_edge124
  %i.eh = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.ei = sub i64 %i.eh, %i.ef
  %i.ej = ashr exact i64 %i.ei, 2
  %i.ek = mul i64 %i.eg, %i.ej
  invoke void @ggml_backend_tensor_set(ptr noundef %i.ee, ptr noundef %.sroa.097.0, i64 noundef 0, i64 noundef %i.ek)
          to label %bb.j unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i88 = icmp eq ptr %.sroa.097.0, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.el = ptrtoint ptr %.sroa.13.0 to i64
  %i.em = sub i64 %i.el, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0, i64 noundef %i.em) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.en = ptrtoint ptr %.sroa.13.0 to i64
  %i.eo = ptrtoint ptr %.sroa.097.0 to i64
  %i.ep = sub i64 %i.en, %i.eo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0, i64 noundef %i.ep) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit90

_ZNSt6vectorIiSaIiEED2Ev.exit90:                  ; preds = %bb.l, %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp207
}

declare void @_ZNK22llama_kv_cache_context15get_prev_tokensERK12llama_ubatchjRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @ggml_backend_tensor_set(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK30llama_memory_recurrent_context8get_headEv(ptr noundef nonnull align 8 dereferenceable(57)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @ggml_concat(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @ggml_transpose(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK30llama_memory_recurrent_context8get_sizeEv(ptr noundef nonnull align 8 dereferenceable(57)) local_unnamed_addr #1

declare ptr @ggml_cpy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ggml_sum_rows(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ggml_sqrt(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ggml_clamp(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare ptr @ggml_abs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ggml_sgn(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK30llama_memory_recurrent_context7get_p_lEi(ptr noundef nonnull align 8 dereferenceable(57), i32 noundef) local_unnamed_addr #1

declare ptr @ggml_reshape_1d(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11llama_modelD2Ev(ptr noundef nonnull align 8 dead_on_return(36840) dereferenceable(36840)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN20llama_model_qwen4expD0Ev(ptr noundef nonnull align 8 dereferenceable(36884) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN11llama_modelD2Ev(ptr noundef nonnull align 8 dead_on_return(36884) dereferenceable(36884) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 36888) #20
  ret void
}

declare void @_ZN16llama_model_base10load_statsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #1

declare void @_ZN16llama_model_base12load_hparamsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #1

declare void @_ZN16llama_model_base10load_vocabER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #1

declare noundef zeroext i1 @_ZN16llama_model_base12load_tensorsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN19llm_graph_input_pleD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV19llm_graph_input_ple, i64 16), ptr %0, align 8, !tbaa !204
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !296
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN19llm_graph_input_pleD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV19llm_graph_input_ple, i64 16), ptr %0, align 8, !tbaa !204
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN19llm_graph_input_pleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !296
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20, !inline_history !607
  br label %_ZN19llm_graph_input_pleD2Ev.exit

_ZN19llm_graph_input_pleD2Ev.exit:                ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN19llm_graph_input_ple9can_reuseERK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36496) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !297
  %i.c = tail call noundef ptr @_ZNK27llama_memory_hybrid_context8get_attnEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !251
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !294, !nonnull !191, !align !192
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 29272
  %i.l = load i32, ptr %i.k, align 8, !tbaa !109
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36244
  %i.o = load i32, ptr %i.n, align 4, !tbaa !298
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw nsw i64 %i.p, %i.m
  %i.r = icmp eq i64 %i.h, %i.q
  ret i1 %i.r
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN20llama_model_qwen4exp5graphD2Ev(ptr noundef nonnull align 8 dead_on_return(440) dereferenceable(440) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN20llama_model_qwen4exp5graphE, i64 16), ptr %0, align 8, !tbaa !204
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205
  invoke void @_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIP11ggml_tensorS1_St4lessIS1_ESaISt4pairIKS1_S1_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22
  unreachable

_ZNSt3mapIP11ggml_tensorS1_St4lessIS1_ESaISt4pairIKS1_S1_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !205
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjPN20llama_model_qwen4exp19llm_graph_input_qsaEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3mapIjPN20llama_model_qwen4exp19llm_graph_input_qsaESt4lessIjESaISt4pairIKjS2_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIP11ggml_tensorS1_St4lessIS1_ESaISt4pairIKS1_S1_EEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #22
  unreachable

_ZNSt3mapIjPN20llama_model_qwen4exp19llm_graph_input_qsaESt4lessIjESaISt4pairIKjS2_EEED2Ev.exit: ; preds = %_ZNSt3mapIP11ggml_tensorS1_St4lessIS1_ESaISt4pairIKS1_S1_EEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV17llm_graph_context, i64 16), ptr %0, align 8, !tbaa !204
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !205
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %i.m)
          to label %_ZN17llm_graph_contextD2Ev.exit unwind label %bb.d, !inline_history !299

bb.d:                                             ; preds = %_ZNSt3mapIjPN20llama_model_qwen4exp19llm_graph_input_qsaESt4lessIjESaISt4pairIKjS2_EEED2Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #22, !inline_history !299
  unreachable

_ZN17llm_graph_contextD2Ev.exit:                  ; preds = %_ZNSt3mapIjPN20llama_model_qwen4exp19llm_graph_input_qsaESt4lessIjESaISt4pairIKjS2_EEED2Ev.exit
  ret void
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.xor.v2i64
!397 = distinct !{!397, i1 true, !"_ZNK6LLM_TNclE10llm_tensorPKcii"}
!398 = distinct !{!398, !397, !"_ZNK6LLM_TNclE10llm_tensorPKcii: argument 0"}
!399 = distinct !{!399, i1 true, !"_ZNK6LLM_TNclE10llm_tensorPKcii"}
!400 = distinct !{!400, !399, !"_ZNK6LLM_TNclE10llm_tensorPKcii: argument 0"}
!401 = distinct !{!401, i1 true, !"_ZNK6LLM_TNclE10llm_tensorPKcii"}
!402 = distinct !{!402, !401, !"_ZNK6LLM_TNclE10llm_tensorPKcii: argument 0"}
!403 = distinct !{!403, i1 true, !"_ZNK6LLM_TNclE10llm_tensorPKcii"}
!404 = distinct !{!404, !403, !"_ZNK6LLM_TNclE10llm_tensorPKcii: argument 0"}
!405 = distinct !{!405, i1 true, !"_ZNK6LLM_TNclE10llm_tensorPKcii"}
!406 = distinct !{!406, !405, !"_ZNK6LLM_TNclE10llm_tensorPKcii: argument 0"}
!407 = distinct !{!407, !114}
!408 = !{!96, !7, i64 76}
!409 = !{!"_ZTS6LLM_TN", !11, i64 0}
!410 = !{!409, !11, i64 0}
!411 = !{!318}
!412 = !{!"_ZTSSt16initializer_listIlE", !115, i64 0, !15, i64 8}
!413 = !{!412, !115, i64 0}
!414 = !{!412, !15, i64 8}
!415 = !{!320}
!416 = !{!322}
!417 = !{!324}
!418 = !{!326}
!419 = !{!"p1 _ZTS18llama_model_loader", !12, i64 0}
!420 = !{!"_ZTS16llama_model_base", !96, i64 0, !79, i64 36840, !419, i64 36848, !409, i64 36856, !7, i64 36860, !7, i64 36864, !7, i64 36868, !7, i64 36872, !7, i64 36876, !7, i64 36880}
!421 = !{!420, !7, i64 36864}
!422 = !{!328}
!423 = !{!420, !7, i64 36860}
!424 = !{!331}
!425 = !{!"short", !6, i64 0}
!426 = !{!"_ZTSN18llama_model_loader19llama_tensor_weightE", !425, i64 0, !15, i64 8, !49, i64 16}
!427 = !{!426, !49, i64 16}
!428 = !{!334}
!429 = !{!420, !7, i64 36880}
!430 = !{!96, !7, i64 10392}
!431 = !{!336}
!432 = !{!338}
!433 = !{!340}
!434 = !{!342}
!435 = !{!344}
!436 = !{!346}
!437 = !{!348}
!438 = !{!350}
!439 = !{!352}
!440 = !{!354}
!441 = !{!356}
!442 = !{!358}
!443 = !{!360}
!444 = !{!362}
!445 = !{!364}
!446 = !{!366}
!447 = !{!368}
!448 = !{!370}
!449 = !{!372}
!450 = !{!374}
!451 = !{!376}
!452 = !{!378}
!453 = !{!380}
!454 = !{!382}
!455 = !{!384}
!456 = !{!386}
!457 = !{!388}
!458 = !{!390}
!459 = !{!392}
!460 = !{!394}
!461 = !{!396}
!462 = !{!398}
!463 = !{!400}
!464 = !{!402}
!465 = !{!404}
!466 = !{!406}
!467 = distinct !{!467, i1 true, !"_ZSt11make_uniqueIN20llama_model_qwen4exp5graphEJRKS0_RK16llm_graph_paramsEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!468 = distinct !{!468, !467, !"_ZSt11make_uniqueIN20llama_model_qwen4exp5graphEJRKS0_RK16llm_graph_paramsEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!469 = !{!468}
!470 = !{!"p1 _ZTS17llm_graph_context", !12, i64 0}
!471 = !{!"_ZTSSt10_Head_baseILm0EP17llm_graph_contextLb0EE", !470, i64 0}
!472 = !{!471, !470, i64 0}
!473 = distinct !{!473, !114}
!474 = distinct !{!474, !114}
!475 = !{!181, !178, i64 0}
!476 = !{!181, !179, i64 24}
!477 = !{!79, !79, i64 0}
!478 = !{!"p1 _ZTS23llm_graph_input_attn_kv", !12, i64 0}
!479 = !{!"_ZTSSt10_Head_baseILm0EP23llm_graph_input_attn_kvLb0EE", !478, i64 0}
!480 = !{!"_ZTSSt11_Tuple_implILm0EJP23llm_graph_input_attn_kvSt14default_deleteIS0_EEE", !479, i64 0}
!481 = !{!"_ZTSSt5tupleIJP23llm_graph_input_attn_kvSt14default_deleteIS0_EEE", !480, i64 0}
!482 = !{!"_ZTSSt15__uniq_ptr_implI23llm_graph_input_attn_kvSt14default_deleteIS0_EE", !481, i64 0}
!483 = !{!"_ZTSSt15__uniq_ptr_dataI23llm_graph_input_attn_kvSt14default_deleteIS0_ELb1ELb1EE", !482, i64 0}
!484 = !{!"_ZTSSt10unique_ptrI23llm_graph_input_attn_kvSt14default_deleteIS0_EE", !483, i64 0}
!485 = !{!"p1 _ZTS18llm_graph_input_rs", !12, i64 0}
!486 = !{!"_ZTSSt10_Head_baseILm0EP18llm_graph_input_rsLb0EE", !485, i64 0}
!487 = !{!"_ZTSSt11_Tuple_implILm0EJP18llm_graph_input_rsSt14default_deleteIS0_EEE", !486, i64 0}
!488 = !{!"_ZTSSt5tupleIJP18llm_graph_input_rsSt14default_deleteIS0_EEE", !487, i64 0}
!489 = !{!"_ZTSSt15__uniq_ptr_implI18llm_graph_input_rsSt14default_deleteIS0_EE", !488, i64 0}
!490 = !{!"_ZTSSt15__uniq_ptr_dataI18llm_graph_input_rsSt14default_deleteIS0_ELb1ELb1EE", !489, i64 0}
!491 = !{!"_ZTSSt10unique_ptrI18llm_graph_input_rsSt14default_deleteIS0_EE", !490, i64 0}
!492 = !{!"p1 _ZTS27llama_memory_hybrid_context", !12, i64 0}
!493 = !{!"_ZTS26llm_graph_input_mem_hybrid", !209, i64 0, !484, i64 16, !491, i64 24, !218, i64 32, !492, i64 208}
!494 = !{!493, !492, i64 208}
!495 = !{!189, !15, i64 48}
!496 = !{!"p2 _ZTS11ggml_tensor", !60, i64 0}
!497 = !{!"_ZTSNSt12_Vector_baseIP11ggml_tensorSaIS1_EE17_Vector_impl_dataE", !496, i64 0, !496, i64 8, !496, i64 16}
!498 = !{!497, !496, i64 0}
!499 = !{!485, !485, i64 0}
!500 = !{!478, !478, i64 0}
!501 = !{!"_ZTSNSt12_Vector_baseIP11ggml_tensorSaIS1_EE12_Vector_implE", !497, i64 0}
!502 = !{!"_ZTSSt12_Vector_baseIP11ggml_tensorSaIS1_EE", !501, i64 0}
!503 = !{!"_ZTSSt6vectorIP11ggml_tensorSaIS1_EE", !502, i64 0}
!504 = !{!"p1 _ZTSSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EE", !12, i64 0}
!505 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE17_Vector_impl_dataE", !504, i64 0, !504, i64 8, !504, i64 16}
!506 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE12_Vector_implE", !505, i64 0}
!507 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE", !506, i64 0}
!508 = !{!"_ZTSSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE", !507, i64 0}
!509 = !{!"p1 _ZTS20llm_graph_fused_node", !12, i64 0}
!510 = !{!"_ZTSNSt12_Vector_baseI20llm_graph_fused_nodeSaIS0_EE17_Vector_impl_dataE", !509, i64 0, !509, i64 8, !509, i64 16}
!511 = !{!"_ZTSNSt12_Vector_baseI20llm_graph_fused_nodeSaIS0_EE12_Vector_implE", !510, i64 0}
!512 = !{!"_ZTSSt12_Vector_baseI20llm_graph_fused_nodeSaIS0_EE", !511, i64 0}
!513 = !{!"_ZTSSt6vectorI20llm_graph_fused_nodeSaIS0_EE", !512, i64 0}
!514 = !{!"_ZTSSt10_Head_baseILm0EP12ggml_contextLb0EE", !187, i64 0}
!515 = !{!"_ZTSSt11_Tuple_implILm0EJP12ggml_context20ggml_context_deleterEE", !514, i64 0}
!516 = !{!"_ZTSSt5tupleIJP12ggml_context20ggml_context_deleterEE", !515, i64 0}
!517 = !{!"_ZTSSt15__uniq_ptr_implI12ggml_context20ggml_context_deleterE", !516, i64 0}
!518 = !{!"_ZTSSt15__uniq_ptr_dataI12ggml_context20ggml_context_deleterLb1ELb1EE", !517, i64 0}
!519 = !{!"_ZTSSt10unique_ptrI12ggml_context20ggml_context_deleterE", !518, i64 0}
!520 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!521 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !520, i64 0}
!522 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !521, i64 0}
!523 = !{!"_ZTSSt6vectorIhSaIhEE", !522, i64 0}
!524 = !{!"_ZTS16llm_graph_result", !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !503, i64 56, !503, i64 80, !503, i64 104, !503, i64 128, !503, i64 152, !508, i64 176, !513, i64 200, !519, i64 224, !523, i64 232, !188, i64 256, !15, i64 264, !232, i64 272, !7, i64 36768}
!525 = !{!524, !49, i64 32}
!526 = !{!96, !49, i64 36224}
!527 = !{!524, !49, i64 24}
!528 = distinct !{!528, i1 true, !"_ZSt11make_uniqueI19llm_graph_input_pleJRK20llama_model_qwen4expPK22llama_kv_cache_contextEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!529 = distinct !{!529, !528, !"_ZSt11make_uniqueI19llm_graph_input_pleJRK20llama_model_qwen4expPK22llama_kv_cache_contextEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!530 = distinct !{null, null}
!531 = !{!529}
!532 = !{!247, !247, i64 0}
!533 = !{!35, !7, i64 29228}
!534 = distinct !{!534, !114}
!535 = !{!35, !7, i64 29220}
!536 = !{!35, !7, i64 16692}
!537 = !{!35, !7, i64 16696}
!538 = !{!35, !7, i64 16704}
!539 = !{!35, !7, i64 16700}
!540 = !{!228, !7, i64 0}
!541 = !{!130, !49, i64 1344}
!542 = !{!130, !49, i64 1336}
!543 = !{!218, !17, i64 79}
!544 = !{!218, !17, i64 80}
!545 = !{!130, !49, i64 1328}
!546 = !{!130, !49, i64 168}
!547 = !{!130, !49, i64 1224}
!548 = !{!189, !15, i64 80}
!549 = !{!130, !49, i64 176}
!550 = !{!130, !49, i64 1232}
!551 = !{!130, !49, i64 184}
!552 = !{!130, !49, i64 1240}
!553 = !{!189, !15, i64 88}
!554 = !{!35, !21, i64 16764}
!555 = !{!130, !49, i64 1248}
!556 = !{!130, !49, i64 552}
!557 = !{!130, !49, i64 536}
!558 = !{!189, !15, i64 128}
!559 = !{!189, !15, i64 136}
!560 = !{!35, !21, i64 10388}
!561 = !{!130, !49, i64 560}
!562 = !{!130, !49, i64 624}
!563 = !{!130, !49, i64 608}
!564 = !{!130, !49, i64 616}
!565 = !{!130, !49, i64 1304}
!566 = !{!130, !49, i64 1296}
!567 = !{!130, !49, i64 1312}
!568 = distinct !{!568, !114}
!569 = distinct !{!569, i1 true, !"_ZSt11make_uniqueIN20llama_model_qwen4exp19llm_graph_input_qsaEJRPK31llama_memory_hybrid_idx_contextjRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!570 = distinct !{!570, !569, !"_ZSt11make_uniqueIN20llama_model_qwen4exp19llm_graph_input_qsaEJRPK31llama_memory_hybrid_idx_contextjRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!571 = distinct !{null, null}
!572 = distinct !{!572, !114}
!573 = distinct !{!573, !114}
!574 = !{!35, !7, i64 25068}
!575 = !{!35, !7, i64 25064}
!576 = !{!218, !17, i64 75}
!577 = !{!35, !17, i64 16781}
!578 = !{!"p1 _ZTSN20llama_model_qwen4exp19llm_graph_input_qsaE", !12, i64 0}
!579 = !{!"_ZTSSt4pairIKjPN20llama_model_qwen4exp19llm_graph_input_qsaEE", !7, i64 0, !578, i64 8}
!580 = !{!579, !578, i64 8}
!581 = !{!570}
!582 = !{!579, !7, i64 0}
!583 = !{!35, !7, i64 25072}
!584 = !{!272, !49, i64 48}
!585 = !{!272, !49, i64 56}
!586 = !{!272, !248, i64 36296}
!587 = !{!272, !49, i64 16}
!588 = !{!272, !49, i64 24}
!589 = distinct !{!589, !114}
!590 = distinct !{!590, !114}
!591 = !{!"_ZTSSt4pairIKP11ggml_tensorS1_E", !49, i64 0, !49, i64 8}
!592 = !{!591, !49, i64 0}
!593 = !{!591, !49, i64 8}
!594 = !{!218, !7, i64 20}
!595 = distinct !{!595, !114}
!596 = distinct !{!596, !114}
!597 = distinct !{!597, !114, !121, !122}
!598 = distinct !{!598, !114, !122, !121}
!599 = distinct !{!599, !114}
!600 = distinct !{!600, !114}
!601 = distinct !{!601, !114}
!602 = !{!35, !7, i64 29236}
!603 = !{!35, !7, i64 29232}
!604 = !{!35, !7, i64 29216}
!605 = !{!228, !50, i64 48}
!606 = !{!228, !50, i64 24}
!607 = !{ptr @_ZN19llm_graph_input_pleD2Ev}
!608 = !{ptr @_ZN20llama_model_qwen4exp5graphD2Ev}
!609 = !{ptr @_ZN20llama_model_qwen4exp5graphD2Ev, ptr @_ZN17llm_graph_contextD2Ev}
!610 = distinct !{!610, !114}
!611 = distinct !{!611, !114}
!612 = distinct !{!612, !114}
!613 = distinct !{!613, !114}
!614 = distinct !{null, null}
!615 = !{!187, !187, i64 0}
!616 = distinct !{!616, !114}
end_hunk_1
