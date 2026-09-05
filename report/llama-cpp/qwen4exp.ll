Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/qwen4exp?download=true
inline.NumInlined: 828
inline.NumDeleted: 450
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN20llama_model_qwen4exp5graph19build_conv_state_atEP18llm_graph_input_rsP11ggml_tensorS4_lli:bb.a
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
  %.fr156 = freeze i32 %i.k                       ; 4 uses
  %i.l = zext i32 %.fr156 to i64                  ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 29272
  %i.n = load i32, ptr %i.m, align 8, !tbaa !219
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 29264
  %i.q = load i32, ptr %i.p, align 8, !tbaa !604
  %.fr157 = freeze i32 %i.q                       ; 4 uses
  %i.r = zext i32 %.fr157 to i64                  ; 3 uses
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
  br i1 %.not78, label %bb.b, label %.preheader108

.preheader108:                                    ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.not154 = icmp eq i32 %i.h, 0                  ; 2 uses
  br i1 %.not154, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader108
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !605
  br label %bb.k

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1073, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.77) #19
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.s, %._crit_edge124, %._crit_edge, %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

bb.e:                                             ; preds = %bb.k
  %i.ai = add nuw nsw i64 %.071109, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !595

._crit_edge:                                      ; preds = %bb.e, %.preheader108
  %i.aj = trunc i64 %i.t to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_ZNK22llama_kv_cache_context15get_prev_tokensERK12llama_ubatchjRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(148) %i.ae, ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.preheader107 unwind label %bb.d

.preheader107:                                    ; preds = %._crit_edge
  br i1 %.not154, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %.preheader107
  %.not.i.i.i.i84 = icmp ne i32 %.fr156, 0        ; 3 uses
  %i.al = shl nuw nsw i64 %i.l, 3                 ; 2 uses
  %i.am = icmp eq i64 %i.t, 0                     ; 2 uses
  %.idx.i.i.i.i.i.i.i85 = shl nuw nsw i64 %i.t, 3 ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ao = icmp ugt i32 %.fr156, 1                 ; 2 uses
  %.not79119 = icmp ult i32 %.fr156, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 29352 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 29672 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 29416 ; 3 uses
  br i1 %.not79119, label %.lr.ph123.split.us.split, label %.lr.ph123.split

.lr.ph123.split.us.split:                         ; preds = %.lr.ph123
  tail call void @llvm.assume(i1 %.not.i.i.i.i84)
  br label %._crit_edge124

.lr.ph123.split:                                  ; preds = %.lr.ph123
  %.not158 = icmp eq i32 %.fr157, 0
  br i1 %.not158, label %.lr.ph123.split.split, label %.lr.ph123.split.split.us.preheader

.lr.ph123.split.split.us.preheader:               ; preds = %.lr.ph123.split
  %xtraiter = and i64 %i.r, 1
  %i.as = icmp eq i32 %.fr157, 1
  %unroll_iter = and i64 %i.r, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod197 = trunc i32 %.fr157 to i1
  br label %.lr.ph123.split.split.us

.lr.ph123.split.split.us:                         ; preds = %.lr.ph123.split.split.us.preheader, %._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us
  %.070122.us125 = phi i64 [ %i.dx, %._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us ], [ 0, %.lr.ph123.split.split.us.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i84, label %bb.f, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128

bb.f:                                             ; preds = %.lr.ph123.split.split.us
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #21
          to label %.noexc87.us126 unwind label %.split.split.us ; 5 uses

.noexc87.us126:                                   ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.l ; 2 uses
  store i64 0, ptr %i.at, align 8, !tbaa !111
  br i1 %i.am, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.us127

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.us127: ; preds = %.noexc87.us126
  %i.av = getelementptr i8, ptr %i.at, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %.idx.i.i.i.i.i.i.i85, i1 false), !tbaa !111
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128:         ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.us127, %.noexc87.us126, %.lr.ph123.split.split.us
  %.sroa.091.0.us129 = phi ptr [ %i.at, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.us127 ], [ %i.at, %.noexc87.us126 ], [ null, %.lr.ph123.split.split.us ] ; 6 uses
  %.sroa.12.0.us130 = phi ptr [ %i.au, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.us127 ], [ %i.au, %.noexc87.us126 ], [ null, %.lr.ph123.split.split.us ]
  %.val.val.val.us131 = load ptr, ptr %i.an, align 8, !tbaa !606 ; 2 uses
  %.not.i.us132 = icmp eq ptr %.val.val.val.us131, null
  br i1 %.not.i.us132, label %.cont.us135, label %.else.us133

.else.us133:                                      ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val.val.val.us131, i64 %.070122.us125
  %.else.val.us134 = load i32, ptr %i.aw, align 4, !tbaa !110
  br label %.cont.us135

