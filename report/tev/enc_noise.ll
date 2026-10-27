Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_noise?download=true
inline.NumInlined: 551
inline.NumDeleted: 347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.jxl::optimize::Array" = type { [8 x double] }
%"class.std::__1::vector.1" = type { ptr, ptr, %"class.std::__1::__compressed_pair.2" }
%"class.std::__1::__compressed_pair.2" = type { %"struct.std::__1::__compressed_pair_elem.3" }
%"struct.std::__1::__compressed_pair_elem.3" = type { ptr }
%"struct.std::__1::__less.8" = type { i8 }
%"class.jxl::(anonymous namespace)::NoiseHistogram" = type { [256 x i32] }
%"class.std::__1::function" = type { %"class.std::__1::__function::__value_func" }
%"class.std::__1::__function::__value_func" = type { %"struct.std::__1::aligned_storage<24>::type", ptr, [8 x i8] }
%"struct.std::__1::aligned_storage<24>::type" = type { [32 x i8] }

$_ZNSt3__120__throw_length_errorB8nn180100EPKc = comdat any

$_ZSt28__throw_bad_array_new_lengthB8nn180100v = comdat any

$_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNSt3__110__function6__baseIFN3jxl6StatusEvEED2Ev = comdat any

@.str.3 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"length_error was thrown in -fno-exceptions mode with message \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"bad_array_new_length was thrown in -fno-exceptions mode\00", align 1
@"_ZTVNSt3__110__function6__funcIZN3jxl11EncodeNoiseERKNS2_11NoiseParamsEPNS2_9BitWriterENS2_9LayerTypeEPNS2_6AuxOutEE3$_0NS_9allocatorISB_EEFNS2_6StatusEvEEE" = internal unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr null, ptr @_ZNSt3__110__function6__baseIFN3jxl6StatusEvEED2Ev, ptr @"_ZNSt3__110__function6__funcIZN3jxl11EncodeNoiseERKNS2_11NoiseParamsEPNS2_9BitWriterENS2_9LayerTypeEPNS2_6AuxOutEE3$_0NS_9allocatorISB_EEFNS2_6StatusEvEED0Ev", ptr @"_ZNKSt3__110__function6__funcIZN3jxl11EncodeNoiseERKNS2_11NoiseParamsEPNS2_9BitWriterENS2_9LayerTypeEPNS2_6AuxOutEE3$_0NS_9allocatorISB_EEFNS2_6StatusEvEE7__cloneEv", ptr @"_ZNKSt3__110__function6__funcIZN3jxl11EncodeNoiseERKNS2_11NoiseParamsEPNS2_9BitWriterENS2_9LayerTypeEPNS2_6AuxOutEE3$_0NS_9allocatorISB_EEFNS2_6StatusEvEE7__cloneEPNS0_6__baseISF_EE", ptr @"_ZNSt3__110__function6__funcIZN3jxl11EncodeNoiseERKNS2_11NoiseParamsEPNS2_9BitWriterENS2_9LayerTypeEPNS2_6AuxOutEE3$_0NS_9allocatorISB_EEFNS2_6StatusEvEE7destroyEv", ptr @"_ZNSt3__110__function6__funcIZN3jxl11EncodeNoiseERKNS2_11NoiseParamsEPNS2_9BitWriterENS2_9LayerTypeEPNS2_6AuxOutEE3$_0NS_9allocatorISB_EEFNS2_6StatusEvEE18destroy_deallocateEv", ptr @"_ZNSt3__110__function6__funcIZN3jxl11EncodeNoiseERKNS2_11NoiseParamsEPNS2_9BitWriterENS2_9LayerTypeEPNS2_6AuxOutEE3$_0NS_9allocatorISB_EEFNS2_6StatusEvEEclEv"] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl17GetNoiseParameterERKNS_6Image3IfEEPNS_11NoiseParamsEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef captures(none) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.jxl::optimize::Array", align 16 ; 7 uses
  %4 = alloca %"class.jxl::optimize::Array", align 8 ; 7 uses
  %5 = alloca %"class.jxl::optimize::Array", align 16 ; 9 uses
  %6 = alloca %"class.jxl::optimize::Array", align 16 ; 7 uses
  %7 = alloca %"class.std::__1::vector.1", align 8 ; 5 uses
  %8 = alloca %"class.jxl::optimize::Array", align 16 ; 10 uses
  %9 = alloca %"class.jxl::optimize::Array", align 8 ; 7 uses
  %10 = alloca %"struct.std::__1::__less.8", align 1 ; 3 uses
  %11 = alloca %"class.jxl::(anonymous namespace)::NoiseHistogram", align 4 ; 6 uses
  %12 = alloca %"class.std::__1::vector.1", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %11, i8 0, i64 1024, i1 false), !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !59, !noalias !60 ; 2 uses
  %i.c = lshr i32 %i.b, 3
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load i32, ptr %0, align 8, !tbaa !61, !noalias !60
  %i.f = lshr i32 %i.e, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = mul nuw nsw i64 %i.g, %i.d               ; 3 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2EmRKf.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #20, !noalias !60 ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !11, !noalias !60
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !59, !noalias !60
  %i.l = ptrtoint ptr %i.k to i64
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2EmRKf.exit.i

