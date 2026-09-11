Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/yuv_sse2?download=true
inline.NumInlined: 109
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ConvertARGBToUV_SSE2
define internal void @ConvertARGBToUV_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i32 noundef %3, i32 noundef %4) #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 31
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = and i32 %3, 2147483616
  %.not = icmp eq i32 %4, 0
  %i.c = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.090 = phi ptr [ %1, %.lr.ph ], [ %i.er, %bb.d ] ; 3 uses
  %.02589 = phi ptr [ %2, %.lr.ph ], [ %i.es, %bb.d ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 8 uses
  %i.e = load <16 x i8>, ptr %i.d, align 1, !tbaa !9, !alias.scope !78 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load <16 x i8>, ptr %i.f, align 1, !tbaa !9, !alias.scope !78 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load <16 x i8>, ptr %i.h, align 1, !tbaa !9, !alias.scope !78 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !9, !alias.scope !78 ; 2 uses
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
  %i.bv = load <16 x i8>, ptr %i.bu, align 1, !tbaa !9, !alias.scope !79 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bx = load <16 x i8>, ptr %i.bw, align 1, !tbaa !9, !alias.scope !79 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bz = load <16 x i8>, ptr %i.by, align 1, !tbaa !9, !alias.scope !79 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.cb = load <16 x i8>, ptr %i.ca, align 1, !tbaa !9, !alias.scope !79 ; 2 uses
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
  %i.en = load <16 x i8>, ptr %.090, align 1, !tbaa !9
  %i.eo = load <16 x i8>, ptr %.02589, align 1, !tbaa !9
  %i.ep = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.el, <16 x i8> %i.en)
  %i.eq = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.em, <16 x i8> %i.eo)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.087.in = phi <16 x i8> [ %i.ep, %bb.c ], [ %i.el, %bb.b ]
  %.086.in = phi <16 x i8> [ %i.eq, %bb.c ], [ %i.em, %bb.b ]
  store <16 x i8> %.087.in, ptr %.090, align 1, !tbaa !9
  store <16 x i8> %.086.in, ptr %.02589, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.090, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.02589, i64 16 ; 2 uses
  %i.et = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.et, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !77

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
  %i.ey = sub nuw nsw i32 %3, %.026.lcssa
  tail call void @WebPConvertARGBToUV_C(ptr noundef %i.ex, ptr noundef %.0.lcssa, ptr noundef %.025.lcssa, i32 noundef %i.ey, i32 noundef %4) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ConvertRGBToY_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = alloca [6 x <2 x i64>], align 16         ; 15 uses
  %i.b = and i32 %2, -32                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = icmp eq i32 %3, 3
  %indvars.iv.i.sroa.gep24 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.d = icmp sgt i32 %2, 31                      ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader41

.preheader41:                                     ; preds = %bb.a
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader41
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  br i1 %i.d, label %.lr.ph48, label %.loopexit

