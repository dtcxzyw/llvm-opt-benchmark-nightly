Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_group?download=true
inline.NumInlined: 2848
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 609
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 661
begin_hunk_0_@_ZN3jxl6N_SSE215DecodeGroupImplERKNS_11FrameHeaderEPNS_8GetBlockEPNS_13GroupDecCacheEPNS_18PassesDecoderStateEmmRNS_19RenderPipelineInputEPNS_4jpeg8JPEGDataENS_8DrawModeE:bb.a
  %i.ajo = load i64, ptr %i.ajn, align 8, !tbaa !191
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ajh
  %i.ajq = load i64, ptr %i.ajp, align 8, !tbaa !191
  %i.ajr = shl i64 %i.ajo, %i.ajq
  %.not401 = icmp eq i64 %i.ajr, %.0372558
  br i1 %.not401, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ajh
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !234
  %.idx402 = shl i64 %i.ajj, 5
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %.idx402
  %i.ajv = load i32, ptr %10, align 8, !tbaa !255
  %i.ajw = mul i64 %i.tg, %i.ajh
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.aip, i64 %i.ajw
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ajh
  %i.ajz = load i64, ptr %i.ajy, align 8, !tbaa !191
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_117TransformToPixelsENS_14AcStrategyTypeEPfS3_mS3_(i32 noundef %i.ajv, ptr noundef %i.ajx, ptr noundef %i.aju, i64 noundef %i.ajz, ptr noundef %i.ajf) #50
  br label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.av, %bb.aw
  %.0.add = add nuw nsw i64 %.0.idx540, 4         ; 2 uses
  %.not399 = icmp eq i64 %.0.add, 12
  br i1 %.not399, label %.loopexit511, label %bb.au

.loopexit511:                                     ; preds = %bb.ax, %.thread479, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48
  br label %.backedge

