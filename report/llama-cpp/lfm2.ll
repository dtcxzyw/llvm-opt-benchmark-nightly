Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/lfm2?download=true
inline.NumInlined: 226
inline.NumDeleted: 132
begin_hunk_0_@_ZZN16llama_model_lfm25graphILb1EEC1ERK11llama_modelRK16llm_graph_paramsENKUlP11ggml_tensorP18llm_graph_input_rsiE_clES9_SB_i:bb.a
  %i.bv = tail call ptr @ggml_mul(ptr noundef %i.bu, ptr noundef %i.bc, ptr noundef %i.bt)
  %i.bw = tail call ptr @ggml_transpose(ptr noundef %i.bu, ptr noundef %i.bv) ; 2 uses
  %i.bx = tail call noundef ptr @_ZNK30llama_memory_recurrent_context7get_r_lEi(ptr noundef nonnull align 8 dereferenceable(57) %i.e, i32 noundef %3) ; 4 uses
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.bz = tail call noundef i32 @_ZNK13llama_hparams8n_embd_rEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cc, align 8
  store ptr @ggml_get_rows, ptr %4, align 8, !tbaa !235
  store ptr @_ZNSt17_Function_handlerIFP11ggml_tensorP12ggml_contextS1_S1_EPS4_E9_M_invokeERKSt9_Any_dataOS3_OS1_SB_, ptr %i.cb, align 8, !tbaa !237
  store ptr @_ZNSt17_Function_handlerIFP11ggml_tensorP12ggml_contextS1_S1_EPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.ca, align 8, !tbaa !238
  %i.cd = invoke noundef ptr @_ZNK17llm_graph_context8build_rsEP18llm_graph_input_rsP11ggml_tensoriiRKSt8functionIFS3_P12ggml_contextS3_S3_EE(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %2, ptr noundef %i.bx, i32 noundef %i.bz, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !238 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #17
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ci = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.cj = zext i32 %i.z to i64                    ; 6 uses
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !239
  %i.cn = zext i32 %i.cm to i64
  %i.co = call ptr @ggml_reshape_3d(ptr noundef %i.ci, ptr noundef %i.cd, i64 noundef %i.cj, i64 noundef %i.cn, i64 noundef %i.n) ; 6 uses
  %i.cp = load ptr, ptr %i.u, align 8, !tbaa !165, !nonnull !126, !align !166 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16780
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !240, !range !225, !noundef !126
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ct = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.cu = call ptr @ggml_concat(ptr noundef %i.ct, ptr noundef %i.co, ptr noundef %i.bw, i32 noundef 0)
  br label %bb.t

bb.p:                                             ; preds = %bb.k
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %i.ca, align 8, !tbaa !238 ; 2 uses
  %.not.i108 = icmp eq ptr %i.cw, null
  br i1 %.not.i108, label %_ZNSt14_Function_baseD2Ev.exit109, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = invoke noundef zeroext i1 %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit109 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #17
  unreachable

_ZNSt14_Function_baseD2Ev.exit109:                ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %i.cv

bb.s:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 88
  %i.db = load i32, ptr %i.da, align 8, !tbaa !234
  %i.dc = add i32 %i.db, -1
  %i.dd = lshr i32 %i.dc, 1                       ; 2 uses
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = load ptr, ptr %i.aa, align 8, !tbaa !170 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !239
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.dk = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !98
  %i.dm = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !98
  %i.do = sub nsw i64 %i.cj, %i.de
  %i.dp = load i64, ptr %i.dj, align 8, !tbaa !98
  %i.dq = mul i64 %i.dp, %i.do
  %i.dr = call ptr @ggml_view_3d(ptr noundef %i.df, ptr noundef %i.co, i64 noundef %i.de, i64 noundef %i.di, i64 noundef %i.n, i64 noundef %i.dl, i64 noundef %i.dn, i64 noundef %i.dq)
  %i.ds = call ptr @ggml_cont(ptr noundef %i.df, ptr noundef %i.dr)
  %i.dt = load ptr, ptr %i.aa, align 8, !tbaa !170 ; 2 uses
  %i.du = call ptr @ggml_concat(ptr noundef %i.dt, ptr noundef %i.ds, ptr noundef %i.bw, i32 noundef 0)
  %i.dv = call ptr @ggml_pad_ext(ptr noundef %i.dt, ptr noundef %i.du, i32 noundef 0, i32 noundef %i.dd, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.0103 = phi ptr [ %i.cu, %bb.o ], [ %i.dv, %bb.s ] ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0103, i64 16 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !98
  %i.dy = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !98
  %i.ea = icmp sgt i64 %i.dx, %i.dz
  br i1 %i.ea, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 205, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.19) #14
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.eb = load ptr, ptr %i.u, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16780
  %i.ed = load i8, ptr %i.ec, align 4, !tbaa !240, !range !225, !noundef !126
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !223, !nonnull !126, !align !166
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !241 ; 2 uses
  %.not107 = icmp eq i32 %i.ei, 0
  br i1 %.not107, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add nuw nsw i64 %i.ej, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %i.el = phi i64 [ %i.ek, %bb.x ], [ 1, %bb.w ], [ 1, %bb.v ]
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.el, i64 %i.k)
  %i.em = call noundef i32 @_ZNK30llama_memory_recurrent_context8get_sizeEv(ptr noundef nonnull align 8 dereferenceable(57) %i.e)
  %i.en = load i32, ptr %i.bx, align 8, !tbaa !246
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !247
  %i.eq = mul nsw i64 %i.ep, %i.cj
  %i.er = call i64 @ggml_row_size(i32 noundef %i.en, i64 noundef %i.eq)
  %.not118 = icmp eq i32 %i.j, 0
  br i1 %.not118, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %.0103, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %.0103, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %.0103, i64 56
  %i.ev = getelementptr inbounds nuw i8, ptr %.0103, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.ey = zext i32 %i.em to i64
  %i.ez = zext i32 %i.f to i64
  br label %bb.z

