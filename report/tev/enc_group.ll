Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_group?download=true
inline.NumInlined: 2366
inline.NumDeleted: 909
loop-unroll.NumCompletelyUnrolled: 500
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 593
begin_hunk_0_@_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi:bb.a
  %i.gk = phi i32 [ %spec.store.select, %bb.y ], [ %i.fq, %bb.x ] ; 4 uses
  %i.gl = icmp eq i32 %3, 0
  %i.gm = fcmp olt float %i.ga, 1.100000e+01
  %or.cond222 = and i1 %i.gl, %i.gm
  br i1 %or.cond222, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.z
  %i.gn = tail call i32 @llvm.smin.i32(i32 %i.gk, i32 254)
  %spec.store.select201 = add nsw i32 %i.gn, 1
  br label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.go = icmp ugt i32 %3, 3
  br i1 %i.go, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.gp = fpext float %.0179.lcssa to double
  %i.gq = fmul double %i.gp, f0x40025AAAAACCDC00
  %i.gr = fptrunc double %i.gq to float
  %i.gs = and i32 %3, -2
  %or.cond7 = icmp eq i32 %i.gs, 10
  %switch.selectcmp = icmp eq i32 %3, 5
  %switch.select = select i1 %switch.selectcmp, i64 2, i64 3
  %switch.selectcmp204 = icmp eq i32 %3, 4
  %switch.select205 = select i1 %switch.selectcmp204, i64 0, i64 %switch.select
  %.0174 = select i1 %or.cond7, i64 1, i64 %switch.select205 ; 2 uses
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul1, i64 %.0174
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %1
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !34
  %i.gw = uitofp i64 %4 to double
  %i.gx = fmul double %i.gv, %i.gw
  %i.gy = uitofp i64 %5 to double
  %i.gz = fmul double %i.gx, %i.gy
  %i.ha = fmul double %i.gz, 8.000000e+00
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul2, i64 %.0174
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %1
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !34
  %i.he = fpext float %i.gr to double
  %i.hf = fmul double %i.hd, %i.he
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.ha, double 8.000000e+00, double %i.hf) ; 2 uses
  %i.hh = fcmp olt double %i.hg, %.0180.lcssa
  br i1 %i.hh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hi = fdiv double %.0180.lcssa, %i.hg
  %i.hj = fptosi double %i.hi to i32
  %i.hk = tail call i32 @llvm.smax.i32(i32 %i.hj, i32 0)
  %i.hl = tail call i32 @llvm.umin.i32(i32 %i.hk, i32 2)
  %i.hm = add nsw i32 %i.gk, %i.hl
  %spec.store.select202 = tail call i32 @llvm.smin.i32(i32 %i.hm, i32 255)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %.thread
  %spec.store.select201.sink = phi i32 [ %spec.store.select201, %.thread ], [ %spec.store.select202, %bb.ac ] ; 2 uses
  store i32 %spec.store.select201.sink, ptr %8, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab, %bb.aa
  %i.hn = phi i32 [ %i.gk, %bb.aa ], [ %i.gk, %bb.ab ], [ %spec.store.select201.sink, %.sink.split ] ; 2 uses
  %i.ho = mul i64 %5, %4
  %i.hp = trunc i64 %i.ho to i32                  ; 5 uses
  %i.hq = fptosi float %i.fr to i32
  %i.hr = sdiv i32 %i.hp, 2                       ; 4 uses
  %i.hs = add nsw i32 %i.hr, %i.hq
  %i.ht = sdiv i32 %i.hs, %i.hp
  %i.hu = fptosi float %i.ft to i32
  %i.hv = add nsw i32 %i.hr, %i.hu
  %i.hw = sdiv i32 %i.hv, %i.hp
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.hw, i32 %i.ht)
  %i.hx = fptosi float %i.fw to i32
  %i.hy = add nsw i32 %i.hr, %i.hx
  %i.hz = sdiv i32 %i.hy, %i.hp
  %.sroa.speculated.1 = tail call i32 @llvm.smin.i32(i32 %i.hz, i32 %.sroa.speculated)
  %i.ia = fptosi float %i.fz to i32
  %i.ib = add nsw i32 %i.hr, %i.ia
  %i.ic = sdiv i32 %i.ib, %i.hp
  %.sroa.speculated.2 = tail call i32 @llvm.smin.i32(i32 %i.ic, i32 %.sroa.speculated.1)
  %i.id = sdiv i32 %i.hn, 2
  %spec.select223 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.2, i32 15) ; 2 uses
  %i.ie = sub nsw i32 %i.hn, %spec.select223
  br i1 %i.ct, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ad
  %i.if = sitofp i32 %spec.select223 to double    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ih = load <2 x float>, ptr %i.ig, align 4, !tbaa !27
  %i.ii = fpext <2 x float> %i.ih to <2 x double>
  %i.ij = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> splat (double 1.000000e-02), <2 x double> %i.ii)
  %i.im = fptrunc <2 x double> %i.il to <2 x float>
  store <2 x float> %i.im, ptr %i.ig, align 4, !tbaa !27
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !27
  %i.ip = fpext float %i.io to double
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.if, double 1.000000e-02, double %i.ip)
  %i.ir = fptrunc double %i.iq to float
  store float %i.ir, ptr %i.in, align 4, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.ad
  %.sroa.speculated208 = tail call i32 @llvm.smax.i32(i32 %i.id, i32 %i.ie)
  %spec.select203 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated208, i32 4)
  store i32 %spec.select203, ptr %8, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_SSE425QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i1 noundef zeroext %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr noalias nofree noundef captures(none) %9, ptr noalias nofree noundef captures(none) %10) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36
  %i.e = icmp slt i32 %i.d, 6
  br i1 %i.e, label %.loopexit.2, label %bb.b

.loopexit.2:                                      ; preds = %bb.a
  %i.f = load i32, ptr %8, align 4, !tbaa !26     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3872
  %i.h = load float, ptr %i.g, align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3876
  %i.j = load float, ptr %i.i, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !26
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1
  call void @_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.k, ptr noundef nonnull %8) #48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !27
  %i.l = load i32, ptr %8, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !26
  call void @_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 0, float noundef %i.h, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %9, ptr noundef nonnull %8) #48
  %i.m = load i32, ptr %8, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !26
  %.idx = shl i64 %1, 3
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 %.idx
  call void @_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 2, float noundef %i.j, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.n, ptr noundef nonnull %8) #48
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %i.m)
  %i.o = load i32, ptr %8, align 4, !tbaa !26
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.o)
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  store i32 %.sroa.speculated.2, ptr %8, align 4, !tbaa !26
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !27
  %.pre = load i32, ptr %8, align 4, !tbaa !26, !noalias !142
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit.2
  %i.p = phi i32 [ %.pre, %bb.b ], [ %.sroa.speculated.2, %.loopexit.2 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1 ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9, !noalias !142 ; 3 uses
  %i.u = zext i32 %4 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14, !noalias !142
  %.idx.i.i = mul nuw nsw i64 %i.u, 24
  %i.x = getelementptr i8, ptr %i.t, i64 %.idx.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23, !noalias !142 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !25, !noalias !142
  %i.ad = sitofp i32 %i.p to float                ; 2 uses
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ah = shl i64 %6, 3                           ; 4 uses
  %.not91.i = icmp eq i64 %i.ah, 0
  br i1 %.not91.i, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph87.i

.lr.ph87.i:                                       ; preds = %bb.c
  %i.ai = lshr exact i64 %i.ah, 1                 ; 2 uses
  %i.aj = shl i64 %5, 3                           ; 5 uses
  %.not92.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr exact i64 %i.aj, 1
  br i1 %.not92.i, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph87.split.i

.lr.ph87.split.i:                                 ; preds = %.lr.ph87.i
  %i.al = icmp eq i64 %5, 1
  br i1 %i.al, label %.lr.ph.us.i, label %.lr.ph.i

.lr.ph.us.i:                                      ; preds = %.lr.ph87.split.i, %._crit_edge.split.us.us.i
  %.07585.us.i = phi i64 [ %i.bp, %._crit_edge.split.us.us.i ], [ 0, %.lr.ph87.split.i ] ; 3 uses
  %.not79.us.i = icmp ult i64 %.07585.us.i, %i.ai ; 2 uses
  %i.am = shl i64 %.07585.us.i, 3                 ; 3 uses
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not79.us.i, i64 0, i64 8
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not79.us.i, i64 4, i64 12
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.am
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.aq = load float, ptr %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !27, !noalias !142
  %i.ar = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.at = load float, ptr %.sroa.sel73.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !27, !noalias !142
  %i.au = insertelement <4 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us.i
  %.07684.us.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %i.bn, %bb.d ] ; 5 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07684.us.us.i
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !tbaa !28, !noalias !142
  %i.ay = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.av, <4 x float> %i.as, <4 x float> %i.ax)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.07684.us.us.i
  %i.ba = load <4 x float>, ptr %i.az, align 16, !tbaa !28, !noalias !142
  %i.bb = fmul <4 x float> %i.ag, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.07684.us.us.i
  %i.bd = load <4 x float>, ptr %i.bc, align 16, !tbaa !28, !alias.scope !146, !noalias !147
  %i.be = fmul <4 x float> %i.bb, %i.bd           ; 2 uses
  %i.bf = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.be)
  %i.bg = fcmp ole <4 x float> %i.ay, %i.bf
  %i.bh = tail call <4 x float> @llvm.roundeven.v4f32(<4 x float> %i.be)
  %i.bi = select <4 x i1> %i.bg, <4 x float> %i.bh, <4 x float> zeroinitializer ; 2 uses
  %i.bj = fcmp oge <4 x float> %i.bi, splat (float f0x4F000000)
  %i.bk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bi)
  %i.bl = select <4 x i1> %i.bj, <4 x i32> splat (i32 2147483647), <4 x i32> %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.07684.us.us.i
  store <4 x i32> %i.bl, ptr %i.bm, align 16, !tbaa !28, !alias.scope !147, !noalias !146
  %i.bn = add nuw i64 %.07684.us.us.i, 4          ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.aj
  br i1 %i.bo, label %bb.d, label %._crit_edge.split.us.us.i, !llvm.loop !29

._crit_edge.split.us.us.i:                        ; preds = %bb.d
  %i.bp = add nuw i64 %.07585.us.i, 1             ; 2 uses
  %exitcond95.not.i = icmp eq i64 %i.bp, %i.ah
  br i1 %exitcond95.not.i, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph.us.i, !llvm.loop !31

.lr.ph.i:                                         ; preds = %.lr.ph87.split.i, %._crit_edge.split.i
  %.07585.i = phi i64 [ %i.bu, %._crit_edge.split.i ], [ 0, %.lr.ph87.split.i ] ; 3 uses
  %.not79.i = icmp ult i64 %.07585.i, %i.ai
  %i.bq = mul i64 %i.aj, %.07585.i                ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not79.i, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bq
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bq
  br label %bb.e

._crit_edge.split.i:                              ; preds = %bb.e
  %i.bu = add nuw i64 %.07585.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, %i.ah
  br i1 %exitcond.not.i, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph.i, !llvm.loop !31

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.07684.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cp, %bb.e ] ; 5 uses
  %i.bv = icmp uge i64 %.07684.i, %i.ak
  %i.bw = zext i1 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !27, !noalias !142
  %i.bz = insertelement <4 x float> poison, float %i.by, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.07684.i
  %i.cc = load <4 x float>, ptr %i.cb, align 16, !tbaa !28, !noalias !142
  %i.cd = fmul <4 x float> %i.ag, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.07684.i
  %i.cf = load <4 x float>, ptr %i.ce, align 16, !tbaa !28, !alias.scope !146, !noalias !147
  %i.cg = fmul <4 x float> %i.cd, %i.cf           ; 2 uses
  %i.ch = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cg)
  %i.ci = fcmp ole <4 x float> %i.ca, %i.ch
  %i.cj = tail call <4 x float> @llvm.roundeven.v4f32(<4 x float> %i.cg)
  %i.ck = select <4 x i1> %i.ci, <4 x float> %i.cj, <4 x float> zeroinitializer ; 2 uses
  %i.cl = fcmp oge <4 x float> %i.ck, splat (float f0x4F000000)
  %i.cm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ck)
  %i.cn = select <4 x i1> %i.cl, <4 x i32> splat (i32 2147483647), <4 x i32> %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.07684.i
  store <4 x i32> %i.cn, ptr %i.co, align 16, !tbaa !28, !alias.scope !147, !noalias !146
  %i.cp = add nuw i64 %.07684.i, 4                ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.aj
  br i1 %i.cq, label %bb.e, label %._crit_edge.split.i, !llvm.loop !29

_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit: ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.c, %.lr.ph87.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !148
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.z
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !149
  %i.cw = fdiv float %i.cv, %i.ad
  %i.cx = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = shl i64 %5, 6
  %i.da = mul i64 %i.cz, %6                       ; 2 uses
  %.not82 = icmp eq i64 %i.da, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !27, !alias.scope !150
  %i.dd = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.de = bitcast <4 x float> %i.dd to <4 x i32>
  %i.df = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !27, !alias.scope !150
  %i.di = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.06581 = phi i64 [ 0, %.lr.ph ], [ %i.ed, %bb.f ] ; 4 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06581
  %i.dl = load <4 x i32>, ptr %i.dk, align 16, !tbaa !28 ; 2 uses
  %i.dm = sitofp <4 x i32> %i.dl to <4 x float>   ; 4 uses
  %i.dn = bitcast <4 x float> %i.dm to <4 x i32>
  %i.do = and <4 x i32> %i.dn, splat (i32 -2147483648)
  %i.dp = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dm)
  %i.dq = fcmp olt <4 x float> %i.dp, splat (float 1.125000e+00)
  %.not76 = icmp eq <4 x i32> %i.dl, zeroinitializer
  %i.dr = xor <4 x i32> %i.df, %i.do
  %i.ds = bitcast <4 x i32> %i.dr to <4 x float>
  %i.dt = select <4 x i1> %.not76, <4 x float> zeroinitializer, <4 x float> %i.ds
  %i.du = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.dm)
  %i.dv = fmul <4 x float> %i.du, %i.dj
  %i.dw = fsub <4 x float> %i.dm, %i.dv
  %i.dx = select <4 x i1> %i.dq, <4 x float> %i.dt, <4 x float> %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.06581
  %i.dz = load <4 x float>, ptr %i.dy, align 16, !tbaa !28
  %i.ea = fmul <4 x float> %i.dz, %i.dx
  %i.eb = fmul <4 x float> %i.cy, %i.ea
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.06581
  store <4 x float> %i.eb, ptr %i.ec, align 16, !tbaa !28
  %i.ed = add nuw i64 %.06581, 4                  ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.da
  br i1 %i.ee, label %bb.f, label %._crit_edge, !llvm.loop !153
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_SSE419ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_(i64 noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef readonly captures(none) %4) #6 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 10 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  %5 = alloca %"class.jxl::StatusOr", align 8     ; 6 uses
  %6 = alloca %"class.jxl::AlignedMemory", align 8 ; 5 uses
  %7 = alloca %"class.jxl::StatusOr", align 8     ; 6 uses
  %8 = alloca %"class.jxl::AlignedMemory", align 8 ; 5 uses
  %i.c = alloca [3 x [11 x ptr]], align 16        ; 9 uses
  %i.d = alloca [3 x ptr], align 16               ; 6 uses
  %9 = alloca %"class.jxl::AcStrategy", align 8   ; 10 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %i.f = alloca [4 x float], align 16             ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load i64, ptr %i.i, align 8, !tbaa !155, !noalias !156 ; 2 uses
  %i.k = urem i64 %0, %i.j                        ; 2 uses
  %i.l = udiv i64 %0, %i.j                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.n = load i64, ptr %i.m, align 8, !tbaa !159, !noalias !156 ; 3 uses
  %i.o = lshr i64 %i.n, 3                         ; 6 uses
  %i.p = mul i64 %i.o, %i.k                       ; 8 uses
  %i.q = mul i64 %i.o, %i.l                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !160, !noalias !156 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load i64, ptr %i.t, align 8, !tbaa !161, !noalias !156 ; 2 uses
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
  %i.ag = load i64, ptr %3, align 8, !tbaa !162
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !164
  %i.aj = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.ak = add i64 %i.ai, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !165
  %i.an = lshr i64 %i.am, 2                       ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !165
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = tail call noundef i64 @_ZN3jxl13MaxVectorSizeEv() #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %5, ptr noundef %i.h, i64 noundef 786432, i64 noundef 0) #49
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !166 ; 2 uses
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
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !166 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(28) %7) #49
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !169
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 786432 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 3196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(264) %i.c, i8 0, i64 264, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 2872 ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !170 ; 14 uses
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %._crit_edge286, label %.preheader271

.preheader271:                                    ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2824 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader271, %.preheader270
  %.0187273 = phi i64 [ 0, %.preheader271 ], [ %i.cl, %.preheader270 ] ; 6 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !171
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0187273
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !172 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i32 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #49
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %.preheader270, label %._crit_edge286
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_SSE419ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_:bb.a
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 88
  store ptr %i.cd, ptr %gep.1, align 8, !tbaa !176
  %i.ce = load ptr, ptr %i.bh, align 8, !tbaa !171
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0187273
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !172 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !174
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i64 noundef 2, i64 noundef %0, i64 noundef 0) #49
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 176
  store ptr %i.ck, ptr %gep.2, align 8, !tbaa !176
  %i.cl = add nuw i64 %.0187273, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.bg
  br i1 %exitcond.not, label %.critedge197, label %bb.d, !llvm.loop !177

.critedge197:                                     ; preds = %.preheader270
  %i.cm = load ptr, ptr %i.bb, align 8, !tbaa !169 ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !169 ; 5 uses
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
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 1300
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 3872 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 3876 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 1020 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  br i1 %.not288, label %.lr.ph285.split.preheader, label %.lr.ph283.us.preheader

.lr.ph285.split.preheader:                        ; preds = %.lr.ph285
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.dv = icmp ult i64 %i.aa, 8
  br i1 %i.dv, label %.lr.ph285.split.epil.preheader, label %.lr.ph285.split.preheader.new

.lr.ph285.split.preheader.new:                    ; preds = %.lr.ph285.split.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph285.split

.lr.ph283.us.preheader:                           ; preds = %.lr.ph285
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 3 uses
  %min.iters.check391 = icmp ult i64 %i.bg, 4
  %n.vec393 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n402 = icmp eq i64 %i.bg, %n.vec393
  %min.iters.check377 = icmp ult i64 %i.bg, 4
  %n.vec379 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n388 = icmp eq i64 %i.bg, %n.vec379
  %min.iters.check = icmp ult i64 %i.bg, 4
  %n.vec = and i64 %i.bg, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br label %.lr.ph283.us

.lr.ph283.us:                                     ; preds = %.lr.ph283.us.preheader, %._crit_edge.us
  %.0186284.us = phi i64 [ %i.ts, %._crit_edge.us ], [ 0, %.lr.ph283.us.preheader ] ; 7 uses
  %i.dy = add i64 %.0186284.us, %i.q              ; 3 uses
  %i.dz = load ptr, ptr %i.cp, align 8, !tbaa !169
  %i.ea = load i64, ptr %i.cq, align 8, !tbaa !165
  %i.eb = mul i64 %i.ea, %i.dy
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ec, i64 64) ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.p
  %i.ee = lshr i64 %.0186284.us, 3
  %i.ef = add nuw nsw i64 %i.ee, %i.ac            ; 2 uses
  %i.eg = load ptr, ptr %i.cr, align 8, !tbaa !169
  %i.eh = load i64, ptr %i.cs, align 8, !tbaa !165
  %i.ei = mul i64 %i.eh, %i.ef
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ej, i64 64) ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ab
  %i.el = load ptr, ptr %i.ct, align 8, !tbaa !169
  %i.em = load i64, ptr %i.cu, align 8, !tbaa !165
  %i.en = mul i64 %i.em, %i.ef
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.en ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eo, i64 64) ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #47
  %i.eq = shl i64 %.0186284.us, 3
  %i.er = add i64 %i.ak, %i.eq
  %i.es = load i64, ptr %i.ao, align 8, !tbaa !165
  %i.et = mul i64 %i.es, %i.er                    ; 3 uses
  %i.eu = load ptr, ptr %i.cv, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eu, i64 64) ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.et ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ev, i64 64) ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.aj
  store ptr %i.ew, ptr %i.d, align 16, !tbaa !178
  %i.ex = load ptr, ptr %i.cx, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ex, i64 64) ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.et ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ey, i64 64) ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.aj
  store ptr %i.ez, ptr %i.cw, align 8, !tbaa !178
  %i.fa = load ptr, ptr %i.cz, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fa, i64 64) ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.et ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 64) ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.aj
  store ptr %i.fc, ptr %i.cy, align 16, !tbaa !178
  %i.fd = load i64, ptr %i.al, align 8, !tbaa !165
  %i.fe = mul i64 %i.fd, %i.dy                    ; 3 uses
  %i.ff = load ptr, ptr %i.da, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ff, i64 64) ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fe ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fg, i64 64) ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.p
  %i.fi = load ptr, ptr %i.db, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fi, i64 64) ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fe ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fj, i64 64) ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.p
  %i.fl = load ptr, ptr %i.dc, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fl, i64 64) ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fe ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fm, i64 64) ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.p
  %i.fo = load ptr, ptr %i.dd, align 8, !tbaa !169
  %i.fp = load i64, ptr %i.de, align 8, !tbaa !165
  %i.fq = mul i64 %i.fp, %i.dy
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fr, i64 64) ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph283.us, %.critedge.us
  %indvars.iv = phi i64 [ 8, %.lr.ph283.us ], [ %indvars.iv.next, %.critedge.us ] ; 2 uses
  %.0185282.us = phi i64 [ 0, %.lr.ph283.us ], [ %i.sy, %.critedge.us ] ; 4 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.x, i64 %indvars.iv)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.0185282.us
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !28
  %i.fv = load float, ptr %i.dg, align 8, !tbaa !179
  %i.fw = sitofp i8 %i.fu to float
  %i.fx = load float, ptr %i.dh, align 4, !tbaa !180 ; 2 uses
  %i.fy = call noundef float @llvm.fmuladd.f32(float %i.fw, float %i.fx, float %i.fv)
  %i.fz = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.0185282.us
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !28
  %i.gd = load float, ptr %i.di, align 4, !tbaa !181
  %i.ge = sitofp i8 %i.gc to float
  %i.gf = call noundef float @llvm.fmuladd.f32(float %i.ge, float %i.fx, float %i.gd)
  %i.gg = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = shl nuw i64 %.0185282.us, 3             ; 2 uses
  %or.cond279.us = icmp ugt i64 %i.x, %i.gi
  br i1 %or.cond279.us, label %.lr.ph281.us, label %.critedge.us

.lr.ph281.us:                                     ; preds = %bb.e, %bb.r
  %.0184280.us = phi i64 [ %i.sx, %bb.r ], [ %i.gi, %bb.e ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.0184280.us
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !28  ; 3 uses
  %i.gl = lshr i8 %i.gk, 1                        ; 2 uses
  %i.gm = and i8 %i.gk, 1
  %.sroa.2.0.insert.ext.i.us = zext nneg i8 %i.gm to i64
  %.sroa.2.0.insert.shift.i.us = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.us, 32
  %.sroa.0.0.insert.ext.i.us = zext nneg i8 %i.gl to i64
  %.sroa.0.0.insert.insert.i.us = or disjoint i64 %.sroa.2.0.insert.shift.i.us, %.sroa.0.0.insert.ext.i.us
  %i.gn = trunc nuw nsw i64 %.sroa.0.0.insert.insert.i.us to i40
  store i40 %i.gn, ptr %9, align 8
  %i.go = trunc i8 %i.gk to i1
  br i1 %i.go, label %bb.f, label %bb.r

bb.f:                                             ; preds = %.lr.ph281.us
  %i.gp = zext nneg i8 %i.gl to i64               ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !28
  %i.gs = zext i8 %i.gr to i64                    ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.gp
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !28
  %i.gv = zext i8 %i.gu to i64                    ; 3 uses
  %i.gw = call noundef i64 @llvm.umin.i64(i64 %i.gv, i64 %i.gs) ; 9 uses
  %i.gx = call noundef i64 @llvm.umax.i64(i64 %i.gv, i64 %i.gs) ; 13 uses
  %i.gy = shl nuw nsw i64 %i.gx, 6
  %i.gz = mul nuw nsw i64 %i.gy, %i.gw            ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #47
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.0184280.us ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !26 ; 4 uses
  %.idx195.us = shl i64 %.0184280.us, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0183.idx274.us = phi i64 [ 0, %bb.f ], [ %.0183.add.us, %bb.g ] ; 2 uses
  %.0183.ptr.us = getelementptr inbounds nuw i8, ptr @.ref.tmp.13, i64 %.0183.idx274.us
  %i.hc = load i32, ptr %.0183.ptr.us, align 4, !tbaa !26
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = load i32, ptr %9, align 8, !tbaa !182
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hd
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !178
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx195.us
  %i.hi = mul nsw i64 %i.gz, %i.hd
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hi
  call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %i.he, ptr noundef %i.hh, i64 noundef %i.aq, ptr noundef %i.hj, ptr noundef nonnull %i.bd) #48
  %.0183.add.us = add nuw nsw i64 %.0183.idx274.us, 4 ; 2 uses
  %.not193.us = icmp eq i64 %.0183.add.us, 12
  br i1 %.not193.us, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.hk = load i32, ptr %9, align 8, !tbaa !182
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gz ; 6 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.hk, ptr noundef %i.hl, ptr noundef %i.hm, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  %i.hn = load i32, ptr %9, align 8, !tbaa !182   ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47, !noalias !190
  %i.ho = load i32, ptr %i.be, align 4, !tbaa !36, !noalias !190
  %i.hp = icmp slt i32 %i.ho, 6
  br i1 %i.hp, label %.loopexit.2.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !27, !noalias !190
  br label %bb.j