.loopexit613:                                     ; preds = %.loopexit512, %bb.y, %bb.ac, %bb.as
  %.sroa.0445.13.jt1 = phi i32 [ 1, %bb.as ], [ %i.uh, %.loopexit512 ], [ 1, %bb.y ], [ 1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #48
  br label %_ZNK3jxl5RectTImE8IsInsideERKS1_.exit.thread

.backedge:                                        ; preds = %bb.w, %.loopexit511
  %.4.jt28 = phi i64 [ %i.uj, %.loopexit511 ], [ %.2543, %bb.w ] ; 2 uses
  %.3377.jt28 = add i64 %.1375542, %i.sy          ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #48
  %i.aka = icmp ult i64 %.3377.jt28, %i.ba
  br i1 %i.aka, label %bb.v, label %.critedge.thread, !llvm.loop !1388

.critedge.thread:                                 ; preds = %.backedge, %bb.v, %.lr.ph554
  %.1375.lcssa = phi i64 [ %.0374552, %.lr.ph554 ], [ %.1375542, %bb.v ], [ %.3377.jt28, %.backedge ]
  %.2.lcssa = phi i64 [ %.1553, %.lr.ph554 ], [ %.2543, %bb.v ], [ %.4.jt28, %.backedge ] ; 2 uses
  %i.akb = add nuw nsw i64 %.0379551, 1           ; 2 uses
  %exitcond583.not = icmp eq i64 %i.akb, %i.jo
  br i1 %exitcond583.not, label %.critedge416, label %.lr.ph554, !llvm.loop !1396

.critedge416:                                     ; preds = %.critedge.thread, %.preheader516
  %.1.lcssa = phi i64 [ %.0359559, %.preheader516 ], [ %.2.lcssa, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #48
  %i.akc = add nuw i64 %.0372558, 1               ; 2 uses
  %exitcond584.not = icmp eq i64 %i.akc, %i.bd
  br i1 %exitcond584.not, label %_ZNK3jxl5RectTImE8IsInsideERKS1_.exit.thread, label %bb.u, !llvm.loop !1397

_ZNK3jxl5RectTImE8IsInsideERKS1_.exit.thread:     ; preds = %.critedge416, %.critedge414, %bb.s, %bb.t, %.critedge416.preheader, %.loopexit613
  %.sroa.0445.18 = phi i32 [ 0, %.critedge416.preheader ], [ %.sroa.0445.13.jt1, %.loopexit613 ], [ 1, %.critedge414 ], [ 1, %bb.t ], [ 1, %bb.s ], [ 0, %.critedge416 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #48
  br label %.critedge412

.critedge412:                                     ; preds = %bb.i, %bb.l, %bb.m, %bb.q, %bb.b, %bb.g, %bb.d, %bb.e, %bb.f, %bb.c, %_ZNK3jxl16ColorCorrelation16IsJPEGCompatibleEv.exit, %_ZNK3jxl5RectTImE8IsInsideERKS1_.exit.thread
  %.sroa.0445.19 = phi i32 [ %.sroa.0445.18, %_ZNK3jxl5RectTImE8IsInsideERKS1_.exit.thread ], [ 1, %_ZNK3jxl16ColorCorrelation16IsJPEGCompatibleEv.exit ], [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %bb.d ], [ 1, %bb.b ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.q ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret i32 %.sroa.0445.19
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_SSE212DequantBlockILNS_6ACTypeE0EEEvfiffN3hwy6N_SSE26Vec128IfLm4EEES6_NS_14AcStrategyTypeEmRKNS_9QuantizerEmPKmPrPKfmSE_PNS_5ACPtrEPfSJ_(float noundef %0, i32 noundef %1, float noundef %2, float noundef %3, <4 x float> %4, <4 x float> %5, i32 noundef %6, i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %9, ptr noundef %10, ptr noalias noundef %11, i64 noundef %12, ptr noalias noundef %13, ptr noundef %14, ptr noalias noundef %15, ptr noalias noundef %16) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = sitofp i32 %1 to float
  %i.b = fdiv float %0, %i.a                      ; 3 uses
  %i.c = fmul float %2, %i.b
  %i.d = insertelement <4 x float> poison, float %i.c, i64 0
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer
  %i.f = insertelement <4 x float> poison, float %i.b, i64 0
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> zeroinitializer
  %i.h = fmul float %i.b, %3
  %i.i = insertelement <4 x float> poison, float %i.h, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !263  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !264
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.p = zext i32 %6 to i64
  %.idx.i = mul nuw nsw i64 %i.p, 24
  %i.q = getelementptr i8, ptr %i.o, i64 %.idx.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !191
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.r ; 3 uses
  %i.t = shl i64 %9, 6                            ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %7
  %i.v = shl i64 %7, 1                            ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load ptr, ptr %14, align 8, !tbaa !222, !noalias !1432
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !222, !noalias !1432
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !222, !noalias !1432
  %i.ac = load float, ptr %13, align 4, !tbaa !256, !alias.scope !1433, !noalias !1434
  %i.ad = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.ae = bitcast <4 x float> %i.ad to <4 x i32>
  %i.af = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !256, !alias.scope !1433, !noalias !1434
  %i.ai = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !256, !alias.scope !1435, !noalias !1434
  %i.am = insertelement <4 x float> poison, float %i.al, i64 0
  %i.an = bitcast <4 x float> %i.am to <4 x i32>
  %i.ao = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !256, !alias.scope !1436, !noalias !1434
  %i.ar = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.as = bitcast <4 x float> %i.ar to <4 x i32>
  %i.at = shufflevector <4 x i32> %i.as, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %7
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %i.v
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.aw = load ptr, ptr %11, align 8, !tbaa !234
  %i.ax = load i64, ptr %10, align 8, !tbaa !191
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123LowestFrequenciesFromDCENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %6, ptr noundef %i.ay, i64 noundef %12, ptr noundef %15, ptr noundef %16) #50
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !234
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !191
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %7
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123LowestFrequenciesFromDCENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %6, ptr noundef %i.bd, i64 noundef %12, ptr noundef %i.be, ptr noundef %16) #50
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !234
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !191
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bi
  %.idx = shl i64 %7, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 %.idx
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123LowestFrequenciesFromDCENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %6, ptr noundef %i.bj, i64 noundef %12, ptr noundef %i.bk, ptr noundef %16) #50
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.03839 = phi i64 [ 0, %.lr.ph ], [ %i.ea, %bb.b ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.03839
  %i.bm = load <4 x float>, ptr %i.bl, align 16, !tbaa !222, !alias.scope !1440, !noalias !1441
  %i.bn = fmul <4 x float> %i.e, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03839
  %i.bp = load <4 x float>, ptr %i.bo, align 16, !tbaa !222, !alias.scope !1442, !noalias !1441
  %i.bq = fmul <4 x float> %i.g, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.03839
  %i.bs = load <4 x float>, ptr %i.br, align 16, !tbaa !222, !alias.scope !1443, !noalias !1441
  %i.bt = fmul <4 x float> %i.j, %i.bs
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %.03839
  %i.bv = load i64, ptr %i.bu, align 1, !tbaa !222, !alias.scope !1444, !noalias !1432
  %i.bw = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %i.bx = bitcast <2 x i64> %i.bw to <8 x i16>
  %i.by = shufflevector <8 x i16> %i.bx, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.bz = bitcast <8 x i16> %i.by to <4 x i32>
  %i.ca = ashr <4 x i32> %i.bz, splat (i32 16)    ; 2 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.03839
  %i.cc = load i64, ptr %i.cb, align 1, !tbaa !222, !alias.scope !1445, !noalias !1432
  %i.cd = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %i.ce = bitcast <2 x i64> %i.cd to <8 x i16>
  %i.cf = shufflevector <8 x i16> %i.ce, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.cg = bitcast <8 x i16> %i.cf to <4 x i32>
  %i.ch = ashr <4 x i32> %i.cg, splat (i32 16)    ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.03839
  %i.cj = load i64, ptr %i.ci, align 1, !tbaa !222, !alias.scope !1446, !noalias !1432
  %i.ck = insertelement <2 x i64> poison, i64 %i.cj, i64 0
  %i.cl = bitcast <2 x i64> %i.ck to <8 x i16>
  %i.cm = shufflevector <8 x i16> %i.cl, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.cn = bitcast <8 x i16> %i.cm to <4 x i32>
  %i.co = ashr <4 x i32> %i.cn, splat (i32 16)    ; 2 uses
  %i.cp = sitofp <4 x i32> %i.ca to <4 x float>   ; 4 uses
  %i.cq = bitcast <4 x float> %i.cp to <4 x i32>
  %i.cr = and <4 x i32> %i.cq, splat (i32 -2147483648)
  %i.cs = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cp)
  %i.ct = fcmp olt <4 x float> %i.cs, splat (float 1.125000e+00)
  %.not.not.i = icmp eq <4 x i32> %i.ca, zeroinitializer
  %i.cu = xor <4 x i32> %i.af, %i.cr
  %i.cv = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.cp)
  %i.cw = fmul <4 x float> %i.cv, %i.aj
  %i.cx = fsub <4 x float> %i.cp, %i.cw
  %17 = bitcast <4 x i32> %i.cu to <4 x float>
  %18 = select <4 x i1> %.not.not.i, <4 x float> zeroinitializer, <4 x float> %17
  %19 = select <4 x i1> %i.ct, <4 x float> %18, <4 x float> %i.cx
  %i.cy = fmul <4 x float> %i.bn, %19
  %i.cz = sitofp <4 x i32> %i.ch to <4 x float>   ; 4 uses
  %i.da = bitcast <4 x float> %i.cz to <4 x i32>
  %i.db = and <4 x i32> %i.da, splat (i32 -2147483648)
  %i.dc = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cz)
  %i.dd = fcmp olt <4 x float> %i.dc, splat (float 1.125000e+00)
  %.not.not76.i = icmp eq <4 x i32> %i.ch, zeroinitializer
  %i.de = xor <4 x i32> %i.ao, %i.db
  %i.df = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.cz)
  %i.dg = fmul <4 x float> %i.aj, %i.df
  %i.dh = fsub <4 x float> %i.cz, %i.dg
  %20 = bitcast <4 x i32> %i.de to <4 x float>
  %21 = select <4 x i1> %.not.not76.i, <4 x float> zeroinitializer, <4 x float> %20
  %22 = select <4 x i1> %i.dd, <4 x float> %21, <4 x float> %i.dh
  %i.di = fmul <4 x float> %i.bq, %22             ; 3 uses
  %i.dj = sitofp <4 x i32> %i.co to <4 x float>   ; 4 uses
  %i.dk = bitcast <4 x float> %i.dj to <4 x i32>
  %i.dl = and <4 x i32> %i.dk, splat (i32 -2147483648)
  %i.dm = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dj)
  %i.dn = fcmp olt <4 x float> %i.dm, splat (float 1.125000e+00)
  %.not.not77.i = icmp eq <4 x i32> %i.co, zeroinitializer
  %i.do = xor <4 x i32> %i.at, %i.dl
  %i.dp = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.dj)
  %i.dq = fmul <4 x float> %i.aj, %i.dp
  %i.dr = fsub <4 x float> %i.dj, %i.dq
  %23 = bitcast <4 x i32> %i.do to <4 x float>
  %24 = select <4 x i1> %.not.not77.i, <4 x float> zeroinitializer, <4 x float> %23
  %25 = select <4 x i1> %i.dn, <4 x float> %24, <4 x float> %i.dr
  %i.ds = fmul <4 x float> %i.bt, %25
  %i.dt = fmul <4 x float> %4, %i.di
  %i.du = fadd <4 x float> %i.cy, %i.dt
  %i.dv = fmul <4 x float> %5, %i.di
  %i.dw = fadd <4 x float> %i.dv, %i.ds
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %.03839
  store <4 x float> %i.du, ptr %i.dx, align 16, !tbaa !222, !alias.scope !1447, !noalias !1448
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03839
  store <4 x float> %i.di, ptr %i.dy, align 16, !tbaa !222, !alias.scope !1449, !noalias !1448
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.03839
  store <4 x float> %i.dw, ptr %i.dz, align 16, !tbaa !222, !alias.scope !1450, !noalias !1448
  %i.ea = add nuw i64 %.03839, 4                  ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.t
  br i1 %i.eb, label %bb.b, label %.preheader, !llvm.loop !1431
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_SSE212DequantBlockILNS_6ACTypeE1EEEvfiffN3hwy6N_SSE26Vec128IfLm4EEES6_NS_14AcStrategyTypeEmRKNS_9QuantizerEmPKmPrPKfmSE_PNS_5ACPtrEPfSJ_(float noundef %0, i32 noundef %1, float noundef %2, float noundef %3, <4 x float> %4, <4 x float> %5, i32 noundef %6, i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %9, ptr noundef %10, ptr noalias noundef %11, i64 noundef %12, ptr noalias noundef %13, ptr noundef %14, ptr noalias noundef %15, ptr noalias noundef %16) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = sitofp i32 %1 to float
  %i.b = fdiv float %0, %i.a                      ; 3 uses
  %i.c = fmul float %2, %i.b
  %i.d = insertelement <4 x float> poison, float %i.c, i64 0
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer
  %i.f = insertelement <4 x float> poison, float %i.b, i64 0
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> zeroinitializer
  %i.h = fmul float %i.b, %3
  %i.i = insertelement <4 x float> poison, float %i.h, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !263  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !264
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.p = zext i32 %6 to i64
  %.idx.i = mul nuw nsw i64 %i.p, 24
  %i.q = getelementptr i8, ptr %i.o, i64 %.idx.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !191
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.r ; 3 uses
  %i.t = shl i64 %9, 6                            ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %7
  %i.v = shl i64 %7, 1                            ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load ptr, ptr %14, align 8, !tbaa !222, !noalias !1474
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !222, !noalias !1474
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !222, !noalias !1474
  %i.ac = load float, ptr %13, align 4, !tbaa !256, !alias.scope !1475, !noalias !1476
  %i.ad = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.ae = bitcast <4 x float> %i.ad to <4 x i32>
  %i.af = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !256, !alias.scope !1475, !noalias !1476
  %i.ai = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !256, !alias.scope !1477, !noalias !1476
  %i.am = insertelement <4 x float> poison, float %i.al, i64 0
  %i.an = bitcast <4 x float> %i.am to <4 x i32>
  %i.ao = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !256, !alias.scope !1478, !noalias !1476
  %i.ar = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.as = bitcast <4 x float> %i.ar to <4 x i32>
  %i.at = shufflevector <4 x i32> %i.as, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %7
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %i.v
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.aw = load ptr, ptr %11, align 8, !tbaa !234
  %i.ax = load i64, ptr %10, align 8, !tbaa !191
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123LowestFrequenciesFromDCENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %6, ptr noundef %i.ay, i64 noundef %12, ptr noundef %15, ptr noundef %16) #50
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !234
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !191
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %7
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123LowestFrequenciesFromDCENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %6, ptr noundef %i.bd, i64 noundef %12, ptr noundef %i.be, ptr noundef %16) #50
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !234
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !191
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bi
  %.idx = shl i64 %7, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 %.idx
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123LowestFrequenciesFromDCENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %6, ptr noundef %i.bj, i64 noundef %12, ptr noundef %i.bk, ptr noundef %16) #50
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.03839 = phi i64 [ 0, %.lr.ph ], [ %i.dl, %bb.b ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.03839
  %i.bm = load <4 x float>, ptr %i.bl, align 16, !tbaa !222, !alias.scope !1482, !noalias !1483
  %i.bn = fmul <4 x float> %i.e, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03839
  %i.bp = load <4 x float>, ptr %i.bo, align 16, !tbaa !222, !alias.scope !1484, !noalias !1483
  %i.bq = fmul <4 x float> %i.g, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.03839
  %i.bs = load <4 x float>, ptr %i.br, align 16, !tbaa !222, !alias.scope !1485, !noalias !1483
  %i.bt = fmul <4 x float> %i.j, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.03839
  %i.bv = load <4 x i32>, ptr %i.bu, align 16, !tbaa !222, !noalias !1474 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.03839
  %i.bx = load <4 x i32>, ptr %i.bw, align 16, !tbaa !222, !noalias !1474 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.03839
  %i.bz = load <4 x i32>, ptr %i.by, align 16, !tbaa !222, !noalias !1474 ; 2 uses
  %i.ca = sitofp <4 x i32> %i.bv to <4 x float>   ; 4 uses
  %i.cb = bitcast <4 x float> %i.ca to <4 x i32>
  %i.cc = and <4 x i32> %i.cb, splat (i32 -2147483648)
  %i.cd = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ca)
  %i.ce = fcmp olt <4 x float> %i.cd, splat (float 1.125000e+00)
  %.not.not.i = icmp eq <4 x i32> %i.bv, zeroinitializer
  %i.cf = xor <4 x i32> %i.af, %i.cc
  %i.cg = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.ca)
  %i.ch = fmul <4 x float> %i.cg, %i.aj
  %i.ci = fsub <4 x float> %i.ca, %i.ch
  %17 = bitcast <4 x i32> %i.cf to <4 x float>
  %18 = select <4 x i1> %.not.not.i, <4 x float> zeroinitializer, <4 x float> %17
  %19 = select <4 x i1> %i.ce, <4 x float> %18, <4 x float> %i.ci
  %i.cj = fmul <4 x float> %i.bn, %19
  %i.ck = sitofp <4 x i32> %i.bx to <4 x float>   ; 4 uses
  %i.cl = bitcast <4 x float> %i.ck to <4 x i32>
  %i.cm = and <4 x i32> %i.cl, splat (i32 -2147483648)
  %i.cn = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ck)
  %i.co = fcmp olt <4 x float> %i.cn, splat (float 1.125000e+00)
  %.not.not70.i = icmp eq <4 x i32> %i.bx, zeroinitializer
  %i.cp = xor <4 x i32> %i.ao, %i.cm
  %i.cq = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.ck)
  %i.cr = fmul <4 x float> %i.aj, %i.cq
  %i.cs = fsub <4 x float> %i.ck, %i.cr
  %20 = bitcast <4 x i32> %i.cp to <4 x float>
  %21 = select <4 x i1> %.not.not70.i, <4 x float> zeroinitializer, <4 x float> %20
  %22 = select <4 x i1> %i.co, <4 x float> %21, <4 x float> %i.cs
  %i.ct = fmul <4 x float> %i.bq, %22             ; 3 uses
  %i.cu = sitofp <4 x i32> %i.bz to <4 x float>   ; 4 uses
  %i.cv = bitcast <4 x float> %i.cu to <4 x i32>
  %i.cw = and <4 x i32> %i.cv, splat (i32 -2147483648)
  %i.cx = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cu)
  %i.cy = fcmp olt <4 x float> %i.cx, splat (float 1.125000e+00)
  %.not.not71.i = icmp eq <4 x i32> %i.bz, zeroinitializer
  %i.cz = xor <4 x i32> %i.at, %i.cw
  %i.da = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.cu)
  %i.db = fmul <4 x float> %i.aj, %i.da
  %i.dc = fsub <4 x float> %i.cu, %i.db
  %23 = bitcast <4 x i32> %i.cz to <4 x float>
  %24 = select <4 x i1> %.not.not71.i, <4 x float> zeroinitializer, <4 x float> %23
  %25 = select <4 x i1> %i.cy, <4 x float> %24, <4 x float> %i.dc
  %i.dd = fmul <4 x float> %i.bt, %25
  %i.de = fmul <4 x float> %4, %i.ct
  %i.df = fadd <4 x float> %i.cj, %i.de
  %i.dg = fmul <4 x float> %5, %i.ct
  %i.dh = fadd <4 x float> %i.dg, %i.dd
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %.03839
  store <4 x float> %i.df, ptr %i.di, align 16, !tbaa !222, !alias.scope !1486, !noalias !1487
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03839
  store <4 x float> %i.ct, ptr %i.dj, align 16, !tbaa !222, !alias.scope !1488, !noalias !1487
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.03839
  store <4 x float> %i.dh, ptr %i.dk, align 16, !tbaa !222, !alias.scope !1489, !noalias !1487
  %i.dl = add nuw i64 %.03839, 4                  ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.t
  br i1 %i.dm, label %bb.b, label %.preheader, !llvm.loop !1473
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_117TransformToPixelsENS_14AcStrategyTypeEPfS3_mS3_(i32 noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #7 {
bb.a:
  %5 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %6 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %7 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %8 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %9 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %10 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %11 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %12 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %13 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %14 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %15 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %16 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %17 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %18 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %19 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %20 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %21 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %22 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %23 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %24 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %25 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %26 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %27 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %28 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %29 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %30 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %31 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %32 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %33 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %34 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %35 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %36 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %37 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %38 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %39 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %40 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %41 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %42 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %43 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %44 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %45 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %46 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %47 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %48 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %49 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %50 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %51 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %52 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %53 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %54 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %55 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %56 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %i.a = alloca [128 x float], align 16           ; 23 uses
  %57 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %58 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %i.b = alloca [128 x float], align 16           ; 23 uses
  %59 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %60 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %i.c = alloca [128 x float], align 16           ; 23 uses
  %61 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %62 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %i.d = alloca [128 x float], align 16           ; 23 uses
  %63 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %64 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %65 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %66 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %67 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %68 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %69 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %70 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %71 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %72 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %73 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %74 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %75 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %76 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %77 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %78 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %79 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %80 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %81 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %82 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %83 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %84 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %85 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %86 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %87 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %88 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %89 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %90 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %91 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %92 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %93 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %94 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %95 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %96 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %97 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %98 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %99 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %100 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 9 uses
  %101 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 9 uses
  %i.e = alloca [4 x float], align 16             ; 4 uses
  %i.f = alloca [32 x float], align 16            ; 20 uses
  %102 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %i.g = alloca [4 x float], align 16             ; 4 uses
  %103 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %104 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %105 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %106 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %107 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %108 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %109 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %110 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %111 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %112 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %113 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %114 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %115 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %116 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %117 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %118 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %119 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %120 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  switch i32 %0, label %bb.af [
    i32 1, label %bb.b
    i32 13, label %bb.d
    i32 12, label %bb.e
    i32 3, label %bb.g
    i32 2, label %.preheader486
    i32 4, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.l
    i32 8, label %bb.m
    i32 9, label %bb.n
    i32 10, label %bb.o
    i32 11, label %bb.p
    i32 5, label %bb.q
    i32 0, label %bb.r
    i32 14, label %bb.s
    i32 15, label %bb.t
    i32 16, label %bb.u
    i32 17, label %bb.v
    i32 19, label %bb.w
    i32 20, label %bb.x
    i32 18, label %bb.y
    i32 22, label %bb.z
    i32 23, label %bb.aa
    i32 21, label %bb.ab
    i32 25, label %bb.ac
    i32 26, label %bb.ad
    i32 24, label %bb.ae
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load <2 x float>, ptr %1, align 4, !tbaa !256 ; 3 uses
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.k = load <2 x float>, ptr %i.h, align 4, !tbaa !256 ; 2 uses
  %i.l = fadd <2 x float> %i.j, %i.i
  %i.m = fsub <2 x float> %i.j, %i.i
  %i.n = shufflevector <2 x float> %i.l, <2 x float> %i.m, <4 x i32> <i32 0, i32 0, i32 3, i32 3> ; 2 uses
  %i.o = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.p = fadd <4 x float> %i.n, %i.o
  %i.q = fsub <4 x float> %i.n, %i.o
  %i.r = shufflevector <4 x float> %i.p, <4 x float> %i.q, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %i.s = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.t = fadd <4 x float> %i.r, %i.s
  %i.u = fsub <4 x float> %i.r, %i.s
  %i.v = shufflevector <4 x float> %i.t, <4 x float> %i.u, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.v, ptr %i.e, align 16, !tbaa !256
  %invariant.gep531.1 = getelementptr i8, ptr %2, i64 16 ; 4 uses
  br label %.split.us.3.1

bb.c:                                             ; preds = %.split.us.3.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #48
  br label %bb.af

.split.us.3.1:                                    ; preds = %bb.b, %.split.us.3.1
  %i.w = phi i1 [ true, %bb.b ], [ false, %.split.us.3.1 ]
  %.0293542 = phi i64 [ 0, %bb.b ], [ 1, %.split.us.3.1 ] ; 3 uses
  %.idx307 = shl nuw nsw i64 %.0293542, 3
end_hunk_0
