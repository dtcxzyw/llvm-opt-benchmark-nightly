Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_xyb?download=true
inline.NumInlined: 626
inline.NumDeleted: 202
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::__1::array.4" = type { [4 x float] }
%"struct.std::__1::array.3" = type { [3 x float] }
%"struct.std::__1::array" = type { [3 x %"struct.std::__1::array.3"] }
%"class.jxl::ThreadPool::RunCallState" = type <{ ptr, ptr, %"struct.std::__1::atomic.16", [4 x i8] }>
%"struct.std::__1::atomic.16" = type { %"struct.std::__1::__atomic_base.17" }
%"struct.std::__1::__atomic_base.17" = type { %"struct.std::__1::__atomic_base.18" }
%"struct.std::__1::__atomic_base.18" = type { %"struct.std::__1::__cxx_atomic_impl.19" }
%"struct.std::__1::__cxx_atomic_impl.19" = type { %"struct.std::__1::__cxx_atomic_base_impl.20" }
%"struct.std::__1::__cxx_atomic_base_impl.20" = type { i32 }
%"class.jxl::ThreadPool" = type { ptr, ptr }
%class.anon.15 = type { i8 }
%class.anon = type { ptr, ptr, ptr, ptr }
%"class.jxl::ThreadPool::RunCallState.23" = type <{ ptr, ptr, %"struct.std::__1::atomic.16", [4 x i8] }>
%class.anon.21 = type { i8 }
%class.anon.0 = type { ptr, ptr, ptr, ptr }
%"class.jxl::ThreadPool::RunCallState.27" = type <{ ptr, ptr, %"struct.std::__1::atomic.16", [4 x i8] }>
%class.anon.25 = type { i8 }
%class.anon.1 = type { ptr, ptr, ptr, ptr }

$_ZNK3jxl13ColorEncoding13GetWhitePointEv = comdat any

$_ZN3jxl12Mul3x3MatrixINSt3__15arrayINS2_IfLm3EEELm3EEEEEvRKT_S7_RS5_ = comdat any

$_ZN3jxl12Inv3x3MatrixINSt3__15arrayINS2_IfLm3EEELm3EEEEENS_6StatusERT_ = comdat any

$_ZNSt3__16vectorIhNS_9allocatorIhEEE18__assign_with_sizeB8nn180100IPhS5_EEvT_T0_l = comdat any

$_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8nn180100EPKc = comdat any

$_ZNK3jxl3cms13ColorEncoding17SameColorEncodingERKS1_ = comdat any

@_ZN3jxlL33OpsinToLinearHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIN3jxl6StatusEJRKNS1_6Image3IfEERKNS1_5RectTImEEPNS1_10ThreadPoolEPS4_RKNS1_11OpsinParamsEEE13ChooseAndCallIXadsoKPFS2_S6_SA_SC_SD_SG_EL_ZNS1_L33OpsinToLinearHighwayDispatchTableEEEEEES2_S6_SA_SC_SD_SG_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS2_RKNS_11OpsinParamsE, ptr null, ptr @_ZN3jxl6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS2_RKNS_11OpsinParamsE, ptr null, ptr null, ptr @_ZN3jxl6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS2_RKNS_11OpsinParamsE, ptr @_ZN3jxl6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS2_RKNS_11OpsinParamsE], align 16
@_ZN3jxl3cmsL26kNegOpsinAbsorbanceBiasRGBE = internal unnamed_addr constant %"struct.std::__1::array.4" { [4 x float] [float f0xBB789536, float f0xBB789536, float f0xBB789536, float 1.000000e+00] }, align 4
@_ZN3jxlL17kDefaultQuantBiasE = internal unnamed_addr constant [4 x float] [float f0x3F720274, float f0x3F6E10E8, float f0x3F733774, float 1.450000e-01], align 16
@_ZZN3jxl18OutputEncodingInfo16SetColorEncodingERKNS_13ColorEncodingEE15kSRGBLuminances = internal unnamed_addr constant %"struct.std::__1::array.3" { [3 x float] [float 2.126000e-01, float 7.152000e-01, float 7.220000e-02] }, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"length_error was thrown in -fno-exceptions mode with message \22%s\22\00", align 1
@_ZN3jxlL9kBradfordE = internal constant %"struct.std::__1::array" { [3 x %"struct.std::__1::array.3"] [%"struct.std::__1::array.3" { [3 x float] [float f0x3F652546, float 2.664000e-01, float -1.614000e-01] }, %"struct.std::__1::array.3" { [3 x float] [float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02] }, %"struct.std::__1::array.3" { [3 x float] [float 3.890000e-02, float -6.850000e-02, float 1.029600e+00] }] }, align 4
@_ZN3jxlL12kBradfordInvE = internal constant %"struct.std::__1::array" { [3 x %"struct.std::__1::array.3"] [%"struct.std::__1::array.3" { [3 x float] [float f0x3F7CAB91, float f0xBE169567, float f0x3E23CD43] }, %"struct.std::__1::array.3" { [3 x float] [float f0x3EDD571F, float f0x3F04B343, float 4.929120e-02] }, %"struct.std::__1::array.3" { [3 x float] [float -8.528700e-03, float 4.004280e-02, float f0x3F77EEBF] }] }, align 4

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS2_RKNS_11OpsinParamsE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noalias noundef %3, ptr noundef nonnull align 4 dereferenceable(192) %4) #0 {
bb.a:
  %5 = alloca %"class.jxl::ThreadPool::RunCallState", align 8 ; 7 uses
  %6 = alloca %"class.jxl::ThreadPool", align 8   ; 5 uses
  %7 = alloca %class.anon.15, align 1             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %8 = alloca %class.anon, align 8                ; 7 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %i.d = load i32, ptr %3, align 8, !tbaa !21
  %i.e = zext i32 %i.d to i64
  %i.f = icmp eq i64 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8              ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = icmp eq i64 %i.h, %i.k
  %i.m = select i1 %i.f, i1 %i.l, i1 false
  br i1 %i.m, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %1, ptr %8, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %4, ptr %i.p, align 8, !tbaa !28
  %i.q = trunc nuw i64 %i.h to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.r = icmp eq ptr %2, null
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %6, ptr %i.s, align 8, !tbaa !31
  %i.t = icmp eq i64 %i.h, 0
  br i1 %i.t, label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread22", label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 164
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 128
  br label %bb.d

