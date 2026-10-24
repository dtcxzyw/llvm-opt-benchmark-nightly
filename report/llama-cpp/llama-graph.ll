Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-graph?download=true
inline.NumInlined: 3692
inline.NumDeleted: 1965
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK17llm_graph_context13build_moe_ffnEP11ggml_tensorS1_S1_S1_S1_S1_S1_S1_S1_S1_ll15llm_ffn_op_typebf29llama_expert_gating_func_typeiS1_S1_S1_S1_S1_S1_S1_:bb.a
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 10360
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !728 ; 2 uses
  %i.hc = icmp ugt i32 %i.hb, 1
  %i.hd = icmp sgt i64 %i.ej, 0
  %or.cond = select i1 %i.hc, i1 %i.hd, i1 false
  br i1 %or.cond, label %bb.m, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit393

bb.m:                                             ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit387
  %i.he = zext i32 %i.hb to i64                   ; 2 uses
  %i.hf = sdiv i64 %11, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 9 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !459
  %i.hi = call ptr @ggml_reshape_3d(ptr noundef %i.hh, ptr noundef %.2342, i64 noundef %i.hf, i64 noundef %i.he, i64 noundef %i.ej) ; 7 uses
  %i.hj = load ptr, ptr %i.hg, align 8, !tbaa !459
  %i.hk = call ptr @ggml_argsort_top_k(ptr noundef %i.hj, ptr noundef %i.hi, i32 noundef 2)
  %i.hl = load ptr, ptr %i.hg, align 8, !tbaa !459 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !44
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !44
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !44
  %i.hs = call ptr @ggml_reshape_4d(ptr noundef %i.hl, ptr noundef %i.hi, i64 noundef 1, i64 noundef %i.hn, i64 noundef %i.hp, i64 noundef %i.hr)
  %i.ht = call ptr @ggml_get_rows(ptr noundef %i.hl, ptr noundef %i.hs, ptr noundef %i.hk) ; 4 uses
  %i.hu = load ptr, ptr %i.hg, align 8, !tbaa !459 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !44
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !44
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !44
  %i.ib = call ptr @ggml_reshape_3d(ptr noundef %i.hu, ptr noundef %i.ht, i64 noundef %i.hw, i64 noundef %i.hy, i64 noundef %i.ia)
  %i.ic = call ptr @ggml_sum_rows(ptr noundef %i.hu, ptr noundef %i.ib) ; 3 uses
  %i.id = load ptr, ptr %i.hg, align 8, !tbaa !459
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !44
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !44
  %i.ii = call ptr @ggml_reshape_2d(ptr noundef %i.id, ptr noundef %i.ic, i64 noundef %i.if, i64 noundef %i.ih)
  %i.ij = load ptr, ptr %i.hg, align 8, !tbaa !459
  %i.ik = load ptr, ptr %i.gy, align 8, !tbaa !447, !nonnull !133, !align !167
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 10364
  %i.im = load i32, ptr %i.il, align 4, !tbaa !729
  %i.in = call ptr @ggml_argsort_top_k(ptr noundef %i.ij, ptr noundef %i.ii, i32 noundef %i.im) ; 3 uses
  %i.io = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !424
  %.not.i.i.not.i388 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.not.i388, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit390, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i389

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i389: ; preds = %bb.m
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store ptr %i.in, ptr %i.dn, align 8, !tbaa !413
  store ptr @.str.79, ptr %i.do, align 8, !tbaa !462
  store i32 %17, ptr %i.dp, align 4, !tbaa !106
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !463
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(32) %i.io, ptr noundef nonnull align 8 dereferenceable(104) %i.is, ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull align 4 dereferenceable(4) %i.dp), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit390

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit390: ; preds = %bb.m, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i389
  %i.iv = load ptr, ptr %i.hg, align 8, !tbaa !459
  %i.iw = call ptr @ggml_get_rows(ptr noundef %i.iv, ptr noundef nonnull %i.hi, ptr noundef %i.in)
  %i.ix = load ptr, ptr %i.hg, align 8, !tbaa !459 ; 2 uses
  %i.iy = call ptr @ggml_fill(ptr noundef %i.ix, ptr noundef nonnull %i.hi, float noundef -inf)
  %i.iz = call ptr @ggml_set_rows(ptr noundef %i.ix, ptr noundef %i.iy, ptr noundef %i.iw, ptr noundef %i.in)
  %i.ja = load ptr, ptr %i.hg, align 8, !tbaa !459
  %i.jb = call ptr @ggml_reshape_2d(ptr noundef %i.ja, ptr noundef %i.iz, i64 noundef %11, i64 noundef %i.ej) ; 3 uses
  %i.jc = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !424
  %.not.i.i.not.i391 = icmp eq ptr %i.je, null
  br i1 %.not.i.i.not.i391, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit393, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i392

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i392: ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit390
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  store ptr %i.jb, ptr %i.dk, align 8, !tbaa !413
  store ptr @.str.80, ptr %i.dl, align 8, !tbaa !462
  store i32 %17, ptr %i.dm, align 4, !tbaa !106
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !463
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(32) %i.jc, ptr noundef nonnull align 8 dereferenceable(104) %i.jg, ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull align 4 dereferenceable(4) %i.dm), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit393

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit393: ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i392, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit390, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit387
  %.3343 = phi ptr [ %.2342, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit387 ], [ %i.jb, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit390 ], [ %i.jb, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i392 ]
  %i.jj = icmp eq ptr %24, null
  br i1 %i.jj, label %bb.n, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit396

