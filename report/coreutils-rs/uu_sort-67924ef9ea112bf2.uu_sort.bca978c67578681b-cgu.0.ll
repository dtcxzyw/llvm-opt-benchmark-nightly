Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_sort-67924ef9ea112bf2.uu_sort.bca978c67578681b-cgu.0?download=true
inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RINvNtNtCsjXcachvKq5y_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgcf5BHVXlUt_7uu_sort:.preheader.preheader
  %i.g = shufflevector <4 x i32> %.sroa.0.0.copyload.i18122, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.h = shufflevector <4 x i32> %.sroa.0.0.copyload.i121, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %i.cp, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %i.cl, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.o, %bb.a ]
  %i.i = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cm, %bb.a ]
  %i.j = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ce, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cq, %bb.a ]
  %i.l = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ci, %bb.a ] ; 2 uses
  %i.m = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cj, %bb.a ]
  %i.n = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cn, %bb.a ]
  %i.o = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.p = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.q = bitcast <8 x i32> %i.p to <4 x i64>
  %i.r = xor <4 x i64> %.sroa.19.0.i, %i.q
  %i.s = bitcast <4 x i64> %i.r to <32 x i8>
  %i.t = shufflevector <32 x i8> %i.s, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.u = add <8 x i32> %i.l, %i.k                 ; 2 uses
  %i.v = bitcast <8 x i32> %i.u to <4 x i64>
  %i.w = xor <4 x i64> %.sroa.46.0.i, %i.v
  %i.x = bitcast <4 x i64> %i.w to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.z = bitcast <32 x i8> %i.t to <8 x i32>
  %i.aa = add <8 x i32> %i.m, %i.z                ; 2 uses
  %i.ab = xor <8 x i32> %i.aa, %i.j               ; 2 uses
  %i.ac = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ab, <8 x i32> %i.ab, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ad = bitcast <32 x i8> %i.y to <8 x i32>
  %i.ae = add <8 x i32> %i.n, %i.ad               ; 2 uses
  %i.af = xor <8 x i32> %i.ae, %i.l               ; 2 uses
  %i.ag = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.af, <8 x i32> %i.af, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ah = add <8 x i32> %i.ac, %i.p               ; 2 uses
  %i.ai = bitcast <8 x i32> %i.ah to <32 x i8>
  %i.aj = xor <32 x i8> %i.t, %i.ai
  %i.ak = shufflevector <32 x i8> %i.aj, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.al = add <8 x i32> %i.ag, %i.u               ; 2 uses
  %i.am = bitcast <8 x i32> %i.al to <32 x i8>
  %i.an = xor <32 x i8> %i.y, %i.am
  %i.ao = shufflevector <32 x i8> %i.an, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.ap = bitcast <32 x i8> %i.ak to <8 x i32>    ; 2 uses
  %i.aq = add <8 x i32> %i.aa, %i.ap              ; 2 uses
  %i.ar = xor <8 x i32> %i.aq, %i.ac              ; 2 uses
  %i.as = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ar, <8 x i32> %i.ar, <8 x i32> splat (i32 7)) ; 2 uses
  %i.at = bitcast <32 x i8> %i.ao to <8 x i32>    ; 2 uses
  %i.au = add <8 x i32> %i.ae, %i.at              ; 2 uses
  %i.av = xor <8 x i32> %i.au, %i.ag              ; 2 uses
  %i.aw = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.av, <8 x i32> %i.av, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ax = shufflevector <8 x i32> %i.aq, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.ay = shufflevector <8 x i32> %i.ap, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.az = shufflevector <8 x i32> %i.ah, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ba = shufflevector <8 x i32> %i.au, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.bb = shufflevector <8 x i32> %i.at, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.bc = shufflevector <8 x i32> %i.al, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.bd = add <8 x i32> %i.as, %i.az              ; 2 uses
  %i.be = xor <8 x i32> %i.bd, %i.ay
  %i.bf = bitcast <8 x i32> %i.be to <32 x i8>
  %i.bg = shufflevector <32 x i8> %i.bf, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bh = add <8 x i32> %i.aw, %i.bc              ; 2 uses
  %i.bi = xor <8 x i32> %i.bh, %i.bb
  %i.bj = bitcast <8 x i32> %i.bi to <32 x i8>
  %i.bk = shufflevector <32 x i8> %i.bj, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bl = bitcast <32 x i8> %i.bg to <8 x i32>
  %i.bm = add <8 x i32> %i.ax, %i.bl              ; 2 uses
  %i.bn = xor <8 x i32> %i.bm, %i.as              ; 2 uses
  %i.bo = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bn, <8 x i32> %i.bn, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bp = bitcast <32 x i8> %i.bk to <8 x i32>
  %i.bq = add <8 x i32> %i.ba, %i.bp              ; 2 uses
  %i.br = xor <8 x i32> %i.bq, %i.aw              ; 2 uses
  %i.bs = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.br, <8 x i32> %i.br, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bt = add <8 x i32> %i.bo, %i.bd              ; 2 uses
  %i.bu = bitcast <8 x i32> %i.bt to <32 x i8>
  %i.bv = xor <32 x i8> %i.bg, %i.bu
  %i.bw = shufflevector <32 x i8> %i.bv, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.bx = add <8 x i32> %i.bs, %i.bh              ; 2 uses
  %i.by = bitcast <8 x i32> %i.bx to <32 x i8>
  %i.bz = xor <32 x i8> %i.bk, %i.by
  %i.ca = shufflevector <32 x i8> %i.bz, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.cb = bitcast <32 x i8> %i.bw to <8 x i32>    ; 2 uses
  %i.cc = add <8 x i32> %i.bm, %i.cb              ; 2 uses
  %i.cd = xor <8 x i32> %i.cc, %i.bo              ; 2 uses
  %i.ce = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cd, <8 x i32> %i.cd, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cf = bitcast <32 x i8> %i.ca to <8 x i32>    ; 2 uses
  %i.cg = add <8 x i32> %i.bq, %i.cf              ; 2 uses
  %i.ch = xor <8 x i32> %i.cg, %i.bs              ; 2 uses
  %i.ci = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ch, <8 x i32> %i.ch, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cj = shufflevector <8 x i32> %i.cc, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %i.ck = shufflevector <8 x i32> %i.cb, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.cl = bitcast <8 x i32> %i.ck to <4 x i64>
  %i.cm = shufflevector <8 x i32> %i.bt, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cn = shufflevector <8 x i32> %i.cg, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %i.co = shufflevector <8 x i32> %i.cf, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <4 x i64>
  %i.cq = shufflevector <8 x i32> %i.bx, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCsjXcachvKq5y_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCsgcf5BHVXlUt_7uu_sort.exit, label %bb.a