._crit_edge:                                      ; preds = %bb.z, %bb.y
  %i.fa = load ptr, ptr %0, align 8, !tbaa !369, !nonnull !126, !align !166
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 36512
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !103
  %i.fd = getelementptr inbounds nuw [2552 x i8], ptr %i.fc, i64 %i.ah
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 2344
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !123
  %i.fg = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.fh = call ptr @ggml_ssm_conv(ptr noundef %i.fg, ptr noundef nonnull %.0103, ptr noundef %i.ff) ; 2 uses
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.fh, ptr noundef nonnull @.str.20, i32 noundef %3)
  %i.fi = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.fj = call ptr @ggml_mul(ptr noundef %i.fi, ptr noundef %i.bk, ptr noundef %i.fh)
  %i.fk = load ptr, ptr %0, align 8, !tbaa !369, !nonnull !126, !align !166
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 36512
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !103
  %i.fn = getelementptr inbounds nuw [2552 x i8], ptr %i.fm, i64 %i.ah
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2352
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !125
  %i.fq = call noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.fp, ptr noundef %i.fj, ptr noundef null) ; 3 uses
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.fq, ptr noundef nonnull @.str.21, i32 noundef %3)
  %i.fr = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !98
  %i.fu = call ptr @ggml_reshape_2d(ptr noundef %i.fr, ptr noundef %i.fq, i64 noundef %i.ft, i64 noundef %i.r)
  ret ptr %i.fu

