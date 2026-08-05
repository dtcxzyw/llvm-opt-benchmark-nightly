begin_hunk_0_@_ZN14LuaLocalPlayer19l_swimming_verticalEP9lua_State:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 423
  %i.e = load i8, ptr %i.d, align 1, !tbaa !94, !range !88, !noundef !89
  %i.f = zext nneg i8 %i.e to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.f)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14LuaLocalPlayer22l_get_physics_overrideEP9lua_State(ptr noundef %0) #1 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN14LuaLocalPlayer9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %i.e = load float, ptr %i.d, align 4, !tbaa !95
  %i.f = fpext nsz float %i.e to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.f)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.2)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 268
  %i.h = load float, ptr %i.g, align 4, !tbaa !96
  %i.i = fpext nsz float %i.h to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.i)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.3)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.k = load float, ptr %i.j, align 4, !tbaa !97
  %i.l = fpext nsz float %i.k to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.l)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.4)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 276
  %i.n = load i8, ptr %i.m, align 4, !tbaa !98, !range !88, !noundef !89
  %i.o = zext nneg i8 %i.n to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.o)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.5)
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 277
  %i.q = load i8, ptr %i.p, align 1, !tbaa !99, !range !88, !noundef !89
  %i.r = zext nneg i8 %i.q to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.r)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.6)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 278
  %i.t = load i8, ptr %i.s, align 2, !tbaa !100, !range !88, !noundef !89
  %i.u = zext nneg i8 %i.t to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.u)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.7)
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.w = load float, ptr %i.v, align 4, !tbaa !101
  %i.x = fpext nsz float %i.w to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.x)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.8)
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %i.z = load float, ptr %i.y, align 4, !tbaa !102
  %i.aa = fpext nsz float %i.z to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.aa)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.9)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !103
  %i.ad = fpext nsz float %i.ac to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.ad)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.10)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 292
  %i.af = load float, ptr %i.ae, align 4, !tbaa !104
  %i.ag = fpext nsz float %i.af to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.ag)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.11)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !105
  %i.aj = fpext nsz float %i.ai to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.aj)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.12)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 300
  %i.al = load float, ptr %i.ak, align 4, !tbaa !106
  %i.am = fpext nsz float %i.al to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.am)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.13)
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.ao = load float, ptr %i.an, align 4, !tbaa !107
  %i.ap = fpext nsz float %i.ao to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.ap)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.14)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !108
  %i.as = fpext nsz float %i.ar to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.as)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.15)
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.au = load float, ptr %i.at, align 4, !tbaa !109
  %i.av = fpext nsz float %i.au to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.av)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.16)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 316
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !110
  %i.ay = fpext nsz float %i.ax to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.ay)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.17)
  ret i32 1
}

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushnumber(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14LuaLocalPlayer14l_get_last_posEP9lua_State(ptr noundef %0) #6 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN14LuaLocalPlayer9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !16
  %i.f = fdiv nsz <2 x float> %i.e, splat (float 1.000000e+01)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.h = load float, ptr %i.g, align 4, !tbaa !111
  %i.i = fdiv nsz float %i.h, 1.000000e+01
  tail call void @_Z8push_v3fP9lua_StateN4core8vector3dIfEE(ptr noundef %0, <2 x float> %i.f, float %i.i)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14LuaLocalPlayer19l_get_last_velocityEP9lua_State(ptr noundef %0) #6 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN14LuaLocalPlayer9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 444
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.d, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 452
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !16
  tail call void @_Z8push_v3fP9lua_StateN4core8vector3dIfEE(ptr noundef %0, <2 x float> %.sroa.01.0.copyload, float %.sroa.22.0.copyload)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14LuaLocalPlayer24l_get_last_look_verticalEP9lua_State(ptr noundef %0) #1 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN14LuaLocalPlayer9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.e = load float, ptr %i.d, align 8, !tbaa !112
  %i.f = fpext nsz float %i.e to double
  %i.g = fmul nsz double %i.f, f0xBF91DF46A0000000
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.g)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14LuaLocalPlayer26l_get_last_look_horizontalEP9lua_State(ptr noundef %0) #1 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN14LuaLocalPlayer9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 460
  %i.e = load float, ptr %i.d, align 4, !tbaa !113
  %i.f = fpext nsz float %i.e to double
  %i.g = fadd nsz double %i.f, 9.000000e+01
  %i.h = fmul nsz double %i.g, f0x3F91DF46A0000000
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.h)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14LuaLocalPlayer13l_get_controlEP9lua_State(ptr noundef %0) #6 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN14LuaLocalPlayer9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 5 uses
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 12)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 241
  %i.f = load i8, ptr %i.e, align 1, !tbaa !114, !range !88, !noundef !89
  %i.g = zext nneg i8 %i.f to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.g)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.3)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 242
  %i.i = load i8, ptr %i.h, align 2, !tbaa !115, !range !88, !noundef !89
  %i.j = zext nneg i8 %i.i to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.j)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.18)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 243
  %i.l = load i8, ptr %i.k, align 1, !tbaa !116, !range !88, !noundef !89
  %i.m = zext nneg i8 %i.l to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.m)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.5)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 244
  %i.o = load i8, ptr %i.n, align 4, !tbaa !117, !range !88, !noundef !89
  %i.p = zext nneg i8 %i.o to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.p)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.19)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 245
  %i.r = load i8, ptr %i.q, align 1, !tbaa !118, !range !88, !noundef !89
  %i.s = zext nneg i8 %i.r to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.s)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.20)
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 246
  %i.u = load i8, ptr %i.t, align 2, !tbaa !119, !range !88, !noundef !89
  %i.v = zext nneg i8 %i.u to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.v)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.21)
  %i.w = tail call nsz <2 x float> @_ZNK13PlayerControl11getMovementEv(ptr noundef nonnull align 4 dereferenceable(24) %i.d) ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.w, i64 0
  %1 = fpext nsz float %.sroa.0.0.vec.extract to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %1)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.22)
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.w, i64 1
  %2 = fpext nsz float %.sroa.0.4.vec.extract to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %2)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.23)
  %i.x = load i8, ptr %i.d, align 4, !tbaa !120
  %i.y = and i8 %i.x, 1
  %i.z = zext nneg i8 %i.y to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.z)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.24)
  %i.aa = load i8, ptr %i.d, align 4, !tbaa !120
  %i.ab = lshr i8 %i.aa, 1
  %.lobit = and i8 %i.ab, 1
  %i.ac = zext nneg i8 %.lobit to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.ac)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.25)
  %i.ad = load i8, ptr %i.d, align 4, !tbaa !120
  %i.ae = lshr i8 %i.ad, 2
  %.lobit28 = and i8 %i.ae, 1
  %i.af = zext nneg i8 %.lobit28 to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.af)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.26)
  %i.ag = load i8, ptr %i.d, align 4, !tbaa !120
  %i.ah = lshr i8 %i.ag, 3
  %.lobit29 = and i8 %i.ah, 1
  %i.ai = zext nneg i8 %.lobit29 to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.ai)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.27)
  ret i32 1
}

