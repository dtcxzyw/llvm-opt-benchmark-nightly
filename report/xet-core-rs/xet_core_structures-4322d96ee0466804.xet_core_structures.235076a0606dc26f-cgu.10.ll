Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.10?download=true
inline.NumInlined: 445
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs31YAwBA1AlL_19xet_core_structures:.preheader.preheader
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
  br i1 %exitcond.not.i, label %_RNvMNtNtCs1OzvMeFnvWA_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.a

_RNvMNtNtCs1OzvMeFnvWA_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a
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
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !45
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.db, align 4, !noalias !46
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.dc, align 4, !noalias !45
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.dd, align 4, !noalias !46
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.de, align 4, !noalias !45
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.df, align 4, !noalias !46
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.dg, align 4, !noalias !45
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.dh, align 4, !noalias !46
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.di, align 4, !noalias !45
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.dj, align 4, !noalias !46
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.dk, align 4, !noalias !45
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.dl, align 4, !noalias !46
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dm, align 4, !noalias !45
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dn, align 4, !noalias !46
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.do, align 4, !noalias !45
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.dp, align 4, !noalias !46
  %i.dq = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %i.dr = bitcast <4 x i64> %i.dq to <8 x i32>
  %i.ds = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %i.ds, ptr %i.c, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb0_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, 4294967296) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %.val168 = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 18)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val157 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %.val157, i64 34)
  %.not174 = icmp eq i64 %2, 0
  br i1 %.not174, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %.split
  store i64 2, ptr %0, align 8
  br label %bb.ak

.lr.ph:                                           ; preds = %.split, %.backedge
  %.val156 = phi i64 [ %i.ej, %.backedge ], [ %.val157, %.split ] ; 13 uses
  %.val166 = phi i64 [ %.sink, %.backedge ], [ %.val168, %.split ] ; 10 uses
  %.sroa.0.0173 = phi i64 [ %.sroa.0.0.be, %.backedge ], [ 0, %.split ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0173
  %i.f = load i8, ptr %i.e, align 1, !noundef !6  ; 5 uses
  %i.g = add nuw nsw i64 %.sroa.0.0173, 1         ; 6 uses
  %i.h = and i8 %i.f, 15                          ; 3 uses
  %i.i = icmp eq i8 %i.h, 15
  br i1 %i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.j = icmp ult i8 %i.f, -16
  %i.k = icmp ult i64 %.sroa.0.0173, %i.b
  %or.cond = and i1 %i.k, %i.j
  %i.l = icmp ult i64 %.val166, %i.d
  %or.cond390 = select i1 %or.cond, i1 %i.l, i1 false
  br i1 %or.cond390, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %i.m = lshr i8 %i.f, 4                          ; 3 uses
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = lshr i8 %i.f, 4
  %i.p = zext nneg i8 %i.o to i64                 ; 6 uses
  %i.q = add nuw nsw i64 %.sroa.0.0173, 17        ; 2 uses
  %.not = icmp ugt i64 %i.q, %2
  br i1 %.not, label %bb.al, label %bb.am, !prof !9

bb.d:                                             ; preds = %bb.b
  %i.r = zext nneg i8 %i.m to i64
  %i.s = icmp eq i8 %i.m, 15
  br i1 %i.s, label %.preheader175.preheader, label %bb.g

.preheader175.preheader:                          ; preds = %bb.d
  %exitcond.not.i112 = icmp eq i64 %i.g, %2
  br i1 %exitcond.not.i112, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph115

bb.e:                                             ; preds = %bb.b, %bb.m
  %.sroa.0.1 = phi i64 [ %i.g, %bb.b ], [ %i.ae, %bb.m ] ; 3 uses
  %.not145 = icmp ult i64 %.sroa.0.1, %2
  br i1 %.not145, label %bb.n, label %bb.o

.preheader175:                                    ; preds = %.lr.ph115
  %exitcond.not.i = icmp eq i64 %i.v, %2
  br i1 %exitcond.not.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph115

.lr.ph115:                                        ; preds = %.preheader175.preheader, %.preheader175
  %.sroa.0.0.i114 = phi i64 [ %i.x, %.preheader175 ], [ 0, %.preheader175.preheader ]
  %.sroa.0.2113 = phi i64 [ %i.v, %.preheader175 ], [ %i.g, %.preheader175.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.2113
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !99, !noalias !100, !noundef !6 ; 2 uses
  %i.v = add nuw i64 %.sroa.0.2113, 1             ; 3 uses
  %i.w = zext i8 %i.u to i64
  %i.x = add i64 %.sroa.0.0.i114, %i.w            ; 2 uses
  %i.y = icmp eq i8 %i.u, -1
  br i1 %i.y, label %.preheader175, label %bb.f

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit: ; preds = %.preheader175.preheader, %.preheader175
  store i64 2, ptr %0, align 8
  br label %bb.ak

bb.f:                                             ; preds = %.lr.ph115
  %i.z = add i64 %i.x, 15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.sroa.0.4 = phi i64 [ %i.v, %bb.f ], [ %i.g, %bb.d ] ; 5 uses
  %.sroa.032.0 = phi i64 [ %i.z, %bb.f ], [ %i.r, %bb.d ] ; 6 uses
  %i.aa = sub i64 %2, %.sroa.0.4
  %i.ab = icmp ugt i64 %.sroa.032.0, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = sub i64 %.val156, %.val166
  %i.ad = icmp ugt i64 %.sroa.032.0, %i.ac
  br i1 %i.ad, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  store i64 1, ptr %0, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.sroa.032.0, %.sroa.0.4        ; 4 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.0.4
  %.not144 = icmp ugt i64 %i.ae, %2
  %or.cond150 = or i1 %i.af, %.not144
  br i1 %or.cond150, label %bb.l, label %bb.m, !prof !9

bb.k:                                             ; preds = %bb.h
  %i.ag = add i64 %.val166, %.sroa.032.0
  store i64 0, ptr %0, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val156, ptr %.sroa.555.0..sroa_idx, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.4, i64 noundef %i.ae, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.4
  tail call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %.sroa.032.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.032.0) #20
  br label %bb.e

bb.n:                                             ; preds = %bb.e
  %i.ai = add nuw nsw i64 %.sroa.0.1, 2           ; 4 uses
  %.not.i169 = icmp ugt i64 %i.ai, %2
  br i1 %.not.i169, label %bb.p, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1
  %.sroa.030.0.copyload.i = load i16, ptr %i.aj, align 1, !alias.scope !101, !noalias !102 ; 4 uses
  %i.ak = icmp eq i16 %.sroa.030.0.copyload.i, 0
  br i1 %i.ak, label %bb.p, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit

bb.o:                                             ; preds = %bb.e
  %.val164 = load i64, ptr %i.a, align 8, !noundef !6
  %i.al = sub i64 %.val164, %.val168
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ak

bb.p:                                             ; preds = %bb.n, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i
  %.sink.i.ph = phi i64 [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i ], [ 2, %bb.n ]
  store i64 %.sink.i.ph, ptr %0, align 8
  br label %bb.ak

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i
  %i.an = zext i16 %.sroa.030.0.copyload.i to i64 ; 12 uses
  %narrow147 = add nuw nsw i8 %i.h, 4             ; 2 uses
  %i.ao = zext nneg i8 %narrow147 to i64
  %i.ap = icmp eq i8 %narrow147, 19
  br i1 %i.ap, label %.preheader.preheader, label %bb.r

.preheader.preheader:                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit
  %exitcond.not.i173116 = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not.i173116, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, label %.lr.ph119

.preheader:                                       ; preds = %.lr.ph119
  %exitcond.not.i173 = icmp eq i64 %i.as, %2
  br i1 %exitcond.not.i173, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i172118 = phi i64 [ %i.au, %.preheader ], [ 0, %.preheader.preheader ]
  %.sroa.0.6117 = phi i64 [ %i.as, %.preheader ], [ %i.ai, %.preheader.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.6117
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !103, !noalias !104, !noundef !6 ; 2 uses
  %i.as = add nuw i64 %.sroa.0.6117, 1            ; 3 uses
  %i.at = zext i8 %i.ar to i64
  %i.au = add i64 %.sroa.0.0.i172118, %i.at       ; 2 uses
  %i.av = icmp eq i8 %i.ar, -1
  br i1 %i.av, label %.preheader, label %bb.q

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175: ; preds = %.preheader.preheader, %.preheader
  store i64 2, ptr %0, align 8
  br label %bb.ak

bb.q:                                             ; preds = %.lr.ph119
  %i.aw = add i64 %i.au, 19
  br label %bb.r

bb.r:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit, %bb.q
  %.sroa.0.8 = phi i64 [ %i.as, %bb.q ], [ %i.ai, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 9 uses
  %.sroa.066.0 = phi i64 [ %i.aw, %bb.q ], [ %i.ao, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 15 uses
  %.val163 = load i64, ptr %i.a, align 8, !noundef !6 ; 24 uses
  %i.ax = add i64 %.val163, %.sroa.066.0          ; 15 uses
  %.val154 = load i64, ptr %i.c, align 8, !noundef !6 ; 22 uses
  %i.ay = icmp ugt i64 %i.ax, %.val154
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 0, ptr %0, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val154, ptr %.sroa.584.0..sroa_idx, align 8
  br label %bb.ak

bb.t:                                             ; preds = %bb.r
  %i.az = icmp ugt i64 %.sroa.066.0, %i.an
  br i1 %i.az, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = sub nuw i64 %.val163, %i.an             ; 6 uses
  %i.bb = icmp ult i64 %.val163, %i.an
  br i1 %i.bb, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.ab

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.bc = sub nuw i64 %.val163, %i.an             ; 3 uses
  %i.bd = icmp ult i64 %.val163, %i.an
  br i1 %i.bd, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = icmp eq i16 %.sroa.030.0.copyload.i, 1
  br i1 %i.be, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.val1.i = load ptr, ptr %3, align 8, !alias.scope !105, !noalias !106 ; 3 uses
  %i.bf = icmp ult i64 %i.bc, %.val154
  br i1 %i.bf, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #19, !noalias !107
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i: ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !108
  %i.bg = icmp ult i64 %i.ax, %.val163
  br i1 %i.bg, label %bb.z, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, !prof !9

bb.z:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val163, i64 noundef %i.ax, i64 noundef %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #19, !noalias !109
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i: ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %i.bc
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !107, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %.val163
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, i8 %i.bi, i64 range(i64 1, 0) %.sroa.066.0, i1 false), !noalias !109
  br label %.backedge

bb.aa:                                            ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110), !noalias !108
  %i.bk = icmp ult i64 %.val163, %i.ax
  br i1 %i.bk, label %iter.check, label %.backedge

iter.check:                                       ; preds = %bb.aa
  %i.bl = load ptr, ptr %3, align 8, !alias.scope !111, !noalias !106, !nonnull !6 ; 14 uses
  %min.iters.check = icmp ult i64 %.sroa.066.0, 8
  %diff.check = icmp ult i16 %.sroa.030.0.copyload.i, 32
  %or.cond139 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond139, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check120 = icmp ult i64 %.sroa.066.0, 32
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bm = and i64 %.sroa.066.0, 24
  %n.vec = and i64 %.sroa.066.0, -32              ; 4 uses
  %i.bn = add i64 %.val163, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = add nuw i64 %.val163, %index            ; 2 uses
  %i.bp = sub nuw i64 %i.bo, %i.an
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <16 x i8>, ptr %i.bq, align 1, !noalias !112
  %wide.load121 = load <16 x i8>, ptr %i.br, align 1, !noalias !112
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <16 x i8> %wide.load, ptr %i.bs, align 1, !noalias !112
  store <16 x i8> %wide.load121, ptr %i.bt, align 1, !noalias !112
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.066.0, %n.vec
  br i1 %cmp.n, label %.backedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !113

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %.sroa.066.0, -8            ; 3 uses
  %i.bv = add i64 %.val163, %n.vec122
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.bw = add nuw i64 %.val163, %index123         ; 2 uses
  %i.bx = sub nuw i64 %i.bw, %i.an
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bx
  %wide.load124 = load <8 x i8>, ptr %i.by, align 1, !noalias !112
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bw
  store <8 x i8> %wide.load124, ptr %i.bz, align 1, !noalias !112
  %index.next125 = add nuw i64 %index123, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next125, %n.vec122
  br i1 %i.ca, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %.sroa.066.0, %n.vec122
  br i1 %cmp.n126, label %.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.010.i.i.ph = phi i64 [ %.val163, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ] ; 4 uses
  %i.cb = add i64 %.sroa.066.0, %.val163
  %i.cc = sub i64 %i.cb, %.sroa.01.010.i.i.ph
  %i.cd = add i64 %.sroa.066.0, -1
  %i.ce = add i64 %i.cd, %.val163
  %i.cf = sub i64 %i.ce, %.sroa.01.010.i.i.ph
  %xtraiter = and i64 %i.cc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.010.i.i.prol = phi i64 [ %i.cg, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.010.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cg = add nuw i64 %.sroa.01.010.i.i.prol, 1   ; 2 uses
  %i.ch = sub nuw i64 %.sroa.01.010.i.i.prol, %i.an
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !112, !noundef !6
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sroa.01.010.i.i.prol
  store i8 %i.cj, ptr %i.ck, align 1, !noalias !112
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !70

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.010.i.i.unr = phi i64 [ %.sroa.01.010.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cg, %vec.epilog.scalar.ph.prol ]
  %i.cl = icmp ult i64 %i.cf, 3
  br i1 %i.cl, label %.backedge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.010.i.i = phi i64 [ %i.db, %vec.epilog.scalar.ph ], [ %.sroa.01.010.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cm = add nuw i64 %.sroa.01.010.i.i, 1        ; 2 uses
  %i.cn = sub nuw i64 %.sroa.01.010.i.i, %i.an
  %i.co = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noalias !112, !noundef !6
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sroa.01.010.i.i
  store i8 %i.cp, ptr %i.cq, align 1, !noalias !112
  %i.cr = add nuw i64 %.sroa.01.010.i.i, 2        ; 2 uses
  %i.cs = sub nuw i64 %i.cm, %i.an
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !112, !noundef !6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cm
  store i8 %i.cu, ptr %i.cv, align 1, !noalias !112
  %i.cw = add nuw i64 %.sroa.01.010.i.i, 3        ; 2 uses
  %i.cx = sub nuw i64 %i.cr, %i.an
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !112, !noundef !6
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cr
  store i8 %i.cz, ptr %i.da, align 1, !noalias !112
  %i.db = add nuw i64 %.sroa.01.010.i.i, 4        ; 2 uses
  %i.dc = sub nuw i64 %i.cw, %i.an
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !112, !noundef !6
  %i.df = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cw
  store i8 %i.de, ptr %i.df, align 1, !noalias !112
  %exitcond15.not.i.i.3 = icmp eq i64 %i.db, %i.ax
  br i1 %exitcond15.not.i.i.3, label %.backedge, label %vec.epilog.scalar.ph, !llvm.loop !71

bb.ab:                                            ; preds = %bb.u
  %i.dg = icmp ult i64 %.sroa.066.0, 33
  br i1 %i.dg, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = icmp ugt i64 %.sroa.066.0, 64
  %i.di = add i64 %.val163, 64
  %.not.i = icmp ugt i64 %i.di, %.val154
  %or.cond78 = or i1 %i.dh, %.not.i
  %.pre261 = load ptr, ptr %3, align 8, !noalias !108 ; 3 uses
  br i1 %or.cond78, label %bb.ae, label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.dj = add i64 %.val163, 32
  %.not4.i = icmp ugt i64 %i.dj, %.val154
  %.pre = load ptr, ptr %3, align 8, !noalias !108 ; 3 uses
  br i1 %.not4.i, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dk = phi ptr [ %.pre, %bb.ad ], [ %.pre261, %bb.ac ] ; 2 uses
  %i.dl = add i64 %i.ba, %.sroa.066.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114), !noalias !108
  %i.dm = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.ba, i64 noundef %i.dl, i64 noundef range(i64 0, -9223372036854775808) %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !115 ; 2 uses
  %i.dn = extractvalue { i64, i64 } %i.dm, 0      ; 2 uses
  %i.do = extractvalue { i64, i64 } %i.dm, 1
  %i.dp = sub i64 %i.do, %i.dn                    ; 2 uses
  %i.dq = sub i64 %.val154, %i.dp
  %.not.i.i178 = icmp ugt i64 %.val163, %i.dq
  br i1 %.not.i.i178, label %bb.af, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, !prof !7

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !115
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit: ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.val163
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr nonnull align 1 %i.dr, i64 %i.dp, i1 false), !alias.scope !114, !noalias !116
  br label %.backedge

bb.ag:                                            ; preds = %bb.ac
  %i.dt = add i64 %i.ba, 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117), !noalias !108
  %i.du = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.ba, i64 noundef %i.dt, i64 noundef range(i64 0, -9223372036854775808) %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !118 ; 2 uses
  %i.dv = extractvalue { i64, i64 } %i.du, 0      ; 2 uses
  %i.dw = extractvalue { i64, i64 } %i.du, 1
  %i.dx = sub i64 %i.dw, %i.dv                    ; 2 uses
  %i.dy = sub i64 %.val154, %i.dx
  %.not.i.i179 = icmp ugt i64 %.val163, %i.dy
  br i1 %.not.i.i179, label %bb.ah, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180, !prof !7

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !118
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180: ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre261, i64 %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre261, i64 %.val163
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull align 1 %i.dz, i64 %i.dx, i1 false), !alias.scope !117, !noalias !119
  br label %.backedge

