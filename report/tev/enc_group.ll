Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_group?download=true
inline.NumInlined: 2366
inline.NumDeleted: 909
loop-unroll.NumCompletelyUnrolled: 500
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 593
begin_hunk_0_@_ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !55
  %.idx = shl i64 %1, 3
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 %.idx
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 2, float noundef %i.j, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.n, ptr noundef nonnull %8) #48
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %i.m)
  %i.o = load i32, ptr %8, align 4, !tbaa !55
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.o)
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  store i32 %.sroa.speculated.2, ptr %8, align 4, !tbaa !55
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !56
  %.pre = load i32, ptr %8, align 4, !tbaa !55, !noalias !2109
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit.2
  %i.p = phi i32 [ %.pre, %bb.b ], [ %.sroa.speculated.2, %.loopexit.2 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1 ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42, !noalias !2109 ; 3 uses
  %i.u = zext i32 %4 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51, !noalias !2109
  %.idx.i.i = mul nuw nsw i64 %i.u, 24
  %i.x = getelementptr i8, ptr %i.t, i64 %.idx.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !53, !noalias !2109 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !54, !noalias !2109
  %i.ad = sitofp i32 %i.p to float                ; 2 uses
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ah = shl i64 %6, 3                           ; 4 uses
  %.not102.i = icmp eq i64 %i.ah, 0
  br i1 %.not102.i, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %bb.c
  %i.ai = lshr exact i64 %i.ah, 1                 ; 2 uses
  %i.aj = shl i64 %5, 3                           ; 4 uses
  %.not103.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr exact i64 %i.aj, 1
  br i1 %.not103.i, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph98.split.i

.lr.ph98.split.i:                                 ; preds = %.lr.ph98.i
  %i.al = icmp eq i64 %5, 1
  br i1 %i.al, label %.lr.ph.us.i, label %.lr.ph.i

.lr.ph.us.i:                                      ; preds = %.lr.ph98.split.i, %._crit_edge.split.us.us.i
  %.07596.us.i = phi i64 [ %i.by, %._crit_edge.split.us.us.i ], [ 0, %.lr.ph98.split.i ] ; 3 uses
  %.not79.us.i = icmp ult i64 %.07596.us.i, %i.ai ; 2 uses
  %i.am = shl i64 %.07596.us.i, 3                 ; 3 uses
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not79.us.i, i64 0, i64 8
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not79.us.i, i64 4, i64 12
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.am
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.aq = load float, ptr %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !56, !noalias !2109
  %i.ar = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.as = load float, ptr %.sroa.sel73.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !56, !noalias !2109
  %i.at = insertelement <4 x float> poison, float %i.as, i64 0
  %i.au = bitcast <4 x float> %i.ar to <4 x i32>
  %i.av = shufflevector <4 x i32> %i.au, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aw = bitcast <4 x float> %i.at to <4 x i32>
  %i.ax = shufflevector <4 x i32> %i.aw, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us.i
  %.07695.us.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %i.bw, %bb.d ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07695.us.us.i
  %i.az = load <4 x i32>, ptr %i.ay, align 16, !tbaa !57, !noalias !2109 ; 2 uses
  %i.ba = and <4 x i32> %i.az, %i.av
  %i.bb = xor <4 x i32> %i.az, splat (i32 -1)
  %i.bc = and <4 x i32> %i.ax, %i.bb
  %i.bd = or <4 x i32> %i.bc, %i.ba
  %i.be = bitcast <4 x i32> %i.bd to <4 x float>
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.07695.us.us.i
  %i.bg = load <4 x float>, ptr %i.bf, align 16, !tbaa !57, !noalias !2109
  %i.bh = fmul <4 x float> %i.ag, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.07695.us.us.i
  %i.bj = load <4 x float>, ptr %i.bi, align 16, !tbaa !57, !alias.scope !2110, !noalias !2111
  %i.bk = fmul <4 x float> %i.bh, %i.bj           ; 4 uses
  %i.bl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bk) ; 2 uses
  %i.bm = fcmp oge <4 x float> %i.bl, %i.be
  %i.bn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.bk) ; 2 uses
  %i.bo = fadd <4 x float> %i.bk, %i.bn
  %i.bp = fsub <4 x float> %i.bo, %i.bn
  %i.bq = fcmp uge <4 x float> %i.bl, splat (float f0x4B000000)
  %.v.us.us.i = select <4 x i1> %i.bq, <4 x float> %i.bk, <4 x float> %i.bp
  %i.br = select <4 x i1> %i.bm, <4 x float> %.v.us.us.i, <4 x float> zeroinitializer ; 2 uses
  %i.bs = fcmp oge <4 x float> %i.br, splat (float f0x4F000000)
  %i.bt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.br)
  %i.bu = select <4 x i1> %i.bs, <4 x i32> splat (i32 2147483647), <4 x i32> %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.07695.us.us.i
  store <4 x i32> %i.bu, ptr %i.bv, align 16, !tbaa !57, !alias.scope !2111, !noalias !2110
  %i.bw = add nuw nsw i64 %.07695.us.us.i, 4      ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.aj
  br i1 %i.bx, label %bb.d, label %._crit_edge.split.us.us.i, !llvm.loop !7

