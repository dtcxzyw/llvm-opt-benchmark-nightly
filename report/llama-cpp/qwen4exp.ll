Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/qwen4exp?download=true
inline.NumInlined: 828
inline.NumDeleted: 450
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN20llama_model_qwen4exp5graph19build_conv_state_atEP18llm_graph_input_rsP11ggml_tensorS4_lli:bb.a
bb.e:                                             ; preds = %_ZNSt3mapIP11ggml_tensorS1_St4lessIS1_ESaISt4pairIKS1_S1_EEE11lower_boundERS5_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !592
  %i.aj = icmp ult ptr %2, %i.ai
  br i1 %i.aj, label %.critedge.i, label %bb.j

.critedge.i:                                      ; preds = %bb.e, %_ZNSt3mapIP11ggml_tensorS1_St4lessIS1_ESaISt4pairIKS1_S1_EEE11lower_boundERS5_.exit.i, %bb.d
  %.08.lcssa.i.i.i20.i = phi ptr [ %.19.i.i.i.i, %bb.e ], [ %.19.i.i.i.i, %_ZNSt3mapIP11ggml_tensorS1_St4lessIS1_ESaISt4pairIKS1_S1_EEE11lower_boundERS5_.exit.i ], [ %i.p, %bb.d ]
  %i.ak = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21
          to label %.noexc51 unwind label %bb.m   ; 6 uses

.noexc51:                                         ; preds = %.critedge.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 3 uses
  store ptr %2, ptr %i.al, align 8, !tbaa !592
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %i.ab, ptr %i.am, align 8, !tbaa !593
  %i.an = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.f unwind label %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.f:                                             ; preds = %.noexc51
  %i.ao = extractvalue { ptr, ptr } %i.an, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.an, 1      ; 4 uses
  %.not.i49 = icmp eq ptr %i.ap, null
  br i1 %.not.i49, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i50 = icmp ne ptr %i.ao, null
  %i.aq = icmp eq ptr %i.ap, %i.p
  %or.cond.i.i.i = select i1 %.not.i.i.i50, i1 true, i1 %i.aq
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !202
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !202
  %i.au = icmp ult ptr %i.ar, %i.at
  br label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.g
  %i.av = phi i1 [ %i.au, %bb.h ], [ true, %bb.g ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.av, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #18
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !207
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !207
  br label %bb.j

_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc51
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 48) #20
  br label %.body

bb.i:                                             ; preds = %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 48) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %.thread.i
  %.sroa.018.0.i = phi ptr [ %.19.i.i.i.i, %bb.e ], [ %i.ak, %.thread.i ], [ %i.ao, %bb.i ]
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !269 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
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
  %.fr156 = freeze i32 %i.k                       ; 4 uses
  %i.l = zext i32 %.fr156 to i64                  ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 29272
  %i.n = load i32, ptr %i.m, align 8, !tbaa !219
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 29264
  %i.q = load i32, ptr %i.p, align 8, !tbaa !604
  %.fr157 = freeze i32 %i.q                       ; 5 uses
  %i.r = zext i32 %.fr157 to i64                  ; 2 uses
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
  %i.as = icmp eq i32 %.fr157, 1
  %unroll_iter = and i64 %i.r, 4294967294
  %lcmp.mod.not = trunc i32 %.fr157 to i1
  %lcmp.mod197 = trunc i32 %.fr157 to i1
  br label %.lr.ph123.split.split.us

.lr.ph123.split.split.us:                         ; preds = %.lr.ph123.split.split.us.preheader, %._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us
  %.070122.us125 = phi i64 [ %i.dy, %._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us ], [ 0, %.lr.ph123.split.split.us.preheader ] ; 4 uses
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
  br i1 %i.ao, label %.lr.ph112.us136, label %.preheader.us141

.lr.ph112.us136:                                  ; preds = %.cont.us135
  %i.az = mul nuw nsw i64 %.070122.us125, %i.t
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph112.us136
  %.068111.us137 = phi i64 [ 1, %.lr.ph112.us136 ], [ %i.bm, %bb.i ] ; 3 uses
  %.069110.us138 = phi i1 [ false, %.lr.ph112.us136 ], [ %i.bj, %bb.i ] ; 2 uses
  br i1 %.069110.us138, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = sub nuw nsw i64 %i.t, %.068111.us137
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !295
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %i.az
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.ba
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !110
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = phi i32 [ %i.be, %bb.h ], [ -1, %bb.g ] ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  %or.cond.us139 = select i1 %.069110.us138, i1 true, i1 %i.bg ; 2 uses
  %i.bh = sext i32 %i.bf to i64                   ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.s
  %i.bj = select i1 %or.cond.us139, i1 true, i1 %i.bi
  %i.bk = select i1 %or.cond.us139, i64 %i.s, i64 %i.bh
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.091.0.us129, i64 %.068111.us137
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !111
  %i.bm = add nuw nsw i64 %.068111.us137, 1       ; 2 uses
  %exitcond162.not = icmp eq i64 %i.bm, %i.l
  br i1 %exitcond162.not, label %.preheader.us141, label %bb.g, !llvm.loop !596

