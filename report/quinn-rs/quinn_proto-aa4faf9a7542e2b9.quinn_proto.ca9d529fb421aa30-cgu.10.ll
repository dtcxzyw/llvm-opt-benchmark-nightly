Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.10?download=true
inline.NumInlined: 675
inline.NumDeleted: 213
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvXs_NtCshovLROGBtMy_11quinn_proto15bloom_token_logNtB4_13BloomTokenLogNtNtB6_5token8TokenLog16check_and_insert:bb.a
bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr @_RNvNvXs_NtCshovLROGBtMy_11quinn_proto15bloom_token_logNtB6_13BloomTokenLogNtNtB8_5token8TokenLog16check_and_insert10___CALLSITE, !25311, !DIExpression(), !25510)
  %i.bn = load ptr, ptr @_RNvNvXs_NtCshovLROGBtMy_11quinn_proto15bloom_token_logNtB6_13BloomTokenLogNtNtB8_5token8TokenLog16check_and_insert10___CALLSITE, align 8, !dbg !26270, !nonnull !2081, !align !2422, !noundef !2081 ; 3 uses
    #dbg_value(ptr %i.bn, !25179, !DIExpression(), !25511)
    #dbg_value(ptr %i.bn, !25512, !DIExpression(), !25516)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !26271
    #dbg_value(ptr undef, !25211, !DIExpression(), !25233)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32, !dbg !26272
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !26272, !nonnull !2081, !noundef !2081
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 40, !dbg !26272
  %i.br = load i64, ptr %i.bq, align 8, !dbg !26272, !noundef !2081
    #dbg_value(ptr undef, !25204, !DIExpression(), !25232)
  store i64 5, ptr %i.x, align 8, !dbg !25232
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !25232
  store ptr %i.bp, ptr %i.bs, align 8, !dbg !25232
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !25232
  store i64 %i.br, ptr %i.bt, align 8, !dbg !25232
  %i.bu = tail call { ptr, ptr } @_RNvCsfFi4e9Agq2S_3log6logger(), !dbg !25238 ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0, !dbg !25238 ; 2 uses
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1, !dbg !25238 ; 2 uses
    #dbg_value(ptr %i.bv, !25183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25517)
    #dbg_value(ptr %i.bw, !25183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25517)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24, !dbg !26273
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !26273, !invariant.load !2081, !nonnull !2081
  %i.bz = call noundef zeroext i1 %i.by(ptr noundef %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x) #26, !dbg !26273
  br i1 %i.bz, label %bb.n, label %bb.o, !dbg !26273

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !26273
  %i.ca = load ptr, ptr @_RNvNvXs_NtCshovLROGBtMy_11quinn_proto15bloom_token_logNtB6_13BloomTokenLogNtNtB8_5token8TokenLog16check_and_insert10___CALLSITE, align 8, !dbg !26274, !nonnull !2081, !align !2422, !noundef !2081
    #dbg_value(ptr %i.ca, !25394, !DIExpression(), !25520)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48, !dbg !26275
    #dbg_value(ptr %i.cb, !25399, !DIExpression(), !25523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !26273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !26273
    #dbg_value(ptr @124, !25425, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25526)
    #dbg_value(i64 16, !25425, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25526)
  store ptr @124, ptr %i.u, align 8, !dbg !26276
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !26276
  store ptr inttoptr (i64 33 to ptr), ptr %i.cc, align 8, !dbg !26276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !26273
    #dbg_value(ptr %i.ac, !25430, !DIExpression(), !25529)
  store ptr %i.ac, ptr %i.t, align 8, !dbg !26277
  store ptr %i.u, ptr %i.v, align 8, !dbg !26273
  %i.cd = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !26273
  store ptr @85, ptr %i.cd, align 8, !dbg !26273
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !26273
  store ptr %i.t, ptr %i.ce, align 8, !dbg !26273
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !26273
  store ptr @125, ptr %i.cf, align 8, !dbg !26273
    #dbg_value(ptr %i.v, !25400, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25523)
    #dbg_value(i64 2, !25400, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25523)
  store i64 1, ptr %i.w, align 8, !dbg !26278
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !26278
  store ptr %i.v, ptr %.sroa.427.0..sroa_idx, align 8, !dbg !26278
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !26278
  store i64 2, ptr %.sroa.528.0..sroa_idx, align 8, !dbg !26278
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !26278
  store ptr %i.cb, ptr %i.cg, align 8, !dbg !26278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !26273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !26273
  call void @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn, ptr noundef nonnull %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w), !dbg !26273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !26273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !26273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !26273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !26273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !26273
  br label %bb.o, !dbg !26273

