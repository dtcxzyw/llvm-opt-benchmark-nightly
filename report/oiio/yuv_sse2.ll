inline.NumInlined: 103
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ConvertARGBToUV_SSE2:bb.a
  %.02592 = phi ptr [ %2, %.lr.ph ], [ %i.es, %bb.d ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 8 uses
  %i.e = load <16 x i8>, ptr %i.d, align 1, !tbaa !7, !alias.scope !70 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load <16 x i8>, ptr %i.f, align 1, !tbaa !7, !alias.scope !70 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load <16 x i8>, ptr %i.h, align 1, !tbaa !7, !alias.scope !70 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !7, !alias.scope !70 ; 2 uses
  %i.l = shufflevector <16 x i8> %i.e, <16 x i8> %i.g, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.m = bitcast <16 x i8> %i.l to <2 x i64>      ; 2 uses
  %i.n = shufflevector <16 x i8> %i.e, <16 x i8> %i.g, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.o = bitcast <16 x i8> %i.n to <2 x i64>
  %i.p = shufflevector <16 x i8> %i.i, <16 x i8> %i.k, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.q = bitcast <16 x i8> %i.p to <2 x i64>      ; 2 uses
  %i.r = shufflevector <16 x i8> %i.i, <16 x i8> %i.k, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.s = bitcast <16 x i8> %i.r to <2 x i64>
  %i.t = shufflevector <2 x i64> %i.o, <2 x i64> %i.s, <2 x i32> <i32 0, i32 2>
  %i.u = shufflevector <2 x i64> %i.m, <2 x i64> %i.q, <2 x i32> <i32 1, i32 3>
  %i.v = shufflevector <2 x i64> %i.m, <2 x i64> %i.q, <2 x i32> <i32 0, i32 2>
  %i.w = bitcast <2 x i64> %i.t to <16 x i8>      ; 2 uses
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.y = shufflevector <16 x i8> %i.w, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.z = bitcast <2 x i64> %i.u to <16 x i8>      ; 2 uses
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ab = shufflevector <16 x i8> %i.z, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ac = bitcast <2 x i64> %i.v to <16 x i8>     ; 2 uses
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ae = shufflevector <16 x i8> %i.ac, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.af = bitcast <16 x i8> %i.x to <8 x i16>
  %i.ag = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.af, <8 x i16> splat (i16 2))
  %i.ah = bitcast <16 x i8> %i.y to <8 x i16>
  %i.ai = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ah, <8 x i16> splat (i16 2))
  %i.aj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ag, <4 x i32> %i.ai) ; 2 uses
  %i.ak = bitcast <16 x i8> %i.aa to <8 x i16>
  %i.al = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ak, <8 x i16> splat (i16 2))
  %i.am = bitcast <16 x i8> %i.ab to <8 x i16>
  %i.an = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.am, <8 x i16> splat (i16 2))
  %i.ao = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.al, <4 x i32> %i.an) ; 4 uses
  %i.ap = bitcast <16 x i8> %i.ad to <8 x i16>
  %i.aq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ap, <8 x i16> splat (i16 2))
  %i.ar = bitcast <16 x i8> %i.ae to <8 x i16>
  %i.as = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ar, <8 x i16> splat (i16 2))
  %i.at = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aq, <4 x i32> %i.as) ; 2 uses
  %i.au = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ao, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.av = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ao, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aw = shufflevector <8 x i16> %i.ao, <8 x i16> %i.at, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ax = shufflevector <8 x i16> %i.ao, <8 x i16> %i.at, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.au, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.az = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.av, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.ba = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aw, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.bb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ax, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.bc = add <4 x i32> %i.ay, splat (i32 33685504)
  %i.bd = add <4 x i32> %i.bc, %i.ba
  %i.be = add <4 x i32> %i.az, splat (i32 33685504)
  %i.bf = add <4 x i32> %i.be, %i.bb
  %i.bg = ashr <4 x i32> %i.bd, splat (i32 18)
  %i.bh = ashr <4 x i32> %i.bf, splat (i32 18)
  %i.bi = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bg, <4 x i32> %i.bh)
  %i.bj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.au, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.bk = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.av, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.bl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aw, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.bm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ax, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.bn = add <4 x i32> %i.bj, splat (i32 33685504)
  %i.bo = add <4 x i32> %i.bn, %i.bl
  %i.bp = add <4 x i32> %i.bk, splat (i32 33685504)
  %i.bq = add <4 x i32> %i.bp, %i.bm
  %i.br = ashr <4 x i32> %i.bo, splat (i32 18)
  %i.bs = ashr <4 x i32> %i.bq, splat (i32 18)
  %i.bt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.br, <4 x i32> %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bv = load <16 x i8>, ptr %i.bu, align 1, !tbaa !7, !alias.scope !73 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bx = load <16 x i8>, ptr %i.bw, align 1, !tbaa !7, !alias.scope !73 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bz = load <16 x i8>, ptr %i.by, align 1, !tbaa !7, !alias.scope !73 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.cb = load <16 x i8>, ptr %i.ca, align 1, !tbaa !7, !alias.scope !73 ; 2 uses
  %i.cc = shufflevector <16 x i8> %i.bv, <16 x i8> %i.bx, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.cd = bitcast <16 x i8> %i.cc to <2 x i64>    ; 2 uses
  %i.ce = shufflevector <16 x i8> %i.bv, <16 x i8> %i.bx, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cf = bitcast <16 x i8> %i.ce to <2 x i64>
  %i.cg = shufflevector <16 x i8> %i.bz, <16 x i8> %i.cb, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ch = bitcast <16 x i8> %i.cg to <2 x i64>    ; 2 uses
  %i.ci = shufflevector <16 x i8> %i.bz, <16 x i8> %i.cb, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cj = bitcast <16 x i8> %i.ci to <2 x i64>
  %i.ck = shufflevector <2 x i64> %i.cf, <2 x i64> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.cl = shufflevector <2 x i64> %i.cd, <2 x i64> %i.ch, <2 x i32> <i32 1, i32 3>
  %i.cm = shufflevector <2 x i64> %i.cd, <2 x i64> %i.ch, <2 x i32> <i32 0, i32 2>
  %i.cn = bitcast <2 x i64> %i.ck to <16 x i8>    ; 2 uses
  %i.co = shufflevector <16 x i8> %i.cn, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cp = shufflevector <16 x i8> %i.cn, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cq = bitcast <2 x i64> %i.cl to <16 x i8>    ; 2 uses
  %i.cr = shufflevector <16 x i8> %i.cq, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cs = shufflevector <16 x i8> %i.cq, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ct = bitcast <2 x i64> %i.cm to <16 x i8>    ; 2 uses
  %i.cu = shufflevector <16 x i8> %i.ct, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cv = shufflevector <16 x i8> %i.ct, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cw = bitcast <16 x i8> %i.co to <8 x i16>
  %i.cx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cw, <8 x i16> splat (i16 2))
  %i.cy = bitcast <16 x i8> %i.cp to <8 x i16>
  %i.cz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cy, <8 x i16> splat (i16 2))
  %i.da = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cx, <4 x i32> %i.cz) ; 2 uses
  %i.db = bitcast <16 x i8> %i.cr to <8 x i16>
  %i.dc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.db, <8 x i16> splat (i16 2))
  %i.dd = bitcast <16 x i8> %i.cs to <8 x i16>
  %i.de = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dd, <8 x i16> splat (i16 2))
  %i.df = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dc, <4 x i32> %i.de) ; 4 uses
  %i.dg = bitcast <16 x i8> %i.cu to <8 x i16>
  %i.dh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dg, <8 x i16> splat (i16 2))
  %i.di = bitcast <16 x i8> %i.cv to <8 x i16>
  %i.dj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.di, <8 x i16> splat (i16 2))
  %i.dk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dh, <4 x i32> %i.dj) ; 2 uses
  %i.dl = shufflevector <8 x i16> %i.da, <8 x i16> %i.df, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dm = shufflevector <8 x i16> %i.da, <8 x i16> %i.df, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dn = shufflevector <8 x i16> %i.df, <8 x i16> %i.dk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.do = shufflevector <8 x i16> %i.df, <8 x i16> %i.dk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dl, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.dq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dm, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.dr = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dn, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.ds = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.do, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.dt = add <4 x i32> %i.dp, splat (i32 33685504)
  %i.du = add <4 x i32> %i.dt, %i.dr
  %i.dv = add <4 x i32> %i.dq, splat (i32 33685504)
  %i.dw = add <4 x i32> %i.dv, %i.ds
  %i.dx = ashr <4 x i32> %i.du, splat (i32 18)
  %i.dy = ashr <4 x i32> %i.dw, splat (i32 18)
  %i.dz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dx, <4 x i32> %i.dy)
  %i.ea = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dl, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.eb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dm, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.ec = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dn, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.ed = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.do, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.ee = add <4 x i32> %i.ea, splat (i32 33685504)
  %i.ef = add <4 x i32> %i.ee, %i.ec
  %i.eg = add <4 x i32> %i.eb, splat (i32 33685504)
  %i.eh = add <4 x i32> %i.eg, %i.ed
  %i.ei = ashr <4 x i32> %i.ef, splat (i32 18)
  %i.ej = ashr <4 x i32> %i.eh, splat (i32 18)
  %i.ek = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ei, <4 x i32> %i.ej)
  %i.el = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bi, <8 x i16> %i.dz) ; 2 uses
  %i.em = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bt, <8 x i16> %i.ek) ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.en = load <16 x i8>, ptr %.093, align 1, !tbaa !7
  %i.eo = load <16 x i8>, ptr %.02592, align 1, !tbaa !7
  %i.ep = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.el, <16 x i8> %i.en)
  %i.eq = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.em, <16 x i8> %i.eo)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.190.in = phi <16 x i8> [ %i.ep, %bb.c ], [ %i.el, %bb.b ]
  %.1.in = phi <16 x i8> [ %i.eq, %bb.c ], [ %i.em, %bb.b ]
  store <16 x i8> %.190.in, ptr %.093, align 1, !tbaa !7
  store <16 x i8> %.1.in, ptr %.02592, align 1, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.093, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.02592, i64 16 ; 2 uses
  %i.et = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.et, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !76

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.eu = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.026.lcssa = phi i32 [ 0, %bb.a ], [ %i.eu, %._crit_edge.loopexit ] ; 3 uses
  %.025.lcssa = phi ptr [ %2, %bb.a ], [ %i.es, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.er, %._crit_edge.loopexit ]
  %i.ev = icmp slt i32 %.026.lcssa, %3
  br i1 %i.ev, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ew = zext nneg i32 %.026.lcssa to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ew
  %i.ey = sub nsw i32 %3, %.026.lcssa
  tail call void @WebPConvertARGBToUV_C(ptr noundef %i.ex, ptr noundef %.0.lcssa, ptr noundef %.025.lcssa, i32 noundef %i.ey, i32 noundef %4) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ConvertRGB24ToY_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #5 {
