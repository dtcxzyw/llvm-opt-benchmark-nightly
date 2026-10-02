Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/enc_sse41?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Quantize2Blocks_SSE41:bb.a
  store <16 x i8> %i.dj, ptr %i.bt, align 1, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <16 x i8> %i.dk, ptr %i.dl, align 1, !tbaa !10
  %i.dm = bitcast <16 x i8> %i.dj to <8 x i16>
  %i.dn = bitcast <16 x i8> %i.dk to <8 x i16>
  %i.do = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.dm, <8 x i16> %i.dn)
  %i.dp = icmp ne <16 x i8> %i.do, zeroinitializer
  %i.dq = bitcast <16 x i1> %i.dp to i16
  %.not = icmp eq i16 %i.dq, 0
  %i.dr = select i1 %.not, i32 0, i32 2
  %i.ds = or disjoint i32 %i.dr, %i.br
  ret i32 %i.ds
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @QuantizeBlockWHT_SSE41(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr noalias nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = load <8 x i16>, ptr %0, align 1, !tbaa !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load <8 x i16>, ptr %i.b, align 1, !tbaa !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load <8 x i16>, ptr %i.d, align 1, !tbaa !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load <8 x i16>, ptr %i.f, align 1, !tbaa !10 ; 2 uses
  %i.h = load <8 x i16>, ptr %2, align 1, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load <8 x i16>, ptr %i.i, align 1, !tbaa !10
  %i.k = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.a, i1 false) ; 2 uses
  %i.l = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.c, i1 false) ; 2 uses
  %i.m = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.k, <8 x i16> %i.e) ; 2 uses
  %i.n = mul <8 x i16> %i.e, %i.k                 ; 2 uses
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.l, <8 x i16> %i.g) ; 2 uses
  %i.p = mul <8 x i16> %i.g, %i.l                 ; 2 uses
  %i.q = shufflevector <8 x i16> %i.n, <8 x i16> %i.m, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.r = shufflevector <8 x i16> %i.n, <8 x i16> %i.m, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.s = shufflevector <8 x i16> %i.p, <8 x i16> %i.o, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.t = shufflevector <8 x i16> %i.p, <8 x i16> %i.o, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.v = load <4 x i32>, ptr %i.u, align 1, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.x = load <4 x i32>, ptr %i.w, align 1, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.z = load <4 x i32>, ptr %i.y, align 1, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ab = load <4 x i32>, ptr %i.aa, align 1, !tbaa !10
  %i.ac = bitcast <8 x i16> %i.q to <4 x i32>
  %i.ad = add <4 x i32> %i.v, %i.ac
  %i.ae = bitcast <8 x i16> %i.r to <4 x i32>
  %i.af = add <4 x i32> %i.x, %i.ae
  %i.ag = bitcast <8 x i16> %i.s to <4 x i32>
  %i.ah = add <4 x i32> %i.z, %i.ag
  %i.ai = bitcast <8 x i16> %i.t to <4 x i32>
  %i.aj = add <4 x i32> %i.ab, %i.ai
  %i.ak = ashr <4 x i32> %i.ad, splat (i32 17)
  %i.al = ashr <4 x i32> %i.af, splat (i32 17)
  %i.am = ashr <4 x i32> %i.ah, splat (i32 17)
  %i.an = ashr <4 x i32> %i.aj, splat (i32 17)
  %i.ao = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ak, <4 x i32> %i.al)
  %i.ap = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.am, <4 x i32> %i.an)
  %i.aq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ao, <8 x i16> splat (i16 2047))
  %i.ar = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ap, <8 x i16> splat (i16 2047))
  %i.as = tail call <8 x i16> @llvm.x86.ssse3.psign.w.128(<8 x i16> %i.aq, <8 x i16> %i.a) ; 2 uses
  %i.at = tail call <8 x i16> @llvm.x86.ssse3.psign.w.128(<8 x i16> %i.ar, <8 x i16> %i.c) ; 2 uses
  %i.au = mul <8 x i16> %i.as, %i.h
  %i.av = mul <8 x i16> %i.at, %i.j
  store <8 x i16> %i.au, ptr %0, align 1, !tbaa !10
  store <8 x i16> %i.av, ptr %i.b, align 1, !tbaa !10
  %i.aw = bitcast <8 x i16> %i.as to <16 x i8>    ; 2 uses
  %i.ax = shufflevector <16 x i8> %i.aw, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 16, i32 16, i32 10, i32 11, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13>
  %i.ay = shufflevector <16 x i8> %i.aw, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.az = bitcast <8 x i16> %i.at to <16 x i8>    ; 2 uses
  %i.ba = shufflevector <16 x i8> %i.az, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 4, i32 5, i32 16, i32 16, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.bb = shufflevector <16 x i8> %i.az, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 1, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.bc = or <16 x i8> %i.bb, %i.ax               ; 2 uses
  %i.bd = or <16 x i8> %i.ba, %i.ay               ; 2 uses
  store <16 x i8> %i.bc, ptr %1, align 1, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <16 x i8> %i.bd, ptr %i.be, align 1, !tbaa !10
  %i.bf = bitcast <16 x i8> %i.bc to <8 x i16>
  %i.bg = bitcast <16 x i8> %i.bd to <8 x i16>
  %i.bh = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bf, <8 x i16> %i.bg)
  %i.bi = icmp ne <16 x i8> %i.bh, zeroinitializer
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %i.bk = icmp ne i16 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  ret i32 %i.bl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 67108864) i32 @Disto4x4_SSE41(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %.val4 = load <8 x i16>, ptr %2, align 1, !tbaa !10 ; 2 uses
  %i.a = getelementptr i8, ptr %2, i64 16
  %.val35 = load <8 x i16>, ptr %i.a, align 1, !tbaa !10 ; 2 uses
  %i.b = load <4 x i32>, ptr %0, align 1, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load <4 x i32>, ptr %i.c, align 1, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load <4 x i32>, ptr %i.e, align 1, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 1, !tbaa !10
  %i.i = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %i.j = load <4 x i32>, ptr %1, align 1, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load <4 x i32>, ptr %i.k, align 1, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load <4 x i32>, ptr %i.m, align 1, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.p = load i64, ptr %i.o, align 1, !tbaa !10
  %i.q = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %i.r = shufflevector <4 x i32> %i.b, <4 x i32> %i.j, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.s = shufflevector <4 x i32> %i.d, <4 x i32> %i.l, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.t = shufflevector <4 x i32> %i.f, <4 x i32> %i.n, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.u = bitcast <2 x i64> %i.i to <4 x i32>
  %i.v = bitcast <2 x i64> %i.q to <4 x i32>
  %i.w = shufflevector <4 x i32> %i.u, <4 x i32> %i.v, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.x = bitcast <4 x i32> %i.r to <16 x i8>
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.z = zext <8 x i8> %i.y to <8 x i16>          ; 2 uses
  %i.aa = bitcast <4 x i32> %i.s to <16 x i8>
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ac = zext <8 x i8> %i.ab to <8 x i16>        ; 2 uses
  %i.ad = bitcast <4 x i32> %i.t to <16 x i8>
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.af = zext <8 x i8> %i.ae to <8 x i16>        ; 2 uses
  %i.ag = bitcast <4 x i32> %i.w to <16 x i8>
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ai = zext <8 x i8> %i.ah to <8 x i16>        ; 2 uses
  %i.aj = add nuw nsw <8 x i16> %i.af, %i.z       ; 2 uses
  %i.ak = add nuw nsw <8 x i16> %i.ai, %i.ac      ; 2 uses
  %i.al = sub nsw <8 x i16> %i.ac, %i.ai          ; 2 uses
  %i.am = sub nsw <8 x i16> %i.z, %i.af           ; 2 uses
  %i.an = add nuw nsw <8 x i16> %i.ak, %i.aj      ; 2 uses
  %i.ao = add nsw <8 x i16> %i.al, %i.am          ; 2 uses
  %i.ap = sub nsw <8 x i16> %i.am, %i.al          ; 2 uses
  %i.aq = sub nsw <8 x i16> %i.aj, %i.ak          ; 2 uses
  %i.ar = shufflevector <8 x i16> %i.an, <8 x i16> %i.ao, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.as = shufflevector <8 x i16> %i.ap, <8 x i16> %i.aq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.at = shufflevector <8 x i16> %i.an, <8 x i16> %i.ao, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.au = shufflevector <8 x i16> %i.ap, <8 x i16> %i.aq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.av = bitcast <8 x i16> %i.ar to <4 x i32>    ; 2 uses
  %i.aw = bitcast <8 x i16> %i.as to <4 x i32>    ; 2 uses
  %i.ax = shufflevector <4 x i32> %i.av, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>    ; 2 uses
  %i.az = bitcast <8 x i16> %i.at to <4 x i32>    ; 2 uses
  %i.ba = bitcast <8 x i16> %i.au to <4 x i32>    ; 2 uses
  %i.bb = shufflevector <4 x i32> %i.az, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bc = bitcast <4 x i32> %i.bb to <2 x i64>    ; 2 uses
  %i.bd = shufflevector <4 x i32> %i.av, <4 x i32> %i.aw, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.be = bitcast <4 x i32> %i.bd to <2 x i64>    ; 2 uses
  %i.bf = shufflevector <4 x i32> %i.az, <4 x i32> %i.ba, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bg = bitcast <4 x i32> %i.bf to <2 x i64>    ; 2 uses
  %i.bh = shufflevector <2 x i64> %i.ay, <2 x i64> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bi = shufflevector <2 x i64> %i.ay, <2 x i64> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.bj = shufflevector <2 x i64> %i.be, <2 x i64> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bk = shufflevector <2 x i64> %i.be, <2 x i64> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.bl = bitcast <2 x i64> %i.bh to <8 x i16>    ; 2 uses
  %i.bm = bitcast <2 x i64> %i.bj to <8 x i16>    ; 2 uses
  %i.bn = add <8 x i16> %i.bl, %i.bm              ; 2 uses
  %i.bo = bitcast <2 x i64> %i.bi to <8 x i16>    ; 2 uses
  %i.bp = bitcast <2 x i64> %i.bk to <8 x i16>    ; 2 uses
  %i.bq = add <8 x i16> %i.bo, %i.bp              ; 2 uses
  %i.br = sub <8 x i16> %i.bo, %i.bp              ; 2 uses
  %i.bs = sub <8 x i16> %i.bl, %i.bm              ; 2 uses
  %i.bt = add <8 x i16> %i.bn, %i.bq
  %i.bu = bitcast <8 x i16> %i.bt to <2 x i64>    ; 2 uses
  %i.bv = add <8 x i16> %i.bs, %i.br
  %i.bw = bitcast <8 x i16> %i.bv to <2 x i64>    ; 2 uses
  %i.bx = sub <8 x i16> %i.bs, %i.br
  %i.by = bitcast <8 x i16> %i.bx to <2 x i64>    ; 2 uses
  %i.bz = sub <8 x i16> %i.bn, %i.bq
  %i.ca = bitcast <8 x i16> %i.bz to <2 x i64>    ; 2 uses
  %i.cb = shufflevector <2 x i64> %i.bu, <2 x i64> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.cc = shufflevector <2 x i64> %i.by, <2 x i64> %i.ca, <2 x i32> <i32 0, i32 2>
  %i.cd = shufflevector <2 x i64> %i.bu, <2 x i64> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.ce = shufflevector <2 x i64> %i.by, <2 x i64> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.cf = bitcast <2 x i64> %i.cb to <8 x i16>
  %i.cg = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cf, i1 false)
  %i.ch = bitcast <2 x i64> %i.cc to <8 x i16>
  %i.ci = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ch, i1 false)
  %i.cj = bitcast <2 x i64> %i.cd to <8 x i16>
  %i.ck = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cj, i1 false)
  %i.cl = bitcast <2 x i64> %i.ce to <8 x i16>
  %i.cm = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cl, i1 false)
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cg, <8 x i16> %.val4)
  %i.co = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ci, <8 x i16> %.val35)
  %i.cp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ck, <8 x i16> %.val4)
  %i.cq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cm, <8 x i16> %.val35)
  %.neg7 = add <4 x i32> %i.co, %i.cn
  %i.cr = add <4 x i32> %i.cp, %i.cq
  %i.cs = sub <4 x i32> %.neg7, %i.cr
  %i.ct = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cs)
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %i.cv = lshr i32 %i.cu, 5
  ret i32 %i.cv
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i32 @Disto16x16_SSE41(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %.val4.i = load <8 x i16>, ptr %2, align 1, !tbaa !10, !alias.scope !22, !noalias !23 ; 2 uses
  %i.a = getelementptr i8, ptr %2, i64 16
  %.val35.i = load <8 x i16>, ptr %i.a, align 1, !tbaa !10, !alias.scope !22, !noalias !23 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv23 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next24, %bb.c ] ; 4 uses
  %.01320 = phi i32 [ 0, %bb.a ], [ %i.cw, %bb.c ]
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv23
  %invariant.gep16 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv23
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.118 = phi i32 [ %.01320, %.preheader ], [ %i.cw, %bb.b ]
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  %gep17 = getelementptr inbounds nuw i8, ptr %invariant.gep16, i64 %indvars.iv ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.b = load <4 x i32>, ptr %gep, align 1, !tbaa !10, !alias.scope !24, !noalias !26
  %i.c = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.d = load <4 x i32>, ptr %i.c, align 1, !tbaa !10, !alias.scope !24, !noalias !26
  %i.e = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.f = load <4 x i32>, ptr %i.e, align 1, !tbaa !10, !alias.scope !24, !noalias !26
  %i.g = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %i.h = load i64, ptr %i.g, align 1, !tbaa !10, !alias.scope !24, !noalias !26
  %i.i = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %i.j = load <4 x i32>, ptr %gep17, align 1, !tbaa !10, !alias.scope !25, !noalias !27
  %i.k = getelementptr inbounds nuw i8, ptr %gep17, i64 32
  %i.l = load <4 x i32>, ptr %i.k, align 1, !tbaa !10, !alias.scope !25, !noalias !27
  %i.m = getelementptr inbounds nuw i8, ptr %gep17, i64 64
  %i.n = load <4 x i32>, ptr %i.m, align 1, !tbaa !10, !alias.scope !25, !noalias !27
  %i.o = getelementptr inbounds nuw i8, ptr %gep17, i64 96
  %i.p = load i64, ptr %i.o, align 1, !tbaa !10, !alias.scope !25, !noalias !27
  %i.q = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %i.r = shufflevector <4 x i32> %i.b, <4 x i32> %i.j, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.s = shufflevector <4 x i32> %i.d, <4 x i32> %i.l, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.t = shufflevector <4 x i32> %i.f, <4 x i32> %i.n, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.u = bitcast <2 x i64> %i.i to <4 x i32>
  %i.v = bitcast <2 x i64> %i.q to <4 x i32>
  %i.w = shufflevector <4 x i32> %i.u, <4 x i32> %i.v, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.x = bitcast <4 x i32> %i.r to <16 x i8>
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.z = zext <8 x i8> %i.y to <8 x i16>          ; 2 uses
  %i.aa = bitcast <4 x i32> %i.s to <16 x i8>
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ac = zext <8 x i8> %i.ab to <8 x i16>        ; 2 uses
  %i.ad = bitcast <4 x i32> %i.t to <16 x i8>
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.af = zext <8 x i8> %i.ae to <8 x i16>        ; 2 uses
  %i.ag = bitcast <4 x i32> %i.w to <16 x i8>
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ai = zext <8 x i8> %i.ah to <8 x i16>        ; 2 uses
  %i.aj = add nuw nsw <8 x i16> %i.af, %i.z       ; 2 uses
  %i.ak = add nuw nsw <8 x i16> %i.ai, %i.ac      ; 2 uses
  %i.al = sub nsw <8 x i16> %i.ac, %i.ai          ; 2 uses
  %i.am = sub nsw <8 x i16> %i.z, %i.af           ; 2 uses
  %i.an = add nuw nsw <8 x i16> %i.ak, %i.aj      ; 2 uses
  %i.ao = add nsw <8 x i16> %i.al, %i.am          ; 2 uses
  %i.ap = sub nsw <8 x i16> %i.am, %i.al          ; 2 uses
  %i.aq = sub nsw <8 x i16> %i.aj, %i.ak          ; 2 uses
  %i.ar = shufflevector <8 x i16> %i.an, <8 x i16> %i.ao, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.as = shufflevector <8 x i16> %i.ap, <8 x i16> %i.aq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.at = shufflevector <8 x i16> %i.an, <8 x i16> %i.ao, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.au = shufflevector <8 x i16> %i.ap, <8 x i16> %i.aq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.av = bitcast <8 x i16> %i.ar to <4 x i32>    ; 2 uses
  %i.aw = bitcast <8 x i16> %i.as to <4 x i32>    ; 2 uses
  %i.ax = shufflevector <4 x i32> %i.av, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>    ; 2 uses
  %i.az = bitcast <8 x i16> %i.at to <4 x i32>    ; 2 uses
  %i.ba = bitcast <8 x i16> %i.au to <4 x i32>    ; 2 uses
  %i.bb = shufflevector <4 x i32> %i.az, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bc = bitcast <4 x i32> %i.bb to <2 x i64>    ; 2 uses
  %i.bd = shufflevector <4 x i32> %i.av, <4 x i32> %i.aw, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.be = bitcast <4 x i32> %i.bd to <2 x i64>    ; 2 uses
  %i.bf = shufflevector <4 x i32> %i.az, <4 x i32> %i.ba, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bg = bitcast <4 x i32> %i.bf to <2 x i64>    ; 2 uses
  %i.bh = shufflevector <2 x i64> %i.ay, <2 x i64> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bi = shufflevector <2 x i64> %i.ay, <2 x i64> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.bj = shufflevector <2 x i64> %i.be, <2 x i64> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bk = shufflevector <2 x i64> %i.be, <2 x i64> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.bl = bitcast <2 x i64> %i.bh to <8 x i16>    ; 2 uses
  %i.bm = bitcast <2 x i64> %i.bj to <8 x i16>    ; 2 uses
  %i.bn = add <8 x i16> %i.bl, %i.bm              ; 2 uses
  %i.bo = bitcast <2 x i64> %i.bi to <8 x i16>    ; 2 uses
  %i.bp = bitcast <2 x i64> %i.bk to <8 x i16>    ; 2 uses
  %i.bq = add <8 x i16> %i.bo, %i.bp              ; 2 uses
  %i.br = sub <8 x i16> %i.bo, %i.bp              ; 2 uses
  %i.bs = sub <8 x i16> %i.bl, %i.bm              ; 2 uses
  %i.bt = add <8 x i16> %i.bn, %i.bq
  %i.bu = bitcast <8 x i16> %i.bt to <2 x i64>    ; 2 uses
  %i.bv = add <8 x i16> %i.bs, %i.br
  %i.bw = bitcast <8 x i16> %i.bv to <2 x i64>    ; 2 uses
  %i.bx = sub <8 x i16> %i.bs, %i.br
  %i.by = bitcast <8 x i16> %i.bx to <2 x i64>    ; 2 uses
  %i.bz = sub <8 x i16> %i.bn, %i.bq
  %i.ca = bitcast <8 x i16> %i.bz to <2 x i64>    ; 2 uses
  %i.cb = shufflevector <2 x i64> %i.bu, <2 x i64> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.cc = shufflevector <2 x i64> %i.by, <2 x i64> %i.ca, <2 x i32> <i32 0, i32 2>
  %i.cd = shufflevector <2 x i64> %i.bu, <2 x i64> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.ce = shufflevector <2 x i64> %i.by, <2 x i64> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.cf = bitcast <2 x i64> %i.cb to <8 x i16>
  %i.cg = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cf, i1 false)
  %i.ch = bitcast <2 x i64> %i.cc to <8 x i16>
  %i.ci = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ch, i1 false)
  %i.cj = bitcast <2 x i64> %i.cd to <8 x i16>
  %i.ck = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cj, i1 false)
  %i.cl = bitcast <2 x i64> %i.ce to <8 x i16>
  %i.cm = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cl, i1 false)
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cg, <8 x i16> %.val4.i)
  %i.co = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ci, <8 x i16> %.val35.i)
  %i.cp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ck, <8 x i16> %.val4.i)
  %i.cq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cm, <8 x i16> %.val35.i)
  %.neg15 = add <4 x i32> %i.co, %i.cn
  %i.cr = add <4 x i32> %i.cp, %i.cq
  %i.cs = sub <4 x i32> %.neg15, %i.cr
  %i.ct = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cs)
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %i.cv = lshr i32 %i.cu, 5
  %i.cw = add nsw i32 %i.cv, %.118                ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %i.cx = icmp samesign ult i64 %indvars.iv, 12
  br i1 %i.cx, label %bb.b, label %bb.c, !llvm.loop !20

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 128
  %i.cy = icmp samesign ult i64 %indvars.iv23, 384
  br i1 %i.cy, label %.preheader, label %bb.d, !llvm.loop !21

bb.d:                                             ; preds = %bb.c
  ret i32 %i.cw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @VP8SetHistogramData(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.ssse3.psign.w.128(<8 x i16>, <8 x i16>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umulh.v8i16(<8 x i16>, <8 x i16>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!5, !5, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = distinct !{!16, i1 false, !"Disto4x4_SSE41"}
!17 = distinct !{!17, !16, !"Disto4x4_SSE41: argument 2"}
!18 = distinct !{!18, !16, !"Disto4x4_SSE41: argument 1"}
!19 = distinct !{!19, !16, !"Disto4x4_SSE41: argument 0"}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = !{!17}
!23 = !{!19, !18}
!24 = !{!19}
!25 = !{!18}
!26 = !{!18, !17}
!27 = !{!19, !17}
end_hunk_0