bb.o:                                             ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !26271
  br label %bb.j, !dbg !26269

bb.p:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !26279
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateE4lockB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noundef nonnull align 8 %0), !dbg !26280
  call void @llvm.experimental.noalias.scope.decl(metadata !25530), !dbg !26281
    #dbg_declare(ptr %i.s, !25531, !DIExpression(), !24500)
    #dbg_declare(ptr %i.g, !25547, !DIExpression(), !24501)
  %i.ch = load i64, ptr %i.s, align 8, !dbg !26282, !range !7536, !alias.scope !25530, !noundef !2081
  %i.ci = trunc nuw i64 %i.ch to i1, !dbg !26283
  br i1 %i.ci, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEINtBM_11PoisonErrorBH_EE6unwrapB1F_.exit, !dbg !26283, !prof !2513

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !26284, !noalias !25530
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !26284
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !26284, !alias.scope !25530, !nonnull !2081, !align !2422, !noundef !2081
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !26284
  %i.cm = load i8, ptr %i.cl, align 8, !dbg !26284, !range !2423, !alias.scope !25530, !noundef !2081
  store ptr %i.ck, ptr %i.g, align 8, !dbg !26284, !noalias !25530
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !26284
  store i8 %i.cm, ptr %i.cn, align 8, !dbg !26284, !noalias !25530
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #28
          to label %bb.s unwind label %bb.r, !dbg !26285, !noalias !25530

bb.r:                                             ; preds = %bb.q
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #30
          to label %common.resume unwind label %bb.t, !dbg !26286, !noalias !25530

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !26287, !noalias !25530
  unreachable, !dbg !26287

common.resume:                                    ; preds = %.body, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.co, %bb.r ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !25237

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEINtBM_11PoisonErrorBH_EE6unwrapB1F_.exit: ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !26288
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !26288, !alias.scope !25530, !nonnull !2081, !align !2422, !noundef !2081 ; 20 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !26288
  %i.ct = load i8, ptr %i.cs, align 8, !dbg !26288, !range !2423, !alias.scope !25530, !noundef !2081 ; 2 uses
  %i.cu = trunc nuw i8 %i.ct to i1, !dbg !26288   ; 2 uses
    #dbg_value(ptr %i.cr, !25184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25549)
    #dbg_value(i8 %i.ct, !25184, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !25549)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !26289
    #dbg_value(ptr undef, !25221, !DIExpression(), !25228)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !26290 ; 10 uses
    #dbg_value(ptr %i.cv, !25186, !DIExpression(), !25556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !26291
  %i.cw = invoke { i64, i32 } @_RNvXs6_NtCsG258MDvU3F_3std4timeNtB5_10SystemTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBR_4time8DurationE3add(i64 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127)
          to label %bb.v unwind label %bb.u, !dbg !26292 ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_.exit.sink.split: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i165, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0.ph = phi i1 [ %.sroa.0.0.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ true, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i165 ]
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cr), !dbg !26293
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_.exit, !dbg !26294

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_.exit.sink.split, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i165, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.j
  %.sroa.0.0 = phi i1 [ true, %bb.j ], [ true, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i165 ], [ %.sroa.0.0.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.0.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_.exit.sink.split ], !dbg !25237
  ret i1 %.sroa.0.0, !dbg !26294

