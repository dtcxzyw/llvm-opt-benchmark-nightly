Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_resolver-bce106928ed3f83f.hickory_resolver.72e945fa543ae282-cgu.05?download=true
inline.NumInlined: 579
inline.NumDeleted: 263
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvNtNtCscg2Fb9rc1fS_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs9RFwvXNxPyg_16hickory_resolver:.preheader.preheader
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
  br i1 %exitcond.not.i, label %_RNvMNtNtCscg2Fb9rc1fS_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs9RFwvXNxPyg_16hickory_resolver.exit, label %bb.a

_RNvMNtNtCscg2Fb9rc1fS_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.a
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
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !348
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.db, align 4, !noalias !349
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.dc, align 4, !noalias !348
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.dd, align 4, !noalias !349
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.de, align 4, !noalias !348
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.df, align 4, !noalias !349
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.dg, align 4, !noalias !348
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.dh, align 4, !noalias !349
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.di, align 4, !noalias !348
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.dj, align 4, !noalias !349
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.dk, align 4, !noalias !348
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.dl, align 4, !noalias !349
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dm, align 4, !noalias !348
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dn, align 4, !noalias !349
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.do, align 4, !noalias !348
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.dp, align 4, !noalias !349
  %i.dq = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %i.dr = bitcast <4 x i64> %i.dq to <8 x i32>
  %i.ds = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %i.ds, ptr %i.c, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_RINvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs9RFwvXNxPyg_16hickory_resolver(<2 x i64> %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = bitcast <2 x i64> %.0.val to <4 x i32>
  %i.b = extractelement <4 x i32> %i.a, i64 1
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs37Y8JGf013z_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entryB1L_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dead_on_return dereferenceable(17) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = tail call noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtNtBU_3net7ip_addr6IpAddrECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %2) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.c = lshr i64 %i.b, 57
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !368, !noalias !369, !noundef !5 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !368, !noalias !369, !nonnull !5, !noundef !5 ; 4 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.j = load i8, ptr %2, align 1, !range !12, !alias.scope !366, !noalias !365
  %.fr8 = freeze i8 %i.j                          ; 3 uses
  %i.k = trunc i8 %.fr8 to i1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.m = load i32, ptr %i.l, align 1, !alias.scope !366, !noalias !365
  %i.n = load i128, ptr %i.l, align 1, !alias.scope !366, !noalias !365
  br i1 %i.k, label %.split6.us, label %.split6

