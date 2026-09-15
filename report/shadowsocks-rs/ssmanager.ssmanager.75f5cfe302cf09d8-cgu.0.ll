Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssmanager.ssmanager.75f5cfe302cf09d8-cgu.0?download=true
inline.NumInlined: 18859
inline.NumDeleted: 9054
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RINvNtNtCs3csC7NK4ZxG_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsa7TLgTh0CeG_9ssmanager:.preheader.preheader
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i19123, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
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
  br i1 %exitcond.not.i, label %_RNvMs1_NtNtCs3csC7NK4ZxG_8chacha208backends4avx2INtB5_7BackendNtB9_3R12NtNtB9_8variants6LegacyE21rng_gen_par_ks_blocksCsa7TLgTh0CeG_9ssmanager.exit, label %bb.a

_RNvMs1_NtNtCs3csC7NK4ZxG_8chacha208backends4avx2INtB5_7BackendNtB9_3R12NtNtB9_8variants6LegacyE21rng_gen_par_ks_blocksCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.a
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
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !13606
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.db, align 4, !noalias !13607
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.dc, align 4, !noalias !13606
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.dd, align 4, !noalias !13607
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.de, align 4, !noalias !13606
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.df, align 4, !noalias !13607
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.dg, align 4, !noalias !13606
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.dh, align 4, !noalias !13607
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.di, align 4, !noalias !13606
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.dj, align 4, !noalias !13607
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.dk, align 4, !noalias !13606
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.dl, align 4, !noalias !13607
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dm, align 4, !noalias !13606
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dn, align 4, !noalias !13607
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.do, align 4, !noalias !13606
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.dp, align 4, !noalias !13607
  %i.dq = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %i.dr = bitcast <4 x i64> %i.dq to <8 x i32>
  %i.ds = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %i.ds, ptr %i.c, align 4
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc noundef i8 @_RINvNtNtCs5Xr050g3D4S_3std3sys9backtrace28___rust_begin_short_backtraceFENtNtB6_7process8ExitCodeB19_ECsa7TLgTh0CeG_9ssmanager(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef i8 %0() #46, !inline_history !13608
  tail call void asm sideeffect "", "~{memory}"() #46
  ret i8 %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef range(i16 0, -32768) i16 @_RINvNtNtCs7ewmRfXve8r_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 13 uses
  %i.d = load i64, ptr %0, align 8, !range !88, !noundef !80
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load <2 x i64>, ptr %i.f, align 8        ; 3 uses
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.i = xor <2 x i64> %i.h, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.k = xor <2 x i64> %i.j, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.k, ptr %.sroa.513.0..sroa_idx, align 16
  store <2 x i64> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %1, align 8, !noalias !13633, !noundef !80 ; 2 uses
  %i.m = icmp ne ptr %i.l, null
  %i.n = zext i1 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13634
  store i64 %i.n, ptr %i.b, align 8, !noalias !13634
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13634
  %.not.i.i = icmp eq ptr %i.l, null
  %i.o = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !13633, !noundef !80
  %i.p = getelementptr i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !noalias !13633, !noundef !80
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i) #54
  br label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.o, align 8, !range !96, !noalias !13633, !noundef !80
  %i.r = zext nneg i8 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13635
  store i64 %i.r, ptr %i.a, align 8, !noalias !13635
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13635
  br label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit

_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 16, !alias.scope !13636
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !13636
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx, align 16, !alias.scope !13636 ; 3 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !13636
  %i.s = load i64, ptr %.sroa.915.0..sroa_idx, align 16, !alias.scope !13636, !noundef !80
  %i.t = shl i64 %i.s, 56
  %i.u = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !13636, !noundef !80
  %i.v = or i64 %i.t, %i.u                        ; 2 uses
  %i.w = xor i64 %i.v, %.sroa.22.0.copyload.i     ; 3 uses
  %i.x = add i64 %.sroa.17.0.copyload.i, %.sroa.0.0.copyload.i ; 3 uses
  %i.y = add i64 %i.w, %.sroa.10.0.copyload.i     ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i, i64 %.sroa.17.0.copyload.i, i64 13)
  %i.aa = xor i64 %i.z, %i.x                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.y, %i.aa                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = xor i64 %i.af, %i.v
  %i.am = xor i64 %i.ak, 255
  %i.an = add i64 %i.al, %i.ah                    ; 3 uses
  %i.ao = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = add i64 %i.bl, %i.bj
  %i.bq = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
  %i.bs = xor i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = shl i64 %i.bn, 16
  %i.bu = xor i64 %i.bt, %i.bq
  %i.bv = add i64 %i.bs, %i.bq                    ; 2 uses
  %i.bw = lshr i64 %i.bs, 47
  %i.bx = lshr i64 %i.bu, 43
  %i.by = lshr i64 %i.bv, 32
  %i.bz = xor i64 %i.bx, %i.bw
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = xor i64 %i.ca, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsa7TLgTh0CeG_9ssmanager.exit

