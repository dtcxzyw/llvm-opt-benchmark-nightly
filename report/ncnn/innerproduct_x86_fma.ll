Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86_fma?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4ncnnL22innerproduct_fp16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.10:bb.a

bb.c:                                             ; preds = %.lr.ph393, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ %i.n, %.lr.ph393 ], [ %indvars.iv.next, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.o = shl nsw i64 %indvars.iv, 3               ; 10 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !107    ; 2 uses
  %.not118 = icmp eq ptr %i.p, null
  br i1 %.not118, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load <8 x float>, ptr %i.q, align 4, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0 = phi nsz <8 x float> [ zeroinitializer, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !18     ; 8 uses
  %i.t = load i32, ptr %i.l, align 4, !tbaa !49
  %i.u = sext i32 %i.t to i64
  %i.v = load i64, ptr %i.m, align 8, !tbaa !50
  %i.w = mul i64 %i.v, %i.u                       ; 8 uses
  %i.x = mul i64 %i.w, %i.o
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = or disjoint i64 %i.o, 1
  %i.aa = mul i64 %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aa ; 2 uses
  %i.ac = or disjoint i64 %i.o, 2
  %i.ad = mul i64 %i.w, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ad ; 2 uses
  %i.af = or disjoint i64 %i.o, 3
  %i.ag = mul i64 %i.w, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ag ; 2 uses
  %i.ai = or disjoint i64 %i.o, 4
  %i.aj = mul i64 %i.w, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aj ; 2 uses
  %i.al = or disjoint i64 %i.o, 5
  %i.am = mul i64 %i.w, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.am ; 2 uses
  %i.ao = or disjoint i64 %i.o, 6
  %i.ap = mul i64 %i.w, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ap ; 2 uses
  %i.ar = or disjoint i64 %i.o, 7
  %i.as = mul i64 %i.w, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.av = load i32, ptr %6, align 4, !tbaa !100   ; 4 uses
  %i.aw = icmp sgt i32 %i.av, 7
  br i1 %i.aw, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.ax = and i32 %i.av, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.0340.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.bm, %.preheader.loopexit ]
  %.0339.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.bn, %.preheader.loopexit ]
  %.0338.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.bo, %.preheader.loopexit ]
  %.0337.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.bp, %.preheader.loopexit ]
  %.0336.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.cc, %.preheader.loopexit ]
  %.0335.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.cd, %.preheader.loopexit ]
  %.0334.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.ce, %.preheader.loopexit ]
  %.0333.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.cf, %.preheader.loopexit ]
  %.0115.lcssa = phi ptr [ %i.y, %bb.e ], [ %i.ch, %.preheader.loopexit ]
  %.0113.lcssa = phi ptr [ %i.ab, %bb.e ], [ %i.ci, %.preheader.loopexit ]
  %.0111.lcssa = phi ptr [ %i.ae, %bb.e ], [ %i.cj, %.preheader.loopexit ]
  %.0109.lcssa = phi ptr [ %i.ah, %bb.e ], [ %i.ck, %.preheader.loopexit ]
  %.0107.lcssa = phi ptr [ %i.ak, %bb.e ], [ %i.cl, %.preheader.loopexit ]
  %.0105.lcssa = phi ptr [ %i.an, %bb.e ], [ %i.cm, %.preheader.loopexit ]
  %.0103.lcssa = phi ptr [ %i.aq, %bb.e ], [ %i.cn, %.preheader.loopexit ]
  %.0101.lcssa = phi ptr [ %i.at, %bb.e ], [ %i.co, %.preheader.loopexit ]
  %.099.lcssa = phi ptr [ %i.au, %bb.e ], [ %i.cg, %.preheader.loopexit ]
  %.098.lcssa = phi i32 [ 0, %bb.e ], [ %i.ax, %.preheader.loopexit ] ; 2 uses
  %i.ay = icmp slt i32 %.098.lcssa, %i.av
  br i1 %i.ay, label %.lr.ph388, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.098359 = phi i32 [ %i.cp, %.lr.ph ], [ 0, %bb.e ]
  %.099358 = phi ptr [ %i.cg, %.lr.ph ], [ %i.au, %bb.e ] ; 2 uses
  %.0101357 = phi ptr [ %i.co, %.lr.ph ], [ %i.at, %bb.e ] ; 2 uses
  %.0103356 = phi ptr [ %i.cn, %.lr.ph ], [ %i.aq, %bb.e ] ; 2 uses
  %.0105355 = phi ptr [ %i.cm, %.lr.ph ], [ %i.an, %bb.e ] ; 2 uses
  %.0107354 = phi ptr [ %i.cl, %.lr.ph ], [ %i.ak, %bb.e ] ; 2 uses
  %.0109353 = phi ptr [ %i.ck, %.lr.ph ], [ %i.ah, %bb.e ] ; 2 uses
  %.0111352 = phi ptr [ %i.cj, %.lr.ph ], [ %i.ae, %bb.e ] ; 2 uses
  %.0113351 = phi ptr [ %i.ci, %.lr.ph ], [ %i.ab, %bb.e ] ; 2 uses
  %.0115350 = phi ptr [ %i.ch, %.lr.ph ], [ %i.y, %bb.e ] ; 2 uses
  %.0333349 = phi <8 x float> [ %i.cf, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0334348 = phi <8 x float> [ %i.ce, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0335347 = phi <8 x float> [ %i.cd, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0336346 = phi <8 x float> [ %i.cc, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0337345 = phi <8 x float> [ %i.bp, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0338344 = phi <8 x float> [ %i.bo, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0339343 = phi <8 x float> [ %i.bn, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0340342 = phi <8 x float> [ %i.bm, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %i.az = load <8 x float>, ptr %.099358, align 1, !tbaa !77 ; 8 uses
  %i.ba = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0115350)
  %i.bb = bitcast <16 x i8> %i.ba to <8 x half>
  %i.bc = fpext fast <8 x half> %i.bb to <8 x float>
  %i.bd = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0113351)
  %i.be = bitcast <16 x i8> %i.bd to <8 x half>
  %i.bf = fpext fast <8 x half> %i.be to <8 x float>
  %i.bg = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0111352)
  %i.bh = bitcast <16 x i8> %i.bg to <8 x half>
  %i.bi = fpext fast <8 x half> %i.bh to <8 x float>
  %i.bj = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0109353)
  %i.bk = bitcast <16 x i8> %i.bj to <8 x half>
  %i.bl = fpext fast <8 x half> %i.bk to <8 x float>
  %i.bm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.bc, <8 x float> nofpclass(nan inf) %.0340342) ; 2 uses
  %i.bn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.bf, <8 x float> nofpclass(nan inf) %.0339343) ; 2 uses
  %i.bo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.bi, <8 x float> nofpclass(nan inf) %.0338344) ; 2 uses
  %i.bp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.bl, <8 x float> nofpclass(nan inf) %.0337345) ; 2 uses
  %i.bq = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0107354)
  %i.br = bitcast <16 x i8> %i.bq to <8 x half>
  %i.bs = fpext fast <8 x half> %i.br to <8 x float>
  %i.bt = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0105355)
  %i.bu = bitcast <16 x i8> %i.bt to <8 x half>
  %i.bv = fpext fast <8 x half> %i.bu to <8 x float>
  %i.bw = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0103356)
  %i.bx = bitcast <16 x i8> %i.bw to <8 x half>
  %i.by = fpext fast <8 x half> %i.bx to <8 x float>
  %i.bz = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0101357)
  %i.ca = bitcast <16 x i8> %i.bz to <8 x half>
  %i.cb = fpext fast <8 x half> %i.ca to <8 x float>
  %i.cc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %.0336346) ; 2 uses
  %i.cd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.bv, <8 x float> nofpclass(nan inf) %.0335347) ; 2 uses
  %i.ce = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.by, <8 x float> nofpclass(nan inf) %.0334348) ; 2 uses
  %i.cf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.cb, <8 x float> nofpclass(nan inf) %.0333349) ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.099358, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0115350, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0113351, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0111352, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0109353, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0107354, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0105355, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0103356, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0101357, i64 16 ; 2 uses
  %i.cp = add nuw nsw i32 %.098359, 8             ; 2 uses
  %i.cq = or disjoint i32 %i.cp, 7
  %i.cr = icmp slt i32 %i.cq, %i.av
  br i1 %i.cr, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !267