bb.ai:                                            ; preds = %bb.ad
  %i.eb = add i64 %i.ba, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120), !noalias !108
  %i.ec = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.ba, i64 noundef %i.eb, i64 noundef range(i64 0, -9223372036854775808) %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !121 ; 2 uses
  %i.ed = extractvalue { i64, i64 } %i.ec, 0      ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ec, 1
  %i.ef = sub i64 %i.ee, %i.ed                    ; 2 uses
  %i.eg = sub i64 %.val154, %i.ef
  %.not.i.i181 = icmp ugt i64 %.val163, %i.eg
  br i1 %.not.i.i181, label %bb.aj, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182, !prof !7

bb.aj:                                            ; preds = %bb.ai
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !121
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182: ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %.pre, i64 %.val163
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr nonnull align 1 %i.eh, i64 %i.ef, i1 false), !alias.scope !120, !noalias !122
  br label %.backedge

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.v, %bb.u
  store i64 4, ptr %0, align 8
  br label %bb.ak

.backedge:                                        ; preds = %bb.at, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.aa, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182
  %.sink = phi i64 [ %i.ax, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %i.ax, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180 ], [ %i.ax, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182 ], [ %i.ax, %middle.block ], [ %i.gl, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195 ], [ %i.ax, %bb.aa ], [ %i.ax, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %i.ax, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ax, %vec.epilog.middle.block ], [ %i.ax, %vec.epilog.scalar.ph ], [ %i.fa, %bb.at ] ; 2 uses
  %i.ej = phi i64 [ %.val154, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %.val154, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180 ], [ %.val154, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182 ], [ %.val154, %middle.block ], [ %.val156, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195 ], [ %.val154, %bb.aa ], [ %.val154, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %.val154, %vec.epilog.scalar.ph.prol.loopexit ], [ %.val154, %vec.epilog.middle.block ], [ %.val154, %vec.epilog.scalar.ph ], [ %.val156, %bb.at ]
  %.sroa.0.0.be = phi i64 [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180 ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182 ], [ %.sroa.0.8, %middle.block ], [ %i.ew, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195 ], [ %.sroa.0.8, %bb.aa ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %.sroa.0.8, %vec.epilog.scalar.ph.prol.loopexit ], [ %.sroa.0.8, %vec.epilog.middle.block ], [ %.sroa.0.8, %vec.epilog.scalar.ph ], [ %i.ew, %bb.at ] ; 2 uses
  store i64 %.sink, ptr %i.a, align 8
  %i.ek = icmp ult i64 %.sroa.0.0.be, %2
  br i1 %i.ek, label %.lr.ph, label %._crit_edge

bb.ak:                                            ; preds = %._crit_edge, %bb.p, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, %bb.s, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, %bb.i, %bb.k, %bb.aq, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit191, %bb.o
  ret void

bb.al:                                            ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %i.q, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19
  unreachable

bb.am:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.el = add nuw i64 %.val166, 16                ; 2 uses
  %.not4.i184 = icmp ugt i64 %i.el, %.val156
  br i1 %.not4.i184, label %bb.an, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i188, !prof !9

bb.an:                                            ; preds = %bb.am
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val166, i64 noundef %i.el, i64 noundef %.val156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #19, !noalias !124
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i188: ; preds = %bb.am
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 3 uses
  %i.en = load ptr, ptr %3, align 8, !alias.scope !123, !noalias !125, !nonnull !6, !noundef !6 ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %.val166 ; 2 uses
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.eo, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !123
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.ep, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !123
  %i.er = add i64 %.val166, %i.p                  ; 11 uses
  store i64 %i.er, ptr %i.a, align 8, !alias.scope !123, !noalias !125
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.p
  %.sroa.030.0.copyload.i189 = load i16, ptr %i.es, align 1, !alias.scope !126, !noalias !127 ; 3 uses
  %i.et = icmp eq i16 %.sroa.030.0.copyload.i189, 0
  br i1 %i.et, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit191, label %bb.ao

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit191: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i188
  store i64 3, ptr %0, align 8
  br label %bb.ak

