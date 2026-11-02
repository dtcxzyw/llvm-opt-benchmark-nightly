Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/mamba-base?download=true
inline.NumInlined: 124
inline.NumDeleted: 65
begin_hunk_0_@_ZNK20llm_build_mamba_base18build_mamba2_layerEP18llm_graph_input_rsP11ggml_tensorRK11llama_modelRK12llama_ubatchi:bb.a
  call void @__clang_call_terminate(ptr %i.bq) #12
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 22 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.bt = add nsw i64 %i.s, -1                    ; 3 uses
  %i.bu = shl nuw nsw i64 %i.ag, 1
  %i.bv = mul nuw nsw i64 %i.bu, %i.y             ; 2 uses
  %i.bw = add nuw nsw i64 %i.bv, %i.v             ; 4 uses
  %i.bx = call ptr @ggml_reshape_3d(ptr noundef %i.bs, ptr noundef %i.bm, i64 noundef %i.bt, i64 noundef %i.bw, i64 noundef %i.aj)
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 36512 ; 9 uses
  %i.bz = sext i32 %5 to i64                      ; 9 uses
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw [2552 x i8], ptr %i.ca, i64 %i.bz ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 792
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !99
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1320
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !100
  %i.cg = call noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cd, ptr noundef %2, ptr noundef %i.cf) ; 2 uses
  %i.ch = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !70
  %i.ck = call ptr @ggml_reshape_3d(ptr noundef %i.ch, ptr noundef %i.cg, i64 noundef %i.cj, i64 noundef %i.am, i64 noundef %i.aj) ; 8 uses
  %i.cl = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !70
  %i.co = mul i64 %i.cn, %.zext
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !70
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 64 ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !70
  %i.ct = call ptr @ggml_view_4d(ptr noundef %i.cl, ptr noundef %i.ck, i64 noundef %.zext, i64 noundef %i.ab, i64 noundef %i.am, i64 noundef %i.aj, i64 noundef %i.co, i64 noundef %i.cq, i64 noundef %i.cs, i64 noundef 0)
  %i.cu = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.cv = load i64, ptr %i.cp, align 8, !tbaa !70
  %i.cw = load i64, ptr %i.cr, align 8, !tbaa !70
  %i.cx = call i64 @ggml_element_size(ptr noundef %i.ck)
  %i.cy = mul i64 %i.cx, %i.v
  %i.cz = call ptr @ggml_view_3d(ptr noundef %i.cu, ptr noundef %i.ck, i64 noundef %i.bw, i64 noundef %i.am, i64 noundef %i.aj, i64 noundef %i.cv, i64 noundef %i.cw, i64 noundef %i.cy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.da = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.db = load i64, ptr %i.cp, align 8, !tbaa !70
  %i.dc = load i64, ptr %i.cr, align 8, !tbaa !70
  %i.dd = shl nuw nsw i64 %i.v, 1
  %i.de = add nuw nsw i64 %i.bv, %i.dd
  %i.df = call i64 @ggml_element_size(ptr noundef %i.ck)
  %i.dg = mul i64 %i.de, %i.df
  %i.dh = call ptr @ggml_view_3d(ptr noundef %i.da, ptr noundef %i.ck, i64 noundef %i.ab, i64 noundef %i.am, i64 noundef %i.aj, i64 noundef %i.db, i64 noundef %i.dc, i64 noundef %i.dg)
  %i.di = load ptr, ptr %i.br, align 8, !tbaa !92 ; 2 uses
  %i.dj = call ptr @ggml_transpose(ptr noundef %i.di, ptr noundef %i.cz)
  %i.dk = call ptr @ggml_concat(ptr noundef %i.di, ptr noundef %i.bx, ptr noundef %i.dj, i32 noundef 0) ; 5 uses
  %i.dl = mul nsw i64 %i.bw, %i.bt                ; 2 uses
  %i.dm = load i32, ptr %i.bd, align 8, !tbaa !146
  %i.dn = call i64 @ggml_row_size(i32 noundef %i.dm, i64 noundef %i.dl)
  %i.do = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.am)
  %.not232 = icmp eq i32 %i.al, 0
  br i1 %.not232, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.du = zext i32 %i.n to i64
  %i.dv = zext i32 %i.m to i64
  br label %bb.r

