Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bulk.bulk.93260328f3fcf1fb-cgu.15?download=true
inline.NumInlined: 185
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs0_NtCsjx2R6KBUtVL_6rustls7builderINtB5_13ConfigBuilderNtNtNtB7_6client11client_conn12ClientConfigNtB5_13WantsVersionsE22with_protocol_versionsCscDgBWNIBxoJ_4bulk:bb.a
    #dbg_value(ptr %i.bh, !12853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12875)
    #dbg_value(i64 %i.bj, !12864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12874)
    #dbg_value(i64 %i.bj, !12853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12875)
    #dbg_value(ptr %i.bh, !12854, !DIExpression(), !12876)
    #dbg_value(ptr %i.bh, !12869, !DIExpression(), !12873)
  %.idx244 = shl nuw nsw i64 %i.bj, 4, !dbg !13293
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx244, !dbg !13293
    #dbg_value(ptr %i.bh, !12312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12877)
    #dbg_value(ptr %i.bk, !12312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12877)
    #dbg_value(ptr undef, !12411, !DIExpression(), !12427)
    #dbg_value(ptr %i.bh, !12421, !DIExpression(), !12878)
    #dbg_value(ptr %i.bh, !12587, !DIExpression(), !12591)
    #dbg_value(ptr %i.bk, !12422, !DIExpression(), !12879)
    #dbg_value(ptr poison, !12881, !DIExpression(), !12887)
    #dbg_value(ptr poison, !12884, !DIExpression(), !12888)
  %i.bl = icmp eq i64 %i.bj, 0, !dbg !13294
  br i1 %i.bl, label %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit.thread._crit_edge, label %.lr.ph238, !dbg !13295

.lr.ph238:                                        ; preds = %bb.r, %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit.thread
  %.sroa.07.0236 = phi ptr [ %i.bm, %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit.thread ], [ %i.bh, %bb.r ] ; 3 uses
    #dbg_value(ptr %.sroa.07.0236, !12312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12877)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.07.0236, i64 16, !dbg !13296 ; 2 uses
    #dbg_value(ptr %i.bm, !12312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12877)
    #dbg_value(ptr %.sroa.07.0236, !12314, !DIExpression(), !12889)
  %i.bn = load ptr, ptr %.sroa.07.0236, align 8, !dbg !13297, !nonnull !1955, !noundef !1955
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.07.0236, i64 8, !dbg !13297
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !13297, !nonnull !1955, !align !4098, !noundef !1955
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56, !dbg !13297
  %i.br = load ptr, ptr %i.bq, align 8, !dbg !13297, !invariant.load !1955, !nonnull !1955
  %i.bs = invoke { i16, i16 } %i.br(ptr noundef nonnull %i.bn)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13298 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.s, %.lr.ph238, %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmEECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #19
          to label %.thread unwind label %bb.ad, !dbg !13299

bb.s:                                             ; preds = %.lr.ph238
  %i.bt = extractvalue { i16, i16 } %i.bs, 0, !dbg !13297
  %i.bu = extractvalue { i16, i16 } %i.bs, 1, !dbg !13297
  %i.bv = invoke noundef zeroext i1 @_RNvMs0_NtNtCsjx2R6KBUtVL_6rustls4msgs5enumsNtB5_10NamedGroup22key_exchange_algorithm(i16 noundef %i.bt, i16 %i.bu)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13300