.loopexit.2.i.us:                                 ; preds = %bb.h
  %i.hq = load float, ptr %i.dn, align 8, !tbaa !140, !noalias !190
  %i.hr = load float, ptr %i.do, align 4, !tbaa !141, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !190
  store i32 %i.hb, ptr %i.e, align 4, !tbaa !26, !noalias !190
  call void @_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dm, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %i.hn, i64 noundef %i.gx, i64 noundef %i.gw, ptr noundef nonnull %i.b, ptr noundef %i.hl, ptr noundef nonnull %i.e) #48, !noalias !192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !27, !noalias !190
  %i.hs = load i32, ptr %i.e, align 4, !tbaa !26, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !190
  store i32 %i.hb, ptr %i.e, align 4, !tbaa !26, !noalias !190
  call void @_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dm, i64 noundef 0, float noundef %i.hq, i32 noundef %i.hn, i64 noundef %i.gx, i64 noundef %i.gw, ptr noundef nonnull %i.b, ptr noundef %i.cm, ptr noundef nonnull %i.e) #48, !noalias !192
  %i.ht = load i32, ptr %i.e, align 4, !tbaa !26, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !190
  store i32 %i.hb, ptr %i.e, align 4, !tbaa !26, !noalias !190
  %.idx.i.us = shl nuw nsw i64 %i.gz, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.us
  call void @_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dm, i64 noundef 2, float noundef %i.hr, i32 noundef %i.hn, i64 noundef %i.gx, i64 noundef %i.gw, ptr noundef nonnull %i.b, ptr noundef %i.hu, ptr noundef nonnull %i.e) #48, !noalias !192
  %.sroa.speculated.i.us = call i32 @llvm.smax.i32(i32 %i.hs, i32 %i.ht)
  %i.hv = load i32, ptr %i.e, align 4, !tbaa !26, !noalias !190
  %.sroa.speculated.1.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.us, i32 %i.hv)
  %.sroa.speculated.2.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.1.i.us, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !190
  store i32 %.sroa.speculated.2.i.us, ptr %i.e, align 4, !tbaa !26, !noalias !190
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.2.i.us, %bb.i
  %i.hw = phi i32 [ %i.hb, %bb.i ], [ %.sroa.speculated.2.i.us, %.loopexit.2.i.us ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.gz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.hy = load ptr, ptr %i.dp, align 8, !tbaa !9, !noalias !198 ; 3 uses
  %i.hz = zext i32 %i.hn to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !14, !noalias !198
  %.idx.i.i.i.us = mul nuw nsw i64 %i.hz, 24      ; 2 uses
  %i.ic = getelementptr i8, ptr %i.hy, i64 %.idx.i.i.i.us
  %i.id = getelementptr i8, ptr %i.ic, i64 80
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !23, !noalias !198 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ie ; 2 uses
  %i.ig = load float, ptr %i.dq, align 4, !tbaa !25, !noalias !198
  %i.ih = sitofp i32 %i.hw to float               ; 4 uses
  %i.ii = fmul float %i.ig, %i.ih
  %i.ij = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.il = shl nuw nsw i64 %i.gw, 3                ; 6 uses
  %.not91.i.i.us = icmp eq i64 %i.gw, 0           ; 3 uses
  br i1 %.not91.i.i.us, label %.preheader.us.sink.split, label %.lr.ph87.i.i.us

.lr.ph87.i.i.us:                                  ; preds = %bb.j
  %i.im = shl nuw nsw i64 %i.gw, 2                ; 2 uses
  %i.in = shl nuw nsw i64 %i.gx, 3                ; 3 uses
  %i.io = shl nuw nsw i64 %i.gx, 2
  %trunc = trunc nuw i64 %i.gx to i8
  switch i8 %trunc, label %.lr.ph.i.i.us [
    i8 0, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us
    i8 1, label %.lr.ph.us.i.i.us.preheader
  ]

.lr.ph.us.i.i.us.preheader:                       ; preds = %.lr.ph87.i.i.us
  %.val = load float, ptr %i.dj, align 4
  %.val349 = load float, ptr %i.dl, align 4
  %.val350 = load float, ptr %i.a, align 16
  %.val351 = load float, ptr %i.dk, align 8
  br label %.lr.ph.us.i.i.us

.lr.ph.us.i.i.us:                                 ; preds = %.lr.ph.us.i.i.us.preheader, %._crit_edge.split.us.us.i.i.us
  %.07585.us.i.i.us = phi i64 [ %i.js, %._crit_edge.split.us.us.i.i.us ], [ 0, %.lr.ph.us.i.i.us.preheader ] ; 3 uses
  %.not79.us.i.i.us = icmp samesign ult i64 %.07585.us.i.i.us, %i.im ; 2 uses
  %i.ip = shl nuw nsw i64 %.07585.us.i.i.us, 3    ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ip
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ip
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ip
  %i.it = select i1 %.not79.us.i.i.us, float %.val, float %.val349
  %i.iu = insertelement <4 x float> poison, float %i.it, i64 0
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iw = select i1 %.not79.us.i.i.us, float %.val350, float %.val351
  %i.ix = insertelement <4 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <4 x float> %i.ix, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.us.i.i.us
  %.07684.us.us.i.i.us = phi i64 [ 0, %.lr.ph.us.i.i.us ], [ %i.jq, %bb.k ] ; 5 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07684.us.us.i.i.us
  %i.ja = load <4 x float>, ptr %i.iz, align 16, !tbaa !28, !noalias !198
  %i.jb = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.iy, <4 x float> %i.iv, <4 x float> %i.ja)
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %.07684.us.us.i.i.us
  %i.jd = load <4 x float>, ptr %i.jc, align 16, !tbaa !28, !noalias !198
  %i.je = fmul <4 x float> %i.ik, %i.jd
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.07684.us.us.i.i.us
  %i.jg = load <4 x float>, ptr %i.jf, align 16, !tbaa !28, !alias.scope !199, !noalias !200
  %i.jh = fmul <4 x float> %i.je, %i.jg           ; 2 uses
  %i.ji = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.jh)
  %i.jj = fcmp ole <4 x float> %i.jb, %i.ji
  %i.jk = call <4 x float> @llvm.roundeven.v4f32(<4 x float> %i.jh)
  %i.jl = select <4 x i1> %i.jj, <4 x float> %i.jk, <4 x float> zeroinitializer ; 2 uses
  %i.jm = fcmp oge <4 x float> %i.jl, splat (float f0x4F000000)
  %i.jn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.jl)
  %i.jo = select <4 x i1> %i.jm, <4 x i32> splat (i32 2147483647), <4 x i32> %i.jn
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %.07684.us.us.i.i.us
  store <4 x i32> %i.jo, ptr %i.jp, align 16, !tbaa !28, !alias.scope !201, !noalias !202
  %i.jq = add nuw nsw i64 %.07684.us.us.i.i.us, 4 ; 2 uses
  %i.jr = icmp samesign ult i64 %i.jq, %i.in
  br i1 %i.jr, label %bb.k, label %._crit_edge.split.us.us.i.i.us, !llvm.loop !29

._crit_edge.split.us.us.i.i.us:                   ; preds = %bb.k
  %i.js = add nuw nsw i64 %.07585.us.i.i.us, 1    ; 2 uses
  %exitcond95.not.i.i.us = icmp eq i64 %i.js, %i.il
  br i1 %exitcond95.not.i.i.us, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.us.i.i.us, !llvm.loop !31

.lr.ph.i.i.us:                                    ; preds = %.lr.ph87.i.i.us, %._crit_edge.split.i.i.us
  %.07585.i.i.us = phi i64 [ %i.kt, %._crit_edge.split.i.i.us ], [ 0, %.lr.ph87.i.i.us ] ; 3 uses
  %.not79.i.i.us = icmp samesign ult i64 %.07585.i.i.us, %i.im
  %i.jt = mul nuw nsw i64 %.07585.i.i.us, %i.in   ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel = select i1 %.not79.i.i.us, ptr %i.a, ptr %i.dk
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.jt
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.jt
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.jt
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.us
  %.07684.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %i.kr, %bb.l ] ; 5 uses
  %i.jx = icmp samesign uge i64 %.07684.i.i.us, %i.io
  %i.jy = zext i1 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel, i64 %i.jy
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !27, !noalias !198
  %i.kb = insertelement <4 x float> poison, float %i.ka, i64 0
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %.07684.i.i.us
  %i.ke = load <4 x float>, ptr %i.kd, align 16, !tbaa !28, !noalias !198
  %i.kf = fmul <4 x float> %i.ik, %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.07684.i.i.us
  %i.kh = load <4 x float>, ptr %i.kg, align 16, !tbaa !28, !alias.scope !199, !noalias !200
  %i.ki = fmul <4 x float> %i.kf, %i.kh           ; 2 uses
  %i.kj = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ki)
  %i.kk = fcmp ole <4 x float> %i.kc, %i.kj
  %i.kl = call <4 x float> @llvm.roundeven.v4f32(<4 x float> %i.ki)
  %i.km = select <4 x i1> %i.kk, <4 x float> %i.kl, <4 x float> zeroinitializer ; 2 uses
  %i.kn = fcmp oge <4 x float> %i.km, splat (float f0x4F000000)
  %i.ko = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.km)
  %i.kp = select <4 x i1> %i.kn, <4 x i32> splat (i32 2147483647), <4 x i32> %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %.07684.i.i.us
  store <4 x i32> %i.kp, ptr %i.kq, align 16, !tbaa !28, !alias.scope !201, !noalias !202
  %i.kr = add nuw nsw i64 %.07684.i.i.us, 4       ; 2 uses
  %i.ks = icmp samesign ult i64 %i.kr, %i.in
  br i1 %i.ks, label %bb.l, label %._crit_edge.split.i.i.us, !llvm.loop !29

._crit_edge.split.i.i.us:                         ; preds = %bb.l
  %i.kt = add nuw nsw i64 %.07585.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.kt, %i.il
  br i1 %exitcond.not.i.i.us, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.i.i.us, !llvm.loop !31

_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us: ; preds = %._crit_edge.split.us.us.i.i.us, %._crit_edge.split.i.i.us, %.lr.ph87.i.i.us
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !148, !noalias !190
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.ie
  %i.kx = load float, ptr %i.dr, align 8, !tbaa !149, !noalias !190
  %i.ky = fdiv float %i.kx, %i.ih
  %i.kz = insertelement <4 x float> poison, float %i.ky, i64 0
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> poison, <4 x i32> zeroinitializer
  %.not82.i.us = icmp eq i64 %i.gx, 0
  br i1 %.not82.i.us, label %.preheader.us.sink.split, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, %.lr.ph.i.us
  %.06581.i.us = phi i64 [ %i.lr, %.lr.ph.i.us ], [ 0, %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us ] ; 4 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.06581.i.us
  %i.lc = load <4 x i32>, ptr %i.lb, align 16, !tbaa !28, !alias.scope !188, !noalias !203 ; 2 uses
  %i.ld = sitofp <4 x i32> %i.lc to <4 x float>   ; 4 uses
  %i.le = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ld)
  %i.lf = fcmp olt <4 x float> %i.le, splat (float 1.125000e+00)
  %.not76.i.us = icmp eq <4 x i32> %i.lc, zeroinitializer
  %i.lg = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x3F6E10E8), <4 x float> %i.ld)
  %i.lh = select <4 x i1> %.not76.i.us, <4 x float> zeroinitializer, <4 x float> %i.lg
  %i.li = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.ld)
  %i.lj = fmul <4 x float> %i.li, splat (float 1.450000e-01)
  %i.lk = fsub <4 x float> %i.ld, %i.lj
  %i.ll = select <4 x i1> %i.lf, <4 x float> %i.lh, <4 x float> %i.lk
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %.06581.i.us
  %i.ln = load <4 x float>, ptr %i.lm, align 16, !tbaa !28, !noalias !190
  %i.lo = fmul <4 x float> %i.ln, %i.ll
  %i.lp = fmul <4 x float> %i.la, %i.lo
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.06581.i.us
  store <4 x float> %i.lp, ptr %i.lq, align 16, !tbaa !28, !alias.scope !185, !noalias !192
  %i.lr = add nuw nsw i64 %.06581.i.us, 4         ; 2 uses
  %i.ls = icmp samesign ult i64 %i.lr, %i.gz
  br i1 %i.ls, label %.lr.ph.i.us, label %.lr.ph.us, !llvm.loop !153

bb.m:                                             ; preds = %.lr.ph.us, %bb.m
  %.0182275.us = phi i64 [ 0, %.lr.ph.us ], [ %i.md, %bb.m ] ; 4 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0182275.us ; 2 uses
  %i.lu = load <4 x float>, ptr %i.lt, align 16, !tbaa !28
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.0182275.us
  %i.lw = load <4 x float>, ptr %i.lv, align 16, !tbaa !28 ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %.0182275.us ; 2 uses
  %i.ly = load <4 x float>, ptr %i.lx, align 16, !tbaa !28
  %i.lz = fmul <4 x float> %i.ga, %i.lw
  %i.ma = fsub <4 x float> %i.lu, %i.lz
  %i.mb = fmul <4 x float> %i.gh, %i.lw
  %i.mc = fsub <4 x float> %i.ly, %i.mb
  store <4 x float> %i.ma, ptr %i.lt, align 16, !tbaa !28
  store <4 x float> %i.mc, ptr %i.lx, align 16, !tbaa !28
  %i.md = add nuw nsw i64 %.0182275.us, 4         ; 2 uses
  %i.me = icmp samesign ult i64 %i.md, %i.gz
  br i1 %i.me, label %bb.m, label %.preheader.us, !llvm.loop !204

.preheader.i.us:                                  ; preds = %.preheader.us
  %i.mf = insertelement <2 x float> poison, float %i.td, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mh = insertelement <2 x float> poison, float %i.tc, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mg, <2 x float> %i.mi, <2 x float> <float 5.800000e-01, float 6.200000e-01>) ; 2 uses
  %i.mk = fcmp olt <2 x float> %i.mj, splat (float 5.000000e-01)
  %i.ml = select <2 x i1> %i.mk, <2 x float> splat (float 5.000000e-01), <2 x float> %i.mj
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  store <4 x float> %i.mm, ptr %i.f, align 16, !tbaa !27, !noalias !205
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.preheader.i.us, %.preheader.us
  %i.mn = fmul float %i.th, %i.tq
  %i.mo = insertelement <4 x float> poison, float %i.mn, i64 0
  %i.mp = shufflevector <4 x float> %i.mo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br i1 %.not91.i.i.us, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph87.i.us

.lr.ph87.i.us:                                    ; preds = %.loopexit.i.us
  %trunc290 = trunc nuw i64 %i.gx to i8
  switch i8 %trunc290, label %.lr.ph.i202.us [
    i8 0, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
    i8 1, label %.lr.ph.us.i.us.preheader
  ]

.lr.ph.us.i.us.preheader:                         ; preds = %.lr.ph87.i.us
  %.val352 = load float, ptr %i.ds, align 4
  %.val353 = load float, ptr %i.du, align 4
  %.val354 = load float, ptr %i.f, align 16
  %.val355 = load float, ptr %i.dt, align 8
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.lr.ph.us.i.us.preheader, %._crit_edge.split.us.us.i.us
  %.07585.us.i.us = phi i64 [ %i.nt, %._crit_edge.split.us.us.i.us ], [ 0, %.lr.ph.us.i.us.preheader ] ; 3 uses
  %.not79.us.i.us = icmp samesign ult i64 %.07585.us.i.us, %i.te ; 2 uses
  %i.mq = shl nuw nsw i64 %.07585.us.i.us, 3      ; 3 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.mq
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.mq
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.mq
  %i.mu = select i1 %.not79.us.i.us, float %.val352, float %.val353
  %i.mv = insertelement <4 x float> poison, float %i.mu, i64 0
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mx = select i1 %.not79.us.i.us, float %.val354, float %.val355
  %i.my = insertelement <4 x float> poison, float %i.mx, i64 0
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.us.i.us
  %.07684.us.us.i.us = phi i64 [ 0, %.lr.ph.us.i.us ], [ %i.nr, %bb.n ] ; 5 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07684.us.us.i.us
  %i.nb = load <4 x float>, ptr %i.na, align 16, !tbaa !28, !noalias !205
  %i.nc = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.mz, <4 x float> %i.mw, <4 x float> %i.nb)
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %.07684.us.us.i.us
  %i.ne = load <4 x float>, ptr %i.nd, align 16, !tbaa !28, !noalias !205
  %i.nf = fmul <4 x float> %i.mp, %i.ne
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %.07684.us.us.i.us
  %i.nh = load <4 x float>, ptr %i.ng, align 16, !tbaa !28, !alias.scope !209, !noalias !210
  %i.ni = fmul <4 x float> %i.nf, %i.nh           ; 2 uses
  %i.nj = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ni)
  %i.nk = fcmp ole <4 x float> %i.nc, %i.nj
  %i.nl = call <4 x float> @llvm.roundeven.v4f32(<4 x float> %i.ni)
  %i.nm = select <4 x i1> %i.nk, <4 x float> %i.nl, <4 x float> zeroinitializer ; 2 uses
  %i.nn = fcmp oge <4 x float> %i.nm, splat (float f0x4F000000)
  %i.no = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.nm)
  %i.np = select <4 x i1> %i.nn, <4 x i32> splat (i32 2147483647), <4 x i32> %i.no
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %.07684.us.us.i.us
  store <4 x i32> %i.np, ptr %i.nq, align 16, !tbaa !28, !alias.scope !210, !noalias !209
  %i.nr = add nuw nsw i64 %.07684.us.us.i.us, 4   ; 2 uses
  %i.ns = icmp samesign ult i64 %i.nr, %i.tf
  br i1 %i.ns, label %bb.n, label %._crit_edge.split.us.us.i.us, !llvm.loop !29

._crit_edge.split.us.us.i.us:                     ; preds = %bb.n
  %i.nt = add nuw nsw i64 %.07585.us.i.us, 1      ; 2 uses
  %exitcond95.not.i.us = icmp eq i64 %i.nt, %i.il
  br i1 %exitcond95.not.i.us, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph.us.i.us, !llvm.loop !31

.lr.ph.i202.us:                                   ; preds = %.lr.ph87.i.us, %._crit_edge.split.i.us
  %.07585.i.us = phi i64 [ %i.ou, %._crit_edge.split.i.us ], [ 0, %.lr.ph87.i.us ] ; 3 uses
  %.not79.i.us = icmp samesign ult i64 %.07585.i.us, %i.te
  %i.nu = mul nuw nsw i64 %i.tf, %.07585.i.us     ; 3 uses
  %.sroa.sel.idx.us.sroa.sel = select i1 %.not79.i.us, ptr %i.f, ptr %i.dt
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.nu
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.nu
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.nu
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i202.us
  %.07684.i.us = phi i64 [ 0, %.lr.ph.i202.us ], [ %i.os, %bb.o ] ; 5 uses
  %i.ny = icmp samesign uge i64 %.07684.i.us, %i.tg
  %i.nz = zext i1 %i.ny to i64
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.us.sroa.sel, i64 %i.nz
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !27, !noalias !205
  %i.oc = insertelement <4 x float> poison, float %i.ob, i64 0
  %i.od = shufflevector <4 x float> %i.oc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.07684.i.us
  %i.of = load <4 x float>, ptr %i.oe, align 16, !tbaa !28, !noalias !205
  %i.og = fmul <4 x float> %i.mp, %i.of
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %.07684.i.us
  %i.oi = load <4 x float>, ptr %i.oh, align 16, !tbaa !28, !alias.scope !209, !noalias !210
  %i.oj = fmul <4 x float> %i.og, %i.oi           ; 2 uses
  %i.ok = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oj)
  %i.ol = fcmp ole <4 x float> %i.od, %i.ok
  %i.om = call <4 x float> @llvm.roundeven.v4f32(<4 x float> %i.oj)
  %i.on = select <4 x i1> %i.ol, <4 x float> %i.om, <4 x float> zeroinitializer ; 2 uses
  %i.oo = fcmp oge <4 x float> %i.on, splat (float f0x4F000000)
  %i.op = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.on)
  %i.oq = select <4 x i1> %i.oo, <4 x i32> splat (i32 2147483647), <4 x i32> %i.op
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %.07684.i.us
  store <4 x i32> %i.oq, ptr %i.or, align 16, !tbaa !28, !alias.scope !210, !noalias !209
  %i.os = add nuw nsw i64 %.07684.i.us, 4         ; 2 uses
  %i.ot = icmp samesign ult i64 %i.os, %i.tf
  br i1 %i.ot, label %bb.o, label %._crit_edge.split.i.us, !llvm.loop !29

._crit_edge.split.i.us:                           ; preds = %bb.o
  %i.ou = add nuw nsw i64 %.07585.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ou, %i.il
  br i1 %exitcond.not.i.us, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph.i202.us, !llvm.loop !31

_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us: ; preds = %._crit_edge.split.us.us.i.us, %._crit_edge.split.i.us, %.lr.ph87.i.us, %.loopexit.i.us
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.hn, ptr noundef %i.cm, ptr noundef %i.ov, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_.thres, i64 16, i1 false)
  %i.ow = load float, ptr %i.do, align 4, !tbaa !27
  %i.ox = load i32, ptr %9, align 8, !tbaa !182   ; 2 uses
  %i.oy = shl nuw nsw i64 %i.gz, 1                ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.oy ; 3 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.oy ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.pb = load ptr, ptr %i.dp, align 8, !tbaa !9, !noalias !215 ; 2 uses
  %i.pc = zext i32 %i.ox to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !14, !noalias !215
  %.idx.i.i.us.1 = mul nuw nsw i64 %i.pc, 24
  %i.pf = getelementptr i8, ptr %i.pb, i64 %.idx.i.i.us.1
  %i.pg = getelementptr i8, ptr %i.pf, i64 88
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !23, !noalias !215
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %i.ph ; 2 uses
  %i.pj = load float, ptr %i.dq, align 4, !tbaa !25, !noalias !215
  %i.pk = fmul float %i.pj, %i.ih
  br i1 %i.ta, label %.preheader.i.us.1, label %.loopexit.i.us.1

.preheader.i.us.1:                                ; preds = %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
  %i.pl = insertelement <2 x float> poison, float %i.td, i64 0
  %i.pm = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pn = insertelement <2 x float> poison, float %i.tc, i64 0
  %i.po = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pm, <2 x float> %i.po, <2 x float> <float 5.800000e-01, float 6.200000e-01>) ; 2 uses
  %i.pq = fcmp olt <2 x float> %i.pp, splat (float 5.000000e-01)
  %i.pr = select <2 x i1> %i.pq, <2 x float> splat (float 5.000000e-01), <2 x float> %i.pp
  %i.ps = shufflevector <2 x float> %i.pr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  store <4 x float> %i.ps, ptr %i.f, align 16, !tbaa !27, !noalias !215
  br label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.preheader.i.us.1, %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
  %i.pt = fmul float %i.ow, %i.pk
  %i.pu = insertelement <4 x float> poison, float %i.pt, i64 0
  %i.pv = shufflevector <4 x float> %i.pu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br i1 %.not91.i.i.us, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1, label %.lr.ph87.i.us.1

.lr.ph87.i.us.1:                                  ; preds = %.loopexit.i.us.1
  %trunc290.1 = trunc nuw i64 %i.gx to i8
  switch i8 %trunc290.1, label %.lr.ph.i202.us.1 [
    i8 0, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1
    i8 1, label %.lr.ph.us.i.us.preheader.1
  ]

.lr.ph.us.i.us.preheader.1:                       ; preds = %.lr.ph87.i.us.1
  %.val356 = load float, ptr %i.ds, align 4
  %.val357 = load float, ptr %i.du, align 4
  %.val358 = load float, ptr %i.f, align 16
  %.val359 = load float, ptr %i.dt, align 8
  br label %.lr.ph.us.i.us.1

.lr.ph.us.i.us.1:                                 ; preds = %._crit_edge.split.us.us.i.us.1, %.lr.ph.us.i.us.preheader.1
  %.07585.us.i.us.1 = phi i64 [ %i.qz, %._crit_edge.split.us.us.i.us.1 ], [ 0, %.lr.ph.us.i.us.preheader.1 ] ; 3 uses
  %.not79.us.i.us.1 = icmp samesign ult i64 %.07585.us.i.us.1, %i.te ; 2 uses
  %i.pw = shl nuw nsw i64 %.07585.us.i.us.1, 3    ; 3 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.pw
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.pw
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.pw
  %i.qa = select i1 %.not79.us.i.us.1, float %.val356, float %.val357
  %i.qb = insertelement <4 x float> poison, float %i.qa, i64 0
  %i.qc = shufflevector <4 x float> %i.qb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qd = select i1 %.not79.us.i.us.1, float %.val358, float %.val359
  %i.qe = insertelement <4 x float> poison, float %i.qd, i64 0
  %i.qf = shufflevector <4 x float> %i.qe, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.us.i.us.1
  %.07684.us.us.i.us.1 = phi i64 [ 0, %.lr.ph.us.i.us.1 ], [ %i.qx, %bb.p ] ; 5 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07684.us.us.i.us.1
  %i.qh = load <4 x float>, ptr %i.qg, align 16, !tbaa !28, !noalias !215
  %i.qi = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.qf, <4 x float> %i.qc, <4 x float> %i.qh)
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %.07684.us.us.i.us.1
  %i.qk = load <4 x float>, ptr %i.qj, align 16, !tbaa !28, !noalias !215
  %i.ql = fmul <4 x float> %i.pv, %i.qk
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %.07684.us.us.i.us.1
  %i.qn = load <4 x float>, ptr %i.qm, align 16, !tbaa !28, !alias.scope !211, !noalias !213
  %i.qo = fmul <4 x float> %i.ql, %i.qn           ; 2 uses
  %i.qp = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.qo)
  %i.qq = fcmp ole <4 x float> %i.qi, %i.qp
  %i.qr = call <4 x float> @llvm.roundeven.v4f32(<4 x float> %i.qo)
  %i.qs = select <4 x i1> %i.qq, <4 x float> %i.qr, <4 x float> zeroinitializer ; 2 uses
  %i.qt = fcmp oge <4 x float> %i.qs, splat (float f0x4F000000)
  %i.qu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.qs)
  %i.qv = select <4 x i1> %i.qt, <4 x i32> splat (i32 2147483647), <4 x i32> %i.qu
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %.07684.us.us.i.us.1
  store <4 x i32> %i.qv, ptr %i.qw, align 16, !tbaa !28, !alias.scope !213, !noalias !211
  %i.qx = add nuw nsw i64 %.07684.us.us.i.us.1, 4 ; 2 uses
  %i.qy = icmp samesign ult i64 %i.qx, %i.tf
  br i1 %i.qy, label %bb.p, label %._crit_edge.split.us.us.i.us.1, !llvm.loop !29

._crit_edge.split.us.us.i.us.1:                   ; preds = %bb.p
  %i.qz = add nuw nsw i64 %.07585.us.i.us.1, 1    ; 2 uses
  %exitcond95.not.i.us.1 = icmp eq i64 %i.qz, %i.il
  br i1 %exitcond95.not.i.us.1, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1, label %.lr.ph.us.i.us.1, !llvm.loop !31