.lr.ph388:                                        ; preds = %.preheader, %bb.m
  %.1387 = phi i32 [ %i.ea, %bb.m ], [ %.098.lcssa, %.preheader ]
  %.1100386 = phi ptr [ %i.dr, %bb.m ], [ %.099.lcssa, %.preheader ] ; 9 uses
  %.1102385 = phi ptr [ %i.dz, %bb.m ], [ %.0101.lcssa, %.preheader ] ; 2 uses
  %.1104384 = phi ptr [ %i.dy, %bb.m ], [ %.0103.lcssa, %.preheader ] ; 2 uses
  %.1106383 = phi ptr [ %i.dx, %bb.m ], [ %.0105.lcssa, %.preheader ] ; 2 uses
  %.1108382 = phi ptr [ %i.dw, %bb.m ], [ %.0107.lcssa, %.preheader ] ; 2 uses
  %.1110381 = phi ptr [ %i.dv, %bb.m ], [ %.0109.lcssa, %.preheader ] ; 2 uses
  %.1112380 = phi ptr [ %i.du, %bb.m ], [ %.0111.lcssa, %.preheader ] ; 2 uses
  %.1114379 = phi ptr [ %i.dt, %bb.m ], [ %.0113.lcssa, %.preheader ] ; 2 uses
  %.1116378 = phi ptr [ %i.ds, %bb.m ], [ %.0115.lcssa, %.preheader ] ; 2 uses
  %.sroa.0.1377 = phi <8 x float> [ %i.dq, %bb.m ], [ %.sroa.0.0, %.preheader ]
  %i.cs = load float, ptr %.1100386, align 4, !tbaa !51
  %i.ct = load i16, ptr %.1116378, align 2, !tbaa !121
  %i.cu = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.ct)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %.lr.ph388
  %i.cv = load float, ptr %.1100386, align 4, !tbaa !51
  %i.cw = load i16, ptr %.1114379, align 2, !tbaa !121
  %i.cx = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.cw)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.cy = load float, ptr %.1100386, align 4, !tbaa !51
  %i.cz = load i16, ptr %.1112380, align 2, !tbaa !121
  %i.da = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.cz)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.db = load float, ptr %.1100386, align 4, !tbaa !51
  %i.dc = load i16, ptr %.1110381, align 2, !tbaa !121
  %i.dd = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.dc)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.de = load float, ptr %.1100386, align 4, !tbaa !51
  %i.df = load i16, ptr %.1108382, align 2, !tbaa !121
  %i.dg = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.df)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.dh = load float, ptr %.1100386, align 4, !tbaa !51
  %i.di = load i16, ptr %.1106383, align 2, !tbaa !121
  %i.dj = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.di)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.dk = load float, ptr %.1100386, align 4, !tbaa !51
  %i.dl = load i16, ptr %.1104384, align 2, !tbaa !121
  %i.dm = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.dl)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.dn = load float, ptr %.1100386, align 4, !tbaa !51
  %i.do = load i16, ptr %.1102385, align 2, !tbaa !121
  %i.dp = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.do)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %10 = insertelement <8 x float> poison, float %i.cu, i64 0
  %11 = insertelement <8 x float> %10, float %i.cx, i64 1
  %12 = insertelement <8 x float> %11, float %i.da, i64 2
  %13 = insertelement <8 x float> %12, float %i.dd, i64 3
  %14 = insertelement <8 x float> %13, float %i.dg, i64 4
  %15 = insertelement <8 x float> %14, float %i.dj, i64 5
  %16 = insertelement <8 x float> %15, float %i.dm, i64 6
  %17 = insertelement <8 x float> %16, float %i.dp, i64 7
  %18 = insertelement <8 x float> poison, float %i.cs, i64 0
  %19 = insertelement <8 x float> %18, float %i.cv, i64 1
  %20 = insertelement <8 x float> %19, float %i.cy, i64 2
  %21 = insertelement <8 x float> %20, float %i.db, i64 3
  %22 = insertelement <8 x float> %21, float %i.de, i64 4
  %23 = insertelement <8 x float> %22, float %i.dh, i64 5
  %24 = insertelement <8 x float> %23, float %i.dk, i64 6
  %25 = insertelement <8 x float> %24, float %i.dn, i64 7
  %26 = fmul fast <8 x float> %17, %25
  %i.dq = fadd fast <8 x float> %26, %.sroa.0.1377 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1100386, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.1116378, i64 2
  %i.dt = getelementptr inbounds nuw i8, ptr %.1114379, i64 2
  %i.du = getelementptr inbounds nuw i8, ptr %.1112380, i64 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.1110381, i64 2
  %i.dw = getelementptr inbounds nuw i8, ptr %.1108382, i64 2
  %i.dx = getelementptr inbounds nuw i8, ptr %.1106383, i64 2
  %i.dy = getelementptr inbounds nuw i8, ptr %.1104384, i64 2
  %i.dz = getelementptr inbounds nuw i8, ptr %.1102385, i64 2
  %i.ea = add nuw nsw i32 %.1387, 1               ; 2 uses
  %i.eb = load i32, ptr %6, align 4, !tbaa !100
  %i.ec = icmp slt i32 %i.ea, %i.eb
  br i1 %i.ec, label %.lr.ph388, label %._crit_edge, !llvm.loop !268

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %.sroa.0.1.lcssa = phi <8 x float> [ %.sroa.0.0, %.preheader ], [ %i.dq, %bb.m ]
  %i.ed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0340.lcssa, <8 x float> nofpclass(nan inf) %.0339.lcssa)
  %i.ee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0338.lcssa, <8 x float> nofpclass(nan inf) %.0337.lcssa)
  %i.ef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0336.lcssa, <8 x float> nofpclass(nan inf) %.0335.lcssa)
  %i.eg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0334.lcssa, <8 x float> nofpclass(nan inf) %.0333.lcssa)
  %i.eh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.ee) ; 2 uses
  %i.ei = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %i.ef, <8 x float> nofpclass(nan inf) %i.eg) ; 2 uses
  %i.ej = shufflevector <8 x float> %i.eh, <8 x float> %i.ei, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ek = shufflevector <8 x float> %i.eh, <8 x float> %i.ei, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.el = fadd fast <8 x float> %i.ek, %.sroa.0.1.lcssa
  %i.em = fadd fast <8 x float> %i.el, %i.ej      ; 10 uses
  %i.en = load i32, ptr %7, align 4, !tbaa !100
  switch i32 %i.en, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.n
    i32 2, label %.noexc
    i32 3, label %.noexc120
    i32 4, label %.noexc121
    i32 5, label %.noexc122
    i32 6, label %.noexc125
  ]

