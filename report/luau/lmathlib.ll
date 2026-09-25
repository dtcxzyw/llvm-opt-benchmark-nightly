Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lmathlib?download=true
inline.NumInlined: 33
inline.NumDeleted: 12
begin_hunk_0_@_ZL11math_randomP9lua_State:bb.a
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
  %i.bt = and i8 %i.bs, 15
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.bu ; 2 uses
  %i.bw = load <2 x float>, ptr %i.bv, align 4, !tbaa !35 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.az ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !33
  %1 = extractelement <2 x float> %i.ae, i64 1
  %2 = fadd float %1, -1.000000e+00
  %i.cb = extractelement <2 x float> %i.ae, i64 0
  %i.cc = fadd float %i.cb, -1.000000e+00
  %i.cd = and i8 %i.ca, 15
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.ce ; 2 uses
  %i.cg = load <2 x float>, ptr %i.cf, align 4, !tbaa !35 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !35
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZL11kPerlinHash, i64 %i.bi ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !33
  %i.cl = and i8 %i.ck, 15
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.cm ; 2 uses
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !35 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !35
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !33
  %i.ct = insertelement <2 x float> poison, float %i.af, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fadd <2 x float> %i.cu, <float -0.000000e+00, float -1.000000e+00> ; 4 uses
  %i.cw = and i8 %i.cs, 15
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.cx ; 2 uses
  %i.cz = load <2 x float>, ptr %i.cy, align 4, !tbaa !35 ; 2 uses
  %i.da = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.db = shufflevector <2 x float> %i.bo, <2 x float> %i.cz, <2 x i32> <i32 1, i32 3>
  %i.dc = fmul <2 x float> %i.da, %i.db
  %i.dd = shufflevector <2 x float> %i.bo, <2 x float> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.de = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.de, <2 x float> %i.dc)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !35
  %i.di = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.dh, i64 1
  %i.dk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.cv, <2 x float> %i.df) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !33
  %i.dn = and i8 %i.dm, 15
  %i.do = zext nneg i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.do ; 2 uses
  %i.dq = load <2 x float>, ptr %i.dp, align 4, !tbaa !35 ; 2 uses
  %i.dr = shufflevector <2 x float> %i.bw, <2 x float> %i.dq, <2 x i32> <i32 1, i32 3>
  %i.ds = fmul <2 x float> %i.da, %i.dr
  %i.dt = shufflevector <2 x float> %i.bw, <2 x float> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.du = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.dv, <2 x float> %i.ds)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !35
  %i.dz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.dy, i64 1
  %i.eb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.cv, <2 x float> %i.dw)
  %i.ec = fsub <2 x float> %i.eb, %i.dk
  %i.ed = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.ec, <2 x float> %i.dk) ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !33
  %i.eh = and i8 %i.eg, 15
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.ei ; 2 uses
  %i.ek = load <2 x float>, ptr %i.ej, align 4, !tbaa !35 ; 2 uses
  %i.el = insertelement <2 x float> poison, float %2, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.en = shufflevector <2 x float> %i.cg, <2 x float> %i.ek, <2 x i32> <i32 1, i32 3>
  %i.eo = fmul <2 x float> %i.em, %i.en
  %i.ep = shufflevector <2 x float> %i.cg, <2 x float> %i.ek, <2 x i32> <i32 0, i32 2>
  %i.eq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.de, <2 x float> %i.eo)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !35
  %i.et = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.es, i64 1
  %i.ev = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.cv, <2 x float> %i.eq) ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !33
  %i.ey = and i8 %i.ex, 15
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr @_ZL11kPerlinGrad, i64 %i.ez ; 2 uses
  %i.fb = load <2 x float>, ptr %i.fa, align 4, !tbaa !35 ; 2 uses
  %i.fc = shufflevector <2 x float> %i.co, <2 x float> %i.fb, <2 x i32> <i32 1, i32 3>
  %i.fd = fmul <2 x float> %i.em, %i.fc
  %i.fe = shufflevector <2 x float> %i.co, <2 x float> %i.fb, <2 x i32> <i32 0, i32 2>
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.dv, <2 x float> %i.fd)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !35
  %i.fi = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.fh, i64 1
  %i.fk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.cv, <2 x float> %i.ff)
  %i.fl = fsub <2 x float> %i.fk, %i.ev
  %i.fm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.fl, <2 x float> %i.ev)
  %i.fn = fsub <2 x float> %i.fm, %i.ee
  %i.fo = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.fn, <2 x float> %i.ee) ; 3 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 0
  %shift = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.fp
  %i.fr = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fs = call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.fr, float %i.fq)
  %i.ft = fpext float %i.fs to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.ft)
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

end_hunk_0