_ZNSt3__16vectorIfNS_9allocatorIfEEEC2EmRKf.exit.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.j, %.lr.ph.preheader.i.i.i ] ; 5 uses
  %.sroa.9.0 = phi i64 [ 0, %bb.a ], [ %i.l, %.lr.ph.preheader.i.i.i ]
  %i.m = phi i32 [ %i.b, %bb.a ], [ %.pre.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.not33.i = icmp ult i32 %i.m, 8
  br i1 %.not33.i, label %vector.ph, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2EmRKf.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre37.i = load i32, ptr %0, align 8, !tbaa !61, !noalias !60
  br label %.preheader.i

.loopexit.loopexit.i:                             ; preds = %_ZN3jxl12_GLOBAL__N_133GetScoreSumsOfAbsoluteDifferencesERKNS_6Image3IfEEiii.exit.i
  %i.q = trunc nsw i64 %indvars.iv.next.i to i32
  %.pre38.i = load i32, ptr %i.a, align 4, !tbaa !59, !noalias !60
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %.loopexit.loopexit.i
  %i.r = phi i32 [ %i.v, %.preheader.i ], [ %.pre38.i, %.loopexit.loopexit.i ] ; 3 uses
  %i.s = phi i32 [ %i.w, %.preheader.i ], [ %i.hy, %.loopexit.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.02434.i, %.preheader.i ], [ %i.q, %.loopexit.loopexit.i ]
  %i.t = add nuw nsw i64 %i.x, 8                  ; 2 uses
  %i.u = zext i32 %i.r to i64
  %.not.i = icmp samesign ugt i64 %i.t, %i.u
  br i1 %.not.i, label %_ZN3jxl12_GLOBAL__N_122GetSADScoresForPatchesERKNS_6Image3IfEEmmPNS0_14NoiseHistogramE.exit.loopexit, label %.preheader.i, !llvm.loop !27

.preheader.i:                                     ; preds = %.loopexit.i, %.preheader.lr.ph.i
  %i.v = phi i32 [ %i.m, %.preheader.lr.ph.i ], [ %i.r, %.loopexit.i ]
  %i.w = phi i32 [ %.pre37.i, %.preheader.lr.ph.i ], [ %i.s, %.loopexit.i ] ; 2 uses
  %i.x = phi i64 [ 8, %.preheader.lr.ph.i ], [ %i.t, %.loopexit.i ] ; 2 uses
  %.02335.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.x, %.loopexit.i ]
  %.02434.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %.not2730.i = icmp ult i32 %i.w, 8
  br i1 %.not2730.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.y = shl nuw i64 %.02335.i, 32
  %sext29.i = ashr exact i64 %i.y, 32             ; 5 uses
  %i.z = or disjoint i64 %sext29.i, 2
  %i.aa = or disjoint i64 %sext29.i, 3
  %i.ab = or disjoint i64 %sext29.i, 4
  %i.ac = or disjoint i64 %sext29.i, 5
  %i.ad = sext i32 %.02434.i to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN3jxl12_GLOBAL__N_133GetScoreSumsOfAbsoluteDifferencesERKNS_6Image3IfEEiii.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN3jxl12_GLOBAL__N_133GetScoreSumsOfAbsoluteDifferencesERKNS_6Image3IfEEiii.exit.i ] ; 2 uses
  %i.ae = phi i64 [ 8, %.lr.ph.i ], [ %i.hx, %_ZN3jxl12_GLOBAL__N_133GetScoreSumsOfAbsoluteDifferencesERKNS_6Image3IfEEiii.exit.i ] ; 2 uses
  %.032.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ae, %_ZN3jxl12_GLOBAL__N_133GetScoreSumsOfAbsoluteDifferencesERKNS_6Image3IfEEiii.exit.i ]
  %i.af = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #20, !noalias !60 ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.af, i8 0, i64 80, i1 false), !tbaa !11, !noalias !60
  %i.ag = load i64, ptr %i.n, align 8, !tbaa !63, !noalias !60 ; 8 uses
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !64, !noalias !60 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !64, !noalias !60 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ai, i64 64) ]
  %i.aj = shl nuw i64 %.032.i, 32
  %sext.i = ashr exact i64 %i.aj, 32              ; 4 uses
  %i.ak = or disjoint i64 %sext.i, 2              ; 8 uses
  %i.al = mul i64 %i.ag, %i.z                     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.am, i64 64) ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.an, i64 64) ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ak
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ak
  %i.aq = or disjoint i64 %sext.i, 3              ; 4 uses
  %i.ar = or disjoint i64 %sext.i, 4              ; 4 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ar
  %i.au = mul i64 %i.ag, %i.aa                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.au ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.av, i64 64) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.au ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aw, i64 64) ]
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ak
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ak
  %i.az = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aq
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.aq
  %i.bb = mul i64 %i.ag, %i.ab                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bb ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bc, i64 64) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bb ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bd, i64 64) ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ak
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ak
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ar
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ar
  %i.bi = mul i64 %i.ag, %i.ac                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bi ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bj, i64 64) ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bi ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 64) ]
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ak
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.ak
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.aq
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.aq
  br label %.preheader62.i.i

.preheader62.i.i:                                 ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2EmRKf.exit.i.i, %bb.b
  %indvars.iv80.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next81.i.i, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2EmRKf.exit.i.i ] ; 2 uses
  %.070.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2EmRKf.exit.i.i ]
  %i.bp = add nuw nsw i64 %indvars.iv80.i.i, %sext29.i ; 4 uses
  %i.bq = add nuw nsw i64 %i.bp, 3
  %i.br = mul i64 %i.bq, %i.ag                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.br ; 3 uses
  %i.bt = mul i64 %i.bp, %i.ag                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bt ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bu, i64 64) ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bt ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bv, i64 64) ]
  %i.bw = add nuw nsw i64 %i.bp, 1
  %i.bx = mul i64 %i.bw, %i.ag                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bx ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.by, i64 64) ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bx ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bz, i64 64) ]
  %i.ca = add nuw nsw i64 %i.bp, 2
  %i.cb = mul i64 %i.ca, %i.ag                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cb ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cc, i64 64) ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.cb ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cd, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bs, i64 64) ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.br ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ce, i64 64) ]
  br label %.preheader61.i.i