._crit_edge.split.us.us.i:                        ; preds = %bb.d
  %i.by = add nuw i64 %.07596.us.i, 1             ; 2 uses
  %exitcond106.not.i = icmp eq i64 %i.by, %i.ah
  br i1 %exitcond106.not.i, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph.us.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %.lr.ph98.split.i, %._crit_edge.split.i
  %.07596.i = phi i64 [ %i.ce, %._crit_edge.split.i ], [ 0, %.lr.ph98.split.i ] ; 3 uses
  %.not79.i = icmp ult i64 %.07596.i, %i.ai
  %i.bz = shl i64 %.07596.i, 3
  %i.ca = mul i64 %i.bz, %5                       ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not79.i, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ca
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ca
  br label %bb.e

._crit_edge.split.i:                              ; preds = %bb.e
  %i.ce = add nuw i64 %.07596.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ce, %i.ah
  br i1 %exitcond.not.i, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph.i, !llvm.loop !8

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.07695.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dc, %bb.e ] ; 5 uses
  %i.cf = icmp uge i64 %.07695.i, %i.ak
  %i.cg = zext i1 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !56, !noalias !2109
  %i.cj = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.07695.i
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !tbaa !57, !noalias !2109
  %i.cn = fmul <4 x float> %i.ag, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.07695.i
  %i.cp = load <4 x float>, ptr %i.co, align 16, !tbaa !57, !alias.scope !2110, !noalias !2111
  %i.cq = fmul <4 x float> %i.cn, %i.cp           ; 4 uses
  %i.cr = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cq) ; 2 uses
  %i.cs = fcmp ole <4 x float> %i.ck, %i.cr
  %i.ct = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.cq) ; 2 uses
  %i.cu = fadd <4 x float> %i.cq, %i.ct
  %i.cv = fsub <4 x float> %i.cu, %i.ct
  %i.cw = fcmp uge <4 x float> %i.cr, splat (float f0x4B000000)
  %.v.i = select <4 x i1> %i.cw, <4 x float> %i.cq, <4 x float> %i.cv
  %i.cx = select <4 x i1> %i.cs, <4 x float> %.v.i, <4 x float> zeroinitializer ; 2 uses
  %i.cy = fcmp oge <4 x float> %i.cx, splat (float f0x4F000000)
  %i.cz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.cx)
  %i.da = select <4 x i1> %i.cy, <4 x i32> splat (i32 2147483647), <4 x i32> %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.07695.i
  store <4 x i32> %i.da, ptr %i.db, align 16, !tbaa !57, !alias.scope !2111, !noalias !2110
  %i.dc = add nuw i64 %.07695.i, 4                ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.aj
  br i1 %i.dd, label %bb.e, label %._crit_edge.split.i, !llvm.loop !7

_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit: ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.c, %.lr.ph98.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !167
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.z
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.di = load float, ptr %i.dh, align 8, !tbaa !168
  %i.dj = fdiv float %i.di, %i.ad
  %i.dk = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dm = shl i64 %5, 6
  %i.dn = mul i64 %i.dm, %6                       ; 2 uses
  %.not82 = icmp eq i64 %i.dn, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !56, !alias.scope !2112
  %i.dq = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.dr = bitcast <4 x float> %i.dq to <4 x i32>
  %i.ds = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.du = load float, ptr %i.dt, align 4, !tbaa !56, !alias.scope !2112
  %i.dv = insertelement <4 x float> poison, float %i.du, i64 0
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.06581 = phi i64 [ 0, %.lr.ph ], [ %i.en, %bb.f ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06581
  %i.dy = load <4 x i32>, ptr %i.dx, align 16, !tbaa !57 ; 2 uses
  %i.dz = sitofp <4 x i32> %i.dy to <4 x float>   ; 4 uses
  %i.ea = bitcast <4 x float> %i.dz to <4 x i32>
  %i.eb = and <4 x i32> %i.ea, splat (i32 -2147483648)
  %i.ec = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dz)
  %i.ed = fcmp olt <4 x float> %i.ec, splat (float 1.125000e+00)
  %.not76.not = icmp eq <4 x i32> %i.dy, zeroinitializer
  %i.ee = xor <4 x i32> %i.ds, %i.eb
  %i.ef = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.dz)
  %i.eg = fmul <4 x float> %i.ef, %i.dw
  %i.eh = fsub <4 x float> %i.dz, %i.eg
  %11 = bitcast <4 x i32> %i.ee to <4 x float>
  %12 = select <4 x i1> %.not76.not, <4 x float> zeroinitializer, <4 x float> %11
  %13 = select <4 x i1> %i.ed, <4 x float> %12, <4 x float> %i.eh
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.06581
  %i.ej = load <4 x float>, ptr %i.ei, align 16, !tbaa !57
  %i.ek = fmul <4 x float> %i.ej, %13
  %i.el = fmul <4 x float> %i.dl, %i.ek
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.06581
  store <4 x float> %i.el, ptr %i.em, align 16, !tbaa !57
  %i.en = add nuw i64 %.06581, 4                  ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.dn
  br i1 %i.eo, label %bb.f, label %._crit_edge, !llvm.loop !9
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_SSE219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_(i64 noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef readonly captures(none) %4) #16 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  %5 = alloca %"class.jxl::StatusOr", align 8     ; 6 uses
  %6 = alloca %"class.jxl::AlignedMemory", align 8 ; 5 uses
  %7 = alloca %"class.jxl::StatusOr", align 8     ; 6 uses
  %8 = alloca %"class.jxl::AlignedMemory", align 8 ; 5 uses
  %i.c = alloca [3 x [11 x ptr]], align 16        ; 9 uses
  %i.d = alloca [3 x ptr], align 16               ; 6 uses
  %9 = alloca %"class.jxl::AcStrategy", align 8   ; 11 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %i.f = alloca [4 x float], align 16             ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !169  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load i64, ptr %i.i, align 8, !tbaa !170, !noalias !2139 ; 2 uses
  %i.k = urem i64 %0, %i.j                        ; 2 uses
  %i.l = udiv i64 %0, %i.j                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.n = load i64, ptr %i.m, align 8, !tbaa !171, !noalias !2139 ; 3 uses
  %i.o = lshr i64 %i.n, 3                         ; 6 uses
  %i.p = mul i64 %i.o, %i.k                       ; 8 uses
  %i.q = mul i64 %i.o, %i.l                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !172, !noalias !2139 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load i64, ptr %i.t, align 8, !tbaa !173, !noalias !2139 ; 2 uses
  %i.v = add i64 %i.p, %i.o
  %.not.i.i.i = icmp ugt i64 %i.v, %i.s
  %i.w = tail call i64 @llvm.usub.sat.i64(i64 %i.s, i64 %i.p)
  %i.x = select i1 %.not.i.i.i, i64 %i.w, i64 %i.o ; 3 uses
  %i.y = add i64 %i.q, %i.o
  %.not.i8.i.i = icmp ugt i64 %i.y, %i.u
  %i.z = tail call i64 @llvm.usub.sat.i64(i64 %i.u, i64 %i.q)
  %i.aa = select i1 %.not.i8.i.i, i64 %i.z, i64 %i.o ; 5 uses
  %i.ab = lshr i64 %i.p, 3                        ; 2 uses
  %i.ac = lshr i64 %i.q, 3
  %i.ad = add i64 %i.x, 7
  %i.ae = mul i64 %i.n, %i.k
  %i.af = mul i64 %i.n, %i.l
  %i.ag = load i64, ptr %3, align 8, !tbaa !175
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !176
  %i.aj = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.ak = add i64 %i.ai, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !177
  %i.an = lshr i64 %i.am, 2                       ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !177
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = tail call noundef i64 @_ZN3jxl13MaxVectorSizeEv() #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %5, ptr noundef %i.h, i64 noundef 786432, i64 noundef 0) #49
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !180 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.b, label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203

