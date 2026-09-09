Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lmathlib?download=true
inline.NumInlined: 33
inline.NumDeleted: 12
begin_hunk_0_@_ZL8math_radP9lua_State
define internal noundef i32 @_ZL8math_radP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = fmul double %i.a, f0x3F91DF46A2529D39
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL11math_randomP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0)
  switch i32 %i.c, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22   ; 4 uses
  %i.f = mul i64 %i.e, 6364136223846793005
  %i.g = add i64 %i.f, 105                        ; 4 uses
  %i.h = lshr i64 %i.e, 45
  %i.i = lshr i64 %i.e, 27
  %i.j = xor i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = lshr i64 %i.e, 59
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = tail call noundef i32 @llvm.fshr.i32(i32 %i.k, i32 %i.k, i32 %i.m)
  %i.o = mul i64 %i.g, 6364136223846793005
  %i.p = add i64 %i.o, 105
  store i64 %i.p, ptr %i.d, align 8, !tbaa !22
  %i.q = lshr i64 %i.g, 45
  %i.r = lshr i64 %i.g, 27
  %i.s = xor i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = lshr i64 %i.g, 59
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = tail call noundef i32 @llvm.fshr.i32(i32 %i.t, i32 %i.t, i32 %i.v)
  %i.x = zext i32 %i.n to i64
  %i.y = zext i32 %i.w to i64
  %i.z = shl nuw i64 %i.y, 32
  %i.aa = or disjoint i64 %i.z, %i.x
  %i.ab = uitofp i64 %i.aa to double
  %i.ac = tail call double @ldexp(double noundef %i.ab, i32 noundef -64) #11
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef nonnull %0, double noundef %i.ac)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.ad = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.46) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !22 ; 4 uses
  %i.ai = mul i64 %i.ah, 6364136223846793005
  %i.aj = add i64 %i.ai, 105
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !22
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
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !22 ; 4 uses
  %i.bd = mul i64 %i.bc, 6364136223846793005
  %i.be = add i64 %i.bd, 105
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !22
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1248
  %i.e = sext i32 %i.a to i64
  %i.f = mul i64 %i.e, 6364136223846793005
  %i.g = add i64 %i.f, 4151516850369407454
  store i64 %i.g, ptr %i.d, align 8, !tbaa !22
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
  %i.n = load i8, ptr @_ZN5FFlag21FixMathNoisePrecisionE, align 8, !tbaa !28, !range !31, !noundef !32
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %1 = frem double %i.d, 2.560000e+02
  %2 = frem double %i.e, 2.560000e+02
  %i.p = frem double %i.f, 2.560000e+02
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.017 = phi double [ %2, %bb.j ], [ %i.e, %bb.i ]
  %.016 = phi double [ %i.p, %bb.j ], [ %i.f, %bb.i ]
  %.0 = phi double [ %1, %bb.j ], [ %i.d, %bb.i ]
  %3 = insertelement <2 x double> poison, double %.0, i64 0
  %4 = insertelement <2 x double> %3, double %.017, i64 1
  %i.q = fptrunc <2 x double> %4 to <2 x float>   ; 3 uses
  %i.r = fptrunc double %.016 to float            ; 2 uses
  %5 = extractelement <2 x float> %i.q, i64 1
  %i.s = call float @llvm.floor.f32(float %5)     ; 2 uses
  %i.t = extractelement <2 x float> %i.q, i64 0
  %6 = call float @llvm.floor.f32(float %i.t)     ; 2 uses
  %7 = call float @llvm.floor.f32(float %i.r)     ; 2 uses
  %i.u = fptosi float %6 to i32
  %i.v = and i32 %i.u, 255
  %8 = fptosi float %i.s to i32
  %i.w = fptosi float %7 to i32
  %9 = insertelement <2 x float> poison, float %6, i64 0
  %10 = insertelement <2 x float> %9, float %i.s, i64 1
  %i.x = fsub <2 x float> %i.q, %10               ; 8 uses
  %i.y = fsub float %i.r, %7                      ; 6 uses
  %i.z = fmul <2 x float> %i.x, %i.x
  %i.aa = fmul <2 x float> %i.x, %i.z
  %i.ab = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.ac = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.ab, <2 x float> splat (float 1.000000e+01))
  %i.ad = fmul <2 x float> %i.aa, %i.ac           ; 2 uses
  %i.ae = fmul float %i.y, %i.y
  %i.af = fmul float %i.y, %i.ae
  %i.ag = call float @llvm.fmuladd.f32(float %i.y, float 6.000000e+00, float -1.500000e+01)
  %i.ah = call float @llvm.fmuladd.f32(float %i.y, float %i.ag, float 1.000000e+01)
  %i.ai = fmul float %i.af, %i.ah
  %i.aj = zext nneg i32 %i.v to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !33
  %.tr.i = trunc i32 %8 to i8                     ; 2 uses
  %.narrow.i = add i8 %i.al, %.tr.i
  %i.am = zext i8 %.narrow.i to i64
  %i.an = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !33
  %.tr83.i = trunc i32 %i.w to i8                 ; 4 uses
  %.narrow84.i = add i8 %i.ao, %.tr83.i
  %i.ap = zext i8 %.narrow84.i to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !33
  %.narrow86.i = add i8 %i.ar, %.tr83.i
  %i.as = zext i8 %.narrow86.i to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !33
  %.narrow88.i = add i8 %i.au, %.tr.i
  %i.av = zext i8 %.narrow88.i to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.av ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !33
  %.narrow90.i = add i8 %i.ax, %.tr83.i
  %i.ay = zext i8 %.narrow90.i to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !33
  %.narrow92.i = add i8 %i.ba, %.tr83.i
  %i.bb = zext i8 %.narrow92.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.ap ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !33
  %i.be = and i8 %i.bd, 15
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.bf ; 2 uses
  %i.bh = load <2 x float>, ptr %i.bg, align 4, !tbaa !35 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.ay ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !33
  %i.bm = and i8 %i.bl, 15
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.bn ; 2 uses
  %i.bp = load <2 x float>, ptr %i.bo, align 4, !tbaa !35 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.as ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !33
  %i.bu = fadd <2 x float> %i.x, splat (float -1.000000e+00) ; 2 uses
  %i.bv = and i8 %i.bt, 15
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.bw ; 2 uses
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !35 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !35
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.bb ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !33
  %i.cd = and i8 %i.cc, 15
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.ce ; 2 uses
  %i.cg = load <2 x float>, ptr %i.cf, align 4, !tbaa !35 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !35
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !33
  %i.cl = insertelement <2 x float> poison, float %i.y, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fadd <2 x float> %i.cm, <float -0.000000e+00, float -1.000000e+00> ; 4 uses
  %i.co = and i8 %i.ck, 15
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.cp ; 2 uses
  %i.cr = load <2 x float>, ptr %i.cq, align 4, !tbaa !35 ; 2 uses
  %i.cs = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ct = shufflevector <2 x float> %i.bh, <2 x float> %i.cr, <2 x i32> <i32 1, i32 3>
  %i.cu = fmul <2 x float> %i.cs, %i.ct
  %i.cv = shufflevector <2 x float> %i.bh, <2 x float> %i.cr, <2 x i32> <i32 0, i32 2>
  %i.cw = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cw, <2 x float> %i.cu)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !35
  %i.da = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.db = insertelement <2 x float> %i.da, float %i.cz, i64 1
  %i.dc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.cn, <2 x float> %i.cx) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !33
  %i.df = and i8 %i.de, 15
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.dg ; 2 uses
  %i.di = load <2 x float>, ptr %i.dh, align 4, !tbaa !35 ; 2 uses
  %i.dj = shufflevector <2 x float> %i.bp, <2 x float> %i.di, <2 x i32> <i32 1, i32 3>
  %i.dk = fmul <2 x float> %i.cs, %i.dj
  %i.dl = shufflevector <2 x float> %i.bp, <2 x float> %i.di, <2 x i32> <i32 0, i32 2>
  %i.dm = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dm, <2 x float> %i.dk)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !35
  %i.dq = insertelement <2 x float> poison, float %i.br, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.dp, i64 1
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.cn, <2 x float> %i.dn)
  %i.dt = fsub <2 x float> %i.ds, %i.dc
  %i.du = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dt, <2 x float> %i.dc) ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !33
  %i.dy = and i8 %i.dx, 15
  %i.dz = zext nneg i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.dz ; 2 uses
  %i.eb = load <2 x float>, ptr %i.ea, align 4, !tbaa !35 ; 2 uses
  %i.ec = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ed = shufflevector <2 x float> %i.by, <2 x float> %i.eb, <2 x i32> <i32 1, i32 3>
  %i.ee = fmul <2 x float> %i.ec, %i.ed
  %i.ef = shufflevector <2 x float> %i.by, <2 x float> %i.eb, <2 x i32> <i32 0, i32 2>
  %i.eg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.cw, <2 x float> %i.ee)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !35
  %i.ej = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.ei, i64 1
  %i.el = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.cn, <2 x float> %i.eg) ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !33
  %i.eo = and i8 %i.en, 15
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.ep ; 2 uses
  %i.er = load <2 x float>, ptr %i.eq, align 4, !tbaa !35 ; 2 uses
  %i.es = shufflevector <2 x float> %i.cg, <2 x float> %i.er, <2 x i32> <i32 1, i32 3>
  %i.et = fmul <2 x float> %i.ec, %i.es
  %i.eu = shufflevector <2 x float> %i.cg, <2 x float> %i.er, <2 x i32> <i32 0, i32 2>
  %i.ev = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.dm, <2 x float> %i.et)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !35
  %i.ey = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ez = insertelement <2 x float> %i.ey, float %i.ex, i64 1
  %i.fa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.cn, <2 x float> %i.ev)
  %i.fb = fsub <2 x float> %i.fa, %i.el
  %i.fc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.fb, <2 x float> %i.el)
  %i.fd = fsub <2 x float> %i.fc, %i.dv
  %i.fe = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.fd, <2 x float> %i.dv) ; 3 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 0
  %shift = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.ff
  %i.fh = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fi = call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.fh, float %i.fg)
  %i.fj = fpext float %i.fi to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.fj)
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
declare void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @_Z15lua_pushbooleanP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_lmathlib.cpp() #9 section ".text.startup" {
bb.a:
  store i8 0, ptr @_ZN5FFlag21FixMathNoisePrecisionE, align 8, !tbaa !28
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag21FixMathNoisePrecisionE, i64 1), align 1, !tbaa !36
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag21FixMathNoisePrecisionE, i64 8), align 8, !tbaa !37
  %i.a = load ptr, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !38
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag21FixMathNoisePrecisionE, i64 16), align 8, !tbaa !39
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag21FixMathNoisePrecisionE, i64 24), align 8, !tbaa !40
  store ptr @_ZN5FFlag21FixMathNoisePrecisionE, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !38
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { noreturn }

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
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS10lua_TValue", !10, i64 0}
!12 = !{!"p1 _ZTS12global_State", !10, i64 0}
!13 = !{!"p1 _ZTS8CallInfo", !10, i64 0}
!14 = !{!"short", !5, i64 0}
!15 = !{!"p1 _ZTS8LuaTable", !10, i64 0}
!16 = !{!"p1 _ZTS5UpVal", !10, i64 0}
!17 = !{!"p1 _ZTS8GCObject", !10, i64 0}
!18 = !{!"p1 _ZTS7TString", !10, i64 0}
!19 = !{!"_ZTS9lua_State", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !9, i64 5, !9, i64 6, !11, i64 8, !11, i64 16, !12, i64 24, !13, i64 32, !11, i64 40, !11, i64 48, !13, i64 56, !13, i64 64, !6, i64 72, !6, i64 76, !14, i64 80, !14, i64 82, !6, i64 84, !15, i64 88, !16, i64 96, !17, i64 104, !18, i64 112, !10, i64 120}
!20 = !{!19, !12, i64 24}
!21 = !{!"long", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"p1 omnipotent char", !10, i64 0}
!26 = !{!"p1 _ZTSN4Luau6FValueIbEE", !10, i64 0}
!27 = !{!"_ZTSN4Luau6FValueIbEE", !9, i64 0, !9, i64 1, !25, i64 8, !26, i64 16, !6, i64 24}
!28 = !{!27, !9, i64 0}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!5, !5, i64 0}
!34 = !{!"float", !5, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!27, !9, i64 1}
!37 = !{!27, !25, i64 8}
!38 = !{!26, !26, i64 0}
!39 = !{!27, !26, i64 16}
!40 = !{!27, !6, i64 24}
end_hunk_0
