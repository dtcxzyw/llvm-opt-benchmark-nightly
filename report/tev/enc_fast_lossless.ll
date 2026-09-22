Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_fast_lossless?download=true
inline.NumInlined: 4106
inline.NumDeleted: 1186
loop-unroll.NumCompletelyUnrolled: 195
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 336
begin_hunk_0_@_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E8FinalizeEv:bb.a
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
.split:
  %i.a = load <16 x i8>, ptr %4, align 1, !tbaa !85
  %i.b = shufflevector <16 x i8> %i.a, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.c = load <16 x i8>, ptr %3, align 1, !tbaa !85
  %i.d = shufflevector <16 x i8> %i.c, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.e = load <4 x i64>, ptr %0, align 1, !tbaa !85 ; 2 uses
  %i.f = bitcast <4 x i64> %i.e to <16 x i16>     ; 4 uses
  %i.g = lshr <16 x i16> %i.f, splat (i16 4)
  %i.h = lshr <16 x i16> %i.f, splat (i16 8)
  %i.i = lshr <16 x i16> %i.f, splat (i16 12)
  %i.j = bitcast <4 x i64> %i.e to <32 x i8>
  %i.k = and <32 x i8> %i.j, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.l = or <32 x i8> %i.k, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.m = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <32 x i8> %i.l)
  %i.n = bitcast <16 x i16> %i.g to <32 x i8>
  %i.o = and <32 x i8> %i.n, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.p = or <32 x i8> %i.o, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.q = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>, <32 x i8> %i.p)
  %i.r = bitcast <16 x i16> %i.h to <32 x i8>
  %i.s = and <32 x i8> %i.r, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.t = or <32 x i8> %i.s, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.u = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12>, <32 x i8> %i.t)
  %i.v = bitcast <16 x i16> %i.i to <32 x i8>
  %i.w = or <32 x i8> %i.v, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.x = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>, <32 x i8> %i.w)
  %i.y = bitcast <32 x i8> %i.m to <16 x i16>
  %i.z = bitcast <32 x i8> %i.q to <16 x i16>
  %i.aa = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.y, <16 x i16> %i.z)
  %i.ab = bitcast <32 x i8> %i.u to <16 x i16>
  %i.ac = bitcast <32 x i8> %i.x to <16 x i16>
  %i.ad = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ab, <16 x i16> %i.ac)
  %i.ae = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.aa, <16 x i16> %i.ad) ; 2 uses
  %i.af = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.ae, <16 x i16> splat (i16 1)) ; 2 uses
  %i.ag = bitcast <16 x i16> %i.af to <32 x i8>
  %i.ah = or <32 x i8> %i.ag, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.ai = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ah)
  %i.aj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.ah)
  %i.ak = bitcast <32 x i8> %i.aj to <16 x i16>
  %i.al = shl <16 x i16> %i.ak, splat (i16 8)
  %i.am = bitcast <32 x i8> %i.ai to <16 x i16>
  %i.an = or <16 x i16> %i.al, %i.am
  %i.ao = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.f, <16 x i16> %i.an)
  %i.ap = bitcast <16 x i16> %i.ae to <32 x i8>
  %i.aq = or <32 x i8> %i.ap, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.ar = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.d, <32 x i8> %i.aq) ; 2 uses
  %i.as = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.b, <32 x i8> %i.aq)
  %i.at = bitcast <32 x i8> %i.as to <4 x i64>
  %i.au = or <32 x i8> %i.ar, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.av = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.au)
  %i.aw = bitcast <32 x i8> %i.av to <16 x i16>
  %i.ax = mul <16 x i16> %i.ao, %i.aw
  %i.ay = bitcast <16 x i16> %i.ax to <4 x i64>
  %i.az = bitcast <32 x i8> %i.ar to <16 x i16>
  %i.ba = add <16 x i16> %i.af, %i.az
  %i.bb = bitcast <16 x i16> %i.ba to <4 x i64>
  %i.bc = or <4 x i64> %i.ay, %i.at
  %.sroa.speculated.i.le = tail call i64 @llvm.umin.i64(i64 %1, i64 16)
  %i.bd = sub nsw i64 0, %.sroa.speculated.i.le
  %i.be = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits166ClipToEmE5kMask, i64 32), i64 %i.bd
  %i.bf = load <4 x i64>, ptr %i.be, align 2, !tbaa !85 ; 2 uses
  %.sroa.speculated.i9.le = tail call i64 @llvm.umin.i64(i64 %2, i64 16)
  %i.bg = sub nsw i64 0, %.sroa.speculated.i9.le
  %i.bh = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits164SkipEmE5kMask, i64 32), i64 %i.bg
  %i.bi = load <4 x i64>, ptr %i.bh, align 2, !tbaa !85 ; 2 uses
  %i.bj = and <4 x i64> %i.bf, %i.bb
  %i.bk = and <4 x i64> %i.bj, %i.bi              ; 2 uses
  %i.bl = and <4 x i64> %i.bf, %i.bc
  %i.bm = and <4 x i64> %i.bl, %i.bi              ; 2 uses
  %i.bn = bitcast <4 x i64> %i.bk to <8 x i32>
  %i.bo = lshr <8 x i32> %i.bn, splat (i32 16)
  %i.bp = bitcast <4 x i64> %i.bm to <8 x i32>
  %i.bq = lshr <8 x i32> %i.bp, splat (i32 16)
  %i.br = and <4 x i64> %i.bm, splat (i64 281470681808895)
  %i.bs = bitcast <4 x i64> %i.bk to <8 x i32>
  %i.bt = and <8 x i32> %i.bs, splat (i32 65535)  ; 2 uses
  %i.bu = add nuw nsw <8 x i32> %i.bo, %i.bt      ; 2 uses
  %i.bv = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.bq, <8 x i32> %i.bt)
  %i.bw = bitcast <8 x i32> %i.bv to <4 x i64>
  %i.bx = or <4 x i64> %i.br, %i.bw               ; 2 uses
  %.val.cast = bitcast <8 x i32> %i.bu to <4 x i64>
  %i.by = lshr <4 x i64> %.val.cast, splat (i64 32)
  %i.bz = bitcast <8 x i32> %i.bu to <4 x i64>
  %i.ca = and <4 x i64> %i.bz, splat (i64 131071) ; 2 uses
  %i.cb = lshr <4 x i64> %i.bx, splat (i64 32)
  %i.cc = and <4 x i64> %i.bx, splat (i64 4294967295)
  %i.cd = add nuw nsw <4 x i64> %i.by, %i.ca      ; 4 uses
  %i.ce = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.cb, <4 x i64> %i.ca)
  %i.cf = or <4 x i64> %i.ce, %i.cc               ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 15 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 12 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 14 uses
  %.sroa.0.0.vec.extract = extractelement <4 x i64> %i.cf, i64 0 ; 2 uses
  %i.cj = load i64, ptr %i.cg, align 8, !tbaa !86
  %i.ck = shl i64 %.sroa.0.0.vec.extract, %i.cj
  %i.cl = load i64, ptr %i.ch, align 8, !tbaa !87
  %i.cm = or i64 %i.cl, %i.ck                     ; 2 uses
  store i64 %i.cm, ptr %i.ch, align 8, !tbaa !87
  %i.cn = load ptr, ptr %5, align 8, !tbaa !71
  %i.co = load i64, ptr %i.ci, align 8, !tbaa !74
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  store i64 %i.cm, ptr %i.cp, align 1
  %i.cq = load i64, ptr %i.cg, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.0.vec.extract = extractelement <4 x i64> %i.cd, i64 0
  %i.cr = add i64 %.sroa.0140.0.vec.extract, %i.cq ; 4 uses
  store i64 %i.cr, ptr %i.cg, align 8, !tbaa !86
  %i.cs = icmp ugt i64 %i.cr, 63
  br i1 %i.cs, label %bb.a, label %.split._crit_edge

bb.a:                                             ; preds = %.split
  %i.ct = sub i64 64, %i.cq                       ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, 63
  %i.cv = lshr i64 %.sroa.0.0.vec.extract, %i.ct
  %spec.select = select i1 %i.cu, i64 0, i64 %i.cv
  %i.cw = add i64 %i.cr, -64                      ; 2 uses
  store i64 %i.cw, ptr %i.cg, align 8, !tbaa !86
  %i.cx = load i64, ptr %i.ci, align 8, !tbaa !74
  %i.cy = add i64 %i.cx, 8                        ; 2 uses
  store i64 %i.cy, ptr %i.ci, align 8, !tbaa !74
  br label %bb.b

bb.b:                                             ; preds = %.split._crit_edge, %bb.a
  %i.cz = phi i64 [ %i.cy, %bb.a ], [ %.pre141, %.split._crit_edge ]
  %i.da = phi i64 [ %spec.select, %bb.a ], [ %.pre, %.split._crit_edge ]
  %i.db = phi i64 [ %i.cw, %bb.a ], [ %i.cr, %.split._crit_edge ]
  %.sroa.0.8.vec.extract = extractelement <4 x i64> %i.cf, i64 1 ; 2 uses
  %i.dc = shl i64 %.sroa.0.8.vec.extract, %i.db
  %i.dd = or i64 %i.da, %i.dc                     ; 2 uses
  store i64 %i.dd, ptr %i.ch, align 8, !tbaa !87
  %i.de = load ptr, ptr %5, align 8, !tbaa !71
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cz
  store i64 %i.dd, ptr %i.df, align 1
  %i.dg = load i64, ptr %i.cg, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.8.vec.extract = extractelement <4 x i64> %i.cd, i64 1
  %i.dh = add i64 %.sroa.0140.8.vec.extract, %i.dg ; 4 uses
  store i64 %i.dh, ptr %i.cg, align 8, !tbaa !86
  %i.di = icmp ugt i64 %i.dh, 63
  br i1 %i.di, label %bb.c, label %._crit_edge.a

._crit_edge.a:                                    ; preds = %bb.b
  %.pre142 = load i64, ptr %i.ch, align 8, !tbaa !87
  %.pre143 = load i64, ptr %i.ci, align 8, !tbaa !74
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dj = sub i64 64, %i.dg                       ; 2 uses
  %i.dk = icmp ugt i64 %i.dj, 63
  %i.dl = lshr i64 %.sroa.0.8.vec.extract, %i.dj
  %spec.select.1 = select i1 %i.dk, i64 0, i64 %i.dl
  %i.dm = add i64 %i.dh, -64                      ; 2 uses
  store i64 %i.dm, ptr %i.cg, align 8, !tbaa !86
  %i.dn = load i64, ptr %i.ci, align 8, !tbaa !74
  %i.do = add i64 %i.dn, 8                        ; 2 uses
  store i64 %i.do, ptr %i.ci, align 8, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.a, %bb.c
  %i.dp = phi i64 [ %i.do, %bb.c ], [ %.pre143, %._crit_edge.a ]
  %i.dq = phi i64 [ %spec.select.1, %bb.c ], [ %.pre142, %._crit_edge.a ]
  %i.dr = phi i64 [ %i.dm, %bb.c ], [ %i.dh, %._crit_edge.a ]
  %.sroa.0.16.vec.extract = extractelement <4 x i64> %i.cf, i64 2 ; 2 uses
  %i.ds = shl i64 %.sroa.0.16.vec.extract, %i.dr
  %i.dt = or i64 %i.dq, %i.ds                     ; 2 uses
  store i64 %i.dt, ptr %i.ch, align 8, !tbaa !87
  %i.du = load ptr, ptr %5, align 8, !tbaa !71
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dp
  store i64 %i.dt, ptr %i.dv, align 1
  %i.dw = load i64, ptr %i.cg, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.16.vec.extract = extractelement <4 x i64> %i.cd, i64 2
  %i.dx = add i64 %.sroa.0140.16.vec.extract, %i.dw ; 4 uses
  store i64 %i.dx, ptr %i.cg, align 8, !tbaa !86
  %i.dy = icmp ugt i64 %i.dx, 63
  br i1 %i.dy, label %bb.e, label %._crit_edge144

._crit_edge144:                                   ; preds = %bb.d
  %.pre145 = load i64, ptr %i.ch, align 8, !tbaa !87
  %.pre146 = load i64, ptr %i.ci, align 8, !tbaa !74
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dz = sub i64 64, %i.dw                       ; 2 uses
  %i.ea = icmp ugt i64 %i.dz, 63
  %i.eb = lshr i64 %.sroa.0.16.vec.extract, %i.dz
  %spec.select.2 = select i1 %i.ea, i64 0, i64 %i.eb
  %i.ec = add i64 %i.dx, -64                      ; 2 uses
  store i64 %i.ec, ptr %i.cg, align 8, !tbaa !86
  %i.ed = load i64, ptr %i.ci, align 8, !tbaa !74
  %i.ee = add i64 %i.ed, 8                        ; 2 uses
  store i64 %i.ee, ptr %i.ci, align 8, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge144, %bb.e
  %i.ef = phi i64 [ %i.ee, %bb.e ], [ %.pre146, %._crit_edge144 ]
  %i.eg = phi i64 [ %spec.select.2, %bb.e ], [ %.pre145, %._crit_edge144 ]
  %i.eh = phi i64 [ %i.ec, %bb.e ], [ %i.dx, %._crit_edge144 ]
  %.sroa.0.24.vec.extract = extractelement <4 x i64> %i.cf, i64 3 ; 2 uses
  %i.ei = shl i64 %.sroa.0.24.vec.extract, %i.eh
  %i.ej = or i64 %i.eg, %i.ei                     ; 2 uses
  store i64 %i.ej, ptr %i.ch, align 8, !tbaa !87
  %i.ek = load ptr, ptr %5, align 8, !tbaa !71
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ef
  store i64 %i.ej, ptr %i.el, align 1
  %i.em = load i64, ptr %i.cg, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.24.vec.extract = extractelement <4 x i64> %i.cd, i64 3
  %i.en = add i64 %.sroa.0140.24.vec.extract, %i.em ; 3 uses
  store i64 %i.en, ptr %i.cg, align 8, !tbaa !86
  %i.eo = icmp ugt i64 %i.en, 63
  %.pre147 = load i64, ptr %i.ci, align 8, !tbaa !74 ; 2 uses
  br i1 %i.eo, label %bb.g, label %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge

._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge: ; preds = %bb.f
  %.pre148 = load i64, ptr %i.ch, align 8
  br label %_ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit

bb.g:                                             ; preds = %bb.f
  %i.ep = sub i64 64, %i.em                       ; 2 uses
  %i.eq = icmp ugt i64 %i.ep, 63
  %i.er = lshr i64 %.sroa.0.24.vec.extract, %i.ep
  %spec.select.3 = select i1 %i.eq, i64 0, i64 %i.er ; 2 uses
  store i64 %spec.select.3, ptr %i.ch, align 8, !tbaa !87
  %i.es = add i64 %i.en, -64
  store i64 %i.es, ptr %i.cg, align 8, !tbaa !86
  %i.et = add i64 %.pre147, 8                     ; 2 uses
  store i64 %i.et, ptr %i.ci, align 8, !tbaa !74
  br label %_ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit

_ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit: ; preds = %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge, %bb.g
  %i.eu = phi i64 [ %spec.select.3, %bb.g ], [ %.pre148, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge ]
  %i.ev = phi i64 [ %i.et, %bb.g ], [ %.pre147, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge ]
  %i.ew = load ptr, ptr %5, align 8, !tbaa !71
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i64 %i.eu, ptr %i.ex, align 1
  %i.ey = load i64, ptr %i.cg, align 8, !tbaa !86 ; 3 uses
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = and i64 %i.ey, -8
  %i.fb = and i64 %i.ey, 7
  store i64 %i.fb, ptr %i.cg, align 8, !tbaa !86
  %i.fc = load i64, ptr %i.ch, align 8, !tbaa !87
  %i.fd = lshr i64 %i.fc, %i.fa
  store i64 %i.fd, ptr %i.ch, align 8, !tbaa !87
  %i.fe = load i64, ptr %i.ci, align 8, !tbaa !74
  %i.ff = add i64 %i.fe, %i.ez
  store i64 %i.ff, ptr %i.ci, align 8, !tbaa !74
  ret void

.split._crit_edge:                                ; preds = %.split
  %.pre = load i64, ptr %i.ch, align 8, !tbaa !87
  %.pre141 = load i64, ptr %i.ci, align 8, !tbaa !74
  br label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smax.v16i16(<16 x i16>, <16 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.usub.sat.v16i16(<16 x i16>, <16 x i16>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32>, <8 x i32>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64>, <4 x i64>) #26

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_13From9To13BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca [16 x i16], align 64              ; 8 uses
  %i.b = alloca [4 x ptr], align 16               ; 17 uses
  %i.c = alloca [4 x ptr], align 16               ; 13 uses
  %4 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChunkSampleCollector"], align 16 ; 5 uses
  %5 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor"], align 16 ; 10 uses
  %6 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChunkSampleCollector.100"], align 16 ; 5 uses
  %7 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor.101"], align 16 ; 10 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = shl i64 %2, 8                            ; 2 uses
  %i.f = shl i64 %1, 8                            ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !606, !nonnull !121, !align !176
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = sub i64 %i.h, %i.e
  %.sroa.speculated34 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 256) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !607, !nonnull !121, !align !176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.sroa.speculated29 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 256) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !608, !nonnull !121, !align !176 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.s = call noundef ptr %i.q(ptr noundef %i.r, i64 noundef %i.f, i64 noundef %i.e, i64 noundef %.sroa.speculated29, i64 noundef %.sroa.speculated34, ptr noundef nonnull %i.d) #36 ; 11 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = sub i64 %.sroa.speculated34, %3
  %.sroa.speculated24 = call i64 @llvm.smax.i64(i64 %i.u, i64 0)
  %i.v = lshr i64 %.sroa.speculated24, 1          ; 2 uses
  %i.w = trunc i64 %3 to i32
  %sext = shl i64 %i.v, 32
  %i.x = ashr exact i64 %sext, 32                 ; 5 uses
  %i.y = sub nsw i64 %.sroa.speculated34, %i.v
  %i.z = trunc i64 %i.y to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.z, i32 %i.w) ; 2 uses
  %i.aa = and i64 %.sroa.speculated29, 496        ; 41 uses
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !68  ; 13 uses
  %i.ac = sext i32 %.sroa.speculated to i64       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !609, !nonnull !121, !align !176 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !610, !nonnull !121, !align !176 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !611, !nonnull !121
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !95, !range !108, !noundef !121
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !612, !nonnull !121
  %i.an = load i8, ptr %i.am, align 1, !tbaa !95, !range !108, !noundef !121
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !613, !nonnull !121, !align !176
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !68 ; 26 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !614, !nonnull !121
  %i.au = load i8, ptr %i.at, align 1, !tbaa !95, !range !108, !noundef !121
  %i.av = trunc nuw i8 %i.au to i1                ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !615, !nonnull !121, !align !176
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !90
  %.not67.i = icmp eq i64 %i.ar, 0                ; 4 uses
  br i1 %i.ao, label %.preheader53.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !179
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.ba, align 8, !tbaa !179
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bb, align 8, !tbaa !179
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.bc, align 8, !tbaa !179
  br i1 %.not67.i, label %._crit_edge66.i, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.preheader.i
  %i.bd = getelementptr inbounds nuw [152 x i8], ptr %i.ae, i64 %i.ak ; 3 uses
  %i.be = getelementptr inbounds nuw [264 x i8], ptr %i.ag, i64 %i.ak ; 3 uses
  %xtraiter = and i64 %i.ar, 1
  %i.bf = icmp eq i64 %i.ar, 1
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph65.i.new

.lr.ph65.i.new:                                   ; preds = %.lr.ph65.i
  %unroll_iter = and i64 %i.ar, -2
  br label %bb.b

._crit_edge66.i.loopexit.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge66.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge66.i.loopexit.unr-lcssa, %.lr.ph65.i
  %.064.i.epil.init = phi i64 [ 0, %.lr.ph65.i ], [ %i.br, %._crit_edge66.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod618 = trunc i64 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod618)
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.064.i.epil.init ; 3 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.064.i.epil.init
  store ptr %i.bg, ptr %i.bh, align 16, !tbaa !180
  store ptr %i.bd, ptr %i.bg, align 16, !tbaa !182
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !183
  br label %._crit_edge66.i

._crit_edge66.i:                                  ; preds = %.epil.preheader, %._crit_edge66.i.loopexit.unr-lcssa, %.preheader.i
  %i.bj = add nsw i64 %i.ac, 1
  call fastcc void @_ZN4AVX212_GLOBAL__N_123ProcessImageAreaPaletteINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EEEEvPKhmmmmmmPKsmPT_(ptr noundef readonly %i.s, i64 noundef range(i64 -2147483648, 2147483648) %i.x, i64 noundef range(i64 -2147483648, 2147483648) %i.aa, i64 noundef %i.bj, i64 noundef %i.ab, ptr noundef readonly %i.ay, i64 noundef %i.ar, ptr noundef %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %_ZN4AVX212_GLOBAL__N_114CollectSamplesINS0_13From9To13BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph65.i.new
  %.064.i = phi i64 [ 0, %.lr.ph65.i.new ], [ %i.br, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph65.i.new ], [ %niter.next.1, %bb.b ]
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.064.i ; 3 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.064.i
  store ptr %i.bk, ptr %i.bl, align 16, !tbaa !180
  store ptr %i.bd, ptr %i.bk, align 16, !tbaa !182
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.be, ptr %i.bm, align 8, !tbaa !183
  %i.bn = or disjoint i64 %.064.i, 1              ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bn
  store ptr %i.bo, ptr %i.bp, align 16, !tbaa !180
  store ptr %i.bd, ptr %i.bo, align 16, !tbaa !182
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.be, ptr %i.bq, align 8, !tbaa !183
  %i.br = add nuw nsw i64 %.064.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge66.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !529

.preheader53.i:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !618
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 0, ptr %i.bt, align 8, !tbaa !618
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.bu, align 8, !tbaa !618
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 0, ptr %i.bv, align 8, !tbaa !618
  br i1 %.not67.i, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader53.i
  %xtraiter619 = and i64 %i.ar, 1
  %i.bw = icmp eq i64 %i.ar, 1
  br i1 %i.bw, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter622 = and i64 %i.ar, -2
  br label %.lr.ph.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod620.not = icmp eq i64 %xtraiter619, 0
  br i1 %lcmp.mod620.not, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.preheader
  %.03961.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.arg, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa ] ; 4 uses
  %lcmp.mod621 = trunc i64 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod621)
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.03961.i.epil.init ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03961.i.epil.init
  store ptr %i.bx, ptr %i.by, align 16, !tbaa !619
  %i.bz = getelementptr inbounds nuw [152 x i8], ptr %i.ae, i64 %.03961.i.epil.init
  store ptr %i.bz, ptr %i.bx, align 16, !tbaa !621
  %i.ca = getelementptr inbounds nuw [264 x i8], ptr %i.ag, i64 %.03961.i.epil.init
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !622
  br label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i: ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.cc = mul nuw nsw i64 %i.ar, 1408             ; 2 uses
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #40 ; 3 uses
  %i.ce = getelementptr inbounds nuw [1408 x i8], ptr %i.cd, i64 %i.ar
  %i.cf = add nsw i64 %i.cc, -1408                ; 2 uses
  %i.cg = urem i64 %i.cf, 1408
  %i.ch = sub nuw nsw i64 %i.cf, %i.cg
  %i.ci = add nuw nsw i64 %i.ch, 1408
