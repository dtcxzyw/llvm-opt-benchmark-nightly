Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/enc_sse41?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Quantize2Blocks_SSE41:bb.a
  %i.af = load <4 x i32>, ptr %i.ae, align 1, !tbaa !10 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ah = load <4 x i32>, ptr %i.ag, align 1, !tbaa !10 ; 2 uses
  %i.ai = bitcast <8 x i16> %i.w to <4 x i32>
  %i.aj = add <4 x i32> %i.ab, %i.ai
  %i.ak = bitcast <8 x i16> %i.x to <4 x i32>
  %i.al = add <4 x i32> %i.ad, %i.ak
  %i.am = bitcast <8 x i16> %i.y to <4 x i32>
  %i.an = add <4 x i32> %i.af, %i.am
  %i.ao = bitcast <8 x i16> %i.z to <4 x i32>
  %i.ap = add <4 x i32> %i.ah, %i.ao
  %i.aq = ashr <4 x i32> %i.aj, splat (i32 17)
  %i.ar = ashr <4 x i32> %i.al, splat (i32 17)
  %i.as = ashr <4 x i32> %i.an, splat (i32 17)
  %i.at = ashr <4 x i32> %i.ap, splat (i32 17)
  %i.au = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aq, <4 x i32> %i.ar)
  %i.av = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.as, <4 x i32> %i.at)
  %i.aw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.au, <8 x i16> splat (i16 2047))
  %i.ax = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.av, <8 x i16> splat (i16 2047))
  %i.ay = tail call <8 x i16> @llvm.x86.ssse3.psign.w.128(<8 x i16> %i.aw, <8 x i16> %i.b) ; 2 uses
  %i.az = tail call <8 x i16> @llvm.x86.ssse3.psign.w.128(<8 x i16> %i.ax, <8 x i16> %i.d) ; 2 uses
  %i.ba = mul <8 x i16> %i.ay, %i.i
  %i.bb = mul <8 x i16> %i.az, %i.k
  store <8 x i16> %i.ba, ptr %0, align 1, !tbaa !10
  store <8 x i16> %i.bb, ptr %i.c, align 1, !tbaa !10
  %i.bc = bitcast <8 x i16> %i.ay to <16 x i8>    ; 2 uses
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 16, i32 16, i32 10, i32 11, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13>
  %i.be = shufflevector <16 x i8> %i.bc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.bf = bitcast <8 x i16> %i.az to <16 x i8>    ; 2 uses
  %i.bg = shufflevector <16 x i8> %i.bf, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 4, i32 5, i32 16, i32 16, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.bh = shufflevector <16 x i8> %i.bf, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 1, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.bi = or <16 x i8> %i.bh, %i.bd               ; 2 uses
  %i.bj = or <16 x i8> %i.bg, %i.be               ; 2 uses
  store <16 x i8> %i.bi, ptr %1, align 1, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <16 x i8> %i.bj, ptr %i.bk, align 1, !tbaa !10
  %i.bl = bitcast <16 x i8> %i.bi to <8 x i16>
  %i.bm = bitcast <16 x i8> %i.bj to <8 x i16>
  %i.bn = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bl, <8 x i16> %i.bm)
  %i.bo = icmp ne <16 x i8> %i.bn, zeroinitializer
  %i.bp = bitcast <16 x i1> %i.bo to i16
  %i.bq = icmp ne i16 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = load <8 x i16>, ptr %i.bs, align 1, !tbaa !10 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bw = load <8 x i16>, ptr %i.bv, align 1, !tbaa !10 ; 2 uses
  %i.bx = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bu, i1 false)
  %i.by = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bw, i1 false)
  %i.bz = add <8 x i16> %i.bx, %i.n               ; 2 uses
  %i.ca = add <8 x i16> %i.by, %i.p               ; 2 uses
  %i.cb = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bz, <8 x i16> %i.f) ; 2 uses
  %i.cc = mul <8 x i16> %i.bz, %i.f               ; 2 uses
  %i.cd = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ca, <8 x i16> %i.h) ; 2 uses
  %i.ce = mul <8 x i16> %i.ca, %i.h               ; 2 uses
  %i.cf = shufflevector <8 x i16> %i.cc, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cg = shufflevector <8 x i16> %i.cc, <8 x i16> %i.cb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ch = shufflevector <8 x i16> %i.ce, <8 x i16> %i.cd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ci = shufflevector <8 x i16> %i.ce, <8 x i16> %i.cd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cj = bitcast <8 x i16> %i.cf to <4 x i32>
  %i.ck = add <4 x i32> %i.ab, %i.cj
  %i.cl = bitcast <8 x i16> %i.cg to <4 x i32>
  %i.cm = add <4 x i32> %i.ad, %i.cl
  %i.cn = bitcast <8 x i16> %i.ch to <4 x i32>
  %i.co = add <4 x i32> %i.af, %i.cn
  %i.cp = bitcast <8 x i16> %i.ci to <4 x i32>
  %i.cq = add <4 x i32> %i.ah, %i.cp
  %i.cr = ashr <4 x i32> %i.ck, splat (i32 17)
  %i.cs = ashr <4 x i32> %i.cm, splat (i32 17)
  %i.ct = ashr <4 x i32> %i.co, splat (i32 17)
  %i.cu = ashr <4 x i32> %i.cq, splat (i32 17)
  %i.cv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cr, <4 x i32> %i.cs)
  %i.cw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ct, <4 x i32> %i.cu)
  %i.cx = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cv, <8 x i16> splat (i16 2047))
  %i.cy = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cw, <8 x i16> splat (i16 2047))
  %i.cz = tail call <8 x i16> @llvm.x86.ssse3.psign.w.128(<8 x i16> %i.cx, <8 x i16> %i.bu) ; 2 uses
  %i.da = tail call <8 x i16> @llvm.x86.ssse3.psign.w.128(<8 x i16> %i.cy, <8 x i16> %i.bw) ; 2 uses
  %i.db = mul <8 x i16> %i.cz, %i.i
  %i.dc = mul <8 x i16> %i.da, %i.k
  store <8 x i16> %i.db, ptr %i.bs, align 1, !tbaa !10
  store <8 x i16> %i.dc, ptr %i.bv, align 1, !tbaa !10
  %i.dd = bitcast <8 x i16> %i.cz to <16 x i8>    ; 2 uses
  %i.de = shufflevector <16 x i8> %i.dd, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 16, i32 16, i32 10, i32 11, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13>
  %i.df = shufflevector <16 x i8> %i.dd, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.dg = bitcast <8 x i16> %i.da to <16 x i8>    ; 2 uses
  %i.dh = shufflevector <16 x i8> %i.dg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 4, i32 5, i32 16, i32 16, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.di = shufflevector <16 x i8> %i.dg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 1, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.dj = or <16 x i8> %i.di, %i.de               ; 2 uses
  %i.dk = or <16 x i8> %i.dh, %i.df               ; 2 uses
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
  %i.r = bitcast <2 x i64> %i.i to <4 x i32>
  %i.s = bitcast <2 x i64> %i.q to <4 x i32>
  %3 = shufflevector <4 x i32> %i.b, <4 x i32> %i.j, <2 x i32> <i32 0, i32 4>
  %4 = bitcast <2 x i32> %3 to <8 x i8>
  %i.t = zext <8 x i8> %4 to <8 x i16>            ; 2 uses
  %5 = shufflevector <4 x i32> %i.d, <4 x i32> %i.l, <2 x i32> <i32 0, i32 4>
  %6 = bitcast <2 x i32> %5 to <8 x i8>
  %i.u = zext <8 x i8> %6 to <8 x i16>            ; 2 uses
  %7 = shufflevector <4 x i32> %i.f, <4 x i32> %i.n, <2 x i32> <i32 0, i32 4>
  %8 = bitcast <2 x i32> %7 to <8 x i8>
  %i.v = zext <8 x i8> %8 to <8 x i16>            ; 2 uses
  %9 = shufflevector <4 x i32> %i.r, <4 x i32> %i.s, <2 x i32> <i32 0, i32 4>
  %10 = bitcast <2 x i32> %9 to <8 x i8>
  %i.w = zext <8 x i8> %10 to <8 x i16>           ; 2 uses
  %i.x = add nuw nsw <8 x i16> %i.v, %i.t         ; 2 uses
  %i.y = add nuw nsw <8 x i16> %i.w, %i.u         ; 2 uses
  %i.z = sub nsw <8 x i16> %i.u, %i.w             ; 2 uses
  %i.aa = sub nsw <8 x i16> %i.t, %i.v            ; 2 uses
  %i.ab = add nuw nsw <8 x i16> %i.y, %i.x        ; 2 uses
  %i.ac = add nsw <8 x i16> %i.z, %i.aa           ; 2 uses
  %i.ad = sub nsw <8 x i16> %i.aa, %i.z           ; 2 uses
  %i.ae = sub nsw <8 x i16> %i.x, %i.y            ; 2 uses
  %i.af = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ag = shufflevector <8 x i16> %i.ad, <8 x i16> %i.ae, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ah = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ai = shufflevector <8 x i16> %i.ad, <8 x i16> %i.ae, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aj = bitcast <8 x i16> %i.af to <4 x i32>    ; 2 uses
  %i.ak = bitcast <8 x i16> %i.ag to <4 x i32>    ; 2 uses
  %i.al = shufflevector <4 x i32> %i.aj, <4 x i32> %i.ak, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.am = bitcast <4 x i32> %i.al to <2 x i64>    ; 2 uses
  %i.an = bitcast <8 x i16> %i.ah to <4 x i32>    ; 2 uses
  %i.ao = bitcast <8 x i16> %i.ai to <4 x i32>    ; 2 uses
  %i.ap = shufflevector <4 x i32> %i.an, <4 x i32> %i.ao, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aq = bitcast <4 x i32> %i.ap to <2 x i64>    ; 2 uses
  %i.ar = shufflevector <4 x i32> %i.aj, <4 x i32> %i.ak, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.as = bitcast <4 x i32> %i.ar to <2 x i64>    ; 2 uses
  %i.at = shufflevector <4 x i32> %i.an, <4 x i32> %i.ao, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.au = bitcast <4 x i32> %i.at to <2 x i64>    ; 2 uses
  %i.av = shufflevector <2 x i64> %i.am, <2 x i64> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.aw = shufflevector <2 x i64> %i.am, <2 x i64> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.ax = shufflevector <2 x i64> %i.as, <2 x i64> %i.au, <2 x i32> <i32 0, i32 2>
  %i.ay = shufflevector <2 x i64> %i.as, <2 x i64> %i.au, <2 x i32> <i32 1, i32 3>
  %i.az = bitcast <2 x i64> %i.av to <8 x i16>    ; 2 uses
  %i.ba = bitcast <2 x i64> %i.ax to <8 x i16>    ; 2 uses
  %i.bb = add <8 x i16> %i.az, %i.ba              ; 2 uses
  %i.bc = bitcast <2 x i64> %i.aw to <8 x i16>    ; 2 uses
  %i.bd = bitcast <2 x i64> %i.ay to <8 x i16>    ; 2 uses
  %i.be = add <8 x i16> %i.bc, %i.bd              ; 2 uses
  %i.bf = sub <8 x i16> %i.bc, %i.bd              ; 2 uses
  %i.bg = sub <8 x i16> %i.az, %i.ba              ; 2 uses
  %i.bh = add <8 x i16> %i.bb, %i.be
  %i.bi = bitcast <8 x i16> %i.bh to <2 x i64>    ; 2 uses
  %i.bj = add <8 x i16> %i.bg, %i.bf
  %i.bk = bitcast <8 x i16> %i.bj to <2 x i64>    ; 2 uses
  %i.bl = sub <8 x i16> %i.bg, %i.bf
  %i.bm = bitcast <8 x i16> %i.bl to <2 x i64>    ; 2 uses
  %i.bn = sub <8 x i16> %i.bb, %i.be
  %i.bo = bitcast <8 x i16> %i.bn to <2 x i64>    ; 2 uses
  %i.bp = shufflevector <2 x i64> %i.bi, <2 x i64> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.bq = shufflevector <2 x i64> %i.bm, <2 x i64> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.br = shufflevector <2 x i64> %i.bi, <2 x i64> %i.bk, <2 x i32> <i32 1, i32 3>
  %i.bs = shufflevector <2 x i64> %i.bm, <2 x i64> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.bt = bitcast <2 x i64> %i.bp to <8 x i16>
  %i.bu = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bt, i1 false)
  %i.bv = bitcast <2 x i64> %i.bq to <8 x i16>
  %i.bw = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bv, i1 false)
  %i.bx = bitcast <2 x i64> %i.br to <8 x i16>
  %i.by = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bx, i1 false)
  %i.bz = bitcast <2 x i64> %i.bs to <8 x i16>
  %i.ca = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bz, i1 false)
  %i.cb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bu, <8 x i16> %.val4)
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bw, <8 x i16> %.val35)
  %i.cd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.by, <8 x i16> %.val4)
  %i.ce = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ca, <8 x i16> %.val35)
  %.neg7 = add <4 x i32> %i.cc, %i.cb
  %i.cf = add <4 x i32> %i.cd, %i.ce
  %i.cg = sub <4 x i32> %.neg7, %i.cf
  %i.ch = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cg)
  %i.ci = tail call i32 @llvm.abs.i32(i32 %i.ch, i1 true)
  %i.cj = lshr i32 %i.ci, 5
  ret i32 %i.cj
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i32 @Disto16x16_SSE41(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %.val4.i = load <8 x i16>, ptr %2, align 1, !tbaa !10, !alias.scope !22 ; 2 uses
  %i.a = getelementptr i8, ptr %2, i64 16
  %.val35.i = load <8 x i16>, ptr %i.a, align 1, !tbaa !10, !alias.scope !22 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv23 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next24, %bb.c ] ; 4 uses
  %.01320 = phi i32 [ 0, %bb.a ], [ %i.ck, %bb.c ]
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv23
  %invariant.gep16 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv23
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.118 = phi i32 [ %.01320, %.preheader ], [ %i.ck, %bb.b ]
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  %gep17 = getelementptr inbounds nuw i8, ptr %invariant.gep16, i64 %indvars.iv ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.b = load <4 x i32>, ptr %gep, align 1, !tbaa !10, !alias.scope !23
  %i.c = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.d = load <4 x i32>, ptr %i.c, align 1, !tbaa !10, !alias.scope !23
  %i.e = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.f = load <4 x i32>, ptr %i.e, align 1, !tbaa !10, !alias.scope !23
  %i.g = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %i.h = load i64, ptr %i.g, align 1, !tbaa !10, !alias.scope !23
  %i.i = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %i.j = load <4 x i32>, ptr %gep17, align 1, !tbaa !10, !alias.scope !24
  %i.k = getelementptr inbounds nuw i8, ptr %gep17, i64 32
  %i.l = load <4 x i32>, ptr %i.k, align 1, !tbaa !10, !alias.scope !24
  %i.m = getelementptr inbounds nuw i8, ptr %gep17, i64 64
  %i.n = load <4 x i32>, ptr %i.m, align 1, !tbaa !10, !alias.scope !24
  %i.o = getelementptr inbounds nuw i8, ptr %gep17, i64 96
  %i.p = load i64, ptr %i.o, align 1, !tbaa !10, !alias.scope !24
  %i.q = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %i.r = bitcast <2 x i64> %i.i to <4 x i32>
  %i.s = bitcast <2 x i64> %i.q to <4 x i32>
  %3 = shufflevector <4 x i32> %i.b, <4 x i32> %i.j, <2 x i32> <i32 0, i32 4>
  %4 = bitcast <2 x i32> %3 to <8 x i8>
  %i.t = zext <8 x i8> %4 to <8 x i16>            ; 2 uses
  %5 = shufflevector <4 x i32> %i.d, <4 x i32> %i.l, <2 x i32> <i32 0, i32 4>
  %6 = bitcast <2 x i32> %5 to <8 x i8>
  %i.u = zext <8 x i8> %6 to <8 x i16>            ; 2 uses
  %7 = shufflevector <4 x i32> %i.f, <4 x i32> %i.n, <2 x i32> <i32 0, i32 4>
  %8 = bitcast <2 x i32> %7 to <8 x i8>
  %i.v = zext <8 x i8> %8 to <8 x i16>            ; 2 uses
  %9 = shufflevector <4 x i32> %i.r, <4 x i32> %i.s, <2 x i32> <i32 0, i32 4>
  %10 = bitcast <2 x i32> %9 to <8 x i8>
  %i.w = zext <8 x i8> %10 to <8 x i16>           ; 2 uses
  %i.x = add nuw nsw <8 x i16> %i.v, %i.t         ; 2 uses
  %i.y = add nuw nsw <8 x i16> %i.w, %i.u         ; 2 uses
  %i.z = sub nsw <8 x i16> %i.u, %i.w             ; 2 uses
  %i.aa = sub nsw <8 x i16> %i.t, %i.v            ; 2 uses
  %i.ab = add nuw nsw <8 x i16> %i.y, %i.x        ; 2 uses
  %i.ac = add nsw <8 x i16> %i.z, %i.aa           ; 2 uses
  %i.ad = sub nsw <8 x i16> %i.aa, %i.z           ; 2 uses
  %i.ae = sub nsw <8 x i16> %i.x, %i.y            ; 2 uses
  %i.af = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ag = shufflevector <8 x i16> %i.ad, <8 x i16> %i.ae, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ah = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ai = shufflevector <8 x i16> %i.ad, <8 x i16> %i.ae, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aj = bitcast <8 x i16> %i.af to <4 x i32>    ; 2 uses
  %i.ak = bitcast <8 x i16> %i.ag to <4 x i32>    ; 2 uses
  %i.al = shufflevector <4 x i32> %i.aj, <4 x i32> %i.ak, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.am = bitcast <4 x i32> %i.al to <2 x i64>    ; 2 uses
  %i.an = bitcast <8 x i16> %i.ah to <4 x i32>    ; 2 uses
  %i.ao = bitcast <8 x i16> %i.ai to <4 x i32>    ; 2 uses
  %i.ap = shufflevector <4 x i32> %i.an, <4 x i32> %i.ao, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aq = bitcast <4 x i32> %i.ap to <2 x i64>    ; 2 uses
  %i.ar = shufflevector <4 x i32> %i.aj, <4 x i32> %i.ak, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.as = bitcast <4 x i32> %i.ar to <2 x i64>    ; 2 uses
  %i.at = shufflevector <4 x i32> %i.an, <4 x i32> %i.ao, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.au = bitcast <4 x i32> %i.at to <2 x i64>    ; 2 uses
  %i.av = shufflevector <2 x i64> %i.am, <2 x i64> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.aw = shufflevector <2 x i64> %i.am, <2 x i64> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.ax = shufflevector <2 x i64> %i.as, <2 x i64> %i.au, <2 x i32> <i32 0, i32 2>
  %i.ay = shufflevector <2 x i64> %i.as, <2 x i64> %i.au, <2 x i32> <i32 1, i32 3>
  %i.az = bitcast <2 x i64> %i.av to <8 x i16>    ; 2 uses
  %i.ba = bitcast <2 x i64> %i.ax to <8 x i16>    ; 2 uses
  %i.bb = add <8 x i16> %i.az, %i.ba              ; 2 uses
  %i.bc = bitcast <2 x i64> %i.aw to <8 x i16>    ; 2 uses
  %i.bd = bitcast <2 x i64> %i.ay to <8 x i16>    ; 2 uses
  %i.be = add <8 x i16> %i.bc, %i.bd              ; 2 uses
  %i.bf = sub <8 x i16> %i.bc, %i.bd              ; 2 uses
  %i.bg = sub <8 x i16> %i.az, %i.ba              ; 2 uses
  %i.bh = add <8 x i16> %i.bb, %i.be
  %i.bi = bitcast <8 x i16> %i.bh to <2 x i64>    ; 2 uses
  %i.bj = add <8 x i16> %i.bg, %i.bf
  %i.bk = bitcast <8 x i16> %i.bj to <2 x i64>    ; 2 uses
  %i.bl = sub <8 x i16> %i.bg, %i.bf
  %i.bm = bitcast <8 x i16> %i.bl to <2 x i64>    ; 2 uses
  %i.bn = sub <8 x i16> %i.bb, %i.be
  %i.bo = bitcast <8 x i16> %i.bn to <2 x i64>    ; 2 uses
  %i.bp = shufflevector <2 x i64> %i.bi, <2 x i64> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.bq = shufflevector <2 x i64> %i.bm, <2 x i64> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.br = shufflevector <2 x i64> %i.bi, <2 x i64> %i.bk, <2 x i32> <i32 1, i32 3>
  %i.bs = shufflevector <2 x i64> %i.bm, <2 x i64> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.bt = bitcast <2 x i64> %i.bp to <8 x i16>
  %i.bu = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bt, i1 false)
  %i.bv = bitcast <2 x i64> %i.bq to <8 x i16>
  %i.bw = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bv, i1 false)
  %i.bx = bitcast <2 x i64> %i.br to <8 x i16>
  %i.by = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bx, i1 false)
  %i.bz = bitcast <2 x i64> %i.bs to <8 x i16>
  %i.ca = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bz, i1 false)
  %i.cb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bu, <8 x i16> %.val4.i)
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bw, <8 x i16> %.val35.i)
  %i.cd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.by, <8 x i16> %.val4.i)
  %i.ce = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ca, <8 x i16> %.val35.i)
  %.neg15 = add <4 x i32> %i.cc, %i.cb
  %i.cf = add <4 x i32> %i.cd, %i.ce
  %i.cg = sub <4 x i32> %.neg15, %i.cf
  %i.ch = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cg)
  %i.ci = tail call i32 @llvm.abs.i32(i32 %i.ch, i1 true)
  %i.cj = lshr i32 %i.ci, 5
  %i.ck = add nsw i32 %i.cj, %.118                ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %i.cl = icmp samesign ult i64 %indvars.iv, 12
  br i1 %i.cl, label %bb.b, label %bb.c, !llvm.loop !20

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 128
  %i.cm = icmp samesign ult i64 %indvars.iv23, 384
  br i1 %i.cm, label %.preheader, label %bb.d, !llvm.loop !21

bb.d:                                             ; preds = %bb.c
  ret i32 %i.ck
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
!16 = distinct !{!16, i1 true, !"Disto4x4_SSE41"}
!17 = distinct !{!17, !16, !"Disto4x4_SSE41: argument 2"}
!18 = distinct !{!18, !16, !"Disto4x4_SSE41: argument 0"}
!19 = distinct !{!19, !16, !"Disto4x4_SSE41: argument 1"}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = !{!17}
!23 = !{!18}
!24 = !{!19}
end_hunk_0
