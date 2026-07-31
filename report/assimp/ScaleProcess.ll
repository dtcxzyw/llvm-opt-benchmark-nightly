inline.NumInlined: 69
inline.NumDeleted: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.aiVector3t = type { float, float, float }
%class.aiQuaterniont = type { float, float, float, float }

$_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_ = comdat any

$_ZN6Assimp11BaseProcessD2Ev = comdat any

$_ZN6Assimp12ScaleProcessD0Ev = comdat any

@_ZTVN6Assimp12ScaleProcessE = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp12ScaleProcessE, ptr @_ZN6Assimp11BaseProcessD2Ev, ptr @_ZN6Assimp12ScaleProcessD0Ev, ptr @_ZNK6Assimp12ScaleProcess8IsActiveEj, ptr @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv, ptr @_ZN6Assimp12ScaleProcess15SetupPropertiesEPKNS_8ImporterE, ptr @_ZN6Assimp12ScaleProcess7ExecuteEP7aiScene] }, align 8
@.str = private unnamed_addr constant [20 x i8] c"GLOBAL_SCALE_FACTOR\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"APP_SCALE_FACTOR\00", align 1
@_ZTIN6Assimp12ScaleProcessE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp12ScaleProcessE, ptr @_ZTIN6Assimp11BaseProcessE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp12ScaleProcessE = constant [24 x i8] c"N6Assimp12ScaleProcessE\00", align 1
@_ZTIN6Assimp11BaseProcessE = external constant ptr

@_ZN6Assimp12ScaleProcessC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6Assimp12ScaleProcessC2Ev

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Assimp12ScaleProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12ScaleProcessE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 1.000000e+00, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6Assimp12ScaleProcess8setScaleEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((24, 28)) %0, float noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZNK6Assimp12ScaleProcess8getScaleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load float, ptr %i.a, align 8
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK6Assimp12ScaleProcess8IsActiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = and i32 %1, 134217728
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp12ScaleProcess15SetupPropertiesEPKNS_8ImporterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) initializes((24, 28)) %0, ptr noundef nonnull %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef float @_ZNK6Assimp8Importer16GetPropertyFloatEPKcf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, float noundef 1.000000e+00)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store float %i.a, ptr %i.b, align 8
  %i.c = tail call noundef float @_ZNK6Assimp8Importer16GetPropertyFloatEPKcf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, float noundef 1.000000e+00)
  %i.d = load float, ptr %i.b, align 8
  %i.e = fmul float %i.c, %i.d
  store float %i.e, ptr %i.b, align 8
  ret void
}

declare noundef float @_ZNK6Assimp8Importer16GetPropertyFloatEPKcf(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, float noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp12ScaleProcess7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %class.aiVector3t, align 8          ; 7 uses
  %3 = alloca %class.aiVector3t, align 8          ; 7 uses
  %4 = alloca %class.aiQuaterniont, align 16      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load float, ptr %i.a, align 8
  %i.c = fcmp oeq float %i.b, 1.000000e+00
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.k, label %.preheader157

.preheader157:                                    ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.preheader156, label %.lr.ph164

.lr.ph164:                                        ; preds = %.preheader157
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.c

.preheader156:                                    ; preds = %._crit_edge162, %.preheader157
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %.not182 = icmp eq i32 %i.l, 0
  br i1 %.not182, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %.preheader156
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph164, %._crit_edge162
  %i.t = phi i32 [ %i.i, %.lr.ph164 ], [ %i.aa, %._crit_edge162 ]
  %indvars.iv191 = phi i64 [ 0, %.lr.ph164 ], [ %indvars.iv.next192, %._crit_edge162 ] ; 2 uses
  %i.u = load ptr, ptr %i.j, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv191
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1048 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %.not180 = icmp eq i32 %i.y, 0
  br i1 %.not180, label %._crit_edge162, label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1056
  br label %bb.d

._crit_edge162.loopexit:                          ; preds = %._crit_edge
  %.pre209 = load i32, ptr %i.h, align 8
  br label %._crit_edge162

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit, %bb.c
  %i.aa = phi i32 [ %.pre209, %._crit_edge162.loopexit ], [ %i.t, %bb.c ] ; 2 uses
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp samesign ult i64 %indvars.iv.next192, %i.ab
  br i1 %i.ac, label %bb.c, label %.preheader156, !llvm.loop !3

bb.d:                                             ; preds = %.lr.ph161, %._crit_edge
  %i.ad = phi i32 [ %i.y, %.lr.ph161 ], [ %i.ak, %._crit_edge ]
  %indvars.iv188 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next189, %._crit_edge ] ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv188
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1028 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %.not181 = icmp eq i32 %i.ai, 0
  br i1 %.not181, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1032
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %i.x, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.ak = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ad, %bb.d ] ; 2 uses
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next189, %i.al
  br i1 %i.am, label %bb.d, label %._crit_edge162.loopexit, !llvm.loop !5

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.an = load ptr, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.ap = load float, ptr %i.a, align 8           ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.aq, align 4
  %i.as = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.at, %i.ar
  store <2 x float> %i.au, ptr %i.aq, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = fmul float %i.ap, %i.aw
  store float %i.ax, ptr %i.av, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load i32, ptr %i.ah, align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !6

._crit_edge179:                                   ; preds = %._crit_edge176, %.preheader156
  %i.bb = load ptr, ptr %i.e, align 8
  call void @_ZN6Assimp12ScaleProcess13traverseNodesEP6aiNodej(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.bb, i32 noundef 0)
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph178, %._crit_edge176
  %indvars.iv206 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next207, %._crit_edge176 ] ; 2 uses
  %i.bc = load ptr, ptr %i.m, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv206
  %i.be = load ptr, ptr %i.bd, align 8            ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %.not183 = icmp eq i32 %i.bg, 0
  br i1 %.not183, label %.preheader155, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  br label %bb.g

.preheader155:                                    ; preds = %bb.g, %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 216 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8
  %.not184 = icmp eq i32 %i.bj, 0
  br i1 %.not184, label %.preheader, label %.lr.ph169