bb.t:                                             ; preds = %bb.s
  %i.bw = zext i1 %i.bv to i8, !dbg !13297        ; 2 uses
    #dbg_value(i8 %i.bw, !12315, !DIExpression(), !12890)
    #dbg_value(i8 %i.bw, !12891, !DIExpression(), !12898)
    #dbg_value(ptr %i.h, !12899, !DIExpression(), !12904)
    #dbg_value(ptr %i.h, !12905, !DIExpression(), !12910)
    #dbg_value(ptr %i.h, !12911, !DIExpression(), !12918)
  %i.bx = load ptr, ptr %i.bd, align 8, !dbg !13301, !nonnull !1955, !noundef !1955 ; 3 uses
  %i.by = load i64, ptr %i.be, align 8, !dbg !13302, !noundef !1955 ; 6 uses
    #dbg_value(ptr %i.bx, !12403, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12409)
    #dbg_value(i64 %i.by, !12403, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12409)
    #dbg_value(ptr undef, !12400, !DIExpression(), !12409)
    #dbg_value(ptr poison, !12936, !DIExpression(), !12046)
    #dbg_value(ptr poison, !12948, !DIExpression(), !12047)
    #dbg_value(ptr poison, !12957, !DIExpression(), !12048)
    #dbg_value(ptr %i.bx, !12958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12048)
    #dbg_value(ptr %i.bx, !12960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12051)
    #dbg_value(ptr %i.bx, !12962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12057)
    #dbg_value(i64 %i.by, !12958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12048)
    #dbg_value(i64 %i.by, !12960, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12051)
    #dbg_value(i64 %i.by, !12962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12057)
    #dbg_value(i64 %i.by, !12963, !DIExpression(), !12058)
    #dbg_value(i64 %i.by, !12967, !DIExpression(), !12061)
    #dbg_value(ptr %i.bx, !12964, !DIExpression(), !12062)
    #dbg_value(ptr %i.bx, !12968, !DIExpression(), !12061)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by, !dbg !13303
    #dbg_value(ptr poison, !12949, !DIExpression(), !12047)
    #dbg_value(ptr undef, !12948, !DIExpression(), !12047)
    #dbg_value(ptr undef, !12936, !DIExpression(), !12046)
    #dbg_value(i64 1, !12970, !DIExpression(), !12065)
    #dbg_value(ptr %i.bx, !12937, !DIExpression(), !12066)
    #dbg_value(ptr %i.bx, !12974, !DIExpression(), !12065)
    #dbg_value(ptr %i.bz, !12938, !DIExpression(), !12067)
    #dbg_value(ptr poison, !12977, !DIExpression(), !12070)
    #dbg_value(ptr poison, !12980, !DIExpression(), !12071)
  %.not.not.not.i.not.not.not.i.not233 = icmp samesign eq i64 %i.by, 0, !dbg !13304
  br i1 %.not.not.not.i.not.not.not.i.not233, label %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit, label %.lr.ph235, !dbg !13305

bb.u:                                             ; preds = %.lr.ph235
  %i.ca = getelementptr inbounds nuw i8, ptr %i.cb, i64 1, !dbg !13306 ; 2 uses
    #dbg_value(ptr %i.ca, !12937, !DIExpression(), !12066)
    #dbg_value(ptr %i.ca, !12974, !DIExpression(), !12065)
    #dbg_value(ptr %i.bz, !12938, !DIExpression(), !12067)
    #dbg_value(ptr poison, !12977, !DIExpression(), !12070)
    #dbg_value(ptr poison, !12980, !DIExpression(), !12071)
  %.not.not.not.i.not.not.not.i.not = icmp eq ptr %i.ca, %i.bz, !dbg !13304
  br i1 %.not.not.not.i.not.not.not.i.not, label %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit, label %.lr.ph235, !dbg !13305

.lr.ph235:                                        ; preds = %bb.t, %bb.u
  %i.cb = phi ptr [ %i.ca, %bb.u ], [ %i.bx, %bb.t ] ; 2 uses
    #dbg_value(ptr %i.cb, !12937, !DIExpression(), !12066)
    #dbg_value(ptr %i.cb, !12950, !DIExpression(), !12072)
  %.val8.i.i = load i8, ptr %i.cb, align 1, !dbg !13307, !range !4399, !alias.scope !12982, !noalias !12983, !noundef !1955
    #dbg_value(ptr poison, !12985, !DIExpression(DW_OP_deref, DW_OP_deref), !12080)
    #dbg_value(ptr poison, !12989, !DIExpression(), !12080)
    #dbg_value(ptr poison, !12991, !DIExpression(), !12085)
    #dbg_value(ptr poison, !12995, !DIExpression(), !12085)
    #dbg_value(i8 %.val8.i.i, !12996, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !12086)
    #dbg_value(i8 %i.bw, !12997, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !12087)
  %i.cc = icmp eq i8 %.val8.i.i, %i.bw, !dbg !13308
  br i1 %i.cc, label %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit.thread, label %bb.u, !dbg !13307

