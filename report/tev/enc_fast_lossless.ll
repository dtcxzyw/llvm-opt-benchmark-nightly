Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_fast_lossless?download=true
inline.NumInlined: 4106
inline.NumDeleted: 1186
loop-unroll.NumCompletelyUnrolled: 195
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 336
begin_hunk_0_@_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m:bb.a
  %i.ca = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true) ; 2 uses
  %i.cb = xor i32 %i.ca, 31
  %i.cc = icmp ult i32 %i.bz, 16                  ; 3 uses
  %i.cd = sub nuw nsw i32 43, %i.ca
  %i.ce = select i1 %i.cc, i32 %i.bz, i32 %i.cd
  %i.cf = select i1 %i.cc, i32 0, i32 %i.cb       ; 2 uses
  %.neg.i.i = shl nsw i32 -1, %i.cf
  %i.cg = add i32 %.neg.i.i, %i.bz
  %i.ch = select i1 %i.cc, i32 0, i32 %i.cg
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.au, i64 38
  %i.ck = zext i32 %i.ce to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !85  ; 2 uses
  %i.cn = zext i8 %i.cm to i32
  %i.co = zext nneg i8 %i.cm to i64
  %i.cp = shl i64 %i.ci, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.ck
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !104
  %i.ct = zext i16 %i.cs to i64
  %i.cu = or i64 %i.cp, %i.ct
  %i.cv = load i8, ptr %i.au, align 8, !tbaa !85  ; 2 uses
  %i.cw = zext i8 %i.cv to i32
  %i.cx = zext nneg i8 %i.cv to i64
  %i.cy = shl i64 %i.cu, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.au, i64 19
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !85
  %i.db = zext i8 %i.da to i64
  %i.dc = or i64 %i.cy, %i.db
  %i.dd = add nuw nsw i32 %i.cf, %i.cn
  %i.de = add nuw nsw i32 %i.dd, %i.cw
  %i.df = load ptr, ptr %i.aw, align 8, !tbaa !71
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !74
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 4 uses
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !68 ; 2 uses
  %i.dm = shl i64 %i.dc, %i.dl
  %i.dn = load i64, ptr %i.dk, align 8, !tbaa !68
  %i.do = or i64 %i.dn, %i.dm                     ; 2 uses
  store i64 %i.do, ptr %i.dk, align 8, !tbaa !68
  %i.dp = zext nneg i32 %i.de to i64
  %i.dq = add i64 %i.dl, %i.dp
  store i64 %i.dq, ptr %i.dj, align 8, !tbaa !68
  store i64 %i.do, ptr %i.di, align 1
  %i.dr = load i64, ptr %i.dj, align 8, !tbaa !68 ; 3 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = and i64 %i.dr, -8
  %i.du = and i64 %i.dr, 7
  store i64 %i.du, ptr %i.dj, align 8, !tbaa !68
  %i.dv = load i64, ptr %i.dk, align 8, !tbaa !68
  %i.dw = lshr i64 %i.dv, %i.dt
  store i64 %i.dw, ptr %i.dk, align 8, !tbaa !68
  %i.dx = load i64, ptr %i.dg, align 8, !tbaa !74
  %i.dy = add i64 %i.dx, %i.ds
  store i64 %i.dy, ptr %i.dg, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i

_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i: ; preds = %bb.g, %bb.f
  %i.dz = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  %i.eb = load ptr, ptr %i.av, align 8, !tbaa !194
  call fastcc void @_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE(ptr noundef nonnull %i.a, i64 noundef %.sroa.speculated, i64 noundef %.sroa.speculated.i, ptr noundef %i.dz, ptr noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(40) %i.eb) #38
  store i64 0, ptr %.phi.trans.insert.i, align 8, !tbaa !189
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !194
  call fastcc void @_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE(ptr noundef nonnull %i.a, i64 noundef %.sroa.speculated, i64 noundef 0, ptr noundef %i.ed, ptr noundef %i.ee, ptr noundef nonnull align 8 dereferenceable(40) %i.ef) #38
  %.pre.i.pre = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !189
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit

_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit: ; preds = %bb.d, %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i, %bb.h
  %.pre.i18 = phi i64 [ %i.ap, %bb.d ], [ 0, %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i ], [ %.pre.i.pre, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.eg = add i64 %.015, 16                       ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %5
  br i1 %i.eh, label %bb.b, label %._crit_edge, !llvm.loop !10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E8FinalizeEv(ptr nofree readonly captures(none) %.0.val.0.val, ptr nofree captures(none) %.0.val.8.val, i64 %.8.val) unnamed_addr #30 align 2 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE8FinalizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %.8.val, -8                      ; 4 uses
  %i.c = icmp ult i64 %i.b, 32
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val.0.val, i64 400
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  %i.f = load i8, ptr %i.e, align 1, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val.0.val, i64 144
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.b
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68
  %i.j = load ptr, ptr %.0.val.8.val, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val.8.val, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val.8.val, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val.8.val, i64 32 ; 4 uses
  %i.p = load i64, ptr %i.n, align 8, !tbaa !68   ; 2 uses
  %i.q = shl i64 %i.i, %i.p
  %i.r = load i64, ptr %i.o, align 8, !tbaa !68
  %i.s = or i64 %i.r, %i.q                        ; 2 uses
  store i64 %i.s, ptr %i.o, align 8, !tbaa !68
  %i.t = zext i8 %i.f to i64
  %i.u = add i64 %i.p, %i.t
  store i64 %i.u, ptr %i.n, align 8, !tbaa !68
  store i64 %i.s, ptr %i.m, align 1
  %i.v = load i64, ptr %i.n, align 8, !tbaa !68   ; 3 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = and i64 %i.v, -8
  %i.y = and i64 %i.v, 7
  store i64 %i.y, ptr %i.n, align 8, !tbaa !68
  %i.z = load i64, ptr %i.o, align 8, !tbaa !68
  %i.aa = lshr i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.o, align 8, !tbaa !68
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !74
  %i.ac = add i64 %i.ab, %i.w
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE8FinalizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = trunc i64 %i.b to i32                   ; 4 uses
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ad, i1 true) ; 2 uses
  %i.af = xor i32 %i.ae, 31
  %i.ag = icmp ult i32 %i.ad, 16                  ; 3 uses
  %i.ah = sub nuw nsw i32 43, %i.ae
  %i.ai = select i1 %i.ag, i32 %i.ad, i32 %i.ah
  %i.aj = select i1 %i.ag, i32 0, i32 %i.af       ; 2 uses
  %.neg.i.i = shl nsw i32 -1, %i.aj
  %i.ak = add i32 %.neg.i.i, %i.ad
  %i.al = select i1 %i.ag, i32 0, i32 %i.ak
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val.0.val, i64 38
  %i.ao = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !85  ; 2 uses
  %i.ar = zext i8 %i.aq to i32
  %i.as = zext nneg i8 %i.aq to i64
  %i.at = shl i64 %i.am, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val.0.val, i64 72
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.ao
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !104
  %i.ax = zext i16 %i.aw to i64
  %i.ay = or i64 %i.at, %i.ax
  %i.az = load i8, ptr %.0.val.0.val, align 8, !tbaa !85 ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = zext nneg i8 %i.az to i64
  %i.bc = shl i64 %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.val.0.val, i64 19
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !85
  %i.bf = zext i8 %i.be to i64
  %i.bg = or i64 %i.bc, %i.bf
  %i.bh = add nuw nsw i32 %i.aj, %i.ar
  %i.bi = add nuw nsw i32 %i.bh, %i.ba
  %i.bj = load ptr, ptr %.0.val.8.val, align 8, !tbaa !71
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.val.8.val, i64 16 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.val.8.val, i64 24 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.val.8.val, i64 32 ; 4 uses
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !68 ; 2 uses
  %i.bq = shl i64 %i.bg, %i.bp
  %i.br = load i64, ptr %i.bo, align 8, !tbaa !68
  %i.bs = or i64 %i.br, %i.bq                     ; 2 uses
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !68
  %i.bt = zext nneg i32 %i.bi to i64
  %i.bu = add i64 %i.bp, %i.bt
  store i64 %i.bu, ptr %i.bn, align 8, !tbaa !68
  store i64 %i.bs, ptr %i.bm, align 1
  %i.bv = load i64, ptr %i.bn, align 8, !tbaa !68 ; 3 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bv, -8
  %i.by = and i64 %i.bv, 7
  store i64 %i.by, ptr %i.bn, align 8, !tbaa !68
  %i.bz = load i64, ptr %i.bo, align 8, !tbaa !68
  %i.ca = lshr i64 %i.bz, %i.bx
  store i64 %i.ca, ptr %i.bo, align 8, !tbaa !68
  %i.cb = load i64, ptr %i.bk, align 8, !tbaa !74
  %i.cc = add i64 %i.cb, %i.bw
  store i64 %i.cc, ptr %i.bk, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE8FinalizeEm.exit

_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE8FinalizeEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %5) unnamed_addr #31 align 2 {
bb.a:
  %6 = load <16 x i8>, ptr %4, align 1, !tbaa !85
  %7 = shufflevector <16 x i8> %6, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %8 = load <16 x i8>, ptr %3, align 1, !tbaa !85
  %9 = shufflevector <16 x i8> %8, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.a = load <4 x i64>, ptr %0, align 1, !tbaa !85 ; 2 uses
  %i.b = bitcast <4 x i64> %i.a to <16 x i16>     ; 4 uses
  %i.c = lshr <16 x i16> %i.b, splat (i16 4)
  %i.d = lshr <16 x i16> %i.b, splat (i16 8)
  %i.e = lshr <16 x i16> %i.b, splat (i16 12)
  %i.f = bitcast <4 x i64> %i.a to <32 x i8>
  %i.g = and <32 x i8> %i.f, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.h = or <32 x i8> %i.g, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.i = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <32 x i8> %i.h)
  %i.j = bitcast <16 x i16> %i.c to <32 x i8>
  %i.k = and <32 x i8> %i.j, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.l = or <32 x i8> %i.k, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.m = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>, <32 x i8> %i.l)
  %i.n = bitcast <16 x i16> %i.d to <32 x i8>
  %i.o = and <32 x i8> %i.n, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.p = or <32 x i8> %i.o, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.q = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12>, <32 x i8> %i.p)
  %i.r = bitcast <16 x i16> %i.e to <32 x i8>
  %i.s = or <32 x i8> %i.r, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.t = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>, <32 x i8> %i.s)
  %i.u = bitcast <32 x i8> %i.i to <16 x i16>
  %i.v = bitcast <32 x i8> %i.m to <16 x i16>
  %i.w = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.u, <16 x i16> %i.v)
  %i.x = bitcast <32 x i8> %i.q to <16 x i16>
  %i.y = bitcast <32 x i8> %i.t to <16 x i16>
  %i.z = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.x, <16 x i16> %i.y)
  %i.aa = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.w, <16 x i16> %i.z) ; 2 uses
  %i.ab = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.aa, <16 x i16> splat (i16 1)) ; 2 uses
  %i.ac = bitcast <16 x i16> %i.ab to <32 x i8>
  %i.ad = or <32 x i8> %i.ac, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.ae = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ad)
  %i.af = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.ad)
  %i.ag = bitcast <32 x i8> %i.af to <16 x i16>
  %i.ah = shl <16 x i16> %i.ag, splat (i16 8)
  %i.ai = bitcast <32 x i8> %i.ae to <16 x i16>
  %i.aj = or <16 x i16> %i.ah, %i.ai
  %i.ak = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.b, <16 x i16> %i.aj)
  %i.al = bitcast <16 x i16> %i.aa to <32 x i8>
  %i.am = or <32 x i8> %i.al, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.an = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %9, <32 x i8> %i.am) ; 2 uses
  %i.ao = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %7, <32 x i8> %i.am)
  %i.ap = bitcast <32 x i8> %i.ao to <4 x i64>
  %i.aq = or <32 x i8> %i.an, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ar = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.aq)
  %i.as = bitcast <32 x i8> %i.ar to <16 x i16>
  %i.at = mul <16 x i16> %i.ak, %i.as
  %i.au = bitcast <16 x i16> %i.at to <4 x i64>
  %i.av = bitcast <32 x i8> %i.an to <16 x i16>
  %i.aw = add <16 x i16> %i.ab, %i.av
  %i.ax = bitcast <16 x i16> %i.aw to <4 x i64>
  %i.ay = or <4 x i64> %i.au, %i.ap
  %.sroa.speculated.i.le = tail call i64 @llvm.umin.i64(i64 %1, i64 16)
  %i.az = sub nsw i64 0, %.sroa.speculated.i.le
  %i.ba = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits166ClipToEmE5kMask, i64 32), i64 %i.az
  %i.bb = load <4 x i64>, ptr %i.ba, align 2, !tbaa !85 ; 2 uses
  %.sroa.speculated.i9.le = tail call i64 @llvm.umin.i64(i64 %2, i64 16)
  %i.bc = sub nsw i64 0, %.sroa.speculated.i9.le
  %i.bd = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits164SkipEmE5kMask, i64 32), i64 %i.bc
  %i.be = load <4 x i64>, ptr %i.bd, align 2, !tbaa !85 ; 2 uses
  %i.bf = and <4 x i64> %i.bb, %i.ax
  %i.bg = and <4 x i64> %i.bf, %i.be              ; 2 uses
  %i.bh = and <4 x i64> %i.bb, %i.ay
  %i.bi = and <4 x i64> %i.bh, %i.be              ; 2 uses
  %i.bj = bitcast <4 x i64> %i.bg to <8 x i32>
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 16)
  %i.bl = bitcast <4 x i64> %i.bi to <8 x i32>
  %i.bm = lshr <8 x i32> %i.bl, splat (i32 16)
  %i.bn = and <4 x i64> %i.bi, splat (i64 281470681808895)
  %i.bo = bitcast <4 x i64> %i.bg to <8 x i32>
  %i.bp = and <8 x i32> %i.bo, splat (i32 65535)  ; 2 uses
  %i.bq = add nuw nsw <8 x i32> %i.bk, %i.bp      ; 2 uses
  %i.br = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.bm, <8 x i32> %i.bp)
  %i.bs = bitcast <8 x i32> %i.br to <4 x i64>
  %i.bt = or <4 x i64> %i.bn, %i.bs               ; 2 uses
  %.val.cast = bitcast <8 x i32> %i.bq to <4 x i64>
  %i.bu = lshr <4 x i64> %.val.cast, splat (i64 32)
  %i.bv = bitcast <8 x i32> %i.bq to <4 x i64>
  %i.bw = and <4 x i64> %i.bv, splat (i64 131071) ; 2 uses
  %i.bx = lshr <4 x i64> %i.bt, splat (i64 32)
  %i.by = and <4 x i64> %i.bt, splat (i64 4294967295)
  %i.bz = add nuw nsw <4 x i64> %i.bu, %i.bw      ; 4 uses
  %i.ca = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.bx, <4 x i64> %i.bw)
  %i.cb = or <4 x i64> %i.ca, %i.by               ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 15 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 12 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 14 uses
  %.sroa.0.0.vec.extract = extractelement <4 x i64> %i.cb, i64 0 ; 2 uses
  %i.cf = load i64, ptr %i.cc, align 8, !tbaa !86
  %i.cg = shl i64 %.sroa.0.0.vec.extract, %i.cf
  %i.ch = load i64, ptr %i.cd, align 8, !tbaa !87
  %i.ci = or i64 %i.ch, %i.cg                     ; 2 uses
  store i64 %i.ci, ptr %i.cd, align 8, !tbaa !87
  %i.cj = load ptr, ptr %5, align 8, !tbaa !71
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !74
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  store i64 %i.ci, ptr %i.cl, align 1
  %i.cm = load i64, ptr %i.cc, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.0.vec.extract = extractelement <4 x i64> %i.bz, i64 0
  %i.cn = add i64 %.sroa.0140.0.vec.extract, %i.cm ; 4 uses
  store i64 %i.cn, ptr %i.cc, align 8, !tbaa !86
  %i.co = icmp ugt i64 %i.cn, 63
  br i1 %i.co, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr %i.cd, align 8, !tbaa !87
  %.pre141 = load i64, ptr %i.ce, align 8, !tbaa !74
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cp = sub i64 64, %i.cm                       ; 2 uses
  %i.cq = icmp ugt i64 %i.cp, 63
  %i.cr = lshr i64 %.sroa.0.0.vec.extract, %i.cp
  %spec.select = select i1 %i.cq, i64 0, i64 %i.cr
  %i.cs = add i64 %i.cn, -64                      ; 2 uses
  store i64 %i.cs, ptr %i.cc, align 8, !tbaa !86
  %i.ct = load i64, ptr %i.ce, align 8, !tbaa !74
  %i.cu = add i64 %i.ct, 8                        ; 2 uses
  store i64 %i.cu, ptr %i.ce, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.cv = phi i64 [ %i.cu, %bb.b ], [ %.pre141, %._crit_edge ]
  %i.cw = phi i64 [ %spec.select, %bb.b ], [ %.pre, %._crit_edge ]
  %i.cx = phi i64 [ %i.cs, %bb.b ], [ %i.cn, %._crit_edge ]
  %.sroa.0.8.vec.extract = extractelement <4 x i64> %i.cb, i64 1 ; 2 uses
  %i.cy = shl i64 %.sroa.0.8.vec.extract, %i.cx
  %i.cz = or i64 %i.cw, %i.cy                     ; 2 uses
  store i64 %i.cz, ptr %i.cd, align 8, !tbaa !87
  %i.da = load ptr, ptr %5, align 8, !tbaa !71
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cv
  store i64 %i.cz, ptr %i.db, align 1
  %i.dc = load i64, ptr %i.cc, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.8.vec.extract = extractelement <4 x i64> %i.bz, i64 1
  %i.dd = add i64 %.sroa.0140.8.vec.extract, %i.dc ; 4 uses
  store i64 %i.dd, ptr %i.cc, align 8, !tbaa !86
  %i.de = icmp ugt i64 %i.dd, 63
  br i1 %i.de, label %bb.d, label %._crit_edge142

._crit_edge142:                                   ; preds = %bb.c
  %.pre143 = load i64, ptr %i.cd, align 8, !tbaa !87
  %.pre144 = load i64, ptr %i.ce, align 8, !tbaa !74
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.df = sub i64 64, %i.dc                       ; 2 uses
  %i.dg = icmp ugt i64 %i.df, 63
  %i.dh = lshr i64 %.sroa.0.8.vec.extract, %i.df
  %spec.select.1 = select i1 %i.dg, i64 0, i64 %i.dh
  %i.di = add i64 %i.dd, -64                      ; 2 uses
  store i64 %i.di, ptr %i.cc, align 8, !tbaa !86
  %i.dj = load i64, ptr %i.ce, align 8, !tbaa !74
  %i.dk = add i64 %i.dj, 8                        ; 2 uses
  store i64 %i.dk, ptr %i.ce, align 8, !tbaa !74
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge142, %bb.d
  %i.dl = phi i64 [ %i.dk, %bb.d ], [ %.pre144, %._crit_edge142 ]
  %i.dm = phi i64 [ %spec.select.1, %bb.d ], [ %.pre143, %._crit_edge142 ]
  %i.dn = phi i64 [ %i.di, %bb.d ], [ %i.dd, %._crit_edge142 ]
  %.sroa.0.16.vec.extract = extractelement <4 x i64> %i.cb, i64 2 ; 2 uses
  %i.do = shl i64 %.sroa.0.16.vec.extract, %i.dn
  %i.dp = or i64 %i.dm, %i.do                     ; 2 uses
  store i64 %i.dp, ptr %i.cd, align 8, !tbaa !87
  %i.dq = load ptr, ptr %5, align 8, !tbaa !71
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dl
  store i64 %i.dp, ptr %i.dr, align 1
  %i.ds = load i64, ptr %i.cc, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.16.vec.extract = extractelement <4 x i64> %i.bz, i64 2
  %i.dt = add i64 %.sroa.0140.16.vec.extract, %i.ds ; 4 uses
  store i64 %i.dt, ptr %i.cc, align 8, !tbaa !86
  %i.du = icmp ugt i64 %i.dt, 63
  br i1 %i.du, label %bb.f, label %._crit_edge145