bb.n:                                             ; preds = %._crit_edge
  %i.eo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.em, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.ep = load ptr, ptr %8, align 8, !tbaa !18
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !51
  %i.er = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.em)
  %i.es = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.em)
  %i.et = insertelement <8 x float> poison, float %i.eq, i64 0
  %i.eu = shufflevector <8 x float> %i.et, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ev = fmul fast <8 x float> %i.eu, %i.es
  %i.ew = fadd fast <8 x float> %i.ev, %i.er
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc120:                                        ; preds = %._crit_edge
  %i.ex = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !51
  %i.ez = insertelement <8 x float> poison, float %i.ey, i64 0
  %i.fa = shufflevector <8 x float> %i.ez, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !51
  %i.fd = insertelement <8 x float> poison, float %i.fc, i64 0
  %i.fe = shufflevector <8 x float> %i.fd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ff = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.em, <8 x float> nofpclass(nan inf) %i.fa)
  %i.fg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ff, <8 x float> nofpclass(nan inf) %i.fe)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc121:                                        ; preds = %._crit_edge
  %i.fh = fneg fast <8 x float> %i.em
  %i.fi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> splat (float f0x42B0C0A5))
  %i.fj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fj, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fl = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fk, i32 1) ; 2 uses
  %i.fm = fcmp fast ogt <8 x float> %i.fl, %i.fk
  %i.fn = select <8 x i1> %i.fm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fo = fsub fast <8 x float> %i.fl, %i.fn      ; 2 uses
  %i.fp = fneg fast <8 x float> %i.fo             ; 2 uses
  %i.fq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fj)
  %i.fr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fq) ; 8 uses
  %i.fs = fmul fast <8 x float> %i.fr, %i.fr
  %i.ft = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fr, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.fu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ft, <8 x float> nofpclass(nan inf) %i.fr, <8 x float> splat (float f0x3C088908))
  %i.fv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fu, <8 x float> nofpclass(nan inf) %i.fr, <8 x float> splat (float f0x3D2AA9C1))
  %i.fw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fv, <8 x float> nofpclass(nan inf) %i.fr, <8 x float> splat (float f0x3E2AAAAA))
  %i.fx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fw, <8 x float> nofpclass(nan inf) %i.fr, <8 x float> splat (float 5.000000e-01))
  %i.fy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fx, <8 x float> nofpclass(nan inf) %i.fs, <8 x float> nofpclass(nan inf) %i.fr)
  %i.fz = fadd fast <8 x float> %i.fy, splat (float 1.000000e+00)
  %i.ga = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fo)
  %i.gb = shl <8 x i32> %i.ga, splat (i32 23)
  %i.gc = add <8 x i32> %i.gb, splat (i32 1065353216)
  %i.gd = bitcast <8 x i32> %i.gc to <8 x float>
  %i.ge = fmul fast <8 x float> %i.fz, %i.gd
  %i.gf = fadd fast <8 x float> %i.ge, splat (float 1.000000e+00)
  %i.gg = fdiv fast <8 x float> splat (float 1.000000e+00), %i.gf
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc122:                                        ; preds = %._crit_edge
  %i.gh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.em, <8 x float> splat (float f0x42B0C0A5))
  %i.gi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gi, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.gk = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gj, i32 1) ; 2 uses
  %i.gl = fcmp fast ogt <8 x float> %i.gk, %i.gj
  %i.gm = select <8 x i1> %i.gl, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gn = fsub fast <8 x float> %i.gk, %i.gm      ; 2 uses
  %i.go = fneg fast <8 x float> %i.gn             ; 2 uses
  %i.gp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.go, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.gi)
  %i.gq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.go, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.gp) ; 8 uses
  %i.gr = fmul fast <8 x float> %i.gq, %i.gq
  %i.gs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gq, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.gt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gs, <8 x float> nofpclass(nan inf) %i.gq, <8 x float> splat (float f0x3C088908))
  %i.gu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gt, <8 x float> nofpclass(nan inf) %i.gq, <8 x float> splat (float f0x3D2AA9C1))
  %i.gv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gu, <8 x float> nofpclass(nan inf) %i.gq, <8 x float> splat (float f0x3E2AAAAA))
  %i.gw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gv, <8 x float> nofpclass(nan inf) %i.gq, <8 x float> splat (float 5.000000e-01))
  %i.gx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gw, <8 x float> nofpclass(nan inf) %i.gr, <8 x float> nofpclass(nan inf) %i.gq)
  %i.gy = fadd fast <8 x float> %i.gx, splat (float 1.000000e+00)
  %i.gz = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gn)
  %i.ha = shl <8 x i32> %i.gz, splat (i32 23)
  %i.hb = add <8 x i32> %i.ha, splat (i32 1065353216)
  %i.hc = bitcast <8 x i32> %i.hb to <8 x float>
  %i.hd = fmul fast <8 x float> %i.gy, %i.hc
  %i.he = fadd fast <8 x float> %i.hd, splat (float 1.000000e+00) ; 2 uses
  %i.hf = fcmp fast ole <8 x float> %i.he, zeroinitializer
  %i.hg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.he, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.hh = bitcast <8 x float> %i.hg to <8 x i32>
  %i.hi = bitcast <8 x float> %i.hg to <8 x i32>
  %i.hj = and <8 x i32> %i.hi, splat (i32 -2139095041)
  %i.hk = or disjoint <8 x i32> %i.hj, splat (i32 1056964608)
  %i.hl = bitcast <8 x i32> %i.hk to <8 x float>  ; 3 uses
  %i.hm = lshr <8 x i32> %i.hh, splat (i32 23)
  %i.hn = add nsw <8 x i32> %i.hm, splat (i32 -127)
  %i.ho = sitofp fast <8 x i32> %i.hn to <8 x float> ; 2 uses
  %i.hp = fadd fast <8 x float> %i.ho, splat (float 1.000000e+00)
  %i.hq = fcmp fast olt <8 x float> %i.hl, splat (float f0x3F3504F3) ; 2 uses
  %i.hr = select <8 x i1> %i.hq, <8 x float> %i.hl, <8 x float> zeroinitializer
  %i.hs = fadd fast <8 x float> %i.hl, splat (float -1.000000e+00)
  %i.ht = select fast <8 x i1> %i.hq, <8 x float> %i.ho, <8 x float> %i.hp ; 2 uses
  %i.hu = fadd fast <8 x float> %i.hs, %i.hr      ; 12 uses
  %i.hv = fmul fast <8 x float> %i.hu, %i.hu      ; 2 uses
  %i.hw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hu, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.hx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hw, <8 x float> nofpclass(nan inf) %i.hu, <8 x float> splat (float f0x3DEF251A))
  %i.hy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hx, <8 x float> nofpclass(nan inf) %i.hu, <8 x float> splat (float f0xBDFE5D4F))
  %i.hz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hy, <8 x float> nofpclass(nan inf) %i.hu, <8 x float> splat (float f0x3E11E9BF))
  %i.ia = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hz, <8 x float> nofpclass(nan inf) %i.hu, <8 x float> splat (float f0xBE2AAE50))
  %i.ib = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ia, <8 x float> nofpclass(nan inf) %i.hu, <8 x float> splat (float f0x3E4CCEAC))
  %i.ic = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ib, <8 x float> nofpclass(nan inf) %i.hu, <8 x float> splat (float f0xBE7FFFFC))
  %i.id = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ic, <8 x float> nofpclass(nan inf) %i.hu, <8 x float> splat (float f0x3EAAAAAA))
  %i.ie = fmul fast <8 x float> %i.hv, %i.hu
  %i.if = fmul fast <8 x float> %i.ie, %i.id
  %i.ig = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ht, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.if)
  %i.ih = fneg fast <8 x float> %i.hv
  %i.ii = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ih, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ig)
  %i.ij = fadd fast <8 x float> %i.ii, %i.hu
  %i.ik = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ht, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ij)
  %.neg = fmul fast <8 x float> %i.ik, splat (float -2.000000e+00)
  %i.il = select fast <8 x i1> %i.hf, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.im = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.il, <8 x float> splat (float f0x42B0C0A5))
  %i.in = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.im, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.io = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.in, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ip = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.io, i32 1) ; 2 uses
  %i.iq = fcmp fast ogt <8 x float> %i.ip, %i.io
  %i.ir = select <8 x i1> %i.iq, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.is = fsub fast <8 x float> %i.ip, %i.ir      ; 2 uses
  %i.it = fneg fast <8 x float> %i.is             ; 2 uses
  %i.iu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.it, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.in)
  %i.iv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.it, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.iu) ; 8 uses
  %i.iw = fmul fast <8 x float> %i.iv, %i.iv
  %i.ix = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iv, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.iy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ix, <8 x float> nofpclass(nan inf) %i.iv, <8 x float> splat (float f0x3C088908))
  %i.iz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iy, <8 x float> nofpclass(nan inf) %i.iv, <8 x float> splat (float f0x3D2AA9C1))
  %i.ja = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iz, <8 x float> nofpclass(nan inf) %i.iv, <8 x float> splat (float f0x3E2AAAAA))
  %i.jb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ja, <8 x float> nofpclass(nan inf) %i.iv, <8 x float> splat (float 5.000000e-01))
  %i.jc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jb, <8 x float> nofpclass(nan inf) %i.iw, <8 x float> nofpclass(nan inf) %i.iv)
  %i.jd = fadd fast <8 x float> %i.jc, splat (float 1.000000e+00)
  %i.je = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.is)
  %i.jf = shl <8 x i32> %i.je, splat (i32 23)
  %i.jg = add <8 x i32> %i.jf, splat (i32 1065353216)
  %i.jh = bitcast <8 x i32> %i.jg to <8 x float>
  %i.ji = fmul fast <8 x float> %i.jd, %i.jh
  %i.jj = fadd fast <8 x float> %i.ji, splat (float 1.000000e+00)
  %i.jk = fdiv fast <8 x float> splat (float 1.000000e+00), %i.jj
  %i.jl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jk, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.jm = fmul fast <8 x float> %i.jl, %i.em
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc125:                                        ; preds = %._crit_edge
  %i.jn = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !51
  %i.jp = insertelement <8 x float> poison, float %i.jo, i64 0
  %i.jq = shufflevector <8 x float> %i.jp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.js = load float, ptr %i.jr, align 4, !tbaa !51
  %i.jt = insertelement <8 x float> poison, float %i.js, i64 0
  %i.ju = shufflevector <8 x float> %i.jt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.em, <8 x float> nofpclass(nan inf) %i.jq, <8 x float> nofpclass(nan inf) %i.ju)
  %i.jw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.jv, <8 x float> zeroinitializer)
  %i.jx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.jw, <8 x float> splat (float 1.000000e+00))
  %i.jy = fmul fast <8 x float> %i.jx, %i.em
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc125, %.noexc122, %.noexc121, %.noexc120, %.noexc, %bb.n, %._crit_edge
  %.0.i = phi nsz <8 x float> [ %i.jy, %.noexc125 ], [ %i.eo, %bb.n ], [ %i.ew, %.noexc ], [ %i.fg, %.noexc120 ], [ %i.gg, %.noexc121 ], [ %i.jm, %.noexc122 ], [ %i.em, %._crit_edge ]
  %i.jz = load ptr, ptr %9, align 8, !tbaa !18
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.o
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22innerproduct_fp16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.11:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !100
  %i.h = load i32, ptr %0, align 4, !tbaa !100    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !100
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !100
  %i.k = load i32, ptr %i.a, align 4, !tbaa !100  ; 2 uses
  %.not334 = icmp sgt i32 %i.k, %i.j
  br i1 %.not334, label %._crit_edge338, label %.lr.ph337