_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.u, %bb.t
    #dbg_value(ptr %i.h, !12895, !DIExpression(), !12898)
    #dbg_value(ptr %i.h, !13000, !DIExpression(), !12092)
    #dbg_value(ptr %i.h, !13009, !DIExpression(), !12095)
    #dbg_value(i1 %i.bv, !13005, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12092)
    #dbg_value(i64 1, !13014, !DIExpression(), !12100)
    #dbg_value(i64 %i.by, !13006, !DIExpression(), !12101)
    #dbg_value(i64 %i.by, !13025, !DIExpression(), !12104)
    #dbg_value(ptr %i.h, !13023, !DIExpression(), !12105)
  %i.cd = load i64, ptr %i.h, align 8, !dbg !13309, !range !13028, !alias.scope !13029, !noundef !1955
  %i.ce = icmp eq i64 %i.by, %i.cd, !dbg !13310
  br i1 %i.ce, label %bb.v, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutCscDgBWNIBxoJ_4bulk.exit, !dbg !13310

bb.v:                                             ; preds = %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #22
          to label %._RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutCscDgBWNIBxoJ_4bulk.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13311

._RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutCscDgBWNIBxoJ_4bulk.exit_crit_edge: ; preds = %bb.v
  %.pre = load ptr, ptr %i.bd, align 8, !dbg !13312, !alias.scope !13029
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutCscDgBWNIBxoJ_4bulk.exit, !dbg !13311

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutCscDgBWNIBxoJ_4bulk.exit: ; preds = %._RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutCscDgBWNIBxoJ_4bulk.exit_crit_edge, %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit
  %i.cf = phi ptr [ %.pre, %._RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutCscDgBWNIBxoJ_4bulk.exit_crit_edge ], [ %i.bx, %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit ], !dbg !13312
    #dbg_value(ptr %i.cf, !13026, !DIExpression(), !12104)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.by, !dbg !13313
    #dbg_value(ptr %i.cg, !13007, !DIExpression(), !12114)
    #dbg_value(ptr %i.cg, !13030, !DIExpression(), !12117)
    #dbg_value(i1 %i.bv, !13033, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12117)
  store i8 %i.bw, ptr %i.cg, align 1, !dbg !13314
  %i.ch = add i64 %i.by, 1, !dbg !13315           ; 2 uses
  store i64 %i.ch, ptr %i.be, align 8, !dbg !13315, !alias.scope !13029
  br label %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit.thread, !dbg !13316

_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit.thread: ; preds = %.lr.ph235, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutCscDgBWNIBxoJ_4bulk.exit
  %i.ci = phi i64 [ %i.ch, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutCscDgBWNIBxoJ_4bulk.exit ], [ %i.by, %.lr.ph235 ], !dbg !13317 ; 3 uses
    #dbg_value(ptr %i.h, !13038, !DIExpression(), !13041)
  %i.cj = icmp sgt i64 %i.ci, -1, !dbg !13318
  call void @llvm.assume(i1 %i.cj), !dbg !13319
  %i.ck = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake27ALL_KEY_EXCHANGE_ALGORITHMS, i64 8), align 8, !dbg !13320, !noundef !1955
  %i.cl = icmp eq i64 %i.ci, %i.ck, !dbg !13321
    #dbg_value(ptr %i.bm, !12312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12877)
    #dbg_value(ptr undef, !12411, !DIExpression(), !12427)
    #dbg_value(ptr %i.bm, !12421, !DIExpression(), !12878)
    #dbg_value(ptr %i.bm, !12587, !DIExpression(), !12591)
    #dbg_value(ptr %i.bk, !12422, !DIExpression(), !12879)
    #dbg_value(ptr poison, !12881, !DIExpression(), !12887)
    #dbg_value(ptr poison, !12884, !DIExpression(), !12888)
  %i.cm = icmp eq ptr %i.bm, %i.bk
  %or.cond = select i1 %i.cl, i1 true, i1 %i.cm, !dbg !13321
  br i1 %or.cond, label %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit.thread._crit_edge, label %.lr.ph238, !dbg !13321

