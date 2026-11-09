Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeEB4_:bb.a
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [112 x i8], align 8               ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [96 x i8], align 8                ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load i32, ptr %i.k, align 8, !noundef !26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.m, align 8, !nonnull !26, !noundef !26
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val36 = load ptr, ptr %i.n, align 8, !nonnull !26, !align !32, !noundef !26 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val36, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !36, !invariant.load !26
  %i.q = add nsw i64 %i.p, -1
  %i.r = and i64 %i.q, -16
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr i8, ptr %.val36, i64 32
  %.val.i.i = load ptr, ptr %i.u, align 8
  %i.v = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %i.t), !inline_history !466 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !26, !nonnull !26
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef %i.w), !inline_history !466
  %i.aa = load i128, ptr %i.f, align 16, !noundef !26
  %i.ab = icmp ne i128 %i.aa, -166190901438446393179604529744170412853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not1.i = icmp eq ptr %i.w, null
  %.not.i = or i1 %.not1.i, %i.ab
  br i1 %.not.i, label %bb.b, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float32TypeECs9JgWGBoX3PY_12lance_linalg.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #74
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float32TypeECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a
  %i.ac = icmp eq i32 %i.l, 0
  br i1 %i.ac, label %bb.c, label %.lr.ph.preheader.i.i.i, !prof !31