bb.ao:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i188
  %i.eu = zext i16 %.sroa.030.0.copyload.i189 to i64 ; 7 uses
  %i.ev = add nuw nsw i64 %.sroa.0.0173, 3
  %i.ew = add nuw nsw i64 %i.ev, %i.p             ; 2 uses
  %narrow = add nuw nsw i8 %i.h, 4
  %i.ex = zext nneg i8 %narrow to i64             ; 3 uses
  %i.ey = sub nuw i64 %i.er, %i.eu                ; 2 uses
  %i.ez = icmp ult i64 %i.er, %i.eu
  br i1 %i.ez, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not142 = icmp samesign ult i64 %i.eu, %i.ex
  br i1 %.not142, label %.lr.ph.i, label %bb.av

bb.aq:                                            ; preds = %bb.ao
  store i64 4, ptr %0, align 8
  br label %bb.ak

.lr.ph.i:                                         ; preds = %bb.ap
  %i.fa = add nuw i64 %i.er, %i.ex                ; 2 uses
  %umax.i192 = tail call i64 @llvm.umax.i64(i64 %i.er, i64 %.val156) ; 3 uses
  %i.fb = add i64 %.val166, %i.p
  %i.fc = sub i64 %i.fb, %i.eu
  %i.fd = tail call i64 @llvm.umax.i64(i64 %.val156, i64 %i.fc)
  %i.fe = add i64 %i.fd, %i.eu
  %i.ff = add i64 %.val166, %i.p
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = add i64 %.val166, %i.p
  %i.fi = sub i64 %umax.i192, %i.fh
  %i.fj = and i8 %i.f, 15
  %narrow138 = add nuw nsw i8 %i.fj, 3
  %i.fk = zext nneg i8 %narrow138 to i64
  %i.fl = tail call i64 @llvm.umin.i64(i64 %i.fg, i64 %i.fi)
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fl, i64 %i.fk) ; 2 uses
  %min.iters.check130 = icmp samesign ult i64 %i.fm, 16
  %diff.check129 = icmp ult i16 %.sroa.030.0.copyload.i189, 16
  %or.cond140 = or i1 %min.iters.check130, %diff.check129
  br i1 %or.cond140, label %scalar.ph.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.i
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %i.fo = and i64 %i.fn, 15                       ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = select i1 %i.fp, i64 16, i64 %i.fo
  %n.vec132 = sub nsw i64 %i.fn, %i.fq            ; 2 uses
  %i.fr = add i64 %i.er, %n.vec132
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.fs = add nuw i64 %i.er, %index134            ; 2 uses
  %i.ft = sub nuw i64 %i.fs, %i.eu
  %i.fu = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ft
  %wide.load135 = load <16 x i8>, ptr %i.fu, align 1, !noalias !128
  %i.fv = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.fs
  store <16 x i8> %wide.load135, ptr %i.fv, align 1, !noalias !128
  %index.next136 = add nuw i64 %index134, 16      ; 2 uses
  %i.fw = icmp eq i64 %index.next136, %n.vec132
  br i1 %i.fw, label %scalar.ph.preheader, label %vector.body133, !llvm.loop !93

scalar.ph.preheader:                              ; preds = %vector.body133, %.lr.ph.i
  %.sroa.01.010.i.ph = phi i64 [ %i.er, %.lr.ph.i ], [ %i.fr, %vector.body133 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.at
  %.sroa.01.010.i = phi i64 [ %i.fx, %bb.at ], [ %.sroa.01.010.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fx = add nuw i64 %.sroa.01.010.i, 1          ; 2 uses
  %i.fy = sub nuw i64 %.sroa.01.010.i, %i.eu      ; 3 uses
  %i.fz = icmp ult i64 %i.fy, %.val156
  br i1 %i.fz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %scalar.ph
  %exitcond.not.i193 = icmp eq i64 %.sroa.01.010.i, %umax.i192
  br i1 %exitcond.not.i193, label %bb.au, label %bb.at

bb.as:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef %.val156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #19, !noalias !128
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ga = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.fy
  %i.gb = load i8, ptr %i.ga, align 1, !noalias !128, !noundef !6
  %i.gc = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sroa.01.010.i
  store i8 %i.gb, ptr %i.gc, align 1, !noalias !128
  %exitcond15.not.i = icmp eq i64 %i.fx, %i.fa
  br i1 %exitcond15.not.i, label %.backedge, label %scalar.ph, !llvm.loop !94

bb.au:                                            ; preds = %bb.ar
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i192, i64 noundef %.val156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #19, !noalias !128
  unreachable

bb.av:                                            ; preds = %bb.ap
  %i.gd = add nuw i64 %i.ey, 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.ge = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.ey, i64 noundef %i.gd, i64 noundef range(i64 0, -9223372036854775808) %.val156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !130 ; 2 uses
  %i.gf = extractvalue { i64, i64 } %i.ge, 0      ; 2 uses
  %i.gg = extractvalue { i64, i64 } %i.ge, 1
  %i.gh = sub i64 %i.gg, %i.gf                    ; 2 uses
  %i.gi = sub i64 %.val156, %i.gh
  %.not.i.i194 = icmp ugt i64 %i.er, %i.gi
  br i1 %.not.i.i194, label %bb.aw, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195, !prof !7

bb.aw:                                            ; preds = %bb.av
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !130
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195: ; preds = %bb.av
  %i.gj = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.gf
  %i.gk = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.er
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gk, ptr nonnull align 1 %i.gj, i64 %i.gh, i1 false), !alias.scope !129, !noalias !131
  %i.gl = add nuw i64 %i.er, %i.ex
  br label %.backedge
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb1_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, 4294967296) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %.val226 = load i64, ptr %i.a, align 8, !noundef !6
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 18)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %.val213 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %.val213, i64 51)
  %.not475 = icmp eq i64 %2, 0
  br i1 %.not475, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %.split
  store i64 2, ptr %0, align 8
  br label %bb.au