_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit.thread._crit_edge: ; preds = %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit.thread, %bb.r
  %i.cn = phi i64 [ 0, %bb.r ], [ %i.ci, %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit.thread ] ; 2 uses
    #dbg_value(ptr %1, !12596, !DIExpression(), !13043)
    #dbg_value(ptr %1, !12600, !DIExpression(), !13046)
  %i.co = load ptr, ptr %1, align 8, !dbg !13322, !nonnull !1955, !noundef !1955 ; 3 uses
    #dbg_value(ptr %i.co, !12614, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13050)
    #dbg_value(ptr %i.co, !12625, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13053)
    #dbg_value(ptr %i.co, !12630, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13056)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24, !dbg !13323
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !13323, !nonnull !1955, !noundef !1955 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 32, !dbg !13324
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !13324, !noundef !1955 ; 2 uses
    #dbg_value(i64 %i.cs, !12659, !DIExpression(), !13066)
    #dbg_value(i64 %i.cs, !12671, !DIExpression(), !13069)
    #dbg_value(ptr %i.cq, !12669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13070)
    #dbg_value(ptr %i.cq, !12656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13071)
    #dbg_value(i64 %i.cs, !12669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13070)
    #dbg_value(i64 %i.cs, !12656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13071)
    #dbg_value(ptr %i.cq, !12660, !DIExpression(), !13072)
    #dbg_value(ptr %i.cq, !12674, !DIExpression(), !13069)
  %.idx217 = shl nuw nsw i64 %i.cs, 3, !dbg !13325
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx217, !dbg !13325
    #dbg_value(ptr %i.cq, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13073)
    #dbg_value(ptr %i.ct, !12316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13073)
    #dbg_value(ptr undef, !12379, !DIExpression(), !12398)
    #dbg_value(ptr %i.cq, !12392, !DIExpression(), !13074)
    #dbg_value(ptr %i.cq, !12448, !DIExpression(), !12594)
    #dbg_value(ptr %i.ct, !12393, !DIExpression(), !13075)
    #dbg_value(ptr poison, !12685, !DIExpression(), !13077)
    #dbg_value(ptr poison, !12689, !DIExpression(), !13078)
  %i.cu = icmp eq i64 %i.cs, 0, !dbg !13326
  br i1 %i.cu, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0ECscDgBWNIBxoJ_4bulk.exit._crit_edge, label %.lr.ph216, !dbg !13327

.lr.ph216:                                        ; preds = %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit.thread._crit_edge
  %i.cv = load ptr, ptr @_RNvNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake27ALL_KEY_EXCHANGE_ALGORITHMS, align 8, !nonnull !1955, !noundef !1955 ; 3 uses
  %i.cw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake27ALL_KEY_EXCHANGE_ALGORITHMS, i64 8), align 8, !noundef !1955 ; 3 uses
  store ptr %i.cv, ptr %i.g, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.cw, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  %.not.i = icmp samesign eq i64 %i.cw, 0
  %i.cz = load ptr, ptr %i.bd, align 8, !nonnull !1955 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cn
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i.preheader, !dbg !13328

