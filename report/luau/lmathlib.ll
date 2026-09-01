Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lmathlib?download=true
inline.NumInlined: 33
inline.NumDeleted: 12
begin_hunk_0_@_ZL11math_randomP9lua_State:bb.a
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.46) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21 ; 4 uses
  %i.ai = mul i64 %i.ah, 6364136223846793005
  %i.aj = add i64 %i.ai, 105
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !21
  %i.ak = lshr i64 %i.ah, 45
  %i.al = lshr i64 %i.ah, 27
  %i.am = xor i64 %i.ak, %i.al
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = lshr i64 %i.ah, 59
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = tail call noundef i32 @llvm.fshr.i32(i32 %i.an, i32 %i.an, i32 %i.ap)
  %i.ar = zext i32 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, %i.af
  %i.at = lshr i64 %i.as, 32
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = add nuw nsw i32 %i.au, 1
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef %i.av)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.aw = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef 1) ; 3 uses
  %i.ax = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef 2) ; 2 uses
  %.not = icmp sgt i32 %i.aw, %i.ax
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.46) #12
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ay = sub i32 %i.ax, %i.aw                    ; 2 uses
  %.not34 = icmp eq i32 %i.ay, -1
  br i1 %.not34, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.47) #12
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.az = add nuw i32 %i.ay, 1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !21 ; 4 uses
  %i.bd = mul i64 %i.bc, 6364136223846793005
  %i.be = add i64 %i.bd, 105
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !21
  %i.bf = lshr i64 %i.bc, 45
  %i.bg = lshr i64 %i.bc, 27
  %i.bh = xor i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = lshr i64 %i.bc, 59
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = tail call noundef i32 @llvm.fshr.i32(i32 %i.bi, i32 %i.bi, i32 %i.bk)
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw i64 %i.bm, %i.ba
  %i.bo = lshr i64 %i.bn, 32
  %i.bp = trunc nuw i64 %i.bo to i32
  %i.bq = add i32 %i.aw, %i.bp
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef %i.bq)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #12
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.e, %bb.b
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL15math_randomseedP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1248
  %i.e = sext i32 %i.a to i64
  %i.f = mul i64 %i.e, 6364136223846793005
  %i.g = add i64 %i.f, 4151516850369407454
  store i64 %i.g, ptr %i.d, align 8, !tbaa !21
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_sinhP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.sinh.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_sinP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.sin.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_sqrtP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.sqrt.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_tanhP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.tanh.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_tanP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.tan.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_noiseP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = call noundef double @_Z13lua_tonumberxP9lua_StateiPi(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) ; 2 uses
  %i.e = call noundef double @_Z13lua_tonumberxP9lua_StateiPi(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) ; 2 uses
  %i.f = call noundef double @_Z13lua_tonumberxP9lua_StateiPi(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.c) ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !23
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.49) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 4, !tbaa !23
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = call noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.49) #12
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.k = load i32, ptr %i.c, align 4, !tbaa !23
  %.not19 = icmp eq i32 %i.k, 0
  br i1 %.not19, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = call noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %0, i32 noundef 3)
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.49) #12
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.g
  %i.n = load i8, ptr @_ZN5FFlag21FixMathNoisePrecisionE, align 8, !tbaa !27, !range !31, !noundef !32
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = frem double %i.d, 2.560000e+02
  %i.q = frem double %i.e, 2.560000e+02
  %i.r = frem double %i.f, 2.560000e+02
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.017 = phi double [ %i.q, %bb.j ], [ %i.e, %bb.i ]
  %.016 = phi double [ %i.r, %bb.j ], [ %i.f, %bb.i ]
  %.0 = phi double [ %i.p, %bb.j ], [ %i.d, %bb.i ]
  %1 = insertelement <2 x double> poison, double %.0, i64 0
  %2 = insertelement <2 x double> %1, double %.017, i64 1
  %3 = fptrunc <2 x double> %2 to <2 x float>     ; 3 uses
  %i.s = fptrunc double %.016 to float            ; 2 uses
  %4 = extractelement <2 x float> %3, i64 1
  %i.t = call float @llvm.floor.f32(float %4)     ; 2 uses
  %5 = extractelement <2 x float> %3, i64 0
  %i.u = call float @llvm.floor.f32(float %5)     ; 2 uses
  %i.v = call float @llvm.floor.f32(float %i.s)   ; 2 uses
  %i.w = fptosi float %i.u to i32
  %i.x = and i32 %i.w, 255
  %i.y = fptosi float %i.t to i32
  %i.z = fptosi float %i.v to i32
  %6 = insertelement <2 x float> poison, float %i.u, i64 0
  %7 = insertelement <2 x float> %6, float %i.t, i64 1
  %8 = fsub <2 x float> %3, %7                    ; 8 uses
  %i.aa = fsub float %i.s, %i.v                   ; 6 uses
  %9 = fmul <2 x float> %8, %8
  %10 = fmul <2 x float> %8, %9
  %11 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %12 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %11, <2 x float> splat (float 1.000000e+01))
  %13 = fmul <2 x float> %10, %12                 ; 2 uses
  %i.ab = fmul float %i.aa, %i.aa
  %i.ac = fmul float %i.aa, %i.ab
  %i.ad = call float @llvm.fmuladd.f32(float %i.aa, float 6.000000e+00, float -1.500000e+01)
  %i.ae = call float @llvm.fmuladd.f32(float %i.aa, float %i.ad, float 1.000000e+01)
  %i.af = fmul float %i.ac, %i.ae
  %i.ag = zext nneg i32 %i.x to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !33
  %.tr.i = trunc i32 %i.y to i8                   ; 2 uses
  %.narrow.i = add i8 %i.ai, %.tr.i
  %i.aj = zext i8 %.narrow.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !33
  %.tr83.i = trunc i32 %i.z to i8                 ; 4 uses
  %.narrow84.i = add i8 %i.al, %.tr83.i
  %i.am = zext i8 %.narrow84.i to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !33
  %.narrow86.i = add i8 %i.ao, %.tr83.i
  %i.ap = zext i8 %.narrow86.i to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !33
  %.narrow88.i = add i8 %i.ar, %.tr.i
  %i.as = zext i8 %.narrow88.i to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !33
  %.narrow90.i = add i8 %i.au, %.tr83.i
  %i.av = zext i8 %.narrow90.i to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !33
  %.narrow92.i = add i8 %i.ax, %.tr83.i
  %i.ay = zext i8 %.narrow92.i to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.am ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !33
  %i.bb = and i8 %i.ba, 15
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.bc ; 2 uses
  %14 = load <2 x float>, ptr %i.bd, align 4, !tbaa !34 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.av ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !33
  %i.bi = and i8 %i.bh, 15
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.bj ; 2 uses
  %15 = load <2 x float>, ptr %i.bk, align 4, !tbaa !34 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.ap ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !33
  %16 = fadd <2 x float> %8, splat (float -1.000000e+00) ; 2 uses
  %i.bp = and i8 %i.bo, 15
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.bq ; 2 uses
  %17 = load <2 x float>, ptr %i.br, align 4, !tbaa !34 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !34
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.ay ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !33
  %i.bw = and i8 %i.bv, 15
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.bx ; 2 uses
  %18 = load <2 x float>, ptr %i.by, align 4, !tbaa !34 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !33
  %19 = insertelement <2 x float> poison, float %i.aa, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fadd <2 x float> %20, <float -0.000000e+00, float -1.000000e+00> ; 4 uses
  %i.cd = and i8 %i.cc, 15
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.ce ; 2 uses
  %22 = load <2 x float>, ptr %i.cf, align 4, !tbaa !34 ; 2 uses
  %23 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %24 = shufflevector <2 x float> %14, <2 x float> %22, <2 x i32> <i32 1, i32 3>
  %25 = fmul <2 x float> %23, %24
  %26 = shufflevector <2 x float> %14, <2 x float> %22, <2 x i32> <i32 0, i32 2>
  %27 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %28 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %27, <2 x float> %25)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !34
  %29 = insertelement <2 x float> poison, float %i.bf, i64 0
  %30 = insertelement <2 x float> %29, float %i.ch, i64 1
  %31 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %21, <2 x float> %28) ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %32 = load i8, ptr %i.ci, align 1, !tbaa !33
  %33 = and i8 %32, 15
  %34 = zext nneg i8 %33 to i64
  %35 = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %34 ; 2 uses
  %36 = load <2 x float>, ptr %35, align 4, !tbaa !34 ; 2 uses
  %37 = shufflevector <2 x float> %15, <2 x float> %36, <2 x i32> <i32 1, i32 3>
  %38 = fmul <2 x float> %23, %37
  %39 = shufflevector <2 x float> %15, <2 x float> %36, <2 x i32> <i32 0, i32 2>
  %40 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %41 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %40, <2 x float> %38)
  %42 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.cj = insertelement <2 x float> %44, float %43, i64 1
  %45 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %21, <2 x float> %41)
  %46 = fsub <2 x float> %45, %31
  %47 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %48 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %47, <2 x float> %46, <2 x float> %31) ; 2 uses
  %49 = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !33
  %51 = and i8 %50, 15
  %52 = zext nneg i8 %51 to i64
  %53 = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %52 ; 2 uses
  %54 = load <2 x float>, ptr %53, align 4, !tbaa !34 ; 2 uses
  %55 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ck = shufflevector <2 x float> %17, <2 x float> %54, <2 x i32> <i32 1, i32 3>
  %i.cl = fmul <2 x float> %55, %i.ck
  %i.cm = shufflevector <2 x float> %17, <2 x float> %54, <2 x i32> <i32 0, i32 2>
  %56 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %27, <2 x float> %i.cl)
  %57 = getelementptr inbounds nuw i8, ptr %53, i64 8
  %58 = load float, ptr %57, align 4, !tbaa !34
  %i.cn = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %58, i64 1
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %21, <2 x float> %56) ; 2 uses
  %59 = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !33
  %61 = and i8 %60, 15
  %62 = zext nneg i8 %61 to i64
  %63 = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %62 ; 2 uses
  %64 = load <2 x float>, ptr %63, align 4, !tbaa !34 ; 2 uses
  %i.cq = shufflevector <2 x float> %18, <2 x float> %64, <2 x i32> <i32 1, i32 3>
  %i.cr = fmul <2 x float> %55, %i.cq
  %i.cs = shufflevector <2 x float> %18, <2 x float> %64, <2 x i32> <i32 0, i32 2>
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %40, <2 x float> %i.cr)
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %66 = load float, ptr %65, align 4, !tbaa !34
  %i.cu = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %66, i64 1
  %i.cw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %21, <2 x float> %i.ct)
  %i.cx = fsub <2 x float> %i.cw, %i.cp
  %i.cy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %47, <2 x float> %i.cx, <2 x float> %i.cp)
  %i.cz = fsub <2 x float> %i.cy, %48
  %67 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %68 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %67, <2 x float> %i.cz, <2 x float> %48) ; 3 uses
  %69 = extractelement <2 x float> %68, i64 0
  %shift = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %68
  %70 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.da = call noundef float @llvm.fmuladd.f32(float %i.af, float %70, float %69)
  %i.db = fpext float %i.da to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_clampP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.c = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 3) ; 3 uses
  %i.d = fcmp ugt double %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.50) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp olt double %i.a, %i.b
  %i.f = select i1 %i.e, double %i.b, double %i.a ; 2 uses
  %i.g = fcmp ogt double %i.f, %i.c
  %i.h = select i1 %i.g, double %i.c, double %i.f
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.h)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_signP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.b = fcmp ogt double %i.a, 0.000000e+00
  %i.c = fcmp olt double %i.a, 0.000000e+00
  %i.d = select i1 %i.c, double -1.000000e+00, double 0.000000e+00
  %i.e = select i1 %i.b, double 1.000000e+00, double %i.d
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.e)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_roundP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.round.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_mapP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.c = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 3)
  %i.d = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.e = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 5)
  %i.f = fsub double %i.a, %i.b
  %i.g = fsub double %i.e, %i.d
  %i.h = fmul double %i.f, %i.g
  %i.i = fsub double %i.c, %i.b
  %i.j = fdiv double %i.h, %i.i
  %i.k = fadd double %i.d, %i.j
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.k)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_lerpP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.c = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.d = fcmp oeq double %i.c, 1.000000e+00
  %i.e = fsub double %i.b, %i.a
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.c, double %i.a)
  %i.g = select i1 %i.d, double %i.b, double %i.f
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.g)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_isnanP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = fcmp uno double %i.a, 0.000000e+00
  %i.c = zext i1 %i.b to i32
  tail call void @_Z15lua_pushbooleanP9lua_Statei(ptr noundef %0, i32 noundef %i.c)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_isinfP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.fabs.f64(double %i.a)
  %i.c = fcmp oeq double %i.b, +inf
  %i.d = zext i1 %i.c to i32
  tail call void @_Z15lua_pushbooleanP9lua_Statei(ptr noundef %0, i32 noundef %i.d)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL13math_isfiniteP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.fabs.f64(double %i.a)
  %i.c = fcmp one double %i.b, +inf
  %i.d = zext i1 %i.c to i32
  tail call void @_Z15lua_pushbooleanP9lua_Statei(ptr noundef %0, i32 noundef %i.d)
  ret i32 1
}

declare noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.acos.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.asin.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cosh.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #6

declare void @_Z15lua_pushintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #7

declare noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #4

declare noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #4

declare noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #4

; Function Attrs: noreturn
declare void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sinh.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tanh.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tan.f64(double) #5

declare noundef double @_Z13lua_tonumberxP9lua_StateiPi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
end_hunk_0