bb.d:                                             ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i", %.preheader.i.i.i.preheader
  %indvars.iv18 = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %indvars.iv.next19, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i" ] ; 3 uses
  %i.aq = load i64, ptr %i.u, align 8, !tbaa !32
  %i.ar = add i64 %i.aq, %indvars.iv18
  %i.as = load i64, ptr %i.v, align 8, !tbaa !33
  %i.at = mul i64 %i.ar, %i.as                    ; 3 uses
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.au, i64 64) ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.av, i64 64) ]
  %i.aw = load i64, ptr %1, align 8, !tbaa !35    ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !34  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ay, i64 64) ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.az, i64 64) ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.aw
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !34  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bb, i64 64) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bc, i64 64) ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.aw
  %i.be = load i64, ptr %i.z, align 8, !tbaa !33
  %i.bf = mul i64 %i.be, %indvars.iv18            ; 3 uses
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bg, i64 64) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bh, i64 64) ]
  %i.bi = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bi, i64 64) ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bj, i64 64) ]
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 64) ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bl, i64 64) ]
  %i.bm = load i64, ptr %i.ad, align 8, !tbaa !17
  %.not.i8 = icmp eq i64 %i.bm, 0
  br i1 %.not.i8, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i", label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %bb.d, %.lr.ph.i9
  %.038.i10 = phi i64 [ %i.dp, %.lr.ph.i9 ], [ 0, %bb.d ] ; 7 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.038.i10
  %i.bo = load <4 x float>, ptr %i.bn, align 16, !tbaa !36 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.038.i10
  %i.bq = load <4 x float>, ptr %i.bp, align 16, !tbaa !36 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.038.i10
  %i.bs = load <4 x float>, ptr %i.br, align 16, !tbaa !36
  %i.bt = load <4 x float>, ptr %i.ae, align 4, !tbaa !36, !noalias !119 ; 3 uses
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bw = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bx = fadd <4 x float> %i.bo, %i.bq
  %i.by = fsub <4 x float> %i.bq, %i.bo
  %9 = load <1 x float>, ptr %i.af, align 4
  %i.bz = shufflevector <1 x float> %9, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ca = fsub <4 x float> %i.bx, %i.bz           ; 3 uses
  %10 = load <1 x float>, ptr %i.ag, align 4
  %i.cb = shufflevector <1 x float> %10, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cc = fsub <4 x float> %i.by, %i.cb           ; 3 uses
  %11 = load <1 x float>, ptr %i.ah, align 4
  %i.cd = shufflevector <1 x float> %11, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ce = fsub <4 x float> %i.bs, %i.cd           ; 3 uses
  %i.cf = fmul <4 x float> %i.ca, %i.ca
  %i.cg = fmul <4 x float> %i.cc, %i.cc
  %i.ch = fmul <4 x float> %i.ce, %i.ce
  %i.ci = fmul <4 x float> %i.ca, %i.cf
  %i.cj = fadd <4 x float> %i.bu, %i.ci           ; 3 uses
  %i.ck = fmul <4 x float> %i.cc, %i.cg
  %i.cl = fadd <4 x float> %i.bv, %i.ck           ; 3 uses
  %i.cm = fmul <4 x float> %i.ce, %i.ch
  %i.cn = fadd <4 x float> %i.bw, %i.cm           ; 3 uses
  %i.co = load <4 x float>, ptr %4, align 4, !tbaa !36, !noalias !119
  %i.cp = fmul <4 x float> %i.co, %i.cj
  %i.cq = load <4 x float>, ptr %i.ai, align 4, !tbaa !36, !noalias !119
  %i.cr = fmul <4 x float> %i.cq, %i.cj
  %i.cs = load <4 x float>, ptr %i.aj, align 4, !tbaa !36, !noalias !119
  %i.ct = fmul <4 x float> %i.cs, %i.cj
  %i.cu = load <4 x float>, ptr %i.ak, align 4, !tbaa !36, !noalias !119
  %i.cv = fmul <4 x float> %i.cu, %i.cl
  %i.cw = fadd <4 x float> %i.cp, %i.cv
  %i.cx = load <4 x float>, ptr %i.al, align 4, !tbaa !36, !noalias !119
  %i.cy = fmul <4 x float> %i.cx, %i.cl
  %i.cz = fadd <4 x float> %i.cr, %i.cy
  %i.da = load <4 x float>, ptr %i.am, align 4, !tbaa !36, !noalias !119
  %i.db = fmul <4 x float> %i.cl, %i.da
  %i.dc = fadd <4 x float> %i.ct, %i.db
  %i.dd = load <4 x float>, ptr %i.an, align 4, !tbaa !36, !noalias !119
  %i.de = fmul <4 x float> %i.cn, %i.dd
  %i.df = fadd <4 x float> %i.cw, %i.de
  %i.dg = load <4 x float>, ptr %i.ao, align 4, !tbaa !36, !noalias !119
  %i.dh = fmul <4 x float> %i.cn, %i.dg
  %i.di = fadd <4 x float> %i.cz, %i.dh
  %i.dj = load <4 x float>, ptr %i.ap, align 4, !tbaa !36, !noalias !119
  %i.dk = fmul <4 x float> %i.cn, %i.dj
  %i.dl = fadd <4 x float> %i.dc, %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.038.i10
  store <4 x float> %i.df, ptr %i.dm, align 16, !tbaa !36
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.038.i10
  store <4 x float> %i.di, ptr %i.dn, align 16, !tbaa !36
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.038.i10
  store <4 x float> %i.dl, ptr %i.do, align 16, !tbaa !36
  %i.dp = add i64 %.038.i10, 4                    ; 2 uses
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !17
  %i.dr = icmp ult i64 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph.i9, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i", !llvm.loop !0

"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i": ; preds = %.lr.ph.i9, %bb.d
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next19, %i.h
  br i1 %exitcond.not.i.i.i, label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread22", label %bb.d, !llvm.loop !113

"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread22": ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i", %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %2, align 8           ; 2 uses
  %i.ds = getelementptr i8, ptr %2, i64 8
  %.val11.i.i = load ptr, ptr %i.ds, align 8
  %i.dt = icmp eq i64 %i.h, 0
  br i1 %i.dt, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %7, ptr %5, align 8, !tbaa !38
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %8, ptr %i.du, align 8, !tbaa !38
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i32 0, ptr %i.dv, align 8, !tbaa !40
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %.preheader.i17.i.i, label %bb.i

.preheader.i17.i.i:                               ; preds = %bb.f, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i"
  %indvars.iv = phi i64 [ %indvars.iv.next, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i" ], [ 0, %bb.f ] ; 3 uses
  %i.dw = load atomic i32, ptr %i.dv seq_cst, align 8
  %.not.i.i19.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i19.i.i, label %bb.g, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i"

bb.g:                                             ; preds = %.preheader.i17.i.i
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !46, !nonnull !47, !align !48 ; 5 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !50, !nonnull !47, !align !48 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !51, !nonnull !47, !align !48 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !32
  %i.ed = add i64 %i.ec, %indvars.iv
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !33
  %i.eg = mul i64 %i.ed, %i.ef                    ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ei, i64 64) ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ej, i64 64) ]
  %i.ek = load i64, ptr %i.dy, align 8, !tbaa !35 ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.en, i64 64) ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eo, i64 64) ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ek
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.er, i64 64) ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.es, i64 64) ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ek
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !52, !nonnull !47, !align !48
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !14 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !33
  %i.ez = mul i64 %i.ey, %indvars.iv              ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 64) ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ez ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fc, i64 64) ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fe, i64 64) ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ez ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ff, i64 64) ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 152
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fh, i64 64) ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ez ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fi, i64 64) ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !17
  %.not.i = icmp eq i64 %i.fk, 0
  br i1 %.not.i, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.038.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ih, %bb.h ] ; 7 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.038.i
  %i.fn = load <4 x float>, ptr %i.fm, align 16, !tbaa !36 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.038.i
  %i.fp = load <4 x float>, ptr %i.fo, align 16, !tbaa !36 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.038.i
  %i.fr = load <4 x float>, ptr %i.fq, align 16, !tbaa !36
  %i.fs = load ptr, ptr %i.fl, align 8, !tbaa !53, !nonnull !47, !align !54 ; 13 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 144
  %i.fu = load <4 x float>, ptr %i.ft, align 4, !tbaa !36, !noalias !120 ; 3 uses
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fw = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fx = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fy = fadd <4 x float> %i.fn, %i.fp
  %i.fz = fsub <4 x float> %i.fp, %i.fn
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 160
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !56, !noalias !120
  %i.gc = insertelement <4 x float> poison, float %i.gb, i64 0
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ge = fsub <4 x float> %i.fy, %i.gd           ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fs, i64 164
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !56, !noalias !120
  %i.gh = insertelement <4 x float> poison, float %i.gg, i64 0
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gj = fsub <4 x float> %i.fz, %i.gi           ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fs, i64 168
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !56, !noalias !120
  %i.gm = insertelement <4 x float> poison, float %i.gl, i64 0
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.go = fsub <4 x float> %i.fr, %i.gn           ; 3 uses
  %i.gp = fmul <4 x float> %i.ge, %i.ge
  %i.gq = fmul <4 x float> %i.gj, %i.gj
  %i.gr = fmul <4 x float> %i.go, %i.go
  %i.gs = fmul <4 x float> %i.ge, %i.gp
  %i.gt = fadd <4 x float> %i.fv, %i.gs           ; 3 uses
  %i.gu = fmul <4 x float> %i.gj, %i.gq
  %i.gv = fadd <4 x float> %i.fw, %i.gu           ; 3 uses
  %i.gw = fmul <4 x float> %i.go, %i.gr
  %i.gx = fadd <4 x float> %i.fx, %i.gw           ; 3 uses
  %i.gy = load <4 x float>, ptr %i.fs, align 4, !tbaa !36, !noalias !120
  %i.gz = fmul <4 x float> %i.gy, %i.gt
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.hb = load <4 x float>, ptr %i.ha, align 4, !tbaa !36, !noalias !120
  %i.hc = fmul <4 x float> %i.hb, %i.gt
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fs, i64 96
  %i.he = load <4 x float>, ptr %i.hd, align 4, !tbaa !36, !noalias !120
  %i.hf = fmul <4 x float> %i.he, %i.gt
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.hh = load <4 x float>, ptr %i.hg, align 4, !tbaa !36, !noalias !120
  %i.hi = fmul <4 x float> %i.hh, %i.gv
  %i.hj = fadd <4 x float> %i.gz, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  %i.hl = load <4 x float>, ptr %i.hk, align 4, !tbaa !36, !noalias !120
  %i.hm = fmul <4 x float> %i.hl, %i.gv
  %i.hn = fadd <4 x float> %i.hc, %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fs, i64 112
  %i.hp = load <4 x float>, ptr %i.ho, align 4, !tbaa !36, !noalias !120
  %i.hq = fmul <4 x float> %i.gv, %i.hp
  %i.hr = fadd <4 x float> %i.hf, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.ht = load <4 x float>, ptr %i.hs, align 4, !tbaa !36, !noalias !120
  %i.hu = fmul <4 x float> %i.gx, %i.ht
  %i.hv = fadd <4 x float> %i.hj, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fs, i64 80
  %i.hx = load <4 x float>, ptr %i.hw, align 4, !tbaa !36, !noalias !120
  %i.hy = fmul <4 x float> %i.gx, %i.hx
  %i.hz = fadd <4 x float> %i.hn, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fs, i64 128
  %i.ib = load <4 x float>, ptr %i.ia, align 4, !tbaa !36, !noalias !120
  %i.ic = fmul <4 x float> %i.gx, %i.ib
  %i.id = fadd <4 x float> %i.hr, %i.ic
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.038.i
  store <4 x float> %i.hv, ptr %i.ie, align 16, !tbaa !36
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.038.i
  store <4 x float> %i.hz, ptr %i.if, align 16, !tbaa !36
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.038.i
  store <4 x float> %i.id, ptr %i.ig, align 16, !tbaa !36
  %i.ih = add i64 %.038.i, 4                      ; 2 uses
  %i.ii = load ptr, ptr %i.dx, align 8, !tbaa !50, !nonnull !47, !align !48
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !17
  %i.il = icmp ult i64 %i.ih, %i.ik
  br i1 %i.il, label %bb.h, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i", !llvm.loop !0

