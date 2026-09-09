Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.02?download=true
inline.NumInlined: 7440
inline.NumDeleted: 2774
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 178
loop-unroll.NumUnrolled: 230
begin_hunk_0_@_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype1__9StructKeyReNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtBO_6option6OptionNtB1E_11NewTypeBaseEEEB1I_:bb.a
  %.sroa.0.090.i.i.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.q, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %.sroa.06.089.i.i.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %.sroa.018.088.i.i.i.i.i.i.i = phi ptr [ %.val.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.r, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 16
  %.sroa.037.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i, align 1, !alias.scope !27351, !noalias !27352
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.i, align 1, !alias.scope !27351, !noalias !27352
  %i.j = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i, %.sroa.0.090.i.i.i.i.i.i.i
  %i.k = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i, -6626703657320631856
  %i.l = zext i64 %i.j to i128
  %i.m = zext i64 %i.k to i128
  %i.n = mul nuw i128 %i.m, %i.l                  ; 2 uses
  %i.o = lshr i128 %i.n, 64
  %i.p = xor i128 %i.o, %i.n
  %i.q = trunc i128 %i.p to i64                   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.h, align 1, !alias.scope !27351, !noalias !27352
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 24
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.s, align 1, !alias.scope !27351, !noalias !27352
  %i.t = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.1, %.sroa.06.089.i.i.i.i.i.i.i
  %i.u = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.1, -6626703657320631856
  %i.v = zext i64 %i.t to i128
  %i.w = zext i64 %i.u to i128
  %i.x = mul nuw i128 %i.w, %i.v                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64                  ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i
  %i.ab = and i64 %i.d, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ab, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i
  %.sroa.0.090.i.i.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.q, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.089.i.i.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.088.i.i.i.i.i.i.i.epil.init = phi ptr [ %.val.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.r, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod7 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.epil = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i.epil.init, align 1, !alias.scope !27351, !noalias !27352
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.epil.init, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.epil = load i64, ptr %i.ac, align 1, !alias.scope !27351, !noalias !27352
  %i.ad = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.epil, %.sroa.0.090.i.i.i.i.i.i.i.epil.init
  %i.ae = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.epil, -6626703657320631856
  %i.af = zext i64 %i.ad to i128
  %i.ag = zext i64 %i.ae to i128
  %i.ah = mul nuw i128 %i.ag, %i.af               ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader
  %.sroa.06.089.i.i.i.i.i.i.i.lcssa = phi i64 [ %i.q, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.089.i.i.i.i.i.i.i.epil.init, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader ]
  %.lcssa = phi i64 [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ], [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader ]
  %i.al = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -16
  %.sroa.041.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.am, align 1, !alias.scope !27351, !noalias !27352
  %i.an = xor i64 %.sroa.041.0.copyload.i.i.i.i.i.i.i, %.sroa.06.089.i.i.i.i.i.i.i.lcssa
  %i.ao = getelementptr i8, ptr %i.al, i64 -8
  %.sroa.043.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 1, !alias.scope !27351, !noalias !27352
  %i.ap = xor i64 %.sroa.043.0.copyload.i.i.i.i.i.i.i, %.lcssa
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aq = icmp samesign ugt i64 %.val1.i.i, 3
  br i1 %i.aq, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, label %bb.d

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.028.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.val.i.i, align 1, !alias.scope !27351, !noalias !27352
  %i.ar = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i, 2611923443488327891
  %i.as = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.at, align 1, !alias.scope !27351, !noalias !27352
  %i.au = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.e

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.av = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.aw = getelementptr i8, ptr %i.av, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.aw, align 1, !alias.scope !27351, !noalias !27352
  %.sroa.032.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.val.i.i, align 1, !alias.scope !27351, !noalias !27352
  %i.ax = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i to i64
  %i.ay = xor i64 %i.ax, 2611923443488327891
  %i.az = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i to i64
  %i.ba = xor i64 %i.az, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bb = load i8, ptr %.val.i.i, align 1, !alias.scope !27351, !noalias !27352, !noundef !6
  %i.bc = lshr i64 %.val1.i.i, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !27351, !noalias !27352, !noundef !6
  %i.bf = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !27351, !noalias !27352, !noundef !6
  %i.bi = zext i8 %i.bb to i64
  %i.bj = xor i64 %i.bi, 2611923443488327891
  %i.bk = zext i8 %i.bh to i64
  %i.bl = shl nuw nsw i64 %i.bk, 8
  %i.bm = zext i8 %i.be to i64
  %i.bn = or disjoint i64 %i.bl, %i.bm
  %i.bo = xor i64 %i.bn, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.e, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, %bb.d, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i
  %.sroa.06.1.i.i.i.i.i.i.i = phi i64 [ %i.au, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.ba, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bo, %bb.e ], [ 1376283091369227076, %bb.d ], [ %i.ap, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ %i.ar, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.ay, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bj, %bb.e ], [ 2611923443488327891, %bb.d ], [ %i.an, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i ]
  %i.bp = zext i64 %.sroa.0.1.i.i.i.i.i.i.i to i128
  %i.bq = zext i64 %.sroa.06.1.i.i.i.i.i.i.i to i128
  %i.br = mul nuw i128 %i.bp, %i.bq               ; 2 uses
  %i.bs = lshr i128 %i.br, 64
  %i.bt = xor i128 %i.bs, %i.br
  %i.bu = trunc i128 %i.bt to i64
  %i.bv = xor i64 %.val1.i.i, %i.bu
  %i.bw = mul i64 %i.bv, 1452335207727870361
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i = load i64, ptr %i.bx, align 8, !alias.scope !27349, !noalias !27350
  %i.by = add i64 %.val2.i.i, 4919460506697669435
  %i.bz = add i64 %i.by, %i.bw
  %i.ca = mul i64 %i.bz, -1065810590584100411
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i.i = load i32, ptr %i.cb, align 8, !range !15, !alias.scope !27349, !noalias !27350, !noundef !6 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val5.i.i = load i64, ptr %i.cc, align 4, !alias.scope !27349, !noalias !27350
  %i.cd = icmp ne i32 %.val4.i.i, -2
  %i.ce = zext i1 %i.cd to i64
  %i.cf = add i64 %i.ca, %i.ce
  %i.cg = mul i64 %i.cf, -1065810590584100411     ; 2 uses
  %.not.i.i.i = icmp eq i32 %.val4.i.i, -2
  br i1 %.not.i.i.i, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype1__9StructKeyReNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtBa_6option6OptionNtBK_11NewTypeBaseEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBO_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.ch = tail call i32 @llvm.smax.i32(i32 %.val4.i.i, i32 4)
  %narrow1.i.i.i.i = add nsw i32 %i.ch, -4        ; 2 uses
  %i.ci = zext nneg i32 %narrow1.i.i.i.i to i64
  %i.cj = add i64 %i.cg, %i.ci
  %i.ck = mul i64 %i.cj, -1065810590584100411     ; 3 uses
  switch i32 %narrow1.i.i.i.i, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype1__9StructKeyReNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtBa_6option6OptionNtBK_11NewTypeBaseEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBO_.exit [
    i32 0, label %bb.g
    i32 1, label %.sink.split.i.i.i.i
  ]

.sink.split.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %.sink3.i.i.i.i = phi i64 [ %.sink1.i.i.i.i.i, %bb.g ], [ %i.ck, %bb.f ]
  %i.cl = add i64 %.sink3.i.i.i.i, %.val5.i.i
  %i.cm = mul i64 %i.cl, -1065810590584100411
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype1__9StructKeyReNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtBa_6option6OptionNtBK_11NewTypeBaseEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBO_.exit

bb.g:                                             ; preds = %bb.f
  %i.cn = icmp eq i32 %.val4.i.i, -1              ; 2 uses
  %i.co = zext i1 %i.cn to i64
  %i.cp = add i64 %i.ck, %i.co
  %i.cq = mul i64 %i.cp, -1065810590584100411     ; 2 uses
  %i.cr = zext nneg i32 %.val4.i.i to i64
  %i.cs = add i64 %i.cq, %i.cr
  %i.ct = mul i64 %i.cs, -1065810590584100411
  %.sink1.i.i.i.i.i = select i1 %i.cn, i64 %i.cq, i64 %i.ct
  br label %.sink.split.i.i.i.i

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype1__9StructKeyReNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtBa_6option6OptionNtBK_11NewTypeBaseEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBO_.exit: ; preds = %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.f, %.sink.split.i.i.i.i
  %.sroa.03.0 = phi i64 [ %i.cg, %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %i.ck, %bb.f ], [ %i.cm, %.sink.split.i.i.i.i ] ; 2 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.03.0, i64 %.sroa.03.0, i64 26)
  ret i64 %i.cu
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar1__9StructKeyNtB1E_15TypeVarIdentityINtNtBO_6option6OptionNtB1E_35TypeVarBoundOrConstraintsEvaluationEIB34_NtNtB1G_8variance15TypeVarVarianceEIB34_NtB1E_24TypeVarDefaultEvaluationEEEB1I_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(44) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27389)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load i64, ptr %i.b, align 4, !alias.scope !27388, !noalias !27390
  %i.c = mul i64 %.val.i.i, -1065810590584100411
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27392)
  %i.e = load i32, ptr %i.d, align 4, !range !55, !alias.scope !27393, !noalias !27394, !noundef !6 ; 5 uses
  %i.f = icmp ne i32 %i.e, -2
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.c, %i.g
  %i.i = mul i64 %i.h, -1065810590584100411       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, -2
  br i1 %.not.i.i.i, label %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27396)
  %i.j = add nsw i32 %i.e, -37
  %2 = icmp sgt i32 %i.e, 36
  %narrow.i.i.i.i = select i1 %2, i32 %i.j, i32 2 ; 2 uses
  %i.k = zext nneg i32 %narrow.i.i.i.i to i64
  %i.l = add i64 %i.i, %i.k
  %i.m = mul i64 %i.l, -1065810590584100411       ; 2 uses
  %3 = icmp eq i32 %narrow.i.i.i.i, 2
  br i1 %3, label %bb.c, label %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27398)
  %i.n = icmp eq i32 %i.e, -1                     ; 2 uses
  %i.o = zext i1 %i.n to i64
  %i.p = add i64 %i.m, %i.o
  %i.q = mul i64 %i.p, -1065810590584100411       ; 2 uses
  store i64 %i.q, ptr %i.a, align 8, !alias.scope !27399, !noalias !27400
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load i64, ptr %i.r, align 4, !alias.scope !27400, !noalias !27401
  %i.t = add i64 %i.s, %i.q
  %i.u = mul i64 %i.t, -1065810590584100411
  br label %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i

bb.e:                                             ; preds = %bb.c
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !27402, !noalias !27388
  br label %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i