bb.z:                                             ; preds = %.lr.ph, %bb.z
  %.0117 = phi i64 [ 0, %.lr.ph ], [ %i.gq, %bb.z ] ; 3 uses
  %i.fv = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.fw = load i64, ptr %i.es, align 8, !tbaa !98
  %i.fx = load i64, ptr %i.et, align 8, !tbaa !98
  %i.fy = load i64, ptr %i.eu, align 8, !tbaa !98
  %i.fz = load i64, ptr %i.ev, align 8, !tbaa !98
  %i.ga = load i64, ptr %i.dw, align 8, !tbaa !98
  %i.gb = add nuw nsw i64 %.0117, %i.cj
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = call i64 @ggml_element_size(ptr noundef nonnull %.0103)
  %i.ge = mul i64 %i.gc, %i.gd
  %i.gf = call ptr @ggml_view_3d(ptr noundef %i.fv, ptr noundef nonnull %.0103, i64 noundef %i.cj, i64 noundef %i.fw, i64 noundef %i.fx, i64 noundef %i.fy, i64 noundef %i.fz, i64 noundef %i.ge)
  %i.gg = load ptr, ptr %i.ew, align 8, !tbaa !158
  %i.gh = load ptr, ptr %i.aa, align 8, !tbaa !170 ; 2 uses
  %i.gi = load i64, ptr %i.eo, align 8, !tbaa !247
  %i.gj = mul nsw i64 %i.gi, %i.cj
  %i.gk = load i64, ptr %i.ex, align 8, !tbaa !98
  %i.gl = mul nuw i64 %.0117, %i.ey
  %i.gm = add i64 %i.gl, %i.ez
  %i.gn = mul i64 %i.gm, %i.er
  %i.go = call ptr @ggml_view_2d(ptr noundef %i.gh, ptr noundef nonnull %i.bx, i64 noundef %i.gj, i64 noundef %i.n, i64 noundef %i.gk, i64 noundef %i.gn)
  %i.gp = call ptr @ggml_cpy(ptr noundef %i.gh, ptr noundef %i.gf, ptr noundef %i.go)
  call void @ggml_build_forward_expand(ptr noundef %i.gg, ptr noundef %i.gp)
  %i.gq = add nuw nsw i64 %.0117, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.gq, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.z, !llvm.loop !368
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZZN16llama_model_lfm25graphILb1EEC1ERK11llama_modelRK16llm_graph_paramsENKUlP11ggml_tensorS9_P28llm_graph_input_attn_kv_iswaiE_clES9_S9_SB_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %5 = alloca %struct.llm_graph_qkv, align 8      ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.e = tail call noundef i32 @_ZNK13llama_hparams12n_embd_v_gqaEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.d, i32 noundef %4)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.g = tail call noundef i32 @_ZNK13llama_hparams12n_embd_k_gqaEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.f, i32 noundef %4)
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 132, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.22) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.j = tail call noundef i32 @_ZNK13llama_hparams13n_embd_head_vEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.i, i32 noundef 0) ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.l = tail call noundef i32 @_ZNK13llama_hparams9n_head_kvEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.k, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.m = load ptr, ptr %0, align 8, !tbaa !370, !nonnull !126, !align !166
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36512
  %i.o = sext i32 %4 to i64                       ; 4 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw [2552 x i8], ptr %i.p, i64 %i.o
  %i.r = zext i32 %i.j to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.t = load i64, ptr %i.s, align 8, !tbaa !248
  %i.u = zext i32 %i.l to i64
  call void @_ZNK17llm_graph_context9build_qkvERK11llama_layerP11ggml_tensorllli(ptr dead_on_unwind nonnull writable sret(%struct.llm_graph_qkv) align 8 %5, ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef nonnull align 8 dereferenceable(2552) %i.q, ptr noundef %1, i64 noundef %i.r, i64 noundef %i.t, i64 noundef %i.u, i32 noundef %4)
  %i.v = load ptr, ptr %5, align 8, !tbaa !250
  %i.w = load ptr, ptr %0, align 8, !tbaa !370, !nonnull !126, !align !166
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 36512
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw [2552 x i8], ptr %i.y, i64 %i.o
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !120
  %i.ac = call noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.v, ptr noundef %i.ab, ptr noundef null, i32 noundef 1, i32 noundef %4) ; 2 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !250
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.ac, ptr noundef nonnull @.str.23, i32 noundef %4)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !251
  %i.af = load ptr, ptr %0, align 8, !tbaa !370, !nonnull !126, !align !166
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36512
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw [2552 x i8], ptr %i.ah, i64 %i.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !121
  %i.al = call noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.ae, ptr noundef %i.ak, ptr noundef null, i32 noundef 1, i32 noundef %4) ; 2 uses
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !251
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.al, ptr noundef nonnull @.str.24, i32 noundef %4)
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !170
  %i.ao = load ptr, ptr %5, align 8, !tbaa !250
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !252
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !253
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !254
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !255
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !256
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !257
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 156 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !258
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.bf = load float, ptr %i.be, align 8, !tbaa !259
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 164 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !260
  %i.bi = call ptr @ggml_rope_ext(ptr noundef %i.an, ptr noundef %i.ao, ptr noundef %2, ptr noundef null, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef %i.av, float noundef %i.ax, float noundef %i.az, float noundef %i.bb, float noundef %i.bd, float noundef %i.bf, float noundef %i.bh)
  store ptr %i.bi, ptr %5, align 8, !tbaa !250
  %i.bj = load ptr, ptr %i.am, align 8, !tbaa !170
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !251
  %i.bl = load i64, ptr %i.ap, align 8, !tbaa !252
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = load i32, ptr %i.as, align 8, !tbaa !253
  %i.bo = load i32, ptr %i.au, align 8, !tbaa !254
  %i.bp = load float, ptr %i.aw, align 8, !tbaa !255
  %i.bq = load float, ptr %i.ay, align 4, !tbaa !256
  %i.br = load float, ptr %i.ba, align 8, !tbaa !257
  %i.bs = load float, ptr %i.bc, align 4, !tbaa !258
  %i.bt = load float, ptr %i.be, align 8, !tbaa !259
  %i.bu = load float, ptr %i.bg, align 4, !tbaa !260
  %i.bv = call ptr @ggml_rope_ext(ptr noundef %i.bj, ptr noundef %i.bk, ptr noundef %2, ptr noundef null, i32 noundef %i.bm, i32 noundef %i.bn, i32 noundef %i.bo, float noundef %i.bp, float noundef %i.bq, float noundef %i.br, float noundef %i.bs, float noundef %i.bt, float noundef %i.bu) ; 2 uses
  store ptr %i.bv, ptr %i.ad, align 8, !tbaa !251
  %i.bw = load ptr, ptr %0, align 8, !tbaa !370, !nonnull !126, !align !166
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 36512
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !103
  %i.bz = getelementptr inbounds nuw [2552 x i8], ptr %i.by, i64 %i.o ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 192
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !122
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 1248
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !261
  %i.ce = load ptr, ptr %5, align 8, !tbaa !250
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !262
  %i.ch = uitofp i32 %i.j to float
  %sqrt = call float @llvm.sqrt.f32(float %i.ch)
  %i.ci = fdiv float 1.000000e+00, %sqrt
  %i.cj = call noundef ptr @_ZNK17llm_graph_context10build_attnEP28llm_graph_input_attn_kv_iswaP11ggml_tensorS3_S3_S3_S3_S3_S3_S3_S3_fi(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %3, ptr noundef %i.cb, ptr noundef null, ptr noundef %i.cd, ptr noundef %i.ce, ptr noundef %i.bv, ptr noundef %i.cg, ptr noundef null, ptr noundef null, ptr noundef null, float noundef %i.ci, i32 noundef %4) ; 2 uses
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.cj, ptr noundef nonnull @.str.25, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret ptr %i.cj
}