"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i": ; preds = %bb.h, %bb.g, %.preheader.i17.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i21.i.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not.i21.i.i, label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit", label %.preheader.i17.i.i, !llvm.loop !113

bb.i:                                             ; preds = %bb.f
  %i.im = call noundef i32 %.val.i.i(ptr noundef %.val11.i.i, ptr noundef nonnull %5, ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallInitFuncEPvm", ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm", i32 noundef 0, i32 noundef %i.q) #23, !inline_history !118
  %.not25.i.i.i = icmp eq i32 %i.im, 0
  br i1 %.not25.i.i.i, label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit", label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread24"

"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread24": ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.k

"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit": ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i", %bb.i
  %i.in = load atomic i32, ptr %i.dv seq_cst, align 8
  %.not5.i16.i.i.not = icmp eq i32 %i.in, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.not5.i16.i.i.not, label %bb.j, label %bb.k

.sink.split:                                      ; preds = %bb.e, %"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread22"
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit"
  br label %bb.k

bb.k:                                             ; preds = %"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread24", %"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit", %bb.j
  %.sroa.012.0 = phi i32 [ 0, %bb.j ], [ 1, %"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit" ], [ 1, %"_ZN3jxl9RunOnPoolIZNS_6N_SSE413OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread24" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.sroa.012.1 = phi i32 [ %.sroa.012.0, %bb.k ], [ 1, %bb.a ]
  ret i32 %.sroa.012.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS2_RKNS_11OpsinParamsE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noalias noundef %3, ptr noundef nonnull align 4 dereferenceable(192) %4) #2 {
bb.a:
  %5 = alloca %"class.jxl::ThreadPool::RunCallState.23", align 8 ; 7 uses
  %6 = alloca %class.anon.21, align 1             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %7 = alloca %class.anon.0, align 8              ; 7 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %i.d = load i32, ptr %3, align 8, !tbaa !21
  %i.e = zext i32 %i.d to i64
  %i.f = icmp eq i64 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8              ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = icmp eq i64 %i.h, %i.k
  %i.m = select i1 %i.f, i1 %i.l, i1 false
  br i1 %i.m, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %1, ptr %7, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.a, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %4, ptr %i.p, align 8, !tbaa !28
  %i.q = trunc nuw i64 %i.h to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.r = icmp eq ptr %2, null
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %i.h, 0
  br i1 %i.s, label %.sink.split, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 164
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 128
  br label %bb.d

bb.d:                                             ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i", %.preheader.i.i.i.preheader
  %indvars.iv18 = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %indvars.iv.next19, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i" ] ; 3 uses
  %i.ap = load i64, ptr %i.t, align 8, !tbaa !32
  %i.aq = add i64 %i.ap, %indvars.iv18
  %i.ar = load i64, ptr %i.u, align 8, !tbaa !33
  %i.as = mul i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !34  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.at, i64 64) ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.au, i64 64) ]
  %i.av = load i64, ptr %1, align 8, !tbaa !35    ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load ptr, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ax, i64 64) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.as ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ay, i64 64) ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.av
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !34  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ba, i64 64) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bb, i64 64) ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.av
  %i.bd = load i64, ptr %i.y, align 8, !tbaa !33
  %i.be = mul i64 %i.bd, %indvars.iv18            ; 3 uses
  %i.bf = load ptr, ptr %i.z, align 8, !tbaa !34  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bf, i64 64) ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bg, i64 64) ]
  %i.bh = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bh, i64 64) ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.be ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bi, i64 64) ]
  %i.bj = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bj, i64 64) ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.be ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 64) ]
  %i.bl = load i64, ptr %i.ac, align 8, !tbaa !17
  %.not.i8 = icmp eq i64 %i.bl, 0
  br i1 %.not.i8, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i", label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %bb.d, %.lr.ph.i9
  %.038.i10 = phi i64 [ %i.do, %.lr.ph.i9 ], [ 0, %bb.d ] ; 7 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.038.i10
  %i.bn = load <8 x float>, ptr %i.bm, align 32, !tbaa !36 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.038.i10
  %i.bp = load <8 x float>, ptr %i.bo, align 32, !tbaa !36 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.038.i10
  %i.br = load <8 x float>, ptr %i.bq, align 32, !tbaa !36
  %i.bs = load <4 x float>, ptr %i.ad, align 4, !tbaa !36, !noalias !131 ; 3 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <8 x i32> zeroinitializer
  %i.bu = shufflevector <4 x float> %i.bs, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bv = shufflevector <4 x float> %i.bs, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.bw = fadd <8 x float> %i.bn, %i.bp
  %i.bx = fsub <8 x float> %i.bp, %i.bn
  %8 = load <1 x float>, ptr %i.ae, align 4
  %i.by = shufflevector <1 x float> %8, <1 x float> poison, <8 x i32> zeroinitializer
  %i.bz = fsub <8 x float> %i.bw, %i.by           ; 3 uses
  %9 = load <1 x float>, ptr %i.af, align 4
  %i.ca = shufflevector <1 x float> %9, <1 x float> poison, <8 x i32> zeroinitializer
  %i.cb = fsub <8 x float> %i.bx, %i.ca           ; 3 uses
  %10 = load <1 x float>, ptr %i.ag, align 4
  %i.cc = shufflevector <1 x float> %10, <1 x float> poison, <8 x i32> zeroinitializer
  %i.cd = fsub <8 x float> %i.br, %i.cc           ; 3 uses
  %i.ce = fmul <8 x float> %i.bz, %i.bz
  %i.cf = fmul <8 x float> %i.cb, %i.cb
  %i.cg = fmul <8 x float> %i.cd, %i.cd
  %i.ch = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ce, <8 x float> %i.bz, <8 x float> %i.bt) ; 3 uses
  %i.ci = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cf, <8 x float> %i.cb, <8 x float> %i.bu) ; 3 uses
  %i.cj = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cg, <8 x float> %i.cd, <8 x float> %i.bv) ; 3 uses
  %i.ck = load <4 x float>, ptr %4, align 4, !tbaa !36, !noalias !131
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cm = fmul <8 x float> %i.cl, %i.ch
  %i.cn = load <4 x float>, ptr %i.ah, align 4, !tbaa !36, !noalias !131
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cp = fmul <8 x float> %i.co, %i.ch
  %i.cq = load <4 x float>, ptr %i.ai, align 4, !tbaa !36, !noalias !131
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cs = fmul <8 x float> %i.ch, %i.cr
  %i.ct = load <4 x float>, ptr %i.aj, align 4, !tbaa !36, !noalias !131
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cv = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cu, <8 x float> %i.ci, <8 x float> %i.cm)
  %i.cw = load <4 x float>, ptr %i.ak, align 4, !tbaa !36, !noalias !131
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cy = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cx, <8 x float> %i.ci, <8 x float> %i.cp)
  %i.cz = load <4 x float>, ptr %i.al, align 4, !tbaa !36, !noalias !131
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.db = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.da, <8 x float> %i.ci, <8 x float> %i.cs)
  %i.dc = load <4 x float>, ptr %i.am, align 4, !tbaa !36, !noalias !131
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.de = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dd, <8 x float> %i.cj, <8 x float> %i.cv)
  %i.df = load <4 x float>, ptr %i.an, align 4, !tbaa !36, !noalias !131
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dh = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dg, <8 x float> %i.cj, <8 x float> %i.cy)
  %i.di = load <4 x float>, ptr %i.ao, align 4, !tbaa !36, !noalias !131
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dk = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dj, <8 x float> %i.cj, <8 x float> %i.db)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.038.i10
  store <8 x float> %i.de, ptr %i.dl, align 32, !tbaa !36
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.038.i10
  store <8 x float> %i.dh, ptr %i.dm, align 32, !tbaa !36
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.038.i10
  store <8 x float> %i.dk, ptr %i.dn, align 32, !tbaa !36
  %i.do = add i64 %.038.i10, 8                    ; 2 uses
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !17
  %i.dq = icmp ult i64 %i.do, %i.dp
  br i1 %i.dq, label %.lr.ph.i9, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i", !llvm.loop !1