end_hunk_0
begin_hunk_1_@_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_9UpTo8BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m:bb.a
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xi, i64 400
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xl
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !85
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xi, i64 144
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.xl
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !68
  %i.xt = load ptr, ptr %i.xk, align 8, !tbaa !71
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xk, i64 16 ; 3 uses
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !74
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.xv
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xk, i64 24 ; 4 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xk, i64 32 ; 4 uses
  %i.xz = load i64, ptr %i.xx, align 8, !tbaa !68 ; 2 uses
  %i.ya = shl i64 %i.xs, %i.xz
  %i.yb = load i64, ptr %i.xy, align 8, !tbaa !68
  %i.yc = or i64 %i.yb, %i.ya                     ; 2 uses
  store i64 %i.yc, ptr %i.xy, align 8, !tbaa !68
  %i.yd = zext i8 %i.xp to i64
  %i.ye = add i64 %i.xz, %i.yd
  store i64 %i.ye, ptr %i.xx, align 8, !tbaa !68
  store i64 %i.yc, ptr %i.xw, align 1
  %i.yf = load i64, ptr %i.xx, align 8, !tbaa !68 ; 3 uses
  %i.yg = lshr i64 %i.yf, 3
  %i.yh = and i64 %i.yf, -8
  %i.yi = and i64 %i.yf, 7
  store i64 %i.yi, ptr %i.xx, align 8, !tbaa !68
  %i.yj = load i64, ptr %i.xy, align 8, !tbaa !68
  %i.yk = lshr i64 %i.yj, %i.yh
  store i64 %i.yk, ptr %i.xy, align 8, !tbaa !68
  %i.yl = load i64, ptr %i.xu, align 8, !tbaa !74
  %i.ym = add i64 %i.yl, %i.yg
  store i64 %i.ym, ptr %i.xu, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.yn = trunc i64 %i.xl to i32                  ; 4 uses
  %i.yo = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.yn, i1 true) ; 2 uses
  %i.yp = xor i32 %i.yo, 31
  %i.yq = icmp ult i32 %i.yn, 16                  ; 3 uses
  %i.yr = sub nuw nsw i32 43, %i.yo
  %i.ys = select i1 %i.yq, i32 %i.yn, i32 %i.yr
  %i.yt = select i1 %i.yq, i32 0, i32 %i.yp       ; 2 uses
  %.neg.i.i.i.i.i.i = shl nsw i32 -1, %i.yt
  %i.yu = add i32 %.neg.i.i.i.i.i.i, %i.yn
  %i.yv = select i1 %i.yq, i32 0, i32 %i.yu
  %i.yw = zext i32 %i.yv to i64
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xi, i64 38
  %i.yy = zext i32 %i.ys to i64                   ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.yy
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !85  ; 2 uses
  %i.zb = zext i8 %i.za to i32
  %i.zc = zext nneg i8 %i.za to i64
  %i.zd = shl i64 %i.yw, %i.zc
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xi, i64 72
  %i.zf = getelementptr inbounds nuw [2 x i8], ptr %i.ze, i64 %i.yy
  %i.zg = load i16, ptr %i.zf, align 2, !tbaa !104
  %i.zh = zext i16 %i.zg to i64
  %i.zi = or i64 %i.zd, %i.zh
  %i.zj = load i8, ptr %i.xi, align 8, !tbaa !85  ; 2 uses
  %i.zk = zext i8 %i.zj to i32
  %i.zl = zext nneg i8 %i.zj to i64
  %i.zm = shl i64 %i.zi, %i.zl
  %i.zn = getelementptr inbounds nuw i8, ptr %i.xi, i64 19
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !85
  %i.zp = zext i8 %i.zo to i64
  %i.zq = or i64 %i.zm, %i.zp
  %i.zr = add nuw nsw i32 %i.yt, %i.zb
  %i.zs = add nuw nsw i32 %i.zr, %i.zk
  %i.zt = load ptr, ptr %i.xk, align 8, !tbaa !71
  %i.zu = getelementptr inbounds nuw i8, ptr %i.xk, i64 16 ; 3 uses
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !74
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zv
  %i.zx = getelementptr inbounds nuw i8, ptr %i.xk, i64 24 ; 4 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.xk, i64 32 ; 4 uses
  %i.zz = load i64, ptr %i.zx, align 8, !tbaa !68 ; 2 uses
  %i.aaa = shl i64 %i.zq, %i.zz
  %i.aab = load i64, ptr %i.zy, align 8, !tbaa !68
  %i.aac = or i64 %i.aab, %i.aaa                  ; 2 uses
  store i64 %i.aac, ptr %i.zy, align 8, !tbaa !68
  %i.aad = zext nneg i32 %i.zs to i64
  %i.aae = add i64 %i.zz, %i.aad
  store i64 %i.aae, ptr %i.zx, align 8, !tbaa !68
  store i64 %i.aac, ptr %i.zw, align 1
  %i.aaf = load i64, ptr %i.zx, align 8, !tbaa !68 ; 3 uses
  %i.aag = lshr i64 %i.aaf, 3
  %i.aah = and i64 %i.aaf, -8
  %i.aai = and i64 %i.aaf, 7
  store i64 %i.aai, ptr %i.zx, align 8, !tbaa !68
  %i.aaj = load i64, ptr %i.zy, align 8, !tbaa !68
  %i.aak = lshr i64 %i.aaj, %i.aah
  store i64 %i.aak, ptr %i.zy, align 8, !tbaa !68
  %i.aal = load i64, ptr %i.zu, align 8, !tbaa !74
  %i.aam = add i64 %i.aal, %i.aag
  store i64 %i.aam, ptr %i.zu, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i.i.i.i.i

_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %i.aan = getelementptr inbounds nuw i8, ptr %i.xh, i64 64
  %i.aao = getelementptr inbounds nuw i8, ptr %i.xh, i64 128
  %i.aap = load ptr, ptr %i.xj, align 8, !tbaa !194 ; 8 uses
  %i.aaq = load <16 x i8>, ptr %i.aao, align 64, !tbaa !85
  %i.aar = shufflevector <16 x i8> %i.aaq, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aas = load <16 x i8>, ptr %i.aan, align 64, !tbaa !85
  %i.aat = shufflevector <16 x i8> %i.aas, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aau = lshr <16 x i16> %i.wr, splat (i16 4)
  %i.aav = lshr <16 x i16> %i.wr, splat (i16 8)
  %i.aaw = lshr <16 x i16> %i.wr, splat (i16 12)
  %i.aax = and <32 x i8> %i.wq, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.aay = or <32 x i8> %i.aax, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.aaz = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <32 x i8> %i.aay)
  %i.aba = bitcast <16 x i16> %i.aau to <32 x i8>
  %i.abb = and <32 x i8> %i.aba, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.abc = or <32 x i8> %i.abb, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.abd = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>, <32 x i8> %i.abc)
  %i.abe = bitcast <16 x i16> %i.aav to <32 x i8>
  %i.abf = and <32 x i8> %i.abe, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.abg = or <32 x i8> %i.abf, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.abh = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12>, <32 x i8> %i.abg)
  %i.abi = bitcast <16 x i16> %i.aaw to <32 x i8>
  %i.abj = or <32 x i8> %i.abi, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.abk = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>, <32 x i8> %i.abj)
  %i.abl = bitcast <32 x i8> %i.aaz to <16 x i16>
  %i.abm = bitcast <32 x i8> %i.abd to <16 x i16>
  %i.abn = call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.abl, <16 x i16> %i.abm)
  %i.abo = bitcast <32 x i8> %i.abh to <16 x i16>
  %i.abp = bitcast <32 x i8> %i.abk to <16 x i16>
  %i.abq = call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.abo, <16 x i16> %i.abp)
  %i.abr = call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.abn, <16 x i16> %i.abq) ; 2 uses
  %i.abs = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.abr, <16 x i16> splat (i16 1)) ; 2 uses
  %i.abt = bitcast <16 x i16> %i.abs to <32 x i8>
  %i.abu = or <32 x i8> %i.abt, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.abv = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.abu)
  %i.abw = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.abu)
  %i.abx = bitcast <32 x i8> %i.abw to <16 x i16>
  %i.aby = shl <16 x i16> %i.abx, splat (i16 8)
  %i.abz = bitcast <32 x i8> %i.abv to <16 x i16>
  %i.aca = or <16 x i16> %i.aby, %i.abz
  %i.acb = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.wr, <16 x i16> %i.aca)
  %i.acc = bitcast <16 x i16> %i.abr to <32 x i8>
  %i.acd = or <32 x i8> %i.acc, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.ace = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.aat, <32 x i8> %i.acd) ; 2 uses
  %i.acf = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.aar, <32 x i8> %i.acd)
  %i.acg = bitcast <32 x i8> %i.acf to <4 x i64>
  %i.ach = or <32 x i8> %i.ace, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.aci = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ach)
  %i.acj = bitcast <32 x i8> %i.aci to <16 x i16>
  %i.ack = mul <16 x i16> %i.acb, %i.acj
  %i.acl = bitcast <16 x i16> %i.ack to <4 x i64>
  %i.acm = bitcast <32 x i8> %i.ace to <16 x i16>
  %i.acn = add <16 x i16> %i.abs, %i.acm
  %i.aco = bitcast <16 x i16> %i.acn to <4 x i64>
  %i.acp = or <4 x i64> %i.acl, %i.acg
  %i.acq = sub nsw i64 0, %.sroa.speculated.i.i.i.i
  %i.acr = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits166ClipToEmE5kMask, i64 32), i64 %i.acq
  %i.acs = load <4 x i64>, ptr %i.acr, align 2, !tbaa !85 ; 2 uses
  %i.act = sub nsw i64 0, %.sroa.speculated.i.i.i.i.i
  %i.acu = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits164SkipEmE5kMask, i64 32), i64 %i.act
  %i.acv = load <4 x i64>, ptr %i.acu, align 2, !tbaa !85 ; 2 uses
  %i.acw = and <4 x i64> %i.acs, %i.aco
  %i.acx = and <4 x i64> %i.acw, %i.acv           ; 2 uses
  %i.acy = and <4 x i64> %i.acs, %i.acp
  %i.acz = and <4 x i64> %i.acy, %i.acv           ; 2 uses
  %i.ada = bitcast <4 x i64> %i.acx to <8 x i32>
  %i.adb = lshr <8 x i32> %i.ada, splat (i32 16)
  %i.adc = bitcast <4 x i64> %i.acz to <8 x i32>
  %i.add = lshr <8 x i32> %i.adc, splat (i32 16)
  %i.ade = and <4 x i64> %i.acz, splat (i64 281470681808895)
  %i.adf = bitcast <4 x i64> %i.acx to <8 x i32>
  %i.adg = and <8 x i32> %i.adf, splat (i32 65535) ; 2 uses
  %i.adh = add nuw nsw <8 x i32> %i.adb, %i.adg   ; 2 uses
  %i.adi = call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.add, <8 x i32> %i.adg)
  %i.adj = bitcast <8 x i32> %i.adi to <4 x i64>
  %i.adk = or <4 x i64> %i.ade, %i.adj            ; 2 uses
  %.val.cast.i89.i.i.i = bitcast <8 x i32> %i.adh to <4 x i64>
  %i.adl = lshr <4 x i64> %.val.cast.i89.i.i.i, splat (i64 32)
  %i.adm = bitcast <8 x i32> %i.adh to <4 x i64>
  %i.adn = and <4 x i64> %i.adm, splat (i64 131071) ; 2 uses
  %i.ado = lshr <4 x i64> %i.adk, splat (i64 32)
  %i.adp = and <4 x i64> %i.adk, splat (i64 4294967295)
  %i.adq = add nuw nsw <4 x i64> %i.adl, %i.adn   ; 4 uses
  %i.adr = call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.ado, <4 x i64> %i.adn)
  %i.ads = or <4 x i64> %i.adp, %i.adr            ; 4 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.aap, i64 24 ; 15 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.aap, i64 32 ; 12 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.aap, i64 16 ; 14 uses
  %.sroa.0.0.vec.extract.i90.i.i.i = extractelement <4 x i64> %i.ads, i64 0 ; 2 uses
  %i.adw = load i64, ptr %i.adt, align 8, !tbaa !86
  %i.adx = shl i64 %.sroa.0.0.vec.extract.i90.i.i.i, %i.adw
  %i.ady = load i64, ptr %i.adu, align 8, !tbaa !87
  %i.adz = or i64 %i.adx, %i.ady                  ; 2 uses
  store i64 %i.adz, ptr %i.adu, align 8, !tbaa !87
  %i.aea = load ptr, ptr %i.aap, align 8, !tbaa !71
  %i.aeb = load i64, ptr %i.adv, align 8, !tbaa !74
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 %i.aeb
  store i64 %i.adz, ptr %i.aec, align 1
  %i.aed = load i64, ptr %i.adt, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.0.vec.extract.i91.i.i.i = extractelement <4 x i64> %i.adq, i64 0
  %i.aee = add i64 %i.aed, %.sroa.0140.0.vec.extract.i91.i.i.i ; 4 uses
  store i64 %i.aee, ptr %i.adt, align 8, !tbaa !86
  %i.aef = icmp ugt i64 %i.aee, 63
  br i1 %i.aef, label %bb.z, label %.split._crit_edge.i92.i.i.i

bb.z:                                             ; preds = %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i.i.i.i.i
  %i.aeg = sub i64 64, %i.aed                     ; 2 uses
  %i.aeh = icmp ugt i64 %i.aeg, 63
  %i.aei = lshr i64 %.sroa.0.0.vec.extract.i90.i.i.i, %i.aeg
  %spec.select.i113.i.i.i = select i1 %i.aeh, i64 0, i64 %i.aei
  %i.aej = add i64 %i.aee, -64                    ; 2 uses
  store i64 %i.aej, ptr %i.adt, align 8, !tbaa !86
  %i.aek = load i64, ptr %i.adv, align 8, !tbaa !74
  %i.ael = add i64 %i.aek, 8                      ; 2 uses
  store i64 %i.ael, ptr %i.adv, align 8, !tbaa !74
  br label %bb.aa

bb.aa:                                            ; preds = %.split._crit_edge.i92.i.i.i, %bb.z
  %i.aem = phi i64 [ %i.ael, %bb.z ], [ %.pre141.i94.i.i.i, %.split._crit_edge.i92.i.i.i ]
  %i.aen = phi i64 [ %spec.select.i113.i.i.i, %bb.z ], [ %.pre.i93.i.i.i, %.split._crit_edge.i92.i.i.i ]
  %i.aeo = phi i64 [ %i.aej, %bb.z ], [ %i.aee, %.split._crit_edge.i92.i.i.i ]
  %.sroa.0.8.vec.extract.i95.i.i.i = extractelement <4 x i64> %i.ads, i64 1 ; 2 uses
  %i.aep = shl i64 %.sroa.0.8.vec.extract.i95.i.i.i, %i.aeo
  %i.aeq = or i64 %i.aep, %i.aen                  ; 2 uses
  store i64 %i.aeq, ptr %i.adu, align 8, !tbaa !87
  %i.aer = load ptr, ptr %i.aap, align 8, !tbaa !71
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aem
  store i64 %i.aeq, ptr %i.aes, align 1
  %i.aet = load i64, ptr %i.adt, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.8.vec.extract.i96.i.i.i = extractelement <4 x i64> %i.adq, i64 1
  %i.aeu = add i64 %i.aet, %.sroa.0140.8.vec.extract.i96.i.i.i ; 4 uses
  store i64 %i.aeu, ptr %i.adt, align 8, !tbaa !86
  %i.aev = icmp ugt i64 %i.aeu, 63
  br i1 %i.aev, label %bb.ab, label %._crit_edge.i97.i.i.i

._crit_edge.i97.i.i.i:                            ; preds = %bb.aa
  %.pre142.i98.i.i.i = load i64, ptr %i.adu, align 8, !tbaa !87
  %.pre143.i99.i.i.i = load i64, ptr %i.adv, align 8, !tbaa !74
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aew = sub i64 64, %i.aet                     ; 2 uses
  %i.aex = icmp ugt i64 %i.aew, 63
  %i.aey = lshr i64 %.sroa.0.8.vec.extract.i95.i.i.i, %i.aew
  %spec.select.1.i112.i.i.i = select i1 %i.aex, i64 0, i64 %i.aey
  %i.aez = add i64 %i.aeu, -64                    ; 2 uses
  store i64 %i.aez, ptr %i.adt, align 8, !tbaa !86
  %i.afa = load i64, ptr %i.adv, align 8, !tbaa !74
  %i.afb = add i64 %i.afa, 8                      ; 2 uses
  store i64 %i.afb, ptr %i.adv, align 8, !tbaa !74
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i97.i.i.i
  %i.afc = phi i64 [ %i.afb, %bb.ab ], [ %.pre143.i99.i.i.i, %._crit_edge.i97.i.i.i ]
  %i.afd = phi i64 [ %spec.select.1.i112.i.i.i, %bb.ab ], [ %.pre142.i98.i.i.i, %._crit_edge.i97.i.i.i ]
  %i.afe = phi i64 [ %i.aez, %bb.ab ], [ %i.aeu, %._crit_edge.i97.i.i.i ]
  %.sroa.0.16.vec.extract.i100.i.i.i = extractelement <4 x i64> %i.ads, i64 2 ; 2 uses
  %i.aff = shl i64 %.sroa.0.16.vec.extract.i100.i.i.i, %i.afe
  %i.afg = or i64 %i.aff, %i.afd                  ; 2 uses
  store i64 %i.afg, ptr %i.adu, align 8, !tbaa !87
  %i.afh = load ptr, ptr %i.aap, align 8, !tbaa !71
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afc
  store i64 %i.afg, ptr %i.afi, align 1
  %i.afj = load i64, ptr %i.adt, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.16.vec.extract.i101.i.i.i = extractelement <4 x i64> %i.adq, i64 2
  %i.afk = add i64 %i.afj, %.sroa.0140.16.vec.extract.i101.i.i.i ; 4 uses
  store i64 %i.afk, ptr %i.adt, align 8, !tbaa !86
  %i.afl = icmp ugt i64 %i.afk, 63
  br i1 %i.afl, label %bb.ad, label %._crit_edge144.i102.i.i.i

._crit_edge144.i102.i.i.i:                        ; preds = %bb.ac
  %.pre145.i103.i.i.i = load i64, ptr %i.adu, align 8, !tbaa !87
  %.pre146.i104.i.i.i = load i64, ptr %i.adv, align 8, !tbaa !74
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.afm = sub i64 64, %i.afj                     ; 2 uses
  %i.afn = icmp ugt i64 %i.afm, 63
  %i.afo = lshr i64 %.sroa.0.16.vec.extract.i100.i.i.i, %i.afm
  %spec.select.2.i111.i.i.i = select i1 %i.afn, i64 0, i64 %i.afo
  %i.afp = add i64 %i.afk, -64                    ; 2 uses
  store i64 %i.afp, ptr %i.adt, align 8, !tbaa !86
  %i.afq = load i64, ptr %i.adv, align 8, !tbaa !74
  %i.afr = add i64 %i.afq, 8                      ; 2 uses
  store i64 %i.afr, ptr %i.adv, align 8, !tbaa !74
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge144.i102.i.i.i
  %i.afs = phi i64 [ %i.afr, %bb.ad ], [ %.pre146.i104.i.i.i, %._crit_edge144.i102.i.i.i ]
  %i.aft = phi i64 [ %spec.select.2.i111.i.i.i, %bb.ad ], [ %.pre145.i103.i.i.i, %._crit_edge144.i102.i.i.i ]
  %i.afu = phi i64 [ %i.afp, %bb.ad ], [ %i.afk, %._crit_edge144.i102.i.i.i ]
  %.sroa.0.24.vec.extract.i105.i.i.i = extractelement <4 x i64> %i.ads, i64 3 ; 2 uses
  %i.afv = shl i64 %.sroa.0.24.vec.extract.i105.i.i.i, %i.afu
  %i.afw = or i64 %i.afv, %i.aft                  ; 2 uses
  store i64 %i.afw, ptr %i.adu, align 8, !tbaa !87
  %i.afx = load ptr, ptr %i.aap, align 8, !tbaa !71
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 %i.afs
  store i64 %i.afw, ptr %i.afy, align 1
  %i.afz = load i64, ptr %i.adt, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.24.vec.extract.i106.i.i.i = extractelement <4 x i64> %i.adq, i64 3
  %i.aga = add i64 %i.afz, %.sroa.0140.24.vec.extract.i106.i.i.i ; 3 uses
  store i64 %i.aga, ptr %i.adt, align 8, !tbaa !86
  %i.agb = icmp ugt i64 %i.aga, 63
  %.pre147.i107.i.i.i = load i64, ptr %i.adv, align 8, !tbaa !74 ; 2 uses
  br i1 %i.agb, label %bb.af, label %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i108.i.i.i

._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i108.i.i.i: ; preds = %bb.ae
  %.pre148.i109.i.i.i = load i64, ptr %i.adu, align 8
  br label %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit114.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.agc = sub i64 64, %i.afz                     ; 2 uses
  %i.agd = icmp ugt i64 %i.agc, 63
  %i.age = lshr i64 %.sroa.0.24.vec.extract.i105.i.i.i, %i.agc
  %spec.select.3.i110.i.i.i = select i1 %i.agd, i64 0, i64 %i.age ; 2 uses
  store i64 %spec.select.3.i110.i.i.i, ptr %i.adu, align 8, !tbaa !87
  %i.agf = add i64 %i.aga, -64
  store i64 %i.agf, ptr %i.adt, align 8, !tbaa !86
  %i.agg = add i64 %.pre147.i107.i.i.i, 8         ; 2 uses
  store i64 %i.agg, ptr %i.adv, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit114.i.i.i

.split._crit_edge.i92.i.i.i:                      ; preds = %_ZN4AVX212_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i.i.i.i.i
  %.pre.i93.i.i.i = load i64, ptr %i.adu, align 8, !tbaa !87
  %.pre141.i94.i.i.i = load i64, ptr %i.adv, align 8, !tbaa !74
  br label %bb.aa