.lr.ph.i.preheader:                               ; preds = %.lr.ph216
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.not241 = icmp samesign eq i64 %i.cn, 0
  br label %.lr.ph.i, !dbg !13328

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0ECscDgBWNIBxoJ_4bulk.exit.loopexit: ; preds = %.lr.ph243
    #dbg_value(ptr %i.dc, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13073)
    #dbg_value(ptr undef, !12379, !DIExpression(), !12398)
    #dbg_value(ptr %i.dc, !12392, !DIExpression(), !13074)
    #dbg_value(ptr %i.dc, !12448, !DIExpression(), !12594)
    #dbg_value(ptr %i.ct, !12393, !DIExpression(), !13075)
    #dbg_value(ptr poison, !12685, !DIExpression(), !13077)
    #dbg_value(ptr poison, !12689, !DIExpression(), !13078)
  %i.db = icmp eq ptr %i.dc, %i.ct, !dbg !13326
  br i1 %i.db, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0ECscDgBWNIBxoJ_4bulk.exit._crit_edge, label %.lr.ph.i, !dbg !13327

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0ECscDgBWNIBxoJ_4bulk.exit.loopexit
  %.sroa.010.0214 = phi ptr [ %i.dc, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0ECscDgBWNIBxoJ_4bulk.exit.loopexit ], [ %i.cq, %.lr.ph.i.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.010.0214, i64 8, !dbg !13329 ; 2 uses
    #dbg_value(ptr %i.dc, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13073)
    #dbg_value(ptr %.sroa.010.0214, !12317, !DIExpression(), !13079)
    #dbg_value(ptr %.sroa.010.0214, !13080, !DIExpression(), !13089)
    #dbg_value(ptr %i.h, !12373, !DIExpression(), !11877)
    #dbg_value(ptr undef, !12372, !DIExpression(), !11877)
    #dbg_value(ptr undef, !12350, !DIExpression(), !11876)
    #dbg_value(i64 1, !13090, !DIExpression(), !12123)
    #dbg_value(ptr %i.cv, !12361, !DIExpression(), !12124)
    #dbg_value(ptr %i.cv, !13091, !DIExpression(), !12123)
    #dbg_value(ptr %i.cy, !12362, !DIExpression(), !12125)
    #dbg_value(ptr poison, !13093, !DIExpression(), !12128)
    #dbg_value(ptr poison, !13094, !DIExpression(), !12129)
  br label %bb.w, !dbg !13328

_RNCNvMs0_NtCsjx2R6KBUtVL_6rustls7builderINtB7_13ConfigBuilderNtNtNtB9_6client11client_conn12ClientConfigNtB7_13WantsVersionsE22with_protocol_versions0CscDgBWNIBxoJ_4bulk.exit.loopexit.i: ; preds = %bb.x, %bb.w
    #dbg_value(ptr %i.de, !12361, !DIExpression(), !12124)
    #dbg_value(ptr %i.de, !13091, !DIExpression(), !12123)
    #dbg_value(ptr %i.cy, !12362, !DIExpression(), !12125)
    #dbg_value(ptr poison, !13093, !DIExpression(), !12128)
    #dbg_value(ptr poison, !13094, !DIExpression(), !12129)
  %.not13.i = icmp eq ptr %i.de, %i.cy, !dbg !13330
  br i1 %.not13.i, label %.loopexit, label %bb.w, !dbg !13328

bb.w:                                             ; preds = %_RNCNvMs0_NtCsjx2R6KBUtVL_6rustls7builderINtB7_13ConfigBuilderNtNtNtB9_6client11client_conn12ClientConfigNtB7_13WantsVersionsE22with_protocol_versions0CscDgBWNIBxoJ_4bulk.exit.loopexit.i, %.lr.ph.i
  %i.dd = phi ptr [ %i.cv, %.lr.ph.i ], [ %i.de, %_RNCNvMs0_NtCsjx2R6KBUtVL_6rustls7builderINtB7_13ConfigBuilderNtNtNtB9_6client11client_conn12ClientConfigNtB7_13WantsVersionsE22with_protocol_versions0CscDgBWNIBxoJ_4bulk.exit.loopexit.i ] ; 2 uses
    #dbg_value(ptr %i.dd, !12361, !DIExpression(), !12124)
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1, !dbg !13331 ; 2 uses
    #dbg_value(ptr %i.dd, !12374, !DIExpression(), !12130)
  %.val8.i = load i8, ptr %i.dd, align 1, !dbg !13332, !alias.scope !13096, !noalias !13097
    #dbg_value(ptr poison, !13099, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12138)
    #dbg_value(ptr poison, !13103, !DIExpression(), !12138)
    #dbg_value(ptr poison, !13105, !DIExpression(), !12141)
    #dbg_value(ptr %i.cz, !13106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(i64 %i.cn, !13106, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12141)
    #dbg_value(ptr poison, !12957, !DIExpression(), !12143)
    #dbg_value(ptr %i.cz, !12958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12143)
    #dbg_value(i64 %i.cn, !12958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12143)
    #dbg_value(ptr poison, !12949, !DIExpression(), !12145)
    #dbg_value(ptr undef, !12948, !DIExpression(), !12145)
    #dbg_value(ptr undef, !12936, !DIExpression(), !12147)
    #dbg_value(i64 1, !12970, !DIExpression(), !12149)
    #dbg_value(ptr %i.cz, !12937, !DIExpression(), !12150)
    #dbg_value(ptr %i.cz, !12974, !DIExpression(), !12149)
    #dbg_value(ptr %i.da, !12938, !DIExpression(), !12151)
    #dbg_value(ptr poison, !12977, !DIExpression(), !12153)
    #dbg_value(ptr poison, !12980, !DIExpression(), !12154)
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.not241, label %_RNCNvMs0_NtCsjx2R6KBUtVL_6rustls7builderINtB7_13ConfigBuilderNtNtNtB9_6client11client_conn12ClientConfigNtB7_13WantsVersionsE22with_protocol_versions0CscDgBWNIBxoJ_4bulk.exit.loopexit.i, label %.lr.ph243, !dbg !13333

bb.x:                                             ; preds = %.lr.ph243
  %i.df = getelementptr inbounds nuw i8, ptr %i.dg, i64 1, !dbg !13334 ; 2 uses
    #dbg_value(ptr %i.df, !12937, !DIExpression(), !12150)
    #dbg_value(ptr %i.df, !12974, !DIExpression(), !12149)
    #dbg_value(ptr %i.da, !12938, !DIExpression(), !12151)
    #dbg_value(ptr poison, !12977, !DIExpression(), !12153)
    #dbg_value(ptr poison, !12980, !DIExpression(), !12154)
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.not = icmp eq ptr %i.df, %i.da, !dbg !13335
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.not, label %_RNCNvMs0_NtCsjx2R6KBUtVL_6rustls7builderINtB7_13ConfigBuilderNtNtNtB9_6client11client_conn12ClientConfigNtB7_13WantsVersionsE22with_protocol_versions0CscDgBWNIBxoJ_4bulk.exit.loopexit.i, label %.lr.ph243, !dbg !13333

.lr.ph243:                                        ; preds = %bb.w, %bb.x
  %i.dg = phi ptr [ %i.df, %bb.x ], [ %i.cz, %bb.w ] ; 2 uses
    #dbg_value(ptr %i.dg, !12937, !DIExpression(), !12150)
    #dbg_value(ptr %i.dg, !12950, !DIExpression(), !12155)
  %.val8.i.i.i.i = load i8, ptr %i.dg, align 1, !dbg !13336, !range !4399, !alias.scope !13108, !noalias !13109, !noundef !1955
    #dbg_value(ptr poison, !12985, !DIExpression(DW_OP_deref, DW_OP_deref), !12162)
    #dbg_value(ptr poison, !12989, !DIExpression(), !12162)
    #dbg_value(ptr poison, !12991, !DIExpression(), !12164)
    #dbg_value(ptr poison, !12995, !DIExpression(), !12164)
    #dbg_value(i8 %.val8.i.i.i.i, !12996, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !12165)
    #dbg_value(i8 %.val8.i, !12997, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !12166)
  %i.dh = icmp eq i8 %.val8.i.i.i.i, %.val8.i, !dbg !13337
  br i1 %i.dh, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0ECscDgBWNIBxoJ_4bulk.exit.loopexit, label %bb.x, !dbg !13336

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0ECscDgBWNIBxoJ_4bulk.exit._crit_edge: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0ECscDgBWNIBxoJ_4bulk.exit.loopexit, %_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsCscDgBWNIBxoJ_4bulk.exit.thread._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !13110), !dbg !13338
    #dbg_value(ptr poison, !13112, !DIExpression(), !12186)
    #dbg_value(ptr %2, !13140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12187)
    #dbg_value(ptr %2, !13145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12190)
    #dbg_value(ptr %2, !13150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12193)
    #dbg_value(ptr %2, !13152, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12199)
    #dbg_value(i64 %3, !13140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12187)
    #dbg_value(i64 %3, !13145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12190)
    #dbg_value(i64 %3, !13150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12193)
    #dbg_value(i64 %3, !13152, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12199)
    #dbg_value(i64 1, !13158, !DIExpression(), !12202)
    #dbg_value(ptr null, !13141, !DIExpression(), !12203)
    #dbg_value(i64 %3, !13154, !DIExpression(), !12204)
    #dbg_value(i64 %3, !13164, !DIExpression(), !12207)
    #dbg_value(ptr %2, !13155, !DIExpression(), !12208)
    #dbg_value(ptr %2, !13168, !DIExpression(), !12207)
  %.idx.i = shl nuw nsw i64 %3, 3, !dbg !13339    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i, !dbg !13339
    #dbg_value(ptr %2, !13142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12209)
    #dbg_value(ptr %i.di, !13142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12209)
    #dbg_value(ptr undef, !13112, !DIExpression(), !12186)
    #dbg_value(ptr %2, !13131, !DIExpression(), !12210)
    #dbg_value(ptr %2, !13162, !DIExpression(), !12202)
    #dbg_value(ptr %i.di, !13132, !DIExpression(), !12211)
    #dbg_value(ptr poison, !13171, !DIExpression(), !12214)
    #dbg_value(ptr poison, !13174, !DIExpression(), !12215)
  %i.dj = icmp eq i64 %3, 0, !dbg !13340
  br i1 %i.dj, label %_RNvMs0_NtCsjx2R6KBUtVL_6rustls8versionsNtB5_15EnabledVersions3new.exit, label %.lr.ph.i178.preheader, !dbg !13341