.lr.ph.i202.us.1:                                 ; preds = %.lr.ph87.i.us.1, %._crit_edge.split.i.us.1
  %.07585.i.us.1 = phi i64 [ %i.sa, %._crit_edge.split.i.us.1 ], [ 0, %.lr.ph87.i.us.1 ] ; 3 uses
  %.not79.i.us.1 = icmp samesign ult i64 %.07585.i.us.1, %i.te
  %i.ra = mul nuw nsw i64 %i.tf, %.07585.i.us.1   ; 3 uses
  %.sroa.sel.idx.us.1.sroa.sel = select i1 %.not79.i.us.1, ptr %i.f, ptr %i.dt
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.ra
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.ra
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.ra
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i202.us.1
  %.07684.i.us.1 = phi i64 [ 0, %.lr.ph.i202.us.1 ], [ %i.ry, %bb.q ] ; 5 uses
  %i.re = icmp samesign uge i64 %.07684.i.us.1, %i.tg
  %i.rf = zext i1 %i.re to i64
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.us.1.sroa.sel, i64 %i.rf
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !27, !noalias !215
  %i.ri = insertelement <4 x float> poison, float %i.rh, i64 0
  %i.rj = shufflevector <4 x float> %i.ri, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %.07684.i.us.1
  %i.rl = load <4 x float>, ptr %i.rk, align 16, !tbaa !28, !noalias !215
  %i.rm = fmul <4 x float> %i.pv, %i.rl
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.07684.i.us.1
  %i.ro = load <4 x float>, ptr %i.rn, align 16, !tbaa !28, !alias.scope !211, !noalias !213
  %i.rp = fmul <4 x float> %i.rm, %i.ro           ; 2 uses
  %i.rq = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rp)
  %i.rr = fcmp ole <4 x float> %i.rj, %i.rq
  %i.rs = call <4 x float> @llvm.roundeven.v4f32(<4 x float> %i.rp)
  %i.rt = select <4 x i1> %i.rr, <4 x float> %i.rs, <4 x float> zeroinitializer ; 2 uses
  %i.ru = fcmp oge <4 x float> %i.rt, splat (float f0x4F000000)
  %i.rv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.rt)
  %i.rw = select <4 x i1> %i.ru, <4 x i32> splat (i32 2147483647), <4 x i32> %i.rv
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %.07684.i.us.1
  store <4 x i32> %i.rw, ptr %i.rx, align 16, !tbaa !28, !alias.scope !213, !noalias !211
  %i.ry = add nuw nsw i64 %.07684.i.us.1, 4       ; 2 uses
  %i.rz = icmp samesign ult i64 %i.ry, %i.tf
  br i1 %i.rz, label %bb.q, label %._crit_edge.split.i.us.1, !llvm.loop !29

._crit_edge.split.i.us.1:                         ; preds = %bb.q
  %i.sa = add nuw nsw i64 %.07585.i.us.1, 1       ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i64 %i.sa, %i.il
  br i1 %exitcond.not.i.us.1, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1, label %.lr.ph.i202.us.1, !llvm.loop !31

_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1: ; preds = %._crit_edge.split.us.us.i.us.1, %._crit_edge.split.i.us.1, %.lr.ph87.i.us.1, %.loopexit.i.us.1
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.ox, ptr noundef %i.oz, ptr noundef %i.sb, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #47
  store i32 %i.hw, ptr %i.ha, align 4, !tbaa !26
  call void @_ZN3jxl19ProgressiveSplitter19SplitACCoefficientsIiEEvPKT_RKNS_10AcStrategyEmmPrPS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.bf, ptr noundef %i.co, ptr noundef nonnull align 4 dereferenceable(5) %9, i64 noundef %.0184280.us, i64 noundef %.0186284.us, ptr noundef nonnull %i.c) #49
  br i1 %min.iters.check391, label %scalar.ph390.preheader, label %vector.body394

vector.body394:                                   ; preds = %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1, %vector.body394
  %index395 = phi i64 [ %index.next400, %vector.body394 ], [ 0, %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1 ] ; 2 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index395 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 2 uses
  %wide.load396 = load <2 x ptr>, ptr %i.sc, align 16, !tbaa !176
  %wide.load397 = load <2 x ptr>, ptr %i.sd, align 16, !tbaa !176
  %wide.gep398 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.load396, i64 %i.gz
  %wide.gep399 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.load397, i64 %i.gz
  store <2 x ptr> %wide.gep398, ptr %i.sc, align 16, !tbaa !176
  store <2 x ptr> %wide.gep399, ptr %i.sd, align 16, !tbaa !176
  %index.next400 = add nuw i64 %index395, 4       ; 2 uses
  %i.se = icmp eq i64 %index.next400, %n.vec393
  br i1 %i.se, label %middle.block401, label %vector.body394, !llvm.loop !216

middle.block401:                                  ; preds = %vector.body394
  br i1 %cmp.n402, label %.loopexit405, label %scalar.ph390.preheader

scalar.ph390.preheader:                           ; preds = %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1, %middle.block401
  %.0277.us.ph = phi i64 [ 0, %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1 ], [ %n.vec393, %middle.block401 ]
  br label %scalar.ph390

scalar.ph390:                                     ; preds = %scalar.ph390.preheader, %scalar.ph390
  %.0277.us = phi i64 [ %i.si, %scalar.ph390 ], [ %.0277.us.ph, %scalar.ph390.preheader ] ; 2 uses
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0277.us ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !176
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.gz
  store ptr %i.sh, ptr %i.sf, align 8, !tbaa !176
  %i.si = add nuw i64 %.0277.us, 1                ; 2 uses
  %exitcond294.not = icmp eq i64 %i.si, %i.bg
  br i1 %exitcond294.not, label %.loopexit405, label %scalar.ph390, !llvm.loop !219

.loopexit405:                                     ; preds = %scalar.ph390, %middle.block401
  call void @_ZN3jxl19ProgressiveSplitter19SplitACCoefficientsIiEEvPKT_RKNS_10AcStrategyEmmPrPS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.bf, ptr noundef %i.hx, ptr noundef nonnull align 4 dereferenceable(5) %9, i64 noundef %.0184280.us, i64 noundef %.0186284.us, ptr noundef nonnull %i.dw) #49
  br i1 %min.iters.check377, label %scalar.ph376.preheader, label %vector.body380

vector.body380:                                   ; preds = %.loopexit405, %vector.body380
  %index381 = phi i64 [ %index.next386, %vector.body380 ], [ 0, %.loopexit405 ] ; 2 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %index381 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16 ; 2 uses
  %wide.load382 = load <2 x ptr>, ptr %i.sj, align 8, !tbaa !176
  %wide.load383 = load <2 x ptr>, ptr %i.sk, align 8, !tbaa !176
  %wide.gep384 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.load382, i64 %i.gz
  %wide.gep385 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.load383, i64 %i.gz
  store <2 x ptr> %wide.gep384, ptr %i.sj, align 8, !tbaa !176
  store <2 x ptr> %wide.gep385, ptr %i.sk, align 8, !tbaa !176
  %index.next386 = add nuw i64 %index381, 4       ; 2 uses
  %i.sl = icmp eq i64 %index.next386, %n.vec379
  br i1 %i.sl, label %middle.block387, label %vector.body380, !llvm.loop !220

middle.block387:                                  ; preds = %vector.body380
  br i1 %cmp.n388, label %.loopexit404, label %scalar.ph376.preheader

scalar.ph376.preheader:                           ; preds = %.loopexit405, %middle.block387
  %.0277.us.1.ph = phi i64 [ 0, %.loopexit405 ], [ %n.vec379, %middle.block387 ]
  br label %scalar.ph376

scalar.ph376:                                     ; preds = %scalar.ph376.preheader, %scalar.ph376
  %.0277.us.1 = phi i64 [ %i.sp, %scalar.ph376 ], [ %.0277.us.1.ph, %scalar.ph376.preheader ] ; 2 uses
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.0277.us.1 ; 2 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !176
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.gz
  store ptr %i.so, ptr %i.sm, align 8, !tbaa !176
  %i.sp = add nuw i64 %.0277.us.1, 1              ; 2 uses
  %exitcond294.1.not = icmp eq i64 %i.sp, %i.bg
  br i1 %exitcond294.1.not, label %.loopexit404, label %scalar.ph376, !llvm.loop !221

.loopexit404:                                     ; preds = %scalar.ph376, %middle.block387
  call void @_ZN3jxl19ProgressiveSplitter19SplitACCoefficientsIiEEvPKT_RKNS_10AcStrategyEmmPrPS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.bf, ptr noundef %i.pa, ptr noundef nonnull align 4 dereferenceable(5) %9, i64 noundef %.0184280.us, i64 noundef %.0186284.us, ptr noundef nonnull %i.dx) #49
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.loopexit404, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.loopexit404 ] ; 2 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %index ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.sq, align 16, !tbaa !176
  %wide.load374 = load <2 x ptr>, ptr %i.sr, align 16, !tbaa !176
  %wide.gep = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.load, i64 %i.gz
  %wide.gep375 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.load374, i64 %i.gz
  store <2 x ptr> %wide.gep, ptr %i.sq, align 16, !tbaa !176
  store <2 x ptr> %wide.gep375, ptr %i.sr, align 16, !tbaa !176
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ss = icmp eq i64 %index.next, %n.vec
  br i1 %i.ss, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.loopexit404, %middle.block
  %.0277.us.2.ph = phi i64 [ 0, %.loopexit404 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0277.us.2 = phi i64 [ %i.sw, %scalar.ph ], [ %.0277.us.2.ph, %scalar.ph.preheader ] ; 2 uses
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.0277.us.2 ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !176
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %i.gz
  store ptr %i.sv, ptr %i.st, align 8, !tbaa !176
  %i.sw = add nuw i64 %.0277.us.2, 1              ; 2 uses
  %exitcond294.2.not = icmp eq i64 %i.sw, %i.bg
  br i1 %exitcond294.2.not, label %.loopexit, label %scalar.ph, !llvm.loop !223

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #47
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %.lr.ph281.us
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  %i.sx = add nuw i64 %.0184280.us, 1             ; 2 uses
  %exitcond296.not = icmp eq i64 %i.sx, %umin
  br i1 %exitcond296.not, label %.critedge.us, label %.lr.ph281.us, !llvm.loop !224

.critedge.us:                                     ; preds = %bb.r, %bb.e
  %i.sy = add nuw nsw i64 %.0185282.us, 1         ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 8
  %exitcond297.not = icmp eq i64 %i.sy, %i.df
  br i1 %exitcond297.not, label %._crit_edge.us, label %bb.e, !llvm.loop !225

.preheader.us.sink.split:                         ; preds = %bb.j, %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47, !noalias !190
  br label %.preheader.us

.preheader.us:                                    ; preds = %bb.m, %.preheader.us.sink.split
  %i.sz = mul nuw nsw i64 %i.gv, %i.gs
  %i.ta = icmp samesign ugt i64 %i.sz, 3          ; 2 uses
  %i.tb = uitofp nneg i64 %i.gx to float
  %i.tc = uitofp nneg i64 %i.gw to float          ; 2 uses
  %i.td = fmul nnan float %i.tb, -7.440000e-03    ; 2 uses
  %i.te = shl nuw nsw i64 %i.gw, 2                ; 4 uses
  %i.tf = shl nuw nsw i64 %i.gx, 3                ; 6 uses
  %i.tg = shl nuw nsw i64 %i.gx, 2                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_.thres, i64 16, i1 false)
  %i.th = load float, ptr %i.dn, align 8, !tbaa !27
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.ti = load ptr, ptr %i.dp, align 8, !tbaa !9, !noalias !205 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !14, !noalias !205
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 72
  %i.tm = getelementptr i8, ptr %i.tl, i64 %.idx.i.i.i.us
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !23, !noalias !205
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.tn ; 2 uses
  %i.tp = load float, ptr %i.dq, align 4, !tbaa !25, !noalias !205
  %i.tq = fmul float %i.tp, %i.ih
  br i1 %i.ta, label %.preheader.i.us, label %.loopexit.i.us

.lr.ph.us:                                        ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47, !noalias !190
  %.idx.us = shl nuw nsw i64 %i.gz, 3
  %i.tr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.us
  br label %bb.m

._crit_edge.us:                                   ; preds = %.critedge.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #47
  %i.ts = add nuw i64 %.0186284.us, 1             ; 2 uses
  %exitcond298.not = icmp eq i64 %i.ts, %i.aa
  br i1 %exitcond298.not, label %._crit_edge286, label %.lr.ph283.us, !llvm.loop !226

.lr.ph285.split:                                  ; preds = %.lr.ph285.split, %.lr.ph285.split.preheader.new
  %niter = phi i64 [ 0, %.lr.ph285.split.preheader.new ], [ %niter.next.7, %.lr.ph285.split ]
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge286.loopexit.unr-lcssa, label %.lr.ph285.split, !llvm.loop !226

._crit_edge286.loopexit.unr-lcssa:                ; preds = %.lr.ph285.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge286, label %.lr.ph285.split.epil.preheader

.lr.ph285.split.epil.preheader:                   ; preds = %._crit_edge286.loopexit.unr-lcssa, %.lr.ph285.split.preheader
  %lcmp.mod411 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod411)
  br label %.lr.ph285.split.epil

.lr.ph285.split.epil:                             ; preds = %.lr.ph285.split.epil, %.lr.ph285.split.epil.preheader
  %epil.iter = phi i64 [ 0, %.lr.ph285.split.epil.preheader ], [ %epil.iter.next, %.lr.ph285.split.epil ]
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge286, label %.lr.ph285.split.epil, !llvm.loop !227

._crit_edge286:                                   ; preds = %bb.d, %._crit_edge.us, %._crit_edge286.loopexit.unr-lcssa, %.lr.ph285.split.epil, %bb.c, %.critedge197
  %.sroa.0248.1 = phi i32 [ 0, %.critedge197 ], [ 0, %._crit_edge.us ], [ 1, %bb.c ], [ 0, %._crit_edge286.loopexit.unr-lcssa ], [ 0, %.lr.ph285.split.epil ], [ 1, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #47
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  %.pr = load i32, ptr %i.ay, align 8, !tbaa !166
  %i.tt = icmp eq i32 %.pr, 0
  br i1 %i.tt, label %bb.s, label %.thread

bb.s:                                             ; preds = %._crit_edge286
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(28) %7) #49
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.s, %._crit_edge286
  %.sroa.0248.2262 = phi i32 [ %.sroa.0248.1, %bb.s ], [ %.sroa.0248.1, %._crit_edge286 ], [ %i.az, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %.pr263 = load i32, ptr %i.as, align 8, !tbaa !166
  %i.tu = icmp eq i32 %.pr263, 0
  br i1 %i.tu, label %bb.t, label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203

bb.t:                                             ; preds = %.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(28) %5) #49
  br label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203

_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203: ; preds = %bb.a, %.thread, %bb.t
  %.sroa.0248.3266 = phi i32 [ %.sroa.0248.2262, %bb.t ], [ %.sroa.0248.2262, %.thread ], [ %i.at, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret i32 %.sroa.0248.3266
}

declare noundef i64 @_ZN3jxl13MaxVectorSizeEv() local_unnamed_addr #7

declare void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind writable sret(%"class.jxl::StatusOr") align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noalias noundef %4) unnamed_addr #6 {
bb.a:
  %5 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %6 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %7 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %8 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %9 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %10 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %11 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %12 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %13 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %14 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %15 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %16 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %17 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %18 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %19 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %20 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %21 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %22 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %23 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %24 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %25 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %26 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %27 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %28 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %29 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %30 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %31 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %32 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %33 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %34 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %35 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %36 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %37 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %38 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %39 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %40 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %41 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %42 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %43 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %44 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %45 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %46 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %47 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %48 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %49 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %50 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %51 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %52 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %53 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %54 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %55 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %56 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %i.a = alloca [160 x float], align 16           ; 16 uses
  %57 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %58 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %i.b = alloca [160 x float], align 16           ; 16 uses
  %59 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %60 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %i.c = alloca [160 x float], align 16           ; 16 uses
  %61 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %62 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %i.d = alloca [160 x float], align 16           ; 16 uses
  %63 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %64 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %65 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %66 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %67 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %68 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %69 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %70 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %71 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %72 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %73 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %74 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %75 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %76 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %77 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %78 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %79 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %80 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %81 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %82 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %83 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %84 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %85 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %86 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %87 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %88 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %89 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %90 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %91 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %92 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %93 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %94 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %95 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %96 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %97 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %98 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %99 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %100 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %101 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %i.e = alloca [32 x float], align 16            ; 12 uses
  %102 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %103 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %104 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %105 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %106 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %107 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %108 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %109 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %110 = alloca %"class.jxl::N_SSE4::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi:bb.a
  %i.gg = fdiv float %i.ge, %i.gb
  %i.gh = sitofp i32 %i.fq to float
  %i.gi = fadd float %i.gg, %i.gh
  %i.gj = fptosi float %i.gi to i32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.gj, i32 255) ; 2 uses
  store i32 %spec.store.select, ptr %8, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gk = phi i32 [ %spec.store.select, %bb.y ], [ %i.fq, %bb.x ] ; 4 uses
  %i.gl = icmp eq i32 %3, 0
  %i.gm = fcmp olt float %i.ga, 1.100000e+01
  %or.cond222 = and i1 %i.gl, %i.gm
  br i1 %or.cond222, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.z
  %i.gn = tail call i32 @llvm.smin.i32(i32 %i.gk, i32 254)
  %spec.store.select201 = add nsw i32 %i.gn, 1
  br label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.go = icmp ugt i32 %3, 3
  br i1 %i.go, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.gp = fpext float %.0179.lcssa to double
  %i.gq = fmul double %i.gp, f0x40025AAAAACCDC00
  %i.gr = fptrunc double %i.gq to float
  %i.gs = and i32 %3, -2
  %or.cond7 = icmp eq i32 %i.gs, 10
  %switch.selectcmp = icmp eq i32 %3, 5
  %switch.select = select i1 %switch.selectcmp, i64 2, i64 3
  %switch.selectcmp204 = icmp eq i32 %3, 4
  %switch.select205 = select i1 %switch.selectcmp204, i64 0, i64 %switch.select
  %.0174 = select i1 %or.cond7, i64 1, i64 %switch.select205 ; 2 uses
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul1, i64 %.0174
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %1
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !34
  %i.gw = uitofp i64 %4 to double
  %i.gx = fmul double %i.gv, %i.gw
  %i.gy = uitofp i64 %5 to double
  %i.gz = fmul double %i.gx, %i.gy
  %i.ha = fmul double %i.gz, 8.000000e+00
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul2, i64 %.0174
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %1
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !34
  %i.he = fpext float %i.gr to double
  %i.hf = fmul double %i.hd, %i.he
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.ha, double 8.000000e+00, double %i.hf) ; 2 uses
  %i.hh = fcmp olt double %i.hg, %.0180.lcssa
  br i1 %i.hh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hi = fdiv double %.0180.lcssa, %i.hg
  %i.hj = fptosi double %i.hi to i32
  %i.hk = tail call i32 @llvm.smax.i32(i32 %i.hj, i32 0)
  %i.hl = tail call i32 @llvm.umin.i32(i32 %i.hk, i32 2)
  %i.hm = add nsw i32 %i.gk, %i.hl
  %spec.store.select202 = tail call i32 @llvm.smin.i32(i32 %i.hm, i32 255)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %.thread
  %spec.store.select201.sink = phi i32 [ %spec.store.select201, %.thread ], [ %spec.store.select202, %bb.ac ] ; 2 uses
  store i32 %spec.store.select201.sink, ptr %8, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab, %bb.aa
  %i.hn = phi i32 [ %i.gk, %bb.aa ], [ %i.gk, %bb.ab ], [ %spec.store.select201.sink, %.sink.split ] ; 2 uses
  %i.ho = mul i64 %5, %4
  %i.hp = trunc i64 %i.ho to i32                  ; 5 uses
  %i.hq = fptosi float %i.fr to i32
  %i.hr = sdiv i32 %i.hp, 2                       ; 4 uses
  %i.hs = add nsw i32 %i.hr, %i.hq
  %i.ht = sdiv i32 %i.hs, %i.hp
  %i.hu = fptosi float %i.ft to i32
  %i.hv = add nsw i32 %i.hr, %i.hu
  %i.hw = sdiv i32 %i.hv, %i.hp
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.hw, i32 %i.ht)
  %i.hx = fptosi float %i.fw to i32
  %i.hy = add nsw i32 %i.hr, %i.hx
  %i.hz = sdiv i32 %i.hy, %i.hp
  %.sroa.speculated.1 = tail call i32 @llvm.smin.i32(i32 %i.hz, i32 %.sroa.speculated)
  %i.ia = fptosi float %i.fz to i32
  %i.ib = add nsw i32 %i.hr, %i.ia
  %i.ic = sdiv i32 %i.ib, %i.hp
  %.sroa.speculated.2 = tail call i32 @llvm.smin.i32(i32 %i.ic, i32 %.sroa.speculated.1)
  %i.id = sdiv i32 %i.hn, 2
  %spec.select223 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.2, i32 15) ; 2 uses
  %i.ie = sub nsw i32 %i.hn, %spec.select223
  br i1 %i.ct, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ad
  %i.if = sitofp i32 %spec.select223 to double    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ih = load <2 x float>, ptr %i.ig, align 4, !tbaa !27
  %i.ii = fpext <2 x float> %i.ih to <2 x double>
  %i.ij = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> splat (double 1.000000e-02), <2 x double> %i.ii)
  %i.im = fptrunc <2 x double> %i.il to <2 x float>
  store <2 x float> %i.im, ptr %i.ig, align 4, !tbaa !27
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !27
  %i.ip = fpext float %i.io to double
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.if, double 1.000000e-02, double %i.ip)
  %i.ir = fptrunc double %i.iq to float
  store float %i.ir, ptr %i.in, align 4, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.ad
  %.sroa.speculated208 = tail call i32 @llvm.smax.i32(i32 %i.id, i32 %i.ie)
  %spec.select203 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated208, i32 4)
  store i32 %spec.select203, ptr %8, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_AVX225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i1 noundef zeroext %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr noalias nofree noundef captures(none) %9, ptr noalias nofree noundef captures(none) %10) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36
  %i.e = icmp slt i32 %i.d, 6
  br i1 %i.e, label %.loopexit.2, label %bb.b

.loopexit.2:                                      ; preds = %bb.a
  %i.f = load i32, ptr %8, align 4, !tbaa !26     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3872
  %i.h = load float, ptr %i.g, align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3876
  %i.j = load float, ptr %i.i, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !26
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.k, ptr noundef nonnull %8) #48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !27
  %i.l = load i32, ptr %8, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !26
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 0, float noundef %i.h, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %9, ptr noundef nonnull %8) #48
  %i.m = load i32, ptr %8, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !26
  %.idx = shl i64 %1, 3
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 %.idx
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 2, float noundef %i.j, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.n, ptr noundef nonnull %8) #48
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %i.m)
  %i.o = load i32, ptr %8, align 4, !tbaa !26
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.o)
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  store i32 %.sroa.speculated.2, ptr %8, align 4, !tbaa !26
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !27
  %.pre = load i32, ptr %8, align 4, !tbaa !26, !noalias !894
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit.2
  %i.p = phi i32 [ %.pre, %bb.b ], [ %.sroa.speculated.2, %.loopexit.2 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1 ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9, !noalias !894 ; 3 uses
  %i.u = zext i32 %4 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14, !noalias !894
  %.idx.i.i = mul nuw nsw i64 %i.u, 24
  %i.x = getelementptr i8, ptr %i.t, i64 %.idx.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23, !noalias !894 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !25, !noalias !894
  %i.ad = sitofp i32 %i.p to float                ; 2 uses
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = insertelement <8 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <8 x float> %i.af, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ah = shl i64 %6, 3                           ; 4 uses
  %.not91.i = icmp eq i64 %i.ah, 0
  br i1 %.not91.i, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph87.i

.lr.ph87.i:                                       ; preds = %bb.c
  %i.ai = lshr exact i64 %i.ah, 1                 ; 2 uses
  %i.aj = shl i64 %5, 3                           ; 5 uses
  %.not92.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr exact i64 %i.aj, 1
  br i1 %.not92.i, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph87.split.i

.lr.ph87.split.i:                                 ; preds = %.lr.ph87.i
  %i.al = icmp eq i64 %5, 1
  br i1 %i.al, label %.lr.ph.us.i, label %.lr.ph.i

.lr.ph.us.i:                                      ; preds = %.lr.ph87.split.i, %._crit_edge.split.us.us.i
  %.07585.us.i = phi i64 [ %i.bl, %._crit_edge.split.us.us.i ], [ 0, %.lr.ph87.split.i ] ; 3 uses
  %.not79.us.i = icmp ult i64 %.07585.us.i, %i.ai ; 2 uses
  %i.am = shl i64 %.07585.us.i, 3                 ; 3 uses
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not79.us.i, i64 0, i64 8
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not79.us.i, i64 4, i64 12
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.am
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.aq = load float, ptr %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !27, !noalias !894
  %i.ar = insertelement <8 x float> poison, float %i.aq, i64 0
  %i.as = load float, ptr %.sroa.sel73.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !27, !noalias !894
  %i.at = insertelement <8 x float> poison, float %i.as, i64 0
  %i.au = shufflevector <8 x float> %i.at, <8 x float> %i.ar, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8>
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us.i
  %.07684.us.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %i.bj, %bb.d ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.07684.us.us.i
  %i.aw = load <8 x float>, ptr %i.av, align 32, !tbaa !28, !noalias !894
  %i.ax = fmul <8 x float> %i.ag, %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.07684.us.us.i
  %i.az = load <8 x float>, ptr %i.ay, align 32, !tbaa !28, !alias.scope !898, !noalias !899
  %i.ba = fmul <8 x float> %i.ax, %i.az           ; 2 uses
  %i.bb = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ba)
  %i.bc = fcmp oge <8 x float> %i.bb, %i.au
  %i.bd = tail call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.ba)
  %i.be = select <8 x i1> %i.bc, <8 x float> %i.bd, <8 x float> zeroinitializer ; 2 uses
  %i.bf = fcmp oge <8 x float> %i.be, splat (float f0x4F000000)
  %i.bg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.be)
  %i.bh = select <8 x i1> %i.bf, <8 x i32> splat (i32 2147483647), <8 x i32> %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.07684.us.us.i
  store <8 x i32> %i.bh, ptr %i.bi, align 32, !tbaa !28, !alias.scope !899, !noalias !898
  %i.bj = add nuw i64 %.07684.us.us.i, 8          ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.aj
  br i1 %i.bk, label %bb.d, label %._crit_edge.split.us.us.i, !llvm.loop !890

._crit_edge.split.us.us.i:                        ; preds = %bb.d
  %i.bl = add nuw i64 %.07585.us.i, 1             ; 2 uses
  %exitcond95.not.i = icmp eq i64 %i.bl, %i.ah
  br i1 %exitcond95.not.i, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph.us.i, !llvm.loop !891

