inline.NumInlined: 487
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.aiMatrix4x4t = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.aiString = type { i32, [1024 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN12aiMatrix4x4tIfE7InverseEv = comdat any

@.str = private unnamed_addr constant [17 x i8] c"SkeletonMaterial\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"?mat.name\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"$mat.twosided\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN6Assimp19SkeletonMeshBuilderC1EP7aiSceneP6aiNodeb = unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN6Assimp19SkeletonMeshBuilderC2EP7aiSceneP6aiNodeb

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp19SkeletonMeshBuilderC2EP7aiSceneP6aiNodeb(ptr noundef nonnull align 8 dereferenceable(73) initializes((0, 72)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(address) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not20 = icmp eq ptr %2, null
  %spec.select = select i1 %.not20, ptr %i.g, ptr %2 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.a, ptr %i.i, align 8
  invoke void @_ZN6Assimp19SkeletonMeshBuilder14CreateGeometryEPK6aiNode(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %spec.select)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.d, align 8
  %i.j = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #11
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = invoke noundef ptr @_ZN6Assimp19SkeletonMeshBuilder10CreateMeshEv(ptr noundef nonnull align 8 dereferenceable(73) %0)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select, i64 1120
  store i32 1, ptr %i.n, align 8
  %i.o = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #11
          to label %bb.g unwind label %bb.k       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select, i64 1128
  store ptr %i.o, ptr %i.p, align 8
  store i32 0, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.q, align 8
  %i.t = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #11
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %i.v = invoke noundef ptr @_ZN6Assimp19SkeletonMeshBuilder14CreateMaterialEv(ptr nonnull align 8 poison)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.u, align 8
  store ptr %i.v, ptr %i.w, align 8
  br label %bb.o

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #12
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit:           ; preds = %bb.k, %bb.l
  %i.ae = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #12
  br label %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit, %bb.m
  %i.ak = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EED2Ev.exit, %bb.n
  resume { ptr, i32 } %i.x

bb.o:                                             ; preds = %bb.a, %bb.b, %bb.j, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp19SkeletonMeshBuilder14CreateGeometryEPK6aiNode(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.aiMatrix4x4t, align 4        ; 4 uses
  %3 = alloca %class.aiMatrix4x4t, align 4        ; 4 uses
  %4 = alloca %class.aiMatrix4x4t, align 4        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 113 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 6 uses
  %i.h = trunc i64 %i.g to i32                    ; 31 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i8, ptr %i.k, align 8, !range !3
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.bo, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 24 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EE12emplace_backIJjjjEEERS2_DpOT_.exit461
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EE12emplace_backIJjjjEEERS2_DpOT_.exit461 ] ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1040
  %i.w = load float, ptr %i.v, align 4            ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1056
  %i.y = load float, ptr %i.x, align 4            ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 1072
  %i.aa = load float, ptr %i.z, align 4           ; 11 uses
  %i.ab = fmul float %i.y, %i.y
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.ab)
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.aa, float %i.ac) ; 2 uses
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.ad) ; 7 uses
  %i.ae = fcmp olt float %sqrt.i, f0x358637BD
  br i1 %i.ae, label %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EE12emplace_backIJjjjEEERS2_DpOT_.exit461, label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.b
  %i.af = fcmp oeq float %i.ad, 0.000000e+00      ; 2 uses
  %i.ag = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %5 = insertelement <2 x float> poison, float %i.y, i64 0
  %6 = insertelement <2 x float> %5, float %i.aa, i64 1 ; 2 uses
  %7 = insertelement <2 x float> poison, float %i.ag, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fmul <2 x float> %6, %8
  %i.ah = fmul float %i.w, %i.ag
  %10 = insertelement <2 x i1> poison, i1 %i.af, i64 0
  %11 = shufflevector <2 x i1> %10, <2 x i1> poison, <2 x i32> zeroinitializer
  %12 = select <2 x i1> %11, <2 x float> %6, <2 x float> %9 ; 4 uses
  %.sroa.01301.0.a = select i1 %i.af, float %i.w, float %i.ah ; 5 uses
  %13 = extractelement <2 x float> %12, i64 0     ; 4 uses
  %i.ai = fmul float %13, 0.000000e+00
  %i.aj = fadd float %.sroa.01301.0.a, %i.ai
  %14 = extractelement <2 x float> %12, i64 1     ; 3 uses
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %14, float 0.000000e+00, float %i.aj)
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.ak)
  %i.am = fpext float %i.al to double
  %i.an = fcmp ogt double %i.am, f0x3FEFAE147AE147AE ; 2 uses
  %.sroa.01295.0 = select i1 %i.an, float 0.000000e+00, float 1.000000e+00 ; 2 uses
  %.sroa.61297.0 = select i1 %i.an, float 1.000000e+00, float 0.000000e+00 ; 2 uses
  %i.ao = fneg float %.sroa.61297.0
  %15 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %16 = insertelement <2 x float> %15, float %.sroa.01301.0.a, i64 1
  %17 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ao, i64 0
  %18 = fmul <2 x float> %16, %17
  %19 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.01295.0, i64 1
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %19, <2 x float> %18) ; 5 uses
  %i.ap = fneg float %.sroa.01295.0
  %i.aq = fmul float %13, %i.ap
  %i.ar = tail call float @llvm.fmuladd.f32(float %.sroa.01301.0.a, float %.sroa.61297.0, float %i.aq) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %20, %20
  %21 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %22 = extractelement <2 x float> %20, i64 0     ; 2 uses
  %i.as = tail call float @llvm.fmuladd.f32(float %22, float %22, float %21)
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.as) ; 2 uses
  %i.au = fcmp oeq float %i.at, 0.000000e+00
  br i1 %i.au, label %_ZN10aiVector3tIfE9NormalizeEv.exit183, label %_ZN10aiVector3tIfEdVEf.exit.i181