"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i": ; preds = %.lr.ph.i9, %bb.d
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next19, %i.h
  br i1 %exitcond.not.i.i.i, label %.sink.split, label %bb.d, !llvm.loop !125

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %2, align 8           ; 2 uses
  %i.dr = getelementptr i8, ptr %2, i64 8
  %.val11.i.i = load ptr, ptr %i.dr, align 8
  %i.ds = icmp eq i64 %i.h, 0
  br i1 %i.ds, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %6, ptr %5, align 8, !tbaa !38
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %7, ptr %i.dt, align 8, !tbaa !38
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i32 0, ptr %i.du, align 8, !tbaa !40
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %.preheader.i17.i.i, label %bb.i

.preheader.i17.i.i:                               ; preds = %bb.f, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i"
  %indvars.iv = phi i64 [ %indvars.iv.next, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i" ], [ 0, %bb.f ] ; 3 uses
  %i.dv = load atomic i32, ptr %i.du seq_cst, align 8
  %.not.i.i19.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i19.i.i, label %bb.g, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i"

bb.g:                                             ; preds = %.preheader.i17.i.i
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !58, !nonnull !47, !align !48 ; 5 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !60, !nonnull !47, !align !48 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !61, !nonnull !47, !align !48 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !32
  %i.ec = add i64 %i.eb, %indvars.iv
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !33
  %i.ef = mul i64 %i.ec, %i.ee                    ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eh, i64 64) ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ei, i64 64) ]
  %i.ej = load i64, ptr %i.dx, align 8, !tbaa !35 ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 96
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.em, i64 64) ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ef ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.en, i64 64) ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ej
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dz, i64 152
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eq, i64 64) ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ef ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.er, i64 64) ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.ej
  %i.et = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !62, !nonnull !47, !align !48
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !14 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !33
  %i.ey = mul i64 %i.ex, %indvars.iv              ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fa, i64 64) ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ey ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 64) ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fd, i64 64) ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ey ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fe, i64 64) ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 152
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fg, i64 64) ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ey ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fh, i64 64) ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !17
  %.not.i = icmp eq i64 %i.fj, 0
  br i1 %.not.i, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.038.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ig, %bb.h ] ; 7 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.038.i
  %i.fm = load <8 x float>, ptr %i.fl, align 32, !tbaa !36 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.038.i
  %i.fo = load <8 x float>, ptr %i.fn, align 32, !tbaa !36 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.038.i
  %i.fq = load <8 x float>, ptr %i.fp, align 32, !tbaa !36
  %i.fr = load ptr, ptr %i.fk, align 8, !tbaa !63, !nonnull !47, !align !54 ; 13 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 144
  %i.ft = load <4 x float>, ptr %i.fs, align 4, !tbaa !36, !noalias !132 ; 3 uses
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <8 x i32> zeroinitializer
  %i.fv = shufflevector <4 x float> %i.ft, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.fw = shufflevector <4 x float> %i.ft, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.fx = fadd <8 x float> %i.fm, %i.fo
  %i.fy = fsub <8 x float> %i.fo, %i.fm
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 160
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !56, !noalias !132
  %i.gb = insertelement <8 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <8 x float> %i.gb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gd = fsub <8 x float> %i.fx, %i.gc           ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 164
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !56, !noalias !132
  %i.gg = insertelement <8 x float> poison, float %i.gf, i64 0
  %i.gh = shufflevector <8 x float> %i.gg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gi = fsub <8 x float> %i.fy, %i.gh           ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fr, i64 168
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !56, !noalias !132
  %i.gl = insertelement <8 x float> poison, float %i.gk, i64 0
  %i.gm = shufflevector <8 x float> %i.gl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gn = fsub <8 x float> %i.fq, %i.gm           ; 3 uses
  %i.go = fmul <8 x float> %i.gd, %i.gd
  %i.gp = fmul <8 x float> %i.gi, %i.gi
  %i.gq = fmul <8 x float> %i.gn, %i.gn
  %i.gr = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.go, <8 x float> %i.gd, <8 x float> %i.fu) ; 3 uses
  %i.gs = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.gp, <8 x float> %i.gi, <8 x float> %i.fv) ; 3 uses
  %i.gt = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.gq, <8 x float> %i.gn, <8 x float> %i.fw) ; 3 uses
  %i.gu = load <4 x float>, ptr %i.fr, align 4, !tbaa !36, !noalias !132
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gw = fmul <8 x float> %i.gv, %i.gr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  %i.gy = load <4 x float>, ptr %i.gx, align 4, !tbaa !36, !noalias !132
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ha = fmul <8 x float> %i.gz, %i.gr
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fr, i64 96
  %i.hc = load <4 x float>, ptr %i.hb, align 4, !tbaa !36, !noalias !132
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.he = fmul <8 x float> %i.gr, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.hg = load <4 x float>, ptr %i.hf, align 4, !tbaa !36, !noalias !132
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.hi = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hh, <8 x float> %i.gs, <8 x float> %i.gw)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  %i.hk = load <4 x float>, ptr %i.hj, align 4, !tbaa !36, !noalias !132
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.hm = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hl, <8 x float> %i.gs, <8 x float> %i.ha)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fr, i64 112
  %i.ho = load <4 x float>, ptr %i.hn, align 4, !tbaa !36, !noalias !132
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.hq = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hp, <8 x float> %i.gs, <8 x float> %i.he)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.hs = load <4 x float>, ptr %i.hr, align 4, !tbaa !36, !noalias !132
  %i.ht = shufflevector <4 x float> %i.hs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.hu = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ht, <8 x float> %i.gt, <8 x float> %i.hi)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fr, i64 80
  %i.hw = load <4 x float>, ptr %i.hv, align 4, !tbaa !36, !noalias !132
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.hy = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hx, <8 x float> %i.gt, <8 x float> %i.hm)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fr, i64 128
  %i.ia = load <4 x float>, ptr %i.hz, align 4, !tbaa !36, !noalias !132
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ic = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ib, <8 x float> %i.gt, <8 x float> %i.hq)
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.038.i
  store <8 x float> %i.hu, ptr %i.id, align 32, !tbaa !36
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.038.i
  store <8 x float> %i.hy, ptr %i.ie, align 32, !tbaa !36
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.038.i
  store <8 x float> %i.ic, ptr %i.if, align 32, !tbaa !36
  %i.ig = add i64 %.038.i, 8                      ; 2 uses
  %i.ih = load ptr, ptr %i.dw, align 8, !tbaa !60, !nonnull !47, !align !48
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !17
  %i.ik = icmp ult i64 %i.ig, %i.ij
  br i1 %i.ik, label %bb.h, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i", !llvm.loop !1