.lr.ph.i:                                         ; preds = %.lr.ph87.split.i, %._crit_edge.split.i
  %.07585.i = phi i64 [ %i.bq, %._crit_edge.split.i ], [ 0, %.lr.ph87.split.i ] ; 3 uses
  %.not79.i = icmp ult i64 %.07585.i, %i.ai
  %i.bm = mul i64 %i.aj, %.07585.i                ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not79.i, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bm
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bm
  br label %bb.e

._crit_edge.split.i:                              ; preds = %bb.e
  %i.bq = add nuw i64 %.07585.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bq, %i.ah
  br i1 %exitcond.not.i, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph.i, !llvm.loop !891

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.07684.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cl, %bb.e ] ; 5 uses
  %i.br = icmp uge i64 %.07684.i, %i.ak
  %i.bs = zext i1 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !27, !noalias !894
  %i.bv = insertelement <8 x float> poison, float %i.bu, i64 0
  %i.bw = shufflevector <8 x float> %i.bv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.07684.i
  %i.by = load <8 x float>, ptr %i.bx, align 32, !tbaa !28, !noalias !894
  %i.bz = fmul <8 x float> %i.ag, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.07684.i
  %i.cb = load <8 x float>, ptr %i.ca, align 32, !tbaa !28, !alias.scope !898, !noalias !899
  %i.cc = fmul <8 x float> %i.bz, %i.cb           ; 2 uses
  %i.cd = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cc)
  %i.ce = fcmp oge <8 x float> %i.cd, %i.bw
  %i.cf = tail call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.cc)
  %i.cg = select <8 x i1> %i.ce, <8 x float> %i.cf, <8 x float> zeroinitializer ; 2 uses
  %i.ch = fcmp oge <8 x float> %i.cg, splat (float f0x4F000000)
  %i.ci = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.cg)
  %i.cj = select <8 x i1> %i.ch, <8 x i32> splat (i32 2147483647), <8 x i32> %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.07684.i
  store <8 x i32> %i.cj, ptr %i.ck, align 32, !tbaa !28, !alias.scope !899, !noalias !898
  %i.cl = add nuw i64 %.07684.i, 8                ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.aj
  br i1 %i.cm, label %bb.e, label %._crit_edge.split.i, !llvm.loop !890

_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit: ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.c, %.lr.ph87.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !148
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.z
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !149
  %i.cs = fdiv float %i.cr, %i.ad
  %i.ct = insertelement <8 x float> poison, float %i.cs, i64 0
  %i.cu = shufflevector <8 x float> %i.ct, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cv = shl i64 %5, 6
  %i.cw = mul i64 %i.cv, %6                       ; 2 uses
  %.not82 = icmp eq i64 %i.cw, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !27, !alias.scope !900
  %i.cz = insertelement <8 x float> poison, float %i.cy, i64 0
  %i.da = bitcast <8 x float> %i.cz to <8 x i32>
  %i.db = shufflevector <8 x i32> %i.da, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !27, !alias.scope !900
  %.scalar = fneg float %i.dd
  %i.de = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.df = shufflevector <8 x float> %i.de, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.06581 = phi i64 [ 0, %.lr.ph ], [ %i.dy, %bb.f ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06581
  %i.dh = load <8 x i32>, ptr %i.dg, align 32, !tbaa !28, !alias.scope !903 ; 2 uses
  %i.di = sitofp <8 x i32> %i.dh to <8 x float>   ; 4 uses
  %i.dj = bitcast <8 x float> %i.di to <8 x i32>
  %i.dk = and <8 x i32> %i.dj, splat (i32 -2147483648)
  %i.dl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.di)
  %i.dm = fcmp olt <8 x float> %i.dl, splat (float 1.125000e+00)
  %.not76 = icmp eq <8 x i32> %i.dh, zeroinitializer
  %i.dn = xor <8 x i32> %i.db, %i.dk
  %i.do = bitcast <8 x i32> %i.dn to <8 x float>
  %i.dp = select <8 x i1> %.not76, <8 x float> zeroinitializer, <8 x float> %i.do
  %i.dq = tail call noundef <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> %i.di)
  %i.dr = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.df, <8 x float> %i.dq, <8 x float> %i.di)
  %i.ds = select <8 x i1> %i.dm, <8 x float> %i.dp, <8 x float> %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.06581
  %i.du = load <8 x float>, ptr %i.dt, align 32, !tbaa !28
  %i.dv = fmul <8 x float> %i.du, %i.ds
  %i.dw = fmul <8 x float> %i.cu, %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.06581
  store <8 x float> %i.dw, ptr %i.dx, align 32, !tbaa !28
  %i.dy = add nuw i64 %.06581, 8                  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.cw
  br i1 %i.dz, label %bb.f, label %._crit_edge, !llvm.loop !906
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_AVX219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_(i64 noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef readonly captures(none) %4) #12 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  %5 = alloca %"class.jxl::StatusOr", align 8     ; 6 uses
  %6 = alloca %"class.jxl::AlignedMemory", align 8 ; 5 uses
  %7 = alloca %"class.jxl::StatusOr", align 8     ; 6 uses
  %8 = alloca %"class.jxl::AlignedMemory", align 8 ; 5 uses
  %i.c = alloca [3 x [11 x ptr]], align 16        ; 10 uses
  %i.d = alloca [3 x ptr], align 16               ; 6 uses
  %9 = alloca %"class.jxl::AcStrategy", align 8   ; 10 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %i.f = alloca [4 x float], align 16             ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load i64, ptr %i.i, align 8, !tbaa !155, !noalias !907 ; 2 uses
  %i.k = urem i64 %0, %i.j                        ; 2 uses
  %i.l = udiv i64 %0, %i.j                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.n = load i64, ptr %i.m, align 8, !tbaa !159, !noalias !907 ; 3 uses
  %i.o = lshr i64 %i.n, 3                         ; 6 uses
  %i.p = mul i64 %i.o, %i.k                       ; 8 uses
  %i.q = mul i64 %i.o, %i.l                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !160, !noalias !907 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load i64, ptr %i.t, align 8, !tbaa !161, !noalias !907 ; 2 uses
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
  %i.ag = load i64, ptr %3, align 8, !tbaa !162
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !164
  %i.aj = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.ak = add i64 %i.ai, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !165
  %i.an = lshr i64 %i.am, 2                       ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !165
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = tail call noundef i64 @_ZN3jxl13MaxVectorSizeEv() #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %5, ptr noundef %i.h, i64 noundef 786432, i64 noundef 0) #49
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !166 ; 2 uses
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
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !166 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(28) %7) #49
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !169
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 786432 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 3196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(264) %i.c, i8 0, i64 264, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 2872 ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !170 ; 26 uses
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %._crit_edge286, label %.preheader271

.preheader271:                                    ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2824 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader271, %.preheader270
  %.0187273 = phi i64 [ 0, %.preheader271 ], [ %i.cl, %.preheader270 ] ; 6 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !171
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0187273
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !172 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i32 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #49
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %.preheader270, label %._crit_edge286
end_hunk_2
begin_hunk_3_@_ZN3jxl6N_AVX219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_:bb.a
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !172 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !174
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i64 noundef 1, i64 noundef %0, i64 noundef 0) #49
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 88
  store ptr %i.cd, ptr %gep.1, align 8, !tbaa !176
  %i.ce = load ptr, ptr %i.bh, align 8, !tbaa !171
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0187273
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !172 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !174
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i64 noundef 2, i64 noundef %0, i64 noundef 0) #49
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 176
  store ptr %i.ck, ptr %gep.2, align 8, !tbaa !176
  %i.cl = add nuw i64 %.0187273, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.bg
  br i1 %exitcond.not, label %.critedge197, label %bb.d, !llvm.loop !910

.critedge197:                                     ; preds = %.preheader270
  %i.cm = load ptr, ptr %i.bb, align 8, !tbaa !169 ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !169 ; 5 uses
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
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 3872 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 3876 ; 2 uses
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
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 4 uses
  %min.iters.check421 = icmp ult i64 %i.bg, 4
  %min.iters.check423 = icmp ult i64 %i.bg, 16
  %i.dt = and i64 %i.bg, 12
  %n.vec425 = and i64 %i.bg, -16                  ; 4 uses
  %cmp.n438 = icmp eq i64 %i.bg, %n.vec425
  %min.epilog.iters.check443 = icmp eq i64 %i.dt, 0
  %n.vec445 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n452 = icmp eq i64 %i.bg, %n.vec445
  %min.iters.check388 = icmp ult i64 %i.bg, 4
  %min.iters.check390 = icmp ult i64 %i.bg, 16
  %i.du = and i64 %i.bg, 12
  %n.vec392 = and i64 %i.bg, -16                  ; 4 uses
  %cmp.n405 = icmp eq i64 %i.bg, %n.vec392
  %min.epilog.iters.check410 = icmp eq i64 %i.du, 0
  %n.vec412 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n419 = icmp eq i64 %i.bg, %n.vec412
  %min.iters.check = icmp ult i64 %i.bg, 4
  %min.iters.check375 = icmp ult i64 %i.bg, 16
  %i.dv = and i64 %i.bg, 12
  %n.vec = and i64 %i.bg, -16                     ; 4 uses
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dv, 0
  %n.vec382 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n387 = icmp eq i64 %i.bg, %n.vec382
  br label %.lr.ph283.us

.lr.ph283.us:                                     ; preds = %.lr.ph283.us.preheader, %._crit_edge.us
  %.0186284.us = phi i64 [ %i.tq, %._crit_edge.us ], [ 0, %.lr.ph283.us.preheader ] ; 7 uses
  %i.dw = add i64 %.0186284.us, %i.q              ; 3 uses
  %i.dx = load ptr, ptr %i.cp, align 8, !tbaa !169
  %i.dy = load i64, ptr %i.cq, align 8, !tbaa !165
  %i.dz = mul i64 %i.dy, %i.dw
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ea, i64 64) ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.p
  %i.ec = lshr i64 %.0186284.us, 3
  %i.ed = add nuw nsw i64 %i.ec, %i.ac            ; 2 uses
  %i.ee = load ptr, ptr %i.cr, align 8, !tbaa !169
  %i.ef = load i64, ptr %i.cs, align 8, !tbaa !165
  %i.eg = mul i64 %i.ef, %i.ed
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eh, i64 64) ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ab
  %i.ej = load ptr, ptr %i.ct, align 8, !tbaa !169
  %i.ek = load i64, ptr %i.cu, align 8, !tbaa !165
  %i.el = mul i64 %i.ek, %i.ed
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.el ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.em, i64 64) ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #47
  %i.eo = shl i64 %.0186284.us, 3
  %i.ep = add i64 %i.ak, %i.eo
  %i.eq = load i64, ptr %i.ao, align 8, !tbaa !165
  %i.er = mul i64 %i.eq, %i.ep                    ; 3 uses
  %i.es = load ptr, ptr %i.cv, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.es, i64 64) ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.er ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.et, i64 64) ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.aj
  store ptr %i.eu, ptr %i.d, align 16, !tbaa !178
  %i.ev = load ptr, ptr %i.cx, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ev, i64 64) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.er ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ew, i64 64) ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.aj
  store ptr %i.ex, ptr %i.cw, align 8, !tbaa !178
  %i.ey = load ptr, ptr %i.cz, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ey, i64 64) ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.er ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ez, i64 64) ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.aj
  store ptr %i.fa, ptr %i.cy, align 16, !tbaa !178
  %i.fb = load i64, ptr %i.al, align 8, !tbaa !165
  %i.fc = mul i64 %i.fb, %i.dw                    ; 3 uses
  %i.fd = load ptr, ptr %i.da, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fd, i64 64) ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fe, i64 64) ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.p
  %i.fg = load ptr, ptr %i.db, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fg, i64 64) ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fh, i64 64) ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.p
  %i.fj = load ptr, ptr %i.dc, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fj, i64 64) ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fk, i64 64) ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.p
  %i.fm = load ptr, ptr %i.dd, align 8, !tbaa !169
  %i.fn = load i64, ptr %i.de, align 8, !tbaa !165
  %i.fo = mul i64 %i.fn, %i.dw
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fp, i64 64) ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph283.us, %.critedge.us
  %indvars.iv = phi i64 [ 8, %.lr.ph283.us ], [ %indvars.iv.next, %.critedge.us ] ; 2 uses
  %.0185282.us = phi i64 [ 0, %.lr.ph283.us ], [ %i.sh, %.critedge.us ] ; 4 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.x, i64 %indvars.iv)
  %i.fr = shl nuw i64 %.0185282.us, 3             ; 2 uses
  %or.cond279.us = icmp ugt i64 %i.x, %i.fr
  br i1 %or.cond279.us, label %.lr.ph281.us, label %.critedge.us

bb.f:                                             ; preds = %.lr.ph281.us, %bb.s
  %.0184280.us = phi i64 [ %i.fr, %.lr.ph281.us ], [ %i.sg, %bb.s ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.0184280.us
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !28  ; 3 uses
  %i.fu = lshr i8 %i.ft, 1                        ; 2 uses
  %i.fv = and i8 %i.ft, 1
  %.sroa.2.0.insert.ext.i.us = zext nneg i8 %i.fv to i64
  %.sroa.2.0.insert.shift.i.us = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.us, 32
  %.sroa.0.0.insert.ext.i.us = zext nneg i8 %i.fu to i64
  %.sroa.0.0.insert.insert.i.us = or disjoint i64 %.sroa.2.0.insert.shift.i.us, %.sroa.0.0.insert.ext.i.us
  %i.fw = trunc nuw nsw i64 %.sroa.0.0.insert.insert.i.us to i40
  store i40 %i.fw, ptr %9, align 8
  %i.fx = trunc i8 %i.ft to i1
  br i1 %i.fx, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.fy = zext nneg i8 %i.fu to i64               ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !28
  %i.gb = zext i8 %i.ga to i64                    ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.fy
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !28
  %i.ge = zext i8 %i.gd to i64                    ; 3 uses
  %i.gf = call noundef i64 @llvm.umin.i64(i64 %i.ge, i64 %i.gb) ; 9 uses
  %i.gg = call noundef i64 @llvm.umax.i64(i64 %i.ge, i64 %i.gb) ; 13 uses
  %i.gh = shl nuw nsw i64 %i.gg, 6
  %i.gi = mul nuw nsw i64 %i.gh, %i.gf            ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #47
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %.0184280.us ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !26 ; 4 uses
  %.idx195.us = shl i64 %.0184280.us, 5
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0183.idx274.us = phi i64 [ 0, %bb.g ], [ %.0183.add.us, %bb.h ] ; 2 uses
  %.0183.ptr.us = getelementptr inbounds nuw i8, ptr @.ref.tmp.13, i64 %.0183.idx274.us
  %i.gl = load i32, ptr %.0183.ptr.us, align 4, !tbaa !26
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = load i32, ptr %9, align 8, !tbaa !182
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.gm
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !178
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx195.us
  %i.gr = mul nsw i64 %i.gi, %i.gm
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gr
  call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %i.gn, ptr noundef %i.gq, i64 noundef %i.aq, ptr noundef %i.gs, ptr noundef nonnull %i.bd) #48
  %.0183.add.us = add nuw nsw i64 %.0183.idx274.us, 4 ; 2 uses
  %.not193.us = icmp eq i64 %.0183.add.us, 12
  br i1 %.not193.us, label %bb.i, label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.gt = load i32, ptr %9, align 8, !tbaa !182
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gi ; 6 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.gt, ptr noundef %i.gu, ptr noundef %i.gv, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  %i.gw = load i32, ptr %9, align 8, !tbaa !182   ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47, !noalias !916
  %i.gx = load i32, ptr %i.be, align 4, !tbaa !36, !noalias !916
  %i.gy = icmp slt i32 %i.gx, 6
  br i1 %i.gy, label %.loopexit.2.i.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !27, !noalias !916
  br label %bb.k

.loopexit.2.i.us:                                 ; preds = %bb.i
  %i.gz = load float, ptr %i.dk, align 8, !tbaa !140, !noalias !916
  %i.ha = load float, ptr %i.dl, align 4, !tbaa !141, !noalias !916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !916
  store i32 %i.gk, ptr %i.e, align 4, !tbaa !26, !noalias !916
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %i.gw, i64 noundef %i.gg, i64 noundef %i.gf, ptr noundef nonnull %i.b, ptr noundef %i.gu, ptr noundef nonnull %i.e) #48, !noalias !918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !27, !noalias !916
  %i.hb = load i32, ptr %i.e, align 4, !tbaa !26, !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !916
  store i32 %i.gk, ptr %i.e, align 4, !tbaa !26, !noalias !916
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 0, float noundef %i.gz, i32 noundef %i.gw, i64 noundef %i.gg, i64 noundef %i.gf, ptr noundef nonnull %i.b, ptr noundef %i.cm, ptr noundef nonnull %i.e) #48, !noalias !918
  %i.hc = load i32, ptr %i.e, align 4, !tbaa !26, !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !916
  store i32 %i.gk, ptr %i.e, align 4, !tbaa !26, !noalias !916
  %.idx.i.us = shl nuw nsw i64 %i.gi, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.us
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 2, float noundef %i.ha, i32 noundef %i.gw, i64 noundef %i.gg, i64 noundef %i.gf, ptr noundef nonnull %i.b, ptr noundef %i.hd, ptr noundef nonnull %i.e) #48, !noalias !918
  %.sroa.speculated.i.us = call i32 @llvm.smax.i32(i32 %i.hb, i32 %i.hc)
  %i.he = load i32, ptr %i.e, align 4, !tbaa !26, !noalias !916
  %.sroa.speculated.1.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.us, i32 %i.he)
  %.sroa.speculated.2.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.1.i.us, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !916
  store i32 %.sroa.speculated.2.i.us, ptr %i.e, align 4, !tbaa !26, !noalias !916
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.2.i.us, %bb.j
  %i.hf = phi i32 [ %i.gk, %bb.j ], [ %.sroa.speculated.2.i.us, %.loopexit.2.i.us ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.gi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.hh = load ptr, ptr %i.dm, align 8, !tbaa !9, !noalias !924 ; 3 uses
  %i.hi = zext i32 %i.gw to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !14, !noalias !924
  %.idx.i.i.i.us = mul nuw nsw i64 %i.hi, 24      ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hh, i64 %.idx.i.i.i.us
  %i.hm = getelementptr i8, ptr %i.hl, i64 80
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !23, !noalias !924 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hn ; 2 uses
  %i.hp = load float, ptr %i.dn, align 4, !tbaa !25, !noalias !924
  %i.hq = sitofp i32 %i.hf to float               ; 4 uses
  %i.hr = fmul float %i.hp, %i.hq
  %i.hs = insertelement <8 x float> poison, float %i.hr, i64 0
  %i.ht = shufflevector <8 x float> %i.hs, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.hu = shl nuw nsw i64 %i.gf, 3                ; 6 uses
  %.not91.i.i.us = icmp eq i64 %i.gf, 0           ; 3 uses
  br i1 %.not91.i.i.us, label %.preheader.us.sink.split, label %.lr.ph87.i.i.us

.lr.ph87.i.i.us:                                  ; preds = %bb.k
  %i.hv = shl nuw nsw i64 %i.gf, 2                ; 2 uses
  %i.hw = shl nuw nsw i64 %i.gg, 3                ; 3 uses
  %i.hx = shl nuw nsw i64 %i.gg, 2
  %trunc = trunc nuw i64 %i.gg to i8
  switch i8 %trunc, label %.lr.ph.i.i.us [
    i8 0, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us
    i8 1, label %.lr.ph.us.i.i.us.preheader
  ]

.lr.ph.us.i.i.us.preheader:                       ; preds = %.lr.ph87.i.i.us
  %i.hy = load <2 x float>, ptr %i.a, align 16
  %i.hz = load <2 x float>, ptr %i.di, align 8
  br label %.lr.ph.us.i.i.us

.lr.ph.us.i.i.us:                                 ; preds = %.lr.ph.us.i.i.us.preheader, %._crit_edge.split.us.us.i.i.us
  %.07585.us.i.i.us = phi i64 [ %i.iy, %._crit_edge.split.us.us.i.i.us ], [ 0, %.lr.ph.us.i.i.us.preheader ] ; 3 uses
  %.not79.us.i.i.us = icmp samesign ult i64 %.07585.us.i.i.us, %i.hv
  %i.ia = shl nuw nsw i64 %.07585.us.i.i.us, 3    ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ia
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ia
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ia
  %i.ie = insertelement <2 x i1> poison, i1 %.not79.us.i.i.us, i64 0
  %i.if = shufflevector <2 x i1> %i.ie, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ig = select <2 x i1> %i.if, <2 x float> %i.hy, <2 x float> %i.hz
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.us.i.i.us
  %.07684.us.us.i.i.us = phi i64 [ 0, %.lr.ph.us.i.i.us ], [ %i.iw, %bb.l ] ; 4 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %.07684.us.us.i.i.us
  %i.ij = load <8 x float>, ptr %i.ii, align 32, !tbaa !28, !noalias !924
  %i.ik = fmul <8 x float> %i.ht, %i.ij
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %.07684.us.us.i.i.us
  %i.im = load <8 x float>, ptr %i.il, align 32, !tbaa !28, !alias.scope !925, !noalias !926
  %i.in = fmul <8 x float> %i.ik, %i.im           ; 2 uses
  %i.io = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.in)
  %i.ip = fcmp oge <8 x float> %i.io, %i.ih
  %i.iq = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.in)
  %i.ir = select <8 x i1> %i.ip, <8 x float> %i.iq, <8 x float> zeroinitializer ; 2 uses
  %i.is = fcmp oge <8 x float> %i.ir, splat (float f0x4F000000)
  %i.it = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ir)
  %i.iu = select <8 x i1> %i.is, <8 x i32> splat (i32 2147483647), <8 x i32> %i.it
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %.07684.us.us.i.i.us
  store <8 x i32> %i.iu, ptr %i.iv, align 32, !tbaa !28, !alias.scope !927, !noalias !928
  %i.iw = add nuw nsw i64 %.07684.us.us.i.i.us, 8 ; 2 uses
  %i.ix = icmp samesign ult i64 %i.iw, %i.hw
  br i1 %i.ix, label %bb.l, label %._crit_edge.split.us.us.i.i.us, !llvm.loop !890

._crit_edge.split.us.us.i.i.us:                   ; preds = %bb.l
  %i.iy = add nuw nsw i64 %.07585.us.i.i.us, 1    ; 2 uses
  %exitcond95.not.i.i.us = icmp eq i64 %i.iy, %i.hu
  br i1 %exitcond95.not.i.i.us, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.us.i.i.us, !llvm.loop !891

.lr.ph.i.i.us:                                    ; preds = %.lr.ph87.i.i.us, %._crit_edge.split.i.i.us
  %.07585.i.i.us = phi i64 [ %i.jz, %._crit_edge.split.i.i.us ], [ 0, %.lr.ph87.i.i.us ] ; 3 uses
  %.not79.i.i.us = icmp samesign ult i64 %.07585.i.i.us, %i.hv
  %i.iz = mul nuw nsw i64 %.07585.i.i.us, %i.hw   ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel = select i1 %.not79.i.i.us, ptr %i.a, ptr %i.di
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.iz
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.iz
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.iz
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.us
  %.07684.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %i.jx, %bb.m ] ; 5 uses
  %i.jd = icmp samesign uge i64 %.07684.i.i.us, %i.hx
  %i.je = zext i1 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel, i64 %i.je
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !27, !noalias !924
  %i.jh = insertelement <8 x float> poison, float %i.jg, i64 0
  %i.ji = shufflevector <8 x float> %i.jh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %.07684.i.i.us
  %i.jk = load <8 x float>, ptr %i.jj, align 32, !tbaa !28, !noalias !924
  %i.jl = fmul <8 x float> %i.ht, %i.jk
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %.07684.i.i.us
  %i.jn = load <8 x float>, ptr %i.jm, align 32, !tbaa !28, !alias.scope !925, !noalias !926
  %i.jo = fmul <8 x float> %i.jl, %i.jn           ; 2 uses
  %i.jp = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jo)
  %i.jq = fcmp oge <8 x float> %i.jp, %i.ji
  %i.jr = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.jo)
  %i.js = select <8 x i1> %i.jq, <8 x float> %i.jr, <8 x float> zeroinitializer ; 2 uses
  %i.jt = fcmp oge <8 x float> %i.js, splat (float f0x4F000000)
  %i.ju = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.js)
  %i.jv = select <8 x i1> %i.jt, <8 x i32> splat (i32 2147483647), <8 x i32> %i.ju
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %.07684.i.i.us
  store <8 x i32> %i.jv, ptr %i.jw, align 32, !tbaa !28, !alias.scope !927, !noalias !928
  %i.jx = add nuw nsw i64 %.07684.i.i.us, 8       ; 2 uses
  %i.jy = icmp samesign ult i64 %i.jx, %i.hw
  br i1 %i.jy, label %bb.m, label %._crit_edge.split.i.i.us, !llvm.loop !890

._crit_edge.split.i.i.us:                         ; preds = %bb.m
  %i.jz = add nuw nsw i64 %.07585.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.jz, %i.hu
  br i1 %exitcond.not.i.i.us, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.i.i.us, !llvm.loop !891

_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us: ; preds = %._crit_edge.split.us.us.i.i.us, %._crit_edge.split.i.i.us, %.lr.ph87.i.i.us
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !148, !noalias !916
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.hn
  %i.kd = load float, ptr %i.do, align 8, !tbaa !149, !noalias !916
  %i.ke = fdiv float %i.kd, %i.hq
  %i.kf = insertelement <8 x float> poison, float %i.ke, i64 0
  %i.kg = shufflevector <8 x float> %i.kf, <8 x float> poison, <8 x i32> zeroinitializer
  %.not82.i.us = icmp eq i64 %i.gg, 0
  br i1 %.not82.i.us, label %.preheader.us.sink.split, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, %.lr.ph.i.us
  %.06581.i.us = phi i64 [ %i.kw, %.lr.ph.i.us ], [ 0, %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us ] ; 4 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.06581.i.us
  %i.ki = load <8 x i32>, ptr %i.kh, align 32, !tbaa !28, !alias.scope !929, !noalias !932 ; 2 uses
  %i.kj = sitofp <8 x i32> %i.ki to <8 x float>   ; 4 uses
  %i.kk = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kj)
  %i.kl = fcmp olt <8 x float> %i.kk, splat (float 1.125000e+00)
  %.not76.i.us = icmp eq <8 x i32> %i.ki, zeroinitializer
  %i.km = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float f0x3F6E10E8), <8 x float> %i.kj)
  %i.kn = select <8 x i1> %.not76.i.us, <8 x float> zeroinitializer, <8 x float> %i.km
  %i.ko = call noundef <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> %i.kj)
  %i.kp = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ko, <8 x float> splat (float -1.450000e-01), <8 x float> %i.kj)
  %i.kq = select <8 x i1> %i.kl, <8 x float> %i.kn, <8 x float> %i.kp
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %.06581.i.us
  %i.ks = load <8 x float>, ptr %i.kr, align 32, !tbaa !28, !noalias !916
  %i.kt = fmul <8 x float> %i.ks, %i.kq
  %i.ku = fmul <8 x float> %i.kg, %i.kt
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.06581.i.us
  store <8 x float> %i.ku, ptr %i.kv, align 32, !tbaa !28, !alias.scope !911, !noalias !918
  %i.kw = add nuw nsw i64 %.06581.i.us, 8         ; 2 uses
  %i.kx = icmp samesign ult i64 %i.kw, %i.gi
  br i1 %i.kx, label %.lr.ph.i.us, label %.lr.ph.us, !llvm.loop !906