bb.a:
  %i.a = alloca [6 x <2 x i64>], align 16         ; 10 uses
  %i.b = and i32 %2, -32
  %i.c = icmp sgt i32 %2, 31
  %indvars.iv.sroa.gep72 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.b

.preheader.loopexit:                              ; preds = %bb.d
  %3 = and i32 %2, 2147483616
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.031.lcssa = phi i32 [ 0, %bb.a ], [ %3, %.preheader.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.dr, %.preheader.loopexit ] ; 5 uses
  %i.i = icmp slt i32 %.031.lcssa, %2
  br i1 %i.i, label %.lr.ph58.preheader, label %._crit_edge

.lr.ph58.preheader:                               ; preds = %.preheader
  %4 = zext nneg i32 %.031.lcssa to i64           ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader
  %i.j = load i8, ptr %.0.lcssa, align 1, !tbaa !7
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !7
  %i.q = zext i8 %i.p to i32
  %i.r = mul nuw nsw i32 %i.k, 16839
  %i.s = mul nuw nsw i32 %i.n, 33059
  %i.t = mul nuw nsw i32 %i.q, 6420
  %i.u = add nuw nsw i32 %i.r, 1081344
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = add nuw nsw i32 %i.v, %i.t
  %i.x = lshr i32 %i.w, 16
  %i.y = trunc nuw i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %4
  store i8 %i.y, ptr %i.z, align 1, !tbaa !7
  %indvars.iv.next68.prol = or disjoint i64 %4, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  br label %.lr.ph58.prol.loopexit

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %indvars.iv65.unr = phi i64 [ %4, %.lr.ph58.preheader ], [ %indvars.iv.next68.prol, %.lr.ph58.prol ]
  %.157.unr = phi ptr [ %.0.lcssa, %.lr.ph58.preheader ], [ %i.aa, %.lr.ph58.prol ]
  %i.ab = add nsw i64 %wide.trip.count, -1
  %i.ac = icmp eq i64 %i.ab, %4
  br i1 %i.ac, label %._crit_edge, label %.lr.ph58

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv60 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next61, %bb.d ] ; 2 uses
  %.054 = phi ptr [ %0, %.lr.ph ], [ %i.dr, %bb.d ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.ad = load <16 x i8>, ptr %.054, align 1, !tbaa !7, !alias.scope !77 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.054, i64 16
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !tbaa !7, !alias.scope !77 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.054, i64 32
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !7, !alias.scope !77 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.054, i64 48
  %i.aj = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7, !alias.scope !77 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.054, i64 64
  %i.al = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7, !alias.scope !77 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.054, i64 80
  %i.an = load <16 x i8>, ptr %i.am, align 1, !tbaa !7, !alias.scope !77 ; 2 uses
  %i.ao = shufflevector <16 x i8> %i.ad, <16 x i8> %i.aj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ap = shufflevector <16 x i8> %i.ad, <16 x i8> %i.aj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aq = shufflevector <16 x i8> %i.af, <16 x i8> %i.al, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ar = shufflevector <16 x i8> %i.af, <16 x i8> %i.al, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.as = shufflevector <16 x i8> %i.ah, <16 x i8> %i.an, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.at = shufflevector <16 x i8> %i.ah, <16 x i8> %i.an, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.au = shufflevector <16 x i8> %i.ao, <16 x i8> %i.ar, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.av = shufflevector <16 x i8> %i.ao, <16 x i8> %i.ar, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aw = shufflevector <16 x i8> %i.ap, <16 x i8> %i.as, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ax = shufflevector <16 x i8> %i.ap, <16 x i8> %i.as, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ay = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.az = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ba = shufflevector <16 x i8> %i.au, <16 x i8> %i.ax, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bb = shufflevector <16 x i8> %i.au, <16 x i8> %i.ax, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bc = shufflevector <16 x i8> %i.av, <16 x i8> %i.ay, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bd = shufflevector <16 x i8> %i.av, <16 x i8> %i.ay, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.be = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bf = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bg = shufflevector <16 x i8> %i.ba, <16 x i8> %i.bd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bh = shufflevector <16 x i8> %i.ba, <16 x i8> %i.bd, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bi = shufflevector <16 x i8> %i.bb, <16 x i8> %i.be, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bj = shufflevector <16 x i8> %i.bb, <16 x i8> %i.be, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bk = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bl = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bf, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bm = shufflevector <16 x i8> %i.bg, <16 x i8> %i.bj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bm, ptr %i.a, align 16, !tbaa !7, !noalias !77
  %i.bn = shufflevector <16 x i8> %i.bg, <16 x i8> %i.bj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bn, ptr %i.d, align 16, !tbaa !7, !noalias !77
  %i.bo = shufflevector <16 x i8> %i.bh, <16 x i8> %i.bk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bo, ptr %i.e, align 16, !tbaa !7, !noalias !77
  %i.bp = shufflevector <16 x i8> %i.bh, <16 x i8> %i.bk, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bp, ptr %i.f, align 16, !tbaa !7, !noalias !77
  %i.bq = shufflevector <16 x i8> %i.bi, <16 x i8> %i.bl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bq, ptr %i.g, align 16, !tbaa !7, !noalias !77
  %i.br = shufflevector <16 x i8> %i.bi, <16 x i8> %i.bl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.br, ptr %i.h, align 16, !tbaa !7, !noalias !77
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv60.a = phi i64 [ %indvars.iv60, %bb.b ], [ %indvars.iv.next61.a, %bb.c ] ; 2 uses
  %i.bs = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %indvars.iv.sroa.phi = phi ptr [ %i.a, %bb.b ], [ %indvars.iv.sroa.gep72, %bb.c ] ; 3 uses
  %i.bt = load <16 x i8>, ptr %indvars.iv.sroa.phi, align 16, !tbaa !7 ; 2 uses
  %i.bu = shufflevector <16 x i8> %i.bt, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bv = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 32
  %i.bw = load <16 x i8>, ptr %i.bv, align 16, !tbaa !7 ; 2 uses
  %i.bx = shufflevector <16 x i8> %i.bw, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.by = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 64
  %i.bz = load <16 x i8>, ptr %i.by, align 16, !tbaa !7 ; 2 uses
  %i.ca = shufflevector <16 x i8> %i.bz, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cb = bitcast <16 x i8> %i.bu to <8 x i16>    ; 2 uses
  %i.cc = bitcast <16 x i8> %i.bx to <8 x i16>    ; 4 uses
  %i.cd = shufflevector <8 x i16> %i.cb, <8 x i16> %i.cc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ce = shufflevector <8 x i16> %i.cb, <8 x i16> %i.cc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cf = bitcast <16 x i8> %i.ca to <8 x i16>    ; 2 uses
  %i.cg = shufflevector <8 x i16> %i.cc, <8 x i16> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ch = shufflevector <8 x i16> %i.cc, <8 x i16> %i.cf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ci = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cd, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ce, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ck = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cg, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ch, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.cm = add <4 x i32> %i.ci, splat (i32 1081344)
  %i.cn = add <4 x i32> %i.cm, %i.ck
  %i.co = add <4 x i32> %i.cj, splat (i32 1081344)
  %i.cp = add <4 x i32> %i.co, %i.cl
  %i.cq = ashr <4 x i32> %i.cn, splat (i32 16)
  %i.cr = ashr <4 x i32> %i.cp, splat (i32 16)
  %i.cs = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cq, <4 x i32> %i.cr)
  %i.ct = shufflevector <16 x i8> %i.bt, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cu = shufflevector <16 x i8> %i.bw, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cv = shufflevector <16 x i8> %i.bz, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cw = bitcast <16 x i8> %i.ct to <8 x i16>    ; 2 uses
  %i.cx = bitcast <16 x i8> %i.cu to <8 x i16>    ; 4 uses
  %i.cy = shufflevector <8 x i16> %i.cw, <8 x i16> %i.cx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cz = shufflevector <8 x i16> %i.cw, <8 x i16> %i.cx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.da = bitcast <16 x i8> %i.cv to <8 x i16>    ; 2 uses
  %i.db = shufflevector <8 x i16> %i.cx, <8 x i16> %i.da, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dc = shufflevector <8 x i16> %i.cx, <8 x i16> %i.da, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cy, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.de = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cz, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.df = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.db, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.dg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dc, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.dh = add <4 x i32> %i.dd, splat (i32 1081344)
  %i.di = add <4 x i32> %i.dh, %i.df
  %i.dj = add <4 x i32> %i.de, splat (i32 1081344)
  %i.dk = add <4 x i32> %i.dj, %i.dg
  %i.dl = ashr <4 x i32> %i.di, splat (i32 16)
  %i.dm = ashr <4 x i32> %i.dk, splat (i32 16)
  %i.dn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dl, <4 x i32> %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv60.a
  %i.dp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cs, <8 x i16> %i.dn)
  store <16 x i8> %i.dp, ptr %i.do, align 1, !tbaa !7
  %indvars.iv.next61.a = add nuw nsw i64 %indvars.iv60.a, 16 ; 2 uses
  br i1 %i.bs, label %bb.c, label %bb.d, !llvm.loop !80

