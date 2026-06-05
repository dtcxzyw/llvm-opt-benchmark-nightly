inline.NumInlined: 582
inline.NumDeleted: 147
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }
%class.HullDesc = type { i32, i32, ptr, i32, float, i32, i32 }
%class.HullResult = type { i8, i32, %class.btAlignedObjectArray.4, i32, i32, %class.btAlignedObjectArray.40 }
%class.btAlignedObjectArray.4 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.btAlignedObjectArray.40 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.HullLibrary = type { %class.btAlignedObjectArray.42, %class.btAlignedObjectArray.34 }
%class.btAlignedObjectArray.42 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.btAlignedObjectArray.34 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>

$_ZN11HullLibraryD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN10HullResultD2Ev = comdat any

$_ZN11btTransform11getIdentityEv = comdat any

$_ZN11btMatrix3x311getIdentityEv = comdat any

$_ZZNK10btSoftBody4Body5xformEvE8identity = comdat any

$_ZGVZNK10btSoftBody4Body5xformEvE8identity = comdat any

$_ZZN11btTransform11getIdentityEvE17identityTransform = comdat any

$_ZGVZN11btTransform11getIdentityEvE17identityTransform = comdat any

$_ZZN11btMatrix3x311getIdentityEvE14identityMatrix = comdat any

$_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix = comdat any

@_ZZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis = internal global [3 x %class.btVector3] zeroinitializer, align 16
@_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c" M(%.2f)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" A(%.2f)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%d %f %f %f\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%d %d %d %d %d\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Nodes:  %u\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Links:  %u\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Faces:  %u\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Tetras: %u\0D\0A\00", align 1
@_ZZNK10btSoftBody4Body5xformEvE8identity = linkonce_odr dso_local global %class.btTransform zeroinitializer, comdat, align 4
@_ZGVZNK10btSoftBody4Body5xformEvE8identity = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZZN11btTransform11getIdentityEvE17identityTransform = linkonce_odr dso_local global %class.btTransform zeroinitializer, comdat, align 4
@_ZGVZN11btTransform11getIdentityEvE17identityTransform = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZZN11btMatrix3x311getIdentityEvE14identityMatrix = linkonce_odr dso_local global %class.btMatrix3x3 zeroinitializer, comdat, align 4
@_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix = linkonce_odr dso_local global i64 0, comdat, align 8

; Function Attrs: uwtable
define dso_local void @_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %12 = alloca %class.btVector3, align 8          ; 5 uses
  %13 = alloca %class.btVector3, align 8          ; 5 uses
  %14 = alloca %class.btVector3, align 8          ; 5 uses
  %15 = alloca %class.btVector3, align 16         ; 4 uses
  %16 = alloca %class.btVector3, align 16         ; 4 uses
  %17 = alloca %class.btVector3, align 16         ; 4 uses
  %18 = alloca %class.btVector3, align 16         ; 4 uses
  %19 = alloca %class.btVector3, align 16         ; 4 uses
  %20 = alloca %class.btVector3, align 16         ; 4 uses
  %21 = alloca %class.btVector3, align 8          ; 5 uses
  %22 = alloca %class.btVector3, align 8          ; 5 uses
  %23 = alloca %class.btVector3, align 8          ; 5 uses
  %24 = alloca %class.btVector3, align 8          ; 5 uses
  %25 = alloca %class.btVector3, align 8          ; 5 uses
  %26 = alloca %class.btVector3, align 8          ; 5 uses
  %27 = alloca %class.btVector3, align 8          ; 5 uses
  %28 = alloca %class.btVector3, align 8          ; 5 uses
  %29 = alloca %class.btVector3, align 8          ; 5 uses
  %30 = alloca %class.btVector3, align 8          ; 5 uses
  %31 = alloca %class.btVector3, align 8          ; 5 uses
  %32 = alloca %class.btVector3, align 8          ; 5 uses
  %33 = alloca %class.btVector3, align 8          ; 5 uses
  %34 = alloca %class.btVector3, align 8          ; 5 uses
  %35 = alloca %class.btVector3, align 8          ; 5 uses
  %36 = alloca %class.btVector3, align 8          ; 5 uses
  %37 = alloca %class.btVector3, align 8          ; 5 uses
  %38 = alloca %class.btVector3, align 8          ; 5 uses
  %39 = alloca %class.btVector3, align 4          ; 5 uses
  %40 = alloca %class.btVector3, align 16         ; 7 uses
  %41 = alloca %class.btVector3, align 16         ; 6 uses
  %42 = alloca %class.btVector3, align 8          ; 5 uses
  %43 = alloca %class.btVector3, align 8          ; 5 uses
  %44 = alloca %class.btVector3, align 16         ; 4 uses
  %45 = alloca %class.btVector3, align 8          ; 5 uses
  %46 = alloca %class.btVector3, align 8          ; 5 uses
  %47 = alloca %class.btVector3, align 16         ; 4 uses
  %48 = alloca %class.btVector3, align 8          ; 5 uses
  %49 = alloca %class.btVector3, align 8          ; 5 uses
  %50 = alloca %class.btVector3, align 16         ; 4 uses
  %51 = alloca %class.btVector3, align 8          ; 5 uses
  %52 = alloca %class.btVector3, align 8          ; 5 uses
  %53 = alloca %class.btVector3, align 8          ; 5 uses
  %54 = alloca %class.btVector3, align 8          ; 8 uses
  %55 = alloca %class.btVector3, align 8          ; 5 uses
  %56 = alloca %class.btVector3, align 8          ; 5 uses
  %57 = alloca %class.btVector3, align 8          ; 5 uses
  %58 = alloca %class.btVector3, align 8          ; 5 uses
  %59 = alloca %class.btVector3, align 8          ; 5 uses
  %60 = alloca %class.btVector3, align 16         ; 4 uses
  %61 = alloca %class.btVector3, align 8          ; 8 uses
  %62 = alloca %class.btVector3, align 16         ; 6 uses
  %63 = alloca %class.btVector3, align 16         ; 6 uses
  %64 = alloca %class.btVector3, align 16         ; 4 uses
  %65 = alloca %class.btVector3, align 16         ; 6 uses
  %66 = alloca %class.btVector3, align 16         ; 4 uses
  %67 = alloca %class.btVector3, align 8          ; 5 uses
  %68 = alloca %class.btVector3, align 8          ; 5 uses
  %69 = alloca %class.btVector3, align 8          ; 5 uses
  %70 = alloca %class.btVector3, align 8          ; 6 uses
  %71 = alloca %class.HullDesc, align 8           ; 10 uses
  %72 = alloca %class.HullResult, align 8         ; 18 uses
  %73 = alloca %class.HullLibrary, align 8        ; 14 uses
  %74 = alloca %class.btVector3, align 8          ; 5 uses
  %75 = alloca %class.btVector3, align 16         ; 4 uses
  %76 = alloca %class.btVector3, align 8          ; 5 uses
  %77 = alloca %class.btVector3, align 16         ; 4 uses
  %78 = alloca %class.btVector3, align 8          ; 5 uses
  %79 = alloca %class.btVector3, align 16         ; 4 uses
  %80 = alloca %class.btVector3, align 16         ; 7 uses
  %81 = alloca %class.btVector3, align 8          ; 5 uses
  %82 = alloca %class.btVector3, align 8          ; 5 uses
  %83 = alloca %class.btVector3, align 8          ; 5 uses
  %84 = alloca %class.btVector3, align 8          ; 5 uses
  %85 = alloca %class.btVector3, align 8          ; 5 uses
  %86 = alloca %class.btVector3, align 8          ; 5 uses
  %87 = alloca %class.btVector3, align 8          ; 5 uses
  %88 = alloca %class.btVector3, align 8          ; 5 uses
  %89 = alloca %class.btVector3, align 8          ; 5 uses
  %90 = alloca %class.btVector3, align 8          ; 5 uses
  %91 = alloca %class.btVector3, align 8          ; 5 uses
  %92 = alloca %class.btVector3, align 8          ; 5 uses
  %93 = alloca %class.btVector3, align 8          ; 9 uses
  %94 = alloca %class.btVector3, align 8          ; 8 uses
  %95 = alloca %class.btVector3, align 8          ; 8 uses
  %96 = alloca %class.btVector3, align 16         ; 4 uses
  %97 = alloca %class.btVector3, align 16         ; 4 uses
  %98 = alloca %class.btVector3, align 16         ; 6 uses
  %99 = alloca %class.btVector3, align 16         ; 6 uses
  %100 = alloca %class.btVector3, align 4         ; 9 uses
  %101 = alloca %class.btVector3, align 4         ; 9 uses
  %102 = alloca %class.btVector3, align 8         ; 5 uses
  %103 = alloca %class.btVector3, align 16        ; 4 uses
  %104 = alloca %class.btVector3, align 8         ; 5 uses
  %105 = alloca %class.btVector3, align 16        ; 4 uses
  %106 = alloca %class.btVector3, align 8         ; 5 uses
  %107 = alloca %class.btVector3, align 16        ; 4 uses
  %108 = alloca %class.btVector3, align 8         ; 5 uses
  %109 = alloca %class.btVector3, align 16        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  %i.a = getelementptr inbounds nuw i8, ptr %40, i64 8
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %40, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %41, align 16, !tbaa !8
  %i.b = and i32 %2, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit1463, label %.preheader1462

.preheader1462:                                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit1463

.lr.ph:                                           ; preds = %.preheader1462
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.g = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %49, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.m = phi i32 [ %i.d, %.lr.ph ], [ %i.bb, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw [120 x i8], ptr %i.n, i64 %indvars.iv ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21
  %i.t = and i32 %i.s, 1
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 6 uses
  %i.w = load <2 x float>, ptr %i.v, align 8, !tbaa !8
  %i.x = fadd <2 x float> %i.w, <float -1.000000e-01, float -0.000000e+00>
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 6 uses
  %i.z = load float, ptr %i.y, align 8, !tbaa !8
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.z, i64 0
  store <2 x float> %i.x, ptr %42, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  %i.aa = load <2 x float>, ptr %i.v, align 8, !tbaa !8
  %i.ab = fadd <2 x float> %i.aa, <float 1.000000e-01, float 0.000000e+00>
  %i.ac = load float, ptr %i.y, align 8, !tbaa !8
  %i.ad = fadd float %i.ac, 0.000000e+00
  %.sroa.3.12.vec.insert.i235 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  store <2 x float> %i.ab, ptr %43, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i235, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %44, align 16, !tbaa !8
  %i.ae = load ptr, ptr %1, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %42, ptr noundef nonnull align 4 dereferenceable(16) %43, ptr noundef nonnull align 4 dereferenceable(16) %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #18
  %i.ah = load <2 x float>, ptr %i.v, align 8, !tbaa !8
  %i.ai = fadd <2 x float> %i.ah, <float -0.000000e+00, float -1.000000e-01>
  %i.aj = load float, ptr %i.y, align 8, !tbaa !8
  %.sroa.3.12.vec.insert.i240 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  store <2 x float> %i.ai, ptr %45, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i240, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18
  %i.ak = load <2 x float>, ptr %i.v, align 8, !tbaa !8
  %i.al = fadd <2 x float> %i.ak, <float 0.000000e+00, float 1.000000e-01>
  %i.am = load float, ptr %i.y, align 8, !tbaa !8
  %i.an = fadd float %i.am, 0.000000e+00
  %.sroa.3.12.vec.insert.i245 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  store <2 x float> %i.al, ptr %46, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i245, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #18
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %47, align 16, !tbaa !8
  %i.ao = load ptr, ptr %1, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %45, ptr noundef nonnull align 4 dereferenceable(16) %46, ptr noundef nonnull align 4 dereferenceable(16) %47)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18
end_hunk_0
begin_hunk_1_@_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #18
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %109, align 16, !tbaa !8
  %i.azv = load ptr, ptr %1, align 8, !tbaa !23
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 40
  %i.azx = load ptr, ptr %i.azw, align 8
  call void %i.azx(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %101, ptr noundef nonnull align 4 dereferenceable(16) %108, ptr noundef nonnull align 4 dereferenceable(16) %109)
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #18
  br label %bb.cz

bb.cz:                                            ; preds = %_ZNK10btSoftBody4Body5xformEv.exit827, %_ZNK10btSoftBody4Body5xformEv.exit762, %bb.bq
  %indvars.iv.next1585 = add nuw nsw i64 %indvars.iv1584, 1 ; 2 uses
  %i.azy = load i32, ptr %i.akx, align 4, !tbaa !173
  %i.azz = sext i32 %i.azy to i64
  %i.baa = icmp slt i64 %indvars.iv.next1585, %i.azz
  br i1 %i.baa, label %bb.bq, label %.loopexit

.loopexit:                                        ; preds = %bb.cz, %.preheader, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  ret void

bb.da:                                            ; preds = %bb.bb, %.body, %bb.az
  %i.bab = landingpad { ptr, i32 }
          catch ptr null
  %i.bac = extractvalue { ptr, i32 } %i.bab, 0
  call void @__clang_call_terminate(ptr %i.bac) #19
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #3