bb.b:                                             ; preds = %bb.a
  %i.av = lshr i64 %i.ar, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(28) %5) #49
  %i.aw = mul i64 %i.av, 3072
  %i.ax = add i64 %i.aw, 1310720
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  call void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %7, ptr noundef %i.h, i64 noundef %i.ax, i64 noundef 0) #49
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !180 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(28) %7) #49
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !181
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 786432 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 3196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(264) %i.c, i8 0, i64 264, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 2872 ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !182 ; 14 uses
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %._crit_edge286, label %.preheader271

.preheader271:                                    ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2824 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader271, %.preheader270
  %.0187273 = phi i64 [ 0, %.preheader271 ], [ %i.cl, %.preheader270 ] ; 6 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !183
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0187273
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !185 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !187
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i32 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #49
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %.preheader270, label %._crit_edge286

.preheader270:                                    ; preds = %bb.d
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %.0187273 ; 3 uses
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !183
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.0187273
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !185 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !187
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i64 noundef 0, i64 noundef %0, i64 noundef 0) #49
  store ptr %i.bw, ptr %invariant.gep, align 8, !tbaa !188
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !183
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.0187273
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !185 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !187
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i64 noundef 1, i64 noundef %0, i64 noundef 0) #49
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 88
  store ptr %i.cd, ptr %gep.1, align 8, !tbaa !188
  %i.ce = load ptr, ptr %i.bh, align 8, !tbaa !183
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0187273
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !185 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !187
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i64 noundef 2, i64 noundef %0, i64 noundef 0) #49
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 176
  store ptr %i.ck, ptr %gep.2, align 8, !tbaa !188
  %i.cl = add nuw i64 %.0187273, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.bg
  br i1 %exitcond.not, label %.critedge197, label %bb.d, !llvm.loop !2115

.critedge197:                                     ; preds = %.preheader270
  %i.cm = load ptr, ptr %i.bb, align 8, !tbaa !181 ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !181 ; 6 uses
  %.not287 = icmp eq i64 %i.aa, 0
  br i1 %.not287, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %.critedge197
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1200
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1176
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.df = lshr i64 %i.ad, 3                       ; 2 uses
  %.not288 = icmp eq i64 %i.df, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 1292
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 3872
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 3876
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 1020 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  br i1 %.not288, label %.lr.ph285.split.preheader, label %.lr.ph283.us.preheader

.lr.ph285.split.preheader:                        ; preds = %.lr.ph285
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.dq = icmp ult i64 %i.aa, 8
  br i1 %i.dq, label %.lr.ph285.split.epil.preheader, label %.lr.ph285.split.preheader.new

.lr.ph285.split.preheader.new:                    ; preds = %.lr.ph285.split.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph285.split

