Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/bg4_prediction_benchmark.bg4_prediction_benchmark.213775b342ff50b9-cgu.0?download=true
inline.NumInlined: 297
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvCs2QOiZQTg0gD_24bg4_prediction_benchmark4main:bb.a
  %i.ec = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.eb, <4 x i32> %i.eb, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ed = add <4 x i32> %i.ec, %i.dx              ; 2 uses
  %i.ee = xor <4 x i32> %i.ed, %i.dz              ; 2 uses
  %i.ef = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ee, <4 x i32> %i.ee, <4 x i32> splat (i32 7)) ; 2 uses
  %i.eg = add <4 x i32> %i.cj, %i.de              ; 2 uses
  %i.eh = xor <4 x i32> %i.eg, %i.dd              ; 2 uses
  %i.ei = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.eh, <4 x i32> %i.eh, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ej = add <4 x i32> %i.ei, %i.dc              ; 2 uses
  %i.ek = xor <4 x i32> %i.ej, %i.cj              ; 2 uses
  %i.el = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ek, <4 x i32> %i.ek, <4 x i32> splat (i32 12)) ; 2 uses
  %i.em = add <4 x i32> %i.el, %i.eg              ; 2 uses
  %i.en = xor <4 x i32> %i.em, %i.ei              ; 2 uses
  %i.eo = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.en, <4 x i32> %i.en, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ep = add <4 x i32> %i.eo, %i.ej              ; 2 uses
  %i.eq = xor <4 x i32> %i.ep, %i.el              ; 2 uses
  %i.er = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.eq, <4 x i32> %i.eq, <4 x i32> splat (i32 7)) ; 2 uses
  %i.es = add <4 x i32> %i.cv, %i.dh              ; 2 uses
  %i.et = xor <4 x i32> %i.es, %i.dg              ; 2 uses
  %i.eu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.et, <4 x i32> %i.et, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ev = add <4 x i32> %i.eu, %i.df              ; 2 uses
  %i.ew = xor <4 x i32> %i.ev, %i.cv              ; 2 uses
  %i.ex = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ew, <4 x i32> %i.ew, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ey = add <4 x i32> %i.ex, %i.es              ; 2 uses
  %i.ez = xor <4 x i32> %i.ey, %i.eu              ; 2 uses
  %i.fa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ez, <4 x i32> %i.ez, <4 x i32> splat (i32 8)) ; 2 uses
  %i.fb = add <4 x i32> %i.fa, %i.ev              ; 2 uses
  %i.fc = xor <4 x i32> %i.fb, %i.ex              ; 2 uses
  %i.fd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fc, <4 x i32> %i.fc, <4 x i32> splat (i32 7)) ; 2 uses
  %i.fe = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.ff = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.fg = shufflevector <4 x i32> %i.do, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.fh = shufflevector <4 x i32> %i.ed, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.fi = shufflevector <4 x i32> %i.ec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.fj = shufflevector <4 x i32> %i.ea, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.fk = shufflevector <4 x i32> %i.ep, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.fl = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.fm = shufflevector <4 x i32> %i.em, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.fn = shufflevector <4 x i32> %i.fb, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.fo = shufflevector <4 x i32> %i.fa, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.fp = shufflevector <4 x i32> %i.ey, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.az, 6
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.i, label %bb.f