declare noundef i32 @_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare noundef i32 @_ZN11HullLibrary13ReleaseResultER10HullResult(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN11HullLibraryD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i8, ptr %i.c, align 8, !range !82
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.d

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114  ; 2 uses
  %.not.i.i.i2 = icmp ne ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !82
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i.i3 = select i1 %.not.i.i.i2, i1 %i.j, i1 false
  br i1 %or.cond.i.i3, label %bb.c, label %_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev.exit

bb.c:                                             ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.g)
  br label %_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev.exit

_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev.exit: ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit, %bb.c
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !114  ; 2 uses
  %.not.i.i.i4 = icmp ne ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i8, ptr %i.n, align 8, !range !82
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond.i.i5 = select i1 %.not.i.i.i4, i1 %i.p, i1 false
  br i1 %or.cond.i.i5, label %bb.e, label %_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev.exit7

bb.e:                                             ; preds = %bb.d
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.m)
          to label %_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev.exit7 unwind label %bb.f

_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev.exit7: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #19
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN10HullResultD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i8, ptr %i.c, align 8, !range !82
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIjED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIjED2Ev.exit unwind label %bb.d

_ZN20btAlignedObjectArrayIjED2Ev.exit:            ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95   ; 2 uses
  %.not.i.i.i2 = icmp ne ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i8, ptr %i.h, align 8, !range !82
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i.i3 = select i1 %.not.i.i.i2, i1 %i.j, i1 false
  br i1 %or.cond.i.i3, label %bb.c, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.c:                                             ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.g)
  br label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit, %bb.c
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95   ; 2 uses
  %.not.i.i.i4 = icmp ne ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i8, ptr %i.n, align 8, !range !82
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond.i.i5 = select i1 %.not.i.i.i4, i1 %i.p, i1 false
  br i1 %or.cond.i.i5, label %bb.e, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit7

bb.e:                                             ; preds = %bb.d
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.m)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit7 unwind label %bb.f

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit7:  ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #19
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN17btSoftBodyHelpers12DrawNodeTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 16          ; 4 uses
  %5 = alloca %class.btVector3, align 16          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %4, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %5, align 16, !tbaa !8
  call fastcc void @_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii(ptr noundef %1, ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btSoftBodyHelpers12DrawFaceTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 16          ; 4 uses
  %5 = alloca %class.btVector3, align 16          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %5, align 16, !tbaa !8
  call fastcc void @_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii(ptr noundef %1, ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btSoftBodyHelpers15DrawClusterTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 16          ; 4 uses
  %5 = alloca %class.btVector3, align 16          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %4, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %5, align 16, !tbaa !8
  call fastcc void @_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii(ptr noundef %1, ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btSoftBodyHelpers9DrawInfosEP10btSoftBodyP12btIDebugDrawbbb(ptr noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 19 uses
  %i.b = alloca [1024 x i8], align 16             ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %3, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.c
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %bb.c ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %indvars.iv20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load float, ptr %i.i, align 8, !tbaa !54
  %i.k = fdiv float 1.000000e+00, %i.j
  %i.l = fpext float %i.k to double
  %i.m = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.l) #18 ; 0 uses
  %i.n = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #18 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.p = load float, ptr %i.o, align 4, !tbaa !179
  %i.q = fpext float %i.p to double
  %i.r = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.q) #18 ; 0 uses
  %i.s = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #18 ; 0 uses
  %i.t = load i8, ptr %i.a, align 16, !tbaa !84
  %.not.us.us = icmp eq i8 %i.t, 0
  br i1 %.not.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = load ptr, ptr %1, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !10
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next21, %i.z
  br i1 %i.aa, label %.lr.ph.split.us.split.us, label %._crit_edge

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.e
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %bb.e ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw [120 x i8], ptr %i.ab, i64 %indvars.iv17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !54
  %i.af = fdiv float 1.000000e+00, %i.ae
  %i.ag = fpext float %i.af to double
  %i.ah = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.ag) #18 ; 0 uses
  %i.ai = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #18 ; 0 uses
  %i.aj = load i8, ptr %i.a, align 16, !tbaa !84
  %.not.us = icmp eq i8 %i.aj, 0
  br i1 %.not.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.split
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.al = load ptr, ptr %1, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !10
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next18, %i.ap
  br i1 %i.aq, label %.lr.ph.split.us.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %3, label %.lr.ph.split.split.us, label %._crit_edge

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw [120 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 100
  %i.au = load float, ptr %i.at, align 4, !tbaa !179
  %i.av = fpext float %i.au to double
  %i.aw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.av) #18 ; 0 uses
  %i.ax = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #18 ; 0 uses
  %i.ay = load i8, ptr %i.a, align 16, !tbaa !84
  %.not.us12 = icmp eq i8 %i.ay, 0
  br i1 %.not.us12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split.us
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ba = load ptr, ptr %1, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.az, ptr noundef nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !10
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %.lr.ph.split.split.us, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.e, %bb.c, %.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: uwtable
define internal fastcc void @_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca [8 x %class.btVector3], align 16    ; 33 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  %.not76 = icmp eq ptr %i.b, null
  br i1 %.not76, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp slt i32 %2, %6
  %i.d = icmp slt i32 %6, 0
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = add nsw i32 %2, 1                        ; 2 uses
  tail call fastcc void @_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii(ptr noundef %0, ptr noundef %i.f, i32 noundef %i.g, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i32 noundef %6)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !84
  tail call fastcc void @_ZL8drawTreeP12btIDebugDrawPK10btDbvtNodeiRK9btVector3S6_ii(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.g, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i32 noundef %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.not30 = icmp slt i32 %2, %5
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 8, !tbaa !8  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load float, ptr %i.m, align 8, !tbaa !8  ; 2 uses
  %i.o = fadd float %i.l, %i.n
  %i.p = fmul float %i.o, 5.000000e-01            ; 2 uses
  %i.q = fsub float %i.n, %i.l
  %i.r = fmul float %i.q, 5.000000e-01            ; 2 uses
  %i.s = fsub float %i.p, %i.r                    ; 4 uses
  %i.t = fadd float %i.p, %i.r                    ; 4 uses
  %i.u = icmp eq ptr %i.i, null
  %i.v = select i1 %i.u, ptr %4, ptr %3           ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.w = load <2 x float>, ptr %1, align 8, !tbaa !8 ; 2 uses
  %i.x = load <2 x float>, ptr %i.j, align 8, !tbaa !8 ; 2 uses
  %i.y = fadd <2 x float> %i.w, %i.x
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01) ; 2 uses
  %i.aa = fsub <2 x float> %i.x, %i.w
  %i.ab = fmul <2 x float> %i.aa, splat (float 5.000000e-01) ; 2 uses
  %i.ac = fsub <2 x float> %i.z, %i.ab            ; 4 uses
  store <2 x float> %i.ac, ptr %7, align 16, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.s, ptr %i.ad, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ah = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  store float %i.ah, ptr %i.ag, align 4, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 24
  store float %i.s, ptr %i.ai, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 28
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.al = fadd <2 x float> %i.z, %i.ab            ; 4 uses
  %i.am = extractelement <2 x float> %i.al, i64 0 ; 2 uses
  store float %i.am, ptr %i.af, align 16, !tbaa !8
  store <2 x float> %i.al, ptr %i.ak, align 16, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float %i.s, ptr %i.an, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 44
  store float 0.000000e+00, ptr %i.ao, align 4, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.aq = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  store float %i.aq, ptr %i.ap, align 16, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.as = extractelement <2 x float> %i.al, i64 1 ; 2 uses
  store float %i.as, ptr %i.ar, align 4, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 56
  store float %i.s, ptr %i.at, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 60
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  store <2 x float> %i.ac, ptr %i.av, align 16, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 72
  store float %i.t, ptr %i.aw, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 76
  store float 0.000000e+00, ptr %i.ax, align 4, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 4 uses
  store float %i.am, ptr %i.ay, align 16, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 84
  store float %i.ah, ptr %i.az, align 4, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 88
  store float %i.t, ptr %i.ba, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 92
  store float 0.000000e+00, ptr %i.bb, align 4, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  store <2 x float> %i.al, ptr %i.bc, align 16, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 104
  store float %i.t, ptr %i.bd, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 108
  store float 0.000000e+00, ptr %i.be, align 4, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 4 uses
  store float %i.aq, ptr %i.bf, align 16, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 116
  store float %i.as, ptr %i.bg, align 4, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 120
  store float %i.t, ptr %i.bh, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 124
  store float 0.000000e+00, ptr %i.bi, align 4, !tbaa !8
  %i.bj = load ptr, ptr %0, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %i.v), !inline_history !180
  %i.bm = load ptr, ptr %0, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.v), !inline_history !180
  %i.bp = load ptr, ptr %0, align 8, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) %i.v), !inline_history !180
  %i.bs = load ptr, ptr %0, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.v), !inline_history !180
  %i.bv = load ptr, ptr %0, align 8, !tbaa !23
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %i.v), !inline_history !180
  %i.by = load ptr, ptr %0, align 8, !tbaa !23
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %i.v), !inline_history !180
  %i.cb = load ptr, ptr %0, align 8, !tbaa !23
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %i.bf, ptr noundef nonnull align 4 dereferenceable(16) %i.v), !inline_history !180
  %i.ce = load ptr, ptr %0, align 8, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.bf, ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.v), !inline_history !180
  %i.ch = load ptr, ptr %0, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.v), !inline_history !180
  %i.ck = load ptr, ptr %0, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %i.v), !inline_history !180
  %i.cn = load ptr, ptr %0, align 8, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %i.v), !inline_history !180
  %i.cq = load ptr, ptr %0, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) %i.bf, ptr noundef nonnull align 4 dereferenceable(16) %i.v), !inline_history !180
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 4           ; 12 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 16         ; 4 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %12 = alloca %class.btVector3, align 16         ; 4 uses
  %13 = alloca %class.btVector3, align 8          ; 5 uses
  %14 = alloca %class.btVector3, align 16         ; 4 uses
  %15 = alloca %class.btVector3, align 16         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 537
  %i.b = load i8, ptr %i.a, align 1, !tbaa !181, !range !82, !noundef !83
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !87
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.g = load float, ptr %i.f, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.h = load float, ptr %i.e, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.j = load float, ptr %i.i, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.l = load float, ptr %i.k, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.m = fmul float %i.j, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.g, float %i.h, float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.p = load float, ptr %i.o, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.r = load float, ptr %i.q, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.s = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.r, float %i.n) ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.u = load float, ptr %i.t, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.w = load float, ptr %i.v, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.x = fmul float %i.l, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.u, float %i.h, float %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.aa = load float, ptr %i.z, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.ab = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.r, float %i.y) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.af = load float, ptr %i.ae, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.ag = fmul float %i.l, %i.af
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.h, float %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.r, float %i.ah) ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.am = load float, ptr %i.al, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.ao = load float, ptr %i.an, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.ap = fmul float %i.j, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.g, float %i.am, float %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.as = load float, ptr %i.ar, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.as, float %i.aq) ; 4 uses
  %i.au = fmul float %i.w, %i.ao
  %i.av = tail call float @llvm.fmuladd.f32(float %i.u, float %i.am, float %i.au)
  %i.aw = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.as, float %i.av) ; 3 uses
  %i.ax = fmul float %i.af, %i.ao
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.am, float %i.ax)
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.as, float %i.ay) ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.be = fmul float %i.j, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.g, float %i.bb, float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !8, !noalias !182 ; 3 uses
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.bh, float %i.bf) ; 4 uses
  %i.bj = fmul float %i.w, %i.bd
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.u, float %i.bb, float %i.bj)
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.bh, float %i.bk) ; 3 uses
  %i.bm = fmul float %i.af, %i.bd
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.bb, float %i.bm)
  %i.bo = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.bh, float %i.bn) ; 4 uses
  %i.bp = fmul float %i.ab, 0.000000e+00          ; 2 uses
  %i.bq = fadd float %i.s, %i.bp
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float 0.000000e+00, float %i.bq) ; 3 uses
  %i.bs = fmul float %i.aw, 0.000000e+00          ; 2 uses
  %i.bt = fadd float %i.at, %i.bs
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.az, float 0.000000e+00, float %i.bt) ; 3 uses
  %i.bv = fmul float %i.bl, 0.000000e+00          ; 2 uses
  %i.bw = fadd float %i.bi, %i.bv
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.bo, float 0.000000e+00, float %i.bw) ; 3 uses
  %i.by = fmul float %i.bu, %i.bu
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.by)
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bz)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ca)
  %i.cb = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.cc = fmul float %i.br, %i.cb
  %i.cd = fmul float %i.bu, %i.cb
  %i.ce = fmul float %i.bx, %i.cb
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.s, float 0.000000e+00, float %i.ab)
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float 0.000000e+00, float %i.cf) ; 3 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.aw)
  %i.ci = tail call noundef float @llvm.fmuladd.f32(float %i.az, float 0.000000e+00, float %i.ch) ; 3 uses
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bi, float 0.000000e+00, float %i.bl)
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.bo, float 0.000000e+00, float %i.cj) ; 3 uses
  %i.cl = fmul float %i.ci, %i.ci
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cl)
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cm)
  %sqrt.i.i17 = tail call noundef float @llvm.sqrt.f32(float %i.cn)
  %i.co = fdiv float 1.000000e+00, %sqrt.i.i17    ; 3 uses
  %i.cp = fmul float %i.cg, %i.co
  %i.cq = fmul float %i.ci, %i.co
  %i.cr = fmul float %i.ck, %i.co
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.s, float 0.000000e+00, float %i.bp)
  %i.ct = fadd float %i.cs, %i.ak                 ; 3 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.bs)
  %i.cv = fadd float %i.az, %i.cu                 ; 3 uses
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.bi, float 0.000000e+00, float %i.bv)
  %i.cx = fadd float %i.bo, %i.cw                 ; 3 uses
  %i.cy = fmul float %i.cv, %i.cv
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.cy)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cz)
  %sqrt.i.i28 = tail call noundef float @llvm.sqrt.f32(float %i.da)
  %i.db = fdiv float 1.000000e+00, %sqrt.i.i28    ; 3 uses
  %i.dc = fmul float %i.ct, %i.db
  %i.dd = fmul float %i.cv, %i.db
  %i.de = fmul float %i.cx, %i.db
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.df = fmul float %i.cc, 1.000000e+01
  %i.dg = fmul float %i.cd, 1.000000e+01
  %i.dh = fmul float %i.ce, 1.000000e+01
  %i.di = load float, ptr %8, align 4, !tbaa !8
  %i.dj = fadd float %i.di, %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 4 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !8
  %i.dm = fadd float %i.dl, %i.dg
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !8
  %i.dp = fadd float %i.do, %i.dh
  %.sroa.0.0.vec.insert.i39 = insertelement <2 x float> poison, float %i.dj, i64 0
  %.sroa.0.4.vec.insert.i40 = insertelement <2 x float> %.sroa.0.0.vec.insert.i39, float %i.dm, i64 1
  %.sroa.3.12.vec.insert.i41 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dp, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i40, ptr %9, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i41, ptr %i.dq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %10, align 16, !tbaa !8
  %i.dr = load ptr, ptr %1, align 8, !tbaa !23
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.du = fmul float %i.cp, 1.000000e+01
  %i.dv = fmul float %i.cq, 1.000000e+01
  %i.dw = fmul float %i.cr, 1.000000e+01
  %i.dx = load float, ptr %8, align 4, !tbaa !8
  %i.dy = fadd float %i.du, %i.dx
  %i.dz = load float, ptr %i.dk, align 4, !tbaa !8
  %i.ea = fadd float %i.dv, %i.dz
  %i.eb = load float, ptr %i.dn, align 4, !tbaa !8
  %i.ec = fadd float %i.dw, %i.eb
  %.sroa.0.0.vec.insert.i49 = insertelement <2 x float> poison, float %i.dy, i64 0
  %.sroa.0.4.vec.insert.i50 = insertelement <2 x float> %.sroa.0.0.vec.insert.i49, float %i.ea, i64 1
  %.sroa.3.12.vec.insert.i51 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ec, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i50, ptr %11, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i51, ptr %i.ed, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %12, align 16, !tbaa !8
  %i.ee = load ptr, ptr %1, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.eh = fmul float %i.dc, 1.000000e+01
  %i.ei = fmul float %i.dd, 1.000000e+01
  %i.ej = fmul float %i.de, 1.000000e+01
  %i.ek = load float, ptr %8, align 4, !tbaa !8
  %i.el = fadd float %i.eh, %i.ek
  %i.em = load float, ptr %i.dk, align 4, !tbaa !8
  %i.en = fadd float %i.ei, %i.em
  %i.eo = load float, ptr %i.dn, align 4, !tbaa !8
  %i.ep = fadd float %i.ej, %i.eo
  %.sroa.0.0.vec.insert.i59 = insertelement <2 x float> poison, float %i.el, i64 0
  %.sroa.0.4.vec.insert.i60 = insertelement <2 x float> %.sroa.0.0.vec.insert.i59, float %i.en, i64 1
  %.sroa.3.12.vec.insert.i61 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ep, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i60, ptr %13, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i61, ptr %i.eq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %14, align 16, !tbaa !8
  %i.er = load ptr, ptr %1, align 8, !tbaa !23
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !96
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.fe = load ptr, ptr %i.ex, align 8, !tbaa !95
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %indvars.iv ; 3 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !8 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !8 ; 3 uses
  %i.fj = fmul float %i.ab, %i.fi
  %i.fk = call float @llvm.fmuladd.f32(float %i.s, float %i.fg, float %i.fj)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !8 ; 3 uses
  %i.fn = call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.fm, float %i.fk)
  %i.fo = fmul float %i.aw, %i.fi
  %i.fp = call float @llvm.fmuladd.f32(float %i.at, float %i.fg, float %i.fo)
  %i.fq = call noundef float @llvm.fmuladd.f32(float %i.az, float %i.fm, float %i.fp)
  %i.fr = fmul float %i.bl, %i.fi
  %i.fs = call float @llvm.fmuladd.f32(float %i.bi, float %i.fg, float %i.fr)
  %i.ft = call noundef float @llvm.fmuladd.f32(float %i.bo, float %i.fm, float %i.fs)
  %i.fu = load float, ptr %8, align 4, !tbaa !8
  %i.fv = fadd float %i.fu, %i.fn                 ; 4 uses
  %i.fw = load float, ptr %i.dk, align 4, !tbaa !8
  %i.fx = fadd float %i.fw, %i.fq                 ; 5 uses
  %i.fy = load float, ptr %i.dn, align 4, !tbaa !8
  %i.fz = fadd float %i.ft, %i.fy                 ; 4 uses
  %.sroa.0.0.vec.insert.i69 = insertelement <2 x float> poison, float %i.fv, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i70 = insertelement <2 x float> %.sroa.0.0.vec.insert.i69, float %i.fx, i64 1
  %.sroa.3.12.vec.insert.i71 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fz, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ga = fadd float %i.fv, -1.000000e-01
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.ga, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.fx, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i71, ptr %i.ey, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.gb = fadd float %i.fv, 1.000000e-01
  %i.gc = fadd float %i.fx, 0.000000e+00          ; 2 uses
  %i.gd = fadd float %i.fz, 0.000000e+00
  %.sroa.0.0.vec.insert.i12.i = insertelement <2 x float> poison, float %i.gb, i64 0
  %.sroa.0.4.vec.insert.i13.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i12.i, float %i.gc, i64 1
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gd, i64 0 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i13.i, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %i.ez, align 8
  %i.ge = load ptr, ptr %1, align 8, !tbaa !23
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %15), !inline_history !53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.gh = fadd float %i.fx, -1.000000e-01
  %.sroa.0.4.vec.insert.i18.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i69, float %i.gh, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i18.i, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i71, ptr %i.fa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.gi = fadd float %i.fv, 0.000000e+00
  %i.gj = fadd float %i.fx, 1.000000e-01
  %.sroa.0.0.vec.insert.i22.i = insertelement <2 x float> poison, float %i.gi, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i23.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i22.i, float %i.gj, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i23.i, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %i.fb, align 8
  %i.gk = load ptr, ptr %1, align 8, !tbaa !23
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %15), !inline_history !53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.gn = fadd float %i.fz, -1.000000e-01
  %.sroa.3.12.vec.insert.i29.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gn, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i70, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i29.i, ptr %i.fc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.go = fadd float %i.fz, 1.000000e-01
  %.sroa.0.4.vec.insert.i33.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i22.i, float %i.gc, i64 1
  %.sroa.3.12.vec.insert.i34.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.go, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i33.i, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i34.i, ptr %i.fd, align 8
  %i.gp = load ptr, ptr %1, align 8, !tbaa !23
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %15), !inline_history !53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gs = load i32, ptr %i.eu, align 4, !tbaa !96
  %i.gt = sext i32 %i.gs to i64
  %i.gu = icmp slt i64 %indvars.iv.next, %i.gt
  br i1 %i.gu, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers10CreateRopeER19btSoftBodyWorldInfoRK9btVector3S4_ii(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.loopexit:
  %i.a = add i32 %3, 2                            ; 4 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp slt i32 %3, -2                      ; 2 uses
  %i.d = shl nsw i64 %i.b, 4
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #20 ; 3 uses
  %i.g = shl nsw i64 %i.b, 2
  %i.h = select i1 %i.c, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #20 ; 3 uses
  %i.j = icmp sgt i32 %3, -2
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.k = add nsw i32 %3, 1
  %i.l = uitofp nneg i32 %i.k to float
  %i.m = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !8
  %i.o = fsub <2 x float> %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !8  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !8
  %i.t = fsub float %i.s, %i.q
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 4 uses
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = uitofp nneg i32 %i.u to float
  %i.w = fdiv float %i.v, %i.l                    ; 2 uses
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.y, <2 x float> %i.m)
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.t, float %i.w, float %i.q)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aa, i64 0
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  store <2 x float> %i.z, ptr %i.ab, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !84
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.ac, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.a