.lr.ph283.us.preheader:                           ; preds = %.lr.ph285
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 3 uses
  %.in.us = getelementptr inbounds nuw i8, ptr %1, i64 3872
  %.in.us.1 = getelementptr inbounds nuw i8, ptr %1, i64 3876
  %min.iters.check377 = icmp ult i64 %i.bg, 4
  %n.vec379 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n388 = icmp eq i64 %i.bg, %n.vec379
  %min.iters.check363 = icmp ult i64 %i.bg, 4
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_SSE219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_:bb.a
  %i.he = load i32, ptr %9, align 8, !tbaa !193
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gt ; 6 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.he, ptr noundef %i.hf, ptr noundef %i.hg, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  %i.hh = load i32, ptr %9, align 8, !tbaa !193   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47, !noalias !2142
  %i.hi = load i32, ptr %i.be, align 4, !tbaa !164, !noalias !2142
  %i.hj = icmp slt i32 %i.hi, 6
  br i1 %i.hj, label %.loopexit.2.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !56, !noalias !2142
  br label %bb.j

.loopexit.2.i.us:                                 ; preds = %bb.h
  %i.hk = load float, ptr %i.dk, align 8, !tbaa !165, !noalias !2142
  %i.hl = load float, ptr %i.dl, align 4, !tbaa !166, !noalias !2142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !2142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !2142
  store i32 %i.gv, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %i.hh, i64 noundef %i.gr, i64 noundef %i.gq, ptr noundef nonnull %i.b, ptr noundef %i.hf, ptr noundef nonnull %i.e) #48, !noalias !2143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !56, !noalias !2142
  %i.hm = load i32, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !2142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !2142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !2142
  store i32 %i.gv, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 0, float noundef %i.hk, i32 noundef %i.hh, i64 noundef %i.gr, i64 noundef %i.gq, ptr noundef nonnull %i.b, ptr noundef %i.cm, ptr noundef nonnull %i.e) #48, !noalias !2143
  %i.hn = load i32, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !2142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !2142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !2142
  store i32 %i.gv, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  %.idx.i.us = shl nuw nsw i64 %i.gt, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.us
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 2, float noundef %i.hl, i32 noundef %i.hh, i64 noundef %i.gr, i64 noundef %i.gq, ptr noundef nonnull %i.b, ptr noundef %i.ho, ptr noundef nonnull %i.e) #48, !noalias !2143
  %.sroa.speculated.i.us = call i32 @llvm.smax.i32(i32 %i.hm, i32 %i.hn)
  %i.hp = load i32, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  %.sroa.speculated.1.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.us, i32 %i.hp)
  %.sroa.speculated.2.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.1.i.us, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !2142
  store i32 %.sroa.speculated.2.i.us, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.2.i.us, %bb.i
  %i.hq = phi i32 [ %i.gv, %bb.i ], [ %.sroa.speculated.2.i.us, %.loopexit.2.i.us ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.gt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  %i.hs = load ptr, ptr %i.dm, align 8, !tbaa !42, !noalias !2146 ; 3 uses
  %i.ht = zext i32 %i.hh to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !51, !noalias !2146
  %.idx.i.i.i.us = mul nuw nsw i64 %i.ht, 24
  %i.hw = getelementptr i8, ptr %i.hs, i64 %.idx.i.i.i.us
  %i.hx = getelementptr i8, ptr %i.hw, i64 80
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !53, !noalias !2146 ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hy ; 2 uses
  %i.ia = load float, ptr %i.dn, align 4, !tbaa !54, !noalias !2146
  %i.ib = sitofp i32 %i.hq to float               ; 4 uses
  %i.ic = fmul float %i.ia, %i.ib
  %i.id = insertelement <4 x float> poison, float %i.ic, i64 0
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.if = shl nuw nsw i64 %i.gq, 3                ; 6 uses
  %.not102.i.i.us = icmp eq i64 %i.gq, 0          ; 3 uses
  br i1 %.not102.i.i.us, label %.preheader.us.sink.split, label %.lr.ph98.i.i.us

.lr.ph98.i.i.us:                                  ; preds = %bb.j
  %i.ig = shl nuw nsw i64 %i.gq, 2                ; 2 uses
  %i.ih = shl nuw nsw i64 %i.gr, 3                ; 2 uses
  %i.ii = shl nuw nsw i64 %i.gr, 2
  %trunc = trunc nuw i64 %i.gr to i8
  switch i8 %trunc, label %.lr.ph.i.i.us [
    i8 0, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us
    i8 1, label %.lr.ph.us.i.i.us.preheader
  ]

.lr.ph.us.i.i.us.preheader:                       ; preds = %.lr.ph98.i.i.us
  %i.ij = load <2 x float>, ptr %i.a, align 16
  %i.ik = load <2 x float>, ptr %i.di, align 8
  br label %.lr.ph.us.i.i.us

.lr.ph.us.i.i.us:                                 ; preds = %.lr.ph.us.i.i.us.preheader, %._crit_edge.split.us.us.i.i.us
  %.07596.us.i.i.us = phi i64 [ %i.jw, %._crit_edge.split.us.us.i.i.us ], [ 0, %.lr.ph.us.i.i.us.preheader ] ; 3 uses
  %.not79.us.i.i.us = icmp samesign ult i64 %.07596.us.i.i.us, %i.ig
  %i.il = shl nuw nsw i64 %.07596.us.i.i.us, 3    ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.il
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.il
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.il
  %i.ip = insertelement <2 x i1> poison, i1 %.not79.us.i.i.us, i64 0
  %i.iq = shufflevector <2 x i1> %i.ip, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ir = select <2 x i1> %i.iq, <2 x float> %i.ij, <2 x float> %i.ik ; 2 uses
  %i.is = bitcast <2 x float> %i.ir to <2 x i32>
  %i.it = shufflevector <2 x i32> %i.is, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.iu = bitcast <2 x float> %i.ir to <2 x i32>
  %i.iv = shufflevector <2 x i32> %i.iu, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.us.i.i.us
  %.07695.us.us.i.i.us = phi i64 [ 0, %.lr.ph.us.i.i.us ], [ %i.ju, %bb.k ] ; 5 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07695.us.us.i.i.us
  %i.ix = load <4 x i32>, ptr %i.iw, align 16, !tbaa !57, !noalias !2146 ; 2 uses
  %i.iy = and <4 x i32> %i.ix, %i.it
  %i.iz = xor <4 x i32> %i.ix, splat (i32 -1)
  %i.ja = and <4 x i32> %i.iv, %i.iz
  %i.jb = or <4 x i32> %i.ja, %i.iy
  %i.jc = bitcast <4 x i32> %i.jb to <4 x float>
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.07695.us.us.i.i.us
  %i.je = load <4 x float>, ptr %i.jd, align 16, !tbaa !57, !noalias !2146
  %i.jf = fmul <4 x float> %i.ie, %i.je
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %.07695.us.us.i.i.us
  %i.jh = load <4 x float>, ptr %i.jg, align 16, !tbaa !57, !alias.scope !2147, !noalias !2148
  %i.ji = fmul <4 x float> %i.jf, %i.jh           ; 4 uses
  %i.jj = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ji) ; 2 uses
  %i.jk = fcmp oge <4 x float> %i.jj, %i.jc
  %i.jl = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.ji) ; 2 uses
  %i.jm = fadd <4 x float> %i.ji, %i.jl
  %i.jn = fsub <4 x float> %i.jm, %i.jl
  %i.jo = fcmp uge <4 x float> %i.jj, splat (float f0x4B000000)
  %.v.us.us.i.i.us = select <4 x i1> %i.jo, <4 x float> %i.ji, <4 x float> %i.jn
  %i.jp = select <4 x i1> %i.jk, <4 x float> %.v.us.us.i.i.us, <4 x float> zeroinitializer ; 2 uses
  %i.jq = fcmp oge <4 x float> %i.jp, splat (float f0x4F000000)
  %i.jr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.jp)
  %i.js = select <4 x i1> %i.jq, <4 x i32> splat (i32 2147483647), <4 x i32> %i.jr
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.07695.us.us.i.i.us
  store <4 x i32> %i.js, ptr %i.jt, align 16, !tbaa !57, !alias.scope !2149, !noalias !2150
  %i.ju = add nuw nsw i64 %.07695.us.us.i.i.us, 4 ; 2 uses
  %i.jv = icmp samesign ult i64 %i.ju, %i.ih
  br i1 %i.jv, label %bb.k, label %._crit_edge.split.us.us.i.i.us, !llvm.loop !7