bb.c:                                             ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float32TypeECs9JgWGBoX3PY_12lance_linalg.exit
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #74
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float32TypeECs9JgWGBoX3PY_12lance_linalg.exit
  %i.ad = sext i32 %i.l to i64                    ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !noundef !26
  %i.ag = lshr i64 %i.af, 2                       ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noundef !26 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !534
  %umin.i.i.i = call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ag) ; 5 uses
  %i.aj = shl nuw i64 %umin.i.i.i, 2              ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.ai, i64 %i.aj ; 3 uses
  %i.ak = sub nuw nsw i64 %i.ag, %umin.i.i.i      ; 4 uses
  %.not.i1.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  %i.al = icmp eq i64 %i.ag, 0
  %or.cond.i.i.i = or i1 %.not.i1.i.i.i.i.i.i.i, %i.al
  br i1 %or.cond.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1q_5slice4iter6ChunksfEINtNtB1m_3map3MapINtB2g_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB3i_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0EE9from_iterB3k_.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %.lr.ph.preheader.i.i.i
  %i.am = add nsw i64 %umin.i.i.i, -1
  %xtraiter = and i64 %umin.i.i.i, 3              ; 3 uses
  %i.an = icmp ult i64 %i.am, 3
  br i1 %i.an, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new:   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %umin.i.i.i, 4611686018427387900
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bd, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi float [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bc, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load float, ptr %i.ao, align 4, !alias.scope !535, !noalias !536, !noundef !26 ; 2 uses
  %i.ap = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = fadd float %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load float, ptr %i.as, align 4, !alias.scope !535, !noalias !536, !noundef !26 ; 2 uses
  %i.at = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.au = fadd float %i.aq, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load float, ptr %i.aw, align 4, !alias.scope !535, !noalias !536, !noundef !26 ; 2 uses
  %i.ax = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.ay = fadd float %i.au, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load float, ptr %i.ba, align 4, !alias.scope !535, !noalias !536, !noundef !26 ; 2 uses
  %i.bb = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.bc = fadd float %i.ay, %i.bb                 ; 3 uses
  %i.bd = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.unr-lcssa:                                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bd, %.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi float [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bc, %.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod67)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bh, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi float [ %i.bg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = load float, ptr %i.be, align 4, !alias.scope !535, !noalias !536, !noundef !26 ; 2 uses
  %i.bf = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bg = fadd float %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.bf ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !494

.epilog-lcssa:                                    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, %.unr-lcssa
  %.lcssa65 = phi float [ %i.bc, %.unr-lcssa ], [ %i.bg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.bi = call float @llvm.sqrt.f32(float %.lcssa65) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.val3.i.i.i5.i.i.i.i.i.i.i = load float, ptr %i.ai, align 4, !noalias !537, !noundef !26
  %i.bk = fdiv float %.val3.i.i.i5.i.i.i.i.i.i.i, %i.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %gepdiff = add i64 %i.aj, -4
  %i.bl = lshr exact i64 %gepdiff, 2              ; 2 uses
  %.not56.i.i.i.i.i.i.i = icmp eq ptr %scevgep.i.i.i, null
  %i.bm = icmp eq i64 %i.ak, 0
  %or.cond.i.i.i.i.i = or i1 %i.bm, %.not56.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i: ; preds = %.epilog-lcssa
  %i.bn = udiv i64 %i.ak, %i.ad
  %i.bo = urem i64 %i.ak, %i.ad
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.bo, 0
  %.neg.i.i.i.i.i.i.i = sext i1 %.not.i.i.i.i.i.i.i.i.i to i64
  %i.bp = icmp eq i64 %i.bn, %.neg.i.i.i.i.i.i.i
  br i1 %i.bp, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksfEINtNtB7_3map3MapINtB17_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i, %.epilog-lcssa
  br label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksfEINtNtB7_3map3MapINtB17_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksfEINtNtB7_3map3MapINtB17_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i
  %.sink82.i.i.sroa.phi.i.i.i.i.i = phi ptr [ %.sroa.7.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.5.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.bl, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %.sink82.i.i.sroa.phi.i.i.i.i.i, align 8, !alias.scope !538, !noalias !534
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.bq = call i64 @llvm.umax.i64(i64 %i.bl, i64 3) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = add nuw nsw i64 %i.bq, 1 ; 2 uses
  %i.br = shl i64 %.sroa.0.0.i.i.i.i.i.i, 2       ; 4 uses
  %.not.i.i8.i.i.i.i.i = icmp ugt i64 %i.br, 9223372036854775804
  br i1 %.not.i.i8.i.i.i.i.i, label %bb.f, label %bb.d, !prof !35

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksfEINtNtB7_3map3MapINtB17_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !539
  %i.bt = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.br, i64 noundef range(i64 1, 9) 4) #76, !noalias !539 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.f, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksfEINtNtB7_3map3MapINtB17_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 4, %bb.e ], [ 0, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksfEINtNtB7_3map3MapINtB17_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i ]
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.br) #74, !noalias !534
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.d ], [ %i.bt, %bb.e ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.bv = icmp samesign ult i64 %i.bq, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.bv)
  store float %i.bk, ptr %.sroa.10.0.i.i.i.i.i.i, align 4, !noalias !534
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !534
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !534
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !534
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  br label %.split.i.i.i.preheader.i.i.i.i.i.i

.split.i.i.i.preheader.i.i.i.i.i.i:               ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i
  %i.bw = phi ptr [ %i.dr, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ]
  %.sroa.7.0.copyload.i.i.i = phi i64 [ %i.dt, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 6 uses
  %i.bx = phi float [ %i.db, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %i.bi, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ]
  %.val.i.i47.i.i.i.i.i.i.i = phi i64 [ %.val.i.i44.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %i.ak, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 4 uses
  %.val4.i.i.i38.i.i.i.i.i.i.i = phi ptr [ %.val4.i.i.i40.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %scevgep.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 2 uses
  %i.by = phi ptr [ %i.dc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %scevgep.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 9 uses
  %i.bz = phi ptr [ %i.dd, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %i.bj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %.val4.i.i.i38.i.i.i.i.i.i.i
  br i1 %i.ca, label %.lr.ph.preheader.i.i.i.i.i.i, label %bb.g

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.split.i.i.i.preheader.i.i.i.i.i.i
  %umin.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ad, i64 %.val.i.i47.i.i.i.i.i.i.i) ; 5 uses
  %i.cb = shl i64 %umin.i.i.i.i.i.i, 2
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.by, i64 %i.cb ; 2 uses
  %i.cc = sub i64 %.val.i.i47.i.i.i.i.i.i.i, %umin.i.i.i.i.i.i
  %.not.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  %i.cd = icmp eq i64 %.val.i.i47.i.i.i.i.i.i.i, 0
  %or.cond = select i1 %.not.i1.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.cd
  br i1 %or.cond, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksfEINtNtB1h_3map3MapINtB2b_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %i.ce = add i64 %umin.i.i.i.i.i.i, -1
  %xtraiter68 = and i64 %umin.i.i.i.i.i.i, 3      ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 3
  br i1 %i.cf, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter73 = and i64 %umin.i.i.i.i.i.i, -4
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cv, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi float [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cu, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %niter74 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter74.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load float, ptr %i.cg, align 4, !alias.scope !542, !noalias !543, !noundef !26 ; 2 uses
  %i.ch = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = fadd float %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load float, ptr %i.ck, align 4, !alias.scope !542, !noalias !543, !noundef !26 ; 2 uses
  %i.cl = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.cm = fadd float %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load float, ptr %i.co, align 4, !alias.scope !542, !noalias !543, !noundef !26 ; 2 uses
  %i.cp = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.cq = fadd float %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load float, ptr %i.cs, align 4, !alias.scope !542, !noalias !543, !noundef !26 ; 2 uses
  %i.ct = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.cu = fadd float %i.cq, %i.ct                 ; 3 uses
  %i.cv = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter74.next.3 = add i64 %niter74, 4           ; 2 uses
  %niter74.ncmp.3 = icmp eq i64 %niter74.next.3, %unroll_iter73
  br i1 %niter74.ncmp.3, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod70.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cv, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi float [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cu, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter68, 0
  call void @llvm.assume(i1 %lcmp.mod72)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil:        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.cz, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi float [ %i.cy, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter69 = phi i64 [ %epil.iter69.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = load float, ptr %i.cw, align 4, !alias.scope !542, !noalias !543, !noundef !26 ; 2 uses
  %i.cx = fmul float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.cy = fadd float %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.cx ; 2 uses
  %i.cz = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter69.next = add i64 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i64 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !517

_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa
  %.lcssa = phi float [ %i.cu, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.cy, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.da = call float @llvm.sqrt.f32(float %.lcssa)
  br label %bb.g

bb.g:                                             ; preds = %.split.i.i.i.preheader.i.i.i.i.i.i, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.db = phi float [ %i.bx, %.split.i.i.i.preheader.i.i.i.i.i.i ], [ %i.da, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val.i.i44.i.i.i.i.i.i.i = phi i64 [ %.val.i.i47.i.i.i.i.i.i.i, %.split.i.i.i.preheader.i.i.i.i.i.i ], [ %i.cc, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.val4.i.i.i40.i.i.i.i.i.i.i = phi ptr [ %.val4.i.i.i38.i.i.i.i.i.i.i, %.split.i.i.i.preheader.i.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dc = phi ptr [ %i.by, %.split.i.i.i.preheader.i.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.us-phi33.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.split.i.i.i.preheader.i.i.i.i.i.i ], [ %i.by, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.us-phi33.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i = load float, ptr %.us-phi33.i.i.i.i.i.i.i.i.i, align 4, !noalias !544, !noundef !26
  %i.de = fdiv float %.val3.i.i.i.i.i.i.i.i.i.i.i.i, %i.db
  %i.df = icmp samesign ult i64 %.sroa.7.0.copyload.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.df)
  %i.dg = load i64, ptr %i.a, align 8, !range !37, !alias.scope !545, !noalias !534, !noundef !26
  %i.dh = icmp eq i64 %.sroa.7.0.copyload.i.i.i, %i.dg
  br i1 %i.dh, label %bb.h, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i)
  %i.di = ptrtoint ptr %.val4.i.i.i40.i.i.i.i.i.i.i to i64
  %i.dj = ptrtoint ptr %i.dd to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  %i.dl = lshr exact i64 %i.dk, 2                 ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  %i.dm = icmp eq i64 %.val.i.i44.i.i.i.i.i.i.i, 0
  %or.cond.i.i12.i.i.i.i.i = select i1 %.not56.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.dm
  br i1 %or.cond.i.i12.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.dn = udiv i64 %.val.i.i44.i.i.i.i.i.i.i, %i.ad
  %i.do = urem i64 %.val.i.i44.i.i.i.i.i.i.i, %i.ad
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.do, 0
  %.neg.i.i.i.i.i.i.i.i.i = sext i1 %.not.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.dp = icmp eq i64 %i.dn, %.neg.i.i.i.i.i.i.i.i.i
  br i1 %i.dp, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i.i.i, label %bb.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i.i.i, %bb.h
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i.i.i
  %.sink82.i.i.sroa.phi.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dl, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i.i.i.i.i, ptr %.sink82.i.i.sroa.phi.i.i.i.i.i.i.i, align 8, !alias.scope !546, !noalias !547
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i)
  %i.dq = add nuw nsw i64 %i.dl, 1
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.7.0.copyload.i.i.i, i64 noundef %i.dq, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !534

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i.i: ; preds = %bb.i
  %.pre42.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !545, !noalias !534
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i.i, %bb.g
  %i.dr = phi ptr [ %.pre42.i.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i.i ], [ %i.bw, %bb.g ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.sroa.7.0.copyload.i.i.i
  store float %i.de, ptr %i.ds, align 4, !noalias !547
  %i.dt = add nuw nsw i64 %.sroa.7.0.copyload.i.i.i, 1 ; 2 uses
  store i64 %i.dt, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !545, !noalias !534
  br label %.split.i.i.i.preheader.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !534 ; 2 uses
  %i.du = icmp eq i64 %.val.pre.i.i.i.i.i, 0
  br i1 %i.du, label %common.resume, label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i
  %.val7.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !534, !nonnull !26, !noundef !26
  %i.dv = shl nuw i64 %.val.pre.i.i.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !534
  br label %common.resume

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksfEINtNtB1h_3map3MapINtB2b_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !noalias !548
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !548
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1q_5slice4iter6ChunksfEINtNtB1m_3map3MapINtB2g_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB3i_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0EE9from_iterB3k_.exit.i.i.i

common.resume:                                    ; preds = %bb.ag, %bb.ad, %bb.ac, %.loopexit.split-lp.i.i.i.i.i, %bb.j, %bb.l, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.eg, %bb.n ], [ %i.ee, %bb.l ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i, %bb.j ], [ %i.fi, %bb.ag ], [ %i.et, %bb.ac ], [ %i.et, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1q_5slice4iter6ChunksfEINtNtB1m_3map3MapINtB2g_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB3i_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0EE9from_iterB3k_.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksfEINtNtB1h_3map3MapINtB2b_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksfEINtNtB1h_3map3MapINtB2b_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.5.0.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksfEINtNtB1h_3map3MapINtB2b_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i ], [ inttoptr (i64 4 to ptr), %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksfEINtNtB1h_3map3MapINtB2b_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !534
  %i.dw = icmp samesign ult i64 %.sroa.7.0.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.dw)
  %i.dx = icmp samesign ult i64 %.sroa.0.0.i.i.i, 2305843009213693952
  %i.dy = shl nuw nsw i64 %.sroa.0.0.i.i.i, 2
  %i.dz = shl nuw nsw i64 %.sroa.7.0.i.i.i, 2     ; 2 uses
  call void @llvm.assume(i1 %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !549
  store i64 1, ptr %i.b, align 8, !noalias !549
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ea, align 8, !noalias !549
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.5.0.i.i.i, ptr %i.eb, align 8, !noalias !549
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.dz, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !549
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !549
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !549
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.dy, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !549
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !550
  %i.ec = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !550 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.k, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter6ChunksfEINtNtB8_3map3MapINtB12_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB22_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtBa_6traits8iterator8Iterator7collectNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEB24_.exit.i, !prof !31

bb.k:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1q_5slice4iter6ChunksfEINtNtB1m_3map3MapINtB2g_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB3i_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0EE9from_iterB3k_.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i.i unwind label %bb.l, !noalias !549

.noexc.i.i.i:                                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #77
          to label %common.resume unwind label %bb.m, !noalias !549

bb.m:                                             ; preds = %bb.l
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !549
  unreachable

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter6ChunksfEINtNtB8_3map3MapINtB12_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB22_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtBa_6traits8iterator8Iterator7collectNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEB24_.exit.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1q_5slice4iter6ChunksfEINtNtB1m_3map3MapINtB2g_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB3i_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0EE9from_iterB3k_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ec, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !551
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 11, i64 24, i1 false), !noalias !551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !551
  store ptr %i.ec, ptr %i.c, align 8, !noalias !551
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !551
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.dz, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !551
  invoke fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferfE3newCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %.sroa.7.0.i.i.i)
          to label %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksfEINtNtB27_3map3MapINtB31_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB43_16do_normalize_fslB1j_E0EEB45_.exit unwind label %bb.n, !noalias !551

bb.n:                                             ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter6ChunksfEINtNtB8_3map3MapINtB12_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB22_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtBa_6traits8iterator8Iterator7collectNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEB24_.exit.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.e) #77
          to label %common.resume unwind label %bb.o, !noalias !551

bb.o:                                             ; preds = %bb.n
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !551
  unreachable

_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksfEINtNtB27_3map3MapINtB31_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB43_16do_normalize_fslB1j_E0EEB45_.exit: ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter6ChunksfEINtNtB8_3map3MapINtB12_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB22_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeE0ENtNtNtBa_6traits8iterator8Iterator7collectNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEB24_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !551
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.j, i8 11, i64 24, i1 false), !alias.scope !533
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !552
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr null, ptr %i.ej, align 8, !alias.scope !533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !551
  %i.ek = load i8, ptr %1, align 8, !range !38, !noundef !26
  %.not35 = icmp eq i8 %i.ek, 29
  br i1 %.not35, label %bb.p, label %bb.q, !prof !24

bb.p:                                             ; preds = %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksfEINtNtB27_3map3MapINtB31_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB43_16do_normalize_fslB1j_E0EEB45_.exit
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !26, !noundef !26 ; 4 uses
  %i.en = atomicrmw add ptr %i.em, i64 1 monotonic, align 8
  %i.eo = icmp slt i64 %i.en, 0
  br i1 %i.eo, label %bb.v, label %bb.r

bb.q:                                             ; preds = %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksfEINtNtB27_3map3MapINtB31_4IterfENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizefEs_0ENCINvB43_16do_normalize_fslB1j_E0EEB45_.exit
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 189 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #74
          to label %bb.af unwind label %bb.ag

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.em, ptr %i.i, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ep, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  store i64 1, ptr %i.g, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.eq, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !553
  %i.er = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !553 ; 3 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.s, label %bb.w, !prof !31

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #74
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
end_hunk_0
begin_hunk_1_@_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeEB4_:bb.a
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [112 x i8], align 8               ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [96 x i8], align 8                ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load i32, ptr %i.k, align 8, !noundef !26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.m, align 8, !nonnull !26, !noundef !26
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val36 = load ptr, ptr %i.n, align 8, !nonnull !26, !align !32, !noundef !26 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val36, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !36, !invariant.load !26
  %i.q = add nsw i64 %i.p, -1
  %i.r = and i64 %i.q, -16
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr i8, ptr %.val36, i64 32
  %.val.i.i = load ptr, ptr %i.u, align 8
  %i.v = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %i.t), !inline_history !555 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !26, !nonnull !26
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef %i.w), !inline_history !555
  %i.aa = load i128, ptr %i.f, align 16, !noundef !26
  %i.ab = icmp ne i128 %i.aa, 4246959316822800974081716267005431997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not1.i = icmp eq ptr %i.w, null
  %.not.i = or i1 %.not1.i, %i.ab
  br i1 %.not.i, label %bb.b, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float64TypeECs9JgWGBoX3PY_12lance_linalg.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #74
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float64TypeECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a
  %i.ac = icmp eq i32 %i.l, 0
  br i1 %i.ac, label %bb.c, label %.lr.ph.preheader.i.i.i, !prof !31

bb.c:                                             ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float64TypeECs9JgWGBoX3PY_12lance_linalg.exit
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #74
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float64TypeECs9JgWGBoX3PY_12lance_linalg.exit
  %i.ad = sext i32 %i.l to i64                    ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !noundef !26
  %i.ag = lshr i64 %i.af, 3                       ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noundef !26 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !623
  %umin.i.i.i = call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ag) ; 5 uses
  %i.aj = shl nuw i64 %umin.i.i.i, 3              ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.ai, i64 %i.aj ; 3 uses
  %i.ak = sub nuw nsw i64 %i.ag, %umin.i.i.i      ; 4 uses
  %.not.i1.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  %i.al = icmp eq i64 %i.ag, 0
  %or.cond.i.i.i = or i1 %.not.i1.i.i.i.i.i.i.i, %i.al
  br i1 %or.cond.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1q_5slice4iter6ChunksdEINtNtB1m_3map3MapINtB2g_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB3i_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0EE9from_iterB3k_.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %.lr.ph.preheader.i.i.i
  %i.am = add nsw i64 %umin.i.i.i, -1
  %xtraiter = and i64 %umin.i.i.i, 3              ; 3 uses
  %i.an = icmp ult i64 %i.am, 3
  br i1 %i.an, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new:   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %umin.i.i.i, 2305843009213693948
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bd, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bc, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ao, align 8, !alias.scope !624, !noalias !625, !noundef !26 ; 2 uses
  %i.ap = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = fadd double %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.as, align 8, !alias.scope !624, !noalias !625, !noundef !26 ; 2 uses
  %i.at = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.au = fadd double %i.aq, %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load double, ptr %i.aw, align 8, !alias.scope !624, !noalias !625, !noundef !26 ; 2 uses
  %i.ax = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.ay = fadd double %i.au, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load double, ptr %i.ba, align 8, !alias.scope !624, !noalias !625, !noundef !26 ; 2 uses
  %i.bb = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.bc = fadd double %i.ay, %i.bb                ; 3 uses
  %i.bd = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.unr-lcssa:                                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bd, %.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bc, %.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod66)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bh, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.bg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = load double, ptr %i.be, align 8, !alias.scope !624, !noalias !625, !noundef !26 ; 2 uses
  %i.bf = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bg = fadd double %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.bf ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !583

.epilog-lcssa:                                    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, %.unr-lcssa
  %.lcssa64 = phi double [ %i.bc, %.unr-lcssa ], [ %i.bg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.bi = call double @llvm.sqrt.f64(double %.lcssa64) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val3.i.i.i5.i.i.i.i.i.i.i = load double, ptr %i.ai, align 8, !noalias !626, !noundef !26
  %i.bk = fdiv double %.val3.i.i.i5.i.i.i.i.i.i.i, %i.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %gepdiff = add i64 %i.aj, -8
  %i.bl = lshr exact i64 %gepdiff, 3              ; 2 uses
  %.not56.i.i.i.i.i.i.i = icmp eq ptr %scevgep.i.i.i, null
  %i.bm = icmp eq i64 %i.ak, 0
  %or.cond.i.i.i.i.i = or i1 %i.bm, %.not56.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i: ; preds = %.epilog-lcssa
  %i.bn = udiv i64 %i.ak, %i.ad
  %i.bo = urem i64 %i.ak, %i.ad
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.bo, 0
  %.neg.i.i.i.i.i.i.i = sext i1 %.not.i.i.i.i.i.i.i.i.i to i64
  %i.bp = icmp eq i64 %i.bn, %.neg.i.i.i.i.i.i.i
  br i1 %i.bp, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksdEINtNtB7_3map3MapINtB17_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i, %.epilog-lcssa
  br label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksdEINtNtB7_3map3MapINtB17_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksdEINtNtB7_3map3MapINtB17_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i
  %.sink82.i.i.sroa.phi.i.i.i.i.i = phi ptr [ %.sroa.7.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.5.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.bl, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %.sink82.i.i.sroa.phi.i.i.i.i.i, align 8, !alias.scope !627, !noalias !623
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.bq = call i64 @llvm.umax.i64(i64 %i.bl, i64 3) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = add nuw nsw i64 %i.bq, 1 ; 2 uses
  %i.br = shl i64 %.sroa.0.0.i.i.i.i.i.i, 3       ; 4 uses
  %.not.i.i8.i.i.i.i.i = icmp ugt i64 %i.br, 9223372036854775800
  br i1 %.not.i.i8.i.i.i.i.i, label %bb.f, label %bb.d, !prof !35

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksdEINtNtB7_3map3MapINtB17_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !628
  %i.bt = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.br, i64 noundef range(i64 1, 9) 8) #76, !noalias !628 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.f, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksdEINtNtB7_3map3MapINtB17_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.e ], [ 0, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter6ChunksdEINtNtB7_3map3MapINtB17_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB27_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB29_.exit.i.i.i.i.i ]
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.br) #74, !noalias !623
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %i.bt, %bb.e ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.bv = icmp samesign ult i64 %i.bq, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.bv)
  store double %i.bk, ptr %.sroa.10.0.i.i.i.i.i.i, align 8, !noalias !623
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !623
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !623
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !623
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  br label %.split.i.i.i.preheader.i.i.i.i.i.i

.split.i.i.i.preheader.i.i.i.i.i.i:               ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i
  %i.bw = phi ptr [ %i.dr, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ]
  %.sroa.7.0.copyload.i.i.i = phi i64 [ %i.dt, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 6 uses
  %i.bx = phi double [ %i.db, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %i.bi, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ]
  %.val.i.i47.i.i.i.i.i.i.i = phi i64 [ %.val.i.i44.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %i.ak, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 4 uses
  %.val4.i.i.i38.i.i.i.i.i.i.i = phi ptr [ %.val4.i.i.i40.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %scevgep.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 2 uses
  %i.by = phi ptr [ %i.dc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %scevgep.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 9 uses
  %i.bz = phi ptr [ %i.dd, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i ], [ %i.bj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %.val4.i.i.i38.i.i.i.i.i.i.i
  br i1 %i.ca, label %.lr.ph.preheader.i.i.i.i.i.i, label %bb.g

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.split.i.i.i.preheader.i.i.i.i.i.i
  %umin.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ad, i64 %.val.i.i47.i.i.i.i.i.i.i) ; 5 uses
  %i.cb = shl i64 %umin.i.i.i.i.i.i, 3
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.by, i64 %i.cb ; 2 uses
  %i.cc = sub i64 %.val.i.i47.i.i.i.i.i.i.i, %umin.i.i.i.i.i.i
  %.not.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  %i.cd = icmp eq i64 %.val.i.i47.i.i.i.i.i.i.i, 0
  %or.cond = select i1 %.not.i1.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.cd
  br i1 %or.cond, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksdEINtNtB1h_3map3MapINtB2b_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %i.ce = add i64 %umin.i.i.i.i.i.i, -1
  %xtraiter67 = and i64 %umin.i.i.i.i.i.i, 3      ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 3
  br i1 %i.cf, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter72 = and i64 %umin.i.i.i.i.i.i, -4
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cv, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cu, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %niter73 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter73.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cg, align 8, !alias.scope !631, !noalias !632, !noundef !26 ; 2 uses
  %i.ch = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = fadd double %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.ck, align 8, !alias.scope !631, !noalias !632, !noundef !26 ; 2 uses
  %i.cl = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.cm = fadd double %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load double, ptr %i.co, align 8, !alias.scope !631, !noalias !632, !noundef !26 ; 2 uses
  %i.cp = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.cq = fadd double %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load double, ptr %i.cs, align 8, !alias.scope !631, !noalias !632, !noundef !26 ; 2 uses
  %i.ct = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.cu = fadd double %i.cq, %i.ct                ; 3 uses
  %i.cv = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter73.next.3 = add i64 %niter73, 4           ; 2 uses
  %niter73.ncmp.3 = icmp eq i64 %niter73.next.3, %unroll_iter72
  br i1 %niter73.ncmp.3, label %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod69.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod69.not, label %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cv, %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ -0.000000e+00, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cu, %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter67, 0
  call void @llvm.assume(i1 %lcmp.mod71)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil:        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.cz, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.cy, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter68 = phi i64 [ %epil.iter68.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = load double, ptr %i.cw, align 8, !alias.scope !631, !noalias !632, !noundef !26 ; 2 uses
  %i.cx = fmul double %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.cy = fadd double %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.cx ; 2 uses
  %i.cz = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter68.next = add i64 %epil.iter68, 1     ; 2 uses
  %epil.iter68.cmp.not = icmp eq i64 %epil.iter68.next, %xtraiter67
  br i1 %epil.iter68.cmp.not, label %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !606

_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa
  %.lcssa = phi double [ %i.cu, %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.cy, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.da = call double @llvm.sqrt.f64(double %.lcssa)
  br label %bb.g

bb.g:                                             ; preds = %.split.i.i.i.preheader.i.i.i.i.i.i, %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.db = phi double [ %i.bx, %.split.i.i.i.preheader.i.i.i.i.i.i ], [ %i.da, %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val.i.i44.i.i.i.i.i.i.i = phi i64 [ %.val.i.i47.i.i.i.i.i.i.i, %.split.i.i.i.preheader.i.i.i.i.i.i ], [ %i.cc, %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.val4.i.i.i40.i.i.i.i.i.i.i = phi ptr [ %.val4.i.i.i38.i.i.i.i.i.i.i, %.split.i.i.i.preheader.i.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i, %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dc = phi ptr [ %i.by, %.split.i.i.i.preheader.i.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i, %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.us-phi31.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.split.i.i.i.preheader.i.i.i.i.i.i ], [ %i.by, %_RINvXs26_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumdNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedE0EEB22_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.us-phi31.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %.us-phi31.i.i.i.i.i.i.i.i.i, align 8, !noalias !633, !noundef !26
  %i.de = fdiv double %.val3.i.i.i.i.i.i.i.i.i.i.i.i, %i.db
  %i.df = icmp samesign ult i64 %.sroa.7.0.copyload.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.df)
  %i.dg = load i64, ptr %i.a, align 8, !range !37, !alias.scope !634, !noalias !623, !noundef !26
  %i.dh = icmp eq i64 %.sroa.7.0.copyload.i.i.i, %i.dg
  br i1 %i.dh, label %bb.h, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i)
  %i.di = ptrtoint ptr %.val4.i.i.i40.i.i.i.i.i.i.i to i64
  %i.dj = ptrtoint ptr %i.dd to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  %i.dl = lshr exact i64 %i.dk, 3                 ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  %i.dm = icmp eq i64 %.val.i.i44.i.i.i.i.i.i.i, 0
  %or.cond.i.i12.i.i.i.i.i = select i1 %.not56.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.dm
  br i1 %or.cond.i.i12.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.dn = udiv i64 %.val.i.i44.i.i.i.i.i.i.i, %i.ad
  %i.do = urem i64 %.val.i.i44.i.i.i.i.i.i.i, %i.ad
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.do, 0
  %.neg.i.i.i.i.i.i.i.i.i = sext i1 %.not.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.dp = icmp eq i64 %i.dn, %.neg.i.i.i.i.i.i.i.i.i
  br i1 %i.dp, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i.i.i, label %bb.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i.i.i, %bb.h
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i.i.i
  %.sink82.i.i.sroa.phi.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dl, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.thread.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit.i.i.i.i.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i.i.i.i.i, ptr %.sink82.i.i.sroa.phi.i.i.i.i.i.i.i, align 8, !alias.scope !635, !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i)
  %i.dq = add nuw nsw i64 %i.dl, 1
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.7.0.copyload.i.i.i, i64 noundef %i.dq, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !623

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i.i: ; preds = %bb.i
  %.pre41.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !634, !noalias !623
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i.i, %bb.g
  %i.dr = phi ptr [ %.pre41.i.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i.i ], [ %i.bw, %bb.g ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.7.0.copyload.i.i.i
  store double %i.de, ptr %i.ds, align 8, !noalias !636
  %i.dt = add nuw nsw i64 %.sroa.7.0.copyload.i.i.i, 1 ; 2 uses
  store i64 %i.dt, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !634, !noalias !623
  br label %.split.i.i.i.preheader.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !623 ; 2 uses
  %i.du = icmp eq i64 %.val.pre.i.i.i.i.i, 0
  br i1 %i.du, label %common.resume, label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i
  %.val7.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !623, !nonnull !26, !noundef !26
  %i.dv = shl nuw i64 %.val.pre.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !623
  br label %common.resume

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksdEINtNtB1h_3map3MapINtB2b_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !noalias !637
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !637
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1q_5slice4iter6ChunksdEINtNtB1m_3map3MapINtB2g_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB3i_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0EE9from_iterB3k_.exit.i.i.i

common.resume:                                    ; preds = %bb.ag, %bb.ad, %bb.ac, %.loopexit.split-lp.i.i.i.i.i, %bb.j, %bb.l, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.eg, %bb.n ], [ %i.ee, %bb.l ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i, %bb.j ], [ %i.fi, %bb.ag ], [ %i.et, %bb.ac ], [ %i.et, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1q_5slice4iter6ChunksdEINtNtB1m_3map3MapINtB2g_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB3i_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0EE9from_iterB3k_.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksdEINtNtB1h_3map3MapINtB2b_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksdEINtNtB1h_3map3MapINtB2b_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.5.0.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksdEINtNtB1h_3map3MapINtB2b_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter6ChunksdEINtNtB1h_3map3MapINtB2b_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB3d_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0EE11spec_extendB3f_.exit.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !623
  %i.dw = icmp samesign ult i64 %.sroa.7.0.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.dw)
  %i.dx = icmp samesign ult i64 %.sroa.0.0.i.i.i, 1152921504606846976
  %i.dy = shl nuw nsw i64 %.sroa.0.0.i.i.i, 3
  %i.dz = shl nuw nsw i64 %.sroa.7.0.i.i.i, 3     ; 2 uses
  call void @llvm.assume(i1 %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !638
  store i64 1, ptr %i.b, align 8, !noalias !638
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ea, align 8, !noalias !638
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.5.0.i.i.i, ptr %i.eb, align 8, !noalias !638
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.dz, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !638
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !638
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !638
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.dy, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !638
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !639
  %i.ec = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !639 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.k, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter6ChunksdEINtNtB8_3map3MapINtB12_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB22_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtBa_6traits8iterator8Iterator7collectNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEB24_.exit.i, !prof !31

bb.k:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1q_5slice4iter6ChunksdEINtNtB1m_3map3MapINtB2g_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB3i_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0EE9from_iterB3k_.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i.i unwind label %bb.l, !noalias !638

.noexc.i.i.i:                                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #77
          to label %common.resume unwind label %bb.m, !noalias !638

bb.m:                                             ; preds = %bb.l
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !638
  unreachable

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter6ChunksdEINtNtB8_3map3MapINtB12_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB22_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtBa_6traits8iterator8Iterator7collectNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEB24_.exit.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1q_5slice4iter6ChunksdEINtNtB1m_3map3MapINtB2g_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB3i_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0EE9from_iterB3k_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ec, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !640
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 12, i64 24, i1 false), !noalias !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !640
  store ptr %i.ec, ptr %i.c, align 8, !noalias !640
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !640
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.dz, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !640
  invoke fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferdE3newCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %.sroa.7.0.i.i.i)
          to label %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksdEINtNtB27_3map3MapINtB31_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB43_16do_normalize_fslB1j_E0EEB45_.exit unwind label %bb.n, !noalias !640

bb.n:                                             ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter6ChunksdEINtNtB8_3map3MapINtB12_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB22_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtBa_6traits8iterator8Iterator7collectNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEB24_.exit.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.e) #77
          to label %common.resume unwind label %bb.o, !noalias !640

bb.o:                                             ; preds = %bb.n
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !640
  unreachable

_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksdEINtNtB27_3map3MapINtB31_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB43_16do_normalize_fslB1j_E0EEB45_.exit: ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter6ChunksdEINtNtB8_3map3MapINtB12_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB22_16do_normalize_fslNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float64TypeE0ENtNtNtBa_6traits8iterator8Iterator7collectNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEB24_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !640
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.j, i8 12, i64 24, i1 false), !alias.scope !622
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !641
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr null, ptr %i.ej, align 8, !alias.scope !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !640
  %i.ek = load i8, ptr %1, align 8, !range !38, !noundef !26
  %.not35 = icmp eq i8 %i.ek, 29
  br i1 %.not35, label %bb.p, label %bb.q, !prof !24

bb.p:                                             ; preds = %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksdEINtNtB27_3map3MapINtB31_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB43_16do_normalize_fslB1j_E0EEB45_.exit
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !26, !noundef !26 ; 4 uses
  %i.en = atomicrmw add ptr %i.em, i64 1 monotonic, align 8
  %i.eo = icmp slt i64 %i.en, 0
  br i1 %i.eo, label %bb.v, label %bb.r

bb.q:                                             ; preds = %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeE16from_iter_valuesINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB2b_5slice4iter6ChunksdEINtNtB27_3map3MapINtB31_4IterdENCINvNtCs9JgWGBoX3PY_12lance_linalg7kernels9normalizedEs_0ENCINvB43_16do_normalize_fslB1j_E0EEB45_.exit
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 189 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #74
          to label %bb.af unwind label %bb.ag

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.em, ptr %i.i, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ep, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  store i64 1, ptr %i.g, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.eq, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !642
  %i.er = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !642 ; 3 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.s, label %bb.w, !prof !31

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #74
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
end_hunk_1