_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.i: ; preds = %bb.f
  %i.fq = add <4 x i32> %i.fg, %.sroa.012.0.copyload24.i.i.i
  %i.fr = add <4 x i32> %i.dt, %.sroa.013.0.copyload25.i.i.i
  %i.fs = add <4 x i32> %i.fe, %.sroa.014.0.copyload26.i.i.i
  %i.ft = add <4 x i32> %i.ff, %i.ac
  %i.fu = add <4 x i32> %i.fj, %.sroa.012.0.copyload24.i.i.i
  %i.fv = add <4 x i32> %i.ef, %.sroa.013.0.copyload25.i.i.i
  %i.fw = add <4 x i32> %i.fh, %.sroa.014.0.copyload26.i.i.i
  %i.fx = add <4 x i32> %i.fi, %i.ag
  %i.fy = add <4 x i32> %i.fm, %.sroa.012.0.copyload24.i.i.i
  %i.fz = add <4 x i32> %i.er, %.sroa.013.0.copyload25.i.i.i
  %i.ga = add <4 x i32> %i.fk, %.sroa.014.0.copyload26.i.i.i
  %i.gb = add <4 x i32> %i.fl, %i.ah
  %i.gc = add <4 x i32> %i.fp, %.sroa.012.0.copyload24.i.i.i
  %i.gd = add <4 x i32> %i.fd, %.sroa.013.0.copyload25.i.i.i
  %i.ge = add <4 x i32> %i.fn, %.sroa.014.0.copyload26.i.i.i
  %i.gf = add <4 x i32> %i.fo, %i.ai
  store <4 x i32> %i.fq, ptr %i.s, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.fr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.fs, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.ft, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.fu, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.fv, ptr %.sroa.8.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.fw, ptr %.sroa.9.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.fx, ptr %.sroa.10.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.fy, ptr %.sroa.11.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.fz, ptr %.sroa.12.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.ga, ptr %.sroa.13.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.gb, ptr %.sroa.14.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.gc, ptr %.sroa.15.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.gd, ptr %.sroa.16.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.ge, ptr %.sroa.17.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  store <4 x i32> %i.gf, ptr %.sroa.18.0..sroa_idx.i.i.i, align 16, !alias.scope !67, !noalias !68
  %i.gg = add <2 x i64> %.sroa.015.0.copyload.i.i.i, <i64 4, i64 0> ; 2 uses
  %i.gh = bitcast <2 x i64> %i.gg to <4 x i32>
  %i.gi = extractelement <4 x i32> %i.gh, i64 0
  store i32 %i.gi, ptr %.sroa.615.0..sroa_idx.i, align 16, !alias.scope !65, !noalias !66
  %i.gj = tail call fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs2QOiZQTg0gD_24bg4_prediction_benchmark(<2 x i64> %i.gg) #22
  store i32 %i.gj, ptr %i.y, align 4, !alias.scope !65, !noalias !66
  br label %.lr.ph.i.i.preheader.i

bb.g:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %.sroa.5.0..sroa_idx.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.s) #22, !alias.scope !69, !noalias !52
  br label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c, %_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.i, %bb.g
  %.sroa.05.2.i = phi i64 [ %.sroa.05.062.i, %bb.c ], [ 0, %_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.gk = sub nuw nsw i64 104857600, %.sroa.0.063.i
  %i.gl = lshr exact i64 %i.gk, 2
  %i.gm = sub nuw nsw i64 64, %.sroa.05.2.i
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.gm, i64 %i.gl) ; 5 uses
  %.idx.i = shl nuw nsw i64 %.sroa.05.2.i, 2      ; 3 uses
  %i.gn = getelementptr i8, ptr %i.w, i64 %.sroa.0.063.i
  %scevgep.i = getelementptr i8, ptr %i.s, i64 %.idx.i
  %i.go = shl nuw nsw i64 %..i.i.i, 2             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gn, ptr align 4 %scevgep.i, i64 %i.go, i1 false), !alias.scope !70, !noalias !71
  %i.gp = add nsw i64 %..i.i.i, -1
  %xtraiter = and i64 %..i.i.i, 7                 ; 3 uses
  %i.gq = icmp ult i64 %i.gp, 7
  br i1 %i.gq, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.preheader.i.new

