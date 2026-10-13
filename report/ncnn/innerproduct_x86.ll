Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86?download=true
inline.NumInlined: 26
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4ncnnL21innerproduct_gemm_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %3, align 4, !tbaa !57    ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph1223, %.thread1090
  %.pr10891282 = phi i32 [ %.pre, %.lr.ph1223 ], [ %.pr10891283, %.thread1090 ] ; 3 uses
  %.pr10911274 = phi i32 [ %.pre, %.lr.ph1223 ], [ %.pr10911275, %.thread1090 ] ; 3 uses
  %.pr1270 = phi i32 [ %.pre, %.lr.ph1223 ], [ %.pr1268, %.thread1090 ] ; 2 uses
  %i.t = phi i32 [ %.pre, %.lr.ph1223 ], [ %i.bba, %.thread1090 ] ; 2 uses
  %indvars.iv1263 = phi i64 [ %i.r, %.lr.ph1223 ], [ %indvars.iv.next1264, %.thread1090 ] ; 9 uses
  %i.u = icmp eq i32 %i.t, 4
  br i1 %i.u, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %4, align 4, !tbaa !57     ; 2 uses
  %i.w = icmp eq i32 %i.v, 4
  br i1 %i.w, label %bb.e, label %.thread.thread

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %6, align 4, !tbaa !57
  %i.y = icmp sgt i32 %i.x, 3
  br i1 %i.y, label %.lr.ph1140.preheader, label %thread-pre-split

.lr.ph1140.preheader:                             ; preds = %bb.e
  %i.z = load ptr, ptr %5, align 8, !tbaa !19
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !47
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %indvars.iv1263, %i.ab
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !48
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  br label %.lr.ph1140

.lr.ph1140:                                       ; preds = %.lr.ph1140.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193
  %indvars.iv = phi i64 [ 0, %.lr.ph1140.preheader ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193 ] ; 3 uses
  %.01701137 = phi ptr [ %i.af, %.lr.ph1140.preheader ], [ %i.zs, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193 ] ; 5 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !19
  %i.ah = load i32, ptr %i.n, align 4, !tbaa !47
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %indvars.iv, %i.ai
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !48
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al
  %i.an = load ptr, ptr %8, align 8, !tbaa !19
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !47
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %indvars.iv1263, %i.ap
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !48
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = load ptr, ptr %9, align 8, !tbaa !65    ; 2 uses
  %.not178 = icmp eq ptr %i.au, null
  br i1 %.not178, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph1140
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %i.aw = load <4 x float>, ptr %i.av, align 1, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph1140
  %.0991 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1140 ], [ %i.aw, %bb.f ] ; 8 uses
  %i.ax = load i32, ptr %10, align 4, !tbaa !57   ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.01661133 = phi i32 [ %i.bz, %.lr.ph ], [ 0, %bb.g ]
  %.01671132 = phi ptr [ %i.bx, %.lr.ph ], [ %i.at, %bb.g ] ; 5 uses
  %.01681131 = phi ptr [ %i.by, %.lr.ph ], [ %i.am, %bb.g ] ; 2 uses
  %.09881130 = phi <4 x float> [ %i.bw, %.lr.ph ], [ %.0991, %bb.g ]
  %.09891129 = phi <4 x float> [ %i.bu, %.lr.ph ], [ %.0991, %bb.g ]
  %.09901128 = phi <4 x float> [ %i.bs, %.lr.ph ], [ %.0991, %bb.g ]
  %.19921127 = phi <4 x float> [ %i.bq, %.lr.ph ], [ %.0991, %bb.g ]
  %i.az = load float, ptr %.01671132, align 4, !tbaa !52
  %i.ba = insertelement <4 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = getelementptr inbounds nuw i8, ptr %.01671132, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !52
  %i.be = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = getelementptr inbounds nuw i8, ptr %.01671132, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !52
  %i.bi = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = getelementptr inbounds nuw i8, ptr %.01671132, i64 12
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !52
  %i.bm = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = load <4 x float>, ptr %.01681131, align 1, !tbaa !49 ; 4 uses
  %i.bp = fmul fast <4 x float> %i.bo, %i.bb
  %i.bq = fadd fast <4 x float> %i.bp, %.19921127 ; 2 uses
  %i.br = fmul fast <4 x float> %i.bo, %i.bf
  %i.bs = fadd fast <4 x float> %i.br, %.09901128 ; 2 uses
  %i.bt = fmul fast <4 x float> %i.bj, %i.bo
  %i.bu = fadd fast <4 x float> %i.bt, %.09891129 ; 2 uses
  %i.bv = fmul fast <4 x float> %i.bn, %i.bo
  %i.bw = fadd fast <4 x float> %i.bv, %.09881130 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01671132, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %.01681131, i64 16
  %i.bz = add nuw nsw i32 %.01661133, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bz, %i.ax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %.1992.lcssa = phi <4 x float> [ %.0991, %bb.g ], [ %i.bq, %.lr.ph ] ; 10 uses
  %.0990.lcssa = phi <4 x float> [ %.0991, %bb.g ], [ %i.bs, %.lr.ph ] ; 10 uses
  %.0989.lcssa = phi <4 x float> [ %.0991, %bb.g ], [ %i.bu, %.lr.ph ] ; 10 uses
  %.0988.lcssa = phi <4 x float> [ %.0991, %bb.g ], [ %i.bw, %.lr.ph ] ; 10 uses
  %i.ca = load i32, ptr %11, align 4, !tbaa !57
  switch i32 %i.ca, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1007
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread: ; preds = %._crit_edge
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1992.lcssa, <4 x float> zeroinitializer)
  %i.cc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0990.lcssa, <4 x float> zeroinitializer)
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0989.lcssa, <4 x float> zeroinitializer)
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0988.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998: ; preds = %._crit_edge
  %i.cf = load ptr, ptr %12, align 8, !tbaa !19
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !52
  %i.ch = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1992.lcssa)
  %i.ci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1992.lcssa)
  %i.cj = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cl = fmul fast <4 x float> %i.ck, %i.ci
  %i.cm = fadd fast <4 x float> %i.cl, %i.ch
  %i.cn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0990.lcssa)
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0990.lcssa)
  %i.cp = fmul fast <4 x float> %i.ck, %i.co
  %i.cq = fadd fast <4 x float> %i.cp, %i.cn
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0989.lcssa)
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0989.lcssa)
  %i.ct = fmul fast <4 x float> %i.ck, %i.cs
  %i.cu = fadd fast <4 x float> %i.ct, %i.cr
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0988.lcssa)
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0988.lcssa)
  %i.cx = fmul fast <4 x float> %i.ck, %i.cw
  %i.cy = fadd fast <4 x float> %i.cx, %i.cv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001: ; preds = %._crit_edge
  %i.cz = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !52
  %i.db = insertelement <4 x float> poison, float %i.da, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !52
  %i.df = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1992.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.di = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.dg)
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0990.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.dg)
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0989.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.dm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dl, <4 x float> nofpclass(nan inf) %i.dg)
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0988.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dn, <4 x float> nofpclass(nan inf) %i.dg)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004: ; preds = %._crit_edge
  %i.dp = fneg fast <4 x float> %.1992.lcssa
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> splat (float f0x42B0C0A5))
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ds = fmul fast <4 x float> %i.dr, splat (float f0x3FB8AA3B)
  %i.dt = fadd fast <4 x float> %i.ds, splat (float 5.000000e-01) ; 2 uses
  %i.du = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dt)
  %i.dv = sitofp fast <4 x i32> %i.du to <4 x float> ; 2 uses
  %i.dw = fcmp fast olt <4 x float> %i.dt, %i.dv
  %i.dx = select <4 x i1> %i.dw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dy = fsub fast <4 x float> %i.dv, %i.dx      ; 2 uses
  %i.dz = fmul fast <4 x float> %i.dy, splat (float f0x3F317218)
  %i.ea = fsub fast <4 x float> %i.dr, %i.dz      ; 8 uses
  %i.eb = fmul fast <4 x float> %i.ea, %i.ea
  %i.ec = fmul fast <4 x float> %i.ea, splat (float f0x39506967)
  %i.ed = fadd fast <4 x float> %i.ec, splat (float f0x3AB743CE)
  %i.ee = fmul fast <4 x float> %i.ed, %i.ea
  %i.ef = fadd fast <4 x float> %i.ee, splat (float f0x3C088908)
  %i.eg = fmul fast <4 x float> %i.ef, %i.ea
  %i.eh = fadd fast <4 x float> %i.eg, splat (float f0x3D2AA9C1)
  %i.ei = fmul fast <4 x float> %i.eh, %i.ea
  %i.ej = fadd fast <4 x float> %i.ei, splat (float f0x3E2AAAAA)
  %i.ek = fmul fast <4 x float> %i.ej, %i.ea
  %i.el = fadd fast <4 x float> %i.ek, splat (float 5.000000e-01)
  %i.em = fmul fast <4 x float> %i.eb, %i.el
  %i.en = fadd fast <4 x float> %i.ea, %i.em
  %i.eo = fadd fast <4 x float> %i.en, splat (float 1.000000e+00)
  %i.ep = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dy)
  %i.eq = shl <4 x i32> %i.ep, splat (i32 23)
  %i.er = add <4 x i32> %i.eq, splat (i32 1065353216)
  %i.es = bitcast <4 x i32> %i.er to <4 x float>
  %i.et = fmul fast <4 x float> %i.eo, %i.es
  %i.eu = fadd fast <4 x float> %i.et, splat (float 1.000000e+00)
  %i.ev = fdiv fast <4 x float> splat (float 1.000000e+00), %i.eu
  %i.ew = fneg fast <4 x float> %.0990.lcssa
  %i.ex = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ew, <4 x float> splat (float f0x42B0C0A5))
  %i.ey = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ex, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ez = fmul fast <4 x float> %i.ey, splat (float f0x3FB8AA3B)
  %i.fa = fadd fast <4 x float> %i.ez, splat (float 5.000000e-01) ; 2 uses
  %i.fb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fa)
  %i.fc = sitofp fast <4 x i32> %i.fb to <4 x float> ; 2 uses
  %i.fd = fcmp fast olt <4 x float> %i.fa, %i.fc
  %i.fe = select <4 x i1> %i.fd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ff = fsub fast <4 x float> %i.fc, %i.fe      ; 2 uses
  %i.fg = fmul fast <4 x float> %i.ff, splat (float f0x3F317218)
  %i.fh = fsub fast <4 x float> %i.ey, %i.fg      ; 8 uses
  %i.fi = fmul fast <4 x float> %i.fh, %i.fh
  %i.fj = fmul fast <4 x float> %i.fh, splat (float f0x39506967)
  %i.fk = fadd fast <4 x float> %i.fj, splat (float f0x3AB743CE)
  %i.fl = fmul fast <4 x float> %i.fk, %i.fh
  %i.fm = fadd fast <4 x float> %i.fl, splat (float f0x3C088908)
  %i.fn = fmul fast <4 x float> %i.fm, %i.fh
  %i.fo = fadd fast <4 x float> %i.fn, splat (float f0x3D2AA9C1)
  %i.fp = fmul fast <4 x float> %i.fo, %i.fh
  %i.fq = fadd fast <4 x float> %i.fp, splat (float f0x3E2AAAAA)
  %i.fr = fmul fast <4 x float> %i.fq, %i.fh
  %i.fs = fadd fast <4 x float> %i.fr, splat (float 5.000000e-01)
  %i.ft = fmul fast <4 x float> %i.fi, %i.fs
  %i.fu = fadd fast <4 x float> %i.fh, %i.ft
  %i.fv = fadd fast <4 x float> %i.fu, splat (float 1.000000e+00)
  %i.fw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ff)
  %i.fx = shl <4 x i32> %i.fw, splat (i32 23)
  %i.fy = add <4 x i32> %i.fx, splat (i32 1065353216)
  %i.fz = bitcast <4 x i32> %i.fy to <4 x float>
  %i.ga = fmul fast <4 x float> %i.fv, %i.fz
  %i.gb = fadd fast <4 x float> %i.ga, splat (float 1.000000e+00)
  %i.gc = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gb
  %i.gd = fneg fast <4 x float> %.0989.lcssa
  %i.ge = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gd, <4 x float> splat (float f0x42B0C0A5))
  %i.gf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ge, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gg = fmul fast <4 x float> %i.gf, splat (float f0x3FB8AA3B)
  %i.gh = fadd fast <4 x float> %i.gg, splat (float 5.000000e-01) ; 2 uses
  %i.gi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gh)
  %i.gj = sitofp fast <4 x i32> %i.gi to <4 x float> ; 2 uses
  %i.gk = fcmp fast olt <4 x float> %i.gh, %i.gj
  %i.gl = select <4 x i1> %i.gk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gm = fsub fast <4 x float> %i.gj, %i.gl      ; 2 uses
  %i.gn = fmul fast <4 x float> %i.gm, splat (float f0x3F317218)
  %i.go = fsub fast <4 x float> %i.gf, %i.gn      ; 8 uses
  %i.gp = fmul fast <4 x float> %i.go, %i.go
  %i.gq = fmul fast <4 x float> %i.go, splat (float f0x39506967)
  %i.gr = fadd fast <4 x float> %i.gq, splat (float f0x3AB743CE)
  %i.gs = fmul fast <4 x float> %i.gr, %i.go
  %i.gt = fadd fast <4 x float> %i.gs, splat (float f0x3C088908)
  %i.gu = fmul fast <4 x float> %i.gt, %i.go
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3D2AA9C1)
  %i.gw = fmul fast <4 x float> %i.gv, %i.go
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0x3E2AAAAA)
  %i.gy = fmul fast <4 x float> %i.gx, %i.go
  %i.gz = fadd fast <4 x float> %i.gy, splat (float 5.000000e-01)
  %i.ha = fmul fast <4 x float> %i.gp, %i.gz
  %i.hb = fadd fast <4 x float> %i.go, %i.ha
  %i.hc = fadd fast <4 x float> %i.hb, splat (float 1.000000e+00)
  %i.hd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gm)
  %i.he = shl <4 x i32> %i.hd, splat (i32 23)
  %i.hf = add <4 x i32> %i.he, splat (i32 1065353216)
  %i.hg = bitcast <4 x i32> %i.hf to <4 x float>
  %i.hh = fmul fast <4 x float> %i.hc, %i.hg
  %i.hi = fadd fast <4 x float> %i.hh, splat (float 1.000000e+00)
  %i.hj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.hi
  %i.hk = fneg fast <4 x float> %.0988.lcssa
  %i.hl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hk, <4 x float> splat (float f0x42B0C0A5))
  %i.hm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hn = fmul fast <4 x float> %i.hm, splat (float f0x3FB8AA3B)
  %i.ho = fadd fast <4 x float> %i.hn, splat (float 5.000000e-01) ; 2 uses
  %i.hp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ho)
  %i.hq = sitofp fast <4 x i32> %i.hp to <4 x float> ; 2 uses
  %i.hr = fcmp fast olt <4 x float> %i.ho, %i.hq
  %i.hs = select <4 x i1> %i.hr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ht = fsub fast <4 x float> %i.hq, %i.hs      ; 2 uses
  %i.hu = fmul fast <4 x float> %i.ht, splat (float f0x3F317218)
  %i.hv = fsub fast <4 x float> %i.hm, %i.hu      ; 8 uses
  %i.hw = fmul fast <4 x float> %i.hv, %i.hv
  %i.hx = fmul fast <4 x float> %i.hv, splat (float f0x39506967)
  %i.hy = fadd fast <4 x float> %i.hx, splat (float f0x3AB743CE)
  %i.hz = fmul fast <4 x float> %i.hy, %i.hv
  %i.ia = fadd fast <4 x float> %i.hz, splat (float f0x3C088908)
  %i.ib = fmul fast <4 x float> %i.ia, %i.hv
  %i.ic = fadd fast <4 x float> %i.ib, splat (float f0x3D2AA9C1)
  %i.id = fmul fast <4 x float> %i.ic, %i.hv
  %i.ie = fadd fast <4 x float> %i.id, splat (float f0x3E2AAAAA)
  %i.if = fmul fast <4 x float> %i.ie, %i.hv
  %i.ig = fadd fast <4 x float> %i.if, splat (float 5.000000e-01)
  %i.ih = fmul fast <4 x float> %i.hw, %i.ig
  %i.ii = fadd fast <4 x float> %i.hv, %i.ih
  %i.ij = fadd fast <4 x float> %i.ii, splat (float 1.000000e+00)
  %i.ik = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ht)
  %i.il = shl <4 x i32> %i.ik, splat (i32 23)
  %i.im = add <4 x i32> %i.il, splat (i32 1065353216)
  %i.in = bitcast <4 x i32> %i.im to <4 x float>
  %i.io = fmul fast <4 x float> %i.ij, %i.in
  %i.ip = fadd fast <4 x float> %i.io, splat (float 1.000000e+00)
  %i.iq = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ip
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1007: ; preds = %._crit_edge
  %i.ir = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.1992.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.is = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ir, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.it = fmul fast <4 x float> %i.is, splat (float f0x3FB8AA3B)
  %i.iu = fadd fast <4 x float> %i.it, splat (float 5.000000e-01) ; 2 uses
  %i.iv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.iu)
  %i.iw = sitofp fast <4 x i32> %i.iv to <4 x float> ; 2 uses
  %i.ix = fcmp fast olt <4 x float> %i.iu, %i.iw
  %i.iy = select <4 x i1> %i.ix, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.iz = fsub fast <4 x float> %i.iw, %i.iy      ; 2 uses
  %i.ja = fmul fast <4 x float> %i.iz, splat (float f0x3F317218)
  %i.jb = fsub fast <4 x float> %i.is, %i.ja      ; 8 uses
  %i.jc = fmul fast <4 x float> %i.jb, %i.jb
  %i.jd = fmul fast <4 x float> %i.jb, splat (float f0x39506967)
  %i.je = fadd fast <4 x float> %i.jd, splat (float f0x3AB743CE)
  %i.jf = fmul fast <4 x float> %i.je, %i.jb
  %i.jg = fadd fast <4 x float> %i.jf, splat (float f0x3C088908)
  %i.jh = fmul fast <4 x float> %i.jg, %i.jb
  %i.ji = fadd fast <4 x float> %i.jh, splat (float f0x3D2AA9C1)
  %i.jj = fmul fast <4 x float> %i.ji, %i.jb
  %i.jk = fadd fast <4 x float> %i.jj, splat (float f0x3E2AAAAA)
  %i.jl = fmul fast <4 x float> %i.jk, %i.jb
  %i.jm = fadd fast <4 x float> %i.jl, splat (float 5.000000e-01)
  %i.jn = fmul fast <4 x float> %i.jc, %i.jm
  %i.jo = fadd fast <4 x float> %i.jb, %i.jn
  %i.jp = fadd fast <4 x float> %i.jo, splat (float 1.000000e+00)
  %i.jq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.iz)
  %i.jr = shl <4 x i32> %i.jq, splat (i32 23)
  %i.js = add <4 x i32> %i.jr, splat (i32 1065353216)
  %i.jt = bitcast <4 x i32> %i.js to <4 x float>
  %i.ju = fmul fast <4 x float> %i.jp, %i.jt
  %i.jv = fadd fast <4 x float> %i.ju, splat (float 1.000000e+00) ; 2 uses
  %i.jw = fcmp fast ole <4 x float> %i.jv, zeroinitializer
  %i.jx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jv, <4 x float> splat (float f0x00800000))
  %i.jy = bitcast <4 x float> %i.jx to <4 x i32>  ; 2 uses
  %i.jz = lshr <4 x i32> %i.jy, splat (i32 23)
  %i.ka = and <4 x i32> %i.jy, splat (i32 -2139095041)
  %i.kb = or disjoint <4 x i32> %i.ka, splat (i32 1056964608)
  %i.kc = bitcast <4 x i32> %i.kb to <4 x float>  ; 3 uses
  %i.kd = add nsw <4 x i32> %i.jz, splat (i32 -127)
  %i.ke = sitofp fast <4 x i32> %i.kd to <4 x float> ; 2 uses
  %i.kf = fadd fast <4 x float> %i.ke, splat (float 1.000000e+00)
  %i.kg = fcmp fast olt <4 x float> %i.kc, splat (float f0x3F3504F3) ; 2 uses
  %i.kh = select <4 x i1> %i.kg, <4 x float> %i.kc, <4 x float> zeroinitializer
  %i.ki = fadd fast <4 x float> %i.kc, splat (float -1.000000e+00)
  %i.kj = select fast <4 x i1> %i.kg, <4 x float> %i.ke, <4 x float> %i.kf
  %i.kk = fadd fast <4 x float> %i.ki, %i.kh      ; 12 uses
  %i.kl = fmul fast <4 x float> %i.kk, %i.kk
  %i.km = fmul fast <4 x float> %i.kk, splat (float f0x3D9021BB)
  %i.kn = fadd fast <4 x float> %i.km, splat (float f0xBDEBD1B8)
  %i.ko = fmul fast <4 x float> %i.kn, %i.kk
  %i.kp = fadd fast <4 x float> %i.ko, splat (float f0x3DEF251A)
  %i.kq = fmul fast <4 x float> %i.kp, %i.kk
  %i.kr = fadd fast <4 x float> %i.kq, splat (float f0xBDFE5D4F)
  %i.ks = fmul fast <4 x float> %i.kr, %i.kk
  %i.kt = fadd fast <4 x float> %i.ks, splat (float f0x3E11E9BF)
  %i.ku = fmul fast <4 x float> %i.kt, %i.kk
  %i.kv = fadd fast <4 x float> %i.ku, splat (float f0xBE2AAE50)
  %i.kw = fmul fast <4 x float> %i.kv, %i.kk
  %i.kx = fadd fast <4 x float> %i.kw, splat (float f0x3E4CCEAC)
  %i.ky = fmul fast <4 x float> %i.kx, %i.kk
  %i.kz = fadd fast <4 x float> %i.ky, splat (float f0xBE7FFFFC)
  %i.la = fmul fast <4 x float> %i.kz, %i.kk
  %i.lb = fadd fast <4 x float> %i.la, splat (float f0x3EAAAAAA)
  %i.lc = fmul fast <4 x float> %i.lb, %i.kk
  %reass.mul1107 = fmul fast <4 x float> %i.kj, splat (float f0x3F317218)
  %reass.add1117 = fadd fast <4 x float> %i.lc, splat (float -5.000000e-01)
  %reass.mul1118 = fmul fast <4 x float> %i.kl, %reass.add1117
  %i.ld = fadd fast <4 x float> %reass.mul1107, %i.kk
  %i.le = fadd fast <4 x float> %i.ld, %reass.mul1118
  %.neg1095 = fmul fast <4 x float> %i.le, splat (float -2.000000e+00)
  %i.lf = select fast <4 x i1> %i.jw, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1095
  %i.lg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lf, <4 x float> splat (float f0x42B0C0A5))
  %i.lh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.li = fmul fast <4 x float> %i.lh, splat (float f0x3FB8AA3B)
  %i.lj = fadd fast <4 x float> %i.li, splat (float 5.000000e-01) ; 2 uses
  %i.lk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lj)
  %i.ll = sitofp fast <4 x i32> %i.lk to <4 x float> ; 2 uses
  %i.lm = fcmp fast olt <4 x float> %i.lj, %i.ll
  %i.ln = select <4 x i1> %i.lm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.lo = fsub fast <4 x float> %i.ll, %i.ln      ; 2 uses
  %i.lp = fmul fast <4 x float> %i.lo, splat (float f0x3F317218)
  %i.lq = fsub fast <4 x float> %i.lh, %i.lp      ; 8 uses
  %i.lr = fmul fast <4 x float> %i.lq, %i.lq
  %i.ls = fmul fast <4 x float> %i.lq, splat (float f0x39506967)
  %i.lt = fadd fast <4 x float> %i.ls, splat (float f0x3AB743CE)
  %i.lu = fmul fast <4 x float> %i.lt, %i.lq
  %i.lv = fadd fast <4 x float> %i.lu, splat (float f0x3C088908)
  %i.lw = fmul fast <4 x float> %i.lv, %i.lq
  %i.lx = fadd fast <4 x float> %i.lw, splat (float f0x3D2AA9C1)
  %i.ly = fmul fast <4 x float> %i.lx, %i.lq
  %i.lz = fadd fast <4 x float> %i.ly, splat (float f0x3E2AAAAA)
  %i.ma = fmul fast <4 x float> %i.lz, %i.lq
  %i.mb = fadd fast <4 x float> %i.ma, splat (float 5.000000e-01)
  %i.mc = fmul fast <4 x float> %i.lr, %i.mb
  %i.md = fadd fast <4 x float> %i.lq, %i.mc
  %i.me = fadd fast <4 x float> %i.md, splat (float 1.000000e+00)
  %i.mf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lo)
  %i.mg = shl <4 x i32> %i.mf, splat (i32 23)
  %i.mh = add <4 x i32> %i.mg, splat (i32 1065353216)
  %i.mi = bitcast <4 x i32> %i.mh to <4 x float>
  %i.mj = fmul fast <4 x float> %i.me, %i.mi
  %i.mk = fadd fast <4 x float> %i.mj, splat (float 1.000000e+00)
  %i.ml = fdiv fast <4 x float> splat (float 2.000000e+00), %i.mk
  %i.mm = fadd fast <4 x float> %i.ml, splat (float -1.000000e+00)
  %i.mn = fmul fast <4 x float> %i.mm, %.1992.lcssa
  %i.mo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0990.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.mp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mo, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mq = fmul fast <4 x float> %i.mp, splat (float f0x3FB8AA3B)
  %i.mr = fadd fast <4 x float> %i.mq, splat (float 5.000000e-01) ; 2 uses
  %i.ms = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mr)
  %i.mt = sitofp fast <4 x i32> %i.ms to <4 x float> ; 2 uses
  %i.mu = fcmp fast olt <4 x float> %i.mr, %i.mt
  %i.mv = select <4 x i1> %i.mu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mw = fsub fast <4 x float> %i.mt, %i.mv      ; 2 uses
  %i.mx = fmul fast <4 x float> %i.mw, splat (float f0x3F317218)
  %i.my = fsub fast <4 x float> %i.mp, %i.mx      ; 8 uses
  %i.mz = fmul fast <4 x float> %i.my, %i.my
  %i.na = fmul fast <4 x float> %i.my, splat (float f0x39506967)
  %i.nb = fadd fast <4 x float> %i.na, splat (float f0x3AB743CE)
  %i.nc = fmul fast <4 x float> %i.nb, %i.my
  %i.nd = fadd fast <4 x float> %i.nc, splat (float f0x3C088908)
  %i.ne = fmul fast <4 x float> %i.nd, %i.my
  %i.nf = fadd fast <4 x float> %i.ne, splat (float f0x3D2AA9C1)
  %i.ng = fmul fast <4 x float> %i.nf, %i.my
  %i.nh = fadd fast <4 x float> %i.ng, splat (float f0x3E2AAAAA)
  %i.ni = fmul fast <4 x float> %i.nh, %i.my
  %i.nj = fadd fast <4 x float> %i.ni, splat (float 5.000000e-01)
  %i.nk = fmul fast <4 x float> %i.mz, %i.nj
  %i.nl = fadd fast <4 x float> %i.my, %i.nk
  %i.nm = fadd fast <4 x float> %i.nl, splat (float 1.000000e+00)
  %i.nn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mw)
  %i.no = shl <4 x i32> %i.nn, splat (i32 23)
  %i.np = add <4 x i32> %i.no, splat (i32 1065353216)
  %i.nq = bitcast <4 x i32> %i.np to <4 x float>
  %i.nr = fmul fast <4 x float> %i.nm, %i.nq
  %i.ns = fadd fast <4 x float> %i.nr, splat (float 1.000000e+00) ; 2 uses
  %i.nt = fcmp fast ole <4 x float> %i.ns, zeroinitializer
  %i.nu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ns, <4 x float> splat (float f0x00800000))
  %i.nv = bitcast <4 x float> %i.nu to <4 x i32>  ; 2 uses
  %i.nw = lshr <4 x i32> %i.nv, splat (i32 23)
  %i.nx = and <4 x i32> %i.nv, splat (i32 -2139095041)
  %i.ny = or disjoint <4 x i32> %i.nx, splat (i32 1056964608)
  %i.nz = bitcast <4 x i32> %i.ny to <4 x float>  ; 3 uses
  %i.oa = add nsw <4 x i32> %i.nw, splat (i32 -127)
  %i.ob = sitofp fast <4 x i32> %i.oa to <4 x float> ; 2 uses
  %i.oc = fadd fast <4 x float> %i.ob, splat (float 1.000000e+00)
  %i.od = fcmp fast olt <4 x float> %i.nz, splat (float f0x3F3504F3) ; 2 uses
  %i.oe = select <4 x i1> %i.od, <4 x float> %i.nz, <4 x float> zeroinitializer
  %i.of = fadd fast <4 x float> %i.nz, splat (float -1.000000e+00)
  %i.og = select fast <4 x i1> %i.od, <4 x float> %i.ob, <4 x float> %i.oc
  %i.oh = fadd fast <4 x float> %i.of, %i.oe      ; 12 uses
  %i.oi = fmul fast <4 x float> %i.oh, %i.oh
  %i.oj = fmul fast <4 x float> %i.oh, splat (float f0x3D9021BB)
  %i.ok = fadd fast <4 x float> %i.oj, splat (float f0xBDEBD1B8)
  %i.ol = fmul fast <4 x float> %i.ok, %i.oh
  %i.om = fadd fast <4 x float> %i.ol, splat (float f0x3DEF251A)
  %i.on = fmul fast <4 x float> %i.om, %i.oh
  %i.oo = fadd fast <4 x float> %i.on, splat (float f0xBDFE5D4F)
  %i.op = fmul fast <4 x float> %i.oo, %i.oh
  %i.oq = fadd fast <4 x float> %i.op, splat (float f0x3E11E9BF)
  %i.or = fmul fast <4 x float> %i.oq, %i.oh
  %i.os = fadd fast <4 x float> %i.or, splat (float f0xBE2AAE50)
  %i.ot = fmul fast <4 x float> %i.os, %i.oh
  %i.ou = fadd fast <4 x float> %i.ot, splat (float f0x3E4CCEAC)
  %i.ov = fmul fast <4 x float> %i.ou, %i.oh
  %i.ow = fadd fast <4 x float> %i.ov, splat (float f0xBE7FFFFC)
  %i.ox = fmul fast <4 x float> %i.ow, %i.oh
  %i.oy = fadd fast <4 x float> %i.ox, splat (float f0x3EAAAAAA)
  %i.oz = fmul fast <4 x float> %i.oy, %i.oh
  %reass.mul1110 = fmul fast <4 x float> %i.og, splat (float f0x3F317218)
  %reass.add1119 = fadd fast <4 x float> %i.oz, splat (float -5.000000e-01)
  %reass.mul1120 = fmul fast <4 x float> %i.oi, %reass.add1119
  %i.pa = fadd fast <4 x float> %reass.mul1110, %i.oh
  %i.pb = fadd fast <4 x float> %i.pa, %reass.mul1120
  %.neg1096 = fmul fast <4 x float> %i.pb, splat (float -2.000000e+00)
  %i.pc = select fast <4 x i1> %i.nt, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1096
  %i.pd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pc, <4 x float> splat (float f0x42B0C0A5))
  %i.pe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pf = fmul fast <4 x float> %i.pe, splat (float f0x3FB8AA3B)
  %i.pg = fadd fast <4 x float> %i.pf, splat (float 5.000000e-01) ; 2 uses
  %i.ph = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pg)
  %i.pi = sitofp fast <4 x i32> %i.ph to <4 x float> ; 2 uses
  %i.pj = fcmp fast olt <4 x float> %i.pg, %i.pi
  %i.pk = select <4 x i1> %i.pj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.pl = fsub fast <4 x float> %i.pi, %i.pk      ; 2 uses
  %i.pm = fmul fast <4 x float> %i.pl, splat (float f0x3F317218)
  %i.pn = fsub fast <4 x float> %i.pe, %i.pm      ; 8 uses
  %i.po = fmul fast <4 x float> %i.pn, %i.pn
  %i.pp = fmul fast <4 x float> %i.pn, splat (float f0x39506967)
  %i.pq = fadd fast <4 x float> %i.pp, splat (float f0x3AB743CE)
  %i.pr = fmul fast <4 x float> %i.pq, %i.pn
  %i.ps = fadd fast <4 x float> %i.pr, splat (float f0x3C088908)
  %i.pt = fmul fast <4 x float> %i.ps, %i.pn
  %i.pu = fadd fast <4 x float> %i.pt, splat (float f0x3D2AA9C1)
  %i.pv = fmul fast <4 x float> %i.pu, %i.pn
  %i.pw = fadd fast <4 x float> %i.pv, splat (float f0x3E2AAAAA)
  %i.px = fmul fast <4 x float> %i.pw, %i.pn
  %i.py = fadd fast <4 x float> %i.px, splat (float 5.000000e-01)
  %i.pz = fmul fast <4 x float> %i.po, %i.py
  %i.qa = fadd fast <4 x float> %i.pn, %i.pz
  %i.qb = fadd fast <4 x float> %i.qa, splat (float 1.000000e+00)
  %i.qc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pl)
  %i.qd = shl <4 x i32> %i.qc, splat (i32 23)
  %i.qe = add <4 x i32> %i.qd, splat (i32 1065353216)
  %i.qf = bitcast <4 x i32> %i.qe to <4 x float>
  %i.qg = fmul fast <4 x float> %i.qb, %i.qf
  %i.qh = fadd fast <4 x float> %i.qg, splat (float 1.000000e+00)
  %i.qi = fdiv fast <4 x float> splat (float 2.000000e+00), %i.qh
  %i.qj = fadd fast <4 x float> %i.qi, splat (float -1.000000e+00)
  %i.qk = fmul fast <4 x float> %i.qj, %.0990.lcssa
  %i.ql = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0989.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.qm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ql, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.qn = fmul fast <4 x float> %i.qm, splat (float f0x3FB8AA3B)
  %i.qo = fadd fast <4 x float> %i.qn, splat (float 5.000000e-01) ; 2 uses
  %i.qp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qo)
  %i.qq = sitofp fast <4 x i32> %i.qp to <4 x float> ; 2 uses
  %i.qr = fcmp fast olt <4 x float> %i.qo, %i.qq
  %i.qs = select <4 x i1> %i.qr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qt = fsub fast <4 x float> %i.qq, %i.qs      ; 2 uses
  %i.qu = fmul fast <4 x float> %i.qt, splat (float f0x3F317218)
  %i.qv = fsub fast <4 x float> %i.qm, %i.qu      ; 8 uses
  %i.qw = fmul fast <4 x float> %i.qv, %i.qv
  %i.qx = fmul fast <4 x float> %i.qv, splat (float f0x39506967)
  %i.qy = fadd fast <4 x float> %i.qx, splat (float f0x3AB743CE)
  %i.qz = fmul fast <4 x float> %i.qy, %i.qv
  %i.ra = fadd fast <4 x float> %i.qz, splat (float f0x3C088908)
  %i.rb = fmul fast <4 x float> %i.ra, %i.qv
  %i.rc = fadd fast <4 x float> %i.rb, splat (float f0x3D2AA9C1)
  %i.rd = fmul fast <4 x float> %i.rc, %i.qv
  %i.re = fadd fast <4 x float> %i.rd, splat (float f0x3E2AAAAA)
  %i.rf = fmul fast <4 x float> %i.re, %i.qv
  %i.rg = fadd fast <4 x float> %i.rf, splat (float 5.000000e-01)
  %i.rh = fmul fast <4 x float> %i.qw, %i.rg
  %i.ri = fadd fast <4 x float> %i.qv, %i.rh
  %i.rj = fadd fast <4 x float> %i.ri, splat (float 1.000000e+00)
  %i.rk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qt)
  %i.rl = shl <4 x i32> %i.rk, splat (i32 23)
  %i.rm = add <4 x i32> %i.rl, splat (i32 1065353216)
  %i.rn = bitcast <4 x i32> %i.rm to <4 x float>
  %i.ro = fmul fast <4 x float> %i.rj, %i.rn
  %i.rp = fadd fast <4 x float> %i.ro, splat (float 1.000000e+00) ; 2 uses
  %i.rq = fcmp fast ole <4 x float> %i.rp, zeroinitializer
  %i.rr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rp, <4 x float> splat (float f0x00800000))
  %i.rs = bitcast <4 x float> %i.rr to <4 x i32>  ; 2 uses
  %i.rt = lshr <4 x i32> %i.rs, splat (i32 23)
  %i.ru = and <4 x i32> %i.rs, splat (i32 -2139095041)
  %i.rv = or disjoint <4 x i32> %i.ru, splat (i32 1056964608)
  %i.rw = bitcast <4 x i32> %i.rv to <4 x float>  ; 3 uses
  %i.rx = add nsw <4 x i32> %i.rt, splat (i32 -127)
  %i.ry = sitofp fast <4 x i32> %i.rx to <4 x float> ; 2 uses
  %i.rz = fadd fast <4 x float> %i.ry, splat (float 1.000000e+00)
  %i.sa = fcmp fast olt <4 x float> %i.rw, splat (float f0x3F3504F3) ; 2 uses
  %i.sb = select <4 x i1> %i.sa, <4 x float> %i.rw, <4 x float> zeroinitializer
  %i.sc = fadd fast <4 x float> %i.rw, splat (float -1.000000e+00)
  %i.sd = select fast <4 x i1> %i.sa, <4 x float> %i.ry, <4 x float> %i.rz
  %i.se = fadd fast <4 x float> %i.sc, %i.sb      ; 12 uses
  %i.sf = fmul fast <4 x float> %i.se, %i.se
  %i.sg = fmul fast <4 x float> %i.se, splat (float f0x3D9021BB)
  %i.sh = fadd fast <4 x float> %i.sg, splat (float f0xBDEBD1B8)
  %i.si = fmul fast <4 x float> %i.sh, %i.se
  %i.sj = fadd fast <4 x float> %i.si, splat (float f0x3DEF251A)
  %i.sk = fmul fast <4 x float> %i.sj, %i.se
  %i.sl = fadd fast <4 x float> %i.sk, splat (float f0xBDFE5D4F)
  %i.sm = fmul fast <4 x float> %i.sl, %i.se
  %i.sn = fadd fast <4 x float> %i.sm, splat (float f0x3E11E9BF)
  %i.so = fmul fast <4 x float> %i.sn, %i.se
  %i.sp = fadd fast <4 x float> %i.so, splat (float f0xBE2AAE50)
  %i.sq = fmul fast <4 x float> %i.sp, %i.se
  %i.sr = fadd fast <4 x float> %i.sq, splat (float f0x3E4CCEAC)
  %i.ss = fmul fast <4 x float> %i.sr, %i.se
  %i.st = fadd fast <4 x float> %i.ss, splat (float f0xBE7FFFFC)
  %i.su = fmul fast <4 x float> %i.st, %i.se
  %i.sv = fadd fast <4 x float> %i.su, splat (float f0x3EAAAAAA)
  %i.sw = fmul fast <4 x float> %i.sv, %i.se
  %reass.mul1113 = fmul fast <4 x float> %i.sd, splat (float f0x3F317218)
  %reass.add1121 = fadd fast <4 x float> %i.sw, splat (float -5.000000e-01)
  %reass.mul1122 = fmul fast <4 x float> %i.sf, %reass.add1121
  %i.sx = fadd fast <4 x float> %reass.mul1113, %i.se
  %i.sy = fadd fast <4 x float> %i.sx, %reass.mul1122
  %.neg1097 = fmul fast <4 x float> %i.sy, splat (float -2.000000e+00)
  %i.sz = select fast <4 x i1> %i.rq, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1097
  %i.ta = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.sz, <4 x float> splat (float f0x42B0C0A5))
  %i.tb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ta, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.tc = fmul fast <4 x float> %i.tb, splat (float f0x3FB8AA3B)
  %i.td = fadd fast <4 x float> %i.tc, splat (float 5.000000e-01) ; 2 uses
  %i.te = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.td)
  %i.tf = sitofp fast <4 x i32> %i.te to <4 x float> ; 2 uses
  %i.tg = fcmp fast olt <4 x float> %i.td, %i.tf
  %i.th = select <4 x i1> %i.tg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ti = fsub fast <4 x float> %i.tf, %i.th      ; 2 uses
  %i.tj = fmul fast <4 x float> %i.ti, splat (float f0x3F317218)
  %i.tk = fsub fast <4 x float> %i.tb, %i.tj      ; 8 uses
  %i.tl = fmul fast <4 x float> %i.tk, %i.tk
  %i.tm = fmul fast <4 x float> %i.tk, splat (float f0x39506967)
  %i.tn = fadd fast <4 x float> %i.tm, splat (float f0x3AB743CE)
  %i.to = fmul fast <4 x float> %i.tn, %i.tk
  %i.tp = fadd fast <4 x float> %i.to, splat (float f0x3C088908)
  %i.tq = fmul fast <4 x float> %i.tp, %i.tk
  %i.tr = fadd fast <4 x float> %i.tq, splat (float f0x3D2AA9C1)
  %i.ts = fmul fast <4 x float> %i.tr, %i.tk
  %i.tt = fadd fast <4 x float> %i.ts, splat (float f0x3E2AAAAA)
  %i.tu = fmul fast <4 x float> %i.tt, %i.tk
  %i.tv = fadd fast <4 x float> %i.tu, splat (float 5.000000e-01)
  %i.tw = fmul fast <4 x float> %i.tl, %i.tv
  %i.tx = fadd fast <4 x float> %i.tk, %i.tw
  %i.ty = fadd fast <4 x float> %i.tx, splat (float 1.000000e+00)
  %i.tz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ti)
  %i.ua = shl <4 x i32> %i.tz, splat (i32 23)
  %i.ub = add <4 x i32> %i.ua, splat (i32 1065353216)
  %i.uc = bitcast <4 x i32> %i.ub to <4 x float>
  %i.ud = fmul fast <4 x float> %i.ty, %i.uc
  %i.ue = fadd fast <4 x float> %i.ud, splat (float 1.000000e+00)
  %i.uf = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ue
  %i.ug = fadd fast <4 x float> %i.uf, splat (float -1.000000e+00)
  %i.uh = fmul fast <4 x float> %i.ug, %.0989.lcssa
  %i.ui = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0988.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.uj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ui, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.uk = fmul fast <4 x float> %i.uj, splat (float f0x3FB8AA3B)
  %i.ul = fadd fast <4 x float> %i.uk, splat (float 5.000000e-01) ; 2 uses
  %i.um = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ul)
  %i.un = sitofp fast <4 x i32> %i.um to <4 x float> ; 2 uses
  %i.uo = fcmp fast olt <4 x float> %i.ul, %i.un
  %i.up = select <4 x i1> %i.uo, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.uq = fsub fast <4 x float> %i.un, %i.up      ; 2 uses
  %i.ur = fmul fast <4 x float> %i.uq, splat (float f0x3F317218)
  %i.us = fsub fast <4 x float> %i.uj, %i.ur      ; 8 uses
  %i.ut = fmul fast <4 x float> %i.us, %i.us
  %i.uu = fmul fast <4 x float> %i.us, splat (float f0x39506967)
  %i.uv = fadd fast <4 x float> %i.uu, splat (float f0x3AB743CE)
  %i.uw = fmul fast <4 x float> %i.uv, %i.us
  %i.ux = fadd fast <4 x float> %i.uw, splat (float f0x3C088908)
  %i.uy = fmul fast <4 x float> %i.ux, %i.us
  %i.uz = fadd fast <4 x float> %i.uy, splat (float f0x3D2AA9C1)
  %i.va = fmul fast <4 x float> %i.uz, %i.us
  %i.vb = fadd fast <4 x float> %i.va, splat (float f0x3E2AAAAA)
  %i.vc = fmul fast <4 x float> %i.vb, %i.us
  %i.vd = fadd fast <4 x float> %i.vc, splat (float 5.000000e-01)
  %i.ve = fmul fast <4 x float> %i.ut, %i.vd
  %i.vf = fadd fast <4 x float> %i.us, %i.ve
  %i.vg = fadd fast <4 x float> %i.vf, splat (float 1.000000e+00)
  %i.vh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.uq)
  %i.vi = shl <4 x i32> %i.vh, splat (i32 23)
  %i.vj = add <4 x i32> %i.vi, splat (i32 1065353216)
  %i.vk = bitcast <4 x i32> %i.vj to <4 x float>
  %i.vl = fmul fast <4 x float> %i.vg, %i.vk
  %i.vm = fadd fast <4 x float> %i.vl, splat (float 1.000000e+00) ; 2 uses
  %i.vn = fcmp fast ole <4 x float> %i.vm, zeroinitializer
  %i.vo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.vm, <4 x float> splat (float f0x00800000))
  %i.vp = bitcast <4 x float> %i.vo to <4 x i32>  ; 2 uses
  %i.vq = lshr <4 x i32> %i.vp, splat (i32 23)
  %i.vr = and <4 x i32> %i.vp, splat (i32 -2139095041)
  %i.vs = or disjoint <4 x i32> %i.vr, splat (i32 1056964608)
  %i.vt = bitcast <4 x i32> %i.vs to <4 x float>  ; 3 uses
  %i.vu = add nsw <4 x i32> %i.vq, splat (i32 -127)
  %i.vv = sitofp fast <4 x i32> %i.vu to <4 x float> ; 2 uses
  %i.vw = fadd fast <4 x float> %i.vv, splat (float 1.000000e+00)
  %i.vx = fcmp fast olt <4 x float> %i.vt, splat (float f0x3F3504F3) ; 2 uses
  %i.vy = select <4 x i1> %i.vx, <4 x float> %i.vt, <4 x float> zeroinitializer
  %i.vz = fadd fast <4 x float> %i.vt, splat (float -1.000000e+00)
  %i.wa = select fast <4 x i1> %i.vx, <4 x float> %i.vv, <4 x float> %i.vw
  %i.wb = fadd fast <4 x float> %i.vz, %i.vy      ; 12 uses
  %i.wc = fmul fast <4 x float> %i.wb, %i.wb
  %i.wd = fmul fast <4 x float> %i.wb, splat (float f0x3D9021BB)
  %i.we = fadd fast <4 x float> %i.wd, splat (float f0xBDEBD1B8)
  %i.wf = fmul fast <4 x float> %i.we, %i.wb
  %i.wg = fadd fast <4 x float> %i.wf, splat (float f0x3DEF251A)
  %i.wh = fmul fast <4 x float> %i.wg, %i.wb
  %i.wi = fadd fast <4 x float> %i.wh, splat (float f0xBDFE5D4F)
  %i.wj = fmul fast <4 x float> %i.wi, %i.wb
  %i.wk = fadd fast <4 x float> %i.wj, splat (float f0x3E11E9BF)
  %i.wl = fmul fast <4 x float> %i.wk, %i.wb
  %i.wm = fadd fast <4 x float> %i.wl, splat (float f0xBE2AAE50)
  %i.wn = fmul fast <4 x float> %i.wm, %i.wb
  %i.wo = fadd fast <4 x float> %i.wn, splat (float f0x3E4CCEAC)
  %i.wp = fmul fast <4 x float> %i.wo, %i.wb
  %i.wq = fadd fast <4 x float> %i.wp, splat (float f0xBE7FFFFC)
  %i.wr = fmul fast <4 x float> %i.wq, %i.wb
  %i.ws = fadd fast <4 x float> %i.wr, splat (float f0x3EAAAAAA)
  %i.wt = fmul fast <4 x float> %i.ws, %i.wb
  %reass.mul1116 = fmul fast <4 x float> %i.wa, splat (float f0x3F317218)
  %reass.add1123 = fadd fast <4 x float> %i.wt, splat (float -5.000000e-01)
  %reass.mul1124 = fmul fast <4 x float> %i.wc, %reass.add1123
  %i.wu = fadd fast <4 x float> %reass.mul1116, %i.wb
  %i.wv = fadd fast <4 x float> %i.wu, %reass.mul1124
  %.neg1098 = fmul fast <4 x float> %i.wv, splat (float -2.000000e+00)
  %i.ww = select fast <4 x i1> %i.vn, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1098
  %i.wx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ww, <4 x float> splat (float f0x42B0C0A5))
  %i.wy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.wz = fmul fast <4 x float> %i.wy, splat (float f0x3FB8AA3B)
  %i.xa = fadd fast <4 x float> %i.wz, splat (float 5.000000e-01) ; 2 uses
  %i.xb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xa)
  %i.xc = sitofp fast <4 x i32> %i.xb to <4 x float> ; 2 uses
  %i.xd = fcmp fast olt <4 x float> %i.xa, %i.xc
  %i.xe = select <4 x i1> %i.xd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.xf = fsub fast <4 x float> %i.xc, %i.xe      ; 2 uses
  %i.xg = fmul fast <4 x float> %i.xf, splat (float f0x3F317218)
  %i.xh = fsub fast <4 x float> %i.wy, %i.xg      ; 8 uses
  %i.xi = fmul fast <4 x float> %i.xh, %i.xh
  %i.xj = fmul fast <4 x float> %i.xh, splat (float f0x39506967)
  %i.xk = fadd fast <4 x float> %i.xj, splat (float f0x3AB743CE)
  %i.xl = fmul fast <4 x float> %i.xk, %i.xh
  %i.xm = fadd fast <4 x float> %i.xl, splat (float f0x3C088908)
  %i.xn = fmul fast <4 x float> %i.xm, %i.xh
  %i.xo = fadd fast <4 x float> %i.xn, splat (float f0x3D2AA9C1)
  %i.xp = fmul fast <4 x float> %i.xo, %i.xh
  %i.xq = fadd fast <4 x float> %i.xp, splat (float f0x3E2AAAAA)
  %i.xr = fmul fast <4 x float> %i.xq, %i.xh
  %i.xs = fadd fast <4 x float> %i.xr, splat (float 5.000000e-01)
  %i.xt = fmul fast <4 x float> %i.xi, %i.xs
  %i.xu = fadd fast <4 x float> %i.xh, %i.xt
  %i.xv = fadd fast <4 x float> %i.xu, splat (float 1.000000e+00)
  %i.xw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xf)
  %i.xx = shl <4 x i32> %i.xw, splat (i32 23)
  %i.xy = add <4 x i32> %i.xx, splat (i32 1065353216)
  %i.xz = bitcast <4 x i32> %i.xy to <4 x float>
  %i.ya = fmul fast <4 x float> %i.xv, %i.xz
  %i.yb = fadd fast <4 x float> %i.ya, splat (float 1.000000e+00)
  %i.yc = fdiv fast <4 x float> splat (float 2.000000e+00), %i.yb
  %i.yd = fadd fast <4 x float> %i.yc, splat (float -1.000000e+00)
  %i.ye = fmul fast <4 x float> %i.yd, %.0988.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010: ; preds = %._crit_edge
  %i.yf = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !52
  %i.yh = insertelement <4 x float> poison, float %i.yg, i64 0
  %i.yi = shufflevector <4 x float> %i.yh, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yf, i64 4
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !52
  %i.yl = insertelement <4 x float> poison, float %i.yk, i64 0
  %i.ym = shufflevector <4 x float> %i.yl, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.yn = fmul fast <4 x float> %i.yi, %.1992.lcssa
  %i.yo = fadd fast <4 x float> %i.yn, %i.ym
  %i.yp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yo, <4 x float> zeroinitializer)
  %i.yq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yp, <4 x float> splat (float 1.000000e+00))
  %i.yr = fmul fast <4 x float> %i.yq, %.1992.lcssa
  %i.ys = fmul fast <4 x float> %i.yi, %.0990.lcssa
  %i.yt = fadd fast <4 x float> %i.ys, %i.ym
  %i.yu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yt, <4 x float> zeroinitializer)
  %i.yv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yu, <4 x float> splat (float 1.000000e+00))
  %i.yw = fmul fast <4 x float> %i.yv, %.0990.lcssa
  %i.yx = fmul fast <4 x float> %i.yi, %.0989.lcssa
  %i.yy = fadd fast <4 x float> %i.yx, %i.ym
  %i.yz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yy, <4 x float> zeroinitializer)
  %i.za = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yz, <4 x float> splat (float 1.000000e+00))
  %i.zb = fmul fast <4 x float> %i.za, %.0989.lcssa
  %i.zc = fmul fast <4 x float> %i.yi, %.0988.lcssa
  %i.zd = fadd fast <4 x float> %i.zc, %i.ym
  %i.ze = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zd, <4 x float> zeroinitializer)
  %i.zf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ze, <4 x float> splat (float 1.000000e+00))
  %i.zg = fmul fast <4 x float> %i.zf, %.0988.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193:   ; preds = %._crit_edge, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1007, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread
  %.0.i1941052 = phi <4 x float> [ %i.zb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010 ], [ %i.cd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread ], [ %i.cu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998 ], [ %i.dm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001 ], [ %i.hj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004 ], [ %i.uh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1007 ], [ %.0989.lcssa, %._crit_edge ] ; 2 uses
  %.0.i20699710161050 = phi <4 x float> [ %i.yr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010 ], [ %i.cb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread ], [ %i.cm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998 ], [ %i.di, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001 ], [ %i.ev, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004 ], [ %i.mn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1007 ], [ %.1992.lcssa, %._crit_edge ] ; 2 uses
  %.0.i20010181048 = phi <4 x float> [ %i.yw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010 ], [ %i.cc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread ], [ %i.cq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998 ], [ %i.dk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001 ], [ %i.gc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004 ], [ %i.qk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1007 ], [ %.0990.lcssa, %._crit_edge ] ; 2 uses
  %.0.i188 = phi nsz <4 x float> [ %i.zg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1010 ], [ %i.ce, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread ], [ %i.cy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread998 ], [ %i.do, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1001 ], [ %i.iq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1004 ], [ %i.ye, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit211.thread1007 ], [ %.0988.lcssa, %._crit_edge ] ; 2 uses
  %i.zh = shufflevector <4 x float> %.0.i20699710161050, <4 x float> %.0.i20010181048, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.zi = shufflevector <4 x float> %.0.i1941052, <4 x float> %.0.i188, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.zj = shufflevector <4 x float> %.0.i20699710161050, <4 x float> %.0.i20010181048, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.zk = shufflevector <4 x float> %.0.i1941052, <4 x float> %.0.i188, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.zl = shufflevector <4 x float> %i.zh, <4 x float> %i.zi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.zm = shufflevector <4 x float> %i.zi, <4 x float> %i.zh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.zn = shufflevector <4 x float> %i.zj, <4 x float> %i.zk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.zo = shufflevector <4 x float> %i.zk, <4 x float> %i.zj, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.zl, ptr %.01701137, align 1, !tbaa !49
  %i.zp = getelementptr inbounds nuw i8, ptr %.01701137, i64 16
  store <4 x float> %i.zm, ptr %i.zp, align 1, !tbaa !49
  %i.zq = getelementptr inbounds nuw i8, ptr %.01701137, i64 32
  store <4 x float> %i.zn, ptr %i.zq, align 1, !tbaa !49
  %i.zr = getelementptr inbounds nuw i8, ptr %.01701137, i64 48
  store <4 x float> %i.zo, ptr %i.zr, align 1, !tbaa !49
  %i.zs = getelementptr inbounds nuw i8, ptr %.01701137, i64 64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.zt = load i32, ptr %6, align 4, !tbaa !57
  %i.zu = load i32, ptr %4, align 4, !tbaa !57
  %i.zv = sdiv i32 %i.zt, %i.zu
  %i.zw = sext i32 %i.zv to i64
  %i.zx = icmp slt i64 %indvars.iv.next, %i.zw
  br i1 %i.zx, label %.lr.ph1140, label %thread-pre-split.loopexit, !llvm.loop !105

thread-pre-split.loopexit:                        ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit193
  %.pr.pre = load i32, ptr %3, align 4, !tbaa !57 ; 3 uses
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %thread-pre-split.loopexit, %bb.c
  %.pr10891280 = phi i32 [ %.pr10891282, %bb.c ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %.pr10891282, %bb.e ] ; 3 uses
  %.pr10911271 = phi i32 [ %.pr10911274, %bb.c ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %.pr10911274, %bb.e ] ; 3 uses
  %i.zy = phi i32 [ %i.t, %bb.c ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %.pr1270, %bb.e ]
  %i.zz = icmp eq i32 %i.zy, 1
  br i1 %i.zz, label %bb.h, label %.thread

bb.h:                                             ; preds = %thread-pre-split
  %i.aaa = load i32, ptr %4, align 4, !tbaa !57
  %i.aab = icmp eq i32 %i.aaa, 4
  br i1 %i.aab, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aac = load i32, ptr %6, align 4, !tbaa !57
  %i.aad = icmp sgt i32 %i.aac, 3
  br i1 %i.aad, label %.lr.ph1168.preheader, label %.thread

.lr.ph1168.preheader:                             ; preds = %bb.i
  %i.aae = load ptr, ptr %5, align 8, !tbaa !19
  %i.aaf = load i32, ptr %i.l, align 4, !tbaa !47
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = mul nsw i64 %indvars.iv1263, %i.aag
  %i.aai = load i64, ptr %i.m, align 8, !tbaa !48
  %i.aaj = mul i64 %i.aah, %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aae, i64 %i.aaj
  br label %.lr.ph1168

.lr.ph1168:                                       ; preds = %.lr.ph1168.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187
  %indvars.iv1251 = phi i64 [ 0, %.lr.ph1168.preheader ], [ %indvars.iv.next1252, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187 ] ; 3 uses
  %.01641165 = phi ptr [ %i.aak, %.lr.ph1168.preheader ], [ %i.akv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187 ] ; 2 uses
  %i.aal = load ptr, ptr %7, align 8, !tbaa !19
  %i.aam = load i32, ptr %i.n, align 4, !tbaa !47
  %i.aan = sext i32 %i.aam to i64
  %i.aao = mul nsw i64 %indvars.iv1251, %i.aan
  %i.aap = load i64, ptr %i.o, align 8, !tbaa !48
  %i.aaq = mul i64 %i.aao, %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aaq ; 2 uses
  %i.aas = load ptr, ptr %8, align 8, !tbaa !19
  %i.aat = load i32, ptr %i.p, align 4, !tbaa !47
  %i.aau = sext i32 %i.aat to i64
  %i.aav = mul nsw i64 %indvars.iv1263, %i.aau
  %i.aaw = load i64, ptr %i.q, align 8, !tbaa !48
  %i.aax = mul i64 %i.aav, %i.aaw
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.aax ; 2 uses
  %i.aaz = load ptr, ptr %9, align 8, !tbaa !65   ; 2 uses
  %.not177 = icmp eq ptr %i.aaz, null
  br i1 %.not177, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph1168
  %.idx1303 = shl nuw nsw i64 %indvars.iv1251, 4
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %.idx1303
  %i.abb = load <4 x float>, ptr %i.aba, align 1, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph1168
  %.0985 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1168 ], [ %i.abb, %bb.j ] ; 2 uses
  %i.abc = load i32, ptr %10, align 4, !tbaa !57  ; 7 uses
  %i.abd = icmp sgt i32 %i.abc, 3
  br i1 %i.abd, label %.lr.ph1149, label %.preheader1126

.preheader1126.loopexit:                          ; preds = %.lr.ph1149
  %i.abe = and i32 %i.abc, 2147483644
  %i.abf = fadd fast <4 x float> %i.acu, %i.acs
  %i.abg = fadd fast <4 x float> %i.abf, %i.acw
  br label %.preheader1126

.preheader1126:                                   ; preds = %.preheader1126.loopexit, %bb.k
  %.1986.lcssa = phi <4 x float> [ %.0985, %bb.k ], [ %i.acq, %.preheader1126.loopexit ] ; 3 uses
  %.0983.lcssa = phi <4 x float> [ zeroinitializer, %bb.k ], [ %i.abg, %.preheader1126.loopexit ]
  %.0161.lcssa = phi ptr [ %i.aar, %bb.k ], [ %i.acy, %.preheader1126.loopexit ] ; 2 uses
  %.0159.lcssa = phi ptr [ %i.aay, %bb.k ], [ %i.acx, %.preheader1126.loopexit ] ; 2 uses
  %.0157.lcssa = phi i32 [ 0, %bb.k ], [ %i.abe, %.preheader1126.loopexit ] ; 4 uses
  %i.abh = icmp slt i32 %.0157.lcssa, %i.abc
  br i1 %i.abh, label %.lr.ph1162.preheader, label %._crit_edge1163

.lr.ph1162.preheader:                             ; preds = %.preheader1126
  %xtraiter = and i32 %i.abc, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1162.prol.loopexit, label %.lr.ph1162.prol

.lr.ph1162.prol:                                  ; preds = %.lr.ph1162.preheader, %.lr.ph1162.prol
  %.11581161.prol = phi i32 [ %i.abq, %.lr.ph1162.prol ], [ %.0157.lcssa, %.lr.ph1162.preheader ]
  %.11601160.prol = phi ptr [ %i.abo, %.lr.ph1162.prol ], [ %.0159.lcssa, %.lr.ph1162.preheader ] ; 2 uses
  %.11621159.prol = phi ptr [ %i.abp, %.lr.ph1162.prol ], [ %.0161.lcssa, %.lr.ph1162.preheader ] ; 2 uses
  %.29871158.prol = phi <4 x float> [ %i.abn, %.lr.ph1162.prol ], [ %.1986.lcssa, %.lr.ph1162.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1162.prol ], [ 0, %.lr.ph1162.preheader ]
  %i.abi = load float, ptr %.11601160.prol, align 4, !tbaa !52
  %i.abj = insertelement <4 x float> poison, float %i.abi, i64 0
  %i.abk = shufflevector <4 x float> %i.abj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abl = load <4 x float>, ptr %.11621159.prol, align 1, !tbaa !49
  %i.abm = fmul fast <4 x float> %i.abk, %i.abl
  %i.abn = fadd fast <4 x float> %i.abm, %.29871158.prol ; 3 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %.11601160.prol, i64 4 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.11621159.prol, i64 16 ; 2 uses
  %i.abq = add nuw nsw i32 %.11581161.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1162.prol.loopexit, label %.lr.ph1162.prol, !llvm.loop !106

.lr.ph1162.prol.loopexit:                         ; preds = %.lr.ph1162.prol, %.lr.ph1162.preheader
  %.lcssa1363.unr = phi <4 x float> [ poison, %.lr.ph1162.preheader ], [ %i.abn, %.lr.ph1162.prol ]
  %.11581161.unr = phi i32 [ %.0157.lcssa, %.lr.ph1162.preheader ], [ %i.abq, %.lr.ph1162.prol ]
  %.11601160.unr = phi ptr [ %.0159.lcssa, %.lr.ph1162.preheader ], [ %i.abo, %.lr.ph1162.prol ]
  %.11621159.unr = phi ptr [ %.0161.lcssa, %.lr.ph1162.preheader ], [ %i.abp, %.lr.ph1162.prol ]
  %.29871158.unr = phi <4 x float> [ %.1986.lcssa, %.lr.ph1162.preheader ], [ %i.abn, %.lr.ph1162.prol ]
  %i.abr = sub i32 %.0157.lcssa, %i.abc
  %i.abs = icmp ugt i32 %i.abr, -4
  br i1 %i.abs, label %._crit_edge1163, label %.lr.ph1162

.lr.ph1149:                                       ; preds = %bb.k, %.lr.ph1149
  %.01571147 = phi i32 [ %i.acz, %.lr.ph1149 ], [ 0, %bb.k ]
  %.01591146 = phi ptr [ %i.acx, %.lr.ph1149 ], [ %i.aay, %bb.k ] ; 5 uses
  %.01611145 = phi ptr [ %i.acy, %.lr.ph1149 ], [ %i.aar, %bb.k ] ; 5 uses
  %.09821144 = phi <4 x float> [ %i.acw, %.lr.ph1149 ], [ zeroinitializer, %bb.k ]
  %.09831143 = phi <4 x float> [ %i.acu, %.lr.ph1149 ], [ zeroinitializer, %bb.k ]
  %.09841142 = phi <4 x float> [ %i.acs, %.lr.ph1149 ], [ zeroinitializer, %bb.k ]
  %.19861141 = phi <4 x float> [ %i.acq, %.lr.ph1149 ], [ %.0985, %bb.k ]
  %i.abt = load float, ptr %.01591146, align 4, !tbaa !52
  %i.abu = insertelement <4 x float> poison, float %i.abt, i64 0
  %i.abv = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abw = getelementptr inbounds nuw i8, ptr %.01591146, i64 4
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !52
  %i.aby = insertelement <4 x float> poison, float %i.abx, i64 0
  %i.abz = shufflevector <4 x float> %i.aby, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aca = getelementptr inbounds nuw i8, ptr %.01591146, i64 8
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !52
  %i.acc = insertelement <4 x float> poison, float %i.acb, i64 0
  %i.acd = shufflevector <4 x float> %i.acc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ace = getelementptr inbounds nuw i8, ptr %.01591146, i64 12
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !52
  %i.acg = insertelement <4 x float> poison, float %i.acf, i64 0
  %i.ach = shufflevector <4 x float> %i.acg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aci = load <4 x float>, ptr %.01611145, align 1, !tbaa !49
  %i.acj = getelementptr inbounds nuw i8, ptr %.01611145, i64 16
  %i.ack = load <4 x float>, ptr %i.acj, align 1, !tbaa !49
  %i.acl = getelementptr inbounds nuw i8, ptr %.01611145, i64 32
  %i.acm = load <4 x float>, ptr %i.acl, align 1, !tbaa !49
  %i.acn = getelementptr inbounds nuw i8, ptr %.01611145, i64 48
  %i.aco = load <4 x float>, ptr %i.acn, align 1, !tbaa !49
  %i.acp = fmul fast <4 x float> %i.aci, %i.abv
  %i.acq = fadd fast <4 x float> %i.acp, %.19861141 ; 2 uses
  %i.acr = fmul fast <4 x float> %i.ack, %i.abz
  %i.acs = fadd fast <4 x float> %i.acr, %.09841142 ; 2 uses
  %i.act = fmul fast <4 x float> %i.acm, %i.acd
  %i.acu = fadd fast <4 x float> %i.act, %.09831143 ; 2 uses
  %i.acv = fmul fast <4 x float> %i.aco, %i.ach
  %i.acw = fadd fast <4 x float> %i.acv, %.09821144 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.01591146, i64 16 ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %.01611145, i64 64 ; 2 uses
  %i.acz = add nuw nsw i32 %.01571147, 4          ; 2 uses
  %i.ada = or disjoint i32 %i.acz, 3
  %i.adb = icmp slt i32 %i.ada, %i.abc
  br i1 %i.adb, label %.lr.ph1149, label %.preheader1126.loopexit, !llvm.loop !107

.lr.ph1162:                                       ; preds = %.lr.ph1162.prol.loopexit, %.lr.ph1162
  %.11581161 = phi i32 [ %i.aei, %.lr.ph1162 ], [ %.11581161.unr, %.lr.ph1162.prol.loopexit ]
  %.11601160 = phi ptr [ %i.aeg, %.lr.ph1162 ], [ %.11601160.unr, %.lr.ph1162.prol.loopexit ] ; 5 uses
  %.11621159 = phi ptr [ %i.aeh, %.lr.ph1162 ], [ %.11621159.unr, %.lr.ph1162.prol.loopexit ] ; 5 uses
  %.29871158 = phi <4 x float> [ %i.aef, %.lr.ph1162 ], [ %.29871158.unr, %.lr.ph1162.prol.loopexit ]
  %i.adc = load float, ptr %.11601160, align 4, !tbaa !52
  %i.add = insertelement <4 x float> poison, float %i.adc, i64 0
  %i.ade = shufflevector <4 x float> %i.add, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adf = load <4 x float>, ptr %.11621159, align 1, !tbaa !49
  %i.adg = fmul fast <4 x float> %i.ade, %i.adf
  %i.adh = fadd fast <4 x float> %i.adg, %.29871158
  %i.adi = getelementptr inbounds nuw i8, ptr %.11601160, i64 4
  %i.adj = getelementptr inbounds nuw i8, ptr %.11621159, i64 16
  %i.adk = load float, ptr %i.adi, align 4, !tbaa !52
  %i.adl = insertelement <4 x float> poison, float %i.adk, i64 0
  %i.adm = shufflevector <4 x float> %i.adl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adn = load <4 x float>, ptr %i.adj, align 1, !tbaa !49
  %i.ado = fmul fast <4 x float> %i.adm, %i.adn
  %i.adp = fadd fast <4 x float> %i.ado, %i.adh
  %i.adq = getelementptr inbounds nuw i8, ptr %.11601160, i64 8
  %i.adr = getelementptr inbounds nuw i8, ptr %.11621159, i64 32
  %i.ads = load float, ptr %i.adq, align 4, !tbaa !52
  %i.adt = insertelement <4 x float> poison, float %i.ads, i64 0
  %i.adu = shufflevector <4 x float> %i.adt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adv = load <4 x float>, ptr %i.adr, align 1, !tbaa !49
  %i.adw = fmul fast <4 x float> %i.adu, %i.adv
  %i.adx = fadd fast <4 x float> %i.adw, %i.adp
  %i.ady = getelementptr inbounds nuw i8, ptr %.11601160, i64 12
  %i.adz = getelementptr inbounds nuw i8, ptr %.11621159, i64 48
  %i.aea = load float, ptr %i.ady, align 4, !tbaa !52
  %i.aeb = insertelement <4 x float> poison, float %i.aea, i64 0
  %i.aec = shufflevector <4 x float> %i.aeb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aed = load <4 x float>, ptr %i.adz, align 1, !tbaa !49
  %i.aee = fmul fast <4 x float> %i.aec, %i.aed
  %i.aef = fadd fast <4 x float> %i.aee, %i.adx   ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.11601160, i64 16
  %i.aeh = getelementptr inbounds nuw i8, ptr %.11621159, i64 64
  %i.aei = add nuw nsw i32 %.11581161, 4          ; 2 uses
  %exitcond1250.not.3 = icmp eq i32 %i.aei, %i.abc
  br i1 %exitcond1250.not.3, label %._crit_edge1163, label %.lr.ph1162, !llvm.loop !108

._crit_edge1163:                                  ; preds = %.lr.ph1162.prol.loopexit, %.lr.ph1162, %.preheader1126
  %.2987.lcssa = phi <4 x float> [ %.1986.lcssa, %.preheader1126 ], [ %.lcssa1363.unr, %.lr.ph1162.prol.loopexit ], [ %i.aef, %.lr.ph1162 ]
  %i.aej = fadd fast <4 x float> %.0983.lcssa, %.2987.lcssa ; 10 uses
  %i.aek = load i32, ptr %11, align 4, !tbaa !57
  switch i32 %i.aek, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187 [
    i32 1, label %bb.l
    i32 2, label %.noexc183
    i32 3, label %bb.m
    i32 4, label %.noexc184
    i32 5, label %.noexc185
    i32 6, label %.noexc186
  ]

bb.l:                                             ; preds = %._crit_edge1163
  %i.ael = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aej, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187

.noexc183:                                        ; preds = %._crit_edge1163
  %i.aem = load ptr, ptr %12, align 8, !tbaa !19
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !52
  %i.aeo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aej)
  %i.aep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aej)
  %i.aeq = insertelement <4 x float> poison, float %i.aen, i64 0
  %i.aer = shufflevector <4 x float> %i.aeq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aes = fmul fast <4 x float> %i.aer, %i.aep
  %i.aet = fadd fast <4 x float> %i.aes, %i.aeo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187

bb.m:                                             ; preds = %._crit_edge1163
  %i.aeu = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !52
  %i.aew = insertelement <4 x float> poison, float %i.aev, i64 0
  %i.aex = shufflevector <4 x float> %i.aew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !52
  %i.afa = insertelement <4 x float> poison, float %i.aez, i64 0
  %i.afb = shufflevector <4 x float> %i.afa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aej, <4 x float> nofpclass(nan inf) %i.aex)
  %i.afd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.afc, <4 x float> nofpclass(nan inf) %i.afb)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187

.noexc184:                                        ; preds = %._crit_edge1163
  %i.afe = fneg fast <4 x float> %i.aej
  %i.aff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.afe, <4 x float> splat (float f0x42B0C0A5))
  %i.afg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aff, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.afh = fmul fast <4 x float> %i.afg, splat (float f0x3FB8AA3B)
  %i.afi = fadd fast <4 x float> %i.afh, splat (float 5.000000e-01) ; 2 uses
  %i.afj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afi)
  %i.afk = sitofp fast <4 x i32> %i.afj to <4 x float> ; 2 uses
  %i.afl = fcmp fast olt <4 x float> %i.afi, %i.afk
  %i.afm = select <4 x i1> %i.afl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.afn = fsub fast <4 x float> %i.afk, %i.afm   ; 2 uses
  %i.afo = fmul fast <4 x float> %i.afn, splat (float f0x3F317218)
  %i.afp = fsub fast <4 x float> %i.afg, %i.afo   ; 8 uses
  %i.afq = fmul fast <4 x float> %i.afp, %i.afp
  %i.afr = fmul fast <4 x float> %i.afp, splat (float f0x39506967)
  %i.afs = fadd fast <4 x float> %i.afr, splat (float f0x3AB743CE)
  %i.aft = fmul fast <4 x float> %i.afs, %i.afp
  %i.afu = fadd fast <4 x float> %i.aft, splat (float f0x3C088908)
  %i.afv = fmul fast <4 x float> %i.afu, %i.afp
  %i.afw = fadd fast <4 x float> %i.afv, splat (float f0x3D2AA9C1)
  %i.afx = fmul fast <4 x float> %i.afw, %i.afp
  %i.afy = fadd fast <4 x float> %i.afx, splat (float f0x3E2AAAAA)
  %i.afz = fmul fast <4 x float> %i.afy, %i.afp
  %i.aga = fadd fast <4 x float> %i.afz, splat (float 5.000000e-01)
  %i.agb = fmul fast <4 x float> %i.afq, %i.aga
  %i.agc = fadd fast <4 x float> %i.afp, %i.agb
  %i.agd = fadd fast <4 x float> %i.agc, splat (float 1.000000e+00)
  %i.age = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afn)
  %i.agf = shl <4 x i32> %i.age, splat (i32 23)
  %i.agg = add <4 x i32> %i.agf, splat (i32 1065353216)
  %i.agh = bitcast <4 x i32> %i.agg to <4 x float>
  %i.agi = fmul fast <4 x float> %i.agd, %i.agh
  %i.agj = fadd fast <4 x float> %i.agi, splat (float 1.000000e+00)
  %i.agk = fdiv fast <4 x float> splat (float 1.000000e+00), %i.agj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187

.noexc185:                                        ; preds = %._crit_edge1163
  %i.agl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aej, <4 x float> splat (float f0x42B0C0A5))
  %i.agm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.agl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agn = fmul fast <4 x float> %i.agm, splat (float f0x3FB8AA3B)
  %i.ago = fadd fast <4 x float> %i.agn, splat (float 5.000000e-01) ; 2 uses
  %i.agp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ago)
  %i.agq = sitofp fast <4 x i32> %i.agp to <4 x float> ; 2 uses
  %i.agr = fcmp fast olt <4 x float> %i.ago, %i.agq
  %i.ags = select <4 x i1> %i.agr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.agt = fsub fast <4 x float> %i.agq, %i.ags   ; 2 uses
  %i.agu = fmul fast <4 x float> %i.agt, splat (float f0x3F317218)
  %i.agv = fsub fast <4 x float> %i.agm, %i.agu   ; 8 uses
  %i.agw = fmul fast <4 x float> %i.agv, %i.agv
  %i.agx = fmul fast <4 x float> %i.agv, splat (float f0x39506967)
  %i.agy = fadd fast <4 x float> %i.agx, splat (float f0x3AB743CE)
  %i.agz = fmul fast <4 x float> %i.agy, %i.agv
  %i.aha = fadd fast <4 x float> %i.agz, splat (float f0x3C088908)
  %i.ahb = fmul fast <4 x float> %i.aha, %i.agv
  %i.ahc = fadd fast <4 x float> %i.ahb, splat (float f0x3D2AA9C1)
  %i.ahd = fmul fast <4 x float> %i.ahc, %i.agv
  %i.ahe = fadd fast <4 x float> %i.ahd, splat (float f0x3E2AAAAA)
  %i.ahf = fmul fast <4 x float> %i.ahe, %i.agv
  %i.ahg = fadd fast <4 x float> %i.ahf, splat (float 5.000000e-01)
  %i.ahh = fmul fast <4 x float> %i.agw, %i.ahg
  %i.ahi = fadd fast <4 x float> %i.agv, %i.ahh
  %i.ahj = fadd fast <4 x float> %i.ahi, splat (float 1.000000e+00)
  %i.ahk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agt)
  %i.ahl = shl <4 x i32> %i.ahk, splat (i32 23)
  %i.ahm = add <4 x i32> %i.ahl, splat (i32 1065353216)
  %i.ahn = bitcast <4 x i32> %i.ahm to <4 x float>
  %i.aho = fmul fast <4 x float> %i.ahj, %i.ahn
  %i.ahp = fadd fast <4 x float> %i.aho, splat (float 1.000000e+00) ; 2 uses
  %i.ahq = fcmp fast ole <4 x float> %i.ahp, zeroinitializer
  %i.ahr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ahp, <4 x float> splat (float f0x00800000))
  %i.ahs = bitcast <4 x float> %i.ahr to <4 x i32> ; 2 uses
  %i.aht = lshr <4 x i32> %i.ahs, splat (i32 23)
  %i.ahu = and <4 x i32> %i.ahs, splat (i32 -2139095041)
  %i.ahv = or disjoint <4 x i32> %i.ahu, splat (i32 1056964608)
  %i.ahw = bitcast <4 x i32> %i.ahv to <4 x float> ; 3 uses
  %i.ahx = add nsw <4 x i32> %i.aht, splat (i32 -127)
  %i.ahy = sitofp fast <4 x i32> %i.ahx to <4 x float> ; 2 uses
  %i.ahz = fadd fast <4 x float> %i.ahy, splat (float 1.000000e+00)
  %i.aia = fcmp fast olt <4 x float> %i.ahw, splat (float f0x3F3504F3) ; 2 uses
  %i.aib = select <4 x i1> %i.aia, <4 x float> %i.ahw, <4 x float> zeroinitializer
  %i.aic = fadd fast <4 x float> %i.ahw, splat (float -1.000000e+00)
  %i.aid = select fast <4 x i1> %i.aia, <4 x float> %i.ahy, <4 x float> %i.ahz
  %i.aie = fadd fast <4 x float> %i.aic, %i.aib   ; 12 uses
  %i.aif = fmul fast <4 x float> %i.aie, %i.aie
  %i.aig = fmul fast <4 x float> %i.aie, splat (float f0x3D9021BB)
  %i.aih = fadd fast <4 x float> %i.aig, splat (float f0xBDEBD1B8)
  %i.aii = fmul fast <4 x float> %i.aih, %i.aie
  %i.aij = fadd fast <4 x float> %i.aii, splat (float f0x3DEF251A)
  %i.aik = fmul fast <4 x float> %i.aij, %i.aie
  %i.ail = fadd fast <4 x float> %i.aik, splat (float f0xBDFE5D4F)
  %i.aim = fmul fast <4 x float> %i.ail, %i.aie
  %i.ain = fadd fast <4 x float> %i.aim, splat (float f0x3E11E9BF)
  %i.aio = fmul fast <4 x float> %i.ain, %i.aie
  %i.aip = fadd fast <4 x float> %i.aio, splat (float f0xBE2AAE50)
  %i.aiq = fmul fast <4 x float> %i.aip, %i.aie
  %i.air = fadd fast <4 x float> %i.aiq, splat (float f0x3E4CCEAC)
  %i.ais = fmul fast <4 x float> %i.air, %i.aie
  %i.ait = fadd fast <4 x float> %i.ais, splat (float f0xBE7FFFFC)
  %i.aiu = fmul fast <4 x float> %i.ait, %i.aie
  %i.aiv = fadd fast <4 x float> %i.aiu, splat (float f0x3EAAAAAA)
  %i.aiw = fmul fast <4 x float> %i.aiv, %i.aie
  %reass.mul1103 = fmul fast <4 x float> %i.aid, splat (float f0x3F317218)
  %reass.add1104 = fadd fast <4 x float> %i.aiw, splat (float -5.000000e-01)
  %reass.mul1105 = fmul fast <4 x float> %i.aif, %reass.add1104
  %i.aix = fadd fast <4 x float> %reass.mul1103, %i.aie
  %i.aiy = fadd fast <4 x float> %i.aix, %reass.mul1105
  %.neg1094 = fmul fast <4 x float> %i.aiy, splat (float -2.000000e+00)
  %i.aiz = select fast <4 x i1> %i.ahq, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1094
  %i.aja = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aiz, <4 x float> splat (float f0x42B0C0A5))
  %i.ajb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aja, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ajc = fmul fast <4 x float> %i.ajb, splat (float f0x3FB8AA3B)
  %i.ajd = fadd fast <4 x float> %i.ajc, splat (float 5.000000e-01) ; 2 uses
  %i.aje = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajd)
  %i.ajf = sitofp fast <4 x i32> %i.aje to <4 x float> ; 2 uses
  %i.ajg = fcmp fast olt <4 x float> %i.ajd, %i.ajf
  %i.ajh = select <4 x i1> %i.ajg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aji = fsub fast <4 x float> %i.ajf, %i.ajh   ; 2 uses
  %i.ajj = fmul fast <4 x float> %i.aji, splat (float f0x3F317218)
  %i.ajk = fsub fast <4 x float> %i.ajb, %i.ajj   ; 8 uses
  %i.ajl = fmul fast <4 x float> %i.ajk, %i.ajk
  %i.ajm = fmul fast <4 x float> %i.ajk, splat (float f0x39506967)
  %i.ajn = fadd fast <4 x float> %i.ajm, splat (float f0x3AB743CE)
  %i.ajo = fmul fast <4 x float> %i.ajn, %i.ajk
  %i.ajp = fadd fast <4 x float> %i.ajo, splat (float f0x3C088908)
  %i.ajq = fmul fast <4 x float> %i.ajp, %i.ajk
  %i.ajr = fadd fast <4 x float> %i.ajq, splat (float f0x3D2AA9C1)
  %i.ajs = fmul fast <4 x float> %i.ajr, %i.ajk
  %i.ajt = fadd fast <4 x float> %i.ajs, splat (float f0x3E2AAAAA)
  %i.aju = fmul fast <4 x float> %i.ajt, %i.ajk
  %i.ajv = fadd fast <4 x float> %i.aju, splat (float 5.000000e-01)
  %i.ajw = fmul fast <4 x float> %i.ajl, %i.ajv
  %i.ajx = fadd fast <4 x float> %i.ajk, %i.ajw
  %i.ajy = fadd fast <4 x float> %i.ajx, splat (float 1.000000e+00)
  %i.ajz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aji)
  %i.aka = shl <4 x i32> %i.ajz, splat (i32 23)
  %i.akb = add <4 x i32> %i.aka, splat (i32 1065353216)
  %i.akc = bitcast <4 x i32> %i.akb to <4 x float>
  %i.akd = fmul fast <4 x float> %i.ajy, %i.akc
  %i.ake = fadd fast <4 x float> %i.akd, splat (float 1.000000e+00)
  %i.akf = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ake
  %i.akg = fadd fast <4 x float> %i.akf, splat (float -1.000000e+00)
  %i.akh = fmul fast <4 x float> %i.akg, %i.aej
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187

.noexc186:                                        ; preds = %._crit_edge1163
  %i.aki = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.akj = load float, ptr %i.aki, align 4, !tbaa !52
  %i.akk = insertelement <4 x float> poison, float %i.akj, i64 0
  %i.akl = shufflevector <4 x float> %i.akk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akm = getelementptr inbounds nuw i8, ptr %i.aki, i64 4
  %i.akn = load float, ptr %i.akm, align 4, !tbaa !52
  %i.ako = insertelement <4 x float> poison, float %i.akn, i64 0
  %i.akp = shufflevector <4 x float> %i.ako, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akq = fmul fast <4 x float> %i.akl, %i.aej
  %i.akr = fadd fast <4 x float> %i.akq, %i.akp
  %i.aks = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.akr, <4 x float> zeroinitializer)
  %i.akt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float 1.000000e+00))
  %i.aku = fmul fast <4 x float> %i.akt, %i.aej
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187:   ; preds = %.noexc186, %.noexc185, %.noexc184, %bb.m, %.noexc183, %bb.l, %._crit_edge1163
  %.0.i182 = phi nsz <4 x float> [ %i.aku, %.noexc186 ], [ %i.ael, %bb.l ], [ %i.aet, %.noexc183 ], [ %i.afd, %bb.m ], [ %i.agk, %.noexc184 ], [ %i.akh, %.noexc185 ], [ %i.aej, %._crit_edge1163 ]
  store <4 x float> %.0.i182, ptr %.01641165, align 1, !tbaa !49
  %i.akv = getelementptr inbounds nuw i8, ptr %.01641165, i64 16
  %indvars.iv.next1252 = add nuw nsw i64 %indvars.iv1251, 1 ; 2 uses
  %i.akw = load i32, ptr %6, align 4, !tbaa !57
  %i.akx = load i32, ptr %4, align 4, !tbaa !57
  %i.aky = sdiv i32 %i.akw, %i.akx
  %i.akz = sext i32 %i.aky to i64
  %i.ala = icmp slt i64 %indvars.iv.next1252, %i.akz
  br i1 %i.ala, label %.lr.ph1168, label %.thread.loopexit, !llvm.loop !109

.thread.loopexit:                                 ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit187
  %.pr1091.pre = load i32, ptr %3, align 4, !tbaa !57 ; 2 uses
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.i, %bb.h, %thread-pre-split
  %.pr10891279 = phi i32 [ %.pr1091.pre, %.thread.loopexit ], [ %.pr10891280, %bb.i ], [ %.pr10891280, %bb.h ], [ %.pr10891280, %thread-pre-split ] ; 2 uses
  %.pr1091 = phi i32 [ %.pr1091.pre, %.thread.loopexit ], [ %.pr10911271, %bb.i ], [ %.pr10911271, %bb.h ], [ %.pr10911271, %thread-pre-split ] ; 2 uses
  %i.alb = icmp eq i32 %.pr1091, 4
  br i1 %i.alb, label %thread-pre-split1092, label %thread-pre-split1088

thread-pre-split1092:                             ; preds = %.thread
  %.pr1093 = load i32, ptr %4, align 4, !tbaa !57
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.d, %thread-pre-split1092
  %.pr10891278 = phi i32 [ %.pr10891279, %thread-pre-split1092 ], [ %.pr10891282, %bb.d ] ; 3 uses
  %.pr10911272 = phi i32 [ 4, %thread-pre-split1092 ], [ %.pr10911274, %bb.d ]
  %.pr1269 = phi i32 [ 4, %thread-pre-split1092 ], [ %.pr1270, %bb.d ]
  %i.alc = phi i32 [ %.pr1093, %thread-pre-split1092 ], [ %i.v, %bb.d ]
  %i.ald = icmp eq i32 %i.alc, 1
  br i1 %i.ald, label %bb.n, label %.thread1090

bb.n:                                             ; preds = %.thread.thread
  %i.ale = load i32, ptr %6, align 4, !tbaa !57
  %i.alf = icmp sgt i32 %i.ale, 0
  br i1 %i.alf, label %.lr.ph1195.preheader, label %thread-pre-split1088

.lr.ph1195.preheader:                             ; preds = %bb.n
  %i.alg = load ptr, ptr %5, align 8, !tbaa !19
  %i.alh = load i32, ptr %i.l, align 4, !tbaa !47
  %i.ali = sext i32 %i.alh to i64
  %i.alj = mul nsw i64 %indvars.iv1263, %i.ali
  %i.alk = load i64, ptr %i.m, align 8, !tbaa !48
  %i.all = mul i64 %i.alj, %i.alk
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alg, i64 %i.all
  br label %.lr.ph1195

.lr.ph1195:                                       ; preds = %.lr.ph1195.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv1255 = phi i64 [ 0, %.lr.ph1195.preheader ], [ %indvars.iv.next1256, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.01561192 = phi ptr [ %i.alm, %.lr.ph1195.preheader ], [ %i.avx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.aln = load ptr, ptr %7, align 8, !tbaa !19
  %i.alo = load i32, ptr %10, align 4, !tbaa !57  ; 8 uses
  %i.alp = trunc nuw nsw i64 %indvars.iv1255 to i32
  %i.alq = mul nsw i32 %i.alo, %i.alp
  %i.alr = sext i32 %i.alq to i64
  %i.als = getelementptr inbounds [4 x i8], ptr %i.aln, i64 %i.alr ; 2 uses
  %i.alt = load ptr, ptr %8, align 8, !tbaa !19
  %i.alu = load i32, ptr %i.p, align 4, !tbaa !47
  %i.alv = sext i32 %i.alu to i64
  %i.alw = mul nsw i64 %indvars.iv1263, %i.alv
  %i.alx = load i64, ptr %i.q, align 8, !tbaa !48
  %i.aly = mul i64 %i.alw, %i.alx
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alt, i64 %i.aly ; 2 uses
  %i.ama = load ptr, ptr %9, align 8, !tbaa !65   ; 2 uses
  %.not176 = icmp eq ptr %i.ama, null
  br i1 %.not176, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph1195
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %indvars.iv1255
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !52
  %i.amd = insertelement <4 x float> poison, float %i.amc, i64 0
  %i.ame = shufflevector <4 x float> %i.amd, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph1195
  %.0980 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1195 ], [ %i.ame, %bb.o ] ; 2 uses
  %i.amf = icmp sgt i32 %i.alo, 3
  br i1 %i.amf, label %.lr.ph1177, label %.preheader1125

.preheader1125.loopexit:                          ; preds = %.lr.ph1177
  %i.amg = and i32 %i.alo, 2147483644
  %i.amh = fadd fast <4 x float> %i.anw, %i.anu
  %i.ami = fadd fast <4 x float> %i.amh, %i.any
  br label %.preheader1125

.preheader1125:                                   ; preds = %.preheader1125.loopexit, %bb.p
  %.1981.lcssa = phi <4 x float> [ %.0980, %bb.p ], [ %i.ans, %.preheader1125.loopexit ] ; 3 uses
  %.0978.lcssa = phi <4 x float> [ zeroinitializer, %bb.p ], [ %i.ami, %.preheader1125.loopexit ]
  %.0153.lcssa = phi ptr [ %i.als, %bb.p ], [ %i.aoa, %.preheader1125.loopexit ] ; 2 uses
  %.0151.lcssa = phi ptr [ %i.alz, %bb.p ], [ %i.anz, %.preheader1125.loopexit ] ; 2 uses
  %.0149.lcssa = phi i32 [ 0, %bb.p ], [ %i.amg, %.preheader1125.loopexit ] ; 4 uses
  %i.amj = icmp slt i32 %.0149.lcssa, %i.alo
  br i1 %i.amj, label %.lr.ph1189.preheader, label %._crit_edge1190

.lr.ph1189.preheader:                             ; preds = %.preheader1125
  %xtraiter1377 = and i32 %i.alo, 3               ; 2 uses
  %lcmp.mod1378.not = icmp eq i32 %xtraiter1377, 0
  br i1 %lcmp.mod1378.not, label %.lr.ph1189.prol.loopexit, label %.lr.ph1189.prol

.lr.ph1189.prol:                                  ; preds = %.lr.ph1189.preheader, %.lr.ph1189.prol
  %.11501188.prol = phi i32 [ %i.ams, %.lr.ph1189.prol ], [ %.0149.lcssa, %.lr.ph1189.preheader ]
  %.11521187.prol = phi ptr [ %i.amq, %.lr.ph1189.prol ], [ %.0151.lcssa, %.lr.ph1189.preheader ] ; 2 uses
  %.11541186.prol = phi ptr [ %i.amr, %.lr.ph1189.prol ], [ %.0153.lcssa, %.lr.ph1189.preheader ] ; 2 uses
  %.21185.prol = phi <4 x float> [ %i.amp, %.lr.ph1189.prol ], [ %.1981.lcssa, %.lr.ph1189.preheader ]
  %prol.iter1379 = phi i32 [ %prol.iter1379.next, %.lr.ph1189.prol ], [ 0, %.lr.ph1189.preheader ]
  %i.amk = load <4 x float>, ptr %.11521187.prol, align 1, !tbaa !49
  %i.aml = load float, ptr %.11541186.prol, align 4, !tbaa !52
  %i.amm = insertelement <4 x float> poison, float %i.aml, i64 0
  %i.amn = shufflevector <4 x float> %i.amm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amo = fmul fast <4 x float> %i.amn, %i.amk
  %i.amp = fadd fast <4 x float> %i.amo, %.21185.prol ; 3 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %.11521187.prol, i64 16 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %.11541186.prol, i64 4 ; 2 uses
  %i.ams = add nuw nsw i32 %.11501188.prol, 1     ; 2 uses
  %prol.iter1379.next = add i32 %prol.iter1379, 1 ; 2 uses
  %prol.iter1379.cmp.not = icmp eq i32 %prol.iter1379.next, %xtraiter1377
  br i1 %prol.iter1379.cmp.not, label %.lr.ph1189.prol.loopexit, label %.lr.ph1189.prol, !llvm.loop !110

.lr.ph1189.prol.loopexit:                         ; preds = %.lr.ph1189.prol, %.lr.ph1189.preheader
  %.lcssa1370.unr = phi <4 x float> [ poison, %.lr.ph1189.preheader ], [ %i.amp, %.lr.ph1189.prol ]
  %.11501188.unr = phi i32 [ %.0149.lcssa, %.lr.ph1189.preheader ], [ %i.ams, %.lr.ph1189.prol ]
  %.11521187.unr = phi ptr [ %.0151.lcssa, %.lr.ph1189.preheader ], [ %i.amq, %.lr.ph1189.prol ]
  %.11541186.unr = phi ptr [ %.0153.lcssa, %.lr.ph1189.preheader ], [ %i.amr, %.lr.ph1189.prol ]
  %.21185.unr = phi <4 x float> [ %.1981.lcssa, %.lr.ph1189.preheader ], [ %i.amp, %.lr.ph1189.prol ]
  %i.amt = sub i32 %.0149.lcssa, %i.alo
  %i.amu = icmp ugt i32 %i.amt, -4
  br i1 %i.amu, label %._crit_edge1190, label %.lr.ph1189

.lr.ph1177:                                       ; preds = %bb.p, %.lr.ph1177
  %.01491175 = phi i32 [ %i.aob, %.lr.ph1177 ], [ 0, %bb.p ]
  %.01511174 = phi ptr [ %i.anz, %.lr.ph1177 ], [ %i.alz, %bb.p ] ; 5 uses
  %.01531173 = phi ptr [ %i.aoa, %.lr.ph1177 ], [ %i.als, %bb.p ] ; 5 uses
  %.09771172 = phi <4 x float> [ %i.any, %.lr.ph1177 ], [ zeroinitializer, %bb.p ]
  %.09781171 = phi <4 x float> [ %i.anw, %.lr.ph1177 ], [ zeroinitializer, %bb.p ]
  %.09791170 = phi <4 x float> [ %i.anu, %.lr.ph1177 ], [ zeroinitializer, %bb.p ]
  %.19811169 = phi <4 x float> [ %i.ans, %.lr.ph1177 ], [ %.0980, %bb.p ]
  %i.amv = load <4 x float>, ptr %.01511174, align 1, !tbaa !49
  %i.amw = getelementptr inbounds nuw i8, ptr %.01511174, i64 16
  %i.amx = load <4 x float>, ptr %i.amw, align 1, !tbaa !49
  %i.amy = getelementptr inbounds nuw i8, ptr %.01511174, i64 32
  %i.amz = load <4 x float>, ptr %i.amy, align 1, !tbaa !49
  %i.ana = getelementptr inbounds nuw i8, ptr %.01511174, i64 48
  %i.anb = load <4 x float>, ptr %i.ana, align 1, !tbaa !49
  %i.anc = load float, ptr %.01531173, align 4, !tbaa !52
  %i.and = insertelement <4 x float> poison, float %i.anc, i64 0
  %i.ane = shufflevector <4 x float> %i.and, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anf = getelementptr inbounds nuw i8, ptr %.01531173, i64 4
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !52
  %i.anh = insertelement <4 x float> poison, float %i.ang, i64 0
  %i.ani = shufflevector <4 x float> %i.anh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anj = getelementptr inbounds nuw i8, ptr %.01531173, i64 8
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !52
  %i.anl = insertelement <4 x float> poison, float %i.ank, i64 0
  %i.anm = shufflevector <4 x float> %i.anl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ann = getelementptr inbounds nuw i8, ptr %.01531173, i64 12
  %i.ano = load float, ptr %i.ann, align 4, !tbaa !52
  %i.anp = insertelement <4 x float> poison, float %i.ano, i64 0
  %i.anq = shufflevector <4 x float> %i.anp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anr = fmul fast <4 x float> %i.ane, %i.amv
  %i.ans = fadd fast <4 x float> %i.anr, %.19811169 ; 2 uses
  %i.ant = fmul fast <4 x float> %i.ani, %i.amx
  %i.anu = fadd fast <4 x float> %i.ant, %.09791170 ; 2 uses
  %i.anv = fmul fast <4 x float> %i.anm, %i.amz
  %i.anw = fadd fast <4 x float> %i.anv, %.09781171 ; 2 uses
  %i.anx = fmul fast <4 x float> %i.anq, %i.anb
  %i.any = fadd fast <4 x float> %i.anx, %.09771172 ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %.01511174, i64 64 ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %.01531173, i64 16 ; 2 uses
  %i.aob = add nuw nsw i32 %.01491175, 4          ; 2 uses
  %i.aoc = or disjoint i32 %i.aob, 3
  %i.aod = icmp slt i32 %i.aoc, %i.alo
  br i1 %i.aod, label %.lr.ph1177, label %.preheader1125.loopexit, !llvm.loop !111

.lr.ph1189:                                       ; preds = %.lr.ph1189.prol.loopexit, %.lr.ph1189
  %.11501188 = phi i32 [ %i.apk, %.lr.ph1189 ], [ %.11501188.unr, %.lr.ph1189.prol.loopexit ]
  %.11521187 = phi ptr [ %i.api, %.lr.ph1189 ], [ %.11521187.unr, %.lr.ph1189.prol.loopexit ] ; 5 uses
  %.11541186 = phi ptr [ %i.apj, %.lr.ph1189 ], [ %.11541186.unr, %.lr.ph1189.prol.loopexit ] ; 5 uses
  %.21185 = phi <4 x float> [ %i.aph, %.lr.ph1189 ], [ %.21185.unr, %.lr.ph1189.prol.loopexit ]
  %i.aoe = load <4 x float>, ptr %.11521187, align 1, !tbaa !49
  %i.aof = load float, ptr %.11541186, align 4, !tbaa !52
  %i.aog = insertelement <4 x float> poison, float %i.aof, i64 0
  %i.aoh = shufflevector <4 x float> %i.aog, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoi = fmul fast <4 x float> %i.aoh, %i.aoe
  %i.aoj = fadd fast <4 x float> %i.aoi, %.21185
  %i.aok = getelementptr inbounds nuw i8, ptr %.11521187, i64 16
  %i.aol = getelementptr inbounds nuw i8, ptr %.11541186, i64 4
  %i.aom = load <4 x float>, ptr %i.aok, align 1, !tbaa !49
  %i.aon = load float, ptr %i.aol, align 4, !tbaa !52
  %i.aoo = insertelement <4 x float> poison, float %i.aon, i64 0
  %i.aop = shufflevector <4 x float> %i.aoo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoq = fmul fast <4 x float> %i.aop, %i.aom
  %i.aor = fadd fast <4 x float> %i.aoq, %i.aoj
  %i.aos = getelementptr inbounds nuw i8, ptr %.11521187, i64 32
  %i.aot = getelementptr inbounds nuw i8, ptr %.11541186, i64 8
  %i.aou = load <4 x float>, ptr %i.aos, align 1, !tbaa !49
  %i.aov = load float, ptr %i.aot, align 4, !tbaa !52
  %i.aow = insertelement <4 x float> poison, float %i.aov, i64 0
  %i.aox = shufflevector <4 x float> %i.aow, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoy = fmul fast <4 x float> %i.aox, %i.aou
  %i.aoz = fadd fast <4 x float> %i.aoy, %i.aor
  %i.apa = getelementptr inbounds nuw i8, ptr %.11521187, i64 48
  %i.apb = getelementptr inbounds nuw i8, ptr %.11541186, i64 12
  %i.apc = load <4 x float>, ptr %i.apa, align 1, !tbaa !49
  %i.apd = load float, ptr %i.apb, align 4, !tbaa !52
  %i.ape = insertelement <4 x float> poison, float %i.apd, i64 0
  %i.apf = shufflevector <4 x float> %i.ape, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apg = fmul fast <4 x float> %i.apf, %i.apc
  %i.aph = fadd fast <4 x float> %i.apg, %i.aoz   ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %.11521187, i64 64
  %i.apj = getelementptr inbounds nuw i8, ptr %.11541186, i64 16
  %i.apk = add nuw nsw i32 %.11501188, 4          ; 2 uses
  %exitcond1254.not.3 = icmp eq i32 %i.apk, %i.alo
  br i1 %exitcond1254.not.3, label %._crit_edge1190, label %.lr.ph1189, !llvm.loop !112

._crit_edge1190:                                  ; preds = %.lr.ph1189.prol.loopexit, %.lr.ph1189, %.preheader1125
  %.2.lcssa = phi <4 x float> [ %.1981.lcssa, %.preheader1125 ], [ %.lcssa1370.unr, %.lr.ph1189.prol.loopexit ], [ %i.aph, %.lr.ph1189 ]
  %i.apl = fadd fast <4 x float> %.0978.lcssa, %.2.lcssa ; 10 uses
  %i.apm = load i32, ptr %11, align 4, !tbaa !57
  switch i32 %i.apm, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.q
    i32 2, label %.noexc
    i32 3, label %bb.r
    i32 4, label %.noexc179
    i32 5, label %.noexc180
    i32 6, label %.noexc181
  ]

bb.q:                                             ; preds = %._crit_edge1190
  %i.apn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.apl, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge1190
  %i.apo = load ptr, ptr %12, align 8, !tbaa !19
  %i.app = load float, ptr %i.apo, align 4, !tbaa !52
  %i.apq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.apl)
  %i.apr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.apl)
  %i.aps = insertelement <4 x float> poison, float %i.app, i64 0
  %i.apt = shufflevector <4 x float> %i.aps, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apu = fmul fast <4 x float> %i.apt, %i.apr
  %i.apv = fadd fast <4 x float> %i.apu, %i.apq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.r:                                             ; preds = %._crit_edge1190
  %i.apw = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.apx = load float, ptr %i.apw, align 4, !tbaa !52
  %i.apy = insertelement <4 x float> poison, float %i.apx, i64 0
  %i.apz = shufflevector <4 x float> %i.apy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apw, i64 4
  %i.aqb = load float, ptr %i.aqa, align 4, !tbaa !52
  %i.aqc = insertelement <4 x float> poison, float %i.aqb, i64 0
  %i.aqd = shufflevector <4 x float> %i.aqc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.apl, <4 x float> nofpclass(nan inf) %i.apz)
  %i.aqf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aqe, <4 x float> nofpclass(nan inf) %i.aqd)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc179:                                        ; preds = %._crit_edge1190
  %i.aqg = fneg fast <4 x float> %i.apl
  %i.aqh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aqg, <4 x float> splat (float f0x42B0C0A5))
  %i.aqi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aqh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aqj = fmul fast <4 x float> %i.aqi, splat (float f0x3FB8AA3B)
  %i.aqk = fadd fast <4 x float> %i.aqj, splat (float 5.000000e-01) ; 2 uses
  %i.aql = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aqk)
  %i.aqm = sitofp fast <4 x i32> %i.aql to <4 x float> ; 2 uses
  %i.aqn = fcmp fast olt <4 x float> %i.aqk, %i.aqm
  %i.aqo = select <4 x i1> %i.aqn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aqp = fsub fast <4 x float> %i.aqm, %i.aqo   ; 2 uses
  %i.aqq = fmul fast <4 x float> %i.aqp, splat (float f0x3F317218)
  %i.aqr = fsub fast <4 x float> %i.aqi, %i.aqq   ; 8 uses
  %i.aqs = fmul fast <4 x float> %i.aqr, %i.aqr
  %i.aqt = fmul fast <4 x float> %i.aqr, splat (float f0x39506967)
  %i.aqu = fadd fast <4 x float> %i.aqt, splat (float f0x3AB743CE)
  %i.aqv = fmul fast <4 x float> %i.aqu, %i.aqr
  %i.aqw = fadd fast <4 x float> %i.aqv, splat (float f0x3C088908)
  %i.aqx = fmul fast <4 x float> %i.aqw, %i.aqr
  %i.aqy = fadd fast <4 x float> %i.aqx, splat (float f0x3D2AA9C1)
  %i.aqz = fmul fast <4 x float> %i.aqy, %i.aqr
  %i.ara = fadd fast <4 x float> %i.aqz, splat (float f0x3E2AAAAA)
  %i.arb = fmul fast <4 x float> %i.ara, %i.aqr
  %i.arc = fadd fast <4 x float> %i.arb, splat (float 5.000000e-01)
  %i.ard = fmul fast <4 x float> %i.aqs, %i.arc
  %i.are = fadd fast <4 x float> %i.aqr, %i.ard
  %i.arf = fadd fast <4 x float> %i.are, splat (float 1.000000e+00)
  %i.arg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aqp)
  %i.arh = shl <4 x i32> %i.arg, splat (i32 23)
  %i.ari = add <4 x i32> %i.arh, splat (i32 1065353216)
  %i.arj = bitcast <4 x i32> %i.ari to <4 x float>
  %i.ark = fmul fast <4 x float> %i.arf, %i.arj
  %i.arl = fadd fast <4 x float> %i.ark, splat (float 1.000000e+00)
  %i.arm = fdiv fast <4 x float> splat (float 1.000000e+00), %i.arl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc180:                                        ; preds = %._crit_edge1190
  %i.arn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.apl, <4 x float> splat (float f0x42B0C0A5))
  %i.aro = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.arn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.arp = fmul fast <4 x float> %i.aro, splat (float f0x3FB8AA3B)
  %i.arq = fadd fast <4 x float> %i.arp, splat (float 5.000000e-01) ; 2 uses
  %i.arr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.arq)
  %i.ars = sitofp fast <4 x i32> %i.arr to <4 x float> ; 2 uses
  %i.art = fcmp fast olt <4 x float> %i.arq, %i.ars
  %i.aru = select <4 x i1> %i.art, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.arv = fsub fast <4 x float> %i.ars, %i.aru   ; 2 uses
  %i.arw = fmul fast <4 x float> %i.arv, splat (float f0x3F317218)
  %i.arx = fsub fast <4 x float> %i.aro, %i.arw   ; 8 uses
  %i.ary = fmul fast <4 x float> %i.arx, %i.arx
  %i.arz = fmul fast <4 x float> %i.arx, splat (float f0x39506967)
  %i.asa = fadd fast <4 x float> %i.arz, splat (float f0x3AB743CE)
  %i.asb = fmul fast <4 x float> %i.asa, %i.arx
  %i.asc = fadd fast <4 x float> %i.asb, splat (float f0x3C088908)
  %i.asd = fmul fast <4 x float> %i.asc, %i.arx
  %i.ase = fadd fast <4 x float> %i.asd, splat (float f0x3D2AA9C1)
  %i.asf = fmul fast <4 x float> %i.ase, %i.arx
  %i.asg = fadd fast <4 x float> %i.asf, splat (float f0x3E2AAAAA)
  %i.ash = fmul fast <4 x float> %i.asg, %i.arx
  %i.asi = fadd fast <4 x float> %i.ash, splat (float 5.000000e-01)
  %i.asj = fmul fast <4 x float> %i.ary, %i.asi
  %i.ask = fadd fast <4 x float> %i.arx, %i.asj
  %i.asl = fadd fast <4 x float> %i.ask, splat (float 1.000000e+00)
  %i.asm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.arv)
  %i.asn = shl <4 x i32> %i.asm, splat (i32 23)
  %i.aso = add <4 x i32> %i.asn, splat (i32 1065353216)
  %i.asp = bitcast <4 x i32> %i.aso to <4 x float>
  %i.asq = fmul fast <4 x float> %i.asl, %i.asp
  %i.asr = fadd fast <4 x float> %i.asq, splat (float 1.000000e+00) ; 2 uses
  %i.ass = fcmp fast ole <4 x float> %i.asr, zeroinitializer
  %i.ast = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.asr, <4 x float> splat (float f0x00800000))
  %i.asu = bitcast <4 x float> %i.ast to <4 x i32> ; 2 uses
  %i.asv = lshr <4 x i32> %i.asu, splat (i32 23)
  %i.asw = and <4 x i32> %i.asu, splat (i32 -2139095041)
  %i.asx = or disjoint <4 x i32> %i.asw, splat (i32 1056964608)
  %i.asy = bitcast <4 x i32> %i.asx to <4 x float> ; 3 uses
  %i.asz = add nsw <4 x i32> %i.asv, splat (i32 -127)
  %i.ata = sitofp fast <4 x i32> %i.asz to <4 x float> ; 2 uses
  %i.atb = fadd fast <4 x float> %i.ata, splat (float 1.000000e+00)
  %i.atc = fcmp fast olt <4 x float> %i.asy, splat (float f0x3F3504F3) ; 2 uses
  %i.atd = select <4 x i1> %i.atc, <4 x float> %i.asy, <4 x float> zeroinitializer
  %i.ate = fadd fast <4 x float> %i.asy, splat (float -1.000000e+00)
  %i.atf = select fast <4 x i1> %i.atc, <4 x float> %i.ata, <4 x float> %i.atb
  %i.atg = fadd fast <4 x float> %i.ate, %i.atd   ; 12 uses
  %i.ath = fmul fast <4 x float> %i.atg, %i.atg
  %i.ati = fmul fast <4 x float> %i.atg, splat (float f0x3D9021BB)
  %i.atj = fadd fast <4 x float> %i.ati, splat (float f0xBDEBD1B8)
  %i.atk = fmul fast <4 x float> %i.atj, %i.atg
  %i.atl = fadd fast <4 x float> %i.atk, splat (float f0x3DEF251A)
  %i.atm = fmul fast <4 x float> %i.atl, %i.atg
  %i.atn = fadd fast <4 x float> %i.atm, splat (float f0xBDFE5D4F)
  %i.ato = fmul fast <4 x float> %i.atn, %i.atg
  %i.atp = fadd fast <4 x float> %i.ato, splat (float f0x3E11E9BF)
  %i.atq = fmul fast <4 x float> %i.atp, %i.atg
  %i.atr = fadd fast <4 x float> %i.atq, splat (float f0xBE2AAE50)
  %i.ats = fmul fast <4 x float> %i.atr, %i.atg
  %i.att = fadd fast <4 x float> %i.ats, splat (float f0x3E4CCEAC)
  %i.atu = fmul fast <4 x float> %i.att, %i.atg
  %i.atv = fadd fast <4 x float> %i.atu, splat (float f0xBE7FFFFC)
  %i.atw = fmul fast <4 x float> %i.atv, %i.atg
  %i.atx = fadd fast <4 x float> %i.atw, splat (float f0x3EAAAAAA)
  %i.aty = fmul fast <4 x float> %i.atx, %i.atg
  %reass.mul = fmul fast <4 x float> %i.atf, splat (float f0x3F317218)
  %reass.add1100 = fadd fast <4 x float> %i.aty, splat (float -5.000000e-01)
  %reass.mul1101 = fmul fast <4 x float> %i.ath, %reass.add1100
  %i.atz = fadd fast <4 x float> %reass.mul, %i.atg
  %i.aua = fadd fast <4 x float> %i.atz, %reass.mul1101
  %.neg = fmul fast <4 x float> %i.aua, splat (float -2.000000e+00)
  %i.aub = select fast <4 x i1> %i.ass, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.auc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aub, <4 x float> splat (float f0x42B0C0A5))
  %i.aud = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.auc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aue = fmul fast <4 x float> %i.aud, splat (float f0x3FB8AA3B)
  %i.auf = fadd fast <4 x float> %i.aue, splat (float 5.000000e-01) ; 2 uses
  %i.aug = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.auf)
  %i.auh = sitofp fast <4 x i32> %i.aug to <4 x float> ; 2 uses
  %i.aui = fcmp fast olt <4 x float> %i.auf, %i.auh
  %i.auj = select <4 x i1> %i.aui, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.auk = fsub fast <4 x float> %i.auh, %i.auj   ; 2 uses
  %i.aul = fmul fast <4 x float> %i.auk, splat (float f0x3F317218)
  %i.aum = fsub fast <4 x float> %i.aud, %i.aul   ; 8 uses
  %i.aun = fmul fast <4 x float> %i.aum, %i.aum
  %i.auo = fmul fast <4 x float> %i.aum, splat (float f0x39506967)
  %i.aup = fadd fast <4 x float> %i.auo, splat (float f0x3AB743CE)
  %i.auq = fmul fast <4 x float> %i.aup, %i.aum
  %i.aur = fadd fast <4 x float> %i.auq, splat (float f0x3C088908)
  %i.aus = fmul fast <4 x float> %i.aur, %i.aum
  %i.aut = fadd fast <4 x float> %i.aus, splat (float f0x3D2AA9C1)
  %i.auu = fmul fast <4 x float> %i.aut, %i.aum
  %i.auv = fadd fast <4 x float> %i.auu, splat (float f0x3E2AAAAA)
  %i.auw = fmul fast <4 x float> %i.auv, %i.aum
  %i.aux = fadd fast <4 x float> %i.auw, splat (float 5.000000e-01)
  %i.auy = fmul fast <4 x float> %i.aun, %i.aux
  %i.auz = fadd fast <4 x float> %i.aum, %i.auy
  %i.ava = fadd fast <4 x float> %i.auz, splat (float 1.000000e+00)
  %i.avb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.auk)
  %i.avc = shl <4 x i32> %i.avb, splat (i32 23)
  %i.avd = add <4 x i32> %i.avc, splat (i32 1065353216)
  %i.ave = bitcast <4 x i32> %i.avd to <4 x float>
  %i.avf = fmul fast <4 x float> %i.ava, %i.ave
  %i.avg = fadd fast <4 x float> %i.avf, splat (float 1.000000e+00)
  %i.avh = fdiv fast <4 x float> splat (float 2.000000e+00), %i.avg
  %i.avi = fadd fast <4 x float> %i.avh, splat (float -1.000000e+00)
  %i.avj = fmul fast <4 x float> %i.avi, %i.apl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc181:                                        ; preds = %._crit_edge1190
  %i.avk = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.avl = load float, ptr %i.avk, align 4, !tbaa !52
  %i.avm = insertelement <4 x float> poison, float %i.avl, i64 0
  %i.avn = shufflevector <4 x float> %i.avm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avk, i64 4
  %i.avp = load float, ptr %i.avo, align 4, !tbaa !52
  %i.avq = insertelement <4 x float> poison, float %i.avp, i64 0
  %i.avr = shufflevector <4 x float> %i.avq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avs = fmul fast <4 x float> %i.avn, %i.apl
  %i.avt = fadd fast <4 x float> %i.avs, %i.avr
  %i.avu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.avt, <4 x float> zeroinitializer)
  %i.avv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.avu, <4 x float> splat (float 1.000000e+00))
  %i.avw = fmul fast <4 x float> %i.avv, %i.apl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc181, %.noexc180, %.noexc179, %bb.r, %.noexc, %bb.q, %._crit_edge1190
  %.0.i = phi nsz <4 x float> [ %i.avw, %.noexc181 ], [ %i.apn, %bb.q ], [ %i.apv, %.noexc ], [ %i.aqf, %bb.r ], [ %i.arm, %.noexc179 ], [ %i.avj, %.noexc180 ], [ %i.apl, %._crit_edge1190 ]
  store <4 x float> %.0.i, ptr %.01561192, align 1, !tbaa !49
  %i.avx = getelementptr inbounds nuw i8, ptr %.01561192, i64 16
  %indvars.iv.next1256 = add nuw nsw i64 %indvars.iv1255, 1 ; 2 uses
  %i.avy = load i32, ptr %6, align 4, !tbaa !57
  %i.avz = sext i32 %i.avy to i64
  %i.awa = icmp slt i64 %indvars.iv.next1256, %i.avz
  br i1 %i.awa, label %.lr.ph1195, label %thread-pre-split1088.loopexit, !llvm.loop !113

thread-pre-split1088.loopexit:                    ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.pr1089.pre = load i32, ptr %3, align 4, !tbaa !57 ; 2 uses
  br label %thread-pre-split1088

thread-pre-split1088:                             ; preds = %bb.n, %thread-pre-split1088.loopexit, %.thread
  %.pr10891284 = phi i32 [ %.pr10891279, %.thread ], [ %.pr1089.pre, %thread-pre-split1088.loopexit ], [ %.pr10891278, %bb.n ] ; 4 uses
  %.pr10911276 = phi i32 [ %.pr1091, %.thread ], [ %.pr1089.pre, %thread-pre-split1088.loopexit ], [ %.pr10891278, %bb.n ] ; 4 uses
  %i.awb = icmp eq i32 %.pr10911276, 1
  br i1 %i.awb, label %bb.s, label %.thread1090

bb.s:                                             ; preds = %thread-pre-split1088
  %i.awc = load i32, ptr %4, align 4, !tbaa !57
  %i.awd = icmp eq i32 %i.awc, 1
  br i1 %i.awd, label %bb.t, label %.thread1090

bb.t:                                             ; preds = %bb.s
  %i.awe = load i32, ptr %6, align 4, !tbaa !57   ; 2 uses
  %i.awf = icmp sgt i32 %i.awe, 0
  br i1 %i.awf, label %.lr.ph1216, label %.thread1090

.lr.ph1216:                                       ; preds = %bb.t
  %i.awg = load ptr, ptr %5, align 8, !tbaa !19
  %i.awh = load i32, ptr %i.l, align 4, !tbaa !47
  %i.awi = sext i32 %i.awh to i64
  %i.awj = mul nsw i64 %indvars.iv1263, %i.awi
  %i.awk = load i64, ptr %i.m, align 8, !tbaa !48
  %i.awl = mul i64 %i.awj, %i.awk
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awg, i64 %i.awl
  %i.awn = load ptr, ptr %7, align 8, !tbaa !19
  %i.awo = load i32, ptr %10, align 4, !tbaa !57  ; 7 uses
  %i.awp = load ptr, ptr %8, align 8, !tbaa !19
  %i.awq = load i32, ptr %i.p, align 4, !tbaa !47
  %i.awr = sext i32 %i.awq to i64
  %i.aws = mul nsw i64 %indvars.iv1263, %i.awr
  %i.awt = load i64, ptr %i.q, align 8, !tbaa !48
  %i.awu = mul i64 %i.aws, %i.awt
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.awu ; 3 uses
  %i.aww = load ptr, ptr %9, align 8, !tbaa !65   ; 2 uses
  %.not175 = icmp eq ptr %i.aww, null
  %i.awx = icmp sgt i32 %i.awo, 3
  %i.awy = load i32, ptr %11, align 4, !tbaa !57
  %i.awz = and i32 %i.awo, -4                     ; 2 uses
  %i.axa = sext i32 %i.awo to i64
  %wide.trip.count = zext nneg i32 %i.awe to i64
  %i.axb = add i32 %i.awo, -4                     ; 2 uses
  %i.axc = lshr i32 %i.axb, 2
  %i.axd = add nuw nsw i32 %i.axc, 1              ; 2 uses
  %xtraiter1380 = and i32 %i.axd, 3               ; 3 uses
  %i.axe = icmp ult i32 %i.axb, 12
  %unroll_iter = and i32 %i.axd, 2147483644
  %lcmp.mod1381.not = icmp eq i32 %xtraiter1380, 0
  %lcmp.mod1385 = icmp ne i32 %xtraiter1380, 0
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph1216, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv1259 = phi i64 [ 0, %.lr.ph1216 ], [ %indvars.iv.next1260, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 3 uses
  %.01481213 = phi ptr [ %i.awm, %.lr.ph1216 ], [ %i.baz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.axf = mul nsw i64 %indvars.iv1259, %i.axa
  %i.axg = getelementptr inbounds [4 x i8], ptr %i.awn, i64 %i.axf ; 3 uses
  br i1 %.not175, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.axh = getelementptr inbounds nuw [4 x i8], ptr %i.aww, i64 %indvars.iv1259
  %i.axi = load float, ptr %i.axh, align 4, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0141 = phi nsz float [ %i.axi, %bb.v ], [ 0.000000e+00, %bb.u ] ; 3 uses
  br i1 %i.awx, label %.lr.ph1201.preheader, label %.preheader

.lr.ph1201.preheader:                             ; preds = %bb.w
  br i1 %i.axe, label %.lr.ph1201.epil.preheader, label %.lr.ph1201

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph1201
  br i1 %lcmp.mod1381.not, label %.preheader, label %.lr.ph1201.epil.preheader

.lr.ph1201.epil.preheader:                        ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph1201.preheader
  %.01431198.epil.init = phi ptr [ %i.awv, %.lr.ph1201.preheader ], [ %i.azf, %.preheader.loopexit.unr-lcssa ]
  %.01451197.epil.init = phi ptr [ %i.axg, %.lr.ph1201.preheader ], [ %i.azg, %.preheader.loopexit.unr-lcssa ]
  %.09761196.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph1201.preheader ], [ %i.aze, %.preheader.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1385)
  br label %.lr.ph1201.epil

.lr.ph1201.epil:                                  ; preds = %.lr.ph1201.epil, %.lr.ph1201.epil.preheader
  %.01431198.epil = phi ptr [ %i.axn, %.lr.ph1201.epil ], [ %.01431198.epil.init, %.lr.ph1201.epil.preheader ] ; 2 uses
  %.01451197.epil = phi ptr [ %i.axo, %.lr.ph1201.epil ], [ %.01451197.epil.init, %.lr.ph1201.epil.preheader ] ; 2 uses
  %.09761196.epil = phi <4 x float> [ %i.axm, %.lr.ph1201.epil ], [ %.09761196.epil.init, %.lr.ph1201.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph1201.epil ], [ 0, %.lr.ph1201.epil.preheader ]
  %i.axj = load <4 x float>, ptr %.01431198.epil, align 1, !tbaa !49
  %i.axk = load <4 x float>, ptr %.01451197.epil, align 1, !tbaa !49
  %i.axl = fmul fast <4 x float> %i.axk, %i.axj
  %i.axm = fadd fast <4 x float> %i.axl, %.09761196.epil ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %.01431198.epil, i64 16 ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %.01451197.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1380
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph1201.epil, !llvm.loop !114

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph1201.epil, %bb.w
  %.0976.lcssa = phi <4 x float> [ zeroinitializer, %bb.w ], [ %i.aze, %.preheader.loopexit.unr-lcssa ], [ %i.axm, %.lr.ph1201.epil ] ; 2 uses
  %.0145.lcssa = phi ptr [ %i.axg, %bb.w ], [ %i.azg, %.preheader.loopexit.unr-lcssa ], [ %i.axo, %.lr.ph1201.epil ] ; 3 uses
  %.0143.lcssa = phi ptr [ %i.awv, %bb.w ], [ %i.azf, %.preheader.loopexit.unr-lcssa ], [ %i.axn, %.lr.ph1201.epil ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.w ], [ %i.awz, %.lr.ph1201.epil ], [ %i.awz, %.preheader.loopexit.unr-lcssa ] ; 4 uses
  %i.axp = icmp slt i32 %.0.lcssa, %i.awo
  br i1 %i.axp, label %.lr.ph1210.preheader, label %._crit_edge1211

.lr.ph1210.preheader:                             ; preds = %.preheader
  %i.axq = xor i32 %.0.lcssa, -1
  %i.axr = add i32 %i.awo, %i.axq                 ; 2 uses
  %i.axs = zext i32 %i.axr to i64
  %i.axt = add nuw nsw i64 %i.axs, 1              ; 2 uses
  %min.iters.check = icmp ult i32 %i.axr, 7
  br i1 %min.iters.check, label %.lr.ph1210.preheader1353, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1210.preheader
  %n.vec = and i64 %i.axt, 8589934584             ; 4 uses
  %i.axu = trunc i64 %n.vec to i32
  %i.axv = add i32 %.0.lcssa, %i.axu
  %i.axw = shl nuw nsw i64 %n.vec, 2              ; 2 uses
  %i.axx = getelementptr i8, ptr %.0143.lcssa, i64 %i.axw
  %i.axy = getelementptr i8, ptr %.0145.lcssa, i64 %i.axw
  %i.axz = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0141, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.axz, %vector.ph ], [ %i.ayf, %vector.body ]
  %vec.phi1346 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ayg, %vector.body ]
  %i.aya = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.0143.lcssa, i64 %i.aya ; 2 uses
  %next.gep1347 = getelementptr i8, ptr %.0145.lcssa, i64 %i.aya ; 2 uses
  %i.ayb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !52
  %wide.load1348 = load <4 x float>, ptr %i.ayb, align 4, !tbaa !52
  %i.ayc = getelementptr i8, ptr %next.gep1347, i64 16
  %wide.load1349 = load <4 x float>, ptr %next.gep1347, align 4, !tbaa !52
  %wide.load1350 = load <4 x float>, ptr %i.ayc, align 4, !tbaa !52
  %i.ayd = fmul fast <4 x float> %wide.load1349, %wide.load
  %i.aye = fmul fast <4 x float> %wide.load1350, %wide.load1348
  %i.ayf = fadd fast <4 x float> %i.ayd, %vec.phi ; 2 uses
  %i.ayg = fadd fast <4 x float> %i.aye, %vec.phi1346 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ayh = icmp eq i64 %index.next, %n.vec
  br i1 %i.ayh, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.ayg, %i.ayf
  %i.ayi = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.axt, %n.vec
  br i1 %cmp.n, label %._crit_edge1211, label %.lr.ph1210.preheader1353

.lr.ph1210.preheader1353:                         ; preds = %.lr.ph1210.preheader, %middle.block
  %.11209.ph = phi i32 [ %.0.lcssa, %.lr.ph1210.preheader ], [ %i.axv, %middle.block ]
  %.11421208.ph = phi float [ %.0141, %.lr.ph1210.preheader ], [ %i.ayi, %middle.block ]
  %.11441207.ph = phi ptr [ %.0143.lcssa, %.lr.ph1210.preheader ], [ %i.axx, %middle.block ]
  %.11461206.ph = phi ptr [ %.0145.lcssa, %.lr.ph1210.preheader ], [ %i.axy, %middle.block ]
  br label %.lr.ph1210

.lr.ph1201:                                       ; preds = %.lr.ph1201.preheader, %.lr.ph1201
  %.01431198 = phi ptr [ %i.azf, %.lr.ph1201 ], [ %i.awv, %.lr.ph1201.preheader ] ; 5 uses
  %.01451197 = phi ptr [ %i.azg, %.lr.ph1201 ], [ %i.axg, %.lr.ph1201.preheader ] ; 5 uses
  %.09761196 = phi <4 x float> [ %i.aze, %.lr.ph1201 ], [ zeroinitializer, %.lr.ph1201.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph1201 ], [ 0, %.lr.ph1201.preheader ]
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.ac = and i32 %i.aa, 2147483644
  %i.ad = fadd fast <4 x float> %i.bs, %i.bq
  %i.ae = fadd fast <4 x float> %i.ad, %i.bu
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.1188.lcssa = phi <4 x float> [ %.0187, %bb.e ], [ %i.bo, %.preheader.loopexit ] ; 3 uses
  %.0185.lcssa = phi <4 x float> [ zeroinitializer, %bb.e ], [ %i.ae, %.preheader.loopexit ]
  %.046.lcssa = phi ptr [ %i.y, %bb.e ], [ %i.bw, %.preheader.loopexit ] ; 2 uses
  %.044.lcssa = phi ptr [ %i.z, %bb.e ], [ %i.bv, %.preheader.loopexit ] ; 2 uses
  %.043.lcssa = phi i32 [ 0, %bb.e ], [ %i.ac, %.preheader.loopexit ] ; 4 uses
  %i.af = icmp slt i32 %.043.lcssa, %i.aa
  br i1 %i.af, label %.lr.ph210.preheader, label %._crit_edge

.lr.ph210.preheader:                              ; preds = %.preheader
  %xtraiter = and i32 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol

.lr.ph210.prol:                                   ; preds = %.lr.ph210.preheader, %.lr.ph210.prol
  %.1209.prol = phi i32 [ %i.ao, %.lr.ph210.prol ], [ %.043.lcssa, %.lr.ph210.preheader ]
  %.145208.prol = phi ptr [ %i.am, %.lr.ph210.prol ], [ %.044.lcssa, %.lr.ph210.preheader ] ; 2 uses
  %.147207.prol = phi ptr [ %i.an, %.lr.ph210.prol ], [ %.046.lcssa, %.lr.ph210.preheader ] ; 2 uses
  %.2206.prol = phi <4 x float> [ %i.al, %.lr.ph210.prol ], [ %.1188.lcssa, %.lr.ph210.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph210.prol ], [ 0, %.lr.ph210.preheader ]
  %i.ag = load float, ptr %.145208.prol, align 4, !tbaa !52
  %i.ah = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = load <4 x float>, ptr %.147207.prol, align 1, !tbaa !49
  %i.ak = fmul fast <4 x float> %i.ai, %i.aj
  %i.al = fadd fast <4 x float> %i.ak, %.2206.prol ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.145208.prol, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.147207.prol, i64 16 ; 2 uses
  %i.ao = add nuw nsw i32 %.1209.prol, 1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol, !llvm.loop !119

.lr.ph210.prol.loopexit:                          ; preds = %.lr.ph210.prol, %.lr.ph210.preheader
  %.lcssa248.unr = phi <4 x float> [ poison, %.lr.ph210.preheader ], [ %i.al, %.lr.ph210.prol ]
  %.1209.unr = phi i32 [ %.043.lcssa, %.lr.ph210.preheader ], [ %i.ao, %.lr.ph210.prol ]
  %.145208.unr = phi ptr [ %.044.lcssa, %.lr.ph210.preheader ], [ %i.am, %.lr.ph210.prol ]
  %.147207.unr = phi ptr [ %.046.lcssa, %.lr.ph210.preheader ], [ %i.an, %.lr.ph210.prol ]
  %.2206.unr = phi <4 x float> [ %.1188.lcssa, %.lr.ph210.preheader ], [ %i.al, %.lr.ph210.prol ]
  %i.ap = sub i32 %.043.lcssa, %i.aa
  %i.aq = icmp ugt i32 %i.ap, -4
  br i1 %i.aq, label %._crit_edge, label %.lr.ph210

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.043198 = phi i32 [ %i.bx, %.lr.ph ], [ 0, %bb.e ]
  %.044197 = phi ptr [ %i.bv, %.lr.ph ], [ %i.z, %bb.e ] ; 5 uses
  %.046196 = phi ptr [ %i.bw, %.lr.ph ], [ %i.y, %bb.e ] ; 5 uses
  %.0184195 = phi <4 x float> [ %i.bu, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0185194 = phi <4 x float> [ %i.bs, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0186193 = phi <4 x float> [ %i.bq, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.1188192 = phi <4 x float> [ %i.bo, %.lr.ph ], [ %.0187, %bb.e ]
  %i.ar = load float, ptr %.044197, align 4, !tbaa !52
  %i.as = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = getelementptr inbounds nuw i8, ptr %.044197, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !52
  %i.aw = insertelement <4 x float> poison, float %i.av, i64 0
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ay = getelementptr inbounds nuw i8, ptr %.044197, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !52
  %i.ba = insertelement <4 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = getelementptr inbounds nuw i8, ptr %.044197, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !52
  %i.be = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = load <4 x float>, ptr %.046196, align 1, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %.046196, i64 16
  %i.bi = load <4 x float>, ptr %i.bh, align 1, !tbaa !49
  %i.bj = getelementptr inbounds nuw i8, ptr %.046196, i64 32
  %i.bk = load <4 x float>, ptr %i.bj, align 1, !tbaa !49
  %i.bl = getelementptr inbounds nuw i8, ptr %.046196, i64 48
  %i.bm = load <4 x float>, ptr %i.bl, align 1, !tbaa !49
  %i.bn = fmul fast <4 x float> %i.bg, %i.at
  %i.bo = fadd fast <4 x float> %i.bn, %.1188192  ; 2 uses
  %i.bp = fmul fast <4 x float> %i.bi, %i.ax
  %i.bq = fadd fast <4 x float> %i.bp, %.0186193  ; 2 uses
  %i.br = fmul fast <4 x float> %i.bk, %i.bb
  %i.bs = fadd fast <4 x float> %i.br, %.0185194  ; 2 uses
  %i.bt = fmul fast <4 x float> %i.bm, %i.bf
  %i.bu = fadd fast <4 x float> %i.bt, %.0184195  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.044197, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.046196, i64 64 ; 2 uses
  %i.bx = add nuw nsw i32 %.043198, 4             ; 2 uses
  %i.by = or disjoint i32 %i.bx, 3
  %i.bz = icmp slt i32 %i.by, %i.aa
  br i1 %i.bz, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !120

.lr.ph210:                                        ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210
  %.1209 = phi i32 [ %i.dg, %.lr.ph210 ], [ %.1209.unr, %.lr.ph210.prol.loopexit ]
  %.145208 = phi ptr [ %i.de, %.lr.ph210 ], [ %.145208.unr, %.lr.ph210.prol.loopexit ] ; 5 uses
  %.147207 = phi ptr [ %i.df, %.lr.ph210 ], [ %.147207.unr, %.lr.ph210.prol.loopexit ] ; 5 uses
  %.2206 = phi <4 x float> [ %i.dd, %.lr.ph210 ], [ %.2206.unr, %.lr.ph210.prol.loopexit ]
  %i.ca = load float, ptr %.145208, align 4, !tbaa !52
  %i.cb = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = load <4 x float>, ptr %.147207, align 1, !tbaa !49
  %i.ce = fmul fast <4 x float> %i.cc, %i.cd
  %i.cf = fadd fast <4 x float> %i.ce, %.2206
  %i.cg = getelementptr inbounds nuw i8, ptr %.145208, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.147207, i64 16
  %i.ci = load float, ptr %i.cg, align 4, !tbaa !52
  %i.cj = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cl = load <4 x float>, ptr %i.ch, align 1, !tbaa !49
  %i.cm = fmul fast <4 x float> %i.ck, %i.cl
  %i.cn = fadd fast <4 x float> %i.cm, %i.cf
  %i.co = getelementptr inbounds nuw i8, ptr %.145208, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.147207, i64 32
  %i.cq = load float, ptr %i.co, align 4, !tbaa !52
  %i.cr = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ct = load <4 x float>, ptr %i.cp, align 1, !tbaa !49
  %i.cu = fmul fast <4 x float> %i.cs, %i.ct
  %i.cv = fadd fast <4 x float> %i.cu, %i.cn
  %i.cw = getelementptr inbounds nuw i8, ptr %.145208, i64 12
  %i.cx = getelementptr inbounds nuw i8, ptr %.147207, i64 48
  %i.cy = load float, ptr %i.cw, align 4, !tbaa !52
  %i.cz = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = load <4 x float>, ptr %i.cx, align 1, !tbaa !49
  %i.dc = fmul fast <4 x float> %i.da, %i.db
  %i.dd = fadd fast <4 x float> %i.dc, %i.cv      ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.145208, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %.147207, i64 64
  %i.dg = add nuw nsw i32 %.1209, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.dg, %i.aa
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph210, !llvm.loop !121

._crit_edge:                                      ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210, %.preheader
  %.2.lcssa = phi <4 x float> [ %.1188.lcssa, %.preheader ], [ %.lcssa248.unr, %.lr.ph210.prol.loopexit ], [ %i.dd, %.lr.ph210 ]
  %i.dh = fadd fast <4 x float> %.0185.lcssa, %.2.lcssa ; 10 uses
  %i.di = load i32, ptr %7, align 4, !tbaa !57
  switch i32 %i.di, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %.noexc
    i32 3, label %bb.g
    i32 4, label %.noexc50
    i32 5, label %.noexc51
    i32 6, label %.noexc52
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.dk = load ptr, ptr %8, align 8, !tbaa !19
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !52
  %i.dm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.dh)
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.dh)
  %i.do = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = fmul fast <4 x float> %i.dp, %i.dn
  %i.dr = fadd fast <4 x float> %i.dq, %i.dm
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.ds = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !52
  %i.du = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !52
  %i.dy = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.dv)
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.dz)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc50:                                         ; preds = %._crit_edge
  %i.ec = fneg fast <4 x float> %i.dh
  %i.ed = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ec, <4 x float> splat (float f0x42B0C0A5))
  %i.ee = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ed, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ef = fmul fast <4 x float> %i.ee, splat (float f0x3FB8AA3B)
  %i.eg = fadd fast <4 x float> %i.ef, splat (float 5.000000e-01) ; 2 uses
  %i.eh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eg)
  %i.ei = sitofp fast <4 x i32> %i.eh to <4 x float> ; 2 uses
  %i.ej = fcmp fast olt <4 x float> %i.eg, %i.ei
  %i.ek = select <4 x i1> %i.ej, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.el = fsub fast <4 x float> %i.ei, %i.ek      ; 2 uses
  %i.em = fmul fast <4 x float> %i.el, splat (float f0x3F317218)
  %i.en = fsub fast <4 x float> %i.ee, %i.em      ; 8 uses
  %i.eo = fmul fast <4 x float> %i.en, %i.en
  %i.ep = fmul fast <4 x float> %i.en, splat (float f0x39506967)
  %i.eq = fadd fast <4 x float> %i.ep, splat (float f0x3AB743CE)
  %i.er = fmul fast <4 x float> %i.eq, %i.en
  %i.es = fadd fast <4 x float> %i.er, splat (float f0x3C088908)
  %i.et = fmul fast <4 x float> %i.es, %i.en
  %i.eu = fadd fast <4 x float> %i.et, splat (float f0x3D2AA9C1)
  %i.ev = fmul fast <4 x float> %i.eu, %i.en
  %i.ew = fadd fast <4 x float> %i.ev, splat (float f0x3E2AAAAA)
  %i.ex = fmul fast <4 x float> %i.ew, %i.en
  %i.ey = fadd fast <4 x float> %i.ex, splat (float 5.000000e-01)
  %i.ez = fmul fast <4 x float> %i.eo, %i.ey
  %i.fa = fadd fast <4 x float> %i.en, %i.ez
  %i.fb = fadd fast <4 x float> %i.fa, splat (float 1.000000e+00)
  %i.fc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.el)
  %i.fd = shl <4 x i32> %i.fc, splat (i32 23)
  %i.fe = add <4 x i32> %i.fd, splat (i32 1065353216)
  %i.ff = bitcast <4 x i32> %i.fe to <4 x float>
  %i.fg = fmul fast <4 x float> %i.fb, %i.ff
  %i.fh = fadd fast <4 x float> %i.fg, splat (float 1.000000e+00)
  %i.fi = fdiv fast <4 x float> splat (float 1.000000e+00), %i.fh
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc51:                                         ; preds = %._crit_edge
  %i.fj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> splat (float f0x42B0C0A5))
  %i.fk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fl = fmul fast <4 x float> %i.fk, splat (float f0x3FB8AA3B)
  %i.fm = fadd fast <4 x float> %i.fl, splat (float 5.000000e-01) ; 2 uses
  %i.fn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fm)
  %i.fo = sitofp fast <4 x i32> %i.fn to <4 x float> ; 2 uses
  %i.fp = fcmp fast olt <4 x float> %i.fm, %i.fo
  %i.fq = select <4 x i1> %i.fp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fr = fsub fast <4 x float> %i.fo, %i.fq      ; 2 uses
  %i.fs = fmul fast <4 x float> %i.fr, splat (float f0x3F317218)
  %i.ft = fsub fast <4 x float> %i.fk, %i.fs      ; 8 uses
  %i.fu = fmul fast <4 x float> %i.ft, %i.ft
  %i.fv = fmul fast <4 x float> %i.ft, splat (float f0x39506967)
  %i.fw = fadd fast <4 x float> %i.fv, splat (float f0x3AB743CE)
  %i.fx = fmul fast <4 x float> %i.fw, %i.ft
  %i.fy = fadd fast <4 x float> %i.fx, splat (float f0x3C088908)
  %i.fz = fmul fast <4 x float> %i.fy, %i.ft
  %i.ga = fadd fast <4 x float> %i.fz, splat (float f0x3D2AA9C1)
  %i.gb = fmul fast <4 x float> %i.ga, %i.ft
  %i.gc = fadd fast <4 x float> %i.gb, splat (float f0x3E2AAAAA)
  %i.gd = fmul fast <4 x float> %i.gc, %i.ft
  %i.ge = fadd fast <4 x float> %i.gd, splat (float 5.000000e-01)
  %i.gf = fmul fast <4 x float> %i.fu, %i.ge
  %i.gg = fadd fast <4 x float> %i.ft, %i.gf
  %i.gh = fadd fast <4 x float> %i.gg, splat (float 1.000000e+00)
  %i.gi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fr)
  %i.gj = shl <4 x i32> %i.gi, splat (i32 23)
  %i.gk = add <4 x i32> %i.gj, splat (i32 1065353216)
  %i.gl = bitcast <4 x i32> %i.gk to <4 x float>
  %i.gm = fmul fast <4 x float> %i.gh, %i.gl
  %i.gn = fadd fast <4 x float> %i.gm, splat (float 1.000000e+00) ; 2 uses
  %i.go = fcmp fast ole <4 x float> %i.gn, zeroinitializer
  %i.gp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gn, <4 x float> splat (float f0x00800000))
  %i.gq = bitcast <4 x float> %i.gp to <4 x i32>  ; 2 uses
  %i.gr = lshr <4 x i32> %i.gq, splat (i32 23)
  %i.gs = and <4 x i32> %i.gq, splat (i32 -2139095041)
  %i.gt = or disjoint <4 x i32> %i.gs, splat (i32 1056964608)
  %i.gu = bitcast <4 x i32> %i.gt to <4 x float>  ; 3 uses
  %i.gv = add nsw <4 x i32> %i.gr, splat (i32 -127)
  %i.gw = sitofp fast <4 x i32> %i.gv to <4 x float> ; 2 uses
  %i.gx = fadd fast <4 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = fcmp fast olt <4 x float> %i.gu, splat (float f0x3F3504F3) ; 2 uses
  %i.gz = select <4 x i1> %i.gy, <4 x float> %i.gu, <4 x float> zeroinitializer
  %i.ha = fadd fast <4 x float> %i.gu, splat (float -1.000000e+00)
  %i.hb = select fast <4 x i1> %i.gy, <4 x float> %i.gw, <4 x float> %i.gx
  %i.hc = fadd fast <4 x float> %i.ha, %i.gz      ; 12 uses
  %i.hd = fmul fast <4 x float> %i.hc, %i.hc
  %i.he = fmul fast <4 x float> %i.hc, splat (float f0x3D9021BB)
  %i.hf = fadd fast <4 x float> %i.he, splat (float f0xBDEBD1B8)
  %i.hg = fmul fast <4 x float> %i.hf, %i.hc
  %i.hh = fadd fast <4 x float> %i.hg, splat (float f0x3DEF251A)
  %i.hi = fmul fast <4 x float> %i.hh, %i.hc
  %i.hj = fadd fast <4 x float> %i.hi, splat (float f0xBDFE5D4F)
  %i.hk = fmul fast <4 x float> %i.hj, %i.hc
  %i.hl = fadd fast <4 x float> %i.hk, splat (float f0x3E11E9BF)
  %i.hm = fmul fast <4 x float> %i.hl, %i.hc
  %i.hn = fadd fast <4 x float> %i.hm, splat (float f0xBE2AAE50)
  %i.ho = fmul fast <4 x float> %i.hn, %i.hc
  %i.hp = fadd fast <4 x float> %i.ho, splat (float f0x3E4CCEAC)
  %i.hq = fmul fast <4 x float> %i.hp, %i.hc
  %i.hr = fadd fast <4 x float> %i.hq, splat (float f0xBE7FFFFC)
  %i.hs = fmul fast <4 x float> %i.hr, %i.hc
  %i.ht = fadd fast <4 x float> %i.hs, splat (float f0x3EAAAAAA)
  %i.hu = fmul fast <4 x float> %i.ht, %i.hc
  %reass.mul = fmul fast <4 x float> %i.hb, splat (float f0x3F317218)
  %reass.add190 = fadd fast <4 x float> %i.hu, splat (float -5.000000e-01)
  %reass.mul191 = fmul fast <4 x float> %i.hd, %reass.add190
  %i.hv = fadd fast <4 x float> %reass.mul, %i.hc
  %i.hw = fadd fast <4 x float> %i.hv, %reass.mul191
  %.neg = fmul fast <4 x float> %i.hw, splat (float -2.000000e+00)
  %i.hx = select fast <4 x i1> %i.go, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.hy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hx, <4 x float> splat (float f0x42B0C0A5))
  %i.hz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ia = fmul fast <4 x float> %i.hz, splat (float f0x3FB8AA3B)
  %i.ib = fadd fast <4 x float> %i.ia, splat (float 5.000000e-01) ; 2 uses
  %i.ic = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ib)
  %i.id = sitofp fast <4 x i32> %i.ic to <4 x float> ; 2 uses
  %i.ie = fcmp fast olt <4 x float> %i.ib, %i.id
  %i.if = select <4 x i1> %i.ie, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ig = fsub fast <4 x float> %i.id, %i.if      ; 2 uses
  %i.ih = fmul fast <4 x float> %i.ig, splat (float f0x3F317218)
  %i.ii = fsub fast <4 x float> %i.hz, %i.ih      ; 8 uses
  %i.ij = fmul fast <4 x float> %i.ii, %i.ii
  %i.ik = fmul fast <4 x float> %i.ii, splat (float f0x39506967)
  %i.il = fadd fast <4 x float> %i.ik, splat (float f0x3AB743CE)
  %i.im = fmul fast <4 x float> %i.il, %i.ii
  %i.in = fadd fast <4 x float> %i.im, splat (float f0x3C088908)
  %i.io = fmul fast <4 x float> %i.in, %i.ii
  %i.ip = fadd fast <4 x float> %i.io, splat (float f0x3D2AA9C1)
  %i.iq = fmul fast <4 x float> %i.ip, %i.ii
  %i.ir = fadd fast <4 x float> %i.iq, splat (float f0x3E2AAAAA)
  %i.is = fmul fast <4 x float> %i.ir, %i.ii
  %i.it = fadd fast <4 x float> %i.is, splat (float 5.000000e-01)
  %i.iu = fmul fast <4 x float> %i.ij, %i.it
  %i.iv = fadd fast <4 x float> %i.ii, %i.iu
  %i.iw = fadd fast <4 x float> %i.iv, splat (float 1.000000e+00)
  %i.ix = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ig)
  %i.iy = shl <4 x i32> %i.ix, splat (i32 23)
  %i.iz = add <4 x i32> %i.iy, splat (i32 1065353216)
  %i.ja = bitcast <4 x i32> %i.iz to <4 x float>
  %i.jb = fmul fast <4 x float> %i.iw, %i.ja
  %i.jc = fadd fast <4 x float> %i.jb, splat (float 1.000000e+00)
  %i.jd = fdiv fast <4 x float> splat (float 2.000000e+00), %i.jc
  %i.je = fadd fast <4 x float> %i.jd, splat (float -1.000000e+00)
  %i.jf = fmul fast <4 x float> %i.je, %i.dh
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc52:                                         ; preds = %._crit_edge
  %i.jg = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !52
  %i.ji = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !52
  %i.jm = insertelement <4 x float> poison, float %i.jl, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = fmul fast <4 x float> %i.jj, %i.dh
  %i.jp = fadd fast <4 x float> %i.jo, %i.jn
  %i.jq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jp, <4 x float> zeroinitializer)
  %i.jr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jq, <4 x float> splat (float 1.000000e+00))
  %i.js = fmul fast <4 x float> %i.jr, %i.dh
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc52, %.noexc51, %.noexc50, %bb.g, %.noexc, %bb.f, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.js, %.noexc52 ], [ %i.dj, %bb.f ], [ %i.dr, %.noexc ], [ %i.eb, %bb.g ], [ %i.fi, %.noexc50 ], [ %i.jf, %.noexc51 ], [ %i.dh, %._crit_edge ]
  %i.jt = load ptr, ptr %9, align 8, !tbaa !19
  %.idx230 = shl nsw i64 %indvars.iv, 4
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 %.idx230
  store <4 x float> %.0.i, ptr %i.ju, align 1, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond225.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond225.not, label %._crit_edge216, label %bb.c

._crit_edge216:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge216, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not275 = icmp sgt i32 %i.k, %i.j
  br i1 %.not275, label %._crit_edge279, label %.lr.ph278

.lr.ph278:                                        ; preds = %bb.b, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.0276 = phi i32 [ %i.jb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !57
  %i.m = shl nsw i32 %.0276, 2
  %i.n = add nsw i32 %i.l, %i.m                   ; 6 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !65     ; 2 uses
  %.not89 = icmp eq ptr %i.o, null
  br i1 %.not89, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph278
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load <4 x float>, ptr %i.q, align 4, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph278
  %.sroa.0.0 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph278 ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !19     ; 4 uses
  %i.t = load i32, ptr %6, align 4, !tbaa !57     ; 9 uses
  %i.u = mul nsw i32 %i.t, %i.n
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %i.x = add nsw i32 %i.n, 1
  %i.y = mul nsw i32 %i.t, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.z ; 2 uses
  %i.ab = add nsw i32 %i.n, 2
  %i.ac = mul nsw i32 %i.t, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ad ; 2 uses
  %i.af = add nsw i32 %i.n, 3
  %i.ag = mul nsw i32 %i.t, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.ak = icmp sgt i32 %i.t, 3
  br i1 %i.ak, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.al = and i32 %i.t, 2147483644
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.d
  %.0243.lcssa = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.at, %.preheader.loopexit ] ; 2 uses
  %.0242.lcssa = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.av, %.preheader.loopexit ] ; 2 uses
  %.0241.lcssa = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ax, %.preheader.loopexit ] ; 2 uses
  %.0240.lcssa = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.az, %.preheader.loopexit ] ; 2 uses
  %.086.lcssa = phi ptr [ %i.w, %bb.d ], [ %i.bb, %.preheader.loopexit ]
  %.084.lcssa = phi ptr [ %i.aa, %bb.d ], [ %i.bc, %.preheader.loopexit ]
  %.082.lcssa = phi ptr [ %i.ae, %bb.d ], [ %i.bd, %.preheader.loopexit ]
  %.080.lcssa = phi ptr [ %i.ai, %bb.d ], [ %i.be, %.preheader.loopexit ]
  %.078.lcssa = phi ptr [ %i.aj, %bb.d ], [ %i.ba, %.preheader.loopexit ]
  %.077.lcssa = phi i32 [ 0, %bb.d ], [ %i.al, %.preheader.loopexit ] ; 2 uses
  %i.am = icmp slt i32 %.077.lcssa, %i.t
  br i1 %i.am, label %.lr.ph273, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.077256 = phi i32 [ %i.bf, %.lr.ph ], [ 0, %bb.d ]
  %.078255 = phi ptr [ %i.ba, %.lr.ph ], [ %i.aj, %bb.d ] ; 2 uses
  %.080254 = phi ptr [ %i.be, %.lr.ph ], [ %i.ai, %bb.d ] ; 2 uses
  %.082253 = phi ptr [ %i.bd, %.lr.ph ], [ %i.ae, %bb.d ] ; 2 uses
  %.084252 = phi ptr [ %i.bc, %.lr.ph ], [ %i.aa, %bb.d ] ; 2 uses
  %.086251 = phi ptr [ %i.bb, %.lr.ph ], [ %i.w, %bb.d ] ; 2 uses
  %.0240250 = phi <4 x float> [ %i.az, %.lr.ph ], [ zeroinitializer, %bb.d ]
  %.0241249 = phi <4 x float> [ %i.ax, %.lr.ph ], [ zeroinitializer, %bb.d ]
  %.0242248 = phi <4 x float> [ %i.av, %.lr.ph ], [ zeroinitializer, %bb.d ]
  %.0243247 = phi <4 x float> [ %i.at, %.lr.ph ], [ zeroinitializer, %bb.d ]
  %i.an = load <4 x float>, ptr %.078255, align 1, !tbaa !49 ; 4 uses
  %i.ao = load <4 x float>, ptr %.086251, align 1, !tbaa !49
  %i.ap = load <4 x float>, ptr %.084252, align 1, !tbaa !49
  %i.aq = load <4 x float>, ptr %.082253, align 1, !tbaa !49
  %i.ar = load <4 x float>, ptr %.080254, align 1, !tbaa !49
  %i.as = fmul fast <4 x float> %i.ao, %i.an
  %i.at = fadd fast <4 x float> %i.as, %.0243247  ; 2 uses
  %i.au = fmul fast <4 x float> %i.ap, %i.an
  %i.av = fadd fast <4 x float> %i.au, %.0242248  ; 2 uses
  %i.aw = fmul fast <4 x float> %i.aq, %i.an
  %i.ax = fadd fast <4 x float> %i.aw, %.0241249  ; 2 uses
  %i.ay = fmul fast <4 x float> %i.ar, %i.an
  %i.az = fadd fast <4 x float> %i.ay, %.0240250  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.078255, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.086251, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.084252, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.082253, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.080254, i64 16 ; 2 uses
  %i.bf = add nuw nsw i32 %.077256, 4             ; 2 uses
  %i.bg = or disjoint i32 %i.bf, 3
  %i.bh = icmp slt i32 %i.bg, %i.t
  br i1 %i.bh, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !122

.lr.ph273:                                        ; preds = %.preheader, %.lr.ph273
  %.1272 = phi i32 [ %i.ca, %.lr.ph273 ], [ %.077.lcssa, %.preheader ]
  %.179271 = phi ptr [ %i.bv, %.lr.ph273 ], [ %.078.lcssa, %.preheader ] ; 2 uses
  %.181270 = phi ptr [ %i.bz, %.lr.ph273 ], [ %.080.lcssa, %.preheader ] ; 2 uses
  %.183269 = phi ptr [ %i.by, %.lr.ph273 ], [ %.082.lcssa, %.preheader ] ; 2 uses
  %.185268 = phi ptr [ %i.bx, %.lr.ph273 ], [ %.084.lcssa, %.preheader ] ; 2 uses
  %.187267 = phi ptr [ %i.bw, %.lr.ph273 ], [ %.086.lcssa, %.preheader ] ; 2 uses
  %.sroa.0.1266 = phi <4 x float> [ %i.bu, %.lr.ph273 ], [ %.sroa.0.0, %.preheader ]
  %i.bi = load float, ptr %.179271, align 4, !tbaa !52
  %i.bj = load float, ptr %.187267, align 4, !tbaa !52
  %i.bk = load float, ptr %.185268, align 4, !tbaa !52
  %i.bl = load float, ptr %.183269, align 4, !tbaa !52
  %i.bm = load float, ptr %.181270, align 4, !tbaa !52
  %i.bn = insertelement <4 x float> poison, float %i.bj, i64 0
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 1
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 2
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 3
  %i.br = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = fmul fast <4 x float> %i.bq, %i.bs
  %i.bu = fadd fast <4 x float> %i.bt, %.sroa.0.1266 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.179271, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.187267, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.185268, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %.183269, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.181270, i64 4
  %i.ca = add nuw nsw i32 %.1272, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph273, !llvm.loop !123

._crit_edge:                                      ; preds = %.lr.ph273, %.preheader
  %.sroa.0.1.lcssa = phi <4 x float> [ %.sroa.0.0, %.preheader ], [ %i.bu, %.lr.ph273 ]
  %i.cb = shufflevector <4 x float> %.0243.lcssa, <4 x float> %.0242.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cc = shufflevector <4 x float> %.0241.lcssa, <4 x float> %.0240.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cd = shufflevector <4 x float> %.0243.lcssa, <4 x float> %.0242.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ce = shufflevector <4 x float> %.0241.lcssa, <4 x float> %.0240.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cf = shufflevector <4 x float> %i.cb, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cg = shufflevector <4 x float> %i.cc, <4 x float> %i.cb, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ch = shufflevector <4 x float> %i.cd, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ci = shufflevector <4 x float> %i.ce, <4 x float> %i.cd, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.cj = fadd fast <4 x float> %i.cg, %i.cf
  %i.ck = fadd fast <4 x float> %i.cj, %i.ch
  %i.cl = fadd fast <4 x float> %i.ck, %i.ci
  %i.cm = fadd fast <4 x float> %i.cl, %.sroa.0.1.lcssa ; 10 uses
  %i.cn = load i32, ptr %8, align 4, !tbaa !57
  switch i32 %i.cn, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc
    i32 3, label %bb.f
    i32 4, label %.noexc90
    i32 5, label %.noexc91
    i32 6, label %.noexc92
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cm, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.cp = load ptr, ptr %9, align 8, !tbaa !19
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !52
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.cm)
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.cm)
  %i.ct = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cv = fmul fast <4 x float> %i.cu, %i.cs
  %i.cw = fadd fast <4 x float> %i.cv, %i.cr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.cx = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !52
  %i.cz = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !52
  %i.dd = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cm, <4 x float> nofpclass(nan inf) %i.da)
  %i.dg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.df, <4 x float> nofpclass(nan inf) %i.de)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc90:                                         ; preds = %._crit_edge
  %i.dh = fneg fast <4 x float> %i.cm
  %i.di = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> splat (float f0x42B0C0A5))
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.di, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dk = fmul fast <4 x float> %i.dj, splat (float f0x3FB8AA3B)
  %i.dl = fadd fast <4 x float> %i.dk, splat (float 5.000000e-01) ; 2 uses
  %i.dm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dl)
  %i.dn = sitofp fast <4 x i32> %i.dm to <4 x float> ; 2 uses
  %i.do = fcmp fast olt <4 x float> %i.dl, %i.dn
  %i.dp = select <4 x i1> %i.do, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dq = fsub fast <4 x float> %i.dn, %i.dp      ; 2 uses
  %i.dr = fmul fast <4 x float> %i.dq, splat (float f0x3F317218)
  %i.ds = fsub fast <4 x float> %i.dj, %i.dr      ; 8 uses
  %i.dt = fmul fast <4 x float> %i.ds, %i.ds
  %i.du = fmul fast <4 x float> %i.ds, splat (float f0x39506967)
  %i.dv = fadd fast <4 x float> %i.du, splat (float f0x3AB743CE)
  %i.dw = fmul fast <4 x float> %i.dv, %i.ds
  %i.dx = fadd fast <4 x float> %i.dw, splat (float f0x3C088908)
  %i.dy = fmul fast <4 x float> %i.dx, %i.ds
  %i.dz = fadd fast <4 x float> %i.dy, splat (float f0x3D2AA9C1)
  %i.ea = fmul fast <4 x float> %i.dz, %i.ds
  %i.eb = fadd fast <4 x float> %i.ea, splat (float f0x3E2AAAAA)
  %i.ec = fmul fast <4 x float> %i.eb, %i.ds
  %i.ed = fadd fast <4 x float> %i.ec, splat (float 5.000000e-01)
  %i.ee = fmul fast <4 x float> %i.dt, %i.ed
  %i.ef = fadd fast <4 x float> %i.ds, %i.ee
  %i.eg = fadd fast <4 x float> %i.ef, splat (float 1.000000e+00)
  %i.eh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dq)
  %i.ei = shl <4 x i32> %i.eh, splat (i32 23)
  %i.ej = add <4 x i32> %i.ei, splat (i32 1065353216)
  %i.ek = bitcast <4 x i32> %i.ej to <4 x float>
  %i.el = fmul fast <4 x float> %i.eg, %i.ek
  %i.em = fadd fast <4 x float> %i.el, splat (float 1.000000e+00)
  %i.en = fdiv fast <4 x float> splat (float 1.000000e+00), %i.em
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc91:                                         ; preds = %._crit_edge
  %i.eo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cm, <4 x float> splat (float f0x42B0C0A5))
  %i.ep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eo, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eq = fmul fast <4 x float> %i.ep, splat (float f0x3FB8AA3B)
  %i.er = fadd fast <4 x float> %i.eq, splat (float 5.000000e-01) ; 2 uses
  %i.es = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.er)
  %i.et = sitofp fast <4 x i32> %i.es to <4 x float> ; 2 uses
  %i.eu = fcmp fast olt <4 x float> %i.er, %i.et
  %i.ev = select <4 x i1> %i.eu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ew = fsub fast <4 x float> %i.et, %i.ev      ; 2 uses
  %i.ex = fmul fast <4 x float> %i.ew, splat (float f0x3F317218)
  %i.ey = fsub fast <4 x float> %i.ep, %i.ex      ; 8 uses
  %i.ez = fmul fast <4 x float> %i.ey, %i.ey
  %i.fa = fmul fast <4 x float> %i.ey, splat (float f0x39506967)
  %i.fb = fadd fast <4 x float> %i.fa, splat (float f0x3AB743CE)
  %i.fc = fmul fast <4 x float> %i.fb, %i.ey
  %i.fd = fadd fast <4 x float> %i.fc, splat (float f0x3C088908)
  %i.fe = fmul fast <4 x float> %i.fd, %i.ey
  %i.ff = fadd fast <4 x float> %i.fe, splat (float f0x3D2AA9C1)
  %i.fg = fmul fast <4 x float> %i.ff, %i.ey
  %i.fh = fadd fast <4 x float> %i.fg, splat (float f0x3E2AAAAA)
  %i.fi = fmul fast <4 x float> %i.fh, %i.ey
  %i.fj = fadd fast <4 x float> %i.fi, splat (float 5.000000e-01)
  %i.fk = fmul fast <4 x float> %i.ez, %i.fj
  %i.fl = fadd fast <4 x float> %i.ey, %i.fk
  %i.fm = fadd fast <4 x float> %i.fl, splat (float 1.000000e+00)
  %i.fn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ew)
  %i.fo = shl <4 x i32> %i.fn, splat (i32 23)
  %i.fp = add <4 x i32> %i.fo, splat (i32 1065353216)
  %i.fq = bitcast <4 x i32> %i.fp to <4 x float>
  %i.fr = fmul fast <4 x float> %i.fm, %i.fq
  %i.fs = fadd fast <4 x float> %i.fr, splat (float 1.000000e+00) ; 2 uses
  %i.ft = fcmp fast ole <4 x float> %i.fs, zeroinitializer
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fs, <4 x float> splat (float f0x00800000))
  %i.fv = bitcast <4 x float> %i.fu to <4 x i32>  ; 2 uses
  %i.fw = lshr <4 x i32> %i.fv, splat (i32 23)
  %i.fx = and <4 x i32> %i.fv, splat (i32 -2139095041)
  %i.fy = or disjoint <4 x i32> %i.fx, splat (i32 1056964608)
  %i.fz = bitcast <4 x i32> %i.fy to <4 x float>  ; 3 uses
  %i.ga = add nsw <4 x i32> %i.fw, splat (i32 -127)
  %i.gb = sitofp fast <4 x i32> %i.ga to <4 x float> ; 2 uses
  %i.gc = fadd fast <4 x float> %i.gb, splat (float 1.000000e+00)
  %i.gd = fcmp fast olt <4 x float> %i.fz, splat (float f0x3F3504F3) ; 2 uses
  %i.ge = select <4 x i1> %i.gd, <4 x float> %i.fz, <4 x float> zeroinitializer
  %i.gf = fadd fast <4 x float> %i.fz, splat (float -1.000000e+00)
  %i.gg = select fast <4 x i1> %i.gd, <4 x float> %i.gb, <4 x float> %i.gc
  %i.gh = fadd fast <4 x float> %i.gf, %i.ge      ; 12 uses
  %i.gi = fmul fast <4 x float> %i.gh, %i.gh
  %i.gj = fmul fast <4 x float> %i.gh, splat (float f0x3D9021BB)
  %i.gk = fadd fast <4 x float> %i.gj, splat (float f0xBDEBD1B8)
  %i.gl = fmul fast <4 x float> %i.gk, %i.gh
  %i.gm = fadd fast <4 x float> %i.gl, splat (float f0x3DEF251A)
  %i.gn = fmul fast <4 x float> %i.gm, %i.gh
  %i.go = fadd fast <4 x float> %i.gn, splat (float f0xBDFE5D4F)
  %i.gp = fmul fast <4 x float> %i.go, %i.gh
  %i.gq = fadd fast <4 x float> %i.gp, splat (float f0x3E11E9BF)
  %i.gr = fmul fast <4 x float> %i.gq, %i.gh
  %i.gs = fadd fast <4 x float> %i.gr, splat (float f0xBE2AAE50)
  %i.gt = fmul fast <4 x float> %i.gs, %i.gh
  %i.gu = fadd fast <4 x float> %i.gt, splat (float f0x3E4CCEAC)
  %i.gv = fmul fast <4 x float> %i.gu, %i.gh
  %i.gw = fadd fast <4 x float> %i.gv, splat (float f0xBE7FFFFC)
  %i.gx = fmul fast <4 x float> %i.gw, %i.gh
  %i.gy = fadd fast <4 x float> %i.gx, splat (float f0x3EAAAAAA)
  %i.gz = fmul fast <4 x float> %i.gy, %i.gh
  %reass.mul = fmul fast <4 x float> %i.gg, splat (float f0x3F317218)
  %reass.add245 = fadd fast <4 x float> %i.gz, splat (float -5.000000e-01)
  %reass.mul246 = fmul fast <4 x float> %i.gi, %reass.add245
  %i.ha = fadd fast <4 x float> %reass.mul, %i.gh
  %i.hb = fadd fast <4 x float> %i.ha, %reass.mul246
  %.neg = fmul fast <4 x float> %i.hb, splat (float -2.000000e+00)
  %i.hc = select fast <4 x i1> %i.ft, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.hd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hc, <4 x float> splat (float f0x42B0C0A5))
  %i.he = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hf = fmul fast <4 x float> %i.he, splat (float f0x3FB8AA3B)
  %i.hg = fadd fast <4 x float> %i.hf, splat (float 5.000000e-01) ; 2 uses
  %i.hh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hg)
  %i.hi = sitofp fast <4 x i32> %i.hh to <4 x float> ; 2 uses
  %i.hj = fcmp fast olt <4 x float> %i.hg, %i.hi
  %i.hk = select <4 x i1> %i.hj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hl = fsub fast <4 x float> %i.hi, %i.hk      ; 2 uses
  %i.hm = fmul fast <4 x float> %i.hl, splat (float f0x3F317218)
  %i.hn = fsub fast <4 x float> %i.he, %i.hm      ; 8 uses
  %i.ho = fmul fast <4 x float> %i.hn, %i.hn
  %i.hp = fmul fast <4 x float> %i.hn, splat (float f0x39506967)
  %i.hq = fadd fast <4 x float> %i.hp, splat (float f0x3AB743CE)
  %i.hr = fmul fast <4 x float> %i.hq, %i.hn
  %i.hs = fadd fast <4 x float> %i.hr, splat (float f0x3C088908)
  %i.ht = fmul fast <4 x float> %i.hs, %i.hn
  %i.hu = fadd fast <4 x float> %i.ht, splat (float f0x3D2AA9C1)
  %i.hv = fmul fast <4 x float> %i.hu, %i.hn
  %i.hw = fadd fast <4 x float> %i.hv, splat (float f0x3E2AAAAA)
  %i.hx = fmul fast <4 x float> %i.hw, %i.hn
  %i.hy = fadd fast <4 x float> %i.hx, splat (float 5.000000e-01)
  %i.hz = fmul fast <4 x float> %i.ho, %i.hy
  %i.ia = fadd fast <4 x float> %i.hn, %i.hz
  %i.ib = fadd fast <4 x float> %i.ia, splat (float 1.000000e+00)
  %i.ic = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hl)
  %i.id = shl <4 x i32> %i.ic, splat (i32 23)
  %i.ie = add <4 x i32> %i.id, splat (i32 1065353216)
  %i.if = bitcast <4 x i32> %i.ie to <4 x float>
  %i.ig = fmul fast <4 x float> %i.ib, %i.if
  %i.ih = fadd fast <4 x float> %i.ig, splat (float 1.000000e+00)
  %i.ii = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ih
  %i.ij = fadd fast <4 x float> %i.ii, splat (float -1.000000e+00)
  %i.ik = fmul fast <4 x float> %i.ij, %i.cm
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc92:                                         ; preds = %._crit_edge
  %i.il = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !52
  %i.in = insertelement <4 x float> poison, float %i.im, i64 0
  %i.io = shufflevector <4 x float> %i.in, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !52
  %i.ir = insertelement <4 x float> poison, float %i.iq, i64 0
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = fmul fast <4 x float> %i.io, %i.cm
  %i.iu = fadd fast <4 x float> %i.it, %i.is
  %i.iv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iu, <4 x float> zeroinitializer)
  %i.iw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.iv, <4 x float> splat (float 1.000000e+00))
  %i.ix = fmul fast <4 x float> %i.iw, %i.cm
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc92, %.noexc91, %.noexc90, %bb.f, %.noexc, %bb.e, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.ix, %.noexc92 ], [ %i.co, %bb.e ], [ %i.cw, %.noexc ], [ %i.dg, %bb.f ], [ %i.en, %.noexc90 ], [ %i.ik, %.noexc91 ], [ %i.cm, %._crit_edge ]
  %i.iy = load ptr, ptr %10, align 8, !tbaa !19
  %i.iz = sext i32 %i.n to i64
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.iz
  store <4 x float> %.0.i, ptr %i.ja, align 1, !tbaa !49
  %i.jb = add i32 %.0276, 1
  %exitcond289.not = icmp eq i32 %.0276, %i.j
  br i1 %exitcond289.not, label %._crit_edge279, label %.lr.ph278

._crit_edge279:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge279, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16innerproduct_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !57     ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.i, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.j = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !57
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !57
  %i.m = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !65     ; 2 uses
  %.not = icmp eq ptr %i.p, null
  %i.q = load ptr, ptr %5, align 8, !tbaa !19
  %i.r = load i32, ptr %6, align 4, !tbaa !57     ; 7 uses
  %i.s = load ptr, ptr %7, align 8, !tbaa !19     ; 3 uses
  %i.t = icmp sgt i32 %i.r, 3
  %i.u = load i32, ptr %8, align 4, !tbaa !57
  %i.v = load ptr, ptr %10, align 8, !tbaa !19
  %i.w = and i32 %i.r, -4                         ; 2 uses
  %i.x = add i32 %i.r, -4                         ; 2 uses
  %i.y = lshr i32 %i.x, 2
  %i.z = add nuw nsw i32 %i.y, 1                  ; 2 uses
  %xtraiter = and i32 %i.z, 3                     ; 3 uses
  %i.aa = icmp ult i32 %i.x, 12
  %unroll_iter = and i32 %i.z, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod125 = icmp ne i32 %xtraiter, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph87, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.085 = phi i32 [ %i.m, %.lr.ph87 ], [ %i.ea, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.ab = add i32 %.085, %i.e                     ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.051 = phi nsz float [ %i.ae, %bb.d ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %i.af = mul nsw i32 %i.r, %i.ab
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ag ; 3 uses
  br i1 %i.t, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph.epil.preheader, label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04774.epil.init = phi ptr [ %i.s, %.lr.ph.preheader ], [ %i.ce, %.preheader.loopexit.unr-lcssa ]
  %.04973.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.cf, %.preheader.loopexit.unr-lcssa ]
  %.06972.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cd, %.preheader.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod125)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04774.epil = phi ptr [ %i.am, %.lr.ph.epil ], [ %.04774.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.04973.epil = phi ptr [ %i.an, %.lr.ph.epil ], [ %.04973.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.06972.epil = phi <4 x float> [ %i.al, %.lr.ph.epil ], [ %.06972.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ai = load <4 x float>, ptr %.04774.epil, align 1, !tbaa !49
  %i.aj = load <4 x float>, ptr %.04973.epil, align 1, !tbaa !49
  %i.ak = fmul fast <4 x float> %i.aj, %i.ai
  %i.al = fadd fast <4 x float> %i.ak, %.06972.epil ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.04774.epil, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.04973.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !124

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e
  %.069.lcssa = phi <4 x float> [ zeroinitializer, %bb.e ], [ %i.cd, %.preheader.loopexit.unr-lcssa ], [ %i.al, %.lr.ph.epil ] ; 2 uses
  %.049.lcssa = phi ptr [ %i.ah, %bb.e ], [ %i.cf, %.preheader.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil ] ; 3 uses
  %.047.lcssa = phi ptr [ %i.s, %bb.e ], [ %i.ce, %.preheader.loopexit.unr-lcssa ], [ %i.am, %.lr.ph.epil ] ; 3 uses
  %.046.lcssa = phi i32 [ 0, %bb.e ], [ %i.w, %.lr.ph.epil ], [ %i.w, %.preheader.loopexit.unr-lcssa ] ; 4 uses
  %i.ao = icmp slt i32 %.046.lcssa, %i.r
  br i1 %i.ao, label %.lr.ph83.preheader, label %._crit_edge

.lr.ph83.preheader:                               ; preds = %.preheader
  %i.ap = xor i32 %.046.lcssa, -1
  %i.aq = add i32 %i.r, %i.ap                     ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aq, 7
  br i1 %min.iters.check, label %.lr.ph83.preheader116, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph83.preheader
  %n.vec = and i64 %i.as, 8589934584              ; 4 uses
  %i.at = trunc i64 %n.vec to i32
  %i.au = add i32 %.046.lcssa, %i.at
  %i.av = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.aw = getelementptr i8, ptr %.047.lcssa, i64 %i.av
  %i.ax = getelementptr i8, ptr %.049.lcssa, i64 %i.av
  %i.ay = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.051, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.ay, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi109 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %i.az = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.047.lcssa, i64 %i.az ; 2 uses
  %next.gep110 = getelementptr i8, ptr %.049.lcssa, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !52
  %wide.load111 = load <4 x float>, ptr %i.ba, align 4, !tbaa !52
  %i.bb = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load112 = load <4 x float>, ptr %next.gep110, align 4, !tbaa !52
  %wide.load113 = load <4 x float>, ptr %i.bb, align 4, !tbaa !52
  %i.bc = fmul fast <4 x float> %wide.load112, %wide.load
  %i.bd = fmul fast <4 x float> %wide.load113, %wide.load111
  %i.be = fadd fast <4 x float> %i.bc, %vec.phi   ; 2 uses
  %i.bf = fadd fast <4 x float> %i.bd, %vec.phi109 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.bf, %i.be
end_hunk_1
begin_hunk_2_@_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %3, align 4, !tbaa !57    ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph1191, %.thread1072
  %.pr10711243 = phi i32 [ %.pre, %.lr.ph1191 ], [ %.pr10711244, %.thread1072 ] ; 3 uses
  %.pr10731235 = phi i32 [ %.pre, %.lr.ph1191 ], [ %.pr10731236, %.thread1072 ] ; 3 uses
  %.pr1231 = phi i32 [ %.pre, %.lr.ph1191 ], [ %.pr1229, %.thread1072 ] ; 2 uses
  %i.t = phi i32 [ %.pre, %.lr.ph1191 ], [ %i.ayx, %.thread1072 ] ; 2 uses
  %indvars.iv1224 = phi i64 [ %i.r, %.lr.ph1191 ], [ %indvars.iv.next1225, %.thread1072 ] ; 9 uses
  %i.u = icmp eq i32 %i.t, 4
  br i1 %i.u, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %4, align 4, !tbaa !57     ; 2 uses
  %i.w = icmp eq i32 %i.v, 4
  br i1 %i.w, label %bb.e, label %.thread.thread

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %6, align 4, !tbaa !57
  %i.y = icmp sgt i32 %i.x, 3
  br i1 %i.y, label %.lr.ph1122.preheader, label %thread-pre-split

.lr.ph1122.preheader:                             ; preds = %bb.e
  %i.z = load ptr, ptr %5, align 8, !tbaa !19
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !47
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %indvars.iv1224, %i.ab
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !48
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  br label %.lr.ph1122

.lr.ph1122:                                       ; preds = %.lr.ph1122.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183
  %indvars.iv = phi i64 [ 0, %.lr.ph1122.preheader ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183 ] ; 3 uses
  %.01561120 = phi ptr [ %i.af, %.lr.ph1122.preheader ], [ %i.aae, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183 ] ; 3 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !19
  %i.ah = load i32, ptr %i.n, align 4, !tbaa !47
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %indvars.iv, %i.ai
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !48
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al
  %i.an = load ptr, ptr %8, align 8, !tbaa !19
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !47
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %indvars.iv1224, %i.ap
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !48
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = load ptr, ptr %9, align 8, !tbaa !65    ; 2 uses
  %.not168 = icmp eq ptr %i.au, null
  br i1 %.not168, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph1122
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %i.aw = load <4 x float>, ptr %i.av, align 1, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph1122
  %.0973 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1122 ], [ %i.aw, %bb.f ] ; 8 uses
  %i.ax = load i32, ptr %10, align 4, !tbaa !57   ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.01581115 = phi i32 [ %i.bz, %.lr.ph ], [ 0, %bb.g ]
  %.01591114 = phi ptr [ %i.bx, %.lr.ph ], [ %i.at, %bb.g ] ; 2 uses
  %.01601113 = phi ptr [ %i.by, %.lr.ph ], [ %i.am, %bb.g ] ; 2 uses
  %.09701112 = phi <4 x float> [ %i.bw, %.lr.ph ], [ %.0973, %bb.g ]
  %.09711111 = phi <4 x float> [ %i.bu, %.lr.ph ], [ %.0973, %bb.g ]
  %.09721110 = phi <4 x float> [ %i.bs, %.lr.ph ], [ %.0973, %bb.g ]
  %.19741109 = phi <4 x float> [ %i.bq, %.lr.ph ], [ %.0973, %bb.g ]
  %i.az = load <4 x i16>, ptr %.01591114, align 2, !tbaa !72
  %i.ba = zext <4 x i16> %i.az to <4 x i32>
  %i.bb = shl nuw <4 x i32> %i.ba, splat (i32 16) ; 4 uses
  %i.bc = bitcast <4 x i32> %i.bb to <4 x float>
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.be = bitcast <4 x i32> %i.bb to <4 x float>
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bg = bitcast <4 x i32> %i.bb to <4 x float>
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bi = bitcast <4 x i32> %i.bb to <4 x float>
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bk = load i64, ptr %.01601113, align 1, !tbaa !49
  %i.bl = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %i.bm = bitcast <2 x i64> %i.bl to <8 x i16>
  %i.bn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bo = bitcast <8 x i16> %i.bn to <4 x float>  ; 4 uses
  %i.bp = fmul fast <4 x float> %i.bd, %i.bo
  %i.bq = fadd fast <4 x float> %i.bp, %.19741109 ; 2 uses
  %i.br = fmul fast <4 x float> %i.bf, %i.bo
  %i.bs = fadd fast <4 x float> %i.br, %.09721110 ; 2 uses
  %i.bt = fmul fast <4 x float> %i.bh, %i.bo
  %i.bu = fadd fast <4 x float> %i.bt, %.09711111 ; 2 uses
  %i.bv = fmul fast <4 x float> %i.bj, %i.bo
  %i.bw = fadd fast <4 x float> %i.bv, %.09701112 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01591114, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.01601113, i64 8
  %i.bz = add nuw nsw i32 %.01581115, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bz, %i.ax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !128

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %.1974.lcssa = phi <4 x float> [ %.0973, %bb.g ], [ %i.bq, %.lr.ph ] ; 10 uses
  %.0972.lcssa = phi <4 x float> [ %.0973, %bb.g ], [ %i.bs, %.lr.ph ] ; 10 uses
  %.0971.lcssa = phi <4 x float> [ %.0973, %bb.g ], [ %i.bu, %.lr.ph ] ; 10 uses
  %.0970.lcssa = phi <4 x float> [ %.0973, %bb.g ], [ %i.bw, %.lr.ph ] ; 10 uses
  %i.ca = load i32, ptr %11, align 4, !tbaa !57
  switch i32 %i.ca, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread989
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread: ; preds = %._crit_edge
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1974.lcssa, <4 x float> zeroinitializer)
  %i.cc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0972.lcssa, <4 x float> zeroinitializer)
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0971.lcssa, <4 x float> zeroinitializer)
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0970.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980: ; preds = %._crit_edge
  %i.cf = load ptr, ptr %12, align 8, !tbaa !19
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !52
  %i.ch = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1974.lcssa)
  %i.ci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1974.lcssa)
  %i.cj = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cl = fmul fast <4 x float> %i.ck, %i.ci
  %i.cm = fadd fast <4 x float> %i.cl, %i.ch
  %i.cn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0972.lcssa)
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0972.lcssa)
  %i.cp = fmul fast <4 x float> %i.ck, %i.co
  %i.cq = fadd fast <4 x float> %i.cp, %i.cn
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0971.lcssa)
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0971.lcssa)
  %i.ct = fmul fast <4 x float> %i.ck, %i.cs
  %i.cu = fadd fast <4 x float> %i.ct, %i.cr
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0970.lcssa)
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0970.lcssa)
  %i.cx = fmul fast <4 x float> %i.ck, %i.cw
  %i.cy = fadd fast <4 x float> %i.cx, %i.cv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983: ; preds = %._crit_edge
  %i.cz = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !52
  %i.db = insertelement <4 x float> poison, float %i.da, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !52
  %i.df = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1974.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.di = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.dg)
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0972.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.dg)
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0971.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.dm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dl, <4 x float> nofpclass(nan inf) %i.dg)
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0970.lcssa, <4 x float> nofpclass(nan inf) %i.dc)
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dn, <4 x float> nofpclass(nan inf) %i.dg)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986: ; preds = %._crit_edge
  %i.dp = fneg fast <4 x float> %.1974.lcssa
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> splat (float f0x42B0C0A5))
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ds = fmul fast <4 x float> %i.dr, splat (float f0x3FB8AA3B)
  %i.dt = fadd fast <4 x float> %i.ds, splat (float 5.000000e-01) ; 2 uses
  %i.du = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dt)
  %i.dv = sitofp fast <4 x i32> %i.du to <4 x float> ; 2 uses
  %i.dw = fcmp fast olt <4 x float> %i.dt, %i.dv
  %i.dx = select <4 x i1> %i.dw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dy = fsub fast <4 x float> %i.dv, %i.dx      ; 2 uses
  %i.dz = fmul fast <4 x float> %i.dy, splat (float f0x3F317218)
  %i.ea = fsub fast <4 x float> %i.dr, %i.dz      ; 8 uses
  %i.eb = fmul fast <4 x float> %i.ea, %i.ea
  %i.ec = fmul fast <4 x float> %i.ea, splat (float f0x39506967)
  %i.ed = fadd fast <4 x float> %i.ec, splat (float f0x3AB743CE)
  %i.ee = fmul fast <4 x float> %i.ed, %i.ea
  %i.ef = fadd fast <4 x float> %i.ee, splat (float f0x3C088908)
  %i.eg = fmul fast <4 x float> %i.ef, %i.ea
  %i.eh = fadd fast <4 x float> %i.eg, splat (float f0x3D2AA9C1)
  %i.ei = fmul fast <4 x float> %i.eh, %i.ea
  %i.ej = fadd fast <4 x float> %i.ei, splat (float f0x3E2AAAAA)
  %i.ek = fmul fast <4 x float> %i.ej, %i.ea
  %i.el = fadd fast <4 x float> %i.ek, splat (float 5.000000e-01)
  %i.em = fmul fast <4 x float> %i.eb, %i.el
  %i.en = fadd fast <4 x float> %i.ea, %i.em
  %i.eo = fadd fast <4 x float> %i.en, splat (float 1.000000e+00)
  %i.ep = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dy)
  %i.eq = shl <4 x i32> %i.ep, splat (i32 23)
  %i.er = add <4 x i32> %i.eq, splat (i32 1065353216)
  %i.es = bitcast <4 x i32> %i.er to <4 x float>
  %i.et = fmul fast <4 x float> %i.eo, %i.es
  %i.eu = fadd fast <4 x float> %i.et, splat (float 1.000000e+00)
  %i.ev = fdiv fast <4 x float> splat (float 1.000000e+00), %i.eu
  %i.ew = fneg fast <4 x float> %.0972.lcssa
  %i.ex = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ew, <4 x float> splat (float f0x42B0C0A5))
  %i.ey = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ex, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ez = fmul fast <4 x float> %i.ey, splat (float f0x3FB8AA3B)
  %i.fa = fadd fast <4 x float> %i.ez, splat (float 5.000000e-01) ; 2 uses
  %i.fb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fa)
  %i.fc = sitofp fast <4 x i32> %i.fb to <4 x float> ; 2 uses
  %i.fd = fcmp fast olt <4 x float> %i.fa, %i.fc
  %i.fe = select <4 x i1> %i.fd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ff = fsub fast <4 x float> %i.fc, %i.fe      ; 2 uses
  %i.fg = fmul fast <4 x float> %i.ff, splat (float f0x3F317218)
  %i.fh = fsub fast <4 x float> %i.ey, %i.fg      ; 8 uses
  %i.fi = fmul fast <4 x float> %i.fh, %i.fh
  %i.fj = fmul fast <4 x float> %i.fh, splat (float f0x39506967)
  %i.fk = fadd fast <4 x float> %i.fj, splat (float f0x3AB743CE)
  %i.fl = fmul fast <4 x float> %i.fk, %i.fh
  %i.fm = fadd fast <4 x float> %i.fl, splat (float f0x3C088908)
  %i.fn = fmul fast <4 x float> %i.fm, %i.fh
  %i.fo = fadd fast <4 x float> %i.fn, splat (float f0x3D2AA9C1)
  %i.fp = fmul fast <4 x float> %i.fo, %i.fh
  %i.fq = fadd fast <4 x float> %i.fp, splat (float f0x3E2AAAAA)
  %i.fr = fmul fast <4 x float> %i.fq, %i.fh
  %i.fs = fadd fast <4 x float> %i.fr, splat (float 5.000000e-01)
  %i.ft = fmul fast <4 x float> %i.fi, %i.fs
  %i.fu = fadd fast <4 x float> %i.fh, %i.ft
  %i.fv = fadd fast <4 x float> %i.fu, splat (float 1.000000e+00)
  %i.fw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ff)
  %i.fx = shl <4 x i32> %i.fw, splat (i32 23)
  %i.fy = add <4 x i32> %i.fx, splat (i32 1065353216)
  %i.fz = bitcast <4 x i32> %i.fy to <4 x float>
  %i.ga = fmul fast <4 x float> %i.fv, %i.fz
  %i.gb = fadd fast <4 x float> %i.ga, splat (float 1.000000e+00)
  %i.gc = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gb
  %i.gd = fneg fast <4 x float> %.0971.lcssa
  %i.ge = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gd, <4 x float> splat (float f0x42B0C0A5))
  %i.gf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ge, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gg = fmul fast <4 x float> %i.gf, splat (float f0x3FB8AA3B)
  %i.gh = fadd fast <4 x float> %i.gg, splat (float 5.000000e-01) ; 2 uses
  %i.gi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gh)
  %i.gj = sitofp fast <4 x i32> %i.gi to <4 x float> ; 2 uses
  %i.gk = fcmp fast olt <4 x float> %i.gh, %i.gj
  %i.gl = select <4 x i1> %i.gk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gm = fsub fast <4 x float> %i.gj, %i.gl      ; 2 uses
  %i.gn = fmul fast <4 x float> %i.gm, splat (float f0x3F317218)
  %i.go = fsub fast <4 x float> %i.gf, %i.gn      ; 8 uses
  %i.gp = fmul fast <4 x float> %i.go, %i.go
  %i.gq = fmul fast <4 x float> %i.go, splat (float f0x39506967)
  %i.gr = fadd fast <4 x float> %i.gq, splat (float f0x3AB743CE)
  %i.gs = fmul fast <4 x float> %i.gr, %i.go
  %i.gt = fadd fast <4 x float> %i.gs, splat (float f0x3C088908)
  %i.gu = fmul fast <4 x float> %i.gt, %i.go
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3D2AA9C1)
  %i.gw = fmul fast <4 x float> %i.gv, %i.go
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0x3E2AAAAA)
  %i.gy = fmul fast <4 x float> %i.gx, %i.go
  %i.gz = fadd fast <4 x float> %i.gy, splat (float 5.000000e-01)
  %i.ha = fmul fast <4 x float> %i.gp, %i.gz
  %i.hb = fadd fast <4 x float> %i.go, %i.ha
  %i.hc = fadd fast <4 x float> %i.hb, splat (float 1.000000e+00)
  %i.hd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gm)
  %i.he = shl <4 x i32> %i.hd, splat (i32 23)
  %i.hf = add <4 x i32> %i.he, splat (i32 1065353216)
  %i.hg = bitcast <4 x i32> %i.hf to <4 x float>
  %i.hh = fmul fast <4 x float> %i.hc, %i.hg
  %i.hi = fadd fast <4 x float> %i.hh, splat (float 1.000000e+00)
  %i.hj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.hi
  %i.hk = fneg fast <4 x float> %.0970.lcssa
  %i.hl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hk, <4 x float> splat (float f0x42B0C0A5))
  %i.hm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hn = fmul fast <4 x float> %i.hm, splat (float f0x3FB8AA3B)
  %i.ho = fadd fast <4 x float> %i.hn, splat (float 5.000000e-01) ; 2 uses
  %i.hp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ho)
  %i.hq = sitofp fast <4 x i32> %i.hp to <4 x float> ; 2 uses
  %i.hr = fcmp fast olt <4 x float> %i.ho, %i.hq
  %i.hs = select <4 x i1> %i.hr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ht = fsub fast <4 x float> %i.hq, %i.hs      ; 2 uses
  %i.hu = fmul fast <4 x float> %i.ht, splat (float f0x3F317218)
  %i.hv = fsub fast <4 x float> %i.hm, %i.hu      ; 8 uses
  %i.hw = fmul fast <4 x float> %i.hv, %i.hv
  %i.hx = fmul fast <4 x float> %i.hv, splat (float f0x39506967)
  %i.hy = fadd fast <4 x float> %i.hx, splat (float f0x3AB743CE)
  %i.hz = fmul fast <4 x float> %i.hy, %i.hv
  %i.ia = fadd fast <4 x float> %i.hz, splat (float f0x3C088908)
  %i.ib = fmul fast <4 x float> %i.ia, %i.hv
  %i.ic = fadd fast <4 x float> %i.ib, splat (float f0x3D2AA9C1)
  %i.id = fmul fast <4 x float> %i.ic, %i.hv
  %i.ie = fadd fast <4 x float> %i.id, splat (float f0x3E2AAAAA)
  %i.if = fmul fast <4 x float> %i.ie, %i.hv
  %i.ig = fadd fast <4 x float> %i.if, splat (float 5.000000e-01)
  %i.ih = fmul fast <4 x float> %i.hw, %i.ig
  %i.ii = fadd fast <4 x float> %i.hv, %i.ih
  %i.ij = fadd fast <4 x float> %i.ii, splat (float 1.000000e+00)
  %i.ik = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ht)
  %i.il = shl <4 x i32> %i.ik, splat (i32 23)
  %i.im = add <4 x i32> %i.il, splat (i32 1065353216)
  %i.in = bitcast <4 x i32> %i.im to <4 x float>
  %i.io = fmul fast <4 x float> %i.ij, %i.in
  %i.ip = fadd fast <4 x float> %i.io, splat (float 1.000000e+00)
  %i.iq = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ip
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread989: ; preds = %._crit_edge
  %i.ir = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.1974.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.is = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ir, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.it = fmul fast <4 x float> %i.is, splat (float f0x3FB8AA3B)
  %i.iu = fadd fast <4 x float> %i.it, splat (float 5.000000e-01) ; 2 uses
  %i.iv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.iu)
  %i.iw = sitofp fast <4 x i32> %i.iv to <4 x float> ; 2 uses
  %i.ix = fcmp fast olt <4 x float> %i.iu, %i.iw
  %i.iy = select <4 x i1> %i.ix, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.iz = fsub fast <4 x float> %i.iw, %i.iy      ; 2 uses
  %i.ja = fmul fast <4 x float> %i.iz, splat (float f0x3F317218)
  %i.jb = fsub fast <4 x float> %i.is, %i.ja      ; 8 uses
  %i.jc = fmul fast <4 x float> %i.jb, %i.jb
  %i.jd = fmul fast <4 x float> %i.jb, splat (float f0x39506967)
  %i.je = fadd fast <4 x float> %i.jd, splat (float f0x3AB743CE)
  %i.jf = fmul fast <4 x float> %i.je, %i.jb
  %i.jg = fadd fast <4 x float> %i.jf, splat (float f0x3C088908)
  %i.jh = fmul fast <4 x float> %i.jg, %i.jb
  %i.ji = fadd fast <4 x float> %i.jh, splat (float f0x3D2AA9C1)
  %i.jj = fmul fast <4 x float> %i.ji, %i.jb
  %i.jk = fadd fast <4 x float> %i.jj, splat (float f0x3E2AAAAA)
  %i.jl = fmul fast <4 x float> %i.jk, %i.jb
  %i.jm = fadd fast <4 x float> %i.jl, splat (float 5.000000e-01)
  %i.jn = fmul fast <4 x float> %i.jc, %i.jm
  %i.jo = fadd fast <4 x float> %i.jb, %i.jn
  %i.jp = fadd fast <4 x float> %i.jo, splat (float 1.000000e+00)
  %i.jq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.iz)
  %i.jr = shl <4 x i32> %i.jq, splat (i32 23)
  %i.js = add <4 x i32> %i.jr, splat (i32 1065353216)
  %i.jt = bitcast <4 x i32> %i.js to <4 x float>
  %i.ju = fmul fast <4 x float> %i.jp, %i.jt
  %i.jv = fadd fast <4 x float> %i.ju, splat (float 1.000000e+00) ; 2 uses
  %i.jw = fcmp fast ole <4 x float> %i.jv, zeroinitializer
  %i.jx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jv, <4 x float> splat (float f0x00800000))
  %i.jy = bitcast <4 x float> %i.jx to <4 x i32>  ; 2 uses
  %i.jz = lshr <4 x i32> %i.jy, splat (i32 23)
  %i.ka = and <4 x i32> %i.jy, splat (i32 -2139095041)
  %i.kb = or disjoint <4 x i32> %i.ka, splat (i32 1056964608)
  %i.kc = bitcast <4 x i32> %i.kb to <4 x float>  ; 3 uses
  %i.kd = add nsw <4 x i32> %i.jz, splat (i32 -127)
  %i.ke = sitofp fast <4 x i32> %i.kd to <4 x float> ; 2 uses
  %i.kf = fadd fast <4 x float> %i.ke, splat (float 1.000000e+00)
  %i.kg = fcmp fast olt <4 x float> %i.kc, splat (float f0x3F3504F3) ; 2 uses
  %i.kh = select <4 x i1> %i.kg, <4 x float> %i.kc, <4 x float> zeroinitializer
  %i.ki = fadd fast <4 x float> %i.kc, splat (float -1.000000e+00)
  %i.kj = select fast <4 x i1> %i.kg, <4 x float> %i.ke, <4 x float> %i.kf
  %i.kk = fadd fast <4 x float> %i.ki, %i.kh      ; 12 uses
  %i.kl = fmul fast <4 x float> %i.kk, %i.kk
  %i.km = fmul fast <4 x float> %i.kk, splat (float f0x3D9021BB)
  %i.kn = fadd fast <4 x float> %i.km, splat (float f0xBDEBD1B8)
  %i.ko = fmul fast <4 x float> %i.kn, %i.kk
  %i.kp = fadd fast <4 x float> %i.ko, splat (float f0x3DEF251A)
  %i.kq = fmul fast <4 x float> %i.kp, %i.kk
  %i.kr = fadd fast <4 x float> %i.kq, splat (float f0xBDFE5D4F)
  %i.ks = fmul fast <4 x float> %i.kr, %i.kk
  %i.kt = fadd fast <4 x float> %i.ks, splat (float f0x3E11E9BF)
  %i.ku = fmul fast <4 x float> %i.kt, %i.kk
  %i.kv = fadd fast <4 x float> %i.ku, splat (float f0xBE2AAE50)
  %i.kw = fmul fast <4 x float> %i.kv, %i.kk
  %i.kx = fadd fast <4 x float> %i.kw, splat (float f0x3E4CCEAC)
  %i.ky = fmul fast <4 x float> %i.kx, %i.kk
  %i.kz = fadd fast <4 x float> %i.ky, splat (float f0xBE7FFFFC)
  %i.la = fmul fast <4 x float> %i.kz, %i.kk
  %i.lb = fadd fast <4 x float> %i.la, splat (float f0x3EAAAAAA)
  %i.lc = fmul fast <4 x float> %i.lb, %i.kk
  %reass.mul1089 = fmul fast <4 x float> %i.kj, splat (float f0x3F317218)
  %reass.add1099 = fadd fast <4 x float> %i.lc, splat (float -5.000000e-01)
  %reass.mul1100 = fmul fast <4 x float> %i.kl, %reass.add1099
  %i.ld = fadd fast <4 x float> %reass.mul1089, %i.kk
  %i.le = fadd fast <4 x float> %i.ld, %reass.mul1100
  %.neg1077 = fmul fast <4 x float> %i.le, splat (float -2.000000e+00)
  %i.lf = select fast <4 x i1> %i.jw, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1077
  %i.lg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lf, <4 x float> splat (float f0x42B0C0A5))
  %i.lh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.li = fmul fast <4 x float> %i.lh, splat (float f0x3FB8AA3B)
  %i.lj = fadd fast <4 x float> %i.li, splat (float 5.000000e-01) ; 2 uses
  %i.lk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lj)
  %i.ll = sitofp fast <4 x i32> %i.lk to <4 x float> ; 2 uses
  %i.lm = fcmp fast olt <4 x float> %i.lj, %i.ll
  %i.ln = select <4 x i1> %i.lm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.lo = fsub fast <4 x float> %i.ll, %i.ln      ; 2 uses
  %i.lp = fmul fast <4 x float> %i.lo, splat (float f0x3F317218)
  %i.lq = fsub fast <4 x float> %i.lh, %i.lp      ; 8 uses
  %i.lr = fmul fast <4 x float> %i.lq, %i.lq
  %i.ls = fmul fast <4 x float> %i.lq, splat (float f0x39506967)
  %i.lt = fadd fast <4 x float> %i.ls, splat (float f0x3AB743CE)
  %i.lu = fmul fast <4 x float> %i.lt, %i.lq
  %i.lv = fadd fast <4 x float> %i.lu, splat (float f0x3C088908)
  %i.lw = fmul fast <4 x float> %i.lv, %i.lq
  %i.lx = fadd fast <4 x float> %i.lw, splat (float f0x3D2AA9C1)
  %i.ly = fmul fast <4 x float> %i.lx, %i.lq
  %i.lz = fadd fast <4 x float> %i.ly, splat (float f0x3E2AAAAA)
  %i.ma = fmul fast <4 x float> %i.lz, %i.lq
  %i.mb = fadd fast <4 x float> %i.ma, splat (float 5.000000e-01)
  %i.mc = fmul fast <4 x float> %i.lr, %i.mb
  %i.md = fadd fast <4 x float> %i.lq, %i.mc
  %i.me = fadd fast <4 x float> %i.md, splat (float 1.000000e+00)
  %i.mf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lo)
  %i.mg = shl <4 x i32> %i.mf, splat (i32 23)
  %i.mh = add <4 x i32> %i.mg, splat (i32 1065353216)
  %i.mi = bitcast <4 x i32> %i.mh to <4 x float>
  %i.mj = fmul fast <4 x float> %i.me, %i.mi
  %i.mk = fadd fast <4 x float> %i.mj, splat (float 1.000000e+00)
  %i.ml = fdiv fast <4 x float> splat (float 2.000000e+00), %i.mk
  %i.mm = fadd fast <4 x float> %i.ml, splat (float -1.000000e+00)
  %i.mn = fmul fast <4 x float> %i.mm, %.1974.lcssa
  %i.mo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0972.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.mp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mo, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mq = fmul fast <4 x float> %i.mp, splat (float f0x3FB8AA3B)
  %i.mr = fadd fast <4 x float> %i.mq, splat (float 5.000000e-01) ; 2 uses
  %i.ms = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mr)
  %i.mt = sitofp fast <4 x i32> %i.ms to <4 x float> ; 2 uses
  %i.mu = fcmp fast olt <4 x float> %i.mr, %i.mt
  %i.mv = select <4 x i1> %i.mu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mw = fsub fast <4 x float> %i.mt, %i.mv      ; 2 uses
  %i.mx = fmul fast <4 x float> %i.mw, splat (float f0x3F317218)
  %i.my = fsub fast <4 x float> %i.mp, %i.mx      ; 8 uses
  %i.mz = fmul fast <4 x float> %i.my, %i.my
  %i.na = fmul fast <4 x float> %i.my, splat (float f0x39506967)
  %i.nb = fadd fast <4 x float> %i.na, splat (float f0x3AB743CE)
  %i.nc = fmul fast <4 x float> %i.nb, %i.my
  %i.nd = fadd fast <4 x float> %i.nc, splat (float f0x3C088908)
  %i.ne = fmul fast <4 x float> %i.nd, %i.my
  %i.nf = fadd fast <4 x float> %i.ne, splat (float f0x3D2AA9C1)
  %i.ng = fmul fast <4 x float> %i.nf, %i.my
  %i.nh = fadd fast <4 x float> %i.ng, splat (float f0x3E2AAAAA)
  %i.ni = fmul fast <4 x float> %i.nh, %i.my
  %i.nj = fadd fast <4 x float> %i.ni, splat (float 5.000000e-01)
  %i.nk = fmul fast <4 x float> %i.mz, %i.nj
  %i.nl = fadd fast <4 x float> %i.my, %i.nk
  %i.nm = fadd fast <4 x float> %i.nl, splat (float 1.000000e+00)
  %i.nn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mw)
  %i.no = shl <4 x i32> %i.nn, splat (i32 23)
  %i.np = add <4 x i32> %i.no, splat (i32 1065353216)
  %i.nq = bitcast <4 x i32> %i.np to <4 x float>
  %i.nr = fmul fast <4 x float> %i.nm, %i.nq
  %i.ns = fadd fast <4 x float> %i.nr, splat (float 1.000000e+00) ; 2 uses
  %i.nt = fcmp fast ole <4 x float> %i.ns, zeroinitializer
  %i.nu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ns, <4 x float> splat (float f0x00800000))
  %i.nv = bitcast <4 x float> %i.nu to <4 x i32>  ; 2 uses
  %i.nw = lshr <4 x i32> %i.nv, splat (i32 23)
  %i.nx = and <4 x i32> %i.nv, splat (i32 -2139095041)
  %i.ny = or disjoint <4 x i32> %i.nx, splat (i32 1056964608)
  %i.nz = bitcast <4 x i32> %i.ny to <4 x float>  ; 3 uses
  %i.oa = add nsw <4 x i32> %i.nw, splat (i32 -127)
  %i.ob = sitofp fast <4 x i32> %i.oa to <4 x float> ; 2 uses
  %i.oc = fadd fast <4 x float> %i.ob, splat (float 1.000000e+00)
  %i.od = fcmp fast olt <4 x float> %i.nz, splat (float f0x3F3504F3) ; 2 uses
  %i.oe = select <4 x i1> %i.od, <4 x float> %i.nz, <4 x float> zeroinitializer
  %i.of = fadd fast <4 x float> %i.nz, splat (float -1.000000e+00)
  %i.og = select fast <4 x i1> %i.od, <4 x float> %i.ob, <4 x float> %i.oc
  %i.oh = fadd fast <4 x float> %i.of, %i.oe      ; 12 uses
  %i.oi = fmul fast <4 x float> %i.oh, %i.oh
  %i.oj = fmul fast <4 x float> %i.oh, splat (float f0x3D9021BB)
  %i.ok = fadd fast <4 x float> %i.oj, splat (float f0xBDEBD1B8)
  %i.ol = fmul fast <4 x float> %i.ok, %i.oh
  %i.om = fadd fast <4 x float> %i.ol, splat (float f0x3DEF251A)
  %i.on = fmul fast <4 x float> %i.om, %i.oh
  %i.oo = fadd fast <4 x float> %i.on, splat (float f0xBDFE5D4F)
  %i.op = fmul fast <4 x float> %i.oo, %i.oh
  %i.oq = fadd fast <4 x float> %i.op, splat (float f0x3E11E9BF)
  %i.or = fmul fast <4 x float> %i.oq, %i.oh
  %i.os = fadd fast <4 x float> %i.or, splat (float f0xBE2AAE50)
  %i.ot = fmul fast <4 x float> %i.os, %i.oh
  %i.ou = fadd fast <4 x float> %i.ot, splat (float f0x3E4CCEAC)
  %i.ov = fmul fast <4 x float> %i.ou, %i.oh
  %i.ow = fadd fast <4 x float> %i.ov, splat (float f0xBE7FFFFC)
  %i.ox = fmul fast <4 x float> %i.ow, %i.oh
  %i.oy = fadd fast <4 x float> %i.ox, splat (float f0x3EAAAAAA)
  %i.oz = fmul fast <4 x float> %i.oy, %i.oh
  %reass.mul1092 = fmul fast <4 x float> %i.og, splat (float f0x3F317218)
  %reass.add1101 = fadd fast <4 x float> %i.oz, splat (float -5.000000e-01)
  %reass.mul1102 = fmul fast <4 x float> %i.oi, %reass.add1101
  %i.pa = fadd fast <4 x float> %reass.mul1092, %i.oh
  %i.pb = fadd fast <4 x float> %i.pa, %reass.mul1102
  %.neg1078 = fmul fast <4 x float> %i.pb, splat (float -2.000000e+00)
  %i.pc = select fast <4 x i1> %i.nt, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1078
  %i.pd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pc, <4 x float> splat (float f0x42B0C0A5))
  %i.pe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pf = fmul fast <4 x float> %i.pe, splat (float f0x3FB8AA3B)
  %i.pg = fadd fast <4 x float> %i.pf, splat (float 5.000000e-01) ; 2 uses
  %i.ph = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pg)
  %i.pi = sitofp fast <4 x i32> %i.ph to <4 x float> ; 2 uses
  %i.pj = fcmp fast olt <4 x float> %i.pg, %i.pi
  %i.pk = select <4 x i1> %i.pj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.pl = fsub fast <4 x float> %i.pi, %i.pk      ; 2 uses
  %i.pm = fmul fast <4 x float> %i.pl, splat (float f0x3F317218)
  %i.pn = fsub fast <4 x float> %i.pe, %i.pm      ; 8 uses
  %i.po = fmul fast <4 x float> %i.pn, %i.pn
  %i.pp = fmul fast <4 x float> %i.pn, splat (float f0x39506967)
  %i.pq = fadd fast <4 x float> %i.pp, splat (float f0x3AB743CE)
  %i.pr = fmul fast <4 x float> %i.pq, %i.pn
  %i.ps = fadd fast <4 x float> %i.pr, splat (float f0x3C088908)
  %i.pt = fmul fast <4 x float> %i.ps, %i.pn
  %i.pu = fadd fast <4 x float> %i.pt, splat (float f0x3D2AA9C1)
  %i.pv = fmul fast <4 x float> %i.pu, %i.pn
  %i.pw = fadd fast <4 x float> %i.pv, splat (float f0x3E2AAAAA)
  %i.px = fmul fast <4 x float> %i.pw, %i.pn
  %i.py = fadd fast <4 x float> %i.px, splat (float 5.000000e-01)
  %i.pz = fmul fast <4 x float> %i.po, %i.py
  %i.qa = fadd fast <4 x float> %i.pn, %i.pz
  %i.qb = fadd fast <4 x float> %i.qa, splat (float 1.000000e+00)
  %i.qc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pl)
  %i.qd = shl <4 x i32> %i.qc, splat (i32 23)
  %i.qe = add <4 x i32> %i.qd, splat (i32 1065353216)
  %i.qf = bitcast <4 x i32> %i.qe to <4 x float>
  %i.qg = fmul fast <4 x float> %i.qb, %i.qf
  %i.qh = fadd fast <4 x float> %i.qg, splat (float 1.000000e+00)
  %i.qi = fdiv fast <4 x float> splat (float 2.000000e+00), %i.qh
  %i.qj = fadd fast <4 x float> %i.qi, splat (float -1.000000e+00)
  %i.qk = fmul fast <4 x float> %i.qj, %.0972.lcssa
  %i.ql = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0971.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.qm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ql, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.qn = fmul fast <4 x float> %i.qm, splat (float f0x3FB8AA3B)
  %i.qo = fadd fast <4 x float> %i.qn, splat (float 5.000000e-01) ; 2 uses
  %i.qp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qo)
  %i.qq = sitofp fast <4 x i32> %i.qp to <4 x float> ; 2 uses
  %i.qr = fcmp fast olt <4 x float> %i.qo, %i.qq
  %i.qs = select <4 x i1> %i.qr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qt = fsub fast <4 x float> %i.qq, %i.qs      ; 2 uses
  %i.qu = fmul fast <4 x float> %i.qt, splat (float f0x3F317218)
  %i.qv = fsub fast <4 x float> %i.qm, %i.qu      ; 8 uses
  %i.qw = fmul fast <4 x float> %i.qv, %i.qv
  %i.qx = fmul fast <4 x float> %i.qv, splat (float f0x39506967)
  %i.qy = fadd fast <4 x float> %i.qx, splat (float f0x3AB743CE)
  %i.qz = fmul fast <4 x float> %i.qy, %i.qv
  %i.ra = fadd fast <4 x float> %i.qz, splat (float f0x3C088908)
  %i.rb = fmul fast <4 x float> %i.ra, %i.qv
  %i.rc = fadd fast <4 x float> %i.rb, splat (float f0x3D2AA9C1)
  %i.rd = fmul fast <4 x float> %i.rc, %i.qv
  %i.re = fadd fast <4 x float> %i.rd, splat (float f0x3E2AAAAA)
  %i.rf = fmul fast <4 x float> %i.re, %i.qv
  %i.rg = fadd fast <4 x float> %i.rf, splat (float 5.000000e-01)
  %i.rh = fmul fast <4 x float> %i.qw, %i.rg
  %i.ri = fadd fast <4 x float> %i.qv, %i.rh
  %i.rj = fadd fast <4 x float> %i.ri, splat (float 1.000000e+00)
  %i.rk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qt)
  %i.rl = shl <4 x i32> %i.rk, splat (i32 23)
  %i.rm = add <4 x i32> %i.rl, splat (i32 1065353216)
  %i.rn = bitcast <4 x i32> %i.rm to <4 x float>
  %i.ro = fmul fast <4 x float> %i.rj, %i.rn
  %i.rp = fadd fast <4 x float> %i.ro, splat (float 1.000000e+00) ; 2 uses
  %i.rq = fcmp fast ole <4 x float> %i.rp, zeroinitializer
  %i.rr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rp, <4 x float> splat (float f0x00800000))
  %i.rs = bitcast <4 x float> %i.rr to <4 x i32>  ; 2 uses
  %i.rt = lshr <4 x i32> %i.rs, splat (i32 23)
  %i.ru = and <4 x i32> %i.rs, splat (i32 -2139095041)
  %i.rv = or disjoint <4 x i32> %i.ru, splat (i32 1056964608)
  %i.rw = bitcast <4 x i32> %i.rv to <4 x float>  ; 3 uses
  %i.rx = add nsw <4 x i32> %i.rt, splat (i32 -127)
  %i.ry = sitofp fast <4 x i32> %i.rx to <4 x float> ; 2 uses
  %i.rz = fadd fast <4 x float> %i.ry, splat (float 1.000000e+00)
  %i.sa = fcmp fast olt <4 x float> %i.rw, splat (float f0x3F3504F3) ; 2 uses
  %i.sb = select <4 x i1> %i.sa, <4 x float> %i.rw, <4 x float> zeroinitializer
  %i.sc = fadd fast <4 x float> %i.rw, splat (float -1.000000e+00)
  %i.sd = select fast <4 x i1> %i.sa, <4 x float> %i.ry, <4 x float> %i.rz
  %i.se = fadd fast <4 x float> %i.sc, %i.sb      ; 12 uses
  %i.sf = fmul fast <4 x float> %i.se, %i.se
  %i.sg = fmul fast <4 x float> %i.se, splat (float f0x3D9021BB)
  %i.sh = fadd fast <4 x float> %i.sg, splat (float f0xBDEBD1B8)
  %i.si = fmul fast <4 x float> %i.sh, %i.se
  %i.sj = fadd fast <4 x float> %i.si, splat (float f0x3DEF251A)
  %i.sk = fmul fast <4 x float> %i.sj, %i.se
  %i.sl = fadd fast <4 x float> %i.sk, splat (float f0xBDFE5D4F)
  %i.sm = fmul fast <4 x float> %i.sl, %i.se
  %i.sn = fadd fast <4 x float> %i.sm, splat (float f0x3E11E9BF)
  %i.so = fmul fast <4 x float> %i.sn, %i.se
  %i.sp = fadd fast <4 x float> %i.so, splat (float f0xBE2AAE50)
  %i.sq = fmul fast <4 x float> %i.sp, %i.se
  %i.sr = fadd fast <4 x float> %i.sq, splat (float f0x3E4CCEAC)
  %i.ss = fmul fast <4 x float> %i.sr, %i.se
  %i.st = fadd fast <4 x float> %i.ss, splat (float f0xBE7FFFFC)
  %i.su = fmul fast <4 x float> %i.st, %i.se
  %i.sv = fadd fast <4 x float> %i.su, splat (float f0x3EAAAAAA)
  %i.sw = fmul fast <4 x float> %i.sv, %i.se
  %reass.mul1095 = fmul fast <4 x float> %i.sd, splat (float f0x3F317218)
  %reass.add1103 = fadd fast <4 x float> %i.sw, splat (float -5.000000e-01)
  %reass.mul1104 = fmul fast <4 x float> %i.sf, %reass.add1103
  %i.sx = fadd fast <4 x float> %reass.mul1095, %i.se
  %i.sy = fadd fast <4 x float> %i.sx, %reass.mul1104
  %.neg1079 = fmul fast <4 x float> %i.sy, splat (float -2.000000e+00)
  %i.sz = select fast <4 x i1> %i.rq, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1079
  %i.ta = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.sz, <4 x float> splat (float f0x42B0C0A5))
  %i.tb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ta, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.tc = fmul fast <4 x float> %i.tb, splat (float f0x3FB8AA3B)
  %i.td = fadd fast <4 x float> %i.tc, splat (float 5.000000e-01) ; 2 uses
  %i.te = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.td)
  %i.tf = sitofp fast <4 x i32> %i.te to <4 x float> ; 2 uses
  %i.tg = fcmp fast olt <4 x float> %i.td, %i.tf
  %i.th = select <4 x i1> %i.tg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ti = fsub fast <4 x float> %i.tf, %i.th      ; 2 uses
  %i.tj = fmul fast <4 x float> %i.ti, splat (float f0x3F317218)
  %i.tk = fsub fast <4 x float> %i.tb, %i.tj      ; 8 uses
  %i.tl = fmul fast <4 x float> %i.tk, %i.tk
  %i.tm = fmul fast <4 x float> %i.tk, splat (float f0x39506967)
  %i.tn = fadd fast <4 x float> %i.tm, splat (float f0x3AB743CE)
  %i.to = fmul fast <4 x float> %i.tn, %i.tk
  %i.tp = fadd fast <4 x float> %i.to, splat (float f0x3C088908)
  %i.tq = fmul fast <4 x float> %i.tp, %i.tk
  %i.tr = fadd fast <4 x float> %i.tq, splat (float f0x3D2AA9C1)
  %i.ts = fmul fast <4 x float> %i.tr, %i.tk
  %i.tt = fadd fast <4 x float> %i.ts, splat (float f0x3E2AAAAA)
  %i.tu = fmul fast <4 x float> %i.tt, %i.tk
  %i.tv = fadd fast <4 x float> %i.tu, splat (float 5.000000e-01)
  %i.tw = fmul fast <4 x float> %i.tl, %i.tv
  %i.tx = fadd fast <4 x float> %i.tk, %i.tw
  %i.ty = fadd fast <4 x float> %i.tx, splat (float 1.000000e+00)
  %i.tz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ti)
  %i.ua = shl <4 x i32> %i.tz, splat (i32 23)
  %i.ub = add <4 x i32> %i.ua, splat (i32 1065353216)
  %i.uc = bitcast <4 x i32> %i.ub to <4 x float>
  %i.ud = fmul fast <4 x float> %i.ty, %i.uc
  %i.ue = fadd fast <4 x float> %i.ud, splat (float 1.000000e+00)
  %i.uf = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ue
  %i.ug = fadd fast <4 x float> %i.uf, splat (float -1.000000e+00)
  %i.uh = fmul fast <4 x float> %i.ug, %.0971.lcssa
  %i.ui = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0970.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.uj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ui, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.uk = fmul fast <4 x float> %i.uj, splat (float f0x3FB8AA3B)
  %i.ul = fadd fast <4 x float> %i.uk, splat (float 5.000000e-01) ; 2 uses
  %i.um = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ul)
  %i.un = sitofp fast <4 x i32> %i.um to <4 x float> ; 2 uses
  %i.uo = fcmp fast olt <4 x float> %i.ul, %i.un
  %i.up = select <4 x i1> %i.uo, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.uq = fsub fast <4 x float> %i.un, %i.up      ; 2 uses
  %i.ur = fmul fast <4 x float> %i.uq, splat (float f0x3F317218)
  %i.us = fsub fast <4 x float> %i.uj, %i.ur      ; 8 uses
  %i.ut = fmul fast <4 x float> %i.us, %i.us
  %i.uu = fmul fast <4 x float> %i.us, splat (float f0x39506967)
  %i.uv = fadd fast <4 x float> %i.uu, splat (float f0x3AB743CE)
  %i.uw = fmul fast <4 x float> %i.uv, %i.us
  %i.ux = fadd fast <4 x float> %i.uw, splat (float f0x3C088908)
  %i.uy = fmul fast <4 x float> %i.ux, %i.us
  %i.uz = fadd fast <4 x float> %i.uy, splat (float f0x3D2AA9C1)
  %i.va = fmul fast <4 x float> %i.uz, %i.us
  %i.vb = fadd fast <4 x float> %i.va, splat (float f0x3E2AAAAA)
  %i.vc = fmul fast <4 x float> %i.vb, %i.us
  %i.vd = fadd fast <4 x float> %i.vc, splat (float 5.000000e-01)
  %i.ve = fmul fast <4 x float> %i.ut, %i.vd
  %i.vf = fadd fast <4 x float> %i.us, %i.ve
  %i.vg = fadd fast <4 x float> %i.vf, splat (float 1.000000e+00)
  %i.vh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.uq)
  %i.vi = shl <4 x i32> %i.vh, splat (i32 23)
  %i.vj = add <4 x i32> %i.vi, splat (i32 1065353216)
  %i.vk = bitcast <4 x i32> %i.vj to <4 x float>
  %i.vl = fmul fast <4 x float> %i.vg, %i.vk
  %i.vm = fadd fast <4 x float> %i.vl, splat (float 1.000000e+00) ; 2 uses
  %i.vn = fcmp fast ole <4 x float> %i.vm, zeroinitializer
  %i.vo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.vm, <4 x float> splat (float f0x00800000))
  %i.vp = bitcast <4 x float> %i.vo to <4 x i32>  ; 2 uses
  %i.vq = lshr <4 x i32> %i.vp, splat (i32 23)
  %i.vr = and <4 x i32> %i.vp, splat (i32 -2139095041)
  %i.vs = or disjoint <4 x i32> %i.vr, splat (i32 1056964608)
  %i.vt = bitcast <4 x i32> %i.vs to <4 x float>  ; 3 uses
  %i.vu = add nsw <4 x i32> %i.vq, splat (i32 -127)
  %i.vv = sitofp fast <4 x i32> %i.vu to <4 x float> ; 2 uses
  %i.vw = fadd fast <4 x float> %i.vv, splat (float 1.000000e+00)
  %i.vx = fcmp fast olt <4 x float> %i.vt, splat (float f0x3F3504F3) ; 2 uses
  %i.vy = select <4 x i1> %i.vx, <4 x float> %i.vt, <4 x float> zeroinitializer
  %i.vz = fadd fast <4 x float> %i.vt, splat (float -1.000000e+00)
  %i.wa = select fast <4 x i1> %i.vx, <4 x float> %i.vv, <4 x float> %i.vw
  %i.wb = fadd fast <4 x float> %i.vz, %i.vy      ; 12 uses
  %i.wc = fmul fast <4 x float> %i.wb, %i.wb
  %i.wd = fmul fast <4 x float> %i.wb, splat (float f0x3D9021BB)
  %i.we = fadd fast <4 x float> %i.wd, splat (float f0xBDEBD1B8)
  %i.wf = fmul fast <4 x float> %i.we, %i.wb
  %i.wg = fadd fast <4 x float> %i.wf, splat (float f0x3DEF251A)
  %i.wh = fmul fast <4 x float> %i.wg, %i.wb
  %i.wi = fadd fast <4 x float> %i.wh, splat (float f0xBDFE5D4F)
  %i.wj = fmul fast <4 x float> %i.wi, %i.wb
  %i.wk = fadd fast <4 x float> %i.wj, splat (float f0x3E11E9BF)
  %i.wl = fmul fast <4 x float> %i.wk, %i.wb
  %i.wm = fadd fast <4 x float> %i.wl, splat (float f0xBE2AAE50)
  %i.wn = fmul fast <4 x float> %i.wm, %i.wb
  %i.wo = fadd fast <4 x float> %i.wn, splat (float f0x3E4CCEAC)
  %i.wp = fmul fast <4 x float> %i.wo, %i.wb
  %i.wq = fadd fast <4 x float> %i.wp, splat (float f0xBE7FFFFC)
  %i.wr = fmul fast <4 x float> %i.wq, %i.wb
  %i.ws = fadd fast <4 x float> %i.wr, splat (float f0x3EAAAAAA)
  %i.wt = fmul fast <4 x float> %i.ws, %i.wb
  %reass.mul1098 = fmul fast <4 x float> %i.wa, splat (float f0x3F317218)
  %reass.add1105 = fadd fast <4 x float> %i.wt, splat (float -5.000000e-01)
  %reass.mul1106 = fmul fast <4 x float> %i.wc, %reass.add1105
  %i.wu = fadd fast <4 x float> %reass.mul1098, %i.wb
  %i.wv = fadd fast <4 x float> %i.wu, %reass.mul1106
  %.neg1080 = fmul fast <4 x float> %i.wv, splat (float -2.000000e+00)
  %i.ww = select fast <4 x i1> %i.vn, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1080
  %i.wx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ww, <4 x float> splat (float f0x42B0C0A5))
  %i.wy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.wz = fmul fast <4 x float> %i.wy, splat (float f0x3FB8AA3B)
  %i.xa = fadd fast <4 x float> %i.wz, splat (float 5.000000e-01) ; 2 uses
  %i.xb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xa)
  %i.xc = sitofp fast <4 x i32> %i.xb to <4 x float> ; 2 uses
  %i.xd = fcmp fast olt <4 x float> %i.xa, %i.xc
  %i.xe = select <4 x i1> %i.xd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.xf = fsub fast <4 x float> %i.xc, %i.xe      ; 2 uses
  %i.xg = fmul fast <4 x float> %i.xf, splat (float f0x3F317218)
  %i.xh = fsub fast <4 x float> %i.wy, %i.xg      ; 8 uses
  %i.xi = fmul fast <4 x float> %i.xh, %i.xh
  %i.xj = fmul fast <4 x float> %i.xh, splat (float f0x39506967)
  %i.xk = fadd fast <4 x float> %i.xj, splat (float f0x3AB743CE)
  %i.xl = fmul fast <4 x float> %i.xk, %i.xh
  %i.xm = fadd fast <4 x float> %i.xl, splat (float f0x3C088908)
  %i.xn = fmul fast <4 x float> %i.xm, %i.xh
  %i.xo = fadd fast <4 x float> %i.xn, splat (float f0x3D2AA9C1)
  %i.xp = fmul fast <4 x float> %i.xo, %i.xh
  %i.xq = fadd fast <4 x float> %i.xp, splat (float f0x3E2AAAAA)
  %i.xr = fmul fast <4 x float> %i.xq, %i.xh
  %i.xs = fadd fast <4 x float> %i.xr, splat (float 5.000000e-01)
  %i.xt = fmul fast <4 x float> %i.xi, %i.xs
  %i.xu = fadd fast <4 x float> %i.xh, %i.xt
  %i.xv = fadd fast <4 x float> %i.xu, splat (float 1.000000e+00)
  %i.xw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xf)
  %i.xx = shl <4 x i32> %i.xw, splat (i32 23)
  %i.xy = add <4 x i32> %i.xx, splat (i32 1065353216)
  %i.xz = bitcast <4 x i32> %i.xy to <4 x float>
  %i.ya = fmul fast <4 x float> %i.xv, %i.xz
  %i.yb = fadd fast <4 x float> %i.ya, splat (float 1.000000e+00)
  %i.yc = fdiv fast <4 x float> splat (float 2.000000e+00), %i.yb
  %i.yd = fadd fast <4 x float> %i.yc, splat (float -1.000000e+00)
  %i.ye = fmul fast <4 x float> %i.yd, %.0970.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992: ; preds = %._crit_edge
  %i.yf = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !52
  %i.yh = insertelement <4 x float> poison, float %i.yg, i64 0
  %i.yi = shufflevector <4 x float> %i.yh, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yf, i64 4
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !52
  %i.yl = insertelement <4 x float> poison, float %i.yk, i64 0
  %i.ym = shufflevector <4 x float> %i.yl, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.yn = fmul fast <4 x float> %i.yi, %.1974.lcssa
  %i.yo = fadd fast <4 x float> %i.yn, %i.ym
  %i.yp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yo, <4 x float> zeroinitializer)
  %i.yq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yp, <4 x float> splat (float 1.000000e+00))
  %i.yr = fmul fast <4 x float> %i.yq, %.1974.lcssa
  %i.ys = fmul fast <4 x float> %i.yi, %.0972.lcssa
  %i.yt = fadd fast <4 x float> %i.ys, %i.ym
  %i.yu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yt, <4 x float> zeroinitializer)
  %i.yv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yu, <4 x float> splat (float 1.000000e+00))
  %i.yw = fmul fast <4 x float> %i.yv, %.0972.lcssa
  %i.yx = fmul fast <4 x float> %i.yi, %.0971.lcssa
  %i.yy = fadd fast <4 x float> %i.yx, %i.ym
  %i.yz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yy, <4 x float> zeroinitializer)
  %i.za = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yz, <4 x float> splat (float 1.000000e+00))
  %i.zb = fmul fast <4 x float> %i.za, %.0971.lcssa
  %i.zc = fmul fast <4 x float> %i.yi, %.0970.lcssa
  %i.zd = fadd fast <4 x float> %i.zc, %i.ym
  %i.ze = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zd, <4 x float> zeroinitializer)
  %i.zf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ze, <4 x float> splat (float 1.000000e+00))
  %i.zg = fmul fast <4 x float> %i.zf, %.0970.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183:   ; preds = %._crit_edge, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread989, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread
  %.0.i1841034 = phi <4 x float> [ %i.zb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992 ], [ %i.cd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread ], [ %i.cu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980 ], [ %i.dm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983 ], [ %i.hj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986 ], [ %i.uh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread989 ], [ %.0971.lcssa, %._crit_edge ] ; 2 uses
  %.0.i1969799981032 = phi <4 x float> [ %i.yr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992 ], [ %i.cb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread ], [ %i.cm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980 ], [ %i.di, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983 ], [ %i.ev, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986 ], [ %i.mn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread989 ], [ %.1974.lcssa, %._crit_edge ] ; 2 uses
  %.0.i19010001030 = phi <4 x float> [ %i.yw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992 ], [ %i.cc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread ], [ %i.cq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980 ], [ %i.dk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983 ], [ %i.gc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986 ], [ %i.qk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread989 ], [ %.0972.lcssa, %._crit_edge ] ; 2 uses
  %.0.i178 = phi nsz <4 x float> [ %i.zg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread992 ], [ %i.ce, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread ], [ %i.cy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread980 ], [ %i.do, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread983 ], [ %i.iq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread986 ], [ %i.ye, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit201.thread989 ], [ %.0970.lcssa, %._crit_edge ] ; 2 uses
  %i.zh = shufflevector <4 x float> %.0.i1969799981032, <4 x float> %.0.i19010001030, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.zi = shufflevector <4 x float> %.0.i1841034, <4 x float> %.0.i178, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.zj = shufflevector <4 x float> %.0.i1969799981032, <4 x float> %.0.i19010001030, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.zk = shufflevector <4 x float> %.0.i1841034, <4 x float> %.0.i178, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.zl = shufflevector <4 x float> %i.zh, <4 x float> %i.zi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.zm = shufflevector <4 x float> %i.zi, <4 x float> %i.zh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.zn = shufflevector <4 x float> %i.zj, <4 x float> %i.zk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.zo = shufflevector <4 x float> %i.zk, <4 x float> %i.zj, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.zp = bitcast <4 x float> %i.zl to <8 x i16>
  %i.zq = bitcast <4 x float> %i.zm to <8 x i16>
  %i.zr = shufflevector <8 x i16> %i.zp, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.zs = shufflevector <8 x i16> %i.zq, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.zt = bitcast <8 x i16> %i.zr to <4 x float>
  %i.zu = bitcast <8 x i16> %i.zs to <4 x float>
  %i.zv = shufflevector <4 x float> %i.zt, <4 x float> %i.zu, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.zw = bitcast <4 x float> %i.zn to <8 x i16>
  %i.zx = bitcast <4 x float> %i.zo to <8 x i16>
  %i.zy = shufflevector <8 x i16> %i.zw, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.zz = shufflevector <8 x i16> %i.zx, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.aaa = bitcast <8 x i16> %i.zy to <4 x float>
  %i.aab = bitcast <8 x i16> %i.zz to <4 x float>
  %i.aac = shufflevector <4 x float> %i.aaa, <4 x float> %i.aab, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.zv, ptr %.01561120, align 1, !tbaa !49
  %i.aad = getelementptr inbounds nuw i8, ptr %.01561120, i64 16
  store <4 x float> %i.aac, ptr %i.aad, align 1, !tbaa !49
  %i.aae = getelementptr inbounds nuw i8, ptr %.01561120, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aaf = load i32, ptr %6, align 4, !tbaa !57
  %i.aag = load i32, ptr %4, align 4, !tbaa !57
  %i.aah = sdiv i32 %i.aaf, %i.aag
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = icmp slt i64 %indvars.iv.next, %i.aai
  br i1 %i.aaj, label %.lr.ph1122, label %thread-pre-split.loopexit, !llvm.loop !129

thread-pre-split.loopexit:                        ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit183
  %.pr.pre = load i32, ptr %3, align 4, !tbaa !57 ; 3 uses
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %thread-pre-split.loopexit, %bb.c
  %.pr10711241 = phi i32 [ %.pr10711243, %bb.c ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %.pr10711243, %bb.e ] ; 3 uses
  %.pr10731232 = phi i32 [ %.pr10731235, %bb.c ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %.pr10731235, %bb.e ] ; 3 uses
  %i.aak = phi i32 [ %i.t, %bb.c ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %.pr1231, %bb.e ]
  %i.aal = icmp eq i32 %i.aak, 1
  br i1 %i.aal, label %bb.h, label %.thread

bb.h:                                             ; preds = %thread-pre-split
  %i.aam = load i32, ptr %4, align 4, !tbaa !57
  %i.aan = icmp eq i32 %i.aam, 4
  br i1 %i.aan, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aao = load i32, ptr %6, align 4, !tbaa !57
  %i.aap = icmp sgt i32 %i.aao, 3
  br i1 %i.aap, label %.lr.ph1134.preheader, label %.thread

.lr.ph1134.preheader:                             ; preds = %bb.i
  %i.aaq = load ptr, ptr %5, align 8, !tbaa !19
  %i.aar = load i32, ptr %i.l, align 4, !tbaa !47
  %i.aas = sext i32 %i.aar to i64
  %i.aat = mul nsw i64 %indvars.iv1224, %i.aas
  %i.aau = load i64, ptr %i.m, align 8, !tbaa !48
  %i.aav = mul i64 %i.aat, %i.aau
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.aav
  br label %.lr.ph1134

.lr.ph1134:                                       ; preds = %.lr.ph1134.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177
  %indvars.iv1212 = phi i64 [ 0, %.lr.ph1134.preheader ], [ %indvars.iv.next1213, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177 ] ; 3 uses
  %.01541131 = phi ptr [ %i.aaw, %.lr.ph1134.preheader ], [ %i.aix, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177 ] ; 2 uses
  %i.aax = load ptr, ptr %7, align 8, !tbaa !19
  %i.aay = load i32, ptr %i.n, align 4, !tbaa !47
  %i.aaz = sext i32 %i.aay to i64
  %i.aba = mul nsw i64 %indvars.iv1212, %i.aaz
  %i.abb = load i64, ptr %i.o, align 8, !tbaa !48
  %i.abc = mul i64 %i.aba, %i.abb
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aax, i64 %i.abc
  %i.abe = load ptr, ptr %8, align 8, !tbaa !19
  %i.abf = load i32, ptr %i.p, align 4, !tbaa !47
  %i.abg = sext i32 %i.abf to i64
  %i.abh = mul nsw i64 %indvars.iv1224, %i.abg
  %i.abi = load i64, ptr %i.q, align 8, !tbaa !48
  %i.abj = mul i64 %i.abh, %i.abi
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abe, i64 %i.abj
  %i.abl = load ptr, ptr %9, align 8, !tbaa !65   ; 2 uses
  %.not167 = icmp eq ptr %i.abl, null
  br i1 %.not167, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph1134
  %.idx1263 = shl nuw nsw i64 %indvars.iv1212, 4
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 %.idx1263
  %i.abn = load <4 x float>, ptr %i.abm, align 1, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph1134
  %.0968 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1134 ], [ %i.abn, %bb.j ] ; 2 uses
  %i.abo = load i32, ptr %10, align 4, !tbaa !57  ; 2 uses
  %i.abp = icmp sgt i32 %i.abo, 0
  br i1 %i.abp, label %.lr.ph1128, label %._crit_edge1129

.lr.ph1128:                                       ; preds = %bb.k, %.lr.ph1128
  %.01501126 = phi i32 [ %i.acf, %.lr.ph1128 ], [ 0, %bb.k ]
  %.01511125 = phi ptr [ %i.acd, %.lr.ph1128 ], [ %i.abk, %bb.k ] ; 2 uses
  %.01521124 = phi ptr [ %i.ace, %.lr.ph1128 ], [ %i.abd, %bb.k ] ; 2 uses
  %.19691123 = phi <4 x float> [ %i.acc, %.lr.ph1128 ], [ %.0968, %bb.k ]
  %i.abq = load i16, ptr %.01511125, align 2, !tbaa !72
  %i.abr = zext i16 %i.abq to i32
  %i.abs = shl nuw i32 %i.abr, 16
  %i.abt = insertelement <4 x i32> poison, i32 %i.abs, i64 0
  %i.abu = bitcast <4 x i32> %i.abt to <4 x float>
  %i.abv = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abw = load i64, ptr %.01521124, align 1, !tbaa !49
  %i.abx = insertelement <2 x i64> poison, i64 %i.abw, i64 0
  %i.aby = bitcast <2 x i64> %i.abx to <8 x i16>
  %i.abz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aby, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aca = bitcast <8 x i16> %i.abz to <4 x float>
  %i.acb = fmul fast <4 x float> %i.abv, %i.aca
  %i.acc = fadd fast <4 x float> %i.acb, %.19691123 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.01511125, i64 2
  %i.ace = getelementptr inbounds nuw i8, ptr %.01521124, i64 8
  %i.acf = add nuw nsw i32 %.01501126, 1          ; 2 uses
  %exitcond1211.not = icmp eq i32 %i.acf, %i.abo
  br i1 %exitcond1211.not, label %._crit_edge1129, label %.lr.ph1128, !llvm.loop !130

._crit_edge1129:                                  ; preds = %.lr.ph1128, %bb.k
  %.1969.lcssa = phi <4 x float> [ %.0968, %bb.k ], [ %i.acc, %.lr.ph1128 ] ; 10 uses
  %i.acg = load i32, ptr %11, align 4, !tbaa !57
  switch i32 %i.acg, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177 [
    i32 1, label %bb.l
    i32 2, label %.noexc173
    i32 3, label %bb.m
    i32 4, label %.noexc174
    i32 5, label %.noexc175
    i32 6, label %.noexc176
  ]

bb.l:                                             ; preds = %._crit_edge1129
  %i.ach = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1969.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177

.noexc173:                                        ; preds = %._crit_edge1129
  %i.aci = load ptr, ptr %12, align 8, !tbaa !19
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !52
  %i.ack = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1969.lcssa)
  %i.acl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1969.lcssa)
  %i.acm = insertelement <4 x float> poison, float %i.acj, i64 0
  %i.acn = shufflevector <4 x float> %i.acm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aco = fmul fast <4 x float> %i.acn, %i.acl
  %i.acp = fadd fast <4 x float> %i.aco, %i.ack
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177

bb.m:                                             ; preds = %._crit_edge1129
  %i.acq = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !52
  %i.acs = insertelement <4 x float> poison, float %i.acr, i64 0
  %i.act = shufflevector <4 x float> %i.acs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acq, i64 4
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !52
  %i.acw = insertelement <4 x float> poison, float %i.acv, i64 0
  %i.acx = shufflevector <4 x float> %i.acw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1969.lcssa, <4 x float> nofpclass(nan inf) %i.act)
  %i.acz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.acy, <4 x float> nofpclass(nan inf) %i.acx)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177

.noexc174:                                        ; preds = %._crit_edge1129
  %i.ada = fneg fast <4 x float> %.1969.lcssa
  %i.adb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ada, <4 x float> splat (float f0x42B0C0A5))
  %i.adc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.adb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.add = fmul fast <4 x float> %i.adc, splat (float f0x3FB8AA3B)
  %i.ade = fadd fast <4 x float> %i.add, splat (float 5.000000e-01) ; 2 uses
  %i.adf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ade)
  %i.adg = sitofp fast <4 x i32> %i.adf to <4 x float> ; 2 uses
  %i.adh = fcmp fast olt <4 x float> %i.ade, %i.adg
  %i.adi = select <4 x i1> %i.adh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.adj = fsub fast <4 x float> %i.adg, %i.adi   ; 2 uses
  %i.adk = fmul fast <4 x float> %i.adj, splat (float f0x3F317218)
  %i.adl = fsub fast <4 x float> %i.adc, %i.adk   ; 8 uses
  %i.adm = fmul fast <4 x float> %i.adl, %i.adl
  %i.adn = fmul fast <4 x float> %i.adl, splat (float f0x39506967)
  %i.ado = fadd fast <4 x float> %i.adn, splat (float f0x3AB743CE)
  %i.adp = fmul fast <4 x float> %i.ado, %i.adl
  %i.adq = fadd fast <4 x float> %i.adp, splat (float f0x3C088908)
  %i.adr = fmul fast <4 x float> %i.adq, %i.adl
  %i.ads = fadd fast <4 x float> %i.adr, splat (float f0x3D2AA9C1)
  %i.adt = fmul fast <4 x float> %i.ads, %i.adl
  %i.adu = fadd fast <4 x float> %i.adt, splat (float f0x3E2AAAAA)
  %i.adv = fmul fast <4 x float> %i.adu, %i.adl
  %i.adw = fadd fast <4 x float> %i.adv, splat (float 5.000000e-01)
  %i.adx = fmul fast <4 x float> %i.adm, %i.adw
  %i.ady = fadd fast <4 x float> %i.adl, %i.adx
  %i.adz = fadd fast <4 x float> %i.ady, splat (float 1.000000e+00)
  %i.aea = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.adj)
  %i.aeb = shl <4 x i32> %i.aea, splat (i32 23)
  %i.aec = add <4 x i32> %i.aeb, splat (i32 1065353216)
  %i.aed = bitcast <4 x i32> %i.aec to <4 x float>
  %i.aee = fmul fast <4 x float> %i.adz, %i.aed
  %i.aef = fadd fast <4 x float> %i.aee, splat (float 1.000000e+00)
  %i.aeg = fdiv fast <4 x float> splat (float 1.000000e+00), %i.aef
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177

.noexc175:                                        ; preds = %._crit_edge1129
  %i.aeh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.1969.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.aei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aeh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aej = fmul fast <4 x float> %i.aei, splat (float f0x3FB8AA3B)
  %i.aek = fadd fast <4 x float> %i.aej, splat (float 5.000000e-01) ; 2 uses
  %i.ael = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aek)
  %i.aem = sitofp fast <4 x i32> %i.ael to <4 x float> ; 2 uses
  %i.aen = fcmp fast olt <4 x float> %i.aek, %i.aem
  %i.aeo = select <4 x i1> %i.aen, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aep = fsub fast <4 x float> %i.aem, %i.aeo   ; 2 uses
  %i.aeq = fmul fast <4 x float> %i.aep, splat (float f0x3F317218)
  %i.aer = fsub fast <4 x float> %i.aei, %i.aeq   ; 8 uses
  %i.aes = fmul fast <4 x float> %i.aer, %i.aer
  %i.aet = fmul fast <4 x float> %i.aer, splat (float f0x39506967)
  %i.aeu = fadd fast <4 x float> %i.aet, splat (float f0x3AB743CE)
  %i.aev = fmul fast <4 x float> %i.aeu, %i.aer
  %i.aew = fadd fast <4 x float> %i.aev, splat (float f0x3C088908)
  %i.aex = fmul fast <4 x float> %i.aew, %i.aer
  %i.aey = fadd fast <4 x float> %i.aex, splat (float f0x3D2AA9C1)
  %i.aez = fmul fast <4 x float> %i.aey, %i.aer
  %i.afa = fadd fast <4 x float> %i.aez, splat (float f0x3E2AAAAA)
  %i.afb = fmul fast <4 x float> %i.afa, %i.aer
  %i.afc = fadd fast <4 x float> %i.afb, splat (float 5.000000e-01)
  %i.afd = fmul fast <4 x float> %i.aes, %i.afc
  %i.afe = fadd fast <4 x float> %i.aer, %i.afd
  %i.aff = fadd fast <4 x float> %i.afe, splat (float 1.000000e+00)
  %i.afg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aep)
  %i.afh = shl <4 x i32> %i.afg, splat (i32 23)
  %i.afi = add <4 x i32> %i.afh, splat (i32 1065353216)
  %i.afj = bitcast <4 x i32> %i.afi to <4 x float>
  %i.afk = fmul fast <4 x float> %i.aff, %i.afj
  %i.afl = fadd fast <4 x float> %i.afk, splat (float 1.000000e+00) ; 2 uses
  %i.afm = fcmp fast ole <4 x float> %i.afl, zeroinitializer
  %i.afn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.afl, <4 x float> splat (float f0x00800000))
  %i.afo = bitcast <4 x float> %i.afn to <4 x i32> ; 2 uses
  %i.afp = lshr <4 x i32> %i.afo, splat (i32 23)
  %i.afq = and <4 x i32> %i.afo, splat (i32 -2139095041)
  %i.afr = or disjoint <4 x i32> %i.afq, splat (i32 1056964608)
  %i.afs = bitcast <4 x i32> %i.afr to <4 x float> ; 3 uses
  %i.aft = add nsw <4 x i32> %i.afp, splat (i32 -127)
  %i.afu = sitofp fast <4 x i32> %i.aft to <4 x float> ; 2 uses
  %i.afv = fadd fast <4 x float> %i.afu, splat (float 1.000000e+00)
  %i.afw = fcmp fast olt <4 x float> %i.afs, splat (float f0x3F3504F3) ; 2 uses
  %i.afx = select <4 x i1> %i.afw, <4 x float> %i.afs, <4 x float> zeroinitializer
  %i.afy = fadd fast <4 x float> %i.afs, splat (float -1.000000e+00)
  %i.afz = select fast <4 x i1> %i.afw, <4 x float> %i.afu, <4 x float> %i.afv
  %i.aga = fadd fast <4 x float> %i.afy, %i.afx   ; 12 uses
  %i.agb = fmul fast <4 x float> %i.aga, %i.aga
  %i.agc = fmul fast <4 x float> %i.aga, splat (float f0x3D9021BB)
  %i.agd = fadd fast <4 x float> %i.agc, splat (float f0xBDEBD1B8)
  %i.age = fmul fast <4 x float> %i.agd, %i.aga
  %i.agf = fadd fast <4 x float> %i.age, splat (float f0x3DEF251A)
  %i.agg = fmul fast <4 x float> %i.agf, %i.aga
  %i.agh = fadd fast <4 x float> %i.agg, splat (float f0xBDFE5D4F)
  %i.agi = fmul fast <4 x float> %i.agh, %i.aga
  %i.agj = fadd fast <4 x float> %i.agi, splat (float f0x3E11E9BF)
  %i.agk = fmul fast <4 x float> %i.agj, %i.aga
  %i.agl = fadd fast <4 x float> %i.agk, splat (float f0xBE2AAE50)
  %i.agm = fmul fast <4 x float> %i.agl, %i.aga
  %i.agn = fadd fast <4 x float> %i.agm, splat (float f0x3E4CCEAC)
  %i.ago = fmul fast <4 x float> %i.agn, %i.aga
  %i.agp = fadd fast <4 x float> %i.ago, splat (float f0xBE7FFFFC)
  %i.agq = fmul fast <4 x float> %i.agp, %i.aga
  %i.agr = fadd fast <4 x float> %i.agq, splat (float f0x3EAAAAAA)
  %i.ags = fmul fast <4 x float> %i.agr, %i.aga
  %reass.mul1085 = fmul fast <4 x float> %i.afz, splat (float f0x3F317218)
  %reass.add1086 = fadd fast <4 x float> %i.ags, splat (float -5.000000e-01)
  %reass.mul1087 = fmul fast <4 x float> %i.agb, %reass.add1086
  %i.agt = fadd fast <4 x float> %reass.mul1085, %i.aga
  %i.agu = fadd fast <4 x float> %i.agt, %reass.mul1087
  %.neg1076 = fmul fast <4 x float> %i.agu, splat (float -2.000000e+00)
  %i.agv = select fast <4 x i1> %i.afm, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1076
  %i.agw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.agv, <4 x float> splat (float f0x42B0C0A5))
  %i.agx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.agw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agy = fmul fast <4 x float> %i.agx, splat (float f0x3FB8AA3B)
  %i.agz = fadd fast <4 x float> %i.agy, splat (float 5.000000e-01) ; 2 uses
  %i.aha = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agz)
  %i.ahb = sitofp fast <4 x i32> %i.aha to <4 x float> ; 2 uses
  %i.ahc = fcmp fast olt <4 x float> %i.agz, %i.ahb
  %i.ahd = select <4 x i1> %i.ahc, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ahe = fsub fast <4 x float> %i.ahb, %i.ahd   ; 2 uses
  %i.ahf = fmul fast <4 x float> %i.ahe, splat (float f0x3F317218)
  %i.ahg = fsub fast <4 x float> %i.agx, %i.ahf   ; 8 uses
  %i.ahh = fmul fast <4 x float> %i.ahg, %i.ahg
  %i.ahi = fmul fast <4 x float> %i.ahg, splat (float f0x39506967)
  %i.ahj = fadd fast <4 x float> %i.ahi, splat (float f0x3AB743CE)
  %i.ahk = fmul fast <4 x float> %i.ahj, %i.ahg
  %i.ahl = fadd fast <4 x float> %i.ahk, splat (float f0x3C088908)
  %i.ahm = fmul fast <4 x float> %i.ahl, %i.ahg
  %i.ahn = fadd fast <4 x float> %i.ahm, splat (float f0x3D2AA9C1)
  %i.aho = fmul fast <4 x float> %i.ahn, %i.ahg
  %i.ahp = fadd fast <4 x float> %i.aho, splat (float f0x3E2AAAAA)
  %i.ahq = fmul fast <4 x float> %i.ahp, %i.ahg
  %i.ahr = fadd fast <4 x float> %i.ahq, splat (float 5.000000e-01)
  %i.ahs = fmul fast <4 x float> %i.ahh, %i.ahr
  %i.aht = fadd fast <4 x float> %i.ahg, %i.ahs
  %i.ahu = fadd fast <4 x float> %i.aht, splat (float 1.000000e+00)
  %i.ahv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahe)
  %i.ahw = shl <4 x i32> %i.ahv, splat (i32 23)
  %i.ahx = add <4 x i32> %i.ahw, splat (i32 1065353216)
  %i.ahy = bitcast <4 x i32> %i.ahx to <4 x float>
  %i.ahz = fmul fast <4 x float> %i.ahu, %i.ahy
  %i.aia = fadd fast <4 x float> %i.ahz, splat (float 1.000000e+00)
  %i.aib = fdiv fast <4 x float> splat (float 2.000000e+00), %i.aia
  %i.aic = fadd fast <4 x float> %i.aib, splat (float -1.000000e+00)
  %i.aid = fmul fast <4 x float> %i.aic, %.1969.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177

.noexc176:                                        ; preds = %._crit_edge1129
  %i.aie = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !52
  %i.aig = insertelement <4 x float> poison, float %i.aif, i64 0
  %i.aih = shufflevector <4 x float> %i.aig, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aie, i64 4
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !52
  %i.aik = insertelement <4 x float> poison, float %i.aij, i64 0
  %i.ail = shufflevector <4 x float> %i.aik, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aim = fmul fast <4 x float> %i.aih, %.1969.lcssa
  %i.ain = fadd fast <4 x float> %i.aim, %i.ail
  %i.aio = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ain, <4 x float> zeroinitializer)
  %i.aip = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aio, <4 x float> splat (float 1.000000e+00))
  %i.aiq = fmul fast <4 x float> %i.aip, %.1969.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177:   ; preds = %.noexc176, %.noexc175, %.noexc174, %bb.m, %.noexc173, %bb.l, %._crit_edge1129
  %.0.i172 = phi nsz <4 x float> [ %i.aiq, %.noexc176 ], [ %i.ach, %bb.l ], [ %i.acp, %.noexc173 ], [ %i.acz, %bb.m ], [ %i.aeg, %.noexc174 ], [ %i.aid, %.noexc175 ], [ %.1969.lcssa, %._crit_edge1129 ]
  %i.air = bitcast <4 x float> %.0.i172 to <8 x i16>
  %i.ais = shufflevector <8 x i16> %i.air, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ait = bitcast <8 x i16> %i.ais to <4 x float>
  %i.aiu = shufflevector <4 x float> %i.ait, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aiv = bitcast <4 x float> %i.aiu to <2 x i64>
  %i.aiw = extractelement <2 x i64> %i.aiv, i64 0
  store i64 %i.aiw, ptr %.01541131, align 1, !tbaa !49
  %i.aix = getelementptr inbounds nuw i8, ptr %.01541131, i64 8
  %indvars.iv.next1213 = add nuw nsw i64 %indvars.iv1212, 1 ; 2 uses
  %i.aiy = load i32, ptr %6, align 4, !tbaa !57
  %i.aiz = load i32, ptr %4, align 4, !tbaa !57
  %i.aja = sdiv i32 %i.aiy, %i.aiz
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = icmp slt i64 %indvars.iv.next1213, %i.ajb
  br i1 %i.ajc, label %.lr.ph1134, label %.thread.loopexit, !llvm.loop !131

.thread.loopexit:                                 ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit177
  %.pr1073.pre = load i32, ptr %3, align 4, !tbaa !57 ; 2 uses
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.i, %bb.h, %thread-pre-split
  %.pr10711240 = phi i32 [ %.pr1073.pre, %.thread.loopexit ], [ %.pr10711241, %bb.i ], [ %.pr10711241, %bb.h ], [ %.pr10711241, %thread-pre-split ] ; 2 uses
  %.pr1073 = phi i32 [ %.pr1073.pre, %.thread.loopexit ], [ %.pr10731232, %bb.i ], [ %.pr10731232, %bb.h ], [ %.pr10731232, %thread-pre-split ] ; 2 uses
  %i.ajd = icmp eq i32 %.pr1073, 4
  br i1 %i.ajd, label %thread-pre-split1074, label %thread-pre-split1070

thread-pre-split1074:                             ; preds = %.thread
  %.pr1075 = load i32, ptr %4, align 4, !tbaa !57
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.d, %thread-pre-split1074
  %.pr10711239 = phi i32 [ %.pr10711240, %thread-pre-split1074 ], [ %.pr10711243, %bb.d ] ; 3 uses
  %.pr10731233 = phi i32 [ 4, %thread-pre-split1074 ], [ %.pr10731235, %bb.d ]
  %.pr1230 = phi i32 [ 4, %thread-pre-split1074 ], [ %.pr1231, %bb.d ]
  %i.aje = phi i32 [ %.pr1075, %thread-pre-split1074 ], [ %i.v, %bb.d ]
  %i.ajf = icmp eq i32 %i.aje, 1
  br i1 %i.ajf, label %bb.n, label %.thread1072

bb.n:                                             ; preds = %.thread.thread
  %i.ajg = load i32, ptr %6, align 4, !tbaa !57
  %i.ajh = icmp sgt i32 %i.ajg, 0
  br i1 %i.ajh, label %.lr.ph1162.preheader, label %thread-pre-split1070

.lr.ph1162.preheader:                             ; preds = %bb.n
  %i.aji = load ptr, ptr %5, align 8, !tbaa !19
  %i.ajj = load i32, ptr %i.l, align 4, !tbaa !47
  %i.ajk = sext i32 %i.ajj to i64
  %i.ajl = mul nsw i64 %indvars.iv1224, %i.ajk
  %i.ajm = load i64, ptr %i.m, align 8, !tbaa !48
  %i.ajn = mul i64 %i.ajl, %i.ajm
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aji, i64 %i.ajn
  br label %.lr.ph1162

.lr.ph1162:                                       ; preds = %.lr.ph1162.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv1216 = phi i64 [ 0, %.lr.ph1162.preheader ], [ %indvars.iv.next1217, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.01491159 = phi ptr [ %i.ajo, %.lr.ph1162.preheader ], [ %i.atp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.ajp = load ptr, ptr %7, align 8, !tbaa !19
  %i.ajq = load i32, ptr %i.n, align 4, !tbaa !47
  %i.ajr = sext i32 %i.ajq to i64
  %i.ajs = mul nsw i64 %indvars.iv1216, %i.ajr
  %i.ajt = load i64, ptr %i.o, align 8, !tbaa !48
  %i.aju = mul i64 %i.ajs, %i.ajt
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %i.aju ; 2 uses
  %i.ajw = load ptr, ptr %8, align 8, !tbaa !19
  %i.ajx = load i32, ptr %i.p, align 4, !tbaa !47
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = mul nsw i64 %indvars.iv1224, %i.ajy
  %i.aka = load i64, ptr %i.q, align 8, !tbaa !48
  %i.akb = mul i64 %i.ajz, %i.aka
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.akb ; 2 uses
  %i.akd = load ptr, ptr %9, align 8, !tbaa !65   ; 2 uses
  %.not166 = icmp eq ptr %i.akd, null
  br i1 %.not166, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph1162
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %indvars.iv1216
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !52
  %i.akg = insertelement <4 x float> poison, float %i.akf, i64 0
  %i.akh = shufflevector <4 x float> %i.akg, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph1162
  %.0966 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1162 ], [ %i.akh, %bb.o ] ; 2 uses
  %i.aki = load i32, ptr %10, align 4, !tbaa !57  ; 5 uses
  %i.akj = icmp sgt i32 %i.aki, 3
  br i1 %i.akj, label %.lr.ph1143, label %.preheader1107

.preheader1107.loopexit:                          ; preds = %.lr.ph1143
  %i.akk = and i32 %i.aki, 2147483644
  %i.akl = fadd fast <4 x float> %i.alz, %i.alx
  %i.akm = fadd fast <4 x float> %i.akl, %i.amb
  br label %.preheader1107

.preheader1107:                                   ; preds = %.preheader1107.loopexit, %bb.p
  %.1967.lcssa = phi <4 x float> [ %.0966, %bb.p ], [ %i.alv, %.preheader1107.loopexit ] ; 2 uses
  %.0964.lcssa = phi <4 x float> [ zeroinitializer, %bb.p ], [ %i.akm, %.preheader1107.loopexit ]
  %.0146.lcssa = phi ptr [ %i.ajv, %bb.p ], [ %i.amd, %.preheader1107.loopexit ]
  %.0144.lcssa = phi ptr [ %i.akc, %bb.p ], [ %i.amc, %.preheader1107.loopexit ]
  %.0142.lcssa = phi i32 [ 0, %bb.p ], [ %i.akk, %.preheader1107.loopexit ] ; 2 uses
  %i.akn = icmp slt i32 %.0142.lcssa, %i.aki
  br i1 %i.akn, label %.lr.ph1156, label %._crit_edge1157

.lr.ph1143:                                       ; preds = %bb.p, %.lr.ph1143
  %.01421141 = phi i32 [ %i.ame, %.lr.ph1143 ], [ 0, %bb.p ]
  %.01441140 = phi ptr [ %i.amc, %.lr.ph1143 ], [ %i.akc, %bb.p ] ; 5 uses
  %.01461139 = phi ptr [ %i.amd, %.lr.ph1143 ], [ %i.ajv, %bb.p ] ; 2 uses
  %.09631138 = phi <4 x float> [ %i.amb, %.lr.ph1143 ], [ zeroinitializer, %bb.p ]
  %.09641137 = phi <4 x float> [ %i.alz, %.lr.ph1143 ], [ zeroinitializer, %bb.p ]
  %.09651136 = phi <4 x float> [ %i.alx, %.lr.ph1143 ], [ zeroinitializer, %bb.p ]
  %.19671135 = phi <4 x float> [ %i.alv, %.lr.ph1143 ], [ %.0966, %bb.p ]
  %i.ako = load i64, ptr %.01441140, align 1, !tbaa !49
  %i.akp = insertelement <2 x i64> poison, i64 %i.ako, i64 0
  %i.akq = bitcast <2 x i64> %i.akp to <8 x i16>
  %i.akr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.akq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aks = bitcast <8 x i16> %i.akr to <4 x float>
  %i.akt = getelementptr inbounds nuw i8, ptr %.01441140, i64 8
  %i.aku = load i64, ptr %i.akt, align 1, !tbaa !49
  %i.akv = insertelement <2 x i64> poison, i64 %i.aku, i64 0
  %i.akw = bitcast <2 x i64> %i.akv to <8 x i16>
  %i.akx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.akw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aky = bitcast <8 x i16> %i.akx to <4 x float>
  %i.akz = getelementptr inbounds nuw i8, ptr %.01441140, i64 16
  %i.ala = load i64, ptr %i.akz, align 1, !tbaa !49
  %i.alb = insertelement <2 x i64> poison, i64 %i.ala, i64 0
  %i.alc = bitcast <2 x i64> %i.alb to <8 x i16>
  %i.ald = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.alc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ale = bitcast <8 x i16> %i.ald to <4 x float>
  %i.alf = getelementptr inbounds nuw i8, ptr %.01441140, i64 24
  %i.alg = load i64, ptr %i.alf, align 1, !tbaa !49
  %i.alh = insertelement <2 x i64> poison, i64 %i.alg, i64 0
  %i.ali = bitcast <2 x i64> %i.alh to <8 x i16>
  %i.alj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ali, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alk = bitcast <8 x i16> %i.alj to <4 x float>
  %i.all = load i64, ptr %.01461139, align 1, !tbaa !49
  %i.alm = insertelement <2 x i64> poison, i64 %i.all, i64 0
  %i.aln = bitcast <2 x i64> %i.alm to <8 x i16>
  %i.alo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aln, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alp = bitcast <8 x i16> %i.alo to <4 x float> ; 4 uses
  %i.alq = shufflevector <4 x float> %i.alp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alr = shufflevector <4 x float> %i.alp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.als = shufflevector <4 x float> %i.alp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.alt = shufflevector <4 x float> %i.alp, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.alu = fmul fast <4 x float> %i.alq, %i.aks
  %i.alv = fadd fast <4 x float> %i.alu, %.19671135 ; 2 uses
  %i.alw = fmul fast <4 x float> %i.alr, %i.aky
  %i.alx = fadd fast <4 x float> %i.alw, %.09651136 ; 2 uses
  %i.aly = fmul fast <4 x float> %i.als, %i.ale
  %i.alz = fadd fast <4 x float> %i.aly, %.09641137 ; 2 uses
  %i.ama = fmul fast <4 x float> %i.alt, %i.alk
  %i.amb = fadd fast <4 x float> %i.ama, %.09631138 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.01441140, i64 32 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.01461139, i64 8 ; 2 uses
  %i.ame = add nuw nsw i32 %.01421141, 4          ; 2 uses
  %i.amf = or disjoint i32 %i.ame, 3
  %i.amg = icmp slt i32 %i.amf, %i.aki
  br i1 %i.amg, label %.lr.ph1143, label %.preheader1107.loopexit, !llvm.loop !132

.lr.ph1156:                                       ; preds = %.preheader1107, %.lr.ph1156
  %.11431155 = phi i32 [ %i.amw, %.lr.ph1156 ], [ %.0142.lcssa, %.preheader1107 ]
  %.11451154 = phi ptr [ %i.amu, %.lr.ph1156 ], [ %.0144.lcssa, %.preheader1107 ] ; 2 uses
  %.11471153 = phi ptr [ %i.amv, %.lr.ph1156 ], [ %.0146.lcssa, %.preheader1107 ] ; 2 uses
  %.21152 = phi <4 x float> [ %i.amt, %.lr.ph1156 ], [ %.1967.lcssa, %.preheader1107 ]
  %i.amh = load i64, ptr %.11451154, align 1, !tbaa !49
  %i.ami = insertelement <2 x i64> poison, i64 %i.amh, i64 0
  %i.amj = bitcast <2 x i64> %i.ami to <8 x i16>
  %i.amk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.amj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aml = bitcast <8 x i16> %i.amk to <4 x float>
  %i.amm = load i16, ptr %.11471153, align 2, !tbaa !72
  %i.amn = zext i16 %i.amm to i32
  %i.amo = shl nuw i32 %i.amn, 16
  %i.amp = insertelement <4 x i32> poison, i32 %i.amo, i64 0
  %i.amq = bitcast <4 x i32> %i.amp to <4 x float>
  %i.amr = shufflevector <4 x float> %i.amq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ams = fmul fast <4 x float> %i.amr, %i.aml
  %i.amt = fadd fast <4 x float> %i.ams, %.21152  ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %.11451154, i64 8
  %i.amv = getelementptr inbounds nuw i8, ptr %.11471153, i64 2
  %i.amw = add nuw nsw i32 %.11431155, 1          ; 2 uses
  %exitcond1215.not = icmp eq i32 %i.amw, %i.aki
  br i1 %exitcond1215.not, label %._crit_edge1157, label %.lr.ph1156, !llvm.loop !133

._crit_edge1157:                                  ; preds = %.lr.ph1156, %.preheader1107
  %.2.lcssa = phi <4 x float> [ %.1967.lcssa, %.preheader1107 ], [ %i.amt, %.lr.ph1156 ]
  %i.amx = fadd fast <4 x float> %.0964.lcssa, %.2.lcssa ; 10 uses
  %i.amy = load i32, ptr %11, align 4, !tbaa !57
  switch i32 %i.amy, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.q
    i32 2, label %.noexc
    i32 3, label %bb.r
    i32 4, label %.noexc169
    i32 5, label %.noexc170
    i32 6, label %.noexc171
  ]

bb.q:                                             ; preds = %._crit_edge1157
  %i.amz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amx, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge1157
  %i.ana = load ptr, ptr %12, align 8, !tbaa !19
  %i.anb = load float, ptr %i.ana, align 4, !tbaa !52
  %i.anc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.amx)
  %i.and = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.amx)
  %i.ane = insertelement <4 x float> poison, float %i.anb, i64 0
  %i.anf = shufflevector <4 x float> %i.ane, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ang = fmul fast <4 x float> %i.anf, %i.and
  %i.anh = fadd fast <4 x float> %i.ang, %i.anc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.r:                                             ; preds = %._crit_edge1157
  %i.ani = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !52
  %i.ank = insertelement <4 x float> poison, float %i.anj, i64 0
  %i.anl = shufflevector <4 x float> %i.ank, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ani, i64 4
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !52
  %i.ano = insertelement <4 x float> poison, float %i.ann, i64 0
  %i.anp = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amx, <4 x float> nofpclass(nan inf) %i.anl)
  %i.anr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.anq, <4 x float> nofpclass(nan inf) %i.anp)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc169:                                        ; preds = %._crit_edge1157
  %i.ans = fneg fast <4 x float> %i.amx
  %i.ant = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ans, <4 x float> splat (float f0x42B0C0A5))
  %i.anu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ant, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.anv = fmul fast <4 x float> %i.anu, splat (float f0x3FB8AA3B)
  %i.anw = fadd fast <4 x float> %i.anv, splat (float 5.000000e-01) ; 2 uses
  %i.anx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.anw)
  %i.any = sitofp fast <4 x i32> %i.anx to <4 x float> ; 2 uses
  %i.anz = fcmp fast olt <4 x float> %i.anw, %i.any
  %i.aoa = select <4 x i1> %i.anz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aob = fsub fast <4 x float> %i.any, %i.aoa   ; 2 uses
  %i.aoc = fmul fast <4 x float> %i.aob, splat (float f0x3F317218)
  %i.aod = fsub fast <4 x float> %i.anu, %i.aoc   ; 8 uses
  %i.aoe = fmul fast <4 x float> %i.aod, %i.aod
  %i.aof = fmul fast <4 x float> %i.aod, splat (float f0x39506967)
  %i.aog = fadd fast <4 x float> %i.aof, splat (float f0x3AB743CE)
  %i.aoh = fmul fast <4 x float> %i.aog, %i.aod
  %i.aoi = fadd fast <4 x float> %i.aoh, splat (float f0x3C088908)
  %i.aoj = fmul fast <4 x float> %i.aoi, %i.aod
  %i.aok = fadd fast <4 x float> %i.aoj, splat (float f0x3D2AA9C1)
  %i.aol = fmul fast <4 x float> %i.aok, %i.aod
  %i.aom = fadd fast <4 x float> %i.aol, splat (float f0x3E2AAAAA)
  %i.aon = fmul fast <4 x float> %i.aom, %i.aod
  %i.aoo = fadd fast <4 x float> %i.aon, splat (float 5.000000e-01)
  %i.aop = fmul fast <4 x float> %i.aoe, %i.aoo
  %i.aoq = fadd fast <4 x float> %i.aod, %i.aop
  %i.aor = fadd fast <4 x float> %i.aoq, splat (float 1.000000e+00)
  %i.aos = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aob)
  %i.aot = shl <4 x i32> %i.aos, splat (i32 23)
  %i.aou = add <4 x i32> %i.aot, splat (i32 1065353216)
  %i.aov = bitcast <4 x i32> %i.aou to <4 x float>
  %i.aow = fmul fast <4 x float> %i.aor, %i.aov
  %i.aox = fadd fast <4 x float> %i.aow, splat (float 1.000000e+00)
  %i.aoy = fdiv fast <4 x float> splat (float 1.000000e+00), %i.aox
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc170:                                        ; preds = %._crit_edge1157
  %i.aoz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.amx, <4 x float> splat (float f0x42B0C0A5))
  %i.apa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aoz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.apb = fmul fast <4 x float> %i.apa, splat (float f0x3FB8AA3B)
  %i.apc = fadd fast <4 x float> %i.apb, splat (float 5.000000e-01) ; 2 uses
  %i.apd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.apc)
  %i.ape = sitofp fast <4 x i32> %i.apd to <4 x float> ; 2 uses
  %i.apf = fcmp fast olt <4 x float> %i.apc, %i.ape
  %i.apg = select <4 x i1> %i.apf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aph = fsub fast <4 x float> %i.ape, %i.apg   ; 2 uses
  %i.api = fmul fast <4 x float> %i.aph, splat (float f0x3F317218)
  %i.apj = fsub fast <4 x float> %i.apa, %i.api   ; 8 uses
  %i.apk = fmul fast <4 x float> %i.apj, %i.apj
  %i.apl = fmul fast <4 x float> %i.apj, splat (float f0x39506967)
  %i.apm = fadd fast <4 x float> %i.apl, splat (float f0x3AB743CE)
  %i.apn = fmul fast <4 x float> %i.apm, %i.apj
  %i.apo = fadd fast <4 x float> %i.apn, splat (float f0x3C088908)
  %i.app = fmul fast <4 x float> %i.apo, %i.apj
  %i.apq = fadd fast <4 x float> %i.app, splat (float f0x3D2AA9C1)
  %i.apr = fmul fast <4 x float> %i.apq, %i.apj
  %i.aps = fadd fast <4 x float> %i.apr, splat (float f0x3E2AAAAA)
  %i.apt = fmul fast <4 x float> %i.aps, %i.apj
  %i.apu = fadd fast <4 x float> %i.apt, splat (float 5.000000e-01)
  %i.apv = fmul fast <4 x float> %i.apk, %i.apu
  %i.apw = fadd fast <4 x float> %i.apj, %i.apv
  %i.apx = fadd fast <4 x float> %i.apw, splat (float 1.000000e+00)
  %i.apy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aph)
  %i.apz = shl <4 x i32> %i.apy, splat (i32 23)
  %i.aqa = add <4 x i32> %i.apz, splat (i32 1065353216)
  %i.aqb = bitcast <4 x i32> %i.aqa to <4 x float>
  %i.aqc = fmul fast <4 x float> %i.apx, %i.aqb
  %i.aqd = fadd fast <4 x float> %i.aqc, splat (float 1.000000e+00) ; 2 uses
  %i.aqe = fcmp fast ole <4 x float> %i.aqd, zeroinitializer
  %i.aqf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aqd, <4 x float> splat (float f0x00800000))
  %i.aqg = bitcast <4 x float> %i.aqf to <4 x i32> ; 2 uses
  %i.aqh = lshr <4 x i32> %i.aqg, splat (i32 23)
  %i.aqi = and <4 x i32> %i.aqg, splat (i32 -2139095041)
  %i.aqj = or disjoint <4 x i32> %i.aqi, splat (i32 1056964608)
  %i.aqk = bitcast <4 x i32> %i.aqj to <4 x float> ; 3 uses
  %i.aql = add nsw <4 x i32> %i.aqh, splat (i32 -127)
  %i.aqm = sitofp fast <4 x i32> %i.aql to <4 x float> ; 2 uses
  %i.aqn = fadd fast <4 x float> %i.aqm, splat (float 1.000000e+00)
  %i.aqo = fcmp fast olt <4 x float> %i.aqk, splat (float f0x3F3504F3) ; 2 uses
  %i.aqp = select <4 x i1> %i.aqo, <4 x float> %i.aqk, <4 x float> zeroinitializer
  %i.aqq = fadd fast <4 x float> %i.aqk, splat (float -1.000000e+00)
  %i.aqr = select fast <4 x i1> %i.aqo, <4 x float> %i.aqm, <4 x float> %i.aqn
  %i.aqs = fadd fast <4 x float> %i.aqq, %i.aqp   ; 12 uses
  %i.aqt = fmul fast <4 x float> %i.aqs, %i.aqs
  %i.aqu = fmul fast <4 x float> %i.aqs, splat (float f0x3D9021BB)
  %i.aqv = fadd fast <4 x float> %i.aqu, splat (float f0xBDEBD1B8)
  %i.aqw = fmul fast <4 x float> %i.aqv, %i.aqs
  %i.aqx = fadd fast <4 x float> %i.aqw, splat (float f0x3DEF251A)
  %i.aqy = fmul fast <4 x float> %i.aqx, %i.aqs
  %i.aqz = fadd fast <4 x float> %i.aqy, splat (float f0xBDFE5D4F)
  %i.ara = fmul fast <4 x float> %i.aqz, %i.aqs
  %i.arb = fadd fast <4 x float> %i.ara, splat (float f0x3E11E9BF)
  %i.arc = fmul fast <4 x float> %i.arb, %i.aqs
  %i.ard = fadd fast <4 x float> %i.arc, splat (float f0xBE2AAE50)
  %i.are = fmul fast <4 x float> %i.ard, %i.aqs
  %i.arf = fadd fast <4 x float> %i.are, splat (float f0x3E4CCEAC)
  %i.arg = fmul fast <4 x float> %i.arf, %i.aqs
  %i.arh = fadd fast <4 x float> %i.arg, splat (float f0xBE7FFFFC)
  %i.ari = fmul fast <4 x float> %i.arh, %i.aqs
  %i.arj = fadd fast <4 x float> %i.ari, splat (float f0x3EAAAAAA)
  %i.ark = fmul fast <4 x float> %i.arj, %i.aqs
  %reass.mul = fmul fast <4 x float> %i.aqr, splat (float f0x3F317218)
  %reass.add1082 = fadd fast <4 x float> %i.ark, splat (float -5.000000e-01)
  %reass.mul1083 = fmul fast <4 x float> %i.aqt, %reass.add1082
  %i.arl = fadd fast <4 x float> %reass.mul, %i.aqs
  %i.arm = fadd fast <4 x float> %i.arl, %reass.mul1083
  %.neg = fmul fast <4 x float> %i.arm, splat (float -2.000000e+00)
  %i.arn = select fast <4 x i1> %i.aqe, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.aro = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.arn, <4 x float> splat (float f0x42B0C0A5))
  %i.arp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aro, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.arq = fmul fast <4 x float> %i.arp, splat (float f0x3FB8AA3B)
  %i.arr = fadd fast <4 x float> %i.arq, splat (float 5.000000e-01) ; 2 uses
  %i.ars = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.arr)
  %i.art = sitofp fast <4 x i32> %i.ars to <4 x float> ; 2 uses
  %i.aru = fcmp fast olt <4 x float> %i.arr, %i.art
  %i.arv = select <4 x i1> %i.aru, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.arw = fsub fast <4 x float> %i.art, %i.arv   ; 2 uses
  %i.arx = fmul fast <4 x float> %i.arw, splat (float f0x3F317218)
  %i.ary = fsub fast <4 x float> %i.arp, %i.arx   ; 8 uses
  %i.arz = fmul fast <4 x float> %i.ary, %i.ary
  %i.asa = fmul fast <4 x float> %i.ary, splat (float f0x39506967)
  %i.asb = fadd fast <4 x float> %i.asa, splat (float f0x3AB743CE)
  %i.asc = fmul fast <4 x float> %i.asb, %i.ary
  %i.asd = fadd fast <4 x float> %i.asc, splat (float f0x3C088908)
  %i.ase = fmul fast <4 x float> %i.asd, %i.ary
  %i.asf = fadd fast <4 x float> %i.ase, splat (float f0x3D2AA9C1)
  %i.asg = fmul fast <4 x float> %i.asf, %i.ary
  %i.ash = fadd fast <4 x float> %i.asg, splat (float f0x3E2AAAAA)
  %i.asi = fmul fast <4 x float> %i.ash, %i.ary
  %i.asj = fadd fast <4 x float> %i.asi, splat (float 5.000000e-01)
  %i.ask = fmul fast <4 x float> %i.arz, %i.asj
  %i.asl = fadd fast <4 x float> %i.ary, %i.ask
  %i.asm = fadd fast <4 x float> %i.asl, splat (float 1.000000e+00)
  %i.asn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.arw)
  %i.aso = shl <4 x i32> %i.asn, splat (i32 23)
  %i.asp = add <4 x i32> %i.aso, splat (i32 1065353216)
  %i.asq = bitcast <4 x i32> %i.asp to <4 x float>
  %i.asr = fmul fast <4 x float> %i.asm, %i.asq
  %i.ass = fadd fast <4 x float> %i.asr, splat (float 1.000000e+00)
  %i.ast = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ass
  %i.asu = fadd fast <4 x float> %i.ast, splat (float -1.000000e+00)
  %i.asv = fmul fast <4 x float> %i.asu, %i.amx
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc171:                                        ; preds = %._crit_edge1157
  %i.asw = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.asx = load float, ptr %i.asw, align 4, !tbaa !52
  %i.asy = insertelement <4 x float> poison, float %i.asx, i64 0
  %i.asz = shufflevector <4 x float> %i.asy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asw, i64 4
  %i.atb = load float, ptr %i.ata, align 4, !tbaa !52
  %i.atc = insertelement <4 x float> poison, float %i.atb, i64 0
  %i.atd = shufflevector <4 x float> %i.atc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ate = fmul fast <4 x float> %i.asz, %i.amx
  %i.atf = fadd fast <4 x float> %i.ate, %i.atd
  %i.atg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.atf, <4 x float> zeroinitializer)
  %i.ath = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.atg, <4 x float> splat (float 1.000000e+00))
  %i.ati = fmul fast <4 x float> %i.ath, %i.amx
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc171, %.noexc170, %.noexc169, %bb.r, %.noexc, %bb.q, %._crit_edge1157
  %.0.i = phi nsz <4 x float> [ %i.ati, %.noexc171 ], [ %i.amz, %bb.q ], [ %i.anh, %.noexc ], [ %i.anr, %bb.r ], [ %i.aoy, %.noexc169 ], [ %i.asv, %.noexc170 ], [ %i.amx, %._crit_edge1157 ]
  %i.atj = bitcast <4 x float> %.0.i to <8 x i16>
  %i.atk = shufflevector <8 x i16> %i.atj, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.atl = bitcast <8 x i16> %i.atk to <4 x float>
  %i.atm = shufflevector <4 x float> %i.atl, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.atn = bitcast <4 x float> %i.atm to <2 x i64>
  %i.ato = extractelement <2 x i64> %i.atn, i64 0
  store i64 %i.ato, ptr %.01491159, align 1, !tbaa !49
  %i.atp = getelementptr inbounds nuw i8, ptr %.01491159, i64 8
  %indvars.iv.next1217 = add nuw nsw i64 %indvars.iv1216, 1 ; 2 uses
  %i.atq = load i32, ptr %6, align 4, !tbaa !57
  %i.atr = sext i32 %i.atq to i64
  %i.ats = icmp slt i64 %indvars.iv.next1217, %i.atr
  br i1 %i.ats, label %.lr.ph1162, label %thread-pre-split1070.loopexit, !llvm.loop !134

thread-pre-split1070.loopexit:                    ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.pr1071.pre = load i32, ptr %3, align 4, !tbaa !57 ; 2 uses
  br label %thread-pre-split1070

thread-pre-split1070:                             ; preds = %bb.n, %thread-pre-split1070.loopexit, %.thread
  %.pr10711245 = phi i32 [ %.pr10711240, %.thread ], [ %.pr1071.pre, %thread-pre-split1070.loopexit ], [ %.pr10711239, %bb.n ] ; 4 uses
  %.pr10731237 = phi i32 [ %.pr1073, %.thread ], [ %.pr1071.pre, %thread-pre-split1070.loopexit ], [ %.pr10711239, %bb.n ] ; 4 uses
  %i.att = icmp eq i32 %.pr10731237, 1
  br i1 %i.att, label %bb.s, label %.thread1072

bb.s:                                             ; preds = %thread-pre-split1070
  %i.atu = load i32, ptr %4, align 4, !tbaa !57
  %i.atv = icmp eq i32 %i.atu, 1
  br i1 %i.atv, label %bb.t, label %.thread1072

bb.t:                                             ; preds = %bb.s
  %i.atw = load i32, ptr %6, align 4, !tbaa !57   ; 2 uses
  %i.atx = icmp sgt i32 %i.atw, 0
  br i1 %i.atx, label %.lr.ph1184, label %.thread1072

.lr.ph1184:                                       ; preds = %bb.t
  %i.aty = load ptr, ptr %5, align 8, !tbaa !19
  %i.atz = load i32, ptr %i.l, align 4, !tbaa !47
  %i.aua = sext i32 %i.atz to i64
  %i.aub = mul nsw i64 %indvars.iv1224, %i.aua
  %i.auc = load i64, ptr %i.m, align 8, !tbaa !48
  %i.aud = mul i64 %i.aub, %i.auc
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aty, i64 %i.aud
  %i.auf = load ptr, ptr %7, align 8, !tbaa !19
  %i.aug = load i32, ptr %i.n, align 4, !tbaa !47
  %i.auh = sext i32 %i.aug to i64
  %i.aui = load i64, ptr %i.o, align 8, !tbaa !48
  %factor.op.mul = mul i64 %i.aui, %i.auh
  %i.auj = load ptr, ptr %8, align 8, !tbaa !19
  %i.auk = load i32, ptr %i.p, align 4, !tbaa !47
  %i.aul = sext i32 %i.auk to i64
  %i.aum = mul nsw i64 %indvars.iv1224, %i.aul
  %i.aun = load i64, ptr %i.q, align 8, !tbaa !48
  %i.auo = mul i64 %i.aum, %i.aun
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auj, i64 %i.auo ; 2 uses
  %i.auq = load ptr, ptr %9, align 8, !tbaa !65   ; 2 uses
  %.not165 = icmp eq ptr %i.auq, null
  %i.aur = load i32, ptr %10, align 4, !tbaa !57  ; 6 uses
  %i.aus = icmp sgt i32 %i.aur, 3
  %i.aut = load i32, ptr %11, align 4, !tbaa !57
  %i.auu = and i32 %i.aur, -4
  %wide.trip.count = zext nneg i32 %i.atw to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph1184, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv1220 = phi i64 [ 0, %.lr.ph1184 ], [ %indvars.iv.next1221, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 3 uses
  %.01411181 = phi ptr [ %i.aue, %.lr.ph1184 ], [ %i.ayw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv1220
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auf, i64 %.reass ; 2 uses
  br i1 %.not165, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.auq, i64 %indvars.iv1220
  %i.aux = load float, ptr %i.auw, align 4, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0134 = phi nsz float [ %i.aux, %bb.v ], [ 0.000000e+00, %bb.u ] ; 3 uses
  br i1 %i.aus, label %.lr.ph1168, label %.preheader

.preheader:                                       ; preds = %.lr.ph1168, %bb.w
  %.0962.lcssa = phi <4 x float> [ zeroinitializer, %bb.w ], [ %i.awp, %.lr.ph1168 ] ; 2 uses
  %.0138.lcssa = phi ptr [ %i.auv, %bb.w ], [ %i.awr, %.lr.ph1168 ] ; 3 uses
  %.0136.lcssa = phi ptr [ %i.aup, %bb.w ], [ %i.awq, %.lr.ph1168 ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.w ], [ %i.auu, %.lr.ph1168 ] ; 4 uses
  %i.auy = icmp slt i32 %.0.lcssa, %i.aur
  br i1 %i.auy, label %.lr.ph1178.preheader, label %._crit_edge1179

.lr.ph1178.preheader:                             ; preds = %.preheader
  %i.auz = xor i32 %.0.lcssa, -1
  %i.ava = add i32 %i.aur, %i.auz                 ; 2 uses
  %i.avb = zext i32 %i.ava to i64
  %i.avc = add nuw nsw i64 %i.avb, 1              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ava, 7
  br i1 %min.iters.check, label %.lr.ph1178.preheader1301, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1178.preheader
  %n.vec = and i64 %i.avc, 8589934584             ; 4 uses
  %i.avd = trunc i64 %n.vec to i32
  %i.ave = add i32 %.0.lcssa, %i.avd
  %i.avf = shl nuw nsw i64 %n.vec, 1              ; 2 uses
  %i.avg = getelementptr i8, ptr %.0136.lcssa, i64 %i.avf
  %i.avh = getelementptr i8, ptr %.0138.lcssa, i64 %i.avf
  %i.avi = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0134, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.avi, %vector.ph ], [ %i.awa, %vector.body ]
  %vec.phi1294 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.awb, %vector.body ]
  %i.avj = shl i64 %index, 1                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.0136.lcssa, i64 %i.avj ; 2 uses
  %next.gep1295 = getelementptr i8, ptr %.0138.lcssa, i64 %i.avj ; 2 uses
  %i.avk = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !72
  %wide.load1296 = load <4 x i16>, ptr %i.avk, align 2, !tbaa !72
  %i.avl = zext <4 x i16> %wide.load to <4 x i32>
  %i.avm = zext <4 x i16> %wide.load1296 to <4 x i32>
  %i.avn = shl nuw <4 x i32> %i.avl, splat (i32 16)
  %i.avo = shl nuw <4 x i32> %i.avm, splat (i32 16)
  %i.avp = bitcast <4 x i32> %i.avn to <4 x float>
  %i.avq = bitcast <4 x i32> %i.avo to <4 x float>
  %i.avr = getelementptr i8, ptr %next.gep1295, i64 8
  %wide.load1297 = load <4 x i16>, ptr %next.gep1295, align 2, !tbaa !72
  %wide.load1298 = load <4 x i16>, ptr %i.avr, align 2, !tbaa !72
  %i.avs = zext <4 x i16> %wide.load1297 to <4 x i32>
  %i.avt = zext <4 x i16> %wide.load1298 to <4 x i32>
  %i.avu = shl nuw <4 x i32> %i.avs, splat (i32 16)
  %i.avv = shl nuw <4 x i32> %i.avt, splat (i32 16)
  %i.avw = bitcast <4 x i32> %i.avu to <4 x float>
  %i.avx = bitcast <4 x i32> %i.avv to <4 x float>
  %i.avy = fmul fast <4 x float> %i.avw, %i.avp
  %i.avz = fmul fast <4 x float> %i.avx, %i.avq
  %i.awa = fadd fast <4 x float> %i.avy, %vec.phi ; 2 uses
  %i.awb = fadd fast <4 x float> %i.avz, %vec.phi1294 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.awc = icmp eq i64 %index.next, %n.vec
  br i1 %i.awc, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.awb, %i.awa
  %i.awd = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.avc, %n.vec
  br i1 %cmp.n, label %._crit_edge1179, label %.lr.ph1178.preheader1301

.lr.ph1178.preheader1301:                         ; preds = %.lr.ph1178.preheader, %middle.block
  %.11177.ph = phi i32 [ %.0.lcssa, %.lr.ph1178.preheader ], [ %i.ave, %middle.block ]
  %.11351176.ph = phi float [ %.0134, %.lr.ph1178.preheader ], [ %i.awd, %middle.block ]
  %.11371175.ph = phi ptr [ %.0136.lcssa, %.lr.ph1178.preheader ], [ %i.avg, %middle.block ]
  %.11391174.ph = phi ptr [ %.0138.lcssa, %.lr.ph1178.preheader ], [ %i.avh, %middle.block ]
  br label %.lr.ph1178

.lr.ph1168:                                       ; preds = %bb.w, %.lr.ph1168
  %.01166 = phi i32 [ %i.aws, %.lr.ph1168 ], [ 0, %bb.w ]
  %.01361165 = phi ptr [ %i.awq, %.lr.ph1168 ], [ %i.aup, %bb.w ] ; 2 uses
  %.01381164 = phi ptr [ %i.awr, %.lr.ph1168 ], [ %i.auv, %bb.w ] ; 2 uses
  %.09621163 = phi <4 x float> [ %i.awp, %.lr.ph1168 ], [ zeroinitializer, %bb.w ]
  %i.awe = load i64, ptr %.01361165, align 1, !tbaa !49
  %i.awf = insertelement <2 x i64> poison, i64 %i.awe, i64 0
  %i.awg = bitcast <2 x i64> %i.awf to <8 x i16>
  %i.awh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.awg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.awi = bitcast <8 x i16> %i.awh to <4 x float>
  %i.awj = load i64, ptr %.01381164, align 1, !tbaa !49
  %i.awk = insertelement <2 x i64> poison, i64 %i.awj, i64 0
  %i.awl = bitcast <2 x i64> %i.awk to <8 x i16>
  %i.awm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.awl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.awn = bitcast <8 x i16> %i.awm to <4 x float>
  %i.awo = fmul fast <4 x float> %i.awn, %i.awi
  %i.awp = fadd fast <4 x float> %i.awo, %.09621163 ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %.01361165, i64 8 ; 2 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %.01381164, i64 8 ; 2 uses
  %i.aws = add nuw nsw i32 %.01166, 4             ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not218 = icmp sgt i32 %i.k, %i.j
  br i1 %.not218, label %._crit_edge222, label %.lr.ph221

.lr.ph221:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph221, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ %i.n, %.lr.ph221 ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 4 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %.not49 = icmp eq ptr %i.p, null
  br i1 %.not49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.idx
  %i.r = load <4 x float>, ptr %i.q, align 1, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0193 = phi nsz <4 x float> [ zeroinitializer, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !19
  %i.t = load i32, ptr %i.l, align 4, !tbaa !47
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %indvars.iv, %i.u
  %i.w = load i64, ptr %i.m, align 8, !tbaa !48
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !19     ; 2 uses
  %i.aa = load i32, ptr %6, align 4, !tbaa !57    ; 5 uses
  %i.ab = icmp sgt i32 %i.aa, 3
  br i1 %i.ab, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.ac = and i32 %i.aa, 2147483644
  %i.ad = fadd fast <4 x float> %i.bt, %i.br
  %i.ae = fadd fast <4 x float> %i.ad, %i.bv
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.1194.lcssa = phi <4 x float> [ %.0193, %bb.e ], [ %i.bp, %.preheader.loopexit ] ; 2 uses
  %.0191.lcssa = phi <4 x float> [ zeroinitializer, %bb.e ], [ %i.ae, %.preheader.loopexit ]
  %.046.lcssa = phi ptr [ %i.y, %bb.e ], [ %i.bx, %.preheader.loopexit ]
  %.044.lcssa = phi ptr [ %i.z, %bb.e ], [ %i.bw, %.preheader.loopexit ]
  %.043.lcssa = phi i32 [ 0, %bb.e ], [ %i.ac, %.preheader.loopexit ] ; 2 uses
  %i.af = icmp slt i32 %.043.lcssa, %i.aa
  br i1 %i.af, label %.lr.ph216, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.043204 = phi i32 [ %i.by, %.lr.ph ], [ 0, %bb.e ]
  %.044203 = phi ptr [ %i.bw, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %.046202 = phi ptr [ %i.bx, %.lr.ph ], [ %i.y, %bb.e ] ; 5 uses
  %.0190201 = phi <4 x float> [ %i.bv, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0191200 = phi <4 x float> [ %i.bt, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0192199 = phi <4 x float> [ %i.br, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.1194198 = phi <4 x float> [ %i.bp, %.lr.ph ], [ %.0193, %bb.e ]
  %i.ag = load <4 x i16>, ptr %.044203, align 2, !tbaa !72
  %i.ah = zext <4 x i16> %i.ag to <4 x i32>
  %i.ai = shl nuw <4 x i32> %i.ah, splat (i32 16) ; 4 uses
  %i.aj = bitcast <4 x i32> %i.ai to <4 x float>
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.al = bitcast <4 x i32> %i.ai to <4 x float>
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.an = bitcast <4 x i32> %i.ai to <4 x float>
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ap = bitcast <4 x i32> %i.ai to <4 x float>
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ar = load i64, ptr %.046202, align 1, !tbaa !49
  %i.as = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %i.at = bitcast <2 x i64> %i.as to <8 x i16>
  %i.au = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.at, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.av = bitcast <8 x i16> %i.au to <4 x float>
  %i.aw = getelementptr inbounds nuw i8, ptr %.046202, i64 8
  %i.ax = load i64, ptr %i.aw, align 1, !tbaa !49
  %i.ay = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %i.az = bitcast <2 x i64> %i.ay to <8 x i16>
  %i.ba = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.az, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bb = bitcast <8 x i16> %i.ba to <4 x float>
  %i.bc = getelementptr inbounds nuw i8, ptr %.046202, i64 16
  %i.bd = load i64, ptr %i.bc, align 1, !tbaa !49
  %i.be = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %i.bf = bitcast <2 x i64> %i.be to <8 x i16>
  %i.bg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bh = bitcast <8 x i16> %i.bg to <4 x float>
  %i.bi = getelementptr inbounds nuw i8, ptr %.046202, i64 24
  %i.bj = load i64, ptr %i.bi, align 1, !tbaa !49
  %i.bk = insertelement <2 x i64> poison, i64 %i.bj, i64 0
  %i.bl = bitcast <2 x i64> %i.bk to <8 x i16>
  %i.bm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bn = bitcast <8 x i16> %i.bm to <4 x float>
  %i.bo = fmul fast <4 x float> %i.ak, %i.av
  %i.bp = fadd fast <4 x float> %i.bo, %.1194198  ; 2 uses
  %i.bq = fmul fast <4 x float> %i.am, %i.bb
  %i.br = fadd fast <4 x float> %i.bq, %.0192199  ; 2 uses
  %i.bs = fmul fast <4 x float> %i.ao, %i.bh
  %i.bt = fadd fast <4 x float> %i.bs, %.0191200  ; 2 uses
  %i.bu = fmul fast <4 x float> %i.aq, %i.bn
  %i.bv = fadd fast <4 x float> %i.bu, %.0190201  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.044203, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.046202, i64 32 ; 2 uses
  %i.by = add nuw nsw i32 %.043204, 4             ; 2 uses
  %i.bz = or disjoint i32 %i.by, 3
  %i.ca = icmp slt i32 %i.bz, %i.aa
  br i1 %i.ca, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !139

.lr.ph216:                                        ; preds = %.preheader, %.lr.ph216
  %.1215 = phi i32 [ %i.cq, %.lr.ph216 ], [ %.043.lcssa, %.preheader ]
  %.145214 = phi ptr [ %i.co, %.lr.ph216 ], [ %.044.lcssa, %.preheader ] ; 2 uses
  %.147213 = phi ptr [ %i.cp, %.lr.ph216 ], [ %.046.lcssa, %.preheader ] ; 2 uses
  %.2212 = phi <4 x float> [ %i.cn, %.lr.ph216 ], [ %.1194.lcssa, %.preheader ]
  %i.cb = load i16, ptr %.145214, align 2, !tbaa !72
  %i.cc = zext i16 %i.cb to i32
  %i.cd = shl nuw i32 %i.cc, 16
  %i.ce = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %i.cf = bitcast <4 x i32> %i.ce to <4 x float>
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = load i64, ptr %.147213, align 1, !tbaa !49
  %i.ci = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %i.cj = bitcast <2 x i64> %i.ci to <8 x i16>
  %i.ck = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cl = bitcast <8 x i16> %i.ck to <4 x float>
  %i.cm = fmul fast <4 x float> %i.cg, %i.cl
  %i.cn = fadd fast <4 x float> %i.cm, %.2212     ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.145214, i64 2
  %i.cp = getelementptr inbounds nuw i8, ptr %.147213, i64 8
  %i.cq = add nuw nsw i32 %.1215, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.cq, %i.aa
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph216, !llvm.loop !140

._crit_edge:                                      ; preds = %.lr.ph216, %.preheader
  %.2.lcssa = phi <4 x float> [ %.1194.lcssa, %.preheader ], [ %i.cn, %.lr.ph216 ]
  %i.cr = fadd fast <4 x float> %.0191.lcssa, %.2.lcssa ; 10 uses
  %i.cs = load i32, ptr %7, align 4, !tbaa !57
  switch i32 %i.cs, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %.noexc
    i32 3, label %bb.g
    i32 4, label %.noexc50
    i32 5, label %.noexc51
    i32 6, label %.noexc52
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.ct = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.cu = load ptr, ptr %8, align 8, !tbaa !19
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !52
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.cr)
  %i.cx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.cr)
  %i.cy = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.da = fmul fast <4 x float> %i.cz, %i.cx
  %i.db = fadd fast <4 x float> %i.da, %i.cw
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.dc = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !52
  %i.de = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !52
  %i.di = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> nofpclass(nan inf) %i.df)
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> nofpclass(nan inf) %i.dj)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc50:                                         ; preds = %._crit_edge
  %i.dm = fneg fast <4 x float> %i.cr
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dm, <4 x float> splat (float f0x42B0C0A5))
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dp = fmul fast <4 x float> %i.do, splat (float f0x3FB8AA3B)
  %i.dq = fadd fast <4 x float> %i.dp, splat (float 5.000000e-01) ; 2 uses
  %i.dr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dq)
  %i.ds = sitofp fast <4 x i32> %i.dr to <4 x float> ; 2 uses
  %i.dt = fcmp fast olt <4 x float> %i.dq, %i.ds
  %i.du = select <4 x i1> %i.dt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dv = fsub fast <4 x float> %i.ds, %i.du      ; 2 uses
  %i.dw = fmul fast <4 x float> %i.dv, splat (float f0x3F317218)
  %i.dx = fsub fast <4 x float> %i.do, %i.dw      ; 8 uses
  %i.dy = fmul fast <4 x float> %i.dx, %i.dx
  %i.dz = fmul fast <4 x float> %i.dx, splat (float f0x39506967)
  %i.ea = fadd fast <4 x float> %i.dz, splat (float f0x3AB743CE)
  %i.eb = fmul fast <4 x float> %i.ea, %i.dx
  %i.ec = fadd fast <4 x float> %i.eb, splat (float f0x3C088908)
  %i.ed = fmul fast <4 x float> %i.ec, %i.dx
  %i.ee = fadd fast <4 x float> %i.ed, splat (float f0x3D2AA9C1)
  %i.ef = fmul fast <4 x float> %i.ee, %i.dx
  %i.eg = fadd fast <4 x float> %i.ef, splat (float f0x3E2AAAAA)
  %i.eh = fmul fast <4 x float> %i.eg, %i.dx
  %i.ei = fadd fast <4 x float> %i.eh, splat (float 5.000000e-01)
  %i.ej = fmul fast <4 x float> %i.dy, %i.ei
  %i.ek = fadd fast <4 x float> %i.dx, %i.ej
  %i.el = fadd fast <4 x float> %i.ek, splat (float 1.000000e+00)
  %i.em = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dv)
  %i.en = shl <4 x i32> %i.em, splat (i32 23)
  %i.eo = add <4 x i32> %i.en, splat (i32 1065353216)
  %i.ep = bitcast <4 x i32> %i.eo to <4 x float>
  %i.eq = fmul fast <4 x float> %i.el, %i.ep
  %i.er = fadd fast <4 x float> %i.eq, splat (float 1.000000e+00)
  %i.es = fdiv fast <4 x float> splat (float 1.000000e+00), %i.er
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc51:                                         ; preds = %._crit_edge
  %i.et = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> splat (float f0x42B0C0A5))
  %i.eu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.et, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ev = fmul fast <4 x float> %i.eu, splat (float f0x3FB8AA3B)
  %i.ew = fadd fast <4 x float> %i.ev, splat (float 5.000000e-01) ; 2 uses
  %i.ex = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ew)
  %i.ey = sitofp fast <4 x i32> %i.ex to <4 x float> ; 2 uses
  %i.ez = fcmp fast olt <4 x float> %i.ew, %i.ey
  %i.fa = select <4 x i1> %i.ez, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fb = fsub fast <4 x float> %i.ey, %i.fa      ; 2 uses
  %i.fc = fmul fast <4 x float> %i.fb, splat (float f0x3F317218)
  %i.fd = fsub fast <4 x float> %i.eu, %i.fc      ; 8 uses
  %i.fe = fmul fast <4 x float> %i.fd, %i.fd
  %i.ff = fmul fast <4 x float> %i.fd, splat (float f0x39506967)
  %i.fg = fadd fast <4 x float> %i.ff, splat (float f0x3AB743CE)
  %i.fh = fmul fast <4 x float> %i.fg, %i.fd
  %i.fi = fadd fast <4 x float> %i.fh, splat (float f0x3C088908)
  %i.fj = fmul fast <4 x float> %i.fi, %i.fd
  %i.fk = fadd fast <4 x float> %i.fj, splat (float f0x3D2AA9C1)
  %i.fl = fmul fast <4 x float> %i.fk, %i.fd
  %i.fm = fadd fast <4 x float> %i.fl, splat (float f0x3E2AAAAA)
  %i.fn = fmul fast <4 x float> %i.fm, %i.fd
  %i.fo = fadd fast <4 x float> %i.fn, splat (float 5.000000e-01)
  %i.fp = fmul fast <4 x float> %i.fe, %i.fo
  %i.fq = fadd fast <4 x float> %i.fd, %i.fp
  %i.fr = fadd fast <4 x float> %i.fq, splat (float 1.000000e+00)
  %i.fs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fb)
  %i.ft = shl <4 x i32> %i.fs, splat (i32 23)
  %i.fu = add <4 x i32> %i.ft, splat (i32 1065353216)
  %i.fv = bitcast <4 x i32> %i.fu to <4 x float>
  %i.fw = fmul fast <4 x float> %i.fr, %i.fv
  %i.fx = fadd fast <4 x float> %i.fw, splat (float 1.000000e+00) ; 2 uses
  %i.fy = fcmp fast ole <4 x float> %i.fx, zeroinitializer
  %i.fz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fx, <4 x float> splat (float f0x00800000))
  %i.ga = bitcast <4 x float> %i.fz to <4 x i32>  ; 2 uses
  %i.gb = lshr <4 x i32> %i.ga, splat (i32 23)
  %i.gc = and <4 x i32> %i.ga, splat (i32 -2139095041)
  %i.gd = or disjoint <4 x i32> %i.gc, splat (i32 1056964608)
  %i.ge = bitcast <4 x i32> %i.gd to <4 x float>  ; 3 uses
  %i.gf = add nsw <4 x i32> %i.gb, splat (i32 -127)
  %i.gg = sitofp fast <4 x i32> %i.gf to <4 x float> ; 2 uses
  %i.gh = fadd fast <4 x float> %i.gg, splat (float 1.000000e+00)
  %i.gi = fcmp fast olt <4 x float> %i.ge, splat (float f0x3F3504F3) ; 2 uses
  %i.gj = select <4 x i1> %i.gi, <4 x float> %i.ge, <4 x float> zeroinitializer
  %i.gk = fadd fast <4 x float> %i.ge, splat (float -1.000000e+00)
  %i.gl = select fast <4 x i1> %i.gi, <4 x float> %i.gg, <4 x float> %i.gh
  %i.gm = fadd fast <4 x float> %i.gk, %i.gj      ; 12 uses
  %i.gn = fmul fast <4 x float> %i.gm, %i.gm
  %i.go = fmul fast <4 x float> %i.gm, splat (float f0x3D9021BB)
  %i.gp = fadd fast <4 x float> %i.go, splat (float f0xBDEBD1B8)
  %i.gq = fmul fast <4 x float> %i.gp, %i.gm
  %i.gr = fadd fast <4 x float> %i.gq, splat (float f0x3DEF251A)
  %i.gs = fmul fast <4 x float> %i.gr, %i.gm
  %i.gt = fadd fast <4 x float> %i.gs, splat (float f0xBDFE5D4F)
  %i.gu = fmul fast <4 x float> %i.gt, %i.gm
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3E11E9BF)
  %i.gw = fmul fast <4 x float> %i.gv, %i.gm
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0xBE2AAE50)
  %i.gy = fmul fast <4 x float> %i.gx, %i.gm
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3E4CCEAC)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gm
  %i.hb = fadd fast <4 x float> %i.ha, splat (float f0xBE7FFFFC)
  %i.hc = fmul fast <4 x float> %i.hb, %i.gm
  %i.hd = fadd fast <4 x float> %i.hc, splat (float f0x3EAAAAAA)
  %i.he = fmul fast <4 x float> %i.hd, %i.gm
  %reass.mul = fmul fast <4 x float> %i.gl, splat (float f0x3F317218)
  %reass.add196 = fadd fast <4 x float> %i.he, splat (float -5.000000e-01)
  %reass.mul197 = fmul fast <4 x float> %i.gn, %reass.add196
  %i.hf = fadd fast <4 x float> %reass.mul, %i.gm
  %i.hg = fadd fast <4 x float> %i.hf, %reass.mul197
  %.neg = fmul fast <4 x float> %i.hg, splat (float -2.000000e+00)
  %i.hh = select fast <4 x i1> %i.fy, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.hi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hh, <4 x float> splat (float f0x42B0C0A5))
  %i.hj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hi, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hk = fmul fast <4 x float> %i.hj, splat (float f0x3FB8AA3B)
  %i.hl = fadd fast <4 x float> %i.hk, splat (float 5.000000e-01) ; 2 uses
  %i.hm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hl)
  %i.hn = sitofp fast <4 x i32> %i.hm to <4 x float> ; 2 uses
  %i.ho = fcmp fast olt <4 x float> %i.hl, %i.hn
  %i.hp = select <4 x i1> %i.ho, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hq = fsub fast <4 x float> %i.hn, %i.hp      ; 2 uses
  %i.hr = fmul fast <4 x float> %i.hq, splat (float f0x3F317218)
  %i.hs = fsub fast <4 x float> %i.hj, %i.hr      ; 8 uses
  %i.ht = fmul fast <4 x float> %i.hs, %i.hs
  %i.hu = fmul fast <4 x float> %i.hs, splat (float f0x39506967)
  %i.hv = fadd fast <4 x float> %i.hu, splat (float f0x3AB743CE)
  %i.hw = fmul fast <4 x float> %i.hv, %i.hs
  %i.hx = fadd fast <4 x float> %i.hw, splat (float f0x3C088908)
  %i.hy = fmul fast <4 x float> %i.hx, %i.hs
  %i.hz = fadd fast <4 x float> %i.hy, splat (float f0x3D2AA9C1)
  %i.ia = fmul fast <4 x float> %i.hz, %i.hs
  %i.ib = fadd fast <4 x float> %i.ia, splat (float f0x3E2AAAAA)
  %i.ic = fmul fast <4 x float> %i.ib, %i.hs
  %i.id = fadd fast <4 x float> %i.ic, splat (float 5.000000e-01)
  %i.ie = fmul fast <4 x float> %i.ht, %i.id
  %i.if = fadd fast <4 x float> %i.hs, %i.ie
  %i.ig = fadd fast <4 x float> %i.if, splat (float 1.000000e+00)
  %i.ih = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hq)
  %i.ii = shl <4 x i32> %i.ih, splat (i32 23)
  %i.ij = add <4 x i32> %i.ii, splat (i32 1065353216)
  %i.ik = bitcast <4 x i32> %i.ij to <4 x float>
  %i.il = fmul fast <4 x float> %i.ig, %i.ik
  %i.im = fadd fast <4 x float> %i.il, splat (float 1.000000e+00)
  %i.in = fdiv fast <4 x float> splat (float 2.000000e+00), %i.im
  %i.io = fadd fast <4 x float> %i.in, splat (float -1.000000e+00)
  %i.ip = fmul fast <4 x float> %i.io, %i.cr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc52:                                         ; preds = %._crit_edge
  %i.iq = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !52
  %i.is = insertelement <4 x float> poison, float %i.ir, i64 0
  %i.it = shufflevector <4 x float> %i.is, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !52
  %i.iw = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iy = fmul fast <4 x float> %i.it, %i.cr
  %i.iz = fadd fast <4 x float> %i.iy, %i.ix
  %i.ja = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iz, <4 x float> zeroinitializer)
  %i.jb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ja, <4 x float> splat (float 1.000000e+00))
  %i.jc = fmul fast <4 x float> %i.jb, %i.cr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc52, %.noexc51, %.noexc50, %bb.g, %.noexc, %bb.f, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.jc, %.noexc52 ], [ %i.ct, %bb.f ], [ %i.db, %.noexc ], [ %i.dl, %bb.g ], [ %i.es, %.noexc50 ], [ %i.ip, %.noexc51 ], [ %i.cr, %._crit_edge ]
  %i.jd = load ptr, ptr %9, align 8, !tbaa !19
  %.idx236 = shl nsw i64 %indvars.iv, 3
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 %.idx236
  %i.jf = bitcast <4 x float> %.0.i to <8 x i16>
  %i.jg = shufflevector <8 x i16> %i.jf, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.jh = bitcast <8 x i16> %i.jg to <4 x float>
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jj = bitcast <4 x float> %i.ji to <2 x i64>
  %i.jk = extractelement <2 x i64> %i.jj, i64 0
  store i64 %i.jk, ptr %i.je, align 1, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond231.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond231.not, label %._crit_edge222, label %bb.c

._crit_edge222:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge222, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not278 = icmp sgt i32 %i.k, %i.j
  br i1 %.not278, label %._crit_edge282, label %.lr.ph281

.lr.ph281:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph281, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.0279 = phi i32 [ %i.k, %.lr.ph281 ], [ %i.kk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !57
  %i.o = shl nsw i32 %.0279, 2
  %i.p = add nsw i32 %i.n, %i.o                   ; 4 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !65     ; 2 uses
  %.not83 = icmp eq ptr %i.q, null
  %.pre = sext i32 %i.p to i64                    ; 3 uses
  br i1 %.not83, label %._crit_edge293, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.pre
  %i.s = load <4 x float>, ptr %i.r, align 4, !tbaa !52
  br label %._crit_edge293

._crit_edge293:                                   ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi nsz <4 x float> [ %i.s, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !19     ; 4 uses
  %i.u = load i32, ptr %i.l, align 4, !tbaa !47
  %i.v = sext i32 %i.u to i64
  %i.w = load i64, ptr %i.m, align 8, !tbaa !48
  %i.x = mul i64 %i.w, %i.v                       ; 4 uses
  %i.y = mul i64 %i.x, %.pre
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y ; 2 uses
  %i.aa = add nsw i32 %i.p, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul i64 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  %i.ae = add nsw i32 %i.p, 2
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.x, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ag ; 2 uses
  %i.ai = add nsw i32 %i.p, 3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul i64 %i.x, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.an = load i32, ptr %7, align 4, !tbaa !57    ; 5 uses
  %i.ao = icmp sgt i32 %i.an, 3
  br i1 %i.ao, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.ap = and i32 %i.an, 2147483644
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge293
  %.0245.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge293 ], [ %i.br, %.preheader.loopexit ] ; 2 uses
  %.0244.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge293 ], [ %i.bt, %.preheader.loopexit ] ; 2 uses
  %.0243.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge293 ], [ %i.bv, %.preheader.loopexit ] ; 2 uses
  %.0242.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge293 ], [ %i.bx, %.preheader.loopexit ] ; 2 uses
  %.080.lcssa = phi ptr [ %i.z, %._crit_edge293 ], [ %i.bz, %.preheader.loopexit ]
  %.078.lcssa = phi ptr [ %i.ad, %._crit_edge293 ], [ %i.ca, %.preheader.loopexit ]
  %.076.lcssa = phi ptr [ %i.ah, %._crit_edge293 ], [ %i.cb, %.preheader.loopexit ]
  %.074.lcssa = phi ptr [ %i.al, %._crit_edge293 ], [ %i.cc, %.preheader.loopexit ]
  %.072.lcssa = phi ptr [ %i.am, %._crit_edge293 ], [ %i.by, %.preheader.loopexit ]
  %.071.lcssa = phi i32 [ 0, %._crit_edge293 ], [ %i.ap, %.preheader.loopexit ] ; 2 uses
  %i.aq = icmp slt i32 %.071.lcssa, %i.an
  br i1 %i.aq, label %.lr.ph276, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge293, %.lr.ph
  %.071258 = phi i32 [ %i.cd, %.lr.ph ], [ 0, %._crit_edge293 ]
  %.072257 = phi ptr [ %i.by, %.lr.ph ], [ %i.am, %._crit_edge293 ] ; 2 uses
  %.074256 = phi ptr [ %i.cc, %.lr.ph ], [ %i.al, %._crit_edge293 ] ; 2 uses
  %.076255 = phi ptr [ %i.cb, %.lr.ph ], [ %i.ah, %._crit_edge293 ] ; 2 uses
  %.078254 = phi ptr [ %i.ca, %.lr.ph ], [ %i.ad, %._crit_edge293 ] ; 2 uses
  %.080253 = phi ptr [ %i.bz, %.lr.ph ], [ %i.z, %._crit_edge293 ] ; 2 uses
  %.0242252 = phi <4 x float> [ %i.bx, %.lr.ph ], [ zeroinitializer, %._crit_edge293 ]
  %.0243251 = phi <4 x float> [ %i.bv, %.lr.ph ], [ zeroinitializer, %._crit_edge293 ]
  %.0244250 = phi <4 x float> [ %i.bt, %.lr.ph ], [ zeroinitializer, %._crit_edge293 ]
  %.0245249 = phi <4 x float> [ %i.br, %.lr.ph ], [ zeroinitializer, %._crit_edge293 ]
  %i.ar = load i64, ptr %.072257, align 1, !tbaa !49
  %i.as = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %i.at = bitcast <2 x i64> %i.as to <8 x i16>
  %i.au = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.at, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.av = bitcast <8 x i16> %i.au to <4 x float>  ; 4 uses
  %i.aw = load i64, ptr %.080253, align 1, !tbaa !49
  %i.ax = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %i.ay = bitcast <2 x i64> %i.ax to <8 x i16>
  %i.az = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ay, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ba = bitcast <8 x i16> %i.az to <4 x float>
  %i.bb = load i64, ptr %.078254, align 1, !tbaa !49
  %i.bc = insertelement <2 x i64> poison, i64 %i.bb, i64 0
  %i.bd = bitcast <2 x i64> %i.bc to <8 x i16>
  %i.be = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bf = bitcast <8 x i16> %i.be to <4 x float>
  %i.bg = load i64, ptr %.076255, align 1, !tbaa !49
  %i.bh = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %i.bi = bitcast <2 x i64> %i.bh to <8 x i16>
  %i.bj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bk = bitcast <8 x i16> %i.bj to <4 x float>
  %i.bl = load i64, ptr %.074256, align 1, !tbaa !49
  %i.bm = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %i.bn = bitcast <2 x i64> %i.bm to <8 x i16>
  %i.bo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bp = bitcast <8 x i16> %i.bo to <4 x float>
  %i.bq = fmul fast <4 x float> %i.ba, %i.av
  %i.br = fadd fast <4 x float> %i.bq, %.0245249  ; 2 uses
  %i.bs = fmul fast <4 x float> %i.bf, %i.av
  %i.bt = fadd fast <4 x float> %i.bs, %.0244250  ; 2 uses
  %i.bu = fmul fast <4 x float> %i.bk, %i.av
  %i.bv = fadd fast <4 x float> %i.bu, %.0243251  ; 2 uses
  %i.bw = fmul fast <4 x float> %i.bp, %i.av
  %i.bx = fadd fast <4 x float> %i.bw, %.0242252  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.072257, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.080253, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.078254, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.076255, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.074256, i64 8 ; 2 uses
  %i.cd = add nuw nsw i32 %.071258, 4             ; 2 uses
  %i.ce = or disjoint i32 %i.cd, 3
  %i.cf = icmp slt i32 %i.ce, %i.an
  br i1 %i.cf, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !141

.lr.ph276:                                        ; preds = %.preheader, %.lr.ph276
  %.1275 = phi i32 [ %i.de, %.lr.ph276 ], [ %.071.lcssa, %.preheader ]
  %.173274 = phi ptr [ %i.cz, %.lr.ph276 ], [ %.072.lcssa, %.preheader ] ; 2 uses
  %.175273 = phi ptr [ %i.dd, %.lr.ph276 ], [ %.074.lcssa, %.preheader ] ; 2 uses
  %.177272 = phi ptr [ %i.dc, %.lr.ph276 ], [ %.076.lcssa, %.preheader ] ; 2 uses
  %.179271 = phi ptr [ %i.db, %.lr.ph276 ], [ %.078.lcssa, %.preheader ] ; 2 uses
  %.181270 = phi ptr [ %i.da, %.lr.ph276 ], [ %.080.lcssa, %.preheader ] ; 2 uses
  %.sroa.0.1269 = phi <4 x float> [ %i.cy, %.lr.ph276 ], [ %.sroa.0.0, %.preheader ]
  %i.cg = load i16, ptr %.173274, align 2, !tbaa !72
  %i.ch = zext i16 %i.cg to i32
  %i.ci = shl nuw i32 %i.ch, 16
  %i.cj = load i16, ptr %.181270, align 2, !tbaa !72
  %i.ck = load i16, ptr %.179271, align 2, !tbaa !72
  %i.cl = load i16, ptr %.177272, align 2, !tbaa !72
  %i.cm = load i16, ptr %.175273, align 2, !tbaa !72
  %i.cn = insertelement <4 x i16> poison, i16 %i.cj, i64 0
  %i.co = insertelement <4 x i16> %i.cn, i16 %i.ck, i64 1
  %i.cp = insertelement <4 x i16> %i.co, i16 %i.cl, i64 2
  %i.cq = insertelement <4 x i16> %i.cp, i16 %i.cm, i64 3
  %i.cr = zext <4 x i16> %i.cq to <4 x i32>
  %i.cs = shl nuw <4 x i32> %i.cr, splat (i32 16)
  %i.ct = bitcast <4 x i32> %i.cs to <4 x float>
  %i.cu = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %i.cv = bitcast <4 x i32> %i.cu to <4 x float>
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = fmul fast <4 x float> %i.cw, %i.ct
  %i.cy = fadd fast <4 x float> %i.cx, %.sroa.0.1269 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.173274, i64 2
  %i.da = getelementptr inbounds nuw i8, ptr %.181270, i64 2
  %i.db = getelementptr inbounds nuw i8, ptr %.179271, i64 2
  %i.dc = getelementptr inbounds nuw i8, ptr %.177272, i64 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.175273, i64 2
  %i.de = add nuw nsw i32 %.1275, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.de, %i.an
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph276, !llvm.loop !142

._crit_edge:                                      ; preds = %.lr.ph276, %.preheader
  %.sroa.0.1.lcssa = phi <4 x float> [ %.sroa.0.0, %.preheader ], [ %i.cy, %.lr.ph276 ]
  %i.df = shufflevector <4 x float> %.0245.lcssa, <4 x float> %.0244.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dg = shufflevector <4 x float> %.0243.lcssa, <4 x float> %.0242.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dh = shufflevector <4 x float> %.0245.lcssa, <4 x float> %.0244.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.di = shufflevector <4 x float> %.0243.lcssa, <4 x float> %.0242.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dj = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dk = shufflevector <4 x float> %i.dg, <4 x float> %i.df, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dl = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dm = shufflevector <4 x float> %i.di, <4 x float> %i.dh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dn = fadd fast <4 x float> %i.dk, %i.dj
  %i.do = fadd fast <4 x float> %i.dn, %i.dl
  %i.dp = fadd fast <4 x float> %i.do, %i.dm
  %i.dq = fadd fast <4 x float> %i.dp, %.sroa.0.1.lcssa ; 10 uses
  %i.dr = load i32, ptr %8, align 4, !tbaa !57
  switch i32 %i.dr, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc
    i32 3, label %bb.f
    i32 4, label %.noexc84
    i32 5, label %.noexc85
    i32 6, label %.noexc86
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.dt = load ptr, ptr %9, align 8, !tbaa !19
  %i.du = load float, ptr %i.dt, align 4, !tbaa !52
  %i.dv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.dq)
  %i.dw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.dq)
  %i.dx = insertelement <4 x float> poison, float %i.du, i64 0
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dz = fmul fast <4 x float> %i.dy, %i.dw
  %i.ea = fadd fast <4 x float> %i.dz, %i.dv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.eb = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !52
  %i.ed = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !52
  %i.eh = insertelement <4 x float> poison, float %i.eg, i64 0
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> nofpclass(nan inf) %i.ee)
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ej, <4 x float> nofpclass(nan inf) %i.ei)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc84:                                         ; preds = %._crit_edge
  %i.el = fneg fast <4 x float> %i.dq
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.el, <4 x float> splat (float f0x42B0C0A5))
  %i.en = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.em, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eo = fmul fast <4 x float> %i.en, splat (float f0x3FB8AA3B)
  %i.ep = fadd fast <4 x float> %i.eo, splat (float 5.000000e-01) ; 2 uses
  %i.eq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ep)
  %i.er = sitofp fast <4 x i32> %i.eq to <4 x float> ; 2 uses
  %i.es = fcmp fast olt <4 x float> %i.ep, %i.er
  %i.et = select <4 x i1> %i.es, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eu = fsub fast <4 x float> %i.er, %i.et      ; 2 uses
  %i.ev = fmul fast <4 x float> %i.eu, splat (float f0x3F317218)
  %i.ew = fsub fast <4 x float> %i.en, %i.ev      ; 8 uses
  %i.ex = fmul fast <4 x float> %i.ew, %i.ew
  %i.ey = fmul fast <4 x float> %i.ew, splat (float f0x39506967)
  %i.ez = fadd fast <4 x float> %i.ey, splat (float f0x3AB743CE)
  %i.fa = fmul fast <4 x float> %i.ez, %i.ew
  %i.fb = fadd fast <4 x float> %i.fa, splat (float f0x3C088908)
  %i.fc = fmul fast <4 x float> %i.fb, %i.ew
  %i.fd = fadd fast <4 x float> %i.fc, splat (float f0x3D2AA9C1)
  %i.fe = fmul fast <4 x float> %i.fd, %i.ew
  %i.ff = fadd fast <4 x float> %i.fe, splat (float f0x3E2AAAAA)
  %i.fg = fmul fast <4 x float> %i.ff, %i.ew
  %i.fh = fadd fast <4 x float> %i.fg, splat (float 5.000000e-01)
  %i.fi = fmul fast <4 x float> %i.ex, %i.fh
  %i.fj = fadd fast <4 x float> %i.ew, %i.fi
  %i.fk = fadd fast <4 x float> %i.fj, splat (float 1.000000e+00)
  %i.fl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eu)
  %i.fm = shl <4 x i32> %i.fl, splat (i32 23)
  %i.fn = add <4 x i32> %i.fm, splat (i32 1065353216)
  %i.fo = bitcast <4 x i32> %i.fn to <4 x float>
  %i.fp = fmul fast <4 x float> %i.fk, %i.fo
  %i.fq = fadd fast <4 x float> %i.fp, splat (float 1.000000e+00)
  %i.fr = fdiv fast <4 x float> splat (float 1.000000e+00), %i.fq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc85:                                         ; preds = %._crit_edge
  %i.fs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> splat (float f0x42B0C0A5))
  %i.ft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fs, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fu = fmul fast <4 x float> %i.ft, splat (float f0x3FB8AA3B)
  %i.fv = fadd fast <4 x float> %i.fu, splat (float 5.000000e-01) ; 2 uses
  %i.fw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fv)
  %i.fx = sitofp fast <4 x i32> %i.fw to <4 x float> ; 2 uses
  %i.fy = fcmp fast olt <4 x float> %i.fv, %i.fx
  %i.fz = select <4 x i1> %i.fy, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ga = fsub fast <4 x float> %i.fx, %i.fz      ; 2 uses
  %i.gb = fmul fast <4 x float> %i.ga, splat (float f0x3F317218)
  %i.gc = fsub fast <4 x float> %i.ft, %i.gb      ; 8 uses
  %i.gd = fmul fast <4 x float> %i.gc, %i.gc
  %i.ge = fmul fast <4 x float> %i.gc, splat (float f0x39506967)
  %i.gf = fadd fast <4 x float> %i.ge, splat (float f0x3AB743CE)
  %i.gg = fmul fast <4 x float> %i.gf, %i.gc
  %i.gh = fadd fast <4 x float> %i.gg, splat (float f0x3C088908)
  %i.gi = fmul fast <4 x float> %i.gh, %i.gc
  %i.gj = fadd fast <4 x float> %i.gi, splat (float f0x3D2AA9C1)
  %i.gk = fmul fast <4 x float> %i.gj, %i.gc
  %i.gl = fadd fast <4 x float> %i.gk, splat (float f0x3E2AAAAA)
  %i.gm = fmul fast <4 x float> %i.gl, %i.gc
  %i.gn = fadd fast <4 x float> %i.gm, splat (float 5.000000e-01)
  %i.go = fmul fast <4 x float> %i.gd, %i.gn
  %i.gp = fadd fast <4 x float> %i.gc, %i.go
  %i.gq = fadd fast <4 x float> %i.gp, splat (float 1.000000e+00)
  %i.gr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ga)
  %i.gs = shl <4 x i32> %i.gr, splat (i32 23)
  %i.gt = add <4 x i32> %i.gs, splat (i32 1065353216)
  %i.gu = bitcast <4 x i32> %i.gt to <4 x float>
  %i.gv = fmul fast <4 x float> %i.gq, %i.gu
  %i.gw = fadd fast <4 x float> %i.gv, splat (float 1.000000e+00) ; 2 uses
  %i.gx = fcmp fast ole <4 x float> %i.gw, zeroinitializer
  %i.gy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gw, <4 x float> splat (float f0x00800000))
  %i.gz = bitcast <4 x float> %i.gy to <4 x i32>  ; 2 uses
  %i.ha = lshr <4 x i32> %i.gz, splat (i32 23)
  %i.hb = and <4 x i32> %i.gz, splat (i32 -2139095041)
  %i.hc = or disjoint <4 x i32> %i.hb, splat (i32 1056964608)
  %i.hd = bitcast <4 x i32> %i.hc to <4 x float>  ; 3 uses
  %i.he = add nsw <4 x i32> %i.ha, splat (i32 -127)
  %i.hf = sitofp fast <4 x i32> %i.he to <4 x float> ; 2 uses
  %i.hg = fadd fast <4 x float> %i.hf, splat (float 1.000000e+00)
  %i.hh = fcmp fast olt <4 x float> %i.hd, splat (float f0x3F3504F3) ; 2 uses
  %i.hi = select <4 x i1> %i.hh, <4 x float> %i.hd, <4 x float> zeroinitializer
  %i.hj = fadd fast <4 x float> %i.hd, splat (float -1.000000e+00)
  %i.hk = select fast <4 x i1> %i.hh, <4 x float> %i.hf, <4 x float> %i.hg
  %i.hl = fadd fast <4 x float> %i.hj, %i.hi      ; 12 uses
  %i.hm = fmul fast <4 x float> %i.hl, %i.hl
  %i.hn = fmul fast <4 x float> %i.hl, splat (float f0x3D9021BB)
  %i.ho = fadd fast <4 x float> %i.hn, splat (float f0xBDEBD1B8)
  %i.hp = fmul fast <4 x float> %i.ho, %i.hl
  %i.hq = fadd fast <4 x float> %i.hp, splat (float f0x3DEF251A)
  %i.hr = fmul fast <4 x float> %i.hq, %i.hl
  %i.hs = fadd fast <4 x float> %i.hr, splat (float f0xBDFE5D4F)
  %i.ht = fmul fast <4 x float> %i.hs, %i.hl
  %i.hu = fadd fast <4 x float> %i.ht, splat (float f0x3E11E9BF)
  %i.hv = fmul fast <4 x float> %i.hu, %i.hl
  %i.hw = fadd fast <4 x float> %i.hv, splat (float f0xBE2AAE50)
  %i.hx = fmul fast <4 x float> %i.hw, %i.hl
  %i.hy = fadd fast <4 x float> %i.hx, splat (float f0x3E4CCEAC)
  %i.hz = fmul fast <4 x float> %i.hy, %i.hl
  %i.ia = fadd fast <4 x float> %i.hz, splat (float f0xBE7FFFFC)
  %i.ib = fmul fast <4 x float> %i.ia, %i.hl
  %i.ic = fadd fast <4 x float> %i.ib, splat (float f0x3EAAAAAA)
  %i.id = fmul fast <4 x float> %i.ic, %i.hl
  %reass.mul = fmul fast <4 x float> %i.hk, splat (float f0x3F317218)
  %reass.add247 = fadd fast <4 x float> %i.id, splat (float -5.000000e-01)
  %reass.mul248 = fmul fast <4 x float> %i.hm, %reass.add247
  %i.ie = fadd fast <4 x float> %reass.mul, %i.hl
  %i.if = fadd fast <4 x float> %i.ie, %reass.mul248
  %.neg = fmul fast <4 x float> %i.if, splat (float -2.000000e+00)
  %i.ig = select fast <4 x i1> %i.gx, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ih = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ig, <4 x float> splat (float f0x42B0C0A5))
  %i.ii = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ih, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ij = fmul fast <4 x float> %i.ii, splat (float f0x3FB8AA3B)
  %i.ik = fadd fast <4 x float> %i.ij, splat (float 5.000000e-01) ; 2 uses
  %i.il = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ik)
  %i.im = sitofp fast <4 x i32> %i.il to <4 x float> ; 2 uses
  %i.in = fcmp fast olt <4 x float> %i.ik, %i.im
  %i.io = select <4 x i1> %i.in, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ip = fsub fast <4 x float> %i.im, %i.io      ; 2 uses
  %i.iq = fmul fast <4 x float> %i.ip, splat (float f0x3F317218)
  %i.ir = fsub fast <4 x float> %i.ii, %i.iq      ; 8 uses
  %i.is = fmul fast <4 x float> %i.ir, %i.ir
  %i.it = fmul fast <4 x float> %i.ir, splat (float f0x39506967)
  %i.iu = fadd fast <4 x float> %i.it, splat (float f0x3AB743CE)
  %i.iv = fmul fast <4 x float> %i.iu, %i.ir
  %i.iw = fadd fast <4 x float> %i.iv, splat (float f0x3C088908)
  %i.ix = fmul fast <4 x float> %i.iw, %i.ir
  %i.iy = fadd fast <4 x float> %i.ix, splat (float f0x3D2AA9C1)
  %i.iz = fmul fast <4 x float> %i.iy, %i.ir
  %i.ja = fadd fast <4 x float> %i.iz, splat (float f0x3E2AAAAA)
  %i.jb = fmul fast <4 x float> %i.ja, %i.ir
  %i.jc = fadd fast <4 x float> %i.jb, splat (float 5.000000e-01)
  %i.jd = fmul fast <4 x float> %i.is, %i.jc
  %i.je = fadd fast <4 x float> %i.ir, %i.jd
  %i.jf = fadd fast <4 x float> %i.je, splat (float 1.000000e+00)
  %i.jg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ip)
  %i.jh = shl <4 x i32> %i.jg, splat (i32 23)
  %i.ji = add <4 x i32> %i.jh, splat (i32 1065353216)
  %i.jj = bitcast <4 x i32> %i.ji to <4 x float>
  %i.jk = fmul fast <4 x float> %i.jf, %i.jj
  %i.jl = fadd fast <4 x float> %i.jk, splat (float 1.000000e+00)
  %i.jm = fdiv fast <4 x float> splat (float 2.000000e+00), %i.jl
  %i.jn = fadd fast <4 x float> %i.jm, splat (float -1.000000e+00)
  %i.jo = fmul fast <4 x float> %i.jn, %i.dq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc86:                                         ; preds = %._crit_edge
  %i.jp = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !52
  %i.jr = insertelement <4 x float> poison, float %i.jq, i64 0
  %i.js = shufflevector <4 x float> %i.jr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !52
  %i.jv = insertelement <4 x float> poison, float %i.ju, i64 0
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jx = fmul fast <4 x float> %i.js, %i.dq
  %i.jy = fadd fast <4 x float> %i.jx, %i.jw
  %i.jz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jy, <4 x float> zeroinitializer)
  %i.ka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jz, <4 x float> splat (float 1.000000e+00))
  %i.kb = fmul fast <4 x float> %i.ka, %i.dq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc86, %.noexc85, %.noexc84, %bb.f, %.noexc, %bb.e, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.kb, %.noexc86 ], [ %i.ds, %bb.e ], [ %i.ea, %.noexc ], [ %i.ek, %bb.f ], [ %i.fr, %.noexc84 ], [ %i.jo, %.noexc85 ], [ %i.dq, %._crit_edge ]
  %i.kc = load ptr, ptr %10, align 8, !tbaa !19
  %i.kd = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %.pre
  %i.ke = bitcast <4 x float> %.0.i to <8 x i16>
  %i.kf = shufflevector <8 x i16> %i.ke, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.kg = bitcast <8 x i16> %i.kf to <4 x float>
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ki = bitcast <4 x float> %i.kh to <2 x i64>
  %i.kj = extractelement <2 x i64> %i.ki, i64 0
  store i64 %i.kj, ptr %i.kd, align 1, !tbaa !49
  %i.kk = add i32 %.0279, 1
  %exitcond292.not = icmp eq i32 %.0279, %i.j
  br i1 %exitcond292.not, label %._crit_edge282, label %bb.c

._crit_edge282:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge282, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !57     ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.i, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.j = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !57
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !57
  %i.m = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !65     ; 2 uses
  %.not = icmp eq ptr %i.p, null
  %i.q = load ptr, ptr %5, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !48
  %factor.op.mul = mul i64 %i.v, %i.t
  %i.w = load ptr, ptr %6, align 8, !tbaa !19     ; 2 uses
  %i.x = load i32, ptr %7, align 4, !tbaa !57     ; 6 uses
  %i.y = icmp sgt i32 %i.x, 3
  %i.z = load i32, ptr %8, align 4, !tbaa !57
  %i.aa = load ptr, ptr %10, align 8, !tbaa !19
  %i.ab = and i32 %i.x, -4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph90, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.088 = phi i32 [ %i.m, %.lr.ph90 ], [ %i.ef, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.ac = add i32 %.088, %i.e
  %.pre = sext i32 %i.ac to i64                   ; 3 uses
  br i1 %.not, label %._crit_edge97, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.p, i64 %.pre
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !52
  br label %._crit_edge97

._crit_edge97:                                    ; preds = %bb.c, %bb.d
  %.051 = phi nsz float [ %i.ae, %bb.d ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %.pre
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass ; 2 uses
  br i1 %i.y, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %._crit_edge97
  %.071.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge97 ], [ %i.bx, %.lr.ph ] ; 2 uses
  %.049.lcssa = phi ptr [ %i.af, %._crit_edge97 ], [ %i.bz, %.lr.ph ] ; 3 uses
  %.047.lcssa = phi ptr [ %i.w, %._crit_edge97 ], [ %i.by, %.lr.ph ] ; 3 uses
  %.046.lcssa = phi i32 [ 0, %._crit_edge97 ], [ %i.ab, %.lr.ph ] ; 4 uses
  %i.ag = icmp slt i32 %.046.lcssa, %i.x
  br i1 %i.ag, label %.lr.ph86.preheader, label %._crit_edge

.lr.ph86.preheader:                               ; preds = %.preheader
  %i.ah = xor i32 %.046.lcssa, -1
  %i.ai = add i32 %i.x, %i.ah                     ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ai, 7
  br i1 %min.iters.check, label %.lr.ph86.preheader120, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph86.preheader
  %n.vec = and i64 %i.ak, 8589934584              ; 4 uses
  %i.al = trunc i64 %n.vec to i32
  %i.am = add i32 %.046.lcssa, %i.al
  %i.an = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.ao = getelementptr i8, ptr %.047.lcssa, i64 %i.an
  %i.ap = getelementptr i8, ptr %.049.lcssa, i64 %i.an
  %i.aq = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.051, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.aq, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi113 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.ar = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.047.lcssa, i64 %i.ar ; 2 uses
  %next.gep114 = getelementptr i8, ptr %.049.lcssa, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !72
  %wide.load115 = load <4 x i16>, ptr %i.as, align 2, !tbaa !72
  %i.at = zext <4 x i16> %wide.load to <4 x i32>
  %i.au = zext <4 x i16> %wide.load115 to <4 x i32>
  %i.av = shl nuw <4 x i32> %i.at, splat (i32 16)
  %i.aw = shl nuw <4 x i32> %i.au, splat (i32 16)
  %i.ax = bitcast <4 x i32> %i.av to <4 x float>
  %i.ay = bitcast <4 x i32> %i.aw to <4 x float>
  %i.az = getelementptr i8, ptr %next.gep114, i64 8
  %wide.load116 = load <4 x i16>, ptr %next.gep114, align 2, !tbaa !72
  %wide.load117 = load <4 x i16>, ptr %i.az, align 2, !tbaa !72
  %i.ba = zext <4 x i16> %wide.load116 to <4 x i32>
  %i.bb = zext <4 x i16> %wide.load117 to <4 x i32>
  %i.bc = shl nuw <4 x i32> %i.ba, splat (i32 16)
  %i.bd = shl nuw <4 x i32> %i.bb, splat (i32 16)
  %i.be = bitcast <4 x i32> %i.bc to <4 x float>
  %i.bf = bitcast <4 x i32> %i.bd to <4 x float>
  %i.bg = fmul fast <4 x float> %i.be, %i.ax
  %i.bh = fmul fast <4 x float> %i.bf, %i.ay
  %i.bi = fadd fast <4 x float> %i.bg, %vec.phi   ; 2 uses
  %i.bj = fadd fast <4 x float> %i.bh, %vec.phi113 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.bj, %i.bi
  %i.bl = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph86.preheader120

.lr.ph86.preheader120:                            ; preds = %.lr.ph86.preheader, %middle.block
  %.185.ph = phi i32 [ %.046.lcssa, %.lr.ph86.preheader ], [ %i.am, %middle.block ]
  %.14884.ph = phi ptr [ %.047.lcssa, %.lr.ph86.preheader ], [ %i.ao, %middle.block ]
  %.15083.ph = phi ptr [ %.049.lcssa, %.lr.ph86.preheader ], [ %i.ap, %middle.block ]
  %.15282.ph = phi float [ %.051, %.lr.ph86.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph86

.lr.ph:                                           ; preds = %._crit_edge97, %.lr.ph
  %.04677 = phi i32 [ %i.ca, %.lr.ph ], [ 0, %._crit_edge97 ]
  %.04776 = phi ptr [ %i.by, %.lr.ph ], [ %i.w, %._crit_edge97 ] ; 2 uses
  %.04975 = phi ptr [ %i.bz, %.lr.ph ], [ %i.af, %._crit_edge97 ] ; 2 uses
  %.07174 = phi <4 x float> [ %i.bx, %.lr.ph ], [ zeroinitializer, %._crit_edge97 ]
  %i.bm = load i64, ptr %.04776, align 1, !tbaa !49
end_hunk_3
begin_hunk_4_@_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.dr = add <4 x i32> %i.bs, %i.dq              ; 2 uses
  %i.ds = bitcast <8 x i16> %i.de to <4 x i32>
  %i.dt = add <4 x i32> %i.bt, %i.ds              ; 2 uses
  %i.du = bitcast <8 x i16> %i.df to <4 x i32>
  %i.dv = add <4 x i32> %i.bu, %i.du              ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01981628, i64 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.01991627, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.02001626, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.02091625, i64 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.01971629, i64 8
  %i.eb = add nuw nsw i32 %.02181624, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.eb, %i.ar
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !146

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ec = sitofp fast <4 x i32> %i.dh to <4 x float>
  %i.ed = sitofp fast <4 x i32> %i.dj to <4 x float>
  %i.ee = sitofp fast <4 x i32> %i.dl to <4 x float>
  %i.ef = sitofp fast <4 x i32> %i.dn to <4 x float>
  %i.eg = sitofp fast <4 x i32> %i.dp to <4 x float>
  %i.eh = sitofp fast <4 x i32> %i.dr to <4 x float>
  %i.ei = sitofp fast <4 x i32> %i.dt to <4 x float>
  %i.ej = sitofp fast <4 x i32> %i.dv to <4 x float>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.lcssa1623 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ej, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1622 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ei, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1621 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.eh, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1620 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.eg, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1619 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ef, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1618 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ee, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1617 = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ed, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ec, %._crit_edge.loopexit ] ; 2 uses
  %i.ek = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.el = shl nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.el ; 2 uses
  %i.en = load <4 x float>, ptr %i.em, align 1, !tbaa !49 ; 8 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.ep = load <4 x float>, ptr %i.eo, align 1, !tbaa !49 ; 8 uses
  %i.eq = load i32, ptr %i.u, align 4, !tbaa !76
  %.not219 = icmp eq i32 %i.eq, 0
  br i1 %.not219, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.er = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.el ; 2 uses
  %i.et = load <4 x float>, ptr %i.es, align 1, !tbaa !49 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ev = load <4 x float>, ptr %i.eu, align 1, !tbaa !49 ; 4 uses
  %i.ew = fmul fast <4 x float> %i.en, %.lcssa
  %i.ex = fadd fast <4 x float> %i.et, %i.ew
  %i.ey = fmul fast <4 x float> %i.ep, %.lcssa1617
  %i.ez = fadd fast <4 x float> %i.ev, %i.ey
  %i.fa = fmul fast <4 x float> %i.en, %.lcssa1618
  %i.fb = fadd fast <4 x float> %i.et, %i.fa
  %i.fc = fmul fast <4 x float> %i.ep, %.lcssa1619
  %i.fd = fadd fast <4 x float> %i.ev, %i.fc
  %i.fe = fmul fast <4 x float> %i.en, %.lcssa1620
  %i.ff = fadd fast <4 x float> %i.et, %i.fe
  %i.fg = fmul fast <4 x float> %i.ep, %.lcssa1621
  %i.fh = fadd fast <4 x float> %i.ev, %i.fg
  %i.fi = fmul fast <4 x float> %i.en, %.lcssa1622
  %i.fj = fadd fast <4 x float> %i.et, %i.fi
  %i.fk = fmul fast <4 x float> %i.ep, %.lcssa1623
  %i.fl = fadd fast <4 x float> %i.ev, %i.fk
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.fm = fmul fast <4 x float> %i.en, %.lcssa
  %i.fn = fmul fast <4 x float> %i.ep, %.lcssa1617
  %i.fo = fmul fast <4 x float> %i.en, %.lcssa1618
  %i.fp = fmul fast <4 x float> %i.ep, %.lcssa1619
  %i.fq = fmul fast <4 x float> %i.en, %.lcssa1620
  %i.fr = fmul fast <4 x float> %i.ep, %.lcssa1621
  %i.fs = fmul fast <4 x float> %i.en, %.lcssa1622
  %i.ft = fmul fast <4 x float> %i.ep, %.lcssa1623
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0208 = phi nsz <4 x float> [ %i.ex, %bb.e ], [ %i.fm, %bb.f ] ; 10 uses
  %.0207 = phi nsz <4 x float> [ %i.ez, %bb.e ], [ %i.fn, %bb.f ] ; 10 uses
  %.0206 = phi nsz <4 x float> [ %i.fb, %bb.e ], [ %i.fo, %bb.f ] ; 10 uses
  %.0205 = phi nsz <4 x float> [ %i.fd, %bb.e ], [ %i.fp, %bb.f ] ; 10 uses
  %.0204 = phi nsz <4 x float> [ %i.ff, %bb.e ], [ %i.fq, %bb.f ] ; 10 uses
  %.0203 = phi nsz <4 x float> [ %i.fh, %bb.e ], [ %i.fr, %bb.f ] ; 10 uses
  %.0202 = phi nsz <4 x float> [ %i.fj, %bb.e ], [ %i.fs, %bb.f ] ; 10 uses
  %.0201 = phi nsz <4 x float> [ %i.fl, %bb.e ], [ %i.ft, %bb.f ] ; 10 uses
  %i.fu = load i32, ptr %i.w, align 8, !tbaa !63
  switch i32 %i.fu, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread: ; preds = %bb.g
  %i.fv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0208, <4 x float> zeroinitializer)
  %i.fw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0207, <4 x float> zeroinitializer)
  %i.fx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0206, <4 x float> zeroinitializer)
  %i.fy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0205, <4 x float> zeroinitializer)
  %i.fz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0204, <4 x float> zeroinitializer)
  %i.ga = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0203, <4 x float> zeroinitializer)
  %i.gb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0202, <4 x float> zeroinitializer)
  %i.gc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0201, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176: ; preds = %bb.g
  %i.gd = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !52
  %i.gf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0208)
  %i.gg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0208)
  %i.gh = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.gj = fmul fast <4 x float> %i.gi, %i.gg
  %i.gk = fadd fast <4 x float> %i.gj, %i.gf
  %i.gl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0207)
  %i.gm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0207)
  %i.gn = fmul fast <4 x float> %i.gi, %i.gm
  %i.go = fadd fast <4 x float> %i.gn, %i.gl
  %i.gp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0206)
  %i.gq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0206)
  %i.gr = fmul fast <4 x float> %i.gi, %i.gq
  %i.gs = fadd fast <4 x float> %i.gr, %i.gp
  %i.gt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0205)
  %i.gu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0205)
  %i.gv = fmul fast <4 x float> %i.gi, %i.gu
  %i.gw = fadd fast <4 x float> %i.gv, %i.gt
  %i.gx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0204)
  %i.gy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0204)
  %i.gz = fmul fast <4 x float> %i.gi, %i.gy
  %i.ha = fadd fast <4 x float> %i.gz, %i.gx
  %i.hb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0203)
  %i.hc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0203)
  %i.hd = fmul fast <4 x float> %i.gi, %i.hc
  %i.he = fadd fast <4 x float> %i.hd, %i.hb
  %i.hf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0202)
  %i.hg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0202)
  %i.hh = fmul fast <4 x float> %i.gi, %i.hg
  %i.hi = fadd fast <4 x float> %i.hh, %i.hf
  %i.hj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0201)
  %i.hk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0201)
  %i.hl = fmul fast <4 x float> %i.gi, %i.hk
  %i.hm = fadd fast <4 x float> %i.hl, %i.hj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179: ; preds = %bb.g
  %i.hn = load ptr, ptr %i.x, align 8, !tbaa !19  ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !52
  %i.hp = insertelement <4 x float> poison, float %i.ho, i64 0
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !52
  %i.ht = insertelement <4 x float> poison, float %i.hs, i64 0
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.hv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0208, <4 x float> nofpclass(nan inf) %i.hq)
  %i.hw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hv, <4 x float> nofpclass(nan inf) %i.hu)
  %i.hx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0207, <4 x float> nofpclass(nan inf) %i.hq)
  %i.hy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hx, <4 x float> nofpclass(nan inf) %i.hu)
  %i.hz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0206, <4 x float> nofpclass(nan inf) %i.hq)
  %i.ia = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hz, <4 x float> nofpclass(nan inf) %i.hu)
  %i.ib = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0205, <4 x float> nofpclass(nan inf) %i.hq)
  %i.ic = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ib, <4 x float> nofpclass(nan inf) %i.hu)
  %i.id = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0204, <4 x float> nofpclass(nan inf) %i.hq)
  %i.ie = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.id, <4 x float> nofpclass(nan inf) %i.hu)
  %i.if = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0203, <4 x float> nofpclass(nan inf) %i.hq)
  %i.ig = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.if, <4 x float> nofpclass(nan inf) %i.hu)
  %i.ih = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0202, <4 x float> nofpclass(nan inf) %i.hq)
  %i.ii = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ih, <4 x float> nofpclass(nan inf) %i.hu)
  %i.ij = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0201, <4 x float> nofpclass(nan inf) %i.hq)
  %i.ik = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ij, <4 x float> nofpclass(nan inf) %i.hu)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182: ; preds = %bb.g
  %i.il = fneg fast <4 x float> %.0208
  %i.im = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.il, <4 x float> splat (float f0x42B0C0A5))
  %i.in = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.im, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.io = fmul fast <4 x float> %i.in, splat (float f0x3FB8AA3B)
  %i.ip = fadd fast <4 x float> %i.io, splat (float 5.000000e-01) ; 2 uses
  %i.iq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ip)
  %i.ir = sitofp fast <4 x i32> %i.iq to <4 x float> ; 2 uses
  %i.is = fcmp fast olt <4 x float> %i.ip, %i.ir
  %i.it = select <4 x i1> %i.is, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.iu = fsub fast <4 x float> %i.ir, %i.it      ; 2 uses
  %i.iv = fmul fast <4 x float> %i.iu, splat (float f0x3F317218)
  %i.iw = fsub fast <4 x float> %i.in, %i.iv      ; 8 uses
  %i.ix = fmul fast <4 x float> %i.iw, %i.iw
  %i.iy = fmul fast <4 x float> %i.iw, splat (float f0x39506967)
  %i.iz = fadd fast <4 x float> %i.iy, splat (float f0x3AB743CE)
  %i.ja = fmul fast <4 x float> %i.iz, %i.iw
  %i.jb = fadd fast <4 x float> %i.ja, splat (float f0x3C088908)
  %i.jc = fmul fast <4 x float> %i.jb, %i.iw
  %i.jd = fadd fast <4 x float> %i.jc, splat (float f0x3D2AA9C1)
  %i.je = fmul fast <4 x float> %i.jd, %i.iw
  %i.jf = fadd fast <4 x float> %i.je, splat (float f0x3E2AAAAA)
  %i.jg = fmul fast <4 x float> %i.jf, %i.iw
  %i.jh = fadd fast <4 x float> %i.jg, splat (float 5.000000e-01)
  %i.ji = fmul fast <4 x float> %i.ix, %i.jh
  %i.jj = fadd fast <4 x float> %i.iw, %i.ji
  %i.jk = fadd fast <4 x float> %i.jj, splat (float 1.000000e+00)
  %i.jl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.iu)
  %i.jm = shl <4 x i32> %i.jl, splat (i32 23)
  %i.jn = add <4 x i32> %i.jm, splat (i32 1065353216)
  %i.jo = bitcast <4 x i32> %i.jn to <4 x float>
  %i.jp = fmul fast <4 x float> %i.jk, %i.jo
  %i.jq = fadd fast <4 x float> %i.jp, splat (float 1.000000e+00)
  %i.jr = fdiv fast <4 x float> splat (float 1.000000e+00), %i.jq
  %i.js = fneg fast <4 x float> %.0207
  %i.jt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.js, <4 x float> splat (float f0x42B0C0A5))
  %i.ju = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jv = fmul fast <4 x float> %i.ju, splat (float f0x3FB8AA3B)
  %i.jw = fadd fast <4 x float> %i.jv, splat (float 5.000000e-01) ; 2 uses
  %i.jx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jw)
  %i.jy = sitofp fast <4 x i32> %i.jx to <4 x float> ; 2 uses
  %i.jz = fcmp fast olt <4 x float> %i.jw, %i.jy
  %i.ka = select <4 x i1> %i.jz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.kb = fsub fast <4 x float> %i.jy, %i.ka      ; 2 uses
  %i.kc = fmul fast <4 x float> %i.kb, splat (float f0x3F317218)
  %i.kd = fsub fast <4 x float> %i.ju, %i.kc      ; 8 uses
  %i.ke = fmul fast <4 x float> %i.kd, %i.kd
  %i.kf = fmul fast <4 x float> %i.kd, splat (float f0x39506967)
  %i.kg = fadd fast <4 x float> %i.kf, splat (float f0x3AB743CE)
  %i.kh = fmul fast <4 x float> %i.kg, %i.kd
  %i.ki = fadd fast <4 x float> %i.kh, splat (float f0x3C088908)
  %i.kj = fmul fast <4 x float> %i.ki, %i.kd
  %i.kk = fadd fast <4 x float> %i.kj, splat (float f0x3D2AA9C1)
  %i.kl = fmul fast <4 x float> %i.kk, %i.kd
  %i.km = fadd fast <4 x float> %i.kl, splat (float f0x3E2AAAAA)
  %i.kn = fmul fast <4 x float> %i.km, %i.kd
  %i.ko = fadd fast <4 x float> %i.kn, splat (float 5.000000e-01)
  %i.kp = fmul fast <4 x float> %i.ke, %i.ko
  %i.kq = fadd fast <4 x float> %i.kd, %i.kp
  %i.kr = fadd fast <4 x float> %i.kq, splat (float 1.000000e+00)
  %i.ks = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kb)
  %i.kt = shl <4 x i32> %i.ks, splat (i32 23)
  %i.ku = add <4 x i32> %i.kt, splat (i32 1065353216)
  %i.kv = bitcast <4 x i32> %i.ku to <4 x float>
  %i.kw = fmul fast <4 x float> %i.kr, %i.kv
  %i.kx = fadd fast <4 x float> %i.kw, splat (float 1.000000e+00)
  %i.ky = fdiv fast <4 x float> splat (float 1.000000e+00), %i.kx
  %i.kz = fneg fast <4 x float> %.0206
  %i.la = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kz, <4 x float> splat (float f0x42B0C0A5))
  %i.lb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.la, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lc = fmul fast <4 x float> %i.lb, splat (float f0x3FB8AA3B)
  %i.ld = fadd fast <4 x float> %i.lc, splat (float 5.000000e-01) ; 2 uses
  %i.le = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ld)
  %i.lf = sitofp fast <4 x i32> %i.le to <4 x float> ; 2 uses
  %i.lg = fcmp fast olt <4 x float> %i.ld, %i.lf
  %i.lh = select <4 x i1> %i.lg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.li = fsub fast <4 x float> %i.lf, %i.lh      ; 2 uses
  %i.lj = fmul fast <4 x float> %i.li, splat (float f0x3F317218)
  %i.lk = fsub fast <4 x float> %i.lb, %i.lj      ; 8 uses
  %i.ll = fmul fast <4 x float> %i.lk, %i.lk
  %i.lm = fmul fast <4 x float> %i.lk, splat (float f0x39506967)
  %i.ln = fadd fast <4 x float> %i.lm, splat (float f0x3AB743CE)
  %i.lo = fmul fast <4 x float> %i.ln, %i.lk
  %i.lp = fadd fast <4 x float> %i.lo, splat (float f0x3C088908)
  %i.lq = fmul fast <4 x float> %i.lp, %i.lk
  %i.lr = fadd fast <4 x float> %i.lq, splat (float f0x3D2AA9C1)
  %i.ls = fmul fast <4 x float> %i.lr, %i.lk
  %i.lt = fadd fast <4 x float> %i.ls, splat (float f0x3E2AAAAA)
  %i.lu = fmul fast <4 x float> %i.lt, %i.lk
  %i.lv = fadd fast <4 x float> %i.lu, splat (float 5.000000e-01)
  %i.lw = fmul fast <4 x float> %i.ll, %i.lv
  %i.lx = fadd fast <4 x float> %i.lk, %i.lw
  %i.ly = fadd fast <4 x float> %i.lx, splat (float 1.000000e+00)
  %i.lz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.li)
  %i.ma = shl <4 x i32> %i.lz, splat (i32 23)
  %i.mb = add <4 x i32> %i.ma, splat (i32 1065353216)
  %i.mc = bitcast <4 x i32> %i.mb to <4 x float>
  %i.md = fmul fast <4 x float> %i.ly, %i.mc
  %i.me = fadd fast <4 x float> %i.md, splat (float 1.000000e+00)
  %i.mf = fdiv fast <4 x float> splat (float 1.000000e+00), %i.me
  %i.mg = fneg fast <4 x float> %.0205
  %i.mh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mg, <4 x float> splat (float f0x42B0C0A5))
  %i.mi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mj = fmul fast <4 x float> %i.mi, splat (float f0x3FB8AA3B)
  %i.mk = fadd fast <4 x float> %i.mj, splat (float 5.000000e-01) ; 2 uses
  %i.ml = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mk)
  %i.mm = sitofp fast <4 x i32> %i.ml to <4 x float> ; 2 uses
  %i.mn = fcmp fast olt <4 x float> %i.mk, %i.mm
  %i.mo = select <4 x i1> %i.mn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mp = fsub fast <4 x float> %i.mm, %i.mo      ; 2 uses
  %i.mq = fmul fast <4 x float> %i.mp, splat (float f0x3F317218)
  %i.mr = fsub fast <4 x float> %i.mi, %i.mq      ; 8 uses
  %i.ms = fmul fast <4 x float> %i.mr, %i.mr
  %i.mt = fmul fast <4 x float> %i.mr, splat (float f0x39506967)
  %i.mu = fadd fast <4 x float> %i.mt, splat (float f0x3AB743CE)
  %i.mv = fmul fast <4 x float> %i.mu, %i.mr
  %i.mw = fadd fast <4 x float> %i.mv, splat (float f0x3C088908)
  %i.mx = fmul fast <4 x float> %i.mw, %i.mr
  %i.my = fadd fast <4 x float> %i.mx, splat (float f0x3D2AA9C1)
  %i.mz = fmul fast <4 x float> %i.my, %i.mr
  %i.na = fadd fast <4 x float> %i.mz, splat (float f0x3E2AAAAA)
  %i.nb = fmul fast <4 x float> %i.na, %i.mr
  %i.nc = fadd fast <4 x float> %i.nb, splat (float 5.000000e-01)
  %i.nd = fmul fast <4 x float> %i.ms, %i.nc
  %i.ne = fadd fast <4 x float> %i.mr, %i.nd
  %i.nf = fadd fast <4 x float> %i.ne, splat (float 1.000000e+00)
  %i.ng = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mp)
  %i.nh = shl <4 x i32> %i.ng, splat (i32 23)
  %i.ni = add <4 x i32> %i.nh, splat (i32 1065353216)
  %i.nj = bitcast <4 x i32> %i.ni to <4 x float>
  %i.nk = fmul fast <4 x float> %i.nf, %i.nj
  %i.nl = fadd fast <4 x float> %i.nk, splat (float 1.000000e+00)
  %i.nm = fdiv fast <4 x float> splat (float 1.000000e+00), %i.nl
  %i.nn = fneg fast <4 x float> %.0204
  %i.no = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nn, <4 x float> splat (float f0x42B0C0A5))
  %i.np = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.no, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nq = fmul fast <4 x float> %i.np, splat (float f0x3FB8AA3B)
  %i.nr = fadd fast <4 x float> %i.nq, splat (float 5.000000e-01) ; 2 uses
  %i.ns = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nr)
  %i.nt = sitofp fast <4 x i32> %i.ns to <4 x float> ; 2 uses
  %i.nu = fcmp fast olt <4 x float> %i.nr, %i.nt
  %i.nv = select <4 x i1> %i.nu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nw = fsub fast <4 x float> %i.nt, %i.nv      ; 2 uses
  %i.nx = fmul fast <4 x float> %i.nw, splat (float f0x3F317218)
  %i.ny = fsub fast <4 x float> %i.np, %i.nx      ; 8 uses
  %i.nz = fmul fast <4 x float> %i.ny, %i.ny
  %i.oa = fmul fast <4 x float> %i.ny, splat (float f0x39506967)
  %i.ob = fadd fast <4 x float> %i.oa, splat (float f0x3AB743CE)
  %i.oc = fmul fast <4 x float> %i.ob, %i.ny
  %i.od = fadd fast <4 x float> %i.oc, splat (float f0x3C088908)
  %i.oe = fmul fast <4 x float> %i.od, %i.ny
  %i.of = fadd fast <4 x float> %i.oe, splat (float f0x3D2AA9C1)
  %i.og = fmul fast <4 x float> %i.of, %i.ny
  %i.oh = fadd fast <4 x float> %i.og, splat (float f0x3E2AAAAA)
  %i.oi = fmul fast <4 x float> %i.oh, %i.ny
  %i.oj = fadd fast <4 x float> %i.oi, splat (float 5.000000e-01)
  %i.ok = fmul fast <4 x float> %i.nz, %i.oj
  %i.ol = fadd fast <4 x float> %i.ny, %i.ok
  %i.om = fadd fast <4 x float> %i.ol, splat (float 1.000000e+00)
  %i.on = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nw)
  %i.oo = shl <4 x i32> %i.on, splat (i32 23)
  %i.op = add <4 x i32> %i.oo, splat (i32 1065353216)
  %i.oq = bitcast <4 x i32> %i.op to <4 x float>
  %i.or = fmul fast <4 x float> %i.om, %i.oq
  %i.os = fadd fast <4 x float> %i.or, splat (float 1.000000e+00)
  %i.ot = fdiv fast <4 x float> splat (float 1.000000e+00), %i.os
  %i.ou = fneg fast <4 x float> %.0203
  %i.ov = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ou, <4 x float> splat (float f0x42B0C0A5))
  %i.ow = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ov, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ox = fmul fast <4 x float> %i.ow, splat (float f0x3FB8AA3B)
  %i.oy = fadd fast <4 x float> %i.ox, splat (float 5.000000e-01) ; 2 uses
  %i.oz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oy)
  %i.pa = sitofp fast <4 x i32> %i.oz to <4 x float> ; 2 uses
  %i.pb = fcmp fast olt <4 x float> %i.oy, %i.pa
  %i.pc = select <4 x i1> %i.pb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.pd = fsub fast <4 x float> %i.pa, %i.pc      ; 2 uses
  %i.pe = fmul fast <4 x float> %i.pd, splat (float f0x3F317218)
  %i.pf = fsub fast <4 x float> %i.ow, %i.pe      ; 8 uses
  %i.pg = fmul fast <4 x float> %i.pf, %i.pf
  %i.ph = fmul fast <4 x float> %i.pf, splat (float f0x39506967)
  %i.pi = fadd fast <4 x float> %i.ph, splat (float f0x3AB743CE)
  %i.pj = fmul fast <4 x float> %i.pi, %i.pf
  %i.pk = fadd fast <4 x float> %i.pj, splat (float f0x3C088908)
  %i.pl = fmul fast <4 x float> %i.pk, %i.pf
  %i.pm = fadd fast <4 x float> %i.pl, splat (float f0x3D2AA9C1)
  %i.pn = fmul fast <4 x float> %i.pm, %i.pf
  %i.po = fadd fast <4 x float> %i.pn, splat (float f0x3E2AAAAA)
  %i.pp = fmul fast <4 x float> %i.po, %i.pf
  %i.pq = fadd fast <4 x float> %i.pp, splat (float 5.000000e-01)
  %i.pr = fmul fast <4 x float> %i.pg, %i.pq
  %i.ps = fadd fast <4 x float> %i.pf, %i.pr
  %i.pt = fadd fast <4 x float> %i.ps, splat (float 1.000000e+00)
  %i.pu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pd)
  %i.pv = shl <4 x i32> %i.pu, splat (i32 23)
  %i.pw = add <4 x i32> %i.pv, splat (i32 1065353216)
  %i.px = bitcast <4 x i32> %i.pw to <4 x float>
  %i.py = fmul fast <4 x float> %i.pt, %i.px
  %i.pz = fadd fast <4 x float> %i.py, splat (float 1.000000e+00)
  %i.qa = fdiv fast <4 x float> splat (float 1.000000e+00), %i.pz
  %i.qb = fneg fast <4 x float> %.0202
  %i.qc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qb, <4 x float> splat (float f0x42B0C0A5))
  %i.qd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.qe = fmul fast <4 x float> %i.qd, splat (float f0x3FB8AA3B)
  %i.qf = fadd fast <4 x float> %i.qe, splat (float 5.000000e-01) ; 2 uses
  %i.qg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qf)
  %i.qh = sitofp fast <4 x i32> %i.qg to <4 x float> ; 2 uses
  %i.qi = fcmp fast olt <4 x float> %i.qf, %i.qh
  %i.qj = select <4 x i1> %i.qi, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qk = fsub fast <4 x float> %i.qh, %i.qj      ; 2 uses
  %i.ql = fmul fast <4 x float> %i.qk, splat (float f0x3F317218)
  %i.qm = fsub fast <4 x float> %i.qd, %i.ql      ; 8 uses
  %i.qn = fmul fast <4 x float> %i.qm, %i.qm
  %i.qo = fmul fast <4 x float> %i.qm, splat (float f0x39506967)
  %i.qp = fadd fast <4 x float> %i.qo, splat (float f0x3AB743CE)
  %i.qq = fmul fast <4 x float> %i.qp, %i.qm
  %i.qr = fadd fast <4 x float> %i.qq, splat (float f0x3C088908)
  %i.qs = fmul fast <4 x float> %i.qr, %i.qm
  %i.qt = fadd fast <4 x float> %i.qs, splat (float f0x3D2AA9C1)
  %i.qu = fmul fast <4 x float> %i.qt, %i.qm
  %i.qv = fadd fast <4 x float> %i.qu, splat (float f0x3E2AAAAA)
  %i.qw = fmul fast <4 x float> %i.qv, %i.qm
  %i.qx = fadd fast <4 x float> %i.qw, splat (float 5.000000e-01)
  %i.qy = fmul fast <4 x float> %i.qn, %i.qx
  %i.qz = fadd fast <4 x float> %i.qm, %i.qy
  %i.ra = fadd fast <4 x float> %i.qz, splat (float 1.000000e+00)
  %i.rb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qk)
  %i.rc = shl <4 x i32> %i.rb, splat (i32 23)
  %i.rd = add <4 x i32> %i.rc, splat (i32 1065353216)
  %i.re = bitcast <4 x i32> %i.rd to <4 x float>
  %i.rf = fmul fast <4 x float> %i.ra, %i.re
  %i.rg = fadd fast <4 x float> %i.rf, splat (float 1.000000e+00)
  %i.rh = fdiv fast <4 x float> splat (float 1.000000e+00), %i.rg
  %i.ri = fneg fast <4 x float> %.0201
  %i.rj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ri, <4 x float> splat (float f0x42B0C0A5))
  %i.rk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rl = fmul fast <4 x float> %i.rk, splat (float f0x3FB8AA3B)
  %i.rm = fadd fast <4 x float> %i.rl, splat (float 5.000000e-01) ; 2 uses
  %i.rn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rm)
  %i.ro = sitofp fast <4 x i32> %i.rn to <4 x float> ; 2 uses
  %i.rp = fcmp fast olt <4 x float> %i.rm, %i.ro
  %i.rq = select <4 x i1> %i.rp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.rr = fsub fast <4 x float> %i.ro, %i.rq      ; 2 uses
  %i.rs = fmul fast <4 x float> %i.rr, splat (float f0x3F317218)
  %i.rt = fsub fast <4 x float> %i.rk, %i.rs      ; 8 uses
  %i.ru = fmul fast <4 x float> %i.rt, %i.rt
  %i.rv = fmul fast <4 x float> %i.rt, splat (float f0x39506967)
  %i.rw = fadd fast <4 x float> %i.rv, splat (float f0x3AB743CE)
  %i.rx = fmul fast <4 x float> %i.rw, %i.rt
  %i.ry = fadd fast <4 x float> %i.rx, splat (float f0x3C088908)
  %i.rz = fmul fast <4 x float> %i.ry, %i.rt
  %i.sa = fadd fast <4 x float> %i.rz, splat (float f0x3D2AA9C1)
  %i.sb = fmul fast <4 x float> %i.sa, %i.rt
  %i.sc = fadd fast <4 x float> %i.sb, splat (float f0x3E2AAAAA)
  %i.sd = fmul fast <4 x float> %i.sc, %i.rt
  %i.se = fadd fast <4 x float> %i.sd, splat (float 5.000000e-01)
  %i.sf = fmul fast <4 x float> %i.ru, %i.se
  %i.sg = fadd fast <4 x float> %i.rt, %i.sf
  %i.sh = fadd fast <4 x float> %i.sg, splat (float 1.000000e+00)
  %i.si = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rr)
  %i.sj = shl <4 x i32> %i.si, splat (i32 23)
  %i.sk = add <4 x i32> %i.sj, splat (i32 1065353216)
  %i.sl = bitcast <4 x i32> %i.sk to <4 x float>
  %i.sm = fmul fast <4 x float> %i.sh, %i.sl
  %i.sn = fadd fast <4 x float> %i.sm, splat (float 1.000000e+00)
  %i.so = fdiv fast <4 x float> splat (float 1.000000e+00), %i.sn
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185: ; preds = %bb.g
  %i.sp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0208, <4 x float> splat (float f0x42B0C0A5))
  %i.sq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.sr = fmul fast <4 x float> %i.sq, splat (float f0x3FB8AA3B)
  %i.ss = fadd fast <4 x float> %i.sr, splat (float 5.000000e-01) ; 2 uses
  %i.st = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ss)
  %i.su = sitofp fast <4 x i32> %i.st to <4 x float> ; 2 uses
  %i.sv = fcmp fast olt <4 x float> %i.ss, %i.su
  %i.sw = select <4 x i1> %i.sv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.sx = fsub fast <4 x float> %i.su, %i.sw      ; 2 uses
  %i.sy = fmul fast <4 x float> %i.sx, splat (float f0x3F317218)
  %i.sz = fsub fast <4 x float> %i.sq, %i.sy      ; 8 uses
  %i.ta = fmul fast <4 x float> %i.sz, %i.sz
  %i.tb = fmul fast <4 x float> %i.sz, splat (float f0x39506967)
  %i.tc = fadd fast <4 x float> %i.tb, splat (float f0x3AB743CE)
  %i.td = fmul fast <4 x float> %i.tc, %i.sz
  %i.te = fadd fast <4 x float> %i.td, splat (float f0x3C088908)
  %i.tf = fmul fast <4 x float> %i.te, %i.sz
  %i.tg = fadd fast <4 x float> %i.tf, splat (float f0x3D2AA9C1)
  %i.th = fmul fast <4 x float> %i.tg, %i.sz
  %i.ti = fadd fast <4 x float> %i.th, splat (float f0x3E2AAAAA)
  %i.tj = fmul fast <4 x float> %i.ti, %i.sz
  %i.tk = fadd fast <4 x float> %i.tj, splat (float 5.000000e-01)
  %i.tl = fmul fast <4 x float> %i.ta, %i.tk
  %i.tm = fadd fast <4 x float> %i.sz, %i.tl
  %i.tn = fadd fast <4 x float> %i.tm, splat (float 1.000000e+00)
  %i.to = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sx)
  %i.tp = shl <4 x i32> %i.to, splat (i32 23)
  %i.tq = add <4 x i32> %i.tp, splat (i32 1065353216)
  %i.tr = bitcast <4 x i32> %i.tq to <4 x float>
  %i.ts = fmul fast <4 x float> %i.tn, %i.tr
  %i.tt = fadd fast <4 x float> %i.ts, splat (float 1.000000e+00) ; 2 uses
  %i.tu = fcmp fast ole <4 x float> %i.tt, zeroinitializer
  %i.tv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.tt, <4 x float> splat (float f0x00800000))
  %i.tw = bitcast <4 x float> %i.tv to <4 x i32>  ; 2 uses
  %i.tx = lshr <4 x i32> %i.tw, splat (i32 23)
  %i.ty = and <4 x i32> %i.tw, splat (i32 -2139095041)
  %i.tz = or disjoint <4 x i32> %i.ty, splat (i32 1056964608)
  %i.ua = bitcast <4 x i32> %i.tz to <4 x float>  ; 3 uses
  %i.ub = add nsw <4 x i32> %i.tx, splat (i32 -127)
  %i.uc = sitofp fast <4 x i32> %i.ub to <4 x float> ; 2 uses
  %i.ud = fadd fast <4 x float> %i.uc, splat (float 1.000000e+00)
  %i.ue = fcmp fast olt <4 x float> %i.ua, splat (float f0x3F3504F3) ; 2 uses
  %i.uf = select <4 x i1> %i.ue, <4 x float> %i.ua, <4 x float> zeroinitializer
  %i.ug = fadd fast <4 x float> %i.ua, splat (float -1.000000e+00)
  %i.uh = select fast <4 x i1> %i.ue, <4 x float> %i.uc, <4 x float> %i.ud
  %i.ui = fadd fast <4 x float> %i.ug, %i.uf      ; 12 uses
  %i.uj = fmul fast <4 x float> %i.ui, %i.ui
  %i.uk = fmul fast <4 x float> %i.ui, splat (float f0x3D9021BB)
  %i.ul = fadd fast <4 x float> %i.uk, splat (float f0xBDEBD1B8)
  %i.um = fmul fast <4 x float> %i.ul, %i.ui
  %i.un = fadd fast <4 x float> %i.um, splat (float f0x3DEF251A)
  %i.uo = fmul fast <4 x float> %i.un, %i.ui
  %i.up = fadd fast <4 x float> %i.uo, splat (float f0xBDFE5D4F)
  %i.uq = fmul fast <4 x float> %i.up, %i.ui
  %i.ur = fadd fast <4 x float> %i.uq, splat (float f0x3E11E9BF)
  %i.us = fmul fast <4 x float> %i.ur, %i.ui
  %i.ut = fadd fast <4 x float> %i.us, splat (float f0xBE2AAE50)
  %i.uu = fmul fast <4 x float> %i.ut, %i.ui
  %i.uv = fadd fast <4 x float> %i.uu, splat (float f0x3E4CCEAC)
  %i.uw = fmul fast <4 x float> %i.uv, %i.ui
  %i.ux = fadd fast <4 x float> %i.uw, splat (float f0xBE7FFFFC)
  %i.uy = fmul fast <4 x float> %i.ux, %i.ui
  %i.uz = fadd fast <4 x float> %i.uy, splat (float f0x3EAAAAAA)
  %i.va = fmul fast <4 x float> %i.uz, %i.ui
  %reass.mul = fmul fast <4 x float> %i.uh, splat (float f0x3F317218)
  %reass.add1601 = fadd fast <4 x float> %i.va, splat (float -5.000000e-01)
  %reass.mul1602 = fmul fast <4 x float> %i.uj, %reass.add1601
  %i.vb = fadd fast <4 x float> %reass.mul, %i.ui
  %i.vc = fadd fast <4 x float> %i.vb, %reass.mul1602
  %.neg = fmul fast <4 x float> %i.vc, splat (float -2.000000e+00)
  %i.vd = select fast <4 x i1> %i.tu, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ve = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.vd, <4 x float> splat (float f0x42B0C0A5))
  %i.vf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ve, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.vg = fmul fast <4 x float> %i.vf, splat (float f0x3FB8AA3B)
  %i.vh = fadd fast <4 x float> %i.vg, splat (float 5.000000e-01) ; 2 uses
  %i.vi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vh)
  %i.vj = sitofp fast <4 x i32> %i.vi to <4 x float> ; 2 uses
  %i.vk = fcmp fast olt <4 x float> %i.vh, %i.vj
  %i.vl = select <4 x i1> %i.vk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.vm = fsub fast <4 x float> %i.vj, %i.vl      ; 2 uses
  %i.vn = fmul fast <4 x float> %i.vm, splat (float f0x3F317218)
  %i.vo = fsub fast <4 x float> %i.vf, %i.vn      ; 8 uses
  %i.vp = fmul fast <4 x float> %i.vo, %i.vo
  %i.vq = fmul fast <4 x float> %i.vo, splat (float f0x39506967)
  %i.vr = fadd fast <4 x float> %i.vq, splat (float f0x3AB743CE)
  %i.vs = fmul fast <4 x float> %i.vr, %i.vo
  %i.vt = fadd fast <4 x float> %i.vs, splat (float f0x3C088908)
  %i.vu = fmul fast <4 x float> %i.vt, %i.vo
  %i.vv = fadd fast <4 x float> %i.vu, splat (float f0x3D2AA9C1)
  %i.vw = fmul fast <4 x float> %i.vv, %i.vo
  %i.vx = fadd fast <4 x float> %i.vw, splat (float f0x3E2AAAAA)
  %i.vy = fmul fast <4 x float> %i.vx, %i.vo
  %i.vz = fadd fast <4 x float> %i.vy, splat (float 5.000000e-01)
  %i.wa = fmul fast <4 x float> %i.vp, %i.vz
  %i.wb = fadd fast <4 x float> %i.vo, %i.wa
  %i.wc = fadd fast <4 x float> %i.wb, splat (float 1.000000e+00)
  %i.wd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vm)
  %i.we = shl <4 x i32> %i.wd, splat (i32 23)
  %i.wf = add <4 x i32> %i.we, splat (i32 1065353216)
  %i.wg = bitcast <4 x i32> %i.wf to <4 x float>
  %i.wh = fmul fast <4 x float> %i.wc, %i.wg
  %i.wi = fadd fast <4 x float> %i.wh, splat (float 1.000000e+00)
  %i.wj = fdiv fast <4 x float> splat (float 2.000000e+00), %i.wi
  %i.wk = fadd fast <4 x float> %i.wj, splat (float -1.000000e+00)
  %i.wl = fmul fast <4 x float> %i.wk, %.0208
  %i.wm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0207, <4 x float> splat (float f0x42B0C0A5))
  %i.wn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.wo = fmul fast <4 x float> %i.wn, splat (float f0x3FB8AA3B)
  %i.wp = fadd fast <4 x float> %i.wo, splat (float 5.000000e-01) ; 2 uses
  %i.wq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wp)
  %i.wr = sitofp fast <4 x i32> %i.wq to <4 x float> ; 2 uses
  %i.ws = fcmp fast olt <4 x float> %i.wp, %i.wr
  %i.wt = select <4 x i1> %i.ws, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.wu = fsub fast <4 x float> %i.wr, %i.wt      ; 2 uses
  %i.wv = fmul fast <4 x float> %i.wu, splat (float f0x3F317218)
  %i.ww = fsub fast <4 x float> %i.wn, %i.wv      ; 8 uses
  %i.wx = fmul fast <4 x float> %i.ww, %i.ww
  %i.wy = fmul fast <4 x float> %i.ww, splat (float f0x39506967)
  %i.wz = fadd fast <4 x float> %i.wy, splat (float f0x3AB743CE)
  %i.xa = fmul fast <4 x float> %i.wz, %i.ww
  %i.xb = fadd fast <4 x float> %i.xa, splat (float f0x3C088908)
  %i.xc = fmul fast <4 x float> %i.xb, %i.ww
  %i.xd = fadd fast <4 x float> %i.xc, splat (float f0x3D2AA9C1)
  %i.xe = fmul fast <4 x float> %i.xd, %i.ww
  %i.xf = fadd fast <4 x float> %i.xe, splat (float f0x3E2AAAAA)
  %i.xg = fmul fast <4 x float> %i.xf, %i.ww
  %i.xh = fadd fast <4 x float> %i.xg, splat (float 5.000000e-01)
  %i.xi = fmul fast <4 x float> %i.wx, %i.xh
  %i.xj = fadd fast <4 x float> %i.ww, %i.xi
  %i.xk = fadd fast <4 x float> %i.xj, splat (float 1.000000e+00)
  %i.xl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wu)
  %i.xm = shl <4 x i32> %i.xl, splat (i32 23)
  %i.xn = add <4 x i32> %i.xm, splat (i32 1065353216)
  %i.xo = bitcast <4 x i32> %i.xn to <4 x float>
  %i.xp = fmul fast <4 x float> %i.xk, %i.xo
  %i.xq = fadd fast <4 x float> %i.xp, splat (float 1.000000e+00) ; 2 uses
  %i.xr = fcmp fast ole <4 x float> %i.xq, zeroinitializer
  %i.xs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xq, <4 x float> splat (float f0x00800000))
  %i.xt = bitcast <4 x float> %i.xs to <4 x i32>  ; 2 uses
  %i.xu = lshr <4 x i32> %i.xt, splat (i32 23)
  %i.xv = and <4 x i32> %i.xt, splat (i32 -2139095041)
  %i.xw = or disjoint <4 x i32> %i.xv, splat (i32 1056964608)
  %i.xx = bitcast <4 x i32> %i.xw to <4 x float>  ; 3 uses
  %i.xy = add nsw <4 x i32> %i.xu, splat (i32 -127)
  %i.xz = sitofp fast <4 x i32> %i.xy to <4 x float> ; 2 uses
  %i.ya = fadd fast <4 x float> %i.xz, splat (float 1.000000e+00)
  %i.yb = fcmp fast olt <4 x float> %i.xx, splat (float f0x3F3504F3) ; 2 uses
  %i.yc = select <4 x i1> %i.yb, <4 x float> %i.xx, <4 x float> zeroinitializer
  %i.yd = fadd fast <4 x float> %i.xx, splat (float -1.000000e+00)
  %i.ye = select fast <4 x i1> %i.yb, <4 x float> %i.xz, <4 x float> %i.ya
  %i.yf = fadd fast <4 x float> %i.yd, %i.yc      ; 12 uses
  %i.yg = fmul fast <4 x float> %i.yf, %i.yf
  %i.yh = fmul fast <4 x float> %i.yf, splat (float f0x3D9021BB)
  %i.yi = fadd fast <4 x float> %i.yh, splat (float f0xBDEBD1B8)
  %i.yj = fmul fast <4 x float> %i.yi, %i.yf
  %i.yk = fadd fast <4 x float> %i.yj, splat (float f0x3DEF251A)
  %i.yl = fmul fast <4 x float> %i.yk, %i.yf
  %i.ym = fadd fast <4 x float> %i.yl, splat (float f0xBDFE5D4F)
  %i.yn = fmul fast <4 x float> %i.ym, %i.yf
  %i.yo = fadd fast <4 x float> %i.yn, splat (float f0x3E11E9BF)
  %i.yp = fmul fast <4 x float> %i.yo, %i.yf
  %i.yq = fadd fast <4 x float> %i.yp, splat (float f0xBE2AAE50)
  %i.yr = fmul fast <4 x float> %i.yq, %i.yf
  %i.ys = fadd fast <4 x float> %i.yr, splat (float f0x3E4CCEAC)
  %i.yt = fmul fast <4 x float> %i.ys, %i.yf
  %i.yu = fadd fast <4 x float> %i.yt, splat (float f0xBE7FFFFC)
  %i.yv = fmul fast <4 x float> %i.yu, %i.yf
  %i.yw = fadd fast <4 x float> %i.yv, splat (float f0x3EAAAAAA)
  %i.yx = fmul fast <4 x float> %i.yw, %i.yf
  %reass.mul1582 = fmul fast <4 x float> %i.ye, splat (float f0x3F317218)
  %reass.add1603 = fadd fast <4 x float> %i.yx, splat (float -5.000000e-01)
  %reass.mul1604 = fmul fast <4 x float> %i.yg, %reass.add1603
  %i.yy = fadd fast <4 x float> %reass.mul1582, %i.yf
  %i.yz = fadd fast <4 x float> %i.yy, %reass.mul1604
  %.neg1572 = fmul fast <4 x float> %i.yz, splat (float -2.000000e+00)
  %i.za = select fast <4 x i1> %i.xr, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1572
  %i.zb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.za, <4 x float> splat (float f0x42B0C0A5))
  %i.zc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.zd = fmul fast <4 x float> %i.zc, splat (float f0x3FB8AA3B)
  %i.ze = fadd fast <4 x float> %i.zd, splat (float 5.000000e-01) ; 2 uses
  %i.zf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ze)
  %i.zg = sitofp fast <4 x i32> %i.zf to <4 x float> ; 2 uses
  %i.zh = fcmp fast olt <4 x float> %i.ze, %i.zg
  %i.zi = select <4 x i1> %i.zh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.zj = fsub fast <4 x float> %i.zg, %i.zi      ; 2 uses
  %i.zk = fmul fast <4 x float> %i.zj, splat (float f0x3F317218)
  %i.zl = fsub fast <4 x float> %i.zc, %i.zk      ; 8 uses
  %i.zm = fmul fast <4 x float> %i.zl, %i.zl
  %i.zn = fmul fast <4 x float> %i.zl, splat (float f0x39506967)
  %i.zo = fadd fast <4 x float> %i.zn, splat (float f0x3AB743CE)
  %i.zp = fmul fast <4 x float> %i.zo, %i.zl
  %i.zq = fadd fast <4 x float> %i.zp, splat (float f0x3C088908)
  %i.zr = fmul fast <4 x float> %i.zq, %i.zl
  %i.zs = fadd fast <4 x float> %i.zr, splat (float f0x3D2AA9C1)
  %i.zt = fmul fast <4 x float> %i.zs, %i.zl
  %i.zu = fadd fast <4 x float> %i.zt, splat (float f0x3E2AAAAA)
  %i.zv = fmul fast <4 x float> %i.zu, %i.zl
  %i.zw = fadd fast <4 x float> %i.zv, splat (float 5.000000e-01)
  %i.zx = fmul fast <4 x float> %i.zm, %i.zw
  %i.zy = fadd fast <4 x float> %i.zl, %i.zx
  %i.zz = fadd fast <4 x float> %i.zy, splat (float 1.000000e+00)
  %i.aaa = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zj)
  %i.aab = shl <4 x i32> %i.aaa, splat (i32 23)
  %i.aac = add <4 x i32> %i.aab, splat (i32 1065353216)
  %i.aad = bitcast <4 x i32> %i.aac to <4 x float>
  %i.aae = fmul fast <4 x float> %i.zz, %i.aad
  %i.aaf = fadd fast <4 x float> %i.aae, splat (float 1.000000e+00)
  %i.aag = fdiv fast <4 x float> splat (float 2.000000e+00), %i.aaf
  %i.aah = fadd fast <4 x float> %i.aag, splat (float -1.000000e+00)
  %i.aai = fmul fast <4 x float> %i.aah, %.0207
  %i.aaj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0206, <4 x float> splat (float f0x42B0C0A5))
  %i.aak = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aaj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aal = fmul fast <4 x float> %i.aak, splat (float f0x3FB8AA3B)
  %i.aam = fadd fast <4 x float> %i.aal, splat (float 5.000000e-01) ; 2 uses
  %i.aan = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aam)
  %i.aao = sitofp fast <4 x i32> %i.aan to <4 x float> ; 2 uses
  %i.aap = fcmp fast olt <4 x float> %i.aam, %i.aao
  %i.aaq = select <4 x i1> %i.aap, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aar = fsub fast <4 x float> %i.aao, %i.aaq   ; 2 uses
  %i.aas = fmul fast <4 x float> %i.aar, splat (float f0x3F317218)
  %i.aat = fsub fast <4 x float> %i.aak, %i.aas   ; 8 uses
  %i.aau = fmul fast <4 x float> %i.aat, %i.aat
  %i.aav = fmul fast <4 x float> %i.aat, splat (float f0x39506967)
  %i.aaw = fadd fast <4 x float> %i.aav, splat (float f0x3AB743CE)
  %i.aax = fmul fast <4 x float> %i.aaw, %i.aat
  %i.aay = fadd fast <4 x float> %i.aax, splat (float f0x3C088908)
  %i.aaz = fmul fast <4 x float> %i.aay, %i.aat
  %i.aba = fadd fast <4 x float> %i.aaz, splat (float f0x3D2AA9C1)
  %i.abb = fmul fast <4 x float> %i.aba, %i.aat
  %i.abc = fadd fast <4 x float> %i.abb, splat (float f0x3E2AAAAA)
  %i.abd = fmul fast <4 x float> %i.abc, %i.aat
  %i.abe = fadd fast <4 x float> %i.abd, splat (float 5.000000e-01)
  %i.abf = fmul fast <4 x float> %i.aau, %i.abe
  %i.abg = fadd fast <4 x float> %i.aat, %i.abf
  %i.abh = fadd fast <4 x float> %i.abg, splat (float 1.000000e+00)
  %i.abi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aar)
  %i.abj = shl <4 x i32> %i.abi, splat (i32 23)
  %i.abk = add <4 x i32> %i.abj, splat (i32 1065353216)
  %i.abl = bitcast <4 x i32> %i.abk to <4 x float>
  %i.abm = fmul fast <4 x float> %i.abh, %i.abl
  %i.abn = fadd fast <4 x float> %i.abm, splat (float 1.000000e+00) ; 2 uses
  %i.abo = fcmp fast ole <4 x float> %i.abn, zeroinitializer
  %i.abp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.abn, <4 x float> splat (float f0x00800000))
  %i.abq = bitcast <4 x float> %i.abp to <4 x i32> ; 2 uses
  %i.abr = lshr <4 x i32> %i.abq, splat (i32 23)
  %i.abs = and <4 x i32> %i.abq, splat (i32 -2139095041)
  %i.abt = or disjoint <4 x i32> %i.abs, splat (i32 1056964608)
  %i.abu = bitcast <4 x i32> %i.abt to <4 x float> ; 3 uses
  %i.abv = add nsw <4 x i32> %i.abr, splat (i32 -127)
  %i.abw = sitofp fast <4 x i32> %i.abv to <4 x float> ; 2 uses
  %i.abx = fadd fast <4 x float> %i.abw, splat (float 1.000000e+00)
  %i.aby = fcmp fast olt <4 x float> %i.abu, splat (float f0x3F3504F3) ; 2 uses
  %i.abz = select <4 x i1> %i.aby, <4 x float> %i.abu, <4 x float> zeroinitializer
  %i.aca = fadd fast <4 x float> %i.abu, splat (float -1.000000e+00)
  %i.acb = select fast <4 x i1> %i.aby, <4 x float> %i.abw, <4 x float> %i.abx
  %i.acc = fadd fast <4 x float> %i.aca, %i.abz   ; 12 uses
  %i.acd = fmul fast <4 x float> %i.acc, %i.acc
  %i.ace = fmul fast <4 x float> %i.acc, splat (float f0x3D9021BB)
  %i.acf = fadd fast <4 x float> %i.ace, splat (float f0xBDEBD1B8)
  %i.acg = fmul fast <4 x float> %i.acf, %i.acc
  %i.ach = fadd fast <4 x float> %i.acg, splat (float f0x3DEF251A)
  %i.aci = fmul fast <4 x float> %i.ach, %i.acc
  %i.acj = fadd fast <4 x float> %i.aci, splat (float f0xBDFE5D4F)
  %i.ack = fmul fast <4 x float> %i.acj, %i.acc
  %i.acl = fadd fast <4 x float> %i.ack, splat (float f0x3E11E9BF)
  %i.acm = fmul fast <4 x float> %i.acl, %i.acc
  %i.acn = fadd fast <4 x float> %i.acm, splat (float f0xBE2AAE50)
  %i.aco = fmul fast <4 x float> %i.acn, %i.acc
  %i.acp = fadd fast <4 x float> %i.aco, splat (float f0x3E4CCEAC)
  %i.acq = fmul fast <4 x float> %i.acp, %i.acc
  %i.acr = fadd fast <4 x float> %i.acq, splat (float f0xBE7FFFFC)
  %i.acs = fmul fast <4 x float> %i.acr, %i.acc
  %i.act = fadd fast <4 x float> %i.acs, splat (float f0x3EAAAAAA)
  %i.acu = fmul fast <4 x float> %i.act, %i.acc
  %reass.mul1585 = fmul fast <4 x float> %i.acb, splat (float f0x3F317218)
  %reass.add1605 = fadd fast <4 x float> %i.acu, splat (float -5.000000e-01)
  %reass.mul1606 = fmul fast <4 x float> %i.acd, %reass.add1605
  %i.acv = fadd fast <4 x float> %reass.mul1585, %i.acc
  %i.acw = fadd fast <4 x float> %i.acv, %reass.mul1606
  %.neg1573 = fmul fast <4 x float> %i.acw, splat (float -2.000000e+00)
  %i.acx = select fast <4 x i1> %i.abo, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1573
  %i.acy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.acx, <4 x float> splat (float f0x42B0C0A5))
  %i.acz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.acy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ada = fmul fast <4 x float> %i.acz, splat (float f0x3FB8AA3B)
  %i.adb = fadd fast <4 x float> %i.ada, splat (float 5.000000e-01) ; 2 uses
  %i.adc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.adb)
  %i.add = sitofp fast <4 x i32> %i.adc to <4 x float> ; 2 uses
  %i.ade = fcmp fast olt <4 x float> %i.adb, %i.add
  %i.adf = select <4 x i1> %i.ade, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.adg = fsub fast <4 x float> %i.add, %i.adf   ; 2 uses
  %i.adh = fmul fast <4 x float> %i.adg, splat (float f0x3F317218)
  %i.adi = fsub fast <4 x float> %i.acz, %i.adh   ; 8 uses
  %i.adj = fmul fast <4 x float> %i.adi, %i.adi
  %i.adk = fmul fast <4 x float> %i.adi, splat (float f0x39506967)
  %i.adl = fadd fast <4 x float> %i.adk, splat (float f0x3AB743CE)
  %i.adm = fmul fast <4 x float> %i.adl, %i.adi
  %i.adn = fadd fast <4 x float> %i.adm, splat (float f0x3C088908)
  %i.ado = fmul fast <4 x float> %i.adn, %i.adi
  %i.adp = fadd fast <4 x float> %i.ado, splat (float f0x3D2AA9C1)
  %i.adq = fmul fast <4 x float> %i.adp, %i.adi
  %i.adr = fadd fast <4 x float> %i.adq, splat (float f0x3E2AAAAA)
  %i.ads = fmul fast <4 x float> %i.adr, %i.adi
  %i.adt = fadd fast <4 x float> %i.ads, splat (float 5.000000e-01)
  %i.adu = fmul fast <4 x float> %i.adj, %i.adt
  %i.adv = fadd fast <4 x float> %i.adi, %i.adu
  %i.adw = fadd fast <4 x float> %i.adv, splat (float 1.000000e+00)
  %i.adx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.adg)
  %i.ady = shl <4 x i32> %i.adx, splat (i32 23)
  %i.adz = add <4 x i32> %i.ady, splat (i32 1065353216)
  %i.aea = bitcast <4 x i32> %i.adz to <4 x float>
  %i.aeb = fmul fast <4 x float> %i.adw, %i.aea
  %i.aec = fadd fast <4 x float> %i.aeb, splat (float 1.000000e+00)
  %i.aed = fdiv fast <4 x float> splat (float 2.000000e+00), %i.aec
  %i.aee = fadd fast <4 x float> %i.aed, splat (float -1.000000e+00)
  %i.aef = fmul fast <4 x float> %i.aee, %.0206
  %i.aeg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0205, <4 x float> splat (float f0x42B0C0A5))
  %i.aeh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aeg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aei = fmul fast <4 x float> %i.aeh, splat (float f0x3FB8AA3B)
  %i.aej = fadd fast <4 x float> %i.aei, splat (float 5.000000e-01) ; 2 uses
  %i.aek = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aej)
  %i.ael = sitofp fast <4 x i32> %i.aek to <4 x float> ; 2 uses
  %i.aem = fcmp fast olt <4 x float> %i.aej, %i.ael
  %i.aen = select <4 x i1> %i.aem, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aeo = fsub fast <4 x float> %i.ael, %i.aen   ; 2 uses
  %i.aep = fmul fast <4 x float> %i.aeo, splat (float f0x3F317218)
  %i.aeq = fsub fast <4 x float> %i.aeh, %i.aep   ; 8 uses
  %i.aer = fmul fast <4 x float> %i.aeq, %i.aeq
  %i.aes = fmul fast <4 x float> %i.aeq, splat (float f0x39506967)
  %i.aet = fadd fast <4 x float> %i.aes, splat (float f0x3AB743CE)
  %i.aeu = fmul fast <4 x float> %i.aet, %i.aeq
  %i.aev = fadd fast <4 x float> %i.aeu, splat (float f0x3C088908)
  %i.aew = fmul fast <4 x float> %i.aev, %i.aeq
  %i.aex = fadd fast <4 x float> %i.aew, splat (float f0x3D2AA9C1)
  %i.aey = fmul fast <4 x float> %i.aex, %i.aeq
  %i.aez = fadd fast <4 x float> %i.aey, splat (float f0x3E2AAAAA)
  %i.afa = fmul fast <4 x float> %i.aez, %i.aeq
  %i.afb = fadd fast <4 x float> %i.afa, splat (float 5.000000e-01)
  %i.afc = fmul fast <4 x float> %i.aer, %i.afb
  %i.afd = fadd fast <4 x float> %i.aeq, %i.afc
  %i.afe = fadd fast <4 x float> %i.afd, splat (float 1.000000e+00)
  %i.aff = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aeo)
  %i.afg = shl <4 x i32> %i.aff, splat (i32 23)
  %i.afh = add <4 x i32> %i.afg, splat (i32 1065353216)
  %i.afi = bitcast <4 x i32> %i.afh to <4 x float>
  %i.afj = fmul fast <4 x float> %i.afe, %i.afi
  %i.afk = fadd fast <4 x float> %i.afj, splat (float 1.000000e+00) ; 2 uses
  %i.afl = fcmp fast ole <4 x float> %i.afk, zeroinitializer
  %i.afm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.afk, <4 x float> splat (float f0x00800000))
  %i.afn = bitcast <4 x float> %i.afm to <4 x i32> ; 2 uses
  %i.afo = lshr <4 x i32> %i.afn, splat (i32 23)
  %i.afp = and <4 x i32> %i.afn, splat (i32 -2139095041)
  %i.afq = or disjoint <4 x i32> %i.afp, splat (i32 1056964608)
  %i.afr = bitcast <4 x i32> %i.afq to <4 x float> ; 3 uses
  %i.afs = add nsw <4 x i32> %i.afo, splat (i32 -127)
  %i.aft = sitofp fast <4 x i32> %i.afs to <4 x float> ; 2 uses
  %i.afu = fadd fast <4 x float> %i.aft, splat (float 1.000000e+00)
  %i.afv = fcmp fast olt <4 x float> %i.afr, splat (float f0x3F3504F3) ; 2 uses
  %i.afw = select <4 x i1> %i.afv, <4 x float> %i.afr, <4 x float> zeroinitializer
  %i.afx = fadd fast <4 x float> %i.afr, splat (float -1.000000e+00)
  %i.afy = select fast <4 x i1> %i.afv, <4 x float> %i.aft, <4 x float> %i.afu
  %i.afz = fadd fast <4 x float> %i.afx, %i.afw   ; 12 uses
  %i.aga = fmul fast <4 x float> %i.afz, %i.afz
  %i.agb = fmul fast <4 x float> %i.afz, splat (float f0x3D9021BB)
  %i.agc = fadd fast <4 x float> %i.agb, splat (float f0xBDEBD1B8)
  %i.agd = fmul fast <4 x float> %i.agc, %i.afz
  %i.age = fadd fast <4 x float> %i.agd, splat (float f0x3DEF251A)
  %i.agf = fmul fast <4 x float> %i.age, %i.afz
  %i.agg = fadd fast <4 x float> %i.agf, splat (float f0xBDFE5D4F)
  %i.agh = fmul fast <4 x float> %i.agg, %i.afz
  %i.agi = fadd fast <4 x float> %i.agh, splat (float f0x3E11E9BF)
  %i.agj = fmul fast <4 x float> %i.agi, %i.afz
  %i.agk = fadd fast <4 x float> %i.agj, splat (float f0xBE2AAE50)
  %i.agl = fmul fast <4 x float> %i.agk, %i.afz
  %i.agm = fadd fast <4 x float> %i.agl, splat (float f0x3E4CCEAC)
  %i.agn = fmul fast <4 x float> %i.agm, %i.afz
  %i.ago = fadd fast <4 x float> %i.agn, splat (float f0xBE7FFFFC)
  %i.agp = fmul fast <4 x float> %i.ago, %i.afz
  %i.agq = fadd fast <4 x float> %i.agp, splat (float f0x3EAAAAAA)
  %i.agr = fmul fast <4 x float> %i.agq, %i.afz
  %reass.mul1588 = fmul fast <4 x float> %i.afy, splat (float f0x3F317218)
  %reass.add1607 = fadd fast <4 x float> %i.agr, splat (float -5.000000e-01)
  %reass.mul1608 = fmul fast <4 x float> %i.aga, %reass.add1607
  %i.ags = fadd fast <4 x float> %reass.mul1588, %i.afz
  %i.agt = fadd fast <4 x float> %i.ags, %reass.mul1608
  %.neg1574 = fmul fast <4 x float> %i.agt, splat (float -2.000000e+00)
  %i.agu = select fast <4 x i1> %i.afl, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1574
  %i.agv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.agu, <4 x float> splat (float f0x42B0C0A5))
  %i.agw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.agv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agx = fmul fast <4 x float> %i.agw, splat (float f0x3FB8AA3B)
  %i.agy = fadd fast <4 x float> %i.agx, splat (float 5.000000e-01) ; 2 uses
  %i.agz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agy)
  %i.aha = sitofp fast <4 x i32> %i.agz to <4 x float> ; 2 uses
  %i.ahb = fcmp fast olt <4 x float> %i.agy, %i.aha
  %i.ahc = select <4 x i1> %i.ahb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ahd = fsub fast <4 x float> %i.aha, %i.ahc   ; 2 uses
  %i.ahe = fmul fast <4 x float> %i.ahd, splat (float f0x3F317218)
  %i.ahf = fsub fast <4 x float> %i.agw, %i.ahe   ; 8 uses
  %i.ahg = fmul fast <4 x float> %i.ahf, %i.ahf
  %i.ahh = fmul fast <4 x float> %i.ahf, splat (float f0x39506967)
  %i.ahi = fadd fast <4 x float> %i.ahh, splat (float f0x3AB743CE)
  %i.ahj = fmul fast <4 x float> %i.ahi, %i.ahf
  %i.ahk = fadd fast <4 x float> %i.ahj, splat (float f0x3C088908)
  %i.ahl = fmul fast <4 x float> %i.ahk, %i.ahf
  %i.ahm = fadd fast <4 x float> %i.ahl, splat (float f0x3D2AA9C1)
  %i.ahn = fmul fast <4 x float> %i.ahm, %i.ahf
  %i.aho = fadd fast <4 x float> %i.ahn, splat (float f0x3E2AAAAA)
  %i.ahp = fmul fast <4 x float> %i.aho, %i.ahf
  %i.ahq = fadd fast <4 x float> %i.ahp, splat (float 5.000000e-01)
  %i.ahr = fmul fast <4 x float> %i.ahg, %i.ahq
  %i.ahs = fadd fast <4 x float> %i.ahf, %i.ahr
  %i.aht = fadd fast <4 x float> %i.ahs, splat (float 1.000000e+00)
  %i.ahu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahd)
  %i.ahv = shl <4 x i32> %i.ahu, splat (i32 23)
  %i.ahw = add <4 x i32> %i.ahv, splat (i32 1065353216)
  %i.ahx = bitcast <4 x i32> %i.ahw to <4 x float>
  %i.ahy = fmul fast <4 x float> %i.aht, %i.ahx
  %i.ahz = fadd fast <4 x float> %i.ahy, splat (float 1.000000e+00)
  %i.aia = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ahz
  %i.aib = fadd fast <4 x float> %i.aia, splat (float -1.000000e+00)
  %i.aic = fmul fast <4 x float> %i.aib, %.0205
  %i.aid = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0204, <4 x float> splat (float f0x42B0C0A5))
  %i.aie = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aid, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aif = fmul fast <4 x float> %i.aie, splat (float f0x3FB8AA3B)
  %i.aig = fadd fast <4 x float> %i.aif, splat (float 5.000000e-01) ; 2 uses
  %i.aih = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aig)
  %i.aii = sitofp fast <4 x i32> %i.aih to <4 x float> ; 2 uses
  %i.aij = fcmp fast olt <4 x float> %i.aig, %i.aii
  %i.aik = select <4 x i1> %i.aij, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ail = fsub fast <4 x float> %i.aii, %i.aik   ; 2 uses
  %i.aim = fmul fast <4 x float> %i.ail, splat (float f0x3F317218)
  %i.ain = fsub fast <4 x float> %i.aie, %i.aim   ; 8 uses
  %i.aio = fmul fast <4 x float> %i.ain, %i.ain
  %i.aip = fmul fast <4 x float> %i.ain, splat (float f0x39506967)
  %i.aiq = fadd fast <4 x float> %i.aip, splat (float f0x3AB743CE)
  %i.air = fmul fast <4 x float> %i.aiq, %i.ain
  %i.ais = fadd fast <4 x float> %i.air, splat (float f0x3C088908)
  %i.ait = fmul fast <4 x float> %i.ais, %i.ain
  %i.aiu = fadd fast <4 x float> %i.ait, splat (float f0x3D2AA9C1)
  %i.aiv = fmul fast <4 x float> %i.aiu, %i.ain
  %i.aiw = fadd fast <4 x float> %i.aiv, splat (float f0x3E2AAAAA)
  %i.aix = fmul fast <4 x float> %i.aiw, %i.ain
  %i.aiy = fadd fast <4 x float> %i.aix, splat (float 5.000000e-01)
  %i.aiz = fmul fast <4 x float> %i.aio, %i.aiy
  %i.aja = fadd fast <4 x float> %i.ain, %i.aiz
  %i.ajb = fadd fast <4 x float> %i.aja, splat (float 1.000000e+00)
  %i.ajc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ail)
  %i.ajd = shl <4 x i32> %i.ajc, splat (i32 23)
  %i.aje = add <4 x i32> %i.ajd, splat (i32 1065353216)
  %i.ajf = bitcast <4 x i32> %i.aje to <4 x float>
  %i.ajg = fmul fast <4 x float> %i.ajb, %i.ajf
  %i.ajh = fadd fast <4 x float> %i.ajg, splat (float 1.000000e+00) ; 2 uses
  %i.aji = fcmp fast ole <4 x float> %i.ajh, zeroinitializer
  %i.ajj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajh, <4 x float> splat (float f0x00800000))
  %i.ajk = bitcast <4 x float> %i.ajj to <4 x i32> ; 2 uses
  %i.ajl = lshr <4 x i32> %i.ajk, splat (i32 23)
  %i.ajm = and <4 x i32> %i.ajk, splat (i32 -2139095041)
  %i.ajn = or disjoint <4 x i32> %i.ajm, splat (i32 1056964608)
  %i.ajo = bitcast <4 x i32> %i.ajn to <4 x float> ; 3 uses
  %i.ajp = add nsw <4 x i32> %i.ajl, splat (i32 -127)
  %i.ajq = sitofp fast <4 x i32> %i.ajp to <4 x float> ; 2 uses
  %i.ajr = fadd fast <4 x float> %i.ajq, splat (float 1.000000e+00)
  %i.ajs = fcmp fast olt <4 x float> %i.ajo, splat (float f0x3F3504F3) ; 2 uses
  %i.ajt = select <4 x i1> %i.ajs, <4 x float> %i.ajo, <4 x float> zeroinitializer
  %i.aju = fadd fast <4 x float> %i.ajo, splat (float -1.000000e+00)
  %i.ajv = select fast <4 x i1> %i.ajs, <4 x float> %i.ajq, <4 x float> %i.ajr
  %i.ajw = fadd fast <4 x float> %i.aju, %i.ajt   ; 12 uses
  %i.ajx = fmul fast <4 x float> %i.ajw, %i.ajw
  %i.ajy = fmul fast <4 x float> %i.ajw, splat (float f0x3D9021BB)
  %i.ajz = fadd fast <4 x float> %i.ajy, splat (float f0xBDEBD1B8)
  %i.aka = fmul fast <4 x float> %i.ajz, %i.ajw
  %i.akb = fadd fast <4 x float> %i.aka, splat (float f0x3DEF251A)
  %i.akc = fmul fast <4 x float> %i.akb, %i.ajw
  %i.akd = fadd fast <4 x float> %i.akc, splat (float f0xBDFE5D4F)
  %i.ake = fmul fast <4 x float> %i.akd, %i.ajw
  %i.akf = fadd fast <4 x float> %i.ake, splat (float f0x3E11E9BF)
  %i.akg = fmul fast <4 x float> %i.akf, %i.ajw
  %i.akh = fadd fast <4 x float> %i.akg, splat (float f0xBE2AAE50)
  %i.aki = fmul fast <4 x float> %i.akh, %i.ajw
  %i.akj = fadd fast <4 x float> %i.aki, splat (float f0x3E4CCEAC)
  %i.akk = fmul fast <4 x float> %i.akj, %i.ajw
  %i.akl = fadd fast <4 x float> %i.akk, splat (float f0xBE7FFFFC)
  %i.akm = fmul fast <4 x float> %i.akl, %i.ajw
  %i.akn = fadd fast <4 x float> %i.akm, splat (float f0x3EAAAAAA)
  %i.ako = fmul fast <4 x float> %i.akn, %i.ajw
  %reass.mul1591 = fmul fast <4 x float> %i.ajv, splat (float f0x3F317218)
  %reass.add1609 = fadd fast <4 x float> %i.ako, splat (float -5.000000e-01)
  %reass.mul1610 = fmul fast <4 x float> %i.ajx, %reass.add1609
  %i.akp = fadd fast <4 x float> %reass.mul1591, %i.ajw
  %i.akq = fadd fast <4 x float> %i.akp, %reass.mul1610
  %.neg1575 = fmul fast <4 x float> %i.akq, splat (float -2.000000e+00)
  %i.akr = select fast <4 x i1> %i.aji, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1575
  %i.aks = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.akr, <4 x float> splat (float f0x42B0C0A5))
  %i.akt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aku = fmul fast <4 x float> %i.akt, splat (float f0x3FB8AA3B)
  %i.akv = fadd fast <4 x float> %i.aku, splat (float 5.000000e-01) ; 2 uses
  %i.akw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akv)
  %i.akx = sitofp fast <4 x i32> %i.akw to <4 x float> ; 2 uses
  %i.aky = fcmp fast olt <4 x float> %i.akv, %i.akx
  %i.akz = select <4 x i1> %i.aky, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ala = fsub fast <4 x float> %i.akx, %i.akz   ; 2 uses
  %i.alb = fmul fast <4 x float> %i.ala, splat (float f0x3F317218)
  %i.alc = fsub fast <4 x float> %i.akt, %i.alb   ; 8 uses
  %i.ald = fmul fast <4 x float> %i.alc, %i.alc
  %i.ale = fmul fast <4 x float> %i.alc, splat (float f0x39506967)
  %i.alf = fadd fast <4 x float> %i.ale, splat (float f0x3AB743CE)
  %i.alg = fmul fast <4 x float> %i.alf, %i.alc
  %i.alh = fadd fast <4 x float> %i.alg, splat (float f0x3C088908)
  %i.ali = fmul fast <4 x float> %i.alh, %i.alc
  %i.alj = fadd fast <4 x float> %i.ali, splat (float f0x3D2AA9C1)
  %i.alk = fmul fast <4 x float> %i.alj, %i.alc
  %i.all = fadd fast <4 x float> %i.alk, splat (float f0x3E2AAAAA)
  %i.alm = fmul fast <4 x float> %i.all, %i.alc
  %i.aln = fadd fast <4 x float> %i.alm, splat (float 5.000000e-01)
  %i.alo = fmul fast <4 x float> %i.ald, %i.aln
  %i.alp = fadd fast <4 x float> %i.alc, %i.alo
  %i.alq = fadd fast <4 x float> %i.alp, splat (float 1.000000e+00)
  %i.alr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ala)
  %i.als = shl <4 x i32> %i.alr, splat (i32 23)
  %i.alt = add <4 x i32> %i.als, splat (i32 1065353216)
  %i.alu = bitcast <4 x i32> %i.alt to <4 x float>
  %i.alv = fmul fast <4 x float> %i.alq, %i.alu
  %i.alw = fadd fast <4 x float> %i.alv, splat (float 1.000000e+00)
  %i.alx = fdiv fast <4 x float> splat (float 2.000000e+00), %i.alw
  %i.aly = fadd fast <4 x float> %i.alx, splat (float -1.000000e+00)
  %i.alz = fmul fast <4 x float> %i.aly, %.0204
  %i.ama = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0203, <4 x float> splat (float f0x42B0C0A5))
  %i.amb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ama, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.amc = fmul fast <4 x float> %i.amb, splat (float f0x3FB8AA3B)
  %i.amd = fadd fast <4 x float> %i.amc, splat (float 5.000000e-01) ; 2 uses
  %i.ame = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.amd)
  %i.amf = sitofp fast <4 x i32> %i.ame to <4 x float> ; 2 uses
  %i.amg = fcmp fast olt <4 x float> %i.amd, %i.amf
  %i.amh = select <4 x i1> %i.amg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ami = fsub fast <4 x float> %i.amf, %i.amh   ; 2 uses
  %i.amj = fmul fast <4 x float> %i.ami, splat (float f0x3F317218)
  %i.amk = fsub fast <4 x float> %i.amb, %i.amj   ; 8 uses
  %i.aml = fmul fast <4 x float> %i.amk, %i.amk
  %i.amm = fmul fast <4 x float> %i.amk, splat (float f0x39506967)
  %i.amn = fadd fast <4 x float> %i.amm, splat (float f0x3AB743CE)
  %i.amo = fmul fast <4 x float> %i.amn, %i.amk
  %i.amp = fadd fast <4 x float> %i.amo, splat (float f0x3C088908)
  %i.amq = fmul fast <4 x float> %i.amp, %i.amk
  %i.amr = fadd fast <4 x float> %i.amq, splat (float f0x3D2AA9C1)
  %i.ams = fmul fast <4 x float> %i.amr, %i.amk
  %i.amt = fadd fast <4 x float> %i.ams, splat (float f0x3E2AAAAA)
  %i.amu = fmul fast <4 x float> %i.amt, %i.amk
  %i.amv = fadd fast <4 x float> %i.amu, splat (float 5.000000e-01)
  %i.amw = fmul fast <4 x float> %i.aml, %i.amv
  %i.amx = fadd fast <4 x float> %i.amk, %i.amw
  %i.amy = fadd fast <4 x float> %i.amx, splat (float 1.000000e+00)
  %i.amz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ami)
  %i.ana = shl <4 x i32> %i.amz, splat (i32 23)
  %i.anb = add <4 x i32> %i.ana, splat (i32 1065353216)
  %i.anc = bitcast <4 x i32> %i.anb to <4 x float>
  %i.and = fmul fast <4 x float> %i.amy, %i.anc
  %i.ane = fadd fast <4 x float> %i.and, splat (float 1.000000e+00) ; 2 uses
  %i.anf = fcmp fast ole <4 x float> %i.ane, zeroinitializer
  %i.ang = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ane, <4 x float> splat (float f0x00800000))
  %i.anh = bitcast <4 x float> %i.ang to <4 x i32> ; 2 uses
  %i.ani = lshr <4 x i32> %i.anh, splat (i32 23)
  %i.anj = and <4 x i32> %i.anh, splat (i32 -2139095041)
  %i.ank = or disjoint <4 x i32> %i.anj, splat (i32 1056964608)
  %i.anl = bitcast <4 x i32> %i.ank to <4 x float> ; 3 uses
  %i.anm = add nsw <4 x i32> %i.ani, splat (i32 -127)
  %i.ann = sitofp fast <4 x i32> %i.anm to <4 x float> ; 2 uses
  %i.ano = fadd fast <4 x float> %i.ann, splat (float 1.000000e+00)
  %i.anp = fcmp fast olt <4 x float> %i.anl, splat (float f0x3F3504F3) ; 2 uses
  %i.anq = select <4 x i1> %i.anp, <4 x float> %i.anl, <4 x float> zeroinitializer
  %i.anr = fadd fast <4 x float> %i.anl, splat (float -1.000000e+00)
  %i.ans = select fast <4 x i1> %i.anp, <4 x float> %i.ann, <4 x float> %i.ano
  %i.ant = fadd fast <4 x float> %i.anr, %i.anq   ; 12 uses
  %i.anu = fmul fast <4 x float> %i.ant, %i.ant
  %i.anv = fmul fast <4 x float> %i.ant, splat (float f0x3D9021BB)
  %i.anw = fadd fast <4 x float> %i.anv, splat (float f0xBDEBD1B8)
  %i.anx = fmul fast <4 x float> %i.anw, %i.ant
  %i.any = fadd fast <4 x float> %i.anx, splat (float f0x3DEF251A)
  %i.anz = fmul fast <4 x float> %i.any, %i.ant
  %i.aoa = fadd fast <4 x float> %i.anz, splat (float f0xBDFE5D4F)
  %i.aob = fmul fast <4 x float> %i.aoa, %i.ant
  %i.aoc = fadd fast <4 x float> %i.aob, splat (float f0x3E11E9BF)
  %i.aod = fmul fast <4 x float> %i.aoc, %i.ant
  %i.aoe = fadd fast <4 x float> %i.aod, splat (float f0xBE2AAE50)
  %i.aof = fmul fast <4 x float> %i.aoe, %i.ant
  %i.aog = fadd fast <4 x float> %i.aof, splat (float f0x3E4CCEAC)
  %i.aoh = fmul fast <4 x float> %i.aog, %i.ant
  %i.aoi = fadd fast <4 x float> %i.aoh, splat (float f0xBE7FFFFC)
  %i.aoj = fmul fast <4 x float> %i.aoi, %i.ant
  %i.aok = fadd fast <4 x float> %i.aoj, splat (float f0x3EAAAAAA)
  %i.aol = fmul fast <4 x float> %i.aok, %i.ant
  %reass.mul1594 = fmul fast <4 x float> %i.ans, splat (float f0x3F317218)
  %reass.add1611 = fadd fast <4 x float> %i.aol, splat (float -5.000000e-01)
  %reass.mul1612 = fmul fast <4 x float> %i.anu, %reass.add1611
  %i.aom = fadd fast <4 x float> %reass.mul1594, %i.ant
  %i.aon = fadd fast <4 x float> %i.aom, %reass.mul1612
  %.neg1576 = fmul fast <4 x float> %i.aon, splat (float -2.000000e+00)
  %i.aoo = select fast <4 x i1> %i.anf, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1576
  %i.aop = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aoo, <4 x float> splat (float f0x42B0C0A5))
  %i.aoq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aop, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aor = fmul fast <4 x float> %i.aoq, splat (float f0x3FB8AA3B)
  %i.aos = fadd fast <4 x float> %i.aor, splat (float 5.000000e-01) ; 2 uses
  %i.aot = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aos)
  %i.aou = sitofp fast <4 x i32> %i.aot to <4 x float> ; 2 uses
  %i.aov = fcmp fast olt <4 x float> %i.aos, %i.aou
  %i.aow = select <4 x i1> %i.aov, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aox = fsub fast <4 x float> %i.aou, %i.aow   ; 2 uses
  %i.aoy = fmul fast <4 x float> %i.aox, splat (float f0x3F317218)
  %i.aoz = fsub fast <4 x float> %i.aoq, %i.aoy   ; 8 uses
  %i.apa = fmul fast <4 x float> %i.aoz, %i.aoz
  %i.apb = fmul fast <4 x float> %i.aoz, splat (float f0x39506967)
  %i.apc = fadd fast <4 x float> %i.apb, splat (float f0x3AB743CE)
  %i.apd = fmul fast <4 x float> %i.apc, %i.aoz
  %i.ape = fadd fast <4 x float> %i.apd, splat (float f0x3C088908)
  %i.apf = fmul fast <4 x float> %i.ape, %i.aoz
  %i.apg = fadd fast <4 x float> %i.apf, splat (float f0x3D2AA9C1)
  %i.aph = fmul fast <4 x float> %i.apg, %i.aoz
  %i.api = fadd fast <4 x float> %i.aph, splat (float f0x3E2AAAAA)
  %i.apj = fmul fast <4 x float> %i.api, %i.aoz
  %i.apk = fadd fast <4 x float> %i.apj, splat (float 5.000000e-01)
  %i.apl = fmul fast <4 x float> %i.apa, %i.apk
  %i.apm = fadd fast <4 x float> %i.aoz, %i.apl
  %i.apn = fadd fast <4 x float> %i.apm, splat (float 1.000000e+00)
  %i.apo = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aox)
  %i.app = shl <4 x i32> %i.apo, splat (i32 23)
  %i.apq = add <4 x i32> %i.app, splat (i32 1065353216)
  %i.apr = bitcast <4 x i32> %i.apq to <4 x float>
  %i.aps = fmul fast <4 x float> %i.apn, %i.apr
  %i.apt = fadd fast <4 x float> %i.aps, splat (float 1.000000e+00)
  %i.apu = fdiv fast <4 x float> splat (float 2.000000e+00), %i.apt
  %i.apv = fadd fast <4 x float> %i.apu, splat (float -1.000000e+00)
  %i.apw = fmul fast <4 x float> %i.apv, %.0203
  %i.apx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0202, <4 x float> splat (float f0x42B0C0A5))
  %i.apy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.apx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.apz = fmul fast <4 x float> %i.apy, splat (float f0x3FB8AA3B)
  %i.aqa = fadd fast <4 x float> %i.apz, splat (float 5.000000e-01) ; 2 uses
  %i.aqb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aqa)
  %i.aqc = sitofp fast <4 x i32> %i.aqb to <4 x float> ; 2 uses
  %i.aqd = fcmp fast olt <4 x float> %i.aqa, %i.aqc
  %i.aqe = select <4 x i1> %i.aqd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aqf = fsub fast <4 x float> %i.aqc, %i.aqe   ; 2 uses
  %i.aqg = fmul fast <4 x float> %i.aqf, splat (float f0x3F317218)
  %i.aqh = fsub fast <4 x float> %i.apy, %i.aqg   ; 8 uses
  %i.aqi = fmul fast <4 x float> %i.aqh, %i.aqh
  %i.aqj = fmul fast <4 x float> %i.aqh, splat (float f0x39506967)
  %i.aqk = fadd fast <4 x float> %i.aqj, splat (float f0x3AB743CE)
  %i.aql = fmul fast <4 x float> %i.aqk, %i.aqh
  %i.aqm = fadd fast <4 x float> %i.aql, splat (float f0x3C088908)
  %i.aqn = fmul fast <4 x float> %i.aqm, %i.aqh
  %i.aqo = fadd fast <4 x float> %i.aqn, splat (float f0x3D2AA9C1)
  %i.aqp = fmul fast <4 x float> %i.aqo, %i.aqh
  %i.aqq = fadd fast <4 x float> %i.aqp, splat (float f0x3E2AAAAA)
  %i.aqr = fmul fast <4 x float> %i.aqq, %i.aqh
  %i.aqs = fadd fast <4 x float> %i.aqr, splat (float 5.000000e-01)
  %i.aqt = fmul fast <4 x float> %i.aqi, %i.aqs
  %i.aqu = fadd fast <4 x float> %i.aqh, %i.aqt
  %i.aqv = fadd fast <4 x float> %i.aqu, splat (float 1.000000e+00)
  %i.aqw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aqf)
  %i.aqx = shl <4 x i32> %i.aqw, splat (i32 23)
  %i.aqy = add <4 x i32> %i.aqx, splat (i32 1065353216)
  %i.aqz = bitcast <4 x i32> %i.aqy to <4 x float>
  %i.ara = fmul fast <4 x float> %i.aqv, %i.aqz
  %i.arb = fadd fast <4 x float> %i.ara, splat (float 1.000000e+00) ; 2 uses
  %i.arc = fcmp fast ole <4 x float> %i.arb, zeroinitializer
  %i.ard = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.arb, <4 x float> splat (float f0x00800000))
  %i.are = bitcast <4 x float> %i.ard to <4 x i32> ; 2 uses
  %i.arf = lshr <4 x i32> %i.are, splat (i32 23)
  %i.arg = and <4 x i32> %i.are, splat (i32 -2139095041)
  %i.arh = or disjoint <4 x i32> %i.arg, splat (i32 1056964608)
  %i.ari = bitcast <4 x i32> %i.arh to <4 x float> ; 3 uses
  %i.arj = add nsw <4 x i32> %i.arf, splat (i32 -127)
  %i.ark = sitofp fast <4 x i32> %i.arj to <4 x float> ; 2 uses
  %i.arl = fadd fast <4 x float> %i.ark, splat (float 1.000000e+00)
  %i.arm = fcmp fast olt <4 x float> %i.ari, splat (float f0x3F3504F3) ; 2 uses
  %i.arn = select <4 x i1> %i.arm, <4 x float> %i.ari, <4 x float> zeroinitializer
  %i.aro = fadd fast <4 x float> %i.ari, splat (float -1.000000e+00)
  %i.arp = select fast <4 x i1> %i.arm, <4 x float> %i.ark, <4 x float> %i.arl
  %i.arq = fadd fast <4 x float> %i.aro, %i.arn   ; 12 uses
  %i.arr = fmul fast <4 x float> %i.arq, %i.arq
  %i.ars = fmul fast <4 x float> %i.arq, splat (float f0x3D9021BB)
  %i.art = fadd fast <4 x float> %i.ars, splat (float f0xBDEBD1B8)
  %i.aru = fmul fast <4 x float> %i.art, %i.arq
  %i.arv = fadd fast <4 x float> %i.aru, splat (float f0x3DEF251A)
  %i.arw = fmul fast <4 x float> %i.arv, %i.arq
  %i.arx = fadd fast <4 x float> %i.arw, splat (float f0xBDFE5D4F)
  %i.ary = fmul fast <4 x float> %i.arx, %i.arq
  %i.arz = fadd fast <4 x float> %i.ary, splat (float f0x3E11E9BF)
  %i.asa = fmul fast <4 x float> %i.arz, %i.arq
  %i.asb = fadd fast <4 x float> %i.asa, splat (float f0xBE2AAE50)
  %i.asc = fmul fast <4 x float> %i.asb, %i.arq
  %i.asd = fadd fast <4 x float> %i.asc, splat (float f0x3E4CCEAC)
  %i.ase = fmul fast <4 x float> %i.asd, %i.arq
  %i.asf = fadd fast <4 x float> %i.ase, splat (float f0xBE7FFFFC)
  %i.asg = fmul fast <4 x float> %i.asf, %i.arq
  %i.ash = fadd fast <4 x float> %i.asg, splat (float f0x3EAAAAAA)
  %i.asi = fmul fast <4 x float> %i.ash, %i.arq
  %reass.mul1597 = fmul fast <4 x float> %i.arp, splat (float f0x3F317218)
  %reass.add1613 = fadd fast <4 x float> %i.asi, splat (float -5.000000e-01)
  %reass.mul1614 = fmul fast <4 x float> %i.arr, %reass.add1613
  %i.asj = fadd fast <4 x float> %reass.mul1597, %i.arq
  %i.ask = fadd fast <4 x float> %i.asj, %reass.mul1614
  %.neg1577 = fmul fast <4 x float> %i.ask, splat (float -2.000000e+00)
  %i.asl = select fast <4 x i1> %i.arc, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1577
  %i.asm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.asl, <4 x float> splat (float f0x42B0C0A5))
  %i.asn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.asm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aso = fmul fast <4 x float> %i.asn, splat (float f0x3FB8AA3B)
  %i.asp = fadd fast <4 x float> %i.aso, splat (float 5.000000e-01) ; 2 uses
  %i.asq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.asp)
  %i.asr = sitofp fast <4 x i32> %i.asq to <4 x float> ; 2 uses
  %i.ass = fcmp fast olt <4 x float> %i.asp, %i.asr
  %i.ast = select <4 x i1> %i.ass, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.asu = fsub fast <4 x float> %i.asr, %i.ast   ; 2 uses
  %i.asv = fmul fast <4 x float> %i.asu, splat (float f0x3F317218)
  %i.asw = fsub fast <4 x float> %i.asn, %i.asv   ; 8 uses
  %i.asx = fmul fast <4 x float> %i.asw, %i.asw
  %i.asy = fmul fast <4 x float> %i.asw, splat (float f0x39506967)
  %i.asz = fadd fast <4 x float> %i.asy, splat (float f0x3AB743CE)
  %i.ata = fmul fast <4 x float> %i.asz, %i.asw
  %i.atb = fadd fast <4 x float> %i.ata, splat (float f0x3C088908)
  %i.atc = fmul fast <4 x float> %i.atb, %i.asw
  %i.atd = fadd fast <4 x float> %i.atc, splat (float f0x3D2AA9C1)
  %i.ate = fmul fast <4 x float> %i.atd, %i.asw
  %i.atf = fadd fast <4 x float> %i.ate, splat (float f0x3E2AAAAA)
  %i.atg = fmul fast <4 x float> %i.atf, %i.asw
  %i.ath = fadd fast <4 x float> %i.atg, splat (float 5.000000e-01)
  %i.ati = fmul fast <4 x float> %i.asx, %i.ath
  %i.atj = fadd fast <4 x float> %i.asw, %i.ati
  %i.atk = fadd fast <4 x float> %i.atj, splat (float 1.000000e+00)
  %i.atl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.asu)
  %i.atm = shl <4 x i32> %i.atl, splat (i32 23)
  %i.atn = add <4 x i32> %i.atm, splat (i32 1065353216)
  %i.ato = bitcast <4 x i32> %i.atn to <4 x float>
  %i.atp = fmul fast <4 x float> %i.atk, %i.ato
  %i.atq = fadd fast <4 x float> %i.atp, splat (float 1.000000e+00)
  %i.atr = fdiv fast <4 x float> splat (float 2.000000e+00), %i.atq
  %i.ats = fadd fast <4 x float> %i.atr, splat (float -1.000000e+00)
  %i.att = fmul fast <4 x float> %i.ats, %.0202
  %i.atu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0201, <4 x float> splat (float f0x42B0C0A5))
  %i.atv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.atu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.atw = fmul fast <4 x float> %i.atv, splat (float f0x3FB8AA3B)
  %i.atx = fadd fast <4 x float> %i.atw, splat (float 5.000000e-01) ; 2 uses
  %i.aty = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.atx)
  %i.atz = sitofp fast <4 x i32> %i.aty to <4 x float> ; 2 uses
  %i.aua = fcmp fast olt <4 x float> %i.atx, %i.atz
  %i.aub = select <4 x i1> %i.aua, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.auc = fsub fast <4 x float> %i.atz, %i.aub   ; 2 uses
  %i.aud = fmul fast <4 x float> %i.auc, splat (float f0x3F317218)
  %i.aue = fsub fast <4 x float> %i.atv, %i.aud   ; 8 uses
  %i.auf = fmul fast <4 x float> %i.aue, %i.aue
  %i.aug = fmul fast <4 x float> %i.aue, splat (float f0x39506967)
  %i.auh = fadd fast <4 x float> %i.aug, splat (float f0x3AB743CE)
  %i.aui = fmul fast <4 x float> %i.auh, %i.aue
  %i.auj = fadd fast <4 x float> %i.aui, splat (float f0x3C088908)
  %i.auk = fmul fast <4 x float> %i.auj, %i.aue
  %i.aul = fadd fast <4 x float> %i.auk, splat (float f0x3D2AA9C1)
  %i.aum = fmul fast <4 x float> %i.aul, %i.aue
  %i.aun = fadd fast <4 x float> %i.aum, splat (float f0x3E2AAAAA)
  %i.auo = fmul fast <4 x float> %i.aun, %i.aue
  %i.aup = fadd fast <4 x float> %i.auo, splat (float 5.000000e-01)
  %i.auq = fmul fast <4 x float> %i.auf, %i.aup
  %i.aur = fadd fast <4 x float> %i.aue, %i.auq
  %i.aus = fadd fast <4 x float> %i.aur, splat (float 1.000000e+00)
  %i.aut = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.auc)
  %i.auu = shl <4 x i32> %i.aut, splat (i32 23)
  %i.auv = add <4 x i32> %i.auu, splat (i32 1065353216)
  %i.auw = bitcast <4 x i32> %i.auv to <4 x float>
  %i.aux = fmul fast <4 x float> %i.aus, %i.auw
  %i.auy = fadd fast <4 x float> %i.aux, splat (float 1.000000e+00) ; 2 uses
  %i.auz = fcmp fast ole <4 x float> %i.auy, zeroinitializer
  %i.ava = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.auy, <4 x float> splat (float f0x00800000))
  %i.avb = bitcast <4 x float> %i.ava to <4 x i32> ; 2 uses
  %i.avc = lshr <4 x i32> %i.avb, splat (i32 23)
  %i.avd = and <4 x i32> %i.avb, splat (i32 -2139095041)
  %i.ave = or disjoint <4 x i32> %i.avd, splat (i32 1056964608)
  %i.avf = bitcast <4 x i32> %i.ave to <4 x float> ; 3 uses
  %i.avg = add nsw <4 x i32> %i.avc, splat (i32 -127)
  %i.avh = sitofp fast <4 x i32> %i.avg to <4 x float> ; 2 uses
  %i.avi = fadd fast <4 x float> %i.avh, splat (float 1.000000e+00)
  %i.avj = fcmp fast olt <4 x float> %i.avf, splat (float f0x3F3504F3) ; 2 uses
  %i.avk = select <4 x i1> %i.avj, <4 x float> %i.avf, <4 x float> zeroinitializer
  %i.avl = fadd fast <4 x float> %i.avf, splat (float -1.000000e+00)
  %i.avm = select fast <4 x i1> %i.avj, <4 x float> %i.avh, <4 x float> %i.avi
  %i.avn = fadd fast <4 x float> %i.avl, %i.avk   ; 12 uses
  %i.avo = fmul fast <4 x float> %i.avn, %i.avn
  %i.avp = fmul fast <4 x float> %i.avn, splat (float f0x3D9021BB)
  %i.avq = fadd fast <4 x float> %i.avp, splat (float f0xBDEBD1B8)
  %i.avr = fmul fast <4 x float> %i.avq, %i.avn
  %i.avs = fadd fast <4 x float> %i.avr, splat (float f0x3DEF251A)
  %i.avt = fmul fast <4 x float> %i.avs, %i.avn
  %i.avu = fadd fast <4 x float> %i.avt, splat (float f0xBDFE5D4F)
  %i.avv = fmul fast <4 x float> %i.avu, %i.avn
  %i.avw = fadd fast <4 x float> %i.avv, splat (float f0x3E11E9BF)
  %i.avx = fmul fast <4 x float> %i.avw, %i.avn
  %i.avy = fadd fast <4 x float> %i.avx, splat (float f0xBE2AAE50)
  %i.avz = fmul fast <4 x float> %i.avy, %i.avn
  %i.awa = fadd fast <4 x float> %i.avz, splat (float f0x3E4CCEAC)
  %i.awb = fmul fast <4 x float> %i.awa, %i.avn
  %i.awc = fadd fast <4 x float> %i.awb, splat (float f0xBE7FFFFC)
  %i.awd = fmul fast <4 x float> %i.awc, %i.avn
  %i.awe = fadd fast <4 x float> %i.awd, splat (float f0x3EAAAAAA)
  %i.awf = fmul fast <4 x float> %i.awe, %i.avn
  %reass.mul1600 = fmul fast <4 x float> %i.avm, splat (float f0x3F317218)
  %reass.add1615 = fadd fast <4 x float> %i.awf, splat (float -5.000000e-01)
  %reass.mul1616 = fmul fast <4 x float> %i.avo, %reass.add1615
  %i.awg = fadd fast <4 x float> %reass.mul1600, %i.avn
  %i.awh = fadd fast <4 x float> %i.awg, %reass.mul1616
  %.neg1578 = fmul fast <4 x float> %i.awh, splat (float -2.000000e+00)
  %i.awi = select fast <4 x i1> %i.auz, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1578
  %i.awj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.awi, <4 x float> splat (float f0x42B0C0A5))
  %i.awk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.awj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.awl = fmul fast <4 x float> %i.awk, splat (float f0x3FB8AA3B)
  %i.awm = fadd fast <4 x float> %i.awl, splat (float 5.000000e-01) ; 2 uses
  %i.awn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.awm)
  %i.awo = sitofp fast <4 x i32> %i.awn to <4 x float> ; 2 uses
  %i.awp = fcmp fast olt <4 x float> %i.awm, %i.awo
  %i.awq = select <4 x i1> %i.awp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.awr = fsub fast <4 x float> %i.awo, %i.awq   ; 2 uses
  %i.aws = fmul fast <4 x float> %i.awr, splat (float f0x3F317218)
  %i.awt = fsub fast <4 x float> %i.awk, %i.aws   ; 8 uses
  %i.awu = fmul fast <4 x float> %i.awt, %i.awt
  %i.awv = fmul fast <4 x float> %i.awt, splat (float f0x39506967)
  %i.aww = fadd fast <4 x float> %i.awv, splat (float f0x3AB743CE)
  %i.awx = fmul fast <4 x float> %i.aww, %i.awt
  %i.awy = fadd fast <4 x float> %i.awx, splat (float f0x3C088908)
  %i.awz = fmul fast <4 x float> %i.awy, %i.awt
  %i.axa = fadd fast <4 x float> %i.awz, splat (float f0x3D2AA9C1)
  %i.axb = fmul fast <4 x float> %i.axa, %i.awt
  %i.axc = fadd fast <4 x float> %i.axb, splat (float f0x3E2AAAAA)
  %i.axd = fmul fast <4 x float> %i.axc, %i.awt
  %i.axe = fadd fast <4 x float> %i.axd, splat (float 5.000000e-01)
  %i.axf = fmul fast <4 x float> %i.awu, %i.axe
  %i.axg = fadd fast <4 x float> %i.awt, %i.axf
  %i.axh = fadd fast <4 x float> %i.axg, splat (float 1.000000e+00)
  %i.axi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.awr)
  %i.axj = shl <4 x i32> %i.axi, splat (i32 23)
  %i.axk = add <4 x i32> %i.axj, splat (i32 1065353216)
  %i.axl = bitcast <4 x i32> %i.axk to <4 x float>
  %i.axm = fmul fast <4 x float> %i.axh, %i.axl
  %i.axn = fadd fast <4 x float> %i.axm, splat (float 1.000000e+00)
  %i.axo = fdiv fast <4 x float> splat (float 2.000000e+00), %i.axn
  %i.axp = fadd fast <4 x float> %i.axo, splat (float -1.000000e+00)
  %i.axq = fmul fast <4 x float> %i.axp, %.0201
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188: ; preds = %bb.g
  %i.axr = load ptr, ptr %i.x, align 8, !tbaa !19 ; 2 uses
  %i.axs = load float, ptr %i.axr, align 4, !tbaa !52
  %i.axt = insertelement <4 x float> poison, float %i.axs, i64 0
  %i.axu = shufflevector <4 x float> %i.axt, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axr, i64 4
  %i.axw = load float, ptr %i.axv, align 4, !tbaa !52
  %i.axx = insertelement <4 x float> poison, float %i.axw, i64 0
  %i.axy = shufflevector <4 x float> %i.axx, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.axz = fmul fast <4 x float> %i.axu, %.0208
  %i.aya = fadd fast <4 x float> %i.axz, %i.axy
  %i.ayb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aya, <4 x float> zeroinitializer)
  %i.ayc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayb, <4 x float> splat (float 1.000000e+00))
  %i.ayd = fmul fast <4 x float> %i.ayc, %.0208
  %i.aye = fmul fast <4 x float> %i.axu, %.0207
  %i.ayf = fadd fast <4 x float> %i.aye, %i.axy
  %i.ayg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ayf, <4 x float> zeroinitializer)
  %i.ayh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayg, <4 x float> splat (float 1.000000e+00))
  %i.ayi = fmul fast <4 x float> %i.ayh, %.0207
  %i.ayj = fmul fast <4 x float> %i.axu, %.0206
  %i.ayk = fadd fast <4 x float> %i.ayj, %i.axy
  %i.ayl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ayk, <4 x float> zeroinitializer)
  %i.aym = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayl, <4 x float> splat (float 1.000000e+00))
  %i.ayn = fmul fast <4 x float> %i.aym, %.0206
  %i.ayo = fmul fast <4 x float> %i.axu, %.0205
  %i.ayp = fadd fast <4 x float> %i.ayo, %i.axy
  %i.ayq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ayp, <4 x float> zeroinitializer)
  %i.ayr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayq, <4 x float> splat (float 1.000000e+00))
  %i.ays = fmul fast <4 x float> %i.ayr, %.0205
  %i.ayt = fmul fast <4 x float> %i.axu, %.0204
  %i.ayu = fadd fast <4 x float> %i.ayt, %i.axy
  %i.ayv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ayu, <4 x float> zeroinitializer)
  %i.ayw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayv, <4 x float> splat (float 1.000000e+00))
  %i.ayx = fmul fast <4 x float> %i.ayw, %.0204
  %i.ayy = fmul fast <4 x float> %i.axu, %.0203
  %i.ayz = fadd fast <4 x float> %i.ayy, %i.axy
  %i.aza = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ayz, <4 x float> zeroinitializer)
  %i.azb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aza, <4 x float> splat (float 1.000000e+00))
  %i.azc = fmul fast <4 x float> %i.azb, %.0203
  %i.azd = fmul fast <4 x float> %i.axu, %.0202
  %i.aze = fadd fast <4 x float> %i.azd, %i.axy
  %i.azf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aze, <4 x float> zeroinitializer)
  %i.azg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.azf, <4 x float> splat (float 1.000000e+00))
  %i.azh = fmul fast <4 x float> %i.azg, %.0202
  %i.azi = fmul fast <4 x float> %i.axu, %.0201
  %i.azj = fadd fast <4 x float> %i.azi, %i.axy
  %i.azk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.azj, <4 x float> zeroinitializer)
  %i.azl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.azk, <4 x float> splat (float 1.000000e+00))
  %i.azm = fmul fast <4 x float> %i.azl, %.0201
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.g, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread
  %.0.i2231496 = phi <4 x float> [ %i.azh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.gb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.hi, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.ii, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.rh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.att, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0202, %bb.g ] ; 2 uses
  %.0.i235133714001494 = phi <4 x float> [ %i.ayx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.fz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.ha, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.ie, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.ot, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.alz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0204, %bb.g ] ; 2 uses
  %.0.i24712301271133514021492 = phi <4 x float> [ %i.ayn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.fx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.gs, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.ia, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.mf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.aef, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0206, %bb.g ] ; 2 uses
  %.0.i2591175119412281273133314041490 = phi <4 x float> [ %i.ayd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.fv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.gk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.hw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.jr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.wl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0208, %bb.g ] ; 2 uses
  %.0.i253119612261275133114061488 = phi <4 x float> [ %i.ayi, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.fw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.go, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.hy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.ky, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.aai, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0207, %bb.g ] ; 2 uses
  %.0.i2411277132914081486 = phi <4 x float> [ %i.ays, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.fy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.gw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.ic, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.nm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.aic, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0205, %bb.g ] ; 2 uses
  %.0.i22914101484 = phi <4 x float> [ %i.azc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.ga, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.he, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.ig, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.qa, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.apw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0203, %bb.g ] ; 2 uses
  %.0.i = phi nsz <4 x float> [ %i.azm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1188 ], [ %i.gc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread ], [ %i.hm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1176 ], [ %i.ik, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1179 ], [ %i.so, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1182 ], [ %i.axq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit264.thread1185 ], [ %.0201, %bb.g ] ; 2 uses
  %i.azn = shufflevector <4 x float> %.0.i2591175119412281273133314041490, <4 x float> %.0.i24712301271133514021492, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.azo = shufflevector <4 x float> %.0.i235133714001494, <4 x float> %.0.i2231496, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.azp = shufflevector <4 x float> %.0.i2591175119412281273133314041490, <4 x float> %.0.i24712301271133514021492, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.azq = shufflevector <4 x float> %.0.i235133714001494, <4 x float> %.0.i2231496, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.azr = shufflevector <4 x float> %i.azn, <4 x float> %i.azo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.azs = shufflevector <4 x float> %i.azo, <4 x float> %i.azn, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.azt = shufflevector <4 x float> %i.azp, <4 x float> %i.azq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.azu = shufflevector <4 x float> %i.azq, <4 x float> %i.azp, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.azv = shufflevector <4 x float> %.0.i253119612261275133114061488, <4 x float> %.0.i2411277132914081486, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.azw = shufflevector <4 x float> %.0.i22914101484, <4 x float> %.0.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.azx = shufflevector <4 x float> %.0.i253119612261275133114061488, <4 x float> %.0.i2411277132914081486, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.azy = shufflevector <4 x float> %.0.i22914101484, <4 x float> %.0.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.azz = shufflevector <4 x float> %i.azv, <4 x float> %i.azw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.baa = shufflevector <4 x float> %i.azw, <4 x float> %i.azv, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bab = shufflevector <4 x float> %i.azx, <4 x float> %i.azy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bac = shufflevector <4 x float> %i.azy, <4 x float> %i.azx, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.azr, ptr %.01951638, align 1, !tbaa !49
  %i.bad = getelementptr inbounds nuw i8, ptr %.01951638, i64 16
  store <4 x float> %i.azs, ptr %i.bad, align 1, !tbaa !49
  %i.bae = getelementptr inbounds nuw i8, ptr %.01951638, i64 32
  store <4 x float> %i.azt, ptr %i.bae, align 1, !tbaa !49
  %i.baf = getelementptr inbounds nuw i8, ptr %.01951638, i64 48
  store <4 x float> %i.azu, ptr %i.baf, align 1, !tbaa !49
  %i.bag = getelementptr inbounds nuw i8, ptr %.01951638, i64 64
  store <4 x float> %i.azz, ptr %i.bag, align 1, !tbaa !49
  %i.bah = getelementptr inbounds nuw i8, ptr %.01951638, i64 80
  store <4 x float> %i.baa, ptr %i.bah, align 1, !tbaa !49
  %i.bai = getelementptr inbounds nuw i8, ptr %.01951638, i64 96
  store <4 x float> %i.bab, ptr %i.bai, align 1, !tbaa !49
  %i.baj = getelementptr inbounds nuw i8, ptr %.01951638, i64 112
  store <4 x float> %i.bac, ptr %i.baj, align 1, !tbaa !49
  %i.bak = getelementptr inbounds nuw i8, ptr %.01951638, i64 128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bal = load i32, ptr %i.n, align 8, !tbaa !45 ; 2 uses
  %i.bam = load i32, ptr %5, align 4, !tbaa !57   ; 2 uses
  %i.ban = sdiv i32 %i.bal, %i.bam
  %i.bao = sext i32 %i.ban to i64
  %i.bap = icmp slt i64 %indvars.iv.next, %i.bao
  br i1 %i.bap, label %bb.d, label %._crit_edge1641, !llvm.loop !147

._crit_edge1646:                                  ; preds = %._crit_edge1641, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge1646, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not209 = icmp sgt i32 %i.k, %i.j
  br i1 %.not209, label %._crit_edge213.split, label %.lr.ph212

.lr.ph212:                                        ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %factor.op.mul214 = mul i64 %i.q, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.s = load i32, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 3 uses
  br i1 %i.t, label %.lr.ph212.split, label %._crit_edge213.split

.lr.ph212.split:                                  ; preds = %.lr.ph212
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 672
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 644
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 600
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !47
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !48
  %factor.op.mul = mul i64 %i.ah, %i.ag
  %i.ai = load ptr, ptr %5, align 8, !tbaa !19    ; 4 uses
  %i.aj = load i32, ptr %i.aa, align 4, !tbaa !47
  %i.ak = sext i32 %i.aj to i64
  %i.al = load i64, ptr %i.z, align 8, !tbaa !48
  %i.am = mul i64 %i.al, %i.ak                    ; 4 uses
  %i.an = load i32, ptr %6, align 4, !tbaa !57    ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 0
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aq = load i32, ptr %i.x, align 4, !tbaa !76
  %.not79 = icmp eq i32 %i.aq, 0
  %i.ar = load i32, ptr %i.w, align 8, !tbaa !63
  %i.as = sext i32 %i.k to i64
  %i.at = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.s to i64
  %i.au = zext nneg i32 %i.an to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.an, 4
  %n.vec = and i64 %i.au, 2147483644              ; 8 uses
  %i.av = trunc nuw nsw i64 %n.vec to i32
end_hunk_4
begin_hunk_5_@_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 672
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 376
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 3 uses
  %i.y = sext i32 %i.k to i64
  %i.z = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %i.n, align 8, !tbaa !45
  %.pre356 = load i32, ptr %5, align 4, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph347, %._crit_edge343
  %i.aa = phi i32 [ %.pre356, %.lr.ph347 ], [ %i.al, %._crit_edge343 ] ; 2 uses
  %i.ab = phi i32 [ %.pre, %.lr.ph347 ], [ %i.am, %._crit_edge343 ] ; 2 uses
  %indvars.iv352 = phi i64 [ %i.y, %.lr.ph347 ], [ %indvars.iv.next353, %._crit_edge343 ] ; 3 uses
  %i.ac = sdiv i32 %i.ab, %i.aa
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph342.preheader, label %._crit_edge343

.lr.ph342.preheader:                              ; preds = %bb.c
  %i.ae = load ptr, ptr %3, align 8, !tbaa !19
  %i.af = load i32, ptr %i.l, align 4, !tbaa !47
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv352, %i.ag
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !48
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  br label %.lr.ph342

._crit_edge343:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.c
  %i.al = phi i32 [ %i.aa, %bb.c ], [ %i.ox, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %i.am = phi i32 [ %i.ab, %bb.c ], [ %i.ow, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %indvars.iv.next353 = add nsw i64 %indvars.iv352, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next353 to i32
  %exitcond355.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond355.not, label %._crit_edge348, label %bb.c

.lr.ph342:                                        ; preds = %.lr.ph342.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph342.preheader ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.066340 = phi ptr [ %i.ak, %.lr.ph342.preheader ], [ %i.ov, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.an = load i32, ptr %7, align 4, !tbaa !57    ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph342
  %i.ap = load ptr, ptr %6, align 8, !tbaa !19
  %i.aq = load i32, ptr %i.r, align 4, !tbaa !47
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %indvars.iv352, %i.ar
  %i.at = load i64, ptr %i.s, align 8, !tbaa !48
  %i.au = mul i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ax = load i32, ptr %i.p, align 4, !tbaa !47
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %indvars.iv, %i.ay
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !48
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bb
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.068337 = phi ptr [ %i.bx, %.lr.ph ], [ %i.bc, %.lr.ph.preheader ] ; 2 uses
  %.069336 = phi i32 [ %i.by, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bd = phi <4 x i32> [ %i.bv, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.be = phi <4 x i32> [ %i.bt, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %.072335 = phi ptr [ %i.bw, %.lr.ph ], [ %i.av, %.lr.ph.preheader ] ; 2 uses
  %i.bf = load i8, ptr %.072335, align 1, !tbaa !49
  %i.bg = sext i8 %i.bf to i16
  %i.bh = insertelement <8 x i16> poison, i16 %i.bg, i64 0
  %i.bi = shufflevector <8 x i16> %i.bh, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bj = load i64, ptr %.068337, align 1, !tbaa !49
  %i.bk = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bj, i64 0
  %i.bl = bitcast <2 x i64> %i.bk to <16 x i8>    ; 2 uses
  %.lobit.i = ashr <16 x i8> %i.bl, splat (i8 7)
  %i.bm = shufflevector <16 x i8> %i.bl, <16 x i8> %.lobit.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bn = bitcast <16 x i8> %i.bm to <8 x i16>    ; 2 uses
  %i.bo = mul <8 x i16> %i.bi, %i.bn              ; 2 uses
  %i.bp = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.bi, <8 x i16> %i.bn) ; 2 uses
  %i.bq = shufflevector <8 x i16> %i.bo, <8 x i16> %i.bp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.br = shufflevector <8 x i16> %i.bo, <8 x i16> %i.bp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bs = bitcast <8 x i16> %i.bq to <4 x i32>
  %i.bt = add <4 x i32> %i.be, %i.bs              ; 2 uses
  %i.bu = bitcast <8 x i16> %i.br to <4 x i32>
  %i.bv = add <4 x i32> %i.bd, %i.bu              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.072335, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.068337, i64 8
  %i.by = add nuw nsw i32 %.069336, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %i.an
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !151

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bz = sitofp fast <4 x i32> %i.bt to <4 x float>
  %i.ca = sitofp fast <4 x i32> %i.bv to <4 x float>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph342
  %.lcssa334 = phi <4 x float> [ zeroinitializer, %.lr.ph342 ], [ %i.bz, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi <4 x float> [ zeroinitializer, %.lr.ph342 ], [ %i.ca, %._crit_edge.loopexit ] ; 2 uses
  %i.cb = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.cc = shl nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc ; 2 uses
  %i.ce = load <4 x float>, ptr %i.cd, align 1, !tbaa !49 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = load <4 x float>, ptr %i.cf, align 1, !tbaa !49 ; 2 uses
  %i.ch = load i32, ptr %i.u, align 4, !tbaa !76
  %.not73 = icmp eq i32 %i.ch, 0
  br i1 %.not73, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cc ; 2 uses
  %i.ck = load <4 x float>, ptr %i.cj, align 1, !tbaa !49
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = load <4 x float>, ptr %i.cl, align 1, !tbaa !49
  %i.cn = fmul fast <4 x float> %i.ce, %.lcssa334
  %i.co = fadd fast <4 x float> %i.ck, %i.cn
  %i.cp = fmul fast <4 x float> %i.cg, %.lcssa
  %i.cq = fadd fast <4 x float> %i.cm, %i.cp
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.cr = fmul fast <4 x float> %i.ce, %.lcssa334
  %i.cs = fmul fast <4 x float> %i.cg, %.lcssa
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.065 = phi nsz <4 x float> [ %i.co, %bb.d ], [ %i.cr, %bb.e ] ; 10 uses
  %.064 = phi nsz <4 x float> [ %i.cq, %bb.d ], [ %i.cs, %bb.e ] ; 10 uses
  %i.ct = load i32, ptr %i.w, align 8, !tbaa !63
  switch i32 %i.ct, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread310
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread313
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread316
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread319
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread322
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread: ; preds = %bb.f
  %i.cu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.065, <4 x float> zeroinitializer)
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.064, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread310: ; preds = %bb.f
  %i.cw = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !52
  %i.cy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.065)
  %i.cz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.065)
  %i.da = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dc = fmul fast <4 x float> %i.db, %i.cz
  %i.dd = fadd fast <4 x float> %i.dc, %i.cy
  %i.de = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.064)
  %i.df = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.064)
  %i.dg = fmul fast <4 x float> %i.db, %i.df
  %i.dh = fadd fast <4 x float> %i.dg, %i.de
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread313: ; preds = %bb.f
  %i.di = load ptr, ptr %i.x, align 8, !tbaa !19  ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !52
  %i.dk = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !52
  %i.do = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.065, <4 x float> nofpclass(nan inf) %i.dl)
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> nofpclass(nan inf) %i.dp)
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.064, <4 x float> nofpclass(nan inf) %i.dl)
  %i.dt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ds, <4 x float> nofpclass(nan inf) %i.dp)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread316: ; preds = %bb.f
  %i.du = fneg fast <4 x float> %.065
  %i.dv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.du, <4 x float> splat (float f0x42B0C0A5))
  %i.dw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dx = fmul fast <4 x float> %i.dw, splat (float f0x3FB8AA3B)
  %i.dy = fadd fast <4 x float> %i.dx, splat (float 5.000000e-01) ; 2 uses
  %i.dz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dy)
  %i.ea = sitofp fast <4 x i32> %i.dz to <4 x float> ; 2 uses
  %i.eb = fcmp fast olt <4 x float> %i.dy, %i.ea
  %i.ec = select <4 x i1> %i.eb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ed = fsub fast <4 x float> %i.ea, %i.ec      ; 2 uses
  %i.ee = fmul fast <4 x float> %i.ed, splat (float f0x3F317218)
  %i.ef = fsub fast <4 x float> %i.dw, %i.ee      ; 8 uses
  %i.eg = fmul fast <4 x float> %i.ef, %i.ef
  %i.eh = fmul fast <4 x float> %i.ef, splat (float f0x39506967)
  %i.ei = fadd fast <4 x float> %i.eh, splat (float f0x3AB743CE)
  %i.ej = fmul fast <4 x float> %i.ei, %i.ef
  %i.ek = fadd fast <4 x float> %i.ej, splat (float f0x3C088908)
  %i.el = fmul fast <4 x float> %i.ek, %i.ef
  %i.em = fadd fast <4 x float> %i.el, splat (float f0x3D2AA9C1)
  %i.en = fmul fast <4 x float> %i.em, %i.ef
  %i.eo = fadd fast <4 x float> %i.en, splat (float f0x3E2AAAAA)
  %i.ep = fmul fast <4 x float> %i.eo, %i.ef
  %i.eq = fadd fast <4 x float> %i.ep, splat (float 5.000000e-01)
  %i.er = fmul fast <4 x float> %i.eg, %i.eq
  %i.es = fadd fast <4 x float> %i.ef, %i.er
  %i.et = fadd fast <4 x float> %i.es, splat (float 1.000000e+00)
  %i.eu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ed)
  %i.ev = shl <4 x i32> %i.eu, splat (i32 23)
  %i.ew = add <4 x i32> %i.ev, splat (i32 1065353216)
  %i.ex = bitcast <4 x i32> %i.ew to <4 x float>
  %i.ey = fmul fast <4 x float> %i.et, %i.ex
  %i.ez = fadd fast <4 x float> %i.ey, splat (float 1.000000e+00)
  %i.fa = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ez
  %i.fb = fneg fast <4 x float> %.064
  %i.fc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fb, <4 x float> splat (float f0x42B0C0A5))
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fe = fmul fast <4 x float> %i.fd, splat (float f0x3FB8AA3B)
  %i.ff = fadd fast <4 x float> %i.fe, splat (float 5.000000e-01) ; 2 uses
  %i.fg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ff)
  %i.fh = sitofp fast <4 x i32> %i.fg to <4 x float> ; 2 uses
  %i.fi = fcmp fast olt <4 x float> %i.ff, %i.fh
  %i.fj = select <4 x i1> %i.fi, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fk = fsub fast <4 x float> %i.fh, %i.fj      ; 2 uses
  %i.fl = fmul fast <4 x float> %i.fk, splat (float f0x3F317218)
  %i.fm = fsub fast <4 x float> %i.fd, %i.fl      ; 8 uses
  %i.fn = fmul fast <4 x float> %i.fm, %i.fm
  %i.fo = fmul fast <4 x float> %i.fm, splat (float f0x39506967)
  %i.fp = fadd fast <4 x float> %i.fo, splat (float f0x3AB743CE)
  %i.fq = fmul fast <4 x float> %i.fp, %i.fm
  %i.fr = fadd fast <4 x float> %i.fq, splat (float f0x3C088908)
  %i.fs = fmul fast <4 x float> %i.fr, %i.fm
  %i.ft = fadd fast <4 x float> %i.fs, splat (float f0x3D2AA9C1)
  %i.fu = fmul fast <4 x float> %i.ft, %i.fm
  %i.fv = fadd fast <4 x float> %i.fu, splat (float f0x3E2AAAAA)
  %i.fw = fmul fast <4 x float> %i.fv, %i.fm
  %i.fx = fadd fast <4 x float> %i.fw, splat (float 5.000000e-01)
  %i.fy = fmul fast <4 x float> %i.fn, %i.fx
  %i.fz = fadd fast <4 x float> %i.fm, %i.fy
  %i.ga = fadd fast <4 x float> %i.fz, splat (float 1.000000e+00)
  %i.gb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fk)
  %i.gc = shl <4 x i32> %i.gb, splat (i32 23)
  %i.gd = add <4 x i32> %i.gc, splat (i32 1065353216)
  %i.ge = bitcast <4 x i32> %i.gd to <4 x float>
  %i.gf = fmul fast <4 x float> %i.ga, %i.ge
  %i.gg = fadd fast <4 x float> %i.gf, splat (float 1.000000e+00)
  %i.gh = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gg
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread319: ; preds = %bb.f
  %i.gi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.065, <4 x float> splat (float f0x42B0C0A5))
  %i.gj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gi, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gk = fmul fast <4 x float> %i.gj, splat (float f0x3FB8AA3B)
  %i.gl = fadd fast <4 x float> %i.gk, splat (float 5.000000e-01) ; 2 uses
  %i.gm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gl)
  %i.gn = sitofp fast <4 x i32> %i.gm to <4 x float> ; 2 uses
  %i.go = fcmp fast olt <4 x float> %i.gl, %i.gn
  %i.gp = select <4 x i1> %i.go, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gq = fsub fast <4 x float> %i.gn, %i.gp      ; 2 uses
  %i.gr = fmul fast <4 x float> %i.gq, splat (float f0x3F317218)
  %i.gs = fsub fast <4 x float> %i.gj, %i.gr      ; 8 uses
  %i.gt = fmul fast <4 x float> %i.gs, %i.gs
  %i.gu = fmul fast <4 x float> %i.gs, splat (float f0x39506967)
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3AB743CE)
  %i.gw = fmul fast <4 x float> %i.gv, %i.gs
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0x3C088908)
  %i.gy = fmul fast <4 x float> %i.gx, %i.gs
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3D2AA9C1)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gs
  %i.hb = fadd fast <4 x float> %i.ha, splat (float f0x3E2AAAAA)
  %i.hc = fmul fast <4 x float> %i.hb, %i.gs
  %i.hd = fadd fast <4 x float> %i.hc, splat (float 5.000000e-01)
  %i.he = fmul fast <4 x float> %i.gt, %i.hd
  %i.hf = fadd fast <4 x float> %i.gs, %i.he
  %i.hg = fadd fast <4 x float> %i.hf, splat (float 1.000000e+00)
  %i.hh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gq)
  %i.hi = shl <4 x i32> %i.hh, splat (i32 23)
  %i.hj = add <4 x i32> %i.hi, splat (i32 1065353216)
  %i.hk = bitcast <4 x i32> %i.hj to <4 x float>
  %i.hl = fmul fast <4 x float> %i.hg, %i.hk
  %i.hm = fadd fast <4 x float> %i.hl, splat (float 1.000000e+00) ; 2 uses
  %i.hn = fcmp fast ole <4 x float> %i.hm, zeroinitializer
  %i.ho = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hm, <4 x float> splat (float f0x00800000))
  %i.hp = bitcast <4 x float> %i.ho to <4 x i32>  ; 2 uses
  %i.hq = lshr <4 x i32> %i.hp, splat (i32 23)
  %i.hr = and <4 x i32> %i.hp, splat (i32 -2139095041)
  %i.hs = or disjoint <4 x i32> %i.hr, splat (i32 1056964608)
  %i.ht = bitcast <4 x i32> %i.hs to <4 x float>  ; 3 uses
  %i.hu = add nsw <4 x i32> %i.hq, splat (i32 -127)
  %i.hv = sitofp fast <4 x i32> %i.hu to <4 x float> ; 2 uses
  %i.hw = fadd fast <4 x float> %i.hv, splat (float 1.000000e+00)
  %i.hx = fcmp fast olt <4 x float> %i.ht, splat (float f0x3F3504F3) ; 2 uses
  %i.hy = select <4 x i1> %i.hx, <4 x float> %i.ht, <4 x float> zeroinitializer
  %i.hz = fadd fast <4 x float> %i.ht, splat (float -1.000000e+00)
  %i.ia = select fast <4 x i1> %i.hx, <4 x float> %i.hv, <4 x float> %i.hw
  %i.ib = fadd fast <4 x float> %i.hz, %i.hy      ; 12 uses
  %i.ic = fmul fast <4 x float> %i.ib, %i.ib
  %i.id = fmul fast <4 x float> %i.ib, splat (float f0x3D9021BB)
  %i.ie = fadd fast <4 x float> %i.id, splat (float f0xBDEBD1B8)
  %i.if = fmul fast <4 x float> %i.ie, %i.ib
  %i.ig = fadd fast <4 x float> %i.if, splat (float f0x3DEF251A)
  %i.ih = fmul fast <4 x float> %i.ig, %i.ib
  %i.ii = fadd fast <4 x float> %i.ih, splat (float f0xBDFE5D4F)
  %i.ij = fmul fast <4 x float> %i.ii, %i.ib
  %i.ik = fadd fast <4 x float> %i.ij, splat (float f0x3E11E9BF)
  %i.il = fmul fast <4 x float> %i.ik, %i.ib
  %i.im = fadd fast <4 x float> %i.il, splat (float f0xBE2AAE50)
  %i.in = fmul fast <4 x float> %i.im, %i.ib
  %i.io = fadd fast <4 x float> %i.in, splat (float f0x3E4CCEAC)
  %i.ip = fmul fast <4 x float> %i.io, %i.ib
  %i.iq = fadd fast <4 x float> %i.ip, splat (float f0xBE7FFFFC)
  %i.ir = fmul fast <4 x float> %i.iq, %i.ib
  %i.is = fadd fast <4 x float> %i.ir, splat (float f0x3EAAAAAA)
  %i.it = fmul fast <4 x float> %i.is, %i.ib
  %reass.mul = fmul fast <4 x float> %i.ia, splat (float f0x3F317218)
  %reass.add330 = fadd fast <4 x float> %i.it, splat (float -5.000000e-01)
  %reass.mul331 = fmul fast <4 x float> %i.ic, %reass.add330
  %i.iu = fadd fast <4 x float> %reass.mul, %i.ib
  %i.iv = fadd fast <4 x float> %i.iu, %reass.mul331
  %.neg = fmul fast <4 x float> %i.iv, splat (float -2.000000e+00)
  %i.iw = select fast <4 x i1> %i.hn, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ix = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.iw, <4 x float> splat (float f0x42B0C0A5))
  %i.iy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ix, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.iz = fmul fast <4 x float> %i.iy, splat (float f0x3FB8AA3B)
  %i.ja = fadd fast <4 x float> %i.iz, splat (float 5.000000e-01) ; 2 uses
  %i.jb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ja)
  %i.jc = sitofp fast <4 x i32> %i.jb to <4 x float> ; 2 uses
  %i.jd = fcmp fast olt <4 x float> %i.ja, %i.jc
  %i.je = select <4 x i1> %i.jd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jf = fsub fast <4 x float> %i.jc, %i.je      ; 2 uses
  %i.jg = fmul fast <4 x float> %i.jf, splat (float f0x3F317218)
  %i.jh = fsub fast <4 x float> %i.iy, %i.jg      ; 8 uses
  %i.ji = fmul fast <4 x float> %i.jh, %i.jh
  %i.jj = fmul fast <4 x float> %i.jh, splat (float f0x39506967)
  %i.jk = fadd fast <4 x float> %i.jj, splat (float f0x3AB743CE)
  %i.jl = fmul fast <4 x float> %i.jk, %i.jh
  %i.jm = fadd fast <4 x float> %i.jl, splat (float f0x3C088908)
  %i.jn = fmul fast <4 x float> %i.jm, %i.jh
  %i.jo = fadd fast <4 x float> %i.jn, splat (float f0x3D2AA9C1)
  %i.jp = fmul fast <4 x float> %i.jo, %i.jh
  %i.jq = fadd fast <4 x float> %i.jp, splat (float f0x3E2AAAAA)
  %i.jr = fmul fast <4 x float> %i.jq, %i.jh
  %i.js = fadd fast <4 x float> %i.jr, splat (float 5.000000e-01)
  %i.jt = fmul fast <4 x float> %i.ji, %i.js
  %i.ju = fadd fast <4 x float> %i.jh, %i.jt
  %i.jv = fadd fast <4 x float> %i.ju, splat (float 1.000000e+00)
  %i.jw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jf)
  %i.jx = shl <4 x i32> %i.jw, splat (i32 23)
  %i.jy = add <4 x i32> %i.jx, splat (i32 1065353216)
  %i.jz = bitcast <4 x i32> %i.jy to <4 x float>
  %i.ka = fmul fast <4 x float> %i.jv, %i.jz
  %i.kb = fadd fast <4 x float> %i.ka, splat (float 1.000000e+00)
  %i.kc = fdiv fast <4 x float> splat (float 2.000000e+00), %i.kb
  %i.kd = fadd fast <4 x float> %i.kc, splat (float -1.000000e+00)
  %i.ke = fmul fast <4 x float> %i.kd, %.065
  %i.kf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.064, <4 x float> splat (float f0x42B0C0A5))
  %i.kg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kh = fmul fast <4 x float> %i.kg, splat (float f0x3FB8AA3B)
  %i.ki = fadd fast <4 x float> %i.kh, splat (float 5.000000e-01) ; 2 uses
  %i.kj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ki)
  %i.kk = sitofp fast <4 x i32> %i.kj to <4 x float> ; 2 uses
  %i.kl = fcmp fast olt <4 x float> %i.ki, %i.kk
  %i.km = select <4 x i1> %i.kl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.kn = fsub fast <4 x float> %i.kk, %i.km      ; 2 uses
  %i.ko = fmul fast <4 x float> %i.kn, splat (float f0x3F317218)
  %i.kp = fsub fast <4 x float> %i.kg, %i.ko      ; 8 uses
  %i.kq = fmul fast <4 x float> %i.kp, %i.kp
  %i.kr = fmul fast <4 x float> %i.kp, splat (float f0x39506967)
  %i.ks = fadd fast <4 x float> %i.kr, splat (float f0x3AB743CE)
  %i.kt = fmul fast <4 x float> %i.ks, %i.kp
  %i.ku = fadd fast <4 x float> %i.kt, splat (float f0x3C088908)
  %i.kv = fmul fast <4 x float> %i.ku, %i.kp
  %i.kw = fadd fast <4 x float> %i.kv, splat (float f0x3D2AA9C1)
  %i.kx = fmul fast <4 x float> %i.kw, %i.kp
  %i.ky = fadd fast <4 x float> %i.kx, splat (float f0x3E2AAAAA)
  %i.kz = fmul fast <4 x float> %i.ky, %i.kp
  %i.la = fadd fast <4 x float> %i.kz, splat (float 5.000000e-01)
  %i.lb = fmul fast <4 x float> %i.kq, %i.la
  %i.lc = fadd fast <4 x float> %i.kp, %i.lb
  %i.ld = fadd fast <4 x float> %i.lc, splat (float 1.000000e+00)
  %i.le = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kn)
  %i.lf = shl <4 x i32> %i.le, splat (i32 23)
  %i.lg = add <4 x i32> %i.lf, splat (i32 1065353216)
  %i.lh = bitcast <4 x i32> %i.lg to <4 x float>
  %i.li = fmul fast <4 x float> %i.ld, %i.lh
  %i.lj = fadd fast <4 x float> %i.li, splat (float 1.000000e+00) ; 2 uses
  %i.lk = fcmp fast ole <4 x float> %i.lj, zeroinitializer
  %i.ll = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lj, <4 x float> splat (float f0x00800000))
  %i.lm = bitcast <4 x float> %i.ll to <4 x i32>  ; 2 uses
  %i.ln = lshr <4 x i32> %i.lm, splat (i32 23)
  %i.lo = and <4 x i32> %i.lm, splat (i32 -2139095041)
  %i.lp = or disjoint <4 x i32> %i.lo, splat (i32 1056964608)
  %i.lq = bitcast <4 x i32> %i.lp to <4 x float>  ; 3 uses
  %i.lr = add nsw <4 x i32> %i.ln, splat (i32 -127)
  %i.ls = sitofp fast <4 x i32> %i.lr to <4 x float> ; 2 uses
  %i.lt = fadd fast <4 x float> %i.ls, splat (float 1.000000e+00)
  %i.lu = fcmp fast olt <4 x float> %i.lq, splat (float f0x3F3504F3) ; 2 uses
  %i.lv = select <4 x i1> %i.lu, <4 x float> %i.lq, <4 x float> zeroinitializer
  %i.lw = fadd fast <4 x float> %i.lq, splat (float -1.000000e+00)
  %i.lx = select fast <4 x i1> %i.lu, <4 x float> %i.ls, <4 x float> %i.lt
  %i.ly = fadd fast <4 x float> %i.lw, %i.lv      ; 12 uses
  %i.lz = fmul fast <4 x float> %i.ly, %i.ly
  %i.ma = fmul fast <4 x float> %i.ly, splat (float f0x3D9021BB)
  %i.mb = fadd fast <4 x float> %i.ma, splat (float f0xBDEBD1B8)
  %i.mc = fmul fast <4 x float> %i.mb, %i.ly
  %i.md = fadd fast <4 x float> %i.mc, splat (float f0x3DEF251A)
  %i.me = fmul fast <4 x float> %i.md, %i.ly
  %i.mf = fadd fast <4 x float> %i.me, splat (float f0xBDFE5D4F)
  %i.mg = fmul fast <4 x float> %i.mf, %i.ly
  %i.mh = fadd fast <4 x float> %i.mg, splat (float f0x3E11E9BF)
  %i.mi = fmul fast <4 x float> %i.mh, %i.ly
  %i.mj = fadd fast <4 x float> %i.mi, splat (float f0xBE2AAE50)
  %i.mk = fmul fast <4 x float> %i.mj, %i.ly
  %i.ml = fadd fast <4 x float> %i.mk, splat (float f0x3E4CCEAC)
  %i.mm = fmul fast <4 x float> %i.ml, %i.ly
  %i.mn = fadd fast <4 x float> %i.mm, splat (float f0xBE7FFFFC)
  %i.mo = fmul fast <4 x float> %i.mn, %i.ly
  %i.mp = fadd fast <4 x float> %i.mo, splat (float f0x3EAAAAAA)
  %i.mq = fmul fast <4 x float> %i.mp, %i.ly
  %reass.mul329 = fmul fast <4 x float> %i.lx, splat (float f0x3F317218)
  %reass.add332 = fadd fast <4 x float> %i.mq, splat (float -5.000000e-01)
  %reass.mul333 = fmul fast <4 x float> %i.lz, %reass.add332
  %i.mr = fadd fast <4 x float> %reass.mul329, %i.ly
  %i.ms = fadd fast <4 x float> %i.mr, %reass.mul333
  %.neg325 = fmul fast <4 x float> %i.ms, splat (float -2.000000e+00)
  %i.mt = select fast <4 x i1> %i.lk, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg325
  %i.mu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mt, <4 x float> splat (float f0x42B0C0A5))
  %i.mv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mw = fmul fast <4 x float> %i.mv, splat (float f0x3FB8AA3B)
  %i.mx = fadd fast <4 x float> %i.mw, splat (float 5.000000e-01) ; 2 uses
  %i.my = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mx)
  %i.mz = sitofp fast <4 x i32> %i.my to <4 x float> ; 2 uses
  %i.na = fcmp fast olt <4 x float> %i.mx, %i.mz
  %i.nb = select <4 x i1> %i.na, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nc = fsub fast <4 x float> %i.mz, %i.nb      ; 2 uses
  %i.nd = fmul fast <4 x float> %i.nc, splat (float f0x3F317218)
  %i.ne = fsub fast <4 x float> %i.mv, %i.nd      ; 8 uses
  %i.nf = fmul fast <4 x float> %i.ne, %i.ne
  %i.ng = fmul fast <4 x float> %i.ne, splat (float f0x39506967)
  %i.nh = fadd fast <4 x float> %i.ng, splat (float f0x3AB743CE)
  %i.ni = fmul fast <4 x float> %i.nh, %i.ne
  %i.nj = fadd fast <4 x float> %i.ni, splat (float f0x3C088908)
  %i.nk = fmul fast <4 x float> %i.nj, %i.ne
  %i.nl = fadd fast <4 x float> %i.nk, splat (float f0x3D2AA9C1)
  %i.nm = fmul fast <4 x float> %i.nl, %i.ne
  %i.nn = fadd fast <4 x float> %i.nm, splat (float f0x3E2AAAAA)
  %i.no = fmul fast <4 x float> %i.nn, %i.ne
  %i.np = fadd fast <4 x float> %i.no, splat (float 5.000000e-01)
  %i.nq = fmul fast <4 x float> %i.nf, %i.np
  %i.nr = fadd fast <4 x float> %i.ne, %i.nq
  %i.ns = fadd fast <4 x float> %i.nr, splat (float 1.000000e+00)
  %i.nt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nc)
  %i.nu = shl <4 x i32> %i.nt, splat (i32 23)
  %i.nv = add <4 x i32> %i.nu, splat (i32 1065353216)
  %i.nw = bitcast <4 x i32> %i.nv to <4 x float>
  %i.nx = fmul fast <4 x float> %i.ns, %i.nw
  %i.ny = fadd fast <4 x float> %i.nx, splat (float 1.000000e+00)
  %i.nz = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ny
  %i.oa = fadd fast <4 x float> %i.nz, splat (float -1.000000e+00)
  %i.ob = fmul fast <4 x float> %i.oa, %.064
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread322: ; preds = %bb.f
  %i.oc = load ptr, ptr %i.x, align 8, !tbaa !19  ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !52
  %i.oe = insertelement <4 x float> poison, float %i.od, i64 0
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.oh = load float, ptr %i.og, align 4, !tbaa !52
  %i.oi = insertelement <4 x float> poison, float %i.oh, i64 0
  %i.oj = shufflevector <4 x float> %i.oi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ok = fmul fast <4 x float> %i.of, %.065
  %i.ol = fadd fast <4 x float> %i.ok, %i.oj
  %i.om = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ol, <4 x float> zeroinitializer)
  %i.on = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.om, <4 x float> splat (float 1.000000e+00))
  %i.oo = fmul fast <4 x float> %i.on, %.065
  %i.op = fmul fast <4 x float> %i.of, %.064
  %i.oq = fadd fast <4 x float> %i.op, %i.oj
  %i.or = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oq, <4 x float> zeroinitializer)
  %i.os = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.or, <4 x float> splat (float 1.000000e+00))
  %i.ot = fmul fast <4 x float> %i.os, %.064
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.f, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread322, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread319, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread316, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread313, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread310, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread
  %.0.i77309 = phi <4 x float> [ %i.oo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread322 ], [ %i.cu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread ], [ %i.dd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread310 ], [ %i.dr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread313 ], [ %i.fa, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread316 ], [ %i.ke, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread319 ], [ %.065, %bb.f ]
  %.0.i = phi nsz <4 x float> [ %i.ot, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread322 ], [ %i.cv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread ], [ %i.dh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread310 ], [ %i.dt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread313 ], [ %i.gh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread316 ], [ %i.ob, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread319 ], [ %.064, %bb.f ]
  store <4 x float> %.0.i77309, ptr %.066340, align 1, !tbaa !49
  %i.ou = getelementptr inbounds nuw i8, ptr %.066340, i64 16
  store <4 x float> %.0.i, ptr %i.ou, align 1, !tbaa !49
  %i.ov = getelementptr inbounds nuw i8, ptr %.066340, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ow = load i32, ptr %i.n, align 8, !tbaa !45  ; 2 uses
  %i.ox = load i32, ptr %5, align 4, !tbaa !57    ; 2 uses
  %i.oy = sdiv i32 %i.ow, %i.ox
  %i.oz = sext i32 %i.oy to i64
  %i.pa = icmp slt i64 %indvars.iv.next, %i.oz
  br i1 %i.pa, label %.lr.ph342, label %._crit_edge343, !llvm.loop !152

._crit_edge348:                                   ; preds = %._crit_edge343, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge348, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not61 = icmp sgt i32 %i.k, %i.j
  br i1 %.not61, label %._crit_edge65.split, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %factor.op.mul66 = mul i64 %i.q, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.s = load i32, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 3 uses
  br i1 %i.t, label %.lr.ph64.split, label %._crit_edge65.split

.lr.ph64.split:                                   ; preds = %.lr.ph64
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 672
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 644
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 600
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !47
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !48
  %factor.op.mul = mul i64 %i.ah, %i.ag
  %i.ai = load ptr, ptr %5, align 8, !tbaa !19
  %i.aj = load i32, ptr %i.aa, align 4, !tbaa !47
  %i.ak = sext i32 %i.aj to i64
  %i.al = load i64, ptr %i.z, align 8, !tbaa !48
  %factor.op.mul68 = mul i64 %i.al, %i.ak
  %i.am = load i32, ptr %6, align 4, !tbaa !57    ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.ap = load i32, ptr %i.x, align 4, !tbaa !76
  %.not39 = icmp eq i32 %i.ap, 0
  %i.aq = load i32, ptr %i.w, align 8, !tbaa !63
  %i.ar = sext i32 %i.k to i64
  %i.as = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.s to i64
  %i.at = zext nneg i32 %i.am to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.am, 8
  %n.vec = and i64 %i.at, 2147483640              ; 5 uses
  %i.au = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.at
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph64.split, %._crit_edge60
  %indvars.iv72 = phi i64 [ %i.ar, %.lr.ph64.split ], [ %indvars.iv.next73, %._crit_edge60 ] ; 3 uses
  %.reass67 = mul i64 %factor.op.mul66, %indvars.iv72
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass67
  %.reass69 = mul i64 %factor.op.mul68, %indvars.iv72
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.reass69 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 %n.vec
  br label %bb.c

._crit_edge60:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next73 to i32
  %exitcond75.not = icmp eq i32 %i.as, %lftr.wideiv
  br i1 %exitcond75.not, label %._crit_edge65.split, label %.lr.ph59

bb.c:                                             ; preds = %.lr.ph59, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 4 uses
  %.03756 = phi ptr [ %i.av, %.lr.ph59 ], [ %i.dk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.reass ; 3 uses
  br i1 %min.iters.check, label %.lr.ph.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.az = getelementptr i8, ptr %i.ay, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi83 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.aw, i64 %index ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.ay, i64 %index ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !49
  %wide.load85 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !49
  %i.bb = sext <4 x i8> %wide.load to <4 x i32>
  %i.bc = sext <4 x i8> %wide.load85 to <4 x i32>
  %i.bd = getelementptr i8, ptr %next.gep84, i64 4
  %wide.load86 = load <4 x i8>, ptr %next.gep84, align 1, !tbaa !49
  %wide.load87 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !49
  %i.be = sext <4 x i8> %wide.load86 to <4 x i32>
  %i.bf = sext <4 x i8> %wide.load87 to <4 x i32>
  %i.bg = mul nsw <4 x i32> %i.be, %i.bb
  %i.bh = mul nsw <4 x i32> %i.bf, %i.bc
  %i.bi = add <4 x i32> %i.bg, %vec.phi           ; 2 uses
  %i.bj = add <4 x i32> %i.bh, %vec.phi83         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bj, %i.bi
  %i.bl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader90

.lr.ph.preheader90:                               ; preds = %.lr.ph.preheader, %middle.block
  %.03255.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.au, %middle.block ]
  %.03354.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bl, %middle.block ]
end_hunk_5
begin_hunk_6_@_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.8
define internal void @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45
  %i.g = load i32, ptr %3, align 4, !tbaa !57
  %i.h = sdiv i32 %i.f, %i.g                      ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.k = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !57
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 3 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !57
  %i.n = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not332 = icmp sgt i32 %i.n, %i.m
  br i1 %.not332, label %._crit_edge336, label %.lr.ph335

.lr.ph335:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 644
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 616
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 376
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 3 uses
  %i.w = sext i32 %i.n to i64
  %i.x = add nsw i32 %i.m, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph335, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ %i.w, %.lr.ph335 ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !57     ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.aa = load ptr, ptr %4, align 8, !tbaa !19
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !47
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %indvars.iv, %i.ad
  %i.af = load i64, ptr %i.q, align 8, !tbaa !48
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ai = phi <4 x i32> [ %i.ay, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.aj = phi <4 x i32> [ %i.ba, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %.063330 = phi ptr [ %i.bc, %.lr.ph ], [ %i.ah, %.lr.ph.preheader ] ; 2 uses
  %.064329 = phi ptr [ %i.bb, %.lr.ph ], [ %i.aa, %.lr.ph.preheader ] ; 2 uses
  %.065328 = phi i32 [ %i.bd, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ak = load i8, ptr %.064329, align 1, !tbaa !49
  %i.al = sext i8 %i.ak to i16
  %i.am = insertelement <8 x i16> poison, i16 %i.al, i64 0
  %i.an = shufflevector <8 x i16> %i.am, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ao = load i64, ptr %.063330, align 1, !tbaa !49
  %i.ap = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ao, i64 0
  %i.aq = bitcast <2 x i64> %i.ap to <16 x i8>    ; 2 uses
  %.lobit.i = ashr <16 x i8> %i.aq, splat (i8 7)
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> %.lobit.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.as = bitcast <16 x i8> %i.ar to <8 x i16>    ; 2 uses
  %i.at = mul <8 x i16> %i.an, %i.as              ; 2 uses
  %i.au = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.an, <8 x i16> %i.as) ; 2 uses
  %i.av = shufflevector <8 x i16> %i.at, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aw = shufflevector <8 x i16> %i.at, <8 x i16> %i.au, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ax = bitcast <8 x i16> %i.av to <4 x i32>
  %i.ay = add <4 x i32> %i.ai, %i.ax              ; 2 uses
  %i.az = bitcast <8 x i16> %i.aw to <4 x i32>
  %i.ba = add <4 x i32> %i.aj, %i.az              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.064329, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.063330, i64 8
  %i.bd = add nuw nsw i32 %.065328, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %i.y
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !156

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.be = sitofp fast <4 x i32> %i.ay to <4 x float>
  %i.bf = sitofp fast <4 x i32> %i.ba to <4 x float>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.lcssa327 = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.bf, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.be, %._crit_edge.loopexit ] ; 2 uses
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.bh = shl nsw i64 %indvars.iv, 3              ; 3 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh ; 2 uses
  %i.bj = load <4 x float>, ptr %i.bi, align 1, !tbaa !49 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bl = load <4 x float>, ptr %i.bk, align 1, !tbaa !49 ; 2 uses
  %i.bm = load i32, ptr %i.s, align 4, !tbaa !76
  %.not66 = icmp eq i32 %i.bm, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bn = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bh ; 2 uses
  %i.bp = load <4 x float>, ptr %i.bo, align 1, !tbaa !49
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.br = load <4 x float>, ptr %i.bq, align 1, !tbaa !49
  %i.bs = fmul fast <4 x float> %i.bj, %.lcssa
  %i.bt = fadd fast <4 x float> %i.bp, %i.bs
  %i.bu = fmul fast <4 x float> %i.bl, %.lcssa327
  %i.bv = fadd fast <4 x float> %i.br, %i.bu
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.bw = fmul fast <4 x float> %i.bj, %.lcssa
  %i.bx = fmul fast <4 x float> %i.bl, %.lcssa327
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.060 = phi nsz <4 x float> [ %i.bt, %bb.d ], [ %i.bw, %bb.e ] ; 10 uses
  %.059 = phi nsz <4 x float> [ %i.bv, %bb.d ], [ %i.bx, %bb.e ] ; 10 uses
  %i.by = load i32, ptr %i.u, align 8, !tbaa !63
  switch i32 %i.by, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread303
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread306
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread309
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread312
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread315
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread: ; preds = %bb.f
  %i.bz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.060, <4 x float> zeroinitializer)
  %i.ca = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.059, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread303: ; preds = %bb.f
  %i.cb = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !52
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.060)
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.060)
  %i.cf = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ch = fmul fast <4 x float> %i.cg, %i.ce
  %i.ci = fadd fast <4 x float> %i.ch, %i.cd
  %i.cj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.059)
  %i.ck = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.059)
  %i.cl = fmul fast <4 x float> %i.cg, %i.ck
  %i.cm = fadd fast <4 x float> %i.cl, %i.cj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread306: ; preds = %bb.f
  %i.cn = load ptr, ptr %i.v, align 8, !tbaa !19  ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !52
  %i.cp = insertelement <4 x float> poison, float %i.co, i64 0
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !52
  %i.ct = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.060, <4 x float> nofpclass(nan inf) %i.cq)
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cv, <4 x float> nofpclass(nan inf) %i.cu)
  %i.cx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.059, <4 x float> nofpclass(nan inf) %i.cq)
  %i.cy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cx, <4 x float> nofpclass(nan inf) %i.cu)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread309: ; preds = %bb.f
  %i.cz = fneg fast <4 x float> %.060
  %i.da = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> splat (float f0x42B0C0A5))
  %i.db = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.da, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dc = fmul fast <4 x float> %i.db, splat (float f0x3FB8AA3B)
  %i.dd = fadd fast <4 x float> %i.dc, splat (float 5.000000e-01) ; 2 uses
  %i.de = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dd)
  %i.df = sitofp fast <4 x i32> %i.de to <4 x float> ; 2 uses
  %i.dg = fcmp fast olt <4 x float> %i.dd, %i.df
  %i.dh = select <4 x i1> %i.dg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.di = fsub fast <4 x float> %i.df, %i.dh      ; 2 uses
  %i.dj = fmul fast <4 x float> %i.di, splat (float f0x3F317218)
  %i.dk = fsub fast <4 x float> %i.db, %i.dj      ; 8 uses
  %i.dl = fmul fast <4 x float> %i.dk, %i.dk
  %i.dm = fmul fast <4 x float> %i.dk, splat (float f0x39506967)
  %i.dn = fadd fast <4 x float> %i.dm, splat (float f0x3AB743CE)
  %i.do = fmul fast <4 x float> %i.dn, %i.dk
  %i.dp = fadd fast <4 x float> %i.do, splat (float f0x3C088908)
  %i.dq = fmul fast <4 x float> %i.dp, %i.dk
  %i.dr = fadd fast <4 x float> %i.dq, splat (float f0x3D2AA9C1)
  %i.ds = fmul fast <4 x float> %i.dr, %i.dk
  %i.dt = fadd fast <4 x float> %i.ds, splat (float f0x3E2AAAAA)
  %i.du = fmul fast <4 x float> %i.dt, %i.dk
  %i.dv = fadd fast <4 x float> %i.du, splat (float 5.000000e-01)
  %i.dw = fmul fast <4 x float> %i.dl, %i.dv
  %i.dx = fadd fast <4 x float> %i.dk, %i.dw
  %i.dy = fadd fast <4 x float> %i.dx, splat (float 1.000000e+00)
  %i.dz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.di)
  %i.ea = shl <4 x i32> %i.dz, splat (i32 23)
  %i.eb = add <4 x i32> %i.ea, splat (i32 1065353216)
  %i.ec = bitcast <4 x i32> %i.eb to <4 x float>
  %i.ed = fmul fast <4 x float> %i.dy, %i.ec
  %i.ee = fadd fast <4 x float> %i.ed, splat (float 1.000000e+00)
  %i.ef = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ee
  %i.eg = fneg fast <4 x float> %.059
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> splat (float f0x42B0C0A5))
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ej = fmul fast <4 x float> %i.ei, splat (float f0x3FB8AA3B)
  %i.ek = fadd fast <4 x float> %i.ej, splat (float 5.000000e-01) ; 2 uses
  %i.el = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ek)
  %i.em = sitofp fast <4 x i32> %i.el to <4 x float> ; 2 uses
  %i.en = fcmp fast olt <4 x float> %i.ek, %i.em
  %i.eo = select <4 x i1> %i.en, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ep = fsub fast <4 x float> %i.em, %i.eo      ; 2 uses
  %i.eq = fmul fast <4 x float> %i.ep, splat (float f0x3F317218)
  %i.er = fsub fast <4 x float> %i.ei, %i.eq      ; 8 uses
  %i.es = fmul fast <4 x float> %i.er, %i.er
  %i.et = fmul fast <4 x float> %i.er, splat (float f0x39506967)
  %i.eu = fadd fast <4 x float> %i.et, splat (float f0x3AB743CE)
  %i.ev = fmul fast <4 x float> %i.eu, %i.er
  %i.ew = fadd fast <4 x float> %i.ev, splat (float f0x3C088908)
  %i.ex = fmul fast <4 x float> %i.ew, %i.er
  %i.ey = fadd fast <4 x float> %i.ex, splat (float f0x3D2AA9C1)
  %i.ez = fmul fast <4 x float> %i.ey, %i.er
  %i.fa = fadd fast <4 x float> %i.ez, splat (float f0x3E2AAAAA)
  %i.fb = fmul fast <4 x float> %i.fa, %i.er
  %i.fc = fadd fast <4 x float> %i.fb, splat (float 5.000000e-01)
  %i.fd = fmul fast <4 x float> %i.es, %i.fc
  %i.fe = fadd fast <4 x float> %i.er, %i.fd
  %i.ff = fadd fast <4 x float> %i.fe, splat (float 1.000000e+00)
  %i.fg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ep)
  %i.fh = shl <4 x i32> %i.fg, splat (i32 23)
  %i.fi = add <4 x i32> %i.fh, splat (i32 1065353216)
  %i.fj = bitcast <4 x i32> %i.fi to <4 x float>
  %i.fk = fmul fast <4 x float> %i.ff, %i.fj
  %i.fl = fadd fast <4 x float> %i.fk, splat (float 1.000000e+00)
  %i.fm = fdiv fast <4 x float> splat (float 1.000000e+00), %i.fl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread312: ; preds = %bb.f
  %i.fn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.060, <4 x float> splat (float f0x42B0C0A5))
  %i.fo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fp = fmul fast <4 x float> %i.fo, splat (float f0x3FB8AA3B)
  %i.fq = fadd fast <4 x float> %i.fp, splat (float 5.000000e-01) ; 2 uses
  %i.fr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fq)
  %i.fs = sitofp fast <4 x i32> %i.fr to <4 x float> ; 2 uses
  %i.ft = fcmp fast olt <4 x float> %i.fq, %i.fs
  %i.fu = select <4 x i1> %i.ft, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fv = fsub fast <4 x float> %i.fs, %i.fu      ; 2 uses
  %i.fw = fmul fast <4 x float> %i.fv, splat (float f0x3F317218)
  %i.fx = fsub fast <4 x float> %i.fo, %i.fw      ; 8 uses
  %i.fy = fmul fast <4 x float> %i.fx, %i.fx
  %i.fz = fmul fast <4 x float> %i.fx, splat (float f0x39506967)
  %i.ga = fadd fast <4 x float> %i.fz, splat (float f0x3AB743CE)
  %i.gb = fmul fast <4 x float> %i.ga, %i.fx
  %i.gc = fadd fast <4 x float> %i.gb, splat (float f0x3C088908)
  %i.gd = fmul fast <4 x float> %i.gc, %i.fx
  %i.ge = fadd fast <4 x float> %i.gd, splat (float f0x3D2AA9C1)
  %i.gf = fmul fast <4 x float> %i.ge, %i.fx
  %i.gg = fadd fast <4 x float> %i.gf, splat (float f0x3E2AAAAA)
  %i.gh = fmul fast <4 x float> %i.gg, %i.fx
  %i.gi = fadd fast <4 x float> %i.gh, splat (float 5.000000e-01)
  %i.gj = fmul fast <4 x float> %i.fy, %i.gi
  %i.gk = fadd fast <4 x float> %i.fx, %i.gj
  %i.gl = fadd fast <4 x float> %i.gk, splat (float 1.000000e+00)
  %i.gm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fv)
  %i.gn = shl <4 x i32> %i.gm, splat (i32 23)
  %i.go = add <4 x i32> %i.gn, splat (i32 1065353216)
  %i.gp = bitcast <4 x i32> %i.go to <4 x float>
  %i.gq = fmul fast <4 x float> %i.gl, %i.gp
  %i.gr = fadd fast <4 x float> %i.gq, splat (float 1.000000e+00) ; 2 uses
  %i.gs = fcmp fast ole <4 x float> %i.gr, zeroinitializer
  %i.gt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gr, <4 x float> splat (float f0x00800000))
  %i.gu = bitcast <4 x float> %i.gt to <4 x i32>  ; 2 uses
  %i.gv = lshr <4 x i32> %i.gu, splat (i32 23)
  %i.gw = and <4 x i32> %i.gu, splat (i32 -2139095041)
  %i.gx = or disjoint <4 x i32> %i.gw, splat (i32 1056964608)
  %i.gy = bitcast <4 x i32> %i.gx to <4 x float>  ; 3 uses
  %i.gz = add nsw <4 x i32> %i.gv, splat (i32 -127)
  %i.ha = sitofp fast <4 x i32> %i.gz to <4 x float> ; 2 uses
  %i.hb = fadd fast <4 x float> %i.ha, splat (float 1.000000e+00)
  %i.hc = fcmp fast olt <4 x float> %i.gy, splat (float f0x3F3504F3) ; 2 uses
  %i.hd = select <4 x i1> %i.hc, <4 x float> %i.gy, <4 x float> zeroinitializer
  %i.he = fadd fast <4 x float> %i.gy, splat (float -1.000000e+00)
  %i.hf = select fast <4 x i1> %i.hc, <4 x float> %i.ha, <4 x float> %i.hb
  %i.hg = fadd fast <4 x float> %i.he, %i.hd      ; 12 uses
  %i.hh = fmul fast <4 x float> %i.hg, %i.hg
  %i.hi = fmul fast <4 x float> %i.hg, splat (float f0x3D9021BB)
  %i.hj = fadd fast <4 x float> %i.hi, splat (float f0xBDEBD1B8)
  %i.hk = fmul fast <4 x float> %i.hj, %i.hg
  %i.hl = fadd fast <4 x float> %i.hk, splat (float f0x3DEF251A)
  %i.hm = fmul fast <4 x float> %i.hl, %i.hg
  %i.hn = fadd fast <4 x float> %i.hm, splat (float f0xBDFE5D4F)
  %i.ho = fmul fast <4 x float> %i.hn, %i.hg
  %i.hp = fadd fast <4 x float> %i.ho, splat (float f0x3E11E9BF)
  %i.hq = fmul fast <4 x float> %i.hp, %i.hg
  %i.hr = fadd fast <4 x float> %i.hq, splat (float f0xBE2AAE50)
  %i.hs = fmul fast <4 x float> %i.hr, %i.hg
  %i.ht = fadd fast <4 x float> %i.hs, splat (float f0x3E4CCEAC)
  %i.hu = fmul fast <4 x float> %i.ht, %i.hg
  %i.hv = fadd fast <4 x float> %i.hu, splat (float f0xBE7FFFFC)
  %i.hw = fmul fast <4 x float> %i.hv, %i.hg
  %i.hx = fadd fast <4 x float> %i.hw, splat (float f0x3EAAAAAA)
  %i.hy = fmul fast <4 x float> %i.hx, %i.hg
  %reass.mul = fmul fast <4 x float> %i.hf, splat (float f0x3F317218)
  %reass.add323 = fadd fast <4 x float> %i.hy, splat (float -5.000000e-01)
  %reass.mul324 = fmul fast <4 x float> %i.hh, %reass.add323
  %i.hz = fadd fast <4 x float> %reass.mul, %i.hg
  %i.ia = fadd fast <4 x float> %i.hz, %reass.mul324
  %.neg = fmul fast <4 x float> %i.ia, splat (float -2.000000e+00)
  %i.ib = select fast <4 x i1> %i.gs, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ic = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ib, <4 x float> splat (float f0x42B0C0A5))
  %i.id = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ic, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ie = fmul fast <4 x float> %i.id, splat (float f0x3FB8AA3B)
  %i.if = fadd fast <4 x float> %i.ie, splat (float 5.000000e-01) ; 2 uses
  %i.ig = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.if)
  %i.ih = sitofp fast <4 x i32> %i.ig to <4 x float> ; 2 uses
  %i.ii = fcmp fast olt <4 x float> %i.if, %i.ih
  %i.ij = select <4 x i1> %i.ii, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ik = fsub fast <4 x float> %i.ih, %i.ij      ; 2 uses
  %i.il = fmul fast <4 x float> %i.ik, splat (float f0x3F317218)
  %i.im = fsub fast <4 x float> %i.id, %i.il      ; 8 uses
  %i.in = fmul fast <4 x float> %i.im, %i.im
  %i.io = fmul fast <4 x float> %i.im, splat (float f0x39506967)
  %i.ip = fadd fast <4 x float> %i.io, splat (float f0x3AB743CE)
  %i.iq = fmul fast <4 x float> %i.ip, %i.im
  %i.ir = fadd fast <4 x float> %i.iq, splat (float f0x3C088908)
  %i.is = fmul fast <4 x float> %i.ir, %i.im
  %i.it = fadd fast <4 x float> %i.is, splat (float f0x3D2AA9C1)
  %i.iu = fmul fast <4 x float> %i.it, %i.im
  %i.iv = fadd fast <4 x float> %i.iu, splat (float f0x3E2AAAAA)
  %i.iw = fmul fast <4 x float> %i.iv, %i.im
  %i.ix = fadd fast <4 x float> %i.iw, splat (float 5.000000e-01)
  %i.iy = fmul fast <4 x float> %i.in, %i.ix
  %i.iz = fadd fast <4 x float> %i.im, %i.iy
  %i.ja = fadd fast <4 x float> %i.iz, splat (float 1.000000e+00)
  %i.jb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ik)
  %i.jc = shl <4 x i32> %i.jb, splat (i32 23)
  %i.jd = add <4 x i32> %i.jc, splat (i32 1065353216)
  %i.je = bitcast <4 x i32> %i.jd to <4 x float>
  %i.jf = fmul fast <4 x float> %i.ja, %i.je
  %i.jg = fadd fast <4 x float> %i.jf, splat (float 1.000000e+00)
  %i.jh = fdiv fast <4 x float> splat (float 2.000000e+00), %i.jg
  %i.ji = fadd fast <4 x float> %i.jh, splat (float -1.000000e+00)
  %i.jj = fmul fast <4 x float> %i.ji, %.060
  %i.jk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.059, <4 x float> splat (float f0x42B0C0A5))
  %i.jl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jm = fmul fast <4 x float> %i.jl, splat (float f0x3FB8AA3B)
  %i.jn = fadd fast <4 x float> %i.jm, splat (float 5.000000e-01) ; 2 uses
  %i.jo = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jn)
  %i.jp = sitofp fast <4 x i32> %i.jo to <4 x float> ; 2 uses
  %i.jq = fcmp fast olt <4 x float> %i.jn, %i.jp
  %i.jr = select <4 x i1> %i.jq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.js = fsub fast <4 x float> %i.jp, %i.jr      ; 2 uses
  %i.jt = fmul fast <4 x float> %i.js, splat (float f0x3F317218)
  %i.ju = fsub fast <4 x float> %i.jl, %i.jt      ; 8 uses
  %i.jv = fmul fast <4 x float> %i.ju, %i.ju
  %i.jw = fmul fast <4 x float> %i.ju, splat (float f0x39506967)
  %i.jx = fadd fast <4 x float> %i.jw, splat (float f0x3AB743CE)
  %i.jy = fmul fast <4 x float> %i.jx, %i.ju
  %i.jz = fadd fast <4 x float> %i.jy, splat (float f0x3C088908)
  %i.ka = fmul fast <4 x float> %i.jz, %i.ju
  %i.kb = fadd fast <4 x float> %i.ka, splat (float f0x3D2AA9C1)
  %i.kc = fmul fast <4 x float> %i.kb, %i.ju
  %i.kd = fadd fast <4 x float> %i.kc, splat (float f0x3E2AAAAA)
  %i.ke = fmul fast <4 x float> %i.kd, %i.ju
  %i.kf = fadd fast <4 x float> %i.ke, splat (float 5.000000e-01)
  %i.kg = fmul fast <4 x float> %i.jv, %i.kf
  %i.kh = fadd fast <4 x float> %i.ju, %i.kg
  %i.ki = fadd fast <4 x float> %i.kh, splat (float 1.000000e+00)
  %i.kj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.js)
  %i.kk = shl <4 x i32> %i.kj, splat (i32 23)
  %i.kl = add <4 x i32> %i.kk, splat (i32 1065353216)
  %i.km = bitcast <4 x i32> %i.kl to <4 x float>
  %i.kn = fmul fast <4 x float> %i.ki, %i.km
  %i.ko = fadd fast <4 x float> %i.kn, splat (float 1.000000e+00) ; 2 uses
  %i.kp = fcmp fast ole <4 x float> %i.ko, zeroinitializer
  %i.kq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ko, <4 x float> splat (float f0x00800000))
  %i.kr = bitcast <4 x float> %i.kq to <4 x i32>  ; 2 uses
  %i.ks = lshr <4 x i32> %i.kr, splat (i32 23)
  %i.kt = and <4 x i32> %i.kr, splat (i32 -2139095041)
  %i.ku = or disjoint <4 x i32> %i.kt, splat (i32 1056964608)
  %i.kv = bitcast <4 x i32> %i.ku to <4 x float>  ; 3 uses
  %i.kw = add nsw <4 x i32> %i.ks, splat (i32 -127)
  %i.kx = sitofp fast <4 x i32> %i.kw to <4 x float> ; 2 uses
  %i.ky = fadd fast <4 x float> %i.kx, splat (float 1.000000e+00)
  %i.kz = fcmp fast olt <4 x float> %i.kv, splat (float f0x3F3504F3) ; 2 uses
  %i.la = select <4 x i1> %i.kz, <4 x float> %i.kv, <4 x float> zeroinitializer
  %i.lb = fadd fast <4 x float> %i.kv, splat (float -1.000000e+00)
  %i.lc = select fast <4 x i1> %i.kz, <4 x float> %i.kx, <4 x float> %i.ky
  %i.ld = fadd fast <4 x float> %i.lb, %i.la      ; 12 uses
  %i.le = fmul fast <4 x float> %i.ld, %i.ld
  %i.lf = fmul fast <4 x float> %i.ld, splat (float f0x3D9021BB)
  %i.lg = fadd fast <4 x float> %i.lf, splat (float f0xBDEBD1B8)
  %i.lh = fmul fast <4 x float> %i.lg, %i.ld
  %i.li = fadd fast <4 x float> %i.lh, splat (float f0x3DEF251A)
  %i.lj = fmul fast <4 x float> %i.li, %i.ld
  %i.lk = fadd fast <4 x float> %i.lj, splat (float f0xBDFE5D4F)
  %i.ll = fmul fast <4 x float> %i.lk, %i.ld
  %i.lm = fadd fast <4 x float> %i.ll, splat (float f0x3E11E9BF)
  %i.ln = fmul fast <4 x float> %i.lm, %i.ld
  %i.lo = fadd fast <4 x float> %i.ln, splat (float f0xBE2AAE50)
  %i.lp = fmul fast <4 x float> %i.lo, %i.ld
  %i.lq = fadd fast <4 x float> %i.lp, splat (float f0x3E4CCEAC)
  %i.lr = fmul fast <4 x float> %i.lq, %i.ld
  %i.ls = fadd fast <4 x float> %i.lr, splat (float f0xBE7FFFFC)
  %i.lt = fmul fast <4 x float> %i.ls, %i.ld
  %i.lu = fadd fast <4 x float> %i.lt, splat (float f0x3EAAAAAA)
  %i.lv = fmul fast <4 x float> %i.lu, %i.ld
  %reass.mul322 = fmul fast <4 x float> %i.lc, splat (float f0x3F317218)
  %reass.add325 = fadd fast <4 x float> %i.lv, splat (float -5.000000e-01)
  %reass.mul326 = fmul fast <4 x float> %i.le, %reass.add325
  %i.lw = fadd fast <4 x float> %reass.mul322, %i.ld
  %i.lx = fadd fast <4 x float> %i.lw, %reass.mul326
  %.neg318 = fmul fast <4 x float> %i.lx, splat (float -2.000000e+00)
  %i.ly = select fast <4 x i1> %i.kp, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg318
  %i.lz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ly, <4 x float> splat (float f0x42B0C0A5))
  %i.ma = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mb = fmul fast <4 x float> %i.ma, splat (float f0x3FB8AA3B)
  %i.mc = fadd fast <4 x float> %i.mb, splat (float 5.000000e-01) ; 2 uses
  %i.md = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mc)
  %i.me = sitofp fast <4 x i32> %i.md to <4 x float> ; 2 uses
  %i.mf = fcmp fast olt <4 x float> %i.mc, %i.me
  %i.mg = select <4 x i1> %i.mf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mh = fsub fast <4 x float> %i.me, %i.mg      ; 2 uses
  %i.mi = fmul fast <4 x float> %i.mh, splat (float f0x3F317218)
  %i.mj = fsub fast <4 x float> %i.ma, %i.mi      ; 8 uses
  %i.mk = fmul fast <4 x float> %i.mj, %i.mj
  %i.ml = fmul fast <4 x float> %i.mj, splat (float f0x39506967)
  %i.mm = fadd fast <4 x float> %i.ml, splat (float f0x3AB743CE)
  %i.mn = fmul fast <4 x float> %i.mm, %i.mj
  %i.mo = fadd fast <4 x float> %i.mn, splat (float f0x3C088908)
  %i.mp = fmul fast <4 x float> %i.mo, %i.mj
  %i.mq = fadd fast <4 x float> %i.mp, splat (float f0x3D2AA9C1)
  %i.mr = fmul fast <4 x float> %i.mq, %i.mj
  %i.ms = fadd fast <4 x float> %i.mr, splat (float f0x3E2AAAAA)
  %i.mt = fmul fast <4 x float> %i.ms, %i.mj
  %i.mu = fadd fast <4 x float> %i.mt, splat (float 5.000000e-01)
  %i.mv = fmul fast <4 x float> %i.mk, %i.mu
  %i.mw = fadd fast <4 x float> %i.mj, %i.mv
  %i.mx = fadd fast <4 x float> %i.mw, splat (float 1.000000e+00)
  %i.my = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mh)
  %i.mz = shl <4 x i32> %i.my, splat (i32 23)
  %i.na = add <4 x i32> %i.mz, splat (i32 1065353216)
  %i.nb = bitcast <4 x i32> %i.na to <4 x float>
  %i.nc = fmul fast <4 x float> %i.mx, %i.nb
  %i.nd = fadd fast <4 x float> %i.nc, splat (float 1.000000e+00)
  %i.ne = fdiv fast <4 x float> splat (float 2.000000e+00), %i.nd
  %i.nf = fadd fast <4 x float> %i.ne, splat (float -1.000000e+00)
  %i.ng = fmul fast <4 x float> %i.nf, %.059
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread315: ; preds = %bb.f
  %i.nh = load ptr, ptr %i.v, align 8, !tbaa !19  ; 2 uses
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !52
  %i.nj = insertelement <4 x float> poison, float %i.ni, i64 0
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !52
  %i.nn = insertelement <4 x float> poison, float %i.nm, i64 0
  %i.no = shufflevector <4 x float> %i.nn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.np = fmul fast <4 x float> %i.nk, %.060
  %i.nq = fadd fast <4 x float> %i.np, %i.no
  %i.nr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nq, <4 x float> zeroinitializer)
  %i.ns = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nr, <4 x float> splat (float 1.000000e+00))
  %i.nt = fmul fast <4 x float> %i.ns, %.060
  %i.nu = fmul fast <4 x float> %i.nk, %.059
  %i.nv = fadd fast <4 x float> %i.nu, %i.no
  %i.nw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nv, <4 x float> zeroinitializer)
  %i.nx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nw, <4 x float> splat (float 1.000000e+00))
  %i.ny = fmul fast <4 x float> %i.nx, %.059
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.f, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread315, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread312, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread309, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread306, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread303, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread
  %.0.i70302 = phi <4 x float> [ %i.nt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread315 ], [ %i.bz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread ], [ %i.ci, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread303 ], [ %i.cw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread306 ], [ %i.ef, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread309 ], [ %i.jj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread312 ], [ %.060, %bb.f ]
  %.0.i = phi nsz <4 x float> [ %i.ny, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread315 ], [ %i.ca, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread ], [ %i.cm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread303 ], [ %i.cy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread306 ], [ %i.fm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread309 ], [ %i.ng, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit75.thread312 ], [ %.059, %bb.f ]
  %i.nz = load ptr, ptr %6, align 8, !tbaa !19
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.bh ; 2 uses
  store <4 x float> %.0.i70302, ptr %i.oa, align 1, !tbaa !49
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  store <4 x float> %.0.i, ptr %i.ob, align 1, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond340.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond340.not, label %._crit_edge336, label %bb.c

._crit_edge336:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge336, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45
  %i.g = load i32, ptr %3, align 4, !tbaa !57
  %i.h = sdiv i32 %i.f, %i.g                      ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.k = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !57
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 3 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !57
  %i.n = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not54 = icmp sgt i32 %i.n, %i.m
  br i1 %.not54, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 644
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 616
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %factor.op.mul = mul i64 %i.u, %i.s
  %i.v = load ptr, ptr %4, align 8, !tbaa !19     ; 3 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !57     ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !76
  %.not37 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 376
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 3 uses
  %i.ag = load ptr, ptr %6, align 8, !tbaa !19
  %i.ah = sext i32 %i.n to i64
  %i.ai = add nsw i32 %i.m, 1
  %i.aj = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.w, 8
  %n.vec = and i64 %i.aj, 2147483640              ; 5 uses
  %i.ak = trunc nuw nsw i64 %n.vec to i32
  %i.al = getelementptr i8, ptr %i.v, i64 %n.vec
  %cmp.n = icmp eq i64 %n.vec, %i.aj
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph57, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph57 ], [ %indvars.iv.next, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 5 uses
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 %.reass ; 3 uses
  br i1 %min.iters.check, label %.lr.ph.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.an = getelementptr i8, ptr %i.am, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi67 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.v, i64 %index ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.am, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !49
  %wide.load69 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !49
  %i.ap = getelementptr i8, ptr %next.gep68, i64 4
  %wide.load70 = load <4 x i8>, ptr %next.gep68, align 1, !tbaa !49
  %wide.load71 = load <4 x i8>, ptr %i.ap, align 1, !tbaa !49
  %i.aq = sext <4 x i8> %wide.load to <4 x i32>
  %i.ar = sext <4 x i8> %wide.load69 to <4 x i32>
  %i.as = sext <4 x i8> %wide.load70 to <4 x i32>
  %i.at = sext <4 x i8> %wide.load71 to <4 x i32>
  %i.au = mul nsw <4 x i32> %i.as, %i.aq
  %i.av = mul nsw <4 x i32> %i.at, %i.ar
  %i.aw = add <4 x i32> %i.au, %vec.phi           ; 2 uses
  %i.ax = add <4 x i32> %i.av, %vec.phi67         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ax, %i.aw
  %i.az = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader74

.lr.ph.preheader74:                               ; preds = %.lr.ph.preheader, %middle.block
  %.03353.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %.03452.ph = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  %.03551.ph = phi ptr [ %i.am, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  %.03650.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader74, %.lr.ph
  %.03353 = phi i32 [ %i.bi, %.lr.ph ], [ %.03353.ph, %.lr.ph.preheader74 ]
  %.03452 = phi ptr [ %i.bg, %.lr.ph ], [ %.03452.ph, %.lr.ph.preheader74 ] ; 2 uses
  %.03551 = phi ptr [ %i.bh, %.lr.ph ], [ %.03551.ph, %.lr.ph.preheader74 ] ; 2 uses
  %.03650 = phi i32 [ %i.bf, %.lr.ph ], [ %.03650.ph, %.lr.ph.preheader74 ]
  %i.ba = load i8, ptr %.03452, align 1, !tbaa !49
  %i.bb = load i8, ptr %.03551, align 1, !tbaa !49
  %i.bc = sext i8 %i.ba to i32
  %i.bd = sext i8 %i.bb to i32
  %i.be = mul nsw i32 %i.bd, %i.bc
  %i.bf = add nsw i32 %i.be, %.03650              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.03452, i64 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.03551, i64 1
  %i.bi = add nuw nsw i32 %.03353, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %i.w
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !158

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.az, %middle.block ], [ %i.bf, %.lr.ph ]
  %i.bj = sitofp fast i32 %.lcssa to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.036.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.bj, %._crit_edge.loopexit ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !52
  %i.bm = fmul fast float %i.bl, %.036.lcssa      ; 2 uses
  br i1 %.not37, label %bb.e, label %bb.d

end_hunk_6
