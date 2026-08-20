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
  %2 = alloca %class.aiVector3t, align 8          ; 6 uses
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
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph164, %._crit_edge162
  %i.s = phi i32 [ %i.i, %.lr.ph164 ], [ %i.z, %._crit_edge162 ]
  %indvars.iv191 = phi i64 [ 0, %.lr.ph164 ], [ %indvars.iv.next192, %._crit_edge162 ] ; 2 uses
  %i.t = load ptr, ptr %i.j, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv191
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1048 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %.not180 = icmp eq i32 %i.x, 0
  br i1 %.not180, label %._crit_edge162, label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1056
  br label %bb.d

._crit_edge162.loopexit:                          ; preds = %._crit_edge
  %.pre209 = load i32, ptr %i.h, align 8
  br label %._crit_edge162

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit, %bb.c
  %i.z = phi i32 [ %.pre209, %._crit_edge162.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next192, %i.aa
  br i1 %i.ab, label %bb.c, label %.preheader156, !llvm.loop !3

bb.d:                                             ; preds = %.lr.ph161, %._crit_edge
  %i.ac = phi i32 [ %i.x, %.lr.ph161 ], [ %i.aj, %._crit_edge ]
  %indvars.iv188 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next189, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %i.y, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv188
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1028 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %.not181 = icmp eq i32 %i.ah, 0
  br i1 %.not181, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1032
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %i.w, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.aj = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ac, %bb.d ] ; 2 uses
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next189, %i.ak
  br i1 %i.al, label %bb.d, label %._crit_edge162.loopexit, !llvm.loop !5

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.am = load ptr, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.ao = load float, ptr %i.a, align 8           ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.ap, align 4
  %i.ar = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.as, %i.aq
  store <2 x float> %i.at, ptr %i.ap, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.av = load float, ptr %i.au, align 4
  %i.aw = fmul float %i.ao, %i.av
  store float %i.aw, ptr %i.au, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %i.ag, align 4
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !6

._crit_edge179:                                   ; preds = %._crit_edge176, %.preheader156
  %i.ba = load ptr, ptr %i.e, align 8
  call void @_ZN6Assimp12ScaleProcess13traverseNodesEP6aiNodej(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.ba, i32 noundef 0)
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph178, %._crit_edge176
  %indvars.iv206 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next207, %._crit_edge176 ] ; 2 uses
  %i.bb = load ptr, ptr %i.m, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv206
  %i.bd = load ptr, ptr %i.bc, align 8            ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %.not183 = icmp eq i32 %i.bf, 0
  br i1 %.not183, label %.preheader155, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.g

.preheader155:                                    ; preds = %bb.g, %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 216 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8
  %.not184 = icmp eq i32 %i.bi, 0
  br i1 %.not184, label %.preheader, label %.lr.ph169

.lr.ph169:                                        ; preds = %.preheader155
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 224
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph167, %bb.g
  %indvars.iv194 = phi i64 [ 0, %.lr.ph167 ], [ %indvars.iv.next195, %bb.g ] ; 2 uses
  %i.bk = load ptr, ptr %i.bg, align 8
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.bk, i64 %indvars.iv194 ; 3 uses
  %i.bm = load float, ptr %i.a, align 8           ; 2 uses
  %i.bn = load <2 x float>, ptr %i.bl, align 4
  %i.bo = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bp, %i.bn
  store <2 x float> %i.bq, ptr %i.bl, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = fmul float %i.bm, %i.bs
  store float %i.bt, ptr %i.br, align 4
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.bu = load i32, ptr %i.be, align 4
  %i.bv = zext i32 %i.bu to i64
  %i.bw = icmp samesign ult i64 %indvars.iv.next195, %i.bv
  br i1 %i.bw, label %bb.g, label %.preheader155, !llvm.loop !7