._crit_edge.split.us.us.i.i.us:                   ; preds = %bb.k
  %i.jw = add nuw nsw i64 %.07596.us.i.i.us, 1    ; 2 uses
  %exitcond106.not.i.i.us = icmp eq i64 %i.jw, %i.if
  br i1 %exitcond106.not.i.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.us.i.i.us, !llvm.loop !8

.lr.ph.i.i.us:                                    ; preds = %.lr.ph98.i.i.us, %._crit_edge.split.i.i.us
  %.07596.i.i.us = phi i64 [ %i.lb, %._crit_edge.split.i.i.us ], [ 0, %.lr.ph98.i.i.us ] ; 3 uses
  %.not79.i.i.us = icmp samesign ult i64 %.07596.i.i.us, %i.ig
  %i.jx = shl nuw nsw i64 %.07596.i.i.us, 3
  %i.jy = mul nuw nsw i64 %i.jx, %i.gr            ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel = select i1 %.not79.i.i.us, ptr %i.a, ptr %i.di
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.jy
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.jy
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.jy
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.us
  %.07695.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %i.kz, %bb.l ] ; 5 uses
  %i.kc = icmp samesign uge i64 %.07695.i.i.us, %i.ii
  %i.kd = zext i1 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !56, !noalias !2146
  %i.kg = insertelement <4 x float> poison, float %i.kf, i64 0
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %.07695.i.i.us
  %i.kj = load <4 x float>, ptr %i.ki, align 16, !tbaa !57, !noalias !2146
  %i.kk = fmul <4 x float> %i.ie, %i.kj
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.07695.i.i.us
  %i.km = load <4 x float>, ptr %i.kl, align 16, !tbaa !57, !alias.scope !2147, !noalias !2148
  %i.kn = fmul <4 x float> %i.kk, %i.km           ; 4 uses
  %i.ko = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kn) ; 2 uses
  %i.kp = fcmp ole <4 x float> %i.kh, %i.ko
  %i.kq = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.kn) ; 2 uses
  %i.kr = fadd <4 x float> %i.kn, %i.kq
  %i.ks = fsub <4 x float> %i.kr, %i.kq
  %i.kt = fcmp uge <4 x float> %i.ko, splat (float f0x4B000000)
  %.v.i.i.us = select <4 x i1> %i.kt, <4 x float> %i.kn, <4 x float> %i.ks
  %i.ku = select <4 x i1> %i.kp, <4 x float> %.v.i.i.us, <4 x float> zeroinitializer ; 2 uses
  %i.kv = fcmp oge <4 x float> %i.ku, splat (float f0x4F000000)
  %i.kw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ku)
  %i.kx = select <4 x i1> %i.kv, <4 x i32> splat (i32 2147483647), <4 x i32> %i.kw
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %.07695.i.i.us
  store <4 x i32> %i.kx, ptr %i.ky, align 16, !tbaa !57, !alias.scope !2149, !noalias !2150
  %i.kz = add nuw nsw i64 %.07695.i.i.us, 4       ; 2 uses
  %i.la = icmp samesign ult i64 %i.kz, %i.ih
  br i1 %i.la, label %bb.l, label %._crit_edge.split.i.i.us, !llvm.loop !7