_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %i.v = phi i64 [ %i.i, %bb.a ], [ %i.m, %bb.b ], [ %i.u, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2.i.i = load i8, ptr %i.w, align 4, !range !56, !alias.scope !27388, !noalias !27390, !noundef !6 ; 3 uses
  %i.x = icmp ne i8 %.val2.i.i, -1
  %i.y = zext i1 %i.x to i64
  %i.z = add i64 %i.v, %i.y
  %i.aa = mul i64 %i.z, -1065810590584100411      ; 2 uses
  %.not.i3.i.i = icmp eq i8 %.val2.i.i, -1
  %i.ab = zext nneg i8 %.val2.i.i to i64
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = mul i64 %i.ac, -1065810590584100411
  %storemerge.i.i.i = select i1 %.not.i3.i.i, i64 %i.aa, i64 %i.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27404)
  %i.ae = load i32, ptr %1, align 4, !range !13, !alias.scope !27405, !noalias !27406, !noundef !6 ; 3 uses
  %i.af = icmp ne i32 %i.ae, -2
  %i.ag = zext i1 %i.af to i64
  %i.ah = add i64 %storemerge.i.i.i, %i.ag
  %i.ai = mul i64 %i.ah, -1065810590584100411     ; 2 uses
  %.not.i4.i.i = icmp eq i32 %i.ae, -2
  br i1 %.not.i4.i.i, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar1__9StructKeyNtBK_15TypeVarIdentityINtNtBa_6option6OptionNtBK_35TypeVarBoundOrConstraintsEvaluationEIB29_NtNtBM_8variance15TypeVarVarianceEIB29_NtBK_24TypeVarDefaultEvaluationEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBO_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i
  %i.aj = icmp ne i32 %i.ae, -1                   ; 2 uses
  %i.ak = zext i1 %i.aj to i64
  %i.al = add i64 %i.ai, %i.ak
  %i.am = mul i64 %i.al, -1065810590584100411     ; 2 uses
  store i64 %i.am, ptr %i.a, align 8, !alias.scope !27407, !noalias !27408
  br i1 %i.aj, label %bb.g, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar1__9StructKeyNtBK_15TypeVarIdentityINtNtBa_6option6OptionNtBK_35TypeVarBoundOrConstraintsEvaluationEIB29_NtNtBM_8variance15TypeVarVarianceEIB29_NtBK_24TypeVarDefaultEvaluationEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBO_.exit

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(44) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val.pre = load i64, ptr %i.a, align 8
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar1__9StructKeyNtBK_15TypeVarIdentityINtNtBa_6option6OptionNtBK_35TypeVarBoundOrConstraintsEvaluationEIB29_NtNtBM_8variance15TypeVarVarianceEIB29_NtBK_24TypeVarDefaultEvaluationEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBO_.exit

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar1__9StructKeyNtBK_15TypeVarIdentityINtNtBa_6option6OptionNtBK_35TypeVarBoundOrConstraintsEvaluationEIB29_NtNtBM_8variance15TypeVarVarianceEIB29_NtBK_24TypeVarDefaultEvaluationEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBO_.exit: ; preds = %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i, %bb.f, %bb.g
  %.val = phi i64 [ %i.ai, %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i ], [ %i.am, %bb.f ], [ %.val.pre, %bb.g ] ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.an
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars0_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtBO_6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtB1E_11TypeVarKindEEB1I_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #25 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.b = load i8, ptr %i.a, align 1, !range !8, !alias.scope !27430, !noalias !27431, !noundef !6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !27430, !noalias !27431, !noundef !6
  %i.e = and i64 %i.d, 72057594037927935
  %i.f = icmp ult i8 %i.b, -48
  %i.g = zext i8 %i.b to i64
  %i.h = add nsw i64 %i.g, -192
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %.sroa.0.0.i.i.i.i.i = select i1 %i.f, i64 %spec.store.select.i.i.i.i.i, i64 %i.e ; 11 uses
  %i.i = icmp ugt i8 %i.b, -49
  %i.j = load ptr, ptr %1, align 8, !alias.scope !27430, !noalias !27431
  %.sroa.01.0.i.i.i.i.i = select i1 %i.i, ptr %i.j, ptr %1 ; 10 uses
  %i.k = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i, 17
  br i1 %i.k, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i, 7
  br i1 %i.l, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, label %bb.c

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = add nsw i64 %.sroa.0.0.i.i.i.i.i, -17    ; 2 uses
  %i.n = lshr i64 %i.m, 4                         ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i
  %unroll_iter = and i64 %i.o, 2305843009213693950
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new
  %.sroa.0.090.i.i.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.z, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %.sroa.06.089.i.i.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.aj, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %.sroa.018.088.i.i.i.i.i.i.i = phi ptr [ %.sroa.01.0.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 16
  %.sroa.037.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i, align 1, !alias.scope !27432, !noalias !27433
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.r, align 1, !alias.scope !27432, !noalias !27433
  %i.s = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i, %.sroa.0.090.i.i.i.i.i.i.i
  %i.t = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i, -6626703657320631856
  %i.u = zext i64 %i.s to i128
  %i.v = zext i64 %i.t to i128
  %i.w = mul nuw i128 %i.v, %i.u                  ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64                   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.q, align 1, !alias.scope !27432, !noalias !27433
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 24
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ab, align 1, !alias.scope !27432, !noalias !27433
  %i.ac = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.1, %.sroa.06.089.i.i.i.i.i.i.i
  %i.ad = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.1, -6626703657320631856
  %i.ae = zext i64 %i.ac to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i
  %i.ak = and i64 %i.m, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ak, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i
  %.sroa.0.090.i.i.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.z, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.089.i.i.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.aj, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.088.i.i.i.i.i.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod7 = trunc i64 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.epil = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i.epil.init, align 1, !alias.scope !27432, !noalias !27433
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.epil.init, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.epil = load i64, ptr %i.al, align 1, !alias.scope !27432, !noalias !27433
  %i.am = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.epil, %.sroa.0.090.i.i.i.i.i.i.i.epil.init
  %i.an = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.epil, -6626703657320631856
  %i.ao = zext i64 %i.am to i128
  %i.ap = zext i64 %i.an to i128
  %i.aq = mul nuw i128 %i.ap, %i.ao               ; 2 uses
  %i.ar = lshr i128 %i.aq, 64
  %i.as = xor i128 %i.ar, %i.aq
  %i.at = trunc i128 %i.as to i64
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader
  %.sroa.06.089.i.i.i.i.i.i.i.lcssa = phi i64 [ %i.z, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.089.i.i.i.i.i.i.i.epil.init, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader ]
  %.lcssa = phi i64 [ %i.aj, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ], [ %i.at, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader ]
  %i.au = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -16
  %.sroa.041.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.av, align 1, !alias.scope !27432, !noalias !27433
  %i.aw = xor i64 %.sroa.041.0.copyload.i.i.i.i.i.i.i, %.sroa.06.089.i.i.i.i.i.i.i.lcssa
  %i.ax = getelementptr i8, ptr %i.au, i64 -8
  %.sroa.043.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 1, !alias.scope !27432, !noalias !27433
  %i.ay = xor i64 %.sroa.043.0.copyload.i.i.i.i.i.i.i, %.lcssa
  br label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.az = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i, 3
  br i1 %i.az, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, label %bb.d

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.028.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.0.i.i.i.i.i, align 1, !alias.scope !27432, !noalias !27433
  %i.ba = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i, 2611923443488327891
  %i.bb = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bc, align 1, !alias.scope !27432, !noalias !27433
  %i.bd = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i, 1376283091369227076
  br label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.e

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.be = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.bf, align 1, !alias.scope !27432, !noalias !27433
  %.sroa.032.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.01.0.i.i.i.i.i, align 1, !alias.scope !27432, !noalias !27433
  %i.bg = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i to i64
  %i.bh = xor i64 %i.bg, 2611923443488327891
  %i.bi = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i to i64
  %i.bj = xor i64 %i.bi, 1376283091369227076
  br label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bk = load i8, ptr %.sroa.01.0.i.i.i.i.i, align 1, !alias.scope !27432, !noalias !27433, !noundef !6
  %i.bl = lshr i64 %.sroa.0.0.i.i.i.i.i, 1
end_hunk_0
begin_hunk_1_@_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types9type_form1__9StructKeyNtB1G_4TypeEEB1I_:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dicts_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1E_22DynamicTypedDictAnchorNtNtB1I_12special_form15TypedDictModuleEEB1K_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27795)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !27794, !noalias !27796, !nonnull !6, !align !24, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27801)
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 15
  %i.c = load i8, ptr %i.b, align 1, !range !8, !alias.scope !27802, !noalias !27803, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !27802, !noalias !27803, !noundef !6
  %i.f = and i64 %i.e, 72057594037927935
  %i.g = icmp ult i8 %i.c, -48
  %i.h = zext i8 %i.c to i64
  %i.i = add nsw i64 %i.h, -192
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16)
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.g, i64 %spec.store.select.i.i.i.i.i.i, i64 %i.f ; 11 uses
  %i.j = icmp ugt i8 %i.c, -49
  %i.k = load ptr, ptr %.val.i.i, align 8, !alias.scope !27802, !noalias !27803
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.j, ptr %i.k, ptr %.val.i.i ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27805)
  %i.l = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i.i, 17
  br i1 %i.l, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i.i, 7
  br i1 %i.m, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i, label %bb.c

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.n = add nsw i64 %.sroa.0.0.i.i.i.i.i.i, -17  ; 2 uses
  %i.o = lshr i64 %i.n, 4                         ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i
  %unroll_iter = and i64 %i.p, 2305843009213693950
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new
  %.sroa.0.090.i.i.i.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new ], [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i ]
  %.sroa.06.089.i.i.i.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new ], [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i ]
  %.sroa.018.088.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.01.0.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i, i64 16
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i.i, align 1, !alias.scope !27806, !noalias !27807
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 1, !alias.scope !27806, !noalias !27807
  %i.t = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.i, %.sroa.0.090.i.i.i.i.i.i.i.i
  %i.u = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.i, -6626703657320631856
  %i.v = zext i64 %i.t to i128
  %i.w = zext i64 %i.u to i128
  %i.x = mul nuw i128 %i.w, %i.v                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64                  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.r, align 1, !alias.scope !27806, !noalias !27807
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i, i64 24
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ac, align 1, !alias.scope !27806, !noalias !27807
  %i.ad = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.i.1, %.sroa.06.089.i.i.i.i.i.i.i.i
  %i.ae = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.i.1, -6626703657320631856
  %i.af = zext i64 %i.ad to i128
  %i.ag = zext i64 %i.ae to i128
  %i.ah = mul nuw i128 %i.ag, %i.af               ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i
  %i.al = and i64 %i.n, 16
  %lcmp.mod.not.not = icmp eq i64 %i.al, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i
  %.sroa.0.090.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i ], [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.089.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i ], [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.088.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.i.epil = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i.i.epil.init, align 1, !alias.scope !27806, !noalias !27807
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i.epil.init, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.am, align 1, !alias.scope !27806, !noalias !27807
  %i.an = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.i.epil, %.sroa.0.090.i.i.i.i.i.i.i.i.epil.init
  %i.ao = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.i.epil, -6626703657320631856
  %i.ap = zext i64 %i.an to i128
  %i.aq = zext i64 %i.ao to i128
  %i.ar = mul nuw i128 %i.aq, %i.ap               ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.06.089.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.089.i.i.i.i.i.i.i.i.epil.init, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i.epil.preheader ]
  %.lcssa = phi i64 [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.au, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.av = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  %.sroa.041.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 1, !alias.scope !27806, !noalias !27807
  %i.ax = xor i64 %.sroa.041.0.copyload.i.i.i.i.i.i.i.i, %.sroa.06.089.i.i.i.i.i.i.i.i.lcssa
  %i.ay = getelementptr i8, ptr %i.av, i64 -8
  %.sroa.043.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 1, !alias.scope !27806, !noalias !27807
  %i.az = xor i64 %.sroa.043.0.copyload.i.i.i.i.i.i.i.i, %.lcssa
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i.i, 3
  br i1 %i.ba, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i, label %bb.d

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.028.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.0.i.i.i.i.i.i, align 1, !alias.scope !27806, !noalias !27807
  %i.bb = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i.i, 2611923443488327891
  %i.bc = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bd, align 1, !alias.scope !27806, !noalias !27807
  %i.be = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i.i, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.e

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.bf = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.bg, align 1, !alias.scope !27806, !noalias !27807
  %.sroa.032.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.01.0.i.i.i.i.i.i, align 1, !alias.scope !27806, !noalias !27807
  %i.bh = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.bi = xor i64 %i.bh, 2611923443488327891
  %i.bj = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.bk = xor i64 %i.bj, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bl = load i8, ptr %.sroa.01.0.i.i.i.i.i.i, align 1, !alias.scope !27806, !noalias !27807, !noundef !6
  %i.bm = lshr i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !27806, !noalias !27807, !noundef !6
  %i.bp = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !27806, !noalias !27807, !noundef !6
  %i.bs = zext i8 %i.bl to i64
  %i.bt = xor i64 %i.bs, 2611923443488327891
  %i.bu = zext i8 %i.br to i64
  %i.bv = shl nuw nsw i64 %i.bu, 8
  %i.bw = zext i8 %i.bo to i64
  %i.bx = or disjoint i64 %i.bv, %i.bw
  %i.by = xor i64 %i.bx, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.e, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i, %bb.d, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i
  %.sroa.06.1.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i ], [ %i.bk, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i ], [ %i.by, %bb.e ], [ 1376283091369227076, %bb.d ], [ %i.az, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i ], [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i ], [ %i.bt, %bb.e ], [ 2611923443488327891, %bb.d ], [ %i.ax, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i ]
  %i.bz = zext i64 %.sroa.0.1.i.i.i.i.i.i.i.i to i128
  %i.ca = zext i64 %.sroa.06.1.i.i.i.i.i.i.i.i to i128
  %i.cb = mul nuw i128 %i.bz, %i.ca               ; 2 uses
  %i.cc = lshr i128 %i.cb, 64
  %i.cd = xor i128 %i.cc, %i.cb
  %i.ce = trunc i128 %i.cd to i64
  %i.cf = xor i64 %.sroa.0.0.i.i.i.i.i.i, %i.ce
  %i.cg = mul i64 %i.cf, 1452335207727870361
  %i.ch = add i64 %i.cg, 4919460506697669435      ; 2 uses
  store i64 %i.ch, ptr %i.a, align 8, !alias.scope !27808, !noalias !27809
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27811)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !range !58, !alias.scope !27812, !noalias !27813, !noundef !6 ; 3 uses
  %i.cl = icmp ne i32 %i.ck, -1                   ; 2 uses
  %i.cm = zext i1 %i.cl to i64
  %i.cn = add i64 %i.ch, %i.cm
  %i.co = mul i64 %i.cn, -1065810590584100411     ; 2 uses
  br i1 %i.cl, label %bb.f, label %.sink.split.i.i.i