.lr.ph.i.i.preheader.i.new:                       ; preds = %.lr.ph.i.i.preheader.i
  %unroll_iter = and i64 %..i.i.i, 120
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i.new
  %.sroa.0.036.idx.i = phi i64 [ %.idx.i, %.lr.ph.i.i.preheader.i.new ], [ %.sroa.0.036.add.i.7, %.lr.ph.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %i.gr = icmp ne i64 %.sroa.0.036.idx.i, 256
  tail call void @llvm.assume(i1 %i.gr)
  %i.gs = icmp ne i64 %.sroa.0.036.idx.i, 252
  tail call void @llvm.assume(i1 %i.gs)
  %i.gt = icmp ne i64 %.sroa.0.036.idx.i, 248
  tail call void @llvm.assume(i1 %i.gt)
  %i.gu = icmp ne i64 %.sroa.0.036.idx.i, 244
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = icmp ne i64 %.sroa.0.036.idx.i, 240
  tail call void @llvm.assume(i1 %i.gv)
  %i.gw = icmp ne i64 %.sroa.0.036.idx.i, 236
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = icmp ne i64 %.sroa.0.036.idx.i, 232
  tail call void @llvm.assume(i1 %i.gx)
  %i.gy = icmp ne i64 %.sroa.0.036.idx.i, 228
  tail call void @llvm.assume(i1 %i.gy)
  %.sroa.0.036.add.i.7 = add nuw nsw i64 %.sroa.0.036.idx.i, 32 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.unr-lcssa, label %.lr.ph.i.i.i

_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.unr-lcssa, %.lr.ph.i.i.preheader.i
  %.sroa.0.036.idx.i.epil.init = phi i64 [ %.idx.i, %.lr.ph.i.i.preheader.i ], [ %.sroa.0.036.add.i.7, %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.036.idx.i.epil = phi i64 [ %.sroa.0.036.add.i.epil, %.lr.ph.i.i.i.epil ], [ %.sroa.0.036.idx.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.gz = icmp ne i64 %.sroa.0.036.idx.i.epil, 256
  tail call void @llvm.assume(i1 %i.gz)
  %.sroa.0.036.add.i.epil = add nuw nsw i64 %.sroa.0.036.idx.i.epil, 4 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !76

_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i: ; preds = %.lr.ph.i.i.i.epil, %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.unr-lcssa
  %.sroa.0.036.add.i.lcssa = phi i64 [ %.sroa.0.036.add.i.7, %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i.unr-lcssa ], [ %.sroa.0.036.add.i.epil, %.lr.ph.i.i.i.epil ]
  %i.ha = add nuw nsw i64 %..i.i.i, %.sroa.05.2.i
  %i.hb = icmp samesign eq i64 %.sroa.0.036.add.i.lcssa, 256
  %i.hc = add i64 %i.go, %.sroa.0.063.i           ; 2 uses
  %i.hd = icmp ult i64 %i.hc, 104857600
  %or.cond = select i1 %i.hb, i1 %i.hd, i1 false
  br i1 %or.cond, label %bb.c, label %.loopexit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit: ; preds = %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpAmj9_INtB5_14SlicePartialEqBC_E17equal_same_lengthCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.thread, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor11add_data_v1.exit, %bb.k, %bb.j, %bb.i, %bb.h, %.loopexit.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef 104857600, i64 noundef range(i64 1, -9223372036854775807) 1) #19
  resume { ptr, i32 } %i.he

.loopexit.i:                                      ; preds = %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.r, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.hf = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.h unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit ; 2 uses

bb.h:                                             ; preds = %.loopexit.i
  %i.hg = extractvalue { i64, i32 } %i.hf, 0
  %i.hh = extractvalue { i64, i32 } %i.hf, 1
  store i64 %i.hg, ptr %i.q, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.hh, ptr %i.hi, align 8
  invoke void @_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor18add_data_reference(ptr noalias nofree noundef nonnull align 4 dereferenceable(144) %i.r, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 104857600)
          to label %bb.i unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit

bb.i:                                             ; preds = %bb.h
  %i.hj = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %bb.j unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.hk = extractvalue { i64, i32 } %i.hj, 0
  %i.hl = extractvalue { i64, i32 } %i.hj, 1      ; 2 uses
  %i.hm = uitofp i64 %i.hk to double
  %i.hn = icmp ult i32 %i.hl, 1000000000
  call void @llvm.assume(i1 %i.hn)
  %i.ho = uitofp nneg i32 %i.hl to double
  %i.hp = fdiv double %i.ho, 1.000000e+09
  %i.hq = fadd double %i.hp, %i.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.hr = fdiv double 1.000000e+02, %i.hq
  store double %i.hr, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %0 = ptrtoint ptr %i.p to i64
  store i64 %0, ptr %i.o, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 ptrtoint (ptr @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_7Display3fmt to i64), ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @4, ptr noundef nonnull %i.o)
          to label %bb.k unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.n, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.hs = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.l unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ht = extractvalue { i64, i32 } %i.hs, 0
  %i.hu = extractvalue { i64, i32 } %i.hs, 1
  store i64 %i.ht, ptr %i.m, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %i.hu, ptr %i.hv, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %bb.l, %.lr.ph.i20
  %.sroa.0.07.i.idx = phi i64 [ %.sroa.0.07.i.add, %.lr.ph.i20 ], [ 0, %bb.l ] ; 3 uses
  %.sroa.0.07.i.ptr = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.07.i.idx
  %i.hw = load i8, ptr %.sroa.0.07.i.ptr, align 1, !alias.scope !81, !noalias !78, !noundef !25
  %i.hx = call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.hw)
  %i.hy = zext nneg i8 %i.hx to i64
  %i.hz = and i64 %.sroa.0.07.i.idx, 3
  %.idx = mul nuw nsw i64 %i.hz, 36
  %i.ia = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.hy ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !alias.scope !78, !noalias !81, !noundef !25
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 4, !alias.scope !78, !noalias !81
  %.sroa.0.07.i.add = add nuw nsw i64 %.sroa.0.07.i.idx, 1 ; 2 uses
  %i.ie = icmp eq i64 %.sroa.0.07.i.add, 104857600
  br i1 %i.ie, label %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor11add_data_v1.exit, label %.lr.ph.i20