.body:                                            ; preds = %bb.ap, %.loopexit.i, %bb.az, %bb.u, %bb.bf, %bb.bb, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.iz, %bb.ba ], [ %i.jh, %bb.bf ], [ %i.ja, %bb.bb ], [ %i.cx, %bb.u ], [ %i.gv, %bb.ap ], [ %lpad.phi.i, %.loopexit.i ], [ %i.ix, %bb.az ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_(ptr nonnull %i.cr, i8 %i.ct) #30
          to label %common.resume unwind label %bb.cf, !dbg !25557

bb.u:                                             ; preds = %.invoke, %bb.bs, %.noexc162, %bb.br, %bb.bp, %.noexc152, %bb.ao, %bb.am, %bb.cc, %bb.ca, %bb.bz, %bb.bm, %bb.bl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log6FilterEBF_.exit147, %bb.z, %bb.v, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEINtBM_11PoisonErrorBH_EE6unwrapB1F_.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEINtBM_11PoisonErrorBH_EE6unwrapB1F_.exit
  %i.cy = extractvalue { i64, i32 } %i.cw, 0, !dbg !26292 ; 2 uses
  %i.cz = extractvalue { i64, i32 } %i.cw, 1, !dbg !26292 ; 2 uses
  store i64 %i.cy, ptr %i.r, align 8, !dbg !26292
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !26292
  store i32 %i.cz, ptr %i.da, align 8, !dbg !26292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !26295
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 88, !dbg !26296 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !dbg !26296, !noundef !2081
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 96, !dbg !26296 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !dbg !26296, !range !25560, !noundef !2081
  invoke void @_RNvMs5_NtCsG258MDvU3F_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, i64 noundef %i.dc, i32 noundef %i.de)
          to label %bb.w unwind label %bb.u, !dbg !26297

bb.w:                                             ; preds = %bb.v
    #dbg_value(ptr poison, !25274, !DIExpression(), !25561)
    #dbg_value(ptr poison, !25562, !DIExpression(), !25568)
    #dbg_value(ptr poison, !25569, !DIExpression(), !25572)
  %i.df = load i64, ptr %i.j, align 8, !dbg !26298, !range !7536, !noundef !2081
  %i.dg = trunc nuw i64 %i.df to i1, !dbg !26299
  br i1 %i.dg, label %bb.bj, label %bb.x, !dbg !26299

bb.x:                                             ; preds = %bb.w
    #dbg_value(i64 poison, !25275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25573)
    #dbg_value(i64 poison, !25565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25574)
    #dbg_value(i32 poison, !25275, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25573)
    #dbg_value(i32 poison, !25565, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25574)
    #dbg_value(ptr poison, !25569, !DIExpression(), !25576)
  %i.dh = zext i64 %4 to i128, !dbg !26300
  %i.di = mul nuw nsw i128 %i.dh, 1000000000, !dbg !26300
  %i.dj = zext nneg i32 %5 to i128, !dbg !26301
  %i.dk = add nuw nsw i128 %i.di, %i.dj, !dbg !26300 ; 2 uses
  %i.dl = icmp eq i128 %i.dk, 0, !dbg !26302
  br i1 %i.dl, label %bb.z, label %bb.y, !dbg !26302

bb.y:                                             ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !26303
  %i.dn = load i64, ptr %i.dm, align 8, !dbg !26303, !noundef !2081
    #dbg_value(i64 %i.dn, !25275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25573)
    #dbg_value(i64 %i.dn, !25565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25574)
  %i.do = zext i64 %i.dn to i128, !dbg !26304
  %i.dp = mul nuw nsw i128 %i.do, 1000000000, !dbg !26304
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !26303
  %i.dr = load i32, ptr %i.dq, align 8, !dbg !26303, !range !25560, !noundef !2081
    #dbg_value(i32 %i.dr, !25275, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25573)
    #dbg_value(i32 %i.dr, !25565, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25574)
  %i.ds = zext nneg i32 %i.dr to i128, !dbg !26305
  %i.dt = add nuw nsw i128 %i.dp, %i.ds, !dbg !26304
  %i.du = udiv i128 %i.dt, %i.dk, !dbg !26302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !26306
    #dbg_value(i128 %i.du, !25200, !DIExpression(), !25577)
  %trunc169 = trunc nuw i128 %i.du to i94, !dbg !26307
  switch i94 %trunc169, label %bb.ab [
    i94 0, label %bb.ak
    i94 1, label %bb.af
    i94 2, label %bb.ag
  ], !dbg !26307

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #28
          to label %bb.aa unwind label %bb.u, !dbg !26302

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !25578), !dbg !26308
    #dbg_value(ptr %i.cv, !25579, !DIExpression(), !24509)
  %i.dv = load ptr, ptr %i.cv, align 8, !dbg !26309, !alias.scope !25578, !noundef !2081
  %.not.i142 = icmp eq ptr %i.dv, null, !dbg !26309
  br i1 %.not.i142, label %bb.ad, label %bb.ac, !dbg !26309