.preheader.us141:                                 ; preds = %bb.i, %.cont.us135
  %i.bn = load i64, ptr %i.ap, align 8, !tbaa !111
  %i.bo = mul i64 %i.bn, %i.ay                    ; 2 uses
  %i.bp = mul nuw nsw i64 %.070122.us125, %i.o
  %i.bq = getelementptr [4 x i8], ptr %.sroa.097.0, i64 %i.bp ; 3 uses
  %i.br = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bo, i64 0
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge118.us.us, %.preheader.us141
  %indvar = phi i64 [ %indvar.next, %._crit_edge118.us.us ], [ 0, %.preheader.us141 ] ; 2 uses
  %.067120.us.us = phi i64 [ %i.du, %._crit_edge118.us.us ], [ 2, %.preheader.us141 ] ; 4 uses
  %i.bs = add i64 %indvar, 1                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.bs, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.j
  %n.vec = and i64 %i.bs, -4                      ; 3 uses
  %i.bt = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.br, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi189 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %i.bu = or disjoint i64 %index, 1               ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.091.0.us129, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load = load <2 x i64>, ptr %i.bv, align 8, !tbaa !111
  %wide.load190 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !111
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bu ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load191 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !111
  %wide.load192 = load <2 x i64>, ptr %i.by, align 8, !tbaa !111
  %i.bz = mul <2 x i64> %wide.load191, %wide.load
  %i.ca = mul <2 x i64> %wide.load192, %wide.load190
  %i.cb = xor <2 x i64> %i.bz, %vec.phi           ; 2 uses
  %i.cc = xor <2 x i64> %i.ca, %vec.phi189        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !597

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <2 x i64> %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %.lr.ph117.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.j, %middle.block
  %.065114.us.us.ph = phi i64 [ 1, %bb.j ], [ %i.bt, %middle.block ]
  %.066113.us.us.ph = phi i64 [ %i.bo, %bb.j ], [ %i.ce, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.065114.us.us = phi i64 [ %i.cl, %scalar.ph ], [ %.065114.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.066113.us.us = phi i64 [ %i.ck, %scalar.ph ], [ %.066113.us.us.ph, %scalar.ph.preheader ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.091.0.us129, i64 %.065114.us.us
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !111
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.065114.us.us
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !111
  %i.cj = mul i64 %i.ci, %i.cg
  %i.ck = xor i64 %i.cj, %.066113.us.us           ; 2 uses
  %i.cl = add nuw nsw i64 %.065114.us.us, 1       ; 2 uses
  %exitcond163.not = icmp eq i64 %i.cl, %.067120.us.us
  br i1 %exitcond163.not, label %.lr.ph117.us.us, label %scalar.ph, !llvm.loop !598

.lr.ph117.us.us:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.ce, %middle.block ], [ %i.ck, %scalar.ph ] ; 3 uses
  %i.cm = add nsw i64 %.067120.us.us, -2
  %i.cn = mul nuw nsw i64 %i.cm, %i.r             ; 3 uses
  br i1 %i.as, label %.epil.preheader, label %.lr.ph117.us.us.new

.lr.ph117.us.us.new:                              ; preds = %.lr.ph117.us.us, %.lr.ph117.us.us.new
  %.0115.us.us = phi i64 [ %i.dj, %.lr.ph117.us.us.new ], [ 0, %.lr.ph117.us.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph117.us.us.new ], [ 0, %.lr.ph117.us.us ]
  %i.co = add nuw nsw i64 %.0115.us.us, %i.cn     ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !110
  %i.cr = zext i32 %i.cq to i64
  %i.cs = urem i64 %.lcssa, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.co
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !110
  %i.cv = trunc nuw i64 %i.cs to i32
  %i.cw = add i32 %i.cu, %i.cv
  %i.cx = getelementptr [4 x i8], ptr %i.bq, i64 %i.co
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !110
  %i.cy = or disjoint i64 %.0115.us.us, 1
  %i.cz = add nuw nsw i64 %i.cy, %i.cn            ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !110
  %i.dc = zext i32 %i.db to i64
  %i.dd = urem i64 %.lcssa, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cz
  %i.df = load i32, ptr %i.de, align 4, !tbaa !110
  %i.dg = trunc nuw i64 %i.dd to i32
  %i.dh = add i32 %i.df, %i.dg
  %i.di = getelementptr [4 x i8], ptr %i.bq, i64 %i.cz
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !110
  %i.dj = add nuw nsw i64 %.0115.us.us, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge118.us.us.unr-lcssa, label %.lr.ph117.us.us.new, !llvm.loop !599

._crit_edge118.us.us.unr-lcssa:                   ; preds = %.lr.ph117.us.us.new
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge118.us.us

.epil.preheader:                                  ; preds = %._crit_edge118.us.us.unr-lcssa, %.lr.ph117.us.us
  %.0115.us.us.epil.init = phi i64 [ 0, %.lr.ph117.us.us ], [ %i.dj, %._crit_edge118.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod197)
  %i.dk = add nuw nsw i64 %.0115.us.us.epil.init, %i.cn ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !110
  %i.dn = zext i32 %i.dm to i64
  %i.do = urem i64 %.lcssa, %i.dn
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.dk
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !110
  %i.dr = trunc nuw i64 %i.do to i32
  %i.ds = add i32 %i.dq, %i.dr
  %i.dt = getelementptr [4 x i8], ptr %i.bq, i64 %i.dk
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !110
  br label %._crit_edge118.us.us

._crit_edge118.us.us:                             ; preds = %._crit_edge118.us.us.unr-lcssa, %.epil.preheader
  %i.du = add nuw nsw i64 %.067120.us.us, 1
  %exitcond165.not = icmp eq i64 %.067120.us.us, %i.l
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond165.not, label %._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us, label %bb.j, !llvm.loop !600

._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us: ; preds = %._crit_edge118.us.us
  %i.dv = ptrtoint ptr %.sroa.12.0.us130 to i64
  %i.dw = ptrtoint ptr %.sroa.091.0.us129 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0.us129, i64 noundef %i.dx) #20
  %i.dy = add nuw nsw i64 %.070122.us125, 1       ; 2 uses
  %exitcond166.not = icmp eq i64 %i.dy, %i.i
  br i1 %exitcond166.not, label %._crit_edge124, label %.lr.ph123.split.split.us, !llvm.loop !601

.split.split.us:                                  ; preds = %bb.f
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

bb.k:                                             ; preds = %.lr.ph, %bb.e
  %.071109 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %bb.e ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.071109
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !110
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %bb.e, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1077, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.78) #19
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