.preheader61.i.i:                                 ; preds = %.preheader61.i.i, %.preheader62.i.i
  %indvars.iv75.i.i = phi i64 [ 0, %.preheader62.i.i ], [ %indvars.iv.next76.i.i, %.preheader61.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %.070.i.i, %.preheader62.i.i ], [ %indvars.iv.next.i.i, %.preheader61.i.i ] ; 2 uses
  %i.cf = add nuw nsw i64 %indvars.iv75.i.i, %sext.i ; 10 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.cf
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cf
  %i.ci = add nuw nsw i64 %i.cf, 1                ; 4 uses
  %i.cj = add nuw nsw i64 %i.cf, 2                ; 4 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !11, !noalias !60
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cj
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !11, !noalias !60
  %i.co = load float, ptr %i.as, align 16, !tbaa !11, !noalias !60
  %i.cp = load float, ptr %i.at, align 16, !tbaa !11, !noalias !60
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cf
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !11, !noalias !60
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cf
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !11, !noalias !60
  %i.cu = load float, ptr %i.ax, align 8, !tbaa !11, !noalias !60
  %i.cv = load float, ptr %i.ay, align 8, !tbaa !11, !noalias !60
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ci
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ci
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cf
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cf
  %i.da = load <2 x float>, ptr %i.cg, align 4, !tbaa !11, !noalias !60
  %i.db = load <2 x float>, ptr %i.ch, align 4, !tbaa !11, !noalias !60
  %i.dc = load <2 x float>, ptr %i.ao, align 8, !tbaa !11, !noalias !60
  %i.dd = load <2 x float>, ptr %i.ap, align 8, !tbaa !11, !noalias !60
  %i.de = load <2 x float>, ptr %i.cw, align 4, !tbaa !11, !noalias !60
  %i.df = load <2 x float>, ptr %i.cx, align 4, !tbaa !11, !noalias !60
  %i.dg = load <2 x float>, ptr %i.az, align 4, !tbaa !11, !noalias !60
  %i.dh = load <2 x float>, ptr %i.ba, align 4, !tbaa !11, !noalias !60
  %i.di = load <2 x float>, ptr %i.cy, align 4, !tbaa !11, !noalias !60
  %i.dj = load <2 x float>, ptr %i.cz, align 4, !tbaa !11, !noalias !60
  %i.dk = insertelement <8 x float> poison, float %i.cl, i64 2
  %i.dl = insertelement <8 x float> %i.dk, float %i.cr, i64 3
  %i.dm = shufflevector <2 x float> %i.da, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dn = shufflevector <8 x float> %i.dm, <8 x float> %i.dl, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <2 x float> %i.de, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dp = shufflevector <8 x float> %i.dn, <8 x float> %i.do, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.dq = shufflevector <2 x float> %i.di, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <8 x float> %i.dp, <8 x float> %i.dq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ds = insertelement <8 x float> poison, float %i.cn, i64 2
  %i.dt = insertelement <8 x float> %i.ds, float %i.ct, i64 3
  %i.du = shufflevector <2 x float> %i.db, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <8 x float> %i.du, <8 x float> %i.dt, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = shufflevector <2 x float> %i.df, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dx = shufflevector <8 x float> %i.dv, <8 x float> %i.dw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.dy = shufflevector <2 x float> %i.dj, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dz = shufflevector <8 x float> %i.dx, <8 x float> %i.dy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ea = fadd <8 x float> %i.dr, %i.dz
  %i.eb = fmul <8 x float> %i.ea, splat (float 5.000000e-01)
  %i.ec = load <2 x float>, ptr %i.be, align 8, !tbaa !11, !noalias !60
  %i.ed = load <2 x float>, ptr %i.bf, align 8, !tbaa !11, !noalias !60
  %i.ee = insertelement <8 x float> poison, float %i.co, i64 2
  %i.ef = insertelement <8 x float> %i.ee, float %i.cu, i64 3
  %i.eg = shufflevector <2 x float> %i.dc, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eh = shufflevector <8 x float> %i.eg, <8 x float> %i.ef, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ei = shufflevector <2 x float> %i.dg, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ej = shufflevector <8 x float> %i.eh, <8 x float> %i.ei, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.ek = shufflevector <2 x float> %i.ec, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <8 x float> %i.ej, <8 x float> %i.ek, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.em = insertelement <8 x float> poison, float %i.cp, i64 2
  %i.en = insertelement <8 x float> %i.em, float %i.cv, i64 3
  %i.eo = shufflevector <2 x float> %i.dd, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <8 x float> %i.eo, <8 x float> %i.en, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eq = shufflevector <2 x float> %i.dh, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = shufflevector <8 x float> %i.ep, <8 x float> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.es = shufflevector <2 x float> %i.ed, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <8 x float> %i.er, <8 x float> %i.es, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.eu = fadd <8 x float> %i.el, %i.et
  %i.ev = fmul <8 x float> %i.eu, splat (float 5.000000e-01)
  %i.ew = fsub <8 x float> %i.ev, %i.eb
  %i.ex = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ew)
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cj
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !11, !noalias !60
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cj
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !11, !noalias !60
  %i.fc = load float, ptr %i.bg, align 16, !tbaa !11, !noalias !60
  %i.fd = load float, ptr %i.bh, align 16, !tbaa !11, !noalias !60
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cf
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !11, !noalias !60
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cf
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !11, !noalias !60
  %i.fi = load float, ptr %i.bl, align 8, !tbaa !11, !noalias !60
  %i.fj = load float, ptr %i.bm, align 8, !tbaa !11, !noalias !60
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ci
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ci
  %i.fm = load <2 x float>, ptr %i.fk, align 4, !tbaa !11, !noalias !60
  %i.fn = load <2 x float>, ptr %i.fl, align 4, !tbaa !11, !noalias !60
  %i.fo = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fp = insertelement <4 x float> %i.fo, float %i.ff, i64 1
  %i.fq = shufflevector <2 x float> %i.fm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fr = shufflevector <4 x float> %i.fp, <4 x float> %i.fq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fs = insertelement <4 x float> poison, float %i.fb, i64 0
  %i.ft = insertelement <4 x float> %i.fs, float %i.fh, i64 1
  %i.fu = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fv = shufflevector <4 x float> %i.ft, <4 x float> %i.fu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fw = fadd <4 x float> %i.fr, %i.fv
  %i.fx = fmul <4 x float> %i.fw, splat (float 5.000000e-01)
  %i.fy = load <2 x float>, ptr %i.bn, align 4, !tbaa !11, !noalias !60
  %i.fz = load <2 x float>, ptr %i.bo, align 4, !tbaa !11, !noalias !60
  %i.ga = insertelement <4 x float> poison, float %i.fc, i64 0
  %i.gb = insertelement <4 x float> %i.ga, float %i.fi, i64 1
  %i.gc = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gd = shufflevector <4 x float> %i.gb, <4 x float> %i.gc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ge = insertelement <4 x float> poison, float %i.fd, i64 0
  %i.gf = insertelement <4 x float> %i.ge, float %i.fj, i64 1
  %i.gg = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gh = shufflevector <4 x float> %i.gf, <4 x float> %i.gg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gi = fadd <4 x float> %i.gd, %i.gh
  %i.gj = fmul <4 x float> %i.gi, splat (float 5.000000e-01)
  %i.gk = fsub <4 x float> %i.gj, %i.fx
  %i.gl = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gk) ; 4 uses
  %i.gm = call float @llvm.vector.reduce.fadd.v8f32(float -0.000000e+00, <8 x float> %i.ex)
  %i.gn = extractelement <4 x float> %i.gl, i64 0
  %op.rdx = fadd float %i.gm, %i.gn
  %i.go = extractelement <4 x float> %i.gl, i64 1
  %op.rdx241 = fadd float %op.rdx, %i.go
  %i.gp = extractelement <4 x float> %i.gl, i64 2
  %op.rdx242 = fadd float %op.rdx241, %i.gp
  %i.gq = extractelement <4 x float> %i.gl, i64 3
  %op.rdx243 = fadd float %op.rdx242, %i.gq
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i.i
  store float %op.rdx243, ptr %i.gr, align 4, !tbaa !11, !noalias !60
  %indvars.iv.next76.i.i = add nuw nsw i64 %indvars.iv75.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next76.i.i, 5
  br i1 %exitcond.not.i.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2EmRKf.exit.i.i, label %.preheader61.i.i, !llvm.loop !28

_ZNSt3__16vectorIfNS_9allocatorIfEEEC2EmRKf.exit.i.i: ; preds = %.preheader61.i.i
  %indvars.iv.next81.i.i = add nuw nsw i64 %indvars.iv80.i.i, 1 ; 2 uses
  %exitcond83.not.i.i = icmp eq i64 %indvars.iv.next81.i.i, 4
  br i1 %exitcond83.not.i.i, label %_ZN3jxl12_GLOBAL__N_133GetScoreSumsOfAbsoluteDifferencesERKNS_6Image3IfEEiii.exit.i, label %.preheader62.i.i, !llvm.loop !29