.lr.ph48:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph48, %ConvertRGBToYHelper_SSE2.exit
  %.047 = phi ptr [ %0, %.lr.ph48 ], [ %i.cv, %ConvertRGBToYHelper_SSE2.exit ] ; 7 uses
  %.03746 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next42.i, %ConvertRGBToYHelper_SSE2.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.i = load <16 x i8>, ptr %.047, align 1, !tbaa !9, !alias.scope !91 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.047, i64 16
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !9, !alias.scope !91 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.047, i64 32
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !9, !alias.scope !91 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.047, i64 48
  %i.o = load <16 x i8>, ptr %i.n, align 1, !tbaa !9, !alias.scope !91 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.047, i64 64
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !9, !alias.scope !91 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.047, i64 80
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !9, !alias.scope !91 ; 2 uses
  %i.t = shufflevector <16 x i8> %i.i, <16 x i8> %i.o, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.u = shufflevector <16 x i8> %i.i, <16 x i8> %i.o, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.v = shufflevector <16 x i8> %i.k, <16 x i8> %i.q, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.w = shufflevector <16 x i8> %i.k, <16 x i8> %i.q, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.x = shufflevector <16 x i8> %i.m, <16 x i8> %i.s, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.y = shufflevector <16 x i8> %i.m, <16 x i8> %i.s, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.z = shufflevector <16 x i8> %i.t, <16 x i8> %i.w, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.aa = shufflevector <16 x i8> %i.t, <16 x i8> %i.w, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ab = shufflevector <16 x i8> %i.u, <16 x i8> %i.x, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ac = shufflevector <16 x i8> %i.u, <16 x i8> %i.x, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ad = shufflevector <16 x i8> %i.v, <16 x i8> %i.y, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ae = shufflevector <16 x i8> %i.v, <16 x i8> %i.y, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.af = shufflevector <16 x i8> %i.z, <16 x i8> %i.ac, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ag = shufflevector <16 x i8> %i.z, <16 x i8> %i.ac, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ad, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ai = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ad, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aj = shufflevector <16 x i8> %i.ab, <16 x i8> %i.ae, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ak = shufflevector <16 x i8> %i.ab, <16 x i8> %i.ae, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.al = shufflevector <16 x i8> %i.af, <16 x i8> %i.ai, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.am = shufflevector <16 x i8> %i.af, <16 x i8> %i.ai, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.an = shufflevector <16 x i8> %i.ag, <16 x i8> %i.aj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ao = shufflevector <16 x i8> %i.ag, <16 x i8> %i.aj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ap = shufflevector <16 x i8> %i.ah, <16 x i8> %i.ak, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.aq = shufflevector <16 x i8> %i.ah, <16 x i8> %i.ak, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ar = shufflevector <16 x i8> %i.al, <16 x i8> %i.ao, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ar, ptr %i.a, align 16, !tbaa !9, !noalias !91
  %i.as = shufflevector <16 x i8> %i.al, <16 x i8> %i.ao, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.as, ptr %indvars.iv.i.sroa.gep24, align 16, !tbaa !9, !noalias !91
  %i.at = shufflevector <16 x i8> %i.am, <16 x i8> %i.ap, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.at, ptr %i.g, align 16, !tbaa !9, !noalias !91
  %i.au = shufflevector <16 x i8> %i.am, <16 x i8> %i.ap, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.au, ptr %i.h, align 16, !tbaa !9, !noalias !91
  %i.av = shufflevector <16 x i8> %i.an, <16 x i8> %i.aq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.av, ptr %6, align 16, !tbaa !9, !noalias !91
  %i.aw = shufflevector <16 x i8> %i.an, <16 x i8> %i.aq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.aw, ptr %7, align 16, !tbaa !9, !noalias !91
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv41.i = phi i64 [ %.03746, %bb.b ], [ %indvars.iv.next42.i, %bb.c ] ; 2 uses
  %i.ax = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %indvars.iv.i.sroa.phi = phi ptr [ %i.a, %bb.b ], [ %indvars.iv.i.sroa.gep24, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.ay = load <16 x i8>, ptr %indvars.iv.i.sroa.phi, align 16, !tbaa !9, !noalias !92 ; 2 uses
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ba = getelementptr inbounds nuw i8, ptr %indvars.iv.i.sroa.phi, i64 32
  %i.bb = load <16 x i8>, ptr %i.ba, align 16, !tbaa !9, !noalias !92 ; 2 uses
  %i.bc = shufflevector <16 x i8> %i.bb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %gep47.i = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv.i
  %i.bd = load <16 x i8>, ptr %gep47.i, align 16, !tbaa !9, !noalias !92 ; 2 uses
  %i.be = shufflevector <16 x i8> %i.bd, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bf = bitcast <16 x i8> %i.az to <8 x i16>    ; 2 uses
  %i.bg = bitcast <16 x i8> %i.bc to <8 x i16>    ; 4 uses
  %i.bh = shufflevector <8 x i16> %i.bf, <8 x i16> %i.bg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bi = shufflevector <8 x i16> %i.bf, <8 x i16> %i.bg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bj = bitcast <16 x i8> %i.be to <8 x i16>    ; 2 uses
  %i.bk = shufflevector <8 x i16> %i.bg, <8 x i16> %i.bj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bl = shufflevector <8 x i16> %i.bg, <8 x i16> %i.bj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bh, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.bn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bi, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.bo = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bk, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.bp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bl, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.bq = add <4 x i32> %i.bm, splat (i32 1081344)
  %i.br = add <4 x i32> %i.bq, %i.bo
  %i.bs = add <4 x i32> %i.bn, splat (i32 1081344)
  %i.bt = add <4 x i32> %i.bs, %i.bp
  %i.bu = ashr <4 x i32> %i.br, splat (i32 16)
  %i.bv = ashr <4 x i32> %i.bt, splat (i32 16)
  %i.bw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bu, <4 x i32> %i.bv)
  %i.bx = shufflevector <16 x i8> %i.ay, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.by = shufflevector <16 x i8> %i.bb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bz = shufflevector <16 x i8> %i.bd, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ca = bitcast <16 x i8> %i.bx to <8 x i16>    ; 2 uses
  %i.cb = bitcast <16 x i8> %i.by to <8 x i16>    ; 4 uses
  %i.cc = shufflevector <8 x i16> %i.ca, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = shufflevector <8 x i16> %i.ca, <8 x i16> %i.cb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ce = bitcast <16 x i8> %i.bz to <8 x i16>    ; 2 uses
  %i.cf = shufflevector <8 x i16> %i.cb, <8 x i16> %i.ce, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cg = shufflevector <8 x i16> %i.cb, <8 x i16> %i.ce, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ch = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cc, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ci = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cd, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.ck = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cg, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.cl = add <4 x i32> %i.ch, splat (i32 1081344)
  %i.cm = add <4 x i32> %i.cl, %i.cj
  %i.cn = add <4 x i32> %i.ci, splat (i32 1081344)
  %i.co = add <4 x i32> %i.cn, %i.ck
  %i.cp = ashr <4 x i32> %i.cm, splat (i32 16)
  %i.cq = ashr <4 x i32> %i.co, splat (i32 16)
  %i.cr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cp, <4 x i32> %i.cq)
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %indvars.iv41.i
  %i.ct = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bw, <8 x i16> %i.cr)
  store <16 x i8> %i.ct, ptr %i.cs, align 1, !tbaa !9, !alias.scope !92
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, 16 ; 3 uses
  br i1 %i.ax, label %bb.c, label %ConvertRGBToYHelper_SSE2.exit, !llvm.loop !0

ConvertRGBToYHelper_SSE2.exit:                    ; preds = %bb.c
  %i.cu = trunc nsw i64 %indvars.iv.next42.i to i32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.047, i64 96 ; 2 uses
  %i.cw = icmp sgt i32 %i.b, %i.cu
  br i1 %i.cw, label %bb.b, label %.loopexit, !llvm.loop !84