bb.f:                                             ; preds = %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !27812, !noalias !27813
  %i.cr = add i64 %i.cq, %i.co
  %i.cs = mul i64 %i.cr, -1065810590584100411
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cu = load i32, ptr %i.ct, align 8, !alias.scope !27812, !noalias !27813, !noundef !6
  %i.cv = zext i32 %i.cu to i64
  %i.cw = add i64 %i.cs, %i.cv
  %i.cx = mul i64 %i.cw, -1065810590584100411
  store i64 %i.cx, ptr %i.a, align 8, !alias.scope !27814, !noalias !27812
  call void @_RINvXs1r_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB1X_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cy = add nsw i32 %i.ck, -37
  %2 = icmp samesign ugt i32 %i.ck, 36
  %narrow.i.i.i = select i1 %2, i32 %i.cy, i32 2  ; 2 uses
  %i.cz = zext nneg i32 %narrow.i.i.i to i64
  %i.da = load i64, ptr %i.a, align 8, !alias.scope !27815, !noalias !27812, !noundef !6
  %i.db = add i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, -1065810590584100411     ; 2 uses
  store i64 %i.dc, ptr %i.a, align 8, !alias.scope !27815, !noalias !27812
  %3 = icmp eq i32 %narrow.i.i.i, 2
  br i1 %3, label %bb.g, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dicts_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtBK_22DynamicTypedDictAnchorNtNtBO_12special_form15TypedDictModuleENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBQ_.exit

.sink.split.i.i.i:                                ; preds = %bb.g, %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %.sink3.i.i.i = phi ptr [ %i.a, %bb.g ], [ %i.ci, %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %.sink2.i.i.i = phi i64 [ %i.di, %bb.g ], [ %i.co, %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %i.dd = load i64, ptr %.sink3.i.i.i, align 8, !alias.scope !27816
  %i.de = add i64 %i.dd, %.sink2.i.i.i
  %i.df = mul i64 %i.de, -1065810590584100411
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dicts_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtBK_22DynamicTypedDictAnchorNtNtBO_12special_form15TypedDictModuleENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBQ_.exit

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.dh = load i8, ptr %i.dg, align 4, !range !32, !alias.scope !27812, !noalias !27813, !noundef !6
  %i.di = zext nneg i8 %i.dh to i64
  br label %.sink.split.i.i.i

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dicts_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtBK_22DynamicTypedDictAnchorNtNtBO_12special_form15TypedDictModuleENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBQ_.exit: ; preds = %bb.f, %.sink.split.i.i.i
  %i.dj = phi i64 [ %i.dc, %bb.f ], [ %i.df, %.sink.split.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val1.i.i = load i8, ptr %i.dk, align 8, !range !32, !alias.scope !27794, !noalias !27796, !noundef !6
  %i.dl = zext nneg i8 %.val1.i.i to i64
  %i.dm = add i64 %i.dj, %i.dl
  %i.dn = mul i64 %i.dm, -1065810590584100411     ; 2 uses
  %i.do = call noundef i64 @llvm.fshl.i64(i64 %i.dn, i64 %i.dn, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.do
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dicts_1__9StructKeyReNtB1E_22DynamicTypedDictAnchorNtNtB1I_12special_form15TypedDictModuleEEB1K_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27848)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !27847, !noalias !27849, !nonnull !6, !noundef !6 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load i64, ptr %i.b, align 8, !alias.scope !27847, !noalias !27849, !noundef !6 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27854)
  %i.c = icmp samesign ult i64 %.val1.i.i, 17
  br i1 %i.c, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %.val1.i.i, 7
  br i1 %i.d, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, label %bb.c

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = add i64 %.val1.i.i, -17                  ; 2 uses
  %i.f = lshr i64 %i.e, 4                         ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i
  %unroll_iter = and i64 %i.g, 2305843009213693950
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new
  %.sroa.0.090.i.i.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.r, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %.sroa.06.089.i.i.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %.sroa.018.088.i.i.i.i.i.i.i = phi ptr [ %.val.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.s, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 16
  %.sroa.037.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i, align 1, !alias.scope !27855, !noalias !27856
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.j, align 1, !alias.scope !27855, !noalias !27856
  %i.k = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i, %.sroa.0.090.i.i.i.i.i.i.i
  %i.l = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i, -6626703657320631856
  %i.m = zext i64 %i.k to i128
  %i.n = zext i64 %i.l to i128
  %i.o = mul nuw i128 %i.n, %i.m                  ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64                   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.i, align 1, !alias.scope !27855, !noalias !27856
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 24
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.t, align 1, !alias.scope !27855, !noalias !27856
  %i.u = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.1, %.sroa.06.089.i.i.i.i.i.i.i
  %i.v = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.1, -6626703657320631856
  %i.w = zext i64 %i.u to i128
  %i.x = zext i64 %i.v to i128
  %i.y = mul nuw i128 %i.x, %i.w                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i
  %i.ac = and i64 %i.e, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i
  %.sroa.0.090.i.i.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.r, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.089.i.i.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.088.i.i.i.i.i.i.i.epil.init = phi ptr [ %.val.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.s, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.epil = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i.epil.init, align 1, !alias.scope !27855, !noalias !27856
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.epil.init, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.epil = load i64, ptr %i.ad, align 1, !alias.scope !27855, !noalias !27856
  %i.ae = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.epil, %.sroa.0.090.i.i.i.i.i.i.i.epil.init
  %i.af = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.epil, -6626703657320631856
  %i.ag = zext i64 %i.ae to i128
  %i.ah = zext i64 %i.af to i128
  %i.ai = mul nuw i128 %i.ah, %i.ag               ; 2 uses
  %i.aj = lshr i128 %i.ai, 64
  %i.ak = xor i128 %i.aj, %i.ai
  %i.al = trunc i128 %i.ak to i64
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader
  %.sroa.06.089.i.i.i.i.i.i.i.lcssa = phi i64 [ %i.r, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.089.i.i.i.i.i.i.i.epil.init, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader ]
  %.lcssa = phi i64 [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ], [ %i.al, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader ]
  %i.am = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -16
  %.sroa.041.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.an, align 1, !alias.scope !27855, !noalias !27856
  %i.ao = xor i64 %.sroa.041.0.copyload.i.i.i.i.i.i.i, %.sroa.06.089.i.i.i.i.i.i.i.lcssa
  %i.ap = getelementptr i8, ptr %i.am, i64 -8
  %.sroa.043.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 1, !alias.scope !27855, !noalias !27856
  %i.aq = xor i64 %.sroa.043.0.copyload.i.i.i.i.i.i.i, %.lcssa
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.ar = icmp samesign ugt i64 %.val1.i.i, 3
  br i1 %i.ar, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, label %bb.d

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.028.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.val.i.i, align 1, !alias.scope !27855, !noalias !27856
  %i.as = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i, 2611923443488327891
  %i.at = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.au, align 1, !alias.scope !27855, !noalias !27856
  %i.av = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.e

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.aw = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.ax, align 1, !alias.scope !27855, !noalias !27856
  %.sroa.032.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.val.i.i, align 1, !alias.scope !27855, !noalias !27856
  %i.ay = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i to i64
  %i.az = xor i64 %i.ay, 2611923443488327891
  %i.ba = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i to i64
  %i.bb = xor i64 %i.ba, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bc = load i8, ptr %.val.i.i, align 1, !alias.scope !27855, !noalias !27856, !noundef !6
  %i.bd = lshr i64 %.val1.i.i, 1
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !27855, !noalias !27856, !noundef !6
  %i.bg = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !27855, !noalias !27856, !noundef !6
  %i.bj = zext i8 %i.bc to i64
  %i.bk = xor i64 %i.bj, 2611923443488327891
  %i.bl = zext i8 %i.bi to i64
  %i.bm = shl nuw nsw i64 %i.bl, 8
  %i.bn = zext i8 %i.bf to i64
  %i.bo = or disjoint i64 %i.bm, %i.bn
  %i.bp = xor i64 %i.bo, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.e, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, %bb.d, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i
  %.sroa.06.1.i.i.i.i.i.i.i = phi i64 [ %i.av, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bb, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bp, %bb.e ], [ 1376283091369227076, %bb.d ], [ %i.aq, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ %i.as, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.az, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bk, %bb.e ], [ 2611923443488327891, %bb.d ], [ %i.ao, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i ]
  %i.bq = zext i64 %.sroa.0.1.i.i.i.i.i.i.i to i128
  %i.br = zext i64 %.sroa.06.1.i.i.i.i.i.i.i to i128
  %i.bs = mul nuw i128 %i.bq, %i.br               ; 2 uses
  %i.bt = lshr i128 %i.bs, 64
  %i.bu = xor i128 %i.bt, %i.bs
  %i.bv = trunc i128 %i.bu to i64
  %i.bw = xor i64 %.val1.i.i, %i.bv
  %i.bx = mul i64 %i.bw, 1452335207727870361
  %i.by = add i64 %i.bx, 4919460506697669435      ; 2 uses
  store i64 %i.by, ptr %i.a, align 8, !alias.scope !27857, !noalias !27858
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27860)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !range !58, !alias.scope !27861, !noalias !27862, !noundef !6 ; 3 uses
  %i.cc = icmp ne i32 %i.cb, -1                   ; 2 uses
  %i.cd = zext i1 %i.cc to i64
  %i.ce = add i64 %i.by, %i.cd
  %i.cf = mul i64 %i.ce, -1065810590584100411     ; 2 uses
  br i1 %i.cc, label %bb.f, label %.sink.split.i.i.i

bb.f:                                             ; preds = %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !27861, !noalias !27862
  %i.ci = add i64 %i.ch, %i.cf
  %i.cj = mul i64 %i.ci, -1065810590584100411
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cl = load i32, ptr %i.ck, align 8, !alias.scope !27861, !noalias !27862, !noundef !6
  %i.cm = zext i32 %i.cl to i64
  %i.cn = add i64 %i.cj, %i.cm
  %i.co = mul i64 %i.cn, -1065810590584100411
  store i64 %i.co, ptr %i.a, align 8, !alias.scope !27863, !noalias !27861
  call void @_RINvXs1r_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB1X_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cp = add nsw i32 %i.cb, -37
  %2 = icmp samesign ugt i32 %i.cb, 36
  %narrow.i.i.i = select i1 %2, i32 %i.cp, i32 2  ; 2 uses
  %i.cq = zext nneg i32 %narrow.i.i.i to i64
  %i.cr = load i64, ptr %i.a, align 8, !alias.scope !27864, !noalias !27861, !noundef !6
  %i.cs = add i64 %i.cr, %i.cq
  %i.ct = mul i64 %i.cs, -1065810590584100411     ; 2 uses
  store i64 %i.ct, ptr %i.a, align 8, !alias.scope !27864, !noalias !27861
  %3 = icmp eq i32 %narrow.i.i.i, 2
  br i1 %3, label %bb.g, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dicts_1__9StructKeyReNtBK_22DynamicTypedDictAnchorNtNtBO_12special_form15TypedDictModuleENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBQ_.exit

.sink.split.i.i.i:                                ; preds = %bb.g, %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %.sink3.i.i.i = phi ptr [ %i.a, %bb.g ], [ %i.bz, %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %.sink2.i.i.i = phi i64 [ %i.cz, %bb.g ], [ %i.cf, %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsReNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %i.cu = load i64, ptr %.sink3.i.i.i, align 8, !alias.scope !27865
  %i.cv = add i64 %i.cu, %.sink2.i.i.i
  %i.cw = mul i64 %i.cv, -1065810590584100411
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dicts_1__9StructKeyReNtBK_22DynamicTypedDictAnchorNtNtBO_12special_form15TypedDictModuleENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBQ_.exit

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ca, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.cy = load i8, ptr %i.cx, align 4, !range !32, !alias.scope !27861, !noalias !27862, !noundef !6
  %i.cz = zext nneg i8 %i.cy to i64
  br label %.sink.split.i.i.i

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dicts_1__9StructKeyReNtBK_22DynamicTypedDictAnchorNtNtBO_12special_form15TypedDictModuleENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBQ_.exit: ; preds = %bb.f, %.sink.split.i.i.i
  %i.da = phi i64 [ %i.ct, %bb.f ], [ %i.cw, %.sink.split.i.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i.i = load i8, ptr %i.db, align 8, !range !32, !alias.scope !27847, !noalias !27849, !noundef !6
  %i.dc = zext nneg i8 %.val2.i.i to i64
  %i.dd = add i64 %i.da, %i.dc
  %i.de = mul i64 %i.dd, -1065810590584100411     ; 2 uses
  %i.df = call noundef i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.df
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuples1_1__9StructKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1E_15NamedTupleFieldEbEEB1K_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27877)
  call void @_RINvXsk_NtCscdodAO9FK5_5alloc5boxedINtB6_3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldENtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBQ_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load i8, ptr %i.b, align 8, !range !32, !alias.scope !27876, !noalias !27878, !noundef !6
  %i.c = zext nneg i8 %.val.i.i to i64
  %i.d = load i64, ptr %i.a, align 8, !alias.scope !27879, !noalias !27876, !noundef !6
  %i.e = add i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -1065810590584100411       ; 2 uses
  %i.g = call noundef i64 @llvm.fshl.i64(i64 %i.f, i64 %i.f, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.g
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuples_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1E_23DynamicNamedTupleAnchorEEB1K_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27906)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !27906, !noalias !27907, !nonnull !6, !align !24, !noundef !6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 15
  %i.c = load i8, ptr %i.b, align 1, !range !8, !alias.scope !27908, !noalias !27909, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !27908, !noalias !27909, !noundef !6
  %i.f = and i64 %i.e, 72057594037927935
  %i.g = icmp ult i8 %i.c, -48
  %i.h = zext i8 %i.c to i64
  %i.i = add nsw i64 %i.h, -192
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16)
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.g, i64 %spec.store.select.i.i.i.i.i.i, i64 %i.f ; 11 uses
  %i.j = icmp ugt i8 %i.c, -49
  %i.k = load ptr, ptr %.val.i.i, align 8, !alias.scope !27908, !noalias !27909
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.j, ptr %i.k, ptr %.val.i.i ; 10 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i.i, 17
  br i1 %i.l, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i.i, 7
  br i1 %i.m, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i, label %bb.c

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.n = add nsw i64 %.sroa.0.0.i.i.i.i.i.i, -17  ; 2 uses
  %i.o = lshr i64 %i.n, 4                         ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i
  %unroll_iter = and i64 %i.p, 2305843009213693950
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new
  %.sroa.0.090.i.i.i.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new ], [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i ]
  %.sroa.06.089.i.i.i.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new ], [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i ]
  %.sroa.018.088.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.01.0.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i, i64 16
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i.i, align 1, !alias.scope !27910, !noalias !27911
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 1, !alias.scope !27910, !noalias !27911
  %i.t = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.i, %.sroa.0.090.i.i.i.i.i.i.i.i
  %i.u = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.i, -6626703657320631856
  %i.v = zext i64 %i.t to i128
  %i.w = zext i64 %i.u to i128
  %i.x = mul nuw i128 %i.w, %i.v                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64                  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.r, align 1, !alias.scope !27910, !noalias !27911
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i, i64 24
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ac, align 1, !alias.scope !27910, !noalias !27911
  %i.ad = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.i.1, %.sroa.06.089.i.i.i.i.i.i.i.i
  %i.ae = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.i.1, -6626703657320631856
  %i.af = zext i64 %i.ad to i128
  %i.ag = zext i64 %i.ae to i128
  %i.ah = mul nuw i128 %i.ag, %i.af               ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i
  %i.al = and i64 %i.n, 16
  %lcmp.mod.not.not = icmp eq i64 %i.al, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i
  %.sroa.0.090.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i ], [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.089.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i ], [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.088.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.i ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod7 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.i.epil = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i.i.epil.init, align 1, !alias.scope !27910, !noalias !27911
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i.epil.init, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.am, align 1, !alias.scope !27910, !noalias !27911
  %i.an = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.i.epil, %.sroa.0.090.i.i.i.i.i.i.i.i.epil.init
  %i.ao = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.i.epil, -6626703657320631856
  %i.ap = zext i64 %i.an to i128
  %i.aq = zext i64 %i.ao to i128
  %i.ar = mul nuw i128 %i.aq, %i.ap               ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.06.089.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.089.i.i.i.i.i.i.i.i.epil.init, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i.epil.preheader ]
  %.lcssa = phi i64 [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.au, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.av = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  %.sroa.041.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 1, !alias.scope !27910, !noalias !27911
  %i.ax = xor i64 %.sroa.041.0.copyload.i.i.i.i.i.i.i.i, %.sroa.06.089.i.i.i.i.i.i.i.i.lcssa
  %i.ay = getelementptr i8, ptr %i.av, i64 -8
  %.sroa.043.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 1, !alias.scope !27910, !noalias !27911
  %i.az = xor i64 %.sroa.043.0.copyload.i.i.i.i.i.i.i.i, %.lcssa
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i.i, 3
  br i1 %i.ba, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i, label %bb.d

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.028.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.0.i.i.i.i.i.i, align 1, !alias.scope !27910, !noalias !27911
  %i.bb = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i.i, 2611923443488327891
  %i.bc = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bd, align 1, !alias.scope !27910, !noalias !27911
  %i.be = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i.i, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.e

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.bf = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.bg, align 1, !alias.scope !27910, !noalias !27911
  %.sroa.032.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.01.0.i.i.i.i.i.i, align 1, !alias.scope !27910, !noalias !27911
  %i.bh = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.bi = xor i64 %i.bh, 2611923443488327891
  %i.bj = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.bk = xor i64 %i.bj, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bl = load i8, ptr %.sroa.01.0.i.i.i.i.i.i, align 1, !alias.scope !27910, !noalias !27911, !noundef !6
  %i.bm = lshr i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !27910, !noalias !27911, !noundef !6
  %i.bp = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !27910, !noalias !27911, !noundef !6
  %i.bs = zext i8 %i.bl to i64
  %i.bt = xor i64 %i.bs, 2611923443488327891
  %i.bu = zext i8 %i.br to i64
  %i.bv = shl nuw nsw i64 %i.bu, 8
  %i.bw = zext i8 %i.bo to i64
  %i.bx = or disjoint i64 %i.bv, %i.bw
  %i.by = xor i64 %i.bx, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

end_hunk_1
begin_hunk_2_@_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic:bb.a

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i, %bb.d, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i, %bb.e
  %.sroa.06.1.i.i.i.i.i.i = phi i64 [ %i.bd, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i ], [ %i.bj, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i ], [ %i.bx, %bb.e ], [ 1376283091369227076, %bb.d ], [ %i.ay, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %i.ba, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i ], [ %i.bh, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i ], [ %i.bs, %bb.e ], [ 2611923443488327891, %bb.d ], [ %i.aw, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i ]
  %i.by = zext i64 %.sroa.0.1.i.i.i.i.i.i to i128
  %i.bz = zext i64 %.sroa.06.1.i.i.i.i.i.i to i128
  %i.ca = mul nuw i128 %i.by, %i.bz               ; 2 uses
  %i.cb = lshr i128 %i.ca, 64
  %i.cc = xor i128 %i.cb, %i.ca
  %i.cd = trunc i128 %i.cc to i64
  %i.ce = xor i64 %.sroa.0.0.i.i.i.i, %i.cd
  %i.cf = mul i64 %i.ce, 1452335207727870361
  %i.cg = add i64 %i.cf, 4919460506697669435      ; 2 uses
  %i.ch = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 26)
  ret i64 %i.ch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression17FileSuppressionIdEB1D_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i32, ptr %1, align 4, !noalias !28354, !noundef !6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1.i = load i32, ptr %i.a, align 4, !noalias !28354, !noundef !6
  %i.b = zext i32 %.val.i to i64
  %i.c = mul i64 %i.b, -1065810590584100411
  %i.d = zext i32 %.val1.i to i64
  %i.e = add i64 %i.c, %i.d
  %i.f = mul i64 %i.e, -1065810590584100411       ; 2 uses
  %i.g = tail call noundef i64 @llvm.fshl.i64(i64 %i.f, i64 %i.f, i64 26)
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsoTR8nlGN3X_18ty_python_semantic12reachability22ProjectedNarrowingNodeEB1D_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !28360, !noalias !28361, !noundef !6
  %i.c = zext i32 %i.b to i64
  %i.d = mul i64 %i.c, -1065810590584100411
  %i.e = load i64, ptr %1, align 8, !alias.scope !28360, !noalias !28361, !noundef !6
  %i.f = add i64 %i.d, %i.e
  %i.g = mul i64 %i.f, -1065810590584100411
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !28360, !noalias !28361, !noundef !6
  %i.j = add i64 %i.g, %i.i
  %i.k = mul i64 %i.j, -1065810590584100411
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !28360, !noalias !28361, !noundef !6
  %i.n = add i64 %i.k, %i.m
  %i.o = mul i64 %i.n, -1065810590584100411       ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 26)
  ret i64 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsoTR8nlGN3X_18ty_python_semantic12reachability24ProjectedNarrowingNodeIdEB1D_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 8, !noalias !28364, !noundef !6
  %i.a = mul i64 %.val.i, -1065810590584100411    ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %i.a, i64 %i.a, i64 26)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsoTR8nlGN3X_18ty_python_semantic4lint6LintIdEB1D_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void @_RINvXs6_NtCsoTR8nlGN3X_18ty_python_semantic4lintNtB6_6LintIdNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.b = call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1D_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i32, ptr %1, align 4, !range !19, !noalias !28367, !noundef !6
  %i.a = zext i32 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i32, ptr %1, align 4, !range !19, !noalias !28370, !noundef !6
  %i.a = zext i32 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %1, align 4, !range !54, !alias.scope !28382, !noalias !28383, !noundef !6 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %i.c = mul nsw i64 %i.b, -1065810590584100411   ; 5 uses
  switch i8 %i.a, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 6, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !range !38, !alias.scope !28382, !noalias !28383, !noundef !6 ; 2 uses
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i64 %i.c, %i.f
  %i.h = mul i64 %i.g, -1065810590584100411       ; 2 uses
  %i.i = icmp eq i32 %i.e, 2
  br i1 %i.i, label %bb.f, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i64, ptr %i.j, align 4, !alias.scope !28384, !noalias !28385
  %i.l = add i64 %i.k, %i.c
  %i.m = mul i64 %i.l, -1065810590584100411
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i8, ptr %i.n, align 4, !range !33, !alias.scope !28384, !noalias !28385, !noundef !6 ; 2 uses
  %i.p = icmp ne i8 %i.o, 2                       ; 2 uses
  %i.q = zext i1 %i.p to i64
  %i.r = add i64 %i.m, %i.q
  %i.s = mul i64 %i.r, -1065810590584100411       ; 2 uses
  %i.t = zext nneg i8 %i.o to i64
  %i.u = add i64 %i.s, %i.t
  %i.v = mul i64 %i.u, -1065810590584100411
  %storemerge.i.i.i = select i1 %i.p, i64 %i.v, i64 %i.s
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i32, ptr %i.w, align 4, !range !42, !alias.scope !28386, !noalias !28387, !noundef !6 ; 2 uses
  %i.y = icmp eq i32 %i.x, -1                     ; 2 uses
  %i.z = zext i1 %i.y to i64
  %i.aa = add nsw i64 %i.c, %i.z
  %i.ab = mul i64 %i.aa, -1065810590584100411     ; 2 uses
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = add i64 %i.ab, %i.ac
  %i.ae = mul i64 %i.ad, -1065810590584100411
  %.sink1.i.i.i = select i1 %i.y, i64 %i.ab, i64 %i.ae
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 4, !alias.scope !28386, !noalias !28387
  %i.ah = add i64 %.sink1.i.i.i, %i.ag
  %storemerge.i1.i.i = mul i64 %i.ah, -1065810590584100411
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit

bb.e:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !range !32, !alias.scope !28382, !noalias !28383, !noundef !6
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = add nsw i64 %i.c, %i.ak
  %i.am = mul i64 %i.al, -1065810590584100411
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit

bb.f:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 4, !alias.scope !28382, !noalias !28383
  %i.ap = add i64 %i.ao, %i.h
  %i.aq = mul i64 %i.ap, -1065810590584100411
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.a, %bb.b
  %.sroa.03.0 = phi i64 [ %i.c, %bb.a ], [ %i.h, %bb.b ], [ %i.aq, %bb.f ], [ %i.am, %bb.e ], [ %storemerge.i1.i.i, %bb.d ], [ %storemerge.i.i.i, %bb.c ] ; 2 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.03.0, i64 %.sroa.03.0, i64 26)
  ret i64 %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures20SignatureRelationKeyEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(20) %1) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 4, !alias.scope !28393, !noalias !28394
  %i.b = mul i64 %i.a, -1065810590584100411
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 4, !alias.scope !28393, !noalias !28394
  %i.e = add i64 %i.b, %i.d
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i8, ptr %i.g, align 4, !range !25, !alias.scope !28393, !noalias !28394, !noundef !6 ; 4 uses
  %i.i = icmp ne i8 %i.h, 4
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i8 %i.h, -2
  %.inv.i.i = icmp samesign ult i8 %i.h, 2
  %narrow.i.i = select i1 %.inv.i.i, i8 2, i8 %i.j ; 2 uses
  %i.k = zext nneg i8 %narrow.i.i to i64
  %i.l = add i64 %i.f, %i.k
  %i.m = mul i64 %i.l, -1065810590584100411       ; 2 uses
  %2 = icmp eq i8 %narrow.i.i, 2
  %i.n = zext nneg i8 %i.h to i64
  %i.o = add i64 %i.m, %i.n
  %i.p = mul i64 %i.o, -1065810590584100411
  %storemerge.i.i = select i1 %2, i64 %i.p, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.r = load i8, ptr %i.q, align 1, !range !32, !alias.scope !28393, !noalias !28394, !noundef !6
  %i.s = zext nneg i8 %i.r to i64
  %i.t = add i64 %storemerge.i.i, %i.s
  %i.u = mul i64 %i.t, -1065810590584100411       ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 26)
  ret i64 %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28421)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !28420, !noalias !28422, !noundef !6 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !28420, !noalias !28422, !noundef !6
  %i.f = zext i32 %i.c to i64
  %i.g = zext i32 %i.e to i64
  %i.h = shl nuw i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, %i.f
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = add i64 %i.j, 1452335207727870361
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8, !alias.scope !28420, !noalias !28422, !noundef !6 ; 2 uses
  %i.o = icmp ne i32 %i.n, 0                      ; 2 uses
  %i.p = zext i1 %i.o to i64
  %i.q = add i64 %i.l, %i.p
  %i.r = mul i64 %i.q, -1065810590584100411       ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !28420, !noalias !28422, !noundef !6
  %i.u = zext i32 %i.n to i64
  %i.v = zext i32 %i.t to i64
  %i.w = shl nuw i64 %i.v, 32
  %i.x = or disjoint i64 %i.w, %i.u
  %i.y = add i64 %i.x, %i.r
  %i.z = mul i64 %i.y, -1065810590584100411
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = phi i64 [ %i.z, %bb.d ], [ %i.r, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !alias.scope !28420, !noalias !28422, !noundef !6 ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 0                    ; 2 uses
  %i.ae = zext i1 %i.ad to i64
  %i.af = add i64 %i.aa, %i.ae
  %i.ag = mul i64 %i.af, -1065810590584100411     ; 2 uses
  %i.ah = zext i32 %i.ac to i64
  %i.ai = add i64 %i.ag, %i.ah
  %i.aj = mul i64 %i.ai, -1065810590584100411
  %storemerge.i.i = select i1 %i.ad, i64 %i.aj, i64 %i.ag
  %i.ak = load i64, ptr %1, align 8, !range !27, !alias.scope !28420, !noalias !28422, !noundef !6 ; 2 uses
  %i.al = add i64 %storemerge.i.i, %i.ak
  %i.am = mul i64 %i.al, -1065810590584100411     ; 2 uses
  store i64 %i.am, ptr %i.a, align 8, !alias.scope !28423, !noalias !28420
  %i.an = trunc nuw i64 %i.ak to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @_RINvXsE_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_18OwnedConstraintSetNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !28424, !noalias !28420
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = phi i64 [ %.pre.i.i, %bb.f ], [ %i.am, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !28420, !noalias !28422, !nonnull !6, !noundef !6 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !28420, !nonnull !6, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = load i64, ptr %i.au, align 8, !noalias !28420, !noundef !6 ; 2 uses
  %i.aw = add i64 %i.av, %i.ap
  %i.ax = mul i64 %i.aw, -1065810590584100411
  store i64 %i.ax, ptr %i.a, align 8, !alias.scope !28424, !noalias !28420
  call void @_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterNtNtCs4NRVxsYgnAr_4core4hash4Hash10hash_sliceNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.at, i64 noundef %i.av, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !28420
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !28425)
  call void @llvm.experimental.noalias.scope.decl(metadata !28426)
  %i.az = load i32, ptr %i.ay, align 8, !range !41, !alias.scope !28425, !noalias !28427, !noundef !6 ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = load i64, ptr %i.a, align 8, !alias.scope !28428, !noalias !28429, !noundef !6
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = mul i64 %i.bc, -1065810590584100411     ; 3 uses
  store i64 %i.bd, ptr %i.a, align 8, !alias.scope !28428, !noalias !28429
  switch i32 %i.az, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit [
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

.sink.split.i.i.i:                                ; preds = %bb.j, %bb.h
  %.sink1.i.i.i = phi i64 [ %i.bu, %bb.j ], [ %i.bh, %bb.h ]
  %i.be = mul i64 %.sink1.i.i.i, -1065810590584100411
  store i64 %i.be, ptr %i.a, align 8, !alias.scope !28430, !noalias !28429
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i64, ptr %i.bf, align 4, !alias.scope !28425, !noalias !28427
  %i.bh = add i64 %i.bg, %i.bd
  br label %.sink.split.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !28425, !noalias !28427, !noundef !6 ; 2 uses
  %i.bk = icmp ne i32 %i.bj, 0                    ; 2 uses
  %i.bl = zext i1 %i.bk to i64
  %i.bm = add i64 %i.bd, %i.bl
  %i.bn = mul i64 %i.bm, -1065810590584100411     ; 2 uses
  store i64 %i.bn, ptr %i.a, align 8, !alias.scope !28431, !noalias !28429
  br i1 %i.bk, label %bb.j, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !28425, !noalias !28427, !noundef !6
  %i.bq = zext i32 %i.bj to i64
  %i.br = zext i32 %i.bp to i64
  %i.bs = shl nuw i64 %i.br, 32
  %i.bt = or disjoint i64 %i.bs, %i.bq
  %i.bu = add i64 %i.bt, %i.bn
  br label %.sink.split.i.i.i

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit: ; preds = %bb.g, %.sink.split.i.i.i, %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.bw = call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.bw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28450)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 4, !alias.scope !28449, !noalias !28451
  %i.d = mul i64 %i.c, -1065810590584100411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28453)
  %i.e = load i32, ptr %1, align 4, !range !12, !alias.scope !28454, !noalias !28455, !noundef !6
  %i.f = icmp ne i32 %i.e, -1                     ; 2 uses
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %i.d, %i.g
  %i.i = mul i64 %i.h, -1065810590584100411       ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !alias.scope !28456, !noalias !28454
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !28457, !noalias !28454
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.i, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !range !12, !alias.scope !28454, !noalias !28455, !noundef !6
  %i.m = icmp ne i32 %i.l, -1                     ; 2 uses
  %i.n = zext i1 %i.m to i64
  %i.o = add i64 %i.j, %i.n
  %i.p = mul i64 %i.o, -1065810590584100411       ; 2 uses
  store i64 %i.p, ptr %i.a, align 8, !alias.scope !28457, !noalias !28454
  br i1 %i.m, label %bb.d, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit

bb.d:                                             ; preds = %bb.c
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val.pre = load i64, ptr %i.a, align 8
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit: ; preds = %bb.c, %bb.d
  %.val = phi i64 [ %i.p, %bb.c ], [ %.val.pre, %bb.d ] ; 2 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i32, ptr %1, align 4, !noalias !28460, !noundef !6 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
end_hunk_2
begin_hunk_3_@_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdINtNtBO_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEIB36_NtNtB3x_14known_instance18DeprecatedInstanceEbIB36_NtB3x_15DataclassParamsEIB36_NtNtB3x_8function26DataclassTransformerParamsEbbbbbEEB3z_:bb.a
  %i.fh = tail call noundef i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 26)
  ret i64 %i.fh
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dict22DynamicTypedDictAnchorNtNtB2p_12special_form15TypedDictModuleEEB2r_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29554)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29558)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 71
  %i.d = load i8, ptr %i.c, align 1, !range !8, !alias.scope !29559, !noalias !29560, !noundef !6 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !29559, !noalias !29560, !noundef !6
  %i.g = and i64 %i.f, 72057594037927935
  %i.h = icmp ult i8 %i.d, -48
  %i.i = zext i8 %i.d to i64
  %i.j = add nsw i64 %i.i, -192
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 16)
  %.sroa.0.0.i.i.i.i.i = select i1 %i.h, i64 %spec.store.select.i.i.i.i.i, i64 %i.g ; 11 uses
  %i.k = icmp ugt i8 %i.d, -49
  %i.l = load ptr, ptr %i.b, align 8, !alias.scope !29559, !noalias !29560
  %.sroa.01.0.i.i.i.i.i = select i1 %i.k, ptr %i.l, ptr %i.b ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29562)
  %i.m = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i, 17
  br i1 %i.m, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i, 7
  br i1 %i.n, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, label %bb.c

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.o = add nsw i64 %.sroa.0.0.i.i.i.i.i, -17    ; 2 uses
  %i.p = lshr i64 %i.o, 4                         ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i
  %unroll_iter = and i64 %i.q, 2305843009213693950
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new
  %.sroa.0.090.i.i.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %.sroa.06.089.i.i.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.al, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %.sroa.018.088.i.i.i.i.i.i.i = phi ptr [ %.sroa.01.0.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.ac, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 16
  %.sroa.037.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i, align 1, !alias.scope !29563, !noalias !29564
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.t, align 1, !alias.scope !29563, !noalias !29564
  %i.u = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i, %.sroa.0.090.i.i.i.i.i.i.i
  %i.v = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i, -6626703657320631856
  %i.w = zext i64 %i.u to i128
  %i.x = zext i64 %i.v to i128
  %i.y = mul nuw i128 %i.x, %i.w                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64                 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.s, align 1, !alias.scope !29563, !noalias !29564
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 24
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ad, align 1, !alias.scope !29563, !noalias !29564
  %i.ae = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.1, %.sroa.06.089.i.i.i.i.i.i.i
  %i.af = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.1, -6626703657320631856
  %i.ag = zext i64 %i.ae to i128
  %i.ah = zext i64 %i.af to i128
  %i.ai = mul nuw i128 %i.ah, %i.ag               ; 2 uses
  %i.aj = lshr i128 %i.ai, 64
  %i.ak = xor i128 %i.aj, %i.ai
  %i.al = trunc i128 %i.ak to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i
  %i.am = and i64 %i.o, 16
  %lcmp.mod.not.not = icmp eq i64 %i.am, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i
  %.sroa.0.090.i.i.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.089.i.i.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.al, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.088.i.i.i.i.i.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.ac, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.epil = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i.epil.init, align 1, !alias.scope !29563, !noalias !29564
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.epil.init, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.epil = load i64, ptr %i.an, align 1, !alias.scope !29563, !noalias !29564
  %i.ao = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.epil, %.sroa.0.090.i.i.i.i.i.i.i.epil.init
  %i.ap = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.epil, -6626703657320631856
  %i.aq = zext i64 %i.ao to i128
  %i.ar = zext i64 %i.ap to i128
  %i.as = mul nuw i128 %i.ar, %i.aq               ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = xor i128 %i.at, %i.as
  %i.av = trunc i128 %i.au to i64
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader
  %.sroa.06.089.i.i.i.i.i.i.i.lcssa = phi i64 [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.089.i.i.i.i.i.i.i.epil.init, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader ]
  %.lcssa = phi i64 [ %i.al, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ], [ %i.av, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader ]
  %i.aw = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -16
  %.sroa.041.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 1, !alias.scope !29563, !noalias !29564
  %i.ay = xor i64 %.sroa.041.0.copyload.i.i.i.i.i.i.i, %.sroa.06.089.i.i.i.i.i.i.i.lcssa
  %i.az = getelementptr i8, ptr %i.aw, i64 -8
  %.sroa.043.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.az, align 1, !alias.scope !29563, !noalias !29564
  %i.ba = xor i64 %.sroa.043.0.copyload.i.i.i.i.i.i.i, %.lcssa
  br label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.bb = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i, 3
  br i1 %i.bb, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, label %bb.d

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.028.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.0.i.i.i.i.i, align 1, !alias.scope !29563, !noalias !29564
  %i.bc = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i, 2611923443488327891
  %i.bd = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.be, align 1, !alias.scope !29563, !noalias !29564
  %i.bf = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i, 1376283091369227076
  br label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.e

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.bg = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.bh, align 1, !alias.scope !29563, !noalias !29564
  %.sroa.032.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.01.0.i.i.i.i.i, align 1, !alias.scope !29563, !noalias !29564
  %i.bi = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i to i64
  %i.bj = xor i64 %i.bi, 2611923443488327891
  %i.bk = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i to i64
  %i.bl = xor i64 %i.bk, 1376283091369227076
  br label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bm = load i8, ptr %.sroa.01.0.i.i.i.i.i, align 1, !alias.scope !29563, !noalias !29564, !noundef !6
  %i.bn = lshr i64 %.sroa.0.0.i.i.i.i.i, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !29563, !noalias !29564, !noundef !6
  %i.bq = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.br = getelementptr i8, ptr %i.bq, i64 -1
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !29563, !noalias !29564, !noundef !6
  %i.bt = zext i8 %i.bm to i64
  %i.bu = xor i64 %i.bt, 2611923443488327891
  %i.bv = zext i8 %i.bs to i64
  %i.bw = shl nuw nsw i64 %i.bv, 8
  %i.bx = zext i8 %i.bp to i64
  %i.by = or disjoint i64 %i.bw, %i.bx
  %i.bz = xor i64 %i.by, 1376283091369227076
  br label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.e, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, %bb.d, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i
  %.sroa.06.1.i.i.i.i.i.i.i = phi i64 [ %i.bf, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bl, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bz, %bb.e ], [ 1376283091369227076, %bb.d ], [ %i.ba, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ %i.bc, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bj, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bu, %bb.e ], [ 2611923443488327891, %bb.d ], [ %i.ay, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i ]
  %i.ca = zext i64 %.sroa.0.1.i.i.i.i.i.i.i to i128
  %i.cb = zext i64 %.sroa.06.1.i.i.i.i.i.i.i to i128
  %i.cc = mul nuw i128 %i.ca, %i.cb               ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = xor i128 %i.cd, %i.cc
  %i.cf = trunc i128 %i.ce to i64
  %i.cg = xor i64 %.sroa.0.0.i.i.i.i.i, %i.cf
  %i.ch = mul i64 %i.cg, 1452335207727870361
  %i.ci = add i64 %i.ch, 4919460506697669435      ; 2 uses
  store i64 %i.ci, ptr %i.a, align 8, !alias.scope !29565, !noalias !29566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29568)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !range !58, !alias.scope !29569, !noalias !29570, !noundef !6 ; 3 uses
  %i.cl = icmp ne i32 %i.ck, -1                   ; 2 uses
  %i.cm = zext i1 %i.cl to i64
  %i.cn = add i64 %i.ci, %i.cm
  %i.co = mul i64 %i.cn, -1065810590584100411     ; 2 uses
  br i1 %i.cl, label %bb.f, label %.sink.split.i.i.i