._crit_edge124:                                   ; preds = %._ZNSt6vectorIlSaIlEED2Ev.exit_crit_edge.split.us.us, %.preheader, %.lr.ph123.split.us.split, %.preheader107
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !250 ; 2 uses
  %i.eg = ptrtoint ptr %.sroa.097.0 to i64        ; 2 uses
  %i.eh = invoke i64 @ggml_element_size(ptr noundef %i.ef)
          to label %bb.s unwind label %bb.d

.lr.ph123.split.split:                            ; preds = %.lr.ph123.split, %.preheader
  %.070122 = phi i64 [ %i.es, %.preheader ], [ 0, %.lr.ph123.split ] ; 3 uses
  br i1 %.not.i.i.i.i84, label %bb.o, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.o:                                             ; preds = %.lr.ph123.split.split
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #21
          to label %.noexc87 unwind label %.split.split ; 5 uses

.noexc87:                                         ; preds = %bb.o
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.l ; 2 uses
  store i64 0, ptr %i.ei, align 8, !tbaa !111
  br i1 %i.am, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc87
  %i.ek = getelementptr i8, ptr %i.ei, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ek, i8 0, i64 %.idx.i.i.i.i.i.i.i85, i1 false), !tbaa !111
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc87, %.lr.ph123.split.split
  %.sroa.091.0 = phi ptr [ %i.ei, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ei, %.noexc87 ], [ null, %.lr.ph123.split.split ] ; 4 uses
  %.sroa.12.0 = phi ptr [ %i.ej, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ej, %.noexc87 ], [ null, %.lr.ph123.split.split ]
  %.val.val.val = load ptr, ptr %i.an, align 8, !tbaa !606 ; 2 uses
  %.not.i = icmp eq ptr %.val.val.val, null
  br i1 %.not.i, label %.cont, label %.else