bb.n:                                             ; preds = %.lr.ph.us, %bb.n
  %.0182275.us = phi i64 [ 0, %.lr.ph.us ], [ %i.lg, %bb.n ] ; 4 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0182275.us ; 2 uses
  %i.kz = load <8 x float>, ptr %i.ky, align 32, !tbaa !28
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.0182275.us
  %i.lb = load <8 x float>, ptr %i.la, align 32, !tbaa !28 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %.0182275.us ; 2 uses
  %i.ld = load <8 x float>, ptr %i.lc, align 32, !tbaa !28
  %i.le = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.to, <8 x float> %i.lb, <8 x float> %i.kz)
  %i.lf = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.tp, <8 x float> %i.lb, <8 x float> %i.ld)
  store <8 x float> %i.le, ptr %i.ky, align 32, !tbaa !28
  store <8 x float> %i.lf, ptr %i.lc, align 32, !tbaa !28
  %i.lg = add nuw nsw i64 %.0182275.us, 8         ; 2 uses
  %i.lh = icmp samesign ult i64 %i.lg, %i.gi
  br i1 %i.lh, label %bb.n, label %.preheader.us, !llvm.loop !933

.preheader.i.us:                                  ; preds = %.preheader.us
  %i.li = insertelement <2 x float> poison, float %i.sm, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = insertelement <2 x float> poison, float %i.sl, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %i.ll, <2 x float> <float 5.800000e-01, float 6.200000e-01>) ; 2 uses
  %i.ln = fcmp olt <2 x float> %i.lm, splat (float 5.000000e-01)
  %i.lo = select <2 x i1> %i.ln, <2 x float> splat (float 5.000000e-01), <2 x float> %i.lm
  %i.lp = shufflevector <2 x float> %i.lo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  store <4 x float> %i.lp, ptr %i.f, align 16, !tbaa !27, !noalias !934
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.preheader.i.us, %.preheader.us
  %i.lq = fmul float %i.sq, %i.sz
  %i.lr = insertelement <8 x float> poison, float %i.lq, i64 0
  %i.ls = shufflevector <8 x float> %i.lr, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br i1 %.not91.i.i.us, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph87.i.us

.lr.ph87.i.us:                                    ; preds = %.loopexit.i.us
  %trunc290 = trunc nuw i64 %i.gg to i8
  switch i8 %trunc290, label %.lr.ph.i202.us [
    i8 0, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
    i8 1, label %.lr.ph.us.i.us.preheader
  ]

.lr.ph.us.i.us.preheader:                         ; preds = %.lr.ph87.i.us
  %i.lt = load <2 x float>, ptr %i.f, align 16
  %i.lu = load <2 x float>, ptr %i.dp, align 8
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.lr.ph.us.i.us.preheader, %._crit_edge.split.us.us.i.us
  %.07585.us.i.us = phi i64 [ %i.mt, %._crit_edge.split.us.us.i.us ], [ 0, %.lr.ph.us.i.us.preheader ] ; 3 uses
  %.not79.us.i.us = icmp samesign ult i64 %.07585.us.i.us, %i.sn
  %i.lv = shl nuw nsw i64 %.07585.us.i.us, 3      ; 3 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.lv
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.lv
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.lv
  %i.lz = insertelement <2 x i1> poison, i1 %.not79.us.i.us, i64 0
  %i.ma = shufflevector <2 x i1> %i.lz, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.mb = select <2 x i1> %i.ma, <2 x float> %i.lt, <2 x float> %i.lu
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.us.i.us
  %.07684.us.us.i.us = phi i64 [ 0, %.lr.ph.us.i.us ], [ %i.mr, %bb.o ] ; 4 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %.07684.us.us.i.us
  %i.me = load <8 x float>, ptr %i.md, align 32, !tbaa !28, !noalias !934
  %i.mf = fmul <8 x float> %i.ls, %i.me
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %.07684.us.us.i.us
  %i.mh = load <8 x float>, ptr %i.mg, align 32, !tbaa !28, !alias.scope !938, !noalias !939
  %i.mi = fmul <8 x float> %i.mf, %i.mh           ; 2 uses
  %i.mj = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.mi)
  %i.mk = fcmp oge <8 x float> %i.mj, %i.mc
  %i.ml = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.mi)
  %i.mm = select <8 x i1> %i.mk, <8 x float> %i.ml, <8 x float> zeroinitializer ; 2 uses
  %i.mn = fcmp oge <8 x float> %i.mm, splat (float f0x4F000000)
  %i.mo = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.mm)
  %i.mp = select <8 x i1> %i.mn, <8 x i32> splat (i32 2147483647), <8 x i32> %i.mo
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %.07684.us.us.i.us
  store <8 x i32> %i.mp, ptr %i.mq, align 32, !tbaa !28, !alias.scope !939, !noalias !938
  %i.mr = add nuw nsw i64 %.07684.us.us.i.us, 8   ; 2 uses
  %i.ms = icmp samesign ult i64 %i.mr, %i.so
  br i1 %i.ms, label %bb.o, label %._crit_edge.split.us.us.i.us, !llvm.loop !890

._crit_edge.split.us.us.i.us:                     ; preds = %bb.o
  %i.mt = add nuw nsw i64 %.07585.us.i.us, 1      ; 2 uses
  %exitcond95.not.i.us = icmp eq i64 %i.mt, %i.hu
  br i1 %exitcond95.not.i.us, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph.us.i.us, !llvm.loop !891

.lr.ph.i202.us:                                   ; preds = %.lr.ph87.i.us, %._crit_edge.split.i.us
  %.07585.i.us = phi i64 [ %i.nu, %._crit_edge.split.i.us ], [ 0, %.lr.ph87.i.us ] ; 3 uses
  %.not79.i.us = icmp samesign ult i64 %.07585.i.us, %i.sn
  %i.mu = mul nuw nsw i64 %i.so, %.07585.i.us     ; 3 uses
  %.sroa.sel.idx.us.sroa.sel = select i1 %.not79.i.us, ptr %i.f, ptr %i.dp
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.mu
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.mu
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.mu
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i202.us
  %.07684.i.us = phi i64 [ 0, %.lr.ph.i202.us ], [ %i.ns, %bb.p ] ; 5 uses
  %i.my = icmp samesign uge i64 %.07684.i.us, %i.sp
  %i.mz = zext i1 %i.my to i64
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.us.sroa.sel, i64 %i.mz
  %i.nb = load float, ptr %i.na, align 4, !tbaa !27, !noalias !934
  %i.nc = insertelement <8 x float> poison, float %i.nb, i64 0
  %i.nd = shufflevector <8 x float> %i.nc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.07684.i.us
  %i.nf = load <8 x float>, ptr %i.ne, align 32, !tbaa !28, !noalias !934
  %i.ng = fmul <8 x float> %i.ls, %i.nf
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %.07684.i.us
  %i.ni = load <8 x float>, ptr %i.nh, align 32, !tbaa !28, !alias.scope !938, !noalias !939
  %i.nj = fmul <8 x float> %i.ng, %i.ni           ; 2 uses
  %i.nk = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.nj)
  %i.nl = fcmp oge <8 x float> %i.nk, %i.nd
  %i.nm = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.nj)
  %i.nn = select <8 x i1> %i.nl, <8 x float> %i.nm, <8 x float> zeroinitializer ; 2 uses
  %i.no = fcmp oge <8 x float> %i.nn, splat (float f0x4F000000)
  %i.np = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.nn)
  %i.nq = select <8 x i1> %i.no, <8 x i32> splat (i32 2147483647), <8 x i32> %i.np
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %.07684.i.us
  store <8 x i32> %i.nq, ptr %i.nr, align 32, !tbaa !28, !alias.scope !939, !noalias !938
  %i.ns = add nuw nsw i64 %.07684.i.us, 8         ; 2 uses
  %i.nt = icmp samesign ult i64 %i.ns, %i.so
  br i1 %i.nt, label %bb.p, label %._crit_edge.split.i.us, !llvm.loop !890

._crit_edge.split.i.us:                           ; preds = %bb.p
  %i.nu = add nuw nsw i64 %.07585.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.nu, %i.hu
  br i1 %exitcond.not.i.us, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph.i202.us, !llvm.loop !891

_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us: ; preds = %._crit_edge.split.us.us.i.us, %._crit_edge.split.i.us, %.lr.ph87.i.us, %.loopexit.i.us
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.gw, ptr noundef %i.cm, ptr noundef %i.nv, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_.thres, i64 16, i1 false)
  %i.nw = load float, ptr %i.dl, align 4, !tbaa !27
  %i.nx = load i32, ptr %9, align 8, !tbaa !182   ; 2 uses
  %i.ny = shl nuw nsw i64 %i.gi, 1                ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ny ; 3 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ny ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !940)
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %i.ob = load ptr, ptr %i.dm, align 8, !tbaa !9, !noalias !944 ; 2 uses
  %i.oc = zext i32 %i.nx to i64
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 40
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !14, !noalias !944
  %.idx.i.i.us.1 = mul nuw nsw i64 %i.oc, 24
  %i.of = getelementptr i8, ptr %i.ob, i64 %.idx.i.i.us.1
  %i.og = getelementptr i8, ptr %i.of, i64 88
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !23, !noalias !944
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.oh ; 2 uses
  %i.oj = load float, ptr %i.dn, align 4, !tbaa !25, !noalias !944
  %i.ok = fmul float %i.oj, %i.hq
  br i1 %i.sj, label %.preheader.i.us.1, label %.loopexit.i.us.1

.preheader.i.us.1:                                ; preds = %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
  %i.ol = insertelement <2 x float> poison, float %i.sm, i64 0
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.on = insertelement <2 x float> poison, float %i.sl, i64 0
  %i.oo = shufflevector <2 x float> %i.on, <2 x float> poison, <2 x i32> zeroinitializer
  %i.op = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.om, <2 x float> %i.oo, <2 x float> <float 5.800000e-01, float 6.200000e-01>) ; 2 uses
  %i.oq = fcmp olt <2 x float> %i.op, splat (float 5.000000e-01)
  %i.or = select <2 x i1> %i.oq, <2 x float> splat (float 5.000000e-01), <2 x float> %i.op
  %i.os = shufflevector <2 x float> %i.or, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  store <4 x float> %i.os, ptr %i.f, align 16, !tbaa !27, !noalias !944
  br label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.preheader.i.us.1, %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
  %i.ot = fmul float %i.nw, %i.ok
  %i.ou = insertelement <8 x float> poison, float %i.ot, i64 0
  %i.ov = shufflevector <8 x float> %i.ou, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br i1 %.not91.i.i.us, label %iter.check440, label %.lr.ph87.i.us.1

.lr.ph87.i.us.1:                                  ; preds = %.loopexit.i.us.1
  %trunc290.1 = trunc nuw i64 %i.gg to i8
  switch i8 %trunc290.1, label %.lr.ph.i202.us.1 [
    i8 0, label %iter.check440
    i8 1, label %.lr.ph.us.i.us.preheader.1
  ]

.lr.ph.us.i.us.preheader.1:                       ; preds = %.lr.ph87.i.us.1
  %i.ow = load <2 x float>, ptr %i.f, align 16
  %i.ox = load <2 x float>, ptr %i.dp, align 8
  br label %.lr.ph.us.i.us.1

.lr.ph.us.i.us.1:                                 ; preds = %._crit_edge.split.us.us.i.us.1, %.lr.ph.us.i.us.preheader.1
  %.07585.us.i.us.1 = phi i64 [ %i.pw, %._crit_edge.split.us.us.i.us.1 ], [ 0, %.lr.ph.us.i.us.preheader.1 ] ; 3 uses
  %.not79.us.i.us.1 = icmp samesign ult i64 %.07585.us.i.us.1, %i.sn
  %i.oy = shl nuw nsw i64 %.07585.us.i.us.1, 3    ; 3 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.oy
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.oy
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.oy
  %i.pc = insertelement <2 x i1> poison, i1 %.not79.us.i.us.1, i64 0
  %i.pd = shufflevector <2 x i1> %i.pc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.pe = select <2 x i1> %i.pd, <2 x float> %i.ow, <2 x float> %i.ox
  %i.pf = shufflevector <2 x float> %i.pe, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.us.i.us.1
  %.07684.us.us.i.us.1 = phi i64 [ 0, %.lr.ph.us.i.us.1 ], [ %i.pu, %bb.q ] ; 4 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %.07684.us.us.i.us.1
  %i.ph = load <8 x float>, ptr %i.pg, align 32, !tbaa !28, !noalias !944
  %i.pi = fmul <8 x float> %i.ov, %i.ph
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %.07684.us.us.i.us.1
  %i.pk = load <8 x float>, ptr %i.pj, align 32, !tbaa !28, !alias.scope !940, !noalias !942
  %i.pl = fmul <8 x float> %i.pi, %i.pk           ; 2 uses
  %i.pm = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pl)
  %i.pn = fcmp oge <8 x float> %i.pm, %i.pf
  %i.po = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.pl)
  %i.pp = select <8 x i1> %i.pn, <8 x float> %i.po, <8 x float> zeroinitializer ; 2 uses
  %i.pq = fcmp oge <8 x float> %i.pp, splat (float f0x4F000000)
  %i.pr = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.pp)
  %i.ps = select <8 x i1> %i.pq, <8 x i32> splat (i32 2147483647), <8 x i32> %i.pr
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %.07684.us.us.i.us.1
  store <8 x i32> %i.ps, ptr %i.pt, align 32, !tbaa !28, !alias.scope !942, !noalias !940
  %i.pu = add nuw nsw i64 %.07684.us.us.i.us.1, 8 ; 2 uses
  %i.pv = icmp samesign ult i64 %i.pu, %i.so
  br i1 %i.pv, label %bb.q, label %._crit_edge.split.us.us.i.us.1, !llvm.loop !890

._crit_edge.split.us.us.i.us.1:                   ; preds = %bb.q
  %i.pw = add nuw nsw i64 %.07585.us.i.us.1, 1    ; 2 uses
  %exitcond95.not.i.us.1 = icmp eq i64 %i.pw, %i.hu
  br i1 %exitcond95.not.i.us.1, label %iter.check440, label %.lr.ph.us.i.us.1, !llvm.loop !891

.lr.ph.i202.us.1:                                 ; preds = %.lr.ph87.i.us.1, %._crit_edge.split.i.us.1
  %.07585.i.us.1 = phi i64 [ %i.qx, %._crit_edge.split.i.us.1 ], [ 0, %.lr.ph87.i.us.1 ] ; 3 uses
  %.not79.i.us.1 = icmp samesign ult i64 %.07585.i.us.1, %i.sn
  %i.px = mul nuw nsw i64 %i.so, %.07585.i.us.1   ; 3 uses
  %.sroa.sel.idx.us.1.sroa.sel = select i1 %.not79.i.us.1, ptr %i.f, ptr %i.dp
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.px
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.px
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.px
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i202.us.1
  %.07684.i.us.1 = phi i64 [ 0, %.lr.ph.i202.us.1 ], [ %i.qv, %bb.r ] ; 5 uses
  %i.qb = icmp samesign uge i64 %.07684.i.us.1, %i.sp
  %i.qc = zext i1 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.us.1.sroa.sel, i64 %i.qc
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !27, !noalias !944
  %i.qf = insertelement <8 x float> poison, float %i.qe, i64 0
  %i.qg = shufflevector <8 x float> %i.qf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %.07684.i.us.1
  %i.qi = load <8 x float>, ptr %i.qh, align 32, !tbaa !28, !noalias !944
  %i.qj = fmul <8 x float> %i.ov, %i.qi
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %.07684.i.us.1
  %i.ql = load <8 x float>, ptr %i.qk, align 32, !tbaa !28, !alias.scope !940, !noalias !942
  %i.qm = fmul <8 x float> %i.qj, %i.ql           ; 2 uses
  %i.qn = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.qm)
  %i.qo = fcmp oge <8 x float> %i.qn, %i.qg
  %i.qp = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.qm)
  %i.qq = select <8 x i1> %i.qo, <8 x float> %i.qp, <8 x float> zeroinitializer ; 2 uses
  %i.qr = fcmp oge <8 x float> %i.qq, splat (float f0x4F000000)
  %i.qs = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.qq)
  %i.qt = select <8 x i1> %i.qr, <8 x i32> splat (i32 2147483647), <8 x i32> %i.qs
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %.07684.i.us.1
  store <8 x i32> %i.qt, ptr %i.qu, align 32, !tbaa !28, !alias.scope !942, !noalias !940
  %i.qv = add nuw nsw i64 %.07684.i.us.1, 8       ; 2 uses
  %i.qw = icmp samesign ult i64 %i.qv, %i.so
  br i1 %i.qw, label %bb.r, label %._crit_edge.split.i.us.1, !llvm.loop !890

._crit_edge.split.i.us.1:                         ; preds = %bb.r
  %i.qx = add nuw nsw i64 %.07585.i.us.1, 1       ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i64 %i.qx, %i.hu
  br i1 %exitcond.not.i.us.1, label %iter.check440, label %.lr.ph.i202.us.1, !llvm.loop !891

iter.check440:                                    ; preds = %._crit_edge.split.us.us.i.us.1, %._crit_edge.split.i.us.1, %.lr.ph87.i.us.1, %.loopexit.i.us.1
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.nx, ptr noundef %i.nz, ptr noundef %i.qy, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #47
  store i32 %i.hf, ptr %i.gj, align 4, !tbaa !26
  call void @_ZN3jxl19ProgressiveSplitter19SplitACCoefficientsIiEEvPKT_RKNS_10AcStrategyEmmPrPS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.bf, ptr noundef %i.co, ptr noundef nonnull align 4 dereferenceable(5) %9, i64 noundef %.0184280.us, i64 noundef %.0186284.us, ptr noundef nonnull %i.c) #49
  br i1 %min.iters.check421, label %vec.epilog.scalar.ph441.preheader, label %vector.main.loop.iter.check422

vector.main.loop.iter.check422:                   ; preds = %iter.check440
  br i1 %min.iters.check423, label %vec.epilog.ph444, label %vector.body426

vector.body426:                                   ; preds = %vector.main.loop.iter.check422, %vector.body426
  %index427 = phi i64 [ %index.next436, %vector.body426 ], [ 0, %vector.main.loop.iter.check422 ] ; 2 uses
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index427 ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 32 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 64 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 96 ; 2 uses
  %wide.load428 = load <4 x ptr>, ptr %i.qz, align 16, !tbaa !176
  %wide.load429 = load <4 x ptr>, ptr %i.ra, align 16, !tbaa !176
  %wide.load430 = load <4 x ptr>, ptr %i.rb, align 16, !tbaa !176
  %wide.load431 = load <4 x ptr>, ptr %i.rc, align 16, !tbaa !176
  %wide.gep432 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load428, i64 %i.gi
  %wide.gep433 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load429, i64 %i.gi
  %wide.gep434 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load430, i64 %i.gi
  %wide.gep435 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load431, i64 %i.gi
  store <4 x ptr> %wide.gep432, ptr %i.qz, align 16, !tbaa !176
  store <4 x ptr> %wide.gep433, ptr %i.ra, align 16, !tbaa !176
  store <4 x ptr> %wide.gep434, ptr %i.rb, align 16, !tbaa !176
  store <4 x ptr> %wide.gep435, ptr %i.rc, align 16, !tbaa !176
  %index.next436 = add nuw i64 %index427, 16      ; 2 uses
  %i.rd = icmp eq i64 %index.next436, %n.vec425
  br i1 %i.rd, label %middle.block437, label %vector.body426, !llvm.loop !945

middle.block437:                                  ; preds = %vector.body426
  br i1 %cmp.n438, label %iter.check407, label %vec.epilog.iter.check442

vec.epilog.iter.check442:                         ; preds = %middle.block437
  br i1 %min.epilog.iters.check443, label %vec.epilog.scalar.ph441.preheader, label %vec.epilog.ph444, !prof !946

vec.epilog.ph444:                                 ; preds = %vector.main.loop.iter.check422, %vec.epilog.iter.check442
  %vec.epilog.resume.val439 = phi i64 [ %n.vec425, %vec.epilog.iter.check442 ], [ 0, %vector.main.loop.iter.check422 ]
  br label %vec.epilog.vector.body446

vec.epilog.vector.body446:                        ; preds = %vec.epilog.vector.body446, %vec.epilog.ph444
  %index447 = phi i64 [ %vec.epilog.resume.val439, %vec.epilog.ph444 ], [ %index.next450, %vec.epilog.vector.body446 ] ; 2 uses
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index447 ; 2 uses
  %wide.load448 = load <4 x ptr>, ptr %i.re, align 16, !tbaa !176
  %wide.gep449 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load448, i64 %i.gi
  store <4 x ptr> %wide.gep449, ptr %i.re, align 16, !tbaa !176
  %index.next450 = add nuw i64 %index447, 4       ; 2 uses
  %i.rf = icmp eq i64 %index.next450, %n.vec445
  br i1 %i.rf, label %vec.epilog.middle.block451, label %vec.epilog.vector.body446, !llvm.loop !947

vec.epilog.middle.block451:                       ; preds = %vec.epilog.vector.body446
  br i1 %cmp.n452, label %iter.check407, label %vec.epilog.scalar.ph441.preheader

vec.epilog.scalar.ph441.preheader:                ; preds = %iter.check440, %vec.epilog.iter.check442, %vec.epilog.middle.block451
  %.0277.us.ph = phi i64 [ 0, %iter.check440 ], [ %n.vec425, %vec.epilog.iter.check442 ], [ %n.vec445, %vec.epilog.middle.block451 ]
  br label %vec.epilog.scalar.ph441

vec.epilog.scalar.ph441:                          ; preds = %vec.epilog.scalar.ph441.preheader, %vec.epilog.scalar.ph441
  %.0277.us = phi i64 [ %i.rj, %vec.epilog.scalar.ph441 ], [ %.0277.us.ph, %vec.epilog.scalar.ph441.preheader ] ; 2 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0277.us ; 2 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !176
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.gi
  store ptr %i.ri, ptr %i.rg, align 8, !tbaa !176
  %i.rj = add nuw i64 %.0277.us, 1                ; 2 uses
  %exitcond294.not = icmp eq i64 %i.rj, %i.bg
  br i1 %exitcond294.not, label %iter.check407, label %vec.epilog.scalar.ph441, !llvm.loop !948

iter.check407:                                    ; preds = %vec.epilog.scalar.ph441, %vec.epilog.middle.block451, %middle.block437
  call void @_ZN3jxl19ProgressiveSplitter19SplitACCoefficientsIiEEvPKT_RKNS_10AcStrategyEmmPrPS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.bf, ptr noundef %i.hg, ptr noundef nonnull align 4 dereferenceable(5) %9, i64 noundef %.0184280.us, i64 noundef %.0186284.us, ptr noundef nonnull %i.dr) #49
  br i1 %min.iters.check388, label %vec.epilog.scalar.ph408.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check407
  br i1 %min.iters.check390, label %vec.epilog.ph411, label %vector.body393

vector.body393:                                   ; preds = %vector.main.loop.iter.check389, %vector.body393
  %index394 = phi i64 [ %index.next403, %vector.body393 ], [ 0, %vector.main.loop.iter.check389 ] ; 2 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index394 ; 5 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 32 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 64 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 96 ; 2 uses
  %wide.load395 = load <4 x ptr>, ptr %i.rk, align 8, !tbaa !176
  %wide.load396 = load <4 x ptr>, ptr %i.rl, align 8, !tbaa !176
  %wide.load397 = load <4 x ptr>, ptr %i.rm, align 8, !tbaa !176
  %wide.load398 = load <4 x ptr>, ptr %i.rn, align 8, !tbaa !176
  %wide.gep399 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load395, i64 %i.gi
  %wide.gep400 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load396, i64 %i.gi
  %wide.gep401 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load397, i64 %i.gi
  %wide.gep402 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load398, i64 %i.gi
  store <4 x ptr> %wide.gep399, ptr %i.rk, align 8, !tbaa !176
  store <4 x ptr> %wide.gep400, ptr %i.rl, align 8, !tbaa !176
  store <4 x ptr> %wide.gep401, ptr %i.rm, align 8, !tbaa !176
  store <4 x ptr> %wide.gep402, ptr %i.rn, align 8, !tbaa !176
  %index.next403 = add nuw i64 %index394, 16      ; 2 uses
  %i.ro = icmp eq i64 %index.next403, %n.vec392
  br i1 %i.ro, label %middle.block404, label %vector.body393, !llvm.loop !949

middle.block404:                                  ; preds = %vector.body393
  br i1 %cmp.n405, label %iter.check, label %vec.epilog.iter.check409

vec.epilog.iter.check409:                         ; preds = %middle.block404
  br i1 %min.epilog.iters.check410, label %vec.epilog.scalar.ph408.preheader, label %vec.epilog.ph411, !prof !946

vec.epilog.ph411:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check409
  %vec.epilog.resume.val406 = phi i64 [ %n.vec392, %vec.epilog.iter.check409 ], [ 0, %vector.main.loop.iter.check389 ]
  br label %vec.epilog.vector.body413

vec.epilog.vector.body413:                        ; preds = %vec.epilog.vector.body413, %vec.epilog.ph411
  %index414 = phi i64 [ %vec.epilog.resume.val406, %vec.epilog.ph411 ], [ %index.next417, %vec.epilog.vector.body413 ] ; 2 uses
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index414 ; 2 uses
  %wide.load415 = load <4 x ptr>, ptr %i.rp, align 8, !tbaa !176
  %wide.gep416 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load415, i64 %i.gi
  store <4 x ptr> %wide.gep416, ptr %i.rp, align 8, !tbaa !176
  %index.next417 = add nuw i64 %index414, 4       ; 2 uses
  %i.rq = icmp eq i64 %index.next417, %n.vec412
  br i1 %i.rq, label %vec.epilog.middle.block418, label %vec.epilog.vector.body413, !llvm.loop !950