.lr.ph:                                           ; preds = %.split, %.backedge
  %.sroa.0.0474 = phi i64 [ %.sroa.0.0.be, %.backedge ], [ 0, %.split ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0474
  %i.f = load i8, ptr %i.e, align 1, !noundef !6  ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.0474, 1         ; 6 uses
  %i.h = and i8 %i.f, 15                          ; 3 uses
  %i.i = icmp eq i8 %i.h, 15
  br i1 %i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.j = icmp ult i8 %i.f, -16
  %i.k = icmp ult i64 %.sroa.0.0474, %i.b
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph, %bb.a
  %i.l = lshr i8 %i.f, 4                          ; 3 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %.val225 = load i64, ptr %i.a, align 8, !noundef !6 ; 5 uses
  %i.n = icmp ult i64 %.val225, %i.d
  br i1 %i.n, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i8 %i.f, 4
  %i.p = zext nneg i8 %i.o to i64                 ; 3 uses
  %i.q = add nuw nsw i64 %.sroa.0.0474, 17        ; 2 uses
  %.not = icmp ugt i64 %i.q, %2
  br i1 %.not, label %bb.av, label %bb.aw, !prof !9

bb.e:                                             ; preds = %bb.b
  %i.r = zext nneg i8 %i.l to i64
  %i.s = icmp eq i8 %i.l, 15
  br i1 %i.s, label %.preheader476.preheader, label %bb.h

.preheader476.preheader:                          ; preds = %bb.e
  %exitcond.not.i830 = icmp eq i64 %i.g, %2
  br i1 %exitcond.not.i830, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph833

bb.f:                                             ; preds = %bb.b, %bb.n
  %.sroa.0.1 = phi i64 [ %i.g, %bb.b ], [ %i.ae, %bb.n ] ; 3 uses
  %.not200 = icmp ult i64 %.sroa.0.1, %2
  br i1 %.not200, label %bb.o, label %bb.p

.preheader476:                                    ; preds = %.lr.ph833
  %exitcond.not.i = icmp eq i64 %i.v, %2
  br i1 %exitcond.not.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph833

.lr.ph833:                                        ; preds = %.preheader476.preheader, %.preheader476
  %.sroa.0.0.i832 = phi i64 [ %i.x, %.preheader476 ], [ 0, %.preheader476.preheader ]
  %.sroa.0.5831 = phi i64 [ %i.v, %.preheader476 ], [ %i.g, %.preheader476.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.5831
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !186, !noalias !187, !noundef !6 ; 2 uses
  %i.v = add nuw i64 %.sroa.0.5831, 1             ; 3 uses
  %i.w = zext i8 %i.u to i64
  %i.x = add i64 %.sroa.0.0.i832, %i.w            ; 2 uses
  %i.y = icmp eq i8 %i.u, -1
  br i1 %i.y, label %.preheader476, label %bb.g

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit: ; preds = %.preheader476.preheader, %.preheader476
  store i64 2, ptr %0, align 8
  br label %bb.au

bb.g:                                             ; preds = %.lr.ph833
  %i.z = add i64 %i.x, 15
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.0.2 = phi i64 [ %i.v, %bb.g ], [ %i.g, %bb.e ] ; 5 uses
  %.sroa.051.0 = phi i64 [ %i.z, %bb.g ], [ %i.r, %bb.e ] ; 6 uses
  %i.aa = sub i64 %2, %.sroa.0.2
  %i.ab = icmp ugt i64 %.sroa.051.0, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val212 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.val224 = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.ac = sub i64 %.val212, %.val224
  %i.ad = icmp ugt i64 %.sroa.051.0, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  store i64 1, ptr %0, align 8
  br label %bb.au

bb.k:                                             ; preds = %bb.i
  %i.ae = add i64 %.sroa.051.0, %.sroa.0.2        ; 4 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.0.2
  %.not199 = icmp ugt i64 %i.ae, %2
  %or.cond206 = or i1 %i.af, %.not199
  br i1 %or.cond206, label %bb.m, label %bb.n, !prof !9

bb.l:                                             ; preds = %bb.i
  %i.ag = add i64 %.val224, %.sroa.051.0
  store i64 0, ptr %0, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val212, ptr %.sroa.574.0..sroa_idx, align 8
  br label %bb.au

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.2, i64 noundef %i.ae, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.2
  tail call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %.sroa.051.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.051.0) #20
  br label %bb.f

bb.o:                                             ; preds = %bb.f
  %i.ai = add nuw nsw i64 %.sroa.0.1, 2           ; 4 uses
  %.not.i227 = icmp ugt i64 %i.ai, %2
  br i1 %.not.i227, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1
  %.sroa.030.0.copyload.i = load i16, ptr %i.aj, align 1, !alias.scope !188, !noalias !189 ; 4 uses
  %i.ak = icmp eq i16 %.sroa.030.0.copyload.i, 0
  br i1 %i.ak, label %bb.q, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit

bb.p:                                             ; preds = %bb.f
  %.val222 = load i64, ptr %i.a, align 8, !noundef !6
  %i.al = sub i64 %.val222, %.val226
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.au

bb.q:                                             ; preds = %bb.o, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i
  %.sink.i.ph = phi i64 [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i ], [ 2, %bb.o ]
  store i64 %.sink.i.ph, ptr %0, align 8
  br label %bb.au

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i
  %i.an = zext i16 %.sroa.030.0.copyload.i to i64 ; 11 uses
  %narrow202 = add nuw nsw i8 %i.h, 4             ; 2 uses
  %i.ao = zext nneg i8 %narrow202 to i64
  %i.ap = icmp eq i8 %narrow202, 19
  br i1 %i.ap, label %.preheader.preheader, label %bb.s

.preheader.preheader:                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit
  %exitcond.not.i231834 = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not.i231834, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233, label %.lr.ph837

.preheader:                                       ; preds = %.lr.ph837
  %exitcond.not.i231 = icmp eq i64 %i.as, %2
  br i1 %exitcond.not.i231, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233, label %.lr.ph837

.lr.ph837:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i230836 = phi i64 [ %i.au, %.preheader ], [ 0, %.preheader.preheader ]
  %.sroa.0.8835 = phi i64 [ %i.as, %.preheader ], [ %i.ai, %.preheader.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.8835
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !190, !noalias !191, !noundef !6 ; 2 uses
  %i.as = add nuw i64 %.sroa.0.8835, 1            ; 3 uses
  %i.at = zext i8 %i.ar to i64
  %i.au = add i64 %.sroa.0.0.i230836, %i.at       ; 2 uses
  %i.av = icmp eq i8 %i.ar, -1
  br i1 %i.av, label %.preheader, label %bb.r

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233: ; preds = %.preheader.preheader, %.preheader
  store i64 2, ptr %0, align 8
  br label %bb.au

bb.r:                                             ; preds = %.lr.ph837
  %i.aw = add i64 %i.au, 19
  br label %bb.s

bb.s:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit, %bb.r
  %.sroa.0.3 = phi i64 [ %i.as, %bb.r ], [ %i.ai, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 7 uses
  %.sroa.085.0 = phi i64 [ %i.aw, %bb.r ], [ %i.ao, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 5 uses
  %.val221 = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.ax = add i64 %.val221, %.sroa.085.0          ; 2 uses
  %.val210 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, %.val210
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %0, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %.sroa.4105.0..sroa_idx, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val210, ptr %.sroa.5106.0..sroa_idx, align 8
  br label %bb.au

bb.u:                                             ; preds = %bb.s
  %i.az = icmp ult i64 %.val221, %i.an
  br i1 %i.az, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ba = sub nuw nsw i64 %i.an, %.val221         ; 4 uses
  %i.bb = icmp samesign ult i64 %5, %i.ba
  br i1 %i.bb, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = sub nuw nsw i64 %5, %i.ba
  %..i.i = tail call noundef range(i64 0, -65536) i64 @llvm.umin.i64(i64 range(i64 0, -65536) %i.ba, i64 %.sroa.085.0) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %i.bc
  tail call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef range(i64 0, -9223372036854775808) %..i.i, i64 noundef range(i64 0, -9223372036854775808) %..i.i) #20, !noalias !192
  %.not355 = icmp ugt i64 %.sroa.085.0, %i.ba
  br i1 %.not355, label %bb.at, label %.backedge

bb.x:                                             ; preds = %bb.u, %bb.at
  %.sroa.085.1 = phi i64 [ %i.dy, %bb.at ], [ %.sroa.085.0, %bb.u ] ; 11 uses
  %i.be = icmp ugt i64 %.sroa.085.1, %i.an
  br i1 %i.be, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val216 = load i64, ptr %i.a, align 8, !noundef !6 ; 13 uses
  %i.bf = sub nuw i64 %.val216, %i.an             ; 6 uses
  %i.bg = icmp ult i64 %.val216, %i.an
  br i1 %i.bg, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.aj

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %.val.i236 = load i64, ptr %i.a, align 8, !alias.scope !193, !noalias !194, !noundef !6 ; 15 uses
  %i.bh = sub nuw i64 %.val.i236, %i.an           ; 3 uses
  %i.bi = icmp ult i64 %.val.i236, %i.an
  br i1 %i.bi, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = icmp eq i16 %.sroa.030.0.copyload.i, 1
  br i1 %i.bj, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %.val1.i = load ptr, ptr %3, align 8, !alias.scope !193, !noalias !194 ; 3 uses
  %.val2.i = load i64, ptr %i.c, align 8, !alias.scope !193, !noalias !194, !noundef !6 ; 4 uses
  %i.bk = icmp ult i64 %i.bh, %.val2.i
  br i1 %i.bk, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #19, !noalias !195
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i: ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !196
  %i.bl = add i64 %.val.i236, %.sroa.085.1        ; 4 uses
  %i.bm = icmp ult i64 %i.bl, %.val.i236
  %.not.i.i = icmp ugt i64 %i.bl, %.val2.i
  %or.cond.i.i = or i1 %i.bm, %.not.i.i
  br i1 %or.cond.i.i, label %bb.ad, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, !prof !9

bb.ad:                                            ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val.i236, i64 noundef %i.bl, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #19, !noalias !197
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i: ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %i.bh
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !195, !noundef !6
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %.val.i236
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bp, i8 %i.bo, i64 range(i64 1, 0) %.sroa.085.1, i1 false), !noalias !197
  br label %.backedge.sink.split

bb.ae:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198), !noalias !196
  %i.bq = add i64 %.val.i236, %.sroa.085.1        ; 4 uses
  %i.br = icmp ult i64 %.val.i236, %i.bq
  br i1 %i.br, label %.lr.ph.i.i, label %.backedge.sink.split

.lr.ph.i.i:                                       ; preds = %bb.ae
  %i.bs = load i64, ptr %i.c, align 8, !alias.scope !199, !noalias !194, !noundef !6 ; 5 uses
  %i.bt = load ptr, ptr %3, align 8, !alias.scope !199, !noalias !194, !nonnull !6 ; 4 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.val.i236, i64 %i.bs) ; 3 uses
  %i.bu = sub i64 %.val.i236, %i.an
  %i.bv = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bu)
  %i.bw = add i64 %i.bv, %i.an
  %i.bx = sub i64 %i.bw, %.val.i236
  %i.by = sub i64 %umax.i.i, %.val.i236
  %i.bz = add i64 %.sroa.085.1, -1
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.by)
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.bz)
  %i.cc = add i64 %i.cb, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.cc, 17
  %diff.check = icmp ult i16 %.sroa.030.0.copyload.i, 16
  %or.cond850 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond850, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %i.cd = and i64 %i.cc, 15                       ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 16, i64 %i.cd
  %n.vec = sub i64 %i.cc, %i.cf                   ; 2 uses
  %i.cg = add i64 %.val.i236, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = add nuw i64 %.val.i236, %index          ; 2 uses
  %i.ci = sub nuw i64 %i.ch, %i.an
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ci
  %wide.load = load <16 x i8>, ptr %i.cj, align 1, !noalias !200
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ch
  store <16 x i8> %wide.load, ptr %i.ck, align 1, !noalias !200
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %scalar.ph.preheader, label %vector.body, !llvm.loop !155

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i.i
  %.sroa.01.010.i.i.ph = phi i64 [ %.val.i236, %.lr.ph.i.i ], [ %i.cg, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ah
  %.sroa.01.010.i.i = phi i64 [ %i.cm, %bb.ah ], [ %.sroa.01.010.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cm = add nuw i64 %.sroa.01.010.i.i, 1        ; 2 uses
  %i.cn = sub nuw i64 %.sroa.01.010.i.i, %i.an    ; 3 uses
  %i.co = icmp ult i64 %i.cn, %i.bs
  br i1 %i.co, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %scalar.ph
  %exitcond.not.i.i = icmp eq i64 %.sroa.01.010.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #19, !noalias !200
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cn
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !200, !noundef !6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.01.010.i.i
  store i8 %i.cq, ptr %i.cr, align 1, !noalias !200
  %exitcond15.not.i.i = icmp eq i64 %i.cm, %i.bq
  br i1 %exitcond15.not.i.i, label %.backedge.sink.split, label %scalar.ph, !llvm.loop !156

bb.ai:                                            ; preds = %bb.af
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #19, !noalias !200
  unreachable

bb.aj:                                            ; preds = %bb.y
  %i.cs = icmp ult i64 %.sroa.085.1, 33
  %.val = load i64, ptr %i.c, align 8             ; 8 uses
  br i1 %i.cs, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ct = icmp ult i64 %.sroa.085.1, 65
  br i1 %i.ct, label %bb.ao, label %._crit_edge583

._crit_edge583:                                   ; preds = %bb.ak
  %.pre = load ptr, ptr %3, align 8, !alias.scope !201, !noalias !196
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.cu = add i64 %.val216, 32
  %.not4.i = icmp ugt i64 %i.cu, %.val
  %.pre585 = load ptr, ptr %3, align 8, !noalias !196 ; 3 uses
  br i1 %.not4.i, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %._crit_edge583, %bb.ao, %bb.al
  %i.cv = phi ptr [ %.pre, %._crit_edge583 ], [ %.pre584, %bb.ao ], [ %.pre585, %bb.al ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.cw = add i64 %i.bf, %.sroa.085.1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202), !noalias !196
  %i.cx = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.bf, i64 noundef %i.cw, i64 noundef range(i64 0, -9223372036854775808) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !203 ; 2 uses
  %i.cy = extractvalue { i64, i64 } %i.cx, 0      ; 2 uses
  %i.cz = extractvalue { i64, i64 } %i.cx, 1
  %i.da = sub i64 %i.cz, %i.cy                    ; 2 uses
  %i.db = sub i64 %.val, %i.da
  %.not.i.i239 = icmp ugt i64 %.val216, %i.db
  br i1 %.not.i.i239, label %bb.an, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, !prof !7

bb.an:                                            ; preds = %bb.am
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !203
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit: ; preds = %bb.am
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cy
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.val216
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.dc, i64 %i.da, i1 false), !alias.scope !202, !noalias !204
  %i.de = add i64 %.val216, %.sroa.085.1
  br label %.backedge.sink.split

bb.ao:                                            ; preds = %bb.ak
  %i.df = add i64 %.val216, 64
  %.not.i = icmp ugt i64 %i.df, %.val
  %.pre584 = load ptr, ptr %3, align 8, !noalias !196 ; 3 uses
  br i1 %.not.i, label %bb.am, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dg = add i64 %i.bf, 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205), !noalias !196
  %i.dh = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.bf, i64 noundef %i.dg, i64 noundef range(i64 0, -9223372036854775808) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !206 ; 2 uses
  %i.di = extractvalue { i64, i64 } %i.dh, 0      ; 2 uses
  %i.dj = extractvalue { i64, i64 } %i.dh, 1
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  %i.dl = sub i64 %.val, %i.dk
  %.not.i.i240 = icmp ugt i64 %.val216, %i.dl
  br i1 %.not.i.i240, label %bb.aq, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit241, !prof !7