_ZN3jxl12_GLOBAL__N_133GetScoreSumsOfAbsoluteDifferencesERKNS_6Image3IfEEiii.exit.i: ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2EmRKf.exit.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !60
  call void @_ZNSt3__16__sortIRNS_6__lessIffEEPfEEvT0_S5_T_(ptr noundef nonnull %i.af, ptr noundef nonnull %i.gs, ptr noundef nonnull align 1 dereferenceable(1) %10) #21, !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !60
  %i.gt = load float, ptr %i.af, align 4, !tbaa !11, !noalias !60
  %i.gu = fadd float %i.gt, 0.000000e+00
  %.sroa.02.06.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.gv = load float, ptr %.sroa.02.06.i.ptr.1.i.i, align 4, !tbaa !11, !noalias !60
  %i.gw = fadd float %i.gu, %i.gv
  %.sroa.02.06.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gx = load float, ptr %.sroa.02.06.i.ptr.2.i.i, align 4, !tbaa !11, !noalias !60
  %i.gy = fadd float %i.gw, %i.gx
  %.sroa.02.06.i.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.gz = load float, ptr %.sroa.02.06.i.ptr.3.i.i, align 4, !tbaa !11, !noalias !60
  %i.ha = fadd float %i.gy, %i.gz
  %.sroa.02.06.i.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.hb = load float, ptr %.sroa.02.06.i.ptr.4.i.i, align 4, !tbaa !11, !noalias !60
  %i.hc = fadd float %i.ha, %i.hb
  %.sroa.02.06.i.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.hd = load float, ptr %.sroa.02.06.i.ptr.5.i.i, align 4, !tbaa !11, !noalias !60
  %i.he = fadd float %i.hc, %i.hd
  %.sroa.02.06.i.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.hf = load float, ptr %.sroa.02.06.i.ptr.6.i.i, align 4, !tbaa !11, !noalias !60
  %i.hg = fadd float %i.he, %i.hf
  %.sroa.02.06.i.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.hh = load float, ptr %.sroa.02.06.i.ptr.7.i.i, align 4, !tbaa !11, !noalias !60
  %i.hi = fadd float %i.hg, %i.hh
  %.sroa.02.06.i.ptr.8.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.hj = load float, ptr %.sroa.02.06.i.ptr.8.i.i, align 4, !tbaa !11, !noalias !60
  %i.hk = fadd float %i.hi, %i.hj
  %.sroa.02.06.i.ptr.9.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.hl = load float, ptr %.sroa.02.06.i.ptr.9.i.i, align 4, !tbaa !11, !noalias !60
  %i.hm = fadd float %i.hk, %i.hl
  %i.hn = fdiv float %i.hm, 1.000000e+01          ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 80) #22, !noalias !60
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.i
  store float %i.hn, ptr %i.ho, align 4, !tbaa !11, !noalias !60
  %i.hp = fmul float %i.hn, 2.560000e+02
  %i.hq = fptosi float %i.hp to i32
  %i.hr = call i32 @llvm.smax.i32(i32 %i.hq, i32 0)
  %i.hs = call noundef range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.hr, i32 255)
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !54, !noalias !60
  %i.hw = add i32 %i.hv, 1
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !54, !noalias !60
  %i.hx = add nuw nsw i64 %i.ae, 8                ; 2 uses
  %i.hy = load i32, ptr %0, align 8, !tbaa !61, !noalias !60 ; 2 uses
  %i.hz = zext i32 %i.hy to i64
  %.not27.i = icmp samesign ugt i64 %i.hx, %i.hz
  br i1 %.not27.i, label %.loopexit.loopexit.i, label %bb.b, !llvm.loop !30

_ZN3jxl12_GLOBAL__N_122GetSADScoresForPatchesERKNS_6Image3IfEEmmPNS0_14NoiseHistogramE.exit.loopexit: ; preds = %.loopexit.i
  %.pre.i.i.pre = load i32, ptr %11, align 4, !tbaa !54
  br label %vector.ph