_RNvMNtNtCsjXcachvKq5y_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.a
  %i.cr = bitcast <4 x i64> %i.f to <8 x i32>
  %i.cs = add <8 x i32> %i.co, %i.cr              ; 2 uses
  %i.ct = add <8 x i32> %i.cn, %.cast             ; 2 uses
  %i.cu = add <8 x i32> %i.ci, %i.g               ; 2 uses
  %i.cv = add <8 x i32> %i.cq, %i.h               ; 2 uses
  %i.cw = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cx = add <8 x i32> %i.ck, %i.cw              ; 2 uses
  %i.cy = add <8 x i32> %i.cj, %.cast             ; 2 uses
  %i.cz = add <8 x i32> %i.ce, %i.g               ; 2 uses
  %i.da = add <8 x i32> %i.cm, %i.h               ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !7202
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.db, align 4, !noalias !7203
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.dc, align 4, !noalias !7202
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.dd, align 4, !noalias !7203
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.de, align 4, !noalias !7202
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.df, align 4, !noalias !7203
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.dg, align 4, !noalias !7202
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.dh, align 4, !noalias !7203
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.di, align 4, !noalias !7202
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.dj, align 4, !noalias !7203
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.dk, align 4, !noalias !7202
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.dl, align 4, !noalias !7203
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dm, align 4, !noalias !7202
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dn, align 4, !noalias !7203
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.do, align 4, !noalias !7202
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.dp, align 4, !noalias !7203
  %i.dq = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %i.dr = bitcast <4 x i64> %i.dq to <8 x i32>
  %i.ds = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %i.ds, ptr %i.c, align 4
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sortNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBN_INtB4_16ParallelSliceMutBN_E11par_sort_byNCNvBP_7sort_by0E0EBP_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %.not91 = icmp eq i64 %1, 0
  br i1 %.not91, label %.loopexit, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.a
  %.val29 = load ptr, ptr %3, align 8             ; 9 uses
  %i.d = getelementptr i8, ptr %.val29, i64 8     ; 5 uses
  br label %bb.c

.loopexit:                                        ; preds = %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit, %bb.a, %bb.g
  %.sroa.0.0 = phi i8 [ %., %bb.g ], [ 2, %bb.a ], [ 2, %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit ]
  %.val = load i64, ptr %i.a, align 8, !range !22, !noundef !11 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunEECsgcf5BHVXlUt_7uu_sort.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %.val28 = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  %i.f = shl nuw i64 %.val, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunEECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunEECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %.loopexit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph90, %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit
  %i.g = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph90 ], [ %i.ah, %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit ]
  %i.h = phi i64 [ 0, %.lr.ph90 ], [ %storemerge.lcssa, %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit ] ; 3 uses
  %.sroa.02.089 = phi i64 [ 0, %.lr.ph90 ], [ %.sroa.0.0.i31, %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit ] ; 10 uses
  %i.i = sub nuw nsw i64 %1, %.sroa.02.089        ; 7 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.02.089 ; 7 uses
  %i.k = icmp samesign ult i64 %i.i, 2
  br i1 %i.k, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29) ]
  %.val.i.i = load ptr, ptr %.val29, align 8, !noalias !7245, !nonnull !11, !align !13, !noundef !11
  %.val1.i.i = load ptr, ptr %i.d, align 8, !noalias !7245, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.m = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.i) #34
  %i.n = icmp eq i8 %i.m, -1
  %.not11.i = icmp eq i64 %i.i, 2                 ; 2 uses
  br i1 %i.n, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.d
  br i1 %.not11.i, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.d
  br i1 %.not11.i, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.e
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.e ], [ 2, %.preheader1.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.01.03.i ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %.val.i13.i = load ptr, ptr %.val29, align 8, !noalias !7246, !nonnull !11, !align !13, !noundef !11
  %.val1.i14.i = load ptr, ptr %i.d, align 8, !noalias !7246, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.q = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i13.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i14.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i14.i) #34
  %i.r = icmp eq i8 %i.q, -1
  br i1 %i.r, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.i
  br i1 %exitcond.not.i, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.f
  %.sroa.01.16.i = phi i64 [ %i.x, %bb.f ], [ 2, %.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.01.16.i ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %.val.i15.i = load ptr, ptr %.val29, align 8, !noalias !7247, !nonnull !11, !align !13, !noundef !11
  %.val1.i16.i = load ptr, ptr %i.d, align 8, !noalias !7247, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.v = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i15.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i16.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i16.i) #34
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %bb.f, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit

bb.f:                                             ; preds = %.lr.ph7.i
  %i.x = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.x, %i.i
  br i1 %exitcond14.not.i, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit, label %.lr.ph7.i