.lr.ph.i178.preheader:                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0ECscDgBWNIBxoJ_4bulk.exit._crit_edge
  %i.dk = add nsw i64 %.idx.i, -8, !dbg !13341    ; 2 uses
  %i.dl = lshr exact i64 %i.dk, 3, !dbg !13341
  %i.dm = add nuw nsw i64 %i.dl, 1, !dbg !13341
  %xtraiter = and i64 %i.dm, 3, !dbg !13341       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13341
  br i1 %lcmp.mod.not, label %.lr.ph.i178.prol.loopexit, label %.lr.ph.i178.prol, !dbg !13341

.lr.ph.i178.prol:                                 ; preds = %.lr.ph.i178.preheader, %.lr.ph.i178.prol
  %.sroa.0.016.i.prol = phi ptr [ %spec.select.i.prol, %.lr.ph.i178.prol ], [ null, %.lr.ph.i178.preheader ]
  %.sroa.01.015.i.prol = phi ptr [ %i.dn, %.lr.ph.i178.prol ], [ %2, %.lr.ph.i178.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i178.prol ], [ 0, %.lr.ph.i178.preheader ]
    #dbg_value(ptr %.sroa.0.016.i.prol, !13141, !DIExpression(), !12203)
    #dbg_value(ptr %.sroa.01.015.i.prol, !13142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12209)
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.01.015.i.prol, i64 8, !dbg !13342 ; 2 uses
    #dbg_value(ptr %i.dn, !13142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12209)
    #dbg_value(ptr %.sroa.01.015.i.prol, !13143, !DIExpression(), !12216)
  %i.do = load ptr, ptr %.sroa.01.015.i.prol, align 8, !dbg !13343, !alias.scope !13110, !nonnull !1955, !align !5674, !noundef !1955 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !dbg !13343, !range !13176, !noalias !13110, !noundef !1955
  %i.dq = icmp eq i16 %i.dp, 5, !dbg !13344
  %spec.select.i.prol = select i1 %i.dq, ptr %i.do, ptr %.sroa.0.016.i.prol, !dbg !13344 ; 3 uses
    #dbg_value(ptr %spec.select.i.prol, !13141, !DIExpression(), !12203)
    #dbg_value(ptr undef, !13112, !DIExpression(), !12186)
    #dbg_value(ptr %i.dn, !13131, !DIExpression(), !12210)
    #dbg_value(ptr %i.dn, !13162, !DIExpression(), !12202)
    #dbg_value(ptr %i.di, !13132, !DIExpression(), !12211)
    #dbg_value(ptr poison, !13171, !DIExpression(), !12214)
    #dbg_value(ptr poison, !13174, !DIExpression(), !12215)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !13341 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !13341
  br i1 %prol.iter.cmp.not, label %.lr.ph.i178.prol.loopexit, label %.lr.ph.i178.prol, !dbg !13341, !llvm.loop !12217