.lr.ph337:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph337, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.0335 = phi i32 [ %i.k, %.lr.ph337 ], [ %i.jz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !100
  %i.o = shl nsw i32 %.0335, 2
  %i.p = add nsw i32 %i.n, %i.o                   ; 4 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !107    ; 2 uses
  %.not107 = icmp eq ptr %i.q, null
  %.pre = sext i32 %i.p to i64                    ; 3 uses
  br i1 %.not107, label %._crit_edge358, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.pre
  %i.s = load <4 x float>, ptr %i.r, align 4, !tbaa !51
  br label %._crit_edge358

._crit_edge358:                                   ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi nsz <4 x float> [ %i.s, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !18     ; 4 uses
  %i.u = load i32, ptr %i.l, align 4, !tbaa !49
  %i.v = sext i32 %i.u to i64
  %i.w = load i64, ptr %i.m, align 8, !tbaa !50
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
  %i.am = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.an = load i32, ptr %7, align 4, !tbaa !100   ; 6 uses
  %i.ao = icmp sgt i32 %i.an, 7
  br i1 %i.ao, label %.lr.ph, label %.preheader282

.preheader282.loopexit:                           ; preds = %.lr.ph
  %i.ap = and i32 %i.an, 2147483640
  br label %.preheader282

.preheader282:                                    ; preds = %.preheader282.loopexit, %._crit_edge358
  %.0281.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge358 ], [ %i.bf, %.preheader282.loopexit ]
  %.0280.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge358 ], [ %i.bg, %.preheader282.loopexit ]
  %.0279.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge358 ], [ %i.bh, %.preheader282.loopexit ]
  %.0278.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge358 ], [ %i.bi, %.preheader282.loopexit ]
  %.0103.lcssa = phi ptr [ %i.z, %._crit_edge358 ], [ %i.bk, %.preheader282.loopexit ] ; 2 uses
  %.0100.lcssa = phi ptr [ %i.ad, %._crit_edge358 ], [ %i.bl, %.preheader282.loopexit ] ; 2 uses
  %.097.lcssa = phi ptr [ %i.ah, %._crit_edge358 ], [ %i.bm, %.preheader282.loopexit ] ; 2 uses
  %.094.lcssa = phi ptr [ %i.al, %._crit_edge358 ], [ %i.bn, %.preheader282.loopexit ] ; 2 uses
  %.091.lcssa = phi ptr [ %i.am, %._crit_edge358 ], [ %i.bj, %.preheader282.loopexit ] ; 2 uses
  %.090.lcssa = phi i32 [ 0, %._crit_edge358 ], [ %i.ap, %.preheader282.loopexit ] ; 3 uses
  %i.aq = or disjoint i32 %.090.lcssa, 3
  %i.ar = icmp slt i32 %i.aq, %i.an
  br i1 %i.ar, label %.lr.ph314, label %.preheader