bb.ac:                                            ; preds = %bb.ab
    #dbg_value(ptr %i.cv, !25584, !DIExpression(), !24512)
    #dbg_value(ptr %i.cv, !25591, !DIExpression(), !24515)
    #dbg_value(ptr %i.cv, !25598, !DIExpression(), !24518)
    #dbg_value(ptr %i.cv, !25605, !DIExpression(), !24521)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log6FilterEBF_.exit unwind label %bb.bb, !dbg !26310

bb.ad:                                            ; preds = %bb.ab
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cr, i64 24, !dbg !26309
  %.val1.i = load i64, ptr %i.dw, align 8, !dbg !26309, !alias.scope !25578, !noundef !2081 ; 2 uses
    #dbg_value(ptr poison, !25612, !DIExpression(), !24524)
    #dbg_value(ptr poison, !25619, !DIExpression(), !24527)
    #dbg_value(ptr poison, !25626, !DIExpression(), !24530)
    #dbg_value(ptr poison, !25633, !DIExpression(), !24539)
    #dbg_value(ptr poison, !25636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24540)
    #dbg_value(i64 %.val1.i, !25636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24540)
    #dbg_value(ptr poison, !25652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24544)
    #dbg_value(ptr poison, !25659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24547)
    #dbg_value(i64 %.val1.i, !25652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24544)
    #dbg_value(i64 %.val1.i, !25659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24547)
    #dbg_value(i64 8, !25637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24548)
    #dbg_value(i64 %.val1.i, !25637, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !24548)
  %i.dx = icmp eq i64 %.val1.i, 0, !dbg !26311
  br i1 %i.dx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log6FilterEBF_.exit, label %bb.ae, !dbg !26311

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !26309
  %.val.i = load ptr, ptr %i.dy, align 8, !dbg !26309, !alias.scope !25578, !nonnull !2081, !noundef !2081
  %i.dz = shl nuw nsw i64 %.val1.i, 3, !dbg !26312
    #dbg_value(i64 %i.dz, !25637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24548)
    #dbg_value(ptr %.val.i, !25652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24544)
    #dbg_value(ptr %.val.i, !25659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24547)
    #dbg_value(ptr %.val.i, !25636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24540)
    #dbg_value(ptr poison, !25666, !DIExpression(), !24551)
    #dbg_value(ptr poison, !25673, !DIExpression(), !24554)
    #dbg_value(ptr %.val.i, !25670, !DIExpression(), !24551)
    #dbg_value(ptr %.val.i, !25676, !DIExpression(), !24554)
    #dbg_value(ptr %.val.i, !25679, !DIExpression(), !24557)
    #dbg_value(ptr %.val.i, !25685, !DIExpression(), !24560)
    #dbg_value(i64 8, !25671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24551)
    #dbg_value(i64 8, !25677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24554)
    #dbg_value(i64 8, !25683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24557)
    #dbg_value(i64 8, !25686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24560)
    #dbg_value(i64 %i.dz, !25671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24551)
    #dbg_value(i64 %i.dz, !25677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24554)
    #dbg_value(i64 %i.dz, !25683, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24557)
    #dbg_value(i64 %i.dz, !25686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24560)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.dz, i64 noundef 8) #31, !dbg !26313, !noalias !25578
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log6FilterEBF_.exit, !dbg !26314

bb.af:                                            ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cr, i64 40, !dbg !26315
    #dbg_value(ptr %i.ea, !25202, !DIExpression(), !25688)
  br label %bb.ak, !dbg !26316

bb.ag:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !25287
    #dbg_value(ptr %i.cv, !25292, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !25689)
    #dbg_value(ptr %i.cv, !25283, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !25690)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cr, i64 40, !dbg !26317 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i64 32, i1 false), !dbg !26317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) @69, i64 32, i1 false), !dbg !26318
  call void @llvm.experimental.noalias.scope.decl(metadata !25691), !dbg !26319
    #dbg_value(ptr %i.cv, !25579, !DIExpression(), !24564)
  %i.ec = load ptr, ptr %i.cv, align 8, !dbg !26320, !alias.scope !25691, !noundef !2081
  %.not.i143 = icmp eq ptr %i.ec, null, !dbg !26320
  br i1 %.not.i143, label %bb.ai, label %bb.ah, !dbg !26320