bb.n:                                             ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit393
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !459
  %i.jm = trunc i64 %12 to i32
  %i.jn = call ptr @ggml_argsort_top_k(ptr noundef %i.jl, ptr noundef %.3343, i32 noundef %i.jm) ; 3 uses
  %i.jo = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !424
  %.not.i.i.not.i394 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.not.i394, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit396, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i395

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i395: ; preds = %bb.n
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 152
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !413
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  store ptr %i.js, ptr %i.dh, align 8, !tbaa !413
  store ptr @.str.81, ptr %i.di, align 8, !tbaa !462
  store i32 %17, ptr %i.dj, align 4, !tbaa !106
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !463
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(32) %i.jo, ptr noundef nonnull align 8 dereferenceable(104) %i.ju, ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull align 4 dereferenceable(4) %i.dj), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit396

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit396: ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i395, %bb.n, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit393
  %.0344 = phi ptr [ %24, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit393 ], [ %i.jn, %bb.n ], [ %i.jn, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i395 ] ; 3 uses
  %i.jx = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !424
  %.not.i.i.not.i397 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.not.i397, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit399, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i398

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i398: ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit396
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  store ptr %.0344, ptr %i.de, align 8, !tbaa !413
  store ptr @.str.82, ptr %i.df, align 8, !tbaa !462
  store i32 %17, ptr %i.dg, align 4, !tbaa !106
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !463
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(32) %i.jx, ptr noundef nonnull align 8 dereferenceable(104) %i.kb, ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull align 4 dereferenceable(4) %i.dg), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit399

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit399: ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit396, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i398
  %i.ke = load i32, ptr %i.ek, align 8, !tbaa !445
  %i.kf = icmp eq i32 %i.ke, 124
  br i1 %i.kf, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit399
  %i.kg = load ptr, ptr %i.gy, align 8, !tbaa !447, !nonnull !133, !align !167
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 28
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !449
  %i.kj = zext i32 %i.ki to i64
  %.not365 = icmp eq i64 %11, %i.kj
  br i1 %.not365, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !459
  %i.km = call ptr @ggml_cast(ptr noundef %i.kl, ptr noundef nonnull %.0344, i32 noundef 0)
  %i.kn = load ptr, ptr %i.kk, align 8, !tbaa !459 ; 2 uses
  %i.ko = load ptr, ptr %i.gy, align 8, !tbaa !447, !nonnull !133, !align !167
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 10368
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !730
  %i.kr = uitofp i32 %i.kq to float
  %i.ks = fdiv float 1.000000e+00, %i.kr
  %i.kt = call ptr @ggml_scale(ptr noundef %i.kn, ptr noundef %i.km, float noundef %i.ks)
  %i.ku = call ptr @ggml_cast(ptr noundef %i.kn, ptr noundef %i.kt, i32 noundef 26)
  %i.kv = load ptr, ptr %i.kk, align 8, !tbaa !459
  %i.kw = load ptr, ptr %i.gy, align 8, !tbaa !447, !nonnull !133, !align !167
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 28
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !449
  %i.kz = zext i32 %i.ky to i64
  %i.la = call ptr @ggml_reshape_3d(ptr noundef %i.kv, ptr noundef %.0335, i64 noundef 1, i64 noundef %i.kz, i64 noundef %i.ej)
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit399
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !459
  %i.ld = call ptr @ggml_reshape_3d(ptr noundef %i.lc, ptr noundef %.0335, i64 noundef 1, i64 noundef %11, i64 noundef %i.ej)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1345 = phi ptr [ %i.ku, %bb.p ], [ %.0344, %bb.q ] ; 9 uses
  %.1336 = phi ptr [ %i.la, %bb.p ], [ %i.ld, %bb.q ]
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 39 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.lg = call ptr @ggml_get_rows(ptr noundef %i.lf, ptr noundef %.1336, ptr noundef %.1345) ; 3 uses
  %i.lh = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !424
  %.not.i.i.not.i400 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.not.i400, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit402, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i401

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i401: ; preds = %bb.r
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  store ptr %i.lg, ptr %i.db, align 8, !tbaa !413
  store ptr @.str.83, ptr %i.dc, align 8, !tbaa !462
  store i32 %17, ptr %i.dd, align 4, !tbaa !106
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !463
  call void %i.ln(ptr noundef nonnull align 8 dereferenceable(32) %i.lh, ptr noundef nonnull align 8 dereferenceable(104) %i.ll, ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull align 4 dereferenceable(4) %i.dd), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit402

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit402: ; preds = %bb.r, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i401
  %i.lo = icmp eq i32 %16, 3
  br i1 %i.lo, label %bb.s, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit405

