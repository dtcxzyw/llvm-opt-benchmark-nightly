inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0_@AccumulateSSE_SSE2:bb.a
  %.14163 = phi i32 [ %i.ch, %.lr.ph66 ], [ %.14163.ph, %.lr.ph66.preheader90 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv75
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cb = zext i8 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv75
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = zext i8 %i.cd to i32
  %i.cf = sub nsw i32 %i.cb, %i.ce                ; 2 uses
  %i.cg = mul nsw i32 %i.cf, %i.cf
  %i.ch = add i32 %i.cg, %.14163                  ; 2 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.ci = trunc nuw i64 %indvars.iv.next76 to i32
  %i.cj = icmp sgt i32 %2, %i.ci
  br i1 %i.cj, label %.lr.ph66, label %._crit_edge67, !llvm.loop !15

._crit_edge67:                                    ; preds = %.lr.ph66, %middle.block, %bb.c
  %.141.lcssa = phi i32 [ %.040, %bb.c ], [ %i.by, %middle.block ], [ %i.ch, %.lr.ph66 ]
  ret i32 %.141.lcssa
}

; Function Attrs: nounwind uwtable
define internal double @SSIMGet_SSE2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %4 = alloca %struct.VP8DistoStats, align 4      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = load i64, ptr %0, align 1, !tbaa !9
  %i.b = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %i.c = load i64, ptr %2, align 1, !tbaa !9
  %i.d = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.e = bitcast <2 x i64> %i.b to <16 x i8>
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.g = bitcast <2 x i64> %i.d to <16 x i8>
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.i = bitcast <16 x i8> %i.f to <8 x i16>      ; 3 uses
  %i.j = mul nuw nsw <8 x i16> %i.i, <i16 1, i16 2, i16 3, i16 4, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.k = bitcast <16 x i8> %i.h to <8 x i16>      ; 2 uses
  %i.l = mul nuw nsw <8 x i16> %i.k, <i16 1, i16 2, i16 3, i16 4, i16 3, i16 2, i16 1, i16 0> ; 3 uses
  %i.m = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.i, <8 x i16> %i.j)
  %i.n = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.i, <8 x i16> %i.l)
  %i.o = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.k, <8 x i16> %i.l)
  %i.p = sext i32 %1 to i64                       ; 6 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p ; 2 uses
  %i.r = sext i32 %3 to i64                       ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.q, align 1, !tbaa !9
  %i.u = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %i.v = load i64, ptr %i.s, align 1, !tbaa !9
  %i.w = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %i.x = bitcast <2 x i64> %i.u to <16 x i8>
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.z = bitcast <2 x i64> %i.w to <16 x i8>
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ab = bitcast <16 x i8> %i.y to <8 x i16>     ; 3 uses
  %i.ac = mul nuw nsw <8 x i16> %i.ab, <i16 2, i16 4, i16 6, i16 8, i16 6, i16 4, i16 2, i16 0> ; 2 uses
  %i.ad = bitcast <16 x i8> %i.aa to <8 x i16>    ; 2 uses
  %i.ae = mul nuw nsw <8 x i16> %i.ad, <i16 2, i16 4, i16 6, i16 8, i16 6, i16 4, i16 2, i16 0> ; 3 uses
  %i.af = add nuw nsw <8 x i16> %i.ac, %i.j
  %i.ag = add nuw nsw <8 x i16> %i.ae, %i.l
  %i.ah = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ab, <8 x i16> %i.ac)
  %i.ai = add <4 x i32> %i.ah, %i.m
  %i.aj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ab, <8 x i16> %i.ae)
  %i.ak = add <4 x i32> %i.aj, %i.n
  %i.al = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ad, <8 x i16> %i.ae)
  %i.am = add <4 x i32> %i.al, %i.o
  %i.an = getelementptr inbounds i8, ptr %i.q, i64 %i.p ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.s, i64 %i.r ; 2 uses
  %i.ap = load i64, ptr %i.an, align 1, !tbaa !9
  %i.aq = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %i.ar = load i64, ptr %i.ao, align 1, !tbaa !9
  %i.as = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %i.at = bitcast <2 x i64> %i.aq to <16 x i8>
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.av = bitcast <2 x i64> %i.as to <16 x i8>
  %i.aw = shufflevector <16 x i8> %i.av, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ax = bitcast <16 x i8> %i.au to <8 x i16>    ; 3 uses
  %i.ay = mul nuw nsw <8 x i16> %i.ax, <i16 3, i16 6, i16 9, i16 12, i16 9, i16 6, i16 3, i16 0> ; 2 uses
  %i.az = bitcast <16 x i8> %i.aw to <8 x i16>    ; 2 uses
  %i.ba = mul nuw nsw <8 x i16> %i.az, <i16 3, i16 6, i16 9, i16 12, i16 9, i16 6, i16 3, i16 0> ; 3 uses
  %i.bb = add nuw nsw <8 x i16> %i.af, %i.ay
  %i.bc = add nuw nsw <8 x i16> %i.ag, %i.ba
  %i.bd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ax, <8 x i16> %i.ay)
  %i.be = add <4 x i32> %i.ai, %i.bd
  %i.bf = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ax, <8 x i16> %i.ba)
  %i.bg = add <4 x i32> %i.ak, %i.bf
  %i.bh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.az, <8 x i16> %i.ba)
  %i.bi = add <4 x i32> %i.am, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.an, i64 %i.p ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.ao, i64 %i.r ; 2 uses
  %i.bl = load i64, ptr %i.bj, align 1, !tbaa !9
  %i.bm = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %i.bn = load i64, ptr %i.bk, align 1, !tbaa !9
  %i.bo = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %i.bp = bitcast <2 x i64> %i.bm to <16 x i8>
  %i.bq = shufflevector <16 x i8> %i.bp, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.br = bitcast <2 x i64> %i.bo to <16 x i8>
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bt = bitcast <16 x i8> %i.bq to <8 x i16>    ; 3 uses
  %i.bu = mul nuw nsw <8 x i16> %i.bt, <i16 4, i16 8, i16 12, i16 16, i16 12, i16 8, i16 4, i16 0> ; 2 uses
  %i.bv = bitcast <16 x i8> %i.bs to <8 x i16>    ; 2 uses
  %i.bw = mul nuw nsw <8 x i16> %i.bv, <i16 4, i16 8, i16 12, i16 16, i16 12, i16 8, i16 4, i16 0> ; 3 uses
  %i.bx = add nuw nsw <8 x i16> %i.bb, %i.bu
  %i.by = add nuw nsw <8 x i16> %i.bc, %i.bw
  %i.bz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bt, <8 x i16> %i.bu)
  %i.ca = add <4 x i32> %i.be, %i.bz
  %i.cb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bt, <8 x i16> %i.bw)
  %i.cc = add <4 x i32> %i.bg, %i.cb
  %i.cd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bv, <8 x i16> %i.bw)
  %i.ce = add <4 x i32> %i.bi, %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.bj, i64 %i.p ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.bk, i64 %i.r ; 2 uses
  %i.ch = load i64, ptr %i.cf, align 1, !tbaa !9
  %i.ci = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %i.cj = load i64, ptr %i.cg, align 1, !tbaa !9
  %i.ck = insertelement <2 x i64> poison, i64 %i.cj, i64 0
  %i.cl = bitcast <2 x i64> %i.ci to <16 x i8>
  %i.cm = shufflevector <16 x i8> %i.cl, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cn = bitcast <2 x i64> %i.ck to <16 x i8>
  %i.co = shufflevector <16 x i8> %i.cn, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cp = bitcast <16 x i8> %i.cm to <8 x i16>    ; 3 uses
  %i.cq = mul nuw nsw <8 x i16> %i.cp, <i16 3, i16 6, i16 9, i16 12, i16 9, i16 6, i16 3, i16 0> ; 2 uses
  %i.cr = bitcast <16 x i8> %i.co to <8 x i16>    ; 2 uses
  %i.cs = mul nuw nsw <8 x i16> %i.cr, <i16 3, i16 6, i16 9, i16 12, i16 9, i16 6, i16 3, i16 0> ; 3 uses
  %i.ct = add nuw <8 x i16> %i.bx, %i.cq
  %i.cu = add nuw <8 x i16> %i.by, %i.cs
  %i.cv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cp, <8 x i16> %i.cq)
  %i.cw = add <4 x i32> %i.ca, %i.cv
  %i.cx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cp, <8 x i16> %i.cs)
  %i.cy = add <4 x i32> %i.cc, %i.cx
  %i.cz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cr, <8 x i16> %i.cs)
  %i.da = add <4 x i32> %i.ce, %i.cz
  %i.db = getelementptr inbounds i8, ptr %i.cf, i64 %i.p ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cg, i64 %i.r ; 2 uses
  %i.dd = load i64, ptr %i.db, align 1, !tbaa !9
  %i.de = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %i.df = load i64, ptr %i.dc, align 1, !tbaa !9
  %i.dg = insertelement <2 x i64> poison, i64 %i.df, i64 0
  %i.dh = bitcast <2 x i64> %i.de to <16 x i8>
  %i.di = shufflevector <16 x i8> %i.dh, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dj = bitcast <2 x i64> %i.dg to <16 x i8>
  %i.dk = shufflevector <16 x i8> %i.dj, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dl = bitcast <16 x i8> %i.di to <8 x i16>    ; 3 uses
  %i.dm = mul nuw nsw <8 x i16> %i.dl, <i16 2, i16 4, i16 6, i16 8, i16 6, i16 4, i16 2, i16 0> ; 2 uses
  %i.dn = bitcast <16 x i8> %i.dk to <8 x i16>    ; 2 uses
  %i.do = mul nuw nsw <8 x i16> %i.dn, <i16 2, i16 4, i16 6, i16 8, i16 6, i16 4, i16 2, i16 0> ; 3 uses
  %i.dp = add <8 x i16> %i.ct, %i.dm
  %i.dq = add <8 x i16> %i.cu, %i.do
  %i.dr = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dl, <8 x i16> %i.dm)
  %i.ds = add <4 x i32> %i.cw, %i.dr
  %i.dt = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dl, <8 x i16> %i.do)
  %i.du = add <4 x i32> %i.cy, %i.dt
  %i.dv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dn, <8 x i16> %i.do)
  %i.dw = add <4 x i32> %i.da, %i.dv
  %i.dx = getelementptr inbounds i8, ptr %i.db, i64 %i.p
  %i.dy = getelementptr inbounds i8, ptr %i.dc, i64 %i.r
  %i.dz = load i64, ptr %i.dx, align 1, !tbaa !9
  %i.ea = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %i.eb = load i64, ptr %i.dy, align 1, !tbaa !9
  %i.ec = insertelement <2 x i64> poison, i64 %i.eb, i64 0
  %i.ed = bitcast <2 x i64> %i.ea to <16 x i8>
  %i.ee = shufflevector <16 x i8> %i.ed, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ef = bitcast <2 x i64> %i.ec to <16 x i8>
  %i.eg = shufflevector <16 x i8> %i.ef, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eh = bitcast <16 x i8> %i.ee to <8 x i16>    ; 3 uses
  %i.ei = mul nuw nsw <8 x i16> %i.eh, <i16 1, i16 2, i16 3, i16 4, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.ej = bitcast <16 x i8> %i.eg to <8 x i16>    ; 2 uses
  %i.ek = mul nuw nsw <8 x i16> %i.ej, <i16 1, i16 2, i16 3, i16 4, i16 3, i16 2, i16 1, i16 0> ; 3 uses
  %i.el = add <8 x i16> %i.dp, %i.ei              ; 2 uses
  %i.em = add <8 x i16> %i.dq, %i.ek              ; 2 uses
  %i.en = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.eh, <8 x i16> %i.ei)
  %i.eo = add <4 x i32> %i.ds, %i.en              ; 2 uses
  %i.ep = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.eh, <8 x i16> %i.ek)
  %i.eq = add <4 x i32> %i.du, %i.ep              ; 2 uses
  %i.er = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ej, <8 x i16> %i.ek)
  %i.es = add <4 x i32> %i.dw, %i.er              ; 2 uses
  %i.et = shufflevector <8 x i16> %i.el, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eu = add <8 x i16> %i.el, %i.et              ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ew = shufflevector <8 x i16> %i.em, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ex = add <8 x i16> %i.em, %i.ew              ; 4 uses
  %i.ey = shufflevector <8 x i16> %i.eu, <8 x i16> %i.ex, <2 x i32> <i32 3, i32 11>
  %i.ez = zext <2 x i16> %i.ey to <2 x i32>
  %i.fa = shufflevector <8 x i16> %i.eu, <8 x i16> %i.ex, <2 x i32> <i32 2, i32 10>
  %i.fb = zext <2 x i16> %i.fa to <2 x i32>
  %i.fc = add nuw nsw <2 x i32> %i.ez, %i.fb
  %i.fd = shufflevector <8 x i16> %i.eu, <8 x i16> %i.ex, <2 x i32> <i32 1, i32 9>
  %i.fe = zext <2 x i16> %i.fd to <2 x i32>
  %i.ff = add nuw nsw <2 x i32> %i.fc, %i.fe
  %i.fg = shufflevector <8 x i16> %i.eu, <8 x i16> %i.ex, <2 x i32> <i32 0, i32 8>
  %i.fh = zext <2 x i16> %i.fg to <2 x i32>
  %i.fi = add nuw nsw <2 x i32> %i.ff, %i.fh
  store <2 x i32> %i.fi, ptr %i.ev, align 4, !tbaa !3
  %i.fj = shufflevector <4 x i32> %i.eo, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.fk = add <4 x i32> %i.eo, %i.fj              ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fm = shufflevector <4 x i32> %i.eq, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.fn = add <4 x i32> %i.eq, %i.fm              ; 2 uses
  %i.fo = shufflevector <4 x i32> %i.fk, <4 x i32> %i.fn, <2 x i32> <i32 0, i32 4>
  %i.fp = shufflevector <4 x i32> %i.fk, <4 x i32> %i.fn, <2 x i32> <i32 1, i32 5>
  %i.fq = add <2 x i32> %i.fo, %i.fp
  store <2 x i32> %i.fq, ptr %i.fl, align 4, !tbaa !3
  %5 = shufflevector <4 x i32> %i.es, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.fr = add <4 x i32> %i.es, %5                 ; 2 uses
  %6 = shufflevector <4 x i32> %i.fr, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %7 = add <4 x i32> %i.fr, %6
  %8 = extractelement <4 x i32> %7, i64 0
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %8, ptr %i.fs, align 4, !tbaa !16
  %i.ft = call double @VP8SSIMFromStats(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret double %i.ft
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.usub.sat.v16i8(<16 x i8>, <16 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #5

declare double @VP8SSIMFromStats(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !11, !14, !13}
!16 = !{!17, !4, i64 20}
!17 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
end_hunk_0