"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i": ; preds = %bb.h, %bb.g, %.preheader.i17.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i21.i.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not.i21.i.i, label %"_ZN3jxl9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit", label %.preheader.i17.i.i, !llvm.loop !125

bb.i:                                             ; preds = %bb.f
  %i.il = call noundef i32 %.val.i.i(ptr noundef %.val11.i.i, ptr noundef nonnull %5, ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallInitFuncEPvm", ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm", i32 noundef 0, i32 noundef %i.q) #23, !inline_history !130
  %.not25.i.i.i = icmp eq i32 %i.il, 0
  br i1 %.not25.i.i.i, label %"_ZN3jxl9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit", label %"_ZN3jxl9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread24"

"_ZN3jxl9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread24": ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.k

"_ZN3jxl9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit": ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i20.i.i", %bb.i
  %i.im = load atomic i32, ptr %i.du seq_cst, align 8
  %.not5.i16.i.i.not = icmp eq i32 %i.im, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.not5.i16.i.i.not, label %bb.j, label %bb.k

.sink.split:                                      ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i", %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %"_ZN3jxl9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit"
  br label %bb.k

bb.k:                                             ; preds = %"_ZN3jxl9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread24", %"_ZN3jxl9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit", %bb.j
  %.sroa.012.0 = phi i32 [ 0, %bb.j ], [ 1, %"_ZN3jxl9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit" ], [ 1, %"_ZN3jxl9RunOnPoolIZNS_6N_AVX213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread24" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.sroa.012.1 = phi i32 [ %.sroa.012.0, %bb.k ], [ 1, %bb.a ]
  ret i32 %.sroa.012.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS2_RKNS_11OpsinParamsE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noalias noundef %3, ptr noundef nonnull align 4 dereferenceable(192) %4) #3 {
bb.a:
  %5 = alloca %"class.jxl::ThreadPool::RunCallState.27", align 8 ; 7 uses
  %6 = alloca %"class.jxl::ThreadPool", align 8   ; 5 uses
  %7 = alloca %class.anon.25, align 1             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %8 = alloca %class.anon.1, align 8              ; 7 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %i.d = load i32, ptr %3, align 8, !tbaa !21
  %i.e = zext i32 %i.d to i64
  %i.f = icmp eq i64 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8              ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = icmp eq i64 %i.h, %i.k
  %i.m = select i1 %i.f, i1 %i.l, i1 false
  br i1 %i.m, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %1, ptr %8, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %4, ptr %i.p, align 8, !tbaa !28
  %i.q = trunc nuw i64 %i.h to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.r = icmp eq ptr %2, null
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %6, ptr %i.s, align 8, !tbaa !31
  %i.t = icmp eq i64 %i.h, 0
  br i1 %i.t, label %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_EESI_jjSO_RKT0_SQ_.exit.i.i", label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 164
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 128
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i"
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i" ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.aq = load i64, ptr %i.u, align 8, !tbaa !32
  %i.ar = add i64 %i.aq, %indvars.iv.i.i.i
  %i.as = load i64, ptr %i.v, align 8, !tbaa !33
  %i.at = mul i64 %i.ar, %i.as                    ; 3 uses
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.au, i64 64) ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.av, i64 64) ]
  %i.aw = load i64, ptr %1, align 8, !tbaa !35    ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !34  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ay, i64 64) ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.az, i64 64) ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.aw
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !34  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bb, i64 64) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bc, i64 64) ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.aw
  %i.be = load i64, ptr %i.z, align 8, !tbaa !33
  %i.bf = mul i64 %i.be, %indvars.iv.i.i.i        ; 3 uses
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bg, i64 64) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bh, i64 64) ]
  %i.bi = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bi, i64 64) ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bj, i64 64) ]
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 64) ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bl, i64 64) ]
  %i.bm = load i64, ptr %i.ad, align 8, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i.i, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader, %.lr.ph.i.i.i.i.i
  %.038.i.i.i.i.i = phi i64 [ %i.dp, %.lr.ph.i.i.i.i.i ], [ 0, %.preheader ] ; 7 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.038.i.i.i.i.i
  %i.bo = load <4 x float>, ptr %i.bn, align 16, !tbaa !36, !alias.scope !207 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.038.i.i.i.i.i
  %i.bq = load <4 x float>, ptr %i.bp, align 16, !tbaa !36, !alias.scope !208 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.038.i.i.i.i.i
  %i.bs = load <4 x float>, ptr %i.br, align 16, !tbaa !36, !alias.scope !209
  %i.bt = load <4 x float>, ptr %i.ae, align 4, !tbaa !36, !alias.scope !210, !noalias !211 ; 3 uses
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bw = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bx = fadd <4 x float> %i.bo, %i.bq
  %i.by = fsub <4 x float> %i.bq, %i.bo
  %9 = load <1 x float>, ptr %i.af, align 4
  %i.bz = shufflevector <1 x float> %9, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ca = fsub <4 x float> %i.bx, %i.bz           ; 3 uses
  %10 = load <1 x float>, ptr %i.ag, align 4
  %i.cb = shufflevector <1 x float> %10, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cc = fsub <4 x float> %i.by, %i.cb           ; 3 uses
  %11 = load <1 x float>, ptr %i.ah, align 4
  %i.cd = shufflevector <1 x float> %11, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ce = fsub <4 x float> %i.bs, %i.cd           ; 3 uses
  %i.cf = fmul <4 x float> %i.ca, %i.ca
  %i.cg = fmul <4 x float> %i.cc, %i.cc
  %i.ch = fmul <4 x float> %i.ce, %i.ce
  %i.ci = fmul <4 x float> %i.ca, %i.cf
  %i.cj = fadd <4 x float> %i.bu, %i.ci           ; 3 uses
  %i.ck = fmul <4 x float> %i.cc, %i.cg
  %i.cl = fadd <4 x float> %i.bv, %i.ck           ; 3 uses
  %i.cm = fmul <4 x float> %i.ce, %i.ch
  %i.cn = fadd <4 x float> %i.bw, %i.cm           ; 3 uses
  %i.co = load <4 x float>, ptr %4, align 4, !tbaa !36, !alias.scope !212, !noalias !211
  %i.cp = fmul <4 x float> %i.co, %i.cj
  %i.cq = load <4 x float>, ptr %i.ai, align 4, !tbaa !36, !alias.scope !213, !noalias !211
  %i.cr = fmul <4 x float> %i.cq, %i.cj
  %i.cs = load <4 x float>, ptr %i.aj, align 4, !tbaa !36, !alias.scope !214, !noalias !211
  %i.ct = fmul <4 x float> %i.cs, %i.cj
  %i.cu = load <4 x float>, ptr %i.ak, align 4, !tbaa !36, !alias.scope !215, !noalias !211
  %i.cv = fmul <4 x float> %i.cu, %i.cl
  %i.cw = fadd <4 x float> %i.cp, %i.cv
  %i.cx = load <4 x float>, ptr %i.al, align 4, !tbaa !36, !alias.scope !216, !noalias !211
  %i.cy = fmul <4 x float> %i.cx, %i.cl
  %i.cz = fadd <4 x float> %i.cr, %i.cy
  %i.da = load <4 x float>, ptr %i.am, align 4, !tbaa !36, !alias.scope !217, !noalias !211
  %i.db = fmul <4 x float> %i.cl, %i.da
  %i.dc = fadd <4 x float> %i.ct, %i.db
  %i.dd = load <4 x float>, ptr %i.an, align 4, !tbaa !36, !alias.scope !218, !noalias !211
  %i.de = fmul <4 x float> %i.cn, %i.dd
  %i.df = fadd <4 x float> %i.cw, %i.de
  %i.dg = load <4 x float>, ptr %i.ao, align 4, !tbaa !36, !alias.scope !219, !noalias !211
  %i.dh = fmul <4 x float> %i.cn, %i.dg
  %i.di = fadd <4 x float> %i.cz, %i.dh
  %i.dj = load <4 x float>, ptr %i.ap, align 4, !tbaa !36, !alias.scope !220, !noalias !211
  %i.dk = fmul <4 x float> %i.cn, %i.dj
  %i.dl = fadd <4 x float> %i.dc, %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.038.i.i.i.i.i
  store <4 x float> %i.df, ptr %i.dm, align 16, !tbaa !36, !alias.scope !221
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.038.i.i.i.i.i
  store <4 x float> %i.di, ptr %i.dn, align 16, !tbaa !36, !alias.scope !222
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.038.i.i.i.i.i
  store <4 x float> %i.dl, ptr %i.do, align 16, !tbaa !36, !alias.scope !223
  %i.dp = add i64 %.038.i.i.i.i.i, 4              ; 2 uses
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !17
  %i.dr = icmp ult i64 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i", !llvm.loop !2