.preheader:                                       ; preds = %bb.h, %.preheader155
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 1264 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8            ; 2 uses
  %.not185 = icmp eq i32 %i.by, 0
  br i1 %.not185, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 1272
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph169, %bb.h
  %indvars.iv197 = phi i64 [ 0, %.lr.ph169 ], [ %indvars.iv.next198, %bb.h ] ; 2 uses
  %i.ca = load ptr, ptr %i.bj, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv197
  %i.cc = load ptr, ptr %i.cb, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <2 x float> zeroinitializer, ptr %2, align 8
  store float 0.000000e+00, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store <2 x float> zeroinitializer, ptr %3, align 8
  store float 0.000000e+00, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1056 ; 2 uses
  call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.ce = load float, ptr %i.n, align 8
  %i.cf = load float, ptr %i.r, align 4, !noalias !8 ; 2 uses
  %i.cg = load <2 x float>, ptr %i.q, align 4, !noalias !8 ; 6 uses
  %i.ch = load <2 x float>, ptr %4, align 16, !noalias !8 ; 4 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0
  %i.cj = fneg float %i.ci                        ; 3 uses
  %i.ck = insertelement <4 x float> poison, float %i.cf, i64 0 ; 2 uses
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cm = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.ck, <4 x i32> <i32 4, i32 poison, i32 2, i32 4>
  %i.co = insertelement <4 x float> %i.cn, float %i.cj, i64 1
  %i.cp = fmul <4 x float> %i.cl, %i.co
  %i.cq = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.cs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.cr, <4 x float> %i.cp) ; 4 uses
  %i.ct = extractelement <4 x float> %i.cs, i64 0
  %i.cu = call float @llvm.fmuladd.f32(float %i.ct, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.cv = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cw = insertelement <2 x float> %i.cv, float %i.cj, i64 1
  %i.cx = fmul <2 x float> %i.ch, %i.cw
  %i.cy = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.cz, <2 x float> %i.cx)
  %i.db = fmul <2 x float> %i.da, <float 1.000000e+00, float 2.000000e+00> ; 2 uses
  %i.dc = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 0, i32 1>
  %i.de = shufflevector <2 x float> %i.ch, <2 x float> %i.cg, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.df = insertelement <4 x float> %i.de, float 1.000000e+00, i64 0
  %i.dg = insertelement <4 x float> %i.df, float %i.cj, i64 1
  %i.dh = fmul <4 x float> %i.dd, %i.dg
  %i.di = shufflevector <4 x float> %i.cs, <4 x float> %i.dc, <4 x i32> <i32 3, i32 4, i32 5, i32 4>
  %i.dj = insertelement <4 x float> %i.cq, float -2.000000e+00, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> %i.cl, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.dk, <4 x float> %i.dh) ; 5 uses
  %i.dm = extractelement <4 x float> %i.dl, i64 2
  %i.dn = fmul float %i.dm, 2.000000e+00          ; 4 uses
  %5 = extractelement <4 x float> %i.dl, i64 3
  %6 = call float @llvm.fmuladd.f32(float %5, float -2.000000e+00, float 1.000000e+00) ; 4 uses
  %7 = extractelement <4 x float> %i.dl, i64 0
  %8 = fmul <2 x float> %i.db, <float 2.000000e+00, float 0.000000e+00> ; 4 uses
  %i.do = extractelement <2 x float> %i.db, i64 1
  %9 = load float, ptr %i.a, align 8              ; 2 uses
  %10 = load <2 x float>, ptr %2, align 8
  %i.dp = fmul float %9, %i.ce                    ; 4 uses
  %11 = shufflevector <4 x float> %i.cs, <4 x float> %i.dl, <4 x i32> <i32 2, i32 poison, i32 poison, i32 5>
  %12 = insertelement <4 x float> poison, float %9, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %14 = shufflevector <4 x float> %11, <4 x float> %13, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %15 = fmul <4 x float> %14, <float 2.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 2 uses
  %16 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %17 = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 2.000000e+00>, <4 x float> %16, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %18 = fmul <4 x float> %15, %17                 ; 5 uses
  %i.dq = extractelement <4 x float> %18, i64 0
  %i.dr = call float @llvm.fmuladd.f32(float %i.cu, float 0.000000e+00, float %i.dq) ; 2 uses
  %19 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.cu, i64 0
  %20 = insertelement <4 x float> %19, float %i.dr, i64 3
  %21 = fadd <4 x float> %20, %18                 ; 4 uses
  %22 = extractelement <4 x float> %21, i64 0
  %i.ds = extractelement <4 x float> %18, i64 3   ; 3 uses
  %23 = call float @llvm.fmuladd.f32(float %i.ds, float 0.000000e+00, float %22)
  %24 = extractelement <4 x float> %18, i64 1     ; 3 uses
  %i.dt = call float @llvm.fmuladd.f32(float %24, float 0.000000e+00, float %23)
  %25 = extractelement <4 x float> %15, i64 0
  %i.du = call float @llvm.fmuladd.f32(float %i.cu, float 0.000000e+00, float %25)
  %26 = call float @llvm.fmuladd.f32(float %i.ds, float 0.000000e+00, float %i.du)
  %27 = extractelement <4 x float> %18, i64 2     ; 3 uses
  %i.dv = call float @llvm.fmuladd.f32(float %27, float 0.000000e+00, float %26)
  %28 = extractelement <4 x float> %21, i64 3
  %i.dw = call float @llvm.fmuladd.f32(float %i.dp, float 0.000000e+00, float %28)
  %i.dx = fadd float %i.dp, 0.000000e+00
  %i.dy = call float @llvm.fmuladd.f32(float %i.ds, float 0.000000e+00, float %i.dr)
  %i.dz = fadd float %i.dy, 0.000000e+00
  %i.ea = extractelement <2 x float> %8, i64 0
  %i.eb = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ec = shufflevector <4 x float> %i.cs, <4 x float> %i.eb, <2 x i32> <i32 1, i32 4>
  %i.ed = fmul <2 x float> %i.ec, <float 2.000000e+00, float 1.000000e+00> ; 3 uses
  %i.ee = shufflevector <4 x float> %i.dl, <4 x float> %i.eb, <2 x i32> <i32 0, i32 5>
  %i.ef = fmul <2 x float> %i.ee, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.eg = extractelement <2 x float> %i.ed, i64 0
  %foldExtExtBinop = fadd <2 x float> %i.ef, %i.ed
  %i.eh = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ei = call float @llvm.fmuladd.f32(float %i.dn, float 0.000000e+00, float %i.eh)
  %i.ej = call float @llvm.fmuladd.f32(float %24, float 0.000000e+00, float %i.ei)
  %shift = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop215 = fadd <2 x float> %8, %shift
  %i.ek = extractelement <2 x float> %foldExtExtBinop215, i64 0
  %i.el = call float @llvm.fmuladd.f32(float %6, float 0.000000e+00, float %i.ek)
  %i.em = call float @llvm.fmuladd.f32(float %24, float 0.000000e+00, float %i.el)
  %i.en = call float @llvm.fmuladd.f32(float %i.eg, float 0.000000e+00, float %7)
  %i.eo = call float @llvm.fmuladd.f32(float %i.dn, float 0.000000e+00, float %i.en)
  %i.ep = call float @llvm.fmuladd.f32(float %27, float 0.000000e+00, float %i.eo)
  %i.eq = call float @llvm.fmuladd.f32(float %i.ea, float 0.000000e+00, float %i.do)
  %i.er = call float @llvm.fmuladd.f32(float %6, float 0.000000e+00, float %i.eq)
  %i.es = call float @llvm.fmuladd.f32(float %27, float 0.000000e+00, float %i.er)
  %i.et = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> zeroinitializer, <2 x float> %i.ef) ; 2 uses
  %i.eu = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %6, i64 1
  %i.ew = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> zeroinitializer, <2 x float> %i.et)
  %i.ex = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.dn, i64 0
  %i.ey = insertelement <4 x float> %i.ex, float %6, i64 1
  %i.ez = shufflevector <2 x float> %i.et, <2 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fa = fadd <4 x float> %i.ey, %i.ez           ; 4 uses
  %i.fb = extractelement <4 x float> %i.fa, i64 0
  %i.fc = call float @llvm.fmuladd.f32(float %i.dp, float 0.000000e+00, float %i.fb)
  %i.fd = extractelement <4 x float> %i.fa, i64 1
  %i.fe = call float @llvm.fmuladd.f32(float %i.dp, float 0.000000e+00, float %i.fd)
  %i.ff = load <2 x float>, ptr %3, align 8       ; 2 uses
  %i.fg = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.fh = shufflevector <2 x float> %i.ff, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 2, i32 2>
  %i.fi = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fj = fmul <4 x float> %i.fh, %i.fi
  %i.fk = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 4 uses
  %i.fm = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.fn, <4 x float> %i.fj)
  %i.fp = insertelement <4 x float> poison, float %i.em, i64 0
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> zeroinitializer
  %29 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 1072
  %i.fr = load <2 x float>, ptr %i.o, align 4     ; 4 uses
  %.sroa.5.0.copyload = load float, ptr %i.p, align 8
  %i.fs = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.ft = shufflevector <2 x float> %i.fr, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 0, i32 2, i32 2>
  %i.fu = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fv = fmul <4 x float> %i.ft, %i.fu
  %i.fw = insertelement <4 x float> poison, float %i.dv, i64 0
  %i.fx = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.fx, <4 x float> %i.fv)
  %i.fz = shufflevector <2 x float> %i.fr, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ga = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.fz, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.gb = insertelement <4 x float> poison, float %i.es, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> %i.gc, <4 x float> %i.fy)
  %i.ge = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> %i.fq, <4 x float> %i.fo)
  %i.gf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %29, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ge)
  %30 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %30, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gd)
  store <4 x float> %i.gf, ptr %i.cd, align 8
  store <4 x float> %i.gg, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 1088
  %i.gh = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.gi = shufflevector <2 x float> %i.fr, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 0, i32 2, i32 2>
  %i.gj = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gk = fmul <4 x float> %i.gi, %i.gj
  %i.gl = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.gm, <4 x float> %i.gk)
  %i.go = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %.sroa.5.0.copyload, i64 2 ; 2 uses
  %i.gp = insertelement <4 x float> poison, float %i.fe, i64 0
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.gq, <4 x float> %i.gn)
  %i.gs = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.gt = shufflevector <4 x float> %i.gs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gt, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gr)
  store <4 x float> %i.gu, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 1104
  %i.gv = shufflevector <2 x float> %i.fr, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 0, i32 2, i32 2>
  %i.gw = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gx = fmul <4 x float> %i.gv, %i.gw
  %i.gy = insertelement <4 x float> poison, float %i.dz, i64 0
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ha = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.gz, <4 x float> %i.gx)
  %i.hb = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.hb, <4 x float> %i.ha)
  %i.hd = fadd <4 x float> %i.hc, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.hd, ptr %.sroa.39.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.he = load i32, ptr %i.bh, align 8
  %i.hf = zext i32 %i.he to i64
  %i.hg = icmp samesign ult i64 %indvars.iv.next198, %i.hf
  br i1 %i.hg, label %bb.h, label %.preheader, !llvm.loop !11

