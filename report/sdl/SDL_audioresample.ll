Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audioresample?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SDL_InitState = type { %struct.SDL_AtomicInt, i64, ptr }
%struct.SDL_AtomicInt = type { i32 }
%union.Cubic = type { [4 x float] }

@SDL_SetupAudioResampler.init = internal global %struct.SDL_InitState zeroinitializer, align 8
@ResampleFrame = internal unnamed_addr global [8 x ptr] zeroinitializer, align 16
@ResamplerFilter = internal global [8 x [10 x %union.Cubic]] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define hidden void @SDL_SetupAudioResampler() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x float], align 16            ; 9 uses
  %i.b = alloca [121 x float], align 16           ; 5 uses
  %i.c = tail call zeroext i1 @SDL_ShouldInit_REAL(ptr noundef nonnull @SDL_SetupAudioResampler.init) #7
  br i1 %i.c, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a, %.preheader
  %.016.i.i.i = phi float [ %i.g, %.preheader ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %.01215.i.i.i = phi float [ %i.h, %.preheader ], [ 1.000000e+00, %bb.a ] ; 3 uses
  %.01314.i.i.i = phi float [ %i.d, %.preheader ], [ 0.000000e+00, %bb.a ]
  %i.d = fadd float %.016.i.i.i, %.01314.i.i.i    ; 3 uses
  %i.e = fmul float %.01215.i.i.i, %.01215.i.i.i
  %i.f = fdiv float f0x4176F239, %i.e
  %i.g = fmul float %.016.i.i.i, %i.f             ; 2 uses
  %i.h = fadd float %.01215.i.i.i, 1.000000e+00
  %i.i = fmul float %i.d, f0x34000000
  %i.j = fcmp ult float %i.g, %i.i
  br i1 %i.j, label %BesselI0.exit.i.i, label %.preheader, !llvm.loop !4

BesselI0.exit.i.i:                                ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.k = tail call float @SDL_sinf_REAL(float noundef 0.000000e+00) #7
  %i.l = tail call float @SDL_sinf_REAL(float noundef f0x3E060A92) #7
  %i.m = tail call float @SDL_sinf_REAL(float noundef f0x3E860A92) #7
  %i.n = tail call float @SDL_sinf_REAL(float noundef f0x3EC90FDB) #7
  %i.o = insertelement <4 x float> poison, float %i.k, i64 0
  %i.p = insertelement <4 x float> %i.o, float %i.l, i64 1
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 2
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 3
  %i.s = fdiv <4 x float> %i.r, splat (float f0x40490FDB)
  store <4 x float> %i.s, ptr %i.a, align 16
  %i.t = tail call float @SDL_sinf_REAL(float noundef f0x3F060A92) #7
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = tail call float @SDL_sinf_REAL(float noundef f0x3F278D36) #7
  %i.w = tail call float @SDL_sinf_REAL(float noundef f0x3F490FDB) #7
  %i.x = tail call float @SDL_sinf_REAL(float noundef f0x3F6A9280) #7
  %i.y = insertelement <4 x float> poison, float %i.t, i64 0
  %i.z = insertelement <4 x float> %i.y, float %i.v, i64 1
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 2
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 3
  %i.ac = fdiv <4 x float> %i.ab, splat (float f0x40490FDB)
  store <4 x float> %i.ac, ptr %i.u, align 16
  %i.ad = tail call float @SDL_sinf_REAL(float noundef f0x3F860A92) #7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.af = tail call float @SDL_sinf_REAL(float noundef f0x3F96CBE4) #7
  %i.ag = tail call float @SDL_sinf_REAL(float noundef f0x3FA78D36) #7
  %i.ah = tail call float @SDL_sinf_REAL(float noundef f0x3FB84E89) #7
  %i.ai = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 1
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 3
  %i.am = fdiv <4 x float> %i.al, splat (float f0x40490FDB)
  store <4 x float> %i.am, ptr %i.ae, align 16
  %i.an = tail call float @SDL_sinf_REAL(float noundef f0x3FC90FDB) #7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ap = tail call float @SDL_sinf_REAL(float noundef f0x3FD9D12D) #7
  %i.aq = tail call float @SDL_sinf_REAL(float noundef f0x3FEA9280) #7
  %i.ar = tail call float @SDL_sinf_REAL(float noundef f0x3FFB53D2) #7
  %i.as = insertelement <4 x float> poison, float %i.an, i64 0
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 1
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 2
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 3
  %i.aw = fdiv <4 x float> %i.av, splat (float f0x40490FDB)
  store <4 x float> %i.aw, ptr %i.ao, align 16
  %i.ax = tail call float @SDL_sinf_REAL(float noundef f0x40060A92) #7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.az = tail call float @SDL_sinf_REAL(float noundef f0x400E6B3B) #7
  %i.ba = tail call float @SDL_sinf_REAL(float noundef f0x4016CBE4) #7
  %i.bb = tail call float @SDL_sinf_REAL(float noundef f0x401F2C8D) #7
  %i.bc = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3
  %i.bg = fdiv <4 x float> %i.bf, splat (float f0x40490FDB)
  store <4 x float> %i.bg, ptr %i.ay, align 16
  %i.bh = tail call float @SDL_sinf_REAL(float noundef f0x40278D36) #7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bj = tail call float @SDL_sinf_REAL(float noundef f0x402FEDE0) #7
  %i.bk = tail call float @SDL_sinf_REAL(float noundef f0x40384E89) #7
  %i.bl = tail call float @SDL_sinf_REAL(float noundef f0x4040AF32) #7
  %i.bm = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 1
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 2
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 3
  %i.bq = fdiv <4 x float> %i.bp, splat (float f0x40490FDB)
  store <4 x float> %i.bq, ptr %i.bi, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store float 1.000000e+00, ptr %i.b, align 16
  br label %bb.b

bb.b:                                             ; preds = %BesselI0.exit32.i.i, %BesselI0.exit.i.i
  %indvars.iv.i.i = phi i64 [ 1, %BesselI0.exit.i.i ], [ %indvars.iv.next.i.i, %BesselI0.exit32.i.i ] ; 6 uses
  %i.br = mul nuw nsw i64 %indvars.iv.i.i, %indvars.iv.i.i
  %i.bs = trunc nuw i64 %i.br to i32
  %i.bt = uitofp nneg i32 %i.bs to float
  %i.bu = fsub float 1.440000e+04, %i.bt
  %i.bv = fdiv float %i.bu, 1.440000e+04
  %i.bw = tail call float @SDL_sqrtf_REAL(float noundef %i.bv) #7
  %i.bx = fmul float %i.bw, f0x40FB6EAE           ; 2 uses
  %i.by = fmul float %i.bx, 2.500000e-01
  %i.bz = fmul float %i.bx, %i.by
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.016.i29.i.i = phi float [ 1.000000e+00, %bb.b ], [ %i.cd, %bb.c ] ; 2 uses
  %.01215.i30.i.i = phi float [ 1.000000e+00, %bb.b ], [ %i.ce, %bb.c ] ; 3 uses
  %.01314.i31.i.i = phi float [ 0.000000e+00, %bb.b ], [ %i.ca, %bb.c ]
  %i.ca = fadd float %.016.i29.i.i, %.01314.i31.i.i ; 3 uses
  %i.cb = fmul float %.01215.i30.i.i, %.01215.i30.i.i
  %i.cc = fdiv float %i.bz, %i.cb
  %i.cd = fmul float %.016.i29.i.i, %i.cc         ; 2 uses
  %i.ce = fadd float %.01215.i30.i.i, 1.000000e+00
  %i.cf = fmul float %i.ca, f0x34000000
  %i.cg = fcmp ult float %i.cd, %i.cf
  br i1 %i.cg, label %BesselI0.exit32.i.i, label %bb.c, !llvm.loop !4

BesselI0.exit32.i.i:                              ; preds = %bb.c
  %i.ch = fdiv float %i.ca, %i.d
  %i.ci = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %.lhs.trunc.i.i = trunc i64 %indvars.iv.i.i to i8 ; 2 uses
  %i.cj = urem i8 %.lhs.trunc.i.i, 24
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ck
  %i.cm = load float, ptr %i.cl, align 4          ; 2 uses
  %i.cn = udiv i8 %.lhs.trunc.i.i, 24
  %i.co = and i8 %i.cn, 1
  %.not.i.i.i = icmp eq i8 %i.co, 0
  %i.cp = fneg float %i.cm
  %i.cq = select i1 %.not.i.i.i, float %i.cm, float %i.cp
  %i.cr = fmul float %i.cq, 2.400000e+01
  %i.cs = uitofp nneg i32 %i.ci to float
  %i.ct = fdiv float %i.cr, %i.cs
  %i.cu = fmul float %i.ch, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i
  store float %i.cu, ptr %i.cv, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 121
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.b, !llvm.loop !5

.preheader.i.i:                                   ; preds = %BesselI0.exit32.i.i, %.preheader.i.i
  %indvars.iv46.i.i = phi i64 [ %indvars.iv.next47.i.i, %.preheader.i.i ], [ 0, %BesselI0.exit32.i.i ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [160 x i8], ptr @ResamplerFilter, i64 %indvars.iv46.i.i ; 15 uses
  %i.cx = sub nuw nsw i64 7, %indvars.iv46.i.i
  %i.cy = getelementptr inbounds nuw [160 x i8], ptr @ResamplerFilter, i64 %i.cx ; 15 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv46.i.i, 12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i ; 15 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 68
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %0 = getelementptr inbounds nuw i8, ptr %i.cy, i64 84
  %1 = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %2 = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  %3 = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %5 = getelementptr inbounds nuw i8, ptr %i.cz, i64 100
  %6 = getelementptr inbounds nuw i8, ptr %i.cz, i64 108
  %7 = getelementptr inbounds nuw i8, ptr %i.cw, i64 52
  %8 = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %9 = getelementptr inbounds nuw i8, ptr %i.cy, i64 100
  %10 = getelementptr inbounds nuw i8, ptr %i.cy, i64 104
  %11 = load <4 x float>, ptr %i.cz, align 4      ; 8 uses
  %12 = load float, ptr %i.dd, align 4            ; 2 uses
  %13 = extractelement <4 x float> %11, i64 0
  store float %13, ptr %i.da, align 16
  %14 = load <4 x float>, ptr %2, align 4         ; 8 uses
  %15 = shufflevector <4 x float> %11, <4 x float> %14, <4 x i32> <i32 1, i32 2, i32 5, i32 6>
  %16 = fmul <4 x float> %15, splat (float 9.000000e+00)
  %17 = shufflevector <4 x float> %11, <4 x float> %14, <4 x i32> <i32 0, i32 3, i32 4, i32 7>
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> splat (float -5.500000e+00), <4 x float> %16) ; 2 uses
  %19 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %20 = fmul <2 x float> %19, <float -2.250000e+01, float 1.350000e+01>
  %21 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %22 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> <float 9.000000e+00, float -4.500000e+00>, <2 x float> %20)
  %23 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> <float 1.800000e+01, float -1.350000e+01>, <2 x float> %22)
  %25 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> <float -4.500000e+00, float 4.500000e+00>, <2 x float> %24)
  store <2 x float> %26, ptr %i.df, align 8
  store float %12, ptr %i.db, align 16
  %27 = fmul <2 x float> %23, <float -2.250000e+01, float 1.350000e+01>
  %28 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> <float 9.000000e+00, float -4.500000e+00>, <2 x float> %27)
  %29 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> <float 1.800000e+01, float -1.350000e+01>, <2 x float> %28)
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> <float -4.500000e+00, float 4.500000e+00>, <2 x float> %29)
  store <2 x float> %i.dg, ptr %1, align 8
  %30 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %31 = fmul <2 x float> %30, <float -2.250000e+01, float 1.350000e+01>
  %32 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> <float 9.000000e+00, float -4.500000e+00>, <2 x float> %31)
  %34 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %35 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> <float 1.800000e+01, float -1.350000e+01>, <2 x float> %33)
  %36 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %37 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> <float -4.500000e+00, float 4.500000e+00>, <2 x float> %35)
  store <2 x float> %37, ptr %8, align 8
  %i.dh = fmul <2 x float> %34, <float -2.250000e+01, float 1.350000e+01>
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> <float 9.000000e+00, float -4.500000e+00>, <2 x float> %i.dh)
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> <float 1.800000e+01, float -1.350000e+01>, <2 x float> %i.di)
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> <float -4.500000e+00, float 4.500000e+00>, <2 x float> %i.dj)
  store <2 x float> %i.dk, ptr %10, align 8
  %38 = getelementptr inbounds nuw i8, ptr %i.cz, i64 192
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 112
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 196
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 204
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 116
  %39 = getelementptr inbounds nuw i8, ptr %i.cy, i64 120
  %40 = load <2 x float>, ptr %5, align 4
  %41 = load <4 x float>, ptr %38, align 4        ; 8 uses
  %42 = load float, ptr %i.do, align 4            ; 2 uses
  %43 = shufflevector <4 x float> %18, <4 x float> %41, <4 x i32> <i32 2, i32 3, i32 5, i32 6>
  %44 = fmul <4 x float> %43, <float 1.000000e+00, float 1.000000e+00, float 9.000000e+00, float 9.000000e+00>
  %45 = shufflevector <4 x float> %41, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %46 = shufflevector <2 x float> %40, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %47 = shufflevector <4 x float> %46, <4 x float> %45, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %48 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %47, <4 x float> <float -4.500000e+00, float -4.500000e+00, float -5.500000e+00, float -5.500000e+00>, <4 x float> %44) ; 2 uses
  %49 = load <2 x float>, ptr %i.dc, align 4
  %50 = load float, ptr %6, align 4               ; 2 uses
  %51 = extractelement <4 x float> %14, i64 0
  %52 = shufflevector <2 x float> %49, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %53 = shufflevector <4 x float> %52, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %54 = shufflevector <4 x float> %18, <4 x float> %14, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %55 = insertelement <4 x float> %54, float %50, i64 2
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %53, <4 x float> <float -4.500000e+00, float -4.500000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %55)
  %56 = shufflevector <4 x float> %11, <4 x float> %48, <4 x i32> <i32 poison, i32 0, i32 4, i32 5>
  %57 = insertelement <4 x float> %56, float %12, i64 0
  %58 = fadd <4 x float> %57, %i.ds               ; 4 uses
  %59 = extractelement <4 x float> %58, i64 0
  store float %59, ptr %i.de, align 4
  %60 = extractelement <4 x float> %58, i64 1
  store float %60, ptr %0, align 4
  store float %51, ptr %3, align 16
  store float %50, ptr %4, align 16
  %i.dt = extractelement <4 x float> %58, i64 2
  store float %i.dt, ptr %7, align 4
  %i.du = extractelement <4 x float> %58, i64 3
  store float %i.du, ptr %9, align 4
  %i.dv = extractelement <4 x float> %41, i64 0
  store float %i.dv, ptr %i.dl, align 16
  %61 = shufflevector <4 x float> %41, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %62 = fmul <2 x float> %61, <float -2.250000e+01, float 1.350000e+01>
  %63 = shufflevector <4 x float> %41, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %64 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %63, <2 x float> <float 9.000000e+00, float -4.500000e+00>, <2 x float> %62)
  %65 = shufflevector <4 x float> %41, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %66 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %65, <2 x float> <float 1.800000e+01, float -1.350000e+01>, <2 x float> %64)
  %67 = shufflevector <4 x float> %41, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %68 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %67, <2 x float> <float -4.500000e+00, float 4.500000e+00>, <2 x float> %66)
  store <2 x float> %68, ptr %i.dq, align 8
  store float %42, ptr %i.dm, align 16
  %i.dw = fmul <2 x float> %65, <float -2.250000e+01, float 1.350000e+01>
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %67, <2 x float> <float 9.000000e+00, float -4.500000e+00>, <2 x float> %i.dw)
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %61, <2 x float> <float 1.800000e+01, float -1.350000e+01>, <2 x float> %i.dx)
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %63, <2 x float> <float -4.500000e+00, float 4.500000e+00>, <2 x float> %i.dy)
  store <2 x float> %i.dz, ptr %39, align 8
  %69 = getelementptr inbounds nuw i8, ptr %i.cz, i64 288
  %70 = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cz, i64 292
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cz, i64 300
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cy, i64 132
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cy, i64 136
  %71 = load <2 x float>, ptr %i.dn, align 4
  %i.eh = load <4 x float>, ptr %69, align 4      ; 8 uses
  %72 = load float, ptr %i.ec, align 4            ; 2 uses
  %73 = shufflevector <4 x float> %48, <4 x float> %i.eh, <4 x i32> <i32 2, i32 3, i32 5, i32 6>
  %74 = fmul <4 x float> %73, <float 1.000000e+00, float 1.000000e+00, float 9.000000e+00, float 9.000000e+00>
  %75 = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %76 = shufflevector <2 x float> %71, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %77 = shufflevector <4 x float> %76, <4 x float> %75, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %78 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %77, <4 x float> <float -4.500000e+00, float -4.500000e+00, float -5.500000e+00, float -5.500000e+00>, <4 x float> %74) ; 3 uses
  %79 = extractelement <4 x float> %78, i64 0
  %80 = fadd float %42, %79
  store float %80, ptr %i.dp, align 4
  %shift = shufflevector <4 x float> %78, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %41, %shift
  %i.ei = extractelement <4 x float> %foldExtExtBinop, i64 0
  store float %i.ei, ptr %i.dr, align 4
  %i.ej = extractelement <4 x float> %i.eh, i64 0
  store float %i.ej, ptr %70, align 16
  %i.ek = shufflevector <4 x float> %i.eh, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.el = fmul <2 x float> %i.ek, <float -2.250000e+01, float 1.350000e+01>
  %i.em = shufflevector <4 x float> %i.eh, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> <float 9.000000e+00, float -4.500000e+00>, <2 x float> %i.el)
  %i.eo = shufflevector <4 x float> %i.eh, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> <float 1.800000e+01, float -1.350000e+01>, <2 x float> %i.en)
  %i.eq = shufflevector <4 x float> %i.eh, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> <float -4.500000e+00, float 4.500000e+00>, <2 x float> %i.ep)
  store <2 x float> %i.er, ptr %i.ee, align 8
  store float %72, ptr %i.ea, align 16
  %81 = fmul <2 x float> %i.eo, <float -2.250000e+01, float 1.350000e+01>
  %82 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> <float 9.000000e+00, float -4.500000e+00>, <2 x float> %81)
  %83 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> <float 1.800000e+01, float -1.350000e+01>, <2 x float> %82)
  %84 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> <float -4.500000e+00, float 4.500000e+00>, <2 x float> %83)
  store <2 x float> %84, ptr %i.eg, align 8
  %85 = getelementptr inbounds nuw i8, ptr %i.cz, i64 384
  %86 = getelementptr inbounds nuw i8, ptr %i.cy, i64 144
  %87 = getelementptr inbounds nuw i8, ptr %i.cz, i64 388
  %i.es = getelementptr inbounds nuw i8, ptr %i.cz, i64 396
  %i.et = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cy, i64 148
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  %88 = load <2 x float>, ptr %i.eb, align 4
  %i.ex = load <4 x float>, ptr %85, align 4      ; 8 uses
  %89 = load float, ptr %i.es, align 4            ; 2 uses
  %90 = shufflevector <4 x float> %78, <4 x float> %i.ex, <4 x i32> <i32 2, i32 3, i32 5, i32 6>
  %91 = fmul <4 x float> %90, <float 1.000000e+00, float 1.000000e+00, float 9.000000e+00, float 9.000000e+00>
  %92 = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %93 = shufflevector <2 x float> %88, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %94 = shufflevector <4 x float> %93, <4 x float> %92, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %95 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %94, <4 x float> <float -4.500000e+00, float -4.500000e+00, float -5.500000e+00, float -5.500000e+00>, <4 x float> %91) ; 3 uses
  %96 = extractelement <4 x float> %95, i64 0
  %97 = fadd float %72, %96
  store float %97, ptr %i.ed, align 4
  %shift6 = shufflevector <4 x float> %95, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop7 = fadd <4 x float> %i.eh, %shift6
  %98 = extractelement <4 x float> %foldExtExtBinop7, i64 0
  store float %98, ptr %i.ef, align 4
  %99 = extractelement <4 x float> %i.ex, i64 0
  store float %99, ptr %i.cw, align 16
  %100 = shufflevector <4 x float> %i.ex, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %101 = shufflevector <4 x float> %i.ex, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %102 = fmul <2 x float> %101, <float -2.250000e+01, float 1.350000e+01>
  %103 = shufflevector <4 x float> %i.ex, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %104 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %103, <2 x float> <float 9.000000e+00, float -4.500000e+00>, <2 x float> %102)
  %105 = shufflevector <4 x float> %i.ex, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %106 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %105, <2 x float> <float 1.800000e+01, float -1.350000e+01>, <2 x float> %104)
  %107 = shufflevector <4 x float> %i.ex, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %108 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %107, <2 x float> <float -4.500000e+00, float 4.500000e+00>, <2 x float> %106)
  store <2 x float> %108, ptr %i.eu, align 8
  store float %89, ptr %86, align 16
  %109 = load <2 x float>, ptr %87, align 4
  %110 = shufflevector <2 x float> %109, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ey = shufflevector <4 x float> %95, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %110, <2 x float> splat (float -4.500000e+00), <2 x float> %i.ey)
  %111 = insertelement <2 x float> %100, float %89, i64 0
  %i.fa = fadd <2 x float> %111, %i.ez            ; 2 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 0
  store float %i.fb, ptr %i.et, align 4
  %i.fc = extractelement <2 x float> %i.fa, i64 1
  store float %i.fc, ptr %i.ev, align 4
  %i.fd = fmul <2 x float> %105, <float -2.250000e+01, float 1.350000e+01>
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %107, <2 x float> <float 9.000000e+00, float -4.500000e+00>, <2 x float> %i.fd)
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %101, <2 x float> <float 1.800000e+01, float -1.350000e+01>, <2 x float> %i.fe)
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %103, <2 x float> <float -4.500000e+00, float 4.500000e+00>, <2 x float> %i.ff)
  store <2 x float> %i.fg, ptr %i.ew, align 8
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
end_hunk_0