bb.ah:                                            ; preds = %bb.ag
    #dbg_value(ptr %i.cv, !25584, !DIExpression(), !24566)
    #dbg_value(ptr %i.cv, !25591, !DIExpression(), !24568)
    #dbg_value(ptr %i.cv, !25598, !DIExpression(), !24570)
    #dbg_value(ptr %i.cv, !25605, !DIExpression(), !24572)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log6FilterEBF_.exit147 unwind label %bb.ba, !dbg !26321

bb.ai:                                            ; preds = %bb.ag
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cr, i64 24, !dbg !26320
  %.val1.i144 = load i64, ptr %i.ed, align 8, !dbg !26320, !alias.scope !25691, !noundef !2081 ; 2 uses
    #dbg_value(ptr poison, !25612, !DIExpression(), !24574)
    #dbg_value(ptr poison, !25619, !DIExpression(), !24576)
    #dbg_value(ptr poison, !25626, !DIExpression(), !24578)
    #dbg_value(ptr poison, !25633, !DIExpression(), !24580)
    #dbg_value(ptr poison, !25636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24581)
    #dbg_value(i64 %.val1.i144, !25636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24581)
    #dbg_value(ptr poison, !25652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24583)
    #dbg_value(ptr poison, !25659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24585)
    #dbg_value(i64 %.val1.i144, !25652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24583)
    #dbg_value(i64 %.val1.i144, !25659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24585)
    #dbg_value(i64 8, !25637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24586)
    #dbg_value(i64 %.val1.i144, !25637, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !24586)
  %i.ee = icmp eq i64 %.val1.i144, 0, !dbg !26322
  br i1 %i.ee, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log6FilterEBF_.exit147, label %bb.aj, !dbg !26322

bb.aj:                                            ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !26320
  %.val.i145 = load ptr, ptr %i.ef, align 8, !dbg !26320, !alias.scope !25691, !nonnull !2081, !noundef !2081
  %i.eg = shl nuw nsw i64 %.val1.i144, 3, !dbg !26323
    #dbg_value(i64 %i.eg, !25637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24586)
    #dbg_value(ptr %.val.i145, !25652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24583)
    #dbg_value(ptr %.val.i145, !25659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24585)
    #dbg_value(ptr %.val.i145, !25636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24581)
    #dbg_value(ptr poison, !25666, !DIExpression(), !24588)
    #dbg_value(ptr poison, !25673, !DIExpression(), !24590)
    #dbg_value(ptr %.val.i145, !25670, !DIExpression(), !24588)
    #dbg_value(ptr %.val.i145, !25676, !DIExpression(), !24590)
    #dbg_value(ptr %.val.i145, !25679, !DIExpression(), !24592)
    #dbg_value(ptr %.val.i145, !25685, !DIExpression(), !24594)
    #dbg_value(i64 8, !25671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24588)
    #dbg_value(i64 8, !25677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24590)
    #dbg_value(i64 8, !25683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24592)
    #dbg_value(i64 8, !25686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24594)
    #dbg_value(i64 %i.eg, !25671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24588)
    #dbg_value(i64 %i.eg, !25677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24590)
    #dbg_value(i64 %i.eg, !25683, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24592)
    #dbg_value(i64 %i.eg, !25686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24594)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i145, i64 noundef range(i64 1, -9223372036854775808) %i.eg, i64 noundef 8) #31, !dbg !26324, !noalias !25691
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log6FilterEBF_.exit147, !dbg !26325

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log6FilterEBF_.exit147, %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log6FilterEBF_.exit159, %bb.af
  %.sroa.019.0 = phi ptr [ %i.cv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log6FilterEBF_.exit159 ], [ %i.cv, %bb.y ], [ %i.ea, %bb.af ], [ %i.eb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log6FilterEBF_.exit147 ], !dbg !25577 ; 15 uses
    #dbg_value(ptr %.sroa.019.0, !25202, !DIExpression(), !25688)
  %i.eh = load i128, ptr %i.ac, align 16, !dbg !26326, !noundef !2081
    #dbg_value(i128 %i.eh, !25169, !DIExpression(), !25237)
  %i.ei = trunc i128 %i.eh to i64, !dbg !26326    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cr, i64 72, !dbg !26327
  %.val140 = load i64, ptr %i.ej, align 8, !dbg !26328 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.cr, i64 80, !dbg !26328
  %.val141 = load i32, ptr %i.ek, align 8, !dbg !26328
  call void @llvm.experimental.noalias.scope.decl(metadata !25692), !dbg !26328
    #dbg_value(ptr poison, !25694, !DIExpression(), !24628)
    #dbg_value(ptr poison, !25775, !DIExpression(), !24635)
    #dbg_value(ptr poison, !25782, !DIExpression(), !24636)
    #dbg_value(ptr poison, !25694, !DIExpression(), !24638)
    #dbg_value(ptr poison, !25775, !DIExpression(), !24642)
    #dbg_value(ptr poison, !25782, !DIExpression(), !24643)
    #dbg_value(ptr poison, !25789, !DIExpression(), !24644)
    #dbg_value(ptr poison, !25789, !DIExpression(), !24645)
    #dbg_value(ptr poison, !25707, !DIExpression(), !24646)
    #dbg_value(ptr poison, !25728, !DIExpression(), !24647)
    #dbg_value(ptr poison, !25729, !DIExpression(), !24649)
    #dbg_value(i64 %i.ei, !25737, !DIExpression(), !24650)
    #dbg_value(i64 %i.ei, !25792, !DIExpression(), !24653)
    #dbg_value(i64 %i.ei, !25799, !DIExpression(), !24656)
    #dbg_value(ptr %.sroa.019.0, !25736, !DIExpression(), !24650)
    #dbg_value(ptr poison, !25738, !DIExpression(), !24650)
    #dbg_declare(ptr %i.e, !25806, !DIExpression(), !24668)
    #dbg_declare(ptr %i.d, !25741, !DIExpression(), !24669)
    #dbg_declare(ptr poison, !25848, !DIExpression(), !24670)
  %.8.val.fr.i = freeze i32 %.val141              ; 2 uses
  %i.el = load ptr, ptr %.sroa.019.0, align 8, !dbg !26329, !alias.scope !25692, !noundef !2081
  %i.em = icmp eq ptr %i.el, null, !dbg !26329
  br i1 %i.em, label %bb.al, label %bb.am, !dbg !26330