._crit_edge.split.i.i.us:                         ; preds = %bb.l
  %i.lb = add nuw nsw i64 %.07596.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.lb, %i.if
  br i1 %exitcond.not.i.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.i.i.us, !llvm.loop !8

_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us: ; preds = %._crit_edge.split.us.us.i.i.us, %._crit_edge.split.i.i.us, %.lr.ph98.i.i.us
  %i.lc = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !167, !noalias !2142
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.hy
  %i.lf = load float, ptr %i.do, align 8, !tbaa !168, !noalias !2142
  %i.lg = fdiv float %i.lf, %i.ib
  %i.lh = insertelement <4 x float> poison, float %i.lg, i64 0
  %i.li = shufflevector <4 x float> %i.lh, <4 x float> poison, <4 x i32> zeroinitializer
  %.not82.i.us = icmp eq i64 %i.gr, 0
  br i1 %.not82.i.us, label %.preheader.us.sink.split, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, %.lr.ph.i.us
  %.06581.i.us = phi i64 [ %i.lw, %.lr.ph.i.us ], [ 0, %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us ] ; 4 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %.06581.i.us
  %i.lk = load <4 x i32>, ptr %i.lj, align 16, !tbaa !57, !alias.scope !2141, !noalias !2151 ; 2 uses
  %i.ll = sitofp <4 x i32> %i.lk to <4 x float>   ; 4 uses
  %i.lm = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ll)
  %i.ln = fcmp olt <4 x float> %i.lm, splat (float 1.125000e+00)
  %.not76.not.i.us = icmp eq <4 x i32> %i.lk, zeroinitializer
  %i.lo = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.ll)
  %i.lp = fmul <4 x float> %i.lo, splat (float 1.450000e-01)
  %i.lq = fsub <4 x float> %i.ll, %i.lp
  %10 = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x3F6E10E8), <4 x float> %i.ll)
  %11 = select <4 x i1> %.not76.not.i.us, <4 x float> zeroinitializer, <4 x float> %10
  %12 = select <4 x i1> %i.ln, <4 x float> %11, <4 x float> %i.lq
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.06581.i.us
  %i.ls = load <4 x float>, ptr %i.lr, align 16, !tbaa !57, !noalias !2142
  %i.lt = fmul <4 x float> %i.ls, %12
  %i.lu = fmul <4 x float> %i.li, %i.lt
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %.06581.i.us
  store <4 x float> %i.lu, ptr %i.lv, align 16, !tbaa !57, !alias.scope !2140, !noalias !2143
  %i.lw = add nuw nsw i64 %.06581.i.us, 4         ; 2 uses
  %i.lx = icmp samesign ult i64 %i.lw, %i.gt
  br i1 %i.lx, label %.lr.ph.i.us, label %.lr.ph.us, !llvm.loop !9

bb.m:                                             ; preds = %.lr.ph.us, %bb.m
  %.0182275.us = phi i64 [ 0, %.lr.ph.us ], [ %i.mi, %bb.m ] ; 4 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0182275.us ; 2 uses
  %i.lz = load <4 x float>, ptr %i.ly, align 16, !tbaa !57
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %.0182275.us
  %i.mb = load <4 x float>, ptr %i.ma, align 16, !tbaa !57 ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %.0182275.us ; 2 uses
  %i.md = load <4 x float>, ptr %i.mc, align 16, !tbaa !57
  %i.me = fmul <4 x float> %i.ga, %i.mb
  %i.mf = fsub <4 x float> %i.lz, %i.me
  %i.mg = fmul <4 x float> %i.gb, %i.mb
  %i.mh = fsub <4 x float> %i.md, %i.mg
  store <4 x float> %i.mf, ptr %i.ly, align 16, !tbaa !57
  store <4 x float> %i.mh, ptr %i.mc, align 16, !tbaa !57
  %i.mi = add nuw nsw i64 %.0182275.us, 4         ; 2 uses
  %i.mj = icmp samesign ult i64 %i.mi, %i.gt
  br i1 %i.mj, label %bb.m, label %.preheader.us, !llvm.loop !2123

.preheader.i.us:                                  ; preds = %.preheader.us
  store <4 x float> %i.ug, ptr %i.f, align 16, !tbaa !56, !noalias !2152
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.preheader.i.us, %.preheader.us
  %i.mk = fmul float %i.uh, %i.us
  %i.ml = insertelement <4 x float> poison, float %i.mk, i64 0
  %i.mm = shufflevector <4 x float> %i.ml, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br i1 %.not102.i.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph98.i.us