_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit114.i.i.i: ; preds = %bb.af, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i108.i.i.i
  %i.agh = phi i64 [ %spec.select.3.i110.i.i.i, %bb.af ], [ %.pre148.i109.i.i.i, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i108.i.i.i ]
  %i.agi = phi i64 [ %i.agg, %bb.af ], [ %.pre147.i107.i.i.i, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i108.i.i.i ]
  %i.agj = load ptr, ptr %i.aap, align 8, !tbaa !71
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 %i.agi
  store i64 %i.agh, ptr %i.agk, align 1
  %i.agl = load i64, ptr %i.adt, align 8, !tbaa !86 ; 3 uses
  %i.agm = lshr i64 %i.agl, 3
  %i.agn = and i64 %i.agl, -8
  %i.ago = and i64 %i.agl, 7
  store i64 %i.ago, ptr %i.adt, align 8, !tbaa !86
  %i.agp = load i64, ptr %i.adu, align 8, !tbaa !87
  %i.agq = lshr i64 %i.agp, %i.agn
  store i64 %i.agq, ptr %i.adu, align 8, !tbaa !87
  %i.agr = load i64, ptr %i.adv, align 8, !tbaa !74
  %i.ags = add i64 %i.agr, %i.agm
  store i64 %i.ags, ptr %i.adv, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i.i

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.agt = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.agu = getelementptr inbounds nuw i8, ptr %i.xh, i64 64
  %i.agv = getelementptr inbounds nuw i8, ptr %i.xh, i64 128
  %i.agw = load ptr, ptr %i.agt, align 8, !tbaa !194 ; 8 uses
  %i.agx = load <16 x i8>, ptr %i.agv, align 8, !tbaa !85
  %i.agy = shufflevector <16 x i8> %i.agx, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agz = load <16 x i8>, ptr %i.agu, align 8, !tbaa !85
  %i.aha = shufflevector <16 x i8> %i.agz, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahb = lshr <16 x i16> %i.wr, splat (i16 4)
  %i.ahc = lshr <16 x i16> %i.wr, splat (i16 8)
  %i.ahd = lshr <16 x i16> %i.wr, splat (i16 12)
  %i.ahe = and <32 x i8> %i.wq, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.ahf = or <32 x i8> %i.ahe, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ahg = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <32 x i8> %i.ahf)
  %i.ahh = bitcast <16 x i16> %i.ahb to <32 x i8>
  %i.ahi = and <32 x i8> %i.ahh, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.ahj = or <32 x i8> %i.ahi, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ahk = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>, <32 x i8> %i.ahj)
  %i.ahl = bitcast <16 x i16> %i.ahc to <32 x i8>
  %i.ahm = and <32 x i8> %i.ahl, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.ahn = or <32 x i8> %i.ahm, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.aho = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12>, <32 x i8> %i.ahn)
  %i.ahp = bitcast <16 x i16> %i.ahd to <32 x i8>
  %i.ahq = or <32 x i8> %i.ahp, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ahr = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>, <32 x i8> %i.ahq)
  %i.ahs = bitcast <32 x i8> %i.ahg to <16 x i16>
  %i.aht = bitcast <32 x i8> %i.ahk to <16 x i16>
  %i.ahu = call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ahs, <16 x i16> %i.aht)
  %i.ahv = bitcast <32 x i8> %i.aho to <16 x i16>
  %i.ahw = bitcast <32 x i8> %i.ahr to <16 x i16>
  %i.ahx = call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ahv, <16 x i16> %i.ahw)
  %i.ahy = call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ahu, <16 x i16> %i.ahx) ; 2 uses
  %i.ahz = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.ahy, <16 x i16> splat (i16 1)) ; 2 uses
  %i.aia = bitcast <16 x i16> %i.ahz to <32 x i8>
  %i.aib = or <32 x i8> %i.aia, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.aic = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.aib)
  %i.aid = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.aib)
  %i.aie = bitcast <32 x i8> %i.aid to <16 x i16>
  %i.aif = shl <16 x i16> %i.aie, splat (i16 8)
  %i.aig = bitcast <32 x i8> %i.aic to <16 x i16>
  %i.aih = or <16 x i16> %i.aif, %i.aig
  %i.aii = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.wr, <16 x i16> %i.aih)
  %i.aij = bitcast <16 x i16> %i.ahy to <32 x i8>
  %i.aik = or <32 x i8> %i.aij, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.ail = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.aha, <32 x i8> %i.aik) ; 2 uses
  %i.aim = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.agy, <32 x i8> %i.aik)
  %i.ain = bitcast <32 x i8> %i.aim to <4 x i64>
  %i.aio = or <32 x i8> %i.ail, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.aip = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.aio)
  %i.aiq = bitcast <32 x i8> %i.aip to <16 x i16>
  %i.air = mul <16 x i16> %i.aii, %i.aiq
  %i.ais = bitcast <16 x i16> %i.air to <4 x i64>
  %i.ait = bitcast <32 x i8> %i.ail to <16 x i16>
  %i.aiu = add <16 x i16> %i.ahz, %i.ait
  %i.aiv = bitcast <16 x i16> %i.aiu to <4 x i64>
  %i.aiw = or <4 x i64> %i.ais, %i.ain
  %i.aix = sub nsw i64 0, %.sroa.speculated.i.i.i.i
  %i.aiy = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits166ClipToEmE5kMask, i64 32), i64 %i.aix
  %i.aiz = load <4 x i64>, ptr %i.aiy, align 2, !tbaa !85 ; 2 uses
  %i.aja = and <4 x i64> %i.aiz, %i.aiv           ; 2 uses
  %i.ajb = and <4 x i64> %i.aiw, %i.aiz           ; 2 uses
  %i.ajc = bitcast <4 x i64> %i.aja to <8 x i32>
  %i.ajd = lshr <8 x i32> %i.ajc, splat (i32 16)
  %i.aje = bitcast <4 x i64> %i.ajb to <8 x i32>
  %i.ajf = lshr <8 x i32> %i.aje, splat (i32 16)
  %i.ajg = and <4 x i64> %i.ajb, splat (i64 281470681808895)
  %i.ajh = bitcast <4 x i64> %i.aja to <8 x i32>
  %i.aji = and <8 x i32> %i.ajh, splat (i32 65535) ; 2 uses
  %i.ajj = add nuw nsw <8 x i32> %i.ajd, %i.aji   ; 2 uses
  %i.ajk = call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.ajf, <8 x i32> %i.aji)
  %i.ajl = bitcast <8 x i32> %i.ajk to <4 x i64>
  %i.ajm = or <4 x i64> %i.ajg, %i.ajl            ; 2 uses
  %.val.cast.i.i.i.i = bitcast <8 x i32> %i.ajj to <4 x i64>
  %i.ajn = lshr <4 x i64> %.val.cast.i.i.i.i, splat (i64 32)
  %i.ajo = bitcast <8 x i32> %i.ajj to <4 x i64>
  %i.ajp = and <4 x i64> %i.ajo, splat (i64 131071) ; 2 uses
  %i.ajq = lshr <4 x i64> %i.ajm, splat (i64 32)
  %i.ajr = and <4 x i64> %i.ajm, splat (i64 4294967295)
  %i.ajs = add nuw nsw <4 x i64> %i.ajn, %i.ajp   ; 4 uses
  %i.ajt = call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.ajq, <4 x i64> %i.ajp)
  %i.aju = or <4 x i64> %i.ajr, %i.ajt            ; 4 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.agw, i64 24 ; 15 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.agw, i64 32 ; 12 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.agw, i64 16 ; 14 uses
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <4 x i64> %i.aju, i64 0 ; 2 uses
  %i.ajy = load i64, ptr %i.ajv, align 8, !tbaa !86
  %i.ajz = shl i64 %.sroa.0.0.vec.extract.i.i.i.i, %i.ajy
  %i.aka = load i64, ptr %i.ajw, align 8, !tbaa !87
  %i.akb = or i64 %i.ajz, %i.aka                  ; 2 uses
  store i64 %i.akb, ptr %i.ajw, align 8, !tbaa !87
  %i.akc = load ptr, ptr %i.agw, align 8, !tbaa !71
  %i.akd = load i64, ptr %i.ajx, align 8, !tbaa !74
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.akd
  store i64 %i.akb, ptr %i.ake, align 1
  %i.akf = load i64, ptr %i.ajv, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.0.vec.extract.i.i.i.i = extractelement <4 x i64> %i.ajs, i64 0
  %i.akg = add i64 %i.akf, %.sroa.0140.0.vec.extract.i.i.i.i ; 4 uses
  store i64 %i.akg, ptr %i.ajv, align 8, !tbaa !86
  %i.akh = icmp ugt i64 %i.akg, 63
  br i1 %i.akh, label %bb.ah, label %.split._crit_edge.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.aki = sub i64 64, %i.akf                     ; 2 uses
  %i.akj = icmp ugt i64 %i.aki, 63
  %i.akk = lshr i64 %.sroa.0.0.vec.extract.i.i.i.i, %i.aki
  %spec.select.i.i.i.i = select i1 %i.akj, i64 0, i64 %i.akk
  %i.akl = add i64 %i.akg, -64                    ; 2 uses
  store i64 %i.akl, ptr %i.ajv, align 8, !tbaa !86
  %i.akm = load i64, ptr %i.ajx, align 8, !tbaa !74
  %i.akn = add i64 %i.akm, 8                      ; 2 uses
  store i64 %i.akn, ptr %i.ajx, align 8, !tbaa !74
  br label %bb.ai

bb.ai:                                            ; preds = %.split._crit_edge.i.i.i.i, %bb.ah
  %i.ako = phi i64 [ %i.akn, %bb.ah ], [ %.pre141.i.i.i.i, %.split._crit_edge.i.i.i.i ]
  %i.akp = phi i64 [ %spec.select.i.i.i.i, %bb.ah ], [ %.pre.i.i.i.i, %.split._crit_edge.i.i.i.i ]
  %i.akq = phi i64 [ %i.akl, %bb.ah ], [ %i.akg, %.split._crit_edge.i.i.i.i ]
  %.sroa.0.8.vec.extract.i.i.i.i = extractelement <4 x i64> %i.aju, i64 1 ; 2 uses
  %i.akr = shl i64 %.sroa.0.8.vec.extract.i.i.i.i, %i.akq
  %i.aks = or i64 %i.akr, %i.akp                  ; 2 uses
  store i64 %i.aks, ptr %i.ajw, align 8, !tbaa !87
  %i.akt = load ptr, ptr %i.agw, align 8, !tbaa !71
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 %i.ako
  store i64 %i.aks, ptr %i.aku, align 1
  %i.akv = load i64, ptr %i.ajv, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.8.vec.extract.i.i.i.i = extractelement <4 x i64> %i.ajs, i64 1
  %i.akw = add i64 %i.akv, %.sroa.0140.8.vec.extract.i.i.i.i ; 4 uses
  store i64 %i.akw, ptr %i.ajv, align 8, !tbaa !86
  %i.akx = icmp ugt i64 %i.akw, 63
  br i1 %i.akx, label %bb.aj, label %._crit_edge.i.i.i.i.a

._crit_edge.i.i.i.i.a:                            ; preds = %bb.ai
  %.pre142.i.i.i.i = load i64, ptr %i.ajw, align 8, !tbaa !87
  %.pre143.i.i.i.i = load i64, ptr %i.ajx, align 8, !tbaa !74
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.aky = sub i64 64, %i.akv                     ; 2 uses
  %i.akz = icmp ugt i64 %i.aky, 63
  %i.ala = lshr i64 %.sroa.0.8.vec.extract.i.i.i.i, %i.aky
  %spec.select.1.i.i.i.i = select i1 %i.akz, i64 0, i64 %i.ala
  %i.alb = add i64 %i.akw, -64                    ; 2 uses
  store i64 %i.alb, ptr %i.ajv, align 8, !tbaa !86
  %i.alc = load i64, ptr %i.ajx, align 8, !tbaa !74
  %i.ald = add i64 %i.alc, 8                      ; 2 uses
  store i64 %i.ald, ptr %i.ajx, align 8, !tbaa !74
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i.i.i.i.a
  %i.ale = phi i64 [ %i.ald, %bb.aj ], [ %.pre143.i.i.i.i, %._crit_edge.i.i.i.i.a ]
  %i.alf = phi i64 [ %spec.select.1.i.i.i.i, %bb.aj ], [ %.pre142.i.i.i.i, %._crit_edge.i.i.i.i.a ]
  %i.alg = phi i64 [ %i.alb, %bb.aj ], [ %i.akw, %._crit_edge.i.i.i.i.a ]
  %.sroa.0.16.vec.extract.i.i.i.i = extractelement <4 x i64> %i.aju, i64 2 ; 2 uses
  %i.alh = shl i64 %.sroa.0.16.vec.extract.i.i.i.i, %i.alg
  %i.ali = or i64 %i.alh, %i.alf                  ; 2 uses
  store i64 %i.ali, ptr %i.ajw, align 8, !tbaa !87
  %i.alj = load ptr, ptr %i.agw, align 8, !tbaa !71
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 %i.ale
  store i64 %i.ali, ptr %i.alk, align 1
  %i.all = load i64, ptr %i.ajv, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.16.vec.extract.i.i.i.i = extractelement <4 x i64> %i.ajs, i64 2
  %i.alm = add i64 %i.all, %.sroa.0140.16.vec.extract.i.i.i.i ; 4 uses
  store i64 %i.alm, ptr %i.ajv, align 8, !tbaa !86
  %i.aln = icmp ugt i64 %i.alm, 63
  br i1 %i.aln, label %bb.al, label %._crit_edge144.i.i.i.i

._crit_edge144.i.i.i.i:                           ; preds = %bb.ak
  %.pre145.i.i.i.i = load i64, ptr %i.ajw, align 8, !tbaa !87
  %.pre146.i.i.i.i = load i64, ptr %i.ajx, align 8, !tbaa !74
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.alo = sub i64 64, %i.all                     ; 2 uses
  %i.alp = icmp ugt i64 %i.alo, 63
  %i.alq = lshr i64 %.sroa.0.16.vec.extract.i.i.i.i, %i.alo
  %spec.select.2.i.i.i.i = select i1 %i.alp, i64 0, i64 %i.alq
  %i.alr = add i64 %i.alm, -64                    ; 2 uses
  store i64 %i.alr, ptr %i.ajv, align 8, !tbaa !86
  %i.als = load i64, ptr %i.ajx, align 8, !tbaa !74
  %i.alt = add i64 %i.als, 8                      ; 2 uses
  store i64 %i.alt, ptr %i.ajx, align 8, !tbaa !74
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge144.i.i.i.i
  %i.alu = phi i64 [ %i.alt, %bb.al ], [ %.pre146.i.i.i.i, %._crit_edge144.i.i.i.i ]
  %i.alv = phi i64 [ %spec.select.2.i.i.i.i, %bb.al ], [ %.pre145.i.i.i.i, %._crit_edge144.i.i.i.i ]
  %i.alw = phi i64 [ %i.alr, %bb.al ], [ %i.alm, %._crit_edge144.i.i.i.i ]
  %.sroa.0.24.vec.extract.i.i.i.i = extractelement <4 x i64> %i.aju, i64 3 ; 2 uses
  %i.alx = shl i64 %.sroa.0.24.vec.extract.i.i.i.i, %i.alw
  %i.aly = or i64 %i.alx, %i.alv                  ; 2 uses
  store i64 %i.aly, ptr %i.ajw, align 8, !tbaa !87
  %i.alz = load ptr, ptr %i.agw, align 8, !tbaa !71
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 %i.alu
  store i64 %i.aly, ptr %i.ama, align 1
  %i.amb = load i64, ptr %i.ajv, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.24.vec.extract.i.i.i.i = extractelement <4 x i64> %i.ajs, i64 3
  %i.amc = add i64 %i.amb, %.sroa.0140.24.vec.extract.i.i.i.i ; 3 uses
  store i64 %i.amc, ptr %i.ajv, align 8, !tbaa !86
  %i.amd = icmp ugt i64 %i.amc, 63
  %.pre147.i.i.i.i = load i64, ptr %i.ajx, align 8, !tbaa !74 ; 2 uses
  br i1 %i.amd, label %bb.an, label %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i.i.i.i

._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i.i.i.i: ; preds = %bb.am
  %.pre148.i.i.i.i = load i64, ptr %i.ajw, align 8
  br label %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.ame = sub i64 64, %i.amb                     ; 2 uses
  %i.amf = icmp ugt i64 %i.ame, 63
  %i.amg = lshr i64 %.sroa.0.24.vec.extract.i.i.i.i, %i.ame
  %spec.select.3.i.i.i.i = select i1 %i.amf, i64 0, i64 %i.amg ; 2 uses
  store i64 %spec.select.3.i.i.i.i, ptr %i.ajw, align 8, !tbaa !87
  %i.amh = add i64 %i.amc, -64
  store i64 %i.amh, ptr %i.ajv, align 8, !tbaa !86
  %i.ami = add i64 %.pre147.i.i.i.i, 8            ; 2 uses
  store i64 %i.ami, ptr %i.ajx, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit.i.i.i

.split._crit_edge.i.i.i.i:                        ; preds = %bb.ag
  %.pre.i.i.i.i = load i64, ptr %i.ajw, align 8, !tbaa !87
  %.pre141.i.i.i.i = load i64, ptr %i.ajx, align 8, !tbaa !74
  br label %bb.ai

_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit.i.i.i: ; preds = %bb.an, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i.i.i.i
  %i.amj = phi i64 [ %spec.select.3.i.i.i.i, %bb.an ], [ %.pre148.i.i.i.i, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i.i.i.i ]
  %i.amk = phi i64 [ %i.ami, %bb.an ], [ %.pre147.i.i.i.i, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge.i.i.i.i ]
  %i.aml = load ptr, ptr %i.agw, align 8, !tbaa !71
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 %i.amk
  store i64 %i.amj, ptr %i.amm, align 1
  %i.amn = load i64, ptr %i.ajv, align 8, !tbaa !86 ; 3 uses
  %i.amo = lshr i64 %i.amn, 3
  %i.amp = and i64 %i.amn, -8
  %i.amq = and i64 %i.amn, 7
  store i64 %i.amq, ptr %i.ajv, align 8, !tbaa !86
  %i.amr = load i64, ptr %i.ajw, align 8, !tbaa !87
  %i.ams = lshr i64 %i.amr, %i.amp
  store i64 %i.ams, ptr %i.ajw, align 8, !tbaa !87
  %i.amt = load i64, ptr %i.ajx, align 8, !tbaa !74
  %i.amu = add i64 %i.amt, %i.amo
  store i64 %i.amu, ptr %i.ajx, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i.i

_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i.i: ; preds = %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit.i.i.i, %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit114.i.i.i, %bb.v
  %i.amv = phi i64 [ %i.vo, %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit.i.i.i ], [ 0, %_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE.exit114.i.i.i ], [ %i.xd, %bb.v ] ; 2 uses
  %i.amw = add nuw nsw i64 %.015.i.i.i.i, 16      ; 2 uses
  %i.amx = icmp samesign ult i64 %i.amw, %.sroa.speculated35.i
  br i1 %i.amx, label %bb.t, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.i.loopexit.i.i, !llvm.loop !10

_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.i.loopexit.i.i: ; preds = %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i.i
  store i64 %i.amv, ptr %.phi.trans.insert.i.i.i.i.i, align 8
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.i.i.i

_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.i.i.i: ; preds = %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.i.loopexit.i.i, %.thread.i.i.i
  %i.amy = add nuw nsw i64 %.063128.i.i.i, 1      ; 2 uses
  %exitcond148.not.i.i.i = icmp eq i64 %i.amy, %i.be
  br i1 %exitcond148.not.i.i.i, label %._crit_edge130.i.i.i, label %.lr.ph129.i.i.i, !llvm.loop !1413

._crit_edge130.i.i.i:                             ; preds = %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.i.i.i, %_ZN4AVX212_GLOBAL__N_19FillRowG8IsEEvPKhmPT_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.amz = add nuw i64 %.066131.i.i.i, 1          ; 2 uses
  %exitcond149.not.i.i.i = icmp eq i64 %i.amz, %.sroa.speculated.i
  br i1 %exitcond149.not.i.i.i, label %.preheader.i.i.i, label %bb.j, !llvm.loop !1414

._crit_edge135.i.i.i:                             ; preds = %.lr.ph134.i.i.i, %.preheader.i.i.i
  %.not.i.i88.i.i.i = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not.i.i88.i.i.i, label %_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_9UpTo8BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge135.i.i.i
  %i.ana = ptrtoint ptr %.sroa.0.0.i to i64
  %i.anb = sub i64 %.sroa.9.0.i, %i.ana
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.i, i64 noundef %i.anb) #39
  br label %_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_9UpTo8BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i

.lr.ph134.i.i.i:                                  ; preds = %.preheader.i.i.i, %.lr.ph134.i.i.i
  %.0133.i.i.i = phi i64 [ %i.anf, %.lr.ph134.i.i.i ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.anc = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.0133.i.i.i ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.anc, align 16, !tbaa !190 ; 2 uses
  %i.and = getelementptr i8, ptr %i.anc, i64 8
  %.val68.i.i.i = load i64, ptr %i.and, align 8, !tbaa !189
  %.val.val.i.i.i = load ptr, ptr %.val.i.i.i, align 64, !tbaa !195
  %i.ane = getelementptr i8, ptr %.val.i.i.i, i64 8
  %.val.val69.i.i.i = load ptr, ptr %i.ane, align 8, !tbaa !194
  call fastcc void @_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E8FinalizeEv(ptr %.val.val.i.i.i, ptr %.val.val69.i.i.i, i64 %.val68.i.i.i) #38
  %i.anf = add nuw nsw i64 %.0133.i.i.i, 1        ; 2 uses
  %exitcond150.not.i.i.i = icmp eq i64 %i.anf, %i.be
  br i1 %exitcond150.not.i.i.i, label %._crit_edge135.i.i.i, label %.lr.ph134.i.i.i, !llvm.loop !1415

.lr.ph49.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph49.i.i
  %.03448.i.i = phi i64 [ %i.ano, %.lr.ph49.i.i ], [ 0, %.preheader.i.i ] ; 5 uses
  %i.ang = getelementptr inbounds nuw [192 x i8], ptr %2, i64 %.03448.i.i ; 5 uses
  %i.anh = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.03448.i.i
  store ptr %i.ang, ptr %i.anh, align 16, !tbaa !190
  %i.ani = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %.03448.i.i
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ang, i64 8
  store ptr %i.ani, ptr %i.anj, align 8, !tbaa !194
  %i.ank = getelementptr inbounds nuw [440 x i8], ptr %i.bf, i64 %.03448.i.i ; 3 uses
  store ptr %i.ank, ptr %i.ang, align 64, !tbaa !195
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 19
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ang, i64 64
  %i.ann = getelementptr inbounds nuw i8, ptr %i.ang, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.anm, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ank, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.ann, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.anl, i64 16, i1 false)
  %i.ano = add nuw nsw i64 %.03448.i.i, 1         ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %i.ano, %i.be
  br i1 %exitcond60.not.i.i, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i, label %.lr.ph49.i.i, !llvm.loop !1416

_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_9UpTo8BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i: ; preds = %bb.ao, %._crit_edge135.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_9UpTo8BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

bb.ap:                                            ; preds = %bb.d
  %i.anp = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.anq = getelementptr inbounds nuw i8, ptr %i.au, i64 1888
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !90
  %i.ans = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.ant = load i64, ptr %i.ans, align 8, !tbaa !73
  call fastcc void @_ZN4AVX212_GLOBAL__N_121WriteACSectionPaletteEPKhmmmmmbPKN12_GLOBAL__N_110PrefixCodeEPKsmRNS3_9BitWriterE(ptr noundef %i.ah, i64 noundef %.sroa.speculated35.i, i64 noundef %.sroa.speculated.i, i64 noundef %i.az, i1 noundef zeroext %i.bc, ptr noundef nonnull %i.anp, ptr noundef %i.anr, i64 noundef %i.ant, ptr noundef nonnull align 8 dereferenceable(40) %i.av) #38
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_9UpTo8BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_9UpTo8BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit: ; preds = %_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_9UpTo8BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i, %bb.ap
  %i.anu = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.anv = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.anw = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.anx = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.any = load <2 x i64>, ptr %i.anu, align 8, !tbaa !68
  %i.anz = load <2 x i64>, ptr %i.anv, align 8, !tbaa !68
  %i.aoa = load <2 x i64>, ptr %i.anw, align 8, !tbaa !68
  %i.aob = load <2 x i64>, ptr %i.anx, align 8, !tbaa !68
  %i.aoc = add <2 x i64> %i.any, <i64 0, i64 7>
  %i.aod = add <2 x i64> %i.aoc, %i.anz
  %i.aoe = add <2 x i64> %i.aod, %i.aoa
  %i.aof = add <2 x i64> %i.aoe, %i.aob           ; 2 uses
  %i.aog = extractelement <2 x i64> %i.aof, i64 1
  %i.aoh = lshr i64 %i.aog, 3
  %i.aoi = extractelement <2 x i64> %i.aof, i64 0
  %i.aoj = add i64 %i.aoi, %i.aoh
  %i.aok = and i64 %i.aoj, 2305843009213693951
  %i.aol = load ptr, ptr %i.g, align 8, !tbaa !1419, !nonnull !121, !align !176
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !151
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 1976
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !70
  %i.aop = getelementptr inbounds nuw [8 x i8], ptr %i.aoo, i64 %i.y
  store i64 %i.aok, ptr %i.aop, align 8, !tbaa !68
  call void %.sroa.610.0.copyload.i(ptr noundef %.sroa.07.0.copyload.i, ptr noundef %i.ah) #36, !inline_history !1373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4AVX212_GLOBAL__N_121WriteACSectionPaletteEPKhmmmmmbPKN12_GLOBAL__N_110PrefixCodeEPKsmRNS3_9BitWriterE(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(40) %8) unnamed_addr #7 {
