Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lveclib?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
begin_hunk_0_@_ZL12vector_floorP9lua_State:bb.a
  %i.f = tail call float @llvm.floor.f32(float %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !10
  %i.i = tail call float @llvm.floor.f32(float %i.h)
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.c, float noundef %i.f, float noundef %i.i)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL11vector_ceilP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !10
  %i.c = tail call float @llvm.ceil.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = tail call float @llvm.ceil.f32(float %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !10
  %i.i = tail call float @llvm.ceil.f32(float %i.h)
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.c, float noundef %i.f, float noundef %i.i)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10vector_absP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !10
  %i.c = tail call float @llvm.fabs.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !10
  %i.f = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.e) ; 2 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = extractelement <2 x float> %i.f, i64 1
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.c, float noundef %i.g, float noundef %i.h)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL11vector_signP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  %i.d = fcmp olt float %i.b, 0.000000e+00
  %i.e = select i1 %i.d, float -1.000000e+00, float 0.000000e+00
  %i.f = select i1 %i.c, float 1.000000e+00, float %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  %i.j = fcmp olt float %i.h, 0.000000e+00
  %i.k = select i1 %i.j, float -1.000000e+00, float 0.000000e+00
  %i.l = select i1 %i.i, float 1.000000e+00, float %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !10 ; 2 uses
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
  %i.d = load float, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.e = load float, ptr %i.c, align 4, !tbaa !10 ; 3 uses
  %i.f = fcmp ugt float %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.17) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.k = fcmp ugt float %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.18) #6
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !10 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !10 ; 3 uses
  %i.p = fcmp ugt float %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.19) #6
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = load float, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %i.r = fcmp olt float %i.q, %i.d
  %i.s = select i1 %i.r, float %i.d, float %i.q   ; 2 uses
  %i.t = fcmp ogt float %i.s, %i.e
  %i.u = select i1 %i.t, float %i.e, float %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !10 ; 2 uses
  %i.x = fcmp olt float %i.w, %i.h
  %i.y = select i1 %i.x, float %i.h, float %i.w   ; 2 uses
  %i.z = fcmp ogt float %i.y, %i.j
  %i.aa = select i1 %i.z, float %i.j, float %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !10 ; 2 uses
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
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !10 ; 2 uses
  %.not22 = icmp slt i32 %i.a, 2
  br i1 %.not22, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.10.0.lcssa = phi float [ %i.e, %bb.a ], [ %.sroa.10.1, %.lr.ph ]
  %i.f = phi <2 x float> [ %i.c, %bb.a ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = extractelement <2 x float> %i.f, i64 1
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.g, float noundef %i.h, float noundef %.sroa.10.0.lcssa)
  ret i32 1

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.026 = phi i32 [ %i.q, %.lr.ph ], [ 2, %bb.a ] ; 3 uses
  %.sroa.10.023 = phi float [ %.sroa.10.1, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = phi <2 x float> [ %i.m, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef %.026) ; 2 uses
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !10 ; 2 uses
  %i.l = fcmp ogt <2 x float> %i.k, %i.i
  %i.m = select <2 x i1> %i.l, <2 x float> %i.k, <2 x float> %i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !10 ; 2 uses
  %i.p = fcmp ogt float %i.o, %.sroa.10.023
  %.sroa.10.1 = select i1 %i.p, float %i.o, float %.sroa.10.023 ; 2 uses
  %i.q = add nuw i32 %.026, 1
  %exitcond.not = icmp eq i32 %.026, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10vector_minP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 2 uses
  %i.b = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !10 ; 2 uses
  %.not22 = icmp slt i32 %i.a, 2
  br i1 %.not22, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.10.0.lcssa = phi float [ %i.e, %bb.a ], [ %.sroa.10.1, %.lr.ph ]
  %i.f = phi <2 x float> [ %i.c, %bb.a ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = extractelement <2 x float> %i.f, i64 1
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.g, float noundef %i.h, float noundef %.sroa.10.0.lcssa)
  ret i32 1

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.026 = phi i32 [ %i.q, %.lr.ph ], [ 2, %bb.a ] ; 3 uses
  %.sroa.10.023 = phi float [ %.sroa.10.1, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = phi <2 x float> [ %i.m, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef %.026) ; 2 uses
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !10 ; 2 uses
  %i.l = fcmp olt <2 x float> %i.k, %i.i
  %i.m = select <2 x i1> %i.l, <2 x float> %i.k, <2 x float> %i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !10 ; 2 uses
  %i.p = fcmp olt float %i.o, %.sroa.10.023
  %.sroa.10.1 = select i1 %i.p, float %i.o, float %.sroa.10.023 ; 2 uses
  %i.q = add nuw i32 %.026, 1
  %exitcond.not = icmp eq i32 %.026, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL11vector_lerpP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.c = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 3)
  %i.d = fptrunc double %i.c to float             ; 4 uses
  %i.e = load float, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %i.f = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.g = fcmp oeq float %i.d, 1.000000e+00        ; 3 uses
  %i.h = fsub float %i.f, %i.e
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.d, float %i.e)
  %i.j = select i1 %i.g, float %i.f, float %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %1 = load float, ptr %i.k, align 4, !tbaa !10   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %2 = load float, ptr %i.l, align 4, !tbaa !10   ; 2 uses
  %3 = fsub float %2, %1
  %4 = tail call float @llvm.fmuladd.f32(float %3, float %i.d, float %1)
  %5 = select i1 %i.g, float %2, float %4
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %7 = load float, ptr %6, align 4, !tbaa !10     ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %9 = load float, ptr %8, align 4, !tbaa !10     ; 2 uses
  %10 = fsub float %9, %7
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %i.d, float %7)
  %12 = select i1 %i.g, float %9, float %11
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.j, float noundef %5, float noundef %12)
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
  store i64 0, ptr %i.a, align 8, !tbaa !15
  %i.c = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.a) ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !15
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
  %i.m = load float, ptr %i.l, align 4, !tbaa !10
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #3

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
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = !{!"long", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!5, !5, i64 0}
end_hunk_0