bb.s:                                             ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit402
  %i.lp = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.lq = call ptr @ggml_reshape_2d(ptr noundef %i.lp, ptr noundef %i.lg, i64 noundef %12, i64 noundef %i.ej)
  %i.lr = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.ls = call ptr @ggml_soft_max(ptr noundef %i.lr, ptr noundef %i.lq)
  %i.lt = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.lu = call ptr @ggml_reshape_3d(ptr noundef %i.lt, ptr noundef %i.ls, i64 noundef 1, i64 noundef %12, i64 noundef %i.ej) ; 3 uses
  %i.lv = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !424
  %.not.i.i.not.i403 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.not.i403, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit405, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i404

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i404: ; preds = %bb.s
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  store ptr %i.lu, ptr %i.cy, align 8, !tbaa !413
  store ptr @.str.84, ptr %i.cz, align 8, !tbaa !462
  store i32 %17, ptr %i.da, align 4, !tbaa !106
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !463
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(32) %i.lv, ptr noundef nonnull align 8 dereferenceable(104) %i.lz, ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull align 4 dereferenceable(4) %i.da), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit405

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit405: ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i404, %bb.s, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit402
  %.0337 = phi ptr [ %i.lg, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit402 ], [ %i.lu, %bb.s ], [ %i.lu, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i404 ] ; 2 uses
  br i1 %14, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit405
  %i.mc = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.md = call ptr @ggml_reshape_2d(ptr noundef %i.mc, ptr noundef %.0337, i64 noundef %12, i64 noundef %i.ej) ; 2 uses
  %i.me = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.mf = call ptr @ggml_sum_rows(ptr noundef %i.me, ptr noundef %i.md) ; 2 uses
  %i.mg = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !424
  %.not.i.i.not.i406 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.not.i406, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit408, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i407

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i407: ; preds = %bb.t
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  store ptr %i.mf, ptr %i.cv, align 8, !tbaa !413
  store ptr @.str.85, ptr %i.cw, align 8, !tbaa !462
  store i32 %17, ptr %i.cx, align 4, !tbaa !106
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !463
  call void %i.mm(ptr noundef nonnull align 8 dereferenceable(32) %i.mg, ptr noundef nonnull align 8 dereferenceable(104) %i.mk, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull align 4 dereferenceable(4) %i.cx), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit408

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit408: ; preds = %bb.t, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i407
  %i.mn = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.mo = call ptr @ggml_clamp(ptr noundef %i.mn, ptr noundef %i.mf, float noundef f0x38800000, float noundef +inf) ; 2 uses
  %i.mp = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !424
  %.not.i.i.not.i409 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.not.i409, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit411, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i410

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i410: ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit408
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  store ptr %i.mo, ptr %i.cs, align 8, !tbaa !413
  store ptr @.str.86, ptr %i.ct, align 8, !tbaa !462
  store i32 %17, ptr %i.cu, align 4, !tbaa !106
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !463
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(32) %i.mp, ptr noundef nonnull align 8 dereferenceable(104) %i.mt, ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull align 4 dereferenceable(4) %i.cu), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit411

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit411: ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit408, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i410
  %i.mw = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.mx = call ptr @ggml_div(ptr noundef %i.mw, ptr noundef %i.md, ptr noundef %i.mo) ; 2 uses
  %i.my = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !424
  %.not.i.i.not.i412 = icmp eq ptr %i.na, null
  br i1 %.not.i.i.not.i412, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit414, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i413

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i413: ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit411
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  store ptr %i.mx, ptr %i.cp, align 8, !tbaa !413
  store ptr @.str.87, ptr %i.cq, align 8, !tbaa !462
  store i32 %17, ptr %i.cr, align 4, !tbaa !106
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !463
  call void %i.ne(ptr noundef nonnull align 8 dereferenceable(32) %i.my, ptr noundef nonnull align 8 dereferenceable(104) %i.nc, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull align 4 dereferenceable(4) %i.cr), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit414

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit414: ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit411, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i413
  %i.nf = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.ng = call ptr @ggml_reshape_3d(ptr noundef %i.nf, ptr noundef %i.mx, i64 noundef 1, i64 noundef %12, i64 noundef %i.ej)
  br label %bb.u

