Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lmathlib?download=true
inline.NumInlined: 33
inline.NumDeleted: 12
begin_hunk_0_@_ZL11math_randomP9lua_State:bb.a
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.46) #10
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
  %i.aq = tail call i32 @llvm.umulh.i32(i32 %i.ad, i32 %i.ap)
  %narrow = add nuw i32 %i.aq, 1
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef %narrow)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.ar = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef 1) ; 3 uses
  %i.as = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef 2) ; 2 uses
  %.not = icmp sgt i32 %i.ar, %i.as
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.46) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.at = sub i32 %i.as, %i.ar                    ; 2 uses
  %.not34 = icmp eq i32 %i.at, -1
  br i1 %.not34, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.47) #10
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
  %i.bg = tail call i32 @llvm.umulh.i32(i32 %i.au, i32 %i.bf)
  %i.bh = add i32 %i.bg, %i.ar
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef nonnull %0, i32 noundef %i.bh)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #10
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = call noundef double @_Z13lua_tonumberxP9lua_StateiPi(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a)
  %i.e = call noundef double @_Z13lua_tonumberxP9lua_StateiPi(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b)
  %i.f = call noundef double @_Z13lua_tonumberxP9lua_StateiPi(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.c) ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !23
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.49) #10
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
  call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.49) #10
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
  call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.49) #10
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
  %i.ae = fsub <2 x float> %i.u, %i.w             ; 9 uses
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
  %i.bt = extractelement <2 x float> %i.ae, i64 0
  %i.bu = fadd float %i.bt, -1.000000e+00
  %i.bv = and i8 %i.bs, 15
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.bw ; 2 uses
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !35 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !35
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.az ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !33
  %i.cd = extractelement <2 x float> %i.ae, i64 1
  %i.ce = fadd float %i.cd, -1.000000e+00
  %i.cf = and i8 %i.cc, 15
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.cg ; 2 uses
  %i.ci = load <2 x float>, ptr %i.ch, align 4, !tbaa !35 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.bi ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !33
  %i.cn = and i8 %i.cm, 15
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.co ; 2 uses
  %i.cq = load <2 x float>, ptr %i.cp, align 4, !tbaa !35 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !35
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !33
  %i.cv = insertelement <2 x float> poison, float %i.af, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fadd <2 x float> %i.cw, <float -0.000000e+00, float -1.000000e+00> ; 4 uses
  %i.cy = and i8 %i.cu, 15
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.cz ; 2 uses
  %i.db = load <2 x float>, ptr %i.da, align 4, !tbaa !35 ; 2 uses
  %i.dc = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dd = shufflevector <2 x float> %i.bo, <2 x float> %i.db, <2 x i32> <i32 1, i32 3>
  %i.de = fmul <2 x float> %i.dc, %i.dd
  %i.df = shufflevector <2 x float> %i.bo, <2 x float> %i.db, <2 x i32> <i32 0, i32 2>
  %i.dg = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dg, <2 x float> %i.de)
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dj = load float, ptr %i.di, align 4, !tbaa !35
  %i.dk = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.dj, i64 1
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.cx, <2 x float> %i.dh) ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !33
  %i.dp = and i8 %i.do, 15
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.dq ; 2 uses
  %i.ds = load <2 x float>, ptr %i.dr, align 4, !tbaa !35 ; 2 uses
  %i.dt = shufflevector <2 x float> %i.by, <2 x float> %i.ds, <2 x i32> <i32 1, i32 3>
  %i.du = fmul <2 x float> %i.dc, %i.dt
  %i.dv = shufflevector <2 x float> %i.by, <2 x float> %i.ds, <2 x i32> <i32 0, i32 2>
  %i.dw = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.dx, <2 x float> %i.du)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !35
  %i.eb = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.ea, i64 1
  %i.ed = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.cx, <2 x float> %i.dy)
  %i.ee = fsub <2 x float> %i.ed, %i.dm
  %i.ef = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.ee, <2 x float> %i.dm) ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !33
  %i.ej = and i8 %i.ei, 15
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.ek ; 2 uses
  %i.em = load <2 x float>, ptr %i.el, align 4, !tbaa !35 ; 2 uses
  %i.en = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = shufflevector <2 x float> %i.ci, <2 x float> %i.em, <2 x i32> <i32 1, i32 3>
  %i.eq = fmul <2 x float> %i.eo, %i.ep
  %i.er = shufflevector <2 x float> %i.ci, <2 x float> %i.em, <2 x i32> <i32 0, i32 2>
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.dg, <2 x float> %i.eq)
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !35
  %i.ev = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.eu, i64 1
  %i.ex = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.cx, <2 x float> %i.es) ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !33
  %i.fa = and i8 %i.ez, 15
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.fb ; 2 uses
  %i.fd = load <2 x float>, ptr %i.fc, align 4, !tbaa !35 ; 2 uses
  %i.fe = shufflevector <2 x float> %i.cq, <2 x float> %i.fd, <2 x i32> <i32 1, i32 3>
  %i.ff = fmul <2 x float> %i.eo, %i.fe
  %i.fg = shufflevector <2 x float> %i.cq, <2 x float> %i.fd, <2 x i32> <i32 0, i32 2>
  %i.fh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.dx, <2 x float> %i.ff)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !35
  %i.fk = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.fj, i64 1
  %i.fm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.cx, <2 x float> %i.fh)
  %i.fn = fsub <2 x float> %i.fm, %i.ex
  %i.fo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.fn, <2 x float> %i.ex)
  %i.fp = fsub <2 x float> %i.fo, %i.eg
  %i.fq = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fp, <2 x float> %i.eg) ; 3 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %shift = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.fr
  %i.ft = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fu = call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ft, float %i.fs)
  %i.fv = fpext float %i.fu to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.fv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
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
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.50) #10
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
declare void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7
end_hunk_0