.lr.ph:                                           ; preds = %._crit_edge358, %.lr.ph
  %.090293 = phi i32 [ %i.bo, %.lr.ph ], [ 0, %._crit_edge358 ]
  %.091292 = phi ptr [ %i.bj, %.lr.ph ], [ %i.am, %._crit_edge358 ] ; 2 uses
  %.094291 = phi ptr [ %i.bn, %.lr.ph ], [ %i.al, %._crit_edge358 ] ; 2 uses
  %.097290 = phi ptr [ %i.bm, %.lr.ph ], [ %i.ah, %._crit_edge358 ] ; 2 uses
  %.0100289 = phi ptr [ %i.bl, %.lr.ph ], [ %i.ad, %._crit_edge358 ] ; 2 uses
  %.0103288 = phi ptr [ %i.bk, %.lr.ph ], [ %i.z, %._crit_edge358 ] ; 2 uses
  %.0278287 = phi <8 x float> [ %i.bi, %.lr.ph ], [ zeroinitializer, %._crit_edge358 ]
  %.0279286 = phi <8 x float> [ %i.bh, %.lr.ph ], [ zeroinitializer, %._crit_edge358 ]
  %.0280285 = phi <8 x float> [ %i.bg, %.lr.ph ], [ zeroinitializer, %._crit_edge358 ]
  %.0281284 = phi <8 x float> [ %i.bf, %.lr.ph ], [ zeroinitializer, %._crit_edge358 ]
  %i.as = load <8 x float>, ptr %.091292, align 1, !tbaa !77 ; 4 uses
  %i.at = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0103288)
  %i.au = bitcast <16 x i8> %i.at to <8 x half>
  %i.av = fpext fast <8 x half> %i.au to <8 x float>
  %i.aw = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0100289)
  %i.ax = bitcast <16 x i8> %i.aw to <8 x half>
  %i.ay = fpext fast <8 x half> %i.ax to <8 x float>
  %i.az = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.097290)
  %i.ba = bitcast <16 x i8> %i.az to <8 x half>
  %i.bb = fpext fast <8 x half> %i.ba to <8 x float>
  %i.bc = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.094291)
  %i.bd = bitcast <16 x i8> %i.bc to <8 x half>
  %i.be = fpext fast <8 x half> %i.bd to <8 x float>
  %i.bf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %.0281284) ; 2 uses
  %i.bg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %.0280285) ; 2 uses
  %i.bh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) %i.bb, <8 x float> nofpclass(nan inf) %.0279286) ; 2 uses
  %i.bi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %.0278287) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.091292, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0103288, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0100289, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.097290, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.094291, i64 16 ; 2 uses
  %i.bo = add nuw nsw i32 %.090293, 8             ; 2 uses
  %i.bp = or disjoint i32 %i.bo, 7
  %i.bq = icmp slt i32 %i.bp, %i.an
  br i1 %i.bq, label %.lr.ph, label %.preheader282.loopexit, !llvm.loop !269