declare <2 x float> @_ZNK13PlayerControl11getMovementEv(ptr noundef nonnull align 4 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14LuaLocalPlayer12l_get_breathEP9lua_State(ptr noundef %0) #1 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN14LuaLocalPlayer9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 708
  %i.e = load i16, ptr %i.d, align 4, !tbaa !121
  %i.f = zext i16 %i.e to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.f)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14LuaLocalPlayer9l_get_posEP9lua_State(ptr noundef %0) #6 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN14LuaLocalPlayer9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 604
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.d, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 612
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !16
  %i.e = fdiv nsz <2 x float> %.sroa.01.0.copyload.i, splat (float 1.000000e+01)
  %i.f = fdiv nsz float %.sroa.22.0.copyload.i, 1.000000e+01
  tail call void @_Z8push_v3fP9lua_StateN4core8vector3dIfEE(ptr noundef %0, <2 x float> %i.e, float %i.f)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14LuaLocalPlayer27l_get_movement_accelerationEP9lua_State(ptr noundef %0) #1 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN14LuaLocalPlayer9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load float, ptr %i.d, align 8, !tbaa !122
  %i.f = fpext nsz float %i.e to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.f)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.28)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.h = load float, ptr %i.g, align 4, !tbaa !123
  %i.i = fpext nsz float %i.h to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.i)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.29)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.k = load float, ptr %i.j, align 8, !tbaa !124
  %i.l = fpext nsz float %i.k to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.l)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.30)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14LuaLocalPlayer20l_get_movement_speedEP9lua_State(ptr noundef %0) #1 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN14LuaLocalPlayer9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 5 uses
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load float, ptr %i.d, align 4, !tbaa !125
  %i.f = fpext nsz float %i.e to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.f)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.31)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.h = load float, ptr %i.g, align 8, !tbaa !126
  %i.i = fpext nsz float %i.h to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.i)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.32)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.k = load float, ptr %i.j, align 4, !tbaa !127
  %i.l = fpext nsz float %i.k to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.l)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.30)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.n = load float, ptr %i.m, align 8, !tbaa !128
  %i.o = fpext nsz float %i.n to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.o)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.33)
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.q = load float, ptr %i.p, align 4, !tbaa !129
  %i.r = fpext nsz float %i.q to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.r)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.3)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14LuaLocalPlayer14l_get_movementEP9lua_State(ptr noundef %0) #1 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN14LuaLocalPlayer9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load float, ptr %i.d, align 8, !tbaa !130
  %i.f = fpext nsz float %i.e to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.f)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.10)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.h = load float, ptr %i.g, align 4, !tbaa !131
  %i.i = fpext nsz float %i.h to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.i)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.11)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.k = load float, ptr %i.j, align 8, !tbaa !132
  %i.l = fpext nsz float %i.k to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.l)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.12)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.n = load float, ptr %i.m, align 4, !tbaa !133
  %i.o = fpext nsz float %i.n to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.o)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.4)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14LuaLocalPlayer18l_get_armor_groupsEP9lua_State(ptr noundef %0) #1 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN14LuaLocalPlayer9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 776
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 944
  tail call void @_Z11push_groupsP9lua_StateRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_iEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %i.f)
  ret i32 1
}

declare void @_Z11push_groupsP9lua_StateRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_iEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN14LuaLocalPlayer9l_hud_addEP9lua_State(ptr noundef %0) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN14LuaLocalPlayer9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #13 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store <2 x float> zeroinitializer, ptr %i.e, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.h, align 8, !tbaa !56
  store i8 0, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <2 x float> zeroinitializer, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 4 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 0, ptr %i.l, align 8, !tbaa !56
  store i8 0, ptr %i.k, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.m, i8 0, i64 38, i1 false)
  store ptr %i.o, ptr %i.n, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store i64 0, ptr %i.p, align 8, !tbaa !56
  store i8 0, ptr %i.o, align 8, !tbaa !57
  tail call void @_Z16read_hud_elementP9lua_StateP10HudElement(ptr noundef %0, ptr noundef nonnull %i.d)
  %i.q = tail call noundef i32 @_ZN6Player6addHudEP10HudElement(ptr noundef nonnull align 8 dereferenceable(416) %i.c, ptr noundef nonnull %i.d) ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
