Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audioresample?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@SDL_SetupAudioResampler:bb.a
  %i.if = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  store float %i.ic, ptr %i.hu, align 16
  %i.ih = load <2 x float>, ptr %i.hv, align 4    ; 4 uses
  %i.ii = fmul <2 x float> %i.ih, splat (float 9.000000e+00)
  %i.ij = insertelement <2 x float> %i.id, float %i.ic, i64 1 ; 2 uses
  %i.ik = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> splat (float -5.500000e+00), <2 x float> %i.ii)
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> splat (float -4.500000e+00), <2 x float> %i.il)
  %i.in = fadd <2 x float> %i.ij, %i.im           ; 2 uses
  %i.io = extractelement <2 x float> %i.in, i64 1
  store float %i.io, ptr %i.hx, align 4
  %i.ip = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iq = fmul <2 x float> %i.ip, <float -2.250000e+01, float 1.350000e+01>
  %i.ir = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> <float 9.000000e+00, float -4.500000e+00>, <2 x float> %i.iq)
  %i.is = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.it = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.is, <2 x float> <float 1.800000e+01, float -1.350000e+01>, <2 x float> %i.ir)
  %i.iu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ig, <2 x float> <float -4.500000e+00, float 4.500000e+00>, <2 x float> %i.it)
  store <2 x float> %i.iu, ptr %i.hy, align 8
  %i.iv = extractelement <2 x float> %i.in, i64 0
  store float %i.iv, ptr %i.hz, align 4
  %i.iw = fmul <2 x float> %i.is, <float -2.250000e+01, float 1.350000e+01>
  %i.ix = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ig, <2 x float> <float 9.000000e+00, float -4.500000e+00>, <2 x float> %i.iw)
  %i.iy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> <float 1.800000e+01, float -1.350000e+01>, <2 x float> %i.ix)
  %i.iz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> <float -4.500000e+00, float 4.500000e+00>, <2 x float> %i.iy)
  store <2 x float> %i.iz, ptr %i.ia, align 8
  %indvars.iv.next47.i.i = add nuw nsw i64 %indvars.iv46.i.i, 1 ; 2 uses
  %exitcond49.not.i.i = icmp eq i64 %indvars.iv.next47.i.i, 8
  br i1 %exitcond49.not.i.i, label %SetupAudioResampler.exit, label %.preheader.i.i, !llvm.loop !6

SetupAudioResampler.exit:                         ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  store ptr @ResampleFrame_Generic, ptr getelementptr inbounds nuw (i8, ptr @ResampleFrame, i64 16), align 16
  store ptr @ResampleFrame_Generic, ptr getelementptr inbounds nuw (i8, ptr @ResampleFrame, i64 24), align 8
  store ptr @ResampleFrame_Generic, ptr getelementptr inbounds nuw (i8, ptr @ResampleFrame, i64 32), align 16
  store ptr @ResampleFrame_Generic, ptr getelementptr inbounds nuw (i8, ptr @ResampleFrame, i64 40), align 8
  store ptr @ResampleFrame_Generic, ptr getelementptr inbounds nuw (i8, ptr @ResampleFrame, i64 48), align 16
  store ptr @ResampleFrame_Generic, ptr getelementptr inbounds nuw (i8, ptr @ResampleFrame, i64 56), align 8
  store ptr @ResampleFrame_Mono, ptr @ResampleFrame, align 16
  store ptr @ResampleFrame_Stereo, ptr getelementptr inbounds nuw (i8, ptr @ResampleFrame, i64 8), align 8
  tail call void @SDL_SetInitialized_REAL(ptr noundef nonnull @SDL_SetupAudioResampler.init, i1 noundef zeroext true) #7
  br label %bb.d

bb.d:                                             ; preds = %SetupAudioResampler.exit, %bb.a
  ret void
}

declare zeroext i1 @SDL_ShouldInit_REAL(ptr noundef) local_unnamed_addr #1