bb.f:                                             ; preds = %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !29569, !noalias !29570
  %i.cr = add i64 %i.cq, %i.co
  %i.cs = mul i64 %i.cr, -1065810590584100411
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cu = load i32, ptr %i.ct, align 8, !alias.scope !29569, !noalias !29570, !noundef !6
  %i.cv = zext i32 %i.cu to i64
  %i.cw = add i64 %i.cs, %i.cv
  %i.cx = mul i64 %i.cw, -1065810590584100411
  store i64 %i.cx, ptr %i.a, align 8, !alias.scope !29571, !noalias !29569
  call void @_RINvXs1r_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB1X_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cy = add nsw i32 %i.ck, -37
  %2 = icmp samesign ugt i32 %i.ck, 36
  %narrow.i.i.i = select i1 %2, i32 %i.cy, i32 2  ; 2 uses
  %i.cz = zext nneg i32 %narrow.i.i.i to i64
  %i.da = load i64, ptr %i.a, align 8, !alias.scope !29572, !noalias !29569, !noundef !6
  %i.db = add i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, -1065810590584100411     ; 2 uses
  store i64 %i.dc, ptr %i.a, align 8, !alias.scope !29572, !noalias !29569
  %3 = icmp eq i32 %narrow.i.i.i, 2
  br i1 %3, label %bb.g, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dict22DynamicTypedDictAnchorNtNtB1v_12special_form15TypedDictModuleENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB1x_.exit

.sink.split.i.i.i:                                ; preds = %bb.g, %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %.sink3.i.i.i = phi ptr [ %i.a, %bb.g ], [ %1, %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %.sink2.i.i.i = phi i64 [ %i.di, %bb.g ], [ %i.co, %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %i.dd = load i64, ptr %.sink3.i.i.i, align 8, !alias.scope !29573
  %i.de = add i64 %i.dd, %.sink2.i.i.i
  %i.df = mul i64 %i.de, -1065810590584100411
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dict22DynamicTypedDictAnchorNtNtB1v_12special_form15TypedDictModuleENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB1x_.exit

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.dh = load i8, ptr %i.dg, align 4, !range !32, !alias.scope !29569, !noalias !29570, !noundef !6
  %i.di = zext nneg i8 %i.dh to i64
  br label %.sink.split.i.i.i

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dict22DynamicTypedDictAnchorNtNtB1v_12special_form15TypedDictModuleENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB1x_.exit: ; preds = %bb.f, %.sink.split.i.i.i
  %i.dj = phi i64 [ %i.dc, %bb.f ], [ %i.df, %.sink.split.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load i8, ptr %i.dk, align 8, !range !32, !alias.scope !29553, !noalias !29574, !noundef !6
  %i.dl = zext nneg i8 %.val.i.i to i64
  %i.dm = add i64 %i.dj, %i.dl
  %i.dn = mul i64 %i.dm, -1065810590584100411     ; 2 uses
  %i.do = call noundef i64 @llvm.fshl.i64(i64 %i.dn, i64 %i.dn, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.do
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple23DynamicNamedTupleAnchorEEB2r_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #25 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.c = load i8, ptr %i.b, align 1, !range !8, !alias.scope !29599, !noalias !29600, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !29599, !noalias !29600, !noundef !6
  %i.f = and i64 %i.e, 72057594037927935
  %i.g = icmp ult i8 %i.c, -48
  %i.h = zext i8 %i.c to i64
  %i.i = add nsw i64 %i.h, -192
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16)
  %.sroa.0.0.i.i.i.i.i = select i1 %i.g, i64 %spec.store.select.i.i.i.i.i, i64 %i.f ; 11 uses
  %i.j = icmp ugt i8 %i.c, -49
  %i.k = load ptr, ptr %1, align 8, !alias.scope !29599, !noalias !29600
  %.sroa.01.0.i.i.i.i.i = select i1 %i.j, ptr %i.k, ptr %1 ; 10 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i, 17
  br i1 %i.l, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i, 7
  br i1 %i.m, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, label %bb.c

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.n = add nsw i64 %.sroa.0.0.i.i.i.i.i, -17    ; 2 uses
  %i.o = lshr i64 %i.n, 4                         ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i
  %unroll_iter = and i64 %i.p, 2305843009213693950
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new
  %.sroa.0.090.i.i.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %.sroa.06.089.i.i.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %.sroa.018.088.i.i.i.i.i.i.i = phi ptr [ %.sroa.01.0.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 16
  %.sroa.037.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i, align 1, !alias.scope !29601, !noalias !29602
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.s, align 1, !alias.scope !29601, !noalias !29602
  %i.t = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i, %.sroa.0.090.i.i.i.i.i.i.i
  %i.u = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i, -6626703657320631856
  %i.v = zext i64 %i.t to i128
  %i.w = zext i64 %i.u to i128
  %i.x = mul nuw i128 %i.w, %i.v                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64                  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.r, align 1, !alias.scope !29601, !noalias !29602
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 24
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ac, align 1, !alias.scope !29601, !noalias !29602
  %i.ad = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.1, %.sroa.06.089.i.i.i.i.i.i.i
  %i.ae = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.1, -6626703657320631856
  %i.af = zext i64 %i.ad to i128
  %i.ag = zext i64 %i.ae to i128
  %i.ah = mul nuw i128 %i.ag, %i.af               ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i
  %i.al = and i64 %i.n, 16
  %lcmp.mod.not.not = icmp eq i64 %i.al, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i
  %.sroa.0.090.i.i.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.089.i.i.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.088.i.i.i.i.i.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod7 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.epil = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i.epil.init, align 1, !alias.scope !29601, !noalias !29602
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.epil.init, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.epil = load i64, ptr %i.am, align 1, !alias.scope !29601, !noalias !29602
  %i.an = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.epil, %.sroa.0.090.i.i.i.i.i.i.i.epil.init
  %i.ao = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.epil, -6626703657320631856
  %i.ap = zext i64 %i.an to i128
  %i.aq = zext i64 %i.ao to i128
  %i.ar = mul nuw i128 %i.aq, %i.ap               ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader
  %.sroa.06.089.i.i.i.i.i.i.i.lcssa = phi i64 [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.089.i.i.i.i.i.i.i.epil.init, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader ]
  %.lcssa = phi i64 [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ], [ %i.au, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader ]
  %i.av = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  %.sroa.041.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 1, !alias.scope !29601, !noalias !29602
  %i.ax = xor i64 %.sroa.041.0.copyload.i.i.i.i.i.i.i, %.sroa.06.089.i.i.i.i.i.i.i.lcssa
  %i.ay = getelementptr i8, ptr %i.av, i64 -8
  %.sroa.043.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 1, !alias.scope !29601, !noalias !29602
  %i.az = xor i64 %.sroa.043.0.copyload.i.i.i.i.i.i.i, %.lcssa
  br label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i, 3
  br i1 %i.ba, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, label %bb.d

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.028.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.0.i.i.i.i.i, align 1, !alias.scope !29601, !noalias !29602
  %i.bb = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i, 2611923443488327891
  %i.bc = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bd, align 1, !alias.scope !29601, !noalias !29602
  %i.be = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i, 1376283091369227076
  br label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.e

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.bf = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.bg, align 1, !alias.scope !29601, !noalias !29602
  %.sroa.032.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.01.0.i.i.i.i.i, align 1, !alias.scope !29601, !noalias !29602
  %i.bh = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i to i64
  %i.bi = xor i64 %i.bh, 2611923443488327891
  %i.bj = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i to i64
  %i.bk = xor i64 %i.bj, 1376283091369227076
  br label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bl = load i8, ptr %.sroa.01.0.i.i.i.i.i, align 1, !alias.scope !29601, !noalias !29602, !noundef !6
  %i.bm = lshr i64 %.sroa.0.0.i.i.i.i.i, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !29601, !noalias !29602, !noundef !6
  %i.bp = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !29601, !noalias !29602, !noundef !6
  %i.bs = zext i8 %i.bl to i64
  %i.bt = xor i64 %i.bs, 2611923443488327891
  %i.bu = zext i8 %i.br to i64
  %i.bv = shl nuw nsw i64 %i.bu, 8
  %i.bw = zext i8 %i.bo to i64
  %i.bx = or disjoint i64 %i.bv, %i.bw
  %i.by = xor i64 %i.bx, 1376283091369227076
  br label %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.e, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, %bb.d, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i
  %.sroa.06.1.i.i.i.i.i.i.i = phi i64 [ %i.be, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bk, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.by, %bb.e ], [ 1376283091369227076, %bb.d ], [ %i.az, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ %i.bb, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bt, %bb.e ], [ 2611923443488327891, %bb.d ], [ %i.ax, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i ]
  %i.bz = zext i64 %.sroa.0.1.i.i.i.i.i.i.i to i128
  %i.ca = zext i64 %.sroa.06.1.i.i.i.i.i.i.i to i128
  %i.cb = mul nuw i128 %i.bz, %i.ca               ; 2 uses
  %i.cc = lshr i128 %i.cb, 64
  %i.cd = xor i128 %i.cc, %i.cb
  %i.ce = trunc i128 %i.cd to i64
  %i.cf = xor i64 %.sroa.0.0.i.i.i.i.i, %i.ce
  %i.cg = mul i64 %i.cf, 1452335207727870361
  %i.ch = load i32, ptr %i.a, align 8, !range !52, !alias.scope !29603, !noalias !29604, !noundef !6 ; 2 uses
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.ci, 4919460506697669435
  %i.ck = add i64 %i.cj, %i.cg
  %i.cl = mul i64 %i.ck, -1065810590584100411     ; 3 uses
  switch i32 %i.ch, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

default.unreachable:                              ; preds = %_RINvXsP_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
end_hunk_3
begin_hunk_4_@_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic12reachability24ProjectedNarrowingNodeIdB1A_EEB1E_:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5place18PlaceAndQualifiersNtNtB1E_5types21MemberLookupErrorKindEEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(68) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29731)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29733)
  %i.c = load i32, ptr %1, align 4, !range !50, !alias.scope !29734, !noalias !29735, !noundef !6 ; 3 uses
  %i.d = icmp eq i32 %i.c, -1                     ; 2 uses
  %i.e = select i1 %i.d, i64 -1065810590584100411, i64 0
  store i64 %i.e, ptr %i.a, align 8, !alias.scope !29736, !noalias !29734
  br i1 %i.d, label %_RINvXs1x_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29738)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load i8, ptr %i.g, align 4, !range !32, !alias.scope !29739, !noalias !29740, !noundef !6
  %i.i = zext nneg i8 %i.h to i64
  %i.j = load i64, ptr %i.a, align 8, !alias.scope !29741, !noalias !29739, !noundef !6
  %i.k = add i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -1065810590584100411
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.n = load i8, ptr %i.m, align 1, !range !32, !alias.scope !29739, !noalias !29740, !noundef !6
  %i.o = zext nneg i8 %i.n to i64
  %i.p = add i64 %i.l, %i.o
  %i.q = mul i64 %i.p, -1065810590584100411
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.s = load i8, ptr %i.r, align 2, !range !32, !alias.scope !29739, !noalias !29740, !noundef !6
  %i.t = zext nneg i8 %i.s to i64
  %i.u = add i64 %i.q, %i.t
  %i.v = mul i64 %i.u, -1065810590584100411
  %i.w = zext nneg i32 %i.c to i64
  %i.x = add i64 %i.v, %i.w
  %i.y = mul i64 %i.x, -1065810590584100411       ; 2 uses
  %i.z = icmp eq i32 %i.c, 1
  br i1 %i.z, label %bb.c, label %_RINvXs1x_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i64, ptr %i.aa, align 4, !alias.scope !29739, !noalias !29740
  %i.ac = add i64 %i.ab, %i.y
  %i.ad = mul i64 %i.ac, -1065810590584100411
  br label %_RINvXs1x_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_.exit.i.i

_RINvXs1x_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.ae = phi i64 [ %i.ad, %bb.c ], [ %i.y, %bb.b ], [ -1065810590584100411, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i8, ptr %i.af, align 4, !alias.scope !29734, !noalias !29735, !noundef !6
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add i64 %i.ae, %i.ah
  %i.aj = mul i64 %i.ai, -1065810590584100411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29743)
  %i.ak = load i32, ptr %i.b, align 4, !range !12, !alias.scope !29744, !noalias !29745, !noundef !6
  %i.al = icmp ne i32 %i.ak, -1                   ; 2 uses
  %i.am = zext i1 %i.al to i64
  %i.an = add i64 %i.aj, %i.am
  %i.ao = mul i64 %i.an, -1065810590584100411     ; 2 uses
  store i64 %i.ao, ptr %i.a, align 8, !alias.scope !29746, !noalias !29744
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvXs1x_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 52
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val.pre = load i64, ptr %i.a, align 8
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtCsoTR8nlGN3X_18ty_python_semantic5place18PlaceAndQualifiersNtNtBK_5types21MemberLookupErrorKindENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBK_.exit

bb.e:                                             ; preds = %_RINvXs1x_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_18PlaceAndQualifiersNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 4, !alias.scope !29744, !noalias !29745
  %i.as = add i64 %i.ar, %i.ao
  %i.at = mul i64 %i.as, -1065810590584100411
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtCsoTR8nlGN3X_18ty_python_semantic5place18PlaceAndQualifiersNtNtBK_5types21MemberLookupErrorKindENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBK_.exit

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtCsoTR8nlGN3X_18ty_python_semantic5place18PlaceAndQualifiersNtNtBK_5types21MemberLookupErrorKindENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBK_.exit: ; preds = %bb.d, %bb.e
  %.val = phi i64 [ %.val.pre, %bb.d ], [ %i.at, %bb.e ] ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.au
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types14DataclassFlagsINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1C_4TypeEEEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29758)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i16, ptr %1, align 8, !alias.scope !29757, !noalias !29759, !noundef !6
  %i.c = zext i16 %.val.i.i to i64
  %i.d = mul i64 %i.c, -1065810590584100411
  store i64 %i.d, ptr %i.a, align 8, !alias.scope !29760, !noalias !29757
  call void @_RINvXsk_NtCscdodAO9FK5_5alloc5boxedINtB6_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.e = call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyNtB1C_4TypeEEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29772)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %1, align 4, !alias.scope !29771, !noalias !29773
  %i.c = mul i64 %.val.i.i, -1065810590584100411
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !29774, !noalias !29771
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.d = tail call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1A_EEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1A_INtNtBO_6option6OptionB1A_EB1A_EEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29789)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29791)
  %i.d = load i32, ptr %i.c, align 4, !range !12, !alias.scope !29792, !noalias !29793, !noundef !6 ; 2 uses
  %i.e = icmp ne i32 %i.d, -1
  %i.f = zext i1 %i.e to i64
  %i.g = load i64, ptr %i.a, align 8, !alias.scope !29794, !noalias !29792, !noundef !6
  %i.h = add i64 %i.g, %i.f
  %i.i = mul i64 %i.h, -1065810590584100411
  store i64 %i.i, ptr %i.a, align 8, !alias.scope !29794, !noalias !29792
  %.not.i.i.i = icmp eq i32 %i.d, -1
  br i1 %.not.i.i.i, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBG_INtNtBa_6option6OptionBG_EBG_ENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBG_INtNtBa_6option6OptionBG_EBG_ENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBK_.exit

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBG_INtNtBa_6option6OptionBG_EBG_ENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBK_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1A_NtNtB1C_8relation12TypeRelationNtB2s_17TypeVarEvaluationEEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29808)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 33
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val.i.i = load i8, ptr %i.c, align 4, !range !25, !alias.scope !29807, !noalias !29809, !noundef !6 ; 4 uses
  %i.e = icmp ne i8 %.val.i.i, 4
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i8 %.val.i.i, -2
  %.inv.i.i.i = icmp samesign ult i8 %.val.i.i, 2
  %narrow.i.i.i = select i1 %.inv.i.i.i, i8 2, i8 %i.f ; 2 uses
  %i.g = zext nneg i8 %narrow.i.i.i to i64
  %i.h = load i64, ptr %i.a, align 8, !alias.scope !29810, !noalias !29807, !noundef !6
  %i.i = add i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -1065810590584100411       ; 2 uses
  %2 = icmp eq i8 %narrow.i.i.i, 2
  %i.k = zext nneg i8 %.val.i.i to i64
  %i.l = add i64 %i.j, %i.k
  %i.m = mul i64 %i.l, -1065810590584100411
  %storemerge.i.i.i = select i1 %2, i64 %i.m, i64 %i.j
  %.val1.i.i = load i8, ptr %i.d, align 1, !range !32, !alias.scope !29807, !noalias !29809, !noundef !6
  %i.n = zext nneg i8 %.val1.i.i to i64
  %i.o = add i64 %storemerge.i.i.i, %i.n
  %i.p = mul i64 %i.o, -1065810590584100411       ; 2 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtBO_6option6OptionTNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtNtB2N_5place13ScopedPlaceIdEEEEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29828)
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29830)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 4, !range !52, !alias.scope !29831, !noalias !29832, !noundef !6 ; 3 uses
  %i.d = icmp ne i32 %i.c, 2
  %i.e = zext i1 %i.d to i64
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !29833, !noalias !29831, !noundef !6
  %i.g = add i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -1065810590584100411       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 2
  br i1 %.not.i.i.i, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtBa_6option6OptionTNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtNtB1T_5place13ScopedPlaceIdEEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i = load i64, ptr %i.i, align 4, !alias.scope !29834, !noalias !29835
  %i.j = add i64 %.val.i.i.i.i, %i.h
  %i.k = mul i64 %i.j, -1065810590584100411
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val3.i.i.i.i = load i32, ptr %i.l, align 4, !alias.scope !29834, !noalias !29835
  %i.m = zext nneg i32 %i.c to i64
  %i.n = add i64 %i.k, %i.m
  %i.o = mul i64 %i.n, -1065810590584100411
  %.pn.i.i.i.i.i = zext i32 %.val3.i.i.i.i to i64
  %storemerge.in.i.i.i.i.i = add i64 %i.o, %.pn.i.i.i.i.i
  %storemerge.i.i.i.i.i = mul i64 %storemerge.in.i.i.i.i.i, -1065810590584100411
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtBa_6option6OptionTNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtNtB1T_5place13ScopedPlaceIdEEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBK_.exit

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtBa_6option6OptionTNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtNtB1T_5place13ScopedPlaceIdEEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBK_.exit: ; preds = %bb.a, %bb.b
  %.val = phi i64 [ %i.h, %bb.a ], [ %storemerge.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtB1C_8generics14SpecializationEEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29847)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val.i.i = load i64, ptr %i.b, align 4, !alias.scope !29846, !noalias !29848
  %i.c = load i64, ptr %i.a, align 8, !alias.scope !29849, !noalias !29846, !noundef !6
  %i.d = add i64 %i.c, %.val.i.i
  %i.e = mul i64 %i.d, -1065810590584100411       ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramEEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29861)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val.i.i = load i64, ptr %i.b, align 4, !alias.scope !29860, !noalias !29862
  %i.c = load i64, ptr %i.a, align 8, !alias.scope !29863, !noalias !29860, !noundef !6
  %i.d = add i64 %i.c, %.val.i.i
  %i.e = mul i64 %i.d, -1065810590584100411       ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1C_19MaterializationKindEEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(28) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29875)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val.i.i = load i64, ptr %i.b, align 4, !alias.scope !29874, !noalias !29876
  %i.d = load i64, ptr %i.a, align 8, !alias.scope !29877, !noalias !29874, !noundef !6
  %i.e = add i64 %i.d, %.val.i.i
  %i.f = mul i64 %i.e, -1065810590584100411
  %.val2.i.i = load i8, ptr %i.c, align 4, !range !32, !alias.scope !29874, !noalias !29876, !noundef !6
  %i.g = zext nneg i8 %.val2.i.i to i64
  %i.h = add i64 %i.f, %i.g
  %i.i = mul i64 %i.h, -1065810590584100411       ; 2 uses
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgrambEEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(28) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29889)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val.i.i = load i64, ptr %i.b, align 4, !alias.scope !29888, !noalias !29890
  %i.d = load i64, ptr %i.a, align 8, !alias.scope !29891, !noalias !29888, !noundef !6
  %i.e = add i64 %i.d, %.val.i.i
  %i.f = mul i64 %i.e, -1065810590584100411
  %.val2.i.i = load i8, ptr %i.c, align 4, !range !32, !alias.scope !29888, !noalias !29890, !noundef !6
  %i.g = zext nneg i8 %.val2.i.i to i64
  %i.h = add i64 %i.f, %i.g
  %i.i = mul i64 %i.h, -1065810590584100411       ; 2 uses
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB1A_EEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29905)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val.i.i = load i8, ptr %i.b, align 4, !range !60, !alias.scope !29904, !noalias !29906, !noundef !6
  %i.d = zext nneg i8 %.val.i.i to i64
  %i.e = load i64, ptr %i.a, align 8, !alias.scope !29907, !noalias !29904, !noundef !6
  %i.f = add i64 %i.e, %i.d
  %i.g = mul i64 %i.f, -1065810590584100411
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !29907, !noalias !29904
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.h = tail call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtNtB1C_5infer11comparisons19NonIdentityOperatorB1A_EEB1E_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29921)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val.i.i = load i8, ptr %i.b, align 4, !range !32, !alias.scope !29920, !noalias !29922, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 17
  %.val1.i.i = load i8, ptr %i.d, align 1, !alias.scope !29920, !noalias !29922
  %i.e = zext nneg i8 %.val.i.i to i64
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !29923, !noalias !29920, !noundef !6
  %i.g = add i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -1065810590584100411
