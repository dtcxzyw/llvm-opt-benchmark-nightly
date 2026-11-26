Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/GenBoundingBoxesProcess?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN6Assimp11BaseProcessD2Ev = comdat any

$_ZN6Assimp23GenBoundingBoxesProcessD0Ev = comdat any

@_ZTVN6Assimp23GenBoundingBoxesProcessE = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp23GenBoundingBoxesProcessE, ptr @_ZN6Assimp11BaseProcessD2Ev, ptr @_ZN6Assimp23GenBoundingBoxesProcessD0Ev, ptr @_ZNK6Assimp23GenBoundingBoxesProcess8IsActiveEj, ptr @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv, ptr @_ZN6Assimp11BaseProcess15SetupPropertiesEPKNS_8ImporterE, ptr @_ZN6Assimp23GenBoundingBoxesProcess7ExecuteEP7aiScene] }, align 8, !guid !3
@_ZTIN6Assimp23GenBoundingBoxesProcessE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp23GenBoundingBoxesProcessE, ptr @_ZTIN6Assimp11BaseProcessE }, align 8, !guid !4
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp23GenBoundingBoxesProcessE = constant [35 x i8] c"N6Assimp23GenBoundingBoxesProcessE\00", align 1, !guid !5
@_ZTIN6Assimp11BaseProcessE = external constant ptr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK6Assimp23GenBoundingBoxesProcess8IsActiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #0 align 2 !guid !7 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp9checkMeshEP6aiMeshR10aiVector3tIfES4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #1 !guid !9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %indvars.iv ; 4 uses
  %i.k = load float, ptr %i.j, align 4            ; 2 uses
  %i.l = load float, ptr %1, align 4
  %i.m = fcmp olt float %i.k, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %i.k, ptr %1, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load float, ptr %i.n, align 4            ; 2 uses
  %i.p = load float, ptr %i.e, align 4
  %i.q = fcmp olt float %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %i.o, ptr %i.e, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.s = load float, ptr %i.r, align 4            ; 2 uses
  %i.t = load float, ptr %i.f, align 4
  %i.u = fcmp olt float %i.s, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float %i.s, ptr %i.f, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load float, ptr %i.j, align 4            ; 2 uses
  %i.w = load float, ptr %2, align 4
  %i.x = fcmp ogt float %i.v, %i.w
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.v, ptr %2, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = load float, ptr %i.n, align 4            ; 2 uses
  %i.z = load float, ptr %i.g, align 4
  %i.aa = fcmp ogt float %i.y, %i.z
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store float %i.y, ptr %i.g, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = load float, ptr %i.r, align 4           ; 2 uses
  %i.ac = load float, ptr %i.h, align 4
  %i.ad = fcmp ogt float %i.ab, %i.ac
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %i.ab, ptr %i.h, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.a, align 4
  %i.af = zext i32 %i.ae to i64
  %i.ag = icmp samesign ult i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.b, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %bb.n, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6Assimp23GenBoundingBoxesProcess7ExecuteEP7aiScene(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #2 align 2 !guid !13 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.e = phi i32 [ %i.c, %.lr.ph ], [ %i.ac, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN6Assimp9checkMeshEP6aiMeshR10aiVector3tIfES4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %i.o = zext i32 %i.k to i64                     ; 3 uses
  %min.iters.check = icmp ult i32 %i.k, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.o, 4294967292               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <4 x float> [ splat (float 9.999990e+05), %vector.ph ], [ %49, %vector.body ] ; 3 uses
  %vec.phi19 = phi <4 x float> [ splat (float 9.999990e+05), %vector.ph ], [ %34, %vector.body ] ; 3 uses
  %vec.phi20 = phi <4 x float> [ splat (float 9.999990e+05), %vector.ph ], [ %19, %vector.body ] ; 3 uses
  %vec.phi21 = phi <4 x float> [ splat (float -9.999990e+05), %vector.ph ], [ %55, %vector.body ] ; 3 uses
  %vec.phi22 = phi <4 x float> [ splat (float -9.999990e+05), %vector.ph ], [ %53, %vector.body ] ; 3 uses
  %vec.phi23 = phi <4 x float> [ splat (float -9.999990e+05), %vector.ph ], [ %51, %vector.body ] ; 3 uses
  %2 = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %index ; 3 uses
  %3 = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %index ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %5 = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %index ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %7 = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %index ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 36
  %9 = load float, ptr %2, align 4
  %10 = load float, ptr %4, align 4
  %11 = load float, ptr %6, align 4
  %12 = load float, ptr %8, align 4
  %13 = insertelement <4 x float> poison, float %9, i64 0
  %14 = insertelement <4 x float> %13, float %10, i64 1
  %15 = insertelement <4 x float> %14, float %11, i64 2
  %16 = insertelement <4 x float> %15, float %12, i64 3
  %17 = freeze <4 x float> %16                    ; 5 uses
  %18 = fcmp olt <4 x float> %17, %vec.phi20
  %19 = select <4 x i1> %18, <4 x float> %17, <4 x float> %vec.phi20 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 28
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %24 = load float, ptr %20, align 4
  %25 = load float, ptr %21, align 4
  %26 = load float, ptr %22, align 4
  %27 = load float, ptr %23, align 4
  %28 = insertelement <4 x float> poison, float %24, i64 0
  %29 = insertelement <4 x float> %28, float %25, i64 1
  %30 = insertelement <4 x float> %29, float %26, i64 2
  %31 = insertelement <4 x float> %30, float %27, i64 3
  %32 = freeze <4 x float> %31                    ; 5 uses
  %33 = fcmp olt <4 x float> %32, %vec.phi19
  %34 = select <4 x i1> %33, <4 x float> %32, <4 x float> %vec.phi19 ; 2 uses
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %37 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 44
  %39 = load float, ptr %35, align 4
  %40 = load float, ptr %36, align 4
  %41 = load float, ptr %37, align 4
  %42 = load float, ptr %38, align 4
  %43 = insertelement <4 x float> poison, float %39, i64 0
  %44 = insertelement <4 x float> %43, float %40, i64 1
  %45 = insertelement <4 x float> %44, float %41, i64 2
  %46 = insertelement <4 x float> %45, float %42, i64 3
  %47 = freeze <4 x float> %46                    ; 5 uses
  %48 = fcmp olt <4 x float> %47, %vec.phi
  %49 = select <4 x i1> %48, <4 x float> %47, <4 x float> %vec.phi ; 2 uses
  %50 = fcmp ogt <4 x float> %17, %vec.phi23
  %51 = select <4 x i1> %50, <4 x float> %17, <4 x float> %vec.phi23 ; 2 uses
  %52 = fcmp ogt <4 x float> %32, %vec.phi22
  %53 = select <4 x i1> %52, <4 x float> %32, <4 x float> %vec.phi22 ; 2 uses
  %54 = fcmp ogt <4 x float> %47, %vec.phi21
  %55 = select <4 x i1> %54, <4 x float> %47, <4 x float> %vec.phi21 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %56 = tail call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %47, /* (nan nzero) */ i32 35)
  %57 = tail call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %32, /* (nan nzero) */ i32 35)
  %58 = or <4 x i1> %56, %57
  %59 = tail call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %17, /* (nan nzero) */ i32 35)
  %60 = or <4 x i1> %58, %59
  %61 = bitcast <4 x i1> %60 to i4
  %62 = icmp ne i4 %61, 0                         ; 9 uses
  %63 = icmp eq i64 %index.next, %n.vec
  %64 = or i1 %62, %63
  br i1 %64, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %65 = select i1 %62, <4 x float> %vec.phi, <4 x float> %49
  %66 = select i1 %62, <4 x float> %vec.phi19, <4 x float> %34
  %67 = select i1 %62, <4 x float> %vec.phi20, <4 x float> %19
  %68 = select i1 %62, <4 x float> %vec.phi21, <4 x float> %55
  %69 = select i1 %62, <4 x float> %vec.phi22, <4 x float> %53
  %70 = select i1 %62, <4 x float> %vec.phi23, <4 x float> %51
  %71 = select i1 %62, i64 %index, i64 %n.vec
  %72 = tail call nnan float @llvm.vector.reduce.fmin.v4f32(<4 x float> %65)
  %73 = tail call nnan float @llvm.vector.reduce.fmin.v4f32(<4 x float> %66)
  %74 = tail call nnan float @llvm.vector.reduce.fmin.v4f32(<4 x float> %67)
  %75 = tail call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %68)
  %76 = tail call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %69)
  %77 = tail call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %70)
  %cmp.n = icmp ne i64 %n.vec, %i.o
  %.not29 = or i1 %cmp.n, %62
  %78 = insertelement <4 x float> poison, float %74, i64 0
  %79 = insertelement <4 x float> %78, float %73, i64 1
  %80 = insertelement <4 x float> %79, float %72, i64 2
  %81 = insertelement <4 x float> %80, float %77, i64 3 ; 2 uses
  %82 = insertelement <2 x float> poison, float %76, i64 0
  %83 = insertelement <2 x float> %82, float %75, i64 1 ; 2 uses
  br i1 %.not29, label %scalar.ph.preheader, label %_ZN6Assimp9checkMeshEP6aiMeshR10aiVector3tIfES4_.exit

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %71, %middle.block ]
  %.ph = phi <4 x float> [ <float 9.999990e+05, float 9.999990e+05, float 9.999990e+05, float -9.999990e+05>, %.lr.ph.i ], [ %81, %middle.block ]
  %.ph30 = phi <2 x float> [ splat (float -9.999990e+05), %.lr.ph.i ], [ %83, %middle.block ]
  br label %bb.d

