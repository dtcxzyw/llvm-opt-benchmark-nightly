Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lveclib?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
begin_hunk_0_@_ZL16vector_normalizeP9lua_State:bb.a
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
  %i.e = load float, ptr %i.d, align 4, !tbaa !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.k = fneg float %i.i
  %i.l = fmul float %i.g, %i.k
  %i.m = load float, ptr %i.c, align 4, !tbaa !10
  %i.n = load <2 x float>, ptr %i.a, align 4, !tbaa !10 ; 2 uses
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
  %i.c = load float, ptr %i.a, align 4, !tbaa !10
  %i.d = load float, ptr %i.b, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !10
  %i.i = fmul float %i.f, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.c, float %i.d, float %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %i.o = tail call float @llvm.fmuladd.f32(float %i.l, float %i.n, float %i.j)
  %i.p = fpext float %i.o to double
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.p)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL12vector_angleP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.c = tail call noundef ptr @_Z14luaL_optvectorP9lua_StateiPKf(ptr noundef %0, i32 noundef 3, ptr noundef null) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = load <3 x float>, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.g = shufflevector <3 x float> %i.f, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.h = fneg float %i.e
  %i.i = load <3 x float>, ptr %i.a, align 4, !tbaa !10 ; 3 uses
  %i.j = shufflevector <3 x float> %i.i, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 0>
  %i.k = extractelement <3 x float> %i.f, i64 2
  %i.l = fneg <3 x float> %i.f
  %i.m = shufflevector <3 x float> %i.l, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.n = shufflevector <3 x float> %i.i, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.o = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.p = insertelement <4 x float> %i.o, float %i.h, i64 2
  %i.q = shufflevector <4 x float> %i.p, <4 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.r = fmul <4 x float> %i.n, %i.q
  %i.s = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.j, <4 x float> %i.g, <4 x float> %i.r) ; 6 uses
  %foldExtExtBinop = fmul <4 x float> %i.s, %i.s
  %i.t = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.u = extractelement <4 x float> %i.s, i64 2   ; 3 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %i.w = extractelement <4 x float> %i.s, i64 1   ; 3 uses
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.v)
  %i.y = tail call noundef float @llvm.sqrt.f32(float %i.x)
  %i.z = fpext float %i.y to double
  %i.aa = extractelement <4 x float> %i.s, i64 3
  %i.ab = extractelement <3 x float> %i.i, i64 2
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.k, float %i.aa)
  %i.ad = fpext float %i.ac to double
  %i.ae = tail call double @llvm.atan2.f64(double %i.z, double %i.ad) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = extractelement <4 x float> %i.s, i64 0
  %i.ag = load float, ptr %i.c, align 4, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10
  %i.aj = fmul float %i.af, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.u, float %i.ag, float %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !10
  %i.an = tail call float @llvm.fmuladd.f32(float %i.w, float %i.am, float %i.ak)
  %i.ao = fcmp olt float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ap = fneg double %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi double [ %i.ap, %bb.c ], [ %i.ae, %bb.b ], [ %i.ae, %bb.a ]
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %.0)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL12vector_floorP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z16luaL_checkvectorP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !10
  %i.c = tail call float @llvm.floor.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
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
  %1 = load float, ptr %i.l, align 4, !tbaa !10   ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load float, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.n = fcmp ugt float %1, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.19) #6
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = load float, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %i.p = fcmp olt float %i.o, %i.d
  %i.q = select i1 %i.p, float %i.d, float %i.o   ; 2 uses
  %i.r = fcmp ogt float %i.q, %i.e
  %i.s = select i1 %i.r, float %i.e, float %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %3 = load float, ptr %i.t, align 4, !tbaa !10   ; 2 uses
  %4 = fcmp olt float %3, %i.h
  %5 = select i1 %4, float %i.h, float %3         ; 2 uses
  %6 = fcmp ogt float %5, %i.j
  %7 = select i1 %6, float %i.j, float %5
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %9 = load float, ptr %8, align 4, !tbaa !10     ; 2 uses
  %10 = fcmp olt float %9, %1
  %11 = select i1 %10, float %1, float %9         ; 2 uses
  %12 = fcmp ogt float %11, %i.m
  %13 = select i1 %12, float %i.m, float %11
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.s, float noundef %7, float noundef %13)
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
  %i.l = load float, ptr %i.k, align 4, !tbaa !10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !10 ; 2 uses
  %i.o = fsub float %i.n, %i.l
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float %i.d, float %i.l)
  %i.q = select i1 %i.g, float %i.n, float %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !10 ; 2 uses
  %i.v = fsub float %i.u, %i.s
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %i.d, float %i.s)
  %i.x = select i1 %i.g, float %i.u, float %i.w
  tail call void @_Z14lua_pushvectorP9lua_Statefff(ptr noundef %0, float noundef %i.j, float noundef %i.q, float noundef %i.x)
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

end_hunk_0