bb.d:                                             ; preds = %bb.c
  %i.dq = trunc nuw nsw i64 %indvars.iv.next61.a to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.dr = getelementptr inbounds nuw i8, ptr %.054, i64 96 ; 2 uses
  %i.ds = icmp sgt i32 %i.b, %i.dq
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 32
  br i1 %i.ds, label %bb.b, label %.preheader.loopexit, !llvm.loop !81

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.1, %.lr.ph58 ], [ %indvars.iv65.unr, %.lr.ph58.prol.loopexit ] ; 3 uses
  %.157 = phi ptr [ %i.fd, %.lr.ph58 ], [ %.157.unr, %.lr.ph58.prol.loopexit ] ; 7 uses
  %i.dt = load i8, ptr %.157, align 1, !tbaa !7
  %i.du = zext i8 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %.157, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !7
  %i.dx = zext i8 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %.157, i64 2
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !7
  %i.ea = zext i8 %i.dz to i32
  %i.eb = mul nuw nsw i32 %i.du, 16839
  %i.ec = mul nuw nsw i32 %i.dx, 33059
  %i.ed = mul nuw nsw i32 %i.ea, 6420
  %i.ee = add nuw nsw i32 %i.eb, 1081344
  %i.ef = add nuw nsw i32 %i.ee, %i.ec
  %i.eg = add nuw nsw i32 %i.ef, %i.ed
  %i.eh = lshr i32 %i.eg, 16
  %i.ei = trunc nuw i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv65
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !7
  %i.ek = getelementptr inbounds nuw i8, ptr %.157, i64 3
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !7
  %i.em = zext i8 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %.157, i64 4
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !7
  %i.ep = zext i8 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %.157, i64 5
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !7
  %i.es = zext i8 %i.er to i32
  %i.et = mul nuw nsw i32 %i.em, 16839
  %i.eu = mul nuw nsw i32 %i.ep, 33059
  %i.ev = mul nuw nsw i32 %i.es, 6420
  %i.ew = add nuw nsw i32 %i.et, 1081344
  %i.ex = add nuw nsw i32 %i.ew, %i.eu
  %i.ey = add nuw nsw i32 %i.ex, %i.ev
  %i.ez = lshr i32 %i.ey, 16
  %i.fa = trunc nuw i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv65
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store i8 %i.fa, ptr %i.fc, align 1, !tbaa !7
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.157, i64 6
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next66.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph58, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ConvertBGR24ToY_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #5 {
bb.a:
  %i.a = alloca [6 x <2 x i64>], align 16         ; 10 uses
  %i.b = and i32 %2, -32
  %i.c = icmp sgt i32 %2, 31
  %indvars.iv.sroa.gep72 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.b