._crit_edge176:                                   ; preds = %._crit_edge173, %.preheader
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.hh = load i32, ptr %i.k, align 8
  %i.hi = zext i32 %i.hh to i64
  %i.hj = icmp samesign ult i64 %indvars.iv.next207, %i.hi
  br i1 %i.hj, label %bb.f, label %._crit_edge179, !llvm.loop !12

bb.i:                                             ; preds = %.lr.ph175, %._crit_edge173
  %i.hk = phi i32 [ %i.by, %.lr.ph175 ], [ %i.hr, %._crit_edge173 ]
  %indvars.iv203 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next204, %._crit_edge173 ] ; 2 uses
  %i.hl = load ptr, ptr %i.bz, align 8
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv203
  %i.hn = load ptr, ptr %i.hm, align 8            ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 1192 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8
  %.not186 = icmp eq i32 %i.hp, 0
  br i1 %.not186, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 1032
  br label %bb.j

._crit_edge173.loopexit:                          ; preds = %bb.j
  %.pre210 = load i32, ptr %i.bx, align 8
  br label %._crit_edge173

._crit_edge173:                                   ; preds = %._crit_edge173.loopexit, %bb.i
  %i.hr = phi i32 [ %.pre210, %._crit_edge173.loopexit ], [ %i.hk, %bb.i ] ; 2 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.hs = zext i32 %i.hr to i64
  %i.ht = icmp samesign ult i64 %indvars.iv.next204, %i.hs
  br i1 %i.ht, label %bb.i, label %._crit_edge176, !llvm.loop !13