._crit_edge145:                                   ; preds = %bb.e
  %.pre146 = load i64, ptr %i.cd, align 8, !tbaa !87
  %.pre147 = load i64, ptr %i.ce, align 8, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dv = sub i64 64, %i.ds                       ; 2 uses
  %i.dw = icmp ugt i64 %i.dv, 63
  %i.dx = lshr i64 %.sroa.0.16.vec.extract, %i.dv
  %spec.select.2 = select i1 %i.dw, i64 0, i64 %i.dx
  %i.dy = add i64 %i.dt, -64                      ; 2 uses
  store i64 %i.dy, ptr %i.cc, align 8, !tbaa !86
  %i.dz = load i64, ptr %i.ce, align 8, !tbaa !74
  %i.ea = add i64 %i.dz, 8                        ; 2 uses
  store i64 %i.ea, ptr %i.ce, align 8, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge145, %bb.f
  %i.eb = phi i64 [ %i.ea, %bb.f ], [ %.pre147, %._crit_edge145 ]
  %i.ec = phi i64 [ %spec.select.2, %bb.f ], [ %.pre146, %._crit_edge145 ]
  %i.ed = phi i64 [ %i.dy, %bb.f ], [ %i.dt, %._crit_edge145 ]
  %.sroa.0.24.vec.extract = extractelement <4 x i64> %i.cb, i64 3 ; 2 uses
  %i.ee = shl i64 %.sroa.0.24.vec.extract, %i.ed
  %i.ef = or i64 %i.ec, %i.ee                     ; 2 uses
  store i64 %i.ef, ptr %i.cd, align 8, !tbaa !87
  %i.eg = load ptr, ptr %5, align 8, !tbaa !71
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eb
  store i64 %i.ef, ptr %i.eh, align 1
  %i.ei = load i64, ptr %i.cc, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.24.vec.extract = extractelement <4 x i64> %i.bz, i64 3
  %i.ej = add i64 %.sroa.0140.24.vec.extract, %i.ei ; 3 uses
  store i64 %i.ej, ptr %i.cc, align 8, !tbaa !86
  %i.ek = icmp ugt i64 %i.ej, 63
  %.pre148 = load i64, ptr %i.ce, align 8, !tbaa !74 ; 2 uses
  br i1 %i.ek, label %bb.h, label %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge

._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge: ; preds = %bb.g
  %.pre149 = load i64, ptr %i.cd, align 8
  br label %_ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit

bb.h:                                             ; preds = %bb.g
  %i.el = sub i64 64, %i.ei                       ; 2 uses
  %i.em = icmp ugt i64 %i.el, 63
  %i.en = lshr i64 %.sroa.0.24.vec.extract, %i.el
  %spec.select.3 = select i1 %i.em, i64 0, i64 %i.en ; 2 uses
  store i64 %spec.select.3, ptr %i.cd, align 8, !tbaa !87
  %i.eo = add i64 %i.ej, -64
  store i64 %i.eo, ptr %i.cc, align 8, !tbaa !86
  %i.ep = add i64 %.pre148, 8                     ; 2 uses
  store i64 %i.ep, ptr %i.ce, align 8, !tbaa !74
  br label %_ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit

_ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit: ; preds = %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge, %bb.h
  %i.eq = phi i64 [ %spec.select.3, %bb.h ], [ %.pre149, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge ]
  %i.er = phi i64 [ %i.ep, %bb.h ], [ %.pre148, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge ]
  %i.es = load ptr, ptr %5, align 8, !tbaa !71
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.er
  store i64 %i.eq, ptr %i.et, align 1
  %i.eu = load i64, ptr %i.cc, align 8, !tbaa !86 ; 3 uses
  %i.ev = lshr i64 %i.eu, 3
  %i.ew = and i64 %i.eu, -8
  %i.ex = and i64 %i.eu, 7
  store i64 %i.ex, ptr %i.cc, align 8, !tbaa !86
  %i.ey = load i64, ptr %i.cd, align 8, !tbaa !87
  %i.ez = lshr i64 %i.ey, %i.ew
  store i64 %i.ez, ptr %i.cd, align 8, !tbaa !87
  %i.fa = load i64, ptr %i.ce, align 8, !tbaa !74
  %i.fb = add i64 %i.fa, %i.ev
end_hunk_0
begin_hunk_1_@_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_9UpTo8BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m:bb.a
  %i.wn = getelementptr inbounds i8, ptr %i.wm, i64 -2 ; 2 uses
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph129.i.i.i
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.063128.i.i.i
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !92 ; 2 uses
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.s, %.lr.ph129.i.i.i
  %i.wq = phi ptr [ %i.wp, %bb.s ], [ %i.wn, %.lr.ph129.i.i.i ]
  %i.wr = phi ptr [ %i.wp, %bb.s ], [ %i.wm, %.lr.ph129.i.i.i ]
  %i.ws = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.063128.i.i.i ; 2 uses
  br i1 %.not.i86.i.i.i, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.i.i.i, label %.lr.ph.i87.i.i.i

.lr.ph.i87.i.i.i:                                 ; preds = %.thread.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 8 ; 4 uses
  %.pre.i.pre16.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !189
  %i.wt = getelementptr inbounds i8, ptr %i.wr, i64 -2
  br label %bb.t

bb.t:                                             ; preds = %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i.i, %.lr.ph.i87.i.i.i
  %.pre.i.i.i.i.i = phi i64 [ %.pre.i.pre16.i.i.i.i, %.lr.ph.i87.i.i.i ], [ %.pre.i18.i.i.i.i, %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i.i ] ; 3 uses
  %.015.i.i.i.i = phi i64 [ 0, %.lr.ph.i87.i.i.i ], [ %i.ans, %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i.i ] ; 6 uses
  %i.wu = getelementptr inbounds nuw [2 x i8], ptr %i.wm, i64 %.015.i.i.i.i
  %i.wv = getelementptr inbounds nuw [2 x i8], ptr %i.wn, i64 %.015.i.i.i.i
  %i.ww = getelementptr inbounds nuw [2 x i8], ptr %i.wq, i64 %.015.i.i.i.i
  %i.wx = getelementptr inbounds nuw [2 x i8], ptr %i.wt, i64 %.015.i.i.i.i
  %i.wy = sub nuw nsw i64 %.sroa.speculated35.i, %.015.i.i.i.i
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.wy, i64 16) ; 4 uses
  %.val36.i.i.i.i.i = load <16 x i16>, ptr %i.wu, align 1, !tbaa !85
  %.val18.i.i.i.i.i = load <4 x i64>, ptr %i.wv, align 1, !tbaa !85 ; 2 uses
  %.val19.i.i.i.i.i = load <4 x i64>, ptr %i.ww, align 1, !tbaa !85 ; 2 uses
  %.val2037.i.i.i.i.i = load <16 x i16>, ptr %i.wx, align 1, !tbaa !85 ; 2 uses
  %i.wz = bitcast <4 x i64> %.val18.i.i.i.i.i to <16 x i16> ; 2 uses
  %i.xa = sub <16 x i16> %i.wz, %.val2037.i.i.i.i.i ; 2 uses
  %i.xb = bitcast <4 x i64> %.val19.i.i.i.i.i to <16 x i16> ; 3 uses
  %i.xc = sub <16 x i16> %i.wz, %i.xb
  %i.xd = sub <16 x i16> %i.xb, %.val2037.i.i.i.i.i ; 2 uses
  %i.xe = add <16 x i16> %i.xa, %i.xb
  %i.xf = xor <16 x i16> %i.xd, %i.xc
  %.lobit.i.i.i.i.i.i = ashr <16 x i16> %i.xf, splat (i16 15)
  %i.xg = bitcast <4 x i64> %.val18.i.i.i.i.i to <32 x i8>
  %i.xh = bitcast <4 x i64> %.val19.i.i.i.i.i to <32 x i8>
  %i.xi = bitcast <16 x i16> %.lobit.i.i.i.i.i.i to <32 x i8>
  %i.xj = call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.xg, <32 x i8> %i.xh, <32 x i8> %i.xi)
  %i.xk = xor <16 x i16> %i.xa, %i.xd
  %.lobit43.i.i.i.i.i.i = ashr <16 x i16> %i.xk, splat (i16 15)
  %i.xl = bitcast <16 x i16> %i.xe to <32 x i8>
  %i.xm = bitcast <16 x i16> %.lobit43.i.i.i.i.i.i to <32 x i8>
  %i.xn = call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.xj, <32 x i8> %i.xl, <32 x i8> %i.xm)
  %i.xo = bitcast <32 x i8> %i.xn to <16 x i16>
  %i.xp = sub <16 x i16> %.val36.i.i.i.i.i, %i.xo ; 2 uses
  %i.xq = shl <16 x i16> %i.xp, splat (i16 1)     ; 2 uses
  %.lobit44.i.i.i.i.i.i = ashr <16 x i16> %i.xp, splat (i16 15)
  %i.xr = bitcast <16 x i16> %i.xq to <32 x i8>
  %i.xs = bitcast <16 x i16> %i.xq to <32 x i8>
  %i.xt = xor <32 x i8> %i.xs, splat (i8 -1)
  %i.xu = bitcast <16 x i16> %.lobit44.i.i.i.i.i.i to <32 x i8>
  %i.xv = call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.xr, <32 x i8> %i.xt, <32 x i8> %i.xu) ; 3 uses
  %i.xw = bitcast <32 x i8> %i.xv to <16 x i16>   ; 9 uses
  %i.xx = icmp eq <16 x i16> %i.xw, zeroinitializer
  %i.xy = sext <16 x i1> %i.xx to <16 x i16>
  %i.xz = bitcast <16 x i16> %i.xy to <32 x i8>
  %i.ya = icmp slt <32 x i8> %i.xz, zeroinitializer
  %i.yb = bitcast <32 x i1> %i.ya to i32
  %i.yc = zext i32 %i.yb to i64
  %i.yd = xor i64 %i.yc, -1
  %i.ye = call range(i64 0, 33) i64 @llvm.cttz.i64(i64 range(i64 -4294967296, 0) %i.yd, i1 true)
  %i.yf = lshr i64 %i.ye, 1                       ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.yf, i64 %.sroa.speculated.i.i.i.i) ; 4 uses
  %.not.i.i.i.i.i = icmp samesign ugt i64 %.sroa.speculated.i.i.i.i, %i.yf
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.yg = icmp ne i64 %.pre.i.i.i.i.i, 0
  %i.yh = icmp samesign ugt i64 %.sroa.speculated.i.i.i.i.i, 7
  %or.cond.i.i.i.i.i = or i1 %i.yg, %i.yh
  br i1 %or.cond.i.i.i.i.i, label %bb.v, label %._crit_edge.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.yi = add i64 %.sroa.speculated.i.i.i.i.i, %.pre.i.i.i.i.i ; 2 uses
  store i64 %i.yi, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !189
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.u, %bb.t
  %i.yj = phi i64 [ 0, %bb.u ], [ %.pre.i.i.i.i.i, %bb.t ]
  %i.yk = add i64 %i.yj, %.sroa.speculated.i.i.i.i.i ; 2 uses
  %i.yl = icmp ugt i64 %i.yk, 7
  %i.ym = load ptr, ptr %i.ws, align 16, !tbaa !190 ; 7 uses
  br i1 %i.yl, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.yn = load ptr, ptr %i.ym, align 64, !tbaa !195 ; 6 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 8 ; 2 uses
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !194 ; 8 uses
  %i.yq = add i64 %i.yk, -8                       ; 4 uses
  %i.yr = icmp ult i64 %i.yq, 32
  br i1 %i.yr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 400
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yq
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !85
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yn, i64 144
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %i.yq
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !68
  %i.yy = load ptr, ptr %i.yp, align 8, !tbaa !71
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yp, i64 16 ; 3 uses
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !74
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yy, i64 %i.za
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yp, i64 24 ; 4 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yp, i64 32 ; 4 uses
  %i.ze = load i64, ptr %i.zc, align 8, !tbaa !68 ; 2 uses
  %i.zf = shl i64 %i.yx, %i.ze
  %i.zg = load i64, ptr %i.zd, align 8, !tbaa !68
  %i.zh = or i64 %i.zg, %i.zf                     ; 2 uses
  store i64 %i.zh, ptr %i.zd, align 8, !tbaa !68
  %i.zi = zext i8 %i.yu to i64
  %i.zj = add i64 %i.ze, %i.zi
  store i64 %i.zj, ptr %i.zc, align 8, !tbaa !68
  store i64 %i.zh, ptr %i.zb, align 1
  %i.zk = load i64, ptr %i.zc, align 8, !tbaa !68 ; 3 uses
  %i.zl = lshr i64 %i.zk, 3
  %i.zm = and i64 %i.zk, -8
  %i.zn = and i64 %i.zk, 7
  store i64 %i.zn, ptr %i.zc, align 8, !tbaa !68
  %i.zo = load i64, ptr %i.zd, align 8, !tbaa !68
  %i.zp = lshr i64 %i.zo, %i.zm
  store i64 %i.zp, ptr %i.zd, align 8, !tbaa !68
  %i.zq = load i64, ptr %i.yz, align 8, !tbaa !74
  %i.zr = add i64 %i.zq, %i.zl
  store i64 %i.zr, ptr %i.yz, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.zs = trunc i64 %i.yq to i32                  ; 4 uses
  %i.zt = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.zs, i1 true) ; 2 uses
  %i.zu = xor i32 %i.zt, 31
  %i.zv = icmp ult i32 %i.zs, 16                  ; 3 uses
  %i.zw = sub nuw nsw i32 43, %i.zt
  %i.zx = select i1 %i.zv, i32 %i.zs, i32 %i.zw
  %i.zy = select i1 %i.zv, i32 0, i32 %i.zu       ; 2 uses
  %.neg.i.i.i.i.i.i = shl nsw i32 -1, %i.zy
  %i.zz = add i32 %.neg.i.i.i.i.i.i, %i.zs
  %i.aaa = select i1 %i.zv, i32 0, i32 %i.zz
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw i8, ptr %i.yn, i64 38
  %i.aad = zext i32 %i.zx to i64                  ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aac, i64 %i.aad
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !85 ; 2 uses
  %i.aag = zext i8 %i.aaf to i32
  %i.aah = zext nneg i8 %i.aaf to i64
  %i.aai = shl i64 %i.aab, %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.yn, i64 72
  %i.aak = getelementptr inbounds nuw [2 x i8], ptr %i.aaj, i64 %i.aad
  %i.aal = load i16, ptr %i.aak, align 2, !tbaa !104
  %i.aam = zext i16 %i.aal to i64
  %i.aan = or i64 %i.aai, %i.aam
  %i.aao = load i8, ptr %i.yn, align 8, !tbaa !85 ; 2 uses
  %i.aap = zext i8 %i.aao to i32
  %i.aaq = zext nneg i8 %i.aao to i64
  %i.aar = shl i64 %i.aan, %i.aaq
  %i.aas = getelementptr inbounds nuw i8, ptr %i.yn, i64 19
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !85
  %i.aau = zext i8 %i.aat to i64
  %i.aav = or i64 %i.aar, %i.aau
  %i.aaw = add nuw nsw i32 %i.zy, %i.aag
  %i.aax = add nuw nsw i32 %i.aaw, %i.aap
  %i.aay = load ptr, ptr %i.yp, align 8, !tbaa !71
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.yp, i64 16 ; 3 uses
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !74
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aay, i64 %i.aba
  %i.abc = getelementptr inbounds nuw i8, ptr %i.yp, i64 24 ; 4 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.yp, i64 32 ; 4 uses
  %i.abe = load i64, ptr %i.abc, align 8, !tbaa !68 ; 2 uses
  %i.abf = shl i64 %i.aav, %i.abe
  %i.abg = load i64, ptr %i.abd, align 8, !tbaa !68
  %i.abh = or i64 %i.abg, %i.abf                  ; 2 uses
  store i64 %i.abh, ptr %i.abd, align 8, !tbaa !68
  %i.abi = zext nneg i32 %i.aax to i64
  %i.abj = add i64 %i.abe, %i.abi
  store i64 %i.abj, ptr %i.abc, align 8, !tbaa !68
  store i64 %i.abh, ptr %i.abb, align 1
  %i.abk = load i64, ptr %i.abc, align 8, !tbaa !68 ; 3 uses
  %i.abl = lshr i64 %i.abk, 3
  %i.abm = and i64 %i.abk, -8
  %i.abn = and i64 %i.abk, 7
  store i64 %i.abn, ptr %i.abc, align 8, !tbaa !68
  %i.abo = load i64, ptr %i.abd, align 8, !tbaa !68
  %i.abp = lshr i64 %i.abo, %i.abm
  store i64 %i.abp, ptr %i.abd, align 8, !tbaa !68
  %i.abq = load i64, ptr %i.aaz, align 8, !tbaa !74
  %i.abr = add i64 %i.abq, %i.abl
  store i64 %i.abr, ptr %i.aaz, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i.i.i.i.i