.lr.ph98.i.us:                                    ; preds = %.loopexit.i.us
  switch i8 %trunc290, label %.lr.ph.i202.us [
    i8 0, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
    i8 1, label %.lr.ph.us.i.us.preheader
  ]

.lr.ph.us.i.us.preheader:                         ; preds = %.lr.ph98.i.us
  %i.mn = load <2 x float>, ptr %i.f, align 16
  %i.mo = load <2 x float>, ptr %i.dp, align 8
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.lr.ph.us.i.us.preheader, %._crit_edge.split.us.us.i.us
  %.07596.us.i.us = phi i64 [ %i.oa, %._crit_edge.split.us.us.i.us ], [ 0, %.lr.ph.us.i.us.preheader ] ; 3 uses
  %.not79.us.i.us = icmp samesign ult i64 %.07596.us.i.us, %i.tw
  %i.mp = shl nuw nsw i64 %.07596.us.i.us, 3      ; 3 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.mp
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.mp
  %i.mt = insertelement <2 x i1> poison, i1 %.not79.us.i.us, i64 0
  %i.mu = shufflevector <2 x i1> %i.mt, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.mv = select <2 x i1> %i.mu, <2 x float> %i.mn, <2 x float> %i.mo ; 2 uses
  %i.mw = bitcast <2 x float> %i.mv to <2 x i32>
  %i.mx = shufflevector <2 x i32> %i.mw, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.my = bitcast <2 x float> %i.mv to <2 x i32>
  %i.mz = shufflevector <2 x i32> %i.my, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.us.i.us
  %.07695.us.us.i.us = phi i64 [ 0, %.lr.ph.us.i.us ], [ %i.ny, %bb.n ] ; 5 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07695.us.us.i.us
  %i.nb = load <4 x i32>, ptr %i.na, align 16, !tbaa !57, !noalias !2152 ; 2 uses
  %i.nc = and <4 x i32> %i.nb, %i.mx
  %i.nd = xor <4 x i32> %i.nb, splat (i32 -1)
  %i.ne = and <4 x i32> %i.mz, %i.nd
  %i.nf = or <4 x i32> %i.ne, %i.nc
  %i.ng = bitcast <4 x i32> %i.nf to <4 x float>
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %.07695.us.us.i.us
  %i.ni = load <4 x float>, ptr %i.nh, align 16, !tbaa !57, !noalias !2152
  %i.nj = fmul <4 x float> %i.mm, %i.ni
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %.07695.us.us.i.us
  %i.nl = load <4 x float>, ptr %i.nk, align 16, !tbaa !57, !alias.scope !2153, !noalias !2154
  %i.nm = fmul <4 x float> %i.nj, %i.nl           ; 4 uses
  %i.nn = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.nm) ; 2 uses
  %i.no = fcmp oge <4 x float> %i.nn, %i.ng
  %i.np = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.nm) ; 2 uses
  %i.nq = fadd <4 x float> %i.nm, %i.np
  %i.nr = fsub <4 x float> %i.nq, %i.np
  %i.ns = fcmp uge <4 x float> %i.nn, splat (float f0x4B000000)
  %.v.us.us.i.us = select <4 x i1> %i.ns, <4 x float> %i.nm, <4 x float> %i.nr
  %i.nt = select <4 x i1> %i.no, <4 x float> %.v.us.us.i.us, <4 x float> zeroinitializer ; 2 uses
  %i.nu = fcmp oge <4 x float> %i.nt, splat (float f0x4F000000)
  %i.nv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.nt)
  %i.nw = select <4 x i1> %i.nu, <4 x i32> splat (i32 2147483647), <4 x i32> %i.nv
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %.07695.us.us.i.us
  store <4 x i32> %i.nw, ptr %i.nx, align 16, !tbaa !57, !alias.scope !2154, !noalias !2153
  %i.ny = add nuw nsw i64 %.07695.us.us.i.us, 4   ; 2 uses
  %i.nz = icmp samesign ult i64 %i.ny, %i.tx
  br i1 %i.nz, label %bb.n, label %._crit_edge.split.us.us.i.us, !llvm.loop !7

._crit_edge.split.us.us.i.us:                     ; preds = %bb.n
  %i.oa = add nuw nsw i64 %.07596.us.i.us, 1      ; 2 uses
  %exitcond106.not.i.us = icmp eq i64 %i.oa, %i.if
  br i1 %exitcond106.not.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph.us.i.us, !llvm.loop !8