.preheader:                                       ; preds = %.lr.ph314, %.preheader282
  %.0277.lcssa = phi <4 x float> [ zeroinitializer, %.preheader282 ], [ %i.cb, %.lr.ph314 ] ; 2 uses
  %.0276.lcssa = phi <4 x float> [ zeroinitializer, %.preheader282 ], [ %i.cc, %.lr.ph314 ] ; 2 uses
  %.0275.lcssa = phi <4 x float> [ zeroinitializer, %.preheader282 ], [ %i.cd, %.lr.ph314 ] ; 2 uses
  %.0274.lcssa = phi <4 x float> [ zeroinitializer, %.preheader282 ], [ %i.ce, %.lr.ph314 ] ; 2 uses
  %.1104.lcssa = phi ptr [ %.0103.lcssa, %.preheader282 ], [ %i.cg, %.lr.ph314 ]
  %.1101.lcssa = phi ptr [ %.0100.lcssa, %.preheader282 ], [ %i.ch, %.lr.ph314 ]
  %.198.lcssa = phi ptr [ %.097.lcssa, %.preheader282 ], [ %i.ci, %.lr.ph314 ]
  %.195.lcssa = phi ptr [ %.094.lcssa, %.preheader282 ], [ %i.cj, %.lr.ph314 ]
  %.192.lcssa = phi ptr [ %.091.lcssa, %.preheader282 ], [ %i.cf, %.lr.ph314 ]
  %.1.lcssa = phi i32 [ %.090.lcssa, %.preheader282 ], [ %i.ck, %.lr.ph314 ] ; 2 uses
  %i.br = icmp slt i32 %.1.lcssa, %i.an
  br i1 %i.br, label %.lr.ph332, label %._crit_edge

.lr.ph314:                                        ; preds = %.preheader282, %.lr.ph314
  %.1313 = phi i32 [ %i.ck, %.lr.ph314 ], [ %.090.lcssa, %.preheader282 ]
  %.192312 = phi ptr [ %i.cf, %.lr.ph314 ], [ %.091.lcssa, %.preheader282 ] ; 2 uses
  %.195311 = phi ptr [ %i.cj, %.lr.ph314 ], [ %.094.lcssa, %.preheader282 ] ; 2 uses
  %.198310 = phi ptr [ %i.ci, %.lr.ph314 ], [ %.097.lcssa, %.preheader282 ] ; 2 uses
  %.1101309 = phi ptr [ %i.ch, %.lr.ph314 ], [ %.0100.lcssa, %.preheader282 ] ; 2 uses
  %.1104308 = phi ptr [ %i.cg, %.lr.ph314 ], [ %.0103.lcssa, %.preheader282 ] ; 2 uses
  %.0274307 = phi <4 x float> [ %i.ce, %.lr.ph314 ], [ zeroinitializer, %.preheader282 ]
  %.0275306 = phi <4 x float> [ %i.cd, %.lr.ph314 ], [ zeroinitializer, %.preheader282 ]
  %.0276305 = phi <4 x float> [ %i.cc, %.lr.ph314 ], [ zeroinitializer, %.preheader282 ]
  %.0277304 = phi <4 x float> [ %i.cb, %.lr.ph314 ], [ zeroinitializer, %.preheader282 ]
  %i.bs = load <4 x float>, ptr %.192312, align 1, !tbaa !77 ; 4 uses
  %i.bt = load <4 x half>, ptr %.1104308, align 1, !tbaa !77
  %i.bu = fpext fast <4 x half> %i.bt to <4 x float>
  %i.bv = load <4 x half>, ptr %.1101309, align 1, !tbaa !77
  %i.bw = fpext fast <4 x half> %i.bv to <4 x float>
  %i.bx = load <4 x half>, ptr %.198310, align 1, !tbaa !77
  %i.by = fpext fast <4 x half> %i.bx to <4 x float>
  %i.bz = load <4 x half>, ptr %.195311, align 1, !tbaa !77
  %i.ca = fpext fast <4 x half> %i.bz to <4 x float>
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bs, <4 x float> nofpclass(nan inf) %i.bu, <4 x float> nofpclass(nan inf) %.0277304) ; 2 uses
  %i.cc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bs, <4 x float> nofpclass(nan inf) %i.bw, <4 x float> nofpclass(nan inf) %.0276305) ; 2 uses
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bs, <4 x float> nofpclass(nan inf) %i.by, <4 x float> nofpclass(nan inf) %.0275306) ; 2 uses
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bs, <4 x float> nofpclass(nan inf) %i.ca, <4 x float> nofpclass(nan inf) %.0274307) ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.192312, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1104308, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1101309, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.198310, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.195311, i64 8 ; 2 uses
  %i.ck = add nuw nsw i32 %.1313, 4               ; 3 uses
  %i.cl = or disjoint i32 %i.ck, 3
  %i.cm = icmp slt i32 %i.cl, %i.an
  br i1 %i.cm, label %.lr.ph314, label %.preheader, !llvm.loop !270

.lr.ph332:                                        ; preds = %.preheader, %bb.h
  %.2331 = phi i32 [ %i.dj, %bb.h ], [ %.1.lcssa, %.preheader ]
  %.293330 = phi ptr [ %i.de, %bb.h ], [ %.192.lcssa, %.preheader ] ; 5 uses
  %.296329 = phi ptr [ %i.di, %bb.h ], [ %.195.lcssa, %.preheader ] ; 2 uses
  %.299328 = phi ptr [ %i.dh, %bb.h ], [ %.198.lcssa, %.preheader ] ; 2 uses
  %.2102327 = phi ptr [ %i.dg, %bb.h ], [ %.1101.lcssa, %.preheader ] ; 2 uses
  %.2105326 = phi ptr [ %i.df, %bb.h ], [ %.1104.lcssa, %.preheader ] ; 2 uses
  %.sroa.0.1325 = phi <4 x float> [ %i.dd, %bb.h ], [ %.sroa.0.0, %.preheader ]
  %i.cn = load float, ptr %.293330, align 4, !tbaa !51
  %i.co = load i16, ptr %.2105326, align 2, !tbaa !121
  %i.cp = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.co)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %.lr.ph332
  %i.cq = load float, ptr %.293330, align 4, !tbaa !51
  %i.cr = load i16, ptr %.2102327, align 2, !tbaa !121
  %i.cs = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.cr)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ct = load float, ptr %.293330, align 4, !tbaa !51
  %i.cu = load i16, ptr %.299328, align 2, !tbaa !121
  %i.cv = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.cu)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.cw = load float, ptr %.293330, align 4, !tbaa !51
  %i.cx = load i16, ptr %.296329, align 2, !tbaa !121
  %i.cy = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.cx)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %11 = insertelement <4 x float> poison, float %i.cp, i64 0
  %12 = insertelement <4 x float> %11, float %i.cs, i64 1
  %13 = insertelement <4 x float> %12, float %i.cv, i64 2
  %14 = insertelement <4 x float> %13, float %i.cy, i64 3
  %i.cz = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.da = insertelement <4 x float> %i.cz, float %i.cq, i64 1
  %i.db = insertelement <4 x float> %i.da, float %i.ct, i64 2
  %i.dc = insertelement <4 x float> %i.db, float %i.cw, i64 3
  %15 = fmul fast <4 x float> %14, %i.dc
  %i.dd = fadd fast <4 x float> %15, %.sroa.0.1325 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.293330, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %.2105326, i64 2
  %i.dg = getelementptr inbounds nuw i8, ptr %.2102327, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %.299328, i64 2
  %i.di = getelementptr inbounds nuw i8, ptr %.296329, i64 2
  %i.dj = add nuw nsw i32 %.2331, 1               ; 2 uses
  %i.dk = load i32, ptr %7, align 4, !tbaa !100
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph332, label %._crit_edge, !llvm.loop !271

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.sroa.0.1.lcssa = phi <4 x float> [ %.sroa.0.0, %.preheader ], [ %i.dd, %bb.h ]
  %i.dm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0281.lcssa, <8 x float> nofpclass(nan inf) %.0280.lcssa)
  %i.dn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0279.lcssa, <8 x float> nofpclass(nan inf) %.0278.lcssa)
  %i.do = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %i.dm, <8 x float> nofpclass(nan inf) %i.dn) ; 2 uses
  %i.dp = shufflevector <8 x float> %i.do, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dq = shufflevector <8 x float> %i.do, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dr = shufflevector <4 x float> %.0277.lcssa, <4 x float> %.0276.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ds = shufflevector <4 x float> %.0275.lcssa, <4 x float> %.0274.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dt = shufflevector <4 x float> %.0277.lcssa, <4 x float> %.0276.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.du = shufflevector <4 x float> %.0275.lcssa, <4 x float> %.0274.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.dr, <4 x float> %i.ds, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dw = shufflevector <4 x float> %i.ds, <4 x float> %i.dr, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dx = shufflevector <4 x float> %i.dt, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dy = shufflevector <4 x float> %i.du, <4 x float> %i.dt, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dz = fadd fast <4 x float> %i.dw, %i.dv
  %i.ea = fadd fast <4 x float> %i.dz, %i.dx
  %i.eb = fadd fast <4 x float> %i.ea, %i.dy
  %i.ec = fadd fast <4 x float> %i.eb, %.sroa.0.1.lcssa
  %i.ed = fadd fast <4 x float> %i.ec, %i.dq
  %i.ee = fadd fast <4 x float> %i.ed, %i.dp      ; 10 uses
  %i.ef = load i32, ptr %8, align 4, !tbaa !100
  switch i32 %i.ef, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.i
    i32 2, label %.noexc
    i32 3, label %bb.j
    i32 4, label %.noexc108
    i32 5, label %.noexc109
    i32 6, label %.noexc110
  ]