end_hunk_4
begin_hunk_5_@_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums16EnumClassLiteralNtNtB1E_8equality18ComparisonOperatorEEB1G_:bb.a
  %i.e = mul i64 %i.d, -1065810590584100411       ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 26)
  ret i64 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums16EnumClassLiteralNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEEB1G_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #25 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !30260, !noalias !30261
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.c = load i8, ptr %i.b, align 1, !range !8, !alias.scope !30262, !noalias !30263, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !30262, !noalias !30263, !noundef !6
  %i.f = and i64 %i.e, 72057594037927935
  %i.g = icmp ult i8 %i.c, -48
  %i.h = zext i8 %i.c to i64
  %i.i = add nsw i64 %i.h, -192
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16)
  %.sroa.0.0.i.i.i.i.i = select i1 %i.g, i64 %spec.store.select.i.i.i.i.i, i64 %i.f ; 11 uses
  %i.j = icmp ugt i8 %i.c, -49
  %i.k = load ptr, ptr %i.a, align 8, !alias.scope !30262, !noalias !30263
  %.sroa.01.0.i.i.i.i.i = select i1 %i.j, ptr %i.k, ptr %i.a ; 10 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i, 17
  br i1 %i.l, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i, 7
  br i1 %i.m, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, label %bb.c

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.n = add nsw i64 %.sroa.0.0.i.i.i.i.i, -17    ; 2 uses
  %i.o = lshr i64 %i.n, 4                         ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i
  %unroll_iter = and i64 %i.p, 2305843009213693950
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new
  %.sroa.0.090.i.i.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %.sroa.06.089.i.i.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %.sroa.018.088.i.i.i.i.i.i.i = phi ptr [ %.sroa.01.0.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 16
  %.sroa.037.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i, align 1, !alias.scope !30264, !noalias !30265
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.s, align 1, !alias.scope !30264, !noalias !30265
  %i.t = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i, %.sroa.0.090.i.i.i.i.i.i.i
  %i.u = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i, -6626703657320631856
  %i.v = zext i64 %i.t to i128
  %i.w = zext i64 %i.u to i128
  %i.x = mul nuw i128 %i.w, %i.v                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64                  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.r, align 1, !alias.scope !30264, !noalias !30265
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i, i64 24
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ac, align 1, !alias.scope !30264, !noalias !30265
  %i.ad = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.1, %.sroa.06.089.i.i.i.i.i.i.i
  %i.ae = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.1, -6626703657320631856
  %i.af = zext i64 %i.ad to i128
  %i.ag = zext i64 %i.ae to i128
  %i.ah = mul nuw i128 %i.ag, %i.af               ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i
  %i.al = and i64 %i.n, 16
  %lcmp.mod.not.not = icmp eq i64 %i.al, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i
  %.sroa.0.090.i.i.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.089.i.i.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.088.i.i.i.i.i.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.i.i ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod7 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.epil = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i.epil.init, align 1, !alias.scope !30264, !noalias !30265
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.epil.init, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.epil = load i64, ptr %i.am, align 1, !alias.scope !30264, !noalias !30265
  %i.an = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.epil, %.sroa.0.090.i.i.i.i.i.i.i.epil.init
  %i.ao = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.epil, -6626703657320631856
  %i.ap = zext i64 %i.an to i128
  %i.aq = zext i64 %i.ao to i128
  %i.ar = mul nuw i128 %i.aq, %i.ap               ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader
  %.sroa.06.089.i.i.i.i.i.i.i.lcssa = phi i64 [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.089.i.i.i.i.i.i.i.epil.init, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader ]
  %.lcssa = phi i64 [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i.unr-lcssa ], [ %i.au, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.i.i.epil.preheader ]
  %i.av = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  %.sroa.041.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 1, !alias.scope !30264, !noalias !30265
  %i.ax = xor i64 %.sroa.041.0.copyload.i.i.i.i.i.i.i, %.sroa.06.089.i.i.i.i.i.i.i.lcssa
  %i.ay = getelementptr i8, ptr %i.av, i64 -8
  %.sroa.043.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 1, !alias.scope !30264, !noalias !30265
  %i.az = xor i64 %.sroa.043.0.copyload.i.i.i.i.i.i.i, %.lcssa
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums16EnumClassLiteralNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBM_.exit

bb.c:                                             ; preds = %bb.b
  %i.ba = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i, 3
  br i1 %i.ba, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, label %bb.d

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.028.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.0.i.i.i.i.i, align 1, !alias.scope !30264, !noalias !30265
  %i.bb = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i, 2611923443488327891
  %i.bc = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bd, align 1, !alias.scope !30264, !noalias !30265
  %i.be = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums16EnumClassLiteralNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBM_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums16EnumClassLiteralNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBM_.exit, label %bb.e

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.bf = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.bg, align 1, !alias.scope !30264, !noalias !30265
  %.sroa.032.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.01.0.i.i.i.i.i, align 1, !alias.scope !30264, !noalias !30265
  %i.bh = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i to i64
  %i.bi = xor i64 %i.bh, 2611923443488327891
  %i.bj = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i to i64
  %i.bk = xor i64 %i.bj, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums16EnumClassLiteralNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBM_.exit

bb.e:                                             ; preds = %bb.d
  %i.bl = load i8, ptr %.sroa.01.0.i.i.i.i.i, align 1, !alias.scope !30264, !noalias !30265, !noundef !6
  %i.bm = lshr i64 %.sroa.0.0.i.i.i.i.i, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !30264, !noalias !30265, !noundef !6
  %i.bp = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !30264, !noalias !30265, !noundef !6
  %i.bs = zext i8 %i.bl to i64
  %i.bt = xor i64 %i.bs, 2611923443488327891
  %i.bu = zext i8 %i.br to i64
  %i.bv = shl nuw nsw i64 %i.bu, 8
  %i.bw = zext i8 %i.bo to i64
  %i.bx = or disjoint i64 %i.bv, %i.bw
  %i.by = xor i64 %i.bx, 1376283091369227076
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums16EnumClassLiteralNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBM_.exit

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums16EnumClassLiteralNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBM_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, %bb.d, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i, %bb.e
  %.sroa.06.1.i.i.i.i.i.i.i = phi i64 [ %i.be, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bk, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.by, %bb.e ], [ 1376283091369227076, %bb.d ], [ %i.az, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ %i.bb, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i ], [ %i.bt, %bb.e ], [ 2611923443488327891, %bb.d ], [ %i.ax, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.i.i ]
  %i.bz = mul i64 %.val.i.i, -1065810590584100411
  %i.ca = zext i64 %.sroa.0.1.i.i.i.i.i.i.i to i128
  %i.cb = zext i64 %.sroa.06.1.i.i.i.i.i.i.i to i128
  %i.cc = mul nuw i128 %i.ca, %i.cb               ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = xor i128 %i.cd, %i.cc
  %i.cf = trunc i128 %i.ce to i64
  %i.cg = xor i64 %.sroa.0.0.i.i.i.i.i, %i.cf
  %i.ch = add i64 %i.cg, %i.bz
  %i.ci = mul i64 %i.ch, 1452335207727870361
  %i.cj = add i64 %i.ci, 4919460506697669435      ; 2 uses
  %i.ck = tail call noundef i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 26)
  ret i64 %i.ck
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityINtNtBO_6option6OptionNtB1C_35TypeVarBoundOrConstraintsEvaluationEIB2J_NtNtB1E_8variance15TypeVarVarianceEIB2J_NtB1C_24TypeVarDefaultEvaluationEEEB1G_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(44) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30302)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.val.i.i = load i64, ptr %i.b, align 4, !alias.scope !30301, !noalias !30303
  %i.e = mul i64 %.val.i.i, -1065810590584100411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30305)
  %i.f = load i32, ptr %1, align 4, !range !55, !alias.scope !30306, !noalias !30307, !noundef !6 ; 5 uses
  %i.g = icmp ne i32 %i.f, -2
  %i.h = zext i1 %i.g to i64
  %i.i = add i64 %i.e, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.f, -2
  br i1 %.not.i.i.i, label %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30309)
  %i.k = add nsw i32 %i.f, -37
  %2 = icmp sgt i32 %i.f, 36
  %narrow.i.i.i.i = select i1 %2, i32 %i.k, i32 2 ; 2 uses
  %i.l = zext nneg i32 %narrow.i.i.i.i to i64
  %i.m = add i64 %i.j, %i.l
  %i.n = mul i64 %i.m, -1065810590584100411       ; 2 uses
  %3 = icmp eq i32 %narrow.i.i.i.i, 2
  br i1 %3, label %bb.c, label %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30311)
  %i.o = icmp eq i32 %i.f, -1                     ; 2 uses
  %i.p = zext i1 %i.o to i64
  %i.q = add i64 %i.n, %i.p
  %i.r = mul i64 %i.q, -1065810590584100411       ; 2 uses
  store i64 %i.r, ptr %i.a, align 8, !alias.scope !30312, !noalias !30313
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i64, ptr %i.s, align 4, !alias.scope !30313, !noalias !30314
  %i.u = add i64 %i.t, %i.r
  %i.v = mul i64 %i.u, -1065810590584100411
  br label %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i