.else:                                            ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.val.val.val, i64 %.070122
  %.else.val = load i32, ptr %i.el, align 4, !tbaa !110
  br label %.cont

.cont:                                            ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.else
  %i.em = phi i32 [ %., %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ %.else.val, %.else ]
  %i.en = sext i32 %i.em to i64
  store i64 %i.en, ptr %.sroa.091.0, align 8, !tbaa !111
  br i1 %i.ao, label %.lr.ph112, label %.preheader

.lr.ph112:                                        ; preds = %.cont
  %i.eo = mul nuw nsw i64 %.070122, %i.t
  br label %bb.p

.preheader:                                       ; preds = %bb.r, %.cont
  %i.ep = ptrtoint ptr %.sroa.12.0 to i64
  %i.eq = ptrtoint ptr %.sroa.091.0 to i64
  %i.er = sub i64 %i.ep, %i.eq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0, i64 noundef %i.er) #20
  %i.es = add nuw nsw i64 %.070122, 1             ; 2 uses
  %exitcond168.not = icmp eq i64 %i.es, %i.i
  br i1 %exitcond168.not, label %._crit_edge124, label %.lr.ph123.split.split, !llvm.loop !601

.split.split:                                     ; preds = %bb.o
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

bb.p:                                             ; preds = %.lr.ph112, %bb.r
  %.068111 = phi i64 [ 1, %.lr.ph112 ], [ %i.fg, %bb.r ] ; 3 uses
  %.069110 = phi i1 [ false, %.lr.ph112 ], [ %i.fd, %bb.r ] ; 2 uses
  br i1 %.069110, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = sub nuw nsw i64 %i.t, %.068111
  %i.ev = load ptr, ptr %i.ak, align 8, !tbaa !295
  %i.ew = getelementptr [4 x i8], ptr %i.ev, i64 %i.eo
  %i.ex = getelementptr [4 x i8], ptr %i.ew, i64 %i.eu
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !110
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ez = phi i32 [ %i.ey, %bb.q ], [ -1, %bb.p ] ; 2 uses
  %i.fa = icmp slt i32 %i.ez, 0
  %or.cond = select i1 %.069110, i1 true, i1 %i.fa ; 2 uses
  %i.fb = sext i32 %i.ez to i64                   ; 2 uses
  %i.fc = icmp eq i64 %i.fb, %i.s
  %i.fd = select i1 %or.cond, i1 true, i1 %i.fc
  %i.fe = select i1 %or.cond, i64 %i.s, i64 %i.fb
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.091.0, i64 %.068111
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !111
  %i.fg = add nuw nsw i64 %.068111, 1             ; 2 uses
  %exitcond167.not = icmp eq i64 %i.fg, %i.l
  br i1 %exitcond167.not, label %.preheader, label %bb.p, !llvm.loop !596

bb.s:                                             ; preds = %._crit_edge124
  %i.fh = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.fi = sub i64 %i.fh, %i.eg
  %i.fj = ashr exact i64 %i.fi, 2
  %i.fk = mul i64 %i.eh, %i.fj
  invoke void @ggml_backend_tensor_set(ptr noundef %i.ef, ptr noundef %.sroa.097.0, i64 noundef 0, i64 noundef %i.fk)
          to label %bb.t unwind label %bb.d

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i88 = icmp eq ptr %.sroa.097.0, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fl = ptrtoint ptr %.sroa.13.0 to i64
  %i.fm = sub i64 %i.fl, %i.eg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0, i64 noundef %i.fm) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.t, %bb.u
  ret void

.split.us:                                        ; preds = %.split.split.us, %.split.split, %bb.n, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ed, %bb.n ], [ %i.ah, %bb.d ], [ %i.dz, %.split.split.us ], [ %i.et, %.split.split ]
  %.not.i.i.i89 = icmp eq ptr %.sroa.097.0, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIiSaIiEED2Ev.exit90, label %bb.v

bb.v:                                             ; preds = %.split.us
  %i.fn = ptrtoint ptr %.sroa.13.0 to i64
  %i.fo = ptrtoint ptr %.sroa.097.0 to i64
  %i.fp = sub i64 %i.fn, %i.fo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0, i64 noundef %i.fp) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit90

_ZNSt6vectorIiSaIiEED2Ev.exit90:                  ; preds = %bb.v, %.split.us
  resume { ptr, i32 } %.pn
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

end_hunk_0