declare void @SDL_SetInitialized_REAL(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i64 -9223372036854775807, -9223372036854775808) i64 @SDL_GetResampleRate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = shl nsw i64 %i.a, 32
  %i.c = sext i32 %1 to i64
  %i.d = add nsw i64 %i.b, -1
  %i.e = sdiv i64 %i.d, %i.c
  %i.f = add nsw i64 %i.e, 1
  ret i64 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @SDL_GetResamplerHistoryFrames() local_unnamed_addr #2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 7) i32 @SDL_GetResamplerPaddingFrames(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %0, 0
  %i.a = select i1 %.not, i32 0, i32 6
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i64 0, 2147483648) i64 @SDL_GetResamplerInputFrames(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i64 9223372036854775807, %1
  %i.c = icmp sgt i64 %0, %i.b
  br i1 %i.c, label %ResamplerMul.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = mul nsw i64 %1, %0                       ; 2 uses
  %i.e = sub nsw i64 %2, %1                       ; 3 uses
  %i.f = icmp sgt i64 %i.e, -4294967296
  %i.g = sub nsw i64 9223372032559808511, %i.e
  %i.h = icmp sgt i64 %i.d, %i.g
  %or.cond.i = select i1 %i.f, i1 %i.h, i1 false
  %i.i = add i64 %i.d, 4294967296
  %i.j = add i64 %i.i, %i.e
  %i.k = ashr i64 %i.j, 32
  %i.l = tail call i64 @llvm.smax.i64(i64 %i.k, i64 0)
  %i.m = select i1 %or.cond.i, i64 2147483647, i64 %i.l
  br label %ResamplerMul.exit

ResamplerMul.exit:                                ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 2147483647, %bb.b ], [ %i.m, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i64 -9223372036854775805, -9223372036854775808) i64 @SDL_GetResamplerOutputFrames(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i64 %0, 2147483647
  br i1 %i.a, label %ResamplerMul.exit.thread15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8                ; 3 uses
  %i.c = shl nsw i64 %0, 32                       ; 2 uses
  %i.d = icmp slt i64 %i.b, 0
  %i.e = add nsw i64 %i.b, 9223372036854775807
  %i.f = icmp sgt i64 %i.c, %i.e
  %or.cond.i = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond.i, label %ResamplerMul.exit.thread15, label %ResamplerMul.exit

ResamplerMul.exit:                                ; preds = %bb.b
  %i.g = sub nsw i64 %i.c, %i.b                   ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %ResamplerMul.exit.thread15, label %bb.c

ResamplerMul.exit.thread15:                       ; preds = %bb.a, %bb.b, %ResamplerMul.exit
  %.017 = phi i64 [ %i.g, %ResamplerMul.exit ], [ 9223372036854775807, %bb.b ], [ 9223372036854775807, %bb.a ] ; 2 uses
  %i.i = add nsw i64 %.017, -1
  %i.j = sdiv i64 %i.i, %1
  %i.k = add nsw i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %ResamplerMul.exit, %ResamplerMul.exit.thread15
  %.018 = phi i64 [ %.017, %ResamplerMul.exit.thread15 ], [ %i.g, %ResamplerMul.exit ]
  %i.l = phi i64 [ %i.k, %ResamplerMul.exit.thread15 ], [ 0, %ResamplerMul.exit ] ; 2 uses
  %i.m = mul nsw i64 %i.l, %1
  %i.n = sub nsw i64 %i.m, %.018
  store i64 %i.n, ptr %2, align 8
  ret i64 %i.l
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_ResampleAudio(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %6, align 8                ; 2 uses
  %i.b = sext i32 %0 to i64                       ; 2 uses
  %i.c = getelementptr [8 x i8], ptr @ResampleFrame, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = shl nsw i32 %0, 2
  %i.g = sext i32 %i.f to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %i.h
  %i.j = icmp sgt i32 %4, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.030 = phi ptr [ %i.x, %.lr.ph ], [ %3, %bb.a ] ; 2 uses
  %.02629 = phi i32 [ %i.y, %.lr.ph ], [ 0, %bb.a ]
  %.02728 = phi i64 [ %i.n, %.lr.ph ], [ %i.a, %bb.a ] ; 4 uses
  %i.k = lshr i64 %.02728, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = trunc i64 %.02728 to i32
  %i.n = add nsw i64 %.02728, %5                  ; 2 uses
  %i.o = lshr i64 %.02728, 29
  %i.p = and i64 %i.o, 7
  %i.q = getelementptr inbounds nuw [160 x i8], ptr @ResamplerFilter, i64 %i.p
  %i.r = and i32 %i.m, 536870911
  %i.s = uitofp nneg i32 %i.r to float
  %i.t = fmul nnan float %i.s, f0x31000000
  %i.u = mul nsw i32 %0, %i.l
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.v
  tail call void %i.e(ptr noundef %i.w, ptr noundef %.030, ptr noundef nonnull %i.q, float noundef %i.t, i32 noundef %0) #7
  %i.x = getelementptr inbounds [4 x i8], ptr %.030, i64 %i.b
  %i.y = add nuw nsw i32 %.02629, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.027.lcssa = phi i64 [ %i.a, %bb.a ], [ %i.n, %.lr.ph ]
  %i.z = sext i32 %2 to i64
  %i.aa = shl nsw i64 %i.z, 32
  %i.ab = sub nsw i64 %.027.lcssa, %i.aa
  store i64 %i.ab, ptr %6, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ResampleFrame_Generic(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, i32 noundef %4) #5 {
.preheader32:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 5 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %i.c = fmul float %3, %3                        ; 11 uses
  %i.d = fmul float %3, %i.c                      ; 10 uses
  %i.e = load float, ptr %2, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %3, float %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load float, ptr %i.i, align 4
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %i.c, float %i.h)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load float, ptr %i.l, align 4
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float %i.d, float %i.k) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.r = load float, ptr %i.q, align 4
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %3, float %i.p)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load float, ptr %i.t, align 4
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.c, float %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.x = load float, ptr %i.w, align 4
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.d, float %i.v) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %3, float %i.aa)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.c, float %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.d, float %i.ag) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.an = load float, ptr %i.am, align 4
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %3, float %i.al)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.c, float %i.ao)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.at = load float, ptr %i.as, align 4
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.d, float %i.ar) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ay = load float, ptr %i.ax, align 4
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %3, float %i.aw)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.c, float %i.az)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.d, float %i.bc) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %3, float %i.bh)
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.c, float %i.bk)
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.bp = load float, ptr %i.bo, align 4
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.d, float %i.bn) ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.bu = load float, ptr %i.bt, align 4
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %3, float %i.bs)
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bx = load float, ptr %i.bw, align 4
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.c, float %i.bv)
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.d, float %i.by) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %3, float %i.cd)
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ci = load float, ptr %i.ch, align 4
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.c, float %i.cg)
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.d, float %i.cj) ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float %3, float %i.co)
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ct = load float, ptr %i.cs, align 4
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.c, float %i.cr)
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.cw = load float, ptr %i.cv, align 4
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.d, float %i.cu) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.cz = load float, ptr %i.cy, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.db = load float, ptr %i.da, align 4
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %3, float %i.cz)
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.de = load float, ptr %i.dd, align 4
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float %i.c, float %i.dc)
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.dh = load float, ptr %i.dg, align 4
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.d, float %i.df) ; 2 uses
  %i.dj = icmp sgt i32 %4, 0
  br i1 %i.dj, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.preheader32
  %i.dk = zext nneg i32 %4 to i64                 ; 13 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dk ; 2 uses
  %.idx = shl nuw nsw i64 %i.dk, 3                ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %.idx41 = mul nuw nsw i64 %i.dk, 12             ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 %.idx41 ; 2 uses
  %.idx42 = shl nuw nsw i64 %i.dk, 4              ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %.idx42 ; 2 uses
  %.idx43 = mul nuw nsw i64 %i.dk, 20             ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %.idx43 ; 2 uses
  %.idx44 = mul nuw nsw i64 %i.dk, 24             ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %.idx44 ; 2 uses
  %.idx45 = mul nuw nsw i64 %i.dk, 28             ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 %.idx45 ; 2 uses
  %.idx46 = shl nuw nsw i64 %i.dk, 5              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.idx46 ; 2 uses
  %.idx47 = mul nuw nsw i64 %i.dk, 36             ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 %.idx47 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 12
  br i1 %min.iters.check, label %.preheader.preheader92, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.dt = sub i64 %i.b, %i.a                      ; 2 uses
  %i.du = sub i64 %.idx47, %i.dt
  %diff.check = icmp ugt i64 %i.du, -16
  %i.dv = sub i64 %.idx46, %i.dt
  %diff.check48 = icmp ugt i64 %i.dv, -16
  %conflict.rdx = or i1 %diff.check, %diff.check48
  %5 = sub i64 %i.b, %i.a                         ; 2 uses
  %i.dw = sub i64 %.idx45, %5
  %diff.check49 = icmp ugt i64 %i.dw, -16
  %conflict.rdx50 = or i1 %conflict.rdx, %diff.check49
  %i.dx = sub i64 %.idx44, %5
  %diff.check51 = icmp ugt i64 %i.dx, -16
  %conflict.rdx52 = or i1 %conflict.rdx50, %diff.check51
  %6 = sub i64 %i.b, %i.a                         ; 2 uses
  %i.dy = sub i64 %.idx43, %6
  %diff.check53 = icmp ugt i64 %i.dy, -16
  %conflict.rdx54 = or i1 %conflict.rdx52, %diff.check53
  %i.dz = sub i64 %.idx42, %6
  %diff.check55 = icmp ugt i64 %i.dz, -16
  %conflict.rdx56 = or i1 %conflict.rdx54, %diff.check55
  %7 = sub i64 %i.b, %i.a                         ; 2 uses
  %i.ea = sub i64 %.idx41, %7
  %diff.check57 = icmp ugt i64 %i.ea, -16
  %conflict.rdx58 = or i1 %conflict.rdx56, %diff.check57
  %i.eb = sub i64 %.idx, %7
  %diff.check59 = icmp ugt i64 %i.eb, -16
  %conflict.rdx60 = or i1 %conflict.rdx58, %diff.check59
  %8 = sub i64 %i.b, %i.a                         ; 2 uses
  %i.ec = shl nuw nsw i64 %i.dk, 2
  %i.ed = sub i64 %i.ec, %8
  %diff.check61 = icmp ugt i64 %i.ed, -16
  %conflict.rdx62 = or i1 %conflict.rdx60, %diff.check61
  %i.ee = add i64 %8, -1
  %diff.check63 = icmp ult i64 %i.ee, 15
  %conflict.rdx64 = or i1 %conflict.rdx62, %diff.check63
  br i1 %conflict.rdx64, label %.preheader.preheader92, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dk, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat66 = shufflevector <4 x float> %broadcast.splatinsert65, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <4 x float> poison, float %i.aj, i64 0
  %broadcast.splat68 = shufflevector <4 x float> %broadcast.splatinsert67, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat70 = shufflevector <4 x float> %broadcast.splatinsert69, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <4 x float> poison, float %i.bf, i64 0
  %broadcast.splat72 = shufflevector <4 x float> %broadcast.splatinsert71, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <4 x float> poison, float %i.bq, i64 0
  %broadcast.splat74 = shufflevector <4 x float> %broadcast.splatinsert73, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert75 = insertelement <4 x float> poison, float %i.cb, i64 0
  %broadcast.splat76 = shufflevector <4 x float> %broadcast.splatinsert75, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert77 = insertelement <4 x float> poison, float %i.cm, i64 0
  %broadcast.splat78 = shufflevector <4 x float> %broadcast.splatinsert77, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <4 x float> poison, float %i.cx, i64 0
  %broadcast.splat80 = shufflevector <4 x float> %broadcast.splatinsert79, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert81 = insertelement <4 x float> poison, float %i.di, i64 0
  %broadcast.splat82 = shufflevector <4 x float> %broadcast.splatinsert81, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 12 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x float>, ptr %i.ef, align 4
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> zeroinitializer)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load83 = load <4 x float>, ptr %i.eh, align 4
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load83, <4 x float> %broadcast.splat66, <4 x float> %i.eg)
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index
  %wide.load84 = load <4 x float>, ptr %i.ej, align 4
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load84, <4 x float> %broadcast.splat68, <4 x float> %i.ei)
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index
  %wide.load85 = load <4 x float>, ptr %i.el, align 4
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load85, <4 x float> %broadcast.splat70, <4 x float> %i.ek)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %index
  %wide.load86 = load <4 x float>, ptr %i.en, align 4
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load86, <4 x float> %broadcast.splat72, <4 x float> %i.em)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index
  %wide.load87 = load <4 x float>, ptr %i.ep, align 4
  %i.eq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load87, <4 x float> %broadcast.splat74, <4 x float> %i.eo)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %index
  %wide.load88 = load <4 x float>, ptr %i.er, align 4
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load88, <4 x float> %broadcast.splat76, <4 x float> %i.eq)
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %index
  %wide.load89 = load <4 x float>, ptr %i.et, align 4
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load89, <4 x float> %broadcast.splat78, <4 x float> %i.es)
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index
  %wide.load90 = load <4 x float>, ptr %i.ev, align 4
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load90, <4 x float> %broadcast.splat80, <4 x float> %i.eu)
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %index
  %wide.load91 = load <4 x float>, ptr %i.ex, align 4
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load91, <4 x float> %broadcast.splat82, <4 x float> %i.ew)
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  store <4 x float> %i.ey, ptr %i.ez, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dk
  br i1 %cmp.n, label %._crit_edge, label %.preheader.preheader92