bb.a:
  %9 = alloca %"struct.AVX2::(anonymous namespace)::ChunkEncoder", align 64 ; 8 uses
  %10 = alloca %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor.87", align 8 ; 6 uses
  br i1 %4, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl i64 %1, 4
  %i.b = mul i64 %i.a, %2
  %i.c = lshr exact i64 %i.b, 3
  %i.d = add nuw nsw i64 %i.c, 64
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #35 ; 2 uses
  %i.f = load ptr, ptr %8, align 8, !tbaa !71     ; 2 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  tail call void %i.h(ptr noundef nonnull %i.f) #36, !inline_history !0
  %.pre = load ptr, ptr %8, align 8, !tbaa !71
  br label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit

_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit:      ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.e, %bb.b ], [ %.pre, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 8 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !68   ; 2 uses
  %i.p = shl nuw i64 1, %i.o
  %i.q = load i64, ptr %i.n, align 8, !tbaa !68
  %i.r = or i64 %i.q, %i.p                        ; 2 uses
  store i64 %i.r, ptr %i.n, align 8, !tbaa !68
  %i.s = add i64 %i.o, 1
  store i64 %i.s, ptr %i.m, align 8, !tbaa !68
  store i64 %i.r, ptr %i.l, align 1
  %i.t = load i64, ptr %i.m, align 8, !tbaa !68   ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.t, -8
  %i.w = and i64 %i.t, 7                          ; 2 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !68
  %i.y = lshr i64 %i.x, %i.v
  %i.z = load i64, ptr %i.j, align 8, !tbaa !74
  %i.aa = add i64 %i.z, %i.u                      ; 2 uses
  store i64 %i.aa, ptr %i.j, align 8, !tbaa !74
  %i.ab = load ptr, ptr %8, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = shl nuw nsw i64 1, %i.w
  %i.ae = or i64 %i.y, %i.ad                      ; 2 uses
  store i64 %i.ae, ptr %i.n, align 8, !tbaa !68
  %i.af = add nuw nsw i64 %i.w, 1
  store i64 %i.af, ptr %i.m, align 8, !tbaa !68
  store i64 %i.ae, ptr %i.ac, align 1
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !68  ; 3 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = and i64 %i.ag, -8
  %i.aj = and i64 %i.ag, 7
  %i.ak = load i64, ptr %i.n, align 8, !tbaa !68
  %i.al = lshr i64 %i.ak, %i.ai                   ; 2 uses
  %i.am = load i64, ptr %i.j, align 8, !tbaa !74
  %i.an = add i64 %i.am, %i.ah                    ; 2 uses
  store i64 %i.an, ptr %i.j, align 8, !tbaa !74
  %i.ao = load ptr, ptr %8, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i64 %i.al, ptr %i.n, align 8, !tbaa !68
  %i.aq = add nuw nsw i64 %i.aj, 2
  store i64 %i.aq, ptr %i.m, align 8, !tbaa !68
  store i64 %i.al, ptr %i.ap, align 1
  %i.ar = load i64, ptr %i.m, align 8, !tbaa !68  ; 3 uses
end_hunk_1
begin_hunk_2_@_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13From9To13BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.avu, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.avs, i64 16, i1 false)
  %i.avv = add nuw nsw i64 %.03457.i.i, 1         ; 2 uses
  %exitcond77.not.i.i = icmp eq i64 %i.avv, %i.bg
  br i1 %exitcond77.not.i.i, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i, label %.lr.ph58.i.i, !llvm.loop !1531

_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_13From9To13BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i: ; preds = %bb.ai, %._crit_edge158.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13From9To13BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

bb.am:                                            ; preds = %bb.d
  %i.avw = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.avx = getelementptr inbounds nuw i8, ptr %i.aw, i64 1888
  %i.avy = load ptr, ptr %i.avx, align 8, !tbaa !90
  %i.avz = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.awa = load i64, ptr %i.avz, align 8, !tbaa !73
  call fastcc void @_ZN4AVX212_GLOBAL__N_121WriteACSectionPaletteEPKhmmmmmbPKN12_GLOBAL__N_110PrefixCodeEPKsmRNS3_9BitWriterE(ptr noundef %i.ai, i64 noundef %.sroa.speculated35.i, i64 noundef %.sroa.speculated.i, i64 noundef %i.bb, i1 noundef zeroext %i.be, ptr noundef nonnull %i.avw, ptr noundef %i.avy, i64 noundef %i.awa, ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #38
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13From9To13BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13From9To13BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit: ; preds = %_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_13From9To13BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i, %bb.am
  %i.awb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.awc = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.awd = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.awe = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.awf = load <2 x i64>, ptr %i.awb, align 8, !tbaa !68
  %i.awg = load <2 x i64>, ptr %i.awc, align 8, !tbaa !68
  %i.awh = load <2 x i64>, ptr %i.awd, align 8, !tbaa !68
  %i.awi = load <2 x i64>, ptr %i.awe, align 8, !tbaa !68
  %i.awj = add <2 x i64> %i.awf, <i64 0, i64 7>
  %i.awk = add <2 x i64> %i.awj, %i.awg
  %i.awl = add <2 x i64> %i.awk, %i.awh
  %i.awm = add <2 x i64> %i.awl, %i.awi           ; 2 uses
  %i.awn = extractelement <2 x i64> %i.awm, i64 1
  %i.awo = lshr i64 %i.awn, 3
  %i.awp = extractelement <2 x i64> %i.awm, i64 0
  %i.awq = add i64 %i.awp, %i.awo
  %i.awr = and i64 %i.awq, 2305843009213693951
  %i.aws = load ptr, ptr %i.h, align 8, !tbaa !1534, !nonnull !121, !align !176
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !151
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 1976
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !70
  %i.aww = getelementptr inbounds nuw [8 x i8], ptr %i.awv, i64 %i.z
  store i64 %i.awr, ptr %i.aww, align 8, !tbaa !68
  call void %.sroa.610.0.copyload.i(ptr noundef %.sroa.07.0.copyload.i, ptr noundef %i.ai) #36, !inline_history !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4AVX212_GLOBAL__N_113From9To13Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %5) unnamed_addr #31 align 2 {
.split:
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
  %i.s = load <16 x i8>, ptr %4, align 1, !tbaa !85
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.u = load <16 x i8>, ptr %3, align 1, !tbaa !85
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.w = load <4 x i64>, ptr %0, align 1, !tbaa !85 ; 2 uses
  %i.x = bitcast <4 x i64> %i.w to <16 x i16>     ; 4 uses
  %i.y = lshr <16 x i16> %i.x, splat (i16 4)
  %i.z = lshr <16 x i16> %i.x, splat (i16 8)
  %i.aa = lshr <16 x i16> %i.x, splat (i16 12)
  %i.ab = bitcast <4 x i64> %i.w to <32 x i8>
  %i.ac = and <32 x i8> %i.ab, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.ad = or <32 x i8> %i.ac, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ae = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <32 x i8> %i.ad)
  %i.af = bitcast <16 x i16> %i.y to <32 x i8>
  %i.ag = and <32 x i8> %i.af, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.ah = or <32 x i8> %i.ag, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ai = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>, <32 x i8> %i.ah)
  %i.aj = bitcast <16 x i16> %i.z to <32 x i8>
  %i.ak = and <32 x i8> %i.aj, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.al = or <32 x i8> %i.ak, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.am = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12>, <32 x i8> %i.al)
  %i.an = bitcast <16 x i16> %i.aa to <32 x i8>
  %i.ao = or <32 x i8> %i.an, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ap = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>, <32 x i8> %i.ao)
  %i.aq = bitcast <32 x i8> %i.ae to <16 x i16>
  %i.ar = bitcast <32 x i8> %i.ai to <16 x i16>
  %i.as = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.aq, <16 x i16> %i.ar)
  %i.at = bitcast <32 x i8> %i.am to <16 x i16>
  %i.au = bitcast <32 x i8> %i.ap to <16 x i16>
  %i.av = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.at, <16 x i16> %i.au)
  %i.aw = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.as, <16 x i16> %i.av) ; 2 uses
  %i.ax = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.aw, <16 x i16> splat (i16 1)) ; 3 uses
  %i.ay = bitcast <16 x i16> %i.ax to <32 x i8>
  %i.az = or <32 x i8> %i.ay, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.ba = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.az)
  %i.bb = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.az)
  %i.bc = bitcast <32 x i8> %i.bb to <16 x i16>
  %i.bd = shl <16 x i16> %i.bc, splat (i16 8)
  %i.be = bitcast <32 x i8> %i.ba to <16 x i16>
  %i.bf = or <16 x i16> %i.bd, %i.be
  %i.bg = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.x, <16 x i16> %i.bf) ; 2 uses
  %i.bh = bitcast <16 x i16> %i.aw to <32 x i8>
  %i.bi = or <32 x i8> %i.bh, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.bj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.v, <32 x i8> %i.bi)
  %i.bk = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.t, <32 x i8> %i.bi)
  %i.bl = bitcast <32 x i8> %i.bk to <16 x i16>   ; 2 uses
  %i.bm = shufflevector <16 x i16> %i.bl, <16 x i16> %i.bg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bn = bitcast <16 x i16> %i.bm to <4 x i64>
  %i.bo = shufflevector <16 x i16> %i.bl, <16 x i16> %i.bg, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bp = bitcast <16 x i16> %i.bo to <4 x i64>
  %i.bq = shufflevector <16 x i16> %i.bm, <16 x i16> %i.bo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.br = bitcast <16 x i16> %i.bq to <4 x i64>   ; 2 uses
  %i.bs = shufflevector <4 x i64> %i.bn, <4 x i64> %i.bp, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.bt = bitcast <32 x i8> %i.bj to <16 x i16>   ; 2 uses
  %i.bu = shufflevector <16 x i16> %i.bt, <16 x i16> %i.ax, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bv = bitcast <16 x i16> %i.bu to <4 x i64>
  %i.bw = shufflevector <16 x i16> %i.bt, <16 x i16> %i.ax, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bx = bitcast <16 x i16> %i.bw to <4 x i64>
  %i.by = shufflevector <16 x i16> %i.bu, <16 x i16> %i.bw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bz = bitcast <16 x i16> %i.by to <4 x i64>
  %i.ca = shufflevector <4 x i64> %i.bv, <4 x i64> %i.bx, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.cb = and <4 x i64> %i.q, %i.bz
  %i.cc = and <4 x i64> %i.cb, %i.n               ; 2 uses
  %i.cd = and <4 x i64> %i.r, %i.br
  %i.ce = and <4 x i64> %i.j, %i.ca
  %i.cf = and <4 x i64> %i.ce, %i.e               ; 2 uses
  %i.cg = and <4 x i64> %i.k, %i.bs
  %i.ch = bitcast <4 x i64> %i.cc to <8 x i32>
  %i.ci = lshr <8 x i32> %i.ch, splat (i32 16)
  %i.cj = bitcast <4 x i64> %i.cd to <8 x i32>
  %i.ck = lshr <8 x i32> %i.cj, splat (i32 16)
  %.reass.le = and <4 x i64> %invariant.op, %i.br
  %i.cl = bitcast <4 x i64> %i.cc to <8 x i32>
  %i.cm = and <8 x i32> %i.cl, splat (i32 65535)  ; 2 uses
  %i.cn = add nuw nsw <8 x i32> %i.ci, %i.cm      ; 2 uses
  %i.co = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.ck, <8 x i32> %i.cm)
  %i.cp = bitcast <8 x i32> %i.co to <4 x i64>
  %i.cq = or <4 x i64> %.reass.le, %i.cp          ; 2 uses
  %i.cr = bitcast <4 x i64> %i.cf to <8 x i32>
  %i.cs = lshr <8 x i32> %i.cr, splat (i32 16)
  %i.ct = bitcast <4 x i64> %i.cg to <8 x i32>
  %i.cu = lshr <8 x i32> %i.ct, splat (i32 16)
  %.reass90.le = and <4 x i64> %i.bs, %invariant.op89
  %i.cv = bitcast <4 x i64> %i.cf to <8 x i32>
  %i.cw = and <8 x i32> %i.cv, splat (i32 65535)  ; 2 uses
  %i.cx = add nuw nsw <8 x i32> %i.cs, %i.cw      ; 2 uses
  %i.cy = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.cu, <8 x i32> %i.cw)
  %i.cz = bitcast <8 x i32> %i.cy to <4 x i64>
  %i.da = or <4 x i64> %.reass90.le, %i.cz        ; 2 uses
  %i.db = bitcast <8 x i32> %i.cx to <4 x i64>
  %.val5.cast = bitcast <8 x i32> %i.cn to <4 x i64>
  %i.dc = lshr <4 x i64> %.val5.cast, splat (i64 32)
  %i.dd = bitcast <8 x i32> %i.cn to <4 x i64>
  %i.de = and <4 x i64> %i.dd, splat (i64 131071) ; 2 uses
  %i.df = lshr <4 x i64> %i.cq, splat (i64 32)
  %i.dg = and <4 x i64> %i.cq, splat (i64 4294967295)
  %i.dh = add nuw nsw <4 x i64> %i.dc, %i.de      ; 4 uses
  %i.di = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.df, <4 x i64> %i.de)
  %i.dj = or <4 x i64> %i.di, %i.dg               ; 4 uses
  %i.dk = lshr <4 x i64> %i.db, splat (i64 32)
  %i.dl = bitcast <8 x i32> %i.cx to <4 x i64>
  %i.dm = and <4 x i64> %i.dl, splat (i64 131071) ; 2 uses
  %i.dn = lshr <4 x i64> %i.da, splat (i64 32)
  %i.do = and <4 x i64> %i.da, splat (i64 4294967295)
  %i.dp = add nuw nsw <4 x i64> %i.dk, %i.dm      ; 4 uses
  %i.dq = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.dn, <4 x i64> %i.dm)
  %i.dr = or <4 x i64> %i.dq, %i.do               ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 27 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 20 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 26 uses
  %.sroa.0181.0.vec.extract = extractelement <4 x i64> %i.dj, i64 0 ; 2 uses
  %i.dv = load i64, ptr %i.ds, align 8, !tbaa !86
  %i.dw = shl i64 %.sroa.0181.0.vec.extract, %i.dv
  %i.dx = load i64, ptr %i.dt, align 8, !tbaa !87
  %i.dy = or i64 %i.dx, %i.dw                     ; 2 uses
  store i64 %i.dy, ptr %i.dt, align 8, !tbaa !87
  %i.dz = load ptr, ptr %5, align 8, !tbaa !71
  %i.ea = load i64, ptr %i.du, align 8, !tbaa !74
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ea
  store i64 %i.dy, ptr %i.eb, align 1
  %i.ec = load i64, ptr %i.ds, align 8, !tbaa !86 ; 2 uses
  %.sroa.0183.0.vec.extract = extractelement <4 x i64> %i.dh, i64 0
  %i.ed = add i64 %.sroa.0183.0.vec.extract, %i.ec ; 4 uses
  store i64 %i.ed, ptr %i.ds, align 8, !tbaa !86
  %i.ee = icmp ugt i64 %i.ed, 63
  br i1 %i.ee, label %bb.a, label %.split._crit_edge

bb.a:                                             ; preds = %.split
  %i.ef = sub i64 64, %i.ec                       ; 2 uses
  %i.eg = icmp ugt i64 %i.ef, 63
  %i.eh = lshr i64 %.sroa.0181.0.vec.extract, %i.ef
  %spec.select = select i1 %i.eg, i64 0, i64 %i.eh
  %i.ei = add i64 %i.ed, -64                      ; 2 uses
  store i64 %i.ei, ptr %i.ds, align 8, !tbaa !86
  %i.ej = load i64, ptr %i.du, align 8, !tbaa !74
  %i.ek = add i64 %i.ej, 8                        ; 2 uses
  store i64 %i.ek, ptr %i.du, align 8, !tbaa !74
  br label %bb.b

bb.b:                                             ; preds = %.split._crit_edge, %bb.a
  %i.el = phi i64 [ %i.ek, %bb.a ], [ %.pre185, %.split._crit_edge ]
  %i.em = phi i64 [ %spec.select, %bb.a ], [ %.pre, %.split._crit_edge ]
  %i.en = phi i64 [ %i.ei, %bb.a ], [ %i.ed, %.split._crit_edge ]
  %.sroa.0181.8.vec.extract = extractelement <4 x i64> %i.dj, i64 1 ; 2 uses
  %i.eo = shl i64 %.sroa.0181.8.vec.extract, %i.en
  %i.ep = or i64 %i.em, %i.eo                     ; 2 uses
  store i64 %i.ep, ptr %i.dt, align 8, !tbaa !87
  %i.eq = load ptr, ptr %5, align 8, !tbaa !71
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.el
  store i64 %i.ep, ptr %i.er, align 1
  %i.es = load i64, ptr %i.ds, align 8, !tbaa !86 ; 2 uses
  %.sroa.0183.8.vec.extract = extractelement <4 x i64> %i.dh, i64 1
  %i.et = add i64 %.sroa.0183.8.vec.extract, %i.es ; 4 uses
  store i64 %i.et, ptr %i.ds, align 8, !tbaa !86
  %i.eu = icmp ugt i64 %i.et, 63
  br i1 %i.eu, label %bb.c, label %._crit_edge.a

._crit_edge.a:                                    ; preds = %bb.b
  %.pre186 = load i64, ptr %i.dt, align 8, !tbaa !87
  %.pre187 = load i64, ptr %i.du, align 8, !tbaa !74
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ev = sub i64 64, %i.es                       ; 2 uses
  %i.ew = icmp ugt i64 %i.ev, 63
  %i.ex = lshr i64 %.sroa.0181.8.vec.extract, %i.ev
  %spec.select.1 = select i1 %i.ew, i64 0, i64 %i.ex
  %i.ey = add i64 %i.et, -64                      ; 2 uses
  store i64 %i.ey, ptr %i.ds, align 8, !tbaa !86
  %i.ez = load i64, ptr %i.du, align 8, !tbaa !74
  %i.fa = add i64 %i.ez, 8                        ; 2 uses
  store i64 %i.fa, ptr %i.du, align 8, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.a, %bb.c
  %i.fb = phi i64 [ %i.fa, %bb.c ], [ %.pre187, %._crit_edge.a ]
  %i.fc = phi i64 [ %spec.select.1, %bb.c ], [ %.pre186, %._crit_edge.a ]
  %i.fd = phi i64 [ %i.ey, %bb.c ], [ %i.et, %._crit_edge.a ]
  %.sroa.0181.16.vec.extract = extractelement <4 x i64> %i.dj, i64 2 ; 2 uses
  %i.fe = shl i64 %.sroa.0181.16.vec.extract, %i.fd
  %i.ff = or i64 %i.fc, %i.fe                     ; 2 uses
  store i64 %i.ff, ptr %i.dt, align 8, !tbaa !87
  %i.fg = load ptr, ptr %5, align 8, !tbaa !71
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fb
  store i64 %i.ff, ptr %i.fh, align 1
  %i.fi = load i64, ptr %i.ds, align 8, !tbaa !86 ; 2 uses
  %.sroa.0183.16.vec.extract = extractelement <4 x i64> %i.dh, i64 2
  %i.fj = add i64 %.sroa.0183.16.vec.extract, %i.fi ; 4 uses
  store i64 %i.fj, ptr %i.ds, align 8, !tbaa !86
  %i.fk = icmp ugt i64 %i.fj, 63
  br i1 %i.fk, label %bb.e, label %._crit_edge188

._crit_edge188:                                   ; preds = %bb.d
  %.pre189 = load i64, ptr %i.dt, align 8, !tbaa !87
  %.pre190 = load i64, ptr %i.du, align 8, !tbaa !74
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fl = sub i64 64, %i.fi                       ; 2 uses
  %i.fm = icmp ugt i64 %i.fl, 63
  %i.fn = lshr i64 %.sroa.0181.16.vec.extract, %i.fl
  %spec.select.2 = select i1 %i.fm, i64 0, i64 %i.fn
  %i.fo = add i64 %i.fj, -64                      ; 2 uses
  store i64 %i.fo, ptr %i.ds, align 8, !tbaa !86
  %i.fp = load i64, ptr %i.du, align 8, !tbaa !74
  %i.fq = add i64 %i.fp, 8                        ; 2 uses
  store i64 %i.fq, ptr %i.du, align 8, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge188, %bb.e
  %i.fr = phi i64 [ %i.fq, %bb.e ], [ %.pre190, %._crit_edge188 ]
  %i.fs = phi i64 [ %spec.select.2, %bb.e ], [ %.pre189, %._crit_edge188 ]
  %i.ft = phi i64 [ %i.fo, %bb.e ], [ %i.fj, %._crit_edge188 ]
  %.sroa.0181.24.vec.extract = extractelement <4 x i64> %i.dj, i64 3 ; 2 uses
  %i.fu = shl i64 %.sroa.0181.24.vec.extract, %i.ft
  %i.fv = or i64 %i.fs, %i.fu                     ; 2 uses
  store i64 %i.fv, ptr %i.dt, align 8, !tbaa !87
  %i.fw = load ptr, ptr %5, align 8, !tbaa !71
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fr
  store i64 %i.fv, ptr %i.fx, align 1
  %i.fy = load i64, ptr %i.ds, align 8, !tbaa !86 ; 2 uses
  %.sroa.0183.24.vec.extract = extractelement <4 x i64> %i.dh, i64 3
  %i.fz = add i64 %.sroa.0183.24.vec.extract, %i.fy ; 4 uses
  store i64 %i.fz, ptr %i.ds, align 8, !tbaa !86
  %i.ga = icmp ugt i64 %i.fz, 63
  br i1 %i.ga, label %bb.g, label %._crit_edge191

._crit_edge191:                                   ; preds = %bb.f
  %.pre192 = load i64, ptr %i.dt, align 8, !tbaa !87
  %.pre193 = load i64, ptr %i.du, align 8, !tbaa !74
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gb = sub i64 64, %i.fy                       ; 2 uses
  %i.gc = icmp ugt i64 %i.gb, 63
  %i.gd = lshr i64 %.sroa.0181.24.vec.extract, %i.gb
  %spec.select.3 = select i1 %i.gc, i64 0, i64 %i.gd
  %i.ge = add i64 %i.fz, -64                      ; 2 uses
  store i64 %i.ge, ptr %i.ds, align 8, !tbaa !86
  %i.gf = load i64, ptr %i.du, align 8, !tbaa !74
  %i.gg = add i64 %i.gf, 8                        ; 2 uses
  store i64 %i.gg, ptr %i.du, align 8, !tbaa !74
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge191, %bb.g
  %i.gh = phi i64 [ %i.gg, %bb.g ], [ %.pre193, %._crit_edge191 ]
  %i.gi = phi i64 [ %spec.select.3, %bb.g ], [ %.pre192, %._crit_edge191 ]
  %i.gj = phi i64 [ %i.ge, %bb.g ], [ %i.fz, %._crit_edge191 ]
  %.sroa.7182.32.vec.extract = extractelement <4 x i64> %i.dr, i64 0 ; 2 uses
  %i.gk = shl i64 %.sroa.7182.32.vec.extract, %i.gj
  %i.gl = or i64 %i.gi, %i.gk                     ; 2 uses
  store i64 %i.gl, ptr %i.dt, align 8, !tbaa !87
  %i.gm = load ptr, ptr %5, align 8, !tbaa !71
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gh
  store i64 %i.gl, ptr %i.gn, align 1
  %i.go = load i64, ptr %i.ds, align 8, !tbaa !86 ; 2 uses
  %.sroa.7184.32.vec.extract = extractelement <4 x i64> %i.dp, i64 0
  %i.gp = add i64 %.sroa.7184.32.vec.extract, %i.go ; 4 uses
  store i64 %i.gp, ptr %i.ds, align 8, !tbaa !86
  %i.gq = icmp ugt i64 %i.gp, 63
  br i1 %i.gq, label %bb.i, label %._crit_edge194