vector.ph:                                        ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2EmRKf.exit.i, %_ZN3jxl12_GLOBAL__N_122GetSADScoresForPatchesERKNS_6Image3IfEEmmPNS0_14NoiseHistogramE.exit.loopexit
  %i.ia = phi i32 [ %i.r, %_ZN3jxl12_GLOBAL__N_122GetSADScoresForPatchesERKNS_6Image3IfEEmmPNS0_14NoiseHistogramE.exit.loopexit ], [ %i.m, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2EmRKf.exit.i ] ; 2 uses
  %.pre.i.i = phi i32 [ %.pre.i.i.pre, %_ZN3jxl12_GLOBAL__N_122GetSADScoresForPatchesERKNS_6Image3IfEEmmPNS0_14NoiseHistogramE.exit.loopexit ], [ 0, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2EmRKf.exit.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3jxl17GetNoiseParameterERKNS_6Image3IfEEPNS_11NoiseParamsEf:bb.a
  %i.tl = extractelement <4 x float> %i.tk, i64 0
  %i.tm = call float @llvm.fmuladd.f32(float %i.tl, float 5.000000e-01, float %i.tj)
  %i.tn = extractelement <4 x float> %i.tk, i64 1
  %i.to = call float @llvm.fmuladd.f32(float %i.tn, float 5.000000e-01, float %i.tm)
  %i.tp = extractelement <4 x float> %i.tk, i64 2
  %i.tq = call float @llvm.fmuladd.f32(float %i.tp, float 5.000000e-01, float %i.to)
  %i.tr = extractelement <4 x float> %i.tk, i64 3
  %i.ts = call float @llvm.fmuladd.f32(float %i.tr, float 5.000000e-01, float %i.tq)
  %i.tt = fadd <4 x float> %i.nr, %i.ns           ; 4 uses
  %i.tu = extractelement <4 x float> %i.tt, i64 0
  %i.tv = call float @llvm.fmuladd.f32(float %i.tu, float 5.000000e-01, float %i.ts)
  %i.tw = extractelement <4 x float> %i.tt, i64 1
  %i.tx = call float @llvm.fmuladd.f32(float %i.tw, float 5.000000e-01, float %i.tv)
  %i.ty = extractelement <4 x float> %i.tt, i64 2
  %i.tz = call float @llvm.fmuladd.f32(float %i.ty, float 5.000000e-01, float %i.tx)
  %i.ua = extractelement <4 x float> %i.tt, i64 3
  %i.ub = call float @llvm.fmuladd.f32(float %i.ua, float 5.000000e-01, float %i.tz)
  %i.uc = fmul float %i.ub, 1.562500e-02          ; 2 uses
  %i.ud = fmul float %i.aaw, 1.562500e-02         ; 2 uses
  %i.ue = load ptr, ptr %i.jb, align 8, !tbaa !72, !alias.scope !67 ; 7 uses
  %i.uf = load ptr, ptr %i.jc, align 8, !tbaa !73, !alias.scope !67 ; 3 uses
  %i.ug = icmp ult ptr %i.ue, %i.uf
  br i1 %i.ug, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.ud, ptr %i.ue, align 4, !tbaa !11, !noalias !67
  %.sroa_idx165.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 4
  store float %i.uc, ptr %.sroa_idx165.i, align 4, !tbaa !11, !noalias !67
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  br label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ui = load ptr, ptr %12, align 8, !tbaa !74, !alias.scope !67 ; 5 uses
  %i.uj = ptrtoint ptr %i.ue to i64
  %i.uk = ptrtoint ptr %i.ui to i64               ; 2 uses
  %i.ul = sub i64 %i.uj, %i.uk                    ; 2 uses
  %i.um = ashr exact i64 %i.ul, 3
  %i.un = add nsw i64 %i.um, 1                    ; 2 uses
  %i.uo = icmp ugt i64 %i.un, 2305843009213693951
  br i1 %i.uo, label %bb.h, label %_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #23
  unreachable

_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i: ; preds = %bb.g
  %i.up = ptrtoint ptr %i.uf to i64
  %i.uq = sub i64 %i.up, %i.uk                    ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.uq, 9223372036854775800
  %i.ur = ashr exact i64 %i.uq, 2
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ur, i64 %i.un)
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %.sroa.speculated.i.i.i.i, i64 2305843009213693951 ; 4 uses
  %i.us = icmp ne i64 %.0.i.i.i.i, 0
  call void @llvm.assume(i1 %i.us)
  %i.ut = icmp ugt i64 %.0.i.i.i.i, 2305843009213693951
  br i1 %i.ut, label %bb.i, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #23, !noalias !67
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i: ; preds = %_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i
  %i.uu = shl nuw i64 %.0.i.i.i.i, 3
  %i.uv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uu) #20, !noalias !67 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.ul ; 5 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %.0.i.i.i.i ; 3 uses
  store float %i.ud, ptr %i.uw, align 4, !tbaa !11, !noalias !67
  %.sroa_idx163.i = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  store float %i.uc, ptr %.sroa_idx163.i, align 4, !tbaa !11, !noalias !67
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 8 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ue, %i.ui
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.uz = phi ptr [ %i.vb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.uw, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.va, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ue, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ]
  %i.va = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.vb = getelementptr inbounds i8, ptr %i.uz, i64 -8 ; 3 uses
  %i.vc = load i64, ptr %i.va, align 4, !tbaa !11, !noalias !75
  store i64 %i.vc, ptr %i.vb, align 4, !tbaa !11, !noalias !75
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.va, %i.ui
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !43

_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.uw, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ], [ %i.vb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  store ptr %storemerge.i.i.i, ptr %12, align 8, !tbaa !73, !alias.scope !67
  store ptr %i.ux, ptr %i.jc, align 8, !tbaa !73, !alias.scope !67
  %.not.i4.i.i.i = icmp eq ptr %i.ui, null
  br i1 %.not.i4.i.i.i, label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ui, i64 noundef %i.uq) #22, !noalias !67
  br label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i

_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i: ; preds = %bb.j, %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i, %bb.f
  %i.vd = phi ptr [ %i.uf, %bb.f ], [ %i.ux, %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i ], [ %i.ux, %bb.j ]
  %.0.i.i = phi ptr [ %i.uh, %bb.f ], [ %i.uy, %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i ], [ %i.uy, %bb.j ] ; 2 uses
  store ptr %.0.i.i, ptr %i.jb, align 8, !tbaa !72, !alias.scope !67
  %.pre213.i = load i32, ptr %0, align 8, !tbaa !61, !noalias !67
  br label %bb.k

.preheader170.i:                                  ; preds = %.preheader170.i, %.preheader171.i
  %.0139190.i = phi i64 [ 0, %.preheader171.i ], [ %i.yg, %.preheader170.i ] ; 3 uses
  %.1144188.i = phi float [ %.0143191.i, %.preheader171.i ], [ %i.yf, %.preheader170.i ]
  %i.ve = or disjoint i64 %.0139190.i, %.0149196.i ; 8 uses
  %i.vf = add nsw i64 %.0139190.i, -1
  %i.vg = icmp ult i64 %i.vf, 8
  %..v.i = select i1 %i.vg, i64 -1, i64 1
  %..i = add nsw i64 %..v.i, %i.ve                ; 6 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %., i64 %..i
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !11, !noalias !67
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %.220, i64 %..i
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !11, !noalias !67
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %., i64 %i.ve
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !11, !noalias !67
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.220, i64 %i.ve
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !11, !noalias !67
  %.sink258.i = add nuw nsw i64 %i.ve, 1          ; 6 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.ve
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !11, !noalias !67
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.ve
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !11, !noalias !67
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %.sink258.i
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !11, !noalias !67
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %.sink258.i
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !11, !noalias !67
  %i.vx = insertelement <4 x float> poison, float %i.vi, i64 0
  %i.vy = insertelement <4 x float> %i.vx, float %i.vm, i64 1
  %i.vz = insertelement <4 x float> %i.vy, float %i.vq, i64 2
  %i.wa = insertelement <4 x float> %i.vz, float %i.vu, i64 3
  %i.wb = insertelement <4 x float> poison, float %i.vk, i64 0
  %i.wc = insertelement <4 x float> %i.wb, float %i.vo, i64 1
  %i.wd = insertelement <4 x float> %i.wc, float %i.vs, i64 2
  %i.we = insertelement <4 x float> %i.wd, float %i.vw, i64 3
  %i.wf = fadd <4 x float> %i.wa, %i.we
  %i.wg = fmul <4 x float> %i.wf, splat (float 5.000000e-01) ; 4 uses
  %i.wh = extractelement <4 x float> %i.wg, i64 0
  %i.wi = call float @llvm.fmuladd.f32(float %i.wh, float -2.500000e-01, float 0.000000e+00)
  %i.wj = extractelement <4 x float> %i.wg, i64 1
  %i.wk = fsub float %i.wi, %i.wj
  %i.wl = extractelement <4 x float> %i.wg, i64 3
  %i.wm = call float @llvm.fmuladd.f32(float %i.wl, float -2.500000e-01, float %i.wk)
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %..i
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !11, !noalias !67
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %..i
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !11, !noalias !67
  %i.wr = extractelement <4 x float> %i.wg, i64 2
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %.sink258.i
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !11, !noalias !67
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %.sink258.i
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !11, !noalias !67
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %.sink219, i64 %..i
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !11, !noalias !67
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %.sink217, i64 %..i
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !11, !noalias !67
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.sink219, i64 %i.ve
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !11, !noalias !67
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %.sink217, i64 %i.ve
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !11, !noalias !67
  %i.xe = insertelement <4 x float> poison, float %i.wo, i64 0
  %i.xf = insertelement <4 x float> %i.xe, float %i.wt, i64 1
  %i.xg = insertelement <4 x float> %i.xf, float %i.wx, i64 2
  %i.xh = insertelement <4 x float> %i.xg, float %i.xb, i64 3
  %i.xi = insertelement <4 x float> poison, float %i.wq, i64 0
  %i.xj = insertelement <4 x float> %i.xi, float %i.wv, i64 1
  %i.xk = insertelement <4 x float> %i.xj, float %i.wz, i64 2
  %i.xl = insertelement <4 x float> %i.xk, float %i.xd, i64 3
  %i.xm = fadd <4 x float> %i.xh, %i.xl
  %i.xn = fmul <4 x float> %i.xm, splat (float 5.000000e-01) ; 4 uses
  %i.xo = extractelement <4 x float> %i.xn, i64 0
  %i.xp = fsub float %i.wm, %i.xo
  %i.xq = call float @llvm.fmuladd.f32(float %i.wr, float 5.000000e+00, float %i.xp)
  %i.xr = extractelement <4 x float> %i.xn, i64 1
  %i.xs = fsub float %i.xq, %i.xr
  %i.xt = extractelement <4 x float> %i.xn, i64 2
  %i.xu = call float @llvm.fmuladd.f32(float %i.xt, float -2.500000e-01, float %i.xs)
  %i.xv = extractelement <4 x float> %i.xn, i64 3
  %i.xw = fsub float %i.xu, %i.xv
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %.sink258.i
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !11, !noalias !67
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %.sink258.i
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !11, !noalias !67
  %i.yb = fadd float %i.xy, %i.ya
  %i.yc = fmul float %i.yb, 5.000000e-01
  %i.yd = call float @llvm.fmuladd.f32(float %i.yc, float -2.500000e-01, float %i.xw)
  %i.ye = call noundef float @llvm.fabs.f32(float %i.yd)
  %i.yf = fadd float %.1144188.i, %i.ye           ; 2 uses
  %i.yg = add nuw nsw i64 %.0139190.i, 1          ; 2 uses
  %exitcond208.not.i = icmp eq i64 %i.yg, 7
  br i1 %exitcond208.not.i, label %.peel.begin, label %.preheader170.i, !llvm.loop !44