_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit: ; preds = %.lr.ph.i, %bb.e, %.lr.ph7.i, %bb.f, %bb.c, %.preheader1.i, %.preheader.i
  %.sroa.4.0.i = phi i1 [ false, %bb.c ], [ true, %.preheader.i ], [ true, %.lr.ph7.i ], [ false, %.preheader1.i ], [ true, %bb.f ], [ false, %bb.e ], [ false, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 2, %.preheader.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ 2, %.preheader1.i ], [ %i.i, %bb.f ], [ %.sroa.01.03.i, %.lr.ph.i ], [ %i.i, %bb.e ] ; 6 uses
  %i.y = add i64 %.sroa.0.0.i, %.sroa.02.089      ; 8 uses
  %i.z = icmp eq i64 %.sroa.02.089, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit

bb.h:                                             ; preds = %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort11find_streakNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBO_INtB4_16ParallelSliceMutBO_E11par_sort_byNCNvBQ_7sort_by0E0EBQ_.exit
  br i1 %.sroa.4.0.i, label %bb.m, label %_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCsgcf5BHVXlUt_7uu_sort4LineEBQ_.exit

_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCsgcf5BHVXlUt_7uu_sort4LineEBQ_.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.i, %bb.o, %bb.h
  %4 = icmp uge i64 %i.y, %.sroa.02.089
  %5 = icmp ule i64 %i.y, %1
  %or.cond.i = and i1 %4, %5
  br i1 %or.cond.i, label %bb.j, label %bb.i, !prof !46

bb.i:                                             ; preds = %_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCsgcf5BHVXlUt_7uu_sort4LineEBQ_.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #40, !noalias !7248
  unreachable

bb.j:                                             ; preds = %_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCsgcf5BHVXlUt_7uu_sort4LineEBQ_.exit
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ac = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ab, %i.ac
  br i1 %or.cond3.i, label %bb.k, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort20provide_sorted_batchNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNvBZ_7sort_by0E0EBZ_.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = add nuw nsw i64 %.sroa.02.089, 10
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 384307168202282326) %1, i64 %i.ad) ; 2 uses
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ae = sub nsw i64 %..i.i, %.sroa.02.089       ; 2 uses
  tail call void @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort25insertion_sort_shift_leftNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB12_INtB4_16ParallelSliceMutB12_E11par_sort_byNCNvB14_7sort_by0E0EB14_(ptr noalias nofree noundef nonnull align 8 %i.j, i64 noundef %i.ae, i64 noundef %..i14.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) #39
  br label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort20provide_sorted_batchNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNvBZ_7sort_by0E0EBZ_.exit

_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort20provide_sorted_batchNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNvBZ_7sort_by0E0EBZ_.exit: ; preds = %bb.j, %bb.k
  %.pre-phi = phi i64 [ %i.ae, %bb.k ], [ %.sroa.0.0.i, %bb.j ]
  %.sroa.0.0.i31 = phi i64 [ %..i.i, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7249)
  %i.af = load i64, ptr %i.a, align 8, !range !22, !alias.scope !7249, !noundef !11
  %i.ag = icmp eq i64 %i.h, %i.af
  br i1 %i.ag, label %bb.l, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8push_mutCsgcf5BHVXlUt_7uu_sort.exit