_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %i.abs = getelementptr inbounds nuw i8, ptr %i.ym, i64 64
  %i.abt = getelementptr inbounds nuw i8, ptr %i.ym, i64 128
  %i.abu = load ptr, ptr %i.yo, align 8, !tbaa !194 ; 8 uses
  %4 = load <16 x i8>, ptr %i.abt, align 64, !tbaa !85
  %5 = shufflevector <16 x i8> %4, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %6 = load <16 x i8>, ptr %i.abs, align 64, !tbaa !85
  %7 = shufflevector <16 x i8> %6, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abv = lshr <16 x i16> %i.xw, splat (i16 4)
  %i.abw = lshr <16 x i16> %i.xw, splat (i16 8)
  %i.abx = lshr <16 x i16> %i.xw, splat (i16 12)
  %i.aby = and <32 x i8> %i.xv, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.abz = or <32 x i8> %i.aby, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.aca = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <32 x i8> %i.abz)
  %i.acb = bitcast <16 x i16> %i.abv to <32 x i8>
  %i.acc = and <32 x i8> %i.acb, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.acd = or <32 x i8> %i.acc, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ace = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>, <32 x i8> %i.acd)
  %i.acf = bitcast <16 x i16> %i.abw to <32 x i8>
  %i.acg = and <32 x i8> %i.acf, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.ach = or <32 x i8> %i.acg, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.aci = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12>, <32 x i8> %i.ach)
  %i.acj = bitcast <16 x i16> %i.abx to <32 x i8>
  %i.ack = or <32 x i8> %i.acj, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.acl = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>, <32 x i8> %i.ack)
  %i.acm = bitcast <32 x i8> %i.aca to <16 x i16>
  %i.acn = bitcast <32 x i8> %i.ace to <16 x i16>
  %i.aco = call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.acm, <16 x i16> %i.acn)
  %i.acp = bitcast <32 x i8> %i.aci to <16 x i16>
  %i.acq = bitcast <32 x i8> %i.acl to <16 x i16>
  %i.acr = call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.acp, <16 x i16> %i.acq)
  %i.acs = call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.aco, <16 x i16> %i.acr) ; 2 uses
  %i.act = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.acs, <16 x i16> splat (i16 1)) ; 2 uses
  %i.acu = bitcast <16 x i16> %i.act to <32 x i8>
  %i.acv = or <32 x i8> %i.acu, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.acw = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.acv)
  %i.acx = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.acv)
  %i.acy = bitcast <32 x i8> %i.acx to <16 x i16>
  %i.acz = shl <16 x i16> %i.acy, splat (i16 8)
  %i.ada = bitcast <32 x i8> %i.acw to <16 x i16>
  %i.adb = or <16 x i16> %i.acz, %i.ada
  %i.adc = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.xw, <16 x i16> %i.adb)
  %i.add = bitcast <16 x i16> %i.acs to <32 x i8>
  %i.ade = or <32 x i8> %i.add, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.adf = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %7, <32 x i8> %i.ade) ; 2 uses
  %i.adg = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %5, <32 x i8> %i.ade)
  %i.adh = bitcast <32 x i8> %i.adg to <4 x i64>
  %i.adi = or <32 x i8> %i.adf, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.adj = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.adi)
  %i.adk = bitcast <32 x i8> %i.adj to <16 x i16>
  %i.adl = mul <16 x i16> %i.adc, %i.adk
  %i.adm = bitcast <16 x i16> %i.adl to <4 x i64>
  %i.adn = bitcast <32 x i8> %i.adf to <16 x i16>
  %i.ado = add <16 x i16> %i.act, %i.adn
  %i.adp = bitcast <16 x i16> %i.ado to <4 x i64>
  %i.adq = or <4 x i64> %i.adm, %i.adh
  %i.adr = sub nsw i64 0, %.sroa.speculated.i.i.i.i
  %i.ads = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits166ClipToEmE5kMask, i64 32), i64 %i.adr
  %i.adt = load <4 x i64>, ptr %i.ads, align 2, !tbaa !85 ; 2 uses
  %i.adu = sub nsw i64 0, %.sroa.speculated.i.i.i.i.i
  %i.adv = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits164SkipEmE5kMask, i64 32), i64 %i.adu
  %i.adw = load <4 x i64>, ptr %i.adv, align 2, !tbaa !85 ; 2 uses
  %i.adx = and <4 x i64> %i.adt, %i.adp
  %i.ady = and <4 x i64> %i.adx, %i.adw           ; 2 uses
  %i.adz = and <4 x i64> %i.adt, %i.adq
  %i.aea = and <4 x i64> %i.adz, %i.adw           ; 2 uses
  %i.aeb = bitcast <4 x i64> %i.ady to <8 x i32>
  %i.aec = lshr <8 x i32> %i.aeb, splat (i32 16)
  %i.aed = bitcast <4 x i64> %i.aea to <8 x i32>
  %i.aee = lshr <8 x i32> %i.aed, splat (i32 16)
  %i.aef = and <4 x i64> %i.aea, splat (i64 281470681808895)
  %i.aeg = bitcast <4 x i64> %i.ady to <8 x i32>
  %i.aeh = and <8 x i32> %i.aeg, splat (i32 65535) ; 2 uses
  %i.aei = add nuw nsw <8 x i32> %i.aec, %i.aeh   ; 2 uses
  %i.aej = call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.aee, <8 x i32> %i.aeh)
  %i.aek = bitcast <8 x i32> %i.aej to <4 x i64>
  %i.ael = or <4 x i64> %i.aef, %i.aek            ; 2 uses
  %.val.cast.i89.i.i.i = bitcast <8 x i32> %i.aei to <4 x i64>
  %i.aem = lshr <4 x i64> %.val.cast.i89.i.i.i, splat (i64 32)
  %i.aen = bitcast <8 x i32> %i.aei to <4 x i64>
  %i.aeo = and <4 x i64> %i.aen, splat (i64 131071) ; 2 uses
  %i.aep = lshr <4 x i64> %i.ael, splat (i64 32)
  %i.aeq = and <4 x i64> %i.ael, splat (i64 4294967295)
  %i.aer = add nuw nsw <4 x i64> %i.aem, %i.aeo   ; 4 uses
  %i.aes = call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.aep, <4 x i64> %i.aeo)
  %i.aet = or <4 x i64> %i.aeq, %i.aes            ; 4 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.abu, i64 24 ; 15 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.abu, i64 32 ; 12 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.abu, i64 16 ; 14 uses
  %.sroa.0.0.vec.extract.i90.i.i.i = extractelement <4 x i64> %i.aet, i64 0 ; 2 uses
  %i.aex = load i64, ptr %i.aeu, align 8, !tbaa !86
  %i.aey = shl i64 %.sroa.0.0.vec.extract.i90.i.i.i, %i.aex
  %i.aez = load i64, ptr %i.aev, align 8, !tbaa !87
  %i.afa = or i64 %i.aey, %i.aez                  ; 2 uses
  store i64 %i.afa, ptr %i.aev, align 8, !tbaa !87
  %i.afb = load ptr, ptr %i.abu, align 8, !tbaa !71
  %i.afc = load i64, ptr %i.aew, align 8, !tbaa !74
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.afc
  store i64 %i.afa, ptr %i.afd, align 1
  %i.afe = load i64, ptr %i.aeu, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.0.vec.extract.i91.i.i.i = extractelement <4 x i64> %i.aer, i64 0
  %i.aff = add i64 %i.afe, %.sroa.0140.0.vec.extract.i91.i.i.i ; 4 uses
  store i64 %i.aff, ptr %i.aeu, align 8, !tbaa !86
  %i.afg = icmp ugt i64 %i.aff, 63
  br i1 %i.afg, label %bb.z, label %._crit_edge.i92.i.i.i

._crit_edge.i92.i.i.i:                            ; preds = %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i.i.i.i.i
  %.pre.i93.i.i.i = load i64, ptr %i.aev, align 8, !tbaa !87
  %.pre141.i94.i.i.i = load i64, ptr %i.aew, align 8, !tbaa !74
  br label %bb.aa

bb.z:                                             ; preds = %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i.i.i.i.i
  %i.afh = sub i64 64, %i.afe                     ; 2 uses
  %i.afi = icmp ugt i64 %i.afh, 63
  %i.afj = lshr i64 %.sroa.0.0.vec.extract.i90.i.i.i, %i.afh
  %spec.select.i113.i.i.i = select i1 %i.afi, i64 0, i64 %i.afj
  %i.afk = add i64 %i.aff, -64                    ; 2 uses
  store i64 %i.afk, ptr %i.aeu, align 8, !tbaa !86
  %i.afl = load i64, ptr %i.aew, align 8, !tbaa !74
  %i.afm = add i64 %i.afl, 8                      ; 2 uses
  store i64 %i.afm, ptr %i.aew, align 8, !tbaa !74
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i92.i.i.i
  %i.afn = phi i64 [ %i.afm, %bb.z ], [ %.pre141.i94.i.i.i, %._crit_edge.i92.i.i.i ]
  %i.afo = phi i64 [ %spec.select.i113.i.i.i, %bb.z ], [ %.pre.i93.i.i.i, %._crit_edge.i92.i.i.i ]
  %i.afp = phi i64 [ %i.afk, %bb.z ], [ %i.aff, %._crit_edge.i92.i.i.i ]
  %.sroa.0.8.vec.extract.i95.i.i.i = extractelement <4 x i64> %i.aet, i64 1 ; 2 uses
  %i.afq = shl i64 %.sroa.0.8.vec.extract.i95.i.i.i, %i.afp
  %i.afr = or i64 %i.afq, %i.afo                  ; 2 uses
  store i64 %i.afr, ptr %i.aev, align 8, !tbaa !87
  %i.afs = load ptr, ptr %i.abu, align 8, !tbaa !71
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 %i.afn
  store i64 %i.afr, ptr %i.aft, align 1
  %i.afu = load i64, ptr %i.aeu, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.8.vec.extract.i96.i.i.i = extractelement <4 x i64> %i.aer, i64 1
  %i.afv = add i64 %i.afu, %.sroa.0140.8.vec.extract.i96.i.i.i ; 4 uses
  store i64 %i.afv, ptr %i.aeu, align 8, !tbaa !86
  %i.afw = icmp ugt i64 %i.afv, 63
  br i1 %i.afw, label %bb.ab, label %._crit_edge142.i97.i.i.i

._crit_edge142.i97.i.i.i:                         ; preds = %bb.aa
  %.pre143.i98.i.i.i = load i64, ptr %i.aev, align 8, !tbaa !87
  %.pre144.i99.i.i.i = load i64, ptr %i.aew, align 8, !tbaa !74
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.afx = sub i64 64, %i.afu                     ; 2 uses
  %i.afy = icmp ugt i64 %i.afx, 63
  %i.afz = lshr i64 %.sroa.0.8.vec.extract.i95.i.i.i, %i.afx
  %spec.select.1.i112.i.i.i = select i1 %i.afy, i64 0, i64 %i.afz
  %i.aga = add i64 %i.afv, -64                    ; 2 uses
  store i64 %i.aga, ptr %i.aeu, align 8, !tbaa !86
  %i.agb = load i64, ptr %i.aew, align 8, !tbaa !74
  %i.agc = add i64 %i.agb, 8                      ; 2 uses
  store i64 %i.agc, ptr %i.aew, align 8, !tbaa !74
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge142.i97.i.i.i
  %i.agd = phi i64 [ %i.agc, %bb.ab ], [ %.pre144.i99.i.i.i, %._crit_edge142.i97.i.i.i ]
  %i.age = phi i64 [ %spec.select.1.i112.i.i.i, %bb.ab ], [ %.pre143.i98.i.i.i, %._crit_edge142.i97.i.i.i ]
  %i.agf = phi i64 [ %i.aga, %bb.ab ], [ %i.afv, %._crit_edge142.i97.i.i.i ]
  %.sroa.0.16.vec.extract.i100.i.i.i = extractelement <4 x i64> %i.aet, i64 2 ; 2 uses
  %i.agg = shl i64 %.sroa.0.16.vec.extract.i100.i.i.i, %i.agf
  %i.agh = or i64 %i.agg, %i.age                  ; 2 uses
  store i64 %i.agh, ptr %i.aev, align 8, !tbaa !87
  %i.agi = load ptr, ptr %i.abu, align 8, !tbaa !71
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.agd
  store i64 %i.agh, ptr %i.agj, align 1
  %i.agk = load i64, ptr %i.aeu, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.16.vec.extract.i101.i.i.i = extractelement <4 x i64> %i.aer, i64 2
  %i.agl = add i64 %i.agk, %.sroa.0140.16.vec.extract.i101.i.i.i ; 4 uses
  store i64 %i.agl, ptr %i.aeu, align 8, !tbaa !86
  %i.agm = icmp ugt i64 %i.agl, 63
  br i1 %i.agm, label %bb.ad, label %._crit_edge145.i102.i.i.i

._crit_edge145.i102.i.i.i:                        ; preds = %bb.ac
  %.pre146.i103.i.i.i = load i64, ptr %i.aev, align 8, !tbaa !87
  %.pre147.i104.i.i.i = load i64, ptr %i.aew, align 8, !tbaa !74
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.agn = sub i64 64, %i.agk                     ; 2 uses
  %i.ago = icmp ugt i64 %i.agn, 63
  %i.agp = lshr i64 %.sroa.0.16.vec.extract.i100.i.i.i, %i.agn
  %spec.select.2.i111.i.i.i = select i1 %i.ago, i64 0, i64 %i.agp
  %i.agq = add i64 %i.agl, -64                    ; 2 uses
  store i64 %i.agq, ptr %i.aeu, align 8, !tbaa !86
  %i.agr = load i64, ptr %i.aew, align 8, !tbaa !74
  %i.ags = add i64 %i.agr, 8                      ; 2 uses
  store i64 %i.ags, ptr %i.aew, align 8, !tbaa !74
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge145.i102.i.i.i
  %i.agt = phi i64 [ %i.ags, %bb.ad ], [ %.pre147.i104.i.i.i, %._crit_edge145.i102.i.i.i ]
  %i.agu = phi i64 [ %spec.select.2.i111.i.i.i, %bb.ad ], [ %.pre146.i103.i.i.i, %._crit_edge145.i102.i.i.i ]
  %i.agv = phi i64 [ %i.agq, %bb.ad ], [ %i.agl, %._crit_edge145.i102.i.i.i ]
  %.sroa.0.24.vec.extract.i105.i.i.i = extractelement <4 x i64> %i.aet, i64 3 ; 2 uses
  %i.agw = shl i64 %.sroa.0.24.vec.extract.i105.i.i.i, %i.agv
  %i.agx = or i64 %i.agw, %i.agu                  ; 2 uses
  store i64 %i.agx, ptr %i.aev, align 8, !tbaa !87
  %i.agy = load ptr, ptr %i.abu, align 8, !tbaa !71
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 %i.agt
  store i64 %i.agx, ptr %i.agz, align 1
  %i.aha = load i64, ptr %i.aeu, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.24.vec.extract.i106.i.i.i = extractelement <4 x i64> %i.aer, i64 3
  %i.ahb = add i64 %i.aha, %.sroa.0140.24.vec.extract.i106.i.i.i ; 3 uses
  store i64 %i.ahb, ptr %i.aeu, align 8, !tbaa !86
  %i.ahc = icmp ugt i64 %i.ahb, 63
  %.pre148.i107.i.i.i = load i64, ptr %i.aew, align 8, !tbaa !74 ; 2 uses
  br i1 %i.ahc, label %bb.af, label %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i108.i.i.i

._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i108.i.i.i: ; preds = %bb.ae
  %.pre149.i109.i.i.i = load i64, ptr %i.aev, align 8
  br label %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit114.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ahd = sub i64 64, %i.aha                     ; 2 uses
  %i.ahe = icmp ugt i64 %i.ahd, 63
  %i.ahf = lshr i64 %.sroa.0.24.vec.extract.i105.i.i.i, %i.ahd
  %spec.select.3.i110.i.i.i = select i1 %i.ahe, i64 0, i64 %i.ahf ; 2 uses
  store i64 %spec.select.3.i110.i.i.i, ptr %i.aev, align 8, !tbaa !87
  %i.ahg = add i64 %i.ahb, -64
  store i64 %i.ahg, ptr %i.aeu, align 8, !tbaa !86
  %i.ahh = add i64 %.pre148.i107.i.i.i, 8         ; 2 uses
  store i64 %i.ahh, ptr %i.aew, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit114.i.i.i