._crit_edge194:                                   ; preds = %bb.h
  %.pre195 = load i64, ptr %i.dt, align 8, !tbaa !87
  %.pre196 = load i64, ptr %i.du, align 8, !tbaa !74
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gr = sub i64 64, %i.go                       ; 2 uses
  %i.gs = icmp ugt i64 %i.gr, 63
  %i.gt = lshr i64 %.sroa.7182.32.vec.extract, %i.gr
  %spec.select.4 = select i1 %i.gs, i64 0, i64 %i.gt
  %i.gu = add i64 %i.gp, -64                      ; 2 uses
  store i64 %i.gu, ptr %i.ds, align 8, !tbaa !86
  %i.gv = load i64, ptr %i.du, align 8, !tbaa !74
  %i.gw = add i64 %i.gv, 8                        ; 2 uses
  store i64 %i.gw, ptr %i.du, align 8, !tbaa !74
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge194, %bb.i
  %i.gx = phi i64 [ %i.gw, %bb.i ], [ %.pre196, %._crit_edge194 ]
  %i.gy = phi i64 [ %spec.select.4, %bb.i ], [ %.pre195, %._crit_edge194 ]
  %i.gz = phi i64 [ %i.gu, %bb.i ], [ %i.gp, %._crit_edge194 ]
  %.sroa.7182.40.vec.extract = extractelement <4 x i64> %i.dr, i64 1 ; 2 uses
  %i.ha = shl i64 %.sroa.7182.40.vec.extract, %i.gz
  %i.hb = or i64 %i.gy, %i.ha                     ; 2 uses
  store i64 %i.hb, ptr %i.dt, align 8, !tbaa !87
  %i.hc = load ptr, ptr %5, align 8, !tbaa !71
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gx
  store i64 %i.hb, ptr %i.hd, align 1
  %i.he = load i64, ptr %i.ds, align 8, !tbaa !86 ; 2 uses
  %.sroa.7184.40.vec.extract = extractelement <4 x i64> %i.dp, i64 1
  %i.hf = add i64 %.sroa.7184.40.vec.extract, %i.he ; 4 uses
  store i64 %i.hf, ptr %i.ds, align 8, !tbaa !86
  %i.hg = icmp ugt i64 %i.hf, 63
  br i1 %i.hg, label %bb.k, label %._crit_edge197

._crit_edge197:                                   ; preds = %bb.j
  %.pre198 = load i64, ptr %i.dt, align 8, !tbaa !87
  %.pre199 = load i64, ptr %i.du, align 8, !tbaa !74
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.hh = sub i64 64, %i.he                       ; 2 uses
  %i.hi = icmp ugt i64 %i.hh, 63
  %i.hj = lshr i64 %.sroa.7182.40.vec.extract, %i.hh
  %spec.select.5 = select i1 %i.hi, i64 0, i64 %i.hj
  %i.hk = add i64 %i.hf, -64                      ; 2 uses
  store i64 %i.hk, ptr %i.ds, align 8, !tbaa !86
  %i.hl = load i64, ptr %i.du, align 8, !tbaa !74
  %i.hm = add i64 %i.hl, 8                        ; 2 uses
  store i64 %i.hm, ptr %i.du, align 8, !tbaa !74
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge197, %bb.k
  %i.hn = phi i64 [ %i.hm, %bb.k ], [ %.pre199, %._crit_edge197 ]
  %i.ho = phi i64 [ %spec.select.5, %bb.k ], [ %.pre198, %._crit_edge197 ]
  %i.hp = phi i64 [ %i.hk, %bb.k ], [ %i.hf, %._crit_edge197 ]
  %.sroa.7182.48.vec.extract = extractelement <4 x i64> %i.dr, i64 2 ; 2 uses
  %i.hq = shl i64 %.sroa.7182.48.vec.extract, %i.hp
  %i.hr = or i64 %i.ho, %i.hq                     ; 2 uses
  store i64 %i.hr, ptr %i.dt, align 8, !tbaa !87
  %i.hs = load ptr, ptr %5, align 8, !tbaa !71
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hn
  store i64 %i.hr, ptr %i.ht, align 1
  %i.hu = load i64, ptr %i.ds, align 8, !tbaa !86 ; 2 uses
  %.sroa.7184.48.vec.extract = extractelement <4 x i64> %i.dp, i64 2
  %i.hv = add i64 %.sroa.7184.48.vec.extract, %i.hu ; 4 uses
  store i64 %i.hv, ptr %i.ds, align 8, !tbaa !86
  %i.hw = icmp ugt i64 %i.hv, 63
  br i1 %i.hw, label %bb.m, label %._crit_edge200

._crit_edge200:                                   ; preds = %bb.l
  %.pre201 = load i64, ptr %i.dt, align 8, !tbaa !87
  %.pre202 = load i64, ptr %i.du, align 8, !tbaa !74
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hx = sub i64 64, %i.hu                       ; 2 uses
  %i.hy = icmp ugt i64 %i.hx, 63
  %i.hz = lshr i64 %.sroa.7182.48.vec.extract, %i.hx
  %spec.select.6 = select i1 %i.hy, i64 0, i64 %i.hz
  %i.ia = add i64 %i.hv, -64                      ; 2 uses
  store i64 %i.ia, ptr %i.ds, align 8, !tbaa !86
  %i.ib = load i64, ptr %i.du, align 8, !tbaa !74
  %i.ic = add i64 %i.ib, 8                        ; 2 uses
  store i64 %i.ic, ptr %i.du, align 8, !tbaa !74
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge200, %bb.m
  %i.id = phi i64 [ %i.ic, %bb.m ], [ %.pre202, %._crit_edge200 ]
  %i.ie = phi i64 [ %spec.select.6, %bb.m ], [ %.pre201, %._crit_edge200 ]
  %i.if = phi i64 [ %i.ia, %bb.m ], [ %i.hv, %._crit_edge200 ]
  %.sroa.7182.56.vec.extract = extractelement <4 x i64> %i.dr, i64 3 ; 2 uses
  %i.ig = shl i64 %.sroa.7182.56.vec.extract, %i.if
  %i.ih = or i64 %i.ie, %i.ig                     ; 2 uses
  store i64 %i.ih, ptr %i.dt, align 8, !tbaa !87
  %i.ii = load ptr, ptr %5, align 8, !tbaa !71
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.id
  store i64 %i.ih, ptr %i.ij, align 1
  %i.ik = load i64, ptr %i.ds, align 8, !tbaa !86 ; 2 uses
  %.sroa.7184.56.vec.extract = extractelement <4 x i64> %i.dp, i64 3
  %i.il = add i64 %.sroa.7184.56.vec.extract, %i.ik ; 3 uses
  store i64 %i.il, ptr %i.ds, align 8, !tbaa !86
  %i.im = icmp ugt i64 %i.il, 63
  %.pre203 = load i64, ptr %i.du, align 8, !tbaa !74 ; 2 uses
  br i1 %i.im, label %bb.o, label %._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge

._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge: ; preds = %bb.n
  %.pre204 = load i64, ptr %i.dt, align 8
  br label %_ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit

bb.o:                                             ; preds = %bb.n
  %i.in = sub i64 64, %i.ik                       ; 2 uses
  %i.io = icmp ugt i64 %i.in, 63
  %i.ip = lshr i64 %.sroa.7182.56.vec.extract, %i.in
  %spec.select.7 = select i1 %i.io, i64 0, i64 %i.ip ; 2 uses
  store i64 %spec.select.7, ptr %i.dt, align 8, !tbaa !87
  %i.iq = add i64 %i.il, -64
  store i64 %i.iq, ptr %i.ds, align 8, !tbaa !86
  %i.ir = add i64 %.pre203, 8                     ; 2 uses
  store i64 %i.ir, ptr %i.du, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit

_ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit: ; preds = %._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge, %bb.o
  %i.is = phi i64 [ %spec.select.7, %bb.o ], [ %.pre204, %._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge ]
  %i.it = phi i64 [ %i.ir, %bb.o ], [ %.pre203, %._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge ]
  %i.iu = load ptr, ptr %5, align 8, !tbaa !71
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.it
  store i64 %i.is, ptr %i.iv, align 1
  %i.iw = load i64, ptr %i.ds, align 8, !tbaa !86 ; 3 uses
  %i.ix = lshr i64 %i.iw, 3
  %i.iy = and i64 %i.iw, -8
  %i.iz = and i64 %i.iw, 7
  store i64 %i.iz, ptr %i.ds, align 8, !tbaa !86
  %i.ja = load i64, ptr %i.dt, align 8, !tbaa !87
  %i.jb = lshr i64 %i.ja, %i.iy
  store i64 %i.jb, ptr %i.dt, align 8, !tbaa !87
  %i.jc = load i64, ptr %i.du, align 8, !tbaa !74
  %i.jd = add i64 %i.jc, %i.ix
  store i64 %i.jd, ptr %i.du, align 8, !tbaa !74
  ret void

.split._crit_edge:                                ; preds = %.split
  %.pre = load i64, ptr %i.dt, align 8, !tbaa !87
  %.pre185 = load i64, ptr %i.du, align 8, !tbaa !74
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13Exactly14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENUlS8_mE_8__invokeES8_m(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #5 align 2 {
bb.a:
  tail call fastcc void @_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13Exactly14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m(ptr noundef %0, i64 noundef %1) #38
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13Exactly14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca [16 x i16], align 64              ; 5 uses
  %i.b = alloca [4 x ptr], align 16               ; 17 uses
  %i.c = alloca [4 x ptr], align 16               ; 13 uses
  %2 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChunkEncoder.183"], align 64 ; 11 uses
  %3 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor.185"], align 16 ; 9 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !1662, !nonnull !121, !align !176
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1663, !nonnull !121, !align !176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !151  ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !125  ; 2 uses
  %i.m = urem i64 %i.g, %i.l
  %i.n = udiv i64 %i.g, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.p = load i64, ptr %i.o, align 8, !tbaa !127
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.r = load i64, ptr %i.q, align 8, !tbaa !128
  %i.s = mul i64 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1664, !nonnull !121
  %i.v = load i8, ptr %i.u, align 1, !tbaa !95, !range !108, !noundef !121
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = add i64 %i.g, 2
  %i.y = add i64 %i.x, %i.s
  %i.z = select i1 %i.w, i64 0, i64 %i.y          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !123 ; 2 uses
  %i.ac = shl i64 %i.m, 8                         ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %.sroa.speculated34.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 256) ; 69 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !124 ; 2 uses
  %i.ag = shl i64 %i.n, 8                         ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 256) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !72 ; 2 uses
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.58.0.copyload.i = load ptr, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !72
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.69.0.copyload.i = load ptr, ptr %.sroa.69.0..sroa_idx.i, align 8, !tbaa !72
  %i.ai = call noundef ptr %.sroa.58.0.copyload.i(ptr noundef %.sroa.0.0.copyload.i, i64 noundef %i.ac, i64 noundef %i.ag, i64 noundef %.sroa.speculated34.i, i64 noundef %.sroa.speculated.i, ptr noundef nonnull %i.d) #36, !inline_history !1585 ; 10 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1665, !nonnull !121
  %i.am = load i8, ptr %i.al, align 1, !tbaa !95, !range !108, !noundef !121
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1666, !nonnull !121, !align !176
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1952
  %.val30.i = load ptr, ptr %i.aq, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw [160 x i8], ptr %.val30.i, i64 %1
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !1663
  %.pre71.i = load ptr, ptr %.pre.i, align 8, !tbaa !151
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !1663, !nonnull !121, !align !176
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !151 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1952
  %.val.i = load ptr, ptr %i.au, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw [160 x i8], ptr %.val.i, i64 %i.z
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aw = phi ptr [ %.pre71.i, %bb.b ], [ %i.at, %bb.c ] ; 7 uses
  %i.ax = phi ptr [ %i.ar, %bb.b ], [ %i.av, %bb.c ] ; 16 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !132, !range !108, !noundef !121
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = load i64, ptr %i.d, align 8, !tbaa !68  ; 4 uses
  %i.bc = load ptr, ptr %i.t, align 8, !tbaa !1664, !nonnull !121
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !95, !range !108, !noundef !121
  %i.be = trunc nuw i8 %i.bd to i1                ; 3 uses
  br i1 %i.ba, label %bb.e, label %bb.am

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !73 ; 21 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !130
  %.not.i = icmp eq i32 %i.bi, 0                  ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %.not.i.i = icmp eq i64 %i.bg, 0                ; 5 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %factor.op.mul.i.i = mul nuw nsw i64 %.sroa.speculated34.i, 22
  %.reass.i.i = mul nuw nsw i64 %factor.op.mul.i.i, %.sroa.speculated.i
  %i.bk = add nuw nsw i64 %.reass.i.i, 4
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 64               ; 2 uses
  br i1 %i.be, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bn = call noalias ptr @malloc(i64 noundef %i.bm) #35
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !71 ; 2 uses
  store ptr %i.bn, ptr %i.ax, align 8, !tbaa !71
  %.not.i.i.peel.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.peel.i.i, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72
  call void %i.bq(ptr noundef nonnull %i.bo) #36, !inline_history !1586
  br label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i

_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i
  %exitcond.peel.not.i.i = icmp eq i64 %i.bg, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i

._crit_edge.i.i:                                  ; preds = %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i, %bb.e
  br i1 %i.be, label %.preheader.i.i, label %bb.i

.peel.next.i.i:                                   ; preds = %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i
  %.03355.i.i = phi i64 [ %i.bw, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i ], [ 1, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %.03355.i.i ; 3 uses
  %i.bs = call noalias ptr @malloc(i64 noundef %i.bm) #35
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !71 ; 2 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !71
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.peel.next.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !72
  call void %i.bv(ptr noundef nonnull %i.bt) #36, !inline_history !1586
  br label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i

_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i:  ; preds = %bb.h, %.peel.next.i.i
  %i.bw = add nuw i64 %.03355.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bw, %i.bg
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !1587

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bx = load ptr, ptr %i.ax, align 8, !tbaa !71
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 7 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !74
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 8 uses
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !68 ; 2 uses
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = load i64, ptr %i.cc, align 8, !tbaa !68
  %i.cg = or i64 %i.cf, %i.ce                     ; 2 uses
  store i64 %i.cg, ptr %i.cc, align 8, !tbaa !68
  %i.ch = add i64 %i.cd, 1
  store i64 %i.ch, ptr %i.cb, align 8, !tbaa !68
  store i64 %i.cg, ptr %i.ca, align 1
  %i.ci = load i64, ptr %i.cb, align 8, !tbaa !68 ; 3 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = and i64 %i.ci, -8
  %i.cl = and i64 %i.ci, 7                        ; 2 uses
  %i.cm = load i64, ptr %i.cc, align 8, !tbaa !68
  %i.cn = lshr i64 %i.cm, %i.ck
  %i.co = load i64, ptr %i.by, align 8, !tbaa !74
  %i.cp = add i64 %i.co, %i.cj                    ; 2 uses
  store i64 %i.cp, ptr %i.by, align 8, !tbaa !74
  %i.cq = load ptr, ptr %i.ax, align 8, !tbaa !71
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  %i.cs = shl nuw nsw i64 1, %i.cl
  %i.ct = or i64 %i.cn, %i.cs                     ; 2 uses
  store i64 %i.ct, ptr %i.cc, align 8, !tbaa !68
  %i.cu = add nuw nsw i64 %i.cl, 1
  store i64 %i.cu, ptr %i.cb, align 8, !tbaa !68
  store i64 %i.ct, ptr %i.cr, align 1
  %i.cv = load i64, ptr %i.cb, align 8, !tbaa !68 ; 3 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = and i64 %i.cv, -8
  %i.cy = and i64 %i.cv, 7
  %i.cz = load i64, ptr %i.cc, align 8, !tbaa !68
  %i.da = lshr i64 %i.cz, %i.cx                   ; 2 uses
  %i.db = load i64, ptr %i.by, align 8, !tbaa !74
  %i.dc = add i64 %i.db, %i.cw                    ; 2 uses
  store i64 %i.dc, ptr %i.by, align 8, !tbaa !74
  %i.dd = load ptr, ptr %i.ax, align 8, !tbaa !71
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc
  store i64 %i.da, ptr %i.cc, align 8, !tbaa !68
  %i.df = add nuw nsw i64 %i.cy, 2
  store i64 %i.df, ptr %i.cb, align 8, !tbaa !68
  store i64 %i.da, ptr %i.de, align 1
  %i.dg = load i64, ptr %i.cb, align 8, !tbaa !68 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13Exactly14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m:bb.a
_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_13Exactly14BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i: ; preds = %bb.ai, %._crit_edge158.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13Exactly14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

bb.am:                                            ; preds = %bb.d
  %i.avw = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.avx = getelementptr inbounds nuw i8, ptr %i.aw, i64 1888
  %i.avy = load ptr, ptr %i.avx, align 8, !tbaa !90
  %i.avz = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.awa = load i64, ptr %i.avz, align 8, !tbaa !73
  call fastcc void @_ZN4AVX212_GLOBAL__N_121WriteACSectionPaletteEPKhmmmmmbPKN12_GLOBAL__N_110PrefixCodeEPKsmRNS3_9BitWriterE(ptr noundef %i.ai, i64 noundef %.sroa.speculated34.i, i64 noundef %.sroa.speculated.i, i64 noundef %i.bb, i1 noundef zeroext %i.be, ptr noundef nonnull %i.avw, ptr noundef %i.avy, i64 noundef %i.awa, ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #38
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13Exactly14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_13Exactly14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit: ; preds = %_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_13Exactly14BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i, %bb.am
  %i.awb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.awc = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.awd = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.awe = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.awf = load <2 x i64>, ptr %i.awb, align 8, !tbaa !68
  %i.awg = load <2 x i64>, ptr %i.awc, align 8, !tbaa !68
  %i.awh = load <2 x i64>, ptr %i.awd, align 8, !tbaa !68
  %i.awi = load <2 x i64>, ptr %i.awe, align 8, !tbaa !68
  %i.awj = add <2 x i64> %i.awf, <i64 0, i64 7>
  %i.awk = add <2 x i64> %i.awj, %i.awg
  %i.awl = add <2 x i64> %i.awk, %i.awh
  %i.awm = add <2 x i64> %i.awl, %i.awi           ; 2 uses
  %i.awn = extractelement <2 x i64> %i.awm, i64 1
  %i.awo = lshr i64 %i.awn, 3
  %i.awp = extractelement <2 x i64> %i.awm, i64 0
  %i.awq = add i64 %i.awp, %i.awo
  %i.awr = and i64 %i.awq, 2305843009213693951
  %i.aws = load ptr, ptr %i.h, align 8, !tbaa !1663, !nonnull !121, !align !176
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !151
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 1976
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !70
  %i.aww = getelementptr inbounds nuw [8 x i8], ptr %i.awv, i64 %i.z
  store i64 %i.awr, ptr %i.aww, align 8, !tbaa !68
  call void %.sroa.69.0.copyload.i(ptr noundef %.sroa.0.0.copyload.i, ptr noundef %i.ai) #36, !inline_history !1585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4AVX212_GLOBAL__N_113Exactly14Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %5) unnamed_addr #31 align 2 {
.split:
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
  %i.s = load <16 x i8>, ptr %3, align 1, !tbaa !85
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.u = load <16 x i8>, ptr %4, align 1, !tbaa !85
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.w = load <4 x i64>, ptr %0, align 1, !tbaa !85 ; 2 uses
  %i.x = bitcast <4 x i64> %i.w to <16 x i16>     ; 4 uses
  %i.y = lshr <16 x i16> %i.x, splat (i16 4)
  %i.z = lshr <16 x i16> %i.x, splat (i16 8)
  %i.aa = lshr <16 x i16> %i.x, splat (i16 12)
  %i.ab = bitcast <4 x i64> %i.w to <32 x i8>
  %i.ac = and <32 x i8> %i.ab, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.ad = or <32 x i8> %i.ac, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ae = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 0, i8 1, i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <32 x i8> %i.ad)
  %i.af = bitcast <16 x i16> %i.y to <32 x i8>
  %i.ag = and <32 x i8> %i.af, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.ah = or <32 x i8> %i.ag, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ai = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 0, i8 5, i8 6, i8 6, i8 7, i8 7, i8 7, i8 7, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>, <32 x i8> %i.ah)
  %i.aj = bitcast <16 x i16> %i.z to <32 x i8>
  %i.ak = and <32 x i8> %i.aj, <i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0, i8 15, i8 0>
  %i.al = or <32 x i8> %i.ak, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.am = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 0, i8 9, i8 10, i8 10, i8 11, i8 11, i8 11, i8 11, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12>, <32 x i8> %i.al)
  %i.an = bitcast <16 x i16> %i.aa to <32 x i8>
  %i.ao = or <32 x i8> %i.an, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>
  %i.ap = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 0, i8 13, i8 14, i8 14, i8 15, i8 15, i8 15, i8 15, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>, <32 x i8> %i.ao)
  %i.aq = bitcast <32 x i8> %i.ae to <16 x i16>
  %i.ar = bitcast <32 x i8> %i.ai to <16 x i16>
  %i.as = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.aq, <16 x i16> %i.ar)
  %i.at = bitcast <32 x i8> %i.am to <16 x i16>
  %i.au = bitcast <32 x i8> %i.ap to <16 x i16>
  %i.av = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.at, <16 x i16> %i.au)
  %i.aw = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.as, <16 x i16> %i.av) ; 3 uses
  %i.ax = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.aw, <16 x i16> splat (i16 1)) ; 3 uses
  %i.ay = bitcast <16 x i16> %i.ax to <32 x i8>
  %i.az = or <32 x i8> %i.ay, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.ba = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.az)
  %i.bb = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.az)
  %i.bc = bitcast <32 x i8> %i.bb to <16 x i16>
  %i.bd = shl <16 x i16> %i.bc, splat (i16 8)
  %i.be = bitcast <32 x i8> %i.ba to <16 x i16>
  %i.bf = or <16 x i16> %i.bd, %i.be
  %i.bg = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %i.x, <16 x i16> %i.bf) ; 2 uses
  %i.bh = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.aw, <16 x i16> splat (i16 15))
  %i.bi = bitcast <16 x i16> %i.bh to <32 x i8>
  %i.bj = or <32 x i8> %i.bi, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.bk = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.v, <32 x i8> %i.bj) ; 2 uses
  %i.bl = icmp eq <16 x i16> %i.aw, splat (i16 16)
  %i.bm = bitcast <32 x i8> %i.bk to <16 x i16>
  %i.bn = bitcast <32 x i8> %i.bk to <16 x i16>
  %i.bo = or <16 x i16> %i.bn, splat (i16 128)
  %i.bp = select <16 x i1> %i.bl, <16 x i16> %i.bo, <16 x i16> %i.bm ; 2 uses
  %i.bq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.t, <32 x i8> %i.bj)
  %i.br = shufflevector <16 x i16> %i.bp, <16 x i16> %i.bg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bs = bitcast <16 x i16> %i.br to <4 x i64>
  %i.bt = shufflevector <16 x i16> %i.bp, <16 x i16> %i.bg, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bu = bitcast <16 x i16> %i.bt to <4 x i64>
  %i.bv = shufflevector <16 x i16> %i.br, <16 x i16> %i.bt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bw = bitcast <16 x i16> %i.bv to <4 x i64>   ; 2 uses
  %i.bx = shufflevector <4 x i64> %i.bs, <4 x i64> %i.bu, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.by = bitcast <32 x i8> %i.bq to <16 x i16>   ; 2 uses
  %i.bz = shufflevector <16 x i16> %i.by, <16 x i16> %i.ax, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ca = bitcast <16 x i16> %i.bz to <4 x i64>
  %i.cb = shufflevector <16 x i16> %i.by, <16 x i16> %i.ax, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cc = bitcast <16 x i16> %i.cb to <4 x i64>
  %i.cd = shufflevector <16 x i16> %i.bz, <16 x i16> %i.cb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ce = bitcast <16 x i16> %i.cd to <4 x i64>
  %i.cf = shufflevector <4 x i64> %i.ca, <4 x i64> %i.cc, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.cg = and <4 x i64> %i.q, %i.ce
  %i.ch = and <4 x i64> %i.cg, %i.n               ; 2 uses
  %i.ci = and <4 x i64> %i.r, %i.bw
  %i.cj = and <4 x i64> %i.j, %i.cf
  %i.ck = and <4 x i64> %i.cj, %i.e               ; 2 uses
  %i.cl = and <4 x i64> %i.k, %i.bx
  %i.cm = bitcast <4 x i64> %i.ch to <8 x i32>
  %i.cn = lshr <8 x i32> %i.cm, splat (i32 16)
  %i.co = bitcast <4 x i64> %i.ci to <8 x i32>
  %i.cp = lshr <8 x i32> %i.co, splat (i32 16)
  %.reass.le = and <4 x i64> %invariant.op, %i.bw
  %i.cq = bitcast <4 x i64> %i.ch to <8 x i32>
  %i.cr = and <8 x i32> %i.cq, splat (i32 65535)  ; 2 uses
  %i.cs = add nuw nsw <8 x i32> %i.cn, %i.cr      ; 2 uses
  %i.ct = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.cp, <8 x i32> %i.cr)
  %i.cu = bitcast <8 x i32> %i.ct to <4 x i64>
  %i.cv = or <4 x i64> %.reass.le, %i.cu          ; 2 uses
  %i.cw = bitcast <4 x i64> %i.ck to <8 x i32>
  %i.cx = lshr <8 x i32> %i.cw, splat (i32 16)
  %i.cy = bitcast <4 x i64> %i.cl to <8 x i32>
  %i.cz = lshr <8 x i32> %i.cy, splat (i32 16)
  %.reass102.le = and <4 x i64> %i.bx, %invariant.op101
  %i.da = bitcast <4 x i64> %i.ck to <8 x i32>
  %i.db = and <8 x i32> %i.da, splat (i32 65535)  ; 2 uses
  %i.dc = add nuw nsw <8 x i32> %i.cx, %i.db      ; 2 uses
  %i.dd = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.cz, <8 x i32> %i.db)
  %i.de = bitcast <8 x i32> %i.dd to <4 x i64>
  %i.df = or <4 x i64> %.reass102.le, %i.de       ; 2 uses
  %i.dg = bitcast <8 x i32> %i.dc to <4 x i64>
  %.val8.cast = bitcast <8 x i32> %i.cs to <4 x i64>
  %i.dh = lshr <4 x i64> %.val8.cast, splat (i64 32)
  %i.di = bitcast <8 x i32> %i.cs to <4 x i64>
  %i.dj = and <4 x i64> %i.di, splat (i64 131071) ; 2 uses
  %i.dk = lshr <4 x i64> %i.cv, splat (i64 32)
  %i.dl = and <4 x i64> %i.cv, splat (i64 4294967295)
  %i.dm = add nuw nsw <4 x i64> %i.dh, %i.dj      ; 4 uses
  %i.dn = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.dk, <4 x i64> %i.dj)
  %i.do = or <4 x i64> %i.dn, %i.dl               ; 4 uses
  %i.dp = lshr <4 x i64> %i.dg, splat (i64 32)
  %i.dq = bitcast <8 x i32> %i.dc to <4 x i64>
  %i.dr = and <4 x i64> %i.dq, splat (i64 131071) ; 2 uses
  %i.ds = lshr <4 x i64> %i.df, splat (i64 32)
  %i.dt = and <4 x i64> %i.df, splat (i64 4294967295)
  %i.du = add nuw nsw <4 x i64> %i.dp, %i.dr      ; 4 uses
  %i.dv = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.ds, <4 x i64> %i.dr)
  %i.dw = or <4 x i64> %i.dv, %i.dt               ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 27 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 20 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 26 uses
  %.sroa.0198.0.vec.extract = extractelement <4 x i64> %i.do, i64 0 ; 2 uses
  %i.ea = load i64, ptr %i.dx, align 8, !tbaa !86
  %i.eb = shl i64 %.sroa.0198.0.vec.extract, %i.ea
  %i.ec = load i64, ptr %i.dy, align 8, !tbaa !87
  %i.ed = or i64 %i.ec, %i.eb                     ; 2 uses
  store i64 %i.ed, ptr %i.dy, align 8, !tbaa !87
  %i.ee = load ptr, ptr %5, align 8, !tbaa !71
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !74
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  store i64 %i.ed, ptr %i.eg, align 1
  %i.eh = load i64, ptr %i.dx, align 8, !tbaa !86 ; 2 uses
  %.sroa.0200.0.vec.extract = extractelement <4 x i64> %i.dm, i64 0
  %i.ei = add i64 %.sroa.0200.0.vec.extract, %i.eh ; 4 uses
  store i64 %i.ei, ptr %i.dx, align 8, !tbaa !86
  %i.ej = icmp ugt i64 %i.ei, 63
  br i1 %i.ej, label %bb.a, label %.split._crit_edge