._crit_edge:                                      ; preds = %bb.r, %_ZNSt14_Function_baseD2Ev.exit
  %i.dw = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.dx = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.dy = getelementptr inbounds nuw [2552 x i8], ptr %i.dx, i64 %i.bz
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 824
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !102
  %i.eb = call ptr @ggml_ssm_conv(ptr noundef %i.dw, ptr noundef %i.dk, ptr noundef %i.ea)
  %i.ec = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.ed = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.ee = getelementptr inbounds nuw [2552 x i8], ptr %i.ed, i64 %i.bz
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 848
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !103
  %i.eh = call ptr @ggml_add(ptr noundef %i.ec, ptr noundef %i.eb, ptr noundef %i.eg)
  %i.ei = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.ej = call ptr @ggml_silu(ptr noundef %i.ei, ptr noundef %i.eh) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.ek = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 48 ; 3 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !70
  %i.en = mul i64 %i.em, %.zext
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 56 ; 3 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !70
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 64 ; 3 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !70
  %i.es = call ptr @ggml_view_4d(ptr noundef %i.ek, ptr noundef %i.ej, i64 noundef %.zext, i64 noundef %i.ab, i64 noundef %i.am, i64 noundef %i.aj, i64 noundef %i.en, i64 noundef %i.ep, i64 noundef %i.er, i64 noundef 0)
  store ptr %i.es, ptr %i.g, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.et = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.eu = load i64, ptr %i.el, align 8, !tbaa !70
  %i.ev = mul i64 %i.eu, %i.y
  %i.ew = load i64, ptr %i.eo, align 8, !tbaa !70
  %i.ex = load i64, ptr %i.eq, align 8, !tbaa !70
  %i.ey = call i64 @ggml_element_size(ptr noundef %i.ej)
  %i.ez = mul i64 %i.ey, %i.v
  %i.fa = call ptr @ggml_view_4d(ptr noundef %i.et, ptr noundef %i.ej, i64 noundef %i.y, i64 noundef %i.ag, i64 noundef %i.am, i64 noundef %i.aj, i64 noundef %i.ev, i64 noundef %i.ew, i64 noundef %i.ex, i64 noundef %i.ez)
  store ptr %i.fa, ptr %i.h, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.fb = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.fc = load i64, ptr %i.el, align 8, !tbaa !70
  %i.fd = mul i64 %i.fc, %i.y
  %i.fe = load i64, ptr %i.eo, align 8, !tbaa !70
  %i.ff = load i64, ptr %i.eq, align 8, !tbaa !70
  %i.fg = mul nuw nsw i64 %i.y, %i.ag
  %i.fh = add nuw nsw i64 %i.fg, %i.v
  %i.fi = call i64 @ggml_element_size(ptr noundef %i.ej)
  %i.fj = mul i64 %i.fi, %i.fh
  %i.fk = call ptr @ggml_view_4d(ptr noundef %i.fb, ptr noundef %i.ej, i64 noundef %i.y, i64 noundef %i.ag, i64 noundef %i.am, i64 noundef %i.aj, i64 noundef %i.fd, i64 noundef %i.fe, i64 noundef %i.ff, i64 noundef %i.fj)
  store ptr %i.fk, ptr %i.i, align 8, !tbaa !104
  %i.fl = load ptr, ptr %i.br, align 8, !tbaa !92 ; 2 uses
  %i.fm = call ptr @ggml_cont(ptr noundef %i.fl, ptr noundef %i.dh)
  %i.fn = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.fo = getelementptr inbounds nuw [2552 x i8], ptr %i.fn, i64 %i.bz
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 856
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !105
  %i.fr = call ptr @ggml_add(ptr noundef %i.fl, ptr noundef %i.fm, ptr noundef %i.fq)
  store ptr %i.fr, ptr %i.f, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.fs = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.ft = getelementptr inbounds nuw [2552 x i8], ptr %i.fs, i64 %i.bz
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 832
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !106
  store ptr %i.fv, ptr %i.j, align 8, !tbaa !104
  %i.fw = load ptr, ptr %i.o, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.fx = call noundef i32 @_ZNK13llama_hparams8n_embd_sEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.fw)
  %i.fy = load i32, ptr %i.ah, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.gb, align 8
  %i.gc = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #13 ; 11 uses
  store ptr %i.a, ptr %i.gc, align 16, !tbaa !108
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !108
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !108
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store ptr %i.e, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !108
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  store ptr %i.g, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  store ptr %i.f, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !112
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  store ptr %i.j, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 56
  store ptr %i.h, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !112
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  store ptr %i.i, ptr %.sroa.12.0..sroa_idx, align 16, !tbaa !112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 72
  store ptr %i.d, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !108
  store ptr %i.gc, ptr %7, align 8, !tbaa !87
  store ptr @"_ZNSt17_Function_handlerIFP11ggml_tensorP12ggml_contextS1_S1_EZNK20llm_build_mamba_base18build_mamba2_layerEP18llm_graph_input_rsS1_RK11llama_modelRK12llama_ubatchiE3$_0E9_M_invokeERKSt9_Any_dataOS3_OS1_SK_", ptr %i.ga, align 8, !tbaa !90
  store ptr @"_ZNSt17_Function_handlerIFP11ggml_tensorP12ggml_contextS1_S1_EZNK20llm_build_mamba_base18build_mamba2_layerEP18llm_graph_input_rsS1_RK11llama_modelRK12llama_ubatchiE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.fz, align 8, !tbaa !91
  %i.gd = invoke noundef ptr @_ZNK17llm_graph_context8build_rsEP18llm_graph_input_rsP11ggml_tensoriiRKSt8functionIFS3_P12ggml_contextS3_S3_EE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.be, i32 noundef %i.fx, i32 noundef %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.s unwind label %bb.w       ; 3 uses

