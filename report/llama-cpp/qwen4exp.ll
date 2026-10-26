Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/qwen4exp?download=true
inline.NumInlined: 828
inline.NumDeleted: 450
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN20llama_model_qwen4exp17load_arch_tensorsER18llama_model_loader:bb.a
  %i.al = alloca [2 x i64], align 8               ; 5 uses
  %81 = alloca %struct.LLM_TN_IMPL, align 8       ; 4 uses
  %82 = alloca %"class.std::initializer_list", align 8 ; 5 uses
  %i.am = alloca [3 x i64], align 8               ; 6 uses
  %83 = alloca %struct.LLM_TN_IMPL, align 8       ; 4 uses
  %84 = alloca %"class.std::initializer_list", align 8 ; 5 uses
  %i.an = alloca [1 x i64], align 8               ; 4 uses
  %85 = alloca %struct.LLM_TN_IMPL, align 8       ; 4 uses
  %86 = alloca %"class.std::initializer_list", align 8 ; 5 uses
  %i.ao = alloca [2 x i64], align 8               ; 5 uses
  %87 = alloca %struct.LLM_TN_IMPL, align 8       ; 4 uses
  %88 = alloca %"class.std::initializer_list", align 8 ; 5 uses
  %i.ap = alloca [2 x i64], align 8               ; 5 uses
  %89 = alloca %struct.LLM_TN_IMPL, align 8       ; 4 uses
  %90 = alloca %"class.std::initializer_list", align 8 ; 5 uses
  %i.aq = alloca [2 x i64], align 8               ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %i.as = tail call noundef i32 @_ZNK13llama_hparams7n_layerEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.ar) ; 2 uses
  %i.at = tail call noundef i32 @_ZNK13llama_hparams6n_headEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.ar, i32 noundef 0)
  %i.au = zext i32 %i.at to i64
  %i.av = tail call noundef i32 @_ZNK13llama_hparams9n_head_kvEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.ar, i32 noundef 0) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !106
  %i.ay = zext i32 %i.ax to i64                   ; 23 uses
  %i.az = tail call noundef i32 @_ZNK13llama_hparams12n_embd_k_gqaEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.ar, i32 noundef 0)
  %i.ba = zext i32 %i.az to i64
  %i.bb = tail call noundef i32 @_ZNK13llama_hparams12n_embd_v_gqaEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.ar, i32 noundef 0)
  %i.bc = zext i32 %i.bb to i64
  %i.bd = tail call noundef i32 @_ZNK13llama_hparams13n_embd_head_kEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.ar, i32 noundef 0)
  %i.be = zext i32 %i.bd to i64                   ; 3 uses
  %i.bf = tail call noundef i32 @_ZNK13llama_hparams13n_embd_head_vEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.ar, i32 noundef 0) ; 0 uses
  %i.bg = tail call noundef i32 @_ZNK13llama_hparams4n_ffEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.ar, i32 noundef 0) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36104 ; 2 uses
  %i.bi = tail call noundef i32 @_ZNK11llama_vocab8n_tokensEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  %i.bk = tail call noundef i32 @_ZNK11llama_vocab13n_token_typesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) ; 0 uses
  %i.bl = tail call noundef i32 @_ZNK13llama_hparams5n_rotEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.ar, i32 noundef 0) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !408
  %i.bo = zext i32 %i.bn to i64                   ; 3 uses
  %i.bp = tail call noundef i32 @_ZNK13llama_hparams13n_expert_usedEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.ar, i32 noundef 0)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 27188
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !101
  %i.bs = zext i32 %i.br to i64                   ; 3 uses
  %i.bt = mul nuw nsw i64 %i.bs, %i.ay            ; 16 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 29256
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !105
  %i.bw = zext i32 %i.bv to i64                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 36856 ; 44 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !410, !noalias !411
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.by, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef -1, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !111
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bj, ptr %i.bz, align 8, !tbaa !111
  store ptr %i.a, ptr %3, align 8, !tbaa !413
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.ca, align 8, !tbaa !414
  %i.cb = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 36136
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.cd = load i32, ptr %i.bx, align 8, !tbaa !410, !noalias !415
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.cd, i32 noundef 155, ptr noundef nonnull @.str.7, i32 noundef -1, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.bt, ptr %i.b, align 8, !tbaa !111
  store ptr %i.b, ptr %5, align 8, !tbaa !413
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.ce, align 8, !tbaa !414
  %i.cf = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 36360
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ch = load i32, ptr %i.bx, align 8, !tbaa !410, !noalias !416
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.ch, i32 noundef 156, ptr noundef nonnull @.str.7, i32 noundef -1, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 %i.bt, ptr %i.c, align 8, !tbaa !111
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bw, ptr %i.ci, align 8, !tbaa !111
  store ptr %i.c, ptr %7, align 8, !tbaa !413
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.cj, align 8, !tbaa !414
  %i.ck = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 36368
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.cm = load i32, ptr %i.bx, align 8, !tbaa !410, !noalias !417
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef %i.cm, i32 noundef 157, ptr noundef nonnull @.str.7, i32 noundef -1, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i64 %i.bw, ptr %i.d, align 8, !tbaa !111
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.bt, ptr %i.cn, align 8, !tbaa !111
  store ptr %i.d, ptr %9, align 8, !tbaa !413
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 2, ptr %i.co, align 8, !tbaa !414
  %i.cp = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 0)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 36376
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.cr = load i32, ptr %i.bx, align 8, !tbaa !410, !noalias !418
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %i.cr, i32 noundef 6, ptr noundef nonnull @.str.7, i32 noundef -1, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i64 %i.ay, ptr %i.e, align 8, !tbaa !111
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bj, ptr %i.cs, align 8, !tbaa !111
  store ptr %i.e, ptr %11, align 8, !tbaa !413
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 2, ptr %i.ct, align 8, !tbaa !414
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 36864
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !421
  %i.cw = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %i.cv) ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 36200 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.cy = icmp eq ptr %i.cw, null
  br i1 %i.cy, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.cz = load i32, ptr %i.bx, align 8, !tbaa !410, !noalias !422
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %i.cz, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef -1, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i64 %i.ay, ptr %i.f, align 8, !tbaa !111
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.bj, ptr %i.da, align 8, !tbaa !111
  store ptr %i.f, ptr %13, align 8, !tbaa !413
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 2, ptr %i.db, align 8, !tbaa !414
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 36860
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !423
  %i.de = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %i.dd)
  store ptr %i.de, ptr %i.cx, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 29272
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !109 ; 3 uses
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 29416 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 29672 ; 2 uses
  %wide.trip.count = zext i32 %i.dg to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.dg, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dt, %vector.body ]
  %vec.phi238 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.du, %vector.body ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %wide.load = load <2 x i32>, ptr %i.dj, align 8, !tbaa !110
  %wide.load239 = load <2 x i32>, ptr %i.dk, align 8, !tbaa !110
  %i.dl = zext <2 x i32> %wide.load to <2 x i64>
  %i.dm = zext <2 x i32> %wide.load239 to <2 x i64>
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %wide.load240 = load <2 x i32>, ptr %i.dn, align 8, !tbaa !110
  %wide.load241 = load <2 x i32>, ptr %i.do, align 8, !tbaa !110
  %i.dp = zext <2 x i32> %wide.load240 to <2 x i64>
  %i.dq = zext <2 x i32> %wide.load241 to <2 x i64>
  %i.dr = add nuw nsw <2 x i64> %i.dp, %i.dl
  %i.ds = add nuw nsw <2 x i64> %i.dq, %i.dm
  %i.dt = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %vec.phi, <2 x i64> %i.dr) ; 2 uses
  %i.du = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %vec.phi238, <2 x i64> %i.ds) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.dt, <2 x i64> %i.du)
  %i.dw = call i64 @llvm.vector.reduce.smax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  %.0215220.ph = phi i64 [ 0, %.preheader ], [ %i.dw, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.sroa.speculated.lcssa = phi i64 [ %i.dw, %middle.block ], [ %.sroa.speculated, %scalar.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.dx = load i32, ptr %i.bx, align 8, !tbaa !410, !noalias !424
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef %i.dx, i32 noundef 59, ptr noundef nonnull @.str.7, i32 noundef -1, i32 noundef -1)
  call void @_ZNK11LLM_TN_IMPL3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.dy = load ptr, ptr %14, align 8, !tbaa !102
  %i.dz = invoke noundef ptr @_ZNK18llama_model_loader10get_weightEPKc(ptr noundef nonnull align 8 dereferenceable(592) %1, ptr noundef %i.dy)
          to label %bb.d unwind label %bb.i       ; 2 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.0215220 = phi i64 [ %.sroa.speculated, %scalar.ph ], [ %.0215220.ph, %scalar.ph.preheader ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !110
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !110
  %i.ef = zext i32 %i.ee to i64
  %i.eg = add nuw nsw i64 %i.ef, %i.ec
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %.0215220, i64 %i.eg) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !332

bb.d:                                             ; preds = %.loopexit
  %.not194 = icmp eq ptr %i.dz, null
  br i1 %.not194, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !427
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !111 ; 2 uses
  %i.el = icmp slt i64 %i.ek, %.sroa.speculated.lcssa
  br i1 %i.el, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.em = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.en = load ptr, ptr %14, align 8, !tbaa !102
  %i.eo = load ptr, ptr %i.eh, align 8, !tbaa !427
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !111
  invoke void (ptr, ptr, ...) @_Z6formatB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull @.str.8, ptr noundef %i.en, i64 noundef %i.eq, i64 noundef %.sroa.speculated.lcssa)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.em, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
          to label %bb.ab unwind label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %.0183 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eu = load ptr, ptr %16, align 8, !tbaa !102  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !103
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br i1 %.0183, label %bb.k, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br i1 %.0183, label %bb.k, label %bb.q

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn199219 = phi { ptr, i32 } [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.em) #18
  br label %bb.q