bb.a:                                             ; preds = %.split
  %i.ek = sub i64 64, %i.eh                       ; 2 uses
  %i.el = icmp ugt i64 %i.ek, 63
  %i.em = lshr i64 %.sroa.0198.0.vec.extract, %i.ek
  %spec.select = select i1 %i.el, i64 0, i64 %i.em
  %i.en = add i64 %i.ei, -64                      ; 2 uses
  store i64 %i.en, ptr %i.dx, align 8, !tbaa !86
  %i.eo = load i64, ptr %i.dz, align 8, !tbaa !74
  %i.ep = add i64 %i.eo, 8                        ; 2 uses
  store i64 %i.ep, ptr %i.dz, align 8, !tbaa !74
  br label %bb.b

bb.b:                                             ; preds = %.split._crit_edge, %bb.a
  %i.eq = phi i64 [ %i.ep, %bb.a ], [ %.pre202, %.split._crit_edge ]
  %i.er = phi i64 [ %spec.select, %bb.a ], [ %.pre, %.split._crit_edge ]
  %i.es = phi i64 [ %i.en, %bb.a ], [ %i.ei, %.split._crit_edge ]
  %.sroa.0198.8.vec.extract = extractelement <4 x i64> %i.do, i64 1 ; 2 uses
  %i.et = shl i64 %.sroa.0198.8.vec.extract, %i.es
  %i.eu = or i64 %i.er, %i.et                     ; 2 uses
  store i64 %i.eu, ptr %i.dy, align 8, !tbaa !87
  %i.ev = load ptr, ptr %5, align 8, !tbaa !71
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eq
  store i64 %i.eu, ptr %i.ew, align 1
  %i.ex = load i64, ptr %i.dx, align 8, !tbaa !86 ; 2 uses
  %.sroa.0200.8.vec.extract = extractelement <4 x i64> %i.dm, i64 1
  %i.ey = add i64 %.sroa.0200.8.vec.extract, %i.ex ; 4 uses
  store i64 %i.ey, ptr %i.dx, align 8, !tbaa !86
  %i.ez = icmp ugt i64 %i.ey, 63
  br i1 %i.ez, label %bb.c, label %._crit_edge.a

._crit_edge.a:                                    ; preds = %bb.b
  %.pre203 = load i64, ptr %i.dy, align 8, !tbaa !87
  %.pre204 = load i64, ptr %i.dz, align 8, !tbaa !74
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fa = sub i64 64, %i.ex                       ; 2 uses
  %i.fb = icmp ugt i64 %i.fa, 63
  %i.fc = lshr i64 %.sroa.0198.8.vec.extract, %i.fa
  %spec.select.1 = select i1 %i.fb, i64 0, i64 %i.fc
  %i.fd = add i64 %i.ey, -64                      ; 2 uses
  store i64 %i.fd, ptr %i.dx, align 8, !tbaa !86
  %i.fe = load i64, ptr %i.dz, align 8, !tbaa !74
  %i.ff = add i64 %i.fe, 8                        ; 2 uses
  store i64 %i.ff, ptr %i.dz, align 8, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.a, %bb.c
  %i.fg = phi i64 [ %i.ff, %bb.c ], [ %.pre204, %._crit_edge.a ]
  %i.fh = phi i64 [ %spec.select.1, %bb.c ], [ %.pre203, %._crit_edge.a ]
  %i.fi = phi i64 [ %i.fd, %bb.c ], [ %i.ey, %._crit_edge.a ]
  %.sroa.0198.16.vec.extract = extractelement <4 x i64> %i.do, i64 2 ; 2 uses
  %i.fj = shl i64 %.sroa.0198.16.vec.extract, %i.fi
  %i.fk = or i64 %i.fh, %i.fj                     ; 2 uses
  store i64 %i.fk, ptr %i.dy, align 8, !tbaa !87
  %i.fl = load ptr, ptr %5, align 8, !tbaa !71
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fg
  store i64 %i.fk, ptr %i.fm, align 1
  %i.fn = load i64, ptr %i.dx, align 8, !tbaa !86 ; 2 uses
  %.sroa.0200.16.vec.extract = extractelement <4 x i64> %i.dm, i64 2
  %i.fo = add i64 %.sroa.0200.16.vec.extract, %i.fn ; 4 uses
  store i64 %i.fo, ptr %i.dx, align 8, !tbaa !86
  %i.fp = icmp ugt i64 %i.fo, 63
  br i1 %i.fp, label %bb.e, label %._crit_edge205

._crit_edge205:                                   ; preds = %bb.d
  %.pre206 = load i64, ptr %i.dy, align 8, !tbaa !87
  %.pre207 = load i64, ptr %i.dz, align 8, !tbaa !74
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fq = sub i64 64, %i.fn                       ; 2 uses
  %i.fr = icmp ugt i64 %i.fq, 63
  %i.fs = lshr i64 %.sroa.0198.16.vec.extract, %i.fq
  %spec.select.2 = select i1 %i.fr, i64 0, i64 %i.fs
  %i.ft = add i64 %i.fo, -64                      ; 2 uses
  store i64 %i.ft, ptr %i.dx, align 8, !tbaa !86
  %i.fu = load i64, ptr %i.dz, align 8, !tbaa !74
  %i.fv = add i64 %i.fu, 8                        ; 2 uses
  store i64 %i.fv, ptr %i.dz, align 8, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge205, %bb.e
  %i.fw = phi i64 [ %i.fv, %bb.e ], [ %.pre207, %._crit_edge205 ]
  %i.fx = phi i64 [ %spec.select.2, %bb.e ], [ %.pre206, %._crit_edge205 ]
  %i.fy = phi i64 [ %i.ft, %bb.e ], [ %i.fo, %._crit_edge205 ]
  %.sroa.0198.24.vec.extract = extractelement <4 x i64> %i.do, i64 3 ; 2 uses
  %i.fz = shl i64 %.sroa.0198.24.vec.extract, %i.fy
  %i.ga = or i64 %i.fx, %i.fz                     ; 2 uses
  store i64 %i.ga, ptr %i.dy, align 8, !tbaa !87
  %i.gb = load ptr, ptr %5, align 8, !tbaa !71
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fw
  store i64 %i.ga, ptr %i.gc, align 1
  %i.gd = load i64, ptr %i.dx, align 8, !tbaa !86 ; 2 uses
  %.sroa.0200.24.vec.extract = extractelement <4 x i64> %i.dm, i64 3
  %i.ge = add i64 %.sroa.0200.24.vec.extract, %i.gd ; 4 uses
  store i64 %i.ge, ptr %i.dx, align 8, !tbaa !86
  %i.gf = icmp ugt i64 %i.ge, 63
  br i1 %i.gf, label %bb.g, label %._crit_edge208

._crit_edge208:                                   ; preds = %bb.f
  %.pre209 = load i64, ptr %i.dy, align 8, !tbaa !87
  %.pre210 = load i64, ptr %i.dz, align 8, !tbaa !74
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gg = sub i64 64, %i.gd                       ; 2 uses
  %i.gh = icmp ugt i64 %i.gg, 63
  %i.gi = lshr i64 %.sroa.0198.24.vec.extract, %i.gg
  %spec.select.3 = select i1 %i.gh, i64 0, i64 %i.gi
  %i.gj = add i64 %i.ge, -64                      ; 2 uses
  store i64 %i.gj, ptr %i.dx, align 8, !tbaa !86
  %i.gk = load i64, ptr %i.dz, align 8, !tbaa !74
  %i.gl = add i64 %i.gk, 8                        ; 2 uses
  store i64 %i.gl, ptr %i.dz, align 8, !tbaa !74
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge208, %bb.g
  %i.gm = phi i64 [ %i.gl, %bb.g ], [ %.pre210, %._crit_edge208 ]
  %i.gn = phi i64 [ %spec.select.3, %bb.g ], [ %.pre209, %._crit_edge208 ]
  %i.go = phi i64 [ %i.gj, %bb.g ], [ %i.ge, %._crit_edge208 ]
  %.sroa.7199.32.vec.extract = extractelement <4 x i64> %i.dw, i64 0 ; 2 uses
  %i.gp = shl i64 %.sroa.7199.32.vec.extract, %i.go
  %i.gq = or i64 %i.gn, %i.gp                     ; 2 uses
  store i64 %i.gq, ptr %i.dy, align 8, !tbaa !87
  %i.gr = load ptr, ptr %5, align 8, !tbaa !71
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gm
  store i64 %i.gq, ptr %i.gs, align 1
  %i.gt = load i64, ptr %i.dx, align 8, !tbaa !86 ; 2 uses
  %.sroa.7201.32.vec.extract = extractelement <4 x i64> %i.du, i64 0
  %i.gu = add i64 %.sroa.7201.32.vec.extract, %i.gt ; 4 uses
  store i64 %i.gu, ptr %i.dx, align 8, !tbaa !86
  %i.gv = icmp ugt i64 %i.gu, 63
  br i1 %i.gv, label %bb.i, label %._crit_edge211

._crit_edge211:                                   ; preds = %bb.h
  %.pre212 = load i64, ptr %i.dy, align 8, !tbaa !87
  %.pre213 = load i64, ptr %i.dz, align 8, !tbaa !74
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gw = sub i64 64, %i.gt                       ; 2 uses
  %i.gx = icmp ugt i64 %i.gw, 63
  %i.gy = lshr i64 %.sroa.7199.32.vec.extract, %i.gw
  %spec.select.4 = select i1 %i.gx, i64 0, i64 %i.gy
  %i.gz = add i64 %i.gu, -64                      ; 2 uses
  store i64 %i.gz, ptr %i.dx, align 8, !tbaa !86
  %i.ha = load i64, ptr %i.dz, align 8, !tbaa !74
  %i.hb = add i64 %i.ha, 8                        ; 2 uses
  store i64 %i.hb, ptr %i.dz, align 8, !tbaa !74
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge211, %bb.i
  %i.hc = phi i64 [ %i.hb, %bb.i ], [ %.pre213, %._crit_edge211 ]
  %i.hd = phi i64 [ %spec.select.4, %bb.i ], [ %.pre212, %._crit_edge211 ]
  %i.he = phi i64 [ %i.gz, %bb.i ], [ %i.gu, %._crit_edge211 ]
  %.sroa.7199.40.vec.extract = extractelement <4 x i64> %i.dw, i64 1 ; 2 uses
  %i.hf = shl i64 %.sroa.7199.40.vec.extract, %i.he
  %i.hg = or i64 %i.hd, %i.hf                     ; 2 uses
  store i64 %i.hg, ptr %i.dy, align 8, !tbaa !87
  %i.hh = load ptr, ptr %5, align 8, !tbaa !71
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hc
  store i64 %i.hg, ptr %i.hi, align 1
  %i.hj = load i64, ptr %i.dx, align 8, !tbaa !86 ; 2 uses
  %.sroa.7201.40.vec.extract = extractelement <4 x i64> %i.du, i64 1
  %i.hk = add i64 %.sroa.7201.40.vec.extract, %i.hj ; 4 uses
  store i64 %i.hk, ptr %i.dx, align 8, !tbaa !86
  %i.hl = icmp ugt i64 %i.hk, 63
  br i1 %i.hl, label %bb.k, label %._crit_edge214

._crit_edge214:                                   ; preds = %bb.j
  %.pre215 = load i64, ptr %i.dy, align 8, !tbaa !87
  %.pre216 = load i64, ptr %i.dz, align 8, !tbaa !74
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.hm = sub i64 64, %i.hj                       ; 2 uses
  %i.hn = icmp ugt i64 %i.hm, 63
  %i.ho = lshr i64 %.sroa.7199.40.vec.extract, %i.hm
  %spec.select.5 = select i1 %i.hn, i64 0, i64 %i.ho
  %i.hp = add i64 %i.hk, -64                      ; 2 uses
  store i64 %i.hp, ptr %i.dx, align 8, !tbaa !86
  %i.hq = load i64, ptr %i.dz, align 8, !tbaa !74
  %i.hr = add i64 %i.hq, 8                        ; 2 uses
  store i64 %i.hr, ptr %i.dz, align 8, !tbaa !74
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge214, %bb.k
  %i.hs = phi i64 [ %i.hr, %bb.k ], [ %.pre216, %._crit_edge214 ]
  %i.ht = phi i64 [ %spec.select.5, %bb.k ], [ %.pre215, %._crit_edge214 ]
  %i.hu = phi i64 [ %i.hp, %bb.k ], [ %i.hk, %._crit_edge214 ]
  %.sroa.7199.48.vec.extract = extractelement <4 x i64> %i.dw, i64 2 ; 2 uses
  %i.hv = shl i64 %.sroa.7199.48.vec.extract, %i.hu
  %i.hw = or i64 %i.ht, %i.hv                     ; 2 uses
  store i64 %i.hw, ptr %i.dy, align 8, !tbaa !87
  %i.hx = load ptr, ptr %5, align 8, !tbaa !71
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hs
  store i64 %i.hw, ptr %i.hy, align 1
  %i.hz = load i64, ptr %i.dx, align 8, !tbaa !86 ; 2 uses
  %.sroa.7201.48.vec.extract = extractelement <4 x i64> %i.du, i64 2
  %i.ia = add i64 %.sroa.7201.48.vec.extract, %i.hz ; 4 uses
  store i64 %i.ia, ptr %i.dx, align 8, !tbaa !86
  %i.ib = icmp ugt i64 %i.ia, 63
  br i1 %i.ib, label %bb.m, label %._crit_edge217

._crit_edge217:                                   ; preds = %bb.l
  %.pre218 = load i64, ptr %i.dy, align 8, !tbaa !87
  %.pre219 = load i64, ptr %i.dz, align 8, !tbaa !74
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ic = sub i64 64, %i.hz                       ; 2 uses
  %i.id = icmp ugt i64 %i.ic, 63
  %i.ie = lshr i64 %.sroa.7199.48.vec.extract, %i.ic
  %spec.select.6 = select i1 %i.id, i64 0, i64 %i.ie
  %i.if = add i64 %i.ia, -64                      ; 2 uses
  store i64 %i.if, ptr %i.dx, align 8, !tbaa !86
  %i.ig = load i64, ptr %i.dz, align 8, !tbaa !74
  %i.ih = add i64 %i.ig, 8                        ; 2 uses
  store i64 %i.ih, ptr %i.dz, align 8, !tbaa !74
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge217, %bb.m
  %i.ii = phi i64 [ %i.ih, %bb.m ], [ %.pre219, %._crit_edge217 ]
  %i.ij = phi i64 [ %spec.select.6, %bb.m ], [ %.pre218, %._crit_edge217 ]
  %i.ik = phi i64 [ %i.if, %bb.m ], [ %i.ia, %._crit_edge217 ]
  %.sroa.7199.56.vec.extract = extractelement <4 x i64> %i.dw, i64 3 ; 2 uses
  %i.il = shl i64 %.sroa.7199.56.vec.extract, %i.ik
  %i.im = or i64 %i.ij, %i.il                     ; 2 uses
  store i64 %i.im, ptr %i.dy, align 8, !tbaa !87
  %i.in = load ptr, ptr %5, align 8, !tbaa !71
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ii
  store i64 %i.im, ptr %i.io, align 1
  %i.ip = load i64, ptr %i.dx, align 8, !tbaa !86 ; 2 uses
  %.sroa.7201.56.vec.extract = extractelement <4 x i64> %i.du, i64 3
  %i.iq = add i64 %.sroa.7201.56.vec.extract, %i.ip ; 3 uses
  store i64 %i.iq, ptr %i.dx, align 8, !tbaa !86
  %i.ir = icmp ugt i64 %i.iq, 63
  %.pre220 = load i64, ptr %i.dz, align 8, !tbaa !74 ; 2 uses
  br i1 %i.ir, label %bb.o, label %._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge

._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge: ; preds = %bb.n
  %.pre221 = load i64, ptr %i.dy, align 8
  br label %_ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit

bb.o:                                             ; preds = %bb.n
  %i.is = sub i64 64, %i.ip                       ; 2 uses
  %i.it = icmp ugt i64 %i.is, 63
  %i.iu = lshr i64 %.sroa.7199.56.vec.extract, %i.is
  %spec.select.7 = select i1 %i.it, i64 0, i64 %i.iu ; 2 uses
  store i64 %spec.select.7, ptr %i.dy, align 8, !tbaa !87
  %i.iv = add i64 %i.iq, -64
  store i64 %i.iv, ptr %i.dx, align 8, !tbaa !86
  %i.iw = add i64 %.pre220, 8                     ; 2 uses
  store i64 %i.iw, ptr %i.dz, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit

_ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit: ; preds = %._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge, %bb.o
  %i.ix = phi i64 [ %spec.select.7, %bb.o ], [ %.pre221, %._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge ]
  %i.iy = phi i64 [ %i.iw, %bb.o ], [ %.pre220, %._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge ]
  %i.iz = load ptr, ptr %5, align 8, !tbaa !71
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.iy
  store i64 %i.ix, ptr %i.ja, align 1
  %i.jb = load i64, ptr %i.dx, align 8, !tbaa !86 ; 3 uses
  %i.jc = lshr i64 %i.jb, 3
  %i.jd = and i64 %i.jb, -8
  %i.je = and i64 %i.jb, 7
  store i64 %i.je, ptr %i.dx, align 8, !tbaa !86
  %i.jf = load i64, ptr %i.dy, align 8, !tbaa !87
  %i.jg = lshr i64 %i.jf, %i.jd
  store i64 %i.jg, ptr %i.dy, align 8, !tbaa !87
  %i.jh = load i64, ptr %i.dz, align 8, !tbaa !74
  %i.ji = add i64 %i.jh, %i.jc
  store i64 %i.ji, ptr %i.dz, align 8, !tbaa !74
  ret void