.lr.ph169:                                        ; preds = %.preheader155
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 224
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph167, %bb.g
  %indvars.iv194 = phi i64 [ 0, %.lr.ph167 ], [ %indvars.iv.next195, %bb.g ] ; 2 uses
  %i.bl = load ptr, ptr %i.bh, align 8
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %indvars.iv194 ; 3 uses
  %i.bn = load float, ptr %i.a, align 8           ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bm, align 4
  %i.bp = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bq, %i.bo
  store <2 x float> %i.br, ptr %i.bm, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = fmul float %i.bn, %i.bt
  store float %i.bu, ptr %i.bs, align 4
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.bv = load i32, ptr %i.bf, align 4
  %i.bw = zext i32 %i.bv to i64
  %i.bx = icmp samesign ult i64 %indvars.iv.next195, %i.bw
  br i1 %i.bx, label %bb.g, label %.preheader155, !llvm.loop !7

.preheader:                                       ; preds = %bb.h, %.preheader155
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 1264 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %.not185 = icmp eq i32 %i.bz, 0
  br i1 %.not185, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 1272
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph169, %bb.h
  %indvars.iv197 = phi i64 [ 0, %.lr.ph169 ], [ %indvars.iv.next198, %bb.h ] ; 2 uses
  %i.cb = load ptr, ptr %i.bk, align 8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv197
  %i.cd = load ptr, ptr %i.cc, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <2 x float> zeroinitializer, ptr %2, align 8
  store float 0.000000e+00, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store <2 x float> zeroinitializer, ptr %3, align 8
  store float 0.000000e+00, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1056 ; 2 uses
  call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.cf = load float, ptr %i.a, align 8           ; 3 uses
  %i.cg = load float, ptr %2, align 8
  %i.ch = fmul float %i.cf, %i.cg                 ; 4 uses
  %i.ci = load float, ptr %i.n, align 4
  %i.cj = fmul float %i.cf, %i.ci                 ; 4 uses
  %i.ck = load float, ptr %i.o, align 8
  %.sroa.5.0.copyload = load float, ptr %i.q, align 8
  %.scalar = fadd float %i.ch, 0.000000e+00       ; 2 uses
  %i.cl = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cn = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %.sroa.5.0.copyload, i64 2 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 1072
  %i.co = fadd float %i.cj, 0.000000e+00          ; 2 uses
  %i.cp = load <4 x float>, ptr %4, align 16, !noalias !8 ; 6 uses
  %i.cq = load float, ptr %i.s, align 4, !noalias !8 ; 4 uses
  %i.cr = extractelement <4 x float> %i.cp, i64 0 ; 2 uses
  %i.cs = fneg float %i.cr                        ; 2 uses
  %i.ct = fmul float %i.cq, %i.cs
  %i.cu = fmul float %i.cq, %i.cr
  %i.cv = load <2 x float>, ptr %i.r, align 4, !noalias !8 ; 3 uses
  %5 = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %6 = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>, float %i.cq, i64 0 ; 2 uses
  %7 = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float 1.000000e+00>, float %i.cq, i64 0
  %8 = fmul <4 x float> %6, %7                    ; 2 uses
  %9 = extractelement <2 x float> %i.cv, i64 1    ; 4 uses
  %10 = extractelement <4 x float> %8, i64 0
  %i.cw = call float @llvm.fmuladd.f32(float %9, float %9, float %10)
  %11 = extractelement <2 x float> %i.cv, i64 0   ; 2 uses
  %12 = call float @llvm.fmuladd.f32(float %11, float %9, float %i.ct)
  %13 = call float @llvm.fmuladd.f32(float %11, float %9, float %i.cu)
  %14 = fmul float %13, 2.000000e+00              ; 2 uses
  %15 = shufflevector <4 x float> %5, <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %16 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %15, <4 x float> %8)
  %17 = shufflevector <4 x float> %5, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 0>
  %18 = shufflevector <4 x float> %i.cp, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 poison, i32 poison, i32 0>
  %i.cx = insertelement <4 x float> poison, float %i.cs, i64 0
  %19 = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %20 = shufflevector <4 x float> %18, <4 x float> %19, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %21 = fmul <4 x float> %17, %20
  %22 = shufflevector <4 x float> %6, <4 x float> <float -2.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 0, i32 0>
  %i.cy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %22, <4 x float> %21) ; 4 uses
  %i.cz = extractelement <4 x float> %i.cy, i64 1
  %i.da = fmul float %i.cz, 2.000000e+00          ; 2 uses
  %i.db = extractelement <4 x float> %i.cy, i64 2
  %i.dc = extractelement <4 x float> %i.cy, i64 3
  %i.dd = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.de = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.df = fmul <2 x float> %i.dd, %i.de
  %i.dg = extractelement <4 x float> %i.cy, i64 0 ; 2 uses
  %i.dh = fmul float %i.da, 0.000000e+00          ; 2 uses
  %i.di = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dj = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.dk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dj, <2 x float> %i.df)
  %i.dl = fmul <2 x float> %i.dk, <float 1.000000e+00, float 2.000000e+00> ; 2 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 1 ; 2 uses
  %i.dn = fadd float %i.dm, %i.dh
  %i.do = fmul float %i.cf, %i.ck                 ; 3 uses
  %i.dp = call float @llvm.fmuladd.f32(float %i.cw, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.dq = fmul float %12, 2.000000e+00            ; 3 uses
  %i.dr = fmul float %i.db, 2.000000e+00          ; 4 uses
  %i.ds = fmul float %i.dc, 2.000000e+00          ; 4 uses
  %i.dt = fmul float %14, 0.000000e+00            ; 2 uses
  %i.du = fadd float %i.dp, %i.dt
  %i.dv = call float @llvm.fmuladd.f32(float %i.dr, float 0.000000e+00, float %i.du)
  %i.dw = call float @llvm.fmuladd.f32(float %i.ch, float 0.000000e+00, float %i.dv) ; 2 uses
  %i.dx = fmul float %i.dg, 0.000000e+00          ; 2 uses
  %i.dy = fadd float %i.dx, %i.dq
  %i.dz = call float @llvm.fmuladd.f32(float %i.ds, float 0.000000e+00, float %i.dy)
  %i.ea = call float @llvm.fmuladd.f32(float %i.ch, float 0.000000e+00, float %i.dz) ; 2 uses
  %i.eb = call float @llvm.fmuladd.f32(float %i.dp, float 0.000000e+00, float %14)
  %i.ec = call float @llvm.fmuladd.f32(float %i.dr, float 0.000000e+00, float %i.eb)
  %i.ed = call float @llvm.fmuladd.f32(float %i.cj, float 0.000000e+00, float %i.ec) ; 2 uses
  %i.ee = call float @llvm.fmuladd.f32(float %i.dq, float 0.000000e+00, float %i.dg)
  %i.ef = call float @llvm.fmuladd.f32(float %i.ds, float 0.000000e+00, float %i.ee)
  %i.eg = call float @llvm.fmuladd.f32(float %i.cj, float 0.000000e+00, float %i.ef) ; 2 uses
  %i.eh = fmul float %i.ea, 0.000000e+00          ; 2 uses
  %i.ei = call float @llvm.fmuladd.f32(float %i.dp, float 0.000000e+00, float %i.dt) ; 2 uses
  %i.ej = call float @llvm.fmuladd.f32(float %i.dq, float 0.000000e+00, float %i.dx) ; 2 uses
  %i.ek = fadd float %i.dr, %i.ei
  %i.el = call float @llvm.fmuladd.f32(float %i.do, float 0.000000e+00, float %i.ek) ; 2 uses
  %i.em = fadd float %i.ds, %i.ej
  %i.en = insertelement <4 x float> poison, float %i.do, i64 0
  %i.eo = insertelement <4 x float> %i.en, float %i.dr, i64 1
  %i.ep = insertelement <4 x float> %i.eo, float %i.ds, i64 2
  %i.eq = insertelement <4 x float> %i.ep, float %i.dw, i64 3
  %i.er = insertelement <4 x float> poison, float %i.em, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.ei, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.ej, i64 2
  %i.eu = insertelement <4 x float> %i.et, float %i.eh, i64 3
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> zeroinitializer, <4 x float> %i.eu) ; 5 uses
  %i.ew = extractelement <4 x float> %i.ev, i64 1
  %i.ex = fadd float %i.ew, 0.000000e+00
  %i.ey = extractelement <4 x float> %i.ev, i64 2
  %i.ez = fadd float %i.ey, 0.000000e+00
  %i.fa = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.fd = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %i.fe = call float @llvm.fmuladd.f32(float %i.dm, float 0.000000e+00, float %i.da)
  %i.ff = fmul float %i.eg, 0.000000e+00          ; 2 uses
  %i.fg = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fj = call float @llvm.fmuladd.f32(float %i.ed, float 0.000000e+00, float %i.ff) ; 2 uses
  %i.fk = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.dh, i64 1
  %i.fl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> <float -2.000000e+00, float 0.000000e+00>, <2 x float> %i.fk) ; 2 uses
  %i.fm = extractelement <2 x float> %i.fl, i64 0 ; 4 uses
  %i.fn = call float @llvm.fmuladd.f32(float %i.fm, float 0.000000e+00, float %i.dn)
  %i.fo = call float @llvm.fmuladd.f32(float %i.ch, float 0.000000e+00, float %i.fn) ; 2 uses
  %i.fp = call float @llvm.fmuladd.f32(float %i.fm, float 0.000000e+00, float %i.fe)
  %i.fq = call float @llvm.fmuladd.f32(float %i.cj, float 0.000000e+00, float %i.fp) ; 2 uses
  %i.fr = extractelement <2 x float> %i.fl, i64 1 ; 2 uses
  %i.fs = fadd float %i.fm, %i.fr
  %i.ft = call float @llvm.fmuladd.f32(float %i.fm, float 0.000000e+00, float %i.fr)
  %i.fu = fadd float %i.ft, 0.000000e+00
  %i.fv = extractelement <4 x float> %i.ev, i64 3
  %i.fw = call float @llvm.fmuladd.f32(float %i.fo, float 0.000000e+00, float %i.fv)
  %i.fx = fadd float %.scalar, %i.fw
  %i.fy = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.fo, i64 0
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ga = insertelement <4 x float> %i.fd, float %i.fx, i64 3
  %i.gb = call float @llvm.fmuladd.f32(float %i.fq, float 0.000000e+00, float %i.fj)
  %i.gc = fadd float %i.co, %i.gb
  %i.gd = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.fq, i64 0
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gf = insertelement <4 x float> poison, float %i.fj, i64 2
  %i.gg = insertelement <4 x float> %i.gf, float %i.gc, i64 3
  %i.gh = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.co, i64 0
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 1088
  %i.gj = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.do, i64 0 ; 2 uses
  %i.gk = fadd <2 x float> %i.gj, <float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gm = extractelement <4 x float> %i.ev, i64 0 ; 2 uses
  %i.gn = fmul float %i.gm, 0.000000e+00          ; 2 uses
  %i.go = insertelement <2 x float> poison, float %i.el, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gr = call float @llvm.fmuladd.f32(float %i.el, float 0.000000e+00, float %i.gn) ; 2 uses
  %i.gs = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.fs, i64 0
  %i.gt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> zeroinitializer, <2 x float> %i.gs) ; 2 uses
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gv = extractelement <2 x float> %i.gt, i64 0
  %i.gw = call float @llvm.fmuladd.f32(float %i.gv, float 0.000000e+00, float %i.gr)
  %i.gx = extractelement <2 x float> %i.gk, i64 0
  %i.gy = fadd float %i.gx, %i.gw
  %i.gz = insertelement <4 x float> poison, float %i.gr, i64 2
  %i.ha = insertelement <4 x float> %i.gz, float %i.gy, i64 3
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 1104
  %i.hb = load <2 x float>, ptr %3, align 8       ; 3 uses
  %.sroa.4124.0.copyload = load float, ptr %i.p, align 4 ; 3 uses
  %i.hc = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.hd = shufflevector <2 x float> %i.hb, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 2, i32 2>
  %i.he = shufflevector <2 x float> %i.hc, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hf = fmul <4 x float> %i.hd, %i.he
  %i.hg = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hi = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hj, <4 x float> %i.hf)
  %i.hl = fmul float %.sroa.4124.0.copyload, %i.ea
  %i.hm = insertelement <2 x float> %i.hb, float 0.000000e+00, i64 1 ; 3 uses
  %i.hn = insertelement <2 x float> %i.fc, float %i.hl, i64 1
  %i.ho = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.fb, <2 x float> %i.hn)
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hq = fmul float %.sroa.4124.0.copyload, %i.eg
  %i.hr = insertelement <2 x float> %i.fi, float %i.hq, i64 1
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.fh, <2 x float> %i.hr)
  %i.ht = shufflevector <4 x float> %i.hp, <4 x float> %i.ga, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.fz, <4 x float> %i.ht)
  %i.hv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> zeroinitializer, <4 x float> %i.hu)
  %i.hw = shufflevector <2 x float> %i.hs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> %i.gg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.ge, <4 x float> %i.hx)
  %i.hz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> zeroinitializer, <4 x float> %i.hy)
  %i.ia = insertelement <4 x float> poison, float %i.fu, i64 0
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ic = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.ib, <4 x float> %i.hk)
  %i.id = fadd <4 x float> %i.ic, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.hv, ptr %i.ce, align 8
  store <4 x float> %i.hz, ptr %.sroa.15.0..sroa_idx, align 8
  %i.ie = fmul float %.sroa.4124.0.copyload, %i.gm
  %i.if = insertelement <2 x float> %i.gq, float %i.ie, i64 1
  %i.ig = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.gp, <2 x float> %i.if)
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ii = shufflevector <4 x float> %i.ih, <4 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ij = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.gu, <4 x float> %i.ii)
  %i.ik = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> zeroinitializer, <4 x float> %i.ij)
  store <4 x float> %i.ik, ptr %.sroa.27.0..sroa_idx, align 8
  store <4 x float> %i.id, ptr %.sroa.39.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.il = load i32, ptr %i.bi, align 8
  %i.im = zext i32 %i.il to i64
  %i.in = icmp samesign ult i64 %indvars.iv.next198, %i.im
  br i1 %i.in, label %bb.h, label %.preheader, !llvm.loop !11