_ZN10aiVector3tIfEdVEf.exit.i181:                 ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %sqrt.i.i182 = tail call noundef float @llvm.sqrt.f32(float %i.at)
  %i.av = fdiv float 1.000000e+00, %sqrt.i.i182   ; 2 uses
  %i.aw = insertelement <2 x float> poison, float %i.av, i64 0
  %23 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = fmul <2 x float> %20, %23
  %i.ax = fmul float %i.ar, %i.av
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit183

_ZN10aiVector3tIfE9NormalizeEv.exit183:           ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i181
  %.sroa.01269.0 = phi <2 x float> [ %20, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %24, %_ZN10aiVector3tIfEdVEf.exit.i181 ] ; 4 uses
  %.sroa.81272.0 = phi float [ %i.ar, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.ax, %_ZN10aiVector3tIfEdVEf.exit.i181 ] ; 4 uses
  %.sroa.01273.4.vec.extract = extractelement <2 x float> %.sroa.01269.0, i64 1 ; 2 uses
  %i.ay = fneg float %13
  %i.az = fmul float %.sroa.81272.0, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %.sroa.01273.4.vec.extract, float %14, float %i.az) ; 4 uses
  %.sroa.01273.0.vec.extract = extractelement <2 x float> %.sroa.01269.0, i64 0 ; 2 uses
  %i.bb = fneg float %14
  %i.bc = fmul float %.sroa.01273.0.vec.extract, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %.sroa.81272.0, float %.sroa.01301.0.a, float %i.bc) ; 4 uses
  %i.be = fneg float %.sroa.01301.0.a
  %i.bf = fmul float %.sroa.01273.4.vec.extract, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %.sroa.01273.0.vec.extract, float %13, float %i.bf) ; 4 uses
  %.sroa.0.0.vec.insert.i184 = insertelement <2 x float> poison, float %i.ba, i64 0
  %.sroa.0.4.vec.insert.i185 = insertelement <2 x float> %.sroa.0.0.vec.insert.i184, float %i.bd, i64 1
  %i.bh = fmul float %i.bd, %i.bd
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.bh)
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bi) ; 2 uses
  %i.bk = fcmp oeq float %i.bj, 0.000000e+00
  br i1 %i.bk, label %_ZN10aiVector3tIfE9NormalizeEv.exit190, label %_ZN10aiVector3tIfEdVEf.exit.i188

_ZN10aiVector3tIfEdVEf.exit.i188:                 ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit183
  %sqrt.i.i189 = tail call noundef float @llvm.sqrt.f32(float %i.bj)
  %i.bl = fdiv float 1.000000e+00, %sqrt.i.i189   ; 3 uses
  %i.bm = fmul float %i.ba, %i.bl
  %.sroa.01248.0.vec.insert = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bn = fmul float %i.bd, %i.bl
  %.sroa.01248.4.vec.insert = insertelement <2 x float> %.sroa.01248.0.vec.insert, float %i.bn, i64 1
  %i.bo = fmul float %i.bg, %i.bl
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit190

