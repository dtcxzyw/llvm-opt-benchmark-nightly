Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lmathlib?download=true
inline.NumInlined: 33
inline.NumDeleted: 12
begin_hunk_0_@_ZL10math_frexpP9lua_State:bb.a
  %i.c = call double @frexp(double noundef %i.b, ptr noundef nonnull %i.a) #10
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.c)
  %i.d = load i32, ptr %i.a, align 4, !tbaa !23
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 2
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_ldexpP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.c = tail call double @ldexp(double noundef %i.a, i32 noundef %i.b) #11
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.c)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10math_log10P9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call double @llvm.log10.f64(double %i.a)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.b)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_logP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 4 uses
  %i.b = tail call noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.log.f64(double %i.a)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.f = fcmp oeq double %i.e, 2.000000e+00
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call double @llvm.log2.f64(double %i.a)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = fcmp oeq double %i.e, 1.000000e+01
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call double @llvm.log10.f64(double %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = tail call double @llvm.log.f64(double %i.a)
  %i.k = tail call double @llvm.log.f64(double %i.e)
  %i.l = fdiv double %i.j, %i.k
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.1 = phi double [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %i.i, %bb.f ], [ %i.l, %bb.g ]
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %.1)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_maxP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 2 uses
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %.not13 = icmp slt i32 %i.a, 2
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i32 [ %i.e, %.lr.ph ], [ 2, %bb.a ] ; 3 uses
  %.01114 = phi double [ %.1, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef %.015) ; 2 uses
  %i.d = fcmp ogt double %i.c, %.01114
  %.1 = select i1 %i.d, double %i.c, double %.01114 ; 2 uses
  %i.e = add nuw i32 %.015, 1
  %exitcond.not = icmp eq i32 %.015, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.011.lcssa = phi double [ %i.b, %bb.a ], [ %.1, %.lr.ph ]
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %.011.lcssa)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_minP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 2 uses
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %.not13 = icmp slt i32 %i.a, 2
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i32 [ %i.e, %.lr.ph ], [ 2, %bb.a ] ; 3 uses
  %.01114 = phi double [ %.1, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef %.015) ; 2 uses
  %i.d = fcmp olt double %i.c, %.01114
  %.1 = select i1 %i.d, double %i.c, double %.01114 ; 2 uses
  %i.e = add nuw i32 %.015, 1
  %exitcond.not = icmp eq i32 %.015, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.011.lcssa = phi double [ %i.b, %bb.a ], [ %.1, %.lr.ph ]
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %.011.lcssa)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9math_modfP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call { double, double } @llvm.modf.f64(double %i.a) ; 2 uses
  %i.c = extractvalue { double, double } %i.b, 0
  %i.d = extractvalue { double, double } %i.b, 1
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.d)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.c)
  ret i32 2
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8math_powP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.c = tail call double @llvm.pow.f64(double %i.a, double %i.b)
  tail call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.c)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
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
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !22 ; 4 uses
  %i.ah = mul i64 %i.ag, 6364136223846793005
  %i.ai = add i64 %i.ah, 105
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !22
  %i.aj = lshr i64 %i.ag, 45
  %i.ak = lshr i64 %i.ag, 27
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = lshr i64 %i.ag, 59
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = tail call noundef i32 @llvm.fshr.i32(i32 %i.am, i32 %i.am, i32 %i.ao)
  %1 = tail call i32 @llvm.umulh.i32(i32 %i.ad, i32 %i.ap)
  %i.aq = add nuw i32 %1, 1
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef %i.aq)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.ar = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef 1) ; 3 uses
  %i.as = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef 2) ; 2 uses
  %.not = icmp sgt i32 %i.ar, %i.as
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.46) #12
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.at = sub i32 %i.as, %i.ar                    ; 2 uses
  %.not34 = icmp eq i32 %i.at, -1
  br i1 %.not34, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.47) #12
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.au = add nuw i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !22 ; 4 uses
  %i.ax = mul i64 %i.aw, 6364136223846793005
  %i.ay = add i64 %i.ax, 105
  store i64 %i.ay, ptr %i.av, align 8, !tbaa !22
  %i.az = lshr i64 %i.aw, 45
  %i.ba = lshr i64 %i.aw, 27
  %i.bb = xor i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = lshr i64 %i.aw, 59
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = tail call noundef i32 @llvm.fshr.i32(i32 %i.bc, i32 %i.bc, i32 %i.be)
  %2 = tail call i32 @llvm.umulh.i32(i32 %i.au, i32 %i.bf)
  %i.bg = add i32 %2, %i.ar
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef %i.bg)
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
  %i.d = call noundef double @_Z13lua_tonumberxP9lua_StateiPi(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a)
  %i.e = call noundef double @_Z13lua_tonumberxP9lua_StateiPi(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b)
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
  %i.p = insertelement <2 x double> poison, double %i.d, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.e, i64 1 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = frem <2 x double> %i.q, splat (double 2.560000e+02)
  %i.s = frem double %i.f, 2.560000e+02
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.016 = phi double [ %i.s, %bb.j ], [ %i.f, %bb.i ]
  %i.t = phi <2 x double> [ %i.r, %bb.j ], [ %i.q, %bb.i ]
  %i.u = fptrunc <2 x double> %i.t to <2 x float> ; 2 uses
  %i.v = fptrunc double %.016 to float            ; 2 uses
  %i.w = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.u) ; 3 uses
  %i.x = call float @llvm.floor.f32(float %i.v)   ; 2 uses
  %i.y = extractelement <2 x float> %i.w, i64 0
  %i.z = fptosi float %i.y to i32
  %i.aa = and i32 %i.z, 255
  %i.ab = extractelement <2 x float> %i.w, i64 1
  %i.ac = fptosi float %i.ab to i32
  %i.ad = fptosi float %i.x to i32
  %i.ae = fsub <2 x float> %i.u, %i.w             ; 8 uses
  %i.af = fsub float %i.v, %i.x                   ; 6 uses
  %i.ag = fmul <2 x float> %i.ae, %i.ae
  %i.ah = fmul <2 x float> %i.ae, %i.ag
  %i.ai = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.aj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ai, <2 x float> splat (float 1.000000e+01))
  %i.ak = fmul <2 x float> %i.ah, %i.aj           ; 2 uses
  %i.al = fmul float %i.af, %i.af
  %i.am = fmul float %i.af, %i.al
  %i.an = call float @llvm.fmuladd.f32(float %i.af, float 6.000000e+00, float -1.500000e+01)
  %i.ao = call float @llvm.fmuladd.f32(float %i.af, float %i.an, float 1.000000e+01)
  %i.ap = fmul float %i.am, %i.ao
  %i.aq = zext nneg i32 %i.aa to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !33
  %.tr.i = trunc i32 %i.ac to i8                  ; 2 uses
  %.narrow.i = add i8 %i.as, %.tr.i
  %i.at = zext i8 %.narrow.i to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !33
  %.tr83.i = trunc i32 %i.ad to i8                ; 4 uses
  %.narrow84.i = add i8 %i.av, %.tr83.i
  %i.aw = zext i8 %.narrow84.i to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !33
  %.narrow86.i = add i8 %i.ay, %.tr83.i
  %i.az = zext i8 %.narrow86.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !33
  %.narrow88.i = add i8 %i.bb, %.tr.i
  %i.bc = zext i8 %.narrow88.i to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !33
  %.narrow90.i = add i8 %i.be, %.tr83.i
  %i.bf = zext i8 %.narrow90.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !33
  %.narrow92.i = add i8 %i.bh, %.tr83.i
  %i.bi = zext i8 %.narrow92.i to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.aw ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !33
  %i.bl = and i8 %i.bk, 15
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.bm ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bn, align 4, !tbaa !35 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.bf ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !33
  %i.bt = and i8 %i.bs, 15
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.bu ; 2 uses
  %i.bw = load <2 x float>, ptr %i.bv, align 4, !tbaa !35 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.az ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !33
end_hunk_0
begin_hunk_1_@_ZL9math_signP9lua_State:bb.a
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
declare i32 @llvm.umulh.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #4

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
end_hunk_1