bb.o:                                             ; preds = %bb.k
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %i.gf = load ptr, ptr %i.bj, align 8, !tbaa !91 ; 2 uses
  %.not.i181 = icmp eq ptr %i.gf, null
  br i1 %.not.i181, label %_ZNSt14_Function_baseD2Ev.exit182, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gg = invoke noundef zeroext i1 %i.gf(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit182 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #12
  unreachable

_ZNSt14_Function_baseD2Ev.exit182:                ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.aa

bb.r:                                             ; preds = %.lr.ph, %bb.r
  %.0173225 = phi i64 [ 0, %.lr.ph ], [ %i.gy, %bb.r ] ; 3 uses
  %i.gj = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.gk = load i64, ptr %i.dq, align 8, !tbaa !70
  %i.gl = load i64, ptr %i.dr, align 8, !tbaa !70
  %i.gm = sub nsw i64 %i.am, %.0173225
  %i.gn = load i64, ptr %i.dp, align 8, !tbaa !70
  %i.go = mul i64 %i.gn, %i.gm
  %i.gp = call ptr @ggml_view_3d(ptr noundef %i.gj, ptr noundef %i.dk, i64 noundef %i.bt, i64 noundef %i.bw, i64 noundef %i.aj, i64 noundef %i.gk, i64 noundef %i.gl, i64 noundef %i.go)
  %i.gq = load ptr, ptr %i.ds, align 8, !tbaa !101
  %i.gr = load ptr, ptr %i.br, align 8, !tbaa !92 ; 2 uses
  %i.gs = load i64, ptr %i.dt, align 8, !tbaa !70
  %i.gt = mul nuw i64 %.0173225, %i.du
  %i.gu = add nuw i64 %i.gt, %i.dv
  %i.gv = mul i64 %i.gu, %i.dn
  %i.gw = call ptr @ggml_view_2d(ptr noundef %i.gr, ptr noundef nonnull %i.bd, i64 noundef %i.dl, i64 noundef %i.aj, i64 noundef %i.gs, i64 noundef %i.gv)
  %i.gx = call ptr @ggml_cpy(ptr noundef %i.gr, ptr noundef %i.gp, ptr noundef %i.gw)
  call void @ggml_build_forward_expand(ptr noundef %i.gq, ptr noundef %i.gx)
  %i.gy = add nuw nsw i64 %.0173225, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.gy, %i.do
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !129

bb.s:                                             ; preds = %._crit_edge
  %i.gz = load ptr, ptr %i.fz, align 8, !tbaa !91 ; 2 uses
  %.not.i183 = icmp eq ptr %i.gz, null
  br i1 %.not.i183, label %_ZNSt14_Function_baseD2Ev.exit184, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ha = invoke noundef zeroext i1 %i.gz(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit184 unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #12
  unreachable

_ZNSt14_Function_baseD2Ev.exit184:                ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.hd = load i64, ptr %i.a, align 8, !tbaa !70
  %i.he = mul nsw i64 %i.hd, %i.v                 ; 4 uses
  %i.hf = load i64, ptr %i.d, align 8, !tbaa !70
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.hf, i64 %i.am) ; 2 uses
  %i.hg = load i32, ptr %i.be, align 8, !tbaa !146
  %i.hh = call i64 @ggml_row_size(i32 noundef %i.hg, i64 noundef %i.he) ; 2 uses
  %i.hi = load i32, ptr %i.gd, align 8, !tbaa !146
  %i.hj = call i64 @ggml_row_size(i32 noundef %i.hi, i64 noundef %i.he) ; 2 uses
  %i.hk = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.hl = call i64 @ggml_nelements(ptr noundef %i.hk)
  %i.hm = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.hn = call i64 @ggml_element_size(ptr noundef %i.hm)
  %i.ho = mul i64 %i.hn, %i.hl
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !101
  %i.hr = load ptr, ptr %i.br, align 8, !tbaa !92 ; 2 uses
  %i.hs = mul i64 %i.hj, %i.aj
  %i.ht = call ptr @ggml_view_3d(ptr noundef %i.hr, ptr noundef nonnull %i.gd, i64 noundef %i.he, i64 noundef %i.aj, i64 noundef %.sroa.speculated, i64 noundef %i.hj, i64 noundef %i.hs, i64 noundef %i.ho)
  %i.hu = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.hv = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !70
  %i.hx = zext i32 %i.n to i64
  %i.hy = mul i64 %i.hh, %i.hx
  %i.hz = zext i32 %i.m to i64
  %i.ia = mul i64 %i.hh, %i.hz
  %i.ib = call ptr @ggml_view_3d(ptr noundef %i.hu, ptr noundef nonnull %i.be, i64 noundef %i.he, i64 noundef %i.aj, i64 noundef %.sroa.speculated, i64 noundef %i.hw, i64 noundef %i.hy, i64 noundef %i.ia)
  %i.ic = call ptr @ggml_cpy(ptr noundef %i.hr, ptr noundef %i.ht, ptr noundef %i.ib)
  call void @ggml_build_forward_expand(ptr noundef %i.hq, ptr noundef %i.ic)
  %i.id = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.ie = load i64, ptr %i.c, align 8, !tbaa !70
  %i.if = load i64, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  %i.ig = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 56
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !70 ; 2 uses
  %i.ij = mul i64 %i.ii, %i.if                    ; 2 uses
  %i.ik = mul i64 %i.ij, %i.am
  %i.il = call ptr @ggml_view_4d(ptr noundef %i.id, ptr noundef nonnull %i.gd, i64 noundef %i.ie, i64 noundef %i.if, i64 noundef %i.am, i64 noundef %i.aj, i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, i64 noundef 0)
  %i.im = load ptr, ptr %i.br, align 8, !tbaa !92 ; 2 uses
  %i.in = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.io = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.ip = getelementptr inbounds nuw [2552 x i8], ptr %i.io, i64 %i.bz
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 840
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !113
  %i.is = call ptr @ggml_mul(ptr noundef %i.im, ptr noundef %i.in, ptr noundef %i.ir)
  %i.it = call ptr @ggml_add(ptr noundef %i.im, ptr noundef %i.il, ptr noundef %i.is) ; 2 uses
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.it, ptr noundef nonnull @.str.7, i32 noundef %5)
  %i.iu = load ptr, ptr %i.br, align 8, !tbaa !92 ; 2 uses
  %i.iv = call ptr @ggml_cont(ptr noundef %i.iu, ptr noundef %i.ct)
  %i.iw = call ptr @ggml_swiglu_split(ptr noundef %i.iu, ptr noundef %i.iv, ptr noundef %i.it) ; 2 uses
  %i.ix = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.iy = getelementptr inbounds nuw [2552 x i8], ptr %i.ix, i64 %i.bz
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 136
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !147
  %.not180 = icmp eq ptr %i.ja, null
  br i1 %.not180, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit184
  %i.jb = load ptr, ptr %i.br, align 8, !tbaa !92
  %.zext233 = zext i32 %i.bb to i64
  %i.jc = call ptr @ggml_reshape_4d(ptr noundef %i.jb, ptr noundef %i.iw, i64 noundef %.zext233, i64 noundef %i.ag, i64 noundef %i.am, i64 noundef %i.aj)
  %i.jd = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.je = getelementptr inbounds nuw [2552 x i8], ptr %i.jd, i64 %i.bz
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 136
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !147
  %i.jh = call noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.jc, ptr noundef %i.jg, ptr noundef null, i32 noundef 1, i32 noundef %5)
  br label %bb.z