declare ptr @ggml_get_rows(ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @ggml_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK17llm_graph_context10build_cvecEP11ggml_tensori(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN16llama_model_lfm25graphILb0EEC2ERK11llama_modelRK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(36840) %1, ptr noundef nonnull align 8 dereferenceable(36496) %2) unnamed_addr #0 comdat($_ZN16llama_model_lfm25graphILb0EEC5ERK11llama_modelRK16llm_graph_params) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.208, align 8            ; 6 uses
  %4 = alloca %class.anon.209, align 8            ; 6 uses
  tail call void @_ZN17llm_graph_contextC2ERK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(36496) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN16llama_model_lfm25graphILb0EEE, i64 16), ptr %0, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !129
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %1, ptr %4, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !267
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = invoke noundef ptr @_ZNK17llm_graph_context14build_inp_embdEP11ggml_tensor(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.d)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.e, ptr noundef nonnull @.str.6, i32 noundef -1)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !158
  invoke void @ggml_build_forward_expand(ptr noundef %i.g, ptr noundef %i.e)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNK17llm_graph_context20build_inp_mem_hybridEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef ptr @_ZNK17llm_graph_context13build_inp_posEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.j = invoke noundef ptr @_ZNK17llm_graph_context17build_inp_out_idsEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.preheader:                                       ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !159
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36512 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.s = icmp ne ptr %i.j, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.g