.preheader.loopexit:                              ; preds = %bb.d
  %3 = and i32 %2, 2147483616
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.031.lcssa = phi i32 [ 0, %bb.a ], [ %3, %.preheader.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.dr, %.preheader.loopexit ] ; 5 uses
  %i.i = icmp slt i32 %.031.lcssa, %2
  br i1 %i.i, label %.lr.ph58.preheader, label %._crit_edge

.lr.ph58.preheader:                               ; preds = %.preheader
  %4 = zext nneg i32 %.031.lcssa to i64           ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !7
  %i.o = zext i8 %i.n to i32
  %i.p = load i8, ptr %.0.lcssa, align 1, !tbaa !7
  %i.q = zext i8 %i.p to i32
  %i.r = mul nuw nsw i32 %i.l, 16839
  %i.s = mul nuw nsw i32 %i.o, 33059
  %i.t = mul nuw nsw i32 %i.q, 6420
  %i.u = add nuw nsw i32 %i.r, 1081344
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = add nuw nsw i32 %i.v, %i.t
  %i.x = lshr i32 %i.w, 16
  %i.y = trunc nuw i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %4
  store i8 %i.y, ptr %i.z, align 1, !tbaa !7
  %indvars.iv.next68.prol = or disjoint i64 %4, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  br label %.lr.ph58.prol.loopexit

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %indvars.iv65.unr = phi i64 [ %4, %.lr.ph58.preheader ], [ %indvars.iv.next68.prol, %.lr.ph58.prol ]
  %.157.unr = phi ptr [ %.0.lcssa, %.lr.ph58.preheader ], [ %i.aa, %.lr.ph58.prol ]
  %i.ab = add nsw i64 %wide.trip.count, -1
  %i.ac = icmp eq i64 %i.ab, %4
  br i1 %i.ac, label %._crit_edge, label %.lr.ph58

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv60 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next61, %bb.d ] ; 2 uses
  %.054 = phi ptr [ %0, %.lr.ph ], [ %i.dr, %bb.d ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.ad = load <16 x i8>, ptr %.054, align 1, !tbaa !7, !alias.scope !83 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.054, i64 16
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !tbaa !7, !alias.scope !83 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.054, i64 32
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !7, !alias.scope !83 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.054, i64 48
  %i.aj = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7, !alias.scope !83 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.054, i64 64
  %i.al = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7, !alias.scope !83 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.054, i64 80
  %i.an = load <16 x i8>, ptr %i.am, align 1, !tbaa !7, !alias.scope !83 ; 2 uses
  %i.ao = shufflevector <16 x i8> %i.ad, <16 x i8> %i.aj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ap = shufflevector <16 x i8> %i.ad, <16 x i8> %i.aj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aq = shufflevector <16 x i8> %i.af, <16 x i8> %i.al, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ar = shufflevector <16 x i8> %i.af, <16 x i8> %i.al, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.as = shufflevector <16 x i8> %i.ah, <16 x i8> %i.an, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.at = shufflevector <16 x i8> %i.ah, <16 x i8> %i.an, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.au = shufflevector <16 x i8> %i.ao, <16 x i8> %i.ar, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.av = shufflevector <16 x i8> %i.ao, <16 x i8> %i.ar, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aw = shufflevector <16 x i8> %i.ap, <16 x i8> %i.as, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ax = shufflevector <16 x i8> %i.ap, <16 x i8> %i.as, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ay = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.az = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ba = shufflevector <16 x i8> %i.au, <16 x i8> %i.ax, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bb = shufflevector <16 x i8> %i.au, <16 x i8> %i.ax, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bc = shufflevector <16 x i8> %i.av, <16 x i8> %i.ay, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bd = shufflevector <16 x i8> %i.av, <16 x i8> %i.ay, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.be = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bf = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bg = shufflevector <16 x i8> %i.ba, <16 x i8> %i.bd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bh = shufflevector <16 x i8> %i.ba, <16 x i8> %i.bd, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bi = shufflevector <16 x i8> %i.bb, <16 x i8> %i.be, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bj = shufflevector <16 x i8> %i.bb, <16 x i8> %i.be, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bk = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bl = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bf, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bm = shufflevector <16 x i8> %i.bg, <16 x i8> %i.bj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bm, ptr %i.a, align 16, !tbaa !7, !noalias !83
  %i.bn = shufflevector <16 x i8> %i.bg, <16 x i8> %i.bj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bn, ptr %i.d, align 16, !tbaa !7, !noalias !83
  %i.bo = shufflevector <16 x i8> %i.bh, <16 x i8> %i.bk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bo, ptr %i.e, align 16, !tbaa !7, !noalias !83
  %i.bp = shufflevector <16 x i8> %i.bh, <16 x i8> %i.bk, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bp, ptr %i.f, align 16, !tbaa !7, !noalias !83
  %i.bq = shufflevector <16 x i8> %i.bi, <16 x i8> %i.bl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bq, ptr %i.g, align 16, !tbaa !7, !noalias !83
  %i.br = shufflevector <16 x i8> %i.bi, <16 x i8> %i.bl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.br, ptr %i.h, align 16, !tbaa !7, !noalias !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv60.a = phi i64 [ %indvars.iv60, %bb.b ], [ %indvars.iv.next61.a, %bb.c ] ; 2 uses
  %i.bs = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %indvars.iv.sroa.phi = phi ptr [ %i.a, %bb.b ], [ %indvars.iv.sroa.gep72, %bb.c ] ; 3 uses
  %i.bt = load <16 x i8>, ptr %indvars.iv.sroa.phi, align 16, !tbaa !7 ; 2 uses
  %i.bu = shufflevector <16 x i8> %i.bt, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bv = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 32
  %i.bw = load <16 x i8>, ptr %i.bv, align 16, !tbaa !7 ; 2 uses
  %i.bx = shufflevector <16 x i8> %i.bw, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.by = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 64
  %i.bz = load <16 x i8>, ptr %i.by, align 16, !tbaa !7 ; 2 uses
  %i.ca = shufflevector <16 x i8> %i.bz, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cb = bitcast <16 x i8> %i.ca to <8 x i16>    ; 2 uses
  %i.cc = bitcast <16 x i8> %i.bx to <8 x i16>    ; 4 uses
  %i.cd = shufflevector <8 x i16> %i.cb, <8 x i16> %i.cc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ce = shufflevector <8 x i16> %i.cb, <8 x i16> %i.cc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cf = bitcast <16 x i8> %i.bu to <8 x i16>    ; 2 uses
  %i.cg = shufflevector <8 x i16> %i.cc, <8 x i16> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ch = shufflevector <8 x i16> %i.cc, <8 x i16> %i.cf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ci = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cd, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ce, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ck = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cg, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ch, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.cm = add <4 x i32> %i.ci, splat (i32 1081344)
  %i.cn = add <4 x i32> %i.cm, %i.ck
  %i.co = add <4 x i32> %i.cj, splat (i32 1081344)
  %i.cp = add <4 x i32> %i.co, %i.cl
  %i.cq = ashr <4 x i32> %i.cn, splat (i32 16)
  %i.cr = ashr <4 x i32> %i.cp, splat (i32 16)
  %i.cs = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cq, <4 x i32> %i.cr)
  %i.ct = shufflevector <16 x i8> %i.bt, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cu = shufflevector <16 x i8> %i.bw, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cv = shufflevector <16 x i8> %i.bz, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cw = bitcast <16 x i8> %i.cv to <8 x i16>    ; 2 uses
  %i.cx = bitcast <16 x i8> %i.cu to <8 x i16>    ; 4 uses
  %i.cy = shufflevector <8 x i16> %i.cw, <8 x i16> %i.cx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cz = shufflevector <8 x i16> %i.cw, <8 x i16> %i.cx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.da = bitcast <16 x i8> %i.ct to <8 x i16>    ; 2 uses
  %i.db = shufflevector <8 x i16> %i.cx, <8 x i16> %i.da, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dc = shufflevector <8 x i16> %i.cx, <8 x i16> %i.da, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cy, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.de = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cz, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.df = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.db, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.dg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dc, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.dh = add <4 x i32> %i.dd, splat (i32 1081344)
  %i.di = add <4 x i32> %i.dh, %i.df
  %i.dj = add <4 x i32> %i.de, splat (i32 1081344)
  %i.dk = add <4 x i32> %i.dj, %i.dg
  %i.dl = ashr <4 x i32> %i.di, splat (i32 16)
  %i.dm = ashr <4 x i32> %i.dk, splat (i32 16)
  %i.dn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dl, <4 x i32> %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv60.a
  %i.dp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cs, <8 x i16> %i.dn)
  store <16 x i8> %i.dp, ptr %i.do, align 1, !tbaa !7
  %indvars.iv.next61.a = add nuw nsw i64 %indvars.iv60.a, 16 ; 2 uses
  br i1 %i.bs, label %bb.c, label %bb.d, !llvm.loop !86