bb.l:                                             ; preds = %bb.e, %bb.d
  %.1216 = phi i64 [ %.sroa.speculated.lcssa, %bb.d ], [ %i.ek, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.ez = load i32, ptr %i.bx, align 8, !tbaa !410, !noalias !428
  invoke void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef %i.ez, i32 noundef 59, ptr noundef nonnull @.str.7, i32 noundef -1, i32 noundef -1)
          to label %_ZNK6LLM_TNclE10llm_tensorPKcii.exit unwind label %bb.n

_ZNK6LLM_TNclE10llm_tensorPKcii.exit:             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 29276
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !113
  %i.fc = zext i32 %i.fb to i64
  store i64 %i.fc, ptr %i.g, align 8, !tbaa !111
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.1216, ptr %i.fd, align 8, !tbaa !111
  store ptr %i.g, ptr %18, align 8, !tbaa !413
  %i.fe = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 2, ptr %i.fe, align 8, !tbaa !414
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 36880
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !429
  %i.fh = invoke noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %i.fg)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZNK6LLM_TNclE10llm_tensorPKcii.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 36352
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.fj = load ptr, ptr %14, align 8, !tbaa !102  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.m
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !103
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNK6LLM_TNclE10llm_tensorPKcii.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.fp, %bb.o ], [ %i.fo, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %.pn199.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %.pn199219, %bb.k ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.er, %bb.i ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.fq = load ptr, ptr %14, align 8, !tbaa !102  ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.q
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !103
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  resume { ptr, i32 } %.pn199.pn.pn

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %bb.c
  %i.fv = icmp sgt i32 %i.as, 0
  br i1 %i.fv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.r
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 36512
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 10392
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16744
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16752
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16748 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_:bb.a
bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !202  ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !283 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !616

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !206
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #23 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8, !tbaa !202
  %.pre82 = load ptr, ptr %2, align 8, !tbaa !202
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi ptr [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi ptr [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult ptr %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8, !tbaa !202    ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !202  ; 2 uses
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !283 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !202
  %i.ag = icmp ult ptr %i.af, %i.w
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !300
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !283 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !202 ; 2 uses
  %i.an = icmp ult ptr %i.w, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !283 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !616

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #23 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 8, !tbaa !202
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi ptr [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult ptr %i.aq, %i.w                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult ptr %i.y, %i.w
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !283 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !202
  %i.az = icmp ult ptr %i.w, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !300
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !283 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !202 ; 2 uses
  %i.bg = icmp ult ptr %i.w, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !283 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !616

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !206
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !202
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi ptr [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult ptr %i.bl, %i.w                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

_ZNSt8_Rb_treeIP11ggml_tensorSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smax.v2i64(<2 x i64>, <2 x i64>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.smax.v2i64(<2 x i64>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v2i64(<2 x i64>) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_ZTS8llm_type", !6, i64 0}
!11 = !{!"_ZTS8llm_arch", !6, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !15, i64 8, !6, i64 16}
!17 = !{!"bool", !6, i64 0}
!18 = !{!"_ZTS20llama_hparams_posnet", !7, i64 0, !7, i64 4}
!19 = !{!"_ZTS22llama_hparams_convnext", !7, i64 0, !7, i64 4}
!20 = !{!"_ZTSSt5arrayIjLm512EE", !6, i64 0}
!21 = !{!"float", !6, i64 0}
!22 = !{!"_ZTSSt5arrayIiLm4EE", !6, i64 0}
!23 = !{!"_ZTS14llama_swa_type", !6, i64 0}
!24 = !{!"_ZTS21llama_non_causal_type", !6, i64 0}
!25 = !{!"_ZTSSt5arrayIfLm512EE", !6, i64 0}
!26 = !{!"_ZTSSt12_Base_bitsetILm8EE", !6, i64 0}
!27 = !{!"_ZTSSt6bitsetILm512EE", !26, i64 0}
!28 = !{!"_ZTSSt5arrayImLm8EE", !6, i64 0}
!29 = !{!"_ZTSSt5arrayIjLm64EE", !6, i64 0}
!30 = !{!"_ZTSSt5arrayIiLm512EE", !6, i64 0}
!31 = !{!"_ZTS18llama_pooling_type", !6, i64 0}
!32 = !{!"_ZTS15llama_rope_type", !6, i64 0}
!33 = !{!"_ZTS23llama_rope_scaling_type", !6, i64 0}
!34 = !{!"_ZTS15llm_ffn_op_type", !6, i64 0}
!35 = !{!"_ZTS13llama_hparams", !17, i64 0, !17, i64 1, !17, i64 2, !17, i64 3, !17, i64 4, !17, i64 5, !17, i64 6, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !18, i64 72, !19, i64 80, !7, i64 88, !20, i64 92, !20, i64 2140, !20, i64 4188, !20, i64 6236, !20, i64 8284, !7, i64 10332, !7, i64 10336, !7, i64 10340, !7, i64 10344, !7, i64 10348, !7, i64 10352, !7, i64 10356, !7, i64 10360, !7, i64 10364, !7, i64 10368, !7, i64 10372, !7, i64 10376, !7, i64 10380, !21, i64 10384, !21, i64 10388, !17, i64 10392, !7, i64 10396, !7, i64 10400, !7, i64 10404, !21, i64 10408, !21, i64 10412, !21, i64 10416, !21, i64 10420, !21, i64 10424, !21, i64 10428, !7, i64 10432, !7, i64 10436, !7, i64 10440, !7, i64 10444, !7, i64 10448, !7, i64 10452, !7, i64 10456, !7, i64 10460, !7, i64 10464, !21, i64 10468, !21, i64 10472, !21, i64 10476, !21, i64 10480, !21, i64 10484, !21, i64 10488, !7, i64 10492, !21, i64 10496, !21, i64 10500, !21, i64 10504, !21, i64 10508, !21, i64 10512, !22, i64 10516, !20, i64 10532, !23, i64 12580, !7, i64 12584, !24, i64 12588, !20, i64 12592, !20, i64 14640, !7, i64 16688, !7, i64 16692, !7, i64 16696, !7, i64 16700, !7, i64 16704, !7, i64 16708, !7, i64 16712, !17, i64 16716, !7, i64 16720, !7, i64 16724, !21, i64 16728, !21, i64 16732, !21, i64 16736, !17, i64 16740, !21, i64 16744, !21, i64 16748, !21, i64 16752, !21, i64 16756, !21, i64 16760, !21, i64 16764, !21, i64 16768, !7, i64 16772, !21, i64 16776, !17, i64 16780, !17, i64 16781, !17, i64 16782, !17, i64 16783, !7, i64 16784, !7, i64 16788, !7, i64 16792, !7, i64 16796, !7, i64 16800, !7, i64 16804, !7, i64 16808, !7, i64 16812, !7, i64 16816, !7, i64 16820, !7, i64 16824, !7, i64 16828, !21, i64 16832, !21, i64 16836, !7, i64 16840, !7, i64 16844, !7, i64 16848, !7, i64 16852, !7, i64 16856, !7, i64 16860, !7, i64 16864, !7, i64 16868, !25, i64 16872, !25, i64 18920, !25, i64 20968, !25, i64 23016, !7, i64 25064, !7, i64 25068, !7, i64 25072, !7, i64 25076, !7, i64 25080, !20, i64 25084, !7, i64 27132, !7, i64 27136, !7, i64 27140, !7, i64 27144, !7, i64 27148, !21, i64 27152, !21, i64 27156, !20, i64 27160, !7, i64 29208, !7, i64 29212, !7, i64 29216, !7, i64 29220, !7, i64 29224, !7, i64 29228, !7, i64 29232, !7, i64 29236, !27, i64 29240, !28, i64 29304, !29, i64 29368, !29, i64 29624, !7, i64 29880, !30, i64 29884, !7, i64 31932, !7, i64 31936, !7, i64 31940, !31, i64 31944, !32, i64 31948, !33, i64 31952, !34, i64 31956, !25, i64 31960, !25, i64 34008}
!36 = !{!"p1 _ZTSN11llama_vocab4implE", !12, i64 0}
!37 = !{!"_ZTSSt10_Head_baseILm0EPN11llama_vocab4implELb0EE", !36, i64 0}
!38 = !{!"_ZTSSt11_Tuple_implILm0EJPN11llama_vocab4implESt14default_deleteIS1_EEE", !37, i64 0}
!39 = !{!"_ZTSSt5tupleIJPN11llama_vocab4implESt14default_deleteIS1_EEE", !38, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_implIN11llama_vocab4implESt14default_deleteIS1_EE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_dataIN11llama_vocab4implESt14default_deleteIS1_ELb1ELb1EE", !40, i64 0}
!42 = !{!"_ZTSSt10unique_ptrIN11llama_vocab4implESt14default_deleteIS1_EE", !41, i64 0}
!43 = !{!"_ZTS11llama_vocab", !42, i64 0}
!44 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !47, i64 0}
!49 = !{!"p1 _ZTS11ggml_tensor", !12, i64 0}
!50 = !{!"p1 int", !12, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !51, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIiSaIiEE", !53, i64 0}
!55 = !{!"p1 _ZTS11llama_layer", !12, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseI11llama_layerSaIS0_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseI11llama_layerSaIS0_EE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseI11llama_layerSaIS0_EE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorI11llama_layerSaIS0_EE", !58, i64 0}
!60 = !{!"any p2 pointer", !12, i64 0}
!61 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !60, i64 0}
!62 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!63 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !62, i64 0}
!64 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !21, i64 0, !15, i64 8}
!65 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !61, i64 0, !15, i64 8, !63, i64 16, !15, i64 24, !64, i64 32, !62, i64 48}
!66 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !65, i64 0}
!67 = !{!"p1 _ZTS12llama_device", !12, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseI12llama_deviceSaIS0_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!"_ZTSNSt12_Vector_baseI12llama_deviceSaIS0_EE12_Vector_implE", !68, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseI12llama_deviceSaIS0_EE", !69, i64 0}
!71 = !{!"_ZTSSt6vectorI12llama_deviceSaIS0_EE", !70, i64 0}
!72 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11ggml_tensorE", !12, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11ggml_tensorESaIS9_EE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11ggml_tensorESaIS9_EE12_Vector_implE", !73, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11ggml_tensorESaIS9_EE", !74, i64 0}
!76 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11ggml_tensorESaIS9_EE", !75, i64 0}
!77 = !{!"_ZTSSt10_HashtableIP18llama_adapter_loraS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE", !61, i64 0, !15, i64 8, !63, i64 16, !15, i64 24, !64, i64 32, !62, i64 48}
!78 = !{!"_ZTSSt13unordered_setIP18llama_adapter_loraSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE", !77, i64 0}
!79 = !{!"p1 _ZTS11llama_model", !12, i64 0}
!80 = !{!"_ZTS42llama_meta_device_get_split_state_userdata", !15, i64 0, !79, i64 8}
!81 = !{!"p2 _ZTS19ggml_backend_device", !60, i64 0}
!82 = !{!"p1 _ZTS32llama_model_tensor_buft_override", !12, i64 0}
!83 = !{!"_ZTS16llama_split_mode", !6, i64 0}
!84 = !{!"_ZTS15llama_load_mode", !6, i64 0}
!85 = !{!"_ZTS15llama_lazy_mode", !6, i64 0}
!86 = !{!"p1 float", !12, i64 0}
!87 = !{!"p1 _ZTS23llama_model_kv_override", !12, i64 0}
!88 = !{!"_ZTS18llama_model_params", !81, i64 0, !82, i64 8, !7, i64 16, !83, i64 20, !84, i64 24, !85, i64 28, !7, i64 32, !86, i64 40, !12, i64 48, !12, i64 56, !87, i64 64, !17, i64 72, !17, i64 73, !17, i64 74, !17, i64 75, !17, i64 76, !17, i64 77}
!89 = !{!"p1 _ZTSN11llama_model4implE", !12, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EPN11llama_model4implELb0EE", !89, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJPN11llama_model4implESt14default_deleteIS1_EEE", !90, i64 0}
!92 = !{!"_ZTSSt5tupleIJPN11llama_model4implESt14default_deleteIS1_EEE", !91, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_implIN11llama_model4implESt14default_deleteIS1_EE", !92, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_dataIN11llama_model4implESt14default_deleteIS1_ELb1ELb1EE", !93, i64 0}
!95 = !{!"_ZTSSt10unique_ptrIN11llama_model4implESt14default_deleteIS1_EE", !94, i64 0}
!96 = !{!"_ZTS11llama_model", !10, i64 8, !11, i64 12, !16, i64 16, !35, i64 48, !43, i64 36104, !48, i64 36112, !49, i64 36136, !49, i64 36144, !49, i64 36152, !49, i64 36160, !49, i64 36168, !49, i64 36176, !49, i64 36184, !49, i64 36192, !49, i64 36200, !49, i64 36208, !49, i64 36216, !49, i64 36224, !49, i64 36232, !49, i64 36240, !49, i64 36248, !49, i64 36256, !49, i64 36264, !49, i64 36272, !49, i64 36280, !49, i64 36288, !49, i64 36296, !49, i64 36304, !49, i64 36312, !49, i64 36320, !49, i64 36328, !49, i64 36336, !49, i64 36344, !49, i64 36352, !49, i64 36360, !49, i64 36368, !49, i64 36376, !49, i64 36384, !49, i64 36392, !49, i64 36400, !49, i64 36408, !49, i64 36416, !49, i64 36424, !49, i64 36432, !49, i64 36440, !49, i64 36448, !49, i64 36456, !49, i64 36464, !49, i64 36472, !49, i64 36480, !54, i64 36488, !59, i64 36512, !49, i64 36536, !49, i64 36544, !49, i64 36552, !66, i64 36560, !71, i64 36616, !76, i64 36640, !78, i64 36664, !80, i64 36720, !15, i64 36736, !15, i64 36744, !88, i64 36752, !95, i64 36832}
!97 = !{!96, !7, i64 16736}
!98 = !{!96, !7, i64 16744}
!99 = !{!96, !7, i64 16748}
!100 = !{!96, !7, i64 16752}
!101 = !{!96, !7, i64 27188}
!102 = !{!16, !13, i64 0}
!103 = !{!6, !6, i64 0}
!104 = !{!16, !15, i64 8}
!105 = !{!96, !7, i64 29256}
!106 = !{!96, !7, i64 60}
!107 = !{!96, !7, i64 25112}
!108 = !{!96, !7, i64 25116}
!109 = !{!96, !7, i64 29272}
!110 = !{!7, !7, i64 0}
!111 = !{!15, !15, i64 0}
!112 = !{!96, !7, i64 29268}
!113 = !{!96, !7, i64 29276}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"p1 long", !12, i64 0}
!116 = !{!96, !49, i64 36136}
!117 = !{!96, !49, i64 36360}
!118 = !{!96, !49, i64 36368}
!119 = !{!96, !49, i64 36376}
!120 = !{!96, !49, i64 36200}
!121 = !{!"llvm.loop.isvectorized", i32 1}
!122 = !{!"llvm.loop.unroll.runtime.disable"}
!123 = !{!96, !49, i64 36352}
!124 = !{!56, !55, i64 0}
!125 = !{!"_ZTS18llama_layer_posnet", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !49, i64 104, !49, i64 112, !49, i64 120, !49, i64 128, !49, i64 136, !49, i64 144, !49, i64 152}
!126 = !{!"_ZTS20llama_layer_convnext", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64}
!127 = !{!"_ZTS21llama_layer_shortconv", !49, i64 0, !49, i64 8, !49, i64 16}
!128 = !{!"_ZTS17llama_layer_nextn", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72}
!129 = !{!"_ZTS23llama_layer_switch_lora", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !49, i64 104}
!130 = !{!"_ZTS11llama_layer", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !49, i64 104, !49, i64 112, !49, i64 120, !49, i64 128, !49, i64 136, !49, i64 144, !49, i64 152, !49, i64 160, !49, i64 168, !49, i64 176, !49, i64 184, !49, i64 192, !49, i64 200, !49, i64 208, !49, i64 216, !49, i64 224, !49, i64 232, !49, i64 240, !49, i64 248, !49, i64 256, !49, i64 264, !49, i64 272, !49, i64 280, !49, i64 288, !49, i64 296, !49, i64 304, !49, i64 312, !49, i64 320, !49, i64 328, !49, i64 336, !49, i64 344, !49, i64 352, !49, i64 360, !49, i64 368, !49, i64 376, !49, i64 384, !49, i64 392, !49, i64 400, !49, i64 408, !49, i64 416, !49, i64 424, !49, i64 432, !49, i64 440, !49, i64 448, !49, i64 456, !49, i64 464, !49, i64 472, !49, i64 480, !49, i64 488, !49, i64 496, !49, i64 504, !49, i64 512, !49, i64 520, !49, i64 528, !49, i64 536, !49, i64 544, !49, i64 552, !49, i64 560, !49, i64 568, !49, i64 576, !49, i64 584, !49, i64 592, !49, i64 600, !49, i64 608, !49, i64 616, !49, i64 624, !49, i64 632, !49, i64 640, !49, i64 648, !49, i64 656, !49, i64 664, !49, i64 672, !49, i64 680, !49, i64 688, !49, i64 696, !49, i64 704, !49, i64 712, !49, i64 720, !49, i64 728, !49, i64 736, !49, i64 744, !49, i64 752, !49, i64 760, !49, i64 768, !49, i64 776, !49, i64 784, !49, i64 792, !49, i64 800, !49, i64 808, !49, i64 816, !49, i64 824, !49, i64 832, !49, i64 840, !49, i64 848, !49, i64 856, !49, i64 864, !49, i64 872, !49, i64 880, !49, i64 888, !49, i64 896, !49, i64 904, !49, i64 912, !49, i64 920, !49, i64 928, !49, i64 936, !49, i64 944, !49, i64 952, !49, i64 960, !49, i64 968, !49, i64 976, !49, i64 984, !49, i64 992, !49, i64 1000, !49, i64 1008, !49, i64 1016, !49, i64 1024, !49, i64 1032, !49, i64 1040, !49, i64 1048, !49, i64 1056, !49, i64 1064, !49, i64 1072, !49, i64 1080, !49, i64 1088, !49, i64 1096, !49, i64 1104, !49, i64 1112, !49, i64 1120, !49, i64 1128, !49, i64 1136, !49, i64 1144, !49, i64 1152, !49, i64 1160, !49, i64 1168, !49, i64 1176, !49, i64 1184, !49, i64 1192, !49, i64 1200, !49, i64 1208, !49, i64 1216, !49, i64 1224, !49, i64 1232, !49, i64 1240, !49, i64 1248, !49, i64 1256, !49, i64 1264, !49, i64 1272, !49, i64 1280, !49, i64 1288, !49, i64 1296, !49, i64 1304, !49, i64 1312, !49, i64 1320, !49, i64 1328, !49, i64 1336, !49, i64 1344, !49, i64 1352, !49, i64 1360, !49, i64 1368, !49, i64 1376, !49, i64 1384, !49, i64 1392, !49, i64 1400, !49, i64 1408, !49, i64 1416, !49, i64 1424, !49, i64 1432, !49, i64 1440, !49, i64 1448, !49, i64 1456, !49, i64 1464, !49, i64 1472, !49, i64 1480, !49, i64 1488, !49, i64 1496, !49, i64 1504, !49, i64 1512, !49, i64 1520, !49, i64 1528, !49, i64 1536, !49, i64 1544, !49, i64 1552, !49, i64 1560, !49, i64 1568, !49, i64 1576, !49, i64 1584, !49, i64 1592, !49, i64 1600, !49, i64 1608, !49, i64 1616, !49, i64 1624, !49, i64 1632, !49, i64 1640, !49, i64 1648, !49, i64 1656, !49, i64 1664, !49, i64 1672, !49, i64 1680, !49, i64 1688, !49, i64 1696, !49, i64 1704, !49, i64 1712, !49, i64 1720, !49, i64 1728, !49, i64 1736, !49, i64 1744, !49, i64 1752, !49, i64 1760, !49, i64 1768, !49, i64 1776, !49, i64 1784, !49, i64 1792, !49, i64 1800, !49, i64 1808, !49, i64 1816, !49, i64 1824, !49, i64 1832, !49, i64 1840, !49, i64 1848, !49, i64 1856, !49, i64 1864, !49, i64 1872, !49, i64 1880, !49, i64 1888, !49, i64 1896, !49, i64 1904, !49, i64 1912, !49, i64 1920, !49, i64 1928, !49, i64 1936, !49, i64 1944, !49, i64 1952, !49, i64 1960, !49, i64 1968, !49, i64 1976, !49, i64 1984, !49, i64 1992, !49, i64 2000, !49, i64 2008, !49, i64 2016, !49, i64 2024, !49, i64 2032, !49, i64 2040, !49, i64 2048, !49, i64 2056, !49, i64 2064, !49, i64 2072, !49, i64 2080, !49, i64 2088, !49, i64 2096, !125, i64 2104, !126, i64 2264, !127, i64 2336, !128, i64 2360, !129, i64 2440}
!131 = !{!130, !49, i64 1984}
!132 = !{!130, !49, i64 1992}
!133 = !{!130, !49, i64 2000}
!134 = !{!130, !49, i64 2008}
!135 = !{!130, !49, i64 2016}
!136 = !{!130, !49, i64 2024}
!137 = !{!130, !49, i64 2032}
!138 = !{!130, !49, i64 2040}
!139 = !{!130, !49, i64 192}
!140 = !{!130, !49, i64 32}
!141 = !{!130, !49, i64 48}
!142 = !{!130, !49, i64 1952}
!143 = !{!130, !49, i64 1960}
!144 = !{!130, !49, i64 1968}
!145 = !{!130, !49, i64 1976}
!146 = !{!130, !49, i64 200}
!147 = !{!130, !49, i64 360}
!148 = !{!130, !49, i64 824}
!149 = !{!130, !49, i64 808}
!150 = !{!130, !49, i64 832}
!151 = !{!130, !49, i64 1832}
!152 = !{!130, !49, i64 872}
!153 = !{!130, !49, i64 136}
!154 = !{!130, !49, i64 816}
!155 = !{!130, !49, i64 2048}
!156 = !{!130, !49, i64 2056}
!157 = !{!130, !49, i64 2064}
!158 = !{!130, !49, i64 2072}
!159 = !{!130, !49, i64 2080}
!160 = !{!130, !49, i64 2088}
!161 = !{!130, !49, i64 520}
!162 = !{!130, !49, i64 544}
!163 = !{!130, !49, i64 648}
!164 = !{!130, !49, i64 656}
!165 = !{!130, !49, i64 672}
!166 = !{!130, !49, i64 664}
!167 = !{!"p1 _ZTS13llama_hparams", !12, i64 0}
!168 = !{!"p1 _ZTS13llama_cparams", !12, i64 0}
end_hunk_1