bb.l:                                             ; preds = %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort20provide_sorted_batchNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNvBZ_7sort_by0E0EBZ_.exit
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8grow_oneCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #39
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !7249
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8push_mutCsgcf5BHVXlUt_7uu_sort.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8push_mutCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort20provide_sorted_batchNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNvBZ_7sort_by0E0EBZ_.exit, %bb.l
  %i.ah = phi ptr [ %i.g, %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort20provide_sorted_batchNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBX_INtB4_16ParallelSliceMutBX_E11par_sort_byNCNvBZ_7sort_by0E0EBZ_.exit ], [ %.pre, %bb.l ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.h ; 2 uses
  store i64 %.pre-phi, ptr %i.ai, align 8, !noalias !7249
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %.sroa.02.089, ptr %i.aj, align 8, !noalias !7249
  %i.ak = add i64 %i.h, 1                         ; 3 uses
  %i.al = icmp samesign ugt i64 %i.ak, 1
  br i1 %i.al, label %.lr.ph, label %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit

bb.m:                                             ; preds = %bb.h
  %6 = icmp ult i64 %i.y, %.sroa.02.089
  %.not = icmp ugt i64 %i.y, %1
  %or.cond26 = or i1 %6, %.not
  br i1 %or.cond26, label %bb.n, label %bb.o, !prof !29

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.02.089, i64 noundef %i.y, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #40
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.am = lshr i64 %.sroa.0.0.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7251)
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCsgcf5BHVXlUt_7uu_sort4LineEBQ_.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.preheader.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.preheader.i: ; preds = %bb.o
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.0.i
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.preheader.i
  %.sroa.0.016.i = phi i64 [ %i.av, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.i ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.preheader.i ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.016.i, -1
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.016.i ; 3 uses
  %i.aq = getelementptr [24 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !7250
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !7251
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !7250
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !7251
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7253)
  %.sroa.0.0.copyload.i.i.i.2.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !7254
  %.sroa.02.0.copyload.i.i.i.2.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !7255
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i, ptr %i.at, align 8, !alias.scope !7254
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i, ptr %i.au, align 8, !alias.scope !7255
  %i.av = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %i.av, %i.am
  br i1 %exitcond.not.i32, label %_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCsgcf5BHVXlUt_7uu_sort4LineEBQ_.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit11.i

.lr.ph:                                           ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8push_mutCsgcf5BHVXlUt_7uu_sort.exit, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE6removeCsgcf5BHVXlUt_7uu_sort.exit
  %storemerge82 = phi i64 [ %i.ds, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE6removeCsgcf5BHVXlUt_7uu_sort.exit ], [ %i.ak, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8push_mutCsgcf5BHVXlUt_7uu_sort.exit ] ; 15 uses
  %i.aw = getelementptr [16 x i8], ptr %i.ah, i64 %storemerge82 ; 5 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -16
  %i.ay = getelementptr i8, ptr %i.aw, i64 -8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !7256, !noundef !11
  %i.ba = load i64, ptr %i.ax, align 8, !alias.scope !7256, !noundef !11 ; 4 uses
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = icmp eq i64 %i.bb, %1
  br i1 %i.bc, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.bd = getelementptr i8, ptr %i.aw, i64 -32
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !7256, !noundef !11 ; 3 uses
  %.not.i35 = icmp ugt i64 %i.be, %i.ba
  br i1 %.not.i35, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not14.i = icmp eq i64 %storemerge82, 2
  br i1 %.not14.i, label %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit, label %bb.t

bb.r:                                             ; preds = %bb.p, %.lr.ph
  %.not17.i = icmp eq i64 %storemerge82, 2
  br i1 %.not17.i, label %bb.v, label %.thread.i

bb.s:                                             ; preds = %bb.t
  %i.bf = icmp samesign ugt i64 %storemerge82, 3
  br i1 %i.bf, label %bb.u, label %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit

bb.t:                                             ; preds = %bb.q
  %i.bg = getelementptr i8, ptr %i.aw, i64 -48
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !7256, !noundef !11 ; 2 uses
  %i.bi = add i64 %i.be, %i.ba
  %.not15.i = icmp ugt i64 %i.bh, %i.bi
  br i1 %.not15.i, label %bb.s, label %.thread.i

bb.u:                                             ; preds = %bb.s
  %i.bj = getelementptr i8, ptr %i.aw, i64 -64
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !7256, !noundef !11
  %i.bl = add i64 %i.bh, %i.be
  %.not16.i = icmp ugt i64 %i.bk, %i.bl
  br i1 %.not16.i, label %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit, label %.thread.i

bb.v:                                             ; preds = %.thread.i, %bb.r
  %i.bm = add nsw i64 %storemerge82, -2
  br label %bb.w

.thread.i:                                        ; preds = %bb.r, %bb.u, %bb.t
  %i.bn = add nsw i64 %storemerge82, -3           ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !7256, !noundef !11
  %i.bq = icmp ult i64 %i.bp, %i.ba
  br i1 %i.bq, label %bb.w, label %bb.v

_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit: ; preds = %bb.u, %bb.s, %bb.q, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE6removeCsgcf5BHVXlUt_7uu_sort.exit, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8push_mutCsgcf5BHVXlUt_7uu_sort.exit
  %storemerge.lcssa = phi i64 [ %i.ak, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE8push_mutCsgcf5BHVXlUt_7uu_sort.exit ], [ 1, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE6removeCsgcf5BHVXlUt_7uu_sort.exit ], [ 2, %bb.q ], [ 3, %bb.s ], [ %storemerge82, %bb.u ] ; 2 uses
  store i64 %storemerge.lcssa, ptr %i.c, align 8
  %i.br = icmp samesign ult i64 %.sroa.0.0.i31, %1
  br i1 %i.br, label %bb.c, label %.loopexit

bb.w:                                             ; preds = %bb.v, %.thread.i
  %.sroa.4.0.i33.ph = phi i64 [ %i.bn, %.thread.i ], [ %i.bm, %bb.v ] ; 5 uses
  %i.bs = icmp ult i64 %.sroa.4.0.i33.ph, %storemerge82
  br i1 %i.bs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.sroa.4.0.i33.ph ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !11 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !11 ; 5 uses
  %i.bx = add nuw nsw i64 %.sroa.4.0.i33.ph, 1    ; 3 uses
  %i.by = icmp ult i64 %i.bx, %storemerge82
  br i1 %i.by, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.i33.ph, i64 noundef %storemerge82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #40
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.bx ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !11 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !11
  %i.cd = add i64 %i.cc, %i.ca                    ; 5 uses
  %i.ce = icmp ult i64 %i.cd, %i.bw
  %.not25 = icmp ugt i64 %i.cd, %1
  %or.cond27 = or i1 %i.ce, %.not25
  br i1 %or.cond27, label %bb.ab, label %bb.ac, !prof !29

bb.aa:                                            ; preds = %bb.x
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.bx, i64 noundef %storemerge82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #40
  unreachable

bb.ab:                                            ; preds = %bb.z
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.bw, i64 noundef %i.cd, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #40
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.cf = sub nuw i64 %i.cd, %i.bw                ; 3 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bw ; 5 uses
  %.idx26.i = mul nuw nsw i64 %i.bu, 24           ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx26.i ; 4 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cd ; 2 uses
  %i.cj = sub i64 %i.cf, %i.bu                    ; 2 uses
  %.not.i36 = icmp ugt i64 %i.bu, %i.cj
  br i1 %.not.i36, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ck = mul nuw nsw i64 %i.cj, 24               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr nonnull align 8 %i.ch, i64 %i.ck, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 2 uses
  %.not28.i = icmp eq i64 %i.cf, %i.bu
  br i1 %.not28.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE6removeCsgcf5BHVXlUt_7uu_sort.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29) ]
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr nonnull align 8 %i.cg, i64 %.idx26.i, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %.idx26.i ; 3 uses
  %i.cn = icmp ne i64 %i.bu, 0
  %i.co = icmp samesign ult i64 %i.bu, %i.cf
  %or.cond2714.i = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond2714.i, label %.lr.ph.i37, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE6removeCsgcf5BHVXlUt_7uu_sort.exit