"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %.preheader
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.h
  br i1 %exitcond.not.i.i.i, label %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_EESI_jjSO_RKT0_SQ_.exit.i.i", label %.preheader, !llvm.loop !169

"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_EESI_jjSO_RKT0_SQ_.exit.i.i": ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i.i.i", %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread"

bb.d:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %2, align 8           ; 2 uses
  %i.ds = getelementptr i8, ptr %2, i64 8
  %.val11.i.i = load ptr, ptr %i.ds, align 8
  %i.dt = icmp eq i64 %i.h, 0
  br i1 %i.dt, label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolEPS3_RKNS_11OpsinParamsEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %7, ptr %5, align 8, !tbaa !38
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %8, ptr %i.du, align 8, !tbaa !38
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i32 0, ptr %i.dv, align 8, !tbaa !40
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %.preheader.i18.i.i, label %bb.h

.preheader.i18.i.i:                               ; preds = %bb.e, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i21.i.i"
  %indvars.iv.i19.i.i = phi i64 [ %indvars.iv.next.i22.i.i, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i21.i.i" ], [ 0, %bb.e ] ; 3 uses
  %i.dw = load atomic i32, ptr %i.dv seq_cst, align 8
  %.not.i.i20.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i20.i.i, label %bb.f, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i21.i.i"

bb.f:                                             ; preds = %.preheader.i18.i.i
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !65, !nonnull !47, !align !48 ; 5 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !67, !nonnull !47, !align !48 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !68, !nonnull !47, !align !48 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !32
  %i.ed = add i64 %i.ec, %indvars.iv.i19.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !33
  %i.eg = mul i64 %i.ed, %i.ef                    ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ei, i64 64) ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ej, i64 64) ]
  %i.ek = load i64, ptr %i.dy, align 8, !tbaa !35 ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.en, i64 64) ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eo, i64 64) ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ek
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.er, i64 64) ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.es, i64 64) ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ek
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !69, !nonnull !47, !align !48
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !14 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !33
  %i.ez = mul i64 %i.ey, %indvars.iv.i19.i.i      ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 64) ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ez ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fc, i64 64) ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fe, i64 64) ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ez ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ff, i64 64) ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 152
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fh, i64 64) ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ez ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fi, i64 64) ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !17
  %.not.i.i.i24.i.i = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.i24.i.i, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE213OpsinToLinearERKNS_6Image3IfEERKNS_5RectTImEEPS0_PS5_RKNS_11OpsinParamsEE3$_0EENS_6StatusESC_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_E12CallDataFuncEPvjm.exit.i21.i.i", label %.lr.ph.i.i.i25.i.i

.lr.ph.i.i.i25.i.i:                               ; preds = %bb.f
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i25.i.i
  %.038.i.i.i26.i.i = phi i64 [ 0, %.lr.ph.i.i.i25.i.i ], [ %i.ih, %bb.g ] ; 7 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.038.i.i.i26.i.i
  %i.fn = load <4 x float>, ptr %i.fm, align 16, !tbaa !36, !alias.scope !224 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.038.i.i.i26.i.i
  %i.fp = load <4 x float>, ptr %i.fo, align 16, !tbaa !36, !alias.scope !225 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.038.i.i.i26.i.i
  %i.fr = load <4 x float>, ptr %i.fq, align 16, !tbaa !36, !alias.scope !226
  %i.fs = load ptr, ptr %i.fl, align 8, !tbaa !70, !nonnull !47, !align !54 ; 13 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 144
  %i.fu = load <4 x float>, ptr %i.ft, align 4, !tbaa !36, !alias.scope !227, !noalias !228 ; 3 uses
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fw = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fx = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fy = fadd <4 x float> %i.fn, %i.fp
  %i.fz = fsub <4 x float> %i.fp, %i.fn
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 160
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !56, !noalias !228
  %i.gc = insertelement <4 x float> poison, float %i.gb, i64 0
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ge = fsub <4 x float> %i.fy, %i.gd           ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fs, i64 164
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !56, !noalias !228
  %i.gh = insertelement <4 x float> poison, float %i.gg, i64 0
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gj = fsub <4 x float> %i.fz, %i.gi           ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fs, i64 168
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !56, !noalias !228
  %i.gm = insertelement <4 x float> poison, float %i.gl, i64 0
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.go = fsub <4 x float> %i.fr, %i.gn           ; 3 uses
  %i.gp = fmul <4 x float> %i.ge, %i.ge
  %i.gq = fmul <4 x float> %i.gj, %i.gj
  %i.gr = fmul <4 x float> %i.go, %i.go
  %i.gs = fmul <4 x float> %i.ge, %i.gp
  %i.gt = fadd <4 x float> %i.fv, %i.gs           ; 3 uses
  %i.gu = fmul <4 x float> %i.gj, %i.gq
  %i.gv = fadd <4 x float> %i.fw, %i.gu           ; 3 uses
  %i.gw = fmul <4 x float> %i.go, %i.gr
  %i.gx = fadd <4 x float> %i.fx, %i.gw           ; 3 uses
  %i.gy = load <4 x float>, ptr %i.fs, align 4, !tbaa !36, !alias.scope !229, !noalias !228
  %i.gz = fmul <4 x float> %i.gy, %i.gt
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.hb = load <4 x float>, ptr %i.ha, align 4, !tbaa !36, !alias.scope !230, !noalias !228
  %i.hc = fmul <4 x float> %i.hb, %i.gt
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fs, i64 96
  %i.he = load <4 x float>, ptr %i.hd, align 4, !tbaa !36, !alias.scope !231, !noalias !228
  %i.hf = fmul <4 x float> %i.he, %i.gt
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.hh = load <4 x float>, ptr %i.hg, align 4, !tbaa !36, !alias.scope !232, !noalias !228
  %i.hi = fmul <4 x float> %i.hh, %i.gv
  %i.hj = fadd <4 x float> %i.gz, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  %i.hl = load <4 x float>, ptr %i.hk, align 4, !tbaa !36, !alias.scope !233, !noalias !228
  %i.hm = fmul <4 x float> %i.hl, %i.gv
  %i.hn = fadd <4 x float> %i.hc, %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fs, i64 112
  %i.hp = load <4 x float>, ptr %i.ho, align 4, !tbaa !36, !alias.scope !234, !noalias !228
  %i.hq = fmul <4 x float> %i.gv, %i.hp
  %i.hr = fadd <4 x float> %i.hf, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.ht = load <4 x float>, ptr %i.hs, align 4, !tbaa !36, !alias.scope !235, !noalias !228
  %i.hu = fmul <4 x float> %i.gx, %i.ht