_ZN10aiVector3tIfE9NormalizeEv.exit190:           ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit183, %_ZN10aiVector3tIfEdVEf.exit.i188
  %.sroa.01248.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i185, %_ZN10aiVector3tIfE9NormalizeEv.exit183 ], [ %.sroa.01248.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i188 ] ; 2 uses
  %.sroa.81251.0 = phi float [ %i.bg, %_ZN10aiVector3tIfE9NormalizeEv.exit183 ], [ %i.bo, %_ZN10aiVector3tIfEdVEf.exit.i188 ] ; 2 uses
  %i.bp = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.bq = load ptr, ptr %0, align 8               ; 5 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 4 uses
  %i.bu = sdiv exact i64 %i.bt, 12                ; 4 uses
  %i.bv = trunc i64 %i.bu to i32                  ; 13 uses
  %i.bw = fneg <2 x float> %.sroa.01269.0
  %i.bx = fneg float %.sroa.81272.0
  %i.by = fmul float %sqrt.i, %i.bx
  %i.bz = insertelement <2 x float> poison, float %sqrt.i, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cb = fmul <2 x float> %i.ca, %i.bw
  %i.cc = fmul <2 x float> %i.cb, splat (float 1.000000e-01) ; 4 uses
  %i.cd = fmul float %i.by, 1.000000e-01          ; 4 uses
  %i.ce = load ptr, ptr %i.o, align 8
  %.not.i.i = icmp eq ptr %i.bp, %i.ce
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit190
  store <2 x float> %i.cc, ptr %i.bp, align 4
  %.sroa.51245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store float %i.cd, ptr %.sroa.51245.0..sroa_idx, align 4
  %i.cf = load ptr, ptr %i.a, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 2 uses
  store ptr %i.cg, ptr %i.a, align 8
  %.pre = load ptr, ptr %i.o, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit190
  %i.ch = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.ch, label %bb.e, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bu ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.bu
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 768614336404564650)
  %i.cl = select i1 %i.cj, i64 768614336404564650, i64 %i.ck ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cm = mul nuw nsw i64 %i.cl, 12
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #11 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.bt ; 2 uses
  store <2 x float> %i.cc, ptr %i.co, align 4
  %.sroa.51245.0..sroa_idx1246 = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store float %i.cd, ptr %.sroa.51245.0..sroa_idx1246, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bp
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i ], [ %i.cn, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i ], [ %i.bq, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !alias.scope !4
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.bp
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cn, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cq, %.lr.ph.i.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bt) #12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.cn, ptr %0, align 8
  store ptr %i.cr, ptr %i.a, align 8
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %i.cl ; 2 uses
  store ptr %i.cs, ptr %i.o, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.c, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.ct = phi ptr [ %.pre, %bb.c ], [ %i.cs, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 4 uses
  %i.cu = phi ptr [ %i.cg, %bb.c ], [ %i.cr, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 4 uses
  %.not.i = icmp eq ptr %i.cu, %i.ct
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit
  store float %i.w, ptr %i.cu, align 4
  %.sroa.131326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store float %i.y, ptr %.sroa.131326.0..sroa_idx, align 4
  %.sroa.161341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store float %i.aa, ptr %.sroa.161341.0..sroa_idx, align 4
  %i.cv = load ptr, ptr %i.a, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  store ptr %i.cw, ptr %i.a, align 8
  %.pre1475 = load ptr, ptr %i.o, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit
  %i.cx = load ptr, ptr %0, align 8               ; 5 uses
  %i.cy = ptrtoint ptr %i.ct to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 4 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.i, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.dc = sdiv exact i64 %i.da, 12                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i, %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 768614336404564650)
  %i.dg = select i1 %i.de, i64 768614336404564650, i64 %i.df ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.dh = mul nuw nsw i64 %i.dg, 12
  %i.di = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #11 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.da ; 3 uses
  store float %i.w, ptr %i.dj, align 4
  %.sroa.131326.0..sroa_idx1327 = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store float %i.y, ptr %.sroa.131326.0..sroa_idx1327, align 4
  %.sroa.161341.0..sroa_idx1342 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store float %i.aa, ptr %.sroa.161341.0..sroa_idx1342, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.cx, %i.ct
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i ], [ %i.di, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %i.cx, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !10
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dk, %i.ct
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.di, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dl, %.lr.ph.i.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.da) #12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.di, ptr %0, align 8
  store ptr %i.dm, ptr %i.a, align 8
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.di, i64 %i.dg ; 2 uses
  store ptr %i.dn, ptr %i.o, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.g, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.do = phi ptr [ %.pre1475, %bb.g ], [ %i.dn, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.dp = phi ptr [ %i.cw, %bb.g ], [ %i.dm, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.dq = fneg float %.sroa.81251.0
  %i.dr = fmul float %sqrt.i, %i.dq
  %i.ds = fneg <2 x float> %.sroa.01248.0
  %i.dt = fmul <2 x float> %i.ca, %i.ds
  %i.du = fmul <2 x float> %i.dt, splat (float 1.000000e-01) ; 4 uses
  %i.dv = fmul float %i.dr, 1.000000e-01          ; 4 uses
  %.not.i.i215 = icmp eq ptr %i.dp, %i.do
  br i1 %.not.i.i215, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  store <2 x float> %i.du, ptr %i.dp, align 4
  %.sroa.51236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store float %i.dv, ptr %.sroa.51236.0..sroa_idx, align 4
  %i.dw = load ptr, ptr %i.a, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12 ; 2 uses
  store ptr %i.dx, ptr %i.a, align 8
  %.pre1476 = load ptr, ptr %i.o, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit228

bb.l:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
end_hunk_0