.lr.ph.i37:                                       ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29) ]
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph23.i
  %.sroa.08.022.i = phi ptr [ %i.ci, %.lr.ph23.i ], [ %i.cw, %bb.af ]
  %.sroa.9.021.i = phi ptr [ %i.cl, %.lr.ph23.i ], [ %i.cv, %bb.af ] ; 2 uses
  %.sroa.16.020.i = phi ptr [ %i.ch, %.lr.ph23.i ], [ %i.ct, %bb.af ] ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.sroa.9.021.i, i64 -24
  %i.cq = getelementptr inbounds i8, ptr %.sroa.16.020.i, i64 -24
  %.val.i.i38 = load ptr, ptr %.val29, align 8, !noalias !7257, !nonnull !11, !align !13, !noundef !11
  %.val1.i.i39 = load ptr, ptr %i.d, align 8, !noalias !7257, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.cr = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i.i38, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.i39, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.i39) #34
  %i.cs = icmp eq i8 %i.cr, -1                    ; 3 uses
  %.neg.i = sext i1 %i.cs to i64
  %i.ct = getelementptr inbounds [24 x i8], ptr %.sroa.16.020.i, i64 %.neg.i ; 4 uses
  %i.cu = xor i1 %i.cs, true
  %.neg26.i = sext i1 %i.cu to i64
  %i.cv = getelementptr inbounds [24 x i8], ptr %.sroa.9.021.i, i64 %.neg26.i ; 4 uses
  %.sroa.020.0.i = select i1 %i.cs, ptr %i.ct, ptr %i.cv
  %i.cw = getelementptr inbounds i8, ptr %.sroa.08.022.i, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.020.0.i, i64 24, i1 false)
  %i.cx = icmp ult ptr %i.cg, %i.ct
  %i.cy = icmp ult ptr %2, %i.cv
  %or.cond.i40 = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond.i40, label %bb.af, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE6removeCsgcf5BHVXlUt_7uu_sort.exit

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i37
  %.sroa.0.017.i = phi ptr [ %i.ch, %.lr.ph.i37 ], [ %i.dd, %bb.ag ] ; 3 uses
  %.sroa.0.116.i = phi ptr [ %2, %.lr.ph.i37 ], [ %i.dg, %bb.ag ] ; 3 uses
  %.sroa.16.215.i = phi ptr [ %i.cg, %.lr.ph.i37 ], [ %i.db, %bb.ag ] ; 2 uses
  %.val.i29.i = load ptr, ptr %.val29, align 8, !noalias !7258, !nonnull !11, !align !13, !noundef !11
  %.val1.i30.i = load ptr, ptr %i.d, align 8, !noalias !7258, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.cz = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.017.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.116.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i29.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i30.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i30.i) #34
  %i.da = icmp eq i8 %i.cz, -1                    ; 3 uses
  %.sroa.012.0.i = select i1 %i.da, ptr %.sroa.0.017.i, ptr %.sroa.0.116.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.215.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.0.i, i64 24, i1 false)
end_hunk_0
begin_hunk_1_@_RNvCsgcf5BHVXlUt_7uu_sort21index_legacy_warnings:bb.a
  %i.t = load i64, ptr %i.s, align 8, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10693)
  %.val.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10694, !noundef !11
  %i.u = xor i64 %.val.i, %i.t
  %i.v = load i64, ptr @_RNvNtNtCs8xMRKdnofT_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !10695, !noundef !11
  %i.w = zext i64 %i.u to i128
  %i.x = zext i64 %i.v to i128
  %i.y = mul nuw i128 %i.x, %i.w                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10696)
  %i.ac = load i64, ptr %i.h, align 8, !alias.scope !10697, !noundef !11
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE0ECsgcf5BHVXlUt_7uu_sort.exit.i.i, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.ae = call { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTjjEE14reserve_rehashNCINvNtB8_3map11make_hasherjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE0ECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0..sroa_idx, i1 noundef zeroext true) #39, !noalias !10698 ; 0 uses
  %.val.i.i.pre = load ptr, ptr %i.b, align 8, !alias.scope !10699
  %.val5.i.i.pre = load i64, ptr %i.i, align 8, !alias.scope !10699
  br label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE0ECsgcf5BHVXlUt_7uu_sort.exit.i.i

_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE0ECsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.f, %bb.e
  %.val5.i.i = phi i64 [ %.val5.i.i.pre, %bb.f ], [ %.val5.i.i104, %bb.e ] ; 5 uses
  %.val.i.i = phi ptr [ %.val.i.i.pre, %bb.f ], [ %.val.i.i102, %bb.e ] ; 10 uses
  %i.af = lshr i64 %i.ab, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8           ; 3 uses
  %i.ah = insertelement <16 x i8> poison, i8 %i.ag, i64 0
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE0ECsgcf5BHVXlUt_7uu_sort.exit.i.i
  %.pn.i.i.i = phi i64 [ %i.ab, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE0ECsgcf5BHVXlUt_7uu_sort.exit.i.i ], [ %i.bh, %bb.j ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE0ECsgcf5BHVXlUt_7uu_sort.exit.i.i ], [ %.sroa.4.124.i.i.i, %bb.j ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE0ECsgcf5BHVXlUt_7uu_sort.exit.i.i ], [ %.sroa.04.126.i.i.i, %bb.j ]
  %i.aj = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE0ECsgcf5BHVXlUt_7uu_sort.exit.i.i ], [ %i.bg, %bb.j ]
  %.sroa.0.021.i.i.i = and i64 %.pn.i.i.i, %.val5.i.i ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.021.i.i.i
  %.sroa.0.0.copyload.i31.i.i.i = load <16 x i8>, ptr %i.ak, align 1, !noalias !10700 ; 3 uses
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i, %i.ai
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not32.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %.sroa.01.033.i.i.i = phi i16 [ %i.aw, %bb.h ], [ %i.am, %bb.g ] ; 3 uses
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.033.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = add i64 %.sroa.0.021.i.i.i, %i.ao
  %i.aq = and i64 %i.ap, %.val5.i.i
  %i.ar = sub nsw i64 0, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds [16 x i8], ptr %.val.i.i, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -16
  %.val2.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !10701, !noundef !11
  %i.au = icmp eq i64 %i.t, %.val2.i.i.i.i
  br i1 %i.au, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE6insertCsgcf5BHVXlUt_7uu_sort.exit, label %bb.h, !prof !17