bb.e:                                             ; preds = %bb.a
  %i.cc = load ptr, ptr %1, align 8, !noalias !13637, !noundef !80 ; 2 uses
  %i.cd = icmp ne ptr %i.cc, null
  %i.ce = zext i1 %i.cd to i64
  %i.cf = xor i64 %i.ce, -3750763034362895579
  %i.cg = mul i64 %i.cf, 2232315406967589409      ; 4 uses
  %.not.i.i20 = icmp eq ptr %i.cc, null
  %i.ch = getelementptr i8, ptr %1, i64 8         ; 2 uses
  br i1 %.not.i.i20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i21 = load ptr, ptr %i.ch, align 8, !noalias !13637, !noundef !80 ; 3 uses
  %i.ci = getelementptr i8, ptr %1, i64 16
  %.val1.i.i22 = load i64, ptr %i.ci, align 8, !noalias !13637, !noundef !80 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i21, i64 %.val1.i.i22
  %i.ck = icmp samesign eq i64 %.val1.i.i22, 0
  br i1 %i.ck, label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsa7TLgTh0CeG_9ssmanager.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %xtraiter = and i64 %.val1.i.i22, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.prol ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.prol ], [ %.val.i.i21, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.cm = load i8, ptr %.sroa.03.05.i.i.i.i.prol, align 1, !alias.scope !13638, !noalias !13639, !noundef !80
  %i.cn = zext i8 %i.cm to i64
  %i.co = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.cn
  %i.cp = mul i64 %i.co, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !13632

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.unr = phi ptr [ %.val.i.i21, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %.val1.i.i22, 8
  br i1 %i.cq, label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsa7TLgTh0CeG_9ssmanager.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 1
  %i.cs = load i8, ptr %.sroa.03.05.i.i.i.i, align 1, !alias.scope !13638, !noalias !13639, !noundef !80
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %.sroa.0.06.i.i.i.i, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 2
  %i.cx = load i8, ptr %i.cr, align 1, !alias.scope !13638, !noalias !13639, !noundef !80
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 3
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !13638, !noalias !13639, !noundef !80
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 4
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !13638, !noalias !13639, !noundef !80
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 5
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !13638, !noalias !13639, !noundef !80
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 6
  %i.dr = load i8, ptr %i.dl, align 1, !alias.scope !13638, !noalias !13639, !noundef !80
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 1099511628211
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 7
  %i.dw = load i8, ptr %i.dq, align 1, !alias.scope !13638, !noalias !13639, !noundef !80
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.du, %i.dx
  %i.dz = mul i64 %i.dy, 1099511628211
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 2 uses
  %i.eb = load i8, ptr %i.dv, align 1, !alias.scope !13638, !noalias !13639, !noundef !80
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.dz, %i.ec
  %i.ee = mul i64 %i.ed, 1099511628211            ; 2 uses
  %i.ef = icmp eq ptr %i.ea, %i.cj
  br i1 %i.ef, label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsa7TLgTh0CeG_9ssmanager.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.eg = load i8, ptr %i.ch, align 8, !range !96, !noalias !13637, !noundef !80
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = xor i64 %i.cg, %i.eh
  %i.ej = mul i64 %i.ei, 2232315406967589409
  br label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsa7TLgTh0CeG_9ssmanager.exit

_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.g, %bb.f, %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.0.0 = phi i64 [ %i.cb, %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit ], [ %i.ej, %bb.g ], [ %i.cg, %bb.f ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ee, %.lr.ph.i.i.i.i ]
  %i.ek = trunc i64 %.sroa.0.0 to i16
  %i.el = and i16 %i.ek, 32767
  ret i16 %i.el
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsczhfDQ1qNkX_5tokio4time7timeout7timeoutINtNtNtNtB6_2io4util4read4ReadINtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtB6_3net3tcp6stream9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) initializes((0, 136)) %0, i32 noundef range(i32 20000000, 500000001) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i32 } @_RNvMNtNtCsczhfDQ1qNkX_5tokio4time7instantNtB2_7Instant3now() #46 ; 2 uses
  %i.d = extractvalue { i64, i32 } %i.c, 0
  %i.e = extractvalue { i64, i32 } %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.e, ptr %i.f, align 8
  %i.g = call { i64, i32 } @_RNvMNtNtCsczhfDQ1qNkX_5tokio4time7instantNtB2_7Instant11checked_add(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef %1) #46 ; 2 uses
  %i.h = extractvalue { i64, i32 } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, i32 } %i.g, 0
  call void @_RNvMNtNtCsczhfDQ1qNkX_5tokio4time5sleepNtB2_5Sleep11new_timeout(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, i64 noundef %i.i, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #46
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMNtNtCsczhfDQ1qNkX_5tokio4time5sleepNtB2_5Sleep10far_future(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null) #46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake12drop_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsa7TLgTh0CeG_9ssmanager(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !13644
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECsa7TLgTh0CeG_9ssmanager.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCsi1FNhPBS7PW_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake12wake_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsa7TLgTh0CeG_9ssmanager(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  tail call fastcc void @_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake11wake_by_refCsa7TLgTh0CeG_9ssmanager(ptr nonnull %i.b) #46
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !13649
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake4wakeCsa7TLgTh0CeG_9ssmanager.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCsi1FNhPBS7PW_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #53
  br label %_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake4wakeCsa7TLgTh0CeG_9ssmanager.exit

_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake4wakeCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsa7TLgTh0CeG_9ssmanager(ptr noundef %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE25increment_strong_count_inCsa7TLgTh0CeG_9ssmanager.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE25increment_strong_count_inCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.a
  %i.d = insertvalue { ptr, ptr } { ptr @184, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake19wake_by_ref_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsa7TLgTh0CeG_9ssmanager(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call fastcc void @_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake11wake_by_refCsa7TLgTh0CeG_9ssmanager(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
end_hunk_0
begin_hunk_1_@_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs8AjStw0eGtC_16hickory_resolver16name_server_pool8CacheKeyEECsa7TLgTh0CeG_9ssmanager:bb.a
  %.lcssa316 = phi i64 [ %.lcssa315, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted42.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa213 = phi i64 [ %.lcssa212, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa10 = phi i64 [ %.lcssa9, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted36.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i14.i.i.i13.i.i.i.i.i.i.lcssa16 = phi i64 [ %.sroa.0.2.i14.i.i.i13.i.i.i.i.i.i.lcssa17, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted22.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ]
  %.promoted1747.i.i.i.i.i.i = phi i64 [ %.promoted1746.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted42.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %.promoted1641.i.i.i.i.i.i = phi i64 [ %.promoted1640.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted36.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %.promoted1535.i.i.i.i.i.i = phi i64 [ %.promoted1534.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted30.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %.promoted1429.i.i.i.i.i.i = phi i64 [ %.promoted1428.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %.promoted24.i.i.i.i.i.i = phi i64 [ %.promoted23.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted22.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %storemerge.i.i.i.lcssa21.i.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.lcssa20.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted19.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.bf = phi i64 [ %i.dg, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted18.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.bg = phi ptr [ %i.di, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %i.bd, %.lr.ph.i.preheader.i.i.i.i.i.i.i ]
  %i.bh = phi { ptr, i64 } [ %i.dh, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %i.bc, %.lr.ph.i.preheader.i.i.i.i.i.i.i ]
  %i.bi = extractvalue { ptr, i64 } %i.bh, 1      ; 3 uses
  %i.bj = icmp samesign eq i64 %i.bi, 0
  br i1 %i.bj, label %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i
  %i.bk = phi i64 [ %i.cu, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.lcssa419, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bl = phi i64 [ %i.cv, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.lcssa316, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bm = phi i64 [ %i.cw, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.lcssa213, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bn = phi i64 [ %i.cx, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.lcssa10, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.promoted1745.i.i.i.i.i.i = phi i64 [ %.promoted1743.i.i.i.i.i.i, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted1747.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.promoted1639.i.i.i.i.i.i = phi i64 [ %.promoted1637.i.i.i.i.i.i, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted1641.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.promoted1533.i.i.i.i.i.i = phi i64 [ %.promoted1531.i.i.i.i.i.i, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted1535.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.promoted1427.i.i.i.i.i.i = phi i64 [ %.promoted1425.i.i.i.i.i.i, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted1429.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bo = phi i64 [ %i.cy, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted1747.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bp = phi i64 [ %i.cz, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted1641.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bq = phi i64 [ %i.da, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted1535.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.br = phi i64 [ %i.db, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted1429.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.2.i14.i.i.i12.i.i.i.i.i.i = phi i64 [ %.sroa.0.2.i14.i.i.i13.i.i.i.i.i.i, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %.promoted24.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %storemerge.i7.i.i.i.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ %storemerge.i.i.i.lcssa21.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dc, %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i
  %.val8.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bs, align 1, !alias.scope !17085, !noalias !17086, !noundef !80 ; 2 uses
  %i.bt = add i8 %.val8.i.i.i.i.i.i.i.i.i.i.i, -65
  %i.bu = icmp ult i8 %i.bt, 26
  %i.bv = select i1 %i.bu, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i8 %i.bv, %.val8.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bw = icmp eq i64 %storemerge.i7.i.i.i.i.i.i.i.i, 0
  br i1 %i.bw, label %..thread.i_crit_edge.i.i.i.i.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit.i.i.i.i.i.i.i.i.i

..thread.i_crit_edge.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = zext i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i

_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i
  %.not4.i.i.i.i.i.i.i.i = icmp eq i64 %storemerge.i7.i.i.i.i.i.i.i.i, 8
  %i.bx = zext i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i = select i1 %.not4.i.i.i.i.i.i.i.i, i64 0, i64 %i.bx
  %i.by = shl i64 %storemerge.i7.i.i.i.i.i.i.i.i, 3
  %i.bz = and i64 %i.by, 56
  %i.ca = shl nuw i64 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i, %i.bz
  %i.cb = or i64 %i.ca, %.sroa.0.2.i14.i.i.i12.i.i.i.i.i.i ; 3 uses
  %notsub.i.i.i.i.i.i.i.i = add i64 %storemerge.i7.i.i.i.i.i.i.i.i, -9
  %i.cc = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -2
  br i1 %i.cc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit.i.i.i.i.i.i.i.i.i
  %i.cd = xor i64 %i.cb, %i.br                    ; 3 uses
  %i.ce = add i64 %i.bq, %i.bp                    ; 3 uses
  %i.cf = add i64 %i.cd, %i.bo                    ; 2 uses
  %i.cg = call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 13)
  %i.ch = xor i64 %i.ce, %i.cg                    ; 3 uses
  %i.ci = call noundef i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 16)
  %i.cj = xor i64 %i.cf, %i.ci                    ; 3 uses
  %i.ck = call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 32)
  %i.cl = add i64 %i.cf, %i.ch                    ; 3 uses
  %i.cm = add i64 %i.cj, %i.ck                    ; 2 uses
  %i.cn = call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 17)
  %i.co = xor i64 %i.cl, %i.cn                    ; 3 uses
  %i.cp = call noundef i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 21)
  %i.cq = xor i64 %i.cp, %i.cm                    ; 3 uses
  %i.cr = call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 32) ; 3 uses
  %i.cs = xor i64 %i.cm, %i.cb                    ; 3 uses
  %.not5.i.i.i.i.i.i.i.i = icmp ne i64 %storemerge.i7.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %spec.select.i.i.i.i.i.i.i = zext i1 %.not5.i.i.i.i.i.i.i.i to i64
  %spec.select20.i.i.i.i.i.i.i = select i1 %.not5.i.i.i.i.i.i.i.i, i64 %i.bx, i64 0
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit.i.i.i.i.i.i.i.i.i
  %i.ct = add i64 %storemerge.i7.i.i.i.i.i.i.i.i, 1
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i

_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i: ; preds = %..thread.i_crit_edge.i.i.i.i.i.i.i, %bb.h, %bb.i
  %i.cu = phi i64 [ %i.bk, %bb.i ], [ %i.cs, %bb.h ], [ %i.bk, %..thread.i_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.cv = phi i64 [ %i.bl, %bb.i ], [ %i.cr, %bb.h ], [ %i.bl, %..thread.i_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.cw = phi i64 [ %i.bm, %bb.i ], [ %i.cq, %bb.h ], [ %i.bm, %..thread.i_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.cx = phi i64 [ %i.bn, %bb.i ], [ %i.co, %bb.h ], [ %i.bn, %..thread.i_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.promoted1743.i.i.i.i.i.i = phi i64 [ %.promoted1745.i.i.i.i.i.i, %bb.i ], [ %i.cr, %bb.h ], [ %.promoted1745.i.i.i.i.i.i, %..thread.i_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.promoted1637.i.i.i.i.i.i = phi i64 [ %.promoted1639.i.i.i.i.i.i, %bb.i ], [ %i.co, %bb.h ], [ %.promoted1639.i.i.i.i.i.i, %..thread.i_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.promoted1531.i.i.i.i.i.i = phi i64 [ %.promoted1533.i.i.i.i.i.i, %bb.i ], [ %i.cs, %bb.h ], [ %.promoted1533.i.i.i.i.i.i, %..thread.i_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.promoted1425.i.i.i.i.i.i = phi i64 [ %.promoted1427.i.i.i.i.i.i, %bb.i ], [ %i.cq, %bb.h ], [ %.promoted1427.i.i.i.i.i.i, %..thread.i_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.cy = phi i64 [ %i.bo, %bb.i ], [ %i.cr, %bb.h ], [ %i.bo, %..thread.i_crit_edge.i.i.i.i.i.i.i ]
  %i.cz = phi i64 [ %i.bp, %bb.i ], [ %i.co, %bb.h ], [ %i.bp, %..thread.i_crit_edge.i.i.i.i.i.i.i ]
  %i.da = phi i64 [ %i.bq, %bb.i ], [ %i.cs, %bb.h ], [ %i.bq, %..thread.i_crit_edge.i.i.i.i.i.i.i ]
  %i.db = phi i64 [ %i.br, %bb.i ], [ %i.cq, %bb.h ], [ %i.br, %..thread.i_crit_edge.i.i.i.i.i.i.i ]
  %.sroa.0.2.i14.i.i.i13.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.i ], [ %spec.select20.i.i.i.i.i.i.i, %bb.h ], [ %.pre.i.i.i.i.i.i.i, %..thread.i_crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %storemerge.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ct, %bb.i ], [ %spec.select.i.i.i.i.i.i.i, %bb.h ], [ 1, %..thread.i_crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.dc = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, %i.bi
  br i1 %i.dd, label %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i
  %i.de = add i64 %i.bi, %i.bf                    ; 2 uses
  br label %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i

_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i.i.i.lcssa22 = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i.i.i.lcssa21, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.df = phi i64 [ %i.de, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa418 = phi i64 [ %i.cu, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.lcssa419, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa315 = phi i64 [ %i.cv, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.lcssa316, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa212 = phi i64 [ %i.cw, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.lcssa213, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa9 = phi i64 [ %i.cx, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.lcssa10, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i14.i.i.i13.i.i.i.i.i.i.lcssa17 = phi i64 [ %.sroa.0.2.i14.i.i.i13.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.0.2.i14.i.i.i13.i.i.i.i.i.i.lcssa16, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.promoted1746.i.i.i.i.i.i = phi i64 [ %.promoted1743.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.promoted1747.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.promoted1640.i.i.i.i.i.i = phi i64 [ %.promoted1637.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.promoted1641.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.promoted1534.i.i.i.i.i.i = phi i64 [ %.promoted1531.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.promoted1535.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.promoted1428.i.i.i.i.i.i = phi i64 [ %.promoted1425.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.promoted1429.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.promoted23.i.i.i.i.i.i = phi i64 [ %.sroa.0.2.i14.i.i.i13.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.promoted24.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %storemerge.i.i.i.lcssa20.i.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %storemerge.i.i.i.lcssa21.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.dg = phi i64 [ %i.de, %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.dh = call { ptr, i64 } @_RNvXs2_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_9LabelIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #46, !noalias !17082 ; 2 uses
  %i.di = extractvalue { ptr, i64 } %i.dh, 0      ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

_RINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.loopexit: ; preds = %_RNCINvNvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherE0E0E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i
  store i64 %.sroa.0.2.i14.i.i.i13.i.i.i.i.i.i.lcssa17, ptr %i.ap, align 8
  store i64 %.lcssa9, ptr %.sroa.59.0..sroa_idx.i, align 8
  store i64 %.lcssa212, ptr %.sroa.610.0..sroa_idx.i, align 8
  store i64 %.lcssa315, ptr %.sroa.48.0..sroa_idx.i, align 8
  store i64 %.lcssa418, ptr %i.t, align 8
  store i64 %i.df, ptr %.sroa.913.0..sroa_idx.i, align 8
  store i64 %storemerge.i.i.i.i.i.i.i.i.i.lcssa22, ptr %i.ao, align 8
  br label %_RINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

_RINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %_RINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.loopexit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17081
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 84
  %i.dk = load i16, ptr %i.dj, align 4, !range !171, !alias.scope !17087, !noalias !17088, !noundef !80 ; 2 uses
  %i.dl = zext nneg i16 %i.dk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17089
  store i64 %i.dl, ptr %i.l, align 8, !noalias !17089
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 8) #54, !noalias !17063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !17089
  %i.dm = icmp eq i16 %i.dk, 37
  br i1 %i.dm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 86
  %i.do = load i16, ptr %i.dn, align 2, !alias.scope !17087, !noalias !17088, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17090
  store i16 %i.do, ptr %i.k, align 2, !noalias !17090
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 2) #54, !noalias !17063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17090
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RINvXsa_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 80
  %i.dq = load i16, ptr %i.dp, align 8, !range !172, !alias.scope !17087, !noalias !17088, !noundef !80 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 82 ; 2 uses
  %i.ds = zext nneg i16 %i.dq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17091
  store i64 %i.ds, ptr %i.j, align 8, !noalias !17091
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8) #54, !noalias !17063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17091
  switch i16 %i.dq, label %_RINvXs6_NtNtCs2Z77Vc7pSLS_13hickory_proto2op5queryNtB6_5QueryNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i [
    i16 5, label %bb.l
    i16 6, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.dt = load i16, ptr %i.dr, align 2, !alias.scope !17087, !noalias !17088, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17092
  store i16 %i.dt, ptr %i.i, align 2, !noalias !17092
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 2) #54, !noalias !17063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17092
  br label %_RINvXs6_NtNtCs2Z77Vc7pSLS_13hickory_proto2op5queryNtB6_5QueryNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.du = load i16, ptr %i.dr, align 2, !alias.scope !17087, !noalias !17088, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17093
  store i16 %i.du, ptr %i.h, align 2, !noalias !17093
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 2) #54, !noalias !17063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17093
  br label %_RINvXs6_NtNtCs2Z77Vc7pSLS_13hickory_proto2op5queryNtB6_5QueryNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

_RINvXs6_NtNtCs2Z77Vc7pSLS_13hickory_proto2op5queryNtB6_5QueryNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.dv = icmp eq ptr %i.aq, %i.am
  br i1 %i.dv, label %_RINvYNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryNtNtCsf3Ta7LF998c_4core4hash4Hash10hash_sliceNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %bb.d

_RINvYNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryNtNtCsf3Ta7LF998c_4core4hash4Hash10hash_sliceNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %_RINvXs6_NtNtCs2Z77Vc7pSLS_13hickory_proto2op5queryNtB6_5QueryNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %bb.c
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i, i64 44
  %i.dx = load i8, ptr %i.dw, align 4, !range !93, !alias.scope !17063, !noalias !17065, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17094
  store i8 %i.dx, ptr %i.g, align 1, !noalias !17094
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) #54, !noalias !17063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17094
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i, i64 45
  %i.dz = load i8, ptr %i.dy, align 1, !range !95, !alias.scope !17063, !noalias !17065, !noundef !80 ; 4 uses
  %i.ea = icmp ne i8 %i.dz, 2
  %i.eb = zext i1 %i.ea to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17095
  store i64 %i.eb, ptr %i.f, align 8, !noalias !17095
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #54, !noalias !17063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17095
  %.not.i.i.i = icmp eq i8 %i.dz, 2
  br i1 %.not.i.i.i, label %_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs8AjStw0eGtC_16hickory_resolver16name_server_pool8CacheKeyENtB8_4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit, label %bb.n

bb.n:                                             ; preds = %_RINvYNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryNtNtCsf3Ta7LF998c_4core4hash4Hash10hash_sliceNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17096)
  %i.ec = trunc nuw i8 %i.dz to i1
  %i.ed = zext nneg i8 %i.dz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17097
  store i64 %i.ed, ptr %i.e, align 8, !noalias !17097
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #54, !noalias !17098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17097
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i, i64 46 ; 2 uses
  br i1 %i.ec, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i.i.i.i = load i128, ptr %i.ee, align 2, !alias.scope !17098, !noalias !17099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17100
  store i128 %.sroa.0.0.copyload.i.i.i.i, ptr %i.d, align 16, !noalias !17100
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 16) #54, !noalias !17098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17100
  br label %_RINvXsY_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata3optNtB6_12ClientSubnetNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %.sroa.01.0.copyload.i.i.i.i = load i32, ptr %i.ee, align 2, !alias.scope !17098, !noalias !17099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17101
  store i32 %.sroa.01.0.copyload.i.i.i.i, ptr %i.c, align 4, !noalias !17101
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4) #54, !noalias !17098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17101
  br label %_RINvXsY_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata3optNtB6_12ClientSubnetNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvXsY_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata3optNtB6_12ClientSubnetNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.p, %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i, i64 62
  %i.eg = load i8, ptr %i.ef, align 2, !alias.scope !17098, !noalias !17099, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17102
  store i8 %i.eg, ptr %i.b, align 1, !noalias !17102
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #54, !noalias !17098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17102
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i, i64 63
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !17098, !noalias !17099, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17103
  store i8 %i.ei, ptr %i.a, align 1, !noalias !17103
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #54, !noalias !17098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17103
  br label %_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs8AjStw0eGtC_16hickory_resolver16name_server_pool8CacheKeyENtB8_4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit

_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs8AjStw0eGtC_16hickory_resolver16name_server_pool8CacheKeyENtB8_4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RINvYNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryNtNtCsf3Ta7LF998c_4core4hash4Hash10hash_sliceNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %_RINvXsY_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata3optNtB6_12ClientSubnetNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.t, align 8, !alias.scope !17104
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !17104
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !17104 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !17104
  %i.ej = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !17104, !noundef !80
  %i.ek = shl i64 %i.ej, 56
  %i.el = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !17104, !noundef !80
  %i.en = or i64 %i.ek, %i.em                     ; 2 uses
  %i.eo = xor i64 %i.en, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.ep = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.eq = add i64 %i.eo, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.er = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.es = xor i64 %i.er, %i.ep                    ; 3 uses
  %i.et = call noundef i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 16)
  %i.eu = xor i64 %i.et, %i.eq                    ; 3 uses
  %i.ev = call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 32)
  %i.ew = add i64 %i.eq, %i.es                    ; 3 uses
  %i.ex = add i64 %i.eu, %i.ev                    ; 2 uses
  %i.ey = call noundef i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 17)
  %i.ez = xor i64 %i.ew, %i.ey                    ; 3 uses
  %i.fa = call noundef i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 21)
  %i.fb = xor i64 %i.fa, %i.ex                    ; 3 uses
  %i.fc = call noundef i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 32)
  %i.fd = xor i64 %i.ex, %i.en
  %i.fe = xor i64 %i.fc, 255
  %i.ff = add i64 %i.fd, %i.ez                    ; 3 uses
  %i.fg = add i64 %i.fb, %i.fe                    ; 2 uses
  %i.fh = call noundef i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 13)
  %i.fi = xor i64 %i.ff, %i.fh                    ; 3 uses
  %i.fj = call noundef i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 16)
  %i.fk = xor i64 %i.fj, %i.fg                    ; 3 uses
  %i.fl = call noundef i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 32)
  %i.fm = add i64 %i.fi, %i.fg                    ; 3 uses
  %i.fn = add i64 %i.fk, %i.fl                    ; 2 uses
  %i.fo = call noundef i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 17)
  %i.fp = xor i64 %i.fm, %i.fo                    ; 3 uses
  %i.fq = call noundef i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 21)
  %i.fr = xor i64 %i.fq, %i.fn                    ; 3 uses
  %i.fs = call noundef i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fm, i64 32)
  %i.ft = add i64 %i.fp, %i.fn                    ; 3 uses
  %i.fu = add i64 %i.fr, %i.fs                    ; 2 uses
  %i.fv = call noundef i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 13)
  %i.fw = xor i64 %i.fv, %i.ft                    ; 3 uses
  %i.fx = call noundef i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 16)
  %i.fy = xor i64 %i.fx, %i.fu                    ; 3 uses
  %i.fz = call noundef i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.ft, i64 32)
  %i.ga = add i64 %i.fw, %i.fu                    ; 3 uses
  %i.gb = add i64 %i.fy, %i.fz                    ; 2 uses
  %i.gc = call noundef i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 17)
  %i.gd = xor i64 %i.gc, %i.ga                    ; 3 uses
  %i.ge = call noundef i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 21)
  %i.gf = xor i64 %i.ge, %i.gb                    ; 3 uses
  %i.gg = call noundef i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.ga, i64 32)
  %i.gh = add i64 %i.gd, %i.gb
  %i.gi = add i64 %i.gf, %i.gg                    ; 2 uses
  %i.gj = call noundef i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 13)
  %i.gk = xor i64 %i.gj, %i.gh                    ; 3 uses
  %i.gl = call noundef i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gf, i64 16)
  %i.gm = xor i64 %i.gl, %i.gi                    ; 2 uses
  %i.gn = add i64 %i.gk, %i.gi                    ; 3 uses
  %i.go = call noundef i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 17)
  %i.gp = call noundef i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 21)
  %i.gq = call noundef i64 @llvm.fshl.i64(i64 %i.gn, i64 %i.gn, i64 32)
  %i.gr = xor i64 %i.gp, %i.go
  %i.gs = xor i64 %i.gr, %i.gq
  %i.gt = xor i64 %i.gs, %i.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret i64 %i.gt
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cache12DnsClientKeyECsa7TLgTh0CeG_9ssmanager(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = xor i64 %.0.val, 8317987319222330741
  %i.j = xor i64 %.8.val, 7237128888997146477
  %i.k = xor i64 %.0.val, 7816392313619706465
  %i.l = xor i64 %.8.val, 8387220255154660723
  store i64 %i.i, ptr %i.h, align 8, !alias.scope !17150
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 %i.k, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !17150
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %i.j, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !17150
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store i64 %i.l, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !17150
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !17150
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !17150
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !17150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17151)
  %i.m = load i32, ptr %0, align 8, !range !135, !alias.scope !17151, !noalias !17152, !noundef !80 ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17153
  store i64 %i.n, ptr %i.g, align 8, !noalias !17153
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #54, !noalias !17151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17153
  switch i32 %i.m, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  call fastcc void @_RINvXsg_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB6_10SocketAddrNtNtBa_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h) #54
  br label %_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cache12DnsClientKeyNtB8_4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  call fastcc void @_RINvXsg_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB6_10SocketAddrNtNtBa_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h) #54
  br label %_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cache12DnsClientKeyNtB8_4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17154)
  %i.r = load i16, ptr %i.q, align 8, !range !81, !alias.scope !17155, !noalias !17156, !noundef !80 ; 2 uses
  %i.s = zext nneg i16 %i.r to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17157
  store i64 %i.s, ptr %i.f, align 8, !noalias !17157
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #54, !noalias !17155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17157
  %i.t = trunc nuw i16 %i.r to i1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !17155, !noalias !17156, !nonnull !80, !noundef !80
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !17155, !noalias !17156, !noundef !80
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x) #54, !noalias !17155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17158
  store i8 -1, ptr %i.e, align 1, !noalias !17158
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1) #54, !noalias !17159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17158
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.z = load i16, ptr %i.y, align 2, !alias.scope !17155, !noalias !17156, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17160
  store i16 %i.z, ptr %i.d, align 2, !noalias !17160
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 2) #54, !noalias !17155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17160
  br label %_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cache12DnsClientKeyNtB8_4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsa7TLgTh0CeG_9ssmanager.exit
end_hunk_1
begin_hunk_2_@_RNCNvMs_NtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream6serverINtB6_17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEE9handshake0Csa7TLgTh0CeG_9ssmanager:bb.a
_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtBH_24Aead2022TcpRequestHeader9read_fromINtNtBL_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.thread.i: ; preds = %bb.ba, %bb.az, %.loopexit.i.i, %bb.ao
  %i.fx = phi ptr [ %i.eq, %bb.ba ], [ %i.eq, %bb.az ], [ %i.eq, %.loopexit.i.i ], [ %i.cp, %bb.ao ]
  %i.fy = phi ptr [ %i.er, %bb.ba ], [ %i.er, %bb.az ], [ %i.er, %.loopexit.i.i ], [ %i.cq, %bb.ao ]
  %i.fz = phi ptr [ %i.es, %bb.ba ], [ %i.es, %bb.az ], [ %i.es, %.loopexit.i.i ], [ %i.cr, %bb.ao ]
  %.sroa.550.0.i.ph.i = phi ptr [ %.sroa.550.1.i.i, %bb.ba ], [ %.sroa.550.1.i.i, %bb.az ], [ %.sroa.550.1.i.i, %.loopexit.i.i ], [ %i.dc, %bb.ao ]
  store i8 1, ptr %i.fz, align 2, !noalias !29705
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.327.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.528.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9196.i)
  br label %bb.by

_RNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtB5_24Aead2022TcpRequestHeader9read_fromINtNtB9_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.bm, %bb.bb, %bb.aw
  %i.ga = phi ptr [ %i.dh, %bb.aw ], [ %i.ez, %bb.bb ], [ %i.ez, %bb.bm ] ; 3 uses
  %i.gb = phi ptr [ %i.di, %bb.aw ], [ %i.fa, %bb.bb ], [ %i.fa, %bb.bm ] ; 2 uses
  %i.gc = phi ptr [ %i.dj, %bb.aw ], [ %i.fb, %bb.bb ], [ %i.fb, %bb.bm ]
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.055.0.copyload.i.i = load i16, ptr %i.gd, align 8, !noalias !29705 ; 4 uses
  %.sroa.456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 50
  %.sroa.557.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.557.0.copyload.i.i = load ptr, ptr %.sroa.557.0..sroa_idx.i.i, align 8, !noalias !29705 ; 2 uses
  %.sroa.658.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.852.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.658.0..sroa_idx.i.i, align 8, !noalias !29705
  %.sroa.852.i.sroa.4.0..sroa.658.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.852.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.852.i.sroa.4.0..sroa.658.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !29705
  %.sroa.852.i.sroa.5.0..sroa.658.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.852.i.sroa.5.0.copyload.i = load i64, ptr %.sroa.852.i.sroa.5.0..sroa.658.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !29705
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gf = load i16, ptr %i.ge, align 8, !noalias !29705, !noundef !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.9196.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.456.0..sroa_idx.i.i, i64 6, i1 false), !noalias !29689
  store i8 1, ptr %i.gc, align 2, !noalias !29705
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.327.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.528.i.i)
  %i.gg = icmp eq i16 %.sroa.055.0.copyload.i.i, -1
  br i1 %i.gg, label %bb.bx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtBH_24Aead2022TcpRequestHeader9read_fromINtNtBL_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.i

bb.bn:                                            ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @459) #56, !noalias !29726
  unreachable

bb.bo:                                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !29690
  store i8 3, ptr %i.ar, align 8, !noalias !29690
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.i.sroa.5.i)
  br label %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread

bb.bp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs3_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtBK_7Address9read_fromINtNtNtNtBM_8tcprelay12proxy_stream6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !29727
  store ptr %.sroa.310.sroa.2.0.copyload.i.i, ptr %i.j, align 8, !noalias !29728
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.310.sroa.4.0.copyload.i.i, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !29728
  %i.gh = call noundef nonnull ptr @_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtBT_7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.j) #46, !noalias !29729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !29727
  store i8 1, ptr %i.ar, align 8, !noalias !29690
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.i.sroa.5.i)
  br label %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99