._crit_edge:                                      ; preds = %bb.ab, %.preheader
  %.076.lcssa = phi ptr [ %i.e, %.preheader ], [ %i.ct, %bb.ab ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 36176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.y = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.076.lcssa, ptr noundef %i.x, ptr noundef null, i32 noundef 1, i32 noundef -1)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.g:                                             ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 8 uses
  %.07696 = phi ptr [ %i.e, %.lr.ph ], [ %i.ct, %bb.ab ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZZN16llama_model_lfm25graphILb0EEC1ERK11llama_modelRK16llm_graph_paramsENKUlP11ggml_tensorP18llm_graph_input_rsiE_clES9_SB_i:bb.a
  %i.bv = tail call ptr @ggml_mul(ptr noundef %i.bu, ptr noundef %i.bc, ptr noundef %i.bt)
  %i.bw = tail call ptr @ggml_transpose(ptr noundef %i.bu, ptr noundef %i.bv) ; 2 uses
  %i.bx = tail call noundef ptr @_ZNK30llama_memory_recurrent_context7get_r_lEi(ptr noundef nonnull align 8 dereferenceable(57) %i.e, i32 noundef %3) ; 4 uses
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.bz = tail call noundef i32 @_ZNK13llama_hparams8n_embd_rEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cc, align 8
  store ptr @ggml_get_rows, ptr %4, align 8, !tbaa !235
  store ptr @_ZNSt17_Function_handlerIFP11ggml_tensorP12ggml_contextS1_S1_EPS4_E9_M_invokeERKSt9_Any_dataOS3_OS1_SB_, ptr %i.cb, align 8, !tbaa !237
  store ptr @_ZNSt17_Function_handlerIFP11ggml_tensorP12ggml_contextS1_S1_EPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.ca, align 8, !tbaa !238
  %i.cd = invoke noundef ptr @_ZNK17llm_graph_context8build_rsEP18llm_graph_input_rsP11ggml_tensoriiRKSt8functionIFS3_P12ggml_contextS3_S3_EE(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %2, ptr noundef %i.bx, i32 noundef %i.bz, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !238 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #17
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ci = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.cj = zext i32 %i.z to i64                    ; 6 uses
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !239
  %i.cn = zext i32 %i.cm to i64
  %i.co = call ptr @ggml_reshape_3d(ptr noundef %i.ci, ptr noundef %i.cd, i64 noundef %i.cj, i64 noundef %i.cn, i64 noundef %i.n) ; 6 uses
  %i.cp = load ptr, ptr %i.u, align 8, !tbaa !165, !nonnull !126, !align !166 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16780
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !240, !range !225, !noundef !126
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ct = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.cu = call ptr @ggml_concat(ptr noundef %i.ct, ptr noundef %i.co, ptr noundef %i.bw, i32 noundef 0)
  br label %bb.t

bb.p:                                             ; preds = %bb.k
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %i.ca, align 8, !tbaa !238 ; 2 uses
  %.not.i108 = icmp eq ptr %i.cw, null
  br i1 %.not.i108, label %_ZNSt14_Function_baseD2Ev.exit109, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = invoke noundef zeroext i1 %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit109 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #17
  unreachable

_ZNSt14_Function_baseD2Ev.exit109:                ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %i.cv

bb.s:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 88
  %i.db = load i32, ptr %i.da, align 8, !tbaa !234
  %i.dc = add i32 %i.db, -1
  %i.dd = lshr i32 %i.dc, 1                       ; 2 uses
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = load ptr, ptr %i.aa, align 8, !tbaa !170 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !239
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.dk = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !98
  %i.dm = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !98
  %i.do = sub nsw i64 %i.cj, %i.de
  %i.dp = load i64, ptr %i.dj, align 8, !tbaa !98
  %i.dq = mul i64 %i.dp, %i.do
  %i.dr = call ptr @ggml_view_3d(ptr noundef %i.df, ptr noundef %i.co, i64 noundef %i.de, i64 noundef %i.di, i64 noundef %i.n, i64 noundef %i.dl, i64 noundef %i.dn, i64 noundef %i.dq)
  %i.ds = call ptr @ggml_cont(ptr noundef %i.df, ptr noundef %i.dr)
  %i.dt = load ptr, ptr %i.aa, align 8, !tbaa !170 ; 2 uses
  %i.du = call ptr @ggml_concat(ptr noundef %i.dt, ptr noundef %i.ds, ptr noundef %i.bw, i32 noundef 0)
  %i.dv = call ptr @ggml_pad_ext(ptr noundef %i.dt, ptr noundef %i.du, i32 noundef 0, i32 noundef %i.dd, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.0103 = phi ptr [ %i.cu, %bb.o ], [ %i.dv, %bb.s ] ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0103, i64 16 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !98
  %i.dy = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !98
  %i.ea = icmp sgt i64 %i.dx, %i.dz
  br i1 %i.ea, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 205, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.19) #14
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.eb = load ptr, ptr %i.u, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16780
  %i.ed = load i8, ptr %i.ec, align 4, !tbaa !240, !range !225, !noundef !126
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !223, !nonnull !126, !align !166
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !241 ; 2 uses
  %.not107 = icmp eq i32 %i.ei, 0
  br i1 %.not107, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add nuw nsw i64 %i.ej, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %i.el = phi i64 [ %i.ek, %bb.x ], [ 1, %bb.w ], [ 1, %bb.v ]
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.el, i64 %i.k)
  %i.em = call noundef i32 @_ZNK30llama_memory_recurrent_context8get_sizeEv(ptr noundef nonnull align 8 dereferenceable(57) %i.e)
  %i.en = load i32, ptr %i.bx, align 8, !tbaa !246
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !247
  %i.eq = mul nsw i64 %i.ep, %i.cj
  %i.er = call i64 @ggml_row_size(i32 noundef %i.en, i64 noundef %i.eq)
  %.not118 = icmp eq i32 %i.j, 0
  br i1 %.not118, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %.0103, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %.0103, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %.0103, i64 56
  %i.ev = getelementptr inbounds nuw i8, ptr %.0103, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.ey = zext i32 %i.em to i64
  %i.ez = zext i32 %i.f to i64
  br label %bb.z

._crit_edge:                                      ; preds = %bb.z, %bb.y
  %i.fa = load ptr, ptr %0, align 8, !tbaa !375, !nonnull !126, !align !166
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 36512
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !103
  %i.fd = getelementptr inbounds nuw [2552 x i8], ptr %i.fc, i64 %i.ah
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 2344
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !123
  %i.fg = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.fh = call ptr @ggml_ssm_conv(ptr noundef %i.fg, ptr noundef nonnull %.0103, ptr noundef %i.ff) ; 2 uses
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.fh, ptr noundef nonnull @.str.20, i32 noundef %3)
  %i.fi = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.fj = call ptr @ggml_mul(ptr noundef %i.fi, ptr noundef %i.bk, ptr noundef %i.fh)
  %i.fk = load ptr, ptr %0, align 8, !tbaa !375, !nonnull !126, !align !166
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 36512
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !103
  %i.fn = getelementptr inbounds nuw [2552 x i8], ptr %i.fm, i64 %i.ah
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2352
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !125
  %i.fq = call noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.fp, ptr noundef %i.fj, ptr noundef null) ; 3 uses
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.fq, ptr noundef nonnull @.str.21, i32 noundef %3)
  %i.fr = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !98
  %i.fu = call ptr @ggml_reshape_2d(ptr noundef %i.fr, ptr noundef %i.fq, i64 noundef %i.ft, i64 noundef %i.r)
  ret ptr %i.fu