.split._crit_edge:                                ; preds = %.split
  %.pre = load i64, ptr %i.dy, align 8, !tbaa !87
  %.pre202 = load i64, ptr %i.dz, align 8, !tbaa !74
  br label %bb.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umin.v16i16(<16 x i16>, <16 x i16>) #24

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENUlS8_mE_8__invokeES8_m(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #5 align 2 {
bb.a:
  tail call fastcc void @_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m(ptr noundef %0, i64 noundef %1) #38
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca [16 x i32], align 64              ; 6 uses
  %i.b = alloca [4 x ptr], align 16               ; 17 uses
  %i.c = alloca [4 x ptr], align 16               ; 13 uses
  %2 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChunkEncoder.191"], align 64 ; 11 uses
  %3 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor.193"], align 16 ; 9 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !1792, !nonnull !121, !align !176
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1793, !nonnull !121, !align !176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !151  ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !125  ; 2 uses
  %i.m = urem i64 %i.g, %i.l
  %i.n = udiv i64 %i.g, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.p = load i64, ptr %i.o, align 8, !tbaa !127
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.r = load i64, ptr %i.q, align 8, !tbaa !128
  %i.s = mul i64 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1794, !nonnull !121
  %i.v = load i8, ptr %i.u, align 1, !tbaa !95, !range !108, !noundef !121
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = add i64 %i.g, 2
  %i.y = add i64 %i.x, %i.s
  %i.z = select i1 %i.w, i64 0, i64 %i.y          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !123 ; 2 uses
  %i.ac = shl i64 %i.m, 8                         ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %.sroa.speculated35.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 256) ; 69 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !124 ; 2 uses
  %i.ag = shl i64 %i.n, 8                         ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 256) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %.sroa.07.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !72 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.59.0.copyload.i = load ptr, ptr %.sroa.59.0..sroa_idx.i, align 8, !tbaa !72
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.610.0.copyload.i = load ptr, ptr %.sroa.610.0..sroa_idx.i, align 8, !tbaa !72
  %i.ai = call noundef ptr %.sroa.59.0.copyload.i(ptr noundef %.sroa.07.0.copyload.i, i64 noundef %i.ac, i64 noundef %i.ag, i64 noundef %.sroa.speculated35.i, i64 noundef %.sroa.speculated.i, ptr noundef nonnull %i.d) #36, !inline_history !1714 ; 11 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1795, !nonnull !121
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !95, !range !108, !noundef !121
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1796, !nonnull !121, !align !176
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1952
  %.val31.i = load ptr, ptr %i.ap, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw [160 x i8], ptr %.val31.i, i64 %1
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !1793
  %.pre71.i = load ptr, ptr %.pre.i, align 8, !tbaa !151
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !1793, !nonnull !121, !align !176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !151 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1952
  %.val.i = load ptr, ptr %i.at, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw [160 x i8], ptr %.val.i, i64 %i.z
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.av = phi ptr [ %.pre71.i, %bb.b ], [ %i.as, %bb.c ] ; 7 uses
  %i.aw = phi ptr [ %i.aq, %bb.b ], [ %i.au, %bb.c ] ; 16 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !132, !range !108, !noundef !121
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !68  ; 2 uses
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !1794, !nonnull !121
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !95, !range !108, !noundef !121
  %i.bd = trunc nuw i8 %i.bc to i1                ; 3 uses
  br i1 %i.az, label %bb.e, label %bb.am

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !73 ; 21 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !130
  %.not.i = icmp eq i32 %i.bh, 0                  ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %.not.i.i = icmp eq i64 %i.bf, 0                ; 5 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %factor.op.mul.i.i = mul nuw nsw i64 %.sroa.speculated35.i, 3
  %i.bj = mul nuw nsw i64 %factor.op.mul.i.i, %.sroa.speculated.i
  %i.bk = add nuw nsw i64 %i.bj, 64               ; 2 uses
  br i1 %i.bd, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bl = call noalias ptr @malloc(i64 noundef %i.bk) #35
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !71 ; 2 uses
  store ptr %i.bl, ptr %i.aw, align 8, !tbaa !71
  %.not.i.i.peel.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.peel.i.i, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !72
  call void %i.bo(ptr noundef nonnull %i.bm) #36, !inline_history !1715
  br label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i

_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i
  %exitcond.peel.not.i.i = icmp eq i64 %i.bf, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i

._crit_edge.i.i:                                  ; preds = %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i, %bb.e
  br i1 %i.bd, label %.preheader.i.i, label %bb.i

.peel.next.i.i:                                   ; preds = %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i
  %.055.i.i = phi i64 [ %i.bu, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i ], [ 1, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %.055.i.i ; 3 uses
  %i.bq = call noalias ptr @malloc(i64 noundef %i.bk) #35
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !71 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !71
  %.not.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.peel.next.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !72
  call void %i.bt(ptr noundef nonnull %i.br) #36, !inline_history !1715
  br label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i

_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i:  ; preds = %bb.h, %.peel.next.i.i
  %i.bu = add nuw i64 %.055.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bu, %i.bf
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !1716

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bv = load ptr, ptr %i.aw, align 8, !tbaa !71
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 7 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 8 uses
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !68 ; 2 uses
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = load i64, ptr %i.ca, align 8, !tbaa !68
  %i.ce = or i64 %i.cd, %i.cc                     ; 2 uses
  store i64 %i.ce, ptr %i.ca, align 8, !tbaa !68
  %i.cf = add i64 %i.cb, 1
  store i64 %i.cf, ptr %i.bz, align 8, !tbaa !68
  store i64 %i.ce, ptr %i.by, align 1
  %i.cg = load i64, ptr %i.bz, align 8, !tbaa !68 ; 3 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.cg, -8
  %i.cj = and i64 %i.cg, 7                        ; 2 uses
  %i.ck = load i64, ptr %i.ca, align 8, !tbaa !68
  %i.cl = lshr i64 %i.ck, %i.ci
  %i.cm = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.cn = add i64 %i.cm, %i.ch                    ; 2 uses
  store i64 %i.cn, ptr %i.bw, align 8, !tbaa !74
  %i.co = load ptr, ptr %i.aw, align 8, !tbaa !71
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  %i.cq = shl nuw nsw i64 1, %i.cj
  %i.cr = or i64 %i.cl, %i.cq                     ; 2 uses
  store i64 %i.cr, ptr %i.ca, align 8, !tbaa !68
  %i.cs = add nuw nsw i64 %i.cj, 1
  store i64 %i.cs, ptr %i.bz, align 8, !tbaa !68
  store i64 %i.cr, ptr %i.cp, align 1
  %i.ct = load i64, ptr %i.bz, align 8, !tbaa !68 ; 3 uses
  %i.cu = lshr i64 %i.ct, 3
  %i.cv = and i64 %i.ct, -8
  %i.cw = and i64 %i.ct, 7
  %i.cx = load i64, ptr %i.ca, align 8, !tbaa !68
  %i.cy = lshr i64 %i.cx, %i.cv                   ; 2 uses
  %i.cz = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.da = add i64 %i.cz, %i.cu                    ; 2 uses
  store i64 %i.da, ptr %i.bw, align 8, !tbaa !74
  %i.db = load ptr, ptr %i.aw, align 8, !tbaa !71
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  store i64 %i.cy, ptr %i.ca, align 8, !tbaa !68
  %i.dd = add nuw nsw i64 %i.cw, 2
  store i64 %i.dd, ptr %i.bz, align 8, !tbaa !68
  store i64 %i.cy, ptr %i.dc, align 1
  %i.de = load i64, ptr %i.bz, align 8, !tbaa !68 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m:bb.a
  store i8 %i.bgx, ptr %i.bgy, align 4, !tbaa !85
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bdz, i64 13
  %i.bha = load i8, ptr %i.bgz, align 1, !tbaa !85
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bdv, i64 77
  store i8 %i.bha, ptr %i.bhb, align 1, !tbaa !85
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bdz, i64 32
  %i.bhd = load i8, ptr %i.bhc, align 1, !tbaa !85
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bdv, i64 141
  store i8 %i.bhd, ptr %i.bhe, align 1, !tbaa !85
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bdz, i64 17
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bdz, i64 36
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bdz, i64 15
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bdz, i64 34
  %i.bhj = load i8, ptr %i.bhh, align 1, !tbaa !85
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bdv, i64 78
  store i8 %i.bhj, ptr %i.bhk, align 2, !tbaa !85
  %i.bhl = load i8, ptr %i.bhi, align 1, !tbaa !85
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bdv, i64 142
  store i8 %i.bhl, ptr %i.bhm, align 2, !tbaa !85
  %i.bhn = load i8, ptr %i.bhf, align 1, !tbaa !85
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bdv, i64 79
  store i8 %i.bhn, ptr %i.bho, align 1, !tbaa !85
  %i.bhp = load i8, ptr %i.bhg, align 1, !tbaa !85
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bdv, i64 143
  store i8 %i.bhp, ptr %i.bhq, align 1, !tbaa !85
  %i.bhr = add nuw i64 %.03456.i.i, 1             ; 2 uses
  %exitcond76.not.i.i = icmp eq i64 %i.bhr, %i.bf
  br i1 %exitcond76.not.i.i, label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i, label %.lr.ph57.i.i, !llvm.loop !1790

_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_14MoreThan14BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i: ; preds = %bb.ai, %._crit_edge156.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

bb.am:                                            ; preds = %bb.d
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.bht = getelementptr inbounds nuw i8, ptr %i.av, i64 1888
  %i.bhu = load ptr, ptr %i.bht, align 8, !tbaa !90
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.bhw = load i64, ptr %i.bhv, align 8, !tbaa !73
  call fastcc void @_ZN4AVX212_GLOBAL__N_121WriteACSectionPaletteEPKhmmmmmbPKN12_GLOBAL__N_110PrefixCodeEPKsmRNS3_9BitWriterE(ptr noundef %i.ai, i64 noundef %.sroa.speculated35.i, i64 noundef %.sroa.speculated.i, i64 noundef %i.ba, i1 noundef zeroext %i.bd, ptr noundef nonnull %i.bhs, ptr noundef %i.bhu, i64 noundef %i.bhw, ptr noundef nonnull align 8 dereferenceable(40) %i.aw) #38
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit: ; preds = %_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_14MoreThan14BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i, %bb.am
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.bia = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  %i.bib = load <2 x i64>, ptr %i.bhx, align 8, !tbaa !68
  %i.bic = load <2 x i64>, ptr %i.bhy, align 8, !tbaa !68
  %i.bid = load <2 x i64>, ptr %i.bhz, align 8, !tbaa !68
  %i.bie = load <2 x i64>, ptr %i.bia, align 8, !tbaa !68
  %i.bif = add <2 x i64> %i.bib, <i64 0, i64 7>
  %i.big = add <2 x i64> %i.bif, %i.bic
  %i.bih = add <2 x i64> %i.big, %i.bid
  %i.bii = add <2 x i64> %i.bih, %i.bie           ; 2 uses
  %i.bij = extractelement <2 x i64> %i.bii, i64 1
  %i.bik = lshr i64 %i.bij, 3
  %i.bil = extractelement <2 x i64> %i.bii, i64 0
  %i.bim = add i64 %i.bil, %i.bik
  %i.bin = and i64 %i.bim, 2305843009213693951
  %i.bio = load ptr, ptr %i.h, align 8, !tbaa !1793, !nonnull !121, !align !176
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !151
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bip, i64 1976
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !70
  %i.bis = getelementptr inbounds nuw [8 x i8], ptr %i.bir, i64 %i.z
  store i64 %i.bin, ptr %i.bis, align 8, !tbaa !68
  call void %.sroa.610.0.copyload.i(ptr noundef %.sroa.07.0.copyload.i, ptr noundef %i.ai) #36, !inline_history !1714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4AVX212_GLOBAL__N_114MoreThan14Bits15EncodeChunkSimdEPjmmPKhS4_RN12_GLOBAL__N_19BitWriterE(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %5) unnamed_addr #31 align 2 {
.split:
  %i.a = load <16 x i8>, ptr %3, align 1, !tbaa !85
  %i.b = shufflevector <16 x i8> %i.a, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.c = load <16 x i8>, ptr %4, align 1, !tbaa !85
  %i.d = shufflevector <16 x i8> %i.c, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.e = load <8 x i32>, ptr %0, align 1, !tbaa !85 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load <8 x i32>, ptr %i.f, align 1, !tbaa !85 ; 2 uses
  %i.h = sitofp <8 x i32> %i.e to <8 x float>
  %i.i = bitcast <8 x float> %i.h to <8 x i32>
  %i.j = lshr <8 x i32> %i.i, splat (i32 23)      ; 2 uses
  %i.k = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.j, <8 x i32> splat (i32 126))
  %i.l = sitofp <8 x i32> %i.g to <8 x float>
  %i.m = bitcast <8 x float> %i.l to <8 x i32>
  %i.n = lshr <8 x i32> %i.m, splat (i32 23)      ; 2 uses
  %i.o = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.n, <8 x i32> splat (i32 126))
  %i.p = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.j, <8 x i32> splat (i32 127)) ; 2 uses
  %i.q = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.n, <8 x i32> splat (i32 127)) ; 2 uses
  %i.r = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> splat (i32 1), <8 x i32> %i.p)
  %i.s = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.e, <8 x i32> %i.r)
  %i.t = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> splat (i32 1), <8 x i32> %i.q)
  %i.u = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.g, <8 x i32> %i.t)
  %i.v = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.k, <8 x i32> %i.o)
  %i.w = bitcast <16 x i16> %i.v to <4 x i64>
  %i.x = shufflevector <4 x i64> %i.w, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.y = bitcast <4 x i64> %i.x to <16 x i16>     ; 3 uses
  %i.z = icmp sgt <16 x i16> %i.y, splat (i16 12) ; 2 uses
  %i.aa = add <16 x i16> %i.y, splat (i16 13)
  %i.ab = lshr <16 x i16> %i.aa, splat (i16 1)
  %i.ac = select <16 x i1> %i.z, <16 x i16> %i.ab, <16 x i16> %i.y
  %i.ad = bitcast <16 x i16> %i.ac to <32 x i8>
  %i.ae = or <32 x i8> %i.ad, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.af = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.d, <32 x i8> %i.ae) ; 2 uses
  %i.ag = bitcast <4 x i64> %i.x to <16 x i16>
  %i.ah = and <16 x i16> %i.ag, splat (i16 1)
  %i.ai = icmp eq <16 x i16> %i.ah, zeroinitializer
  %i.aj = and <16 x i1> %i.z, %i.ai
  %i.ak = bitcast <32 x i8> %i.af to <16 x i16>
  %i.al = bitcast <32 x i8> %i.af to <16 x i16>
  %i.am = or <16 x i16> %i.al, splat (i16 128)
  %i.an = select <16 x i1> %i.aj, <16 x i16> %i.am, <16 x i16> %i.ak ; 2 uses
  %i.ao = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.b, <32 x i8> %i.ae)
  %i.ap = shufflevector <16 x i16> %i.an, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.aq = bitcast <16 x i16> %i.ap to <4 x i64>
  %i.ar = shufflevector <16 x i16> %i.an, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.as = bitcast <16 x i16> %i.ar to <4 x i64>
  %i.at = shufflevector <16 x i16> %i.ap, <16 x i16> %i.ar, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.au = bitcast <16 x i16> %i.at to <4 x i64>
  %i.av = shufflevector <4 x i64> %i.aq, <4 x i64> %i.as, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aw = bitcast <32 x i8> %i.ao to <16 x i16>   ; 2 uses
  %i.ax = shufflevector <16 x i16> %i.aw, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ay = bitcast <16 x i16> %i.ax to <4 x i64>
  %i.az = shufflevector <16 x i16> %i.aw, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ba = bitcast <16 x i16> %i.az to <4 x i64>
  %i.bb = shufflevector <16 x i16> %i.ax, <16 x i16> %i.az, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bc = shufflevector <4 x i64> %i.ay, <4 x i64> %i.ba, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bd = bitcast <16 x i16> %i.bb to <8 x i32>   ; 2 uses
  %i.be = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.s, <8 x i32> %i.bd)
  %i.bf = bitcast <8 x i32> %i.be to <4 x i64>
  %i.bg = or <4 x i64> %i.au, %i.bf
  %i.bh = add nuw nsw <8 x i32> %i.p, %i.bd
  %i.bi = bitcast <8 x i32> %i.bh to <4 x i64>
  %.sroa.speculated.i.le = tail call i64 @llvm.umin.i64(i64 %1, i64 8)
  %i.bj = sub nsw i64 0, %.sroa.speculated.i.le
  %i.bk = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits326ClipToEmE5kMask, i64 32), i64 %i.bj
  %i.bl = load <4 x i64>, ptr %i.bk, align 4, !tbaa !85 ; 2 uses
  %.sroa.speculated.i19.le = tail call i64 @llvm.umin.i64(i64 %2, i64 8)
  %i.bm = sub nsw i64 0, %.sroa.speculated.i19.le
  %i.bn = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits324SkipEmE5kMask, i64 32), i64 %i.bm
  %i.bo = load <4 x i64>, ptr %i.bn, align 4, !tbaa !85 ; 2 uses
  %i.bp = and <4 x i64> %i.bl, %i.bi
  %i.bq = and <4 x i64> %i.bp, %i.bo              ; 2 uses
  %i.br = and <4 x i64> %i.bl, %i.bg
  %i.bs = and <4 x i64> %i.br, %i.bo              ; 2 uses
  %i.bt = bitcast <4 x i64> %i.bc to <8 x i32>    ; 2 uses
  %i.bu = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.u, <8 x i32> %i.bt)
  %i.bv = bitcast <8 x i32> %i.bu to <4 x i64>
  %i.bw = or <4 x i64> %i.av, %i.bv
  %i.bx = add nuw nsw <8 x i32> %i.q, %i.bt
  %i.by = bitcast <8 x i32> %i.bx to <4 x i64>
  %i.bz = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 8)
  %.sroa.speculated.i20.le = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 8)
  %i.ca = sub nsw i64 0, %.sroa.speculated.i20.le
  %i.cb = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits326ClipToEmE5kMask, i64 32), i64 %i.ca
  %i.cc = load <4 x i64>, ptr %i.cb, align 4, !tbaa !85 ; 2 uses
  %i.cd = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 8)
  %.sroa.speculated.i21.le = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 8)
  %i.ce = sub nsw i64 0, %.sroa.speculated.i21.le
  %i.cf = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits324SkipEmE5kMask, i64 32), i64 %i.ce
  %i.cg = load <4 x i64>, ptr %i.cf, align 4, !tbaa !85 ; 2 uses
  %i.ch = and <4 x i64> %i.cc, %i.by
  %i.ci = and <4 x i64> %i.ch, %i.cg              ; 2 uses
  %i.cj = and <4 x i64> %i.cc, %i.bw
  %i.ck = and <4 x i64> %i.cj, %i.cg              ; 2 uses
  %i.cl = lshr <4 x i64> %i.bq, splat (i64 32)
  %i.cm = and <4 x i64> %i.bq, splat (i64 4294967295) ; 2 uses
  %i.cn = lshr <4 x i64> %i.bs, splat (i64 32)
  %i.co = and <4 x i64> %i.bs, splat (i64 4294967295)
  %i.cp = add nuw nsw <4 x i64> %i.cl, %i.cm      ; 4 uses
  %i.cq = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.cn, <4 x i64> %i.cm)
  %i.cr = or <4 x i64> %i.cq, %i.co               ; 4 uses
  %i.cs = lshr <4 x i64> %i.ci, splat (i64 32)
  %i.ct = and <4 x i64> %i.ci, splat (i64 4294967295) ; 2 uses
  %i.cu = lshr <4 x i64> %i.ck, splat (i64 32)
  %i.cv = and <4 x i64> %i.ck, splat (i64 4294967295)
  %i.cw = add nuw nsw <4 x i64> %i.cs, %i.ct      ; 4 uses
  %i.cx = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.cu, <4 x i64> %i.ct)
  %i.cy = or <4 x i64> %i.cx, %i.cv               ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 27 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 20 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 26 uses
  %.sroa.0246.0.vec.extract = extractelement <4 x i64> %i.cr, i64 0 ; 2 uses
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !86
  %i.dd = shl i64 %.sroa.0246.0.vec.extract, %i.dc
  %i.de = load i64, ptr %i.da, align 8, !tbaa !87
  %i.df = or i64 %i.de, %i.dd                     ; 2 uses
  store i64 %i.df, ptr %i.da, align 8, !tbaa !87
  %i.dg = load ptr, ptr %5, align 8, !tbaa !71
  %i.dh = load i64, ptr %i.db, align 8, !tbaa !74
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  store i64 %i.df, ptr %i.di, align 1
  %i.dj = load i64, ptr %i.cz, align 8, !tbaa !86 ; 2 uses
  %.sroa.0247.0.vec.extract = extractelement <4 x i64> %i.cp, i64 0
  %i.dk = add i64 %.sroa.0247.0.vec.extract, %i.dj ; 4 uses
  store i64 %i.dk, ptr %i.cz, align 8, !tbaa !86
  %i.dl = icmp ugt i64 %i.dk, 63
  br i1 %i.dl, label %bb.a, label %.split._crit_edge

bb.a:                                             ; preds = %.split
  %i.dm = sub i64 64, %i.dj                       ; 2 uses
  %i.dn = icmp ugt i64 %i.dm, 63
  %i.do = lshr i64 %.sroa.0246.0.vec.extract, %i.dm
  %spec.select = select i1 %i.dn, i64 0, i64 %i.do
  %i.dp = add i64 %i.dk, -64                      ; 2 uses
  store i64 %i.dp, ptr %i.cz, align 8, !tbaa !86
  %i.dq = load i64, ptr %i.db, align 8, !tbaa !74
  %i.dr = add i64 %i.dq, 8                        ; 2 uses
  store i64 %i.dr, ptr %i.db, align 8, !tbaa !74
  br label %bb.b

bb.b:                                             ; preds = %.split._crit_edge, %bb.a
  %i.ds = phi i64 [ %i.dr, %bb.a ], [ %.pre249, %.split._crit_edge ]
  %i.dt = phi i64 [ %spec.select, %bb.a ], [ %.pre, %.split._crit_edge ]
  %i.du = phi i64 [ %i.dp, %bb.a ], [ %i.dk, %.split._crit_edge ]
  %.sroa.0246.8.vec.extract = extractelement <4 x i64> %i.cr, i64 1 ; 2 uses
  %i.dv = shl i64 %.sroa.0246.8.vec.extract, %i.du
  %i.dw = or i64 %i.dt, %i.dv                     ; 2 uses
  store i64 %i.dw, ptr %i.da, align 8, !tbaa !87
  %i.dx = load ptr, ptr %5, align 8, !tbaa !71
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ds
  store i64 %i.dw, ptr %i.dy, align 1
  %i.dz = load i64, ptr %i.cz, align 8, !tbaa !86 ; 2 uses
  %.sroa.0247.8.vec.extract = extractelement <4 x i64> %i.cp, i64 1
  %i.ea = add i64 %.sroa.0247.8.vec.extract, %i.dz ; 4 uses
  store i64 %i.ea, ptr %i.cz, align 8, !tbaa !86
  %i.eb = icmp ugt i64 %i.ea, 63
  br i1 %i.eb, label %bb.c, label %._crit_edge.a