._crit_edge:                                      ; preds = %bb.a, %.loopexit
  %i.ad = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 1496, i32 noundef 16) ; 6 uses
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(1496) %i.ad, ptr noundef nonnull %0, i32 noundef %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.ae = and i32 %4, 1
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.ad, i32 noundef 0, float noundef 0.000000e+00)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ad)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.h

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.d
  resume { ptr, i32 } %i.af

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.ag = and i32 %4, 2
  %.not36 = icmp eq i32 %i.ag, 0
  br i1 %.not36, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = add nsw i32 %3, 1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.ad, i32 noundef %i.ah, float noundef 0.000000e+00)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #21
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #21
  %i.ai = icmp sgt i32 %3, -1
  br i1 %i.ai, label %.lr.ph40.preheader, label %._crit_edge41

.lr.ph40.preheader:                               ; preds = %bb.g
  %smax43 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2)
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %.lr.ph40
  %.138 = phi i32 [ %i.ak, %.lr.ph40 ], [ 1, %.lr.ph40.preheader ] ; 3 uses
  %i.aj = add nsw i32 %.138, -1
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ad, i32 noundef %i.aj, i32 noundef %.138, ptr noundef null, i1 noundef zeroext false)
  %i.ak = add nuw nsw i32 %.138, 1                ; 2 uses
  %exitcond44.not = icmp eq i32 %i.ak, %smax43
  br i1 %exitcond44.not, label %._crit_edge41, label %.lr.ph40

._crit_edge41:                                    ; preds = %.lr.ph40, %bb.g
  ret ptr %i.ad

bb.h:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #19
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

declare void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(1496), ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496), i32 noundef, float noundef) local_unnamed_addr #4

declare void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496), i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers11CreatePatchER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiib(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %5, 2
  %i.b = icmp slt i32 %6, 2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.a
  %i.c = mul nuw nsw i32 %6, %5                   ; 2 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 4
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #20 ; 3 uses
  %i.g = shl nuw nsw i64 %i.d, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #20 ; 3 uses
  %i.i = add nsw i32 %6, -1
  %i.j = uitofp nneg i32 %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !8  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !8
  %i.o = fsub float %i.n, %i.l
  %i.p = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.q = load <2 x float>, ptr %3, align 4, !tbaa !8
  %i.r = fsub <2 x float> %i.q, %i.p
  %i.s = load <2 x float>, ptr %2, align 4, !tbaa !8 ; 2 uses
  %i.t = load <2 x float>, ptr %4, align 4, !tbaa !8
  %i.u = fsub <2 x float> %i.t, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !8  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !8
  %i.z = fsub float %i.y, %i.w
  %i.aa = add nsw i32 %5, -1
  %i.ab = uitofp nneg i32 %i.aa to float
  %i.ac = zext nneg i32 %5 to i64                 ; 2 uses
  %wide.trip.count193 = zext nneg i32 %6 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv190 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next191, %._crit_edge.us ] ; 3 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv190 to i32
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fdiv float %i.ae, %i.j                  ; 3 uses
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.o, float %i.af, float %i.l) ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.ai, <2 x float> %i.p) ; 2 uses
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.ai, <2 x float> %i.s)
  %i.al = tail call float @llvm.fmuladd.f32(float %i.z, float %i.af, float %i.w)
  %i.am = fsub <2 x float> %i.ak, %i.aj
  %i.an = fsub float %i.al, %i.ag
  %i.ao = mul nuw nsw i64 %indvars.iv190, %i.ac
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32
  %i.aq = uitofp nneg i32 %i.ap to float
  %i.ar = fdiv float %i.aq, %i.ab                 ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.at, <2 x float> %i.aj)
  %i.av = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ar, float %i.ag)
  %.sroa.3.12.vec.insert.i.i164.us = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.av, i64 0
  %i.aw = add nuw nsw i64 %indvars.iv, %i.ao      ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.aw ; 2 uses
  store <2 x float> %i.au, ptr %i.ax, align 4
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i164.us, ptr %.sroa.4.0..sroa_idx.us, align 4, !tbaa !84
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aw
  store float 1.000000e+00, ptr %i.ay, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count193
  br i1 %exitcond194.not, label %._crit_edge176, label %.lr.ph.us