_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit114.i.i.i: ; preds = %bb.af, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i108.i.i.i
  %i.ahi = phi i64 [ %spec.select.3.i110.i.i.i, %bb.af ], [ %.pre149.i109.i.i.i, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i108.i.i.i ]
  %i.ahj = phi i64 [ %i.ahh, %bb.af ], [ %.pre148.i107.i.i.i, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i108.i.i.i ]
  %i.ahk = load ptr, ptr %i.abu, align 8, !tbaa !71
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahj
  store i64 %i.ahi, ptr %i.ahl, align 1
  %i.ahm = load i64, ptr %i.aeu, align 8, !tbaa !86 ; 3 uses
  %i.ahn = lshr i64 %i.ahm, 3
  %i.aho = and i64 %i.ahm, -8
  %i.ahp = and i64 %i.ahm, 7
  store i64 %i.ahp, ptr %i.aeu, align 8, !tbaa !86
  %i.ahq = load i64, ptr %i.aev, align 8, !tbaa !87
  %i.ahr = lshr i64 %i.ahq, %i.aho
  store i64 %i.ahr, ptr %i.aev, align 8, !tbaa !87
  %i.ahs = load i64, ptr %i.aew, align 8, !tbaa !74
  %i.aht = add i64 %i.ahs, %i.ahn
  store i64 %i.aht, ptr %i.aew, align 8, !tbaa !74
  store i64 0, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !189
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i.i

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ym, i64 64
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ym, i64 128
  %i.ahx = load ptr, ptr %i.ahu, align 8, !tbaa !194 ; 8 uses
  %8 = load <16 x i8>, ptr %i.ahw, align 8, !tbaa !85
  %9 = shufflevector <16 x i8> %8, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %10 = load <16 x i8>, ptr %i.ahv, align 8, !tbaa !85
  %11 = shufflevector <16 x i8> %10, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahy = lshr <16 x i16> %i.xw, splat (i16 4)
  %i.ahz = lshr <16 x i16> %i.xw, splat (i16 8)
  %i.aia = lshr <16 x i16> %i.xw, splat (i16 12)
  %i.aib = and <32 x i8> %i.xv, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.aic = or <32 x i8> %i.aib, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.aid = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <32 x i8> %i.aic)
  %i.aie = bitcast <16 x i16> %i.ahy to <32 x i8>
  %i.aif = and <32 x i8> %i.aie, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.aig = or <32 x i8> %i.aif, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.aih = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>, <32 x i8> %i.aig)
  %i.aii = bitcast <16 x i16> %i.ahz to <32 x i8>
  %i.aij = and <32 x i8> %i.aii, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.aik = or <32 x i8> %i.aij, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ail = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12>, <32 x i8> %i.aik)
  %i.aim = bitcast <16 x i16> %i.aia to <32 x i8>
  %i.ain = or <32 x i8> %i.aim, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.aio = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>, <32 x i8> %i.ain)
  %i.aip = bitcast <32 x i8> %i.aid to <16 x i16>
  %i.aiq = bitcast <32 x i8> %i.aih to <16 x i16>
  %i.air = call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.aip, <16 x i16> %i.aiq)
  %i.ais = bitcast <32 x i8> %i.ail to <16 x i16>
  %i.ait = bitcast <32 x i8> %i.aio to <16 x i16>
  %i.aiu = call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ais, <16 x i16> %i.ait)
  %i.aiv = call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.air, <16 x i16> %i.aiu) ; 2 uses
  %i.aiw = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.aiv, <16 x i16> splat (i16 1)) ; 2 uses
  %i.aix = bitcast <16 x i16> %i.aiw to <32 x i8>
  %i.aiy = or <32 x i8> %i.aix, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.aiz = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.aiy)
  %i.aja = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.aiy)
  %i.ajb = bitcast <32 x i8> %i.aja to <16 x i16>
  %i.ajc = shl <16 x i16> %i.ajb, splat (i16 8)
  %i.ajd = bitcast <32 x i8> %i.aiz to <16 x i16>
  %i.aje = or <16 x i16> %i.ajc, %i.ajd
  %i.ajf = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.xw, <16 x i16> %i.aje)
  %i.ajg = bitcast <16 x i16> %i.aiv to <32 x i8>
  %i.ajh = or <32 x i8> %i.ajg, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.aji = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %11, <32 x i8> %i.ajh) ; 2 uses
  %i.ajj = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %9, <32 x i8> %i.ajh)
  %i.ajk = bitcast <32 x i8> %i.ajj to <4 x i64>
  %i.ajl = or <32 x i8> %i.aji, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ajm = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ajl)
  %i.ajn = bitcast <32 x i8> %i.ajm to <16 x i16>
  %i.ajo = mul <16 x i16> %i.ajf, %i.ajn
  %i.ajp = bitcast <16 x i16> %i.ajo to <4 x i64>
  %i.ajq = bitcast <32 x i8> %i.aji to <16 x i16>
  %i.ajr = add <16 x i16> %i.aiw, %i.ajq
  %i.ajs = bitcast <16 x i16> %i.ajr to <4 x i64>
  %i.ajt = or <4 x i64> %i.ajp, %i.ajk
  %i.aju = sub nsw i64 0, %.sroa.speculated.i.i.i.i
  %i.ajv = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits166ClipToEmE5kMask, i64 32), i64 %i.aju
  %i.ajw = load <4 x i64>, ptr %i.ajv, align 2, !tbaa !85 ; 2 uses
  %i.ajx = and <4 x i64> %i.ajw, %i.ajs           ; 2 uses
  %i.ajy = and <4 x i64> %i.ajt, %i.ajw           ; 2 uses
  %i.ajz = bitcast <4 x i64> %i.ajx to <8 x i32>
  %i.aka = lshr <8 x i32> %i.ajz, splat (i32 16)
  %i.akb = bitcast <4 x i64> %i.ajy to <8 x i32>
  %i.akc = lshr <8 x i32> %i.akb, splat (i32 16)
  %i.akd = and <4 x i64> %i.ajy, splat (i64 281470681808895)
  %i.ake = bitcast <4 x i64> %i.ajx to <8 x i32>
  %i.akf = and <8 x i32> %i.ake, splat (i32 65535) ; 2 uses
  %i.akg = add nuw nsw <8 x i32> %i.aka, %i.akf   ; 2 uses
  %i.akh = call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.akc, <8 x i32> %i.akf)
  %i.aki = bitcast <8 x i32> %i.akh to <4 x i64>
  %i.akj = or <4 x i64> %i.akd, %i.aki            ; 2 uses
  %.val.cast.i.i.i.i = bitcast <8 x i32> %i.akg to <4 x i64>
  %i.akk = lshr <4 x i64> %.val.cast.i.i.i.i, splat (i64 32)
  %i.akl = bitcast <8 x i32> %i.akg to <4 x i64>
  %i.akm = and <4 x i64> %i.akl, splat (i64 131071) ; 2 uses
  %i.akn = lshr <4 x i64> %i.akj, splat (i64 32)
  %i.ako = and <4 x i64> %i.akj, splat (i64 4294967295)
  %i.akp = add nuw nsw <4 x i64> %i.akk, %i.akm   ; 4 uses
  %i.akq = call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.akn, <4 x i64> %i.akm)
  %i.akr = or <4 x i64> %i.ako, %i.akq            ; 4 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ahx, i64 24 ; 15 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.ahx, i64 32 ; 12 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ahx, i64 16 ; 14 uses
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <4 x i64> %i.akr, i64 0 ; 2 uses
  %i.akv = load i64, ptr %i.aks, align 8, !tbaa !86
  %i.akw = shl i64 %.sroa.0.0.vec.extract.i.i.i.i, %i.akv
  %i.akx = load i64, ptr %i.akt, align 8, !tbaa !87
  %i.aky = or i64 %i.akw, %i.akx                  ; 2 uses
  store i64 %i.aky, ptr %i.akt, align 8, !tbaa !87
  %i.akz = load ptr, ptr %i.ahx, align 8, !tbaa !71
  %i.ala = load i64, ptr %i.aku, align 8, !tbaa !74
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akz, i64 %i.ala
  store i64 %i.aky, ptr %i.alb, align 1
  %i.alc = load i64, ptr %i.aks, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.0.vec.extract.i.i.i.i = extractelement <4 x i64> %i.akp, i64 0
  %i.ald = add i64 %i.alc, %.sroa.0140.0.vec.extract.i.i.i.i ; 4 uses
  store i64 %i.ald, ptr %i.aks, align 8, !tbaa !86
  %i.ale = icmp ugt i64 %i.ald, 63
  br i1 %i.ale, label %bb.ah, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ag
  %.pre.i.i.i.i = load i64, ptr %i.akt, align 8, !tbaa !87
  %.pre141.i.i.i.i = load i64, ptr %i.aku, align 8, !tbaa !74
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.alf = sub i64 64, %i.alc                     ; 2 uses
  %i.alg = icmp ugt i64 %i.alf, 63
  %i.alh = lshr i64 %.sroa.0.0.vec.extract.i.i.i.i, %i.alf
  %spec.select.i.i.i.i = select i1 %i.alg, i64 0, i64 %i.alh
  %i.ali = add i64 %i.ald, -64                    ; 2 uses
  store i64 %i.ali, ptr %i.aks, align 8, !tbaa !86
  %i.alj = load i64, ptr %i.aku, align 8, !tbaa !74
  %i.alk = add i64 %i.alj, 8                      ; 2 uses
  store i64 %i.alk, ptr %i.aku, align 8, !tbaa !74
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i.i.i.i
  %i.all = phi i64 [ %i.alk, %bb.ah ], [ %.pre141.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.alm = phi i64 [ %spec.select.i.i.i.i, %bb.ah ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.aln = phi i64 [ %i.ali, %bb.ah ], [ %i.ald, %._crit_edge.i.i.i.i ]
  %.sroa.0.8.vec.extract.i.i.i.i = extractelement <4 x i64> %i.akr, i64 1 ; 2 uses
  %i.alo = shl i64 %.sroa.0.8.vec.extract.i.i.i.i, %i.aln
  %i.alp = or i64 %i.alo, %i.alm                  ; 2 uses
  store i64 %i.alp, ptr %i.akt, align 8, !tbaa !87
  %i.alq = load ptr, ptr %i.ahx, align 8, !tbaa !71
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 %i.all
  store i64 %i.alp, ptr %i.alr, align 1
  %i.als = load i64, ptr %i.aks, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.8.vec.extract.i.i.i.i = extractelement <4 x i64> %i.akp, i64 1
  %i.alt = add i64 %i.als, %.sroa.0140.8.vec.extract.i.i.i.i ; 4 uses
  store i64 %i.alt, ptr %i.aks, align 8, !tbaa !86
  %i.alu = icmp ugt i64 %i.alt, 63
  br i1 %i.alu, label %bb.aj, label %._crit_edge142.i.i.i.i

._crit_edge142.i.i.i.i:                           ; preds = %bb.ai
  %.pre143.i.i.i.i = load i64, ptr %i.akt, align 8, !tbaa !87
  %.pre144.i.i.i.i = load i64, ptr %i.aku, align 8, !tbaa !74
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.alv = sub i64 64, %i.als                     ; 2 uses
  %i.alw = icmp ugt i64 %i.alv, 63
  %i.alx = lshr i64 %.sroa.0.8.vec.extract.i.i.i.i, %i.alv
  %spec.select.1.i.i.i.i = select i1 %i.alw, i64 0, i64 %i.alx
  %i.aly = add i64 %i.alt, -64                    ; 2 uses
  store i64 %i.aly, ptr %i.aks, align 8, !tbaa !86
  %i.alz = load i64, ptr %i.aku, align 8, !tbaa !74
  %i.ama = add i64 %i.alz, 8                      ; 2 uses
  store i64 %i.ama, ptr %i.aku, align 8, !tbaa !74
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge142.i.i.i.i
  %i.amb = phi i64 [ %i.ama, %bb.aj ], [ %.pre144.i.i.i.i, %._crit_edge142.i.i.i.i ]
  %i.amc = phi i64 [ %spec.select.1.i.i.i.i, %bb.aj ], [ %.pre143.i.i.i.i, %._crit_edge142.i.i.i.i ]
  %i.amd = phi i64 [ %i.aly, %bb.aj ], [ %i.alt, %._crit_edge142.i.i.i.i ]
  %.sroa.0.16.vec.extract.i.i.i.i = extractelement <4 x i64> %i.akr, i64 2 ; 2 uses
  %i.ame = shl i64 %.sroa.0.16.vec.extract.i.i.i.i, %i.amd
  %i.amf = or i64 %i.ame, %i.amc                  ; 2 uses
  store i64 %i.amf, ptr %i.akt, align 8, !tbaa !87
  %i.amg = load ptr, ptr %i.ahx, align 8, !tbaa !71
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 %i.amb
  store i64 %i.amf, ptr %i.amh, align 1
  %i.ami = load i64, ptr %i.aks, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.16.vec.extract.i.i.i.i = extractelement <4 x i64> %i.akp, i64 2
  %i.amj = add i64 %i.ami, %.sroa.0140.16.vec.extract.i.i.i.i ; 4 uses
  store i64 %i.amj, ptr %i.aks, align 8, !tbaa !86
  %i.amk = icmp ugt i64 %i.amj, 63
  br i1 %i.amk, label %bb.al, label %._crit_edge145.i.i.i.i

._crit_edge145.i.i.i.i:                           ; preds = %bb.ak
  %.pre146.i.i.i.i = load i64, ptr %i.akt, align 8, !tbaa !87
  %.pre147.i.i.i.i = load i64, ptr %i.aku, align 8, !tbaa !74
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.aml = sub i64 64, %i.ami                     ; 2 uses
  %i.amm = icmp ugt i64 %i.aml, 63
  %i.amn = lshr i64 %.sroa.0.16.vec.extract.i.i.i.i, %i.aml
  %spec.select.2.i.i.i.i = select i1 %i.amm, i64 0, i64 %i.amn
  %i.amo = add i64 %i.amj, -64                    ; 2 uses
  store i64 %i.amo, ptr %i.aks, align 8, !tbaa !86
  %i.amp = load i64, ptr %i.aku, align 8, !tbaa !74
  %i.amq = add i64 %i.amp, 8                      ; 2 uses
  store i64 %i.amq, ptr %i.aku, align 8, !tbaa !74
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge145.i.i.i.i
  %i.amr = phi i64 [ %i.amq, %bb.al ], [ %.pre147.i.i.i.i, %._crit_edge145.i.i.i.i ]
  %i.ams = phi i64 [ %spec.select.2.i.i.i.i, %bb.al ], [ %.pre146.i.i.i.i, %._crit_edge145.i.i.i.i ]
  %i.amt = phi i64 [ %i.amo, %bb.al ], [ %i.amj, %._crit_edge145.i.i.i.i ]
  %.sroa.0.24.vec.extract.i.i.i.i = extractelement <4 x i64> %i.akr, i64 3 ; 2 uses
  %i.amu = shl i64 %.sroa.0.24.vec.extract.i.i.i.i, %i.amt
  %i.amv = or i64 %i.amu, %i.ams                  ; 2 uses
  store i64 %i.amv, ptr %i.akt, align 8, !tbaa !87
  %i.amw = load ptr, ptr %i.ahx, align 8, !tbaa !71
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 %i.amr
  store i64 %i.amv, ptr %i.amx, align 1
  %i.amy = load i64, ptr %i.aks, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.24.vec.extract.i.i.i.i = extractelement <4 x i64> %i.akp, i64 3
  %i.amz = add i64 %i.amy, %.sroa.0140.24.vec.extract.i.i.i.i ; 3 uses
  store i64 %i.amz, ptr %i.aks, align 8, !tbaa !86
  %i.ana = icmp ugt i64 %i.amz, 63
  %.pre148.i.i.i.i = load i64, ptr %i.aku, align 8, !tbaa !74 ; 2 uses
  br i1 %i.ana, label %bb.an, label %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i.i.i.i

._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i.i.i.i: ; preds = %bb.am
  %.pre149.i.i.i.i = load i64, ptr %i.akt, align 8
  br label %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.anb = sub i64 64, %i.amy                     ; 2 uses
  %i.anc = icmp ugt i64 %i.anb, 63
  %i.and = lshr i64 %.sroa.0.24.vec.extract.i.i.i.i, %i.anb
  %spec.select.3.i.i.i.i = select i1 %i.anc, i64 0, i64 %i.and ; 2 uses
  store i64 %spec.select.3.i.i.i.i, ptr %i.akt, align 8, !tbaa !87
  %i.ane = add i64 %i.amz, -64
  store i64 %i.ane, ptr %i.aks, align 8, !tbaa !86
  %i.anf = add i64 %.pre148.i.i.i.i, 8            ; 2 uses
  store i64 %i.anf, ptr %i.aku, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit.i.i.i

_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit.i.i.i: ; preds = %bb.an, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i.i.i.i
  %i.ang = phi i64 [ %spec.select.3.i.i.i.i, %bb.an ], [ %.pre149.i.i.i.i, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i.i.i.i ]
  %i.anh = phi i64 [ %i.anf, %bb.an ], [ %.pre148.i.i.i.i, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i.i.i.i ]
  %i.ani = load ptr, ptr %i.ahx, align 8, !tbaa !71
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 %i.anh
  store i64 %i.ang, ptr %i.anj, align 1
  %i.ank = load i64, ptr %i.aks, align 8, !tbaa !86 ; 3 uses
  %i.anl = lshr i64 %i.ank, 3
  %i.anm = and i64 %i.ank, -8
  %i.ann = and i64 %i.ank, 7
  store i64 %i.ann, ptr %i.aks, align 8, !tbaa !86
  %i.ano = load i64, ptr %i.akt, align 8, !tbaa !87
  %i.anp = lshr i64 %i.ano, %i.anm
  store i64 %i.anp, ptr %i.akt, align 8, !tbaa !87
  %i.anq = load i64, ptr %i.aku, align 8, !tbaa !74
  %i.anr = add i64 %i.anq, %i.anl
  store i64 %i.anr, ptr %i.aku, align 8, !tbaa !74
  %.pre.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !189
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i.i

_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i.i: ; preds = %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit.i.i.i, %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit114.i.i.i, %bb.v
  %.pre.i18.i.i.i.i = phi i64 [ %i.yi, %bb.v ], [ 0, %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit114.i.i.i ], [ %.pre.i.pre.i.i.i.i, %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit.i.i.i ]
  %i.ans = add nuw nsw i64 %.015.i.i.i.i, 16      ; 2 uses
end_hunk_1
begin_hunk_2_@_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13From9To13BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m:bb.a
  %.val.val81.i.i.i = load ptr, ptr %i.aul, align 8, !tbaa !1584 ; 8 uses
  %i.aum = icmp eq i64 %.val80.i.i.i, 0
  br i1 %i.aum, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_13From9To13BitsEEES3_E8FinalizeEv.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph157.i.i.i
  %i.aun = add i64 %.val80.i.i.i, -8              ; 4 uses
  %i.auo = icmp ult i64 %i.aun, 32
  br i1 %i.auo, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.aup = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 400
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 %i.aun
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !85
  %i.aus = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 144
  %i.aut = getelementptr inbounds nuw [8 x i8], ptr %i.aus, i64 %i.aun
  %i.auu = load i64, ptr %i.aut, align 8, !tbaa !68
  %i.auv = load ptr, ptr %.val.val81.i.i.i, align 8, !tbaa !71
  %i.auw = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 16 ; 3 uses
  %i.aux = load i64, ptr %i.auw, align 8, !tbaa !74
  %i.auy = getelementptr inbounds nuw i8, ptr %i.auv, i64 %i.aux
  %i.auz = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 24 ; 4 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 32 ; 4 uses
  %i.avb = load i64, ptr %i.auz, align 8, !tbaa !68 ; 2 uses
  %i.avc = shl i64 %i.auu, %i.avb
  %i.avd = load i64, ptr %i.ava, align 8, !tbaa !68
  %i.ave = or i64 %i.avd, %i.avc                  ; 2 uses
  store i64 %i.ave, ptr %i.ava, align 8, !tbaa !68
  %i.avf = zext i8 %i.aur to i64
  %i.avg = add i64 %i.avb, %i.avf
  store i64 %i.avg, ptr %i.auz, align 8, !tbaa !68
  store i64 %i.ave, ptr %i.auy, align 1
  %i.avh = load i64, ptr %i.auz, align 8, !tbaa !68 ; 3 uses
  %i.avi = lshr i64 %i.avh, 3
  %i.avj = and i64 %i.avh, -8
  %i.avk = and i64 %i.avh, 7
  store i64 %i.avk, ptr %i.auz, align 8, !tbaa !68
  %i.avl = load i64, ptr %i.ava, align 8, !tbaa !68
  %i.avm = lshr i64 %i.avl, %i.avj
  store i64 %i.avm, ptr %i.ava, align 8, !tbaa !68
  %i.avn = load i64, ptr %i.auw, align 8, !tbaa !74
  %i.avo = add i64 %i.avn, %i.avi
  store i64 %i.avo, ptr %i.auw, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_13From9To13BitsEEES3_E8FinalizeEv.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.avp = trunc i64 %i.aun to i32                ; 4 uses
  %i.avq = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.avp, i1 true) ; 2 uses
  %i.avr = xor i32 %i.avq, 31
  %i.avs = icmp ult i32 %i.avp, 16                ; 3 uses
  %i.avt = sub nuw nsw i32 43, %i.avq
  %i.avu = select i1 %i.avs, i32 %i.avp, i32 %i.avt
  %i.avv = select i1 %i.avs, i32 0, i32 %i.avr    ; 2 uses
  %.neg.i.i.i131.i.i.i = shl nsw i32 -1, %i.avv
  %i.avw = add i32 %.neg.i.i.i131.i.i.i, %i.avp
  %i.avx = select i1 %i.avs, i32 0, i32 %i.avw
  %i.avy = zext i32 %i.avx to i64
  %i.avz = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 38
  %i.awa = zext nneg i32 %i.avu to i64            ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avz, i64 %i.awa
  %i.awc = load i8, ptr %i.awb, align 1, !tbaa !85 ; 2 uses
  %i.awd = zext i8 %i.awc to i32
  %i.awe = zext nneg i8 %i.awc to i64
  %i.awf = shl i64 %i.avy, %i.awe
  %i.awg = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 72
  %i.awh = getelementptr inbounds nuw [2 x i8], ptr %i.awg, i64 %i.awa
  %i.awi = load i16, ptr %i.awh, align 2, !tbaa !104
  %i.awj = zext i16 %i.awi to i64
  %i.awk = or i64 %i.awf, %i.awj
  %i.awl = load i8, ptr %.val.val.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.awm = zext i8 %i.awl to i32
  %i.awn = zext nneg i8 %i.awl to i64
  %i.awo = shl i64 %i.awk, %i.awn
  %i.awp = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 19
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !85
  %i.awr = zext i8 %i.awq to i64
  %i.aws = or i64 %i.awo, %i.awr
  %i.awt = add nuw nsw i32 %i.avv, %i.awd
  %i.awu = add nuw nsw i32 %i.awt, %i.awm
  %i.awv = load ptr, ptr %.val.val81.i.i.i, align 8, !tbaa !71
  %i.aww = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 16 ; 3 uses
  %i.awx = load i64, ptr %i.aww, align 8, !tbaa !74
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awv, i64 %i.awx
  %i.awz = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 24 ; 4 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 32 ; 4 uses
  %i.axb = load i64, ptr %i.awz, align 8, !tbaa !68 ; 2 uses
  %i.axc = shl i64 %i.aws, %i.axb
  %i.axd = load i64, ptr %i.axa, align 8, !tbaa !68
  %i.axe = or i64 %i.axd, %i.axc                  ; 2 uses
  store i64 %i.axe, ptr %i.axa, align 8, !tbaa !68
  %i.axf = zext nneg i32 %i.awu to i64
  %i.axg = add i64 %i.axb, %i.axf
  store i64 %i.axg, ptr %i.awz, align 8, !tbaa !68
  store i64 %i.axe, ptr %i.awy, align 1
  %i.axh = load i64, ptr %i.awz, align 8, !tbaa !68 ; 3 uses
  %i.axi = lshr i64 %i.axh, 3
  %i.axj = and i64 %i.axh, -8
  %i.axk = and i64 %i.axh, 7
  store i64 %i.axk, ptr %i.awz, align 8, !tbaa !68
  %i.axl = load i64, ptr %i.axa, align 8, !tbaa !68
  %i.axm = lshr i64 %i.axl, %i.axj
  store i64 %i.axm, ptr %i.axa, align 8, !tbaa !68
  %i.axn = load i64, ptr %i.aww, align 8, !tbaa !74
  %i.axo = add i64 %i.axn, %i.axi
  store i64 %i.axo, ptr %i.aww, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_13From9To13BitsEEES3_E8FinalizeEv.exit.i.i.i

_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_13From9To13BitsEEES3_E8FinalizeEv.exit.i.i.i: ; preds = %bb.al, %bb.ak, %.lr.ph157.i.i.i
  %i.axp = add nuw nsw i64 %.0156.i.i.i, 1        ; 2 uses
  %exitcond182.not.i.i.i = icmp eq i64 %i.axp, %i.bg
  br i1 %exitcond182.not.i.i.i, label %._crit_edge158.i.i.i, label %.lr.ph157.i.i.i, !llvm.loop !1530

.lr.ph58.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph58.i.i
  %.03457.i.i = phi i64 [ %i.axy, %.lr.ph58.i.i ], [ 0, %.preheader.i.i ] ; 5 uses
  %i.axq = getelementptr inbounds nuw [192 x i8], ptr %2, i64 %.03457.i.i ; 5 uses
  %i.axr = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.03457.i.i
  store ptr %i.axq, ptr %i.axr, align 16, !tbaa !1581
  %i.axs = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %.03457.i.i
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axq, i64 8
  store ptr %i.axs, ptr %i.axt, align 8, !tbaa !1584
  %i.axu = getelementptr inbounds nuw [440 x i8], ptr %i.bj, i64 %.03457.i.i ; 3 uses
  store ptr %i.axu, ptr %i.axq, align 64, !tbaa !1583
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 19
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axq, i64 64
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axq, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.axw, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.axu, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.axx, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.axv, i64 16, i1 false)
  %i.axy = add nuw nsw i64 %.03457.i.i, 1         ; 2 uses
  %exitcond75.not.i.i = icmp eq i64 %i.axy, %i.bg
  br i1 %exitcond75.not.i.i, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i, label %.lr.ph58.i.i, !llvm.loop !1531