._crit_edge.i.i.i:                                ; preds = %bb.h, %bb.g
  %.not12.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %bb.i, !prof !21

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.av = add i16 %.sroa.01.033.i.i.i, -1
  %i.aw = and i16 %i.av, %.sroa.01.033.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ax = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i.i, zeroinitializer
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ay, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %.thread28.i.i.i, !prof !21

.thread28.i.i.i:                                  ; preds = %bb.i
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ay, i1 true)
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = add i64 %.sroa.0.021.i.i.i, %i.ba
  %i.bc = and i64 %i.bb, %.val5.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread28.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.125.i.i.i = phi i64 [ %i.bc, %.thread28.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bd = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16
  %i.bf = icmp eq i16 %i.be, 0
  br i1 %i.bf, label %bb.j, label %bb.k, !prof !21

bb.j:                                             ; preds = %.thread.i.i.i, %bb.i
  %.sroa.04.126.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.i ]
  %.sroa.4.124.i.i.i = phi i64 [ %.sroa.4.125.i.i.i, %.thread.i.i.i ], [ undef, %bb.i ]
  %i.bg = add i64 %i.aj, 16                       ; 2 uses
  %i.bh = add i64 %i.bg, %.sroa.0.021.i.i.i
  br label %bb.g

bb.k:                                             ; preds = %.thread.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.125.i.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !10702, !noundef !11 ; 2 uses
  %i.bk = icmp sgt i8 %i.bj, -1
  br i1 %i.bk, label %bb.l, label %bb.m, !prof !21

bb.l:                                             ; preds = %bb.k
  %.val2.i23.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !10702
  %i.bl = icmp slt <16 x i8> %.val2.i23.i.i.i, zeroinitializer
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %.not.i24.i.i.i = icmp ne i16 %i.bm, 0
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bm, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i24.i.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bo
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !10703
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bp = phi i8 [ %.pre.i, %bb.l ], [ %i.bj, %bb.k ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.bo, %bb.l ], [ %.sroa.4.125.i.i.i, %bb.k ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10704)
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i
  %i.br = and i8 %i.bp, 1
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.bu = and i64 %i.bt, %.val5.i.i
  store i8 %i.ag, ptr %i.bq, align 1, !noalias !10703
  %i.bv = getelementptr i8, ptr %.val.i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  store i8 %i.ag, ptr %i.bw, align 1, !noalias !10703
  %i.bx = load <2 x i64>, ptr %i.h, align 8, !alias.scope !10703
  %i.by = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bs, i64 0
  %i.bz = sub <2 x i64> %i.bx, %i.by
  store <2 x i64> %i.bz, ptr %i.h, align 8, !alias.scope !10703
  %i.ca = sub nsw i64 0, %.sroa.3.0.i.ph.i.i      ; 2 uses
  %i.cb = getelementptr inbounds [16 x i8], ptr %.val.i.i, i64 %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  store i64 %i.t, ptr %i.cc, align 8, !noalias !10703
  br label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE6insertCsgcf5BHVXlUt_7uu_sort.exit

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE6insertCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %.lr.ph.i.i.i, %bb.m
  %i.cd = phi i64 [ %i.ca, %bb.m ], [ %i.ar, %.lr.ph.i.i.i ]
  %i.ce = getelementptr inbounds [16 x i8], ptr %.val.i.i, i64 %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8
  store i64 %.sroa.7.092, ptr %i.cf, align 8, !noalias !10693
  %i.cg = icmp eq ptr %i.q, %i.g
  br i1 %i.cg, label %.preheader, label %bb.e