.lr.ph.i178.prol.loopexit:                        ; preds = %.lr.ph.i178.prol, %.lr.ph.i178.preheader
  %spec.select.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i178.preheader ], [ %spec.select.i.prol, %.lr.ph.i178.prol ]
  %.sroa.0.016.i.unr = phi ptr [ null, %.lr.ph.i178.preheader ], [ %spec.select.i.prol, %.lr.ph.i178.prol ]
  %.sroa.01.015.i.unr = phi ptr [ %2, %.lr.ph.i178.preheader ], [ %i.dn, %.lr.ph.i178.prol ]
  %i.dr = icmp ult i64 %i.dk, 24, !dbg !13341
  br i1 %i.dr, label %_RNvMs0_NtCsjx2R6KBUtVL_6rustls8versionsNtB5_15EnabledVersions3new.exit, label %.lr.ph.i178, !dbg !13341

.lr.ph.i178:                                      ; preds = %.lr.ph.i178.prol.loopexit, %.lr.ph.i178
  %.sroa.0.016.i = phi ptr [ %spec.select.i.3, %.lr.ph.i178 ], [ %.sroa.0.016.i.unr, %.lr.ph.i178.prol.loopexit ]
  %.sroa.01.015.i = phi ptr [ %i.ee, %.lr.ph.i178 ], [ %.sroa.01.015.i.unr, %.lr.ph.i178.prol.loopexit ] ; 5 uses
    #dbg_value(ptr %.sroa.0.016.i, !13141, !DIExpression(), !12203)
    #dbg_value(ptr %.sroa.01.015.i, !13142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12209)
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.01.015.i, i64 8, !dbg !13342
    #dbg_value(ptr %i.ds, !13142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12209)
    #dbg_value(ptr %.sroa.01.015.i, !13143, !DIExpression(), !12216)
  %i.dt = load ptr, ptr %.sroa.01.015.i, align 8, !dbg !13343, !alias.scope !13110, !nonnull !1955, !align !5674, !noundef !1955 ; 2 uses
  %i.du = load i16, ptr %i.dt, align 2, !dbg !13343, !range !13176, !noalias !13110, !noundef !1955
  %i.dv = icmp eq i16 %i.du, 5, !dbg !13344
  %spec.select.i = select i1 %i.dv, ptr %i.dt, ptr %.sroa.0.016.i, !dbg !13344
    #dbg_value(ptr undef, !13112, !DIExpression(), !12186)
    #dbg_value(ptr %i.ds, !13131, !DIExpression(), !12210)
    #dbg_value(ptr %i.ds, !13162, !DIExpression(), !12202)
    #dbg_value(ptr %i.di, !13132, !DIExpression(), !12211)
    #dbg_value(ptr poison, !13171, !DIExpression(), !12214)
    #dbg_value(ptr poison, !13174, !DIExpression(), !12215)
    #dbg_value(ptr %spec.select.i, !13141, !DIExpression(), !12203)
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.01.015.i, i64 16, !dbg !13342
    #dbg_value(ptr %i.dw, !13142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12209)
    #dbg_value(ptr %i.ds, !13143, !DIExpression(), !12216)
  %i.dx = load ptr, ptr %i.ds, align 8, !dbg !13343, !alias.scope !13110, !nonnull !1955, !align !5674, !noundef !1955 ; 2 uses
  %i.dy = load i16, ptr %i.dx, align 2, !dbg !13343, !range !13176, !noalias !13110, !noundef !1955
  %i.dz = icmp eq i16 %i.dy, 5, !dbg !13344
  %spec.select.i.1 = select i1 %i.dz, ptr %i.dx, ptr %spec.select.i, !dbg !13344
    #dbg_value(ptr %i.dw, !13131, !DIExpression(), !12210)
    #dbg_value(ptr %i.dw, !13162, !DIExpression(), !12202)
    #dbg_value(ptr %spec.select.i.1, !13141, !DIExpression(), !12203)
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.01.015.i, i64 24, !dbg !13342
    #dbg_value(ptr %i.ea, !13142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12209)
    #dbg_value(ptr %i.dw, !13143, !DIExpression(), !12216)
  %i.eb = load ptr, ptr %i.dw, align 8, !dbg !13343, !alias.scope !13110, !nonnull !1955, !align !5674, !noundef !1955 ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 2, !dbg !13343, !range !13176, !noalias !13110, !noundef !1955
  %i.ed = icmp eq i16 %i.ec, 5, !dbg !13344
  %spec.select.i.2 = select i1 %i.ed, ptr %i.eb, ptr %spec.select.i.1, !dbg !13344
    #dbg_value(ptr %i.ea, !13131, !DIExpression(), !12210)
    #dbg_value(ptr %i.ea, !13162, !DIExpression(), !12202)
    #dbg_value(ptr %spec.select.i.2, !13141, !DIExpression(), !12203)
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.01.015.i, i64 32, !dbg !13342 ; 2 uses
end_hunk_0