bb.e:                                             ; preds = %bb.c
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(44) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !30315, !noalias !30301
  br label %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i

_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %i.w = phi i64 [ %i.j, %bb.a ], [ %i.n, %bb.b ], [ %i.v, %bb.d ], [ %.pre.i.i, %bb.e ]
  %.val2.i.i = load i8, ptr %i.c, align 4, !range !56, !alias.scope !30301, !noalias !30303, !noundef !6 ; 3 uses
  %i.x = icmp ne i8 %.val2.i.i, -1
  %i.y = zext i1 %i.x to i64
  %i.z = add i64 %i.w, %i.y
  %i.aa = mul i64 %i.z, -1065810590584100411      ; 2 uses
  %.not.i3.i.i = icmp eq i8 %.val2.i.i, -1
  %i.ab = zext nneg i8 %.val2.i.i to i64
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = mul i64 %i.ac, -1065810590584100411
  %storemerge.i.i.i = select i1 %.not.i3.i.i, i64 %i.aa, i64 %i.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30317)
  %i.ae = load i32, ptr %i.d, align 4, !range !13, !alias.scope !30318, !noalias !30319, !noundef !6 ; 3 uses
  %i.af = icmp ne i32 %i.ae, -2
  %i.ag = zext i1 %i.af to i64
  %i.ah = add i64 %storemerge.i.i.i, %i.ag
  %i.ai = mul i64 %i.ah, -1065810590584100411     ; 2 uses
  %.not.i4.i.i = icmp eq i32 %i.ae, -2
  br i1 %.not.i4.i.i, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityINtNtBa_6option6OptionNtBI_35TypeVarBoundOrConstraintsEvaluationEIB1P_NtNtBK_8variance15TypeVarVarianceEIB1P_NtBI_24TypeVarDefaultEvaluationEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBM_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i
  %i.aj = icmp ne i32 %i.ae, -1                   ; 2 uses
  %i.ak = zext i1 %i.aj to i64
  %i.al = add i64 %i.ai, %i.ak
  %i.am = mul i64 %i.al, -1065810590584100411     ; 2 uses
  store i64 %i.am, ptr %i.a, align 8, !alias.scope !30320, !noalias !30321
  br i1 %i.aj, label %bb.g, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityINtNtBa_6option6OptionNtBI_35TypeVarBoundOrConstraintsEvaluationEIB1P_NtNtBK_8variance15TypeVarVarianceEIB1P_NtBI_24TypeVarDefaultEvaluationEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBM_.exit

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val.pre = load i64, ptr %i.a, align 8
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityINtNtBa_6option6OptionNtBI_35TypeVarBoundOrConstraintsEvaluationEIB1P_NtNtBK_8variance15TypeVarVarianceEIB1P_NtBI_24TypeVarDefaultEvaluationEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBM_.exit

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityINtNtBa_6option6OptionNtBI_35TypeVarBoundOrConstraintsEvaluationEIB1P_NtNtBK_8variance15TypeVarVarianceEIB1P_NtBI_24TypeVarDefaultEvaluationEENtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBM_.exit: ; preds = %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i, %bb.f, %bb.g
  %.val = phi i64 [ %i.ai, %_RINvXsS_NtCs4NRVxsYgnAr_4core6optionINtB6_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB8_4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBR_.exit.i.i ], [ %i.am, %bb.f ], [ %.val.pre, %bb.g ] ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.an
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceNtB1C_20BoundTypeVarIdentityEEB1G_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(36) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %1, align 4, !alias.scope !30333, !noalias !30334
  %i.b = mul i64 %.val.i.i, -1065810590584100411
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i64, ptr %i.c, align 4, !alias.scope !30335, !noalias !30336
  %i.e = add i64 %i.d, %i.b
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = load i32, ptr %i.a, align 4, !range !18, !alias.scope !30337, !noalias !30338, !noundef !6
  %i.h = zext nneg i32 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i64, ptr %i.k, align 4, !alias.scope !30337, !noalias !30338
  %storemerge.in.i.i.i.i = add i64 %i.j, %i.l
  %storemerge.i.i.i.i = mul i64 %storemerge.in.i.i.i.i, -1065810590584100411
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i8, ptr %i.m, align 4, !range !33, !alias.scope !30335, !noalias !30336, !noundef !6 ; 2 uses
  %i.o = icmp ne i8 %i.n, 2                       ; 2 uses
  %i.p = zext i1 %i.o to i64
  %i.q = add i64 %storemerge.i.i.i.i, %i.p
  %i.r = mul i64 %i.q, -1065810590584100411       ; 2 uses
  %i.s = zext nneg i8 %i.n to i64
  %i.t = add i64 %i.r, %i.s
  %i.u = mul i64 %i.t, -1065810590584100411
  %storemerge.i.i.i = select i1 %i.o, i64 %i.u, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !30335, !noalias !30336, !noundef !6
  %i.x = zext i32 %i.w to i64
  %i.y = add i64 %storemerge.i.i.i, %i.x
  %i.z = mul i64 %i.y, -1065810590584100411       ; 2 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 26)
  ret i64 %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarSetInnerB1A_EEB1G_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i = load i64, ptr %1, align 4, !alias.scope !30344, !noalias !30345
  %i.b = mul i64 %.val2.i.i, -1065810590584100411
  %.val.i.i = load i64, ptr %i.a, align 4, !alias.scope !30344, !noalias !30345
  %i.c = add i64 %i.b, %.val.i.i
  %i.d = mul i64 %i.c, -1065810590584100411       ; 2 uses
  %i.e = tail call noundef i64 @llvm.fshl.i64(i64 %i.d, i64 %i.d, i64 26)
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeNtB1E_4TypeEEB1G_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30357)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %1, align 4, !alias.scope !30356, !noalias !30358
  %i.c = mul i64 %.val.i.i, -1065810590584100411
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !30359, !noalias !30356
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.d = tail call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeNtNtB1E_10signatures26ReturnCallableTypeVarScopeEEB1G_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %1, align 4, !alias.scope !30365, !noalias !30366
  %i.b = mul i64 %.val.i.i, -1065810590584100411
  %.val2.i.i = load i8, ptr %i.a, align 4, !range !32, !alias.scope !30365, !noalias !30366, !noundef !6
  %i.c = zext nneg i8 %.val2.i.i to i64
  %i.d = add i64 %i.b, %i.c
  %i.e = mul i64 %i.d, -1065810590584100411       ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 26)
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeNtNtB1E_7typevar20BoundTypeVarIdentityEEB1G_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(36) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %1, align 4, !alias.scope !30378, !noalias !30379
  %i.b = mul i64 %.val.i.i, -1065810590584100411
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i64, ptr %i.c, align 4, !alias.scope !30380, !noalias !30381
  %i.e = add i64 %i.d, %i.b
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = load i32, ptr %i.a, align 4, !range !18, !alias.scope !30382, !noalias !30383, !noundef !6
  %i.h = zext nneg i32 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i64, ptr %i.k, align 4, !alias.scope !30382, !noalias !30383
  %storemerge.in.i.i.i.i = add i64 %i.j, %i.l
  %storemerge.i.i.i.i = mul i64 %storemerge.in.i.i.i.i, -1065810590584100411
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i8, ptr %i.m, align 4, !range !33, !alias.scope !30380, !noalias !30381, !noundef !6 ; 2 uses
  %i.o = icmp ne i8 %i.n, 2                       ; 2 uses
  %i.p = zext i1 %i.o to i64
  %i.q = add i64 %storemerge.i.i.i.i, %i.p
  %i.r = mul i64 %i.q, -1065810590584100411       ; 2 uses
  %i.s = zext nneg i8 %i.n to i64
  %i.t = add i64 %i.r, %i.s
  %i.u = mul i64 %i.t, -1065810590584100411
  %storemerge.i.i.i = select i1 %i.o, i64 %i.u, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !30380, !noalias !30381, !noundef !6
  %i.x = zext i32 %i.w to i64
  %i.y = add i64 %storemerge.i.i.i, %i.x
  %i.z = mul i64 %i.y, -1065810590584100411       ; 2 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 26)
  ret i64 %i.aa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15FunctionLiteralINtNtBO_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB1C_25UpdatedFunctionSignaturesEEEEB1G_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30401)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %1, align 8, !alias.scope !30402, !noalias !30403
  %i.d = mul i64 %i.c, -1065810590584100411
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i8, ptr %i.e, align 8, !range !32, !alias.scope !30402, !noalias !30403, !noundef !6
  %i.g = zext nneg i8 %i.f to i64
  %i.h = add i64 %i.d, %i.g
end_hunk_5