_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_13From9To13BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i: ; preds = %bb.ai, %._crit_edge158.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13From9To13BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

bb.am:                                            ; preds = %bb.d
  %i.axz = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.aya = getelementptr inbounds nuw i8, ptr %i.aw, i64 1888
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !90
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.ayd = load i64, ptr %i.ayc, align 8, !tbaa !73
  call fastcc void @_ZN4AVX212_GLOBAL__N_121WriteACSectionPaletteEPKhmmmmmbPKN12_GLOBAL__N_110PrefixCodeEPKsmRNS3_9BitWriterE(ptr noundef %i.ai, i64 noundef %.sroa.speculated35.i, i64 noundef %.sroa.speculated.i, i64 noundef %i.bb, i1 noundef zeroext %i.be, ptr noundef nonnull %i.axz, ptr noundef %i.ayb, i64 noundef %i.ayd, ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #38
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13From9To13BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13From9To13BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit: ; preds = %_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_13From9To13BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i, %bb.am
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.ayi = load <2 x i64>, ptr %i.aye, align 8, !tbaa !68
  %i.ayj = load <2 x i64>, ptr %i.ayf, align 8, !tbaa !68
  %i.ayk = load <2 x i64>, ptr %i.ayg, align 8, !tbaa !68
  %i.ayl = load <2 x i64>, ptr %i.ayh, align 8, !tbaa !68
  %i.aym = add <2 x i64> %i.ayi, <i64 0, i64 7>
  %i.ayn = add <2 x i64> %i.aym, %i.ayj
  %i.ayo = add <2 x i64> %i.ayn, %i.ayk
  %i.ayp = add <2 x i64> %i.ayo, %i.ayl           ; 2 uses
  %i.ayq = extractelement <2 x i64> %i.ayp, i64 1
  %i.ayr = lshr i64 %i.ayq, 3
  %i.ays = extractelement <2 x i64> %i.ayp, i64 0
  %i.ayt = add i64 %i.ays, %i.ayr
  %i.ayu = and i64 %i.ayt, 2305843009213693951
  %i.ayv = load ptr, ptr %i.h, align 8, !tbaa !1534, !nonnull !121, !align !176
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !151
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 1976
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !70
  %i.ayz = getelementptr inbounds nuw [8 x i8], ptr %i.ayy, i64 %i.z
  store i64 %i.ayu, ptr %i.ayz, align 8, !tbaa !68
  call void %.sroa.610.0.copyload.i(ptr noundef %.sroa.07.0.copyload.i, ptr noundef %i.ai) #36, !inline_history !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4AVX212_GLOBAL__N_113From9To13Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %5) unnamed_addr #31 align 2 {
bb.a:
  %i.a = shl i64 %2, 1                            ; 2 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 16)
  %.sroa.speculated.i13 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 16)
  %i.c = sub nsw i64 0, %.sroa.speculated.i13
  %i.d = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits164SkipEmE5kMask, i64 32), i64 %i.c
  %i.e = load <4 x i64>, ptr %i.d, align 4, !tbaa !85 ; 2 uses
  %i.f = shl i64 %1, 1                            ; 2 uses
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 16)
  %.sroa.speculated.i12 = tail call i64 @llvm.umin.i64(i64 %i.g, i64 16)
  %i.h = sub nsw i64 0, %.sroa.speculated.i12
  %i.i = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits166ClipToEmE5kMask, i64 32), i64 %i.h
  %i.j = load <4 x i64>, ptr %i.i, align 4, !tbaa !85 ; 2 uses
  %i.k = and <4 x i64> %i.e, %i.j                 ; 2 uses
  %invariant.op89 = and <4 x i64> %i.k, splat (i64 281470681808895)
  %.sroa.speculated.i11 = tail call i64 @llvm.umin.i64(i64 %i.a, i64 16)
  %i.l = sub nsw i64 0, %.sroa.speculated.i11
  %i.m = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits164SkipEmE5kMask, i64 32), i64 %i.l
  %i.n = load <4 x i64>, ptr %i.m, align 4, !tbaa !85 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 16)
  %i.o = sub nsw i64 0, %.sroa.speculated.i
  %i.p = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits166ClipToEmE5kMask, i64 32), i64 %i.o
  %i.q = load <4 x i64>, ptr %i.p, align 4, !tbaa !85 ; 2 uses
  %i.r = and <4 x i64> %i.n, %i.q                 ; 2 uses
  %invariant.op = and <4 x i64> %i.r, splat (i64 281470681808895)
  %6 = load <16 x i8>, ptr %4, align 1, !tbaa !85
  %7 = shufflevector <16 x i8> %6, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %8 = load <16 x i8>, ptr %3, align 1, !tbaa !85
  %9 = shufflevector <16 x i8> %8, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.s = load <4 x i64>, ptr %0, align 1, !tbaa !85 ; 2 uses
  %i.t = bitcast <4 x i64> %i.s to <16 x i16>     ; 4 uses
  %i.u = lshr <16 x i16> %i.t, splat (i16 4)
  %i.v = lshr <16 x i16> %i.t, splat (i16 8)
  %i.w = lshr <16 x i16> %i.t, splat (i16 12)
  %i.x = bitcast <4 x i64> %i.s to <32 x i8>
  %i.y = and <32 x i8> %i.x, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.z = or <32 x i8> %i.y, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.aa = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <32 x i8> %i.z)
  %i.ab = bitcast <16 x i16> %i.u to <32 x i8>
  %i.ac = and <32 x i8> %i.ab, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.ad = or <32 x i8> %i.ac, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ae = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>, <32 x i8> %i.ad)
  %i.af = bitcast <16 x i16> %i.v to <32 x i8>
  %i.ag = and <32 x i8> %i.af, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.ah = or <32 x i8> %i.ag, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ai = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12>, <32 x i8> %i.ah)
  %i.aj = bitcast <16 x i16> %i.w to <32 x i8>
  %i.ak = or <32 x i8> %i.aj, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.al = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>, <32 x i8> %i.ak)
  %i.am = bitcast <32 x i8> %i.aa to <16 x i16>
  %i.an = bitcast <32 x i8> %i.ae to <16 x i16>
  %i.ao = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.am, <16 x i16> %i.an)
  %i.ap = bitcast <32 x i8> %i.ai to <16 x i16>
  %i.aq = bitcast <32 x i8> %i.al to <16 x i16>
  %i.ar = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ap, <16 x i16> %i.aq)
  %i.as = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ao, <16 x i16> %i.ar) ; 2 uses
  %i.at = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.as, <16 x i16> splat (i16 1)) ; 3 uses
  %i.au = bitcast <16 x i16> %i.at to <32 x i8>
  %i.av = or <32 x i8> %i.au, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.aw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.av)
  %i.ax = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.av)
  %i.ay = bitcast <32 x i8> %i.ax to <16 x i16>
  %i.az = shl <16 x i16> %i.ay, splat (i16 8)
  %i.ba = bitcast <32 x i8> %i.aw to <16 x i16>
  %i.bb = or <16 x i16> %i.az, %i.ba
  %i.bc = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.t, <16 x i16> %i.bb) ; 2 uses
  %i.bd = bitcast <16 x i16> %i.as to <32 x i8>
  %i.be = or <32 x i8> %i.bd, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.bf = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %9, <32 x i8> %i.be)
  %i.bg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %7, <32 x i8> %i.be)
  %i.bh = bitcast <32 x i8> %i.bg to <16 x i16>   ; 2 uses
  %i.bi = shufflevector <16 x i16> %i.bh, <16 x i16> %i.bc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bj = bitcast <16 x i16> %i.bi to <4 x i64>
  %i.bk = shufflevector <16 x i16> %i.bh, <16 x i16> %i.bc, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bl = bitcast <16 x i16> %i.bk to <4 x i64>
  %i.bm = shufflevector <16 x i16> %i.bi, <16 x i16> %i.bk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bn = bitcast <16 x i16> %i.bm to <4 x i64>   ; 2 uses
  %i.bo = shufflevector <4 x i64> %i.bj, <4 x i64> %i.bl, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.bp = bitcast <32 x i8> %i.bf to <16 x i16>   ; 2 uses
  %i.bq = shufflevector <16 x i16> %i.bp, <16 x i16> %i.at, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.br = bitcast <16 x i16> %i.bq to <4 x i64>
  %i.bs = shufflevector <16 x i16> %i.bp, <16 x i16> %i.at, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bt = bitcast <16 x i16> %i.bs to <4 x i64>
  %i.bu = shufflevector <16 x i16> %i.bq, <16 x i16> %i.bs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bv = bitcast <16 x i16> %i.bu to <4 x i64>
  %i.bw = shufflevector <4 x i64> %i.br, <4 x i64> %i.bt, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bx = and <4 x i64> %i.q, %i.bv
  %i.by = and <4 x i64> %i.bx, %i.n               ; 2 uses
  %i.bz = and <4 x i64> %i.r, %i.bn
  %i.ca = and <4 x i64> %i.j, %i.bw
  %i.cb = and <4 x i64> %i.ca, %i.e               ; 2 uses
  %i.cc = and <4 x i64> %i.k, %i.bo
  %i.cd = bitcast <4 x i64> %i.by to <8 x i32>
  %i.ce = lshr <8 x i32> %i.cd, splat (i32 16)
  %i.cf = bitcast <4 x i64> %i.bz to <8 x i32>
  %i.cg = lshr <8 x i32> %i.cf, splat (i32 16)
  %.reass.le = and <4 x i64> %invariant.op, %i.bn
  %i.ch = bitcast <4 x i64> %i.by to <8 x i32>
  %i.ci = and <8 x i32> %i.ch, splat (i32 65535)  ; 2 uses
  %i.cj = add nuw nsw <8 x i32> %i.ce, %i.ci      ; 2 uses
  %i.ck = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.cg, <8 x i32> %i.ci)
  %i.cl = bitcast <8 x i32> %i.ck to <4 x i64>
  %i.cm = or <4 x i64> %.reass.le, %i.cl          ; 2 uses
  %i.cn = bitcast <4 x i64> %i.cb to <8 x i32>
  %i.co = lshr <8 x i32> %i.cn, splat (i32 16)
  %i.cp = bitcast <4 x i64> %i.cc to <8 x i32>
  %i.cq = lshr <8 x i32> %i.cp, splat (i32 16)
  %.reass90.le = and <4 x i64> %i.bo, %invariant.op89
  %i.cr = bitcast <4 x i64> %i.cb to <8 x i32>
  %i.cs = and <8 x i32> %i.cr, splat (i32 65535)  ; 2 uses
  %i.ct = add nuw nsw <8 x i32> %i.co, %i.cs      ; 2 uses
  %i.cu = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.cq, <8 x i32> %i.cs)
  %i.cv = bitcast <8 x i32> %i.cu to <4 x i64>
  %i.cw = or <4 x i64> %.reass90.le, %i.cv        ; 2 uses
  %i.cx = bitcast <8 x i32> %i.ct to <4 x i64>
  %.val5.cast = bitcast <8 x i32> %i.cj to <4 x i64>
  %i.cy = lshr <4 x i64> %.val5.cast, splat (i64 32)
  %i.cz = bitcast <8 x i32> %i.cj to <4 x i64>
  %i.da = and <4 x i64> %i.cz, splat (i64 131071) ; 2 uses
  %i.db = lshr <4 x i64> %i.cm, splat (i64 32)
  %i.dc = and <4 x i64> %i.cm, splat (i64 4294967295)
  %i.dd = add nuw nsw <4 x i64> %i.cy, %i.da      ; 4 uses
  %i.de = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.db, <4 x i64> %i.da)
  %i.df = or <4 x i64> %i.de, %i.dc               ; 4 uses
  %i.dg = lshr <4 x i64> %i.cx, splat (i64 32)
  %i.dh = bitcast <8 x i32> %i.ct to <4 x i64>
  %i.di = and <4 x i64> %i.dh, splat (i64 131071) ; 2 uses
  %i.dj = lshr <4 x i64> %i.cw, splat (i64 32)
  %i.dk = and <4 x i64> %i.cw, splat (i64 4294967295)
  %i.dl = add nuw nsw <4 x i64> %i.dg, %i.di      ; 4 uses
  %i.dm = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.dj, <4 x i64> %i.di)
  %i.dn = or <4 x i64> %i.dm, %i.dk               ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 27 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 20 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 26 uses
  %.sroa.0181.0.vec.extract = extractelement <4 x i64> %i.df, i64 0 ; 2 uses
  %i.dr = load i64, ptr %i.do, align 8, !tbaa !86
  %i.ds = shl i64 %.sroa.0181.0.vec.extract, %i.dr
  %i.dt = load i64, ptr %i.dp, align 8, !tbaa !87
  %i.du = or i64 %i.dt, %i.ds                     ; 2 uses
  store i64 %i.du, ptr %i.dp, align 8, !tbaa !87
  %i.dv = load ptr, ptr %5, align 8, !tbaa !71
  %i.dw = load i64, ptr %i.dq, align 8, !tbaa !74
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw
  store i64 %i.du, ptr %i.dx, align 1
  %i.dy = load i64, ptr %i.do, align 8, !tbaa !86 ; 2 uses
  %.sroa.0183.0.vec.extract = extractelement <4 x i64> %i.dd, i64 0
  %i.dz = add i64 %.sroa.0183.0.vec.extract, %i.dy ; 4 uses
  store i64 %i.dz, ptr %i.do, align 8, !tbaa !86
  %i.ea = icmp ugt i64 %i.dz, 63
  br i1 %i.ea, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr %i.dp, align 8, !tbaa !87
  %.pre185 = load i64, ptr %i.dq, align 8, !tbaa !74
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.eb = sub i64 64, %i.dy                       ; 2 uses
  %i.ec = icmp ugt i64 %i.eb, 63
  %i.ed = lshr i64 %.sroa.0181.0.vec.extract, %i.eb
  %spec.select = select i1 %i.ec, i64 0, i64 %i.ed
  %i.ee = add i64 %i.dz, -64                      ; 2 uses
  store i64 %i.ee, ptr %i.do, align 8, !tbaa !86
  %i.ef = load i64, ptr %i.dq, align 8, !tbaa !74
  %i.eg = add i64 %i.ef, 8                        ; 2 uses
  store i64 %i.eg, ptr %i.dq, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.eh = phi i64 [ %i.eg, %bb.b ], [ %.pre185, %._crit_edge ]
  %i.ei = phi i64 [ %spec.select, %bb.b ], [ %.pre, %._crit_edge ]
  %i.ej = phi i64 [ %i.ee, %bb.b ], [ %i.dz, %._crit_edge ]
  %.sroa.0181.8.vec.extract = extractelement <4 x i64> %i.df, i64 1 ; 2 uses
  %i.ek = shl i64 %.sroa.0181.8.vec.extract, %i.ej
  %i.el = or i64 %i.ei, %i.ek                     ; 2 uses
  store i64 %i.el, ptr %i.dp, align 8, !tbaa !87
  %i.em = load ptr, ptr %5, align 8, !tbaa !71
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eh
  store i64 %i.el, ptr %i.en, align 1
  %i.eo = load i64, ptr %i.do, align 8, !tbaa !86 ; 2 uses
  %.sroa.0183.8.vec.extract = extractelement <4 x i64> %i.dd, i64 1
  %i.ep = add i64 %.sroa.0183.8.vec.extract, %i.eo ; 4 uses
  store i64 %i.ep, ptr %i.do, align 8, !tbaa !86
  %i.eq = icmp ugt i64 %i.ep, 63
  br i1 %i.eq, label %bb.d, label %._crit_edge186

._crit_edge186:                                   ; preds = %bb.c
  %.pre187 = load i64, ptr %i.dp, align 8, !tbaa !87
  %.pre188 = load i64, ptr %i.dq, align 8, !tbaa !74
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.er = sub i64 64, %i.eo                       ; 2 uses
  %i.es = icmp ugt i64 %i.er, 63
  %i.et = lshr i64 %.sroa.0181.8.vec.extract, %i.er
  %spec.select.1 = select i1 %i.es, i64 0, i64 %i.et
  %i.eu = add i64 %i.ep, -64                      ; 2 uses
  store i64 %i.eu, ptr %i.do, align 8, !tbaa !86
  %i.ev = load i64, ptr %i.dq, align 8, !tbaa !74
  %i.ew = add i64 %i.ev, 8                        ; 2 uses
  store i64 %i.ew, ptr %i.dq, align 8, !tbaa !74
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge186, %bb.d
  %i.ex = phi i64 [ %i.ew, %bb.d ], [ %.pre188, %._crit_edge186 ]
  %i.ey = phi i64 [ %spec.select.1, %bb.d ], [ %.pre187, %._crit_edge186 ]
  %i.ez = phi i64 [ %i.eu, %bb.d ], [ %i.ep, %._crit_edge186 ]
  %.sroa.0181.16.vec.extract = extractelement <4 x i64> %i.df, i64 2 ; 2 uses
  %i.fa = shl i64 %.sroa.0181.16.vec.extract, %i.ez
  %i.fb = or i64 %i.ey, %i.fa                     ; 2 uses
  store i64 %i.fb, ptr %i.dp, align 8, !tbaa !87
  %i.fc = load ptr, ptr %5, align 8, !tbaa !71
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ex
  store i64 %i.fb, ptr %i.fd, align 1
  %i.fe = load i64, ptr %i.do, align 8, !tbaa !86 ; 2 uses
  %.sroa.0183.16.vec.extract = extractelement <4 x i64> %i.dd, i64 2
  %i.ff = add i64 %.sroa.0183.16.vec.extract, %i.fe ; 4 uses
  store i64 %i.ff, ptr %i.do, align 8, !tbaa !86
  %i.fg = icmp ugt i64 %i.ff, 63
  br i1 %i.fg, label %bb.f, label %._crit_edge189