.peel.begin:                                      ; preds = %.preheader170.i
  %i.yh = add nuw nsw i64 %.0140193.i, 1          ; 2 uses
  %.222 = select i1 %i.nv, i64 -1, i64 1
  %i.yi = add nsw i64 %i.nt, %.222
  %i.yj = mul i64 %i.yi, %i.ke                    ; 4 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.yj ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.yj ; 2 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.yk, i64 %..i.peel
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %..i.peel
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yk, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yl, i64 64) ]
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.kr
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !11, !noalias !67
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.kr
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !11, !noalias !67
  %i.ys = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.yj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ys, i64 64) ]
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %..i.peel
  %i.yu = load float, ptr %i.yt, align 8, !tbaa !11, !noalias !67
  %i.yv = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.yj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yv, i64 64) ]
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %..i.peel
  %i.yx = load float, ptr %i.yw, align 8, !tbaa !11, !noalias !67
  %i.yy = load <2 x float>, ptr %i.ym, align 8, !tbaa !11, !noalias !67
  %i.yz = load <2 x float>, ptr %i.yn, align 8, !tbaa !11, !noalias !67
  %i.za = shufflevector <2 x float> %i.yy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zb = insertelement <4 x float> %i.za, float %i.yp, i64 2
  %i.zc = insertelement <4 x float> %i.zb, float %i.yu, i64 3
  %i.zd = shufflevector <2 x float> %i.yz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ze = insertelement <4 x float> %i.zd, float %i.yr, i64 2
  %i.zf = insertelement <4 x float> %i.ze, float %i.yx, i64 3
  %i.zg = fadd <4 x float> %i.zc, %i.zf
  %i.zh = fmul <4 x float> %i.zg, splat (float 5.000000e-01) ; 4 uses
  %i.zi = extractelement <4 x float> %i.zh, i64 0
  %i.zj = call float @llvm.fmuladd.f32(float %i.zi, float -2.500000e-01, float 0.000000e+00)
  %i.zk = extractelement <4 x float> %i.zh, i64 1
  %i.zl = fsub float %i.zj, %i.zk
  %i.zm = extractelement <4 x float> %i.zh, i64 3
  %i.zn = call float @llvm.fmuladd.f32(float %i.zm, float -2.500000e-01, float %i.zl)
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %..i.peel
  %i.zp = load float, ptr %i.zo, align 8, !tbaa !11, !noalias !67
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %..i.peel
  %i.zr = load float, ptr %i.zq, align 8, !tbaa !11, !noalias !67
  %i.zs = fadd float %i.zp, %i.zr
  %i.zt = fmul float %i.zs, 5.000000e-01          ; 2 uses
  %i.zu = fsub float %i.zn, %i.zt
  %i.zv = extractelement <4 x float> %i.zh, i64 2
  %i.zw = call float @llvm.fmuladd.f32(float %i.zv, float 5.000000e+00, float %i.zu)
  %i.zx = fsub float %i.zw, %i.zt
  %.sink181 = select i1 %i.of, i64 1, i64 -1
  %i.zy = add nsw i64 %i.nt, %.sink181
  %i.zz = mul i64 %i.zy, %i.ke                    ; 4 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.zz ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.zz ; 2 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %..i.peel
  %i.aad = load float, ptr %i.aac, align 8, !tbaa !11, !noalias !67
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %..i.peel
  %i.aaf = load float, ptr %i.aae, align 8, !tbaa !11, !noalias !67
  %i.aag = fadd float %i.aad, %i.aaf
  %i.aah = fmul float %i.aag, 5.000000e-01
  %i.aai = call float @llvm.fmuladd.f32(float %i.aah, float -2.500000e-01, float %i.zx)
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aaa, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aab, i64 64) ]
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.zz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aaj, i64 64) ]
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %..i.peel
  %i.aal = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.zz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aal, i64 64) ]
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %..i.peel
  %i.aan = load <2 x float>, ptr %i.aak, align 8, !tbaa !11, !noalias !67
  %i.aao = load <2 x float>, ptr %i.aam, align 8, !tbaa !11, !noalias !67
  %i.aap = fadd <2 x float> %i.aan, %i.aao
  %i.aaq = fmul <2 x float> %i.aap, splat (float 5.000000e-01) ; 2 uses
  %i.aar = extractelement <2 x float> %i.aaq, i64 1
  %i.aas = fsub float %i.aai, %i.aar
  %i.aat = extractelement <2 x float> %i.aaq, i64 0
  %i.aau = call float @llvm.fmuladd.f32(float %i.aat, float -2.500000e-01, float %i.aas)
  %i.aav = call noundef float @llvm.fabs.f32(float %i.aau)
  %i.aaw = fadd float %i.yf, %i.aav               ; 2 uses
  %exitcond209.not.i = icmp eq i64 %i.yh, 8
  br i1 %exitcond209.not.i, label %bb.e, label %.preheader171.i, !llvm.loop !45