bb.u:                                             ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit414, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit405
  %.1338 = phi ptr [ %i.ng, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit414 ], [ %.0337, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit405 ] ; 2 uses
  %i.nh = fcmp une float %15, 0.000000e+00
  %i.ni = fcmp une float %15, 1.000000e+00
  %or.cond3 = and i1 %i.nh, %i.ni
  br i1 %or.cond3, label %bb.v, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit417

bb.v:                                             ; preds = %bb.u
  %i.nj = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.nk = call ptr @ggml_scale(ptr noundef %i.nj, ptr noundef %.1338, float noundef %15) ; 3 uses
  %i.nl = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !424
  %.not.i.i.not.i415 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.not.i415, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit417, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i416

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i416: ; preds = %bb.v
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store ptr %i.nk, ptr %i.cm, align 8, !tbaa !413
  store ptr @.str.88, ptr %i.cn, align 8, !tbaa !462
  store i32 %17, ptr %i.co, align 4, !tbaa !106
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !463
  call void %i.nr(ptr noundef nonnull align 8 dereferenceable(32) %i.nl, ptr noundef nonnull align 8 dereferenceable(104) %i.np, ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull align 4 dereferenceable(4) %i.co), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit417

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit417: ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i416, %bb.v, %bb.u
  %.2339 = phi ptr [ %.1338, %bb.u ], [ %i.nk, %bb.v ], [ %i.nk, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i416 ] ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !460
  call void @ggml_build_forward_expand(ptr noundef %i.nt, ptr noundef %.2339)
  %i.nu = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.nv = call ptr @ggml_reshape_3d(ptr noundef %i.nu, ptr noundef nonnull %1, i64 noundef %i.eh, i64 noundef 1, i64 noundef %i.ej) ; 2 uses
  br i1 %i.em, label %bb.w, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit420

bb.w:                                             ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit417
  %i.nw = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.nx = call ptr @ggml_repeat_4d(ptr noundef %i.nw, ptr noundef %i.nv, i64 noundef %i.eh, i64 noundef %12, i64 noundef %i.ej, i64 noundef 1)
  %i.ny = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.nz = call ptr @ggml_mul(ptr noundef %i.ny, ptr noundef %i.nx, ptr noundef %.2339) ; 3 uses
  %i.oa = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !424
  %.not.i.i.not.i418 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.not.i418, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit420, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i419
end_hunk_0
begin_hunk_1_@_ZNK17llm_graph_context13build_moe_ffnEP11ggml_tensorS1_S1_S1_S1_S1_S1_S1_S1_S1_ll15llm_ffn_op_typebf29llama_expert_gating_func_typeiS1_S1_S1_S1_S1_S1_S1_:bb.a
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit435

bb.aa:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit420
  %i.qq = call noundef ptr @_ZNK17llm_graph_context16build_lora_mm_idEP11ggml_tensorS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %4, ptr noundef %.0321, ptr noundef %.1345, ptr noundef %21) ; 4 uses
  %i.qr = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !424
  %.not.i.i.not.i436 = icmp eq ptr %i.qt, null
  br i1 %.not.i.i.not.i436, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit438, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i437

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i437: ; preds = %bb.aa
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store ptr %i.qq, ptr %i.br, align 8, !tbaa !413
  store ptr @.str.94, ptr %i.bs, align 8, !tbaa !462
  store i32 %17, ptr %i.bt, align 4, !tbaa !106
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !463
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(32) %i.qr, ptr noundef nonnull align 8 dereferenceable(104) %i.qv, ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull align 4 dereferenceable(4) %i.bt), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit438

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit438: ; preds = %bb.aa, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i437
  %.not366 = icmp eq ptr %21, null
  br i1 %.not366, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit441, label %bb.ab

bb.ab:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit438
  %i.qy = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !424
  %.not.i.i.not.i439 = icmp eq ptr %i.ra, null
  br i1 %.not.i.i.not.i439, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit441, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i440

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i440: ; preds = %bb.ab
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store ptr %i.qq, ptr %i.bo, align 8, !tbaa !413
  store ptr @.str.95, ptr %i.bp, align 8, !tbaa !462
  store i32 %17, ptr %i.bq, align 4, !tbaa !106
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !463
  call void %i.re(ptr noundef nonnull align 8 dereferenceable(32) %i.qy, ptr noundef nonnull align 8 dereferenceable(104) %i.rc, ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.bq), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit441

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit441: ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i440, %bb.ab, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit438
  %.not367 = icmp eq ptr %5, null
  br i1 %.not367, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit444, label %bb.ac