vec.epilog.middle.block418:                       ; preds = %vec.epilog.vector.body413
  br i1 %cmp.n419, label %iter.check, label %vec.epilog.scalar.ph408.preheader

vec.epilog.scalar.ph408.preheader:                ; preds = %iter.check407, %vec.epilog.iter.check409, %vec.epilog.middle.block418
  %.0277.us.1.ph = phi i64 [ 0, %iter.check407 ], [ %n.vec392, %vec.epilog.iter.check409 ], [ %n.vec412, %vec.epilog.middle.block418 ]
  br label %vec.epilog.scalar.ph408

vec.epilog.scalar.ph408:                          ; preds = %vec.epilog.scalar.ph408.preheader, %vec.epilog.scalar.ph408
  %.0277.us.1 = phi i64 [ %i.ru, %vec.epilog.scalar.ph408 ], [ %.0277.us.1.ph, %vec.epilog.scalar.ph408.preheader ] ; 2 uses
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.0277.us.1 ; 2 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !176
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %i.gi
  store ptr %i.rt, ptr %i.rr, align 8, !tbaa !176
  %i.ru = add nuw i64 %.0277.us.1, 1              ; 2 uses
  %exitcond294.1.not = icmp eq i64 %i.ru, %i.bg
  br i1 %exitcond294.1.not, label %iter.check, label %vec.epilog.scalar.ph408, !llvm.loop !951

iter.check:                                       ; preds = %vec.epilog.scalar.ph408, %vec.epilog.middle.block418, %middle.block404
  call void @_ZN3jxl19ProgressiveSplitter19SplitACCoefficientsIiEEvPKT_RKNS_10AcStrategyEmmPrPS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.bf, ptr noundef %i.oa, ptr noundef nonnull align 4 dereferenceable(5) %9, i64 noundef %.0184280.us, i64 noundef %.0186284.us, ptr noundef nonnull %i.ds) #49
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check375, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index ; 5 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 32 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 64 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 96 ; 2 uses
  %wide.load = load <4 x ptr>, ptr %i.rv, align 16, !tbaa !176
  %wide.load376 = load <4 x ptr>, ptr %i.rw, align 16, !tbaa !176
  %wide.load377 = load <4 x ptr>, ptr %i.rx, align 16, !tbaa !176
  %wide.load378 = load <4 x ptr>, ptr %i.ry, align 16, !tbaa !176
  %wide.gep = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load, i64 %i.gi
  %wide.gep379 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load376, i64 %i.gi
  %wide.gep380 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load377, i64 %i.gi
  %wide.gep381 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load378, i64 %i.gi
  store <4 x ptr> %wide.gep, ptr %i.rv, align 16, !tbaa !176
  store <4 x ptr> %wide.gep379, ptr %i.rw, align 16, !tbaa !176
  store <4 x ptr> %wide.gep380, ptr %i.rx, align 16, !tbaa !176
  store <4 x ptr> %wide.gep381, ptr %i.ry, align 16, !tbaa !176
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rz = icmp eq i64 %index.next, %n.vec
  br i1 %i.rz, label %middle.block, label %vector.body, !llvm.loop !952

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !946

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index383 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next386, %vec.epilog.vector.body ] ; 2 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index383 ; 2 uses
  %wide.load384 = load <4 x ptr>, ptr %i.sa, align 16, !tbaa !176
  %wide.gep385 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load384, i64 %i.gi
  store <4 x ptr> %wide.gep385, ptr %i.sa, align 16, !tbaa !176
  %index.next386 = add nuw i64 %index383, 4       ; 2 uses
  %i.sb = icmp eq i64 %index.next386, %n.vec382
  br i1 %i.sb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !953

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n387, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0277.us.2.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec382, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0277.us.2 = phi i64 [ %i.sf, %vec.epilog.scalar.ph ], [ %.0277.us.2.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.0277.us.2 ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !176
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.gi
  store ptr %i.se, ptr %i.sc, align 8, !tbaa !176
  %i.sf = add nuw i64 %.0277.us.2, 1              ; 2 uses
  %exitcond294.2.not = icmp eq i64 %i.sf, %i.bg
  br i1 %exitcond294.2.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !954

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #47
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  %i.sg = add nuw i64 %.0184280.us, 1             ; 2 uses
  %exitcond296.not = icmp eq i64 %i.sg, %umin
  br i1 %exitcond296.not, label %.critedge.us, label %bb.f, !llvm.loop !955

.critedge.us:                                     ; preds = %bb.s, %bb.e
  %i.sh = add nuw nsw i64 %.0185282.us, 1         ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 8
  %exitcond297.not = icmp eq i64 %i.sh, %i.df
  br i1 %exitcond297.not, label %._crit_edge.us, label %bb.e, !llvm.loop !956

.preheader.us.sink.split:                         ; preds = %bb.k, %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47, !noalias !916
  br label %.preheader.us

.preheader.us:                                    ; preds = %bb.n, %.preheader.us.sink.split
  %i.si = mul nuw nsw i64 %i.ge, %i.gb
  %i.sj = icmp samesign ugt i64 %i.si, 3          ; 2 uses
  %i.sk = uitofp nneg i64 %i.gg to float
  %i.sl = uitofp nneg i64 %i.gf to float          ; 2 uses
  %i.sm = fmul nnan float %i.sk, -7.440000e-03    ; 2 uses
  %i.sn = shl nuw nsw i64 %i.gf, 2                ; 4 uses
  %i.so = shl nuw nsw i64 %i.gg, 3                ; 6 uses
  %i.sp = shl nuw nsw i64 %i.gg, 2                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_.thres, i64 16, i1 false)
  %i.sq = load float, ptr %i.dk, align 8, !tbaa !27
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.sr = load ptr, ptr %i.dm, align 8, !tbaa !9, !noalias !934 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 40
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !14, !noalias !934
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 72
  %i.sv = getelementptr i8, ptr %i.su, i64 %.idx.i.i.i.us
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !23, !noalias !934
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %i.sw ; 2 uses
  %i.sy = load float, ptr %i.dn, align 4, !tbaa !25, !noalias !934
  %i.sz = fmul float %i.sy, %i.hq
  br i1 %i.sj, label %.preheader.i.us, label %.loopexit.i.us

.lr.ph.us:                                        ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47, !noalias !916
  %.idx.us = shl nuw nsw i64 %i.gi, 3
  %i.ta = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.us
  br label %bb.n

.lr.ph281.us:                                     ; preds = %bb.e
  %i.tb = getelementptr inbounds nuw i8, ptr %i.en, i64 %.0185282.us
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !28
  %i.td = load float, ptr %i.dh, align 4, !tbaa !180
  %i.te = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.0185282.us
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !28
  %i.tg = insertelement <2 x i8> poison, i8 %i.tf, i64 0
  %i.th = insertelement <2 x i8> %i.tg, i8 %i.tc, i64 1
  %i.ti = sitofp <2 x i8> %i.th to <2 x float>
  %i.tj = load <2 x float>, ptr %i.dg, align 8, !tbaa !27
  %i.tk = insertelement <2 x float> poison, float %i.td, i64 0
  %i.tl = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ti, <2 x float> %i.tl, <2 x float> %i.tj)
  %i.tn = fneg <2 x float> %i.tm                  ; 2 uses
  %i.to = shufflevector <2 x float> %i.tn, <2 x float> poison, <8 x i32> zeroinitializer
  %i.tp = shufflevector <2 x float> %i.tn, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %bb.f

._crit_edge.us:                                   ; preds = %.critedge.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #47
  %i.tq = add nuw i64 %.0186284.us, 1             ; 2 uses
  %exitcond298.not = icmp eq i64 %i.tq, %i.aa
  br i1 %exitcond298.not, label %._crit_edge286, label %.lr.ph283.us, !llvm.loop !957

.lr.ph285.split:                                  ; preds = %.lr.ph285.split, %.lr.ph285.split.preheader.new
  %niter = phi i64 [ 0, %.lr.ph285.split.preheader.new ], [ %niter.next.7, %.lr.ph285.split ]
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge286.loopexit.unr-lcssa, label %.lr.ph285.split, !llvm.loop !957

._crit_edge286.loopexit.unr-lcssa:                ; preds = %.lr.ph285.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge286, label %.lr.ph285.split.epil.preheader

.lr.ph285.split.epil.preheader:                   ; preds = %._crit_edge286.loopexit.unr-lcssa, %.lr.ph285.split.preheader
  %lcmp.mod459 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod459)
  br label %.lr.ph285.split.epil

.lr.ph285.split.epil:                             ; preds = %.lr.ph285.split.epil, %.lr.ph285.split.epil.preheader
  %epil.iter = phi i64 [ 0, %.lr.ph285.split.epil.preheader ], [ %epil.iter.next, %.lr.ph285.split.epil ]
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge286, label %.lr.ph285.split.epil, !llvm.loop !958

._crit_edge286:                                   ; preds = %bb.d, %._crit_edge.us, %._crit_edge286.loopexit.unr-lcssa, %.lr.ph285.split.epil, %bb.c, %.critedge197
  %.sroa.0248.1 = phi i32 [ 0, %.critedge197 ], [ 0, %._crit_edge.us ], [ 1, %bb.c ], [ 0, %._crit_edge286.loopexit.unr-lcssa ], [ 0, %.lr.ph285.split.epil ], [ 1, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #47
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  %.pr = load i32, ptr %i.ay, align 8, !tbaa !166
  %i.tr = icmp eq i32 %.pr, 0
  br i1 %i.tr, label %bb.t, label %.thread

bb.t:                                             ; preds = %._crit_edge286
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(28) %7) #49
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.t, %._crit_edge286
  %.sroa.0248.2262 = phi i32 [ %.sroa.0248.1, %bb.t ], [ %.sroa.0248.1, %._crit_edge286 ], [ %i.az, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %.pr263 = load i32, ptr %i.as, align 8, !tbaa !166
  %i.ts = icmp eq i32 %.pr263, 0
  br i1 %i.ts, label %bb.u, label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203

bb.u:                                             ; preds = %.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(28) %5) #49
  br label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203

_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203: ; preds = %bb.a, %.thread, %bb.u
  %.sroa.0248.3266 = phi i32 [ %.sroa.0248.2262, %bb.u ], [ %.sroa.0248.2262, %.thread ], [ %i.at, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret i32 %.sroa.0248.3266
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noalias noundef %4) unnamed_addr #12 {
bb.a:
  %5 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %6 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %7 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %8 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %9 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %10 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %11 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %12 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %13 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %14 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %15 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %16 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %17 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %18 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %19 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %20 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %21 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %22 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %23 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %24 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %25 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %26 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %27 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %28 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %29 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %30 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %31 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %32 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %33 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %34 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %35 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %36 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %37 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %38 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %39 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %40 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %41 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %42 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %43 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %44 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %45 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %46 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %47 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %48 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %49 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %50 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %51 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %52 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %53 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %54 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %55 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %56 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %57 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %58 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %59 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %60 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %61 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %62 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %63 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %64 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %65 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %66 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %67 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %68 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %69 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %70 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %71 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %72 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %73 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %74 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %75 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %76 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %77 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %78 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %79 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %80 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %81 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %82 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %83 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %84 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %85 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %86 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %87 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %88 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %89 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %90 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %91 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %92 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %93 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %94 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %95 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %96 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %97 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %98 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  switch i32 %0, label %bb.y [
    i32 1, label %.split.us.3.1
    i32 13, label %.preheader732
end_hunk_3
begin_hunk_4_@_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi:bb.a
  %i.fy = fdiv float %i.fw, %i.ft
  %i.fz = sitofp i32 %i.fq to float
  %i.ga = fadd float %i.fy, %i.fz
  %i.gb = fptosi float %i.ga to i32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.gb, i32 255) ; 2 uses
  store i32 %spec.store.select, ptr %8, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gc = phi i32 [ %spec.store.select, %bb.z ], [ %i.fq, %bb.y ] ; 4 uses
  %i.gd = icmp eq i32 %3, 0
  %i.ge = fcmp olt float %i.fs, 1.100000e+01
  %or.cond220 = and i1 %i.gd, %i.ge
  br i1 %or.cond220, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.aa
  %i.gf = tail call i32 @llvm.smin.i32(i32 %i.gc, i32 254)
  %spec.store.select201 = add nsw i32 %i.gf, 1
  br label %.sink.split

bb.ab:                                            ; preds = %bb.aa
  %i.gg = icmp ugt i32 %3, 3
  br i1 %i.gg, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.gh = fpext float %.0179.lcssa to double
  %i.gi = fmul double %i.gh, f0x40025AAAAACCDC00
  %i.gj = fptrunc double %i.gi to float
  %i.gk = and i32 %3, -2
  %or.cond7 = icmp eq i32 %i.gk, 10
  %switch.selectcmp = icmp eq i32 %3, 5
  %switch.select = select i1 %switch.selectcmp, i64 2, i64 3
  %switch.selectcmp203 = icmp eq i32 %3, 4
  %switch.select204 = select i1 %switch.selectcmp203, i64 0, i64 %switch.select
  %.0174 = select i1 %or.cond7, i64 1, i64 %switch.select204 ; 2 uses
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul1, i64 %.0174
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %1
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !34
  %i.go = uitofp i64 %4 to double
  %i.gp = fmul double %i.gn, %i.go
  %i.gq = uitofp i64 %5 to double
  %i.gr = fmul double %i.gp, %i.gq
  %i.gs = fmul double %i.gr, 8.000000e+00
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul2, i64 %.0174
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %1
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !34
  %i.gw = fpext float %i.gj to double
  %i.gx = fmul double %i.gv, %i.gw
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gs, double 8.000000e+00, double %i.gx) ; 2 uses
  %i.gz = fcmp olt double %i.gy, %.0180.lcssa
  br i1 %i.gz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ha = fdiv double %.0180.lcssa, %i.gy
  %i.hb = fptosi double %i.ha to i32
  %i.hc = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 0)
  %i.hd = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 2)
  %i.he = add nsw i32 %i.gc, %i.hd
  %spec.store.select202 = tail call i32 @llvm.smin.i32(i32 %i.he, i32 255)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ad, %.thread
  %spec.store.select201.sink = phi i32 [ %spec.store.select201, %.thread ], [ %spec.store.select202, %bb.ad ] ; 2 uses
  store i32 %spec.store.select201.sink, ptr %8, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ac, %bb.ab
  %i.hf = phi i32 [ %i.gc, %bb.ab ], [ %i.gc, %bb.ac ], [ %spec.store.select201.sink, %.sink.split ] ; 2 uses
  %i.hg = mul i64 %5, %4
  %i.hh = trunc i64 %i.hg to i32                  ; 5 uses
  %i.hi = fptosi <4 x float> %i.fr to <4 x i32>
  %i.hj = sdiv i32 %i.hh, 2
  %i.hk = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %i.hl = shufflevector <4 x i32> %i.hk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hm = add nsw <4 x i32> %i.hl, %i.hi          ; 4 uses
  %i.hn = extractelement <4 x i32> %i.hm, i64 0
  %i.ho = sdiv i32 %i.hn, %i.hh
  %i.hp = extractelement <4 x i32> %i.hm, i64 1
  %i.hq = sdiv i32 %i.hp, %i.hh
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.hq, i32 %i.ho)
  %i.hr = extractelement <4 x i32> %i.hm, i64 2
  %i.hs = sdiv i32 %i.hr, %i.hh
  %.sroa.speculated.1 = tail call i32 @llvm.smin.i32(i32 %i.hs, i32 %.sroa.speculated)
  %i.ht = extractelement <4 x i32> %i.hm, i64 3
  %i.hu = sdiv i32 %i.ht, %i.hh
  %.sroa.speculated.2 = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 %.sroa.speculated.1)
  %i.hv = sdiv i32 %i.hf, 2
  %spec.select221 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.2, i32 15) ; 2 uses
  %i.hw = sub nsw i32 %i.hf, %spec.select221
  br i1 %i.ct, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ae
  %i.hx = sitofp i32 %spec.select221 to double    ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.hz = load <2 x float>, ptr %i.hy, align 4, !tbaa !27
  %i.ia = fpext <2 x float> %i.hz to <2 x double>
  %i.ib = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> splat (double 1.000000e-02), <2 x double> %i.ia)
  %i.ie = fptrunc <2 x double> %i.id to <2 x float>
  store <2 x float> %i.ie, ptr %i.hy, align 4, !tbaa !27
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !27
  %i.ih = fpext float %i.ig to double
  %i.ii = tail call double @llvm.fmuladd.f64(double %i.hx, double 1.000000e-02, double %i.ih)
  %i.ij = fptrunc double %i.ii to float
  store float %i.ij, ptr %i.if, align 4, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.ae
  %.sroa.speculated207 = tail call i32 @llvm.smax.i32(i32 %i.hv, i32 %i.hw)
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated207, i32 4)
  store i32 %spec.select, ptr %8, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i1 noundef zeroext %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr noalias nofree noundef captures(none) %9, ptr noalias nofree noundef captures(none) %10) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36
  %i.e = icmp slt i32 %i.d, 6
  br i1 %i.e, label %.loopexit.2, label %bb.b

.loopexit.2:                                      ; preds = %bb.a
  %i.f = load i32, ptr %8, align 4, !tbaa !26     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3872
  %i.h = load float, ptr %i.g, align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3876
  %i.j = load float, ptr %i.i, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !26
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.k, ptr noundef nonnull %8) #48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !27
  %i.l = load i32, ptr %8, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !26
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 0, float noundef %i.h, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %9, ptr noundef nonnull %8) #48
  %i.m = load i32, ptr %8, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !26
  %.idx = shl i64 %1, 3
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 %.idx
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 2, float noundef %i.j, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.n, ptr noundef nonnull %8) #48
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %i.m)
  %i.o = load i32, ptr %8, align 4, !tbaa !26
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.o)
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  store i32 %.sroa.speculated.2, ptr %8, align 4, !tbaa !26
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !27
  %.pre = load i32, ptr %8, align 4, !tbaa !26, !noalias !2070
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit.2
  %i.p = phi i32 [ %.pre, %bb.b ], [ %.sroa.speculated.2, %.loopexit.2 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1 ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9, !noalias !2070 ; 3 uses
  %i.u = zext i32 %4 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14, !noalias !2070
  %.idx.i.i = mul nuw nsw i64 %i.u, 24
  %i.x = getelementptr i8, ptr %i.t, i64 %.idx.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23, !noalias !2070 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !25, !noalias !2070
  %i.ad = sitofp i32 %i.p to float                ; 2 uses
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ah = shl i64 %6, 3                           ; 4 uses
  %.not102.i = icmp eq i64 %i.ah, 0
  br i1 %.not102.i, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %bb.c
  %i.ai = lshr exact i64 %i.ah, 1                 ; 2 uses
  %i.aj = shl i64 %5, 3                           ; 5 uses
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
  %i.aq = load float, ptr %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !27, !noalias !2070
  %i.ar = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.as = load float, ptr %.sroa.sel73.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !27, !noalias !2070
  %i.at = insertelement <4 x float> poison, float %i.as, i64 0
  %i.au = bitcast <4 x float> %i.ar to <4 x i32>
  %i.av = shufflevector <4 x i32> %i.au, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aw = bitcast <4 x float> %i.at to <4 x i32>
  %i.ax = shufflevector <4 x i32> %i.aw, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us.i
  %.07695.us.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %i.bw, %bb.d ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07695.us.us.i
  %i.az = load <4 x i32>, ptr %i.ay, align 16, !tbaa !28, !noalias !2070 ; 2 uses
  %i.ba = and <4 x i32> %i.az, %i.av
  %i.bb = xor <4 x i32> %i.az, splat (i32 -1)
  %i.bc = and <4 x i32> %i.ax, %i.bb
  %i.bd = or <4 x i32> %i.bc, %i.ba
  %i.be = bitcast <4 x i32> %i.bd to <4 x float>
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.07695.us.us.i
  %i.bg = load <4 x float>, ptr %i.bf, align 16, !tbaa !28, !noalias !2070
  %i.bh = fmul <4 x float> %i.ag, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.07695.us.us.i
  %i.bj = load <4 x float>, ptr %i.bi, align 16, !tbaa !28, !alias.scope !2074, !noalias !2075
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
  store <4 x i32> %i.bu, ptr %i.bv, align 16, !tbaa !28, !alias.scope !2075, !noalias !2074
  %i.bw = add nuw i64 %.07695.us.us.i, 4          ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.aj
  br i1 %i.bx, label %bb.d, label %._crit_edge.split.us.us.i, !llvm.loop !2066

._crit_edge.split.us.us.i:                        ; preds = %bb.d
  %i.by = add nuw i64 %.07596.us.i, 1             ; 2 uses
  %exitcond106.not.i = icmp eq i64 %i.by, %i.ah
  br i1 %exitcond106.not.i, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph.us.i, !llvm.loop !2067

.lr.ph.i:                                         ; preds = %.lr.ph98.split.i, %._crit_edge.split.i
  %.07596.i = phi i64 [ %i.cd, %._crit_edge.split.i ], [ 0, %.lr.ph98.split.i ] ; 3 uses
  %.not79.i = icmp ult i64 %.07596.i, %i.ai
  %i.bz = mul i64 %i.aj, %.07596.i                ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not79.i, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bz
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bz
  br label %bb.e

._crit_edge.split.i:                              ; preds = %bb.e
  %i.cd = add nuw i64 %.07596.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cd, %i.ah
  br i1 %exitcond.not.i, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph.i, !llvm.loop !2067

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.07695.i = phi i64 [ 0, %.lr.ph.i ], [ %i.db, %bb.e ] ; 5 uses
  %i.ce = icmp uge i64 %.07695.i, %i.ak
  %i.cf = zext i1 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !27, !noalias !2070
  %i.ci = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.07695.i
  %i.cl = load <4 x float>, ptr %i.ck, align 16, !tbaa !28, !noalias !2070
  %i.cm = fmul <4 x float> %i.ag, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.07695.i
  %i.co = load <4 x float>, ptr %i.cn, align 16, !tbaa !28, !alias.scope !2074, !noalias !2075
  %i.cp = fmul <4 x float> %i.cm, %i.co           ; 4 uses
  %i.cq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cp) ; 2 uses
  %i.cr = fcmp ole <4 x float> %i.cj, %i.cq
  %i.cs = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.cp) ; 2 uses
  %i.ct = fadd <4 x float> %i.cp, %i.cs
  %i.cu = fsub <4 x float> %i.ct, %i.cs
  %i.cv = fcmp uge <4 x float> %i.cq, splat (float f0x4B000000)
  %.v.i = select <4 x i1> %i.cv, <4 x float> %i.cp, <4 x float> %i.cu
  %i.cw = select <4 x i1> %i.cr, <4 x float> %.v.i, <4 x float> zeroinitializer ; 2 uses
  %i.cx = fcmp oge <4 x float> %i.cw, splat (float f0x4F000000)
  %i.cy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.cw)
  %i.cz = select <4 x i1> %i.cx, <4 x i32> splat (i32 2147483647), <4 x i32> %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.07695.i
  store <4 x i32> %i.cz, ptr %i.da, align 16, !tbaa !28, !alias.scope !2075, !noalias !2074
  %i.db = add nuw i64 %.07695.i, 4                ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.aj
  br i1 %i.dc, label %bb.e, label %._crit_edge.split.i, !llvm.loop !2066

_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit: ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.c, %.lr.ph98.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !148
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.z
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !149
  %i.di = fdiv float %i.dh, %i.ad
  %i.dj = insertelement <4 x float> poison, float %i.di, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = shl i64 %5, 6
  %i.dm = mul i64 %i.dl, %6                       ; 2 uses
  %.not82 = icmp eq i64 %i.dm, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !27, !alias.scope !2076
  %i.dp = insertelement <4 x float> poison, float %i.do, i64 0
  %i.dq = bitcast <4 x float> %i.dp to <4 x i32>
  %i.dr = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !27, !alias.scope !2076
  %i.du = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.06581 = phi i64 [ 0, %.lr.ph ], [ %i.es, %bb.f ] ; 4 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06581
  %i.dx = load <4 x i32>, ptr %i.dw, align 16, !tbaa !28 ; 2 uses
  %i.dy = sitofp <4 x i32> %i.dx to <4 x float>   ; 4 uses
  %i.dz = bitcast <4 x float> %i.dy to <4 x i32>
  %i.ea = and <4 x i32> %i.dz, splat (i32 -2147483648)
  %i.eb = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dy)
  %i.ec = fcmp olt <4 x float> %i.eb, splat (float 1.125000e+00) ; 2 uses
  %.not76 = icmp ne <4 x i32> %i.dx, zeroinitializer
  %i.ed = xor <4 x i32> %i.dr, %i.ea
  %i.ee = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.dy)
  %i.ef = fmul <4 x float> %i.ee, %i.dv
  %i.eg = fsub <4 x float> %i.dy, %i.ef
  %i.eh = select <4 x i1> %i.ec, <4 x i1> %.not76, <4 x i1> zeroinitializer
  %i.ei = select <4 x i1> %i.eh, <4 x i32> %i.ed, <4 x i32> zeroinitializer
  %i.ej = bitcast <4 x float> %i.eg to <4 x i32>
  %i.ek = select <4 x i1> %i.ec, <4 x i32> zeroinitializer, <4 x i32> %i.ej
  %i.el = or <4 x i32> %i.ek, %i.ei
  %i.em = bitcast <4 x i32> %i.el to <4 x float>
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.06581
  %i.eo = load <4 x float>, ptr %i.en, align 16, !tbaa !28
  %i.ep = fmul <4 x float> %i.eo, %i.em
  %i.eq = fmul <4 x float> %i.dk, %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.06581
  store <4 x float> %i.eq, ptr %i.er, align 16, !tbaa !28
  %i.es = add nuw i64 %.06581, 4                  ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.dm
  br i1 %i.et, label %bb.f, label %._crit_edge, !llvm.loop !2079
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load i64, ptr %i.i, align 8, !tbaa !155, !noalias !2080 ; 2 uses
  %i.k = urem i64 %0, %i.j                        ; 2 uses
  %i.l = udiv i64 %0, %i.j                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.n = load i64, ptr %i.m, align 8, !tbaa !159, !noalias !2080 ; 3 uses
  %i.o = lshr i64 %i.n, 3                         ; 6 uses
  %i.p = mul i64 %i.o, %i.k                       ; 8 uses
  %i.q = mul i64 %i.o, %i.l                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !160, !noalias !2080 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load i64, ptr %i.t, align 8, !tbaa !161, !noalias !2080 ; 2 uses
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
  %i.ag = load i64, ptr %3, align 8, !tbaa !162
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !164
  %i.aj = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.ak = add i64 %i.ai, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !165
  %i.an = lshr i64 %i.am, 2                       ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !165
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = tail call noundef i64 @_ZN3jxl13MaxVectorSizeEv() #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %5, ptr noundef %i.h, i64 noundef 786432, i64 noundef 0) #49
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !166 ; 2 uses
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
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !166 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(28) %7) #49
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !169
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 786432 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 3196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(264) %i.c, i8 0, i64 264, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 2872 ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !170 ; 14 uses
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %._crit_edge286, label %.preheader271