bb.k:                                             ; preds = %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i, %.lr.ph.i12
  %i.aax = phi ptr [ %i.vd, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i ], [ %i.jx, %.lr.ph.i12 ] ; 2 uses
  %i.aay = phi ptr [ %.0.i.i, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i ], [ %i.jy, %.lr.ph.i12 ] ; 2 uses
  %i.aaz = phi i32 [ %.pre213.i, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i ], [ %i.jz, %.lr.ph.i12 ] ; 4 uses
  %i.aba = add i64 %.1152195.i, 1                 ; 2 uses
  %i.abb = add nuw nsw i64 %i.ka, 8               ; 2 uses
  %i.abc = zext i32 %i.aaz to i64
  %.not160.i = icmp samesign ugt i64 %i.abb, %i.abc
  br i1 %.not160.i, label %.loopexit175.loopexit.i, label %.lr.ph.i12, !llvm.loop !46

_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit: ; preds = %.loopexit175.i
  %.pre81 = load ptr, ptr %12, align 8, !tbaa !74 ; 6 uses
  %i.abd = ptrtoint ptr %i.jd to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.abe = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %.not34.i = icmp eq ptr %.pre81, %i.je
  br i1 %.not34.i, label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i, label %.lr.ph.i18

bb.l:                                             ; preds = %.lr.ph.i18
  %i.abf = ptrtoint ptr %i.je to i64
  %i.abg = ptrtoint ptr %.pre81 to i64
  %i.abh = sub i64 %i.abf, %i.abg                 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.abi = icmp slt i64 %i.abh, 0
  br i1 %i.abi, label %bb.m, label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #23
  unreachable