_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor11add_data_v1.exit: ; preds = %.lr.ph.i20
  %i.if = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.m unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit ; 2 uses

bb.m:                                             ; preds = %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor11add_data_v1.exit
  %i.ig = extractvalue { i64, i32 } %i.if, 0
  %i.ih = extractvalue { i64, i32 } %i.if, 1      ; 2 uses
  %i.ii = uitofp i64 %i.ig to double
  %i.ij = icmp ult i32 %i.ih, 1000000000
  call void @llvm.assume(i1 %i.ij)
  %i.ik = uitofp nneg i32 %i.ih to double
  %i.il = fdiv double %i.ik, 1.000000e+09
  %i.im = fadd double %i.il, %i.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.in = fdiv double 1.000000e+02, %i.im
  store double %i.in, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %1 = ptrtoint ptr %i.l to i64
  store i64 %1, ptr %i.k, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 ptrtoint (ptr @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_7Display3fmt to i64), ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @5, ptr noundef nonnull %i.k)
          to label %bb.n unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.j, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.io = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.o unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ip = extractvalue { i64, i32 } %i.io, 0
  %i.iq = extractvalue { i64, i32 } %i.io, 1
  store i64 %i.ip, ptr %i.i, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.iq, ptr %i.ir, align 8
  invoke void @_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor13add_data_swar(ptr noalias nofree noundef nonnull align 4 dereferenceable(144) %i.j, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 104857600)
          to label %bb.p unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit

bb.p:                                             ; preds = %bb.o
  %i.is = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.q unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.it = extractvalue { i64, i32 } %i.is, 0
  %i.iu = extractvalue { i64, i32 } %i.is, 1      ; 2 uses
  %i.iv = uitofp i64 %i.it to double
  %i.iw = icmp ult i32 %i.iu, 1000000000
  call void @llvm.assume(i1 %i.iw)
  %i.ix = uitofp nneg i32 %i.iu to double
  %i.iy = fdiv double %i.ix, 1.000000e+09
  %i.iz = fadd double %i.iy, %i.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ja = fdiv double 1.000000e+02, %i.iz
  store double %i.ja, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %2 = ptrtoint ptr %i.h to i64
  store i64 %2, ptr %i.g, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 ptrtoint (ptr @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_7Display3fmt to i64), ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.g)
          to label %bb.r unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.f, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.jb = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.s unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.jc = extractvalue { i64, i32 } %i.jb, 0
  %i.jd = extractvalue { i64, i32 } %i.jb, 1
  store i64 %i.jc, ptr %i.e, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.jd, ptr %i.je, align 8
  invoke void @_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor8add_data(ptr noalias nofree noundef nonnull align 4 dereferenceable(144) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 104857600)
          to label %bb.t unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit

bb.t:                                             ; preds = %bb.s
  %i.jf = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.u unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.jg = extractvalue { i64, i32 } %i.jf, 0
  %i.jh = extractvalue { i64, i32 } %i.jf, 1      ; 2 uses
  %i.ji = uitofp i64 %i.jg to double
  %i.jj = icmp ult i32 %i.jh, 1000000000
  call void @llvm.assume(i1 %i.jj)
  %i.jk = uitofp nneg i32 %i.jh to double
  %i.jl = fdiv double %i.jk, 1.000000e+09
  %i.jm = fadd double %i.jl, %i.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.jn = fdiv double 1.000000e+02, %i.jm
  store double %i.jn, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %3 = ptrtoint ptr %i.d to i64
  store i64 %3, ptr %i.c, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 ptrtoint (ptr @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_7Display3fmt to i64), ptr %.sroa.414.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @7, ptr noundef nonnull %i.c)
          to label %bb.v unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.b, ptr noundef nonnull align 4 dereferenceable(144) %i.r, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.a, ptr noundef nonnull align 4 dereferenceable(144) %i.f, i64 144, i1 false)
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly align 4 dereferenceable(36) %i.r, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.f, i64 36)
  %.not.i21 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not.i21, label %bb.w, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpAmj9_INtB5_14SlicePartialEqBC_E17equal_same_lengthCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.thread, !prof !83

bb.w:                                             ; preds = %bb.v
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %bcmp.i.i.1.i = call i32 @bcmp(ptr noundef nonnull readonly align 4 dereferenceable(36) %i.jo, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.jp, i64 36), !alias.scope !84
  %.not.1.i = icmp eq i32 %bcmp.i.i.1.i, 0
  br i1 %.not.1.i, label %bb.x, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpAmj9_INtB5_14SlicePartialEqBC_E17equal_same_lengthCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.thread, !prof !83

bb.x:                                             ; preds = %bb.w
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %bcmp.i.i.2.i = call i32 @bcmp(ptr noundef nonnull readonly align 4 dereferenceable(36) %i.jq, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.jr, i64 36), !alias.scope !84
  %.not.2.i = icmp eq i32 %bcmp.i.i.2.i, 0
  br i1 %.not.2.i, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpAmj9_INtB5_14SlicePartialEqBC_E17equal_same_lengthCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpAmj9_INtB5_14SlicePartialEqBC_E17equal_same_lengthCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.thread, !prof !83

_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpAmj9_INtB5_14SlicePartialEqBC_E17equal_same_lengthCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit: ; preds = %bb.x
  %i.js = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %bcmp.i.i.3.i = call i32 @bcmp(ptr noundef nonnull readonly align 4 dereferenceable(36) %i.js, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.jt, i64 36), !alias.scope !84
  %.not.3.i = icmp eq i32 %bcmp.i.i.3.i, 0
  br i1 %.not.3.i, label %bb.z, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpAmj9_INtB5_14SlicePartialEqBC_E17equal_same_lengthCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.thread, !prof !91