bb.bq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs3_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtBK_7Address9read_fromINtNtNtNtBM_8tcprelay12proxy_stream6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10165.sroa.6.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.511.i.sroa.5.i, i64 6, i1 false)
  store i8 1, ptr %i.ar, align 8, !noalias !29690
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.i.sroa.5.i)
  %.sroa.13220.0.insert.ext.i = zext nneg i16 %i.at to i64
  %.sroa.13220.2.insert.ext.i = zext i48 %.sroa.310.sroa.0.i.sroa.0.0.copyload.i to i64
  %.sroa.13220.2.insert.shift.i = shl nuw i64 %.sroa.13220.2.insert.ext.i, 16
  %.sroa.13220.2.insert.insert.i = or disjoint i64 %.sroa.13220.2.insert.shift.i, %.sroa.13220.0.insert.ext.i
  %i.gi = inttoptr i64 %.sroa.13220.2.insert.insert.i to ptr
  br label %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99

bb.br:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !29700
  store i8 3, ptr %i.bz, align 8, !noalias !29700
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.i34.sroa.5.i)
  br label %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread

bb.bs:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs3_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtBK_7Address9read_fromINtNtNtNtBM_8tcprelay12proxy_stream6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.i42.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !29730
  store ptr %.sroa.310.sroa.2.0.copyload.i37.i, ptr %i.f, align 8, !noalias !29731
  %.sroa.424.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.310.sroa.4.0.copyload.i39.i, ptr %.sroa.424.0..sroa_idx.i50.i, align 8, !noalias !29731
  %i.gj = call noundef nonnull ptr @_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtBT_7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.f) #46, !noalias !29732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29730
  store i8 1, ptr %i.bz, align 8, !noalias !29700
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.i34.sroa.5.i)
  br label %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99