bb.w:                                             ; preds = %._crit_edge
  %i.ji = landingpad { ptr, i32 }
          cleanup
  %i.jj = load ptr, ptr %i.fz, align 8, !tbaa !91 ; 2 uses
  %.not.i186 = icmp eq ptr %i.jj, null
  br i1 %.not.i186, label %_ZNSt14_Function_baseD2Ev.exit187, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jk = invoke noundef zeroext i1 %i.jj(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit187 unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #12
  unreachable

_ZNSt14_Function_baseD2Ev.exit187:                ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %bb.aa

bb.z:                                             ; preds = %bb.v, %_ZNSt14_Function_baseD2Ev.exit184
  %.0 = phi ptr [ %i.jh, %bb.v ], [ %i.iw, %_ZNSt14_Function_baseD2Ev.exit184 ]
  %i.jn = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.jo = call ptr @ggml_reshape_2d(ptr noundef %i.jn, ptr noundef %.0, i64 noundef %i.v, i64 noundef %i.aw)
  %i.jp = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.jq = getelementptr inbounds nuw [2552 x i8], ptr %i.jp, i64 %i.bz ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 816
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !114
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 1328
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !115
  %i.jv = call noundef ptr @_ZNK17llm_graph_context13build_lora_mmEP11ggml_tensorS1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.js, ptr noundef %i.jo, ptr noundef %i.ju) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.jv, ptr noundef nonnull @.str.8, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %i.jv

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit187, %_ZNSt14_Function_baseD2Ev.exit182
  %.pn = phi { ptr, i32 } [ %i.ji, %_ZNSt14_Function_baseD2Ev.exit187 ], [ %i.ge, %_ZNSt14_Function_baseD2Ev.exit182 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZNK30llama_memory_recurrent_context8get_sizeEv(ptr noundef nonnull align 8 dereferenceable(57)) local_unnamed_addr #1

declare i64 @ggml_row_size(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ggml_view_2d(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ggml_nelements(ptr noundef) local_unnamed_addr #1

declare void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN20llm_build_mamba_baseD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV17llm_graph_context, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN17llm_graph_contextD2Ev.exit unwind label %bb.b, !inline_history !118

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #12, !inline_history !118
  unreachable

_ZN17llm_graph_contextD2Ev.exit:                  ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #14
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
end_hunk_0