.preheader271:                                    ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2824 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader271, %.preheader270
  %.0187273 = phi i64 [ 0, %.preheader271 ], [ %i.cl, %.preheader270 ] ; 6 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !171
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0187273
end_hunk_4
begin_hunk_5_@_ZN3jxl6N_SSE219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_:bb.a
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !174
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i64 noundef 1, i64 noundef %0, i64 noundef 0) #49
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 88
  store ptr %i.cd, ptr %gep.1, align 8, !tbaa !176
  %i.ce = load ptr, ptr %i.bh, align 8, !tbaa !171
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0187273
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !172 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !174
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i64 noundef 2, i64 noundef %0, i64 noundef 0) #49
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 176
  store ptr %i.ck, ptr %gep.2, align 8, !tbaa !176
  %i.cl = add nuw i64 %.0187273, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.bg
  br i1 %exitcond.not, label %.critedge197, label %bb.d, !llvm.loop !2083

.critedge197:                                     ; preds = %.preheader270
  %i.cm = load ptr, ptr %i.bb, align 8, !tbaa !169 ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !169 ; 6 uses
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
  %n.vec365 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n374 = icmp eq i64 %i.bg, %n.vec365
  %min.iters.check = icmp ult i64 %i.bg, 4
  %n.vec = and i64 %i.bg, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br label %.lr.ph283.us

.lr.ph283.us:                                     ; preds = %.lr.ph283.us.preheader, %._crit_edge.us
  %.0186284.us = phi i64 [ %i.va, %._crit_edge.us ], [ 0, %.lr.ph283.us.preheader ] ; 7 uses
  %i.dt = add i64 %.0186284.us, %i.q              ; 3 uses
  %i.du = load ptr, ptr %i.cp, align 8, !tbaa !169
  %i.dv = load i64, ptr %i.cq, align 8, !tbaa !165
  %i.dw = mul i64 %i.dv, %i.dt
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dx, i64 64) ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.p
  %i.dz = lshr i64 %.0186284.us, 3
  %i.ea = add nuw nsw i64 %i.dz, %i.ac            ; 2 uses
  %i.eb = load ptr, ptr %i.cr, align 8, !tbaa !169
  %i.ec = load i64, ptr %i.cs, align 8, !tbaa !165
  %i.ed = mul i64 %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ee, i64 64) ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ab
  %i.eg = load ptr, ptr %i.ct, align 8, !tbaa !169
  %i.eh = load i64, ptr %i.cu, align 8, !tbaa !165
  %i.ei = mul i64 %i.eh, %i.ea
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ej, i64 64) ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #47
  %i.el = shl i64 %.0186284.us, 3
  %i.em = add i64 %i.ak, %i.el
  %i.en = load i64, ptr %i.ao, align 8, !tbaa !165
  %i.eo = mul i64 %i.en, %i.em                    ; 3 uses
  %i.ep = load ptr, ptr %i.cv, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ep, i64 64) ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eq, i64 64) ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.aj
  store ptr %i.er, ptr %i.d, align 16, !tbaa !178
  %i.es = load ptr, ptr %i.cx, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.es, i64 64) ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.et, i64 64) ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.aj
  store ptr %i.eu, ptr %i.cw, align 8, !tbaa !178
  %i.ev = load ptr, ptr %i.cz, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ev, i64 64) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ew, i64 64) ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.aj
  store ptr %i.ex, ptr %i.cy, align 16, !tbaa !178
  %i.ey = load i64, ptr %i.al, align 8, !tbaa !165
  %i.ez = mul i64 %i.ey, %i.dt                    ; 3 uses
  %i.fa = load ptr, ptr %i.da, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fa, i64 64) ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ez ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 64) ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.p
  %i.fd = load ptr, ptr %i.db, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fd, i64 64) ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ez ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fe, i64 64) ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.p
  %i.fg = load ptr, ptr %i.dc, align 8, !tbaa !169 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fg, i64 64) ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ez ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fh, i64 64) ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.p
  %i.fj = load ptr, ptr %i.dd, align 8, !tbaa !169
  %i.fk = load i64, ptr %i.de, align 8, !tbaa !165
  %i.fl = mul i64 %i.fk, %i.dt
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fm, i64 64) ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph283.us, %.critedge.us
  %indvars.iv = phi i64 [ 8, %.lr.ph283.us ], [ %indvars.iv.next, %.critedge.us ] ; 2 uses
  %.0185282.us = phi i64 [ 0, %.lr.ph283.us ], [ %i.tw, %.critedge.us ] ; 4 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.x, i64 %indvars.iv)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.0185282.us
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !28
  %i.fq = load float, ptr %i.dh, align 4, !tbaa !180
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.0185282.us
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !28
  %i.ft = load <2 x float>, ptr %i.dg, align 8, !tbaa !27
  %i.fu = insertelement <2 x i8> poison, i8 %i.fp, i64 0
  %i.fv = insertelement <2 x i8> %i.fu, i8 %i.fs, i64 1
  %i.fw = sitofp <2 x i8> %i.fv to <2 x float>
  %i.fx = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fy, <2 x float> %i.ft) ; 2 uses
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gb = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gc = shl nuw i64 %.0185282.us, 3             ; 2 uses
  %or.cond279.us = icmp ugt i64 %i.x, %i.gc
  br i1 %or.cond279.us, label %.lr.ph281.us, label %.critedge.us

.lr.ph281.us:                                     ; preds = %bb.e, %bb.r
  %.0184280.us = phi i64 [ %i.tv, %bb.r ], [ %i.gc, %bb.e ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.0184280.us
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !28  ; 3 uses
  %i.gf = lshr i8 %i.ge, 1                        ; 2 uses
  %i.gg = and i8 %i.ge, 1
  %.sroa.2.0.insert.ext.i.us = zext nneg i8 %i.gg to i64
  %.sroa.2.0.insert.shift.i.us = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.us, 32
  %.sroa.0.0.insert.ext.i.us = zext nneg i8 %i.gf to i64
  %.sroa.0.0.insert.insert.i.us = or disjoint i64 %.sroa.2.0.insert.shift.i.us, %.sroa.0.0.insert.ext.i.us
  %i.gh = trunc nuw nsw i64 %.sroa.0.0.insert.insert.i.us to i40
  store i40 %i.gh, ptr %9, align 8
  %i.gi = trunc i8 %i.ge to i1
  br i1 %i.gi, label %bb.f, label %bb.r

bb.f:                                             ; preds = %.lr.ph281.us
  %i.gj = zext nneg i8 %i.gf to i64               ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !28
  %i.gm = zext i8 %i.gl to i64                    ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.gj
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !28
  %i.gp = zext i8 %i.go to i64                    ; 3 uses
  %i.gq = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 %i.gm) ; 9 uses
  %i.gr = call noundef i64 @llvm.umax.i64(i64 %i.gp, i64 %i.gm) ; 12 uses
  %i.gs = shl nuw nsw i64 %i.gr, 6
  %i.gt = mul nuw nsw i64 %i.gs, %i.gq            ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #47
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.0184280.us ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !26 ; 4 uses
  %.idx195.us = shl i64 %.0184280.us, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0183.idx274.us = phi i64 [ 0, %bb.f ], [ %.0183.add.us, %bb.g ] ; 2 uses
  %.0183.ptr.us = getelementptr inbounds nuw i8, ptr @.ref.tmp.13, i64 %.0183.idx274.us
  %i.gw = load i32, ptr %.0183.ptr.us, align 4, !tbaa !26
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = load i32, ptr %9, align 8, !tbaa !182
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.gx
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !178
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.idx195.us
  %i.hc = mul nsw i64 %i.gt, %i.gx
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hc
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %i.gy, ptr noundef %i.hb, i64 noundef %i.aq, ptr noundef %i.hd, ptr noundef nonnull %i.bd) #48
  %.0183.add.us = add nuw nsw i64 %.0183.idx274.us, 4 ; 2 uses
  %.not193.us = icmp eq i64 %.0183.add.us, 12
  br i1 %.not193.us, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.he = load i32, ptr %9, align 8, !tbaa !182
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gt ; 6 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.he, ptr noundef %i.hf, ptr noundef %i.hg, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  %i.hh = load i32, ptr %9, align 8, !tbaa !182   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47, !noalias !2089
  %i.hi = load i32, ptr %i.be, align 4, !tbaa !36, !noalias !2089
  %i.hj = icmp slt i32 %i.hi, 6
  br i1 %i.hj, label %.loopexit.2.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !27, !noalias !2089
  br label %bb.j

.loopexit.2.i.us:                                 ; preds = %bb.h
  %i.hk = load float, ptr %i.dk, align 8, !tbaa !140, !noalias !2089
  %i.hl = load float, ptr %i.dl, align 4, !tbaa !141, !noalias !2089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !2089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !2089
  store i32 %i.gv, ptr %i.e, align 4, !tbaa !26, !noalias !2089
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %i.hh, i64 noundef %i.gr, i64 noundef %i.gq, ptr noundef nonnull %i.b, ptr noundef %i.hf, ptr noundef nonnull %i.e) #48, !noalias !2091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !27, !noalias !2089
  %i.hm = load i32, ptr %i.e, align 4, !tbaa !26, !noalias !2089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !2089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !2089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !2089
  store i32 %i.gv, ptr %i.e, align 4, !tbaa !26, !noalias !2089
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 0, float noundef %i.hk, i32 noundef %i.hh, i64 noundef %i.gr, i64 noundef %i.gq, ptr noundef nonnull %i.b, ptr noundef %i.cm, ptr noundef nonnull %i.e) #48, !noalias !2091
  %i.hn = load i32, ptr %i.e, align 4, !tbaa !26, !noalias !2089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !2089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !2089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !2089
  store i32 %i.gv, ptr %i.e, align 4, !tbaa !26, !noalias !2089
  %.idx.i.us = shl nuw nsw i64 %i.gt, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.us
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 2, float noundef %i.hl, i32 noundef %i.hh, i64 noundef %i.gr, i64 noundef %i.gq, ptr noundef nonnull %i.b, ptr noundef %i.ho, ptr noundef nonnull %i.e) #48, !noalias !2091
  %.sroa.speculated.i.us = call i32 @llvm.smax.i32(i32 %i.hm, i32 %i.hn)
  %i.hp = load i32, ptr %i.e, align 4, !tbaa !26, !noalias !2089
  %.sroa.speculated.1.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.us, i32 %i.hp)
  %.sroa.speculated.2.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.1.i.us, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !2089
  store i32 %.sroa.speculated.2.i.us, ptr %i.e, align 4, !tbaa !26, !noalias !2089
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.2.i.us, %bb.i
  %i.hq = phi i32 [ %i.gv, %bb.i ], [ %.sroa.speculated.2.i.us, %.loopexit.2.i.us ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.gt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  %i.hs = load ptr, ptr %i.dm, align 8, !tbaa !9, !noalias !2097 ; 3 uses
  %i.ht = zext i32 %i.hh to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !14, !noalias !2097
  %.idx.i.i.i.us = mul nuw nsw i64 %i.ht, 24
  %i.hw = getelementptr i8, ptr %i.hs, i64 %.idx.i.i.i.us
  %i.hx = getelementptr i8, ptr %i.hw, i64 80
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !23, !noalias !2097 ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hy ; 2 uses
  %i.ia = load float, ptr %i.dn, align 4, !tbaa !25, !noalias !2097
  %i.ib = sitofp i32 %i.hq to float               ; 4 uses
  %i.ic = fmul float %i.ia, %i.ib
  %i.id = insertelement <4 x float> poison, float %i.ic, i64 0
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.if = shl nuw nsw i64 %i.gq, 3                ; 6 uses
  %.not102.i.i.us = icmp eq i64 %i.gq, 0          ; 3 uses
  br i1 %.not102.i.i.us, label %.preheader.us.sink.split, label %.lr.ph98.i.i.us

.lr.ph98.i.i.us:                                  ; preds = %bb.j
  %i.ig = shl nuw nsw i64 %i.gq, 2                ; 2 uses
  %i.ih = shl nuw nsw i64 %i.gr, 3                ; 3 uses
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
  %i.ix = load <4 x i32>, ptr %i.iw, align 16, !tbaa !28, !noalias !2097 ; 2 uses
  %i.iy = and <4 x i32> %i.ix, %i.it
  %i.iz = xor <4 x i32> %i.ix, splat (i32 -1)
  %i.ja = and <4 x i32> %i.iv, %i.iz
  %i.jb = or <4 x i32> %i.ja, %i.iy
  %i.jc = bitcast <4 x i32> %i.jb to <4 x float>
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.07695.us.us.i.i.us
  %i.je = load <4 x float>, ptr %i.jd, align 16, !tbaa !28, !noalias !2097
  %i.jf = fmul <4 x float> %i.ie, %i.je
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %.07695.us.us.i.i.us
  %i.jh = load <4 x float>, ptr %i.jg, align 16, !tbaa !28, !alias.scope !2098, !noalias !2099
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
  store <4 x i32> %i.js, ptr %i.jt, align 16, !tbaa !28, !alias.scope !2100, !noalias !2101
  %i.ju = add nuw nsw i64 %.07695.us.us.i.i.us, 4 ; 2 uses
  %i.jv = icmp samesign ult i64 %i.ju, %i.ih
  br i1 %i.jv, label %bb.k, label %._crit_edge.split.us.us.i.i.us, !llvm.loop !2066

._crit_edge.split.us.us.i.i.us:                   ; preds = %bb.k
  %i.jw = add nuw nsw i64 %.07596.us.i.i.us, 1    ; 2 uses
  %exitcond106.not.i.i.us = icmp eq i64 %i.jw, %i.if
  br i1 %exitcond106.not.i.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.us.i.i.us, !llvm.loop !2067

.lr.ph.i.i.us:                                    ; preds = %.lr.ph98.i.i.us, %._crit_edge.split.i.i.us
  %.07596.i.i.us = phi i64 [ %i.la, %._crit_edge.split.i.i.us ], [ 0, %.lr.ph98.i.i.us ] ; 3 uses
  %.not79.i.i.us = icmp samesign ult i64 %.07596.i.i.us, %i.ig
  %i.jx = mul nuw nsw i64 %.07596.i.i.us, %i.ih   ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel = select i1 %.not79.i.i.us, ptr %i.a, ptr %i.di
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.jx
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.jx
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.jx
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.us
  %.07695.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %i.ky, %bb.l ] ; 5 uses
  %i.kb = icmp samesign uge i64 %.07695.i.i.us, %i.ii
  %i.kc = zext i1 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel, i64 %i.kc
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !27, !noalias !2097
  %i.kf = insertelement <4 x float> poison, float %i.ke, i64 0
  %i.kg = shufflevector <4 x float> %i.kf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %.07695.i.i.us
  %i.ki = load <4 x float>, ptr %i.kh, align 16, !tbaa !28, !noalias !2097
  %i.kj = fmul <4 x float> %i.ie, %i.ki
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %.07695.i.i.us
  %i.kl = load <4 x float>, ptr %i.kk, align 16, !tbaa !28, !alias.scope !2098, !noalias !2099
  %i.km = fmul <4 x float> %i.kj, %i.kl           ; 4 uses
  %i.kn = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.km) ; 2 uses
  %i.ko = fcmp ole <4 x float> %i.kg, %i.kn
  %i.kp = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.km) ; 2 uses
  %i.kq = fadd <4 x float> %i.km, %i.kp
  %i.kr = fsub <4 x float> %i.kq, %i.kp
  %i.ks = fcmp uge <4 x float> %i.kn, splat (float f0x4B000000)
  %.v.i.i.us = select <4 x i1> %i.ks, <4 x float> %i.km, <4 x float> %i.kr
  %i.kt = select <4 x i1> %i.ko, <4 x float> %.v.i.i.us, <4 x float> zeroinitializer ; 2 uses
  %i.ku = fcmp oge <4 x float> %i.kt, splat (float f0x4F000000)
  %i.kv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.kt)
  %i.kw = select <4 x i1> %i.ku, <4 x i32> splat (i32 2147483647), <4 x i32> %i.kv
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.07695.i.i.us
  store <4 x i32> %i.kw, ptr %i.kx, align 16, !tbaa !28, !alias.scope !2100, !noalias !2101
  %i.ky = add nuw nsw i64 %.07695.i.i.us, 4       ; 2 uses
  %i.kz = icmp samesign ult i64 %i.ky, %i.ih
  br i1 %i.kz, label %bb.l, label %._crit_edge.split.i.i.us, !llvm.loop !2066

._crit_edge.split.i.i.us:                         ; preds = %bb.l
  %i.la = add nuw nsw i64 %.07596.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.la, %i.if
  br i1 %exitcond.not.i.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.i.i.us, !llvm.loop !2067

_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us: ; preds = %._crit_edge.split.us.us.i.i.us, %._crit_edge.split.i.i.us, %.lr.ph98.i.i.us
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !148, !noalias !2089
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.hy
  %i.le = load float, ptr %i.do, align 8, !tbaa !149, !noalias !2089
  %i.lf = fdiv float %i.le, %i.ib
  %i.lg = insertelement <4 x float> poison, float %i.lf, i64 0
  %i.lh = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> zeroinitializer
  %.not82.i.us = icmp eq i64 %i.gr, 0
  br i1 %.not82.i.us, label %.preheader.us.sink.split, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, %.lr.ph.i.us
  %.06581.i.us = phi i64 [ %i.me, %.lr.ph.i.us ], [ 0, %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us ] ; 4 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %.06581.i.us
  %i.lj = load <4 x i32>, ptr %i.li, align 16, !tbaa !28, !alias.scope !2087, !noalias !2102 ; 2 uses
  %i.lk = sitofp <4 x i32> %i.lj to <4 x float>   ; 4 uses
  %i.ll = bitcast <4 x float> %i.lk to <4 x i32>
  %i.lm = and <4 x i32> %i.ll, splat (i32 -2147483648)
  %i.ln = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lk)
  %i.lo = fcmp olt <4 x float> %i.ln, splat (float 1.125000e+00) ; 2 uses
  %.not76.i.us = icmp ne <4 x i32> %i.lj, zeroinitializer
  %i.lp = or disjoint <4 x i32> %i.lm, splat (i32 1064177896)
  %i.lq = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.lk)
  %i.lr = fmul <4 x float> %i.lq, splat (float 1.450000e-01)
  %i.ls = fsub <4 x float> %i.lk, %i.lr
  %i.lt = select <4 x i1> %i.lo, <4 x i1> %.not76.i.us, <4 x i1> zeroinitializer
  %i.lu = select <4 x i1> %i.lt, <4 x i32> %i.lp, <4 x i32> zeroinitializer
  %i.lv = bitcast <4 x float> %i.ls to <4 x i32>
  %i.lw = select <4 x i1> %i.lo, <4 x i32> zeroinitializer, <4 x i32> %i.lv
  %i.lx = or <4 x i32> %i.lw, %i.lu
  %i.ly = bitcast <4 x i32> %i.lx to <4 x float>
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %.06581.i.us
  %i.ma = load <4 x float>, ptr %i.lz, align 16, !tbaa !28, !noalias !2089
  %i.mb = fmul <4 x float> %i.ma, %i.ly
  %i.mc = fmul <4 x float> %i.lh, %i.mb
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %.06581.i.us
  store <4 x float> %i.mc, ptr %i.md, align 16, !tbaa !28, !alias.scope !2084, !noalias !2091
  %i.me = add nuw nsw i64 %.06581.i.us, 4         ; 2 uses
  %i.mf = icmp samesign ult i64 %i.me, %i.gt
  br i1 %i.mf, label %.lr.ph.i.us, label %.lr.ph.us, !llvm.loop !2079

bb.m:                                             ; preds = %.lr.ph.us, %bb.m
  %.0182275.us = phi i64 [ 0, %.lr.ph.us ], [ %i.mq, %bb.m ] ; 4 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0182275.us ; 2 uses
  %i.mh = load <4 x float>, ptr %i.mg, align 16, !tbaa !28
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %.0182275.us
  %i.mj = load <4 x float>, ptr %i.mi, align 16, !tbaa !28 ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %.0182275.us ; 2 uses
  %i.ml = load <4 x float>, ptr %i.mk, align 16, !tbaa !28
  %i.mm = fmul <4 x float> %i.ga, %i.mj
  %i.mn = fsub <4 x float> %i.mh, %i.mm
  %i.mo = fmul <4 x float> %i.gb, %i.mj
  %i.mp = fsub <4 x float> %i.ml, %i.mo
  store <4 x float> %i.mn, ptr %i.mg, align 16, !tbaa !28
  store <4 x float> %i.mp, ptr %i.mk, align 16, !tbaa !28
  %i.mq = add nuw nsw i64 %.0182275.us, 4         ; 2 uses
  %i.mr = icmp samesign ult i64 %i.mq, %i.gt
  br i1 %i.mr, label %bb.m, label %.preheader.us, !llvm.loop !2103

.preheader.i.us:                                  ; preds = %.preheader.us
  store <4 x float> %i.um, ptr %i.f, align 16, !tbaa !27, !noalias !2104
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.preheader.i.us, %.preheader.us
  %i.ms = fmul float %i.un, %i.uy
  %i.mt = insertelement <4 x float> poison, float %i.ms, i64 0
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br i1 %.not102.i.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph98.i.us

.lr.ph98.i.us:                                    ; preds = %.loopexit.i.us
  switch i8 %trunc290, label %.lr.ph.i202.us [
    i8 0, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
    i8 1, label %.lr.ph.us.i.us.preheader
  ]

.lr.ph.us.i.us.preheader:                         ; preds = %.lr.ph98.i.us
  %i.mv = load <2 x float>, ptr %i.f, align 16
  %i.mw = load <2 x float>, ptr %i.dp, align 8
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.lr.ph.us.i.us.preheader, %._crit_edge.split.us.us.i.us
  %.07596.us.i.us = phi i64 [ %i.oi, %._crit_edge.split.us.us.i.us ], [ 0, %.lr.ph.us.i.us.preheader ] ; 3 uses
  %.not79.us.i.us = icmp samesign ult i64 %.07596.us.i.us, %i.uc
  %i.mx = shl nuw nsw i64 %.07596.us.i.us, 3      ; 3 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.mx
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.mx
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.mx
  %i.nb = insertelement <2 x i1> poison, i1 %.not79.us.i.us, i64 0
  %i.nc = shufflevector <2 x i1> %i.nb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.nd = select <2 x i1> %i.nc, <2 x float> %i.mv, <2 x float> %i.mw ; 2 uses
  %i.ne = bitcast <2 x float> %i.nd to <2 x i32>
  %i.nf = shufflevector <2 x i32> %i.ne, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ng = bitcast <2 x float> %i.nd to <2 x i32>
  %i.nh = shufflevector <2 x i32> %i.ng, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.us.i.us
  %.07695.us.us.i.us = phi i64 [ 0, %.lr.ph.us.i.us ], [ %i.og, %bb.n ] ; 5 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07695.us.us.i.us
  %i.nj = load <4 x i32>, ptr %i.ni, align 16, !tbaa !28, !noalias !2104 ; 2 uses
  %i.nk = and <4 x i32> %i.nj, %i.nf
  %i.nl = xor <4 x i32> %i.nj, splat (i32 -1)
  %i.nm = and <4 x i32> %i.nh, %i.nl
  %i.nn = or <4 x i32> %i.nm, %i.nk
  %i.no = bitcast <4 x i32> %i.nn to <4 x float>
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %.07695.us.us.i.us
  %i.nq = load <4 x float>, ptr %i.np, align 16, !tbaa !28, !noalias !2104
  %i.nr = fmul <4 x float> %i.mu, %i.nq
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %.07695.us.us.i.us
  %i.nt = load <4 x float>, ptr %i.ns, align 16, !tbaa !28, !alias.scope !2108, !noalias !2109
  %i.nu = fmul <4 x float> %i.nr, %i.nt           ; 4 uses
  %i.nv = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.nu) ; 2 uses
  %i.nw = fcmp oge <4 x float> %i.nv, %i.no
  %i.nx = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.nu) ; 2 uses
  %i.ny = fadd <4 x float> %i.nu, %i.nx
  %i.nz = fsub <4 x float> %i.ny, %i.nx
  %i.oa = fcmp uge <4 x float> %i.nv, splat (float f0x4B000000)
  %.v.us.us.i.us = select <4 x i1> %i.oa, <4 x float> %i.nu, <4 x float> %i.nz
  %i.ob = select <4 x i1> %i.nw, <4 x float> %.v.us.us.i.us, <4 x float> zeroinitializer ; 2 uses
  %i.oc = fcmp oge <4 x float> %i.ob, splat (float f0x4F000000)
  %i.od = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ob)
  %i.oe = select <4 x i1> %i.oc, <4 x i32> splat (i32 2147483647), <4 x i32> %i.od
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %.07695.us.us.i.us
  store <4 x i32> %i.oe, ptr %i.of, align 16, !tbaa !28, !alias.scope !2109, !noalias !2108
  %i.og = add nuw nsw i64 %.07695.us.us.i.us, 4   ; 2 uses
  %i.oh = icmp samesign ult i64 %i.og, %i.ud
  br i1 %i.oh, label %bb.n, label %._crit_edge.split.us.us.i.us, !llvm.loop !2066

._crit_edge.split.us.us.i.us:                     ; preds = %bb.n
  %i.oi = add nuw nsw i64 %.07596.us.i.us, 1      ; 2 uses
  %exitcond106.not.i.us = icmp eq i64 %i.oi, %i.if
  br i1 %exitcond106.not.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph.us.i.us, !llvm.loop !2067