bb.bt:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs3_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtBK_7Address9read_fromINtNtNtNtBM_8tcprelay12proxy_stream6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.i42.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10165.sroa.6.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.511.i34.sroa.5.i, i64 6, i1 false)
  store i8 1, ptr %i.bz, align 8, !noalias !29700
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.i34.sroa.5.i)
  %.sroa.13220.0.insert.ext228.i = zext nneg i16 %i.cb to i64
  %.sroa.13220.2.insert.ext237.i = zext i48 %.sroa.310.sroa.0.i33.sroa.0.0.copyload.i to i64
  %.sroa.13220.2.insert.shift238.i = shl nuw i64 %.sroa.13220.2.insert.ext237.i, 16
  %.sroa.13220.2.insert.insert240.i = or disjoint i64 %.sroa.13220.2.insert.shift238.i, %.sroa.13220.0.insert.ext228.i
  %i.gk = inttoptr i64 %.sroa.13220.2.insert.insert240.i to ptr
  br label %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99

bb.bu:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29695
  store i8 3, ptr %i.bi, align 8, !noalias !29695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.i8.sroa.5.i)
  br label %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread

bb.bv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs3_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtBK_7Address9read_fromINtNtNtNtBM_8tcprelay12proxy_stream6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.i16.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !29733
  store ptr %.sroa.310.sroa.2.0.copyload.i11.i, ptr %i.h, align 8, !noalias !29734
  %.sroa.424.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.310.sroa.4.0.copyload.i13.i, ptr %.sroa.424.0..sroa_idx.i24.i, align 8, !noalias !29734
  %i.gl = call noundef nonnull ptr @_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtBT_7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.h) #46, !noalias !29735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29733
  store i8 1, ptr %i.bi, align 8, !noalias !29695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.i8.sroa.5.i)
  br label %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99

bb.bw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs3_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtBK_7Address9read_fromINtNtNtNtBM_8tcprelay12proxy_stream6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.i16.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10165.sroa.6.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.511.i8.sroa.5.i, i64 6, i1 false)
  store i8 1, ptr %i.bi, align 8, !noalias !29695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.i8.sroa.5.i)
  %.sroa.13220.0.insert.ext232.i = zext nneg i16 %i.bk to i64
  %.sroa.13220.2.insert.ext243.i = zext i48 %.sroa.310.sroa.0.i7.sroa.0.0.copyload.i to i64
  %.sroa.13220.2.insert.shift244.i = shl nuw i64 %.sroa.13220.2.insert.ext243.i, 16
  %.sroa.13220.2.insert.insert246.i = or disjoint i64 %.sroa.13220.2.insert.shift244.i, %.sroa.13220.0.insert.ext232.i
  %i.gm = inttoptr i64 %.sroa.13220.2.insert.insert246.i to ptr
  br label %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99

bb.bx:                                            ; preds = %_RNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtB5_24Aead2022TcpRequestHeader9read_fromINtNtB9_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.i, %_RNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtB5_24Aead2022TcpRequestHeader9read_fromINtNtB9_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread.i
  %i.gn = phi ptr [ %i.ga, %_RNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtB5_24Aead2022TcpRequestHeader9read_fromINtNtB9_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.i ], [ %i.fv, %_RNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtB5_24Aead2022TcpRequestHeader9read_fromINtNtB9_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9196.i)
  br label %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtBH_24Aead2022TcpRequestHeader9read_fromINtNtBL_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtB5_24Aead2022TcpRequestHeader9read_fromINtNtB9_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3201.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.9196.i, i64 6, i1 false), !noalias !29689
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9196.i)
  %i.go = icmp eq i16 %.sroa.055.0.copyload.i.i, 2
  br i1 %i.go, label %bb.by, label %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit

bb.by:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtBH_24Aead2022TcpRequestHeader9read_fromINtNtBL_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtBH_24Aead2022TcpRequestHeader9read_fromINtNtBL_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.thread.i
  %i.gp = phi ptr [ %i.fx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtBH_24Aead2022TcpRequestHeader9read_fromINtNtBL_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.thread.i ], [ %i.ga, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtBH_24Aead2022TcpRequestHeader9read_fromINtNtBL_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %i.gq = phi ptr [ %i.fy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtBH_24Aead2022TcpRequestHeader9read_fromINtNtBL_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.thread.i ], [ %i.gb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtBH_24Aead2022TcpRequestHeader9read_fromINtNtBL_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.550.0.i292345.i = phi ptr [ %.sroa.550.0.i.ph.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtBH_24Aead2022TcpRequestHeader9read_fromINtNtBL_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.thread.i ], [ %.sroa.557.0.copyload.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtBH_24Aead2022TcpRequestHeader9read_fromINtNtBL_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.550.0.i292345.i) ]
  br label %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99

_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread: ; preds = %bb.bo, %bb.bu, %bb.br, %bb.bx
  %i.gr = phi ptr [ %i.ap, %bb.bo ], [ %i.bx, %bb.br ], [ %i.bg, %bb.bu ], [ %i.gn, %bb.bx ]
  %.sink.i.ph = phi i8 [ 3, %bb.bo ], [ 4, %bb.br ], [ 5, %bb.bu ], [ 6, %bb.bx ]
  store i8 %.sink.i.ph, ptr %i.gr, align 2, !noalias !29689
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3201.i)
  br label %bb.ca

_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99: ; preds = %bb.bp, %bb.bq, %bb.bv, %bb.bw, %bb.bs, %bb.bt, %bb.by
  %i.gs = phi ptr [ %i.gp, %bb.by ], [ %i.bx, %bb.bt ], [ %i.bx, %bb.bs ], [ %i.bg, %bb.bw ], [ %i.bg, %bb.bv ], [ %i.ap, %bb.bq ], [ %i.ap, %bb.bp ]
  %i.gt = phi ptr [ %i.gq, %bb.by ], [ %i.by, %bb.bt ], [ %i.by, %bb.bs ], [ %i.bh, %bb.bw ], [ %i.bh, %bb.bv ], [ %i.aq, %bb.bq ], [ %i.aq, %bb.bp ]
  %.sroa.34.0.i.ph = phi i16 [ undef, %bb.by ], [ %.sroa.511.i34.sroa.4.0.copyload.i, %bb.bt ], [ undef, %bb.bs ], [ %.sroa.511.i8.sroa.4.0.copyload.i, %bb.bw ], [ undef, %bb.bv ], [ %.sroa.511.i.sroa.4.0.copyload.i, %bb.bq ], [ undef, %bb.bp ]
  %.sroa.31.0.i.ph = phi i64 [ undef, %bb.by ], [ %.sroa.511.i34.sroa.0.0.copyload.i, %bb.bt ], [ undef, %bb.bs ], [ %.sroa.511.i8.sroa.0.0.copyload.i, %bb.bw ], [ undef, %bb.bv ], [ %.sroa.511.i.sroa.0.0.copyload.i, %bb.bq ], [ undef, %bb.bp ]
  %.sroa.28.0.i.ph = phi i64 [ undef, %bb.by ], [ %.sroa.310.sroa.4.0.copyload.i39.i, %bb.bt ], [ undef, %bb.bs ], [ %.sroa.310.sroa.4.0.copyload.i13.i, %bb.bw ], [ undef, %bb.bv ], [ %.sroa.310.sroa.4.0.copyload.i.i, %bb.bq ], [ undef, %bb.bp ]
  %.sroa.24.0.i.ph = phi ptr [ undef, %bb.by ], [ %.sroa.310.sroa.2.0.copyload.i37.i, %bb.bt ], [ undef, %bb.bs ], [ %.sroa.310.sroa.2.0.copyload.i11.i, %bb.bw ], [ undef, %bb.bv ], [ %.sroa.310.sroa.2.0.copyload.i.i, %bb.bq ], [ undef, %bb.bp ]
  %.sroa.0218.0.i.ph = phi i16 [ -1, %bb.by ], [ 2, %bb.bt ], [ -1, %bb.bs ], [ 2, %bb.bw ], [ -1, %bb.bv ], [ 2, %bb.bq ], [ -1, %bb.bp ]
  %.sroa.13220.0.i.ph = phi ptr [ %.sroa.550.0.i292345.i, %bb.by ], [ %i.gk, %bb.bt ], [ %i.gj, %bb.bs ], [ %i.gm, %bb.bw ], [ %i.gl, %bb.bv ], [ %i.gi, %bb.bq ], [ %i.gh, %bb.bp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.16, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10165.sroa.6.i, i64 6, i1 false)
  store i8 1, ptr %i.gs, align 2, !noalias !29689
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3201.i)
  br label %bb.cb

_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v2NtBH_24Aead2022TcpRequestHeader9read_fromINtNtBL_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1052, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3201.i, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.16, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10165.sroa.6.i, i64 6, i1 false)
  store i8 1, ptr %i.ga, align 2, !noalias !29689
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3201.i)
  %i.gu = icmp eq i16 %.sroa.055.0.copyload.i.i, -2
  br i1 %i.gu, label %bb.ca, label %bb.cb

common.ret:                                       ; preds = %bb.ca, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol16TcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit
  %storemerge = phi i8 [ 3, %bb.ca ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol16TcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit ]
  store i8 %storemerge, ptr %i.p, align 8
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol16TcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.cc, %bb.cl, %bb.cm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v122StreamTcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i, %bb.ck, %bb.ce, %bb.d
  %.sroa.078.0 = phi i16 [ 2, %bb.d ], [ %.sroa.087.0.copyload, %bb.ce ], [ 2, %bb.ck ], [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v122StreamTcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i ], [ 2, %bb.cm ], [ 2, %bb.cl ], [ 2, %bb.cc ]
  %.sroa.582.0 = phi ptr [ %i.ab, %bb.d ], [ %.sroa.589.0.copyload, %bb.ce ], [ %i.hq, %bb.ck ], [ %i.hq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v122StreamTcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i ], [ %i.hq, %bb.cm ], [ %i.hq, %bb.cl ], [ %.sroa.13220.0.i111, %bb.cc ]
  store i16 %.sroa.078.0, ptr %0, align 8
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.580.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.580, i64 6, i1 false)
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.582.0, ptr %.sroa.582.0..sroa_idx, align 8
  %.sroa.885.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.885.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.885, i64 24, i1 false)
  br label %common.ret

bb.bz:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @931) #56
  unreachable

bb.ca:                                            ; preds = %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1052)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  store i16 -1, ptr %0, align 8
  br label %common.ret

bb.cb:                                            ; preds = %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit
  %i.gv = phi ptr [ %i.gt, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99 ], [ %i.gb, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit ]
  %.sroa.13220.0.i111 = phi ptr [ %.sroa.13220.0.i.ph, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99 ], [ %.sroa.557.0.copyload.i.i, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit ] ; 4 uses
  %.sroa.0218.0.i110 = phi i16 [ %.sroa.0218.0.i.ph, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99 ], [ %.sroa.055.0.copyload.i.i, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit ] ; 5 uses
  %.sroa.24.0.i109 = phi ptr [ %.sroa.24.0.i.ph, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99 ], [ %.sroa.852.i.sroa.0.0.copyload.i, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit ] ; 3 uses
  %.sroa.28.0.i108 = phi i64 [ %.sroa.28.0.i.ph, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99 ], [ %.sroa.852.i.sroa.4.0.copyload.i, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit ]
  %.sroa.31.0.i107 = phi i64 [ %.sroa.31.0.i.ph, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99 ], [ %.sroa.852.i.sroa.5.0.copyload.i, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit ]
  %.sroa.34.0.i106 = phi i16 [ %.sroa.34.0.i.ph, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread99 ], [ %i.gf, %_RNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtB5_16TcpRequestHeader9read_fromINtNtB7_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1052, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1364, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.16, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1052)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocolNtBH_16TcpRequestHeader9read_fromINtNtBJ_6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEE0ECsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 8 %i.gv) #46
  %i.gw = icmp eq i16 %.sroa.0218.0.i110, -1
  br i1 %i.gw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13220.0.i111) ]
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol16TcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit

bb.cd:                                            ; preds = %bb.cb
  %i.gx = ptrtoint ptr %.sroa.13220.0.i111 to i64 ; 3 uses
  %i.gy = ptrtoint ptr %.sroa.24.0.i109 to i64    ; 2 uses
  %i.gz = inttoptr i64 %.sroa.28.0.i108 to ptr    ; 2 uses
  %i.ha = icmp ne i16 %.sroa.0218.0.i110, 2
  %i.hb = icmp eq i16 %.sroa.34.0.i106, 0
  %or.cond3 = select i1 %i.ha, i1 %i.hb, i1 false
  br i1 %or.cond3, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cn, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i16 %.sroa.0218.0.i110, ptr %i.l, align 8
  %.sroa.9.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.9.0..sroa_idx14, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3, i64 6, i1 false)
  %.sroa.915.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store i64 %i.gx, ptr %.sroa.915.0..sroa_idx16, align 8
  %.sroa.11.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 %i.gy, ptr %.sroa.11.0..sroa_idx18, align 8
  %.sroa.13.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.gz, ptr %.sroa.13.0..sroa_idx20, align 8
  %.sroa.14.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.31.0.i107, ptr %.sroa.14.0..sroa_idx22, align 8
  %.sroa.1424.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i16 %.sroa.34.0.i106, ptr %.sroa.1424.0..sroa_idx25, align 8
  %.sroa.15.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.l, i64 42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.0..sroa_idx27, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1364, i64 6, i1 false)
  %.not.i = icmp eq i16 %.sroa.0218.0.i110, 2     ; 4 uses
  %.sroa.915.0..sroa_idx16.val.a = load i16, ptr %.sroa.915.0..sroa_idx16, align 8
  %.val = load i16, ptr %i.l, align 8
  %.sroa.087.0.copyload = select i1 %.not.i, i16 %.sroa.915.0..sroa_idx16.val.a, i16 %.val
  %.sroa.915.0..sroa_idx16.sroa.gep = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %.sink.idx.i.sroa.sel.sroa.sel = select i1 %.not.i, ptr %.sroa.915.0..sroa_idx16.sroa.gep, ptr %.sroa.9.0..sroa_idx14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.580, ptr noundef nonnull align 2 dereferenceable(6) %.sink.idx.i.sroa.sel.sroa.sel, i64 6, i1 false)
  %.sroa.915.0..sroa_idx16.sroa.gep120 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.915.0..sroa_idx16.sroa.gep120.val.a = load ptr, ptr %.sroa.915.0..sroa_idx16.sroa.gep120, align 8
  %.sroa.915.0..sroa_idx16.val146 = load ptr, ptr %.sroa.915.0..sroa_idx16, align 8
  %.sroa.589.0.copyload = select i1 %.not.i, ptr %.sroa.915.0..sroa_idx16.sroa.gep120.val.a, ptr %.sroa.915.0..sroa_idx16.val146
  %.sroa.915.0..sroa_idx16.sroa.gep123 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sink.idx.i.sroa.sel.sroa.sel125 = select i1 %.not.i, ptr %.sroa.915.0..sroa_idx16.sroa.gep123, ptr %.sroa.11.0..sroa_idx18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.885, ptr noundef nonnull align 8 dereferenceable(24) %.sink.idx.i.sroa.sel.sroa.sel125, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol16TcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit

bb.cf:                                            ; preds = %bb.cd
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !nonnull !80, !align !176, !noundef !80 ; 5 uses
  %i.he = load i64, ptr %i.hd, align 16, !range !97, !noundef !80
  %i.hf = icmp eq i64 %i.he, 3
  br i1 %i.hf, label %bb.cg, label %bb.ch, !prof !89

bb.cg:                                            ; preds = %bb.cf
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !range !97, !noundef !80
  %i.hi = icmp eq i64 %i.hh, 3
  br i1 %i.hi, label %bb.ci, label %_RNvMs2_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioINtB5_12CryptoStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEE28current_data_chunk_remainingCsa7TLgTh0CeG_9ssmanager.exit

bb.ch:                                            ; preds = %bb.cf
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @1203, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1204) #56
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hk = load i64, ptr %i.hj, align 16, !noundef !80
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 120
  %i.hm = load i64, ptr %i.hl, align 8, !noundef !80
  %i.hn = icmp eq i64 %i.hm, %i.hk
  br label %_RNvMs2_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioINtB5_12CryptoStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEE28current_data_chunk_remainingCsa7TLgTh0CeG_9ssmanager.exit

_RNvMs2_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioINtB5_12CryptoStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEE28current_data_chunk_remainingCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.cg, %bb.ci
  %.sroa.3.0.i = phi i1 [ %i.hn, %bb.ci ], [ true, %bb.cg ]
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 208
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 16, !noundef !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.0.0.i, ptr %i.o, align 8
  %i.ho = icmp eq i64 %.sroa.0.0.i, 1
  %or.cond = and i1 %.sroa.3.0.i, %i.ho
  br i1 %or.cond, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_RNvMs2_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioINtB5_12CryptoStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEE28current_data_chunk_remainingCsa7TLgTh0CeG_9ssmanager.exit
  %i.hp = icmp ugt i64 %.sroa.0.0.i, 1
  br i1 %i.hp, label %bb.co, label %bb.cn

bb.ck:                                            ; preds = %_RNvMs2_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioINtB5_12CryptoStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEE28current_data_chunk_remainingCsa7TLgTh0CeG_9ssmanager.exit
  %i.hq = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @932, i64 noundef 48) #53 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  switch i16 %.sroa.0218.0.i110, label %bb.cm [
    i16 2, label %bb.cl
    i16 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol16TcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.hr = and i64 %i.gx, 65535
  %i.hs = icmp eq i64 %i.hr, 0
  %i.ht = icmp eq ptr %.sroa.24.0.i109, null
  %or.cond117 = select i1 %i.hs, i1 true, i1 %i.ht
  br i1 %or.cond117, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol16TcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v122StreamTcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i

bb.cm:                                            ; preds = %bb.ck
  %i.hu = icmp eq ptr %.sroa.13220.0.i111, null
  br i1 %i.hu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol16TcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v122StreamTcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol2v122StreamTcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i: ; preds = %bb.cl, %bb.cm
  %.sink3.i.sroa.phi.sroa.speculated = phi ptr [ %i.gz, %bb.cl ], [ %.sroa.24.0.i109, %bb.cm ]
  %.val.i.i.i.i1.sink.i = phi i64 [ %i.gy, %bb.cl ], [ %i.gx, %bb.cm ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink3.i.sroa.phi.sroa.speculated, i64 noundef %.val.i.i.i.i1.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !29736
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream8protocol16TcpRequestHeaderECsa7TLgTh0CeG_9ssmanager.exit

bb.cn:                                            ; preds = %bb.co, %bb.cp, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ce

bb.co:                                            ; preds = %bb.cj
  %i.hv = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.hw = icmp ult i64 %i.hv, 6
  call void @llvm.assume(i1 %i.hw)
  %i.hx = icmp samesign ugt i64 %i.hv, 1
  br i1 %i.hx, label %bb.cp, label %bb.cn

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.o, ptr %i.n, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.476.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @935, ptr %i.m, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 50, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @935, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 50, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @934, ptr %i.ib, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull @933, ptr noundef nonnull %i.n, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.cn
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCNvNtCs8UFHSMUhzWe_19shadowsocks_service7manager3run0Csa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [120 x i8], align 8               ; 9 uses
  %.sroa.56.i.i.i.i.i = alloca [104 x i8], align 8 ; 4 uses
  %i.x = alloca [116 x i8], align 4               ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.18.i.i.i = alloca [16 x i8], align 8     ; 8 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.0168.i.i.i = alloca [32 x i8], align 8   ; 4 uses
  %.sroa.4155.i.i.i = alloca [32 x i8], align 8   ; 7 uses
  %i.ab = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.9733.i.i.i = alloca [30 x i8], align 2   ; 7 uses
  %.sroa.0138.i.i.i = alloca [32 x i8], align 8   ; 4 uses
  %.sroa.4125.i.i.i = alloca [32 x i8], align 8   ; 7 uses
  %i.ac = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.9710.i.i.i = alloca [30 x i8], align 2   ; 7 uses
  %.sroa.19.sroa.7.i.i.i = alloca [16 x i8], align 8 ; 12 uses
  %.sroa.0108.i.i.i = alloca [32 x i8], align 8   ; 4 uses
  %.sroa.495.i.i.i = alloca [32 x i8], align 8    ; 7 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.9669.i.i.i = alloca [30 x i8], align 2   ; 7 uses
  %.sroa.078.i.i.i = alloca [32 x i8], align 8    ; 4 uses
  %.sroa.465.i.i.i = alloca [32 x i8], align 8    ; 7 uses
  %i.ae = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.9644.i.i.i = alloca [30 x i8], align 2   ; 7 uses
  %.sroa.048.i.i.i = alloca [32 x i8], align 8    ; 4 uses
  %.sroa.435.i.i.i = alloca [32 x i8], align 8    ; 7 uses
  %i.af = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.9619.i.i.i = alloca [30 x i8], align 2   ; 7 uses
  %.sroa.018.i.i.i = alloca [32 x i8], align 8    ; 4 uses
  %.sroa.4.i.i.i = alloca [32 x i8], align 8      ; 7 uses
  %i.ag = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.9594.i.i.i = alloca [30 x i8], align 2   ; 7 uses
  %i.ah = alloca [32 x i8], align 4               ; 14 uses
  %i.ai = alloca [40 x i8], align 8               ; 14 uses
  %.sroa.6570.i.i.i = alloca [24 x i8], align 8   ; 7 uses
  %i.aj = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.5532.i.i.i = alloca [32 x i8], align 8   ; 7 uses
  %i.ak = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.0.sroa.5.i = alloca [184 x i8], align 8  ; 7 uses
  %.sroa.942.i = alloca [16 x i8], align 8        ; 6 uses
  %.sroa.1043.i = alloca [224 x i8], align 8      ; 6 uses
  %i.al = alloca [88 x i8], align 8               ; 9 uses
  %.sroa.825.i = alloca [16 x i8], align 8        ; 6 uses
  %.sroa.921.i = alloca [16 x i8], align 8        ; 7 uses
  %i.am = alloca [96 x i8], align 8               ; 16 uses
  %i.an = alloca [16 x i8], align 8               ; 4 uses
  %i.ao = alloca [16 x i8], align 8               ; 4 uses
  %i.ap = alloca [96 x i8], align 8               ; 16 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.53.i99.i = alloca [30 x i8], align 2     ; 4 uses
  %.sroa.516.i.sroa.4.i = alloca [288 x i8], align 8 ; 7 uses
  %.sroa.5.i.sroa.4.i = alloca [288 x i8], align 8 ; 7 uses
  %i.ar = alloca [312 x i8], align 8              ; 8 uses
  %.sroa.05.i.i = alloca [472 x i8], align 8      ; 9 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.53.i74.i = alloca [30 x i8], align 2     ; 7 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [224 x i8], align 8              ; 8 uses
  %i.aw = alloca [16 x i8], align 8               ; 4 uses
  %i.ax = alloca [224 x i8], align 8              ; 8 uses
  %i.ay = alloca [1 x i8], align 1                ; 3 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.53.i.i.i = alloca [30 x i8], align 2     ; 4 uses
  %.sroa.024.i.i = alloca [344 x i8], align 8     ; 5 uses
  %.sroa.520.i.i = alloca [296 x i8], align 8     ; 7 uses
  %i.bb = alloca [312 x i8], align 8              ; 7 uses
  %i.bc = alloca [216 x i8], align 8              ; 4 uses
  %.sroa.06.sroa.0.sroa.26.i.i = alloca [30 x i8], align 2 ; 7 uses
  %.sroa.06.sroa.9.i.i = alloca [216 x i8], align 8 ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.53.i.i = alloca [30 x i8], align 2       ; 4 uses
  %i.be = alloca [32 x i8], align 8               ; 4 uses
  %.sroa.9.sroa.4.i = alloca [288 x i8], align 8  ; 8 uses
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE10poll_flushCsa7TLgTh0CeG_9ssmanager:bb.a
  %i.gt = getelementptr i8, ptr %i.gb, i64 40
  %.val2.i.i.i16 = load i64, ptr %i.gt, align 8, !noalias !39494, !noundef !80
  %i.gu = call noundef i64 @llvm.uadd.sat.i64(i64 %.val1.i.i.i15, i64 %.val2.i.i.i16)
  %i.gv = getelementptr i8, ptr %i.gb, i64 64
  %.val.i2.i.i = load i64, ptr %i.gv, align 8, !noalias !39494, !noundef !80
  %i.gw = call noundef i64 @llvm.uadd.sat.i64(i64 %i.gu, i64 %.val.i2.i.i)
  br label %_RNvXs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf9remainingCsa7TLgTh0CeG_9ssmanager.exit.i

_RNvXs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf9remainingCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %.sroa.0.0.i.i17 = phi i64 [ %.val1.i.i23, %bb.bg ], [ %i.gh, %bb.bh ], [ %i.gp, %bb.bi ], [ %i.gr, %bb.bj ], [ %i.gw, %bb.bk ] ; 3 uses
  %i.gx = icmp ugt i64 %.sroa.0.0.i.i17, %.sroa.0.026.i402
  br i1 %i.gx, label %bb.bn, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE9pop_frontCsa7TLgTh0CeG_9ssmanager.exit.i

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE9pop_frontCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RNvXs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf9remainingCsa7TLgTh0CeG_9ssmanager.exit.i
  call fastcc void @_RNvXs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf7advanceCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(80) %i.gb, i64 noundef %.sroa.0.0.i.i17) #54, !noalias !39494
  %i.gy = sub nuw i64 %.sroa.0.026.i402, %.sroa.0.0.i.i17 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39495)
  %i.gz = add i64 %.sroa.0.0.i1128.i401, 1        ; 2 uses
  %.not.i.i18 = icmp ult i64 %i.gz, %i.fx
  %i.ha = select i1 %.not.i.i18, i64 0, i64 %i.fx
  %.sroa.0.0.i11.i = sub nuw i64 %i.gz, %i.ha     ; 2 uses
  store i64 %.sroa.0.0.i11.i, ptr %i.ar, align 8, !alias.scope !39496, !noalias !39497
  %i.hb = add i64 %i.fz, -1                       ; 4 uses
  store i64 %i.hb, ptr %i.p, align 8, !alias.scope !39496, !noalias !39497
  %i.hc = icmp ult i64 %i.hb, %i.fx
  call void @llvm.assume(i1 %i.hc)
  %i.hd = getelementptr inbounds nuw [80 x i8], ptr %i.fy, i64 %.sroa.0.0.i1128.i401 ; 7 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.hd, align 8, !noalias !39496 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !39496
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !39496
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !39496 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !39496 ; 2 uses
  %i.he = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %i.he, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE9pop_frontCsa7TLgTh0CeG_9ssmanager.exit.i
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %.sroa.12.0.copyload.i = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !39496
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !39496
  %i.hf = inttoptr i64 %.sroa.7.0.copyload.i to ptr
  switch i64 %.sroa.0.0.copyload.i, label %.sink.split.i.i.i.i [
    i64 0, label %bb.bm
    i64 1, label %bb.bm
    i64 2, label %bb.bm
    i64 3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsa7TLgTh0CeG_9ssmanager.exit.i
  ]