._crit_edge:                                      ; preds = %select.unfold, %bb.p, %.preheader.._crit_edge_crit_edge
  %.val54 = phi i64 [ %.val54.pre, %.preheader.._crit_edge_crit_edge ], [ %i.p, %bb.p ], [ %i.p, %select.unfold ] ; 3 uses
  %i.ch = icmp eq i64 %.val54, 0
  br i1 %i.ch, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateEECsgcf5BHVXlUt_7uu_sort.exit, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %._crit_edge
  %i.ci = shl i64 %.val54, 4                      ; 2 uses
  %i.cj = add i64 %i.ci, 16                       ; 2 uses
  %i.ck = add i64 %.val54, 17
  %i.cl = add i64 %i.ck, %i.cj                    ; 4 uses
  %i.cm = icmp uge i64 %i.cl, %i.cj
  %i.cn = icmp ult i64 %i.cl, 9223372036854775793
  tail call void @llvm.assume(i1 %i.cm)
  tail call void @llvm.assume(i1 %i.cn)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val53.pre.pre) ]
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateEECsgcf5BHVXlUt_7uu_sort.exit, label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.cp = sub nuw nsw i64 -16, %i.ci
  %i.cq = getelementptr inbounds i8, ptr %.val53.pre.pre, i64 %i.cp
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cq, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) 16) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateEECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateEECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %._crit_edge, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.o:                                             ; preds = %.lr.ph96, %select.unfold
  %.sroa.04.095 = phi i64 [ 0, %.lr.ph96 ], [ %.sroa.04.2, %select.unfold ] ; 4 uses
  %.sroa.07.094 = phi i64 [ 0, %.lr.ph96 ], [ %.sroa.07.2, %select.unfold ] ; 5 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.07.094 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !11 ; 2 uses
  %.pre = load ptr, ptr %i.cs, align 8            ; 5 uses
  switch i64 %i.cu, label %.thread74 [
    i64 2, label %bb.p
    i64 5, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.cv = load i16, ptr %.pre, align 1
  %i.cw = icmp ne i16 %i.cv, 11565
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = load i16, ptr %.pre, align 1
  %i.da = icmp ne i16 %i.cz, 27437
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.r, label %.thread74

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.dd = add nuw nsw i64 %.sroa.07.094, 1        ; 2 uses
  %i.de = icmp ult i64 %i.dd, %1
  br i1 %i.de, label %bb.ac, label %select.unfold

bb.s:                                             ; preds = %bb.o
  %i.df = load i32, ptr %.pre, align 1
  %i.dg = xor i32 %i.df, 1701522733
  %i.dh = getelementptr i8, ptr %.pre, i64 4
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = zext i8 %i.di to i32
  %i.dk = xor i32 %i.dj, 121
  %i.dl = or i32 %i.dg, %i.dk
  %i.dm = icmp ne i32 %i.dl, 0
  %i.dn = zext i1 %i.dm to i32
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.r, label %.thread74

.thread74:                                        ; preds = %bb.o, %bb.q, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pre, i64 noundef %i.cu) #34
  %i.dp = load i64, ptr %i.a, align 8, !range !10, !noundef !11 ; 4 uses
  %i.dq = load ptr, ptr %i.j, align 8             ; 6 uses
  %i.dr = load i64, ptr %i.k, align 8             ; 4 uses
  %.not.i = icmp samesign ult i64 %i.dr, 2
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit61.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %.thread74
  %i.ds = load i16, ptr %i.dq, align 1
  %i.dt = icmp ne i16 27437, %i.ds                ; 2 uses
  %i.du = zext i1 %i.dt to i32                    ; 0 uses
  %.not43 = icmp eq i64 %i.dr, 2
  %or.cond = or i1 %.not43, %i.dt
  br i1 %or.cond, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit
  %.not.i58 = icmp samesign ult i64 %i.dr, 6
  br i1 %.not.i58, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit61.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit61

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit61: ; preds = %bb.t
  %i.dv = load i32, ptr %i.dq, align 1
  %i.dw = xor i32 1701522733, %i.dv
  %i.dx = getelementptr i8, ptr %i.dq, i64 4
  %i.dy = load i16, ptr %i.dx, align 1
  %i.dz = zext i16 %i.dy to i32
  %i.ea = xor i32 15737, %i.dz
  %i.eb = or i32 %i.dw, %i.ea
  %i.ec = icmp ne i32 %i.eb, 0                    ; 2 uses
  %i.ed = zext i1 %i.ec to i32                    ; 0 uses
  %.not45 = icmp eq i64 %i.dr, 6
  %or.cond49 = or i1 %.not45, %i.ec
  br i1 %or.cond49, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit61.thread, label %bb.v

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit61.thread: ; preds = %.thread74, %bb.t, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit61
  %i.ee = add nuw nsw i64 %.sroa.07.094, 1
  %i.ef = icmp sgt i64 %i.dp, 0
  br i1 %i.ef, label %bb.u, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit

bb.u:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit61.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dq) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dq, i64 noundef %i.dp, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10705
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit61.thread, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %select.unfold

bb.v:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit61, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit
  %i.eg = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.04.095, i64 1)
  %i.eh = add nuw nsw i64 %.sroa.07.094, 1
  %i.ei = icmp sgt i64 %i.dp, 0
  br i1 %i.ei, label %bb.w, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit64

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dq, i64 noundef %i.dp, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10706
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit64

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit64: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit64
  %.sroa.07.1 = phi i64 [ %i.fp, %bb.ac ], [ %i.eh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit64 ] ; 4 uses
  %.sroa.04.1 = phi i64 [ %i.fo, %bb.ac ], [ %i.eg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit64 ] ; 4 uses
  %i.ej = add i64 %.sroa.07.1, -1                 ; 2 uses
  br i1 %i.n, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = xor i64 %.val.i65, %i.ej
  %i.el = load i64, ptr @_RNvNtNtCs8xMRKdnofT_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !10707, !noundef !11
  %i.em = zext i64 %i.ek to i128
  %i.en = zext i64 %i.el to i128
  %i.eo = mul nuw i128 %i.en, %i.em               ; 2 uses
  %i.ep = lshr i128 %i.eo, 64
  %i.eq = xor i128 %i.ep, %i.eo
  %i.er = trunc i128 %i.eq to i64                 ; 2 uses
  %i.es = lshr i64 %i.er, 57
  %i.et = trunc nuw nsw i64 %i.es to i8
  %i.eu = insertelement <16 x i8> poison, i8 %i.et, i64 0
  %i.ev = shufflevector <16 x i8> %i.eu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.y ], [ %i.fm, %bb.ab ]
  %.pn.i.i = phi i64 [ %i.er, %bb.y ], [ %i.fn, %bb.ab ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.p      ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val53.pre.pre, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.ew, align 1, !noalias !10708 ; 2 uses
  %i.ex = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.ev
  %i.ey = bitcast <16 x i1> %i.ex to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %bb.aa
  %.sroa.06.0.i31.i.i = phi i16 [ %i.fl, %bb.aa ], [ %i.ey, %bb.z ] ; 3 uses
  %i.ez = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.fa = zext nneg i16 %i.ez to i64
  %i.fb = add i64 %.sroa.01.0.i.i.i, %i.fa
  %i.fc = and i64 %i.fb, %i.p
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr inbounds [16 x i8], ptr %.val53.pre.pre, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -16
  %.val2.i.i.i = load i64, ptr %i.ff, align 8, !noalias !10709, !noundef !11
  %i.fg = icmp eq i64 %i.ej, %.val2.i.i.i
  br i1 %i.fg, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE3getjECsgcf5BHVXlUt_7uu_sort.exit, label %bb.aa, !prof !17

._crit_edge.i.i:                                  ; preds = %bb.aa, %bb.z
  %i.fh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.fi = bitcast <16 x i1> %i.fh to i16
  %i.fj = icmp eq i16 %i.fi, 0
  br i1 %i.fj, label %bb.ab, label %select.unfold, !prof !21

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.fk = add i16 %.sroa.06.0.i31.i.i, -1
  %i.fl = and i16 %i.fk, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.fl, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.fm = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.fn = add i64 %.sroa.01.0.i.i.i, %i.fm
  br label %bb.z

bb.ac:                                            ; preds = %bb.r
  %i.fo = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.04.095, i64 1)
  %i.fp = add nuw nsw i64 %.sroa.07.094, 2
  br label %bb.x

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.x, %bb.r, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit, %bb.ad
  %.sroa.07.2 = phi i64 [ %.sroa.07.1, %bb.ad ], [ %i.dd, %bb.r ], [ %i.ee, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit ], [ %.sroa.07.1, %bb.x ], [ %.sroa.07.1, %._crit_edge.i.i ] ; 2 uses
  %.sroa.04.2 = phi i64 [ %.sroa.04.1, %bb.ad ], [ %.sroa.04.095, %bb.r ], [ %.sroa.04.095, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit ], [ %.sroa.04.1, %bb.x ], [ %.sroa.04.1, %._crit_edge.i.i ]
  %i.fq = icmp ult i64 %.sroa.07.2, %1
  br i1 %i.fq, label %bb.o, label %._crit_edge

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE3getjECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %.lr.ph.i.i
  %i.fr = getelementptr inbounds i8, ptr %i.fe, i64 -8
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !11 ; 3 uses
  %i.ft = icmp ult i64 %i.fs, %3
  br i1 %i.ft, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE3getjECsgcf5BHVXlUt_7uu_sort.exit
  %i.fu = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.fs ; 2 uses
  store i64 1, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i64 %.sroa.04.1, ptr %i.fv, align 8
  br label %select.unfold

