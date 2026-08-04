inline.NumInlined: 11
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZL9vectorlib = internal constant [15 x %struct.luaL_Reg] [%struct.luaL_Reg { ptr @.str.3, ptr @_ZL13vector_createP9lua_State }, %struct.luaL_Reg { ptr @.str.4, ptr @_ZL16vector_magnitudeP9lua_State }, %struct.luaL_Reg { ptr @.str.5, ptr @_ZL16vector_normalizeP9lua_State }, %struct.luaL_Reg { ptr @.str.6, ptr @_ZL12vector_crossP9lua_State }, %struct.luaL_Reg { ptr @.str.7, ptr @_ZL10vector_dotP9lua_State }, %struct.luaL_Reg { ptr @.str.8, ptr @_ZL12vector_angleP9lua_State }, %struct.luaL_Reg { ptr @.str.9, ptr @_ZL12vector_floorP9lua_State }, %struct.luaL_Reg { ptr @.str.10, ptr @_ZL11vector_ceilP9lua_State }, %struct.luaL_Reg { ptr @.str.11, ptr @_ZL10vector_absP9lua_State }, %struct.luaL_Reg { ptr @.str.12, ptr @_ZL11vector_signP9lua_State }, %struct.luaL_Reg { ptr @.str.13, ptr @_ZL12vector_clampP9lua_State }, %struct.luaL_Reg { ptr @.str.14, ptr @_ZL10vector_maxP9lua_State }, %struct.luaL_Reg { ptr @.str.15, ptr @_ZL10vector_minP9lua_State }, %struct.luaL_Reg { ptr @.str.16, ptr @_ZL11vector_lerpP9lua_State }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"magnitude\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"normalize\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"cross\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dot\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"clamp\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"lerp\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"max.x must be greater than or equal to min.x\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"max.y must be greater than or equal to min.y\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"max.z must be greater than or equal to min.z\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"attempt to index vector with '%s'\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z14luaopen_vectorP9lua_State(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z13luaL_registerP9lua_StatePKcPK8luaL_Reg(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @_ZL9vectorlib)
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00)
  tail call void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.1)
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00)
  tail call void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.2)
  tail call void @_Z15lua_createtableP9lua_Stateii(ptr noundef %0, i32 noundef 0, i32 noundef 1)
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00)
  tail call void @_Z13lua_pushvalueP9lua_Statei(ptr noundef %0, i32 noundef -2)
  %i.a = tail call noundef i32 @_Z16lua_setmetatableP9lua_Statei(ptr noundef %0, i32 noundef -2) ; 0 uses
  tail call void @_Z10lua_settopP9lua_Statei(ptr noundef %0, i32 noundef -2)
  tail call void @_Z17lua_pushcclosurekP9lua_StatePFiS0_EPKciPFiS0_iE(ptr noundef %0, ptr noundef nonnull @_ZL12vector_indexP9lua_State, ptr noundef null, i32 noundef 0, ptr noundef null)
  tail call void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.20)
  tail call void @_Z15lua_setreadonlyP9lua_Stateii(ptr noundef %0, i32 noundef -1, i32 noundef 1)
  tail call void @_Z10lua_settopP9lua_Statei(ptr noundef %0, i32 noundef -2)
  ret i32 1
}