end_hunk_0
begin_hunk_1_@_ZN3jxlL13AdaptToXYZD50EffRNSt3__15arrayINS1_IfLm3EEELm3EEE:bb.a
  %i.ae = fptrunc double %i.ad to float           ; 2 uses
  %i.af = extractelement <2 x float> %i.y, i64 0
  %i.ag = fcmp oeq float %i.af, 0.000000e+00
  %i.ah = extractelement <2 x float> %i.y, i64 1
  %i.ai = fcmp oeq float %i.ah, 0.000000e+00
  %or.cond47 = or i1 %i.ag, %i.ai
  %i.aj = fcmp oeq float %i.ae, 0.000000e+00
  %or.cond48 = or i1 %i.aj, %or.cond47
  br i1 %or.cond48, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ak = fdiv <2 x float> <float f0x3F7F0C7F, float f0x3F829D5E>, %i.y ; 2 uses
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.am = shufflevector <4 x float> %i.al, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %i.am, ptr %3, align 16, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.al, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  store <4 x float> %i.ao, ptr %i.an, align 16, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = fdiv float f0x3F5192AD, %i.ae           ; 2 uses
  store float %i.aq, ptr %i.ap, align 16, !tbaa !56
  %i.ar = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ak)
  %i.as = fcmp ueq <2 x float> %i.ar, splat (float +inf)
  %i.at = bitcast <2 x i1> %i.as to i2
  %i.au = icmp ne i2 %i.at, 0
  %i.av = tail call float @llvm.fabs.f32(float %i.aq)
  %i.aw = fcmp ueq float %i.av, +inf
  %or.cond58 = or i1 %i.au, %i.aw
  br i1 %or.cond58, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN3jxl12Mul3x3MatrixINSt3__15arrayINS2_IfLm3EEELm3EEEEEvRKT_S7_RS5_(ptr noundef nonnull align 4 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(36) @_ZN3jxlL9kBradfordE, ptr noundef nonnull align 4 dereferenceable(36) %4) #25
  call void @_ZN3jxl12Mul3x3MatrixINSt3__15arrayINS2_IfLm3EEELm3EEEEEvRKT_S7_RS5_(ptr noundef nonnull align 4 dereferenceable(36) @_ZN3jxlL12kBradfordInvE, ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.042.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.f, %bb.a
  %.sroa.042.3 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ %.sroa.042.0, %bb.f ]
  ret i32 %.sroa.042.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl12Mul3x3MatrixINSt3__15arrayINS2_IfLm3EEELm3EEEEEvRKT_S7_RS5_(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(36) %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load float, ptr %1, align 4, !tbaa !56
  %i.d = fpext float %i.c to double               ; 3 uses
  %i.e = load float, ptr %i.a, align 4, !tbaa !56
  %i.f = fpext float %i.e to double               ; 3 uses
  %i.g = load float, ptr %i.b, align 4, !tbaa !56
  %i.h = fpext float %i.g to double               ; 3 uses
  %i.i = load float, ptr %0, align 4, !tbaa !56
  %i.j = fpext float %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !56
  %i.m = fpext float %i.l to double
  %i.n = fmul double %i.f, %i.m
  %i.o = tail call double @llvm.fmuladd.f64(double %i.j, double %i.d, double %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !56
  %i.r = fpext float %i.q to double
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %i.h, double %i.o)
  %i.t = fptrunc double %i.s to float
  store float %i.t, ptr %2, align 4, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !56
  %i.w = fpext float %i.v to double
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !56
  %i.z = fpext float %i.y to double
  %i.aa = fmul double %i.f, %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.w, double %i.d, double %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !56
  %i.ae = fpext float %i.ad to double
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.h, double %i.ab)
  %i.ag = fptrunc double %i.af to float
  %gep.1 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.ag, ptr %gep.1, align 4, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !56
  %i.aj = fpext float %i.ai to double
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !56
  %i.am = fpext float %i.al to double
  %i.an = fmul double %i.f, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.d, double %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !56
  %i.ar = fpext float %i.aq to double
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.h, double %i.ao)
  %i.at = fptrunc double %i.as to float
  %gep.2 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.at, ptr %gep.2, align 4, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !56
  %i.aw = fpext float %i.av to double             ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !56
  %i.az = fpext float %i.ay to double             ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !56
  %i.bc = fpext float %i.bb to double             ; 3 uses
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = load float, ptr %0, align 4, !tbaa !56
  %i.be = fpext float %i.bd to double
  %i.bf = load float, ptr %i.k, align 4, !tbaa !56
  %i.bg = fpext float %i.bf to double
  %i.bh = fmul double %i.az, %i.bg
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.be, double %i.aw, double %i.bh)
  %i.bj = load float, ptr %i.p, align 4, !tbaa !56
  %i.bk = fpext float %i.bj to double
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bc, double %i.bi)
  %i.bm = fptrunc double %i.bl to float
  store float %i.bm, ptr %invariant.gep.1, align 4, !tbaa !56
  %i.bn = load float, ptr %i.u, align 4, !tbaa !56
  %i.bo = fpext float %i.bn to double
  %i.bp = load float, ptr %i.x, align 4, !tbaa !56
  %i.bq = fpext float %i.bp to double
  %i.br = fmul double %i.az, %i.bq
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.aw, double %i.br)
  %i.bt = load float, ptr %i.ac, align 4, !tbaa !56
  %i.bu = fpext float %i.bt to double
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bc, double %i.bs)
  %i.bw = fptrunc double %i.bv to float
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.bw, ptr %gep.1.1, align 4, !tbaa !56
  %i.bx = load float, ptr %i.ah, align 4, !tbaa !56
  %i.by = fpext float %i.bx to double
  %i.bz = load float, ptr %i.ak, align 4, !tbaa !56
  %i.ca = fpext float %i.bz to double
  %i.cb = fmul double %i.az, %i.ca
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.by, double %i.aw, double %i.cb)
  %i.cd = load float, ptr %i.ap, align 4, !tbaa !56
  %i.ce = fpext float %i.cd to double
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.bc, double %i.cc)
  %i.cg = fptrunc double %i.cf to float
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.cg, ptr %gep.2.1, align 4, !tbaa !56
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !56
  %i.cj = fpext float %i.ci to double             ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !56
  %i.cm = fpext float %i.cl to double             ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.co = load float, ptr %i.cn, align 4, !tbaa !56
  %i.cp = fpext float %i.co to double             ; 3 uses
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cq = load float, ptr %0, align 4, !tbaa !56
  %i.cr = fpext float %i.cq to double
  %i.cs = load float, ptr %i.k, align 4, !tbaa !56
  %i.ct = fpext float %i.cs to double
  %i.cu = fmul double %i.cm, %i.ct
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cj, double %i.cu)
  %i.cw = load float, ptr %i.p, align 4, !tbaa !56
  %i.cx = fpext float %i.cw to double
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cp, double %i.cv)
  %i.cz = fptrunc double %i.cy to float
  store float %i.cz, ptr %invariant.gep.2, align 4, !tbaa !56
  %i.da = load float, ptr %i.u, align 4, !tbaa !56
  %i.db = fpext float %i.da to double
  %i.dc = load float, ptr %i.x, align 4, !tbaa !56
  %i.dd = fpext float %i.dc to double
  %i.de = fmul double %i.cm, %i.dd
  %i.df = tail call double @llvm.fmuladd.f64(double %i.db, double %i.cj, double %i.de)
  %i.dg = load float, ptr %i.ac, align 4, !tbaa !56
  %i.dh = fpext float %i.dg to double
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.cp, double %i.df)
  %i.dj = fptrunc double %i.di to float
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.dj, ptr %gep.1.2, align 4, !tbaa !56
  %i.dk = load float, ptr %i.ah, align 4, !tbaa !56
  %i.dl = fpext float %i.dk to double
  %i.dm = load <2 x float>, ptr %i.ak, align 4, !tbaa !56
  %i.dn = fpext <2 x float> %i.dm to <2 x double> ; 2 uses
  %i.do = extractelement <2 x double> %i.dn, i64 0
  %i.dp = fmul double %i.do, %i.cm
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.cj, double %i.dp)
  %i.dr = extractelement <2 x double> %i.dn, i64 1
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.cp, double %i.dq)
  %i.dt = fptrunc double %i.ds to float
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.dt, ptr %gep.2.2, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN3jxl12Inv3x3MatrixINSt3__15arrayINS2_IfLm3EEELm3EEEEENS_6StatusERT_(ptr noundef nonnull align 4 dereferenceable(36) %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1 = load <2 x float>, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load float, ptr %i.d, align 4, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %2 = load <2 x float>, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = insertelement <2 x float> %2, float %i.h, i64 1
  %i.k = fpext <2 x float> %i.j to <2 x double>   ; 6 uses
  %i.l = load <2 x float>, ptr %i.i, align 4, !tbaa !56
  %i.m = fpext <2 x float> %i.l to <2 x double>   ; 7 uses
  %i.n = load float, ptr %i.c, align 4, !tbaa !56
  %i.o = insertelement <2 x float> %1, float %i.n, i64 1
  %i.p = fpext <2 x float> %i.o to <2 x double>   ; 6 uses
  %i.q = load float, ptr %i.a, align 4, !tbaa !56
  %i.r = insertelement <2 x float> poison, float %i.e, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1
  %i.t = fpext <2 x float> %i.s to <2 x double>   ; 6 uses
  %i.u = extractelement <2 x double> %i.p, i64 1
  %i.v = shufflevector <2 x double> %i.k, <2 x double> %i.t, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.w = fneg <2 x double> %i.v                   ; 2 uses
  %i.x = shufflevector <2 x double> %i.k, <2 x double> %i.t, <2 x i32> <i32 0, i32 3>
  %i.y = fmul <2 x double> %i.x, %i.w
  %i.z = shufflevector <2 x double> %i.p, <2 x double> %i.k, <2 x i32> <i32 0, i32 2>
  %i.aa = shufflevector <2 x double> %i.t, <2 x double> %i.p, <2 x i32> <i32 0, i32 3>
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.aa, <2 x double> %i.y) ; 3 uses
  %i.ac = load float, ptr %0, align 4, !tbaa !56
  %i.ad = fpext float %i.ac to double             ; 5 uses
  %i.ae = fneg double %i.u                        ; 2 uses
  %i.af = shufflevector <2 x double> %i.p, <2 x double> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.ag = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.ah = insertelement <2 x double> %i.ag, double %i.ae, i64 0
  %i.ai = fmul <2 x double> %i.af, %i.ah
  %i.aj = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ak = insertelement <2 x double> %i.aj, double %i.ad, i64 1
  %i.al = shufflevector <2 x double> %i.k, <2 x double> %i.ab, <2 x i32> <i32 1, i32 2>
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.al, <2 x double> %i.ai) ; 3 uses
  %i.an = extractelement <2 x double> %i.m, i64 1
  %i.ao = extractelement <2 x double> %i.am, i64 0
  %i.ap = extractelement <2 x double> %i.am, i64 1
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ao, double %i.ap) ; 2 uses
  %i.ar = tail call noundef double @llvm.fabs.f64(double %i.aq)
  %i.as = fcmp olt double %i.ar, 1.000000e-10
  br i1 %i.as, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.at = shufflevector <2 x double> %i.t, <2 x double> %i.k, <2 x i32> <i32 1, i32 2>
  %i.au = fneg <2 x double> %i.at                 ; 2 uses
  %i.av = fdiv double 1.000000e+00, %i.aq         ; 2 uses
  %i.aw = shufflevector <2 x double> %i.p, <2 x double> %i.v, <2 x i32> <i32 0, i32 3>
  %i.ax = fneg <2 x double> %i.aw
  %i.ay = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.az = fmul <2 x double> %i.ay, %i.ax
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.k, <2 x double> %i.az)
  %i.bb = insertelement <4 x double> poison, double %i.av, i64 0
  %i.bc = shufflevector <4 x double> %i.bb, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bd = shufflevector <2 x double> %i.ab, <2 x double> %i.ba, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  %i.be = fmul <4 x double> %i.bc, %i.bd
  %i.bf = fptrunc <4 x double> %i.be to <4 x float>
  store <4 x float> %i.bf, ptr %0, align 4, !tbaa !56
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = shufflevector <2 x double> %i.m, <2 x double> %i.w, <2 x i32> <i32 0, i32 2>
  %i.bi = insertelement <2 x double> %i.au, double %i.ad, i64 1
  %i.bj = fmul <2 x double> %i.bh, %i.bi
  %i.bk = insertelement <2 x double> %i.ag, double %i.ad, i64 0
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.p, <2 x double> %i.bj) ; 2 uses
  %i.bm = shufflevector <2 x double> %i.m, <2 x double> %i.au, <2 x i32> <i32 1, i32 3>
  %i.bn = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.ad, i64 1
  %i.bp = fmul <2 x double> %i.bm, %i.bo
  %i.bq = insertelement <2 x double> %i.m, double %i.ad, i64 0
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.t, <2 x double> %i.bp)
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.bt = shufflevector <2 x double> %i.bl, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x double> %i.bs, <4 x double> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bv = fmul <4 x double> %i.bc, %i.bu
  %i.bw = fptrunc <4 x double> %i.bv to <4 x float>
  store <4 x float> %i.bw, ptr %i.bg, align 4, !tbaa !56
  %i.bx = extractelement <2 x double> %i.bl, i64 0
  %i.by = fmul double %i.av, %i.bx
  %i.bz = fptrunc double %i.by to float
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.bz, ptr %i.ca, align 4, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.sroa.051.0 = phi i32 [ 1, %bb.a ], [ 0, %.preheader ]
  ret i32 %.sroa.051.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal i32 @_ZN3hwy13FunctionCacheIN3jxl6StatusEJRKNS1_6Image3IfEERKNS1_5RectTImEEPNS1_10ThreadPoolEPS4_RKNS1_11OpsinParamsEEE13ChooseAndCallIXadsoKPFS2_S6_SA_SC_SD_SG_EL_ZNS1_L33OpsinToLinearHighwayDispatchTableEEEEEES2_S6_SA_SC_SD_SG_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(192) %4) #4 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #23 ; 2 uses
  %i.b = tail call noundef i64 @_ZN3hwy16SupportedTargetsEv() #23
  %i.c = shl i64 %i.b, 1
  %i.d = and i64 %i.c, 65534
  %i.e = or disjoint i64 %i.d, 65536
  store atomic i64 %i.e, ptr %i.a seq_cst, align 8
  %i.f = load atomic i64, ptr %i.a seq_cst, align 8
  %i.g = and i64 %i.f, 103425
  %i.h = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.g, i1 true)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL33OpsinToLinearHighwayDispatchTableE, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = tail call i32 %i.j(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(192) %4) #23
  ret i32 %i.k
}