bb.ae:                                            ; preds = %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE3getjECsgcf5BHVXlUt_7uu_sort.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.fs, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #40
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCsgcf5BHVXlUt_7uu_sort22parse_ordering_options(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull captures(none) dereferenceable(6) %3, ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(6) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.promoted = load i8, ptr %i.e, align 1
  br label %bb.d

bb.b:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %.sroa.01.018, 0
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp sgt i8 %i.n, -65
  br i1 %i.k, label %.thread, label %bb.q

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %i.l = phi i8 [ %.promoted, %.lr.ph ], [ %i.p, %bb.o ] ; 10 uses
  %.sroa.0.019 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0.1, %bb.o ] ; 13 uses
  %.sroa.01.018 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.o ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.018
  %i.n = load i8, ptr %i.m, align 1, !noundef !11 ; 2 uses
  switch i8 %i.n, label %bb.b [
    i8 98, label %bb.o
    i8 100, label %bb.e
    i8 102, label %bb.f
    i8 103, label %bb.g
    i8 104, label %bb.h
    i8 105, label %bb.i
    i8 77, label %bb.j
    i8 110, label %bb.k
    i8 82, label %bb.l
    i8 114, label %bb.m
    i8 86, label %bb.n
  ]

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.e, align 1
  store i8 0, ptr %i.f, align 1
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.i, align 1
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  store i8 1, ptr %i.h, align 1
  br label %bb.o

bb.h:                                             ; preds = %bb.d
  store i8 1, ptr %i.g, align 1
  br label %bb.o

bb.i:                                             ; preds = %bb.d
  %i.o = trunc nuw i8 %i.l to i1
  br i1 %i.o, label %bb.o, label %bb.p

bb.j:                                             ; preds = %bb.d
  store i8 1, ptr %i.d, align 1
  br label %bb.o

bb.k:                                             ; preds = %bb.d
  store i8 1, ptr %4, align 1
  br label %bb.o

bb.l:                                             ; preds = %bb.d
  store i8 1, ptr %i.c, align 1
  br label %bb.o

bb.m:                                             ; preds = %bb.d
  store i8 1, ptr %i.b, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.d
  store i8 1, ptr %i.a, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.i, %bb.p, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e
  %i.p = phi i8 [ %i.l, %bb.n ], [ 1, %bb.e ], [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %i.l, %bb.h ], [ 1, %bb.i ], [ 0, %bb.p ], [ %i.l, %bb.j ], [ %i.l, %bb.k ], [ %i.l, %bb.l ], [ %i.l, %bb.m ], [ %i.l, %bb.d ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.019, %bb.n ], [ %.sroa.0.019, %bb.e ], [ %.sroa.0.019, %bb.f ], [ %.sroa.0.019, %bb.g ], [ %.sroa.0.019, %bb.h ], [ %.sroa.0.019, %bb.i ], [ %.sroa.0.019, %bb.p ], [ %.sroa.0.019, %bb.j ], [ %.sroa.0.019, %bb.k ], [ %.sroa.0.019, %bb.l ], [ %.sroa.0.019, %bb.m ], [ 1, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.sroa.01.018, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %2
  br i1 %exitcond.not, label %.thread, label %bb.d

bb.p:                                             ; preds = %bb.i
  store i8 1, ptr %i.f, align 1
  br label %bb.o

.thread:                                          ; preds = %bb.o, %bb.a, %bb.c, %bb.b
  %.sroa.01.016 = phi i64 [ 0, %bb.b ], [ %.sroa.01.018, %bb.c ], [ 0, %bb.a ], [ %2, %bb.o ] ; 2 uses
  %.sroa.0.014 = phi i8 [ %.sroa.0.019, %bb.b ], [ %.sroa.0.019, %bb.c ], [ 0, %bb.a ], [ %.sroa.0.1, %bb.o ]
  %i.r = sub nuw i64 %2, %.sroa.01.016
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.016
  store ptr %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.0.014, ptr %i.u, align 8
  ret void

bb.q:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.018, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269) #40
end_hunk_1