declare void @_Z13luaL_registerP9lua_StatePKcPK8luaL_Reg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL13vector_createP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0)
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.c = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.d = icmp sgt i32 %i.a, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 3)
  %i.f = fptrunc double %i.e to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi float [ %i.f, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.h = fptrunc double %i.b to float
  %i.i = fptrunc double %i.c to float
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.h, float noundef %i.i, float noundef %i.g)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL16vector_magnitudeP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !9  ; 2 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !9  ; 2 uses
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.f)
  %i.j = tail call float @llvm.sqrt.f32(float %i.i)
  %i.k = fpext float %i.j to double
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.k)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL16vector_normalizeP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !9  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !9  ; 3 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !9  ; 3 uses
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.f)
  %i.j = tail call float @llvm.sqrt.f32(float %i.i)
  %i.k = fdiv float 1.000000e+00, %i.j            ; 3 uses
  %i.l = fmul float %i.b, %i.k
  %i.m = fmul float %i.d, %i.k
  %i.n = fmul float %i.h, %i.k
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.l, float noundef %i.m, float noundef %i.n)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL12vector_crossP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !9  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !9  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !9
  %i.j = load <2 x float>, ptr %i.b, align 4, !tbaa !9 ; 2 uses
  %i.k = fneg float %i.i
  %i.l = fmul float %i.g, %i.k
  %i.m = load float, ptr %i.c, align 4, !tbaa !9
  %i.n = load <2 x float>, ptr %i.a, align 4, !tbaa !9 ; 2 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %i.m, float %i.e, float %i.l)
  %i.p = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.q = insertelement <2 x float> %i.p, float %i.e, i64 0
  %i.r = fneg <2 x float> %i.q
  %i.s = fmul <2 x float> %i.n, %i.r
  %i.t = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.u = insertelement <2 x float> %i.t, float %i.g, i64 0
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.j, <2 x float> %i.s) ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  %i.x = extractelement <2 x float> %i.v, i64 1
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.o, float noundef %i.w, float noundef %i.x)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10vector_dotP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.c = load float, ptr %i.a, align 4, !tbaa !9
  %i.d = load float, ptr %i.b, align 4, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !9
  %i.i = fmul float %i.f, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.c, float %i.d, float %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !9
  %i.o = tail call float @llvm.fmuladd.f32(float %i.l, float %i.n, float %i.j)
  %i.p = fpext float %i.o to double
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.p)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL12vector_angleP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.c = tail call noundef ptr @_Z14luaL_optvectorP9lua_StateiPKf(ptr noundef %0, i32 noundef 3, ptr noundef null) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !9  ; 3 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = load float, ptr %1, align 4, !tbaa !9      ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %4 = load float, ptr %3, align 4, !tbaa !9      ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %6 = load float, ptr %5, align 4, !tbaa !9      ; 3 uses
  %7 = fneg float %6
  %8 = fmul float %4, %7
  %9 = tail call float @llvm.fmuladd.f32(float %i.e, float %2, float %8) ; 3 uses
  %10 = load float, ptr %i.b, align 4, !tbaa !9   ; 3 uses
  %11 = load float, ptr %i.a, align 4, !tbaa !9   ; 3 uses
  %12 = fneg float %2
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %4, float %10, float %13) ; 3 uses
  %15 = fneg float %10
  %16 = fmul float %i.e, %15
  %17 = tail call float @llvm.fmuladd.f32(float %11, float %6, float %16) ; 3 uses
  %18 = fmul float %14, %14
  %19 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %18)
  %i.f = tail call float @llvm.fmuladd.f32(float %17, float %17, float %19)
  %i.g = tail call noundef float @llvm.sqrt.f32(float %i.f)
  %i.h = fpext float %i.g to double
  %20 = fmul float %i.e, %6
  %21 = tail call float @llvm.fmuladd.f32(float %11, float %10, float %20)
  %i.i = tail call float @llvm.fmuladd.f32(float %4, float %2, float %21)
  %i.j = fpext float %i.i to double
  %i.k = tail call double @llvm.atan2.f64(double %i.h, double %i.j) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load float, ptr %i.c, align 4, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !9
  %i.o = fmul float %14, %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %9, float %i.l, float %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !9
  %i.s = tail call float @llvm.fmuladd.f32(float %17, float %i.r, float %i.p)
  %i.t = fcmp olt float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = fneg double %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi double [ %i.u, %bb.c ], [ %i.k, %bb.b ], [ %i.k, %bb.a ]
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %.0)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL12vector_floorP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !9
  %i.c = tail call float @llvm.floor.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !9
  %i.f = tail call float @llvm.floor.f32(float %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !9
  %i.i = tail call float @llvm.floor.f32(float %i.h)
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.c, float noundef %i.f, float noundef %i.i)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL11vector_ceilP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !9
  %i.c = tail call float @llvm.ceil.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !9
  %i.f = tail call float @llvm.ceil.f32(float %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !9
  %i.i = tail call float @llvm.ceil.f32(float %i.h)
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.c, float noundef %i.f, float noundef %i.i)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10vector_absP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !9
  %i.c = tail call float @llvm.fabs.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %1 = load float, ptr %i.d, align 4, !tbaa !9
  %2 = tail call float @llvm.fabs.f32(float %1)
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %4 = load float, ptr %3, align 4, !tbaa !9
  %5 = tail call float @llvm.fabs.f32(float %4)
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.c, float noundef %2, float noundef %5)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL11vector_signP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  %i.d = fcmp olt float %i.b, 0.000000e+00
  %i.e = select i1 %i.d, float -1.000000e+00, float 0.000000e+00
  %i.f = select i1 %i.c, float 1.000000e+00, float %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !9  ; 2 uses
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  %i.j = fcmp olt float %i.h, 0.000000e+00
  %i.k = select i1 %i.j, float -1.000000e+00, float 0.000000e+00
  %i.l = select i1 %i.i, float 1.000000e+00, float %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !9  ; 2 uses
  %i.o = fcmp ogt float %i.n, 0.000000e+00
  %i.p = fcmp olt float %i.n, 0.000000e+00
  %i.q = select i1 %i.p, float -1.000000e+00, float 0.000000e+00
  %i.r = select i1 %i.o, float 1.000000e+00, float %i.q
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.f, float noundef %i.l, float noundef %i.r)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL12vector_clampP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.c = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 3) ; 3 uses
  %i.d = load float, ptr %i.b, align 4, !tbaa !9  ; 3 uses
  %i.e = load float, ptr %i.c, align 4, !tbaa !9  ; 3 uses
  %i.f = fcmp ugt float %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.17) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !9  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !9  ; 3 uses
  %i.k = fcmp ugt float %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.18) #6
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !9  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !9  ; 3 uses
  %i.p = fcmp ugt float %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.19) #6
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = load float, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.r = fcmp olt float %i.q, %i.d
  %i.s = select i1 %i.r, float %i.d, float %i.q   ; 2 uses
  %i.t = fcmp ogt float %i.s, %i.e
  %i.u = select i1 %i.t, float %i.e, float %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !9  ; 2 uses
  %i.x = fcmp olt float %i.w, %i.h
  %i.y = select i1 %i.x, float %i.h, float %i.w   ; 2 uses
  %i.z = fcmp ogt float %i.y, %i.j
  %i.aa = select i1 %i.z, float %i.j, float %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !9 ; 2 uses
  %i.ad = fcmp olt float %i.ac, %i.m
  %i.ae = select i1 %i.ad, float %i.m, float %i.ac ; 2 uses
  %i.af = fcmp ogt float %i.ae, %i.o
  %i.ag = select i1 %i.af, float %i.o, float %i.ae
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.u, float noundef %i.aa, float noundef %i.ag)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10vector_maxP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 2 uses
  %i.b = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !9  ; 2 uses
  %.not22 = icmp slt i32 %i.a, 2
  %i.f = extractelement <2 x float> %i.c, i64 0
  %i.g = extractelement <2 x float> %i.c, i64 1
  br i1 %.not22, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = extractelement <2 x float> %i.n, i64 1
  %i.i = extractelement <2 x float> %i.n, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.6.0.lcssa = phi float [ %i.g, %bb.a ], [ %i.h, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi float [ %i.f, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %.sroa.10.0.lcssa = phi float [ %i.e, %bb.a ], [ %.sroa.10.1, %._crit_edge.loopexit ]
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %.sroa.0.0.lcssa, float noundef %.sroa.6.0.lcssa, float noundef %.sroa.10.0.lcssa)
  ret i32 1

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.10.026 = phi float [ %.sroa.10.1, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %.025 = phi i32 [ %i.r, %.lr.ph ], [ 2, %bb.a ] ; 3 uses
  %i.j = phi <2 x float> [ %i.n, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef %.025) ; 2 uses
  %i.l = load <2 x float>, ptr %i.k, align 4, !tbaa !9 ; 2 uses
  %i.m = fcmp ogt <2 x float> %i.l, %i.j
  %i.n = select <2 x i1> %i.m, <2 x float> %i.l, <2 x float> %i.j ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !9  ; 2 uses
  %i.q = fcmp ogt float %i.p, %.sroa.10.026
  %.sroa.10.1 = select i1 %i.q, float %i.p, float %.sroa.10.026 ; 2 uses
  %i.r = add nuw i32 %.025, 1
  %exitcond.not = icmp eq i32 %.025, %i.a
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !11
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10vector_minP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 2 uses
  %i.b = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !9  ; 2 uses
  %.not22 = icmp slt i32 %i.a, 2
  %i.f = extractelement <2 x float> %i.c, i64 0
  %i.g = extractelement <2 x float> %i.c, i64 1
  br i1 %.not22, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = extractelement <2 x float> %i.n, i64 1
  %i.i = extractelement <2 x float> %i.n, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.6.0.lcssa = phi float [ %i.g, %bb.a ], [ %i.h, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi float [ %i.f, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %.sroa.10.0.lcssa = phi float [ %i.e, %bb.a ], [ %.sroa.10.1, %._crit_edge.loopexit ]
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %.sroa.0.0.lcssa, float noundef %.sroa.6.0.lcssa, float noundef %.sroa.10.0.lcssa)
  ret i32 1

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.10.026 = phi float [ %.sroa.10.1, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %.025 = phi i32 [ %i.r, %.lr.ph ], [ 2, %bb.a ] ; 3 uses
  %i.j = phi <2 x float> [ %i.n, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef %.025) ; 2 uses
  %i.l = load <2 x float>, ptr %i.k, align 4, !tbaa !9 ; 2 uses
  %i.m = fcmp olt <2 x float> %i.l, %i.j
  %i.n = select <2 x i1> %i.m, <2 x float> %i.l, <2 x float> %i.j ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !9  ; 2 uses
  %i.q = fcmp olt float %i.p, %.sroa.10.026
  %.sroa.10.1 = select i1 %i.q, float %i.p, float %.sroa.10.026 ; 2 uses
  %i.r = add nuw i32 %.025, 1
  %exitcond.not = icmp eq i32 %.025, %i.a
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !13
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL11vector_lerpP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.b = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.c = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 3)
  %i.d = fptrunc double %i.c to float             ; 3 uses
  %i.e = load float, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.f = load float, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.g = fcmp oeq float %i.d, 1.000000e+00        ; 3 uses
  %i.h = fsub float %i.f, %i.e
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.d, float %i.e)
  %i.j = select i1 %i.g, float %i.f, float %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = load <2 x float>, ptr %i.k, align 4, !tbaa !9 ; 2 uses
  %i.n = load <2 x float>, ptr %i.l, align 4, !tbaa !9 ; 3 uses
  %i.o = fsub <2 x float> %i.n, %i.m
  %i.p = insertelement <2 x float> poison, float %i.d, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.q, <2 x float> %i.m) ; 2 uses
  %1 = extractelement <2 x float> %i.r, i64 0
  %2 = extractelement <2 x float> %i.n, i64 0
  %3 = select i1 %i.g, float %2, float %1
  %i.s = extractelement <2 x float> %i.r, i64 1
  %i.t = extractelement <2 x float> %i.n, i64 1
  %4 = select i1 %i.g, float %i.t, float %i.s
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.j, float noundef %3, float noundef %4)
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef) local_unnamed_addr #1

declare noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z14lua_pushnumberP9lua_Stated(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

declare noundef ptr @_Z14luaL_optvectorP9lua_StateiPKf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: noreturn
declare void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_Z15lua_createtableP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z13lua_pushvalueP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z16lua_setmetatableP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z10lua_settopP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z17lua_pushcclosurekP9lua_StatePFiS0_EPKciPFiS0_iE(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL12vector_indexP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8, !tbaa !14
  %i.c = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.a) ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !14
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 1, !tbaa !16
  %i.g = or i8 %i.f, 32
  %i.h = sext i8 %i.g to i32
  %i.i = add nsw i32 %i.h, -120                   ; 2 uses
  %i.j = icmp ugt i32 %i.i, 2
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !9
  %i.n = fpext float %i.m to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 1

.critedge:                                        ; preds = %bb.b, %bb.a
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %i.c) #6
  unreachable
}

declare void @_Z15lua_setreadonlyP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!7, !7, i64 0}
end_hunk_0