._crit_edge189:                                   ; preds = %bb.e
  %.pre190 = load i64, ptr %i.dp, align 8, !tbaa !87
  %.pre191 = load i64, ptr %i.dq, align 8, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fh = sub i64 64, %i.fe                       ; 2 uses
  %i.fi = icmp ugt i64 %i.fh, 63
  %i.fj = lshr i64 %.sroa.0181.16.vec.extract, %i.fh
  %spec.select.2 = select i1 %i.fi, i64 0, i64 %i.fj
  %i.fk = add i64 %i.ff, -64                      ; 2 uses
  store i64 %i.fk, ptr %i.do, align 8, !tbaa !86
  %i.fl = load i64, ptr %i.dq, align 8, !tbaa !74
  %i.fm = add i64 %i.fl, 8                        ; 2 uses
  store i64 %i.fm, ptr %i.dq, align 8, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge189, %bb.f
  %i.fn = phi i64 [ %i.fm, %bb.f ], [ %.pre191, %._crit_edge189 ]
  %i.fo = phi i64 [ %spec.select.2, %bb.f ], [ %.pre190, %._crit_edge189 ]
  %i.fp = phi i64 [ %i.fk, %bb.f ], [ %i.ff, %._crit_edge189 ]
  %.sroa.0181.24.vec.extract = extractelement <4 x i64> %i.df, i64 3 ; 2 uses
  %i.fq = shl i64 %.sroa.0181.24.vec.extract, %i.fp
  %i.fr = or i64 %i.fo, %i.fq                     ; 2 uses
  store i64 %i.fr, ptr %i.dp, align 8, !tbaa !87
  %i.fs = load ptr, ptr %5, align 8, !tbaa !71
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fn
  store i64 %i.fr, ptr %i.ft, align 1
  %i.fu = load i64, ptr %i.do, align 8, !tbaa !86 ; 2 uses
  %.sroa.0183.24.vec.extract = extractelement <4 x i64> %i.dd, i64 3
  %i.fv = add i64 %.sroa.0183.24.vec.extract, %i.fu ; 4 uses
  store i64 %i.fv, ptr %i.do, align 8, !tbaa !86
  %i.fw = icmp ugt i64 %i.fv, 63
  br i1 %i.fw, label %bb.h, label %._crit_edge192

._crit_edge192:                                   ; preds = %bb.g
  %.pre193 = load i64, ptr %i.dp, align 8, !tbaa !87
  %.pre194 = load i64, ptr %i.dq, align 8, !tbaa !74
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fx = sub i64 64, %i.fu                       ; 2 uses
  %i.fy = icmp ugt i64 %i.fx, 63
  %i.fz = lshr i64 %.sroa.0181.24.vec.extract, %i.fx
  %spec.select.3 = select i1 %i.fy, i64 0, i64 %i.fz
  %i.ga = add i64 %i.fv, -64                      ; 2 uses
  store i64 %i.ga, ptr %i.do, align 8, !tbaa !86
  %i.gb = load i64, ptr %i.dq, align 8, !tbaa !74
end_hunk_2
begin_hunk_3_@_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13Exactly14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m:bb.a
  %.val.val81.i.i.i = load ptr, ptr %i.aul, align 8, !tbaa !1713 ; 8 uses
  %i.aum = icmp eq i64 %.val80.i.i.i, 0
  br i1 %i.aum, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_13Exactly14BitsEEES3_E8FinalizeEv.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph157.i.i.i
  %i.aun = add i64 %.val80.i.i.i, -8              ; 4 uses
  %i.auo = icmp ult i64 %i.aun, 32
  br i1 %i.auo, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.aup = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 400
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 %i.aun
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !85
  %i.aus = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 144
  %i.aut = getelementptr inbounds nuw [8 x i8], ptr %i.aus, i64 %i.aun
  %i.auu = load i64, ptr %i.aut, align 8, !tbaa !68
  %i.auv = load ptr, ptr %.val.val81.i.i.i, align 8, !tbaa !71
  %i.auw = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 16 ; 3 uses
  %i.aux = load i64, ptr %i.auw, align 8, !tbaa !74
  %i.auy = getelementptr inbounds nuw i8, ptr %i.auv, i64 %i.aux
  %i.auz = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 24 ; 4 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 32 ; 4 uses
  %i.avb = load i64, ptr %i.auz, align 8, !tbaa !68 ; 2 uses
  %i.avc = shl i64 %i.auu, %i.avb
  %i.avd = load i64, ptr %i.ava, align 8, !tbaa !68
  %i.ave = or i64 %i.avd, %i.avc                  ; 2 uses
  store i64 %i.ave, ptr %i.ava, align 8, !tbaa !68
  %i.avf = zext i8 %i.aur to i64
  %i.avg = add i64 %i.avb, %i.avf
  store i64 %i.avg, ptr %i.auz, align 8, !tbaa !68
  store i64 %i.ave, ptr %i.auy, align 1
  %i.avh = load i64, ptr %i.auz, align 8, !tbaa !68 ; 3 uses
  %i.avi = lshr i64 %i.avh, 3
  %i.avj = and i64 %i.avh, -8
  %i.avk = and i64 %i.avh, 7
  store i64 %i.avk, ptr %i.auz, align 8, !tbaa !68
  %i.avl = load i64, ptr %i.ava, align 8, !tbaa !68
  %i.avm = lshr i64 %i.avl, %i.avj
  store i64 %i.avm, ptr %i.ava, align 8, !tbaa !68
  %i.avn = load i64, ptr %i.auw, align 8, !tbaa !74
  %i.avo = add i64 %i.avn, %i.avi
  store i64 %i.avo, ptr %i.auw, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_13Exactly14BitsEEES3_E8FinalizeEv.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.avp = trunc i64 %i.aun to i32                ; 4 uses
  %i.avq = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.avp, i1 true) ; 2 uses
  %i.avr = xor i32 %i.avq, 31
  %i.avs = icmp ult i32 %i.avp, 16                ; 3 uses
  %i.avt = sub nuw nsw i32 43, %i.avq
  %i.avu = select i1 %i.avs, i32 %i.avp, i32 %i.avt
  %i.avv = select i1 %i.avs, i32 0, i32 %i.avr    ; 2 uses
  %.neg.i.i.i131.i.i.i = shl nsw i32 -1, %i.avv
  %i.avw = add i32 %.neg.i.i.i131.i.i.i, %i.avp
  %i.avx = select i1 %i.avs, i32 0, i32 %i.avw
  %i.avy = zext i32 %i.avx to i64
  %i.avz = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 38
  %i.awa = zext nneg i32 %i.avu to i64            ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avz, i64 %i.awa
  %i.awc = load i8, ptr %i.awb, align 1, !tbaa !85 ; 2 uses
  %i.awd = zext i8 %i.awc to i32
  %i.awe = zext nneg i8 %i.awc to i64
  %i.awf = shl i64 %i.avy, %i.awe
  %i.awg = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 72
  %i.awh = getelementptr inbounds nuw [2 x i8], ptr %i.awg, i64 %i.awa
  %i.awi = load i16, ptr %i.awh, align 2, !tbaa !104
  %i.awj = zext i16 %i.awi to i64
  %i.awk = or i64 %i.awf, %i.awj
  %i.awl = load i8, ptr %.val.val.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.awm = zext i8 %i.awl to i32
  %i.awn = zext nneg i8 %i.awl to i64
  %i.awo = shl i64 %i.awk, %i.awn
  %i.awp = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 19
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !85
  %i.awr = zext i8 %i.awq to i64
  %i.aws = or i64 %i.awo, %i.awr
  %i.awt = add nuw nsw i32 %i.avv, %i.awd
  %i.awu = add nuw nsw i32 %i.awt, %i.awm
  %i.awv = load ptr, ptr %.val.val81.i.i.i, align 8, !tbaa !71
  %i.aww = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 16 ; 3 uses
  %i.awx = load i64, ptr %i.aww, align 8, !tbaa !74
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awv, i64 %i.awx
  %i.awz = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 24 ; 4 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 32 ; 4 uses
  %i.axb = load i64, ptr %i.awz, align 8, !tbaa !68 ; 2 uses
  %i.axc = shl i64 %i.aws, %i.axb
  %i.axd = load i64, ptr %i.axa, align 8, !tbaa !68
  %i.axe = or i64 %i.axd, %i.axc                  ; 2 uses
  store i64 %i.axe, ptr %i.axa, align 8, !tbaa !68
  %i.axf = zext nneg i32 %i.awu to i64
  %i.axg = add i64 %i.axb, %i.axf
  store i64 %i.axg, ptr %i.awz, align 8, !tbaa !68
  store i64 %i.axe, ptr %i.awy, align 1
  %i.axh = load i64, ptr %i.awz, align 8, !tbaa !68 ; 3 uses
  %i.axi = lshr i64 %i.axh, 3
  %i.axj = and i64 %i.axh, -8
  %i.axk = and i64 %i.axh, 7
  store i64 %i.axk, ptr %i.awz, align 8, !tbaa !68
  %i.axl = load i64, ptr %i.axa, align 8, !tbaa !68
  %i.axm = lshr i64 %i.axl, %i.axj
  store i64 %i.axm, ptr %i.axa, align 8, !tbaa !68
  %i.axn = load i64, ptr %i.aww, align 8, !tbaa !74
  %i.axo = add i64 %i.axn, %i.axi
  store i64 %i.axo, ptr %i.aww, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_13Exactly14BitsEEES3_E8FinalizeEv.exit.i.i.i

_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_13Exactly14BitsEEES3_E8FinalizeEv.exit.i.i.i: ; preds = %bb.al, %bb.ak, %.lr.ph157.i.i.i
  %i.axp = add nuw nsw i64 %.0156.i.i.i, 1        ; 2 uses
  %exitcond182.not.i.i.i = icmp eq i64 %i.axp, %i.bg
  br i1 %exitcond182.not.i.i.i, label %._crit_edge158.i.i.i, label %.lr.ph157.i.i.i, !llvm.loop !1659

.lr.ph57.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph57.i.i
  %.056.i.i = phi i64 [ %i.axy, %.lr.ph57.i.i ], [ 0, %.preheader.i.i ] ; 5 uses
  %i.axq = getelementptr inbounds nuw [192 x i8], ptr %2, i64 %.056.i.i ; 5 uses
  %i.axr = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.056.i.i
  store ptr %i.axq, ptr %i.axr, align 16, !tbaa !1710
  %i.axs = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %.056.i.i
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axq, i64 8
  store ptr %i.axs, ptr %i.axt, align 8, !tbaa !1713
  %i.axu = getelementptr inbounds nuw [440 x i8], ptr %i.bj, i64 %.056.i.i ; 3 uses
  store ptr %i.axu, ptr %i.axq, align 64, !tbaa !1712
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 19
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axq, i64 64
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axq, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.axw, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.axu, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.axx, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.axv, i64 16, i1 false)
  %i.axy = add nuw nsw i64 %.056.i.i, 1           ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %i.axy, %i.bg
  br i1 %exitcond74.not.i.i, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i, label %.lr.ph57.i.i, !llvm.loop !1660

_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_13Exactly14BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i: ; preds = %bb.ai, %._crit_edge158.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13Exactly14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

bb.am:                                            ; preds = %bb.d
  %i.axz = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.aya = getelementptr inbounds nuw i8, ptr %i.aw, i64 1888
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !90
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.ayd = load i64, ptr %i.ayc, align 8, !tbaa !73
  call fastcc void @_ZN4AVX212_GLOBAL__N_121WriteACSectionPaletteEPKhmmmmmbPKN12_GLOBAL__N_110PrefixCodeEPKsmRNS3_9BitWriterE(ptr noundef %i.ai, i64 noundef %.sroa.speculated34.i, i64 noundef %.sroa.speculated.i, i64 noundef %i.bb, i1 noundef zeroext %i.be, ptr noundef nonnull %i.axz, ptr noundef %i.ayb, i64 noundef %i.ayd, ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #38
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13Exactly14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13Exactly14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit: ; preds = %_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_13Exactly14BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i, %bb.am
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.ayi = load <2 x i64>, ptr %i.aye, align 8, !tbaa !68
  %i.ayj = load <2 x i64>, ptr %i.ayf, align 8, !tbaa !68
  %i.ayk = load <2 x i64>, ptr %i.ayg, align 8, !tbaa !68
  %i.ayl = load <2 x i64>, ptr %i.ayh, align 8, !tbaa !68
  %i.aym = add <2 x i64> %i.ayi, <i64 0, i64 7>
  %i.ayn = add <2 x i64> %i.aym, %i.ayj
  %i.ayo = add <2 x i64> %i.ayn, %i.ayk
  %i.ayp = add <2 x i64> %i.ayo, %i.ayl           ; 2 uses
  %i.ayq = extractelement <2 x i64> %i.ayp, i64 1
  %i.ayr = lshr i64 %i.ayq, 3
  %i.ays = extractelement <2 x i64> %i.ayp, i64 0
  %i.ayt = add i64 %i.ays, %i.ayr
  %i.ayu = and i64 %i.ayt, 2305843009213693951
  %i.ayv = load ptr, ptr %i.h, align 8, !tbaa !1663, !nonnull !121, !align !176
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !151
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 1976
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !70
  %i.ayz = getelementptr inbounds nuw [8 x i8], ptr %i.ayy, i64 %i.z
  store i64 %i.ayu, ptr %i.ayz, align 8, !tbaa !68
  call void %.sroa.69.0.copyload.i(ptr noundef %.sroa.0.0.copyload.i, ptr noundef %i.ai) #36, !inline_history !1585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4AVX212_GLOBAL__N_113Exactly14Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %5) unnamed_addr #31 align 2 {
bb.a:
  %i.a = shl i64 %2, 1                            ; 2 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 16)
  %.sroa.speculated.i16 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 16)
  %i.c = sub nsw i64 0, %.sroa.speculated.i16
  %i.d = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits164SkipEmE5kMask, i64 32), i64 %i.c
  %i.e = load <4 x i64>, ptr %i.d, align 4, !tbaa !85 ; 2 uses
  %i.f = shl i64 %1, 1                            ; 2 uses
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 16)
  %.sroa.speculated.i15 = tail call i64 @llvm.umin.i64(i64 %i.g, i64 16)
  %i.h = sub nsw i64 0, %.sroa.speculated.i15
  %i.i = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits166ClipToEmE5kMask, i64 32), i64 %i.h
  %i.j = load <4 x i64>, ptr %i.i, align 4, !tbaa !85 ; 2 uses
  %i.k = and <4 x i64> %i.e, %i.j                 ; 2 uses
  %invariant.op101 = and <4 x i64> %i.k, splat (i64 281470681808895)
  %.sroa.speculated.i14 = tail call i64 @llvm.umin.i64(i64 %i.a, i64 16)
  %i.l = sub nsw i64 0, %.sroa.speculated.i14
  %i.m = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits164SkipEmE5kMask, i64 32), i64 %i.l
  %i.n = load <4 x i64>, ptr %i.m, align 4, !tbaa !85 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 16)
  %i.o = sub nsw i64 0, %.sroa.speculated.i
  %i.p = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits166ClipToEmE5kMask, i64 32), i64 %i.o
  %i.q = load <4 x i64>, ptr %i.p, align 4, !tbaa !85 ; 2 uses
  %i.r = and <4 x i64> %i.n, %i.q                 ; 2 uses
  %invariant.op = and <4 x i64> %i.r, splat (i64 281470681808895)
  %6 = load <16 x i8>, ptr %3, align 1, !tbaa !85
  %7 = shufflevector <16 x i8> %6, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %8 = load <16 x i8>, ptr %4, align 1, !tbaa !85
  %9 = shufflevector <16 x i8> %8, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.s = load <4 x i64>, ptr %0, align 1, !tbaa !85 ; 2 uses
  %i.t = bitcast <4 x i64> %i.s to <16 x i16>     ; 4 uses
  %i.u = lshr <16 x i16> %i.t, splat (i16 4)
  %i.v = lshr <16 x i16> %i.t, splat (i16 8)
  %i.w = lshr <16 x i16> %i.t, splat (i16 12)
  %i.x = bitcast <4 x i64> %i.s to <32 x i8>
  %i.y = and <32 x i8> %i.x, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.z = or <32 x i8> %i.y, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.aa = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <32 x i8> %i.z)
  %i.ab = bitcast <16 x i16> %i.u to <32 x i8>
  %i.ac = and <32 x i8> %i.ab, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.ad = or <32 x i8> %i.ac, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ae = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>, <32 x i8> %i.ad)
  %i.af = bitcast <16 x i16> %i.v to <32 x i8>
  %i.ag = and <32 x i8> %i.af, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.ah = or <32 x i8> %i.ag, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ai = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12>, <32 x i8> %i.ah)
  %i.aj = bitcast <16 x i16> %i.w to <32 x i8>
  %i.ak = or <32 x i8> %i.aj, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.al = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>, <32 x i8> %i.ak)
  %i.am = bitcast <32 x i8> %i.aa to <16 x i16>
  %i.an = bitcast <32 x i8> %i.ae to <16 x i16>
  %i.ao = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.am, <16 x i16> %i.an)
  %i.ap = bitcast <32 x i8> %i.ai to <16 x i16>
  %i.aq = bitcast <32 x i8> %i.al to <16 x i16>
  %i.ar = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ap, <16 x i16> %i.aq)
  %i.as = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ao, <16 x i16> %i.ar) ; 3 uses
  %i.at = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.as, <16 x i16> splat (i16 1)) ; 3 uses
  %i.au = bitcast <16 x i16> %i.at to <32 x i8>
  %i.av = or <32 x i8> %i.au, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.aw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.av)
  %i.ax = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.av)
  %i.ay = bitcast <32 x i8> %i.ax to <16 x i16>
  %i.az = shl <16 x i16> %i.ay, splat (i16 8)
  %i.ba = bitcast <32 x i8> %i.aw to <16 x i16>
  %i.bb = or <16 x i16> %i.az, %i.ba
  %i.bc = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.t, <16 x i16> %i.bb) ; 2 uses
  %i.bd = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.as, <16 x i16> splat (i16 15))
  %i.be = bitcast <16 x i16> %i.bd to <32 x i8>
  %i.bf = or <32 x i8> %i.be, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.bg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %9, <32 x i8> %i.bf) ; 2 uses
  %i.bh = icmp eq <16 x i16> %i.as, splat (i16 16)
  %i.bi = bitcast <32 x i8> %i.bg to <16 x i16>
  %i.bj = bitcast <32 x i8> %i.bg to <16 x i16>
  %i.bk = or <16 x i16> %i.bj, splat (i16 128)
  %i.bl = select <16 x i1> %i.bh, <16 x i16> %i.bk, <16 x i16> %i.bi ; 2 uses
  %i.bm = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %7, <32 x i8> %i.bf)
  %i.bn = shufflevector <16 x i16> %i.bl, <16 x i16> %i.bc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bo = bitcast <16 x i16> %i.bn to <4 x i64>
  %i.bp = shufflevector <16 x i16> %i.bl, <16 x i16> %i.bc, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bq = bitcast <16 x i16> %i.bp to <4 x i64>
  %i.br = shufflevector <16 x i16> %i.bn, <16 x i16> %i.bp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bs = bitcast <16 x i16> %i.br to <4 x i64>   ; 2 uses
  %i.bt = shufflevector <4 x i64> %i.bo, <4 x i64> %i.bq, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.bu = bitcast <32 x i8> %i.bm to <16 x i16>   ; 2 uses
  %i.bv = shufflevector <16 x i16> %i.bu, <16 x i16> %i.at, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bw = bitcast <16 x i16> %i.bv to <4 x i64>
  %i.bx = shufflevector <16 x i16> %i.bu, <16 x i16> %i.at, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.by = bitcast <16 x i16> %i.bx to <4 x i64>
  %i.bz = shufflevector <16 x i16> %i.bv, <16 x i16> %i.bx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ca = bitcast <16 x i16> %i.bz to <4 x i64>
  %i.cb = shufflevector <4 x i64> %i.bw, <4 x i64> %i.by, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.cc = and <4 x i64> %i.q, %i.ca
  %i.cd = and <4 x i64> %i.cc, %i.n               ; 2 uses
  %i.ce = and <4 x i64> %i.r, %i.bs
  %i.cf = and <4 x i64> %i.j, %i.cb
  %i.cg = and <4 x i64> %i.cf, %i.e               ; 2 uses
  %i.ch = and <4 x i64> %i.k, %i.bt
  %i.ci = bitcast <4 x i64> %i.cd to <8 x i32>
  %i.cj = lshr <8 x i32> %i.ci, splat (i32 16)
  %i.ck = bitcast <4 x i64> %i.ce to <8 x i32>
  %i.cl = lshr <8 x i32> %i.ck, splat (i32 16)
  %.reass.le = and <4 x i64> %invariant.op, %i.bs
  %i.cm = bitcast <4 x i64> %i.cd to <8 x i32>
  %i.cn = and <8 x i32> %i.cm, splat (i32 65535)  ; 2 uses
  %i.co = add nuw nsw <8 x i32> %i.cj, %i.cn      ; 2 uses
  %i.cp = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.cl, <8 x i32> %i.cn)
  %i.cq = bitcast <8 x i32> %i.cp to <4 x i64>
  %i.cr = or <4 x i64> %.reass.le, %i.cq          ; 2 uses
  %i.cs = bitcast <4 x i64> %i.cg to <8 x i32>
  %i.ct = lshr <8 x i32> %i.cs, splat (i32 16)
  %i.cu = bitcast <4 x i64> %i.ch to <8 x i32>
  %i.cv = lshr <8 x i32> %i.cu, splat (i32 16)
  %.reass102.le = and <4 x i64> %i.bt, %invariant.op101
  %i.cw = bitcast <4 x i64> %i.cg to <8 x i32>
  %i.cx = and <8 x i32> %i.cw, splat (i32 65535)  ; 2 uses
  %i.cy = add nuw nsw <8 x i32> %i.ct, %i.cx      ; 2 uses
  %i.cz = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.cv, <8 x i32> %i.cx)
  %i.da = bitcast <8 x i32> %i.cz to <4 x i64>
  %i.db = or <4 x i64> %.reass102.le, %i.da       ; 2 uses
  %i.dc = bitcast <8 x i32> %i.cy to <4 x i64>
  %.val8.cast = bitcast <8 x i32> %i.co to <4 x i64>
  %i.dd = lshr <4 x i64> %.val8.cast, splat (i64 32)
  %i.de = bitcast <8 x i32> %i.co to <4 x i64>
  %i.df = and <4 x i64> %i.de, splat (i64 131071) ; 2 uses
  %i.dg = lshr <4 x i64> %i.cr, splat (i64 32)
  %i.dh = and <4 x i64> %i.cr, splat (i64 4294967295)
  %i.di = add nuw nsw <4 x i64> %i.dd, %i.df      ; 4 uses
  %i.dj = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.dg, <4 x i64> %i.df)
  %i.dk = or <4 x i64> %i.dj, %i.dh               ; 4 uses
  %i.dl = lshr <4 x i64> %i.dc, splat (i64 32)
  %i.dm = bitcast <8 x i32> %i.cy to <4 x i64>
  %i.dn = and <4 x i64> %i.dm, splat (i64 131071) ; 2 uses
  %i.do = lshr <4 x i64> %i.db, splat (i64 32)
  %i.dp = and <4 x i64> %i.db, splat (i64 4294967295)
  %i.dq = add nuw nsw <4 x i64> %i.dl, %i.dn      ; 4 uses
  %i.dr = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.do, <4 x i64> %i.dn)
  %i.ds = or <4 x i64> %i.dr, %i.dp               ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 27 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 20 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 26 uses
  %.sroa.0198.0.vec.extract = extractelement <4 x i64> %i.dk, i64 0 ; 2 uses
  %i.dw = load i64, ptr %i.dt, align 8, !tbaa !86
  %i.dx = shl i64 %.sroa.0198.0.vec.extract, %i.dw
  %i.dy = load i64, ptr %i.du, align 8, !tbaa !87
  %i.dz = or i64 %i.dy, %i.dx                     ; 2 uses
  store i64 %i.dz, ptr %i.du, align 8, !tbaa !87
  %i.ea = load ptr, ptr %5, align 8, !tbaa !71
  %i.eb = load i64, ptr %i.dv, align 8, !tbaa !74
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  store i64 %i.dz, ptr %i.ec, align 1
  %i.ed = load i64, ptr %i.dt, align 8, !tbaa !86 ; 2 uses
  %.sroa.0200.0.vec.extract = extractelement <4 x i64> %i.di, i64 0
  %i.ee = add i64 %.sroa.0200.0.vec.extract, %i.ed ; 4 uses
  store i64 %i.ee, ptr %i.dt, align 8, !tbaa !86
  %i.ef = icmp ugt i64 %i.ee, 63
  br i1 %i.ef, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr %i.du, align 8, !tbaa !87
  %.pre202 = load i64, ptr %i.dv, align 8, !tbaa !74
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.eg = sub i64 64, %i.ed                       ; 2 uses
  %i.eh = icmp ugt i64 %i.eg, 63
  %i.ei = lshr i64 %.sroa.0198.0.vec.extract, %i.eg
  %spec.select = select i1 %i.eh, i64 0, i64 %i.ei
  %i.ej = add i64 %i.ee, -64                      ; 2 uses
  store i64 %i.ej, ptr %i.dt, align 8, !tbaa !86
  %i.ek = load i64, ptr %i.dv, align 8, !tbaa !74
  %i.el = add i64 %i.ek, 8                        ; 2 uses
  store i64 %i.el, ptr %i.dv, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.em = phi i64 [ %i.el, %bb.b ], [ %.pre202, %._crit_edge ]
  %i.en = phi i64 [ %spec.select, %bb.b ], [ %.pre, %._crit_edge ]
  %i.eo = phi i64 [ %i.ej, %bb.b ], [ %i.ee, %._crit_edge ]
  %.sroa.0198.8.vec.extract = extractelement <4 x i64> %i.dk, i64 1 ; 2 uses
  %i.ep = shl i64 %.sroa.0198.8.vec.extract, %i.eo
  %i.eq = or i64 %i.en, %i.ep                     ; 2 uses
  store i64 %i.eq, ptr %i.du, align 8, !tbaa !87
  %i.er = load ptr, ptr %5, align 8, !tbaa !71
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.em
  store i64 %i.eq, ptr %i.es, align 1
  %i.et = load i64, ptr %i.dt, align 8, !tbaa !86 ; 2 uses
  %.sroa.0200.8.vec.extract = extractelement <4 x i64> %i.di, i64 1
  %i.eu = add i64 %.sroa.0200.8.vec.extract, %i.et ; 4 uses
  store i64 %i.eu, ptr %i.dt, align 8, !tbaa !86
  %i.ev = icmp ugt i64 %i.eu, 63
  br i1 %i.ev, label %bb.d, label %._crit_edge203