declare noundef i64 @_ZN3hwy16SupportedTargetsEv() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIhNS_9allocatorIhEEE18__assign_with_sizeB8nn180100IPhS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !92     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93   ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e                       ; 3 uses
  %i.k = icmp ugt i64 %3, %i.j
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.j ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %1, i64 %i.j, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !93
  br label %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit

_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.h, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.o = ptrtoint ptr %2 to i64
  %i.p = sub i64 %i.o, %i.m                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %2, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.l, i64 %i.p, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit: ; preds = %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store ptr %i.q, ptr %i.g, align 8, !tbaa !93
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %2 to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %1, i64 %i.t, i1 false)
  br label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit

_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit: ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  store ptr %i.u, ptr %i.g, align 8, !tbaa !93
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.v, align 8, !tbaa !93
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit: ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.b, %bb.h ], [ null, %bb.i ] ; 2 uses
  %i.x = icmp slt i64 %3, 0
  br i1 %i.x, label %bb.j, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit

bb.j:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  unreachable

_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit
  %i.y = ptrtoint ptr %i.w to i64
  %.not.i16 = icmp ult ptr %i.w, inttoptr (i64 4611686018427387903 to ptr)
  %i.z = shl nuw nsw i64 %i.y, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %3)
  %.0.i = select i1 %.not.i16, i64 %.sroa.speculated.i, i64 9223372036854775807 ; 2 uses
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i) #28 ; 5 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !264
  %i.ad = ptrtoint ptr %2 to i64
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i17, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit18, label %bb.k
end_hunk_1