._crit_edge176:                                   ; preds = %._crit_edge.us
  %i.az = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 1496, i32 noundef 16) ; 17 uses
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge176
  %i.ba = and i32 %7, 1
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef 0, float noundef 0.000000e+00)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge176
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.az)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.r

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.e
  resume { ptr, i32 } %i.bb

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.bc = and i32 %7, 2
  %.not153 = icmp eq i32 %i.bc, 0
  br i1 %.not153, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = add nsw i32 %5, -1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bd, float noundef 0.000000e+00)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.be = and i32 %7, 4
  %.not154 = icmp eq i32 %i.be, 0
  br i1 %.not154, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = add nsw i32 %6, -1
  %i.bg = mul nsw i32 %i.bf, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bg, float noundef 0.000000e+00)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bh = and i32 %7, 8
  %.not155 = icmp eq i32 %i.bh, 0
  br i1 %.not155, label %.preheader.us.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add nsw i32 %6, -1
  %i.bj = mul nsw i32 %i.bi, %5
  %i.bk = add nsw i32 %5, -1
  %i.bl = add nuw nsw i32 %i.bk, %i.bj
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bl, float noundef 0.000000e+00)
  br label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.j, %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #21
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #21
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us185
  %.1178.us = phi i32 [ %i.bn, %._crit_edge.us185 ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %i.bm = mul nuw nsw i32 %.1178.us, %5           ; 4 uses
  %i.bn = add nuw nsw i32 %.1178.us, 1            ; 4 uses
  %i.bo = icmp slt i32 %i.bn, %6
  %i.bp = mul nuw nsw i32 %i.bn, %5               ; 4 uses
  br i1 %i.bo, label %.lr.ph.split.us.us, label %.lr.ph.split.us184

.lr.ph.split.us184:                               ; preds = %.preheader.us, %.thread.us181
  %.0145177.us180 = phi i32 [ %i.bq, %.thread.us181 ], [ 0, %.preheader.us ] ; 2 uses
  %i.bq = add nuw nsw i32 %.0145177.us180, 1      ; 4 uses
  %i.br = icmp slt i32 %i.bq, %5
  br i1 %i.br, label %bb.l, label %.thread.us181

bb.l:                                             ; preds = %.lr.ph.split.us184
  %i.bs = add nuw nsw i32 %.0145177.us180, %i.bm
  %i.bt = add nuw nsw i32 %i.bq, %i.bm
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bs, i32 noundef %i.bt, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us181

.thread.us181:                                    ; preds = %bb.l, %.lr.ph.split.us184
  %exitcond195.not = icmp eq i32 %i.bq, %5
  br i1 %exitcond195.not, label %._crit_edge.us185, label %.lr.ph.split.us184

._crit_edge.us185:                                ; preds = %.thread.us181, %.thread.us.us
  %exitcond197.not = icmp eq i32 %i.bn, %6
  br i1 %exitcond197.not, label %.loopexit, label %.preheader.us

.lr.ph.split.us.us:                               ; preds = %.preheader.us, %.thread.us.us
  %.0145177.us.us = phi i32 [ %i.bv, %.thread.us.us ], [ 0, %.preheader.us ] ; 5 uses
  %i.bu = add nuw nsw i32 %.0145177.us.us, %i.bm  ; 7 uses
  %i.bv = add nuw nsw i32 %.0145177.us.us, 1      ; 6 uses
  %i.bw = icmp slt i32 %i.bv, %5
  br i1 %i.bw, label %bb.m, label %.thread.us.us.critedge

bb.m:                                             ; preds = %.lr.ph.split.us.us
  %i.bx = add nuw nsw i32 %i.bv, %i.bm            ; 5 uses
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bu, i32 noundef %i.bx, ptr noundef null, i1 noundef zeroext false)
  %i.by = add nuw nsw i32 %.0145177.us.us, %i.bp  ; 5 uses
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bu, i32 noundef %i.by, ptr noundef null, i1 noundef zeroext false)
  %i.bz = add nuw nsw i32 %.0145177.us.us, %.1178.us
  %i.ca = and i32 %i.bz, 1
  %.not156.us.us = icmp eq i32 %i.ca, 0
  br i1 %.not156.us.us, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = add nuw nsw i32 %i.bv, %i.bp            ; 3 uses
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bu, i32 noundef %i.bx, i32 noundef %i.cb, ptr noundef null)
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bu, i32 noundef %i.cb, i32 noundef %i.by, ptr noundef null)
  br i1 %8, label %bb.o, label %.thread.us.us

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bu, i32 noundef %i.cb, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us.us

bb.p:                                             ; preds = %bb.m
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.by, i32 noundef %i.bu, i32 noundef %i.bx, ptr noundef null)
  %i.cc = add nuw nsw i32 %i.bv, %i.bp
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.by, i32 noundef %i.bx, i32 noundef %i.cc, ptr noundef null)
  br i1 %8, label %bb.q, label %.thread.us.us

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bx, i32 noundef %i.by, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us.us

.thread.us.us.critedge:                           ; preds = %.lr.ph.split.us.us
  %i.cd = add nuw nsw i32 %.0145177.us.us, %i.bp
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bu, i32 noundef %i.cd, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %.thread.us.us.critedge, %bb.q, %bb.p, %bb.o, %bb.n
  %exitcond196.not = icmp eq i32 %i.bv, %5
  br i1 %exitcond196.not, label %._crit_edge.us185, label %.lr.ph.split.us.us

.loopexit:                                        ; preds = %._crit_edge.us185, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.az, %._crit_edge.us185 ]
  ret ptr %.0

bb.r:                                             ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #19
  unreachable
}

declare void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496), i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers13CreatePatchUVER19btSoftBodyWorldInfoRK9btVector3S4_S4_S4_iiibPf(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, ptr noundef writeonly captures(address_is_null) %9) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %5, 2
  %i.b = icmp slt i32 %6, 2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.a
  %i.c = mul nuw nsw i32 %6, %5                   ; 2 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 4
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #20 ; 3 uses
  %i.g = shl nuw nsw i64 %i.d, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #20 ; 3 uses
  %i.i = add nsw i32 %6, -1
  %i.j = uitofp nneg i32 %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !8  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !8
  %i.o = fsub float %i.n, %i.l
  %i.p = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.q = load <2 x float>, ptr %3, align 4, !tbaa !8
  %i.r = fsub <2 x float> %i.q, %i.p
  %i.s = load <2 x float>, ptr %2, align 4, !tbaa !8 ; 2 uses
  %i.t = load <2 x float>, ptr %4, align 4, !tbaa !8
  %i.u = fsub <2 x float> %i.t, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !8  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !8
  %i.z = fsub float %i.y, %i.w
  %i.aa = add nsw i32 %5, -1
  %i.ab = uitofp nneg i32 %i.aa to float
  %i.ac = zext nneg i32 %5 to i64                 ; 2 uses
  %wide.trip.count256 = zext nneg i32 %6 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv253 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next254, %._crit_edge.us ] ; 3 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv253 to i32
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fdiv float %i.ae, %i.j                  ; 3 uses
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.o, float %i.af, float %i.l) ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.ai, <2 x float> %i.p) ; 2 uses
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.ai, <2 x float> %i.s)
  %i.al = tail call float @llvm.fmuladd.f32(float %i.z, float %i.af, float %i.w)
  %i.am = fsub <2 x float> %i.ak, %i.aj
  %i.an = fsub float %i.al, %i.ag
  %i.ao = mul nuw nsw i64 %indvars.iv253, %i.ac
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32
  %i.aq = uitofp nneg i32 %i.ap to float
  %i.ar = fdiv float %i.aq, %i.ab                 ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.at, <2 x float> %i.aj)
  %i.av = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ar, float %i.ag)
  %.sroa.3.12.vec.insert.i.i226.us = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.av, i64 0
  %i.aw = add nuw nsw i64 %indvars.iv, %i.ao      ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.aw ; 2 uses
  store <2 x float> %i.au, ptr %i.ax, align 4
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i226.us, ptr %.sroa.4.0..sroa_idx.us, align 4, !tbaa !84
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aw
  store float 1.000000e+00, ptr %i.ay, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %exitcond257.not = icmp eq i64 %indvars.iv.next254, %wide.trip.count256
  br i1 %exitcond257.not, label %._crit_edge238, label %.lr.ph.us

._crit_edge238:                                   ; preds = %._crit_edge.us
  %i.az = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 1496, i32 noundef 16) ; 20 uses
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge238
  %i.ba = and i32 %7, 1
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef 0, float noundef 0.000000e+00)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge238
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.az)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.ab

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.e
  resume { ptr, i32 } %i.bb

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.bc = and i32 %7, 2
  %.not210 = icmp eq i32 %i.bc, 0
  br i1 %.not210, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = add nsw i32 %5, -1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bd, float noundef 0.000000e+00)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.be = and i32 %7, 4
  %.not211 = icmp eq i32 %i.be, 0
  br i1 %.not211, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = add nsw i32 %6, -1
  %i.bg = mul nsw i32 %i.bf, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bg, float noundef 0.000000e+00)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bh = and i32 %7, 8
  %.not212 = icmp eq i32 %i.bh, 0
  br i1 %.not212, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add nsw i32 %6, -1
  %i.bj = mul nsw i32 %i.bi, %5
  %i.bk = add nsw i32 %5, -1
  %i.bl = add nuw nsw i32 %i.bk, %i.bj
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bl, float noundef 0.000000e+00)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bm = and i32 %7, 16
  %.not213 = icmp eq i32 %i.bm, 0
  br i1 %.not213, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = add nsw i32 %5, -1
  %i.bo = lshr i32 %i.bn, 1
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bo, float noundef 0.000000e+00)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bp = and i32 %7, 32
  %.not214 = icmp eq i32 %i.bp, 0
  br i1 %.not214, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = add nsw i32 %6, -1
  %i.br = lshr i32 %i.bq, 1
  %i.bs = mul nuw nsw i32 %i.br, %5
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.bs, float noundef 0.000000e+00)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bt = and i32 %7, 64
  %.not215 = icmp eq i32 %i.bt, 0
  br i1 %.not215, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = add nsw i32 %6, -1
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = mul nuw nsw i32 %i.bv, %5
  %i.bx = add nsw i32 %5, -1
  %i.by = add nuw nsw i32 %i.bx, %i.bw
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.by, float noundef 0.000000e+00)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bz = and i32 %7, 128
  %.not216 = icmp eq i32 %i.bz, 0
  br i1 %.not216, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = add nsw i32 %6, -1
  %i.cb = mul nsw i32 %i.ca, %5
  %i.cc = add nsw i32 %5, -1
  %i.cd = lshr i32 %i.cc, 1
  %i.ce = add nuw nsw i32 %i.cb, %i.cd
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.ce, float noundef 0.000000e+00)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cf = and i32 %7, 256
  %.not217 = icmp eq i32 %i.cf, 0
  br i1 %.not217, label %.preheader.us.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = add nsw i32 %6, -1
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = mul nuw nsw i32 %i.ch, %5
  %i.cj = add nsw i32 %5, -1
  %i.ck = lshr i32 %i.cj, 1
  %i.cl = add nuw nsw i32 %i.ci, %i.ck
  tail call void @_ZN10btSoftBody7setMassEif(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.cl, float noundef 0.000000e+00)
  br label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.t, %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #21
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #21
  %.not218 = icmp eq ptr %9, null
  %i.cm = add nsw i32 %5, -1
  %i.cn = uitofp nneg i32 %i.cm to float
  %i.co = fdiv nnan float 1.000000e+00, %i.cn     ; 2 uses
  %i.cp = add nsw i32 %6, -1                      ; 3 uses
  %i.cq = uitofp nneg i32 %i.cp to float
  %i.cr = fdiv nnan float 1.000000e+00, %i.cq     ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us248
  %.1242.us = phi i32 [ %i.cs, %._crit_edge.us248 ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %.0202241.us = phi i32 [ %.us-phi.us, %._crit_edge.us248 ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.cs = add nuw nsw i32 %.1242.us, 1            ; 4 uses
  %i.ct = icmp slt i32 %i.cs, %6
  %i.cu = mul nuw nsw i32 %.1242.us, %5           ; 4 uses
  %i.cv = mul nuw nsw i32 %i.cs, %5               ; 2 uses
  %i.cw = sub nsw i32 %i.cp, %.1242.us
  %i.cx = sitofp i32 %i.cw to float
  %i.cy = fmul float %i.cr, %i.cx                 ; 3 uses
  %i.cz = xor i32 %.1242.us, -1
  %i.da = add i32 %i.cp, %i.cz
  %i.db = sitofp i32 %i.da to float
  %i.dc = fmul float %i.cr, %i.db                 ; 3 uses
  br i1 %i.ct, label %.lr.ph.split.us.us, label %.lr.ph.split.us247

.lr.ph.split.us247:                               ; preds = %.preheader.us, %.thread.us244
  %.0204239.us243 = phi i32 [ %i.dd, %.thread.us244 ], [ 0, %.preheader.us ] ; 2 uses
  %i.dd = add nuw nsw i32 %.0204239.us243, 1      ; 4 uses
  %i.de = icmp slt i32 %i.dd, %5
  br i1 %i.de, label %bb.v, label %.thread.us244

bb.v:                                             ; preds = %.lr.ph.split.us247
  %i.df = add nuw nsw i32 %i.dd, %i.cu
  %i.dg = add nuw nsw i32 %.0204239.us243, %i.cu
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dg, i32 noundef %i.df, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us244

.thread.us244:                                    ; preds = %bb.v, %.lr.ph.split.us247
  %exitcond258.not = icmp eq i32 %i.dd, %5
  br i1 %exitcond258.not, label %._crit_edge.us248, label %.lr.ph.split.us247

._crit_edge.us248:                                ; preds = %.thread.us244, %.thread.us.us
  %.us-phi.us = phi i32 [ %.2.us.us, %.thread.us.us ], [ %.0202241.us, %.thread.us244 ]
  %exitcond260.not = icmp eq i32 %i.cs, %6
  br i1 %exitcond260.not, label %.loopexit, label %.preheader.us

.lr.ph.split.us.us:                               ; preds = %.preheader.us, %.thread.us.us
  %.1203240.us.us = phi i32 [ %.2.us.us, %.thread.us.us ], [ %.0202241.us, %.preheader.us ] ; 3 uses
  %.0204239.us.us = phi i32 [ %i.dh, %.thread.us.us ], [ 0, %.preheader.us ] ; 4 uses
  %i.dh = add nuw nsw i32 %.0204239.us.us, 1      ; 6 uses
  %i.di = icmp slt i32 %i.dh, %5
  %i.dj = add nuw nsw i32 %.0204239.us.us, %i.cu  ; 7 uses
  %i.dk = add nuw nsw i32 %i.dh, %i.cu            ; 3 uses
  %i.dl = add nuw nsw i32 %.0204239.us.us, %i.cv  ; 3 uses
  %i.dm = add nuw nsw i32 %i.dh, %i.cv            ; 4 uses
  br i1 %i.di, label %bb.w, label %.thread.us.us.critedge

bb.w:                                             ; preds = %.lr.ph.split.us.us
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dj, i32 noundef %i.dk, ptr noundef null, i1 noundef zeroext false)
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dj, i32 noundef %i.dl, ptr noundef null, i1 noundef zeroext false)
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dm, ptr noundef null)
  br i1 %.not218, label %.critedge.us.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = uitofp nneg i32 %.0204239.us.us to float
  %i.do = fmul float %i.co, %i.dn                 ; 3 uses
  %i.dp = sext i32 %.1203240.us.us to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %9, i64 %i.dp ; 12 uses
  store float %i.do, ptr %i.dq, align 4, !tbaa !8
  %i.dr = getelementptr i8, ptr %i.dq, i64 4
  store float %i.cy, ptr %i.dr, align 4, !tbaa !8
  %i.ds = getelementptr i8, ptr %i.dq, i64 8
  store float %i.do, ptr %i.ds, align 4, !tbaa !8
  %i.dt = getelementptr i8, ptr %i.dq, i64 12
  store float %i.dc, ptr %i.dt, align 4, !tbaa !8
  %i.du = uitofp nneg i32 %i.dh to float
  %i.dv = fmul float %i.co, %i.du                 ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dq, i64 16
  store float %i.dv, ptr %i.dw, align 4, !tbaa !8
  %i.dx = getelementptr i8, ptr %i.dq, i64 20
  store float %i.dc, ptr %i.dx, align 4, !tbaa !8
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dm, i32 noundef %i.dk, i32 noundef %i.dj, ptr noundef null)
  %i.dy = getelementptr i8, ptr %i.dq, i64 24
  store float %i.dv, ptr %i.dy, align 4, !tbaa !8
  %i.dz = getelementptr i8, ptr %i.dq, i64 28
  store float %i.dc, ptr %i.dz, align 4, !tbaa !8
  %i.ea = getelementptr i8, ptr %i.dq, i64 32
  store float %i.dv, ptr %i.ea, align 4, !tbaa !8
  %i.eb = getelementptr i8, ptr %i.dq, i64 36
  store float %i.cy, ptr %i.eb, align 4, !tbaa !8
  %i.ec = getelementptr i8, ptr %i.dq, i64 40
  store float %i.do, ptr %i.ec, align 4, !tbaa !8
  %i.ed = getelementptr i8, ptr %i.dq, i64 44
  store float %i.cy, ptr %i.ed, align 4, !tbaa !8
  br label %bb.y