bb.z:                                             ; preds = %.lr.ph, %bb.z
  %.0117 = phi i64 [ 0, %.lr.ph ], [ %i.gq, %bb.z ] ; 3 uses
  %i.fv = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.fw = load i64, ptr %i.es, align 8, !tbaa !98
  %i.fx = load i64, ptr %i.et, align 8, !tbaa !98
  %i.fy = load i64, ptr %i.eu, align 8, !tbaa !98
  %i.fz = load i64, ptr %i.ev, align 8, !tbaa !98
  %i.ga = load i64, ptr %i.dw, align 8, !tbaa !98
  %i.gb = add nuw nsw i64 %.0117, %i.cj
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = call i64 @ggml_element_size(ptr noundef nonnull %.0103)
  %i.ge = mul i64 %i.gc, %i.gd
  %i.gf = call ptr @ggml_view_3d(ptr noundef %i.fv, ptr noundef nonnull %.0103, i64 noundef %i.cj, i64 noundef %i.fw, i64 noundef %i.fx, i64 noundef %i.fy, i64 noundef %i.fz, i64 noundef %i.ge)
  %i.gg = load ptr, ptr %i.ew, align 8, !tbaa !158
  %i.gh = load ptr, ptr %i.aa, align 8, !tbaa !170 ; 2 uses
  %i.gi = load i64, ptr %i.eo, align 8, !tbaa !247
  %i.gj = mul nsw i64 %i.gi, %i.cj
  %i.gk = load i64, ptr %i.ex, align 8, !tbaa !98
  %i.gl = mul nuw i64 %.0117, %i.ey
  %i.gm = add i64 %i.gl, %i.ez
  %i.gn = mul i64 %i.gm, %i.er
  %i.go = call ptr @ggml_view_2d(ptr noundef %i.gh, ptr noundef nonnull %i.bx, i64 noundef %i.gj, i64 noundef %i.n, i64 noundef %i.gk, i64 noundef %i.gn)
  %i.gp = call ptr @ggml_cpy(ptr noundef %i.gh, ptr noundef %i.gf, ptr noundef %i.go)
  call void @ggml_build_forward_expand(ptr noundef %i.gg, ptr noundef %i.gp)
  %i.gq = add nuw nsw i64 %.0117, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.gq, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.z, !llvm.loop !374
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZZN16llama_model_lfm25graphILb0EEC1ERK11llama_modelRK16llm_graph_paramsENKUlP11ggml_tensorS9_P23llm_graph_input_attn_kviE_clES9_S9_SB_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %5 = alloca %struct.llm_graph_qkv, align 8      ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265  ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.e = tail call noundef i32 @_ZNK13llama_hparams12n_embd_v_gqaEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.d, i32 noundef %4)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.g = tail call noundef i32 @_ZNK13llama_hparams12n_embd_k_gqaEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.f, i32 noundef %4)
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 132, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.22) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.j = tail call noundef i32 @_ZNK13llama_hparams13n_embd_head_vEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.i, i32 noundef 0) ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !165, !nonnull !126, !align !166
  %i.l = tail call noundef i32 @_ZNK13llama_hparams9n_head_kvEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.k, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.m = load ptr, ptr %0, align 8, !tbaa !376, !nonnull !126, !align !166
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36512
  %i.o = sext i32 %4 to i64                       ; 4 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw [2552 x i8], ptr %i.p, i64 %i.o
  %i.r = zext i32 %i.j to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.t = load i64, ptr %i.s, align 8, !tbaa !248
  %i.u = zext i32 %i.l to i64
  call void @_ZNK17llm_graph_context9build_qkvERK11llama_layerP11ggml_tensorllli(ptr dead_on_unwind nonnull writable sret(%struct.llm_graph_qkv) align 8 %5, ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef nonnull align 8 dereferenceable(2552) %i.q, ptr noundef %1, i64 noundef %i.r, i64 noundef %i.t, i64 noundef %i.u, i32 noundef %4)
  %i.v = load ptr, ptr %5, align 8, !tbaa !250
  %i.w = load ptr, ptr %0, align 8, !tbaa !376, !nonnull !126, !align !166
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 36512
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw [2552 x i8], ptr %i.y, i64 %i.o
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !120
  %i.ac = call noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.v, ptr noundef %i.ab, ptr noundef null, i32 noundef 1, i32 noundef %4) ; 2 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !250
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.ac, ptr noundef nonnull @.str.23, i32 noundef %4)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !251
  %i.af = load ptr, ptr %0, align 8, !tbaa !376, !nonnull !126, !align !166
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36512
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw [2552 x i8], ptr %i.ah, i64 %i.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !121
  %i.al = call noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.ae, ptr noundef %i.ak, ptr noundef null, i32 noundef 1, i32 noundef %4) ; 2 uses
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !251
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.al, ptr noundef nonnull @.str.24, i32 noundef %4)
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !170
  %i.ao = load ptr, ptr %5, align 8, !tbaa !250
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !252
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !253
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !254
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !255
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !256
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !257
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 156 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !258
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.bf = load float, ptr %i.be, align 8, !tbaa !259
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 164 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !260
  %i.bi = call ptr @ggml_rope_ext(ptr noundef %i.an, ptr noundef %i.ao, ptr noundef %2, ptr noundef null, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef %i.av, float noundef %i.ax, float noundef %i.az, float noundef %i.bb, float noundef %i.bd, float noundef %i.bf, float noundef %i.bh)
  store ptr %i.bi, ptr %5, align 8, !tbaa !250
  %i.bj = load ptr, ptr %i.am, align 8, !tbaa !170
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !251
  %i.bl = load i64, ptr %i.ap, align 8, !tbaa !252
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = load i32, ptr %i.as, align 8, !tbaa !253
  %i.bo = load i32, ptr %i.au, align 8, !tbaa !254
  %i.bp = load float, ptr %i.aw, align 8, !tbaa !255
  %i.bq = load float, ptr %i.ay, align 4, !tbaa !256
  %i.br = load float, ptr %i.ba, align 8, !tbaa !257
  %i.bs = load float, ptr %i.bc, align 4, !tbaa !258
  %i.bt = load float, ptr %i.be, align 8, !tbaa !259
  %i.bu = load float, ptr %i.bg, align 4, !tbaa !260
  %i.bv = call ptr @ggml_rope_ext(ptr noundef %i.bj, ptr noundef %i.bk, ptr noundef %2, ptr noundef null, i32 noundef %i.bm, i32 noundef %i.bn, i32 noundef %i.bo, float noundef %i.bp, float noundef %i.bq, float noundef %i.br, float noundef %i.bs, float noundef %i.bt, float noundef %i.bu) ; 2 uses
  store ptr %i.bv, ptr %i.ad, align 8, !tbaa !251
  %i.bw = load ptr, ptr %0, align 8, !tbaa !376, !nonnull !126, !align !166
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 36512
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !103
  %i.bz = getelementptr inbounds nuw [2552 x i8], ptr %i.by, i64 %i.o ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 192
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !122
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 1248
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !261
  %i.ce = load ptr, ptr %5, align 8, !tbaa !250
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !262
  %i.ch = uitofp i32 %i.j to float
  %sqrt = call float @llvm.sqrt.f32(float %i.ch)
  %i.ci = fdiv float 1.000000e+00, %sqrt
  %i.cj = call noundef ptr @_ZNK17llm_graph_context10build_attnEP23llm_graph_input_attn_kvP11ggml_tensorS3_S3_S3_S3_S3_S3_S3_S3_fi(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %3, ptr noundef %i.cb, ptr noundef null, ptr noundef %i.cd, ptr noundef %i.ce, ptr noundef %i.bv, ptr noundef %i.cg, ptr noundef null, ptr noundef null, ptr noundef null, float noundef %i.ci, i32 noundef %4) ; 2 uses
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %i.b, ptr noundef %i.cj, ptr noundef nonnull @.str.25, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret ptr %i.cj
}