bb.d:                                             ; preds = %.lr.ph, %ConvertRGBToYHelper_SSE2.exit23
  %.144 = phi ptr [ %0, %.lr.ph ], [ %i.gg, %ConvertRGBToYHelper_SSE2.exit23 ] ; 9 uses
  %.13843 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next42.i22, %ConvertRGBToYHelper_SSE2.exit23 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.cx = load <16 x i8>, ptr %.144, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.144, i64 16
  %i.cz = load <16 x i8>, ptr %i.cy, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.144, i64 32
  %i.db = load <16 x i8>, ptr %i.da, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.144, i64 48
  %i.dd = load <16 x i8>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.144, i64 64
  %i.df = load <16 x i8>, ptr %i.de, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.144, i64 80
  %i.dh = load <16 x i8>, ptr %i.dg, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.144, i64 96
  %i.dj = load <16 x i8>, ptr %i.di, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.144, i64 112
  %i.dl = load <16 x i8>, ptr %i.dk, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %i.dm = shufflevector <16 x i8> %i.cx, <16 x i8> %i.cz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.dn = bitcast <16 x i8> %i.dm to <2 x i64>    ; 2 uses
  %i.do = shufflevector <16 x i8> %i.cx, <16 x i8> %i.cz, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dp = bitcast <16 x i8> %i.do to <2 x i64>
  %i.dq = shufflevector <16 x i8> %i.db, <16 x i8> %i.dd, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.dr = bitcast <16 x i8> %i.dq to <2 x i64>    ; 2 uses
  %i.ds = shufflevector <16 x i8> %i.db, <16 x i8> %i.dd, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = bitcast <16 x i8> %i.ds to <2 x i64>
  %i.du = shufflevector <2 x i64> %i.dp, <2 x i64> %i.dt, <2 x i32> <i32 0, i32 2>
  %i.dv = shufflevector <2 x i64> %i.dn, <2 x i64> %i.dr, <2 x i32> <i32 1, i32 3>
  %i.dw = shufflevector <2 x i64> %i.dn, <2 x i64> %i.dr, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.dw, ptr %i.a, align 16, !tbaa !9, !noalias !93
  store <2 x i64> %i.dv, ptr %i.e, align 16, !tbaa !9, !noalias !93
  store <2 x i64> %i.du, ptr %4, align 16, !tbaa !9, !noalias !93
  %i.dx = shufflevector <16 x i8> %i.df, <16 x i8> %i.dh, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.dy = bitcast <16 x i8> %i.dx to <2 x i64>    ; 2 uses
  %i.dz = shufflevector <16 x i8> %i.df, <16 x i8> %i.dh, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ea = bitcast <16 x i8> %i.dz to <2 x i64>
  %i.eb = shufflevector <16 x i8> %i.dj, <16 x i8> %i.dl, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ec = bitcast <16 x i8> %i.eb to <2 x i64>    ; 2 uses
  %i.ed = shufflevector <16 x i8> %i.dj, <16 x i8> %i.dl, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ee = bitcast <16 x i8> %i.ed to <2 x i64>
  %i.ef = shufflevector <2 x i64> %i.ea, <2 x i64> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.eg = shufflevector <2 x i64> %i.dy, <2 x i64> %i.ec, <2 x i32> <i32 1, i32 3>
  %i.eh = shufflevector <2 x i64> %i.dy, <2 x i64> %i.ec, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.eh, ptr %indvars.iv.i.sroa.gep24, align 16, !tbaa !9, !noalias !93
  store <2 x i64> %i.eg, ptr %i.f, align 16, !tbaa !9, !noalias !93
  store <2 x i64> %i.ef, ptr %5, align 16, !tbaa !9, !noalias !93
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv41.i18 = phi i64 [ %.13843, %bb.d ], [ %indvars.iv.next42.i22, %bb.e ] ; 2 uses
  %i.ei = phi i1 [ true, %bb.d ], [ false, %bb.e ]
  %indvars.iv.i19.sroa.phi = phi ptr [ %i.a, %bb.d ], [ %indvars.iv.i.sroa.gep24, %bb.e ] ; 2 uses
  %indvars.iv.i19 = phi i64 [ 0, %bb.d ], [ 1, %bb.e ]
  %i.ej = load <16 x i8>, ptr %indvars.iv.i19.sroa.phi, align 16, !tbaa !9, !noalias !94 ; 2 uses
  %i.ek = shufflevector <16 x i8> %i.ej, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.el = getelementptr inbounds nuw i8, ptr %indvars.iv.i19.sroa.phi, i64 32
  %i.em = load <16 x i8>, ptr %i.el, align 16, !tbaa !9, !noalias !94 ; 2 uses
  %i.en = shufflevector <16 x i8> %i.em, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %gep47.i21 = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i19
  %i.eo = load <16 x i8>, ptr %gep47.i21, align 16, !tbaa !9, !noalias !94 ; 2 uses
  %i.ep = shufflevector <16 x i8> %i.eo, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eq = bitcast <16 x i8> %i.ek to <8 x i16>    ; 2 uses
  %i.er = bitcast <16 x i8> %i.en to <8 x i16>    ; 4 uses
  %i.es = shufflevector <8 x i16> %i.eq, <8 x i16> %i.er, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.et = shufflevector <8 x i16> %i.eq, <8 x i16> %i.er, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.eu = bitcast <16 x i8> %i.ep to <8 x i16>    ; 2 uses
  %i.ev = shufflevector <8 x i16> %i.er, <8 x i16> %i.eu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ew = shufflevector <8 x i16> %i.er, <8 x i16> %i.eu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ex = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.es, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ey = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.et, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ez = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ev, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.fa = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ew, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.fb = add <4 x i32> %i.ex, splat (i32 1081344)
  %i.fc = add <4 x i32> %i.fb, %i.ez
  %i.fd = add <4 x i32> %i.ey, splat (i32 1081344)
  %i.fe = add <4 x i32> %i.fd, %i.fa
  %i.ff = ashr <4 x i32> %i.fc, splat (i32 16)
  %i.fg = ashr <4 x i32> %i.fe, splat (i32 16)
  %i.fh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ff, <4 x i32> %i.fg)
  %i.fi = shufflevector <16 x i8> %i.ej, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fj = shufflevector <16 x i8> %i.em, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fk = shufflevector <16 x i8> %i.eo, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fl = bitcast <16 x i8> %i.fi to <8 x i16>    ; 2 uses
  %i.fm = bitcast <16 x i8> %i.fj to <8 x i16>    ; 4 uses
  %i.fn = shufflevector <8 x i16> %i.fl, <8 x i16> %i.fm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fo = shufflevector <8 x i16> %i.fl, <8 x i16> %i.fm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fp = bitcast <16 x i8> %i.fk to <8 x i16>    ; 2 uses
  %i.fq = shufflevector <8 x i16> %i.fm, <8 x i16> %i.fp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fr = shufflevector <8 x i16> %i.fm, <8 x i16> %i.fp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fs = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fn, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ft = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fo, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.fu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fq, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.fv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fr, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.fw = add <4 x i32> %i.fs, splat (i32 1081344)
  %i.fx = add <4 x i32> %i.fw, %i.fu
  %i.fy = add <4 x i32> %i.ft, splat (i32 1081344)
  %i.fz = add <4 x i32> %i.fy, %i.fv
  %i.ga = ashr <4 x i32> %i.fx, splat (i32 16)
  %i.gb = ashr <4 x i32> %i.fz, splat (i32 16)
  %i.gc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ga, <4 x i32> %i.gb)
  %i.gd = getelementptr inbounds i8, ptr %1, i64 %indvars.iv41.i18
  %i.ge = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fh, <8 x i16> %i.gc)
  store <16 x i8> %i.ge, ptr %i.gd, align 1, !tbaa !9, !alias.scope !94
  %indvars.iv.next42.i22 = add nsw i64 %indvars.iv41.i18, 16 ; 3 uses
  br i1 %i.ei, label %bb.e, label %ConvertRGBToYHelper_SSE2.exit23, !llvm.loop !0