.critedge.us.us:                                  ; preds = %bb.w
  tail call void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dm, i32 noundef %i.dk, i32 noundef %i.dj, ptr noundef null)
  br label %bb.y

bb.y:                                             ; preds = %.critedge.us.us, %bb.x
  br i1 %8, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dj, i32 noundef %i.dm, ptr noundef null, i1 noundef zeroext false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ee = add nsw i32 %.1203240.us.us, 12
  br label %.thread.us.us

.thread.us.us.critedge:                           ; preds = %.lr.ph.split.us.us
  tail call void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.az, i32 noundef %i.dj, i32 noundef %i.dl, ptr noundef null, i1 noundef zeroext false)
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %.thread.us.us.critedge, %bb.aa
  %.2.us.us = phi i32 [ %i.ee, %bb.aa ], [ %.1203240.us.us, %.thread.us.us.critedge ] ; 2 uses
  %exitcond259.not = icmp eq i32 %i.dh, %5
  br i1 %exitcond259.not, label %._crit_edge.us248, label %.lr.ph.split.us.us

.loopexit:                                        ; preds = %._crit_edge.us248, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.az, %._crit_edge.us248 ]
  ret ptr %.0

bb.ab:                                            ; preds = %bb.e
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  tail call void @__clang_call_terminate(ptr %i.eg) #19
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN17btSoftBodyHelpers11CalculateUVEiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #14 align 2 {
bb.a:
  switch i32 %4, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i32 %0, -1
  %i.b = sitofp i32 %i.a to float
  %i.c = fdiv nnan float 1.000000e+00, %i.b
  %i.d = sitofp i32 %2 to float
  %i.e = fmul float %i.c, %i.d
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %1, -1                       ; 2 uses
  %i.g = sitofp i32 %i.f to float
  %i.h = fdiv nnan float 1.000000e+00, %i.g
  %i.i = sub nsw i32 %i.f, %3
  %i.j = sitofp i32 %i.i to float
  %i.k = fmul float %i.h, %i.j
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.l = add nsw i32 %1, -1                       ; 2 uses
  %i.m = sitofp i32 %i.l to float
  %i.n = fdiv nnan float 1.000000e+00, %i.m
  %i.o = xor i32 %3, -1
  %i.p = add i32 %i.l, %i.o
  %i.q = sitofp i32 %i.p to float
  %i.r = fmul float %i.n, %i.q
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.s = add nsw i32 %0, -1
  %i.t = sitofp i32 %i.s to float
  %i.u = fdiv nnan float 1.000000e+00, %i.t
  %i.v = add nsw i32 %2, 1
  %i.w = sitofp i32 %i.v to float
  %i.x = fmul float %i.u, %i.w
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.d, %bb.b
  %.0 = phi float [ %i.e, %bb.b ], [ %i.k, %bb.c ], [ %i.r, %bb.d ], [ %i.x, %bb.e ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers15CreateEllipsoidER19btSoftBodyWorldInfoRK9btVector3S4_i(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %5 = add i32 %3, 3                              ; 5 uses
  %6 = icmp sgt i32 %3, -3
  br i1 %6, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %4
  %i.a = zext nneg i32 %5 to i64
  %i.b = shl nuw nsw i64 %i.a, 4
  %i.c = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.b, i32 noundef 16) ; 3 uses
  %i.d = uitofp nneg i32 %5 to float
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i
  %.030.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.q, %._crit_edge.i ] ; 5 uses
  %.01729.i = phi i32 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i ] ; 4 uses
  %.not25.i = icmp eq i32 %.01729.i, 0
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.i13

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i13
  %i.e = tail call float @llvm.fmuladd.f32(float %.1.i, float 2.000000e+00, float -1.000000e+00)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.019.lcssa.i = phi float [ -1.000000e+00, %.preheader.i ], [ %i.e, %._crit_edge.loopexit.i ] ; 3 uses
  %i.f = shl nuw nsw i32 %.01729.i, 1
  %i.g = uitofp nneg i32 %i.f to float
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float f0x40490FDB, float f0x40490FDB)
  %i.i = fdiv float %i.h, %i.d                    ; 2 uses
  %i.j = fneg float %.019.lcssa.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %.019.lcssa.i, float 1.000000e+00)
  %i.l = tail call noundef float @sqrtf(float noundef %i.k) #18, !tbaa !4 ; 2 uses
  %i.m = tail call noundef float @cosf(float noundef %i.i) #18, !tbaa !4
  %i.n = fmul float %i.l, %i.m
  %i.o = tail call noundef float @sinf(float noundef %i.i) #18, !tbaa !4
  %i.p = fmul float %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  store float %i.n, ptr %.030.i, align 4
  %.sroa.4.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 4
  store float %i.p, ptr %.sroa.4.0..0.sroa_idx.i, align 4
  %.sroa.5.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  store float %.019.lcssa.i, ptr %.sroa.5.0..0.sroa_idx.i, align 4
  %.sroa.6.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..0.sroa_idx.i, align 4, !tbaa !84
  %i.r = add nuw nsw i32 %.01729.i, 1             ; 2 uses
  %exitcond.not.i14 = icmp eq i32 %i.r, %5
  br i1 %exitcond.not.i14, label %.lr.ph, label %.preheader.i

.lr.ph.i13:                                       ; preds = %.preheader.i, %.lr.ph.i13
  %.01828.i = phi i32 [ %i.v, %.lr.ph.i13 ], [ %.01729.i, %.preheader.i ] ; 2 uses
  %.01927.i = phi float [ %.1.i, %.lr.ph.i13 ], [ 0.000000e+00, %.preheader.i ] ; 2 uses
  %.02026.i = phi float [ %i.u, %.lr.ph.i13 ], [ 5.000000e-01, %.preheader.i ] ; 2 uses
  %i.s = and i32 %.01828.i, 1
  %.not22.i = icmp eq i32 %i.s, 0
  %i.t = fadd float %.01927.i, %.02026.i
  %.1.i = select i1 %.not22.i, float %.01927.i, float %i.t ; 2 uses
  %i.u = fmul float %.02026.i, 5.000000e-01
  %i.v = lshr i32 %.01828.i, 1                    ; 2 uses
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i13

.lr.ph:                                           ; preds = %._crit_edge.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.a, %4
  %.sroa.1332.24563 = phi ptr [ null, %4 ], [ %i.c, %bb.a ] ; 3 uses
  %i.y = invoke noundef ptr @_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3i(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %.sroa.1332.24563, i32 noundef %5)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %.thread

.thread:                                          ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1332.24563)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit25 unwind label %bb.b

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !8
  %i.ad = load float, ptr %i.w, align 4, !tbaa !8
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = load <2 x float>, ptr %i.aa, align 4, !tbaa !8
  %i.ag = load <2 x float>, ptr %2, align 4, !tbaa !8
  %i.ah = fmul <2 x float> %i.af, %i.ag
  %i.ai = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.aj = fadd <2 x float> %i.ah, %i.ai
  %i.ak = load float, ptr %i.x, align 4, !tbaa !8
  %i.al = fadd float %i.ae, %i.ak
  %.sroa.3.12.vec.insert.i17 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0
  store <2 x float> %i.aj, ptr %i.aa, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i17, ptr %i.ab, align 4, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.a

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %._crit_edge
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1332.24563)
  ret ptr %i.y

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit25: ; preds = %.thread
  resume { ptr, i32 } %i.z

bb.b:                                             ; preds = %.thread
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #19
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3i(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.HullDesc, align 8            ; 10 uses
  %4 = alloca %class.HullResult, align 8          ; 18 uses
  %5 = alloca %class.HullLibrary, align 8         ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 1, ptr %3, align 8, !tbaa !88
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 16, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float 1.000000e-03, ptr %i.d, align 4, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i8 1, ptr %i.f, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr null, ptr %i.g, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store i8 1, ptr %i.j, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 0, ptr %i.l, align 4, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 0, ptr %i.m, align 8, !tbaa !104
  store i8 1, ptr %4, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !108
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 0, ptr %i.p, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i8 1, ptr %i.q, align 8, !tbaa !110
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.r, align 8, !tbaa !114
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !115
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !116
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store i8 1, ptr %i.u, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !120
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 0, ptr %i.w, align 4, !tbaa !121
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %i.x, align 8, !tbaa !122
  store i32 %2, ptr %i.e, align 8, !tbaa !123
  %i.y = invoke noundef i32 @_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.z = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 1496, i32 noundef 16)
          to label %_ZN17btCollisionObjectnwEm.exit unwind label %bb.e ; 8 uses

_ZN17btCollisionObjectnwEm.exit:                  ; preds = %bb.b
  %i.aa = load i32, ptr %i.n, align 4, !tbaa !107
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !95
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(1496) %i.z, ptr noundef nonnull %0, i32 noundef %i.aa, ptr noundef nonnull %i.ab, ptr noundef null)
          to label %.preheader unwind label %bb.f