bb.aq:                                            ; preds = %bb.ap
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !206
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit241: ; preds = %bb.ap
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre584, i64 %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre584, i64 %.val216
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull align 1 %i.dm, i64 %i.dk, i1 false), !alias.scope !205, !noalias !207
  %i.do = add i64 %.val216, %.sroa.085.1
  br label %.backedge.sink.split

bb.ar:                                            ; preds = %bb.al
  %i.dp = add i64 %i.bf, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208), !noalias !196
  %i.dq = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.bf, i64 noundef %i.dp, i64 noundef range(i64 0, -9223372036854775808) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !209 ; 2 uses
  %i.dr = extractvalue { i64, i64 } %i.dq, 0      ; 2 uses
  %i.ds = extractvalue { i64, i64 } %i.dq, 1
  %i.dt = sub i64 %i.ds, %i.dr                    ; 2 uses
  %i.du = sub i64 %.val, %i.dt
  %.not.i.i242 = icmp ugt i64 %.val216, %i.du
  br i1 %.not.i.i242, label %bb.as, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243, !prof !7

bb.as:                                            ; preds = %bb.ar
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !209
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243: ; preds = %bb.ar
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre585, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre585, i64 %.val216
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr nonnull align 1 %i.dv, i64 %i.dt, i1 false), !alias.scope !208, !noalias !210
  %i.dx = add i64 %.val216, %.sroa.085.1
  br label %.backedge.sink.split

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.v
  store i64 4, ptr %0, align 8
  br label %bb.au

bb.at:                                            ; preds = %bb.w
  %i.dy = sub nuw i64 %.sroa.085.0, %..i.i
  br label %bb.x

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.z, %bb.y
  store i64 4, ptr %0, align 8
  br label %bb.au

.backedge.sink.split:                             ; preds = %bb.bi, %bb.ah, %bb.ae, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, %bb.bf, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit241, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit261
  %.sink = phi i64 [ %i.ew, %bb.bf ], [ %i.gi, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit261 ], [ %i.de, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %i.do, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit241 ], [ %i.dx, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243 ], [ %i.bq, %bb.ah ], [ %i.bl, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %i.bq, %bb.ae ], [ %i.ew, %bb.bi ]
  %.sroa.0.0.be.ph = phi i64 [ %i.em, %bb.bf ], [ %i.em, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit261 ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit241 ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243 ], [ %.sroa.0.3, %bb.ah ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %.sroa.0.3, %bb.ae ], [ %i.em, %bb.bi ]
  store i64 %.sink, ptr %i.a, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.w, %bb.ba
  %.sroa.0.0.be = phi i64 [ %.sroa.0.3, %bb.w ], [ %i.em, %bb.ba ], [ %.sroa.0.0.be.ph, %.backedge.sink.split ] ; 2 uses
  %i.dz = icmp ult i64 %.sroa.0.0.be, %2
  br i1 %i.dz, label %.lr.ph, label %._crit_edge

bb.au:                                            ; preds = %._crit_edge, %bb.q, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, %bb.t, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, %bb.j, %bb.l, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit257, %bb.be, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit252, %bb.p
  ret void

bb.av:                                            ; preds = %bb.d
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %i.q, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19
  unreachable

bb.aw:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.ea = load i64, ptr %i.c, align 8, !alias.scope !211, !noalias !212, !noundef !6 ; 2 uses
  %i.eb = add nuw i64 %.val225, 16                ; 2 uses
  %.not4.i245 = icmp ugt i64 %i.eb, %i.ea
  br i1 %.not4.i245, label %bb.ax, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i249, !prof !9

bb.ax:                                            ; preds = %bb.aw
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val225, i64 noundef %i.eb, i64 noundef %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #19, !noalias !213
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i249: ; preds = %bb.aw
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 3 uses
  %i.ed = load ptr, ptr %3, align 8, !alias.scope !211, !noalias !212, !nonnull !6, !noundef !6
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.val225 ; 2 uses
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.ee, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ec, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !211
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.ef, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eg, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !211
  %i.eh = add nuw i64 %.val225, %i.p              ; 4 uses
  store i64 %i.eh, ptr %i.a, align 8, !alias.scope !211, !noalias !212
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.p
  %.sroa.030.0.copyload.i250 = load i16, ptr %i.ei, align 1, !alias.scope !214, !noalias !215 ; 3 uses
  %i.ej = icmp eq i16 %.sroa.030.0.copyload.i250, 0
  br i1 %i.ej, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit252, label %bb.ay

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit252: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i249
  store i64 3, ptr %0, align 8
  br label %bb.au

bb.ay:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i249
  %i.ek = zext i16 %.sroa.030.0.copyload.i250 to i64 ; 9 uses
  %i.el = add nuw nsw i64 %.sroa.0.0474, 3
  %i.em = add nuw nsw i64 %i.el, %i.p             ; 4 uses
  %narrow = add nuw nsw i8 %i.h, 4
  %i.en = zext nneg i8 %narrow to i64             ; 4 uses
  %i.eo = icmp ult i64 %i.eh, %i.ek
  br i1 %i.eo, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.ep = sub nuw nsw i64 %i.ek, %i.eh            ; 4 uses
  %i.eq = icmp samesign ult i64 %5, %i.ep
  br i1 %i.eq, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit257, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.er = sub nuw nsw i64 %5, %i.ep
  %..i.i254 = tail call noundef range(i64 0, -65536) i64 @llvm.umin.i64(i64 range(i64 0, -65536) %i.ep, i64 %i.en) ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 %i.er
  tail call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.es, i64 noundef range(i64 0, -9223372036854775808) %..i.i254, i64 noundef range(i64 0, -9223372036854775808) %..i.i254) #20, !noalias !216
  %.not354 = icmp samesign ult i64 %i.ep, %i.en
  br i1 %.not354, label %bb.bc, label %.backedge

bb.bb:                                            ; preds = %bb.ay, %bb.bc
  %.val217 = phi i64 [ %.val217.pre, %bb.bc ], [ %i.eh, %bb.ay ] ; 14 uses
  %.sroa.032.0 = phi i64 [ %i.ev, %bb.bc ], [ %i.en, %bb.ay ]
  %.sroa.032.0.fr = freeze i64 %.sroa.032.0       ; 4 uses
  %i.et = sub nuw i64 %.val217, %i.ek             ; 2 uses
  %i.eu = icmp ult i64 %.val217, %i.ek
  br i1 %i.eu, label %bb.be, label %bb.bd

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit257: ; preds = %bb.az
  store i64 4, ptr %0, align 8
  br label %bb.au

bb.bc:                                            ; preds = %bb.ba
  %i.ev = sub nuw nsw i64 %i.en, %..i.i254
  %.val217.pre = load i64, ptr %i.a, align 8
  br label %bb.bb

bb.bd:                                            ; preds = %bb.bb
  %.not197 = icmp samesign ugt i64 %.sroa.032.0.fr, %i.ek
  br i1 %.not197, label %bb.bf, label %bb.bk

bb.be:                                            ; preds = %bb.bb
  store i64 4, ptr %0, align 8
  br label %bb.au

bb.bf:                                            ; preds = %bb.bd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.ew = add i64 %.val217, %.sroa.032.0.fr       ; 4 uses
  %i.ex = icmp ult i64 %.val217, %i.ew
  br i1 %i.ex, label %.lr.ph.i, label %.backedge.sink.split

.lr.ph.i:                                         ; preds = %bb.bf
  %i.ey = load i64, ptr %i.c, align 8, !alias.scope !217, !noundef !6 ; 5 uses
  %i.ez = load ptr, ptr %3, align 8, !alias.scope !217, !nonnull !6 ; 4 uses
  %umax.i258 = tail call i64 @llvm.umax.i64(i64 %.val217, i64 %i.ey) ; 3 uses
  %i.fa = add i64 %.sroa.032.0.fr, -1
  %i.fb = sub i64 %.val217, %i.ek
  %i.fc = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.fb)
  %i.fd = add i64 %i.fc, %i.ek
  %i.fe = sub i64 %i.fd, %.val217
  %i.ff = sub i64 %umax.i258, %.val217
  %i.fg = tail call i64 @llvm.umin.i64(i64 %i.fe, i64 %i.ff)
  %i.fh = tail call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.fg)
  %i.fi = add i64 %i.fh, 1                        ; 3 uses
  %min.iters.check841 = icmp ult i64 %i.fi, 17
  %diff.check839 = icmp ult i16 %.sroa.030.0.copyload.i250, 16
  %or.cond851 = or i1 %min.iters.check841, %diff.check839
  br i1 %or.cond851, label %scalar.ph840.preheader, label %vector.ph842

vector.ph842:                                     ; preds = %.lr.ph.i
  %i.fj = and i64 %i.fi, 15                       ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  %i.fl = select i1 %i.fk, i64 16, i64 %i.fj
  %n.vec843 = sub i64 %i.fi, %i.fl                ; 2 uses
  %i.fm = add i64 %.val217, %n.vec843
  br label %vector.body844

vector.body844:                                   ; preds = %vector.body844, %vector.ph842
  %index845 = phi i64 [ 0, %vector.ph842 ], [ %index.next847, %vector.body844 ] ; 2 uses
  %i.fn = add nuw i64 %.val217, %index845         ; 2 uses
  %i.fo = sub nuw i64 %i.fn, %i.ek
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fo
  %wide.load846 = load <16 x i8>, ptr %i.fp, align 1, !noalias !217
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fn
  store <16 x i8> %wide.load846, ptr %i.fq, align 1, !noalias !217
  %index.next847 = add nuw i64 %index845, 16      ; 2 uses
  %i.fr = icmp eq i64 %index.next847, %n.vec843
  br i1 %i.fr, label %scalar.ph840.preheader, label %vector.body844, !llvm.loop !180

scalar.ph840.preheader:                           ; preds = %vector.body844, %.lr.ph.i
  %.sroa.01.010.i.ph = phi i64 [ %.val217, %.lr.ph.i ], [ %i.fm, %vector.body844 ]
  br label %scalar.ph840