_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i: ; preds = %bb.l
  %i.abj = lshr exact i64 %i.abh, 3
  %i.abk = uitofp nneg i64 %i.abj to float
  %i.abl = fdiv float %i.acs, %i.abk
  %i.abm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abh) #20 ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.abh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.abm, ptr align 4 %.pre81, i64 %i.abh, i1 false)
  %i.abo = fpext float %i.abl to double
  br label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i: ; preds = %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i
  %i.abp = phi ptr [ %i.abe, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ %i.ix, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ %i.abe, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %i.abq = phi ptr [ %.pre81, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ %.pre81, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ] ; 4 uses
  %i.abr = phi ptr [ %i.je, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ %i.je, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %i.abs = phi i64 [ %i.abd, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ 0, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ %i.abd, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %i.abt = phi double [ %i.abo, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ +qnan, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ +qnan, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %i.abu = phi ptr [ %i.abn, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ] ; 6 uses
  %i.abv = phi ptr [ %i.abm, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ] ; 8 uses
  %i.abw = fmul float %2, 1.400000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.abx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aby = insertelement <4 x double> poison, double %i.abt, i64 0
  %i.abz = shufflevector <4 x double> %i.aby, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x double> %i.abz, ptr %8, align 16, !tbaa !13
  %i.aca = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <4 x double> %i.abz, ptr %i.aca, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !77
  %i.acc = call fastcc noundef double @_ZNK3jxl12_GLOBAL__N_112LossFunction7ComputeERKNS_8optimize5ArrayIdLm8EEEPS4_b(ptr %i.abv, ptr %i.abu, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %4, i1 noundef zeroext false) #24
  %i.acd = load <4 x double>, ptr %4, align 8, !tbaa !13, !noalias !77 ; 7 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.acf = load <4 x double>, ptr %i.ace, align 8, !tbaa !13, !noalias !77 ; 7 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ach = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aci = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.acj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ack = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.acl = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.594.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.796.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.998.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.acm = shufflevector <4 x double> %i.acf, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.acn = shufflevector <4 x double> %i.acf, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.aco = shufflevector <4 x double> %i.acd, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.acp = shufflevector <4 x double> %i.acd, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.acq = shufflevector <4 x double> %i.acd, <4 x double> %i.acf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.n

.lr.ph.i18:                                       ; preds = %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit, %.lr.ph.i18
  %.02636.i = phi float [ %i.acs, %.lr.ph.i18 ], [ 0.000000e+00, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %.sroa.031.035.i = phi ptr [ %i.act, %.lr.ph.i18 ], [ %.pre81, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ] ; 2 uses
  %i.acr = load float, ptr %.sroa.031.035.i, align 4, !tbaa !79
  %i.acs = fadd float %.02636.i, %i.acr           ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %.sroa.031.035.i, i64 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.act, %i.je
  br i1 %.not.i19, label %bb.l, label %.lr.ph.i18

bb.n:                                             ; preds = %bb.z, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i
  %i.acu = phi i64 [ 1, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.amd, %bb.z ]
  %.044255.i.i = phi i64 [ 0, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.1231.i.i, %bb.z ] ; 2 uses
  %.045254.i.i = phi i1 [ true, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.aib, %bb.z ]
  %.047253.i.i = phi double [ 1.000000e+00, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.3.i.i, %bb.z ] ; 4 uses
  %.049252.i.i = phi double [ %i.acc, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.150.i.i, %bb.z ] ; 2 uses
  %.051251.i.i = phi double [ undef, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.152.i.i, %bb.z ]
  %.053250.i.i = phi double [ undef, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.255.i.i, %bb.z ]
  %.057249.i.i = phi double [ undef, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.158.i.i, %bb.z ]
  %i.acv = phi <4 x double> [ %i.abz, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ajd, %bb.z ] ; 4 uses
  %i.acw = phi <4 x double> [ %i.acd, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alt, %bb.z ] ; 8 uses
  %i.acx = phi <4 x double> [ %i.acd, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ajf, %bb.z ]
  %i.acy = phi <4 x double> [ %i.acd, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alu, %bb.z ] ; 8 uses
  %i.acz = phi <4 x double> [ %i.abz, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ajh, %bb.z ] ; 4 uses
  %i.ada = phi <4 x double> [ %i.acf, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alv, %bb.z ] ; 8 uses
  %i.adb = phi <4 x double> [ %i.acf, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ajj, %bb.z ]
  %i.adc = phi <4 x double> [ %i.acf, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alw, %bb.z ] ; 8 uses
  %i.add = phi <2 x double> [ %i.acm, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alx, %bb.z ] ; 2 uses
  %i.ade = phi <2 x double> [ %i.acn, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.aly, %bb.z ] ; 2 uses
  %i.adf = phi <2 x double> [ %i.aco, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alz, %bb.z ] ; 2 uses
  %i.adg = phi <2 x double> [ %i.acp, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ama, %bb.z ] ; 2 uses
  %i.adh = phi <4 x double> [ %i.acf, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.amb, %bb.z ] ; 5 uses
  %i.adi = phi <4 x double> [ %i.acd, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.amc, %bb.z ] ; 5 uses
  %i.adj = phi <8 x double> [ %i.acq, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ajr, %bb.z ]
  %i.adk = extractelement <4 x double> %i.adc, i64 3 ; 4 uses
  %i.adl = extractelement <4 x double> %i.adc, i64 2 ; 4 uses
  %i.adm = extractelement <4 x double> %i.adc, i64 1 ; 4 uses
  %i.adn = extractelement <4 x double> %i.adc, i64 0 ; 4 uses
  %i.ado = extractelement <4 x double> %i.ada, i64 3 ; 4 uses
  %i.adp = extractelement <4 x double> %i.ada, i64 2 ; 4 uses
  %i.adq = extractelement <4 x double> %i.ada, i64 1 ; 4 uses
  %i.adr = extractelement <4 x double> %i.ada, i64 0 ; 4 uses
  %i.ads = extractelement <4 x double> %i.acy, i64 3 ; 4 uses
  %i.adt = extractelement <4 x double> %i.acy, i64 2 ; 4 uses
  %i.adu = extractelement <4 x double> %i.acy, i64 1 ; 4 uses
  %i.adv = extractelement <4 x double> %i.acy, i64 0 ; 4 uses
  %i.adw = extractelement <4 x double> %i.acw, i64 3 ; 4 uses
  %i.adx = extractelement <4 x double> %i.acw, i64 2 ; 4 uses
  %i.ady = extractelement <4 x double> %i.acw, i64 1 ; 4 uses
  %i.adz = extractelement <4 x double> %i.acw, i64 0 ; 4 uses
  br i1 %.045254.i.i, label %bb.o, label %._crit_edge.i.i

bb.o:                                             ; preds = %bb.n
  %i.aea = call double @llvm.fmuladd.f64(double %i.adz, double %i.adv, double 0.000000e+00)
  %i.aeb = call double @llvm.fmuladd.f64(double %i.ady, double %i.adu, double %i.aea)
  %i.aec = call double @llvm.fmuladd.f64(double %i.adx, double %i.adt, double %i.aeb)
  %i.aed = call double @llvm.fmuladd.f64(double %i.adw, double %i.ads, double %i.aec)
  %i.aee = call double @llvm.fmuladd.f64(double %i.adr, double %i.adn, double %i.aed)
  %i.aef = call double @llvm.fmuladd.f64(double %i.adq, double %i.adm, double %i.aee)
  %i.aeg = call double @llvm.fmuladd.f64(double %i.adp, double %i.adl, double %i.aef)
  %i.aeh = call noundef double @llvm.fmuladd.f64(double %i.ado, double %i.adk, double %i.aeg) ; 2 uses
  %i.aei = fcmp ugt double %i.aeh, 0.000000e+00
  br i1 %i.aei, label %._crit_edge279.i.i, label %bb.p

._crit_edge279.i.i:                               ; preds = %bb.o
  %i.aej = fneg double %i.aeh
  %.pre280.i.i = call double @llvm.fmuladd.f64(double %i.adz, double %i.adz, double 0.000000e+00)
  %.pre281.i.i = call double @llvm.fmuladd.f64(double %i.ady, double %i.ady, double %.pre280.i.i)
  %.pre283.i.i = call double @llvm.fmuladd.f64(double %i.adx, double %i.adx, double %.pre281.i.i)
  %.pre285.i.i = call double @llvm.fmuladd.f64(double %i.adw, double %i.adw, double %.pre283.i.i)
  %.pre287.i.i = call double @llvm.fmuladd.f64(double %i.adr, double %i.adr, double %.pre285.i.i)
  %.pre289.i.i = call double @llvm.fmuladd.f64(double %i.adq, double %i.adq, double %.pre287.i.i)
  %.pre291.i.i = call double @llvm.fmuladd.f64(double %i.adp, double %i.adp, double %.pre289.i.i)
  %.pre293.i.i = call noundef double @llvm.fmuladd.f64(double %i.ado, double %i.ado, double %.pre291.i.i)
  %i.aek = shufflevector <4 x double> %i.acw, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ael = shufflevector <4 x double> %i.acw, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.aem = shufflevector <4 x double> %i.ada, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.aen = shufflevector <4 x double> %i.ada, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aeo = call double @llvm.fmuladd.f64(double %i.adv, double %i.adv, double 0.000000e+00)
  %i.aep = call double @llvm.fmuladd.f64(double %i.adu, double %i.adu, double %i.aeo)
  %i.aeq = call double @llvm.fmuladd.f64(double %i.adt, double %i.adt, double %i.aep)
  %i.aer = call double @llvm.fmuladd.f64(double %i.ads, double %i.ads, double %i.aeq)
  %i.aes = call double @llvm.fmuladd.f64(double %i.adn, double %i.adn, double %i.aer)
  %i.aet = call double @llvm.fmuladd.f64(double %i.adm, double %i.adm, double %i.aes)
  %i.aeu = call double @llvm.fmuladd.f64(double %i.adl, double %i.adl, double %i.aet)
  %i.aev = call noundef double @llvm.fmuladd.f64(double %i.adk, double %i.adk, double %i.aeu) ; 2 uses
  %i.aew = fneg double %i.aev
  %i.aex = shufflevector <4 x double> %i.acy, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.aey = shufflevector <4 x double> %i.acy, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.aez = shufflevector <4 x double> %i.adc, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.afa = shufflevector <4 x double> %i.adc, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge279.i.i
  %.pre-phi294.i.i = phi double [ %.pre293.i.i, %._crit_edge279.i.i ], [ %i.aev, %bb.p ] ; 2 uses
  %.sroa.0116.1.i.i = phi double [ %i.adz, %._crit_edge279.i.i ], [ %i.adv, %bb.p ]
  %.sroa.14126.1.i.i = phi double [ %i.ady, %._crit_edge279.i.i ], [ %i.adu, %bb.p ]
  %.sroa.23.1.i.i = phi double [ %i.adx, %._crit_edge279.i.i ], [ %i.adt, %bb.p ]
  %.sroa.32.1.i.i = phi double [ %i.adw, %._crit_edge279.i.i ], [ %i.ads, %bb.p ]
end_hunk_1