.preheader:                                       ; preds = %_ZN17btCollisionObjectnwEm.exit
  %i.ac = load i32, ptr %i.o, align 8, !tbaa !108
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n, %.preheader
  %i.ae = invoke noundef i32 @_ZN11HullLibrary13ReleaseResultER10HullResult(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %bb.o unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.r
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.e:                                             ; preds = %bb.b, %bb.o, %._crit_edge
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.f:                                             ; preds = %_ZN17btCollisionObjectnwEm.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.z)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.ab

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.preheader ] ; 2 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !102
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4  ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4  ; 5 uses
  %i.aq = icmp slt i32 %i.al, %i.an
  br i1 %i.aq, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.z, i32 noundef %i.al, i32 noundef %i.an, ptr noundef null, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.i:                                             ; preds = %bb.g, %.lr.ph
  %i.as = icmp slt i32 %i.an, %i.ap
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.z, i32 noundef %i.an, i32 noundef %i.ap, ptr noundef null, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = icmp slt i32 %i.ap, %i.al
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.z, i32 noundef %i.ap, i32 noundef %i.al, ptr noundef null, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l, %bb.k
  invoke void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.z, i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ap, ptr noundef null)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = load i32, ptr %i.o, align 8, !tbaa !108
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

bb.o:                                             ; preds = %._crit_edge
  invoke void @_ZN10btSoftBody20randomizeConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1496) %i.z)
          to label %bb.p unwind label %bb.e

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.ax, null
  %i.ay = load i8, ptr %i.u, align 8, !range !82
  %i.az = trunc nuw i8 %i.ay to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.az, i1 false
  br i1 %or.cond.i.i.i, label %bb.q, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ax)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i unwind label %bb.s

_ZN20btAlignedObjectArrayIiED2Ev.exit.i:          ; preds = %bb.q, %bb.p
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i2.i = icmp ne ptr %i.ba, null
  %i.bb = load i8, ptr %i.q, align 8, !range !82
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond.i.i3.i = select i1 %.not.i.i.i2.i, i1 %i.bc, i1 false
  br i1 %or.cond.i.i3.i, label %bb.r, label %_ZN11HullLibraryD2Ev.exit

bb.r:                                             ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ba)
          to label %_ZN11HullLibraryD2Ev.exit unwind label %bb.c

bb.s:                                             ; preds = %bb.q
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %i.r, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i4.i = icmp ne ptr %i.be, null
  %i.bf = load i8, ptr %i.q, align 8, !range !82
  %i.bg = trunc nuw i8 %i.bf to i1
  %or.cond.i.i5.i = select i1 %.not.i.i.i4.i, i1 %i.bg, i1 false
  br i1 %or.cond.i.i5.i, label %bb.t, label %.body

bb.t:                                             ; preds = %bb.s
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.be)
          to label %.body unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #19
  unreachable

_ZN11HullLibraryD2Ev.exit:                        ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i.i41 = icmp ne ptr %i.bj, null
  %i.bk = load i8, ptr %i.j, align 8, !range !82
  %i.bl = trunc nuw i8 %i.bk to i1
  %or.cond.i.i.i42 = select i1 %.not.i.i.i.i41, i1 %i.bl, i1 false
  br i1 %or.cond.i.i.i42, label %bb.v, label %_ZN20btAlignedObjectArrayIjED2Ev.exit.i

bb.v:                                             ; preds = %_ZN11HullLibraryD2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bj)
          to label %_ZN20btAlignedObjectArrayIjED2Ev.exit.i unwind label %bb.x

_ZN20btAlignedObjectArrayIjED2Ev.exit.i:          ; preds = %bb.v, %_ZN11HullLibraryD2Ev.exit
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !95  ; 2 uses
  %.not.i.i.i2.i43 = icmp ne ptr %i.bm, null
  %i.bn = load i8, ptr %i.f, align 8, !range !82
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond.i.i3.i44 = select i1 %.not.i.i.i2.i43, i1 %i.bo, i1 false
  br i1 %or.cond.i.i3.i44, label %bb.w, label %_ZN10HullResultD2Ev.exit

bb.w:                                             ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bm)
  br label %_ZN10HullResultD2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !95  ; 2 uses
  %.not.i.i.i4.i45 = icmp ne ptr %i.bq, null
  %i.br = load i8, ptr %i.f, align 8, !range !82
  %i.bs = trunc nuw i8 %i.br to i1
  %or.cond.i.i5.i46 = select i1 %.not.i.i.i4.i45, i1 %i.bs, i1 false
  br i1 %or.cond.i.i5.i46, label %bb.y, label %common.resume

bb.y:                                             ; preds = %bb.x
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bq)
          to label %common.resume unwind label %bb.z

common.resume:                                    ; preds = %bb.x, %bb.y, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %bb.aa ], [ %i.bp, %bb.y ], [ %i.bp, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #19
  unreachable

_ZN10HullResultD2Ev.exit:                         ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret ptr %i.z

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.f, %bb.e, %bb.h, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.d ], [ %i.ar, %bb.h ], [ %i.ah, %bb.e ], [ %i.ai, %bb.f ]
  invoke void @_ZN11HullLibraryD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5)
          to label %.body unwind label %bb.ab

.body:                                            ; preds = %bb.s, %bb.t, %bb.c, %_ZN17btCollisionObjectdlEPv.exit
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN17btCollisionObjectdlEPv.exit ], [ %i.af, %bb.c ], [ %i.bd, %bb.t ], [ %i.bd, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  invoke void @_ZN10HullResultD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume

bb.ab:                                            ; preds = %bb.f, %.body, %_ZN17btCollisionObjectdlEPv.exit
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #19
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers17CreateFromTriMeshER19btSoftBodyWorldInfoPKfPKii(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i32 %3, 3                            ; 3 uses
  %i.b = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %min.iters.check = icmp slt i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader186, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %vec.phi184 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !4
  %wide.load185 = load <4 x i32>, ptr %i.d, align 4, !tbaa !4
  %i.e = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.f = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load185, <4 x i32> %vec.phi184) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.e, <4 x i32> %i.f)
  %i.h = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader186

.lr.ph.preheader186:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0133152.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader186, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader186 ] ; 2 uses
  %.0133152 = phi i32 [ %.sroa.speculated, %.lr.ph ], [ %.0133152.ph, %.lr.ph.preheader186 ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %.0133152) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !188

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.sroa.speculated.lcssa = phi i32 [ %i.h, %middle.block ], [ %.sroa.speculated, %.lr.ph ]
  %i.k = add nuw nsw i32 %.sroa.speculated.lcssa, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge.loopexit
  %.0133.lcssa = phi i32 [ 1, %bb.a ], [ %i.k, %._crit_edge.loopexit ] ; 9 uses
  %i.l = mul nsw i32 %.0133.lcssa, %.0133.lcssa
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.m, i32 noundef 16) ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, i8 0, i64 %i.m, i1 false), !tbaa !189
  %i.o = zext nneg i32 %.0133.lcssa to i64
  %i.p = shl nuw nsw i64 %i.o, 4
  %i.q = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.p, i32 noundef 16)
          to label %.lr.ph156.preheader unwind label %bb.d ; 7 uses

.lr.ph156.preheader:                              ; preds = %bb.b
  %i.r = mul i32 %.0133.lcssa, 3                  ; 2 uses
  %smax171 = tail call i32 @llvm.smax.i32(i32 %i.r, i32 3)
  %i.s = add nsw i32 %smax171, -1
  %i.t = udiv i32 %i.s, 3
  %i.u = add nuw nsw i32 %i.t, 1                  ; 2 uses
  %wide.trip.count172 = zext nneg i32 %i.u to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count172, 1
  %i.v = icmp slt i32 %i.r, 4
  br i1 %i.v, label %.lr.ph156.epil.preheader, label %.lr.ph156.preheader.new

.lr.ph156.preheader.new:                          ; preds = %.lr.ph156.preheader
  %unroll_iter = and i64 %wide.trip.count172, 2147483646
  br label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph156, %.lr.ph156.preheader.new
  %indvars.iv166 = phi i64 [ 0, %.lr.ph156.preheader.new ], [ %indvars.iv.next167.1, %.lr.ph156 ] ; 3 uses
  %indvars.iv164 = phi i64 [ 0, %.lr.ph156.preheader.new ], [ %indvars.iv.next165.1, %.lr.ph156 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph156.preheader.new ], [ %niter.next.1, %.lr.ph156 ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv164 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv166 ; 3 uses
  %i.aa = load <2 x float>, ptr %i.w, align 4, !tbaa !8
  store <2 x float> %i.aa, ptr %i.z, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store float %i.y, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !84
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv164 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !8
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv166 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load <2 x float>, ptr %i.ac, align 4, !tbaa !8
  store <2 x float> %i.ah, ptr %i.ag, align 4
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store float %i.ae, ptr %.sroa.5.0..sroa_idx.1, align 4
  %.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.1, align 4, !tbaa !84
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164, 6 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge157.unr-lcssa, label %.lr.ph156

bb.c:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit85

bb.d:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit85

._crit_edge157.unr-lcssa:                         ; preds = %.lr.ph156
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge157, label %.lr.ph156.epil.preheader

.lr.ph156.epil.preheader:                         ; preds = %._crit_edge157.unr-lcssa, %.lr.ph156.preheader
  %indvars.iv166.epil.init = phi i64 [ 0, %.lr.ph156.preheader ], [ %indvars.iv.next167.1, %._crit_edge157.unr-lcssa ]
  %indvars.iv164.epil.init = phi i64 [ 0, %.lr.ph156.preheader ], [ %indvars.iv.next165.1, %._crit_edge157.unr-lcssa ]
  %lcmp.mod189 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv164.epil.init ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !8
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv166.epil.init ; 3 uses
  %i.ao = load <2 x float>, ptr %i.ak, align 4, !tbaa !8
  store <2 x float> %i.ao, ptr %i.an, align 4
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store float %i.am, ptr %.sroa.5.0..sroa_idx.epil, align 4
  %.sroa.6.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.epil, align 4, !tbaa !84
  br label %._crit_edge157

._crit_edge157:                                   ; preds = %._crit_edge157.unr-lcssa, %.lr.ph156.epil.preheader
  %i.ap = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 1496, i32 noundef 16)
          to label %_ZN17btCollisionObjectnwEm.exit unwind label %bb.e ; 8 uses

_ZN17btCollisionObjectnwEm.exit:                  ; preds = %._crit_edge157
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(1496) %i.ap, ptr noundef nonnull %0, i32 noundef %.0133.lcssa, ptr noundef nonnull %i.q, ptr noundef null)
          to label %.preheader unwind label %bb.f

.preheader:                                       ; preds = %_ZN17btCollisionObjectnwEm.exit
  br i1 %i.b, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %.preheader, %bb.n
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %bb.n ], [ 0, %.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv178 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4  ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 7 uses
  %i.aw = mul nsw i32 %i.ar, %.0133.lcssa         ; 2 uses
  %i.ax = add nsw i32 %i.aw, %i.av
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.n, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !189, !range !82, !noundef !83
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.i, label %bb.g

bb.e:                                             ; preds = %._crit_edge157, %._crit_edge162
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.f:                                             ; preds = %_ZN17btCollisionObjectnwEm.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ap)
          to label %_ZN17btCollisionObjectdlEPv.exit.thread140 unwind label %bb.q

bb.g:                                             ; preds = %.lr.ph161
  store i8 1, ptr %i.az, align 1, !tbaa !189
  %i.be = mul nsw i32 %i.av, %.0133.lcssa
  %i.bf = add nsw i32 %i.be, %i.ar
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.n, i64 %i.bg
  store i8 1, ptr %i.bh, align 1, !tbaa !189
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ap, i32 noundef %i.av, i32 noundef %i.ar, ptr noundef null, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.j, %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.i:                                             ; preds = %.lr.ph161, %bb.g
  %i.bj = mul nsw i32 %i.at, %.0133.lcssa         ; 2 uses
  %i.bk = add nsw i32 %i.bj, %i.ar
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.n, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !189, !range !82, !noundef !83
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.bm, align 1, !tbaa !189
  %i.bp = add nsw i32 %i.aw, %i.at
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.n, i64 %i.bq
  store i8 1, ptr %i.br, align 1, !tbaa !189
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ap, i32 noundef %i.ar, i32 noundef %i.at, ptr noundef null, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bs = mul nsw i32 %i.av, %.0133.lcssa
  %i.bt = add nsw i32 %i.bs, %i.at
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.n, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !189, !range !82, !noundef !83
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.bv, align 1, !tbaa !189
  %i.by = add nsw i32 %i.bj, %i.av
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.n, i64 %i.bz
  store i8 1, ptr %i.ca, align 1, !tbaa !189
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ap, i32 noundef %i.at, i32 noundef %i.av, ptr noundef null, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l, %bb.k
  invoke void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.ap, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef %i.av, ptr noundef null)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 3 ; 2 uses
  %i.cb = trunc nuw i64 %indvars.iv.next179 to i32
  %i.cc = icmp sgt i32 %i.a, %i.cb
  br i1 %i.cc, label %.lr.ph161, label %._crit_edge162