; Function Attrs: nounwind
declare void @_ZN11llama_modelD2Ev(ptr noundef nonnull align 8 dead_on_return(36840) dereferenceable(36840)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN16llama_model_lfm2D0Ev(ptr noundef nonnull align 8 dereferenceable(36884) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN11llama_modelD2Ev(ptr noundef nonnull align 8 dead_on_return(36884) dereferenceable(36884) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 36888) #16
  ret void
}

declare void @_ZN16llama_model_base10load_statsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #1

declare void @_ZN16llama_model_base12load_hparamsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #1

declare void @_ZN16llama_model_base10load_vocabER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #1

declare noundef zeroext i1 @_ZN16llama_model_base12load_tensorsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN16llama_model_lfm25graphILb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV17llm_graph_context, i64 16), ptr %0, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN17llm_graph_contextD2Ev.exit unwind label %bb.b, !inline_history !269

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #17, !inline_history !269
  unreachable

_ZN17llm_graph_contextD2Ev.exit:                  ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN17llm_graph_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV17llm_graph_context, i64 16), ptr %0, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS1_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #17
  unreachable

_ZNSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS1_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN16llama_model_lfm25graphILb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV17llm_graph_context, i64 16), ptr %0, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN17llm_graph_contextD2Ev.exit unwind label %bb.b, !inline_history !269

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #17, !inline_history !269
  unreachable
end_hunk_1