scalar.ph840:                                     ; preds = %scalar.ph840.preheader, %bb.bi
  %.sroa.01.010.i = phi i64 [ %i.fs, %bb.bi ], [ %.sroa.01.010.i.ph, %scalar.ph840.preheader ] ; 4 uses
  %i.fs = add nuw i64 %.sroa.01.010.i, 1          ; 2 uses
  %i.ft = sub nuw i64 %.sroa.01.010.i, %i.ek      ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.ey
  br i1 %i.fu, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %scalar.ph840
  %exitcond.not.i259 = icmp eq i64 %.sroa.01.010.i, %umax.i258
  br i1 %exitcond.not.i259, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %scalar.ph840
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ft, i64 noundef %i.ey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #19, !noalias !217
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !217, !noundef !6
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.01.010.i
  store i8 %i.fw, ptr %i.fx, align 1, !noalias !217
  %exitcond15.not.i = icmp eq i64 %i.fs, %i.ew
  br i1 %exitcond15.not.i, label %.backedge.sink.split, label %scalar.ph840, !llvm.loop !181

bb.bj:                                            ; preds = %bb.bg
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i258, i64 noundef %i.ey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #19, !noalias !217
  unreachable

bb.bk:                                            ; preds = %bb.bd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.fy = load ptr, ptr %3, align 8, !alias.scope !218, !nonnull !6, !noundef !6 ; 2 uses
  %i.fz = load i64, ptr %i.c, align 8, !alias.scope !218, !noundef !6 ; 2 uses
  %i.ga = add i64 %i.et, 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.gb = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.et, i64 noundef %i.ga, i64 noundef range(i64 0, -9223372036854775808) %i.fz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !220 ; 2 uses
  %i.gc = extractvalue { i64, i64 } %i.gb, 0      ; 2 uses
  %i.gd = extractvalue { i64, i64 } %i.gb, 1
  %i.ge = sub i64 %i.gd, %i.gc                    ; 2 uses
  %i.gf = sub i64 %i.fz, %i.ge
  %.not.i.i260 = icmp ugt i64 %.val217, %i.gf
  br i1 %.not.i.i260, label %bb.bl, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit261, !prof !7

bb.bl:                                            ; preds = %bb.bk
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !220
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit261: ; preds = %bb.bk
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gc
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.val217
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gh, ptr nonnull align 1 %i.gg, i64 %i.ge, i1 false), !alias.scope !219, !noalias !218
  %i.gi = add i64 %.val217, %.sroa.032.0.fr
  br label %.backedge.sink.split
}

; Function Attrs: noinline nonlazybind uwtable
define { i64, i64 } @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress17compress_internalNtNtB4_9hashtable11HashTable4KKb0_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef range(i64 0, -9223372036854775808) %6, i64 noundef %7) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %6, 0
  br i1 %i.c, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %.val37 = load i64, ptr %i.e, align 8, !noundef !6 ; 4 uses
  %i.f = sub i64 %.val, %.val37
  %i.g = sub nuw nsw i64 %1, %2                   ; 2 uses
  %i.h = mul i64 %i.g, 110
  %i.i = udiv i64 %i.h, 100
  %i.j = add nuw nsw i64 %i.i, 20
  %i.k = icmp ult i64 %i.f, %i.j
  br i1 %i.k, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp samesign ult i64 %i.g, 13
  br i1 %i.l, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i64 %1, -12                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = or i64 %7, %2
  %or.cond = icmp eq i64 %i.n, 0
  %.val41.pre = load ptr, ptr %4, align 8         ; 3 uses
  br i1 %or.cond, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress20handle_last_literalsNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2)
  %.val35 = load i64, ptr %i.e, align 8, !noundef !6
  %i.o = sub i64 %.val35, %.val37
  br label %bb.ab

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.g
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 1, !alias.scope !262
  %i.p = mul i64 %.sroa.01.0.copyload.i.i, -3523014627271114752
  %i.q = lshr i64 %i.p, 52
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val41.pre, i64 %i.q
  store i32 0, ptr %i.r, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit
  %i.s = phi i64 [ %2, %bb.g ], [ 1, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit ] ; 2 uses
  %i.t = icmp ugt i64 %i.s, %i.m
  br i1 %i.t, label %.split._crit_edge, label %.lr.ph.preheader, !prof !14

.lr.ph.preheader:                                 ; preds = %bb.i, %.split
  %.sroa.022.0507 = phi i64 [ %i.bo, %.split ], [ %2, %bb.i ] ; 7 uses
  %i.u = phi i64 [ %i.bo, %.split ], [ %i.s, %bb.i ] ; 2 uses
  %i.v = phi i64 [ %i.dd, %.split ], [ %.val37, %bb.i ] ; 4 uses
  %i.w = phi i64 [ %i.cj, %.split ], [ %.val, %bb.i ] ; 6 uses
  %i.x = add i64 %i.u, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %i.y = phi i64 [ %i.at, %.backedge ], [ %i.x, %.lr.ph.preheader ] ; 3 uses
  %i.z = phi i64 [ %i.as, %.backedge ], [ 33, %.lr.ph.preheader ] ; 2 uses
  %.promoted = phi i64 [ %i.y, %.backedge ], [ %i.u, %.lr.ph.preheader ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %.not.i.i42 = icmp ugt i64 %.promoted, -9
  br i1 %.not.i.i42, label %bb.j, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit44, !prof !9

bb.j:                                             ; preds = %.lr.ph
  %8 = add nuw nsw i64 %.promoted, 8
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.promoted, i64 noundef %8, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19, !noalias !265
  unreachable

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit44: ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.promoted
  %.sroa.01.0.copyload.i.i43 = load i64, ptr %i.aa, align 1, !alias.scope !265 ; 2 uses
  %i.ab = mul i64 %.sroa.01.0.copyload.i.i43, -3523014627271114752
  %i.ac = lshr i64 %i.ab, 52
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val41.pre, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !6
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  %i.ag = add i64 %.promoted, %7                  ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.ad, align 4
  %i.ai = sub i64 %i.ag, %i.af                    ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 65536
  %i.ak = icmp ule i64 %7, %i.af
  %or.cond2 = and i1 %i.ak, %i.aj
  %i.al = trunc i64 %.sroa.01.0.copyload.i.i43 to i32
  br i1 %or.cond2, label %bb.k, label %.backedge

.split._crit_edge:                                ; preds = %.split, %.backedge, %bb.i
  %.sroa.022.0446 = phi i64 [ %.sroa.022.0507, %.backedge ], [ %2, %bb.i ], [ %i.bo, %.split ]
  call fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress20handle_last_literalsNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.sroa.022.0446)
  %.val34 = load i64, ptr %i.e, align 8, !noundef !6
  %i.am = sub i64 %.val34, %.val37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.k:                                             ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit44
  %i.an = sub nuw nsw i64 %i.af, %7               ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.ao = add nuw nsw i64 %i.an, 4                ; 3 uses
  %.not.i45 = icmp samesign ugt i64 %i.ao, %1
  br i1 %.not.i45, label %bb.l, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit, !prof !9

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.an, i64 noundef %i.ao, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #19, !noalias !266
  unreachable

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit: ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %.sroa.02.0.copyload.i = load i32, ptr %i.ap, align 1, !alias.scope !266
  %i.aq = icmp eq i32 %.sroa.02.0.copyload.i, %i.al
  br i1 %i.aq, label %bb.m, label %.backedge

.backedge:                                        ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit44
  %i.ar = lshr i64 %i.z, 5
  %i.as = add i64 %i.z, 1
  %i.at = add i64 %i.ar, %i.y
  %i.au = icmp ugt i64 %i.y, %i.m
  br i1 %i.au, label %.split._crit_edge, label %.lr.ph, !prof !15

bb.m:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit
  %i.av = trunc nuw i64 %i.ai to i16
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.aw = icmp ne i64 %i.an, 0
  %i.ax = icmp ugt i64 %.promoted, %.sroa.022.0507
  %or.cond11.i = and i1 %i.ax, %i.aw
  br i1 %or.cond11.i, label %.lr.ph.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit

.lr.ph.i:                                         ; preds = %bb.m, %bb.p
  %i.ay = phi i64 [ %i.az, %bb.p ], [ %.promoted, %bb.m ] ; 2 uses
  %.sroa.0.063 = phi i64 [ %i.bb, %bb.p ], [ %i.an, %bb.m ] ; 2 uses
  %i.az = add i64 %i.ay, -1                       ; 6 uses
  %i.ba = icmp ult i64 %i.az, %1
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.bb = add nsw i64 %.sroa.0.063, -1            ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !267, !noalias !269, !noundef !6
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !268, !noalias !270, !noundef !6
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %bb.p, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit

bb.o:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.az, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #19, !noalias !271
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bh = icmp ne i64 %i.bb, 0
  %i.bi = icmp ugt i64 %i.az, %.sroa.022.0507
  %or.cond.i51 = and i1 %i.bh, %i.bi
  br i1 %or.cond.i51, label %.lr.ph.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit: ; preds = %bb.p, %bb.n
  %i.bj = phi i64 [ %i.ay, %bb.n ], [ %i.az, %bb.p ]
  %.sroa.0.1.ph = phi i64 [ %.sroa.0.063, %bb.n ], [ %i.bb, %bb.p ]
  %.pre = add nuw nsw i64 %.sroa.0.1.ph, 4
  br label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit: ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit, %bb.m
  %.pre-phi = phi i64 [ %.pre, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit ], [ %i.ao, %bb.m ]
  %i.bk = phi i64 [ %i.bj, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit ], [ %.promoted, %bb.m ] ; 5 uses
  %i.bl = sub i64 %i.bk, %.sroa.022.0507          ; 6 uses
  %i.bm = add i64 %i.bk, 4
  store i64 %i.bm, ptr %i.b, align 8
  %i.bn = call fastcc noundef i64 @_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress16count_same_bytes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.pre-phi) #20 ; 3 uses
  %i.bo = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %i.bp = add i64 %i.bo, -2                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.bq = add i64 %i.bo, 6                        ; 2 uses
  %i.br = icmp ugt i64 %i.bp, -9
  %.not.i.i52 = icmp ugt i64 %i.bq, %1
  %or.cond.i.i53 = or i1 %i.br, %.not.i.i52
  br i1 %or.cond.i.i53, label %bb.q, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit55, !prof !9

