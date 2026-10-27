Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/rgb_to_hsv?download=true
inline.NumInlined: 158
inline.NumDeleted: 94
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl10rgb_to_hsvIfdEEvPKT_PT0_ = comdat any

$_ZN3igl10rgb_to_hsvIddEEvPKT_PT0_ = comdat any

$_ZN3igl10rgb_to_hsvIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN3igl10rgb_to_hsvIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN3igl10rgb_to_hsvIN5Eigen6MatrixIfLi64ELi3ELi1ELi64ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN3igl10rgb_to_hsvIfdEEvPKT_PT0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.b = fcmp ogt float %i.a, 0.000000e+00
  %. = select i1 %i.b, float %i.a, float 0.000000e+00 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !10 ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0   ; 2 uses
  %i.f = fcmp ogt float %i.e, %.
  %i.g = select i1 %i.f, float %i.e, float %.     ; 2 uses
  %i.h = extractelement <2 x float> %i.d, i64 1   ; 2 uses
  %i.i = fcmp ogt float %i.h, %i.g
  %i.j = select i1 %i.i, float %i.h, float %i.g   ; 4 uses
  %i.k = fpext float %i.j to double
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.k, ptr %i.l, align 8, !tbaa !12
  %i.m = fcmp oeq float %i.j, 0.000000e+00
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.n = fdiv float %i.a, %i.j                    ; 5 uses
  %i.o = insertelement <2 x float> poison, float %i.j, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x float> %i.d, %i.p              ; 3 uses
  %i.r = fcmp ogt float %i.n, 0.000000e+00
  %i.s = select i1 %i.r, float %i.n, float 0.000000e+00 ; 2 uses
  %i.t = extractelement <2 x float> %i.q, i64 0   ; 4 uses
  %i.u = fcmp ogt float %i.t, %i.s
  %i.v = select i1 %i.u, float %i.t, float %i.s   ; 2 uses
  %i.w = extractelement <2 x float> %i.q, i64 1   ; 4 uses
  %i.x = fcmp ogt float %i.w, %i.v
  %i.y = select i1 %i.x, float %i.w, float %i.v
  %i.z = fcmp olt float %i.n, 1.000000e+00
  %i.aa = select i1 %i.z, float %i.n, float 1.000000e+00 ; 2 uses
  %i.ab = fcmp olt float %i.t, %i.aa
  %i.ac = select i1 %i.ab, float %i.t, float %i.aa ; 2 uses
  %i.ad = fcmp olt float %i.w, %i.ac
  %i.ae = select i1 %i.ad, float %i.w, float %i.ac ; 3 uses
  %i.af = fsub float %i.y, %i.ae                  ; 4 uses
  %i.ag = fpext float %i.af to double
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.ag, ptr %i.ah, align 8, !tbaa !12
  %i.ai = fcmp oeq float %i.af, 0.000000e+00
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double 0.000000e+00, ptr %1, align 8, !tbaa !12
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.aj = fsub float %i.n, %i.ae
  %i.ak = fdiv float %i.aj, %i.af                 ; 5 uses
  %i.al = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fsub <2 x float> %i.q, %i.am
  %i.ao = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x float> %i.an, %i.ap           ; 2 uses
  %i.ar = fcmp ogt float %i.ak, 0.000000e+00
  %i.as = select i1 %i.ar, float %i.ak, float 0.000000e+00 ; 2 uses
  %i.at = extractelement <2 x float> %i.aq, i64 0 ; 5 uses
  %i.au = fcmp ogt float %i.at, %i.as
  %i.av = select i1 %i.au, float %i.at, float %i.as ; 2 uses
  %i.aw = extractelement <2 x float> %i.aq, i64 1 ; 4 uses
  %i.ax = fcmp ogt float %i.aw, %i.av
  %i.ay = select i1 %i.ax, float %i.aw, float %i.av ; 2 uses
  %i.az = fcmp oeq float %i.ay, %i.ak
  br i1 %i.az, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ba = fsub float %i.at, %i.aw
  %i.bb = fpext float %i.ba to double
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double 6.000000e+01, double 0.000000e+00) ; 3 uses
  store double %i.bc, ptr %1, align 8, !tbaa !12
  %i.bd = fcmp olt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.be = fadd double %i.bc, 3.600000e+02
  store double %i.be, ptr %1, align 8, !tbaa !12
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.bf = fcmp oeq float %i.ay, %i.at
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = fsub float %i.aw, %i.ak
  %i.bh = fpext float %i.bg to double
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double 6.000000e+01, double 1.200000e+02)
  store double %i.bi, ptr %1, align 8, !tbaa !12
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bj = fsub float %i.ak, %i.at
  %i.bk = fpext float %i.bj to double
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double 6.000000e+01, double 2.400000e+02)
  store double %i.bl, ptr %1, align 8, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.i, %bb.j, %bb.f, %bb.g, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN3igl10rgb_to_hsvIddEEvPKT_PT0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !12  ; 2 uses
  %i.b = fcmp ogt double %i.a, 0.000000e+00
  %. = select i1 %i.b, double %i.a, double 0.000000e+00 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !12 ; 2 uses
  %i.e = fcmp ogt double %i.d, %.
  %i.f = select i1 %i.e, double %i.d, double %.   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.i = fcmp ogt double %i.h, %i.f
  %i.j = select i1 %i.i, double %i.h, double %i.f ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.j, ptr %i.k, align 8, !tbaa !12
  %i.l = fcmp oeq double %i.j, 0.000000e+00
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x double>, ptr %0, align 8, !tbaa !12
  %i.n = insertelement <2 x double> poison, double %i.j, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fdiv <2 x double> %i.m, %i.o             ; 3 uses
  %i.q = load double, ptr %i.g, align 8, !tbaa !12
  %i.r = fdiv double %i.q, %i.j                   ; 5 uses
  %i.s = extractelement <2 x double> %i.p, i64 0  ; 4 uses
  %i.t = fcmp ogt double %i.s, 0.000000e+00
  %i.u = select i1 %i.t, double %i.s, double 0.000000e+00 ; 2 uses
  %i.v = extractelement <2 x double> %i.p, i64 1  ; 4 uses
  %i.w = fcmp ogt double %i.v, %i.u
  %i.x = select i1 %i.w, double %i.v, double %i.u ; 2 uses
  %i.y = fcmp ogt double %i.r, %i.x
  %i.z = select i1 %i.y, double %i.r, double %i.x
  %i.aa = fcmp olt double %i.s, 1.000000e+00
  %i.ab = select i1 %i.aa, double %i.s, double 1.000000e+00 ; 2 uses
  %i.ac = fcmp olt double %i.v, %i.ab
  %i.ad = select i1 %i.ac, double %i.v, double %i.ab ; 2 uses
  %i.ae = fcmp olt double %i.r, %i.ad
  %i.af = select i1 %i.ae, double %i.r, double %i.ad ; 3 uses
  %i.ag = fsub double %i.z, %i.af                 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.ag, ptr %i.ah, align 8, !tbaa !12
  %i.ai = fcmp oeq double %i.ag, 0.000000e+00
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double 0.000000e+00, ptr %1, align 8, !tbaa !12
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.aj = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fsub <2 x double> %i.p, %i.ak
  %i.am = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fdiv <2 x double> %i.al, %i.an          ; 2 uses
  %i.ap = fsub double %i.r, %i.af
  %i.aq = fdiv double %i.ap, %i.ag                ; 4 uses
  %i.ar = extractelement <2 x double> %i.ao, i64 0 ; 5 uses
  %i.as = fcmp ogt double %i.ar, 0.000000e+00
  %i.at = select i1 %i.as, double %i.ar, double 0.000000e+00 ; 2 uses
  %i.au = extractelement <2 x double> %i.ao, i64 1 ; 5 uses
  %i.av = fcmp ogt double %i.au, %i.at
  %i.aw = select i1 %i.av, double %i.au, double %i.at ; 2 uses
  %i.ax = fcmp ogt double %i.aq, %i.aw
  %i.ay = select i1 %i.ax, double %i.aq, double %i.aw ; 2 uses
  %i.az = fcmp oeq double %i.ay, %i.ar
  br i1 %i.az, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ba = fsub double %i.au, %i.aq
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double 6.000000e+01, double 0.000000e+00) ; 3 uses
  store double %i.bb, ptr %1, align 8, !tbaa !12
  %i.bc = fcmp olt double %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bd = fadd double %i.bb, 3.600000e+02
  store double %i.bd, ptr %1, align 8, !tbaa !12
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.be = fcmp oeq double %i.ay, %i.au
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = fsub double %i.aq, %i.ar
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bf, double 6.000000e+01, double 1.200000e+02)
  store double %i.bg, ptr %1, align 8, !tbaa !12
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bh = fsub double %i.ar, %i.au
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double 6.000000e+01, double 2.400000e+02)
  store double %i.bi, ptr %1, align 8, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.i, %bb.j, %bb.f, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10rgb_to_hsvIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  %i.j = mul nsw i64 %i.d, %i.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %i.d)
  %i.k = load i64, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !21
  %.idx = shl i64 %i.k, 4
  %i.n = load ptr, ptr %1, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  %.idx20 = shl i64 %i.p, 4
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN3igl10rgb_to_hsvIddEEvPKT_PT0_.exit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN3igl10rgb_to_hsvIddEEvPKT_PT0_.exit
  %.021 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %_ZN3igl10rgb_to_hsvIddEEvPKT_PT0_.exit ] ; 3 uses
  %i.q = getelementptr [8 x i8], ptr %i.m, i64 %.021 ; 3 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !12 ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.k
  %i.t = load double, ptr %i.s, align 8, !tbaa !12 ; 3 uses
  %i.u = getelementptr i8, ptr %i.q, i64 %.idx
  %i.v = load double, ptr %i.u, align 8, !tbaa !12 ; 3 uses
  %i.w = fcmp ogt double %i.r, 0.000000e+00
  %..i = select i1 %i.w, double %i.r, double 0.000000e+00 ; 2 uses
  %i.x = fcmp ogt double %i.t, %..i
  %i.y = select i1 %i.x, double %i.t, double %..i ; 2 uses
  %i.z = fcmp ogt double %i.v, %i.y
  %i.aa = select i1 %i.z, double %i.v, double %i.y ; 4 uses
  %i.ab = fcmp oeq double %i.aa, 0.000000e+00
  br i1 %i.ab, label %_ZN3igl10rgb_to_hsvIddEEvPKT_PT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = insertelement <2 x double> poison, double %i.r, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.t, i64 1
  %i.ae = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fdiv <2 x double> %i.ad, %i.af          ; 3 uses
  %i.ah = fdiv double %i.v, %i.aa                 ; 5 uses
  %i.ai = extractelement <2 x double> %i.ag, i64 0 ; 4 uses
  %i.aj = fcmp ogt double %i.ai, 0.000000e+00
  %i.ak = select i1 %i.aj, double %i.ai, double 0.000000e+00 ; 2 uses
  %i.al = extractelement <2 x double> %i.ag, i64 1 ; 4 uses
  %i.am = fcmp ogt double %i.al, %i.ak
  %i.an = select i1 %i.am, double %i.al, double %i.ak ; 2 uses
  %i.ao = fcmp ogt double %i.ah, %i.an
  %i.ap = select i1 %i.ao, double %i.ah, double %i.an
  %i.aq = fcmp olt double %i.ai, 1.000000e+00
  %i.ar = select i1 %i.aq, double %i.ai, double 1.000000e+00 ; 2 uses
  %i.as = fcmp olt double %i.al, %i.ar
  %i.at = select i1 %i.as, double %i.al, double %i.ar ; 2 uses
  %i.au = fcmp olt double %i.ah, %i.at
  %i.av = select i1 %i.au, double %i.ah, double %i.at ; 3 uses
  %i.aw = fsub double %i.ap, %i.av                ; 8 uses
  %i.ax = fcmp oeq double %i.aw, 0.000000e+00
  br i1 %i.ax, label %_ZN3igl10rgb_to_hsvIddEEvPKT_PT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = insertelement <2 x double> poison, double %i.av, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fsub <2 x double> %i.ag, %i.az
  %i.bb = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fdiv <2 x double> %i.ba, %i.bc          ; 2 uses
  %i.be = fsub double %i.ah, %i.av
  %i.bf = fdiv double %i.be, %i.aw                ; 4 uses
  %i.bg = extractelement <2 x double> %i.bd, i64 0 ; 5 uses
  %i.bh = fcmp ogt double %i.bg, 0.000000e+00
  %i.bi = select i1 %i.bh, double %i.bg, double 0.000000e+00 ; 2 uses
  %i.bj = extractelement <2 x double> %i.bd, i64 1 ; 5 uses
  %i.bk = fcmp ogt double %i.bj, %i.bi
  %i.bl = select i1 %i.bk, double %i.bj, double %i.bi ; 2 uses
  %i.bm = fcmp ogt double %i.bf, %i.bl
  %i.bn = select i1 %i.bm, double %i.bf, double %i.bl ; 2 uses
  %i.bo = fcmp oeq double %i.bn, %i.bg
  br i1 %i.bo, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bp = fsub double %i.bj, %i.bf
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double 6.000000e+01, double 0.000000e+00) ; 3 uses
  %i.br = fcmp olt double %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.h, label %_ZN3igl10rgb_to_hsvIddEEvPKT_PT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.bs = fadd double %i.bq, 3.600000e+02
  br label %_ZN3igl10rgb_to_hsvIddEEvPKT_PT0_.exit