bb.d:                                             ; preds = %bb.c
  %i.dq = trunc nuw nsw i64 %indvars.iv.next61.a to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.dr = getelementptr inbounds nuw i8, ptr %.054, i64 96 ; 2 uses
  %i.ds = icmp sgt i32 %i.b, %i.dq
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 32
  br i1 %i.ds, label %bb.b, label %.preheader.loopexit, !llvm.loop !87

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.1, %.lr.ph58 ], [ %indvars.iv65.unr, %.lr.ph58.prol.loopexit ] ; 3 uses
  %.157 = phi ptr [ %i.fd, %.lr.ph58 ], [ %.157.unr, %.lr.ph58.prol.loopexit ] ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.157, i64 2
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !7
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %.157, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !7
  %i.dy = zext i8 %i.dx to i32
  %i.dz = load i8, ptr %.157, align 1, !tbaa !7
  %i.ea = zext i8 %i.dz to i32
  %i.eb = mul nuw nsw i32 %i.dv, 16839
  %i.ec = mul nuw nsw i32 %i.dy, 33059
  %i.ed = mul nuw nsw i32 %i.ea, 6420
  %i.ee = add nuw nsw i32 %i.eb, 1081344
  %i.ef = add nuw nsw i32 %i.ee, %i.ec
  %i.eg = add nuw nsw i32 %i.ef, %i.ed
  %i.eh = lshr i32 %i.eg, 16
  %i.ei = trunc nuw i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv65
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !7
  %i.ek = getelementptr inbounds nuw i8, ptr %.157, i64 3
  %i.el = getelementptr inbounds nuw i8, ptr %.157, i64 5
  %i.em = load i8, ptr %i.el, align 1, !tbaa !7
  %i.en = zext i8 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %.157, i64 4
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !7
  %i.eq = zext i8 %i.ep to i32
  %i.er = load i8, ptr %i.ek, align 1, !tbaa !7
  %i.es = zext i8 %i.er to i32
  %i.et = mul nuw nsw i32 %i.en, 16839
  %i.eu = mul nuw nsw i32 %i.eq, 33059
  %i.ev = mul nuw nsw i32 %i.es, 6420
  %i.ew = add nuw nsw i32 %i.et, 1081344
  %i.ex = add nuw nsw i32 %i.ew, %i.eu
  %i.ey = add nuw nsw i32 %i.ex, %i.ev
  %i.ez = lshr i32 %i.ey, 16
  %i.fa = trunc nuw i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv65
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store i8 %i.fa, ptr %i.fc, align 1, !tbaa !7
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.157, i64 6
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next66.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph58, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertRGBA32ToUV_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = and i32 %3, -16                          ; 2 uses
  %i.b = shl nsw i32 %i.a, 2
  %i.c = sext i32 %i.b to i64
  %.idx = shl nsw i64 %i.c, 1
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.e = icmp sgt i32 %3, 15
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.046 = phi ptr [ %i.da, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %.01845 = phi ptr [ %i.cy, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.01944 = phi ptr [ %i.cz, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.f = load <8 x i16>, ptr %.046, align 1, !tbaa !7, !alias.scope !89 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.046, i64 16
  %i.h = load <8 x i16>, ptr %i.g, align 1, !tbaa !7, !alias.scope !89 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.046, i64 32
  %i.j = load <8 x i16>, ptr %i.i, align 1, !tbaa !7, !alias.scope !89 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.046, i64 48
  %i.l = load <8 x i16>, ptr %i.k, align 1, !tbaa !7, !alias.scope !89 ; 2 uses
  %i.m = shufflevector <8 x i16> %i.f, <8 x i16> %i.h, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.n = bitcast <8 x i16> %i.m to <2 x i64>      ; 2 uses
  %i.o = shufflevector <8 x i16> %i.f, <8 x i16> %i.h, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.p = bitcast <8 x i16> %i.o to <2 x i64>
  %i.q = shufflevector <8 x i16> %i.j, <8 x i16> %i.l, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.r = bitcast <8 x i16> %i.q to <2 x i64>      ; 2 uses
  %i.s = shufflevector <8 x i16> %i.j, <8 x i16> %i.l, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.t = bitcast <8 x i16> %i.s to <2 x i64>
  %i.u = shufflevector <2 x i64> %i.n, <2 x i64> %i.r, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <2 x i64> %i.n, <2 x i64> %i.r, <2 x i32> <i32 1, i32 3>
  %i.w = shufflevector <2 x i64> %i.p, <2 x i64> %i.t, <2 x i32> <i32 0, i32 2>
  %i.x = bitcast <2 x i64> %i.u to <8 x i16>      ; 2 uses
  %i.y = bitcast <2 x i64> %i.v to <8 x i16>      ; 4 uses
  %i.z = shufflevector <8 x i16> %i.x, <8 x i16> %i.y, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.aa = shufflevector <8 x i16> %i.x, <8 x i16> %i.y, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ab = bitcast <2 x i64> %i.w to <8 x i16>     ; 2 uses
  %i.ac = shufflevector <8 x i16> %i.y, <8 x i16> %i.ab, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ad = shufflevector <8 x i16> %i.y, <8 x i16> %i.ab, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ae = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.z, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.af = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aa, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.ag = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ac, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.ah = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ad, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.ai = add <4 x i32> %i.ae, splat (i32 33685504)
  %i.aj = add <4 x i32> %i.ai, %i.ag
  %i.ak = add <4 x i32> %i.af, splat (i32 33685504)
  %i.al = add <4 x i32> %i.ak, %i.ah
  %i.am = ashr <4 x i32> %i.aj, splat (i32 18)
  %i.an = ashr <4 x i32> %i.al, splat (i32 18)
  %i.ao = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.am, <4 x i32> %i.an)
  %i.ap = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.z, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.aq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aa, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.ar = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ac, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.as = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ad, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.at = add <4 x i32> %i.ap, splat (i32 33685504)
  %i.au = add <4 x i32> %i.at, %i.ar
  %i.av = add <4 x i32> %i.aq, splat (i32 33685504)
  %i.aw = add <4 x i32> %i.av, %i.as
  %i.ax = ashr <4 x i32> %i.au, splat (i32 18)
  %i.ay = ashr <4 x i32> %i.aw, splat (i32 18)
  %i.az = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ax, <4 x i32> %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %.046, i64 64
  %i.bb = load <8 x i16>, ptr %i.ba, align 1, !tbaa !7, !alias.scope !92 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.046, i64 80
  %i.bd = load <8 x i16>, ptr %i.bc, align 1, !tbaa !7, !alias.scope !92 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.046, i64 96
  %i.bf = load <8 x i16>, ptr %i.be, align 1, !tbaa !7, !alias.scope !92 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.046, i64 112
  %i.bh = load <8 x i16>, ptr %i.bg, align 1, !tbaa !7, !alias.scope !92 ; 2 uses
  %i.bi = shufflevector <8 x i16> %i.bb, <8 x i16> %i.bd, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.bj = bitcast <8 x i16> %i.bi to <2 x i64>    ; 2 uses
  %i.bk = shufflevector <8 x i16> %i.bb, <8 x i16> %i.bd, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bl = bitcast <8 x i16> %i.bk to <2 x i64>
  %i.bm = shufflevector <8 x i16> %i.bf, <8 x i16> %i.bh, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.bn = bitcast <8 x i16> %i.bm to <2 x i64>    ; 2 uses
  %i.bo = shufflevector <8 x i16> %i.bf, <8 x i16> %i.bh, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = bitcast <8 x i16> %i.bo to <2 x i64>
  %i.bq = shufflevector <2 x i64> %i.bj, <2 x i64> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.br = shufflevector <2 x i64> %i.bj, <2 x i64> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.bs = shufflevector <2 x i64> %i.bl, <2 x i64> %i.bp, <2 x i32> <i32 0, i32 2>
  %i.bt = bitcast <2 x i64> %i.bq to <8 x i16>    ; 2 uses
  %i.bu = bitcast <2 x i64> %i.br to <8 x i16>    ; 4 uses
  %i.bv = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.bw = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bx = bitcast <2 x i64> %i.bs to <8 x i16>    ; 2 uses
  %i.by = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.bz = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ca = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bv, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.cb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bw, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.by, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.cd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bz, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.ce = add <4 x i32> %i.ca, splat (i32 33685504)
  %i.cf = add <4 x i32> %i.ce, %i.cc
  %i.cg = add <4 x i32> %i.cb, splat (i32 33685504)
  %i.ch = add <4 x i32> %i.cg, %i.cd
  %i.ci = ashr <4 x i32> %i.cf, splat (i32 18)
  %i.cj = ashr <4 x i32> %i.ch, splat (i32 18)
  %i.ck = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ci, <4 x i32> %i.cj)
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bv, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.cm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bw, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.by, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.co = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bz, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.cp = add <4 x i32> %i.cl, splat (i32 33685504)
  %i.cq = add <4 x i32> %i.cp, %i.cn
  %i.cr = add <4 x i32> %i.cm, splat (i32 33685504)
  %i.cs = add <4 x i32> %i.cr, %i.co
  %i.ct = ashr <4 x i32> %i.cq, splat (i32 18)
  %i.cu = ashr <4 x i32> %i.cs, splat (i32 18)
  %i.cv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ct, <4 x i32> %i.cu)
  %i.cw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ao, <8 x i16> %i.ck)
  store <16 x i8> %i.cw, ptr %.01845, align 1, !tbaa !7
  %i.cx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.az, <8 x i16> %i.cv)
  store <16 x i8> %i.cx, ptr %.01944, align 1, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %.01845, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.01944, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.046, i64 128 ; 3 uses
  %i.db = icmp ult ptr %i.da, %i.d
  br i1 %i.db, label %.lr.ph, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.019.lcssa = phi ptr [ %2, %bb.a ], [ %i.cz, %.lr.ph ]
  %.018.lcssa = phi ptr [ %1, %bb.a ], [ %i.cy, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.da, %.lr.ph ]
  %.not = icmp eq i32 %i.a, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.dc = and i32 %3, 15
  tail call void @WebPConvertRGBA32ToUV_C(ptr noundef %.0.lcssa, ptr noundef %.018.lcssa, ptr noundef %.019.lcssa, i32 noundef %i.dc) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16>, <8 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16>, <8 x i16>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.usub.sat.v8i16(<8 x i16>, <8 x i16>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #6

declare void @WebPConvertARGBToUV_C(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8>, <16 x i8>) #6

declare void @WebPConvertRGBA32ToUV_C(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9}
!9 = distinct !{!9, !10, !"PackAndStore4_SSE2: argument 0"}
!10 = distinct !{!10, !"PackAndStore4_SSE2"}
!11 = distinct !{!11, !12}
end_hunk_0