ConvertRGBToYHelper_SSE2.exit23:                  ; preds = %bb.e
  %i.gf = trunc nsw i64 %indvars.iv.next42.i22 to i32 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.144, i64 128 ; 2 uses
  %i.gh = icmp sgt i32 %i.b, %i.gf
  br i1 %i.gh, label %bb.d, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %ConvertRGBToYHelper_SSE2.exit23, %ConvertRGBToYHelper_SSE2.exit, %.preheader41, %.preheader
  %.239 = phi i32 [ %i.cu, %ConvertRGBToYHelper_SSE2.exit ], [ 0, %.preheader ], [ 0, %.preheader41 ], [ %i.gf, %ConvertRGBToYHelper_SSE2.exit23 ] ; 2 uses
  %.2 = phi ptr [ %i.cv, %ConvertRGBToYHelper_SSE2.exit ], [ %0, %.preheader ], [ %0, %.preheader41 ], [ %i.gg, %ConvertRGBToYHelper_SSE2.exit23 ] ; 5 uses
  %i.gi = icmp slt i32 %.239, %2
  br i1 %i.gi, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.loopexit
  %i.gj = sext i32 %3 to i64                      ; 3 uses
  %i.gk = sext i32 %.239 to i64                   ; 5 uses
  %wide.trip.count = sext i32 %2 to i64           ; 3 uses
  %i.gl = sub nsw i64 %wide.trip.count, %i.gk
  %xtraiter = and i64 %i.gl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph53
  %i.gm = load i8, ptr %.2, align 1, !tbaa !9
  %i.gn = zext i8 %i.gm to i32
  %i.go = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !9
  %i.gq = zext i8 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !9
  %i.gt = zext i8 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.gn, 16839
  %i.gv = mul nuw nsw i32 %i.gq, 33059
  %i.gw = mul nuw nsw i32 %i.gt, 6420
  %i.gx = add nuw nsw i32 %i.gu, 1081344
  %i.gy = add nuw nsw i32 %i.gx, %i.gv
  %i.gz = add nuw nsw i32 %i.gy, %i.gw
  %i.ha = lshr i32 %i.gz, 16
  %i.hb = trunc nuw i32 %i.ha to i8
  %i.hc = getelementptr inbounds i8, ptr %1, i64 %i.gk
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !9
  %indvars.iv.next.prol = add nsw i64 %i.gk, 1
  %i.hd = getelementptr inbounds i8, ptr %.2, i64 %i.gj
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph53
  %indvars.iv.unr = phi i64 [ %i.gk, %.lr.ph53 ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.352.unr = phi ptr [ %.2, %.lr.ph53 ], [ %i.hd, %.prol.loopexit.unr-lcssa ]
  %i.he = add nsw i64 %wide.trip.count, -1
  %i.hf = icmp eq i64 %i.he, %i.gk
  br i1 %i.hf, label %._crit_edge, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.prol.loopexit, %.lr.ph53.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph53.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %.352 = phi ptr [ %i.iq, %.lr.ph53.new ], [ %.352.unr, %.prol.loopexit ] ; 4 uses
  %i.hg = load i8, ptr %.352, align 1, !tbaa !9
  %i.hh = zext i8 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %.352, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !9
  %i.hk = zext i8 %i.hj to i32
  %i.hl = getelementptr inbounds nuw i8, ptr %.352, i64 2
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !9
  %i.hn = zext i8 %i.hm to i32
  %i.ho = mul nuw nsw i32 %i.hh, 16839
  %i.hp = mul nuw nsw i32 %i.hk, 33059
  %i.hq = mul nuw nsw i32 %i.hn, 6420
  %i.hr = add nuw nsw i32 %i.ho, 1081344
  %i.hs = add nuw nsw i32 %i.hr, %i.hp
  %i.ht = add nuw nsw i32 %i.hs, %i.hq
  %i.hu = lshr i32 %i.ht, 16
  %i.hv = trunc nuw i32 %i.hu to i8
  %i.hw = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !9
  %i.hx = getelementptr inbounds i8, ptr %.352, i64 %i.gj ; 4 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !9
  %i.hz = zext i8 %i.hy to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !9
  %i.ic = zext i8 %i.ib to i32
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !9
  %i.if = zext i8 %i.ie to i32
  %i.ig = mul nuw nsw i32 %i.hz, 16839
  %i.ih = mul nuw nsw i32 %i.ic, 33059
  %i.ii = mul nuw nsw i32 %i.if, 6420
  %i.ij = add nuw nsw i32 %i.ig, 1081344
  %i.ik = add nuw nsw i32 %i.ij, %i.ih
  %i.il = add nuw nsw i32 %i.ik, %i.ii
  %i.im = lshr i32 %i.il, 16
  %i.in = trunc nuw i32 %i.im to i8
  %i.io = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.ip = getelementptr i8, ptr %i.io, i64 1
  store i8 %i.in, ptr %i.ip, align 1, !tbaa !9
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %i.hx, i64 %i.gj
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph53.new, !llvm.loop !90

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph53.new, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ConvertBGRToY_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = alloca [6 x <2 x i64>], align 16         ; 15 uses
  %i.b = and i32 %2, -32                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = icmp eq i32 %3, 3
  %indvars.iv.i.sroa.gep24 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.d = icmp sgt i32 %2, 31                      ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader41

.preheader41:                                     ; preds = %bb.a
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader41
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  br i1 %i.d, label %.lr.ph48, label %.loopexit

.lr.ph48:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph48, %ConvertRGBToYHelper_SSE2.exit
  %.047 = phi ptr [ %0, %.lr.ph48 ], [ %i.cv, %ConvertRGBToYHelper_SSE2.exit ] ; 7 uses
  %.03746 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next42.i, %ConvertRGBToYHelper_SSE2.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.i = load <16 x i8>, ptr %.047, align 1, !tbaa !9, !alias.scope !106 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.047, i64 16
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !9, !alias.scope !106 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.047, i64 32
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !9, !alias.scope !106 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.047, i64 48
  %i.o = load <16 x i8>, ptr %i.n, align 1, !tbaa !9, !alias.scope !106 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.047, i64 64
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !9, !alias.scope !106 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.047, i64 80
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !9, !alias.scope !106 ; 2 uses
  %i.t = shufflevector <16 x i8> %i.i, <16 x i8> %i.o, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.u = shufflevector <16 x i8> %i.i, <16 x i8> %i.o, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.v = shufflevector <16 x i8> %i.k, <16 x i8> %i.q, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.w = shufflevector <16 x i8> %i.k, <16 x i8> %i.q, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.x = shufflevector <16 x i8> %i.m, <16 x i8> %i.s, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.y = shufflevector <16 x i8> %i.m, <16 x i8> %i.s, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.z = shufflevector <16 x i8> %i.t, <16 x i8> %i.w, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.aa = shufflevector <16 x i8> %i.t, <16 x i8> %i.w, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ab = shufflevector <16 x i8> %i.u, <16 x i8> %i.x, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ac = shufflevector <16 x i8> %i.u, <16 x i8> %i.x, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ad = shufflevector <16 x i8> %i.v, <16 x i8> %i.y, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ae = shufflevector <16 x i8> %i.v, <16 x i8> %i.y, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.af = shufflevector <16 x i8> %i.z, <16 x i8> %i.ac, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ag = shufflevector <16 x i8> %i.z, <16 x i8> %i.ac, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ad, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ai = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ad, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aj = shufflevector <16 x i8> %i.ab, <16 x i8> %i.ae, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ak = shufflevector <16 x i8> %i.ab, <16 x i8> %i.ae, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.al = shufflevector <16 x i8> %i.af, <16 x i8> %i.ai, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.am = shufflevector <16 x i8> %i.af, <16 x i8> %i.ai, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.an = shufflevector <16 x i8> %i.ag, <16 x i8> %i.aj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ao = shufflevector <16 x i8> %i.ag, <16 x i8> %i.aj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ap = shufflevector <16 x i8> %i.ah, <16 x i8> %i.ak, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.aq = shufflevector <16 x i8> %i.ah, <16 x i8> %i.ak, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ar = shufflevector <16 x i8> %i.al, <16 x i8> %i.ao, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ar, ptr %i.a, align 16, !tbaa !9, !noalias !106
  %i.as = shufflevector <16 x i8> %i.al, <16 x i8> %i.ao, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.as, ptr %indvars.iv.i.sroa.gep24, align 16, !tbaa !9, !noalias !106
  %i.at = shufflevector <16 x i8> %i.am, <16 x i8> %i.ap, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.at, ptr %i.g, align 16, !tbaa !9, !noalias !106
  %i.au = shufflevector <16 x i8> %i.am, <16 x i8> %i.ap, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.au, ptr %i.h, align 16, !tbaa !9, !noalias !106
  %i.av = shufflevector <16 x i8> %i.an, <16 x i8> %i.aq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.av, ptr %6, align 16, !tbaa !9, !noalias !106
  %i.aw = shufflevector <16 x i8> %i.an, <16 x i8> %i.aq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.aw, ptr %7, align 16, !tbaa !9, !noalias !106
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv41.i = phi i64 [ %.03746, %bb.b ], [ %indvars.iv.next42.i, %bb.c ] ; 2 uses
  %i.ax = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %indvars.iv.i.sroa.phi = phi ptr [ %i.a, %bb.b ], [ %indvars.iv.i.sroa.gep24, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  %gep.i = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv.i
  %i.ay = load <16 x i8>, ptr %gep.i, align 16, !tbaa !9, !noalias !107 ; 2 uses
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ba = getelementptr inbounds nuw i8, ptr %indvars.iv.i.sroa.phi, i64 32
  %i.bb = load <16 x i8>, ptr %i.ba, align 16, !tbaa !9, !noalias !107 ; 2 uses
  %i.bc = shufflevector <16 x i8> %i.bb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bd = load <16 x i8>, ptr %indvars.iv.i.sroa.phi, align 16, !tbaa !9, !noalias !107 ; 2 uses
  %i.be = shufflevector <16 x i8> %i.bd, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bf = bitcast <16 x i8> %i.az to <8 x i16>    ; 2 uses
  %i.bg = bitcast <16 x i8> %i.bc to <8 x i16>    ; 4 uses
  %i.bh = shufflevector <8 x i16> %i.bf, <8 x i16> %i.bg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bi = shufflevector <8 x i16> %i.bf, <8 x i16> %i.bg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bj = bitcast <16 x i8> %i.be to <8 x i16>    ; 2 uses
  %i.bk = shufflevector <8 x i16> %i.bg, <8 x i16> %i.bj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bl = shufflevector <8 x i16> %i.bg, <8 x i16> %i.bj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bh, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.bn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bi, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.bo = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bk, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.bp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bl, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.bq = add <4 x i32> %i.bm, splat (i32 1081344)
  %i.br = add <4 x i32> %i.bq, %i.bo
  %i.bs = add <4 x i32> %i.bn, splat (i32 1081344)
  %i.bt = add <4 x i32> %i.bs, %i.bp
  %i.bu = ashr <4 x i32> %i.br, splat (i32 16)
  %i.bv = ashr <4 x i32> %i.bt, splat (i32 16)
  %i.bw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bu, <4 x i32> %i.bv)
  %i.bx = shufflevector <16 x i8> %i.ay, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.by = shufflevector <16 x i8> %i.bb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bz = shufflevector <16 x i8> %i.bd, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ca = bitcast <16 x i8> %i.bx to <8 x i16>    ; 2 uses
  %i.cb = bitcast <16 x i8> %i.by to <8 x i16>    ; 4 uses
  %i.cc = shufflevector <8 x i16> %i.ca, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = shufflevector <8 x i16> %i.ca, <8 x i16> %i.cb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ce = bitcast <16 x i8> %i.bz to <8 x i16>    ; 2 uses
  %i.cf = shufflevector <8 x i16> %i.cb, <8 x i16> %i.ce, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cg = shufflevector <8 x i16> %i.cb, <8 x i16> %i.ce, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ch = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cc, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ci = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cd, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.ck = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cg, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.cl = add <4 x i32> %i.ch, splat (i32 1081344)
  %i.cm = add <4 x i32> %i.cl, %i.cj
  %i.cn = add <4 x i32> %i.ci, splat (i32 1081344)
  %i.co = add <4 x i32> %i.cn, %i.ck
  %i.cp = ashr <4 x i32> %i.cm, splat (i32 16)
  %i.cq = ashr <4 x i32> %i.co, splat (i32 16)
  %i.cr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cp, <4 x i32> %i.cq)
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %indvars.iv41.i
  %i.ct = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bw, <8 x i16> %i.cr)
  store <16 x i8> %i.ct, ptr %i.cs, align 1, !tbaa !9, !alias.scope !107
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, 16 ; 3 uses
  br i1 %i.ax, label %bb.c, label %ConvertRGBToYHelper_SSE2.exit, !llvm.loop !0