bb.i:                                             ; preds = %bb.f
  %i.bt = fcmp oeq double %i.bn, %i.bj
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = fsub double %i.bf, %i.bg
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double 6.000000e+01, double 1.200000e+02)
  br label %_ZN3igl10rgb_to_hsvIddEEvPKT_PT0_.exit

bb.k:                                             ; preds = %bb.i
  %i.bw = fsub double %i.bg, %i.bj
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double 6.000000e+01, double 2.400000e+02)
  br label %_ZN3igl10rgb_to_hsvIddEEvPKT_PT0_.exit

_ZN3igl10rgb_to_hsvIddEEvPKT_PT0_.exit:           ; preds = %bb.e, %bb.d, %bb.g, %bb.h, %bb.j, %bb.k
  %.sroa.0.0 = phi double [ %i.bx, %bb.k ], [ 0.000000e+00, %bb.d ], [ %i.bs, %bb.h ], [ %i.bq, %bb.g ], [ %i.bv, %bb.j ], [ 0.000000e+00, %bb.e ]
  %.sroa.10.0 = phi double [ %i.aw, %bb.k ], [ 0.000000e+00, %bb.d ], [ %i.aw, %bb.h ], [ %i.aw, %bb.g ], [ %i.aw, %bb.j ], [ %i.aw, %bb.e ]
  %i.by = getelementptr [8 x i8], ptr %i.n, i64 %.021 ; 3 uses
  store double %.sroa.0.0, ptr %i.by, align 8, !tbaa !12
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %i.p
  store double %.sroa.10.0, ptr %i.bz, align 8, !tbaa !12
  %i.ca = getelementptr i8, ptr %i.by, i64 %.idx20
  store double %i.aa, ptr %i.ca, align 8, !tbaa !12
  %i.cb = add nuw nsw i64 %.021, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10rgb_to_hsvIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  %i.j = mul nsw i64 %i.d, %i.b
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %i.d)
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !27
  %.idx = shl i64 %i.k, 3
  %i.n = load ptr, ptr %1, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  %.idx20 = shl i64 %i.p, 3
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit
  %.021 = phi i64 [ 0, %.lr.ph ], [ %i.cn, %_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit ] ; 3 uses
  %i.q = getelementptr [4 x i8], ptr %i.m, i64 %.021 ; 3 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !10 ; 3 uses
  %i.s = getelementptr [4 x i8], ptr %i.q, i64 %i.k
  %i.t = load float, ptr %i.s, align 4, !tbaa !10 ; 3 uses
  %i.u = getelementptr i8, ptr %i.q, i64 %.idx
  %i.v = load float, ptr %i.u, align 4, !tbaa !10 ; 3 uses
  %i.w = fcmp ogt float %i.r, 0.000000e+00
  %..i = select i1 %i.w, float %i.r, float 0.000000e+00 ; 2 uses
  %i.x = fcmp ogt float %i.t, %..i
  %i.y = select i1 %i.x, float %i.t, float %..i   ; 2 uses
  %i.z = fcmp ogt float %i.v, %i.y
  %i.aa = select i1 %i.z, float %i.v, float %i.y  ; 3 uses
  %i.ab = fcmp oeq float %i.aa, 0.000000e+00
  br i1 %i.ab, label %_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = insertelement <3 x float> poison, float %i.v, i64 0
  %i.ad = insertelement <3 x float> %i.ac, float %i.t, i64 1
  %i.ae = insertelement <3 x float> %i.ad, float %i.r, i64 2
  %i.af = insertelement <3 x float> poison, float %i.aa, i64 0
  %i.ag = shufflevector <3 x float> %i.af, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ah = fdiv <3 x float> %i.ae, %i.ag           ; 9 uses
  %i.ai = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.aj = insertelement <2 x float> %i.ai, float 1.000000e+00, i64 1
  %i.ak = shufflevector <3 x float> %i.ah, <3 x float> <float 0.000000e+00, float poison, float poison>, <2 x i32> <i32 3, i32 2>
  %i.al = fcmp ogt <2 x float> %i.aj, %i.ak
  %i.am = select <2 x i1> %i.al, <2 x float> %i.ai, <2 x float> <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.an = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.ap = shufflevector <3 x float> %i.ah, <3 x float> %i.ao, <2 x i32> <i32 1, i32 4>
  %i.aq = shufflevector <3 x float> %i.ao, <3 x float> %i.ah, <2 x i32> <i32 0, i32 4>
  %i.ar = fcmp ogt <2 x float> %i.ap, %i.aq
  %i.as = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = select <2 x i1> %i.ar, <2 x float> %i.as, <2 x float> %i.am ; 3 uses
  %i.au = shufflevector <2 x float> %i.an, <2 x float> %i.at, <2 x i32> <i32 0, i32 3>
  %i.av = shufflevector <2 x float> %i.at, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.aw = shufflevector <3 x float> %i.av, <3 x float> %i.ah, <2 x i32> <i32 0, i32 3>
  %i.ax = fcmp ogt <2 x float> %i.au, %i.aw
  %i.ay = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> zeroinitializer
  %i.az = select <2 x i1> %i.ax, <2 x float> %i.ay, <2 x float> %i.at ; 3 uses
  %i.ba = extractelement <2 x float> %i.az, i64 0
  %i.bb = extractelement <2 x float> %i.az, i64 1 ; 2 uses
  %i.bc = fsub float %i.ba, %i.bb                 ; 8 uses
  %i.bd = fcmp oeq float %i.bc, 0.000000e+00
  br i1 %i.bd, label %_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = extractelement <3 x float> %i.ah, i64 2
  %i.bf = fsub float %i.be, %i.bb
  %i.bg = fdiv float %i.bf, %i.bc                 ; 5 uses
  %i.bh = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = fsub <2 x float> %i.an, %i.bh
  %i.bj = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fdiv <2 x float> %i.bi, %i.bk           ; 2 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 1 ; 5 uses
  %i.bn = fcmp ogt float %i.bg, 0.000000e+00
  %i.bo = select i1 %i.bn, float %i.bg, float 0.000000e+00 ; 2 uses
  %i.bp = fcmp ogt float %i.bm, %i.bo
  %i.bq = select i1 %i.bp, float %i.bm, float %i.bo ; 2 uses
  %i.br = extractelement <2 x float> %i.bl, i64 0 ; 4 uses
  %i.bs = fcmp ogt float %i.br, %i.bq
  %i.bt = select i1 %i.bs, float %i.br, float %i.bq ; 2 uses
  %i.bu = fcmp oeq float %i.bt, %i.bg
  br i1 %i.bu, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bv = fsub float %i.bm, %i.br
  %i.bw = fpext float %i.bv to double
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double 6.000000e+01, double 0.000000e+00) ; 2 uses
  %i.by = fptrunc double %i.bx to float           ; 2 uses
  %i.bz = fcmp olt double %i.bx, f0xB690000000000000
  br i1 %i.bz, label %bb.h, label %_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.ca = fadd float %i.by, 3.600000e+02
  br label %_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit

bb.i:                                             ; preds = %bb.f
  %i.cb = fcmp oeq float %i.bt, %i.bm
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = fsub float %i.br, %i.bg
  %i.cd = fpext float %i.cc to double
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double 6.000000e+01, double 1.200000e+02)
  %i.cf = fptrunc double %i.ce to float
  br label %_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit

bb.k:                                             ; preds = %bb.i
  %i.cg = fsub float %i.bg, %i.bm
  %i.ch = fpext float %i.cg to double
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double 6.000000e+01, double 2.400000e+02)
  %i.cj = fptrunc double %i.ci to float
  br label %_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit

_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit:           ; preds = %bb.e, %bb.h, %bb.j, %bb.k, %bb.d, %bb.g
  %.sroa.0.0 = phi float [ %i.by, %bb.g ], [ 0.000000e+00, %bb.e ], [ %i.cf, %bb.j ], [ %i.cj, %bb.k ], [ %i.ca, %bb.h ], [ 0.000000e+00, %bb.d ]
  %.sroa.6.1 = phi float [ %i.bc, %bb.g ], [ %i.bc, %bb.e ], [ %i.bc, %bb.j ], [ %i.bc, %bb.k ], [ %i.bc, %bb.h ], [ 0.000000e+00, %bb.d ]
  %i.ck = getelementptr [4 x i8], ptr %i.n, i64 %.021 ; 3 uses
  store float %.sroa.0.0, ptr %i.ck, align 4, !tbaa !10
  %i.cl = getelementptr [4 x i8], ptr %i.ck, i64 %i.p
  store float %.sroa.6.1, ptr %i.cl, align 4, !tbaa !10
  %i.cm = getelementptr i8, ptr %i.ck, i64 %.idx20
  store float %i.aa, ptr %i.cm, align 4, !tbaa !10
  %i.cn = add nuw nsw i64 %.021, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !29
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10rgb_to_hsvIN5Eigen6MatrixIfLi64ELi3ELi1ELi64ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(768) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit
  %.025 = phi i64 [ 0, %bb.a ], [ %i.bv, %_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit ] ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %.025, 12         ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 %.idx.i.i.i ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %i.c = load <3 x float>, ptr %i.a, align 4, !tbaa !10 ; 3 uses
  %i.d = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.e = extractelement <3 x float> %i.c, i64 0   ; 2 uses
  %i.f = fcmp ogt float %i.e, 0.000000e+00
  %..i = select i1 %i.f, float %i.e, float 0.000000e+00 ; 2 uses
  %i.g = fcmp ogt float %i.d, %..i
  %i.h = select i1 %i.g, float %i.d, float %..i   ; 2 uses
  %i.i = extractelement <3 x float> %i.c, i64 2   ; 2 uses
  %i.j = fcmp ogt float %i.i, %i.h
  %i.k = select i1 %i.j, float %i.i, float %i.h   ; 3 uses
  %i.l = fcmp oeq float %i.k, 0.000000e+00
  br i1 %i.l, label %_ZN3igl10rgb_to_hsvIffEEvPKT_PT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = insertelement <3 x float> poison, float %i.k, i64 0
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <3 x i32> zeroinitializer
  %i.o = fdiv <3 x float> %i.c, %i.n              ; 9 uses
  %i.p = shufflevector <3 x float> %i.o, <3 x float> poison, <3 x i32> <i32 2, i32 1, i32 0> ; 2 uses
  %i.q = shufflevector <3 x float> %i.o, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_0