._crit_edge203:                                   ; preds = %bb.c
  %.pre204 = load i64, ptr %i.du, align 8, !tbaa !87
  %.pre205 = load i64, ptr %i.dv, align 8, !tbaa !74
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ew = sub i64 64, %i.et                       ; 2 uses
  %i.ex = icmp ugt i64 %i.ew, 63
  %i.ey = lshr i64 %.sroa.0198.8.vec.extract, %i.ew
  %spec.select.1 = select i1 %i.ex, i64 0, i64 %i.ey
  %i.ez = add i64 %i.eu, -64                      ; 2 uses
  store i64 %i.ez, ptr %i.dt, align 8, !tbaa !86
  %i.fa = load i64, ptr %i.dv, align 8, !tbaa !74
  %i.fb = add i64 %i.fa, 8                        ; 2 uses
  store i64 %i.fb, ptr %i.dv, align 8, !tbaa !74
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge203, %bb.d
  %i.fc = phi i64 [ %i.fb, %bb.d ], [ %.pre205, %._crit_edge203 ]
  %i.fd = phi i64 [ %spec.select.1, %bb.d ], [ %.pre204, %._crit_edge203 ]
  %i.fe = phi i64 [ %i.ez, %bb.d ], [ %i.eu, %._crit_edge203 ]
  %.sroa.0198.16.vec.extract = extractelement <4 x i64> %i.dk, i64 2 ; 2 uses
  %i.ff = shl i64 %.sroa.0198.16.vec.extract, %i.fe
  %i.fg = or i64 %i.fd, %i.ff                     ; 2 uses
  store i64 %i.fg, ptr %i.du, align 8, !tbaa !87
  %i.fh = load ptr, ptr %5, align 8, !tbaa !71
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fc
  store i64 %i.fg, ptr %i.fi, align 1
  %i.fj = load i64, ptr %i.dt, align 8, !tbaa !86 ; 2 uses
  %.sroa.0200.16.vec.extract = extractelement <4 x i64> %i.di, i64 2
  %i.fk = add i64 %.sroa.0200.16.vec.extract, %i.fj ; 4 uses
  store i64 %i.fk, ptr %i.dt, align 8, !tbaa !86
  %i.fl = icmp ugt i64 %i.fk, 63
  br i1 %i.fl, label %bb.f, label %._crit_edge206

._crit_edge206:                                   ; preds = %bb.e
  %.pre207 = load i64, ptr %i.du, align 8, !tbaa !87
  %.pre208 = load i64, ptr %i.dv, align 8, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fm = sub i64 64, %i.fj                       ; 2 uses
  %i.fn = icmp ugt i64 %i.fm, 63
  %i.fo = lshr i64 %.sroa.0198.16.vec.extract, %i.fm
  %spec.select.2 = select i1 %i.fn, i64 0, i64 %i.fo
  %i.fp = add i64 %i.fk, -64                      ; 2 uses
  store i64 %i.fp, ptr %i.dt, align 8, !tbaa !86
  %i.fq = load i64, ptr %i.dv, align 8, !tbaa !74
  %i.fr = add i64 %i.fq, 8                        ; 2 uses
  store i64 %i.fr, ptr %i.dv, align 8, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge206, %bb.f
  %i.fs = phi i64 [ %i.fr, %bb.f ], [ %.pre208, %._crit_edge206 ]
  %i.ft = phi i64 [ %spec.select.2, %bb.f ], [ %.pre207, %._crit_edge206 ]
  %i.fu = phi i64 [ %i.fp, %bb.f ], [ %i.fk, %._crit_edge206 ]
  %.sroa.0198.24.vec.extract = extractelement <4 x i64> %i.dk, i64 3 ; 2 uses
  %i.fv = shl i64 %.sroa.0198.24.vec.extract, %i.fu
  %i.fw = or i64 %i.ft, %i.fv                     ; 2 uses
  store i64 %i.fw, ptr %i.du, align 8, !tbaa !87
  %i.fx = load ptr, ptr %5, align 8, !tbaa !71
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fs
  store i64 %i.fw, ptr %i.fy, align 1
  %i.fz = load i64, ptr %i.dt, align 8, !tbaa !86 ; 2 uses
  %.sroa.0200.24.vec.extract = extractelement <4 x i64> %i.di, i64 3
  %i.ga = add i64 %.sroa.0200.24.vec.extract, %i.fz ; 4 uses
  store i64 %i.ga, ptr %i.dt, align 8, !tbaa !86
  %i.gb = icmp ugt i64 %i.ga, 63
  br i1 %i.gb, label %bb.h, label %._crit_edge209

._crit_edge209:                                   ; preds = %bb.g
  %.pre210 = load i64, ptr %i.du, align 8, !tbaa !87
  %.pre211 = load i64, ptr %i.dv, align 8, !tbaa !74
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gc = sub i64 64, %i.fz                       ; 2 uses
  %i.gd = icmp ugt i64 %i.gc, 63
  %i.ge = lshr i64 %.sroa.0198.24.vec.extract, %i.gc
  %spec.select.3 = select i1 %i.gd, i64 0, i64 %i.ge
  %i.gf = add i64 %i.ga, -64                      ; 2 uses
  store i64 %i.gf, ptr %i.dt, align 8, !tbaa !86
  %i.gg = load i64, ptr %i.dv, align 8, !tbaa !74
  %i.gh = add i64 %i.gg, 8                        ; 2 uses
end_hunk_3
begin_hunk_4_@_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m:bb.a
  %i.bga = load i64, ptr %i.bfp, align 8, !tbaa !68
  %i.bgb = lshr i64 %i.bga, %i.bfy
  store i64 %i.bgb, ptr %i.bfp, align 8, !tbaa !68
  %i.bgc = load i64, ptr %i.bfl, align 8, !tbaa !74
  %i.bgd = add i64 %i.bgc, %i.bfx
  store i64 %i.bgd, ptr %i.bfl, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_14MoreThan14BitsEEES3_E8FinalizeEv.exit.i.i.i

_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_14MoreThan14BitsEEES3_E8FinalizeEv.exit.i.i.i: ; preds = %bb.al, %bb.ak, %.lr.ph155.i.i.i
  %i.bge = add nuw nsw i64 %.0154.i.i.i, 1        ; 2 uses
  %exitcond179.not.i.i.i = icmp eq i64 %i.bge, %i.bf
  br i1 %exitcond179.not.i.i.i, label %._crit_edge156.i.i.i, label %.lr.ph155.i.i.i, !llvm.loop !1789

.lr.ph57.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph57.i.i
  %.03456.i.i = phi i64 [ %i.bkb, %.lr.ph57.i.i ], [ 0, %.preheader.i.i ] ; 5 uses
  %i.bgf = getelementptr inbounds nuw [192 x i8], ptr %2, i64 %.03456.i.i ; 35 uses
  %i.bgg = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.03456.i.i
  store ptr %i.bgf, ptr %i.bgg, align 16, !tbaa !1844
  %i.bgh = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %.03456.i.i
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgf, i64 8
  store ptr %i.bgh, ptr %i.bgi, align 8, !tbaa !1847
  %i.bgj = getelementptr inbounds nuw [440 x i8], ptr %i.bi, i64 %.03456.i.i ; 33 uses
  store ptr %i.bgj, ptr %i.bgf, align 64, !tbaa !1846
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgj, i64 19
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgf, i64 64
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgf, i64 128
  %i.bgn = load i8, ptr %i.bgj, align 1, !tbaa !85
  store i8 %i.bgn, ptr %i.bgl, align 64, !tbaa !85
  %i.bgo = load i8, ptr %i.bgk, align 1, !tbaa !85
  store i8 %i.bgo, ptr %i.bgm, align 64, !tbaa !85
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgj, i64 1
  %i.bgq = load i8, ptr %i.bgp, align 1, !tbaa !85
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgf, i64 65
  store i8 %i.bgq, ptr %i.bgr, align 1, !tbaa !85
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgj, i64 20
  %i.bgt = load i8, ptr %i.bgs, align 1, !tbaa !85
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgf, i64 129
  store i8 %i.bgt, ptr %i.bgu, align 1, !tbaa !85
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgj, i64 2
  %i.bgw = load i8, ptr %i.bgv, align 1, !tbaa !85
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgf, i64 66
  store i8 %i.bgw, ptr %i.bgx, align 2, !tbaa !85
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgj, i64 21
  %i.bgz = load i8, ptr %i.bgy, align 1, !tbaa !85
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgf, i64 130
  store i8 %i.bgz, ptr %i.bha, align 2, !tbaa !85
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgj, i64 3
  %i.bhc = load i8, ptr %i.bhb, align 1, !tbaa !85
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bgf, i64 67
  store i8 %i.bhc, ptr %i.bhd, align 1, !tbaa !85
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgj, i64 22
  %i.bhf = load i8, ptr %i.bhe, align 1, !tbaa !85
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 131
  store i8 %i.bhf, ptr %i.bhg, align 1, !tbaa !85
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bgj, i64 4
  %i.bhi = load i8, ptr %i.bhh, align 1, !tbaa !85
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bgf, i64 68
  store i8 %i.bhi, ptr %i.bhj, align 4, !tbaa !85
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bgj, i64 23
  %i.bhl = load i8, ptr %i.bhk, align 1, !tbaa !85
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bgf, i64 132
  store i8 %i.bhl, ptr %i.bhm, align 4, !tbaa !85
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bgj, i64 5
  %i.bho = load i8, ptr %i.bhn, align 1, !tbaa !85
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bgf, i64 69
  store i8 %i.bho, ptr %i.bhp, align 1, !tbaa !85
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bgj, i64 24
  %i.bhr = load i8, ptr %i.bhq, align 1, !tbaa !85
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bgf, i64 133
  store i8 %i.bhr, ptr %i.bhs, align 1, !tbaa !85
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bgj, i64 6
  %i.bhu = load i8, ptr %i.bht, align 1, !tbaa !85
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bgf, i64 70
  store i8 %i.bhu, ptr %i.bhv, align 2, !tbaa !85
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bgj, i64 25
  %i.bhx = load i8, ptr %i.bhw, align 1, !tbaa !85
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bgf, i64 134
  store i8 %i.bhx, ptr %i.bhy, align 2, !tbaa !85
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bgj, i64 7
  %i.bia = load i8, ptr %i.bhz, align 1, !tbaa !85
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bgf, i64 71
  store i8 %i.bia, ptr %i.bib, align 1, !tbaa !85
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bgj, i64 26
  %i.bid = load i8, ptr %i.bic, align 1, !tbaa !85
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bgf, i64 135
  store i8 %i.bid, ptr %i.bie, align 1, !tbaa !85
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bgj, i64 8
  %i.big = load i8, ptr %i.bif, align 1, !tbaa !85
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bgf, i64 72
  store i8 %i.big, ptr %i.bih, align 8, !tbaa !85
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bgj, i64 27
  %i.bij = load i8, ptr %i.bii, align 1, !tbaa !85
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bgf, i64 136
  store i8 %i.bij, ptr %i.bik, align 8, !tbaa !85
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bgj, i64 9
  %i.bim = load i8, ptr %i.bil, align 1, !tbaa !85
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bgf, i64 73
  store i8 %i.bim, ptr %i.bin, align 1, !tbaa !85
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bgj, i64 28
  %i.bip = load i8, ptr %i.bio, align 1, !tbaa !85
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bgf, i64 137
  store i8 %i.bip, ptr %i.biq, align 1, !tbaa !85
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bgj, i64 10
  %i.bis = load i8, ptr %i.bir, align 1, !tbaa !85
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bgf, i64 74
  store i8 %i.bis, ptr %i.bit, align 2, !tbaa !85
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bgj, i64 29
  %i.biv = load i8, ptr %i.biu, align 1, !tbaa !85
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bgf, i64 138
  store i8 %i.biv, ptr %i.biw, align 2, !tbaa !85
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bgj, i64 11
  %i.biy = load i8, ptr %i.bix, align 1, !tbaa !85
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bgf, i64 75
  store i8 %i.biy, ptr %i.biz, align 1, !tbaa !85
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bgj, i64 30
  %i.bjb = load i8, ptr %i.bja, align 1, !tbaa !85
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bgf, i64 139
  store i8 %i.bjb, ptr %i.bjc, align 1, !tbaa !85
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bgj, i64 12
  %i.bje = load i8, ptr %i.bjd, align 1, !tbaa !85
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bgf, i64 76
  store i8 %i.bje, ptr %i.bjf, align 4, !tbaa !85
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bgj, i64 31
  %i.bjh = load i8, ptr %i.bjg, align 1, !tbaa !85
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bgf, i64 140
  store i8 %i.bjh, ptr %i.bji, align 4, !tbaa !85
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bgj, i64 13
  %i.bjk = load i8, ptr %i.bjj, align 1, !tbaa !85
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bgf, i64 77
  store i8 %i.bjk, ptr %i.bjl, align 1, !tbaa !85
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bgj, i64 32
  %i.bjn = load i8, ptr %i.bjm, align 1, !tbaa !85
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bgf, i64 141
  store i8 %i.bjn, ptr %i.bjo, align 1, !tbaa !85
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bgj, i64 17
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bgj, i64 36
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bgj, i64 15
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bgj, i64 34
  %i.bjt = load i8, ptr %i.bjr, align 1, !tbaa !85
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bgf, i64 78
  store i8 %i.bjt, ptr %i.bju, align 2, !tbaa !85
  %i.bjv = load i8, ptr %i.bjs, align 1, !tbaa !85
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bgf, i64 142
  store i8 %i.bjv, ptr %i.bjw, align 2, !tbaa !85
  %i.bjx = load i8, ptr %i.bjp, align 1, !tbaa !85
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bgf, i64 79
  store i8 %i.bjx, ptr %i.bjy, align 1, !tbaa !85
  %i.bjz = load i8, ptr %i.bjq, align 1, !tbaa !85
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bgf, i64 143
  store i8 %i.bjz, ptr %i.bka, align 1, !tbaa !85
  %i.bkb = add nuw nsw i64 %.03456.i.i, 1         ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %i.bkb, %i.bf
  br i1 %exitcond74.not.i.i, label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i, label %.lr.ph57.i.i, !llvm.loop !1790