.cont.us135:                                      ; preds = %.else.us133, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128
  %i.ax = phi i32 [ %., %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit.us128 ], [ %.else.val.us134, %.else.us133 ]
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  store i64 %i.ay, ptr %.sroa.091.0.us129, align 8, !tbaa !111
  br i1 %i.ao, label %.lr.ph112.us136, label %.preheader.us139

.lr.ph112.us136:                                  ; preds = %.cont.us135
  %2 = mul nuw nsw i64 %.070122.us125, %i.t
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph112.us136
  %.068111.us136 = phi i64 [ 1, %.lr.ph112.us136 ], [ %i.bl, %bb.i ] ; 3 uses
  %.069110.us137 = phi i1 [ false, %.lr.ph112.us136 ], [ %i.bi, %bb.i ] ; 2 uses
  br i1 %.069110.us137, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = sub nuw nsw i64 %i.t, %.068111.us136
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !295
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %2
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %i.az
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !110
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = phi i32 [ %i.bd, %bb.h ], [ -1, %bb.g ] ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  %or.cond.us138 = select i1 %.069110.us137, i1 true, i1 %i.bf ; 2 uses
  %i.bg = sext i32 %i.be to i64                   ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %i.s
  %i.bi = select i1 %or.cond.us138, i1 true, i1 %i.bh
  %i.bj = select i1 %or.cond.us138, i64 %i.s, i64 %i.bg
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.091.0.us129, i64 %.068111.us136
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !111
  %i.bl = add nuw nsw i64 %.068111.us136, 1       ; 2 uses
  %exitcond162.not = icmp eq i64 %i.bl, %i.l
  br i1 %exitcond162.not, label %.preheader.us139, label %bb.g, !llvm.loop !596

.preheader.us139:                                 ; preds = %bb.i, %.cont.us135
  %i.bm = load i64, ptr %i.ap, align 8, !tbaa !111
  %i.bn = mul i64 %i.bm, %i.ay                    ; 2 uses
  %i.bo = mul nuw nsw i64 %.070122.us125, %i.o
  %i.bp = getelementptr [4 x i8], ptr %.sroa.097.0, i64 %i.bo ; 3 uses
  %i.bq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bn, i64 0
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge118.us.us, %.preheader.us139
  %indvar = phi i64 [ %indvar.next, %._crit_edge118.us.us ], [ 0, %.preheader.us139 ] ; 2 uses
  %.067120.us.us = phi i64 [ %i.dt, %._crit_edge118.us.us ], [ 2, %.preheader.us139 ] ; 4 uses
  %i.br = add i64 %indvar, 1                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.br, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.j
  %n.vec = and i64 %i.br, -4                      ; 3 uses
  %i.bs = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bq, %vector.ph ], [ %i.ca, %vector.body ]
  %vec.phi189 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %i.bt = or disjoint i64 %index, 1               ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.091.0.us129, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <2 x i64>, ptr %i.bu, align 8, !tbaa !111
  %wide.load190 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !111
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bt ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load191 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !111
  %wide.load192 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !111
  %i.by = mul <2 x i64> %wide.load191, %wide.load
  %i.bz = mul <2 x i64> %wide.load192, %wide.load190
  %i.ca = xor <2 x i64> %i.by, %vec.phi           ; 2 uses
  %i.cb = xor <2 x i64> %i.bz, %vec.phi189        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !597

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <2 x i64> %i.cb, %i.ca
  %i.cd = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %.lr.ph117.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.j, %middle.block
  %.065114.us.us.ph = phi i64 [ 1, %bb.j ], [ %i.bs, %middle.block ]
  %.066113.us.us.ph = phi i64 [ %i.bn, %bb.j ], [ %i.cd, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.065114.us.us = phi i64 [ %i.ck, %scalar.ph ], [ %.065114.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.066113.us.us = phi i64 [ %i.cj, %scalar.ph ], [ %.066113.us.us.ph, %scalar.ph.preheader ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.091.0.us129, i64 %.065114.us.us
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !111
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.065114.us.us
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !111
  %i.ci = mul i64 %i.ch, %i.cf
  %i.cj = xor i64 %i.ci, %.066113.us.us           ; 2 uses
  %i.ck = add nuw nsw i64 %.065114.us.us, 1       ; 2 uses
  %exitcond163.not = icmp eq i64 %i.ck, %.067120.us.us
  br i1 %exitcond163.not, label %.lr.ph117.us.us, label %scalar.ph, !llvm.loop !598

.lr.ph117.us.us:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.cd, %middle.block ], [ %i.cj, %scalar.ph ] ; 3 uses
  %i.cl = add nsw i64 %.067120.us.us, -2
  %i.cm = mul nuw nsw i64 %i.cl, %i.r             ; 3 uses
  br i1 %i.as, label %.epil.preheader, label %.lr.ph117.us.us.new

.lr.ph117.us.us.new:                              ; preds = %.lr.ph117.us.us, %.lr.ph117.us.us.new
  %.0115.us.us = phi i64 [ %i.di, %.lr.ph117.us.us.new ], [ 0, %.lr.ph117.us.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph117.us.us.new ], [ 0, %.lr.ph117.us.us ]
  %i.cn = add nuw nsw i64 %.0115.us.us, %i.cm     ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !110
  %i.cq = zext i32 %i.cp to i64
  %i.cr = urem i64 %.lcssa, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cn
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !110
  %i.cu = trunc nuw i64 %i.cr to i32
  %i.cv = add i32 %i.ct, %i.cu
  %i.cw = getelementptr [4 x i8], ptr %i.bp, i64 %i.cn
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !110
  %i.cx = or disjoint i64 %.0115.us.us, 1
  %i.cy = add nuw nsw i64 %i.cx, %i.cm            ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !110
  %i.db = zext i32 %i.da to i64
  %i.dc = urem i64 %.lcssa, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cy
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
  tail call void @llvm.assume(i1 %lcmp.mod197)
  %i.dj = add nuw nsw i64 %.0115.us.us.epil.init, %i.cm ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !110
  %i.dm = zext i32 %i.dl to i64
  %i.dn = urem i64 %.lcssa, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.dj
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !110
  %i.dq = trunc nuw i64 %i.dn to i32
  %i.dr = add i32 %i.dp, %i.dq
  %i.ds = getelementptr [4 x i8], ptr %i.bp, i64 %i.dj
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !110
  br label %._crit_edge118.us.us

._crit_edge118.us.us:                             ; preds = %._crit_edge118.us.us.unr-lcssa, %.epil.preheader
  %i.dt = add nuw nsw i64 %.067120.us.us, 1
  %exitcond165.not = icmp eq i64 %.067120.us.us, %i.l
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond165.not, label %._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us, label %bb.j, !llvm.loop !600

._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us: ; preds = %._crit_edge118.us.us
  %i.du = ptrtoint ptr %.sroa.12.0.us130 to i64
  %i.dv = ptrtoint ptr %.sroa.091.0.us129 to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0.us129, i64 noundef %i.dw) #20
  %i.dx = add nuw nsw i64 %.070122.us125, 1       ; 2 uses
  %exitcond166.not = icmp eq i64 %i.dx, %i.i
  br i1 %exitcond166.not, label %._crit_edge124, label %.lr.ph123.split.split.us, !llvm.loop !601

.split.split.us:                                  ; preds = %bb.f
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

bb.k:                                             ; preds = %.lr.ph, %bb.e
  %.071109 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %bb.e ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.071109
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !110
  %i.eb = icmp eq i32 %i.ea, 1
  br i1 %i.eb, label %bb.e, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1077, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.78) #19
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