.split6.us:                                       ; preds = %bb.a, %6
  %.sroa.9.0.i.i.us = phi i64 [ %7, %6 ], [ 0, %bb.a ]
  %.pn.i.us = phi i64 [ %8, %6 ], [ %i.b, %bb.a ]
  %.sroa.01.0.i.i.us = and i64 %.pn.i.us, %i.f    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i.us
  %.sroa.0.0.copyload.i25.i.us = load <16 x i8>, ptr %i.o, align 1, !noalias !370 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.us, %i.i
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not31.i.us = icmp eq i16 %i.q, 0
  br i1 %.not.i.not31.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.split6.us, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i.us.us
  %.sroa.06.0.i32.i.us.us = phi i16 [ %i.ae, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i.us.us ], [ %i.q, %.split6.us ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.us.us, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.us, %i.s
  %i.u = and i64 %i.t, %i.f
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -48
  %i.y = load i8, ptr %i.x, align 1, !range !12, !alias.scope !371, !noalias !372, !noundef !5
  %i.z = icmp eq i8 %i.y, %.fr8
  br i1 %i.z, label %.split.i.us.us, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i.us.us, !prof !373

.split.i.us.us:                                   ; preds = %.lr.ph.i.us.us
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -47
  %i.ab = load i128, ptr %i.aa, align 1, !alias.scope !371, !noalias !372, !noundef !5
  %i.ac = icmp eq i128 %i.ab, %i.n
  br i1 %i.ac, label %.split.us, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i.us.us, !prof !374

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i.us.us: ; preds = %.split.i.us.us, %.lr.ph.i.us.us
  %i.ad = add i16 %.sroa.06.0.i32.i.us.us, -1
  %i.ae = and i16 %i.ad, %.sroa.06.0.i32.i.us.us  ; 2 uses
  %.not.i.not.i.us.us = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i.us.us, %.split6.us
  %3 = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.us, splat (i8 -1)
  %4 = bitcast <16 x i1> %3 to i16
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1C_.exit, !prof !14

6:                                                ; preds = %._crit_edge.i.us
  %7 = add i64 %.sroa.9.0.i.i.us, 16              ; 2 uses
  %8 = add i64 %.sroa.01.0.i.i.us, %7
  br label %.split6.us

.split6:                                          ; preds = %bb.a, %bb.b
  %.sroa.9.0.i.i = phi i64 [ %i.az, %bb.b ], [ 0, %bb.a ]
  %.pn.i = phi i64 [ %i.ba, %bb.b ], [ %i.b, %bb.a ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.f          ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i25.i = load <16 x i8>, ptr %i.af, align 1, !noalias !370 ; 2 uses
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, %i.i
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not.i.not31.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.not31.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split6, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i
  %.sroa.06.0.i32.i = phi i16 [ %i.ay, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i ], [ %i.ah, %.split6 ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.01.0.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.f
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -48
  %i.ap = load i8, ptr %i.ao, align 1, !range !12, !alias.scope !371, !noalias !372, !noundef !5
  %i.aq = icmp eq i8 %i.ap, %.fr8
  br i1 %i.aq, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.i, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i, !prof !373

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.i: ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -47
  %i.as = load i32, ptr %i.ar, align 1, !alias.scope !371, !noalias !372, !noundef !5
  %i.at = icmp eq i32 %i.as, %i.m
  br i1 %i.at, label %.split.us, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i, !prof !374

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i, %.split6
  %i.au = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16
  %i.aw = icmp eq i16 %i.av, 0
  br i1 %i.aw, label %bb.b, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1C_.exit, !prof !14

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.i, %.lr.ph.i
  %i.ax = add i16 %.sroa.06.0.i32.i, -1
  %i.ay = and i16 %i.ax, %.sroa.06.0.i32.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ay, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.az = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ba = add i64 %.sroa.01.0.i.i, %i.az
  br label %.split6

.split.us:                                        ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.i, %.split.i.us.us
  %.us-phi = phi ptr [ %i.w, %.split.i.us.us ], [ %i.an, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.i ]
  store ptr %.us-phi, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.bc, align 8
  br label %bb.c

_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1C_.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us
  tail call void @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE7reserveNCINvNtB8_3map11make_hasherBQ_B1y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(17) %2, i64 17, i1 false)
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1C_.exit, %.split.us
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs37Y8JGf013z_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameNtNtCs9RFwvXNxPyg_16hickory_resolver5hosts10LookupTypeNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entryB1Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2)
          to label %bb.c unwind label %.loopexit.split-lp ; 3 uses

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.a, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(80) %2) #21
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.c = lshr i64 %i.b, 57
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !385, !noalias !386, !noundef !5 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !385, !noalias !386, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.c ], [ %i.z, %bb.f ]
  %.pn.i = phi i64 [ %i.b, %bb.c ], [ %i.aa, %bb.f ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.f          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.j, align 1, !noalias !387 ; 2 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.i
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.l, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i = phi i16 [ %i.y, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.01.0.i.i, %i.n
  %i.p = and i64 %i.o, %i.f
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [416 x i8], ptr %i.g, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -416
  %i.t = invoke noundef zeroext i1 @_RNvXs9_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i
  br i1 %i.t, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameNtNtCs9RFwvXNxPyg_16hickory_resolver5hosts10LookupTypeEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1L_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1P_.exit, label %bb.e, !prof !15

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %i.u = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.g, !prof !14

bb.e:                                             ; preds = %.noexc
  %i.x = add i16 %.sroa.06.0.i31.i, -1
  %i.y = and i16 %i.x, %.sroa.06.0.i31.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.z = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.aa = add i64 %.sroa.01.0.i.i, %i.z
  br label %bb.d

_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameNtNtCs9RFwvXNxPyg_16hickory_resolver5hosts10LookupTypeEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1L_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1P_.exit: ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ac, align 8
  store i16 2, ptr %0, align 8
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(80) %2)
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  invoke void @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameNtNtCs9RFwvXNxPyg_16hickory_resolver5hosts10LookupTypeEE7reserveNCINvNtB8_3map11make_hasherBQ_B1L_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.i unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.i, %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameNtNtCs9RFwvXNxPyg_16hickory_resolver5hosts10LookupTypeEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1L_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1P_.exit
  ret void

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.h

bb.j:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs9RFwvXNxPyg_16hickory_resolver8resolverINtB2_8ResolverNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE13builder_tokio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([824 x i8]) align 8 captures(none) dereferenceable(824) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [216 x i8], align 8               ; 5 uses
  %i.d = alloca [128 x i8], align 8               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.8.i = alloca [264 x i8], align 8         ; 6 uses
  %.sroa.3.i = alloca [72 x i8], align 8          ; 5 uses
  %i.f = alloca [824 x i8], align 8               ; 14 uses
  %i.g = alloca [344 x i8], align 8               ; 7 uses
  %.sroa.6.i = alloca [72 x i8], align 8          ; 6 uses
  %i.h = alloca [216 x i8], align 8               ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = tail call noundef nonnull ptr @_RNvXsY_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtNtCskruEhpekJ3V_5tokio4task8join_set7JoinSetuEEENtNtCsj6eKBz9Db1c_4core7default7Default7defaultCs9RFwvXNxPyg_16hickory_resolver() ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
end_hunk_0