bb.d:                                             ; preds = %scalar.ph.preheader, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = phi <4 x float> [ %i.x, %bb.d ], [ %.ph, %scalar.ph.preheader ] ; 3 uses
  %i.q = phi <2 x float> [ %i.aa, %bb.d ], [ %.ph30, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.s = load <3 x float>, ptr %i.r, align 4      ; 2 uses
  %i.t = shufflevector <3 x float> %i.s, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.u = fcmp olt <4 x float> %i.t, %i.p
  %i.v = fcmp ogt <4 x float> %i.t, %i.p
  %i.w = shufflevector <4 x i1> %i.u, <4 x i1> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.x = select <4 x i1> %i.w, <4 x float> %i.t, <4 x float> %i.p ; 2 uses
  %i.y = shufflevector <3 x float> %i.s, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.z = fcmp ogt <2 x float> %i.y, %i.q
  %i.aa = select <2 x i1> %i.z, <2 x float> %i.y, <2 x float> %i.q ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not, label %_ZN6Assimp9checkMeshEP6aiMeshR10aiVector3tIfES4_.exit, label %bb.d, !llvm.loop !11

_ZN6Assimp9checkMeshEP6aiMeshR10aiVector3tIfES4_.exit: ; preds = %bb.d, %middle.block, %bb.c
  %84 = phi <4 x float> [ <float 9.999990e+05, float 9.999990e+05, float 9.999990e+05, float -9.999990e+05>, %bb.c ], [ %81, %middle.block ], [ %i.x, %bb.d ]
  %85 = phi <2 x float> [ splat (float -9.999990e+05), %bb.c ], [ %83, %middle.block ], [ %i.aa, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 1284
  store <4 x float> %84, ptr %i.ab, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1300
  store <2 x float> %85, ptr %.sroa.6.0..sroa_idx, align 4
  %.pre = load i32, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6Assimp9checkMeshEP6aiMeshR10aiVector3tIfES4_.exit
  %i.ac = phi i32 [ %i.e, %bb.b ], [ %.pre, %_ZN6Assimp9checkMeshEP6aiMeshR10aiVector3tIfES4_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %bb.b, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !guid !16 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp23GenBoundingBoxesProcessD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !guid !17 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #7
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare void @_ZN6Assimp11BaseProcess15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v4f32(<4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i1> @llvm.is.fpclass.v4f32(<4 x float>, i32 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{i64 -2194969153583286367}
!4 = !{i64 -3873114229358535043}
!5 = !{i64 -7421807549159604022}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i64 -6175907961822169069}
!8 = distinct !{!8, !6}
!9 = !{i64 7753918312980299727}
!10 = distinct !{!10, !6, !14, !15}
!11 = distinct !{!11, !6, !15, !14}
!12 = distinct !{!12, !6}
!13 = !{i64 2194281229342083167}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{i64 -5435750618120175605}
!17 = !{i64 -7290151683234736109}
end_hunk_0