_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_14MoreThan14BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i: ; preds = %bb.ai, %._crit_edge156.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

bb.am:                                            ; preds = %bb.d
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.av, i64 1888
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !90
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.bkg = load i64, ptr %i.bkf, align 8, !tbaa !73
  call fastcc void @_ZN4AVX212_GLOBAL__N_121WriteACSectionPaletteEPKhmmmmmbPKN12_GLOBAL__N_110PrefixCodeEPKsmRNS3_9BitWriterE(ptr noundef %i.ai, i64 noundef %.sroa.speculated35.i, i64 noundef %.sroa.speculated.i, i64 noundef %i.ba, i1 noundef zeroext %i.bd, ptr noundef nonnull %i.bkc, ptr noundef %i.bke, i64 noundef %i.bkg, ptr noundef nonnull align 8 dereferenceable(40) %i.aw) #38
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit: ; preds = %_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_14MoreThan14BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i, %bb.am
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bki = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  %i.bkl = load <2 x i64>, ptr %i.bkh, align 8, !tbaa !68
  %i.bkm = load <2 x i64>, ptr %i.bki, align 8, !tbaa !68
  %i.bkn = load <2 x i64>, ptr %i.bkj, align 8, !tbaa !68
  %i.bko = load <2 x i64>, ptr %i.bkk, align 8, !tbaa !68
  %i.bkp = add <2 x i64> %i.bkl, <i64 0, i64 7>
  %i.bkq = add <2 x i64> %i.bkp, %i.bkm
  %i.bkr = add <2 x i64> %i.bkq, %i.bkn
  %i.bks = add <2 x i64> %i.bkr, %i.bko           ; 2 uses
  %i.bkt = extractelement <2 x i64> %i.bks, i64 1
  %i.bku = lshr i64 %i.bkt, 3
  %i.bkv = extractelement <2 x i64> %i.bks, i64 0
  %i.bkw = add i64 %i.bkv, %i.bku
  %i.bkx = and i64 %i.bkw, 2305843009213693951
  %i.bky = load ptr, ptr %i.h, align 8, !tbaa !1793, !nonnull !121, !align !176
  %i.bkz = load ptr, ptr %i.bky, align 8, !tbaa !151
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkz, i64 1976
  %i.blb = load ptr, ptr %i.bla, align 8, !tbaa !70
  %i.blc = getelementptr inbounds nuw [8 x i8], ptr %i.blb, i64 %i.z
  store i64 %i.bkx, ptr %i.blc, align 8, !tbaa !68
  call void %.sroa.610.0.copyload.i(ptr noundef %.sroa.07.0.copyload.i, ptr noundef %i.ai) #36, !inline_history !1714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4AVX212_GLOBAL__N_114MoreThan14Bits15EncodeChunkSimdEPjmmPKhS4_RN12_GLOBAL__N_19BitWriterE(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %5) unnamed_addr #31 align 2 {
bb.a:
  %6 = load <16 x i8>, ptr %3, align 1, !tbaa !85
  %7 = shufflevector <16 x i8> %6, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %8 = load <16 x i8>, ptr %4, align 1, !tbaa !85
  %9 = shufflevector <16 x i8> %8, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.a = load <8 x i32>, ptr %0, align 1, !tbaa !85 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <8 x i32>, ptr %i.b, align 1, !tbaa !85 ; 2 uses
  %i.d = sitofp <8 x i32> %i.a to <8 x float>
  %i.e = bitcast <8 x float> %i.d to <8 x i32>
  %i.f = lshr <8 x i32> %i.e, splat (i32 23)      ; 2 uses
  %i.g = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.f, <8 x i32> splat (i32 126))
  %i.h = sitofp <8 x i32> %i.c to <8 x float>
  %i.i = bitcast <8 x float> %i.h to <8 x i32>
  %i.j = lshr <8 x i32> %i.i, splat (i32 23)      ; 2 uses
  %i.k = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.j, <8 x i32> splat (i32 126))
  %i.l = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.f, <8 x i32> splat (i32 127)) ; 2 uses
  %i.m = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.j, <8 x i32> splat (i32 127)) ; 2 uses
  %i.n = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> splat (i32 1), <8 x i32> %i.l)
  %i.o = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.a, <8 x i32> %i.n)
  %i.p = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> splat (i32 1), <8 x i32> %i.m)
  %i.q = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.c, <8 x i32> %i.p)
  %i.r = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.g, <8 x i32> %i.k)
  %i.s = bitcast <16 x i16> %i.r to <4 x i64>
  %i.t = shufflevector <4 x i64> %i.s, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.u = bitcast <4 x i64> %i.t to <16 x i16>     ; 3 uses
  %i.v = icmp sgt <16 x i16> %i.u, splat (i16 12) ; 2 uses
  %i.w = add <16 x i16> %i.u, splat (i16 13)
  %i.x = lshr <16 x i16> %i.w, splat (i16 1)
  %i.y = select <16 x i1> %i.v, <16 x i16> %i.x, <16 x i16> %i.u
  %i.z = bitcast <16 x i16> %i.y to <32 x i8>
  %i.aa = or <32 x i8> %i.z, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.ab = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %9, <32 x i8> %i.aa) ; 2 uses
  %i.ac = bitcast <4 x i64> %i.t to <16 x i16>
  %i.ad = and <16 x i16> %i.ac, splat (i16 1)
  %i.ae = icmp eq <16 x i16> %i.ad, zeroinitializer
  %i.af = and <16 x i1> %i.v, %i.ae
  %i.ag = bitcast <32 x i8> %i.ab to <16 x i16>
  %i.ah = bitcast <32 x i8> %i.ab to <16 x i16>
  %i.ai = or <16 x i16> %i.ah, splat (i16 128)
  %i.aj = select <16 x i1> %i.af, <16 x i16> %i.ai, <16 x i16> %i.ag ; 2 uses
  %i.ak = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %7, <32 x i8> %i.aa)
  %i.al = shufflevector <16 x i16> %i.aj, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.am = bitcast <16 x i16> %i.al to <4 x i64>
  %i.an = shufflevector <16 x i16> %i.aj, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ao = bitcast <16 x i16> %i.an to <4 x i64>
  %i.ap = shufflevector <16 x i16> %i.al, <16 x i16> %i.an, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aq = bitcast <16 x i16> %i.ap to <4 x i64>
  %i.ar = shufflevector <4 x i64> %i.am, <4 x i64> %i.ao, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.as = bitcast <32 x i8> %i.ak to <16 x i16>   ; 2 uses
  %i.at = shufflevector <16 x i16> %i.as, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.au = bitcast <16 x i16> %i.at to <4 x i64>
  %i.av = shufflevector <16 x i16> %i.as, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aw = bitcast <16 x i16> %i.av to <4 x i64>
  %i.ax = shufflevector <16 x i16> %i.at, <16 x i16> %i.av, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ay = shufflevector <4 x i64> %i.au, <4 x i64> %i.aw, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.az = bitcast <16 x i16> %i.ax to <8 x i32>   ; 2 uses
  %i.ba = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.o, <8 x i32> %i.az)
  %i.bb = bitcast <8 x i32> %i.ba to <4 x i64>
  %i.bc = or <4 x i64> %i.aq, %i.bb
  %i.bd = add nuw nsw <8 x i32> %i.l, %i.az
  %i.be = bitcast <8 x i32> %i.bd to <4 x i64>
  %.sroa.speculated.i.le = tail call i64 @llvm.umin.i64(i64 %1, i64 8)
  %i.bf = sub nsw i64 0, %.sroa.speculated.i.le
  %i.bg = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits326ClipToEmE5kMask, i64 32), i64 %i.bf
  %i.bh = load <4 x i64>, ptr %i.bg, align 4, !tbaa !85 ; 2 uses
  %.sroa.speculated.i19.le = tail call i64 @llvm.umin.i64(i64 %2, i64 8)
  %i.bi = sub nsw i64 0, %.sroa.speculated.i19.le
  %i.bj = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits324SkipEmE5kMask, i64 32), i64 %i.bi
  %i.bk = load <4 x i64>, ptr %i.bj, align 4, !tbaa !85 ; 2 uses
  %i.bl = and <4 x i64> %i.bh, %i.be
  %i.bm = and <4 x i64> %i.bl, %i.bk              ; 2 uses
  %i.bn = and <4 x i64> %i.bh, %i.bc
  %i.bo = and <4 x i64> %i.bn, %i.bk              ; 2 uses
  %i.bp = bitcast <4 x i64> %i.ay to <8 x i32>    ; 2 uses
  %i.bq = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.q, <8 x i32> %i.bp)
  %i.br = bitcast <8 x i32> %i.bq to <4 x i64>
  %i.bs = or <4 x i64> %i.ar, %i.br
  %i.bt = add nuw nsw <8 x i32> %i.m, %i.bp
  %i.bu = bitcast <8 x i32> %i.bt to <4 x i64>
  %i.bv = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 8)
  %.sroa.speculated.i20.le = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 8)
  %i.bw = sub nsw i64 0, %.sroa.speculated.i20.le
  %i.bx = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits326ClipToEmE5kMask, i64 32), i64 %i.bw
  %i.by = load <4 x i64>, ptr %i.bx, align 4, !tbaa !85 ; 2 uses
  %i.bz = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 8)
  %.sroa.speculated.i21.le = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 8)
  %i.ca = sub nsw i64 0, %.sroa.speculated.i21.le
  %i.cb = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits324SkipEmE5kMask, i64 32), i64 %i.ca
  %i.cc = load <4 x i64>, ptr %i.cb, align 4, !tbaa !85 ; 2 uses
  %i.cd = and <4 x i64> %i.by, %i.bu
  %i.ce = and <4 x i64> %i.cd, %i.cc              ; 2 uses
  %i.cf = and <4 x i64> %i.by, %i.bs
  %i.cg = and <4 x i64> %i.cf, %i.cc              ; 2 uses
  %i.ch = lshr <4 x i64> %i.bm, splat (i64 32)
  %i.ci = and <4 x i64> %i.bm, splat (i64 4294967295) ; 2 uses
  %i.cj = lshr <4 x i64> %i.bo, splat (i64 32)
  %i.ck = and <4 x i64> %i.bo, splat (i64 4294967295)
  %i.cl = add nuw nsw <4 x i64> %i.ch, %i.ci      ; 4 uses
  %i.cm = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.cj, <4 x i64> %i.ci)
  %i.cn = or <4 x i64> %i.cm, %i.ck               ; 4 uses
  %i.co = lshr <4 x i64> %i.ce, splat (i64 32)
  %i.cp = and <4 x i64> %i.ce, splat (i64 4294967295) ; 2 uses
  %i.cq = lshr <4 x i64> %i.cg, splat (i64 32)
  %i.cr = and <4 x i64> %i.cg, splat (i64 4294967295)
  %i.cs = add nuw nsw <4 x i64> %i.co, %i.cp      ; 4 uses
  %i.ct = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.cq, <4 x i64> %i.cp)
  %i.cu = or <4 x i64> %i.ct, %i.cr               ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 27 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 20 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 26 uses
  %.sroa.0246.0.vec.extract = extractelement <4 x i64> %i.cn, i64 0 ; 2 uses
  %i.cy = load i64, ptr %i.cv, align 8, !tbaa !86
  %i.cz = shl i64 %.sroa.0246.0.vec.extract, %i.cy
  %i.da = load i64, ptr %i.cw, align 8, !tbaa !87
  %i.db = or i64 %i.da, %i.cz                     ; 2 uses
  store i64 %i.db, ptr %i.cw, align 8, !tbaa !87
  %i.dc = load ptr, ptr %5, align 8, !tbaa !71
  %i.dd = load i64, ptr %i.cx, align 8, !tbaa !74
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  store i64 %i.db, ptr %i.de, align 1
  %i.df = load i64, ptr %i.cv, align 8, !tbaa !86 ; 2 uses
  %.sroa.0247.0.vec.extract = extractelement <4 x i64> %i.cl, i64 0
  %i.dg = add i64 %.sroa.0247.0.vec.extract, %i.df ; 4 uses
  store i64 %i.dg, ptr %i.cv, align 8, !tbaa !86
  %i.dh = icmp ugt i64 %i.dg, 63
  br i1 %i.dh, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr %i.cw, align 8, !tbaa !87
  %.pre249 = load i64, ptr %i.cx, align 8, !tbaa !74
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.di = sub i64 64, %i.df                       ; 2 uses
  %i.dj = icmp ugt i64 %i.di, 63
  %i.dk = lshr i64 %.sroa.0246.0.vec.extract, %i.di
  %spec.select = select i1 %i.dj, i64 0, i64 %i.dk
  %i.dl = add i64 %i.dg, -64                      ; 2 uses
  store i64 %i.dl, ptr %i.cv, align 8, !tbaa !86
  %i.dm = load i64, ptr %i.cx, align 8, !tbaa !74
  %i.dn = add i64 %i.dm, 8                        ; 2 uses
  store i64 %i.dn, ptr %i.cx, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.do = phi i64 [ %i.dn, %bb.b ], [ %.pre249, %._crit_edge ]
  %i.dp = phi i64 [ %spec.select, %bb.b ], [ %.pre, %._crit_edge ]
  %i.dq = phi i64 [ %i.dl, %bb.b ], [ %i.dg, %._crit_edge ]
  %.sroa.0246.8.vec.extract = extractelement <4 x i64> %i.cn, i64 1 ; 2 uses
  %i.dr = shl i64 %.sroa.0246.8.vec.extract, %i.dq
  %i.ds = or i64 %i.dp, %i.dr                     ; 2 uses
  store i64 %i.ds, ptr %i.cw, align 8, !tbaa !87
  %i.dt = load ptr, ptr %5, align 8, !tbaa !71
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.do
  store i64 %i.ds, ptr %i.du, align 1
  %i.dv = load i64, ptr %i.cv, align 8, !tbaa !86 ; 2 uses
  %.sroa.0247.8.vec.extract = extractelement <4 x i64> %i.cl, i64 1
  %i.dw = add i64 %.sroa.0247.8.vec.extract, %i.dv ; 4 uses
  store i64 %i.dw, ptr %i.cv, align 8, !tbaa !86
  %i.dx = icmp ugt i64 %i.dw, 63
  br i1 %i.dx, label %bb.d, label %._crit_edge250

._crit_edge250:                                   ; preds = %bb.c
  %.pre251 = load i64, ptr %i.cw, align 8, !tbaa !87
  %.pre252 = load i64, ptr %i.cx, align 8, !tbaa !74
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dy = sub i64 64, %i.dv                       ; 2 uses
  %i.dz = icmp ugt i64 %i.dy, 63
  %i.ea = lshr i64 %.sroa.0246.8.vec.extract, %i.dy
  %spec.select.1 = select i1 %i.dz, i64 0, i64 %i.ea
  %i.eb = add i64 %i.dw, -64                      ; 2 uses
  store i64 %i.eb, ptr %i.cv, align 8, !tbaa !86
  %i.ec = load i64, ptr %i.cx, align 8, !tbaa !74
  %i.ed = add i64 %i.ec, 8                        ; 2 uses
  store i64 %i.ed, ptr %i.cx, align 8, !tbaa !74
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge250, %bb.d
  %i.ee = phi i64 [ %i.ed, %bb.d ], [ %.pre252, %._crit_edge250 ]
  %i.ef = phi i64 [ %spec.select.1, %bb.d ], [ %.pre251, %._crit_edge250 ]
  %i.eg = phi i64 [ %i.eb, %bb.d ], [ %i.dw, %._crit_edge250 ]
  %.sroa.0246.16.vec.extract = extractelement <4 x i64> %i.cn, i64 2 ; 2 uses
  %i.eh = shl i64 %.sroa.0246.16.vec.extract, %i.eg
  %i.ei = or i64 %i.ef, %i.eh                     ; 2 uses
  store i64 %i.ei, ptr %i.cw, align 8, !tbaa !87
  %i.ej = load ptr, ptr %5, align 8, !tbaa !71
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ee
  store i64 %i.ei, ptr %i.ek, align 1
  %i.el = load i64, ptr %i.cv, align 8, !tbaa !86 ; 2 uses
  %.sroa.0247.16.vec.extract = extractelement <4 x i64> %i.cl, i64 2
  %i.em = add i64 %.sroa.0247.16.vec.extract, %i.el ; 4 uses
  store i64 %i.em, ptr %i.cv, align 8, !tbaa !86
  %i.en = icmp ugt i64 %i.em, 63
  br i1 %i.en, label %bb.f, label %._crit_edge253

._crit_edge253:                                   ; preds = %bb.e
  %.pre254 = load i64, ptr %i.cw, align 8, !tbaa !87
  %.pre255 = load i64, ptr %i.cx, align 8, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.eo = sub i64 64, %i.el                       ; 2 uses
  %i.ep = icmp ugt i64 %i.eo, 63
  %i.eq = lshr i64 %.sroa.0246.16.vec.extract, %i.eo
  %spec.select.2 = select i1 %i.ep, i64 0, i64 %i.eq
  %i.er = add i64 %i.em, -64                      ; 2 uses
  store i64 %i.er, ptr %i.cv, align 8, !tbaa !86
  %i.es = load i64, ptr %i.cx, align 8, !tbaa !74
  %i.et = add i64 %i.es, 8                        ; 2 uses
  store i64 %i.et, ptr %i.cx, align 8, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge253, %bb.f
  %i.eu = phi i64 [ %i.et, %bb.f ], [ %.pre255, %._crit_edge253 ]
  %i.ev = phi i64 [ %spec.select.2, %bb.f ], [ %.pre254, %._crit_edge253 ]
  %i.ew = phi i64 [ %i.er, %bb.f ], [ %i.em, %._crit_edge253 ]
  %.sroa.0246.24.vec.extract = extractelement <4 x i64> %i.cn, i64 3 ; 2 uses
  %i.ex = shl i64 %.sroa.0246.24.vec.extract, %i.ew
  %i.ey = or i64 %i.ev, %i.ex                     ; 2 uses
  store i64 %i.ey, ptr %i.cw, align 8, !tbaa !87
  %i.ez = load ptr, ptr %5, align 8, !tbaa !71
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.eu
  store i64 %i.ey, ptr %i.fa, align 1
  %i.fb = load i64, ptr %i.cv, align 8, !tbaa !86 ; 2 uses
  %.sroa.0247.24.vec.extract = extractelement <4 x i64> %i.cl, i64 3
  %i.fc = add i64 %.sroa.0247.24.vec.extract, %i.fb ; 4 uses
  store i64 %i.fc, ptr %i.cv, align 8, !tbaa !86
  %i.fd = icmp ugt i64 %i.fc, 63
  br i1 %i.fd, label %bb.h, label %._crit_edge256

._crit_edge256:                                   ; preds = %bb.g
  %.pre257 = load i64, ptr %i.cw, align 8, !tbaa !87
  %.pre258 = load i64, ptr %i.cx, align 8, !tbaa !74
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fe = sub i64 64, %i.fb                       ; 2 uses
  %i.ff = icmp ugt i64 %i.fe, 63
  %i.fg = lshr i64 %.sroa.0246.24.vec.extract, %i.fe
end_hunk_4