._crit_edge.a:                                    ; preds = %bb.b
  %.pre250 = load i64, ptr %i.da, align 8, !tbaa !87
  %.pre251 = load i64, ptr %i.db, align 8, !tbaa !74
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ec = sub i64 64, %i.dz                       ; 2 uses
  %i.ed = icmp ugt i64 %i.ec, 63
  %i.ee = lshr i64 %.sroa.0246.8.vec.extract, %i.ec
  %spec.select.1 = select i1 %i.ed, i64 0, i64 %i.ee
  %i.ef = add i64 %i.ea, -64                      ; 2 uses
  store i64 %i.ef, ptr %i.cz, align 8, !tbaa !86
  %i.eg = load i64, ptr %i.db, align 8, !tbaa !74
  %i.eh = add i64 %i.eg, 8                        ; 2 uses
  store i64 %i.eh, ptr %i.db, align 8, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.a, %bb.c
  %i.ei = phi i64 [ %i.eh, %bb.c ], [ %.pre251, %._crit_edge.a ]
  %i.ej = phi i64 [ %spec.select.1, %bb.c ], [ %.pre250, %._crit_edge.a ]
  %i.ek = phi i64 [ %i.ef, %bb.c ], [ %i.ea, %._crit_edge.a ]
  %.sroa.0246.16.vec.extract = extractelement <4 x i64> %i.cr, i64 2 ; 2 uses
  %i.el = shl i64 %.sroa.0246.16.vec.extract, %i.ek
  %i.em = or i64 %i.ej, %i.el                     ; 2 uses
  store i64 %i.em, ptr %i.da, align 8, !tbaa !87
  %i.en = load ptr, ptr %5, align 8, !tbaa !71
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ei
  store i64 %i.em, ptr %i.eo, align 1
  %i.ep = load i64, ptr %i.cz, align 8, !tbaa !86 ; 2 uses
  %.sroa.0247.16.vec.extract = extractelement <4 x i64> %i.cp, i64 2
  %i.eq = add i64 %.sroa.0247.16.vec.extract, %i.ep ; 4 uses
  store i64 %i.eq, ptr %i.cz, align 8, !tbaa !86
  %i.er = icmp ugt i64 %i.eq, 63
  br i1 %i.er, label %bb.e, label %._crit_edge252

._crit_edge252:                                   ; preds = %bb.d
  %.pre253 = load i64, ptr %i.da, align 8, !tbaa !87
  %.pre254 = load i64, ptr %i.db, align 8, !tbaa !74
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.es = sub i64 64, %i.ep                       ; 2 uses
  %i.et = icmp ugt i64 %i.es, 63
  %i.eu = lshr i64 %.sroa.0246.16.vec.extract, %i.es
  %spec.select.2 = select i1 %i.et, i64 0, i64 %i.eu
  %i.ev = add i64 %i.eq, -64                      ; 2 uses
  store i64 %i.ev, ptr %i.cz, align 8, !tbaa !86
  %i.ew = load i64, ptr %i.db, align 8, !tbaa !74
  %i.ex = add i64 %i.ew, 8                        ; 2 uses
  store i64 %i.ex, ptr %i.db, align 8, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge252, %bb.e
  %i.ey = phi i64 [ %i.ex, %bb.e ], [ %.pre254, %._crit_edge252 ]
  %i.ez = phi i64 [ %spec.select.2, %bb.e ], [ %.pre253, %._crit_edge252 ]
  %i.fa = phi i64 [ %i.ev, %bb.e ], [ %i.eq, %._crit_edge252 ]
  %.sroa.0246.24.vec.extract = extractelement <4 x i64> %i.cr, i64 3 ; 2 uses
  %i.fb = shl i64 %.sroa.0246.24.vec.extract, %i.fa
  %i.fc = or i64 %i.ez, %i.fb                     ; 2 uses
  store i64 %i.fc, ptr %i.da, align 8, !tbaa !87
  %i.fd = load ptr, ptr %5, align 8, !tbaa !71
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ey
  store i64 %i.fc, ptr %i.fe, align 1
  %i.ff = load i64, ptr %i.cz, align 8, !tbaa !86 ; 2 uses
  %.sroa.0247.24.vec.extract = extractelement <4 x i64> %i.cp, i64 3
  %i.fg = add i64 %.sroa.0247.24.vec.extract, %i.ff ; 4 uses
  store i64 %i.fg, ptr %i.cz, align 8, !tbaa !86
  %i.fh = icmp ugt i64 %i.fg, 63
  br i1 %i.fh, label %bb.g, label %._crit_edge255

._crit_edge255:                                   ; preds = %bb.f
  %.pre256 = load i64, ptr %i.da, align 8, !tbaa !87
  %.pre257 = load i64, ptr %i.db, align 8, !tbaa !74
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fi = sub i64 64, %i.ff                       ; 2 uses
  %i.fj = icmp ugt i64 %i.fi, 63
  %i.fk = lshr i64 %.sroa.0246.24.vec.extract, %i.fi
  %spec.select.3 = select i1 %i.fj, i64 0, i64 %i.fk
  %i.fl = add i64 %i.fg, -64                      ; 2 uses
  store i64 %i.fl, ptr %i.cz, align 8, !tbaa !86
  %i.fm = load i64, ptr %i.db, align 8, !tbaa !74
  %i.fn = add i64 %i.fm, 8                        ; 2 uses
  store i64 %i.fn, ptr %i.db, align 8, !tbaa !74
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge255, %bb.g
  %i.fo = phi i64 [ %i.fn, %bb.g ], [ %.pre257, %._crit_edge255 ]
  %i.fp = phi i64 [ %spec.select.3, %bb.g ], [ %.pre256, %._crit_edge255 ]
  %i.fq = phi i64 [ %i.fl, %bb.g ], [ %i.fg, %._crit_edge255 ]
  %.sroa.7.32.vec.extract = extractelement <4 x i64> %i.cy, i64 0 ; 2 uses
  %i.fr = shl i64 %.sroa.7.32.vec.extract, %i.fq
  %i.fs = or i64 %i.fp, %i.fr                     ; 2 uses
  store i64 %i.fs, ptr %i.da, align 8, !tbaa !87
  %i.ft = load ptr, ptr %5, align 8, !tbaa !71
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fo
  store i64 %i.fs, ptr %i.fu, align 1
  %i.fv = load i64, ptr %i.cz, align 8, !tbaa !86 ; 2 uses
  %.sroa.7248.32.vec.extract = extractelement <4 x i64> %i.cw, i64 0
  %i.fw = add i64 %.sroa.7248.32.vec.extract, %i.fv ; 4 uses
  store i64 %i.fw, ptr %i.cz, align 8, !tbaa !86
  %i.fx = icmp ugt i64 %i.fw, 63
  br i1 %i.fx, label %bb.i, label %._crit_edge258

._crit_edge258:                                   ; preds = %bb.h
  %.pre259 = load i64, ptr %i.da, align 8, !tbaa !87
  %.pre260 = load i64, ptr %i.db, align 8, !tbaa !74
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fy = sub i64 64, %i.fv                       ; 2 uses
  %i.fz = icmp ugt i64 %i.fy, 63
  %i.ga = lshr i64 %.sroa.7.32.vec.extract, %i.fy
  %spec.select.4 = select i1 %i.fz, i64 0, i64 %i.ga
  %i.gb = add i64 %i.fw, -64                      ; 2 uses
  store i64 %i.gb, ptr %i.cz, align 8, !tbaa !86
  %i.gc = load i64, ptr %i.db, align 8, !tbaa !74
  %i.gd = add i64 %i.gc, 8                        ; 2 uses
  store i64 %i.gd, ptr %i.db, align 8, !tbaa !74
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge258, %bb.i
  %i.ge = phi i64 [ %i.gd, %bb.i ], [ %.pre260, %._crit_edge258 ]
  %i.gf = phi i64 [ %spec.select.4, %bb.i ], [ %.pre259, %._crit_edge258 ]
  %i.gg = phi i64 [ %i.gb, %bb.i ], [ %i.fw, %._crit_edge258 ]
  %.sroa.7.40.vec.extract = extractelement <4 x i64> %i.cy, i64 1 ; 2 uses
  %i.gh = shl i64 %.sroa.7.40.vec.extract, %i.gg
  %i.gi = or i64 %i.gf, %i.gh                     ; 2 uses
  store i64 %i.gi, ptr %i.da, align 8, !tbaa !87
  %i.gj = load ptr, ptr %5, align 8, !tbaa !71
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.ge
  store i64 %i.gi, ptr %i.gk, align 1
  %i.gl = load i64, ptr %i.cz, align 8, !tbaa !86 ; 2 uses
  %.sroa.7248.40.vec.extract = extractelement <4 x i64> %i.cw, i64 1
  %i.gm = add i64 %.sroa.7248.40.vec.extract, %i.gl ; 4 uses
  store i64 %i.gm, ptr %i.cz, align 8, !tbaa !86
  %i.gn = icmp ugt i64 %i.gm, 63
  br i1 %i.gn, label %bb.k, label %._crit_edge261

._crit_edge261:                                   ; preds = %bb.j
  %.pre262 = load i64, ptr %i.da, align 8, !tbaa !87
  %.pre263 = load i64, ptr %i.db, align 8, !tbaa !74
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.go = sub i64 64, %i.gl                       ; 2 uses
  %i.gp = icmp ugt i64 %i.go, 63
  %i.gq = lshr i64 %.sroa.7.40.vec.extract, %i.go
  %spec.select.5 = select i1 %i.gp, i64 0, i64 %i.gq
  %i.gr = add i64 %i.gm, -64                      ; 2 uses
  store i64 %i.gr, ptr %i.cz, align 8, !tbaa !86
  %i.gs = load i64, ptr %i.db, align 8, !tbaa !74
  %i.gt = add i64 %i.gs, 8                        ; 2 uses
  store i64 %i.gt, ptr %i.db, align 8, !tbaa !74
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge261, %bb.k
  %i.gu = phi i64 [ %i.gt, %bb.k ], [ %.pre263, %._crit_edge261 ]
  %i.gv = phi i64 [ %spec.select.5, %bb.k ], [ %.pre262, %._crit_edge261 ]
  %i.gw = phi i64 [ %i.gr, %bb.k ], [ %i.gm, %._crit_edge261 ]
  %.sroa.7.48.vec.extract = extractelement <4 x i64> %i.cy, i64 2 ; 2 uses
  %i.gx = shl i64 %.sroa.7.48.vec.extract, %i.gw
  %i.gy = or i64 %i.gv, %i.gx                     ; 2 uses
  store i64 %i.gy, ptr %i.da, align 8, !tbaa !87
  %i.gz = load ptr, ptr %5, align 8, !tbaa !71
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gu
  store i64 %i.gy, ptr %i.ha, align 1
  %i.hb = load i64, ptr %i.cz, align 8, !tbaa !86 ; 2 uses
  %.sroa.7248.48.vec.extract = extractelement <4 x i64> %i.cw, i64 2
  %i.hc = add i64 %.sroa.7248.48.vec.extract, %i.hb ; 4 uses
  store i64 %i.hc, ptr %i.cz, align 8, !tbaa !86
  %i.hd = icmp ugt i64 %i.hc, 63
  br i1 %i.hd, label %bb.m, label %._crit_edge264

._crit_edge264:                                   ; preds = %bb.l
  %.pre265 = load i64, ptr %i.da, align 8, !tbaa !87
  %.pre266 = load i64, ptr %i.db, align 8, !tbaa !74
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.he = sub i64 64, %i.hb                       ; 2 uses
  %i.hf = icmp ugt i64 %i.he, 63
  %i.hg = lshr i64 %.sroa.7.48.vec.extract, %i.he
  %spec.select.6 = select i1 %i.hf, i64 0, i64 %i.hg
  %i.hh = add i64 %i.hc, -64                      ; 2 uses
  store i64 %i.hh, ptr %i.cz, align 8, !tbaa !86
  %i.hi = load i64, ptr %i.db, align 8, !tbaa !74
  %i.hj = add i64 %i.hi, 8                        ; 2 uses
  store i64 %i.hj, ptr %i.db, align 8, !tbaa !74
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge264, %bb.m
  %i.hk = phi i64 [ %i.hj, %bb.m ], [ %.pre266, %._crit_edge264 ]
  %i.hl = phi i64 [ %spec.select.6, %bb.m ], [ %.pre265, %._crit_edge264 ]
  %i.hm = phi i64 [ %i.hh, %bb.m ], [ %i.hc, %._crit_edge264 ]
  %.sroa.7.56.vec.extract = extractelement <4 x i64> %i.cy, i64 3 ; 2 uses
  %i.hn = shl i64 %.sroa.7.56.vec.extract, %i.hm
  %i.ho = or i64 %i.hl, %i.hn                     ; 2 uses
  store i64 %i.ho, ptr %i.da, align 8, !tbaa !87
  %i.hp = load ptr, ptr %5, align 8, !tbaa !71
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hk
  store i64 %i.ho, ptr %i.hq, align 1
  %i.hr = load i64, ptr %i.cz, align 8, !tbaa !86 ; 2 uses
  %.sroa.7248.56.vec.extract = extractelement <4 x i64> %i.cw, i64 3
  %i.hs = add i64 %.sroa.7248.56.vec.extract, %i.hr ; 3 uses
  store i64 %i.hs, ptr %i.cz, align 8, !tbaa !86
  %i.ht = icmp ugt i64 %i.hs, 63
  %.pre267 = load i64, ptr %i.db, align 8, !tbaa !74 ; 2 uses
  br i1 %i.ht, label %bb.o, label %._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge

._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge: ; preds = %bb.n
  %.pre268 = load i64, ptr %i.da, align 8
  br label %_ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit

bb.o:                                             ; preds = %bb.n
  %i.hu = sub i64 64, %i.hr                       ; 2 uses
  %i.hv = icmp ugt i64 %i.hu, 63
  %i.hw = lshr i64 %.sroa.7.56.vec.extract, %i.hu
  %spec.select.7 = select i1 %i.hv, i64 0, i64 %i.hw ; 2 uses
  store i64 %spec.select.7, ptr %i.da, align 8, !tbaa !87
  %i.hx = add i64 %i.hs, -64
  store i64 %i.hx, ptr %i.cz, align 8, !tbaa !86
  %i.hy = add i64 %.pre267, 8                     ; 2 uses
  store i64 %i.hy, ptr %i.db, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit

_ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit: ; preds = %._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge, %bb.o
  %i.hz = phi i64 [ %spec.select.7, %bb.o ], [ %.pre268, %._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge ]
  %i.ia = phi i64 [ %i.hy, %bb.o ], [ %.pre267, %._ZN4AVX212_GLOBAL__N_113StoreToWriterILm2EEEvPKNS0_6Bits32ERN12_GLOBAL__N_19BitWriterE.exit_crit_edge ]
  %i.ib = load ptr, ptr %5, align 8, !tbaa !71
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ia
  store i64 %i.hz, ptr %i.ic, align 1
  %i.id = load i64, ptr %i.cz, align 8, !tbaa !86 ; 3 uses
  %i.ie = lshr i64 %i.id, 3
  %i.if = and i64 %i.id, -8
  %i.ig = and i64 %i.id, 7
  store i64 %i.ig, ptr %i.cz, align 8, !tbaa !86
  %i.ih = load i64, ptr %i.da, align 8, !tbaa !87
  %i.ii = lshr i64 %i.ih, %i.if
  store i64 %i.ii, ptr %i.da, align 8, !tbaa !87
  %i.ij = load i64, ptr %i.db, align 8, !tbaa !74
  %i.ik = add i64 %i.ij, %i.ie
  store i64 %i.ik, ptr %i.db, align 8, !tbaa !74
  ret void

.split._crit_edge:                                ; preds = %.split
  %.pre = load i64, ptr %i.da, align 8, !tbaa !87
  %.pre249 = load i64, ptr %i.db, align 8, !tbaa !74
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN22default_implementation12_GLOBAL__N_19LLProcessINS0_9UpTo8BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENUlS8_mE_8__invokeES8_m(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #5 align 2 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 20 uses
  %i.b = alloca [4 x ptr], align 16               ; 16 uses
  %2 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChunkEncoder"], align 64 ; 11 uses
  %3 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChannelRowProcessor.139"], align 16 ; 9 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1883, !nonnull !121, !align !176
  %i.e = load i64, ptr %i.d, align 8, !tbaa !68
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1884, !nonnull !121, !align !176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !125  ; 2 uses
  %i.l = urem i64 %i.f, %i.k
  %i.m = udiv i64 %i.f, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.o = load i64, ptr %i.n, align 8, !tbaa !127
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !128
  %i.r = mul i64 %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1885, !nonnull !121
  %i.u = load i8, ptr %i.t, align 1, !tbaa !95, !range !108, !noundef !121
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = add i64 %i.f, 2
  %i.x = add i64 %i.w, %i.r
  %i.y = select i1 %i.v, i64 0, i64 %i.x          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !123 ; 2 uses
  %i.ab = shl i64 %i.l, 8                         ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 5 uses
  %.sroa.speculated35.i.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 256) ; 28 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !124 ; 2 uses
  %i.af = shl i64 %i.m, 8                         ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 256) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %.sroa.07.0.copyload.i.i = load ptr, ptr %i.i, align 8, !tbaa !72 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.59.0.copyload.i.i = load ptr, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !tbaa !72
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.610.0.copyload.i.i = load ptr, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !tbaa !72
  %i.ah = call noundef ptr %.sroa.59.0.copyload.i.i(ptr noundef %.sroa.07.0.copyload.i.i, i64 noundef %i.ab, i64 noundef %i.af, i64 noundef %.sroa.speculated35.i.i, i64 noundef %.sroa.speculated.i.i, ptr noundef nonnull %i.c) #36, !inline_history !1848 ; 16 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1886, !nonnull !121
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !95, !range !108, !noundef !121
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1887, !nonnull !121, !align !176
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1952
  %.val31.i.i = load ptr, ptr %i.ao, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw [160 x i8], ptr %.val31.i.i, i64 %1
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !1884
  %.pre48.i.i = load ptr, ptr %.pre.i.i, align 8, !tbaa !151
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !1884, !nonnull !121, !align !176
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !151 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1952
  %.val.i.i = load ptr, ptr %i.as, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw [160 x i8], ptr %.val.i.i, i64 %i.y
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.au = phi ptr [ %.pre48.i.i, %bb.b ], [ %i.ar, %bb.c ] ; 6 uses
  %i.av = phi ptr [ %i.ap, %bb.b ], [ %i.at, %bb.c ] ; 16 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !132, !range !108, !noundef !121
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load i64, ptr %i.c, align 8, !tbaa !68  ; 9 uses
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !1885, !nonnull !121
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !95, !range !108, !noundef !121
  %i.bc = trunc nuw i8 %i.bb to i1                ; 3 uses
  br i1 %i.ay, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !73 ; 18 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %.not.i.i.i = icmp eq i64 %i.be, 0              ; 5 uses
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %factor.op.mul.i.i.i = shl nuw nsw i64 %.sroa.speculated35.i.i, 1
  %.reass.i.i.i = mul nuw nsw i64 %factor.op.mul.i.i.i, %.sroa.speculated.i.i
  %i.bg = add nuw nsw i64 %.reass.i.i.i, 64       ; 2 uses
  br i1 %i.bc, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bh = call noalias ptr @malloc(i64 noundef %i.bg) #35
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !71 ; 2 uses
  store ptr %i.bh, ptr %i.av, align 8, !tbaa !71
  %.not.i.i.peel.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.peel.i.i.i, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !72
  call void %i.bk(ptr noundef nonnull %i.bi) #36, !inline_history !1849
  br label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i

_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i
  %exitcond.peel.not.i.i.i = icmp eq i64 %i.be, 1
  br i1 %exitcond.peel.not.i.i.i, label %._crit_edge.i.i.i, label %.peel.next.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i.i, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i, %bb.e
  br i1 %i.bc, label %.preheader.i.i.i, label %bb.i

.peel.next.i.i.i:                                 ; preds = %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i.i
  %.045.i.i.i = phi i64 [ %i.bq, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i.i ], [ 1, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %.045.i.i.i ; 3 uses
  %i.bm = call noalias ptr @malloc(i64 noundef %i.bg) #35
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !71 ; 2 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !71
  %.not.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.peel.next.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !72
  call void %i.bp(ptr noundef nonnull %i.bn) #36, !inline_history !1849
  br label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i.i

_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i.i: ; preds = %bb.h, %.peel.next.i.i.i
  %i.bq = add nuw i64 %.045.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bq, %i.be
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.peel.next.i.i.i, !llvm.loop !1850

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.br = load ptr, ptr %i.av, align 8, !tbaa !71
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 7 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 8 uses
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !68 ; 2 uses
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = load i64, ptr %i.bw, align 8, !tbaa !68
  %i.ca = or i64 %i.bz, %i.by                     ; 2 uses
  store i64 %i.ca, ptr %i.bw, align 8, !tbaa !68
  %i.cb = add i64 %i.bx, 1
  store i64 %i.cb, ptr %i.bv, align 8, !tbaa !68
  store i64 %i.ca, ptr %i.bu, align 1
  %i.cc = load i64, ptr %i.bv, align 8, !tbaa !68 ; 3 uses
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = and i64 %i.cc, -8
  %i.cf = and i64 %i.cc, 7                        ; 2 uses
  %i.cg = load i64, ptr %i.bw, align 8, !tbaa !68
  %i.ch = lshr i64 %i.cg, %i.ce
  %i.ci = load i64, ptr %i.bs, align 8, !tbaa !74
  %i.cj = add i64 %i.ci, %i.cd                    ; 2 uses
  store i64 %i.cj, ptr %i.bs, align 8, !tbaa !74
  %i.ck = load ptr, ptr %i.av, align 8, !tbaa !71
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  %i.cm = shl nuw nsw i64 1, %i.cf
  %i.cn = or i64 %i.ch, %i.cm                     ; 2 uses
  store i64 %i.cn, ptr %i.bw, align 8, !tbaa !68
  %i.co = add nuw nsw i64 %i.cf, 1
  store i64 %i.co, ptr %i.bv, align 8, !tbaa !68
  store i64 %i.cn, ptr %i.cl, align 1
  %i.cp = load i64, ptr %i.bv, align 8, !tbaa !68 ; 3 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = and i64 %i.cp, -8
  %i.cs = and i64 %i.cp, 7
  %i.ct = load i64, ptr %i.bw, align 8, !tbaa !68
  %i.cu = lshr i64 %i.ct, %i.cr                   ; 2 uses
  %i.cv = load i64, ptr %i.bs, align 8, !tbaa !74
  %i.cw = add i64 %i.cv, %i.cq                    ; 2 uses
  store i64 %i.cw, ptr %i.bs, align 8, !tbaa !74
  %i.cx = load ptr, ptr %i.av, align 8, !tbaa !71
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i64 %i.cu, ptr %i.bw, align 8, !tbaa !68
  %i.cz = add nuw nsw i64 %i.cs, 2
  store i64 %i.cz, ptr %i.bv, align 8, !tbaa !68
  store i64 %i.cu, ptr %i.cy, align 1
  %i.da = load i64, ptr %i.bv, align 8, !tbaa !68 ; 3 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = and i64 %i.da, -8
  %i.dd = and i64 %i.da, 7
  store i64 %i.dd, ptr %i.bv, align 8, !tbaa !68
  %i.de = load i64, ptr %i.bw, align 8, !tbaa !68
  %i.df = lshr i64 %i.de, %i.dc
  store i64 %i.df, ptr %i.bw, align 8, !tbaa !68
  %i.dg = load i64, ptr %i.bs, align 8, !tbaa !74
  %i.dh = add i64 %i.dg, %i.db
  store i64 %i.dh, ptr %i.bs, align 8, !tbaa !74
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.i, %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
end_hunk_4