.preheader.preheader92:                           ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader92, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader92 ] ; 12 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.fc = load float, ptr %i.fb, align 4
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.n, float 0.000000e+00)
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fe = load float, ptr %gep, align 4
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.y, float %i.fd)
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv
  %i.fh = load float, ptr %i.fg, align 4
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.aj, float %i.ff)
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv
  %i.fk = load float, ptr %i.fj, align 4
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.au, float %i.fi)
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv
  %i.fn = load float, ptr %i.fm, align 4
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.bf, float %i.fl)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv
  %i.fq = load float, ptr %i.fp, align 4
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fq, float %i.bq, float %i.fo)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv
  %i.ft = load float, ptr %i.fs, align 4
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.cb, float %i.fr)
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv
  %i.fw = load float, ptr %i.fv, align 4
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.cm, float %i.fu)
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv
  %i.fz = load float, ptr %i.fy, align 4
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.cx, float %i.fx)
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv
  %i.gc = load float, ptr %i.gb, align 4
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.di, float %i.ga)
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.gd, ptr %i.ge, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.dk
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !9

._crit_edge:                                      ; preds = %.preheader, %middle.block, %.preheader32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ResampleFrame_Mono(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, i32 %4) #4 {
bb.a:
  %i.a = fmul float %3, %3                        ; 11 uses
  %i.b = fmul float %3, %i.a                      ; 10 uses
  %i.c = load float, ptr %2, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load float, ptr %i.d, align 4
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %3, float %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load float, ptr %i.g, align 4
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.a, float %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.k = load float, ptr %i.j, align 4
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float %i.b, float %i.i)
  %i.m = load float, ptr %0, align 4
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float %i.l, float 0.000000e+00)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.r = load float, ptr %i.q, align 4
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %3, float %i.p)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load float, ptr %i.t, align 4
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.a, float %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.x = load float, ptr %i.w, align 4
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.b, float %i.v)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.y, float %i.n)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %3, float %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.a, float %i.ag)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.al = load float, ptr %i.ak, align 4
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.b, float %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.am, float %i.ab)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.at = load float, ptr %i.as, align 4
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %3, float %i.ar)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.a, float %i.au)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.b, float %i.ax)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.ba, float %i.ap)
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %3, float %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.a, float %i.bi)
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.bn = load float, ptr %i.bm, align 4
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.b, float %i.bl)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bo, float %i.bd)
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %3, float %i.bt)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.a, float %i.bw)
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.cb = load float, ptr %i.ca, align 4
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.b, float %i.bz)
end_hunk_0