bb.al:                                            ; preds = %bb.ak
    #dbg_value(ptr %.sroa.019.0, !25743, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24671)
    #dbg_value(ptr %.sroa.019.0, !25728, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24649)
    #dbg_value(ptr undef, !25729, !DIExpression(), !24649)
    #dbg_value(ptr undef, !25737, !DIExpression(DW_OP_deref), !24650)
    #dbg_value(ptr undef, !25792, !DIExpression(DW_OP_deref), !24653)
    #dbg_value(ptr undef, !25799, !DIExpression(DW_OP_deref), !24656)
    #dbg_value(ptr poison, !25850, !DIExpression(), !24676)
    #dbg_value(ptr poison, !25855, !DIExpression(), !24676)
    #dbg_value(i64 0, !25856, !DIExpression(), !24677)
    #dbg_value(ptr poison, !25860, !DIExpression(), !24680)
    #dbg_value(ptr undef, !25864, !DIExpression(), !24680)
    #dbg_value(ptr undef, !25869, !DIExpression(), !24683)
    #dbg_value(ptr undef, !25875, !DIExpression(), !24686)
    #dbg_value(i64 %i.ei, !25873, !DIExpression(), !24683)
    #dbg_value(i64 -1065810590584100411, !25881, !DIExpression(), !24689)
    #dbg_value(i64 %i.ei, !25879, !DIExpression(), !24686)
    #dbg_value(i64 %i.ei, !25882, !DIExpression(), !24689)
  %i.en = mul i64 %i.ei, -1065810590584100411, !dbg !26331 ; 2 uses
    #dbg_value(i64 %i.en, !25856, !DIExpression(), !24677)
    #dbg_value(ptr poison, !25885, !DIExpression(), !24692)
    #dbg_value(i32 26, !25889, !DIExpression(), !24695)
    #dbg_value(i64 %i.en, !25892, !DIExpression(), !24695)
    #dbg_value(i64 %i.en, !25894, !DIExpression(), !24698)
    #dbg_value(i32 26, !25895, !DIExpression(), !24698)
  %i.eo = call noundef i64 @llvm.fshl.i64(i64 %i.en, i64 %i.en, i64 26), !dbg !26332 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25897), !dbg !26333
    #dbg_value(ptr poison, !25900, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24709)
    #dbg_value(ptr poison, !25900, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !24709)
end_hunk_0