bb.j:                                             ; preds = %.lr.ph172, %bb.j
  %indvars.iv200 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next201, %bb.j ] ; 2 uses
  %i.hu = load ptr, ptr %i.hq, align 8
  %i.hv = getelementptr inbounds nuw [12 x i8], ptr %i.hu, i64 %indvars.iv200 ; 3 uses
  %i.hw = load float, ptr %i.a, align 8           ; 2 uses
  %i.hx = load <2 x float>, ptr %i.hv, align 4
  %i.hy = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = fmul <2 x float> %i.hz, %i.hx
  store <2 x float> %i.ia, ptr %i.hv, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4
  %i.id = fmul float %i.hw, %i.ic
  store float %i.id, ptr %i.ib, align 4
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.ie = load i32, ptr %i.ho, align 8
  %i.if = zext i32 %i.ie to i64
  %i.ig = icmp samesign ult i64 %indvars.iv.next201, %i.if
  br i1 %i.ig, label %bb.j, label %._crit_edge173.loopexit, !llvm.loop !14

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
  %i.ch = fmul float %i.cf, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ba, float %i.ce)
  %i.cj = fmul float %i.at, %i.cf
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.by, float %i.ci)
  %i.cl = load float, ptr %i.c, align 4           ; 3 uses
  %i.cm = fmul float %i.bv, %i.cl                 ; 2 uses
  %i.cn = fmul float %i.cm, %i.bs
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.aw, float %i.ck)
  %i.cp = fmul float %i.ax, %i.cm
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ba, float %i.co)
end_hunk_0
begin_hunk_1_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_:bb.a
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
  %.sroa.27.0 = select i1 %i.ek, float %i.en, float %i.z ; 4 uses
  %.sroa.22.0 = select i1 %i.ek, float %i.em, float %i.x ; 6 uses
  %i.eo = fmul float %i.aa, %i.eh
  %i.ep = fmul float %i.v, %i.el
  %.sroa.1260.0 = select i1 %i.ej, float %i.eo, float %i.aa ; 4 uses
  %i.eq = insertelement <2 x float> %i.p, float %i.y, i64 1 ; 2 uses
  %i.er = fmul <2 x float> %i.eq, %i.eg
  %.sroa.17.0 = select i1 %i.ek, float %i.ep, float %i.v ; 4 uses
  %i.es = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.et = fmul float %i.r, %i.es
  %i.eu = fmul float %i.t, %i.es
  %i.ev = extractelement <2 x i1> %i.ef, i64 0    ; 2 uses
  %.sroa.42.0 = select i1 %i.ev, float %i.eu, float %i.t ; 6 uses
  %.sroa.37.0 = select i1 %i.ev, float %i.et, float %i.r ; 4 uses
  %i.ew = select <2 x i1> %i.ef, <2 x float> %i.er, <2 x float> %i.eq ; 6 uses
  %i.ex = fadd float %.sroa.055.0, %.sroa.22.0
  %i.ey = fadd float %i.ex, %.sroa.42.0           ; 2 uses
  %i.ez = fcmp ogt float %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fa = fadd float %i.ey, 1.000000e+00
  %i.fb = tail call noundef float @sqrtf(float noundef %i.fa) #13
  %i.fc = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %.sroa.17.0, i64 1
  %i.fe = fsub <2 x float> %i.ew, %i.fd
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
  %i.fx = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %.sroa.17.0, i64 1
  %i.fz = fadd <2 x float> %i.ew, %i.fy
  %i.ga = fsub float %.sroa.27.0, %.sroa.37.0
  %i.gb = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.fw, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gd = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ge = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.gf = fdiv <4 x float> %i.ge, %i.fw
  %i.gg = fmul <4 x float> %i.ge, %i.fw
  %i.gh = shufflevector <4 x float> %i.gf, <4 x float> %i.gg, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.gi = fcmp ogt float %.sroa.22.0, %.sroa.42.0
  br i1 %i.gi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gj = fadd float %.sroa.22.0, 1.000000e+00
  %i.gk = fsub float %i.gj, %.sroa.055.0
  %i.gl = fsub float %i.gk, %.sroa.42.0
  %i.gm = tail call noundef float @sqrtf(float noundef %i.gl) #13
  %i.gn = fmul float %i.gm, 2.000000e+00
  %i.go = extractelement <2 x float> %i.ew, i64 1
  %i.gp = fadd float %i.go, %.sroa.17.0
  %i.gq = fadd float %.sroa.27.0, %.sroa.37.0
  %i.gr = extractelement <2 x float> %i.ew, i64 0
  %i.gs = fsub float %i.gr, %.sroa.1260.0
  %i.gt = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.gs, i64 0
  %i.gu = insertelement <4 x float> %i.gt, float %i.gp, i64 1
  %i.gv = insertelement <4 x float> %i.gu, float %i.gq, i64 3 ; 2 uses
  %i.gw = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gy = fdiv <4 x float> %i.gv, %i.gx
  %i.gz = fmul <4 x float> %i.gv, %i.gx
  %i.ha = shufflevector <4 x float> %i.gy, <4 x float> %i.gz, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.hb = fadd float %.sroa.42.0, 1.000000e+00
  %i.hc = fsub float %i.hb, %.sroa.055.0
  %i.hd = fsub float %i.hc, %.sroa.22.0
  %i.he = tail call noundef float @sqrtf(float noundef %i.hd) #13
  %i.hf = fmul float %i.he, 2.000000e+00
  %i.hg = extractelement <2 x float> %i.ew, i64 0
  %i.hh = fadd float %.sroa.1260.0, %i.hg
  %i.hi = fadd float %.sroa.27.0, %.sroa.37.0
  %i.hj = extractelement <2 x float> %i.ew, i64 1
  %i.hk = fsub float %i.hj, %.sroa.17.0
  %i.hl = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.hk, i64 0
  %i.hm = insertelement <4 x float> %i.hl, float %i.hh, i64 1
  %i.hn = insertelement <4 x float> %i.hm, float %i.hi, i64 2 ; 2 uses
  %i.ho = insertelement <4 x float> poison, float %i.hf, i64 0
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hq = fdiv <4 x float> %i.hn, %i.hp
  %i.hr = fmul <4 x float> %i.hn, %i.hp
  %i.hs = shufflevector <4 x float> %i.hq, <4 x float> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.ht = phi <4 x float> [ %i.fo, %bb.d ], [ %i.gh, %bb.f ], [ %i.ha, %bb.h ], [ %i.hs, %bb.i ]
  store <4 x float> %i.ht, ptr %2, align 4
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
  %2 = alloca %class.aiVector3t, align 8          ; 6 uses
  %3 = alloca %class.aiVector3t, align 8          ; 7 uses
  %4 = alloca %class.aiQuaterniont, align 16      ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <2 x float> zeroinitializer, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <2 x float> zeroinitializer, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1028 ; 2 uses
  call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load float, ptr %i.a, align 8
  %i.i = load float, ptr %i.e, align 4, !noalias !16 ; 2 uses
  %i.j = load <2 x float>, ptr %i.d, align 4, !noalias !16 ; 6 uses
  %i.k = load <2 x float>, ptr %4, align 16, !noalias !16 ; 4 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = fneg float %i.l                          ; 3 uses
  %i.n = insertelement <4 x float> poison, float %i.i, i64 0 ; 2 uses
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.p = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.q = shufflevector <4 x float> %i.p, <4 x float> %i.n, <4 x i32> <i32 4, i32 poison, i32 2, i32 4>
  %i.r = insertelement <4 x float> %i.q, float %i.m, i64 1
  %i.s = fmul <4 x float> %i.o, %i.r
  %i.t = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.u = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.v = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.u, <4 x float> %i.s) ; 4 uses
  %i.w = extractelement <4 x float> %i.v, i64 0
  %i.x = call float @llvm.fmuladd.f32(float %i.w, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.y = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.z = insertelement <2 x float> %i.y, float %i.m, i64 1
  %i.aa = fmul <2 x float> %i.k, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.ac, <2 x float> %i.aa)
  %i.ae = fmul <2 x float> %i.ad, <float 1.000000e+00, float 2.000000e+00> ; 2 uses
  %i.af = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 0, i32 1>
  %i.ah = shufflevector <2 x float> %i.k, <2 x float> %i.j, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.ai = insertelement <4 x float> %i.ah, float 1.000000e+00, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.m, i64 1
  %i.ak = fmul <4 x float> %i.ag, %i.aj
  %i.al = shufflevector <4 x float> %i.v, <4 x float> %i.af, <4 x i32> <i32 3, i32 4, i32 5, i32 4>
  %i.am = insertelement <4 x float> %i.t, float -2.000000e+00, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> %i.o, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ao = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.an, <4 x float> %i.ak) ; 5 uses
  %i.ap = extractelement <4 x float> %i.ao, i64 2
  %i.aq = fmul float %i.ap, 2.000000e+00          ; 4 uses
  %i.ar = extractelement <4 x float> %i.ao, i64 3
  %i.as = call float @llvm.fmuladd.f32(float %i.ar, float -2.000000e+00, float 1.000000e+00) ; 4 uses
  %i.at = extractelement <4 x float> %i.ao, i64 0
  %i.au = fmul <2 x float> %i.ae, <float 2.000000e+00, float 0.000000e+00> ; 4 uses
  %5 = extractelement <2 x float> %i.ae, i64 1
  %6 = load float, ptr %i.g, align 8              ; 2 uses
  %i.av = load <2 x float>, ptr %2, align 8
  %7 = fmul float %6, %i.h                        ; 4 uses
  %8 = shufflevector <4 x float> %i.v, <4 x float> %i.ao, <4 x i32> <i32 2, i32 poison, i32 poison, i32 5>
  %i.aw = insertelement <4 x float> poison, float %6, i64 0
  %9 = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %10 = shufflevector <4 x float> %8, <4 x float> %9, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %11 = fmul <4 x float> %10, <float 2.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ay = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 2.000000e+00>, <4 x float> %i.ax, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.az = fmul <4 x float> %11, %i.ay             ; 5 uses
  %i.ba = extractelement <4 x float> %i.az, i64 0
  %i.bb = call float @llvm.fmuladd.f32(float %i.x, float 0.000000e+00, float %i.ba) ; 2 uses
  %i.bc = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.x, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.bb, i64 3
  %i.be = fadd <4 x float> %i.bd, %i.az           ; 4 uses
  %i.bf = extractelement <4 x float> %i.be, i64 0
  %i.bg = extractelement <4 x float> %i.az, i64 3 ; 3 uses
  %i.bh = call float @llvm.fmuladd.f32(float %i.bg, float 0.000000e+00, float %i.bf)
  %i.bi = extractelement <4 x float> %i.az, i64 1 ; 3 uses
  %i.bj = call float @llvm.fmuladd.f32(float %i.bi, float 0.000000e+00, float %i.bh)
  %12 = extractelement <4 x float> %11, i64 0
  %13 = call float @llvm.fmuladd.f32(float %i.x, float 0.000000e+00, float %12)
  %i.bk = call float @llvm.fmuladd.f32(float %i.bg, float 0.000000e+00, float %13)
  %i.bl = extractelement <4 x float> %i.az, i64 2 ; 3 uses
  %i.bm = call float @llvm.fmuladd.f32(float %i.bl, float 0.000000e+00, float %i.bk)
  %14 = extractelement <4 x float> %i.be, i64 3
  %i.bn = call float @llvm.fmuladd.f32(float %7, float 0.000000e+00, float %14)
  %i.bo = extractelement <2 x float> %i.au, i64 0
  %i.bp = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bq = shufflevector <4 x float> %i.v, <4 x float> %i.bp, <2 x i32> <i32 1, i32 4>
  %i.br = fmul <2 x float> %i.bq, <float 2.000000e+00, float 1.000000e+00> ; 3 uses
  %i.bs = shufflevector <4 x float> %i.ao, <4 x float> %i.bp, <2 x i32> <i32 0, i32 5>
  %i.bt = fmul <2 x float> %i.bs, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.bu = extractelement <2 x float> %i.br, i64 0
  %15 = call float @llvm.fmuladd.f32(float %i.bg, float 0.000000e+00, float %i.bb)
  %i.bv = shufflevector <2 x float> %i.bt, <2 x float> %i.au, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.bw = insertelement <4 x float> %i.bv, float %7, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %15, i64 1
  %i.by = shufflevector <2 x float> %i.br, <2 x float> %i.au, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.bz = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ca = fadd <4 x float> %i.bx, %i.bz           ; 4 uses
  %i.cb = extractelement <4 x float> %i.ca, i64 2
  %i.cc = call float @llvm.fmuladd.f32(float %i.aq, float 0.000000e+00, float %i.cb)
  %i.cd = call float @llvm.fmuladd.f32(float %i.bi, float 0.000000e+00, float %i.cc)
  %i.ce = extractelement <4 x float> %i.ca, i64 3
  %i.cf = call float @llvm.fmuladd.f32(float %i.as, float 0.000000e+00, float %i.ce)
  %i.cg = call float @llvm.fmuladd.f32(float %i.bi, float 0.000000e+00, float %i.cf)
  %i.ch = call float @llvm.fmuladd.f32(float %i.bu, float 0.000000e+00, float %i.at)
  %i.ci = call float @llvm.fmuladd.f32(float %i.aq, float 0.000000e+00, float %i.ch)
  %i.cj = call float @llvm.fmuladd.f32(float %i.bl, float 0.000000e+00, float %i.ci)
  %i.ck = call float @llvm.fmuladd.f32(float %i.bo, float 0.000000e+00, float %5)
  %i.cl = call float @llvm.fmuladd.f32(float %i.as, float 0.000000e+00, float %i.ck)
  %i.cm = call float @llvm.fmuladd.f32(float %i.bl, float 0.000000e+00, float %i.cl)
  %i.cn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> zeroinitializer, <2 x float> %i.bt) ; 2 uses
  %i.co = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.as, i64 1
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> zeroinitializer, <2 x float> %i.cn)
  %i.cr = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.aq, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.as, i64 1
  %i.ct = shufflevector <2 x float> %i.cn, <2 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cu = fadd <4 x float> %i.cs, %i.ct           ; 4 uses
  %i.cv = extractelement <4 x float> %i.cu, i64 0
  %i.cw = call float @llvm.fmuladd.f32(float %7, float 0.000000e+00, float %i.cv)
  %i.cx = extractelement <4 x float> %i.cu, i64 1
  %i.cy = call float @llvm.fmuladd.f32(float %7, float 0.000000e+00, float %i.cx)
  %i.cz = load <2 x float>, ptr %3, align 8       ; 2 uses
  %i.da = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.db = shufflevector <2 x float> %i.cz, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 2, i32 2>
  %i.dc = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dd = fmul <4 x float> %i.db, %i.dc
  %i.de = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.df = shufflevector <4 x float> %i.de, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 4 uses
  %i.dg = insertelement <4 x float> poison, float %i.bj, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.di = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.dh, <4 x float> %i.dd)
  %i.dj = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1044
  %i.dm = load <2 x float>, ptr %i.b, align 4     ; 4 uses
  %i.dn = load float, ptr %i.c, align 8
  %i.do = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.dp = shufflevector <2 x float> %i.dm, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 0, i32 2, i32 2>
  %i.dq = shufflevector <2 x float> %i.do, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul <4 x float> %i.dp, %i.dq
  %i.ds = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.du = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.dt, <4 x float> %i.dr)
  %i.dv = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dw = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.dx = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %i.dy, <4 x float> %i.du)
  %i.ea = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %i.dk, <4 x float> %i.di)
  %i.eb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ea)
  %i.ec = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ed = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.dz)
  store <4 x float> %i.eb, ptr %i.f, align 4
  store <4 x float> %i.ed, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1060
  %i.ee = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.ef = shufflevector <2 x float> %i.dm, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 0, i32 2, i32 2>
  %i.eg = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> zeroinitializer
  %i.eh = fmul <4 x float> %i.ef, %i.eg
  %i.ei = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ek = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.ej, <4 x float> %i.eh)
  %i.el = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.dn, i64 2 ; 2 uses
  %i.em = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.en, <4 x float> %i.ek)
  %i.ep = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.eo)
  store <4 x float> %i.eq, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1076
  %i.er = shufflevector <2 x float> %i.dm, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 0, i32 2, i32 2>
  %i.es = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.et = fmul <4 x float> %i.er, %i.es
  %i.eu = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.eu, <4 x float> %i.et)
  %i.ew = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ex = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.ew, <4 x float> %i.ev)
  %i.ey = fadd <4 x float> %i.ex, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.ey, ptr %.sroa.39.0..sroa_idx, align 4
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
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

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
!17 = distinct !{!17, !18, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!18 = distinct !{!18, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
end_hunk_1