._crit_edge124:                                   ; preds = %._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us, %.preheader, %.lr.ph123.split.us.split, %.preheader107
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !250 ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.097.0 to i64        ; 2 uses
  %i.eg = invoke i64 @ggml_element_size(ptr noundef %i.ee)
          to label %bb.s unwind label %bb.d

.lr.ph123.split.split:                            ; preds = %.lr.ph123.split, %.preheader
  %.070122 = phi i64 [ %i.er, %.preheader ], [ 0, %.lr.ph123.split ] ; 3 uses
  br i1 %.not.i.i.i.i84, label %bb.o, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.o:                                             ; preds = %.lr.ph123.split.split
  %i.eh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #21
          to label %.noexc87 unwind label %.split.split ; 5 uses

.noexc87:                                         ; preds = %bb.o
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.l ; 2 uses
  store i64 0, ptr %i.eh, align 8, !tbaa !111
  br i1 %i.am, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc87
  %i.ej = getelementptr i8, ptr %i.eh, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ej, i8 0, i64 %.idx.i.i.i.i.i.i.i85, i1 false), !tbaa !111
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc87, %.lr.ph123.split.split
  %.sroa.091.0 = phi ptr [ %i.eh, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.eh, %.noexc87 ], [ null, %.lr.ph123.split.split ] ; 4 uses
  %.sroa.12.0 = phi ptr [ %i.ei, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ei, %.noexc87 ], [ null, %.lr.ph123.split.split ]
  %.val.val.val = load ptr, ptr %i.an, align 8, !tbaa !606 ; 2 uses
  %.not.i = icmp eq ptr %.val.val.val, null
  br i1 %.not.i, label %.cont, label %.else

.else:                                            ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.val.val.val, i64 %.070122
  %.else.val = load i32, ptr %i.ek, align 4, !tbaa !110
  br label %.cont

.cont:                                            ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.else
  %i.el = phi i32 [ %., %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ %.else.val, %.else ]
  %i.em = sext i32 %i.el to i64
  store i64 %i.em, ptr %.sroa.091.0, align 8, !tbaa !111
  br i1 %i.ao, label %.lr.ph112, label %.preheader

.lr.ph112:                                        ; preds = %.cont
  %i.en = mul nuw nsw i64 %.070122, %i.t
  br label %bb.p

.preheader:                                       ; preds = %bb.r, %.cont
end_hunk_0