._crit_edge176:                                   ; preds = %._crit_edge173, %.preheader
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.io = load i32, ptr %i.k, align 8
  %i.ip = zext i32 %i.io to i64
  %i.iq = icmp samesign ult i64 %indvars.iv.next207, %i.ip
  br i1 %i.iq, label %bb.f, label %._crit_edge179, !llvm.loop !12

bb.i:                                             ; preds = %.lr.ph175, %._crit_edge173
  %i.ir = phi i32 [ %i.bz, %.lr.ph175 ], [ %i.iy, %._crit_edge173 ]
  %indvars.iv203 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next204, %._crit_edge173 ] ; 2 uses
  %i.is = load ptr, ptr %i.ca, align 8
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv203
  %i.iu = load ptr, ptr %i.it, align 8            ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 1192 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8
  %.not186 = icmp eq i32 %i.iw, 0
  br i1 %.not186, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 1032
  br label %bb.j

._crit_edge173.loopexit:                          ; preds = %bb.j
  %.pre210 = load i32, ptr %i.by, align 8
  br label %._crit_edge173

._crit_edge173:                                   ; preds = %._crit_edge173.loopexit, %bb.i
  %i.iy = phi i32 [ %.pre210, %._crit_edge173.loopexit ], [ %i.ir, %bb.i ] ; 2 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.iz = zext i32 %i.iy to i64
  %i.ja = icmp samesign ult i64 %indvars.iv.next204, %i.iz
  br i1 %i.ja, label %bb.i, label %._crit_edge176, !llvm.loop !13