bb.bm:                                            ; preds = %bb.bl, %bb.bl, %bb.bl
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.bm, %bb.bl
  %.sink1.i.i.sroa.phi.sroa.speculated.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.bm ], [ %i.hf, %bb.bl ]
  %.sink.i.i.sroa.phi.sroa.speculated.i = phi ptr [ %.sroa.9.0.copyload.i, %bb.bm ], [ %.sroa.12.0.copyload.i, %bb.bl ]
  %.sink7.i.i.i.sroa.phi.sroa.speculated.i = phi ptr [ %.sroa.6.0.copyload.i, %bb.bm ], [ %.sroa.9.0.copyload.i, %bb.bl ]
  %.sink5.i.i.i.sroa.phi.sroa.speculated.i = phi i64 [ %.sroa.7.0.copyload.i, %bb.bm ], [ %.sroa.11.0.copyload.i, %bb.bl ]
  %i.hg = getelementptr inbounds nuw i8, ptr %.sink1.i.i.sroa.phi.sroa.speculated.i, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !39498, !nonnull !80, !noundef !80
  call void %i.hh(ptr noundef %.sink.i.i.sroa.phi.sroa.speculated.i, ptr noundef %.sink7.i.i.i.sroa.phi.sroa.speculated.i, i64 noundef %.sink5.i.i.i.sroa.phi.sroa.speculated.i) #46, !noalias !39498, !inline_history !39437
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %.sink.split.i.i.i.i, %bb.bl, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE9pop_frontCsa7TLgTh0CeG_9ssmanager.exit.i
  %.not.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i, label %_RNvXs_NtNtCsaI3lGUjttVO_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf7advanceCsa7TLgTh0CeG_9ssmanager.exit, label %bb.be

bb.bn:                                            ; preds = %_RNvXs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf9remainingCsa7TLgTh0CeG_9ssmanager.exit.i
  call fastcc void @_RNvXs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf7advanceCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(80) %i.gb, i64 noundef %.sroa.0.026.i402) #54, !noalias !39494
  br label %_RNvXs_NtNtCsaI3lGUjttVO_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf7advanceCsa7TLgTh0CeG_9ssmanager.exit

bb.bo:                                            ; preds = %bb.bb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %_RNvXs_NtNtCsaI3lGUjttVO_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf7advanceCsa7TLgTh0CeG_9ssmanager.exit

bb.bp:                                            ; preds = %bb.bb
  %i.hi = add i64 %i.ft, %i.fq
  store i64 %i.hi, ptr %i.l, align 8
  br label %_RNvXs_NtNtCsaI3lGUjttVO_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf7advanceCsa7TLgTh0CeG_9ssmanager.exit

_RNvXs_NtNtCsaI3lGUjttVO_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf7advanceCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsa7TLgTh0CeG_9ssmanager.exit.i, %bb.bn, %bb.bd, %bb.bp, %bb.bo
  %i.hj = load i64, ptr %i.j, align 8, !noundef !80 ; 2 uses
  %i.hk = load i64, ptr %i.l, align 8, !noundef !80 ; 2 uses
  %i.hl = sub i64 %i.hj, %i.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !39499)
  call void @llvm.experimental.noalias.scope.decl(metadata !39500)
  %i.hm = load i64, ptr %i.p, align 8, !alias.scope !39500, !noalias !39499, !noundef !80 ; 5 uses
  %.val.i25 = load i64, ptr %i.o, align 8, !alias.scope !39500, !noalias !39499 ; 5 uses
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE4iterCsa7TLgTh0CeG_9ssmanager.exit33, label %bb.bq

bb.bq:                                            ; preds = %_RNvXs_NtNtCsaI3lGUjttVO_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf7advanceCsa7TLgTh0CeG_9ssmanager.exit
  %.val2.i26 = load i64, ptr %i.ar, align 8, !alias.scope !39500, !noalias !39499 ; 2 uses
  %.not.i.i27 = icmp ult i64 %.val2.i26, %.val.i25
  %i.ho = select i1 %.not.i.i27, i64 0, i64 %.val.i25
  %.sroa.04.0.i.i28 = sub nuw i64 %.val2.i26, %i.ho ; 4 uses
  %i.hp = sub i64 %.val.i25, %.sroa.04.0.i.i28    ; 2 uses
  %.not11.i.i29 = icmp ult i64 %i.hp, %i.hm
  br i1 %.not11.i.i29, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.hq = sub nuw i64 %i.hm, %i.hp
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE4iterCsa7TLgTh0CeG_9ssmanager.exit33

bb.bs:                                            ; preds = %bb.bq
  %i.hr = add i64 %.sroa.04.0.i.i28, %i.hm
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE4iterCsa7TLgTh0CeG_9ssmanager.exit33

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE4iterCsa7TLgTh0CeG_9ssmanager.exit33: ; preds = %_RNvXs_NtNtCsaI3lGUjttVO_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf7advanceCsa7TLgTh0CeG_9ssmanager.exit, %bb.br, %bb.bs
  %.sroa.0.0.i30 = phi i64 [ %.sroa.04.0.i.i28, %bb.bs ], [ %.sroa.04.0.i.i28, %bb.br ], [ 0, %_RNvXs_NtNtCsaI3lGUjttVO_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf7advanceCsa7TLgTh0CeG_9ssmanager.exit ]
  %.sroa.5.0.i31 = phi i64 [ %i.hr, %bb.bs ], [ %.val.i25, %bb.br ], [ 0, %_RNvXs_NtNtCsaI3lGUjttVO_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf7advanceCsa7TLgTh0CeG_9ssmanager.exit ]
  %.sroa.11.0.i32 = phi i64 [ 0, %bb.bs ], [ %i.hq, %bb.br ], [ 0, %_RNvXs_NtNtCsaI3lGUjttVO_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf7advanceCsa7TLgTh0CeG_9ssmanager.exit ]
  %i.hs = load ptr, ptr %i.x, align 8, !alias.scope !39500, !noalias !39499, !nonnull !80, !noundef !80 ; 5 uses
  %i.ht = getelementptr inbounds nuw [80 x i8], ptr %i.hs, i64 %.sroa.0.0.i30
  %i.hu = getelementptr inbounds nuw [80 x i8], ptr %i.hs, i64 %.sroa.5.0.i31
  %i.hv = getelementptr inbounds nuw [80 x i8], ptr %i.hs, i64 %.sroa.11.0.i32
  store ptr %i.ht, ptr %i.a, align 8, !alias.scope !39499, !noalias !39500
  store ptr %i.hu, ptr %i.at, align 8, !alias.scope !39499, !noalias !39500
  store ptr %i.hs, ptr %i.au, align 8, !alias.scope !39499, !noalias !39500
  store ptr %i.hv, ptr %i.av, align 8, !alias.scope !39499, !noalias !39500
  %i.hw = call fastcc noundef i64 @_RINvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB6_4IterINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2M_8adapters3map8map_foldRB19_jjNCNvXs_NtNtB1i_6common3bufINtB4u_7BufListB19_ENtNtNtB28_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB2K_5accumjNtB5S_3Sum3sumINtB3M_3MapBY_B4n_EE0E0ECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %i.a) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hx = sub i64 0, %i.hw
  %i.hy = icmp eq i64 %i.hl, %i.hx
  br i1 %i.hy, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE4iterCsa7TLgTh0CeG_9ssmanager.exit33
  %i.hz = call { i64, ptr } @_RNvXs1_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #46 ; 2 uses
  %i.ia = extractvalue { i64, ptr } %i.hz, 0
  %i.ib = extractvalue { i64, ptr } %i.hz, 1
  br label %.loopexit

bb.bu:                                            ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE4iterCsa7TLgTh0CeG_9ssmanager.exit33
  %i.ic = icmp eq ptr %i.fo, null
  br i1 %i.ic, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %bb.bu, %bb.ay, %bb.ba, %bb.a, %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE20poll_flush_flattenedCsa7TLgTh0CeG_9ssmanager.exit, %bb.f, %bb.bt
  %.sroa.8.0 = phi ptr [ %i.al, %bb.f ], [ %i.fo, %bb.ba ], [ %i.ib, %bb.bt ], [ null, %bb.a ], [ %i.bs, %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE20poll_flush_flattenedCsa7TLgTh0CeG_9ssmanager.exit ], [ undef, %bb.ay ], [ inttoptr (i64 98784247811 to ptr), %bb.bu ]
  %.sroa.0.0 = phi i64 [ %i.ak, %bb.f ], [ 0, %bb.ba ], [ %i.ia, %bb.bt ], [ 0, %bb.a ], [ %i.br, %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE20poll_flush_flattenedCsa7TLgTh0CeG_9ssmanager.exit ], [ 1, %bb.ay ], [ 0, %bb.bu ]
  %i.id = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ie = insertvalue { i64, ptr } %i.id, ptr %.sroa.8.0, 1
  ret { i64, ptr } %i.ie
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE17poll_read_from_ioCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) initializes((1313, 1314)) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1313 ; 2 uses
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 4 uses
  %.sroa.01.0 = load i64, ptr %.sroa.01.0.in, align 8, !noundef !80 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !93, !noundef !80
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %.val = load i64, ptr %i.g, align 8
  %.sroa.02.0 = select i1 %i.f, i64 %.sroa.01.0, i64 %.val
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 6 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !80 ; 3 uses
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.02.0, i64 %i.j)
  %i.l = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !80 ; 2 uses
  %i.o = sub i64 %i.n, %i.j
  %i.p = icmp ult i64 %i.o, %i.l
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.q = phi i64 [ %.pre22, %bb.c ], [ %i.j, %bb.a ] ; 2 uses
  %i.r = phi i64 [ %.pre, %bb.c ], [ %i.n, %bb.a ] ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.l, i1 noundef zeroext true) #46 ; 0 uses
  %.pre = load i64, ptr %i.m, align 8
  %.pre22 = load i64, ptr %i.i, align 8
  br label %bb.b