bb.q:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.bp, i64 noundef %i.bq, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19, !noalias !274
  unreachable

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit55: ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %.sroa.01.0.copyload.i.i54 = load i64, ptr %i.bs, align 1, !alias.scope !274
  %i.bt = mul i64 %.sroa.01.0.copyload.i.i54, -3523014627271114752
  %i.bu = add i64 %i.bp, %7
  %i.bv = lshr i64 %i.bt, 52
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.val41.pre, i64 %i.bv
  %i.bx = trunc i64 %i.bu to i32
  store i32 %i.bx, ptr %i.bw, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.by = icmp ult i64 %i.v, %i.w
  br i1 %i.by, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit, label %bb.r

bb.r:                                             ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit55
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !275
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit: ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit55
  %i.bz = icmp ult i64 %i.bl, 15
  %i.ca = trunc nuw nsw i64 %i.bl to i8
  %i.cb = shl nuw i8 %i.ca, 4
  %.sroa.014.0 = select i1 %i.bz, i8 %i.cb, i8 -16
  %.sroa.026.064 = call i64 @llvm.umin.i64(i64 %i.bn, i64 15)
  %.sroa.026.0 = trunc nuw nsw i64 %.sroa.026.064 to i8
  %i.cc = or disjoint i8 %.sroa.014.0, %.sroa.026.0
  %i.cd = load ptr, ptr %3, align 8, !alias.scope !275, !nonnull !6, !noundef !6 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.v
  store i8 %i.cc, ptr %i.ce, align 1, !noalias !275
  %i.cf = add nuw i64 %i.v, 1                     ; 4 uses
  store i64 %i.cf, ptr %i.e, align 8, !alias.scope !275
  %i.cg = icmp ugt i64 %i.bl, 14
  br i1 %i.cg, label %bb.v, label %bb.s

bb.s:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit56, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit
  %i.ch = icmp ult i64 %i.bk, %.sroa.022.0507
  %.not.i = icmp ugt i64 %i.bk, %1
  %or.cond.i = or i1 %i.ch, %.not.i
  br i1 %or.cond.i, label %bb.t, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, !prof !9

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.022.0507, i64 noundef %i.bk, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19, !noalias !276
  unreachable

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.022.0507
  call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef %i.bl, i64 noundef %i.bl) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.av, ptr %i.a, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.cj = load i64, ptr %i.d, align 8, !alias.scope !277, !noalias !278, !noundef !6 ; 7 uses
  %i.ck = load i64, ptr %i.e, align 8, !alias.scope !277, !noalias !278, !noundef !6 ; 4 uses
  %i.cl = add i64 %i.ck, 2                        ; 7 uses
  %i.cm = icmp ugt i64 %i.ck, -3
  %.not4.i = icmp ugt i64 %i.cl, %i.cj
  %or.cond.i60 = or i1 %i.cm, %.not4.i
  br i1 %or.cond.i60, label %bb.u, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit, !prof !9

bb.u:                                             ; preds = %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ck, i64 noundef %i.cl, i64 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #19, !noalias !279
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit: ; preds = %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit
  %i.cn = trunc i64 %i.ai to i8
  %i.co = load ptr, ptr %3, align 8, !alias.scope !277, !noalias !278, !nonnull !6, !noundef !6 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ck ; 3 uses
  store i8 %i.cn, ptr %i.cp, align 1, !alias.scope !280, !noalias !281
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.cp, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !277
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.cp, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !277
  store i64 %i.cl, ptr %i.e, align 8, !alias.scope !277, !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cq = icmp ugt i64 %i.bn, 14
  br i1 %i.cq, label %bb.y, label %.split

bb.v:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit
  %i.cr = add i64 %i.bl, -15                      ; 3 uses
  %i.cs = icmp ugt i64 %i.cr, 254
  br i1 %i.cs, label %.lr.ph168.preheader, label %._crit_edge169

.lr.ph168.preheader:                              ; preds = %bb.v
  %umax = call i64 @llvm.umax.i64(i64 %i.cf, i64 %i.w) ; 2 uses
  br label %.lr.ph168

._crit_edge169:                                   ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57, %bb.v
  %i.ct = phi i64 [ %i.cf, %bb.v ], [ %i.db, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57 ] ; 4 uses
  %.sroa.016.0.lcssa = phi i64 [ %i.cr, %bb.v ], [ %i.cz, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.cu = icmp ult i64 %i.ct, %i.w
  br i1 %i.cu, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit56, label %bb.w

bb.w:                                             ; preds = %._crit_edge169
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ct, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !282
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit56: ; preds = %._crit_edge169
  %i.cv = trunc nuw i64 %.sroa.016.0.lcssa to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ct
  store i8 %i.cv, ptr %i.cw, align 1, !noalias !282
  %i.cx = add nuw i64 %i.ct, 1
  store i64 %i.cx, ptr %i.e, align 8, !alias.scope !282
  br label %bb.s

.lr.ph168:                                        ; preds = %.lr.ph168.preheader, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57
  %.sroa.016.0166 = phi i64 [ %i.cz, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57 ], [ %i.cr, %.lr.ph168.preheader ]
  %i.cy = phi i64 [ %i.db, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57 ], [ %i.cf, %.lr.ph168.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %exitcond.not = icmp eq i64 %i.cy, %umax
  br i1 %exitcond.not, label %bb.x, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57

bb.x:                                             ; preds = %.lr.ph168
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !283
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57: ; preds = %.lr.ph168
  %i.cz = add i64 %.sroa.016.0166, -255           ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cy
  store i8 -1, ptr %i.da, align 1, !noalias !283
  %i.db = add i64 %i.cy, 1                        ; 3 uses
  store i64 %i.db, ptr %i.e, align 8, !alias.scope !283
  %i.dc = icmp ugt i64 %i.cz, 254
  br i1 %i.dc, label %.lr.ph168, label %._crit_edge169

.split:                                           ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit58, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit
  %i.dd = phi i64 [ %i.dl, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit58 ], [ %i.cl, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit ]
  %i.de = icmp ugt i64 %i.bo, %i.m
  br i1 %i.de, label %.split._crit_edge, label %.lr.ph.preheader, !prof !16

bb.y:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit
  %i.df = add i64 %i.bn, -15                      ; 3 uses
  %i.dg = icmp ugt i64 %i.df, 254
  br i1 %i.dg, label %.lr.ph174.preheader, label %._crit_edge175

.lr.ph174.preheader:                              ; preds = %bb.y
  %umax280 = call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.cj) ; 2 uses
  br label %.lr.ph174

._crit_edge175:                                   ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59, %bb.y
  %i.dh = phi i64 [ %i.cl, %bb.y ], [ %i.dp, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59 ] ; 4 uses
  %.sroa.019.0.lcssa = phi i64 [ %i.df, %bb.y ], [ %i.dn, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.di = icmp ult i64 %i.dh, %i.cj
  br i1 %i.di, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit58, label %bb.z

bb.z:                                             ; preds = %._crit_edge175
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dh, i64 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !284
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit58: ; preds = %._crit_edge175
  %i.dj = trunc nuw i64 %.sroa.019.0.lcssa to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dh
  store i8 %i.dj, ptr %i.dk, align 1, !noalias !284
  %i.dl = add nuw i64 %i.dh, 1                    ; 2 uses
  store i64 %i.dl, ptr %i.e, align 8, !alias.scope !284
  br label %.split

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59
  %.sroa.019.0172 = phi i64 [ %i.dn, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59 ], [ %i.df, %.lr.ph174.preheader ]
  %i.dm = phi i64 [ %i.dp, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59 ], [ %i.cl, %.lr.ph174.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %exitcond281.not = icmp eq i64 %i.dm, %umax280
  br i1 %exitcond281.not, label %bb.aa, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59

bb.aa:                                            ; preds = %.lr.ph174
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax280, i64 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !285
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59: ; preds = %.lr.ph174
  %i.dn = add i64 %.sroa.019.0172, -255           ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dm
  store i8 -1, ptr %i.do, align 1, !noalias !285
  %i.dp = add i64 %i.dm, 1                        ; 3 uses
  store i64 %i.dp, ptr %i.e, align 8, !alias.scope !285
  %i.dq = icmp ugt i64 %i.dn, 254
  br i1 %i.dq, label %.lr.ph174, label %._crit_edge175

bb.ab:                                            ; preds = %bb.e, %bb.h, %.split._crit_edge
  %.sroa.4.0 = phi i64 [ %i.am, %.split._crit_edge ], [ %i.o, %bb.h ], [ undef, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %.split._crit_edge ], [ 0, %bb.h ], [ 1, %bb.e ]
  %i.dr = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ds = insertvalue { i64, i64 } %i.dr, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.ds
}

; Function Attrs: noinline nonlazybind uwtable
define { i64, i64 } @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress17compress_internalNtNtB4_9hashtable11HashTable4KKb1_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6, i64 noundef %7) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %6, 65537
  br i1 %i.c, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not39 = icmp ugt i64 %6, %7
  br i1 %.not39, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.d = add i64 %7, %1                           ; 3 uses
  %i.e = icmp ult i64 %i.d, %7
  br i1 %i.e, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.f = add i64 %i.d, %6                         ; 2 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp sgt i64 %i.f, -1
  %or.cond41 = and i1 %i.g, %i.h
  br i1 %or.cond41, label %bb.j, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #19
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val = load i64, ptr %i.i, align 8, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %.val45 = load i64, ptr %i.j, align 8, !noundef !6 ; 4 uses
  %i.k = sub i64 %.val, %.val45
  %i.l = sub nuw nsw i64 %1, %2                   ; 2 uses
  %i.m = mul i64 %i.l, 110
  %i.n = udiv i64 %i.m, 100
  %i.o = add nuw nsw i64 %i.n, 20
  %i.p = icmp ult i64 %i.k, %i.o
  br i1 %i.p, label %bb.ag, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = icmp samesign ult i64 %i.l, 13
  br i1 %i.q, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.r = add nsw i64 %1, -12                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = or i64 %7, %2
  %or.cond = icmp eq i64 %i.s, 0
  %.val49.pre = load ptr, ptr %4, align 8         ; 3 uses
  br i1 %or.cond, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress20handle_last_literalsNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2)
  %.val43 = load i64, ptr %i.j, align 8, !noundef !6
  %i.t = sub i64 %.val43, %.val45
  br label %bb.ag

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.l
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 1, !alias.scope !327
  %i.u = mul i64 %.sroa.01.0.copyload.i.i, -3523014627271114752
  %i.v = lshr i64 %i.u, 52
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val49.pre, i64 %i.v
  store i32 0, ptr %i.w, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit
  %i.x = phi i64 [ %2, %bb.l ], [ 1, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit ] ; 2 uses
  %i.y = icmp ugt i64 %i.x, %i.r
  br i1 %i.y, label %.split._crit_edge, label %.lr.ph.preheader, !prof !14