bb.i:                                             ; preds = %._crit_edge
  %i.eg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ee, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.eh = load ptr, ptr %9, align 8, !tbaa !18
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !51
  %i.ej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ee)
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ee)
  %i.el = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> zeroinitializer
  %i.en = fmul fast <4 x float> %i.em, %i.ek
  %i.eo = fadd fast <4 x float> %i.en, %i.ej
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %._crit_edge
  %i.ep = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !51
  %i.er = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.eu = load float, ptr %i.et, align 4, !tbaa !51
  %i.ev = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ee, <4 x float> nofpclass(nan inf) %i.es)
  %i.ey = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ex, <4 x float> nofpclass(nan inf) %i.ew)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc108:                                        ; preds = %._crit_edge
  %i.ez = fneg fast <4 x float> %i.ee
  %i.fa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ez, <4 x float> splat (float f0x42B0C0A5))
  %i.fb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fa, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fc = fmul fast <4 x float> %i.fb, splat (float f0x3FB8AA3B)
  %i.fd = fadd fast <4 x float> %i.fc, splat (float 5.000000e-01) ; 2 uses
  %i.fe = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fd)
  %i.ff = sitofp fast <4 x i32> %i.fe to <4 x float> ; 2 uses
  %i.fg = fcmp fast olt <4 x float> %i.fd, %i.ff
  %i.fh = select <4 x i1> %i.fg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fi = fsub fast <4 x float> %i.ff, %i.fh      ; 2 uses
  %i.fj = fneg fast <4 x float> %i.fi             ; 2 uses
  %i.fk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fj, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fb)
  %i.fl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fj, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fk) ; 8 uses
  %i.fm = fmul fast <4 x float> %i.fl, %i.fl
  %i.fn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fl, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> nofpclass(nan inf) %i.fl, <4 x float> splat (float f0x3C088908))
  %i.fp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fo, <4 x float> nofpclass(nan inf) %i.fl, <4 x float> splat (float f0x3D2AA9C1))
  %i.fq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fp, <4 x float> nofpclass(nan inf) %i.fl, <4 x float> splat (float f0x3E2AAAAA))
  %i.fr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fq, <4 x float> nofpclass(nan inf) %i.fl, <4 x float> splat (float 5.000000e-01))
  %i.fs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fr, <4 x float> nofpclass(nan inf) %i.fm, <4 x float> nofpclass(nan inf) %i.fl)
  %i.ft = fadd fast <4 x float> %i.fs, splat (float 1.000000e+00)
  %i.fu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fi)
  %i.fv = shl <4 x i32> %i.fu, splat (i32 23)
  %i.fw = add <4 x i32> %i.fv, splat (i32 1065353216)
  %i.fx = bitcast <4 x i32> %i.fw to <4 x float>
  %i.fy = fmul fast <4 x float> %i.ft, %i.fx
  %i.fz = fadd fast <4 x float> %i.fy, splat (float 1.000000e+00)
  %i.ga = fdiv fast <4 x float> splat (float 1.000000e+00), %i.fz
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc109:                                        ; preds = %._crit_edge
  %i.gb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ee, <4 x float> splat (float f0x42B0C0A5))
  %i.gc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gd = fmul fast <4 x float> %i.gc, splat (float f0x3FB8AA3B)
  %i.ge = fadd fast <4 x float> %i.gd, splat (float 5.000000e-01) ; 2 uses
  %i.gf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ge)
  %i.gg = sitofp fast <4 x i32> %i.gf to <4 x float> ; 2 uses
  %i.gh = fcmp fast olt <4 x float> %i.ge, %i.gg
  %i.gi = select <4 x i1> %i.gh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gj = fsub fast <4 x float> %i.gg, %i.gi      ; 2 uses
  %i.gk = fneg fast <4 x float> %i.gj             ; 2 uses
  %i.gl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gk, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gc)
  %i.gm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gk, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gl) ; 8 uses
  %i.gn = fmul fast <4 x float> %i.gm, %i.gm
  %i.go = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gm, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.gp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.go, <4 x float> nofpclass(nan inf) %i.gm, <4 x float> splat (float f0x3C088908))
  %i.gq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gp, <4 x float> nofpclass(nan inf) %i.gm, <4 x float> splat (float f0x3D2AA9C1))
  %i.gr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gq, <4 x float> nofpclass(nan inf) %i.gm, <4 x float> splat (float f0x3E2AAAAA))
  %i.gs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gr, <4 x float> nofpclass(nan inf) %i.gm, <4 x float> splat (float 5.000000e-01))
  %i.gt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gs, <4 x float> nofpclass(nan inf) %i.gn, <4 x float> nofpclass(nan inf) %i.gm)
  %i.gu = fadd fast <4 x float> %i.gt, splat (float 1.000000e+00)
  %i.gv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gj)
  %i.gw = shl <4 x i32> %i.gv, splat (i32 23)
  %i.gx = add <4 x i32> %i.gw, splat (i32 1065353216)
  %i.gy = bitcast <4 x i32> %i.gx to <4 x float>
  %i.gz = fmul fast <4 x float> %i.gu, %i.gy
  %i.ha = fadd fast <4 x float> %i.gz, splat (float 1.000000e+00) ; 2 uses
  %i.hb = fcmp fast ole <4 x float> %i.ha, zeroinitializer
  %i.hc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ha, <4 x float> splat (float f0x00800000))
  %i.hd = bitcast <4 x float> %i.hc to <4 x i32>  ; 2 uses
  %i.he = lshr <4 x i32> %i.hd, splat (i32 23)
  %i.hf = and <4 x i32> %i.hd, splat (i32 -2139095041)
  %i.hg = or disjoint <4 x i32> %i.hf, splat (i32 1056964608)
  %i.hh = bitcast <4 x i32> %i.hg to <4 x float>  ; 3 uses
  %i.hi = add nsw <4 x i32> %i.he, splat (i32 -127)
  %i.hj = sitofp fast <4 x i32> %i.hi to <4 x float> ; 2 uses
  %i.hk = fadd fast <4 x float> %i.hj, splat (float 1.000000e+00)
  %i.hl = fcmp fast olt <4 x float> %i.hh, splat (float f0x3F3504F3) ; 2 uses
  %i.hm = select <4 x i1> %i.hl, <4 x float> %i.hh, <4 x float> zeroinitializer
  %i.hn = fadd fast <4 x float> %i.hh, splat (float -1.000000e+00)
  %i.ho = select fast <4 x i1> %i.hl, <4 x float> %i.hj, <4 x float> %i.hk ; 2 uses
  %i.hp = fadd fast <4 x float> %i.hn, %i.hm      ; 12 uses
  %i.hq = fmul fast <4 x float> %i.hp, %i.hp      ; 2 uses
  %i.hr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hp, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.hs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hr, <4 x float> nofpclass(nan inf) %i.hp, <4 x float> splat (float f0x3DEF251A))
  %i.ht = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hs, <4 x float> nofpclass(nan inf) %i.hp, <4 x float> splat (float f0xBDFE5D4F))
  %i.hu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ht, <4 x float> nofpclass(nan inf) %i.hp, <4 x float> splat (float f0x3E11E9BF))
  %i.hv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hu, <4 x float> nofpclass(nan inf) %i.hp, <4 x float> splat (float f0xBE2AAE50))
  %i.hw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hv, <4 x float> nofpclass(nan inf) %i.hp, <4 x float> splat (float f0x3E4CCEAC))
  %i.hx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hw, <4 x float> nofpclass(nan inf) %i.hp, <4 x float> splat (float f0xBE7FFFFC))
  %i.hy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hx, <4 x float> nofpclass(nan inf) %i.hp, <4 x float> splat (float f0x3EAAAAAA))
  %i.hz = fmul fast <4 x float> %i.hq, %i.hp
  %i.ia = fmul fast <4 x float> %i.hz, %i.hy
  %i.ib = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ho, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ia)
  %i.ic = fneg fast <4 x float> %i.hq
  %i.id = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ic, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.ib)
  %i.ie = fadd fast <4 x float> %i.id, %i.hp
  %i.if = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ho, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ie)
  %.neg = fmul fast <4 x float> %i.if, splat (float -2.000000e+00)
  %i.ig = select fast <4 x i1> %i.hb, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ih = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ig, <4 x float> splat (float f0x42B0C0A5))
  %i.ii = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ih, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ij = fmul fast <4 x float> %i.ii, splat (float f0x3FB8AA3B)
  %i.ik = fadd fast <4 x float> %i.ij, splat (float 5.000000e-01) ; 2 uses
  %i.il = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ik)
  %i.im = sitofp fast <4 x i32> %i.il to <4 x float> ; 2 uses
  %i.in = fcmp fast olt <4 x float> %i.ik, %i.im
  %i.io = select <4 x i1> %i.in, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ip = fsub fast <4 x float> %i.im, %i.io      ; 2 uses
  %i.iq = fneg fast <4 x float> %i.ip             ; 2 uses
  %i.ir = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.iq, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ii)
  %i.is = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.iq, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ir) ; 8 uses
  %i.it = fmul fast <4 x float> %i.is, %i.is
  %i.iu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.is, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.iv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iu, <4 x float> nofpclass(nan inf) %i.is, <4 x float> splat (float f0x3C088908))
  %i.iw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iv, <4 x float> nofpclass(nan inf) %i.is, <4 x float> splat (float f0x3D2AA9C1))
  %i.ix = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iw, <4 x float> nofpclass(nan inf) %i.is, <4 x float> splat (float f0x3E2AAAAA))
  %i.iy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ix, <4 x float> nofpclass(nan inf) %i.is, <4 x float> splat (float 5.000000e-01))
  %i.iz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iy, <4 x float> nofpclass(nan inf) %i.it, <4 x float> nofpclass(nan inf) %i.is)
  %i.ja = fadd fast <4 x float> %i.iz, splat (float 1.000000e+00)
  %i.jb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ip)
  %i.jc = shl <4 x i32> %i.jb, splat (i32 23)
  %i.jd = add <4 x i32> %i.jc, splat (i32 1065353216)
  %i.je = bitcast <4 x i32> %i.jd to <4 x float>
  %i.jf = fmul fast <4 x float> %i.ja, %i.je
  %i.jg = fadd fast <4 x float> %i.jf, splat (float 1.000000e+00)
  %i.jh = fdiv fast <4 x float> splat (float 2.000000e+00), %i.jg
  %i.ji = fadd fast <4 x float> %i.jh, splat (float -1.000000e+00)
  %i.jj = fmul fast <4 x float> %i.ji, %i.ee
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc110:                                        ; preds = %._crit_edge
  %i.jk = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !51
  %i.jm = insertelement <4 x float> poison, float %i.jl, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !51
  %i.jq = insertelement <4 x float> poison, float %i.jp, i64 0
  %i.jr = shufflevector <4 x float> %i.jq, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_1