_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpAmj9_INtB5_14SlicePartialEqBC_E17equal_same_lengthCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.thread: ; preds = %bb.w, %bb.x, %bb.v, %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpAmj9_INtB5_14SlicePartialEqBC_E17equal_same_lengthCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedAAmj9_j4_BM_ECs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(144) %i.b, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(144) %i.a) #21
          to label %bb.y unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2QOiZQTg0gD_24bg4_prediction_benchmark.exit

bb.y:                                             ; preds = %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpAmj9_INtB5_14SlicePartialEqBC_E17equal_same_lengthCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit.thread
  unreachable

bb.z:                                             ; preds = %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpAmj9_INtB5_14SlicePartialEqBC_E17equal_same_lengthCs2QOiZQTg0gD_24bg4_prediction_benchmark.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef 104857600, i64 noundef range(i64 1, -9223372036854775807) 1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAAmj9_j4_NtB6_5Debug3fmtCs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 16 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !25, !align !92, !noundef !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !93
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  store ptr %i.c, ptr %i.a, align 8, !noalias !101, !captures !104
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101
  %.sroa.0.05.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  store ptr %.sroa.0.05.i.ptr.1.i.i, ptr %i.a, align 8, !noalias !101, !captures !104
  %i.e = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101
  %.sroa.0.05.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  store ptr %.sroa.0.05.i.ptr.2.i.i, ptr %i.a, align 8, !noalias !101, !captures !104
  %i.f = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101
  %.sroa.0.05.i.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  store ptr %.sroa.0.05.i.ptr.3.i.i, ptr %i.a, align 8, !noalias !101, !captures !104
  %i.g = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101
  %i.h = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !93
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAmj9_NtB6_5Debug3fmtCs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 36 uses
  %i.b = alloca [16 x i8], align 8                ; 13 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !25, !align !92, !noundef !25 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !105
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  store ptr %i.c, ptr %i.a, align 8, !noalias !113, !captures !104
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %.sroa.0.05.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  store ptr %.sroa.0.05.i.ptr.1.i.i, ptr %i.a, align 8, !noalias !113, !captures !104
  %i.e = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %.sroa.0.05.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  store ptr %.sroa.0.05.i.ptr.2.i.i, ptr %i.a, align 8, !noalias !113, !captures !104
  %i.f = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %.sroa.0.05.i.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  store ptr %.sroa.0.05.i.ptr.3.i.i, ptr %i.a, align 8, !noalias !113, !captures !104
  %i.g = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %.sroa.0.05.i.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  store ptr %.sroa.0.05.i.ptr.4.i.i, ptr %i.a, align 8, !noalias !113, !captures !104
  %i.h = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %.sroa.0.05.i.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  store ptr %.sroa.0.05.i.ptr.5.i.i, ptr %i.a, align 8, !noalias !113, !captures !104
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %.sroa.0.05.i.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  store ptr %.sroa.0.05.i.ptr.6.i.i, ptr %i.a, align 8, !noalias !113, !captures !104
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %.sroa.0.05.i.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  store ptr %.sroa.0.05.i.ptr.7.i.i, ptr %i.a, align 8, !noalias !113, !captures !104
  %i.k = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %.sroa.0.05.i.ptr.8.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  store ptr %.sroa.0.05.i.ptr.8.i.i, ptr %i.a, align 8, !noalias !113, !captures !104
  %i.l = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %i.m = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCs2QOiZQTg0gD_24bg4_prediction_benchmark(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !25, !align !92, !noundef !25 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !116, !noalias !119, !noundef !25 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsu_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit

_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19assert_failed_inner(i8 noundef range(i8 0, 3), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

end_hunk_0