ConvertRGBToYHelper_SSE2.exit:                    ; preds = %bb.c
  %i.cu = trunc nsw i64 %indvars.iv.next42.i to i32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.047, i64 96 ; 2 uses
  %i.cw = icmp sgt i32 %i.b, %i.cu
  br i1 %i.cw, label %bb.b, label %.loopexit, !llvm.loop !99

bb.d:                                             ; preds = %.lr.ph, %ConvertRGBToYHelper_SSE2.exit23
  %.144 = phi ptr [ %0, %.lr.ph ], [ %i.gg, %ConvertRGBToYHelper_SSE2.exit23 ] ; 9 uses
  %.13843 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next42.i22, %ConvertRGBToYHelper_SSE2.exit23 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.cx = load <16 x i8>, ptr %.144, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.144, i64 16
  %i.cz = load <16 x i8>, ptr %i.cy, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.144, i64 32
  %i.db = load <16 x i8>, ptr %i.da, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.144, i64 48
  %i.dd = load <16 x i8>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.144, i64 64
  %i.df = load <16 x i8>, ptr %i.de, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.144, i64 80
  %i.dh = load <16 x i8>, ptr %i.dg, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.144, i64 96
  %i.dj = load <16 x i8>, ptr %i.di, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.144, i64 112
  %i.dl = load <16 x i8>, ptr %i.dk, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %i.dm = shufflevector <16 x i8> %i.cx, <16 x i8> %i.cz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.dn = bitcast <16 x i8> %i.dm to <2 x i64>    ; 2 uses
  %i.do = shufflevector <16 x i8> %i.cx, <16 x i8> %i.cz, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dp = bitcast <16 x i8> %i.do to <2 x i64>
  %i.dq = shufflevector <16 x i8> %i.db, <16 x i8> %i.dd, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.dr = bitcast <16 x i8> %i.dq to <2 x i64>    ; 2 uses
  %i.ds = shufflevector <16 x i8> %i.db, <16 x i8> %i.dd, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = bitcast <16 x i8> %i.ds to <2 x i64>
  %i.du = shufflevector <2 x i64> %i.dp, <2 x i64> %i.dt, <2 x i32> <i32 0, i32 2>
  %i.dv = shufflevector <2 x i64> %i.dn, <2 x i64> %i.dr, <2 x i32> <i32 1, i32 3>
  %i.dw = shufflevector <2 x i64> %i.dn, <2 x i64> %i.dr, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.dw, ptr %i.a, align 16, !tbaa !9, !noalias !108
  store <2 x i64> %i.dv, ptr %i.e, align 16, !tbaa !9, !noalias !108
  store <2 x i64> %i.du, ptr %4, align 16, !tbaa !9, !noalias !108
  %i.dx = shufflevector <16 x i8> %i.df, <16 x i8> %i.dh, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.dy = bitcast <16 x i8> %i.dx to <2 x i64>    ; 2 uses
  %i.dz = shufflevector <16 x i8> %i.df, <16 x i8> %i.dh, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ea = bitcast <16 x i8> %i.dz to <2 x i64>
  %i.eb = shufflevector <16 x i8> %i.dj, <16 x i8> %i.dl, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ec = bitcast <16 x i8> %i.eb to <2 x i64>    ; 2 uses
  %i.ed = shufflevector <16 x i8> %i.dj, <16 x i8> %i.dl, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ee = bitcast <16 x i8> %i.ed to <2 x i64>
  %i.ef = shufflevector <2 x i64> %i.ea, <2 x i64> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.eg = shufflevector <2 x i64> %i.dy, <2 x i64> %i.ec, <2 x i32> <i32 1, i32 3>
  %i.eh = shufflevector <2 x i64> %i.dy, <2 x i64> %i.ec, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.eh, ptr %indvars.iv.i.sroa.gep24, align 16, !tbaa !9, !noalias !108
  store <2 x i64> %i.eg, ptr %i.f, align 16, !tbaa !9, !noalias !108
  store <2 x i64> %i.ef, ptr %5, align 16, !tbaa !9, !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv41.i18 = phi i64 [ %.13843, %bb.d ], [ %indvars.iv.next42.i22, %bb.e ] ; 2 uses
  %i.ei = phi i1 [ true, %bb.d ], [ false, %bb.e ]
  %indvars.iv.i19.sroa.phi = phi ptr [ %i.a, %bb.d ], [ %indvars.iv.i.sroa.gep24, %bb.e ] ; 2 uses
  %indvars.iv.i19 = phi i64 [ 0, %bb.d ], [ 1, %bb.e ]
  %gep.i20 = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i19
  %i.ej = load <16 x i8>, ptr %gep.i20, align 16, !tbaa !9, !noalias !109 ; 2 uses
  %i.ek = shufflevector <16 x i8> %i.ej, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.el = getelementptr inbounds nuw i8, ptr %indvars.iv.i19.sroa.phi, i64 32
  %i.em = load <16 x i8>, ptr %i.el, align 16, !tbaa !9, !noalias !109 ; 2 uses
  %i.en = shufflevector <16 x i8> %i.em, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eo = load <16 x i8>, ptr %indvars.iv.i19.sroa.phi, align 16, !tbaa !9, !noalias !109 ; 2 uses
  %i.ep = shufflevector <16 x i8> %i.eo, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eq = bitcast <16 x i8> %i.ek to <8 x i16>    ; 2 uses
  %i.er = bitcast <16 x i8> %i.en to <8 x i16>    ; 4 uses
  %i.es = shufflevector <8 x i16> %i.eq, <8 x i16> %i.er, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.et = shufflevector <8 x i16> %i.eq, <8 x i16> %i.er, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.eu = bitcast <16 x i8> %i.ep to <8 x i16>    ; 2 uses
  %i.ev = shufflevector <8 x i16> %i.er, <8 x i16> %i.eu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ew = shufflevector <8 x i16> %i.er, <8 x i16> %i.eu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ex = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.es, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ey = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.et, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ez = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ev, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.fa = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ew, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.fb = add <4 x i32> %i.ex, splat (i32 1081344)
  %i.fc = add <4 x i32> %i.fb, %i.ez
  %i.fd = add <4 x i32> %i.ey, splat (i32 1081344)
  %i.fe = add <4 x i32> %i.fd, %i.fa
  %i.ff = ashr <4 x i32> %i.fc, splat (i32 16)
  %i.fg = ashr <4 x i32> %i.fe, splat (i32 16)
  %i.fh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ff, <4 x i32> %i.fg)
  %i.fi = shufflevector <16 x i8> %i.ej, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fj = shufflevector <16 x i8> %i.em, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fk = shufflevector <16 x i8> %i.eo, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fl = bitcast <16 x i8> %i.fi to <8 x i16>    ; 2 uses
  %i.fm = bitcast <16 x i8> %i.fj to <8 x i16>    ; 4 uses
  %i.fn = shufflevector <8 x i16> %i.fl, <8 x i16> %i.fm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fo = shufflevector <8 x i16> %i.fl, <8 x i16> %i.fm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fp = bitcast <16 x i8> %i.fk to <8 x i16>    ; 2 uses
  %i.fq = shufflevector <8 x i16> %i.fm, <8 x i16> %i.fp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fr = shufflevector <8 x i16> %i.fm, <8 x i16> %i.fp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fs = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fn, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ft = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fo, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.fu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fq, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.fv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fr, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.fw = add <4 x i32> %i.fs, splat (i32 1081344)
  %i.fx = add <4 x i32> %i.fw, %i.fu
  %i.fy = add <4 x i32> %i.ft, splat (i32 1081344)
  %i.fz = add <4 x i32> %i.fy, %i.fv
  %i.ga = ashr <4 x i32> %i.fx, splat (i32 16)
  %i.gb = ashr <4 x i32> %i.fz, splat (i32 16)
  %i.gc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ga, <4 x i32> %i.gb)
  %i.gd = getelementptr inbounds i8, ptr %1, i64 %indvars.iv41.i18
  %i.ge = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fh, <8 x i16> %i.gc)
  store <16 x i8> %i.ge, ptr %i.gd, align 1, !tbaa !9, !alias.scope !109
  %indvars.iv.next42.i22 = add nsw i64 %indvars.iv41.i18, 16 ; 3 uses
  br i1 %i.ei, label %bb.e, label %ConvertRGBToYHelper_SSE2.exit23, !llvm.loop !0