bb.ac:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit441
  %i.rf = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.rg = call ptr @ggml_add_id(ptr noundef %i.rf, ptr noundef %i.qq, ptr noundef nonnull %5, ptr noundef %.1345) ; 3 uses
  %i.rh = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !424
  %.not.i.i.not.i442 = icmp eq ptr %i.rj, null
  br i1 %.not.i.i.not.i442, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit444, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i443

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i443: ; preds = %bb.ac
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store ptr %i.rg, ptr %i.bl, align 8, !tbaa !413
  store ptr @.str.96, ptr %i.bm, align 8, !tbaa !462
  store i32 %17, ptr %i.bn, align 4, !tbaa !106
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !463
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(32) %i.rh, ptr noundef nonnull align 8 dereferenceable(104) %i.rl, ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bn), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit444

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit444: ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i443, %bb.ac, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit441
  %.0327 = phi ptr [ %i.qq, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit441 ], [ %i.rg, %bb.ac ], [ %i.rg, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i443 ] ; 4 uses
  %.not368 = icmp eq ptr %6, null
  br i1 %.not368, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit447, label %bb.ad

bb.ad:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit444
  %i.ro = call noundef ptr @_ZNK17llm_graph_context16build_lora_mm_idEP11ggml_tensorS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %6, ptr noundef %.0321, ptr noundef %.1345, ptr noundef %22) ; 3 uses
  %i.rp = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !424
  %.not.i.i.not.i445 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i.not.i445, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit447, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i446

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i446: ; preds = %bb.ad
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store ptr %i.ro, ptr %i.bi, align 8, !tbaa !413
  store ptr @.str.93, ptr %i.bj, align 8, !tbaa !462
  store i32 %17, ptr %i.bk, align 4, !tbaa !106
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !463
  call void %i.rv(ptr noundef nonnull align 8 dereferenceable(32) %i.rp, ptr noundef nonnull align 8 dereferenceable(104) %i.rt, ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %i.bk), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit447

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit447: ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i446, %bb.ad, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit444
  %.1322 = phi ptr [ %.0327, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit444 ], [ %i.ro, %bb.ad ], [ %i.ro, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i446 ] ; 3 uses
  %.not369 = icmp eq ptr %22, null
  br i1 %.not369, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit450, label %bb.ae

bb.ae:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit447
  %i.rw = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !424
  %.not.i.i.not.i448 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i.not.i448, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit450, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i449

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i449: ; preds = %bb.ae
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr %.1322, ptr %i.bf, align 8, !tbaa !413
  store ptr @.str.97, ptr %i.bg, align 8, !tbaa !462
  store i32 %17, ptr %i.bh, align 4, !tbaa !106
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !463
  call void %i.sc(ptr noundef nonnull align 8 dereferenceable(32) %i.rw, ptr noundef nonnull align 8 dereferenceable(104) %i.sa, ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.bh), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit450

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit450: ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i449, %bb.ae, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit447
  %.not370 = icmp eq ptr %7, null
  br i1 %.not370, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit435, label %bb.af