.lr.ph.preheader:                                 ; preds = %bb.n, %.split
  %.sroa.023.0639 = phi i64 [ %i.bu, %.split ], [ %2, %bb.n ] ; 7 uses
  %i.z = phi i64 [ %i.bu, %.split ], [ %i.x, %bb.n ] ; 2 uses
  %i.aa = phi i64 [ %i.dj, %.split ], [ %.val45, %bb.n ] ; 4 uses
  %i.ab = phi i64 [ %i.cp, %.split ], [ %.val, %bb.n ] ; 6 uses
  %i.ac = add i64 %i.z, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %i.ad = phi i64 [ %i.ax, %.backedge ], [ %i.ac, %.lr.ph.preheader ] ; 3 uses
  %i.ae = phi i64 [ %i.aw, %.backedge ], [ 33, %.lr.ph.preheader ] ; 2 uses
  %.promoted = phi i64 [ %i.ad, %.backedge ], [ %i.z, %.lr.ph.preheader ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %.not.i.i50 = icmp ugt i64 %.promoted, -9
  br i1 %.not.i.i50, label %bb.o, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit52, !prof !9

bb.o:                                             ; preds = %.lr.ph
  %8 = add nuw nsw i64 %.promoted, 8
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.promoted, i64 noundef %8, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19, !noalias !330
  unreachable

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit52: ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.promoted
  %.sroa.01.0.copyload.i.i51 = load i64, ptr %i.af, align 1, !alias.scope !330 ; 2 uses
  %i.ag = mul i64 %.sroa.01.0.copyload.i.i51, -3523014627271114752
  %i.ah = lshr i64 %i.ag, 52
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val49.pre, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !noundef !6
  %i.ak = zext i32 %i.aj to i64                   ; 3 uses
  %i.al = add i64 %.promoted, %7                  ; 2 uses
  %i.am = trunc i64 %i.al to i32
  store i32 %i.am, ptr %i.ai, align 4
  %i.an = sub i64 %i.al, %i.ak                    ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 65535
  %i.ap = trunc i64 %.sroa.01.0.copyload.i.i51 to i32
  br i1 %i.ao, label %.backedge, label %bb.p

.split._crit_edge:                                ; preds = %.split, %.backedge, %bb.n
  %.sroa.023.0576 = phi i64 [ %.sroa.023.0639, %.backedge ], [ %2, %bb.n ], [ %i.bu, %.split ]
  call fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress20handle_last_literalsNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.sroa.023.0576)
  %.val42 = load i64, ptr %i.j, align 8, !noundef !6
  %i.aq = sub i64 %.val42, %.val45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ag

bb.p:                                             ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit52
  %.not40 = icmp ugt i64 %7, %i.ak                ; 3 uses
  %storemerge.p.v = select i1 %.not40, i64 %6, i64 0
  %storemerge.p = sub i64 %storemerge.p.v, %7
  %storemerge = add i64 %storemerge.p, %i.ak      ; 7 uses
  %.sroa.5.0 = select i1 %.not40, i64 %6, i64 %1  ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.ar = add i64 %storemerge, 4                  ; 3 uses
  %i.as = icmp ugt i64 %storemerge, -5
  %.not.i53 = icmp ugt i64 %i.ar, %.sroa.5.0
  %or.cond.i54 = or i1 %i.as, %.not.i53
  br i1 %or.cond.i54, label %bb.q, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit, !prof !9

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %storemerge, i64 noundef %i.ar, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #19, !noalias !331
  unreachable

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit: ; preds = %bb.p
  %.sroa.05.0 = select i1 %.not40, ptr %5, ptr %0 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 %storemerge
  %.sroa.02.0.copyload.i = load i32, ptr %i.at, align 1, !alias.scope !331
  %i.au = icmp eq i32 %.sroa.02.0.copyload.i, %i.ap
  br i1 %i.au, label %bb.r, label %.backedge

.backedge:                                        ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit52
  %i.av = lshr i64 %i.ae, 5
  %i.aw = add i64 %i.ae, 1
  %i.ax = add i64 %i.av, %i.ad
  %i.ay = icmp ugt i64 %i.ad, %i.r
  br i1 %i.ay, label %.split._crit_edge, label %.lr.ph, !prof !15

bb.r:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit
  %.sroa.010.0.le = trunc nuw i64 %i.an to i16
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.az = icmp ne i64 %storemerge, 0
  %i.ba = icmp ugt i64 %.promoted, %.sroa.023.0639
  %or.cond11.i = and i1 %i.ba, %i.az
  br i1 %or.cond11.i, label %.lr.ph.preheader.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.bb = add i64 %storemerge, -1                 ; 2 uses
  %.first_iter.i = icmp ult i64 %i.bb, %.sroa.5.0
  br i1 %.first_iter.i, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %bb.t
  %i.bc = phi i64 [ %i.bd, %bb.t ], [ %.promoted, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.071.us = phi i64 [ %i.bf, %bb.t ], [ %storemerge, %.lr.ph.preheader.i ] ; 2 uses
  %i.bd = add i64 %i.bc, -1                       ; 6 uses
  %i.be = icmp ult i64 %i.bd, %1
  br i1 %i.be, label %bb.s, label %.split188.us

bb.s:                                             ; preds = %.lr.ph.i.us
  %i.bf = add i64 %.sroa.0.071.us, -1             ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !332, !noalias !334, !noundef !6
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 %i.bf
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !333, !noalias !335, !noundef !6
  %i.bk = icmp eq i8 %i.bh, %i.bj
  br i1 %i.bk, label %bb.t, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us

bb.t:                                             ; preds = %bb.s
  %i.bl = icmp ne i64 %i.bf, 0
  %i.bm = icmp ugt i64 %i.bd, %.sroa.023.0639
  %or.cond.i59.us = and i1 %i.bl, %i.bm
  br i1 %or.cond.i59.us, label %.lr.ph.i.us, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us: ; preds = %bb.t, %bb.s
  %i.bn = phi i64 [ %i.bc, %bb.s ], [ %i.bd, %bb.t ]
  %.sroa.0.1.ph.us = phi i64 [ %.sroa.0.071.us, %bb.s ], [ %i.bf, %bb.t ]
  %.pre = add nuw i64 %.sroa.0.1.ph.us, 4
  br label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %i.bo = add i64 %.promoted, -1                  ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %1
  br i1 %i.bp, label %bb.u, label %.split188.us

bb.u:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bb, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #19, !noalias !336
  unreachable

.split188.us:                                     ; preds = %.lr.ph.i.us, %.lr.ph.i
  %.us-phi189 = phi i64 [ %i.bo, %.lr.ph.i ], [ %i.bd, %.lr.ph.i.us ]
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi189, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #19, !noalias !336
  unreachable

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit: ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us, %bb.r
  %.pre-phi = phi i64 [ %.pre, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us ], [ %i.ar, %bb.r ]
  %i.bq = phi i64 [ %i.bn, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us ], [ %.promoted, %bb.r ] ; 5 uses
  %i.br = sub i64 %i.bq, %.sroa.023.0639          ; 6 uses
  %i.bs = add nuw i64 %i.bq, 4
  store i64 %i.bs, ptr %i.b, align 8
  %i.bt = call fastcc noundef i64 @_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress16count_same_bytes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0, i64 noundef %.sroa.5.0, i64 noundef %.pre-phi) #20 ; 3 uses
  %i.bu = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %i.bv = add i64 %i.bu, -2                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.bw = add i64 %i.bu, 6                        ; 2 uses
  %i.bx = icmp ugt i64 %i.bv, -9
  %.not.i.i60 = icmp ugt i64 %i.bw, %1
  %or.cond.i.i61 = or i1 %i.bx, %.not.i.i60
  br i1 %or.cond.i.i61, label %bb.v, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit63, !prof !9

bb.v:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.bv, i64 noundef %i.bw, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19, !noalias !339
  unreachable

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit63: ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %.sroa.01.0.copyload.i.i62 = load i64, ptr %i.by, align 1, !alias.scope !339
  %i.bz = mul i64 %.sroa.01.0.copyload.i.i62, -3523014627271114752
  %i.ca = add i64 %i.bv, %7
  %i.cb = lshr i64 %i.bz, 52
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.val49.pre, i64 %i.cb
  %i.cd = trunc i64 %i.ca to i32
  store i32 %i.cd, ptr %i.cc, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.ce = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ce, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit, label %bb.w

bb.w:                                             ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit63
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !340
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit: ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit63
  %i.cf = icmp ult i64 %i.br, 15
  %i.cg = trunc nuw nsw i64 %i.br to i8
  %i.ch = shl nuw i8 %i.cg, 4
  %.sroa.015.0 = select i1 %i.cf, i8 %i.ch, i8 -16
  %.sroa.027.072 = call i64 @llvm.umin.i64(i64 %i.bt, i64 15)
  %.sroa.027.0 = trunc nuw nsw i64 %.sroa.027.072 to i8
  %i.ci = or disjoint i8 %.sroa.015.0, %.sroa.027.0
  %i.cj = load ptr, ptr %3, align 8, !alias.scope !340, !nonnull !6, !noundef !6 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.aa
  store i8 %i.ci, ptr %i.ck, align 1, !noalias !340
  %i.cl = add nuw i64 %i.aa, 1                    ; 4 uses
  store i64 %i.cl, ptr %i.j, align 8, !alias.scope !340
  %i.cm = icmp ugt i64 %i.br, 14
  br i1 %i.cm, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit64, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit
  %i.cn = icmp ult i64 %i.bq, %.sroa.023.0639
  %.not.i = icmp ugt i64 %i.bq, %1
  %or.cond.i = or i1 %i.cn, %.not.i
  br i1 %or.cond.i, label %bb.y, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, !prof !9

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.023.0639, i64 noundef %i.bq, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19, !noalias !341
  unreachable

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.023.0639
  call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.br, i64 noundef %i.br) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.sroa.010.0.le, ptr %i.a, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.cp = load i64, ptr %i.i, align 8, !alias.scope !342, !noalias !343, !noundef !6 ; 7 uses
  %i.cq = load i64, ptr %i.j, align 8, !alias.scope !342, !noalias !343, !noundef !6 ; 4 uses
  %i.cr = add i64 %i.cq, 2                        ; 7 uses
  %i.cs = icmp ugt i64 %i.cq, -3
  %.not4.i = icmp ugt i64 %i.cr, %i.cp
  %or.cond.i68 = or i1 %i.cs, %.not4.i
  br i1 %or.cond.i68, label %bb.z, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit, !prof !9

bb.z:                                             ; preds = %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.cq, i64 noundef %i.cr, i64 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #19, !noalias !344
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit: ; preds = %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit
  %i.ct = trunc i64 %i.an to i8
  %i.cu = load ptr, ptr %3, align 8, !alias.scope !342, !noalias !343, !nonnull !6, !noundef !6 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq ; 3 uses
end_hunk_0