bb.o:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

._crit_edge162:                                   ; preds = %bb.n, %.preheader
  invoke void @_ZN10btSoftBody20randomizeConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1496) %i.ap)
          to label %bb.p unwind label %bb.e

bb.p:                                             ; preds = %._crit_edge162
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.q)
          to label %_ZN20btAlignedObjectArrayIbED2Ev.exit unwind label %bb.c

_ZN20btAlignedObjectArrayIbED2Ev.exit:            ; preds = %bb.p
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.n)
  ret ptr %i.ap

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.h, %bb.o, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.e ], [ %i.bi, %bb.h ], [ %i.cd, %bb.o ] ; 2 uses
  %.not.i.i.i82.not = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i82.not, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit85, label %_ZN17btCollisionObjectdlEPv.exit.thread140

_ZN17btCollisionObjectdlEPv.exit.thread140:       ; preds = %bb.f, %_ZN17btCollisionObjectdlEPv.exit
  %.pn.pn.pn147 = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN17btCollisionObjectdlEPv.exit ], [ %i.bd, %bb.f ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.q)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit85 unwind label %bb.q

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit85: ; preds = %bb.c, %_ZN17btCollisionObjectdlEPv.exit.thread140, %_ZN17btCollisionObjectdlEPv.exit, %bb.d
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.c ], [ %.pn.pn.pn147, %_ZN17btCollisionObjectdlEPv.exit.thread140 ], [ %.pn.pn.pn, %_ZN17btCollisionObjectdlEPv.exit ], [ %i.aj, %bb.d ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.n)
          to label %_ZN20btAlignedObjectArrayIbED2Ev.exit89 unwind label %bb.q

_ZN20btAlignedObjectArrayIbED2Ev.exit89:          ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit85
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.q:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit85, %_ZN17btCollisionObjectdlEPv.exit.thread140, %bb.f
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #19
  unreachable
}

declare void @_ZN10btSoftBody20randomizeConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1496)) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers20CreateFromTetGenDataER19btSoftBodyWorldInfoPKcS3_S3_bbb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readnone captures(none) %2, ptr noundef readonly captures(none) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca float, align 4                    ; 4 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca [4 x i32], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !4
  %i.n = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #18 ; 0 uses
  %i.o = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #18 ; 0 uses
  %i.p = load i8, ptr %3, align 1, !tbaa !84
  %.not7.i = icmp eq i8 %i.p, 10
  br i1 %.not7.i, label %_ZL8nextLinePKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi i32 [ %i.r, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.068.i = phi ptr [ %i.q, %.lr.ph.i ], [ %3, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %.068.i, i64 1 ; 2 uses
  %i.r = add nuw nsw i32 %.09.i, 1
  %i.s = load i8, ptr %i.q, align 1, !tbaa !84
  %.not.i = icmp eq i8 %i.s, 10
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.t = add nuw nsw i32 %.09.i, 2
  %i.u = zext nneg i32 %i.t to i64
  br label %_ZL8nextLinePKc.exit

_ZL8nextLinePKc.exit:                             ; preds = %bb.a, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 1, %bb.a ], [ %i.u, %._crit_edge.loopexit.i ]
  %i.v = load i32, ptr %i.a, align 4, !tbaa !4    ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZL8nextLinePKc.exit
  %i.x = zext nneg i32 %i.v to i64
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.y, i32 noundef 16) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa.i
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZL8nextLinePKc.exit54, %_ZL8nextLinePKc.exit
  %.sroa.1181.2113 = phi ptr [ null, %_ZL8nextLinePKc.exit ], [ %i.z, %_ZL8nextLinePKc.exit54 ] ; 4 uses
  %i.ab = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 1496, i32 noundef 16)
          to label %_ZN17btCollisionObjectnwEm.exit unwind label %bb.e ; 14 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL8nextLinePKc.exit54
  %.035103 = phi i32 [ %i.as, %_ZL8nextLinePKc.exit54 ], [ 0, %.lr.ph.preheader ]
  %.039102 = phi ptr [ %i.aj, %_ZL8nextLinePKc.exit54 ], [ %i.aa, %.lr.ph.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 0, ptr %i.e, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.ac = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %.039102, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #18 ; 0 uses
  %i.ad = load i8, ptr %.039102, align 1, !tbaa !84
  %.not7.i47 = icmp eq i8 %i.ad, 10
  br i1 %.not7.i47, label %_ZL8nextLinePKc.exit54, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph, %.lr.ph.i48
  %.09.i49 = phi i32 [ %i.af, %.lr.ph.i48 ], [ 0, %.lr.ph ] ; 2 uses
  %.068.i50 = phi ptr [ %i.ae, %.lr.ph.i48 ], [ %.039102, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.068.i50, i64 1 ; 2 uses
  %i.af = add nuw nsw i32 %.09.i49, 1
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !84
  %.not.i51 = icmp eq i8 %i.ag, 10
  br i1 %.not.i51, label %._crit_edge.loopexit.i52, label %.lr.ph.i48

._crit_edge.loopexit.i52:                         ; preds = %.lr.ph.i48
  %i.ah = add nuw nsw i32 %.09.i49, 2
  %i.ai = zext nneg i32 %i.ah to i64
  br label %_ZL8nextLinePKc.exit54

_ZL8nextLinePKc.exit54:                           ; preds = %.lr.ph, %._crit_edge.loopexit.i52
  %.0.lcssa.i53 = phi i64 [ 1, %.lr.ph ], [ %i.ai, %._crit_edge.loopexit.i52 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.039102, i64 %.0.lcssa.i53
  %i.ak = load i32, ptr %i.e, align 4, !tbaa !4
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.al ; 3 uses
  %i.an = load float, ptr %i.f, align 4, !tbaa !8
  store float %i.an, ptr %i.am, align 4, !tbaa !8
  %i.ao = load float, ptr %i.g, align 4, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store float %i.ao, ptr %i.ap, align 4, !tbaa !8
  %i.aq = load float, ptr %i.h, align 4, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store float %i.aq, ptr %i.ar, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %i.as = add nuw nsw i32 %.035103, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

_ZN17btCollisionObjectnwEm.exit:                  ; preds = %._crit_edge
  %i.at = load i32, ptr %i.a, align 4, !tbaa !4
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, ptr noundef nonnull %0, i32 noundef %i.at, ptr noundef nonnull %.sroa.1181.2113, ptr noundef null)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZN17btCollisionObjectnwEm.exit
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = load i8, ptr %1, align 1, !tbaa !84
  %.not41 = icmp eq i8 %i.au, 0
  br i1 %.not41, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  store i32 0, ptr %i.i, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  store i32 0, ptr %i.j, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store i32 0, ptr %i.k, align 4, !tbaa !4
  %i.av = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #18 ; 0 uses
  %i.aw = load i8, ptr %1, align 1, !tbaa !84
  %.not7.i55 = icmp eq i8 %i.aw, 10
  br i1 %.not7.i55, label %_ZL8nextLinePKc.exit62, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %bb.d, %.lr.ph.i56
  %.09.i57 = phi i32 [ %i.ay, %.lr.ph.i56 ], [ 0, %bb.d ] ; 2 uses
  %.068.i58 = phi ptr [ %i.ax, %.lr.ph.i56 ], [ %1, %bb.d ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.068.i58, i64 1 ; 2 uses
  %i.ay = add nuw nsw i32 %.09.i57, 1
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !84
  %.not.i59 = icmp eq i8 %i.az, 10
  br i1 %.not.i59, label %._crit_edge.loopexit.i60, label %.lr.ph.i56

._crit_edge.loopexit.i60:                         ; preds = %.lr.ph.i56
  %i.ba = add nuw nsw i32 %.09.i57, 2
  %i.bb = zext nneg i32 %i.ba to i64
  br label %_ZL8nextLinePKc.exit62

_ZL8nextLinePKc.exit62:                           ; preds = %bb.d, %._crit_edge.loopexit.i60
  %.0.lcssa.i61 = phi i64 [ 1, %bb.d ], [ %i.bb, %._crit_edge.loopexit.i60 ]
  %i.bc = load i32, ptr %i.i, align 4, !tbaa !4
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %_ZL8nextLinePKc.exit62
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa.i61
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 5 uses
  br label %bb.g

._crit_edge107:                                   ; preds = %bb.p, %_ZL8nextLinePKc.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.e:                                             ; preds = %._crit_edge
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.f:                                             ; preds = %_ZN17btCollisionObjectnwEm.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ab)
          to label %_ZN17btCollisionObjectdlEPv.exit.thread unwind label %bb.r

_ZN17btCollisionObjectdlEPv.exit.thread:          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.q

bb.g:                                             ; preds = %.lr.ph106, %bb.p
  %.0105 = phi i32 [ 0, %.lr.ph106 ], [ %i.cj, %bb.p ]
  %.034104 = phi ptr [ %i.be, %.lr.ph106 ], [ %i.br, %bb.p ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  store i32 0, ptr %i.l, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  %i.bk = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %.034104, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh) #18 ; 0 uses
  %i.bl = load i8, ptr %.034104, align 1, !tbaa !84
  %.not7.i64 = icmp eq i8 %i.bl, 10
  br i1 %.not7.i64, label %_ZL8nextLinePKc.exit71, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %bb.g, %.lr.ph.i65
  %.09.i66 = phi i32 [ %i.bn, %.lr.ph.i65 ], [ 0, %bb.g ] ; 2 uses
  %.068.i67 = phi ptr [ %i.bm, %.lr.ph.i65 ], [ %.034104, %bb.g ]
end_hunk_1
begin_hunk_2_@_ZN17btSoftBodyHelpers20CreateFromTetGenDataER19btSoftBodyWorldInfoPKcS3_S3_bbb:bb.a
  %i.bv = load i32, ptr %i.bh, align 4, !tbaa !4
  invoke void @_ZN10btSoftBody11appendTetraEiiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.bs, i32 noundef %i.bt, i32 noundef %i.bu, i32 noundef %i.bv, ptr noundef null)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZL8nextLinePKc.exit71
  br i1 %5, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bw = load i32, ptr %i.m, align 16, !tbaa !4
  %i.bx = load i32, ptr %i.bf, align 4, !tbaa !4
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.bw, i32 noundef %i.bx, ptr noundef null, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.by = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bz = load i32, ptr %i.bg, align 8, !tbaa !4
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.by, i32 noundef %i.bz, ptr noundef null, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ca = load i32, ptr %i.bg, align 8, !tbaa !4
  %i.cb = load i32, ptr %i.m, align 16, !tbaa !4
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.ca, i32 noundef %i.cb, ptr noundef null, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cc = load i32, ptr %i.m, align 16, !tbaa !4
  %i.cd = load i32, ptr %i.bh, align 4, !tbaa !4
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.cc, i32 noundef %i.cd, ptr noundef null, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ce = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.cf = load i32, ptr %i.bh, align 4, !tbaa !4
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.ce, i32 noundef %i.cf, ptr noundef null, i1 noundef zeroext true)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cg = load i32, ptr %i.bg, align 8, !tbaa !4
  %i.ch = load i32, ptr %i.bh, align 4, !tbaa !4
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(1496) %i.ab, i32 noundef %i.cg, i32 noundef %i.ch, ptr noundef null, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %_ZL8nextLinePKc.exit71
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.p:                                             ; preds = %bb.n, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  %i.cj = add nuw nsw i32 %.0105, 1               ; 2 uses
  %i.ck = load i32, ptr %i.i, align 4, !tbaa !4
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.g, label %._crit_edge107

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %._crit_edge107, %bb.c, %bb.b
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ab, i64 820
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !10
  %i.co = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.cn) ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 852
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !25
  %i.cr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.cq) ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ab, i64 884
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !57
  %i.cu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.ct) ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ab, i64 916
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !124
  %i.cx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.cw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1181.2113)
  ret ptr %i.ab

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.e, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.e ], [ %i.ci, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i.i.i74.not = icmp eq ptr %.sroa.1181.2113, null
  br i1 %.not.i.i.i74.not, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit77, label %bb.q

bb.q:                                             ; preds = %_ZN17btCollisionObjectdlEPv.exit.thread, %_ZN17btCollisionObjectdlEPv.exit
  %.pn.pn97 = phi { ptr, i32 } [ %i.bj, %_ZN17btCollisionObjectdlEPv.exit.thread ], [ %.pn.pn, %_ZN17btCollisionObjectdlEPv.exit ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1181.2113)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit77 unwind label %bb.r

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit77: ; preds = %_ZN17btCollisionObjectdlEPv.exit, %bb.q
  %.pn.pn96 = phi { ptr, i32 } [ %.pn.pn, %_ZN17btCollisionObjectdlEPv.exit ], [ %.pn.pn97, %bb.q ]
  resume { ptr, i32 } %.pn.pn96

bb.r:                                             ; preds = %bb.q, %bb.f
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #19
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @_ZN10btSoftBody11appendTetraEiiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv() local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.d, i64 16, i1 false), !tbaa.struct !87
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !87
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN11btTransform11getIdentityEvE17identityTransform

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #18
  resume { ptr, i32 } %i.h
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv() local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 1.000000e+00, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, align 4, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 4), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 20), align 4, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 40), align 4, !tbaa !8
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #15