ConvertRGBToYHelper_SSE2.exit23:                  ; preds = %bb.e
  %i.gf = trunc nsw i64 %indvars.iv.next42.i22 to i32 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.144, i64 128 ; 2 uses
  %i.gh = icmp sgt i32 %i.b, %i.gf
  br i1 %i.gh, label %bb.d, label %.loopexit, !llvm.loop !104

.loopexit:                                        ; preds = %ConvertRGBToYHelper_SSE2.exit23, %ConvertRGBToYHelper_SSE2.exit, %.preheader41, %.preheader
  %.239 = phi i32 [ %i.cu, %ConvertRGBToYHelper_SSE2.exit ], [ 0, %.preheader ], [ 0, %.preheader41 ], [ %i.gf, %ConvertRGBToYHelper_SSE2.exit23 ] ; 2 uses
  %.2 = phi ptr [ %i.cv, %ConvertRGBToYHelper_SSE2.exit ], [ %0, %.preheader ], [ %0, %.preheader41 ], [ %i.gg, %ConvertRGBToYHelper_SSE2.exit23 ] ; 5 uses
  %i.gi = icmp slt i32 %.239, %2
  br i1 %i.gi, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.loopexit
  %i.gj = sext i32 %3 to i64                      ; 3 uses
  %i.gk = sext i32 %.239 to i64                   ; 5 uses
  %wide.trip.count = sext i32 %2 to i64           ; 3 uses
  %i.gl = sub nsw i64 %wide.trip.count, %i.gk
  %xtraiter = and i64 %i.gl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph53
  %i.gm = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !9
  %i.go = zext i8 %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !9
  %i.gr = zext i8 %i.gq to i32
  %i.gs = load i8, ptr %.2, align 1, !tbaa !9
  %i.gt = zext i8 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.go, 16839
  %i.gv = mul nuw nsw i32 %i.gr, 33059
  %i.gw = mul nuw nsw i32 %i.gt, 6420
  %i.gx = add nuw nsw i32 %i.gu, 1081344
  %i.gy = add nuw nsw i32 %i.gx, %i.gv
  %i.gz = add nuw nsw i32 %i.gy, %i.gw
  %i.ha = lshr i32 %i.gz, 16
  %i.hb = trunc nuw i32 %i.ha to i8
  %i.hc = getelementptr inbounds i8, ptr %1, i64 %i.gk
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !9
  %indvars.iv.next.prol = add nsw i64 %i.gk, 1
  %i.hd = getelementptr inbounds i8, ptr %.2, i64 %i.gj
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph53
  %indvars.iv.unr = phi i64 [ %i.gk, %.lr.ph53 ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.352.unr = phi ptr [ %.2, %.lr.ph53 ], [ %i.hd, %.prol.loopexit.unr-lcssa ]
  %i.he = add nsw i64 %wide.trip.count, -1
  %i.hf = icmp eq i64 %i.he, %i.gk
  br i1 %i.hf, label %._crit_edge, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.prol.loopexit, %.lr.ph53.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph53.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %.352 = phi ptr [ %i.iq, %.lr.ph53.new ], [ %.352.unr, %.prol.loopexit ] ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.352, i64 2
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !9
  %i.hi = zext i8 %i.hh to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %.352, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !9
  %i.hl = zext i8 %i.hk to i32
  %i.hm = load i8, ptr %.352, align 1, !tbaa !9
  %i.hn = zext i8 %i.hm to i32
  %i.ho = mul nuw nsw i32 %i.hi, 16839
  %i.hp = mul nuw nsw i32 %i.hl, 33059
  %i.hq = mul nuw nsw i32 %i.hn, 6420
  %i.hr = add nuw nsw i32 %i.ho, 1081344
  %i.hs = add nuw nsw i32 %i.hr, %i.hp
  %i.ht = add nuw nsw i32 %i.hs, %i.hq
  %i.hu = lshr i32 %i.ht, 16
  %i.hv = trunc nuw i32 %i.hu to i8
  %i.hw = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !9
  %i.hx = getelementptr inbounds i8, ptr %.352, i64 %i.gj ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !9
  %i.ia = zext i8 %i.hz to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !9
  %i.id = zext i8 %i.ic to i32
  %i.ie = load i8, ptr %i.hx, align 1, !tbaa !9
  %i.if = zext i8 %i.ie to i32
  %i.ig = mul nuw nsw i32 %i.ia, 16839
  %i.ih = mul nuw nsw i32 %i.id, 33059
  %i.ii = mul nuw nsw i32 %i.if, 6420
  %i.ij = add nuw nsw i32 %i.ig, 1081344
  %i.ik = add nuw nsw i32 %i.ij, %i.ih
  %i.il = add nuw nsw i32 %i.ik, %i.ii
  %i.im = lshr i32 %i.il, 16
  %i.in = trunc nuw i32 %i.im to i8
  %i.io = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.ip = getelementptr i8, ptr %i.io, i64 1
  store i8 %i.in, ptr %i.ip, align 1, !tbaa !9
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %i.hx, i64 %i.gj
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph53.new, !llvm.loop !105

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph53.new, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
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
  %.042 = phi ptr [ %i.da, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %.01841 = phi ptr [ %i.cz, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.01940 = phi ptr [ %i.cy, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.f = load <8 x i16>, ptr %.042, align 1, !tbaa !9, !alias.scope !115 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 16
  %i.h = load <8 x i16>, ptr %i.g, align 1, !tbaa !9, !alias.scope !115 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.042, i64 32
  %i.j = load <8 x i16>, ptr %i.i, align 1, !tbaa !9, !alias.scope !115 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.042, i64 48
  %i.l = load <8 x i16>, ptr %i.k, align 1, !tbaa !9, !alias.scope !115 ; 2 uses
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
end_hunk_0