.lr.ph.i202.us:                                   ; preds = %.lr.ph98.i.us, %._crit_edge.split.i.us
  %.07596.i.us = phi i64 [ %i.pm, %._crit_edge.split.i.us ], [ 0, %.lr.ph98.i.us ] ; 3 uses
  %.not79.i.us = icmp samesign ult i64 %.07596.i.us, %i.uc
  %i.oj = mul nuw nsw i64 %i.ud, %.07596.i.us     ; 3 uses
  %.sroa.sel.idx.us.sroa.sel = select i1 %.not79.i.us, ptr %i.f, ptr %i.dp
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.oj
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.oj
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.oj
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i202.us
  %.07695.i.us = phi i64 [ 0, %.lr.ph.i202.us ], [ %i.pk, %bb.o ] ; 5 uses
  %i.on = icmp samesign uge i64 %.07695.i.us, %i.ue
  %i.oo = zext i1 %i.on to i64
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.us.sroa.sel, i64 %i.oo
  %i.oq = load float, ptr %i.op, align 4, !tbaa !27, !noalias !2104
  %i.or = insertelement <4 x float> poison, float %i.oq, i64 0
  %i.os = shufflevector <4 x float> %i.or, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %.07695.i.us
  %i.ou = load <4 x float>, ptr %i.ot, align 16, !tbaa !28, !noalias !2104
  %i.ov = fmul <4 x float> %i.mu, %i.ou
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %.07695.i.us
  %i.ox = load <4 x float>, ptr %i.ow, align 16, !tbaa !28, !alias.scope !2108, !noalias !2109
  %i.oy = fmul <4 x float> %i.ov, %i.ox           ; 4 uses
  %i.oz = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oy) ; 2 uses
  %i.pa = fcmp ole <4 x float> %i.os, %i.oz
  %i.pb = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.oy) ; 2 uses
  %i.pc = fadd <4 x float> %i.oy, %i.pb
  %i.pd = fsub <4 x float> %i.pc, %i.pb
  %i.pe = fcmp uge <4 x float> %i.oz, splat (float f0x4B000000)
  %.v.i.us = select <4 x i1> %i.pe, <4 x float> %i.oy, <4 x float> %i.pd
  %i.pf = select <4 x i1> %i.pa, <4 x float> %.v.i.us, <4 x float> zeroinitializer ; 2 uses
  %i.pg = fcmp oge <4 x float> %i.pf, splat (float f0x4F000000)
  %i.ph = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.pf)
  %i.pi = select <4 x i1> %i.pg, <4 x i32> splat (i32 2147483647), <4 x i32> %i.ph
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %.07695.i.us
  store <4 x i32> %i.pi, ptr %i.pj, align 16, !tbaa !28, !alias.scope !2109, !noalias !2108
  %i.pk = add nuw nsw i64 %.07695.i.us, 4         ; 2 uses
  %i.pl = icmp samesign ult i64 %i.pk, %i.ud
  br i1 %i.pl, label %bb.o, label %._crit_edge.split.i.us, !llvm.loop !2066

._crit_edge.split.i.us:                           ; preds = %bb.o
  %i.pm = add nuw nsw i64 %.07596.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.pm, %i.if
  br i1 %exitcond.not.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph.i202.us, !llvm.loop !2067

_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us: ; preds = %._crit_edge.split.us.us.i.us, %._crit_edge.split.i.us, %.lr.ph98.i.us, %.loopexit.i.us
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.uo, ptr noundef %i.cm, ptr noundef %i.pn, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_.thres, i64 16, i1 false)
  %i.po = load float, ptr %.in.us.1, align 4, !tbaa !27
  %i.pp = load i32, ptr %9, align 8, !tbaa !182   ; 2 uses
  %i.pq = shl nuw nsw i64 %i.gt, 1                ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.pq ; 3 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.pq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  %i.pt = load ptr, ptr %i.dm, align 8, !tbaa !9, !noalias !2114 ; 2 uses
  %i.pu = zext i32 %i.pp to i64
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 40
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !14, !noalias !2114
  %.idx.i.i.us.1 = mul nuw nsw i64 %i.pu, 24
  %i.px = getelementptr i8, ptr %i.pt, i64 %.idx.i.i.us.1
  %i.py = getelementptr i8, ptr %i.px, i64 88
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !23, !noalias !2114
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.pz ; 2 uses
  %i.qb = load float, ptr %i.dn, align 4, !tbaa !25, !noalias !2114
  %i.qc = fmul float %i.qb, %i.ib
  br i1 %i.ty, label %.preheader.i.us.1, label %.loopexit.i.us.1

.preheader.i.us.1:                                ; preds = %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
  store <4 x float> %i.um, ptr %i.f, align 16, !tbaa !27, !noalias !2114
  br label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.preheader.i.us.1, %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
  %i.qd = fmul float %i.po, %i.qc
  %i.qe = insertelement <4 x float> poison, float %i.qd, i64 0
  %i.qf = shufflevector <4 x float> %i.qe, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br i1 %.not102.i.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1, label %.lr.ph98.i.us.1

.lr.ph98.i.us.1:                                  ; preds = %.loopexit.i.us.1
  switch i8 %trunc290, label %.lr.ph.i202.us.1 [
    i8 0, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1
    i8 1, label %.lr.ph.us.i.us.preheader.1
  ]

.lr.ph.us.i.us.preheader.1:                       ; preds = %.lr.ph98.i.us.1
  %i.qg = load <2 x float>, ptr %i.f, align 16
  %i.qh = load <2 x float>, ptr %i.dp, align 8
  br label %.lr.ph.us.i.us.1

.lr.ph.us.i.us.1:                                 ; preds = %._crit_edge.split.us.us.i.us.1, %.lr.ph.us.i.us.preheader.1
  %.07596.us.i.us.1 = phi i64 [ %i.rt, %._crit_edge.split.us.us.i.us.1 ], [ 0, %.lr.ph.us.i.us.preheader.1 ] ; 3 uses
  %.not79.us.i.us.1 = icmp samesign ult i64 %.07596.us.i.us.1, %i.uc
  %i.qi = shl nuw nsw i64 %.07596.us.i.us.1, 3    ; 3 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.qi
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.qi
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %i.qi
  %i.qm = insertelement <2 x i1> poison, i1 %.not79.us.i.us.1, i64 0
  %i.qn = shufflevector <2 x i1> %i.qm, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.qo = select <2 x i1> %i.qn, <2 x float> %i.qg, <2 x float> %i.qh ; 2 uses
  %i.qp = bitcast <2 x float> %i.qo to <2 x i32>
  %i.qq = shufflevector <2 x i32> %i.qp, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.qr = bitcast <2 x float> %i.qo to <2 x i32>
  %i.qs = shufflevector <2 x i32> %i.qr, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.us.i.us.1
  %.07695.us.us.i.us.1 = phi i64 [ 0, %.lr.ph.us.i.us.1 ], [ %i.rr, %bb.p ] ; 5 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07695.us.us.i.us.1
  %i.qu = load <4 x i32>, ptr %i.qt, align 16, !tbaa !28, !noalias !2114 ; 2 uses
  %i.qv = and <4 x i32> %i.qu, %i.qq
  %i.qw = xor <4 x i32> %i.qu, splat (i32 -1)
  %i.qx = and <4 x i32> %i.qs, %i.qw
  %i.qy = or <4 x i32> %i.qx, %i.qv
  %i.qz = bitcast <4 x i32> %i.qy to <4 x float>
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %.07695.us.us.i.us.1
  %i.rb = load <4 x float>, ptr %i.ra, align 16, !tbaa !28, !noalias !2114
  %i.rc = fmul <4 x float> %i.qf, %i.rb
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %.07695.us.us.i.us.1
  %i.re = load <4 x float>, ptr %i.rd, align 16, !tbaa !28, !alias.scope !2110, !noalias !2112
  %i.rf = fmul <4 x float> %i.rc, %i.re           ; 4 uses
  %i.rg = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rf) ; 2 uses
  %i.rh = fcmp oge <4 x float> %i.rg, %i.qz
  %i.ri = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.rf) ; 2 uses
  %i.rj = fadd <4 x float> %i.rf, %i.ri
  %i.rk = fsub <4 x float> %i.rj, %i.ri
  %i.rl = fcmp uge <4 x float> %i.rg, splat (float f0x4B000000)
  %.v.us.us.i.us.1 = select <4 x i1> %i.rl, <4 x float> %i.rf, <4 x float> %i.rk
  %i.rm = select <4 x i1> %i.rh, <4 x float> %.v.us.us.i.us.1, <4 x float> zeroinitializer ; 2 uses
  %i.rn = fcmp oge <4 x float> %i.rm, splat (float f0x4F000000)
  %i.ro = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.rm)
  %i.rp = select <4 x i1> %i.rn, <4 x i32> splat (i32 2147483647), <4 x i32> %i.ro
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %.07695.us.us.i.us.1
  store <4 x i32> %i.rp, ptr %i.rq, align 16, !tbaa !28, !alias.scope !2112, !noalias !2110
  %i.rr = add nuw nsw i64 %.07695.us.us.i.us.1, 4 ; 2 uses
  %i.rs = icmp samesign ult i64 %i.rr, %i.ud
  br i1 %i.rs, label %bb.p, label %._crit_edge.split.us.us.i.us.1, !llvm.loop !2066

._crit_edge.split.us.us.i.us.1:                   ; preds = %bb.p
  %i.rt = add nuw nsw i64 %.07596.us.i.us.1, 1    ; 2 uses
  %exitcond106.not.i.us.1 = icmp eq i64 %i.rt, %i.if
  br i1 %exitcond106.not.i.us.1, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1, label %.lr.ph.us.i.us.1, !llvm.loop !2067

.lr.ph.i202.us.1:                                 ; preds = %.lr.ph98.i.us.1, %._crit_edge.split.i.us.1
  %.07596.i.us.1 = phi i64 [ %i.sx, %._crit_edge.split.i.us.1 ], [ 0, %.lr.ph98.i.us.1 ] ; 3 uses
  %.not79.i.us.1 = icmp samesign ult i64 %.07596.i.us.1, %i.uc
  %i.ru = mul nuw nsw i64 %i.ud, %.07596.i.us.1   ; 3 uses
  %.sroa.sel.idx.us.sroa.sel.1 = select i1 %.not79.i.us.1, ptr %i.f, ptr %i.dp
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.ru
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.ru
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %i.ru
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i202.us.1
  %.07695.i.us.1 = phi i64 [ 0, %.lr.ph.i202.us.1 ], [ %i.sv, %bb.q ] ; 5 uses
  %i.ry = icmp samesign uge i64 %.07695.i.us.1, %i.ue
  %i.rz = zext i1 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.us.sroa.sel.1, i64 %i.rz
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !27, !noalias !2114
  %i.sc = insertelement <4 x float> poison, float %i.sb, i64 0
  %i.sd = shufflevector <4 x float> %i.sc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %.07695.i.us.1
  %i.sf = load <4 x float>, ptr %i.se, align 16, !tbaa !28, !noalias !2114
  %i.sg = fmul <4 x float> %i.qf, %i.sf
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %.07695.i.us.1
  %i.si = load <4 x float>, ptr %i.sh, align 16, !tbaa !28, !alias.scope !2110, !noalias !2112
  %i.sj = fmul <4 x float> %i.sg, %i.si           ; 4 uses
  %i.sk = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.sj) ; 2 uses
  %i.sl = fcmp ole <4 x float> %i.sd, %i.sk
  %i.sm = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.sj) ; 2 uses
  %i.sn = fadd <4 x float> %i.sj, %i.sm
  %i.so = fsub <4 x float> %i.sn, %i.sm
  %i.sp = fcmp uge <4 x float> %i.sk, splat (float f0x4B000000)
  %.v.i.us.1 = select <4 x i1> %i.sp, <4 x float> %i.sj, <4 x float> %i.so
  %i.sq = select <4 x i1> %i.sl, <4 x float> %.v.i.us.1, <4 x float> zeroinitializer ; 2 uses
  %i.sr = fcmp oge <4 x float> %i.sq, splat (float f0x4F000000)
  %i.ss = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.sq)
  %i.st = select <4 x i1> %i.sr, <4 x i32> splat (i32 2147483647), <4 x i32> %i.ss
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %.07695.i.us.1
  store <4 x i32> %i.st, ptr %i.su, align 16, !tbaa !28, !alias.scope !2112, !noalias !2110
  %i.sv = add nuw nsw i64 %.07695.i.us.1, 4       ; 2 uses
  %i.sw = icmp samesign ult i64 %i.sv, %i.ud
  br i1 %i.sw, label %bb.q, label %._crit_edge.split.i.us.1, !llvm.loop !2066

._crit_edge.split.i.us.1:                         ; preds = %bb.q
  %i.sx = add nuw nsw i64 %.07596.i.us.1, 1       ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i64 %i.sx, %i.if
  br i1 %exitcond.not.i.us.1, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1, label %.lr.ph.i202.us.1, !llvm.loop !2067

_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1: ; preds = %._crit_edge.split.i.us.1, %._crit_edge.split.us.us.i.us.1, %.lr.ph98.i.us.1, %.loopexit.i.us.1
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.pp, ptr noundef %i.pr, ptr noundef %i.sy, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #47
  store i32 %i.hq, ptr %i.gu, align 4, !tbaa !26
  call void @_ZN3jxl19ProgressiveSplitter19SplitACCoefficientsIiEEvPKT_RKNS_10AcStrategyEmmPrPS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.bf, ptr noundef %i.co, ptr noundef nonnull align 4 dereferenceable(5) %9, i64 noundef %.0184280.us, i64 noundef %.0186284.us, ptr noundef nonnull %i.c) #49
  br i1 %min.iters.check377, label %scalar.ph376.preheader, label %vector.body380

vector.body380:                                   ; preds = %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1, %vector.body380
  %index381 = phi i64 [ %index.next386, %vector.body380 ], [ 0, %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1 ] ; 2 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index381 ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16 ; 2 uses
  %wide.load382 = load <2 x ptr>, ptr %i.sz, align 16, !tbaa !176
  %wide.load383 = load <2 x ptr>, ptr %i.ta, align 16, !tbaa !176
  %wide.gep384 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.load382, i64 %i.gt
  %wide.gep385 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.load383, i64 %i.gt
  store <2 x ptr> %wide.gep384, ptr %i.sz, align 16, !tbaa !176
  store <2 x ptr> %wide.gep385, ptr %i.ta, align 16, !tbaa !176
  %index.next386 = add nuw i64 %index381, 4       ; 2 uses
  %i.tb = icmp eq i64 %index.next386, %n.vec379
  br i1 %i.tb, label %middle.block387, label %vector.body380, !llvm.loop !2115

middle.block387:                                  ; preds = %vector.body380
  br i1 %cmp.n388, label %.loopexit391, label %scalar.ph376.preheader

scalar.ph376.preheader:                           ; preds = %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1, %middle.block387
  %.0277.us.ph = phi i64 [ 0, %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us.1 ], [ %n.vec379, %middle.block387 ]
  br label %scalar.ph376

scalar.ph376:                                     ; preds = %scalar.ph376.preheader, %scalar.ph376
  %.0277.us = phi i64 [ %i.tf, %scalar.ph376 ], [ %.0277.us.ph, %scalar.ph376.preheader ] ; 2 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0277.us ; 2 uses
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !176
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.gt
  store ptr %i.te, ptr %i.tc, align 8, !tbaa !176
  %i.tf = add nuw i64 %.0277.us, 1                ; 2 uses
  %exitcond294.not = icmp eq i64 %i.tf, %i.bg
  br i1 %exitcond294.not, label %.loopexit391, label %scalar.ph376, !llvm.loop !2116

.loopexit391:                                     ; preds = %scalar.ph376, %middle.block387
  call void @_ZN3jxl19ProgressiveSplitter19SplitACCoefficientsIiEEvPKT_RKNS_10AcStrategyEmmPrPS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.bf, ptr noundef %i.hr, ptr noundef nonnull align 4 dereferenceable(5) %9, i64 noundef %.0184280.us, i64 noundef %.0186284.us, ptr noundef nonnull %i.dr) #49
  br i1 %min.iters.check363, label %scalar.ph362.preheader, label %vector.body366

vector.body366:                                   ; preds = %.loopexit391, %vector.body366
  %index367 = phi i64 [ %index.next372, %vector.body366 ], [ 0, %.loopexit391 ] ; 2 uses
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index367 ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16 ; 2 uses
  %wide.load368 = load <2 x ptr>, ptr %i.tg, align 8, !tbaa !176
  %wide.load369 = load <2 x ptr>, ptr %i.th, align 8, !tbaa !176
  %wide.gep370 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.load368, i64 %i.gt
  %wide.gep371 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.load369, i64 %i.gt
  store <2 x ptr> %wide.gep370, ptr %i.tg, align 8, !tbaa !176
  store <2 x ptr> %wide.gep371, ptr %i.th, align 8, !tbaa !176
  %index.next372 = add nuw i64 %index367, 4       ; 2 uses
  %i.ti = icmp eq i64 %index.next372, %n.vec365
  br i1 %i.ti, label %middle.block373, label %vector.body366, !llvm.loop !2117

middle.block373:                                  ; preds = %vector.body366
  br i1 %cmp.n374, label %.loopexit390, label %scalar.ph362.preheader

scalar.ph362.preheader:                           ; preds = %.loopexit391, %middle.block373
  %.0277.us.1.ph = phi i64 [ 0, %.loopexit391 ], [ %n.vec365, %middle.block373 ]
  br label %scalar.ph362

scalar.ph362:                                     ; preds = %scalar.ph362.preheader, %scalar.ph362
  %.0277.us.1 = phi i64 [ %i.tm, %scalar.ph362 ], [ %.0277.us.1.ph, %scalar.ph362.preheader ] ; 2 uses
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.0277.us.1 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !176
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.gt
  store ptr %i.tl, ptr %i.tj, align 8, !tbaa !176
  %i.tm = add nuw i64 %.0277.us.1, 1              ; 2 uses
  %exitcond294.1.not = icmp eq i64 %i.tm, %i.bg
  br i1 %exitcond294.1.not, label %.loopexit390, label %scalar.ph362, !llvm.loop !2118

.loopexit390:                                     ; preds = %scalar.ph362, %middle.block373
  %.idx = shl nuw nsw i64 %i.gt, 3
  %i.tn = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx
  call void @_ZN3jxl19ProgressiveSplitter19SplitACCoefficientsIiEEvPKT_RKNS_10AcStrategyEmmPrPS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.bf, ptr noundef %i.tn, ptr noundef nonnull align 4 dereferenceable(5) %9, i64 noundef %.0184280.us, i64 noundef %.0186284.us, ptr noundef nonnull %i.ds) #49
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.loopexit390, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.loopexit390 ] ; 2 uses
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.to, align 16, !tbaa !176
  %wide.load360 = load <2 x ptr>, ptr %i.tp, align 16, !tbaa !176
  %wide.gep = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.load, i64 %i.gt
  %wide.gep361 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.load360, i64 %i.gt
  store <2 x ptr> %wide.gep, ptr %i.to, align 16, !tbaa !176
  store <2 x ptr> %wide.gep361, ptr %i.tp, align 16, !tbaa !176
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.tq = icmp eq i64 %index.next, %n.vec
  br i1 %i.tq, label %middle.block, label %vector.body, !llvm.loop !2119

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.loopexit390, %middle.block
  %.0277.us.2.ph = phi i64 [ 0, %.loopexit390 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0277.us.2 = phi i64 [ %i.tu, %scalar.ph ], [ %.0277.us.2.ph, %scalar.ph.preheader ] ; 2 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.0277.us.2 ; 2 uses
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !176
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.gt
  store ptr %i.tt, ptr %i.tr, align 8, !tbaa !176
  %i.tu = add nuw i64 %.0277.us.2, 1              ; 2 uses
  %exitcond294.2.not = icmp eq i64 %i.tu, %i.bg
  br i1 %exitcond294.2.not, label %.loopexit, label %scalar.ph, !llvm.loop !2120

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #47
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %.lr.ph281.us
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  %i.tv = add nuw i64 %.0184280.us, 1             ; 2 uses
  %exitcond296.not = icmp eq i64 %i.tv, %umin
  br i1 %exitcond296.not, label %.critedge.us, label %.lr.ph281.us, !llvm.loop !2121

.critedge.us:                                     ; preds = %bb.r, %bb.e
  %i.tw = add nuw nsw i64 %.0185282.us, 1         ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 8
  %exitcond297.not = icmp eq i64 %i.tw, %i.df
  br i1 %exitcond297.not, label %._crit_edge.us, label %bb.e, !llvm.loop !2122

.preheader.us.sink.split:                         ; preds = %bb.j, %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47, !noalias !2089
  br label %.preheader.us

.preheader.us:                                    ; preds = %bb.m, %.preheader.us.sink.split
  %i.tx = mul nuw nsw i64 %i.gp, %i.gm
  %i.ty = icmp samesign ugt i64 %i.tx, 3          ; 2 uses
  %i.tz = uitofp nneg i64 %i.gr to float
  %i.ua = uitofp nneg i64 %i.gq to float
  %i.ub = fmul nnan float %i.tz, -7.440000e-03
  %i.uc = shl nuw nsw i64 %i.gq, 2                ; 4 uses
  %i.ud = shl nuw nsw i64 %i.gr, 3                ; 6 uses
  %i.ue = shl nuw nsw i64 %i.gr, 2                ; 2 uses
  %i.uf = insertelement <2 x float> poison, float %i.ub, i64 0
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uh = insertelement <2 x float> poison, float %i.ua, i64 0
  %i.ui = shufflevector <2 x float> %i.uh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ug, <2 x float> %i.ui, <2 x float> <float 5.800000e-01, float 6.200000e-01>)
  %i.uk = shufflevector <2 x float> %i.uj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.ul = fcmp olt <4 x float> %i.uk, splat (float 5.000000e-01)
  %i.um = select <4 x i1> %i.ul, <4 x float> splat (float 5.000000e-01), <4 x float> %i.uk ; 2 uses
  %trunc290 = trunc nuw i64 %i.gr to i8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_.thres, i64 16, i1 false)
  %i.un = load float, ptr %.in.us, align 8, !tbaa !27
  %i.uo = load i32, ptr %9, align 8, !tbaa !182   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  %i.up = load ptr, ptr %i.dm, align 8, !tbaa !9, !noalias !2104 ; 2 uses
  %i.uq = zext i32 %i.uo to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 40
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !14, !noalias !2104
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 72
  %.idx.i.i.us = mul nuw nsw i64 %i.uq, 24
  %i.uu = getelementptr i8, ptr %i.ut, i64 %.idx.i.i.us
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !23, !noalias !2104
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.uv ; 2 uses
  %i.ux = load float, ptr %i.dn, align 4, !tbaa !25, !noalias !2104
  %i.uy = fmul float %i.ux, %i.ib
  br i1 %i.ty, label %.preheader.i.us, label %.loopexit.i.us

.lr.ph.us:                                        ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47, !noalias !2089
  %.idx.us = shl nuw nsw i64 %i.gt, 3
  %i.uz = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.us
  br label %bb.m

._crit_edge.us:                                   ; preds = %.critedge.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #47
  %i.va = add nuw i64 %.0186284.us, 1             ; 2 uses
  %exitcond298.not = icmp eq i64 %i.va, %i.aa
  br i1 %exitcond298.not, label %._crit_edge286, label %.lr.ph283.us, !llvm.loop !2123

.lr.ph285.split:                                  ; preds = %.lr.ph285.split, %.lr.ph285.split.preheader.new
  %niter = phi i64 [ 0, %.lr.ph285.split.preheader.new ], [ %niter.next.7, %.lr.ph285.split ]
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge286.loopexit.unr-lcssa, label %.lr.ph285.split, !llvm.loop !2123

._crit_edge286.loopexit.unr-lcssa:                ; preds = %.lr.ph285.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge286, label %.lr.ph285.split.epil.preheader

.lr.ph285.split.epil.preheader:                   ; preds = %._crit_edge286.loopexit.unr-lcssa, %.lr.ph285.split.preheader
  %lcmp.mod396 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod396)
  br label %.lr.ph285.split.epil

.lr.ph285.split.epil:                             ; preds = %.lr.ph285.split.epil, %.lr.ph285.split.epil.preheader
  %epil.iter = phi i64 [ 0, %.lr.ph285.split.epil.preheader ], [ %epil.iter.next, %.lr.ph285.split.epil ]
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge286, label %.lr.ph285.split.epil, !llvm.loop !2124

._crit_edge286:                                   ; preds = %bb.d, %._crit_edge.us, %._crit_edge286.loopexit.unr-lcssa, %.lr.ph285.split.epil, %bb.c, %.critedge197
  %.sroa.0248.1 = phi i32 [ 0, %.critedge197 ], [ 0, %._crit_edge.us ], [ 1, %bb.c ], [ 0, %._crit_edge286.loopexit.unr-lcssa ], [ 0, %.lr.ph285.split.epil ], [ 1, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #47
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  %.pr = load i32, ptr %i.ay, align 8, !tbaa !166
  %i.vb = icmp eq i32 %.pr, 0
  br i1 %i.vb, label %bb.s, label %.thread

bb.s:                                             ; preds = %._crit_edge286
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(28) %7) #49
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.s, %._crit_edge286
  %.sroa.0248.2262 = phi i32 [ %.sroa.0248.1, %bb.s ], [ %.sroa.0248.1, %._crit_edge286 ], [ %i.az, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %.pr263 = load i32, ptr %i.as, align 8, !tbaa !166
  %i.vc = icmp eq i32 %.pr263, 0
  br i1 %i.vc, label %bb.t, label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203

bb.t:                                             ; preds = %.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(28) %5) #49
  br label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203

_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203: ; preds = %bb.a, %.thread, %bb.t
  %.sroa.0248.3266 = phi i32 [ %.sroa.0248.2262, %bb.t ], [ %.sroa.0248.2262, %.thread ], [ %i.at, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret i32 %.sroa.0248.3266
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noalias noundef %4) unnamed_addr #16 {
bb.a:
  %5 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %6 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %7 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %8 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %9 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %10 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %11 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %12 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %13 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %14 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %15 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %16 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %17 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %18 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %19 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %20 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %21 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %22 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %23 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %24 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %25 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %26 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %27 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %28 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %29 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %30 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %31 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %32 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %33 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %34 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %35 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %36 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %37 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %38 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %39 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %40 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %41 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %42 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %43 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %44 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %45 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %46 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %47 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %48 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %49 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %50 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %51 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %52 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %53 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %54 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %55 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %56 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %i.a = alloca [160 x float], align 16           ; 16 uses
  %57 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %58 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %i.b = alloca [160 x float], align 16           ; 16 uses
  %59 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %60 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %i.c = alloca [160 x float], align 16           ; 16 uses
  %61 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %62 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %i.d = alloca [160 x float], align 16           ; 16 uses
  %63 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %64 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %65 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %66 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %67 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %68 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %69 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %70 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %71 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %72 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %73 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %74 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %75 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %76 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %77 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %78 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %79 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %80 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %81 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %82 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %83 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %84 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %85 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %86 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %87 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %88 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %89 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %90 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %91 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %92 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %93 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %94 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %95 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %96 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %97 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %98 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %99 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %100 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %101 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %i.e = alloca [32 x float], align 16            ; 12 uses
  %102 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
end_hunk_5