attributes #0 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = !{!11, !5, i64 4}
!11 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NodeEE", !12, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !15, i64 24}
!12 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NodeELj16EE"}
!13 = !{!"p1 _ZTSN10btSoftBody4NodeE", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!11, !13, i64 16}
!17 = !{!18, !20, i64 8}
!18 = !{!"_ZTSN10btSoftBody7FeatureE", !19, i64 0, !20, i64 8}
!19 = !{!"_ZTSN10btSoftBody7ElementE", !14, i64 0}
!20 = !{!"p1 _ZTSN10btSoftBody8MaterialE", !14, i64 0}
!21 = !{!22, !5, i64 20}
!22 = !{!"_ZTSN10btSoftBody8MaterialE", !19, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !5, i64 20}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !7, i64 0}
!25 = !{!26, !5, i64 4}
!26 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4LinkEE", !27, i64 0, !5, i64 4, !5, i64 8, !28, i64 16, !15, i64 24}
!27 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4LinkELj16EE"}
!28 = !{!"p1 _ZTSN10btSoftBody4LinkE", !14, i64 0}
!29 = !{!26, !28, i64 16}
!30 = !{!13, !13, i64 0}
!31 = !{!"branch_weights", i32 1, i32 1048575}
!32 = !{!33, !5, i64 4}
!33 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8RContactEE", !34, i64 0, !5, i64 4, !5, i64 8, !35, i64 16, !15, i64 24}
!34 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8RContactELj16EE"}
!35 = !{!"p1 _ZTSN10btSoftBody8RContactE", !14, i64 0}
!36 = !{!33, !35, i64 16}
!37 = !{!38, !13, i64 32}
!38 = !{!"_ZTSN10btSoftBody8RContactE", !39, i64 0, !13, i64 32, !42, i64 40, !41, i64 88, !9, i64 104, !9, i64 108, !9, i64 112}
!39 = !{!"_ZTSN10btSoftBody4sCtiE", !40, i64 0, !41, i64 8, !9, i64 24}
!40 = !{!"p1 _ZTS17btCollisionObject", !14, i64 0}
!41 = !{!"_ZTS9btVector3", !6, i64 0}
!42 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!43 = !{!38, !9, i64 24}
!44 = !{!45, !5, i64 4}
!45 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody6AnchorEE", !46, i64 0, !5, i64 4, !5, i64 8, !47, i64 16, !15, i64 24}
!46 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody6AnchorELj16EE"}
!47 = !{!"p1 _ZTSN10btSoftBody6AnchorE", !14, i64 0}
!48 = !{!45, !47, i64 16}
!49 = !{!50, !51, i64 24}
!50 = !{!"_ZTSN10btSoftBody6AnchorE", !13, i64 0, !41, i64 8, !51, i64 24, !42, i64 32, !41, i64 80, !9, i64 96}
!51 = !{!"p1 _ZTS11btRigidBody", !14, i64 0}
!52 = !{!50, !13, i64 0}
!53 = distinct !{null}
!54 = !{!55, !9, i64 96}
!55 = !{!"_ZTSN10btSoftBody4NodeE", !18, i64 0, !41, i64 16, !41, i64 32, !41, i64 48, !41, i64 64, !41, i64 80, !9, i64 96, !9, i64 100, !56, i64 104, !5, i64 112}
!56 = !{!"p1 _ZTS10btDbvtNode", !14, i64 0}
!57 = !{!58, !5, i64 4}
!58 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4FaceEE", !59, i64 0, !5, i64 4, !5, i64 8, !60, i64 16, !15, i64 24}
!59 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4FaceELj16EE"}
!60 = !{!"p1 _ZTSN10btSoftBody4FaceE", !14, i64 0}
!61 = !{!58, !60, i64 16}
!62 = !{!63, !5, i64 4}
!63 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody7ClusterEE", !64, i64 0, !5, i64 4, !5, i64 8, !65, i64 16, !15, i64 24}
!64 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody7ClusterELj16EE"}
!65 = !{!"p2 _ZTSN10btSoftBody7ClusterE", !66, i64 0}
!66 = !{!"any p2 pointer", !14, i64 0}
!67 = !{!63, !65, i64 16}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTSN10btSoftBody7ClusterE", !14, i64 0}
!70 = !{!71, !15, i64 417}
!71 = !{!"_ZTSN10btSoftBody7ClusterE", !72, i64 0, !75, i64 32, !78, i64 64, !81, i64 96, !9, i64 160, !9, i64 164, !42, i64 168, !42, i64 216, !41, i64 264, !6, i64 280, !6, i64 312, !5, i64 344, !5, i64 348, !41, i64 352, !41, i64 368, !56, i64 384, !9, i64 392, !9, i64 396, !9, i64 400, !9, i64 404, !9, i64 408, !9, i64 412, !15, i64 416, !15, i64 417, !5, i64 420}
!72 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody4NodeEE", !73, i64 0, !5, i64 4, !5, i64 8, !74, i64 16, !15, i64 24}
!73 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody4NodeELj16EE"}
!74 = !{!"p2 _ZTSN10btSoftBody4NodeE", !66, i64 0}
!75 = !{!"_ZTS20btAlignedObjectArrayIfE", !76, i64 0, !5, i64 4, !5, i64 8, !77, i64 16, !15, i64 24}
!76 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!77 = !{!"p1 float", !14, i64 0}
!78 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !79, i64 0, !5, i64 4, !5, i64 8, !80, i64 16, !15, i64 24}
!79 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!80 = !{!"p1 _ZTS9btVector3", !14, i64 0}
!81 = !{!"_ZTS11btTransform", !42, i64 0, !41, i64 48}
!82 = !{i8 0, i8 2}
!83 = !{}
!84 = !{!6, !6, i64 0}
!85 = !{!72, !5, i64 4}
!86 = !{!72, !74, i64 16}
!87 = !{i64 0, i64 16, !84}
!88 = !{!89, !5, i64 0}
!89 = !{!"_ZTS8HullDesc", !5, i64 0, !5, i64 4, !80, i64 8, !5, i64 16, !9, i64 20, !5, i64 24, !5, i64 28}
!90 = !{!89, !5, i64 4}
!91 = !{!89, !80, i64 8}
!92 = !{!89, !5, i64 16}
!93 = !{!89, !9, i64 20}
!94 = !{!78, !15, i64 24}
!95 = !{!78, !80, i64 16}
!96 = !{!78, !5, i64 4}
!97 = !{!78, !5, i64 8}
!98 = !{!99, !15, i64 24}
!99 = !{!"_ZTS20btAlignedObjectArrayIjE", !100, i64 0, !5, i64 4, !5, i64 8, !101, i64 16, !15, i64 24}
!100 = !{!"_ZTS18btAlignedAllocatorIjLj16EE"}
!101 = !{!"p1 int", !14, i64 0}
!102 = !{!99, !101, i64 16}
!103 = !{!99, !5, i64 4}
!104 = !{!99, !5, i64 8}
!105 = !{!106, !15, i64 0}
!106 = !{!"_ZTS10HullResult", !15, i64 0, !5, i64 4, !78, i64 8, !5, i64 40, !5, i64 44, !99, i64 48}
!107 = !{!106, !5, i64 4}
!108 = !{!106, !5, i64 40}
!109 = !{!106, !5, i64 44}
!110 = !{!111, !15, i64 24}
!111 = !{!"_ZTS20btAlignedObjectArrayIP14btHullTriangleE", !112, i64 0, !5, i64 4, !5, i64 8, !113, i64 16, !15, i64 24}
!112 = !{!"_ZTS18btAlignedAllocatorIP14btHullTriangleLj16EE"}
!113 = !{!"p2 _ZTS14btHullTriangle", !66, i64 0}
!114 = !{!111, !113, i64 16}
!115 = !{!111, !5, i64 4}
!116 = !{!111, !5, i64 8}
!117 = !{!118, !15, i64 24}
!118 = !{!"_ZTS20btAlignedObjectArrayIiE", !119, i64 0, !5, i64 4, !5, i64 8, !101, i64 16, !15, i64 24}
!119 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!120 = !{!118, !101, i64 16}
!121 = !{!118, !5, i64 4}
!122 = !{!118, !5, i64 8}
!123 = !{!89, !5, i64 24}
!124 = !{!125, !5, i64 4}
!125 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody5TetraEE", !126, i64 0, !5, i64 4, !5, i64 8, !127, i64 16, !15, i64 24}
!126 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody5TetraELj16EE"}
!127 = !{!"p1 _ZTSN10btSoftBody5TetraE", !14, i64 0}
!128 = !{!125, !127, i64 16}
!129 = !{!130, !5, i64 4}
!130 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NoteEE", !131, i64 0, !5, i64 4, !5, i64 8, !132, i64 16, !15, i64 24}
!131 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NoteELj16EE"}
!132 = !{!"p1 _ZTSN10btSoftBody4NoteE", !14, i64 0}
!133 = !{!130, !132, i64 16}
!134 = !{!135, !5, i64 32}
!135 = !{!"_ZTSN10btSoftBody4NoteE", !19, i64 0, !136, i64 8, !41, i64 16, !5, i64 32, !6, i64 40, !6, i64 72}
!136 = !{!"p1 omnipotent char", !14, i64 0}
!137 = !{!135, !136, i64 8}
!138 = !{!139, !56, i64 1144}
!139 = !{!"_ZTS10btSoftBody", !140, i64 0, !143, i64 280, !146, i64 312, !152, i64 512, !153, i64 536, !14, i64 768, !154, i64 776, !130, i64 784, !11, i64 816, !26, i64 848, !58, i64 880, !125, i64 912, !45, i64 944, !33, i64 976, !155, i64 1008, !158, i64 1040, !161, i64 1072, !9, i64 1104, !6, i64 1108, !15, i64 1140, !164, i64 1144, !164, i64 1208, !164, i64 1272, !63, i64 1336, !168, i64 1368, !81, i64 1400, !118, i64 1464}
!140 = !{!"_ZTS17btCollisionObject", !81, i64 8, !81, i64 72, !41, i64 136, !41, i64 152, !41, i64 168, !15, i64 184, !9, i64 188, !141, i64 192, !142, i64 200, !142, i64 208, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !14, i64 248, !5, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !15, i64 272, !6, i64 273}
!141 = !{!"p1 _ZTS17btBroadphaseProxy", !14, i64 0}
!142 = !{!"p1 _ZTS16btCollisionShape", !14, i64 0}
!143 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !144, i64 0, !5, i64 4, !5, i64 8, !145, i64 16, !15, i64 24}
!144 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!145 = !{!"p2 _ZTS17btCollisionObject", !66, i64 0}
!146 = !{!"_ZTSN10btSoftBody6ConfigE", !147, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !148, i64 104, !150, i64 136, !150, i64 168}
!147 = !{!"_ZTSN10btSoftBody10eAeroModel1_E", !6, i64 0}
!148 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8eVSolver1_EE", !149, i64 0, !5, i64 4, !5, i64 8, !14, i64 16, !15, i64 24}
!149 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8eVSolver1_ELj16EE"}
!150 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8ePSolver1_EE", !151, i64 0, !5, i64 4, !5, i64 8, !14, i64 16, !15, i64 24}
!151 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8ePSolver1_ELj16EE"}
!152 = !{!"_ZTSN10btSoftBody11SolverStateE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16}
!153 = !{!"_ZTSN10btSoftBody4PoseE", !15, i64 0, !15, i64 1, !9, i64 4, !78, i64 8, !75, i64 40, !41, i64 72, !42, i64 88, !42, i64 136, !42, i64 184}
!154 = !{!"p1 _ZTS19btSoftBodyWorldInfo", !14, i64 0}
!155 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8SContactEE", !156, i64 0, !5, i64 4, !5, i64 8, !157, i64 16, !15, i64 24}
!156 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8SContactELj16EE"}
!157 = !{!"p1 _ZTSN10btSoftBody8SContactE", !14, i64 0}
!158 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody5JointEE", !159, i64 0, !5, i64 4, !5, i64 8, !160, i64 16, !15, i64 24}
!159 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody5JointELj16EE"}
!160 = !{!"p2 _ZTSN10btSoftBody5JointE", !66, i64 0}
!161 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody8MaterialEE", !162, i64 0, !5, i64 4, !5, i64 8, !163, i64 16, !15, i64 24}
!162 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody8MaterialELj16EE"}
!163 = !{!"p2 _ZTSN10btSoftBody8MaterialE", !66, i64 0}
!164 = !{!"_ZTS6btDbvt", !56, i64 0, !56, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !165, i64 32}
!165 = !{!"_ZTS20btAlignedObjectArrayIN6btDbvt6sStkNNEE", !166, i64 0, !5, i64 4, !5, i64 8, !167, i64 16, !15, i64 24}
!166 = !{!"_ZTS18btAlignedAllocatorIN6btDbvt6sStkNNELj16EE"}
!167 = !{!"p1 _ZTSN6btDbvt6sStkNNE", !14, i64 0}
end_hunk_2