bb.j:                                             ; preds = %.lr.ph172, %bb.j
  %indvars.iv200 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next201, %bb.j ] ; 2 uses
  %i.jb = load ptr, ptr %i.ix, align 8
  %i.jc = getelementptr inbounds nuw [12 x i8], ptr %i.jb, i64 %indvars.iv200 ; 3 uses
  %i.jd = load float, ptr %i.a, align 8           ; 2 uses
  %i.je = load <2 x float>, ptr %i.jc, align 4
  %i.jf = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jh = fmul <2 x float> %i.jg, %i.je
  store <2 x float> %i.jh, ptr %i.jc, align 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4
  %i.jk = fmul float %i.jd, %i.jj
  store float %i.jk, ptr %i.ji, align 4
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.jl = load i32, ptr %i.iv, align 8
  %i.jm = zext i32 %i.jl to i64
  %i.jn = icmp samesign ult i64 %indvars.iv.next201, %i.jm
  br i1 %i.jn, label %bb.j, label %._crit_edge173.loopexit, !llvm.loop !14

bb.k:                                             ; preds = %bb.b, %bb.a, %._crit_edge179
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load float, ptr %i.q, align 4            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load float, ptr %i.s, align 4            ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %i.k, align 4            ; 4 uses
  %i.w = load float, ptr %0, align 4              ; 3 uses
  %i.x = load float, ptr %i.l, align 4            ; 4 uses
  %i.y = load float, ptr %i.c, align 4            ; 2 uses
  %i.z = load float, ptr %i.m, align 4            ; 4 uses
  %i.aa = load float, ptr %i.g, align 4           ; 3 uses
  %i.ab = fmul float %i.x, %i.x
  %i.ac = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.y, i64 1 ; 2 uses
  %i.ae = fmul <2 x float> %i.ad, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.ab)
  %i.ag = insertelement <2 x float> %i.p, float %i.w, i64 1 ; 2 uses
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ag, <2 x float> %i.ae)
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.af)
  %i.aj = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.aa, i64 1 ; 2 uses
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ak, <2 x float> %i.ah)
  %sqrt.i31 = tail call noundef float @llvm.sqrt.f32(float %i.ai) ; 3 uses
  %i.am = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.al) ; 4 uses
  %i.an = extractelement <2 x float> %i.am, i64 1
  store float %i.an, ptr %1, align 4
  store float %sqrt.i31, ptr %i.u, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = extractelement <2 x float> %i.am, i64 0
  store float %i.ap, ptr %i.ao, align 4
  %i.aq = load float, ptr %0, align 4             ; 3 uses
  %i.ar = load float, ptr %i.l, align 4           ; 3 uses
  %i.as = fmul float %i.aq, %i.ar                 ; 2 uses
  %i.at = load float, ptr %i.s, align 4           ; 4 uses
  %i.au = fmul float %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aw = load float, ptr %i.av, align 4          ; 6 uses
  %i.ax = load float, ptr %i.h, align 4           ; 5 uses
  %i.ay = fmul float %i.as, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load float, ptr %i.az, align 4          ; 6 uses
  %i.bb = fneg float %i.ba
  %i.bc = fmul float %i.ay, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.au, float %i.aw, float %i.bc)
  %i.be = load float, ptr %i.q, align 4           ; 3 uses
  %i.bf = fmul float %i.aq, %i.be                 ; 2 uses
  %i.bg = fmul float %i.ax, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bi = load float, ptr %i.bh, align 4          ; 6 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bi, float %i.bd)
  %i.bk = load float, ptr %i.m, align 4           ; 4 uses
  %i.bl = fneg float %i.bk                        ; 3 uses
  %i.bm = fmul float %i.bf, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.aw, float %i.bj)
  %i.bo = load float, ptr %i.d, align 4           ; 3 uses
  %i.bp = fmul float %i.aq, %i.bo                 ; 2 uses
  %i.bq = fmul float %i.bk, %i.bp
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.ba, float %i.bn)
  %i.bs = fneg float %i.at                        ; 3 uses
  %i.bt = fmul float %i.bp, %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bi, float %i.br)
  %i.bv = load float, ptr %i.k, align 4           ; 3 uses
  %i.bw = fmul float %i.be, %i.bv                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.by = load float, ptr %i.bx, align 4          ; 6 uses
  %i.bz = fneg float %i.ax                        ; 2 uses
  %i.ca = fmul float %i.bw, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.by, float %i.bu)
  %i.cc = load float, ptr %i.g, align 4           ; 4 uses
  %i.cd = fmul float %i.bw, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.aw, float %i.cb)
  %i.cf = fmul float %i.bo, %i.bv                 ; 2 uses
  %i.cg = fneg float %i.cc                        ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_:bb.a
  %i.di = fmul float %i.cl, %i.dh                 ; 2 uses
  %i.dj = fmul float %i.di, %i.bl
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.ba, float %i.dg)
  %i.dl = fmul float %i.at, %i.di
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.bi, float %i.dk)
  %i.dn = fmul float %i.ar, %i.dh                 ; 2 uses
  %i.do = fmul float %i.dn, %i.bs
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float %i.by, float %i.dm)
  %i.dq = fmul float %i.cc, %i.dn
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.ba, float %i.dp)
  %i.ds = fmul float %i.be, %i.dh                 ; 2 uses
  %i.dt = fmul float %i.ds, %i.cg
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.bi, float %i.dr)
  %i.dv = fmul float %i.bk, %i.ds
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.by, float %i.du)
  %i.dx = fcmp olt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr %1, align 4
  %i.dy = insertelement <2 x float> %i.am, float %.pre, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dz = fneg <2 x float> %i.am                  ; 3 uses
  %i.ea = fneg float %sqrt.i31                    ; 2 uses
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %i.eb, float %i.ea, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %1, align 4
  %i.ec = extractelement <2 x float> %i.dz, i64 0
  store float %i.ec, ptr %i.ao, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.ed = phi float [ %sqrt.i31, %._crit_edge ], [ %i.ea, %bb.b ] ; 2 uses
  %i.ee = phi <2 x float> [ %i.dy, %._crit_edge ], [ %i.dz, %bb.b ] ; 2 uses
  %i.ef = fcmp une <2 x float> %i.ee, zeroinitializer ; 3 uses
  %i.eg = fdiv <2 x float> splat (float 1.000000e+00), %i.ee ; 3 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 1 ; 2 uses
  %i.ei = fmul float %i.w, %i.eh
  %i.ej = extractelement <2 x i1> %i.ef, i64 1    ; 2 uses
  %.sroa.055.0 = select i1 %i.ej, float %i.ei, float %i.w ; 6 uses
  %i.ek = fcmp une float %i.ed, 0.000000e+00      ; 3 uses
  %i.el = fdiv float 1.000000e+00, %i.ed          ; 3 uses
  %i.em = fmul float %i.x, %i.el
  %i.en = fmul float %i.z, %i.el
  %.sroa.22.0 = select i1 %i.ek, float %i.em, float %i.x ; 6 uses
  %.sroa.27.0 = select i1 %i.ek, float %i.en, float %i.z ; 4 uses
  %i.eo = insertelement <2 x float> %i.p, float %i.y, i64 1 ; 2 uses
  %i.ep = fmul <2 x float> %i.eo, %i.eg
  %i.eq = fmul float %i.v, %i.el
  %i.er = fmul float %i.aa, %i.eh
  %.sroa.1260.0 = select i1 %i.ej, float %i.er, float %i.aa ; 4 uses
  %.sroa.17.0 = select i1 %i.ek, float %i.eq, float %i.v ; 4 uses
  %i.es = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.et = fmul float %i.r, %i.es
  %i.eu = fmul float %i.t, %i.es
  %i.ev = select <2 x i1> %i.ef, <2 x float> %i.ep, <2 x float> %i.eo ; 7 uses
  %i.ew = extractelement <2 x i1> %i.ef, i64 0    ; 2 uses
  %.sroa.37.0 = select i1 %i.ew, float %i.et, float %i.r ; 4 uses
  %.sroa.42.0 = select i1 %i.ew, float %i.eu, float %i.t ; 6 uses
  %i.ex = fadd float %.sroa.055.0, %.sroa.22.0
  %i.ey = fadd float %i.ex, %.sroa.42.0           ; 2 uses
  %i.ez = fcmp ogt float %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fa = fadd float %i.ey, 1.000000e+00
  %i.fb = tail call noundef float @sqrtf(float noundef %i.fa) #13
  %i.fc = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %.sroa.17.0, i64 1
  %i.fe = fsub <2 x float> %i.ev, %i.fd
  %.scalar = fmul float %i.fb, 2.000000e+00
  %i.ff = insertelement <2 x float> <float 2.500000e-01, float poison>, float %.scalar, i64 1 ; 2 uses
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.fh = fsub float %.sroa.27.0, %.sroa.37.0
  %i.fi = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fj = insertelement <4 x float> %i.fi, float %i.fh, i64 1
  %i.fk = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fj, <4 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.fm = fmul <4 x float> %i.fl, %i.fg
  %i.fn = fdiv <4 x float> %i.fl, %i.fg
  %i.fo = shufflevector <4 x float> %i.fm, <4 x float> %i.fn, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.fp = fcmp ogt float %.sroa.055.0, %.sroa.22.0
  %i.fq = fcmp ogt float %.sroa.055.0, %.sroa.42.0
  %or.cond.i = and i1 %i.fp, %i.fq
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fr = fadd float %.sroa.055.0, 1.000000e+00
  %i.fs = fsub float %i.fr, %.sroa.22.0
  %i.ft = fsub float %i.fs, %.sroa.42.0
  %i.fu = tail call noundef float @sqrtf(float noundef %i.ft) #13
  %.scalar76 = fmul float %i.fu, 2.000000e+00
  %i.fv = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar76, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.fx = extractelement <2 x float> %i.ev, i64 1
  %i.fy = fadd float %i.fx, %.sroa.17.0
  %i.fz = extractelement <2 x float> %i.ev, i64 0
  %i.ga = fadd float %.sroa.1260.0, %i.fz
  %i.gb = fsub float %.sroa.27.0, %.sroa.37.0
  %i.gc = insertelement <4 x float> poison, float %i.gb, i64 0
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> %i.fw, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ge = insertelement <4 x float> %i.gd, float %i.fy, i64 2
  %i.gf = insertelement <4 x float> %i.ge, float %i.ga, i64 3 ; 2 uses
  %i.gg = fdiv <4 x float> %i.gf, %i.fw
  %i.gh = fmul <4 x float> %i.gf, %i.fw
  %i.gi = shufflevector <4 x float> %i.gg, <4 x float> %i.gh, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.gj = fcmp ogt float %.sroa.22.0, %.sroa.42.0
  br i1 %i.gj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gk = fadd float %.sroa.22.0, 1.000000e+00
  %i.gl = fsub float %i.gk, %.sroa.055.0
  %i.gm = fsub float %i.gl, %.sroa.42.0
  %i.gn = tail call noundef float @sqrtf(float noundef %i.gm) #13
  %i.go = fmul float %i.gn, 2.000000e+00
  %i.gp = extractelement <2 x float> %i.ev, i64 1
  %i.gq = fadd float %i.gp, %.sroa.17.0
  %i.gr = fadd float %.sroa.27.0, %.sroa.37.0
  %i.gs = extractelement <2 x float> %i.ev, i64 0
  %i.gt = fsub float %i.gs, %.sroa.1260.0
  %i.gu = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.gt, i64 0
  %i.gv = insertelement <4 x float> %i.gu, float %i.gq, i64 1
  %i.gw = insertelement <4 x float> %i.gv, float %i.gr, i64 3 ; 2 uses
  %i.gx = insertelement <4 x float> poison, float %i.go, i64 0
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gz = fdiv <4 x float> %i.gw, %i.gy
  %i.ha = fmul <4 x float> %i.gw, %i.gy
  %i.hb = shufflevector <4 x float> %i.gz, <4 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.hc = fadd float %.sroa.42.0, 1.000000e+00
  %i.hd = fsub float %i.hc, %.sroa.055.0
  %i.he = fsub float %i.hd, %.sroa.22.0
  %i.hf = tail call noundef float @sqrtf(float noundef %i.he) #13
  %i.hg = fmul float %i.hf, 2.000000e+00
  %i.hh = extractelement <2 x float> %i.ev, i64 0
  %i.hi = fadd float %.sroa.1260.0, %i.hh
  %i.hj = fadd float %.sroa.27.0, %.sroa.37.0
  %i.hk = extractelement <2 x float> %i.ev, i64 1
  %i.hl = fsub float %i.hk, %.sroa.17.0
  %i.hm = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.hl, i64 0
  %i.hn = insertelement <4 x float> %i.hm, float %i.hi, i64 1
  %i.ho = insertelement <4 x float> %i.hn, float %i.hj, i64 2 ; 2 uses
  %i.hp = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hr = fdiv <4 x float> %i.ho, %i.hq
  %i.hs = fmul <4 x float> %i.ho, %i.hq
  %i.ht = shufflevector <4 x float> %i.hr, <4 x float> %i.hs, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.hu = phi <4 x float> [ %i.fo, %bb.d ], [ %i.gi, %bb.f ], [ %i.hb, %bb.h ], [ %i.ht, %bb.i ]
  store <4 x float> %i.hu, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp12ScaleProcess13traverseNodesEP6aiNodej(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6Assimp12ScaleProcess12applyScalingEP6aiNode(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.d = add i32 %2, 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.07 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.b ]  ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.07
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN6Assimp12ScaleProcess13traverseNodesEP6aiNodej(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.g, i32 noundef %i.d)
  %i.h = add nuw nsw i64 %.07, 1                  ; 2 uses
  %i.i = load i32, ptr %i.a, align 8
  %i.j = zext i32 %i.i to i64
  %i.k = icmp samesign ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !15
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp12ScaleProcess12applyScalingEP6aiNode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %class.aiVector3t, align 8          ; 7 uses
  %3 = alloca %class.aiVector3t, align 8          ; 7 uses
  %4 = alloca %class.aiQuaterniont, align 16      ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <2 x float> zeroinitializer, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <2 x float> zeroinitializer, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1028 ; 2 uses
  call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load float, ptr %i.h, align 8            ; 3 uses
  %i.j = load float, ptr %2, align 8
  %i.k = fmul float %i.i, %i.j                    ; 4 uses
  %i.l = load float, ptr %i.a, align 4
  %i.m = fmul float %i.i, %i.l                    ; 4 uses
  %i.n = load float, ptr %i.b, align 8
  %i.o = load float, ptr %i.d, align 8            ; 2 uses
  %.scalar = fadd float %i.k, 0.000000e+00        ; 2 uses
  %i.p = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.r = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float -0.000000e+00>, float %i.o, i64 2 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1044
  %.scalar99 = fadd float %i.m, 0.000000e+00      ; 2 uses
  %i.s = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar99, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.u = load <4 x float>, ptr %4, align 16, !noalias !16 ; 6 uses
  %i.v = load float, ptr %i.f, align 4, !noalias !16 ; 4 uses
  %i.w = extractelement <4 x float> %i.u, i64 0   ; 2 uses
  %i.x = fneg float %i.w                          ; 2 uses
  %i.y = fmul float %i.v, %i.x
  %i.z = fmul float %i.v, %i.w
  %i.aa = load <2 x float>, ptr %i.e, align 4, !noalias !16 ; 3 uses
  %5 = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %6 = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>, float %i.v, i64 0 ; 2 uses
  %7 = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float 1.000000e+00>, float %i.v, i64 0
  %8 = fmul <4 x float> %6, %7                    ; 2 uses
  %9 = extractelement <2 x float> %i.aa, i64 1    ; 4 uses
  %10 = extractelement <4 x float> %8, i64 0
  %i.ab = call float @llvm.fmuladd.f32(float %9, float %9, float %10)
  %11 = extractelement <2 x float> %i.aa, i64 0   ; 2 uses
  %12 = call float @llvm.fmuladd.f32(float %11, float %9, float %i.y)
  %13 = call float @llvm.fmuladd.f32(float %11, float %9, float %i.z)
  %14 = fmul float %13, 2.000000e+00              ; 2 uses
  %15 = shufflevector <4 x float> %5, <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %16 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %15, <4 x float> %8)
  %17 = shufflevector <4 x float> %5, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 0>
  %18 = shufflevector <4 x float> %i.u, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 poison, i32 poison, i32 0>
  %i.ac = insertelement <4 x float> poison, float %i.x, i64 0
  %19 = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %20 = shufflevector <4 x float> %18, <4 x float> %19, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %21 = fmul <4 x float> %17, %20
  %22 = shufflevector <4 x float> %6, <4 x float> <float -2.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 0, i32 0>
  %i.ad = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %22, <4 x float> %21) ; 4 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 1
  %i.af = fmul float %i.ae, 2.000000e+00          ; 2 uses
  %i.ag = extractelement <4 x float> %i.ad, i64 2
  %i.ah = extractelement <4 x float> %i.ad, i64 3
  %i.ai = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aj = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ak = fmul <2 x float> %i.ai, %i.aj
  %i.al = extractelement <4 x float> %i.ad, i64 0 ; 2 uses
  %i.am = fmul float %i.af, 0.000000e+00          ; 2 uses
  %i.an = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ap = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ao, <2 x float> %i.ak)
  %i.aq = fmul <2 x float> %i.ap, <float 1.000000e+00, float 2.000000e+00> ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 1 ; 2 uses
  %i.as = fadd float %i.ar, %i.am
  %i.at = fmul float %i.i, %i.n                   ; 3 uses
  %i.au = call float @llvm.fmuladd.f32(float %i.ab, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.av = fmul float %12, 2.000000e+00            ; 3 uses
  %i.aw = fmul float %i.ag, 2.000000e+00          ; 4 uses
  %i.ax = fmul float %i.ah, 2.000000e+00          ; 4 uses
  %i.ay = fmul float %14, 0.000000e+00            ; 2 uses
  %i.az = fadd float %i.au, %i.ay
  %i.ba = call float @llvm.fmuladd.f32(float %i.aw, float 0.000000e+00, float %i.az)
  %i.bb = call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.ba) ; 2 uses
  %i.bc = fmul float %i.al, 0.000000e+00          ; 2 uses
  %i.bd = fadd float %i.bc, %i.av
  %i.be = call float @llvm.fmuladd.f32(float %i.ax, float 0.000000e+00, float %i.bd)
  %i.bf = call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.be) ; 2 uses
  %i.bg = call float @llvm.fmuladd.f32(float %i.au, float 0.000000e+00, float %14)
  %i.bh = call float @llvm.fmuladd.f32(float %i.aw, float 0.000000e+00, float %i.bg)
  %i.bi = call float @llvm.fmuladd.f32(float %i.m, float 0.000000e+00, float %i.bh) ; 2 uses
  %i.bj = call float @llvm.fmuladd.f32(float %i.av, float 0.000000e+00, float %i.al)
  %i.bk = call float @llvm.fmuladd.f32(float %i.ax, float 0.000000e+00, float %i.bj)
  %i.bl = call float @llvm.fmuladd.f32(float %i.m, float 0.000000e+00, float %i.bk) ; 2 uses
  %i.bm = fmul float %i.bf, 0.000000e+00          ; 2 uses
  %i.bn = call float @llvm.fmuladd.f32(float %i.au, float 0.000000e+00, float %i.ay) ; 2 uses
  %i.bo = call float @llvm.fmuladd.f32(float %i.av, float 0.000000e+00, float %i.bc) ; 2 uses
  %i.bp = fadd float %i.aw, %i.bn
  %i.bq = call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.bp) ; 2 uses
  %i.br = fadd float %i.ax, %i.bo
  %i.bs = insertelement <4 x float> poison, float %i.at, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.aw, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.ax, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.bb, i64 3
  %i.bw = insertelement <4 x float> poison, float %i.br, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bn, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bo, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.bm, i64 3
  %i.ca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> zeroinitializer, <4 x float> %i.bz) ; 5 uses
  %i.cb = extractelement <4 x float> %i.ca, i64 1
  %i.cc = fadd float %i.cb, 0.000000e+00
  %i.cd = extractelement <4 x float> %i.ca, i64 2
  %i.ce = fadd float %i.cd, 0.000000e+00
  %i.cf = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.ci = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %i.cj = call float @llvm.fmuladd.f32(float %i.ar, float 0.000000e+00, float %i.af)
  %i.ck = fmul float %i.bl, 0.000000e+00          ; 2 uses
  %i.cl = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.co = call float @llvm.fmuladd.f32(float %i.bi, float 0.000000e+00, float %i.ck) ; 2 uses
  %i.cp = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.am, i64 1
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> <float -2.000000e+00, float 0.000000e+00>, <2 x float> %i.cp) ; 2 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 0 ; 4 uses
  %i.cs = call float @llvm.fmuladd.f32(float %i.cr, float 0.000000e+00, float %i.as)
  %i.ct = call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.cs) ; 2 uses
  %i.cu = call float @llvm.fmuladd.f32(float %i.cr, float 0.000000e+00, float %i.cj)
  %i.cv = call float @llvm.fmuladd.f32(float %i.m, float 0.000000e+00, float %i.cu) ; 2 uses
  %i.cw = extractelement <2 x float> %i.cq, i64 1 ; 2 uses
  %i.cx = fadd float %i.cr, %i.cw
  %i.cy = call float @llvm.fmuladd.f32(float %i.cr, float 0.000000e+00, float %i.cw)
  %i.cz = fadd float %i.cy, 0.000000e+00
  %i.da = extractelement <4 x float> %i.ca, i64 3
  %i.db = call float @llvm.fmuladd.f32(float %i.ct, float 0.000000e+00, float %i.da)
  %i.dc = fadd float %.scalar, %i.db
  %i.dd = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ct, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.df = insertelement <4 x float> %i.ci, float %i.dc, i64 3
  %i.dg = call float @llvm.fmuladd.f32(float %i.cv, float 0.000000e+00, float %i.co)
  %i.dh = fadd float %.scalar99, %i.dg
  %i.di = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cv, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dk = insertelement <4 x float> poison, float %i.co, i64 2
  %i.dl = insertelement <4 x float> %i.dk, float %i.dh, i64 3
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1060
  %i.dm = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.at, i64 0 ; 2 uses
  %i.dn = fadd <2 x float> %i.dm, <float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dp = extractelement <4 x float> %i.ca, i64 0 ; 2 uses
  %i.dq = fmul float %i.dp, 0.000000e+00          ; 2 uses
  %i.dr = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.du = call float @llvm.fmuladd.f32(float %i.bq, float 0.000000e+00, float %i.dq) ; 2 uses
  %i.dv = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cx, i64 0
  %i.dw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> zeroinitializer, <2 x float> %i.dv) ; 2 uses
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dy = extractelement <2 x float> %i.dw, i64 0
  %i.dz = call float @llvm.fmuladd.f32(float %i.dy, float 0.000000e+00, float %i.du)
  %i.ea = extractelement <2 x float> %i.dn, i64 0
  %i.eb = fadd float %i.ea, %i.dz
  %i.ec = insertelement <4 x float> poison, float %i.du, i64 2
  %i.ed = insertelement <4 x float> %i.ec, float %i.eb, i64 3
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1076
  %i.ee = load <2 x float>, ptr %3, align 8       ; 3 uses
  %i.ef = load float, ptr %i.c, align 4           ; 3 uses
  %i.eg = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.eh = shufflevector <2 x float> %i.ee, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 2, i32 2>
  %i.ei = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ej = fmul <4 x float> %i.eh, %i.ei
  %i.ek = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.em = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.en, <4 x float> %i.ej)
  %i.ep = fmul float %i.ef, %i.bf
  %i.eq = insertelement <2 x float> %i.ee, float 0.000000e+00, i64 1 ; 3 uses
  %i.er = insertelement <2 x float> %i.ch, float %i.ep, i64 1
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.cg, <2 x float> %i.er)
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eu = fmul float %i.ef, %i.bl
  %i.ev = insertelement <2 x float> %i.cn, float %i.eu, i64 1
  %i.ew = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.cm, <2 x float> %i.ev)
  %i.ex = shufflevector <4 x float> %i.et, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ey = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.de, <4 x float> %i.ex)
  %i.ez = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> zeroinitializer, <4 x float> %i.ey)
  %i.fa = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.dj, <4 x float> %i.fb)
  %i.fd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> zeroinitializer, <4 x float> %i.fc)
  %i.fe = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.o, i64 2
  %i.ff = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.fg, <4 x float> %i.eo)
  %i.fi = fadd <4 x float> %i.fh, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.ez, ptr %i.g, align 4
  store <4 x float> %i.fd, ptr %.sroa.15.0..sroa_idx, align 4
  %i.fj = fmul float %i.ef, %i.dp
  %i.fk = insertelement <2 x float> %i.dt, float %i.fj, i64 1
  %i.fl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.ds, <2 x float> %i.fk)
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.dx, <4 x float> %i.fn)
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> zeroinitializer, <4 x float> %i.fo)
  store <4 x float> %i.fp, ptr %.sroa.27.0..sroa_idx, align 4
  store <4 x float> %i.fi, ptr %.sroa.39.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp12ScaleProcessD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #14
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!10 = distinct !{!10, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = !{!17}
end_hunk_1