bb.d:                                             ; preds = %bb.g, %bb.b
  %i.u = phi i64 [ %.pre24, %bb.g ], [ %i.r, %bb.b ]
  %i.v = phi i64 [ %.pre23, %bb.g ], [ %i.q, %bb.b ] ; 2 uses
  %i.w = load ptr, ptr %i.h, align 8, !nonnull !80, !noundef !80
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  %i.y = sub i64 %i.u, %i.v                       ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39507
  store ptr %i.x, ptr %i.a, align 8, !noalias !39507
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.aa, align 8, !noalias !39507
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false), !noalias !39507
  %i.ac = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #46, !noalias !39508 ; 2 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0
  %i.ae = extractvalue { i64, ptr } %i.ac, 1      ; 3 uses
  %i.af = trunc nuw i64 %i.ad to i1               ; 2 uses
  %.not.i = icmp ne ptr %i.ae, null
  %or.cond.not.i = select i1 %i.af, i1 true, i1 %.not.i
  br i1 %or.cond.not.i, label %_RNvXs_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB4_7TokioIoNtNtNtNtBa_3net8outbound6stream19OutboundProxyStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io4Read9poll_readCsa7TLgTh0CeG_9ssmanager.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load i64, ptr %i.aa, align 8, !noalias !39507, !noundef !80 ; 2 uses
  %i.ah = load i64, ptr %i.ab, align 8, !noalias !39507, !noundef !80 ; 7 uses
  %.not6.i = icmp ugt i64 %i.ah, %i.ag
  br i1 %.not6.i, label %bb.f, label %.thread, !prof !98

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ah, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #56, !noalias !39508
  unreachable

_RNvXs_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB4_7TokioIoNtNtNtNtBa_3net8outbound6stream19OutboundProxyStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io4Read9poll_readCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39507
  br i1 %i.af, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.ai = tail call noundef zeroext i1 @_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 64, i1 noundef zeroext true) #46 ; 0 uses
  %.pre23 = load i64, ptr %i.i, align 8
  %.pre24 = load i64, ptr %i.m, align 8
  br label %bb.d

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB4_7TokioIoNtNtNtNtBa_3net8outbound6stream19OutboundProxyStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io4Read9poll_readCsa7TLgTh0CeG_9ssmanager.exit
  store i8 1, ptr %i.c, align 1
  br label %bb.w

bb.i:                                             ; preds = %_RNvXs_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rtINtB4_7TokioIoNtNtNtNtBa_3net8outbound6stream19OutboundProxyStreamENtNtNtCsaI3lGUjttVO_5hyper2rt2io4Read9poll_readCsa7TLgTh0CeG_9ssmanager.exit
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %.thread38, label %bb.w

.thread38:                                        ; preds = %bb.i
  %i.aj = load i64, ptr %i.i, align 8, !noundef !80
  br label %bb.l

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39507
  %.not10 = icmp ugt i64 %i.ah, %i.y
  br i1 %.not10, label %bb.k, label %bb.j, !prof !39509

bb.j:                                             ; preds = %.thread
  %i.ak = load i64, ptr %i.m, align 8, !noundef !80
  %i.al = load i64, ptr %i.i, align 8, !noundef !80 ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp ugt i64 %i.ah, %i.am
  br i1 %i.an, label %bb.v, label %bb.l, !prof !39510

bb.k:                                             ; preds = %.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ah, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1293) #56
  unreachable

bb.l:                                             ; preds = %.thread38, %bb.j
  %i.ao = phi i64 [ %i.aj, %.thread38 ], [ %i.al, %bb.j ]
  %.sroa.8.016213740 = phi i64 [ 0, %.thread38 ], [ %i.ah, %bb.j ] ; 4 uses
  %i.ap = add i64 %i.ao, %.sroa.8.016213740
  store i64 %i.ap, ptr %i.i, align 8
  %i.aq = load i8, ptr %i.d, align 8, !range !93, !alias.scope !39511, !noundef !80
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_RNvMs2_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioNtB5_12ReadStrategy6record.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i64, ptr %i.g, align 8, !alias.scope !39511, !noundef !80
  %i.at = load i64, ptr %.sroa.01.0.in, align 8, !alias.scope !39511, !noundef !80 ; 4 uses
  %.not.i11 = icmp ult i64 %.sroa.8.016213740, %i.at
  br i1 %.not.i11, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.av = add nuw nsw i64 %i.au, 2
  %i.aw = and i64 %i.av, 63
  %i.ax = lshr i64 -1, %i.aw
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  %i.az = icmp ult i64 %.sroa.8.016213740, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1257 ; 4 uses
  br i1 %i.az, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bb = shl nuw i64 %i.at, 1
  %i.bc = icmp slt i64 %i.at, 0
  br i1 %i.bc, label %bb.t, label %bb.u, !prof !92

bb.p:                                             ; preds = %bb.n
  store i8 0, ptr %i.ba, align 1, !alias.scope !39511
  br label %_RNvMs2_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioNtB5_12ReadStrategy6record.exit

bb.q:                                             ; preds = %bb.n
  %i.bd = load i8, ptr %i.ba, align 1, !range !93, !alias.scope !39511, !noundef !80
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.ba, align 1, !alias.scope !39511
  br label %_RNvMs2_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioNtB5_12ReadStrategy6record.exit

bb.s:                                             ; preds = %bb.q
  %i.bf = call i64 @llvm.umax.i64(i64 %i.ay, i64 8192)
  store i64 %i.bf, ptr %.sroa.01.0.in, align 8, !alias.scope !39511
  store i8 0, ptr %i.ba, align 1, !alias.scope !39511
  br label %_RNvMs2_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioNtB5_12ReadStrategy6record.exit

bb.t:                                             ; preds = %bb.o
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %.sroa.0.0.i = phi i64 [ -1, %bb.t ], [ %i.bb, %bb.o ]
  %i.bg = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.as)
  store i64 %i.bg, ptr %.sroa.01.0.in, align 8, !alias.scope !39511
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1257
  store i8 0, ptr %i.bh, align 1, !alias.scope !39511
  br label %_RNvMs2_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioNtB5_12ReadStrategy6record.exit

_RNvMs2_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioNtB5_12ReadStrategy6record.exit: ; preds = %bb.l, %bb.p, %bb.r, %bb.s, %bb.u
  %i.bi = inttoptr i64 %.sroa.8.016213740 to ptr
  br label %bb.w

bb.v:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ah, ptr %i.b, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.am, ptr %i.bj, align 8
  call void @_RNvCsknai52m1gBp_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #55
  unreachable

bb.w:                                             ; preds = %_RNvMs2_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioNtB5_12ReadStrategy6record.exit, %bb.i, %bb.h
  %.sroa.4.1 = phi ptr [ undef, %bb.h ], [ %i.bi, %_RNvMs2_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioNtB5_12ReadStrategy6record.exit ], [ %i.ae, %bb.i ]
  %.sroa.0.1 = phi i64 [ 2, %bb.h ], [ 0, %_RNvMs2_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioNtB5_12ReadStrategy6record.exit ], [ 1, %bb.i ]
  %i.bk = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.bl = insertvalue { i64, ptr } %i.bk, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.bl
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB5_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB1O_8response8ResponseNtNtNtB10_4body8incoming8IncomingEENtNtB7_9unbounded9SemaphoreE4recvCsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(248) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 6 uses
  %i.b = alloca [248 x i8], align 8               ; 6 uses
  %i.c = alloca [3 x i8], align 4                 ; 8 uses
  %i.d = alloca [2 x i8], align 1                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !95, !noundef !80
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsa7TLgTh0CeG_9ssmanager.exit.thread
    i8 1, label %bb.b
  ], !prof !175

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsa7TLgTh0CeG_9ssmanager) #46
  store i8 0, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.i = load i8, ptr %i.h, align 4, !range !93, !noundef !80 ; 2 uses
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 69 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1               ; 4 uses
  br i1 %i.j, label %bb.d, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsa7TLgTh0CeG_9ssmanager.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.d
  tail call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i24 0, ptr %i.c, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.m) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 -2, ptr %i.n, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.o = add i8 %i.l, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsa7TLgTh0CeG_9ssmanager.exit

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.e, %bb.c
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.e ], [ %i.l, %bb.c ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.k, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i24 0, ptr %i.c, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.p) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsa7TLgTh0CeG_9ssmanager.exit.thread

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsa7TLgTh0CeG_9ssmanager.exit.thread: ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsa7TLgTh0CeG_9ssmanager.exit, %bb.a
  %.sroa.03.06.i17.off8 = phi i8 [ %i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsa7TLgTh0CeG_9ssmanager.exit ], [ 0, %bb.a ]
  %.sroa.03.06.i17.off16 = phi i8 [ %i.l, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsa7TLgTh0CeG_9ssmanager.exit ], [ 0, %bb.a ]
  store i8 %.sroa.03.06.i17.off8, ptr %i.d, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %.sroa.03.06.i17.off16, ptr %i.q, align 1
  %i.r = load ptr, ptr %1, align 8, !nonnull !80, !noundef !80 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 416 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39515)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39516
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 128 ; 2 uses
  call fastcc void @_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4listINtB5_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB1O_8response8ResponseNtNtNtB10_4body8incoming8IncomingEEE3popCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(address) dereferenceable(248) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 %i.t) #46, !noalias !39516
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.v = load i64, ptr %i.u, align 8, !range !118, !noalias !39516, !noundef !80
  switch i64 %i.v, label %bb.o [
    i64 -2, label %bb.f
    i64 -1, label %bb.n
  ]

bb.f:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsa7TLgTh0CeG_9ssmanager.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39516
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %i.x = load ptr, ptr %2, align 8, !noalias !39516, !nonnull !80, !align !86, !noundef !80
  call void @_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker15register_by_ref(ptr noundef nonnull align 8 %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x) #46, !noalias !39516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39516
  call fastcc void @_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4listINtB5_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB1O_8response8ResponseNtNtNtB10_4body8incoming8IncomingEEE3popCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(address) dereferenceable(248) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 %i.t) #46, !noalias !39516
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.z = load i64, ptr %i.y, align 8, !range !118, !noalias !39516, !noundef !80
  switch i64 %i.z, label %bb.l [
    i64 -2, label %bb.g
    i64 -1, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39516
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 440
  %i.ab = load i8, ptr %i.aa, align 8, !range !93, !noalias !39516, !noundef !80
end_hunk_3