.lr.ph.i202.us:                                   ; preds = %.lr.ph98.i.us, %._crit_edge.split.i.us
  %.07596.i.us = phi i64 [ %i.pf, %._crit_edge.split.i.us ], [ 0, %.lr.ph98.i.us ] ; 3 uses
  %.not79.i.us = icmp samesign ult i64 %.07596.i.us, %i.tw
  %i.ob = shl nuw nsw i64 %.07596.i.us, 3
  %i.oc = mul nuw nsw i64 %i.ob, %i.gr            ; 3 uses
  %.sroa.sel.idx.us.sroa.sel = select i1 %.not79.i.us, ptr %i.f, ptr %i.dp
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.oc
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.oc
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.oc
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i202.us
  %.07695.i.us = phi i64 [ 0, %.lr.ph.i202.us ], [ %i.pd, %bb.o ] ; 5 uses
  %i.og = icmp samesign uge i64 %.07695.i.us, %i.ty
  %i.oh = zext i1 %i.og to i64
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.us.sroa.sel, i64 %i.oh
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !56, !noalias !2152
  %i.ok = insertelement <4 x float> poison, float %i.oj, i64 0
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> zeroinitializer
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %.07695.i.us
  %i.on = load <4 x float>, ptr %i.om, align 16, !tbaa !57, !noalias !2152
  %i.oo = fmul <4 x float> %i.mm, %i.on
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %.07695.i.us
  %i.oq = load <4 x float>, ptr %i.op, align 16, !tbaa !57, !alias.scope !2153, !noalias !2154
  %i.or = fmul <4 x float> %i.oo, %i.oq           ; 4 uses
  %i.os = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.or) ; 2 uses
  %i.ot = fcmp ole <4 x float> %i.ol, %i.os
  %i.ou = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.or) ; 2 uses
  %i.ov = fadd <4 x float> %i.or, %i.ou
  %i.ow = fsub <4 x float> %i.ov, %i.ou
  %i.ox = fcmp uge <4 x float> %i.os, splat (float f0x4B000000)
  %.v.i.us = select <4 x i1> %i.ox, <4 x float> %i.or, <4 x float> %i.ow
  %i.oy = select <4 x i1> %i.ot, <4 x float> %.v.i.us, <4 x float> zeroinitializer ; 2 uses
  %i.oz = fcmp oge <4 x float> %i.oy, splat (float f0x4F000000)
  %i.pa = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.oy)
  %i.pb = select <4 x i1> %i.oz, <4 x i32> splat (i32 2147483647), <4 x i32> %i.pa
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %.07695.i.us
  store <4 x i32> %i.pb, ptr %i.pc, align 16, !tbaa !57, !alias.scope !2154, !noalias !2153
  %i.pd = add nuw nsw i64 %.07695.i.us, 4         ; 2 uses
  %i.pe = icmp samesign ult i64 %i.pd, %i.tx
  br i1 %i.pe, label %bb.o, label %._crit_edge.split.i.us, !llvm.loop !7

._crit_edge.split.i.us:                           ; preds = %bb.o
  %i.pf = add nuw nsw i64 %.07596.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.pf, %i.if
  br i1 %exitcond.not.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph.i202.us, !llvm.loop !8

_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us: ; preds = %._crit_edge.split.us.us.i.us, %._crit_edge.split.i.us, %.lr.ph98.i.us, %.loopexit.i.us
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.ui, ptr noundef %i.cm, ptr noundef %i.pg, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_.thres, i64 16, i1 false)
  %i.ph = load float, ptr %.in.us.1, align 4, !tbaa !56
  %i.pi = load i32, ptr %9, align 8, !tbaa !193   ; 2 uses
  %i.pj = shl nuw nsw i64 %i.gt, 1                ; 2 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.pj ; 3 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.pj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  %i.pm = load ptr, ptr %i.dm, align 8, !tbaa !42, !noalias !2157 ; 2 uses
  %i.pn = zext i32 %i.pi to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 40
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !51, !noalias !2157
  %.idx.i.i.us.1 = mul nuw nsw i64 %i.pn, 24
  %i.pq = getelementptr i8, ptr %i.pm, i64 %.idx.i.i.us.1
  %i.pr = getelementptr i8, ptr %i.pq, i64 88
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !53, !noalias !2157
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.ps ; 2 uses
  %i.pu = load float, ptr %i.dn, align 4, !tbaa !54, !noalias !2157
  %i.pv = fmul float %i.pu, %i.ib
  br i1 %i.ts, label %.preheader.i.us.1, label %.loopexit.i.us.1

.preheader.i.us.1:                                ; preds = %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
  store <4 x float> %i.ug, ptr %i.f, align 16, !tbaa !56, !noalias !2157
  br label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.preheader.i.us.1, %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
  %i.pw = fmul float %i.ph, %i.pv
  %i.px = insertelement <4 x float> poison, float %i.pw, i64 0
  %i.py = shufflevector <4 x float> %i.px, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br i1 %.not102.i.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1, label %.lr.ph98.i.us.1

.lr.ph98.i.us.1:                                  ; preds = %.loopexit.i.us.1
  switch i8 %trunc290, label %.lr.ph.i202.us.1 [
    i8 0, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1
    i8 1, label %.lr.ph.us.i.us.preheader.1
  ]

.lr.ph.us.i.us.preheader.1:                       ; preds = %.lr.ph98.i.us.1
  %i.pz = load <2 x float>, ptr %i.f, align 16
  %i.qa = load <2 x float>, ptr %i.dp, align 8
  br label %.lr.ph.us.i.us.1

.lr.ph.us.i.us.1:                                 ; preds = %._crit_edge.split.us.us.i.us.1, %.lr.ph.us.i.us.preheader.1
  %.07596.us.i.us.1 = phi i64 [ %i.rm, %._crit_edge.split.us.us.i.us.1 ], [ 0, %.lr.ph.us.i.us.preheader.1 ] ; 3 uses
  %.not79.us.i.us.1 = icmp samesign ult i64 %.07596.us.i.us.1, %i.tw
  %i.qb = shl nuw nsw i64 %.07596.us.i.us.1, 3    ; 3 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.qb
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.qb
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.qb
end_hunk_1