bb.af:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit450
  %i.sd = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.se = call ptr @ggml_add_id(ptr noundef %i.sd, ptr noundef %.1322, ptr noundef nonnull %7, ptr noundef %.1345) ; 3 uses
  %i.sf = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !424
  %.not.i.i.not.i451 = icmp eq ptr %i.sh, null
  br i1 %.not.i.i.not.i451, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit435, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i452

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i452: ; preds = %bb.af
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr %i.se, ptr %i.bc, align 8, !tbaa !413
  store ptr @.str.98, ptr %i.bd, align 8, !tbaa !462
  store i32 %17, ptr %i.be, align 4, !tbaa !106
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sf, i64 24
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !463
  call void %i.sl(ptr noundef nonnull align 8 dereferenceable(32) %i.sf, ptr noundef nonnull align 8 dereferenceable(104) %i.sj, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit435

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit435: ; preds = %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i452, %bb.af, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i434, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit432, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit450
  %.1328 = phi ptr [ %.0327, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit450 ], [ %i.qi, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i434 ], [ %i.qi, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit432 ], [ %.0327, %bb.af ], [ %.0327, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i452 ] ; 8 uses
  %.2 = phi ptr [ %.1322, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit450 ], [ %i.pt, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i434 ], [ %i.pt, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit432 ], [ %i.se, %bb.af ], [ %i.se, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i452 ] ; 12 uses
  %i.sm = icmp ne ptr %6, null                    ; 2 uses
  %i.sn = or i1 %i.sm, %i.oh                      ; 5 uses
  switch i32 %13, label %bb.be [
    i32 1, label %bb.ag
    i32 9, label %bb.ap
    i32 2, label %bb.au
    i32 8, label %bb.ax
    i32 3, label %bb.ay
    i32 4, label %bb.bb
  ]

bb.ag:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit435
  %i.so = icmp sgt i32 %17, -1
  %or.cond5 = and i1 %i.sm, %i.so
  br i1 %or.cond5, label %bb.ah, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit465

bb.ah:                                            ; preds = %bb.ag
  %i.sp = load ptr, ptr %i.gy, align 8, !tbaa !447, !nonnull !133, !align !167 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 31960
  %i.sr = zext nneg i32 %17 to i64
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.sr
  %i.st = load float, ptr %i.ss, align 4, !tbaa !113 ; 5 uses
  %i.su = fcmp ogt float %i.st, f0x358637BD
  br i1 %i.su, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.sv = load i32, ptr %i.ek, align 8, !tbaa !445
  switch i32 %i.sv, label %bb.al [
    i32 73, label %bb.ak
    i32 143, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sp, i64 27140
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !490
  %.not373 = icmp eq i32 %i.sx, 0
  br i1 %.not373, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.sy = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.sz = call ptr @ggml_swiglu_clamp(ptr noundef %i.sy, ptr noundef %.2, ptr noundef %.1328, float noundef %i.st)
  br label %bb.am

bb.al:                                            ; preds = %bb.ai, %bb.aj
  %i.ta = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.tb = fneg float %i.st
  %i.tc = call ptr @ggml_clamp(ptr noundef %i.ta, ptr noundef %.1328, float noundef %i.tb, float noundef %i.st) ; 2 uses
  %i.td = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !424
  %.not.i.i.not.i454 = icmp eq ptr %i.tf, null
  br i1 %.not.i.i.not.i454, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit456, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i455

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i455: ; preds = %bb.al
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store ptr %i.tc, ptr %i.az, align 8, !tbaa !413
  store ptr @.str.99, ptr %i.ba, align 8, !tbaa !462
  store i32 %17, ptr %i.bb, align 4, !tbaa !106
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !463
  call void %i.tj(ptr noundef nonnull align 8 dereferenceable(32) %i.td, ptr noundef nonnull align 8 dereferenceable(104) %i.th, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 4 dereferenceable(4) %i.bb), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit456

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit456: ; preds = %bb.al, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i455
  %i.tk = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.tl = call ptr @ggml_silu(ptr noundef %i.tk, ptr noundef %.2) ; 2 uses
  %i.tm = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !424
  %.not.i.i.not.i457 = icmp eq ptr %i.to, null
  br i1 %.not.i.i.not.i457, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit459, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i458

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i458: ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit456
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %i.tl, ptr %i.aw, align 8, !tbaa !413
  store ptr @.str.100, ptr %i.ax, align 8, !tbaa !462
  store i32 %17, ptr %i.ay, align 4, !tbaa !106
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !463
  call void %i.ts(ptr noundef nonnull align 8 dereferenceable(32) %i.tm, ptr noundef nonnull align 8 dereferenceable(104) %i.tq, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.ay), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit459

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit459: ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit456, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i458
  %i.tt = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.tu = call ptr @ggml_clamp(ptr noundef %i.tt, ptr noundef %i.tl, float noundef -inf, float noundef %i.st) ; 2 uses
  %i.tv = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !424
  %.not.i.i.not.i460 = icmp eq ptr %i.tx, null
  br i1 %.not.i.i.not.i460, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit462, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i461

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i461: ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit459
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr %i.tu, ptr %i.at, align 8, !tbaa !413
  store ptr @.str.101, ptr %i.au, align 8, !tbaa !462
  store i32 %17, ptr %i.av, align 4, !tbaa !106
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tv, i64 24
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !463
  call void %i.ub(ptr noundef nonnull align 8 dereferenceable(32) %i.tv, ptr noundef nonnull align 8 dereferenceable(104) %i.tz, ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.av), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit462

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit462: ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit459, %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i461
  %i.uc = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.ud = call ptr @ggml_mul(ptr noundef %i.uc, ptr noundef %i.tu, ptr noundef %i.tc)
  br label %bb.am

bb.am:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit462, %bb.ak
  %.3 = phi ptr [ %i.sz, %bb.ak ], [ %i.ud, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit462 ] ; 3 uses
  %i.ue = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !424
  %.not.i.i.not.i463 = icmp eq ptr %i.ug, null
  br i1 %.not.i.i.not.i463, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i464

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i464: ; preds = %bb.am
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %.3, ptr %i.aq, align 8, !tbaa !413
  store ptr @.str.102, ptr %i.ar, align 8, !tbaa !462
  store i32 %17, ptr %i.as, align 4, !tbaa !106
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !463
  call void %i.uk(ptr noundef nonnull align 8 dereferenceable(32) %i.ue, ptr noundef nonnull align 8 dereferenceable(104) %i.ui, ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468

_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit465: ; preds = %bb.ag
  br i1 %i.sn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.ah, %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit465
  %25 = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.ul = call ptr @ggml_swiglu_split(ptr noundef %25, ptr noundef %.2, ptr noundef %.1328) ; 3 uses
  %i.um = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !424
  %.not.i.i.not.i466 = icmp eq ptr %i.uo, null
  br i1 %.not.i.i.not.i466, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i467

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i467: ; preds = %bb.an
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %i.ul, ptr %i.an, align 8, !tbaa !413
  store ptr @.str.103, ptr %i.ao, align 8, !tbaa !462
  store i32 %17, ptr %i.ap, align 4, !tbaa !106
  %i.ur = getelementptr inbounds nuw i8, ptr %i.um, i64 24
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !463
  call void %i.us(ptr noundef nonnull align 8 dereferenceable(32) %i.um, ptr noundef nonnull align 8 dereferenceable(104) %i.uq, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468

bb.ao:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit465
  %26 = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.ut = call ptr @ggml_silu(ptr noundef %26, ptr noundef %.2) ; 3 uses
  %i.uu = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !424
  %.not.i.i.not.i469 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i.not.i469, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i470

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i470: ; preds = %bb.ao
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.ut, ptr %i.ak, align 8, !tbaa !413
  store ptr @.str.100, ptr %i.al, align 8, !tbaa !462
  store i32 %17, ptr %i.am, align 4, !tbaa !106
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !463
  call void %i.va(ptr noundef nonnull align 8 dereferenceable(32) %i.uu, ptr noundef nonnull align 8 dereferenceable(104) %i.uy, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.am), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468

bb.ap:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit435
  br i1 %i.sn, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2200, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.104) #27
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.vb = load ptr, ptr %i.gy, align 8, !tbaa !447, !nonnull !133, !align !167 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16732
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !731 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 16736
  %i.vf = load float, ptr %i.ve, align 8, !tbaa !393 ; 3 uses
  %i.vg = load ptr, ptr %i.le, align 8, !tbaa !459 ; 3 uses
  %i.vh = fdiv float 1.000000e+00, %i.vd
  %i.vi = call ptr @ggml_scale(ptr noundef %i.vg, ptr noundef %.2, float noundef %i.vh)
  %i.vj = call ptr @ggml_tanh(ptr noundef %i.vg, ptr noundef %i.vi)
  %i.vk = call ptr @ggml_scale(ptr noundef %i.vg, ptr noundef %i.vj, float noundef %i.vd)
  %i.vl = load ptr, ptr %i.le, align 8, !tbaa !459 ; 2 uses
  %i.vm = call ptr @ggml_sigmoid(ptr noundef %i.vl, ptr noundef %.2)
  %i.vn = call ptr @ggml_mul(ptr noundef %i.vl, ptr noundef %i.vk, ptr noundef %i.vm)
  %i.vo = fcmp ogt float %i.vf, 0.000000e+00
  br i1 %i.vo, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.vp = load ptr, ptr %i.le, align 8, !tbaa !459 ; 3 uses
  %i.vq = fdiv float 1.000000e+00, %i.vf
  %i.vr = call ptr @ggml_scale(ptr noundef %i.vp, ptr noundef %.1328, float noundef %i.vq)
  %i.vs = call ptr @ggml_tanh(ptr noundef %i.vp, ptr noundef %i.vr)
  %i.vt = call ptr @ggml_scale(ptr noundef %i.vp, ptr noundef %i.vs, float noundef %i.vf)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.5332 = phi ptr [ %i.vt, %bb.as ], [ %.1328, %bb.ar ]
  %i.vu = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.vv = call ptr @ggml_mul(ptr noundef %i.vu, ptr noundef %i.vn, ptr noundef %.5332) ; 3 uses
  %i.vw = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !424
  %.not.i.i.not.i472 = icmp eq ptr %i.vy, null
  br i1 %.not.i.i.not.i472, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i473

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i473: ; preds = %bb.at
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.vv, ptr %i.ah, align 8, !tbaa !413
  store ptr @.str.105, ptr %i.ai, align 8, !tbaa !462
  store i32 %17, ptr %i.aj, align 4, !tbaa !106
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vw, i64 24
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !463
  call void %i.wc(ptr noundef nonnull align 8 dereferenceable(32) %i.vw, ptr noundef nonnull align 8 dereferenceable(104) %i.wa, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.aj), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468

bb.au:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit435
  %i.wd = load ptr, ptr %i.le, align 8, !tbaa !459 ; 2 uses
  br i1 %i.sn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.we = call ptr @ggml_geglu_split(ptr noundef %i.wd, ptr noundef %.2, ptr noundef %.1328) ; 3 uses
  %i.wf = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !424
  %.not.i.i.not.i475 = icmp eq ptr %i.wh, null
  br i1 %.not.i.i.not.i475, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i476

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i476: ; preds = %bb.av
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.we, ptr %i.ae, align 8, !tbaa !413
  store ptr @.str.106, ptr %i.af, align 8, !tbaa !462
  store i32 %17, ptr %i.ag, align 4, !tbaa !106
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wf, i64 24
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !463
  call void %i.wl(ptr noundef nonnull align 8 dereferenceable(32) %i.wf, ptr noundef nonnull align 8 dereferenceable(104) %i.wj, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 4 dereferenceable(4) %i.ag), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468

bb.aw:                                            ; preds = %bb.au
  %i.wm = call ptr @ggml_gelu(ptr noundef %i.wd, ptr noundef %.2) ; 3 uses
  %i.wn = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !424
  %.not.i.i.not.i478 = icmp eq ptr %i.wp, null
  br i1 %.not.i.i.not.i478, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i479

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i479: ; preds = %bb.aw
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.wm, ptr %i.ab, align 8, !tbaa !413
  store ptr @.str.107, ptr %i.ac, align 8, !tbaa !462
  store i32 %17, ptr %i.ad, align 4, !tbaa !106
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wn, i64 24
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !463
  call void %i.wt(ptr noundef nonnull align 8 dereferenceable(32) %i.wn, ptr noundef nonnull align 8 dereferenceable(104) %i.wr, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.ad), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468

bb.ax:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit435
  %i.wu = load ptr, ptr %i.le, align 8, !tbaa !459
  %i.wv = call ptr @ggml_swiglu_oai(ptr noundef %i.wu, ptr noundef %.2, ptr noundef %.1328, float noundef 1.702000e+00, float noundef 7.000000e+00) ; 3 uses
  %i.ww = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !424
  %.not.i.i.not.i481 = icmp eq ptr %i.wy, null
  br i1 %.not.i.i.not.i481, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i482

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i482: ; preds = %bb.ax
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.wv, ptr %i.y, align 8, !tbaa !413
  store ptr @.str.108, ptr %i.z, align 8, !tbaa !462
  store i32 %17, ptr %i.aa, align 4, !tbaa !106
  %i.xb = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !463
  call void %i.xc(ptr noundef nonnull align 8 dereferenceable(32) %i.ww, ptr noundef nonnull align 8 dereferenceable(104) %i.xa, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468

bb.ay:                                            ; preds = %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit435
  %i.xd = load ptr, ptr %i.le, align 8, !tbaa !459 ; 2 uses
  br i1 %i.sn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.xe = call ptr @ggml_reglu_split(ptr noundef %i.xd, ptr noundef %.2, ptr noundef %.1328) ; 3 uses
  %i.xf = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !424
  %.not.i.i.not.i484 = icmp eq ptr %i.xh, null
  br i1 %.not.i.i.not.i484, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i485

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i485: ; preds = %bb.az
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !450, !nonnull !133, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.xe, ptr %i.v, align 8, !tbaa !413
  store ptr @.str.109, ptr %i.w, align 8, !tbaa !462
  store i32 %17, ptr %i.x, align 4, !tbaa !106
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xf, i64 24
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !463
  call void %i.xl(ptr noundef nonnull align 8 dereferenceable(32) %i.xf, ptr noundef nonnull align 8 dereferenceable(104) %i.xj, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468

bb.ba:                                            ; preds = %bb.ay
  %i.xm = call ptr @ggml_relu(ptr noundef %i.xd, ptr noundef %.2) ; 3 uses
  %i.xn = load ptr, ptr %i.ft, align 8, !tbaa !461, !nonnull !133, !align !167 ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !424
  %.not.i.i.not.i487 = icmp eq ptr %i.xp, null
  br i1 %.not.i.i.not.i487, label %_ZNK17llm_graph_context2cbEP11ggml_tensorPKci.exit468, label %_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i488

_ZNKSt8functionIFvRK12llama_ubatchP11ggml_tensorPKciEEclES2_S4_S6_i.exit.i488: ; preds = %bb.ba
end_hunk_1
